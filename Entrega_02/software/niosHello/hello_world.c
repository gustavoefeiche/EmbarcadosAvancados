#include <stdio.h>
#include "system.h"
#include <alt_types.h>
#include <io.h> /* Leiutura e escrita no Avalon */
#include "altera_avalon_pio_regs.h"
#include "sys/alt_irq.h"


int n = 0;
volatile int edge_capture;

void handle_button_interrupts(void* context, alt_u32 id)
{
     /* Cast context to edge_capture's type. It is important that this be
      * declared volatile to avoid unwanted compiler optimization.
      */
     volatile int* edge_capture_ptr = (volatile int*) context;
     /* Store the value in the Button's edge capture register in *context. */
     *edge_capture_ptr = IORD_ALTERA_AVALON_PIO_EDGE_CAP(PIO_1_BASE);
     n++;
     /* Reset the Button's edge capture register. */
     IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_1_BASE, 0);
     //printf("%d", *edge_capture_ptr);
     //printf("%d", edge_capture);
}

void init_pio()
 {
     /* Recast the edge_capture pointer to match the alt_irq_register() function
      * prototype. */
     void* edge_capture_ptr = (void*) &edge_capture;
     /* Enable first four interrupts. */
     IOWR_ALTERA_AVALON_PIO_IRQ_MASK(PIO_1_BASE, 0x1f);
     /* Reset the edge capture register. */
     IOWR_ALTERA_AVALON_PIO_EDGE_CAP(PIO_1_BASE, 0x0);

  /* Register the interrupt handler. */
     alt_irq_register( PIO_1_IRQ, edge_capture_ptr, handle_button_interrupts );

 }



int main(void){
  n = 0;
  init_pio();
  unsigned int led = 0;
  int in_values;


  printf("Embarcados++ \n");

  while(1){
	  //printf("%d", edge_capture);

	  edge_capture = IORD_32DIRECT(PIO_1_BASE, 0);

	  if(led == 0) {
		  led = 1;
	  }
	  else {
		  led = 0;
	  }

	  if (edge_capture > 15) {
		  if (led) IOWR_32DIRECT(PIO_0_BASE, 0, 0x3F);
		  else IOWR_32DIRECT(PIO_0_BASE, 0, 0x00);
	  }

	  //printf("\nValue: %d\n", in_values);

	  usleep(4000*edge_capture);
	  }

  return 0;
}
