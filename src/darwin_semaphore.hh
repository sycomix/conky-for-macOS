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

#ifndef DARWIN_SEMAPHORE_HH
#define DARWIN_SEMAPHORE_HH

#include <pthread.h>

struct sem
	{
    pthread_mutex_t count_lock;
    pthread_cond_t  count_bump;
    unsigned count;
	};

typedef struct sem sem_t;

int sem_init(sem_t *psem, int flags, unsigned count);
int sem_destroy(sem_t *psem);
int sem_post(sem_t *psem);
int sem_trywait(sem_t *psem);
int sem_wait(sem_t *psem);
int sem_timedwait(sem_t *psem, const struct timespec *abstim);

#endif /*DARWIN_SEMAPHORE_HH*/
