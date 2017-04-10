/*
*****************************************************************************
**
**  File        : stm32_flash.ld
**
**  Abstract    : Linker script for STM32F103xE devices with
**                512KByte FLASH, 64KByte RAM
**
*****************************************************************************
*/

/* Specify the memory areas. */
MEMORY
{
    FLASH (rx)        : ORIGIN = 0x08000000, LENGTH = 508K
    FLASH_CONFIG (r)  : ORIGIN = 0x0807F000, LENGTH = 4K

    RAM (xrw)         : ORIGIN = 0x20000000, LENGTH = 64K
    MEMORY_B1 (rx)    : ORIGIN = 0x60000000, LENGTH = 0K
}

REGION_ALIAS("STACKRAM", RAM)

INCLUDE "stm32_flash.ld"
