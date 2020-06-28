/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200110 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of /Users/naveen/Desktop/ACPI Tables/SSDT-x0_5-ApHwp.aml, Thu Jun 25 03:37:48 2020
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000317 (791)
 *     Revision         0x02
 *     Checksum         0xE3
 *     OEM ID           "PmRef"
 *     OEM Table ID     "ApHwp"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "PmRef", "ApHwp", 0x00003000)
{
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.GFX0, DeviceObj)
    External (_SB_.PCI0.GFX0._DSM, MethodObj)    // 4 Arguments
    External (_SB_.PCI0.P0LS, UnknownObj)
    External (_SB_.PCI0.PEG0, DeviceObj)
    External (_SB_.PCI0.PEG0.CEDR, UnknownObj)
    External (_SB_.PCI0.PEG0.DGCX, IntObj)
    External (_SB_.PCI0.PEG0.LREN, UnknownObj)
    External (_SB_.PCI0.PEG0.PEGP, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP._ADR, DeviceObj)
    External (_SB_.PCI0.PEG0.PEGP.LTRE, UnknownObj)
    External (_SB_.PCI0.PEG0.PEGP.PVID, UnknownObj)
    External (_SB_.PCI0.PEG0.TDGC, IntObj)
    External (_SB_.PCI0.PEG0.TGPC, IntObj)
    External (_SB_.PCI0.PGOF, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.PGON, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.RTDS, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.RTEN, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.SGPO, MethodObj)    // 5 Arguments
    External (_SB_.PR00, ProcessorObj)
    External (_SB_.PR00._CPC, MethodObj)    // 0 Arguments
    External (_SB_.PR01, ProcessorObj)
    External (_SB_.PR02, ProcessorObj)
    External (_SB_.PR03, ProcessorObj)
    External (_SB_.PR04, ProcessorObj)
    External (_SB_.PR05, ProcessorObj)
    External (_SB_.PR06, ProcessorObj)
    External (_SB_.PR07, ProcessorObj)
    External (_SB_.PR08, ProcessorObj)
    External (_SB_.PR09, ProcessorObj)
    External (_SB_.PR10, ProcessorObj)
    External (_SB_.PR11, ProcessorObj)
    External (_SB_.PR12, ProcessorObj)
    External (_SB_.PR13, ProcessorObj)
    External (_SB_.PR14, ProcessorObj)
    External (_SB_.PR15, ProcessorObj)
    External (DID1, UnknownObj)
    External (DID2, UnknownObj)
    External (DID3, UnknownObj)
    External (DID4, UnknownObj)
    External (DID5, UnknownObj)
    External (DID6, UnknownObj)
    External (DID7, UnknownObj)
    External (DID8, UnknownObj)
    External (EBAS, UnknownObj)
    External (HGPS, MethodObj)    // 1 Arguments
    External (HRA0, UnknownObj)
    External (HRE0, UnknownObj)
    External (HRG0, UnknownObj)
    External (HYSS, UnknownObj)
    External (NVAF, UnknownObj)
    External (NVGA, UnknownObj)
    External (NVHA, UnknownObj)
    External (NXD1, UnknownObj)
    External (NXD2, UnknownObj)
    External (NXD3, UnknownObj)
    External (NXD4, UnknownObj)
    External (NXD5, UnknownObj)
    External (NXD6, UnknownObj)
    External (NXD7, UnknownObj)
    External (NXD8, UnknownObj)
    External (OSYS, UnknownObj)
    External (PWA0, UnknownObj)
    External (PWE0, UnknownObj)
    External (PWG0, UnknownObj)
    External (RPA5, UnknownObj)
    External (SGFL, UnknownObj)
    External (SGGP, UnknownObj)
    External (SGMD, UnknownObj)
    External (SSMP, UnknownObj)
    External (XBAS, UnknownObj)

    Scope (\_SB.PR01)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR02)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR03)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR04)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR05)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR06)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR07)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR08)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR09)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR10)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR11)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR12)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR13)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR14)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }

    Scope (\_SB.PR15)
    {
        Method (_CPC, 0, NotSerialized)  // _CPC: Continuous Performance Control
        {
            Return (\_SB.PR00._CPC ())
        }
    }
}

