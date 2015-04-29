#include "stdint.h"

typedef unsigned int uint_t;

typedef waitq struct {
    sudog* first;
    sugog* last;
} waitq;

typedef hchan struct {
    uint_t qcount;      // total data in the queue
    uint_t dataqsiz;      // size of the circular queue
    void* buf;             // points to an array of dataqsiz elements
    uint16_t elemsize; 
    uint32_t closed;
    *_type elemtype; // element type
    uint_t sendx;   // send index
    uint_t recvx;   // receive index
    recvq    waitq  // list of recv waiters
    sendq    waitq  // list of send waiters
    lock     mutex
} hchan;

