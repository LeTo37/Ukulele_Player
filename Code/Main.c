#include "NU32.h"  

int main(void) {
  NU32_Startup(); // cache on, min flash wait, interrupts on, LED/button init, UART init
   while(1) {
      ; // do nothing, loop forever
  }

  return 0;
}

