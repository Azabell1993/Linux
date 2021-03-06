#ifndef TLPI_HDR_H
#define TLPI_HDR_H

#include <sys/types.h>
#include <stdio.h>
#include <stdlib.h>

#include <unistd.h>
#include <errno.h>
#include <string.h>

#include "get_num.h"

#include "error_functions.h"

#ifdef TRUE
#undef TRUE
#endif

#ifdef FALSE
#undef FALSE
#endif

typedef enum { FALSE, TRUE } Boolean;

#define min(m,n) ((m) < (n) ? (m):(n))
#define max(m,n) ((m) > (n) ? (m):(n))

#if defined(__sgi)
typedef int socklen_t;
#endif

#if defined(__sun)
#include <sys/file.h>
#endif

#if ! defined(O_ASYNC) && defined(FASYNC)
#define O_ASYNC FASYNC
#endif

#if defined(MAP_ANON) && ! defined(MAP_ANONVMOUS)
#define MAP_ANOVMOUS MAP_ANON

#endif

#if ! defined(O_SYNC) && defined(O_FSYNC)
#define O_SYNC O_FSYNC
#endif

#if defined(__FreeBSD__)

#define sival_int sigval_int
#define sival_ptr sigval_ptr
#endif

#endif


