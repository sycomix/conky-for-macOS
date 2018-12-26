/*
 * Conky, a system monitor, based on torsmo
 *
 * Any original torsmo code is licensed under the BSD license
 *
 * All code written since the fork of torsmo is licensed under the GPL
 *
 * Please see COPYING for details
 *
 * Copyright (c) 2018, npyl <n.pylarinos@hotmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

#include "darwin_semaphore.hh"

#include <stdlib.h>
#include <errno.h>

// taken from https://stackoverflow.com/questions/641126/posix-semaphores-on-mac-os-x-sem-timedwait-alternative
// Slightly purged of gruesome pointer-logic mistakes.

int sem_init(sem_t *psem, int flags, unsigned count)
{
	sem_t *pnewsem;
	int result;
	
	pnewsem = (sem_t *)malloc(sizeof(sem_t));
	if (! pnewsem)
	{
		return -1;
	}
	result = pthread_mutex_init(&pnewsem->count_lock, NULL);
	if (result)
	{
		free(pnewsem);
		return result;
	}
	result = pthread_cond_init(&pnewsem->count_bump, NULL);
	if (result)
	{
		pthread_mutex_destroy(&pnewsem->count_lock);
		free(pnewsem);
		return result;
	}
	pnewsem->count = count;
	psem = (sem_t *)pnewsem;
	return 0;
}

int sem_destroy(sem_t *psem)
{
	sem_t *poldsem;
	
	if (! psem)
	{
		return EINVAL;
	}
	poldsem = (sem_t *)psem;
	
	pthread_mutex_destroy(&poldsem->count_lock);
	pthread_cond_destroy(&poldsem->count_bump);
	free(poldsem);
	return 0;
}

int sem_post(sem_t *psem)
{
	sem_t *pxsem;
	int result, xresult;
	
	if (! psem)
	{
		return EINVAL;
	}
	pxsem = (sem_t *)psem;
	
	result = pthread_mutex_lock(&pxsem->count_lock);
	if (result)
	{
		return result;
	}
	pxsem->count = pxsem->count + 1;
	
	xresult = pthread_cond_signal(&pxsem->count_bump);
	
	result = pthread_mutex_unlock(&pxsem->count_lock);
	if (result)
	{
		return result;
	}
	if (xresult)
	{
		errno = xresult;
		return -1;
	}
}

int sem_trywait(sem_t *psem)
{
	sem_t *pxsem;
	int result, xresult;
	
	if (! psem)
	{
		return EINVAL;
	}
	pxsem = (sem_t *)psem;
	
	result = pthread_mutex_lock(&pxsem->count_lock);
	if (result)
	{
		return result;
	}
	xresult = 0;
	
	if (pxsem->count > 0)
	{
		pxsem->count--;
	}
	else
	{
		xresult = EAGAIN;
	}
	result = pthread_mutex_unlock(&pxsem->count_lock);
	if (result)
	{
		return result;
	}
	if (xresult)
	{
		errno = xresult;
		return -1;
	}
	return 0;
}

int sem_wait(sem_t *psem)
{
	sem_t *pxsem;
	int result, xresult;
	
	if (! psem)
	{
		return EINVAL;
	}
	pxsem = (sem_t *)psem;
	
	result = pthread_mutex_lock(&pxsem->count_lock);
	if (result)
	{
		return result;
	}
	xresult = 0;
	
	if (pxsem->count == 0)
	{
		xresult = pthread_cond_wait(&pxsem->count_bump, &pxsem->count_lock);
	}
	if (! xresult)
	{
		if (pxsem->count > 0)
		{
			pxsem->count--;
		}
	}
	result = pthread_mutex_unlock(&pxsem->count_lock);
	if (result)
	{
		return result;
	}
	if (xresult)
	{
		errno = xresult;
		return -1;
	}
	return 0;
}

int sem_timedwait(sem_t *psem, const struct timespec *abstim)
{
	sem_t *pxsem;
	int result, xresult;
	
	if (! psem)
	{
		return EINVAL;
	}
	pxsem = (sem_t *)psem;
	
	result = pthread_mutex_lock(&pxsem->count_lock);
	if (result)
	{
		return result;
	}
	xresult = 0;
	
	if (pxsem->count == 0)
	{
		xresult = pthread_cond_timedwait(&pxsem->count_bump, &pxsem->count_lock, abstim);
	}
	if (! xresult)
	{
		if (pxsem->count > 0)
		{
			pxsem->count--;
		}
	}
	result = pthread_mutex_unlock(&pxsem->count_lock);
	if (result)
	{
		return result;
	}
	if (xresult)
	{
		errno = xresult;
		return -1;
	}
	return 0;
}
