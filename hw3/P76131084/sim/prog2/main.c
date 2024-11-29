#include <stdint.h>

#define MIP_MEIP (1 << 11) // External interrupt pending
#define MIP_MTIP (1 << 7)  // Timer interrupt pending
#define MIP 0x344

volatile unsigned int *WDT_addr = (int *) 0x10010000;
volatile unsigned int *dma_addr_boot = (int *) 0x10020000;




void timer_interrupt_handler(void) {
  asm("csrsi mstatus, 0x0"); // MIE of mstatus
  WDT_addr[0x40] = 0; // WDT_en
  asm("j _start");
}

void external_interrupt_handler(void) {
	volatile unsigned int *dma_addr_boot = (int *) 0x10020000;
	asm("csrsi mstatus, 0x0"); // MIE of mstatus
	dma_addr_boot[0x40] = 0; // disable DMA
} 

void trap_handler(void) {
    uint32_t mip;
    asm volatile("csrr %0, %1" : "=r"(mip) : "i"(MIP));
	
    if ((mip & MIP_MTIP) >> 7) {
        timer_interrupt_handler();
    }

    if ((mip & MIP_MEIP) >> 11) {
        external_interrupt_handler();
    }
}

//int main(void) {
//    extern char _test_start;
//    extern char _binary_image_bmp_start;
//    extern char _binary_image_bmp_end;
//    extern unsigned int _binary_image_bmp_size;
//
//    for(int i=0; i<54; i++)
//        (&_test_start)[i]=(&_binary_image_bmp_start)[i];
//
//    for(int i=54;i<_binary_image_bmp_size;i=i+3){
//        int result=0;
//        int b=(&_test_start)[i];
//        int g=(&_test_start)[i+1];
//        int r=(&_test_start)[i+2];
//        result = b*0.11 + g*0.59 + r*0.3;
//
//        (&_test_start)[i] = result;
//        (&_test_start)[i+1] = result;
//        (&_test_start)[i+2] = result;
//    }
//}

int main(void) {
  extern char _test_start;
  extern char _binary_image_bmp_start;
  extern char _binary_image_bmp_end;
  extern unsigned int _binary_image_bmp_size;

  int i;
  for(i=0; i<54; i++)
    (&_test_start)[i]=(&_binary_image_bmp_start)[i];

  int j;
  int a=0,b=0,c=0;
  for(j=54; j < &_binary_image_bmp_size; j=j+3){
    int result=0, tmp=0;
    c=(&_binary_image_bmp_start)[j];
    b=(&_binary_image_bmp_start)[j+1];
    a=(&_binary_image_bmp_start)[j+2];
    tmp=a<<18;
    result+=tmp;
    tmp=a<<15;
    result+=tmp;
    tmp=a<<14;
    result+=tmp;
    tmp=a<<11;
    result+=tmp;
    tmp=a<<10;
    result+=tmp;
    tmp=a<<7;
    result+=tmp;
    tmp=a<<6;
    result+=tmp;
    tmp=a<<3;
    result+=tmp;
    tmp=a<<2;
    result+=tmp;
    result+=a;
    
    tmp=b<<19;
    result+=tmp;
    tmp=b<<16;
    result+=tmp;
    tmp=b<<14;
    result+=tmp;
    tmp=b<<13;
    result+=tmp;
    tmp=b<<12;
    result+=tmp;
    tmp=b<<7;
    result+=tmp;
    tmp=b<<5;
    result+=tmp;
    tmp=b<<2;
    result+=tmp;

    tmp=c<<16;
    result+=tmp;
    tmp=c<<15;
    result+=tmp;
    tmp=c<<14;
    result+=tmp;
    tmp=c<<9;
    result+=tmp;
    tmp=c<<7;
    result+=tmp;
    tmp=c<<4;
    result+=tmp;
    
    result = result >> 20;

    (&_test_start)[j]=result;
    (&_test_start)[j+1]=result;
    (&_test_start)[j+2]=result;
  }
  return 0;
  
}
