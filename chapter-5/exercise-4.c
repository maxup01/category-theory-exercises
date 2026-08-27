#include <printf.h>
#include <stdint.h>
#include <stdlib.h>

uint8_t max(uint8_t a, uint8_t b) {
        if (a > b) {
                return a;
        } else {
                return b;
        }
}

int main() {
        printf("Greater number is: %d", max(12, 18));
        return 0;
}
