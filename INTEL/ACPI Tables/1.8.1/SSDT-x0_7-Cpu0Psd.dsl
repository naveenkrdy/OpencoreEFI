/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20190405 (64-bit version)
 * Copyright (c) 2000 - 2019 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/naveen/Desktop/origin/SSDT-x0_7-Cpu0Psd.aml, Sun Sep  6 04:05:44 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000F4 (244)
 *     Revision         0x02
 *     Checksum         0x37
 *     OEM ID           "PmRef"
 *     OEM Table ID     "Cpu0Psd"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "Cpu0Psd", 0x00003000)
{
    External (_SB_.CFGD, FieldUnitObj)
    External (_SB_.PR00, DeviceObj)
    External (PC00, IntObj)
    External (TCNT, FieldUnitObj)

    Scope (\_SB.PR00)
    {
        Name (HPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFE, 
                0x80
            }
        })
        Name (SPSD, Package (0x01)
        {
            Package (0x05)
            {
                0x05, 
                Zero, 
                Zero, 
                0xFC, 
                0x80
            }
        })
        Method (_PSD, 0, NotSerialized)  // _PSD: Power State Dependencies
        {
            If ((\_SB.CFGD & 0x02000000))
            {
                DerefOf (HPSD [Zero]) [0x02] = Zero
                DerefOf (HPSD [Zero]) [0x04] = One
            }
            Else
            {
                DerefOf (HPSD [Zero]) [0x04] = TCNT /* External reference */
                DerefOf (SPSD [Zero]) [0x04] = TCNT /* External reference */
            }

            If ((PC00 & 0x0800))
            {
                Return (HPSD) /* \_SB_.PR00.HPSD */
            }

            Return (SPSD) /* \_SB_.PR00.SPSD */
        }
    }
}

