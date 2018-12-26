/*
 *
 * Conky, a system monitor, based on torsmo
 *
 * Please see COPYING for details
 *
 * Copyright (C) 2010 Pavel Labath et al.
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

#ifndef SEMAPHORE_HH
#define SEMAPHORE_HH

#include <cerrno>
#include <cstdlib>
#include <cstring>
#include <stdexcept>

#include "darwin_semaphore.hh"

class semaphore {
  sem_t sem;

  semaphore(const semaphore &) = delete;
  semaphore &operator=(const semaphore &) = delete;

 public:
  semaphore(unsigned int value = 0) {
    if (sem_init(&sem, 0, value)) throw std::logic_error(strerror(errno));
  }

  ~semaphore() { sem_destroy(&sem); }

  void post() {
    if (sem_post(&sem)) throw std::overflow_error(strerror(errno));
  }

  void wait() {
    while (sem_wait(&sem)) {
      if (errno != EINTR) abort();
    }
  }

  bool trywait() {
    while (sem_trywait(&sem)) {
      if (errno == EAGAIN)
        return false;
      else if (errno != EINTR)
        abort();
    }
    return true;
  }
};

#endif
