//library IEEE;
//use IEEE.std_logic_1164.all;
#include "xparameters.h"
#include "xgpio.h"
#include "led_ip.h"

//====================================================



typedef enum
{
	D1,
	D2,
	D3,
	D4,
	D5,
	D6,
	D7,
	D8,
} estados_t;

estados_t edo_act;


int main (void) 
{

   XGpio dip, push;
   int i, psb_check, sec_i, sal_o, edo_sig;


   xil_printf("-- Start of the Program --\r\n");
 
   XGpio_Initialize(&dip, XPAR_AXI_GPIO_1_DEVICE_ID); // Modify this XPAR_SWITCHES_DEVICE_ID
   XGpio_SetDataDirection(&dip, 1, 0xffffffff);
	
   XGpio_Initialize(&push,XPAR_AXI_GPIO_0_DEVICE_ID); // Modify this XPAR_BUTTONS_DEVICE_ID
   XGpio_SetDataDirection(&push, 1, 0xffffffff);
	
   edo_act = D1;


   while (TRUE)
   {


	  //psb_check = XGpio_DiscreteRead(&push, 1);
	  //xil_printf("Push Buttons Status %x\r\n", psb_check);
	  sec_i = XGpio_DiscreteRead(&dip, 1);//dip_check = XGpio_DiscreteRead(&dip, 1);
	  xil_printf("DIP Switch Status %x\r\n", sec_i);
	  
	  // output dip switches value on LED_ip device
	  LED_IP_mWriteReg(LED_IP_S0000_AXI_SLV_REG0_OFFSET, 0, sec_i); //XPAR_LED_PIN_S_AXI_BASEADDR
	  
	  //-----------------------------------------------------------------------------------//
	  //-----------------------------------------------------------------------------------//


	  switch (edo_act)
	  {
	  	  case D1:

	  		  sal_o = 1;// salida hacia Motor PAP 0001

	  		  XGpio_DiscreteWrite(&push, 1, sal_o);

	  		  for (i=0; i<9999; i++); //retardo para evitar p?rdidas de pasos del motor

	  		  if (sec_i == 0)//"00"
	  	  		  edo_sig = D1;
	  	  	  else if (sec_i == 1)//"01"
	  	  		  edo_sig = D3;
	  	  	  else if (sec_i == 2)//10
	  	  		  edo_sig = D2;
	  	  	  else
	  	  		  edo_sig = D2;

	  	  	  edo_act = edo_sig;

	  	  case D2:
	  		  sal_o = 3; // salida hacia Motor PAP "0011"

	  		  XGpio_DiscreteWrite(&push, 1, sal_o);

	  		  for (i=0; i<9999; i++);

	  		  if (sec_i == 0)//00
	  			  edo_sig = D2;
	  		  else if (sec_i == 1)//01
	  			  edo_sig = D3;
	  		  else if (sec_i == 2)//"10"
	  			  edo_sig = D4;
	  		  else
	  			  edo_sig = D3;

	  		  edo_act = edo_sig;

	  	  case D3:
	  		  sal_o = 2;//salida hacia Motor PAP "0010"

	  		  XGpio_DiscreteWrite(&push, 1, sal_o);
	  		  for (i=0; i<9999; i++);
	  		  if (sec_i == 0)//"00"
	  			  edo_sig = D3;
	  		  else if (sec_i == 1)//"01"
	  			  edo_sig = D5;
	  		  else if (sec_i == 2)//"10"
	  			  edo_sig = D4;
	  		  else
	  			  edo_sig = D4;

	  		  edo_act = edo_sig;

	  	  case D4:
	  		  sal_o = 6;//salida hacia Motor PAP "0110"

	  		  XGpio_DiscreteWrite(&push, 1, sal_o);
	  		  for (i=0; i<9999; i++);
	  		  if (sec_i == 0)//"00"
	  			  edo_sig = D4;
	  		  else if (sec_i == 1)//"01"
	  			  edo_sig = D5;
	  		  else if (sec_i == 2)//"10"
	  			  edo_sig = D6;
	  		  else
	  			  edo_sig = D5;

	  		  edo_act = edo_sig;
	  	  case D5:
	  		  sal_o = 4;//salida hacia Motor PAP "0100"

	  		  XGpio_DiscreteWrite(&push, 1, sal_o);
	  		  for (i=0; i<9999; i++);
	  		  if (sec_i == 0)//"00"
	  			  edo_sig = D5;
	  		  else if (sec_i == 1)//"01"
	  			  edo_sig = D7;
	  		  else if (sec_i == 2)//"10"
	  			  edo_sig = D6;
	  		  else
	  			  edo_sig = D6;

	  		  edo_act = edo_sig;
	  	  case D6:
	  		  sal_o = 12;//salida hacia Motor PAP "1100"

	  		  XGpio_DiscreteWrite(&push, 1, sal_o);
	  		  for (i=0; i<9999; i++);
	  		  if (sec_i == 0)//"00"
	  			  edo_sig = D6;
	  		  else if (sec_i == 1)//"01"
	  			  edo_sig = D7;
	  		  else if (sec_i == 2)//"10"
	  			  edo_sig = D8;
	  		  else
	  			  edo_sig = D7;

	  		  edo_act = edo_sig;

	  	  case D7:
	  		  sal_o = 8;//salida hacia Motor PAP "1000"

	  		  XGpio_DiscreteWrite(&push, 1, sal_o);
	  		  for (i=0; i<9999; i++);
	  		  if (sec_i == 0)//"00"
	  			  edo_sig = D7;
	  		  else if (sec_i == 1)//"01"
	  			  edo_sig = D1;
	  		  else if (sec_i == 2)//"10"
	  			  edo_sig = D8;
	  		  else
	  			  edo_sig = D8;

	  		  edo_act = edo_sig;
	  	  case D8:
	  		  sal_o = 9;//salida hacia Motor PAP "1001"

	  		  XGpio_DiscreteWrite(&push, 1, sal_o);
	  		  for (i=0; i<9999; i++);
	  		  if (sec_i == 0)//"00"
	  			  edo_sig = D8;
	  		  else if (sec_i == 1)//"01"
	  			  edo_sig = D1;
	  		  else if (sec_i == 2)//"10"
	  			  edo_sig = D2;
	  		  else
	  			  edo_sig = D1;

	  		  edo_act = edo_sig;

	}



	  //-----------------------------------------------------------------------------------//
	  //-----------------------------------------------------------------------------------//
   }
}
