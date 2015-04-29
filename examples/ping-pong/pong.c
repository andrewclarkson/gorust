#include <stdio.h>

extern void ping() __asm__ ("main.ping");

void pong() {
    printf("Pong!\n");
    ping();
}
