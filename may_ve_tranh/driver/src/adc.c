/*
 * adc.c
 *
 *  Created on: Dec 2, 2025
 *      Author: ADMIN
 */
#include "adc.h"
void ADC_Clock(ADC_RegDef_t*adcx,uint8_t EnorDi)
{
	if(EnorDi==ENABLE)
	{
		if(adcx==ADC1) ADC1_PCLK_EN();
		else if(adcx==ADC2) ADC2_PCLK_EN();
		else if(adcx==ADC3) ADC3_PCLK_EN();
	}
	else
	{
		if(adcx==ADC1) ADC1_PCLK_DI();
		else if(adcx==ADC2) ADC2_PCLK_DI();
		else if(adcx==ADC3) ADC3_PCLK_DI();
	}
}
void ADC_Init(ADC_Handle_t*adc_handle)
{
	ADC_Clock(adc_handle->adcx,ENABLE);
	uint32_t reg=0;
	//réolution
	adc_handle->adcx->CR1&=~(0x03<<24);
	adc_handle->adcx->CR1|=(adc_handle->adcy.resolution<<24);

	/*adc_handle->adcx->CR1&=~(0x07<<13);
	adc_handle->adcx->CR1|=(0<<13);

	adc_handle->adcx->CR1|=(1<<11);//Discontinuous mode on regular channels*/


	//sampling
	uint8_t row,col;
	row=adc_handle->adcy.channel/10;
	col=adc_handle->adcy.channel%10;
	adc_handle->adcx->SMPR[row]&=~(0x07<<col*3);
	adc_handle->adcx->SMPR[row]|=(0x01<<col*3);

	row=(adc_handle->adcy.rank-1)/6;
	col=(adc_handle->adcy.rank-1)%6;
	adc_handle->adcx->SQR[2-row]&=~(0x0f<<col*5);
	adc_handle->adcx->SQR[2-row]|=(adc_handle->adcy.channel<<col*5);
	//sigle mode
	adc_handle->adcx->CR2|=(1<<1|1<<0);

}
uint16_t ADC_Read(ADC_RegDef_t*adcx,uint8_t channel)
{

}
