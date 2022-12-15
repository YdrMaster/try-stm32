
C:\Users\ydrml\Documents\repos\try-stm32\target\thumbv7m-none-eabi\release\try-stm32:	file format elf32-littlearm

Disassembly of section .isr_vector:

08000000 <.isr_vector>:
 8000000: a000         	adr	r0, #0 <.isr_vector+0x4>
 8000002: 2000         	movs	r0, #0
 8000004: 0009         	movs	r1, r1
 8000006: 0800         	lsrs	r0, r0, #32

Disassembly of section .text:

08000008 <reset_handler>:
 8000008: b580         	push	{r7, lr}
 800000a: 466f         	mov	r7, sp
 800000c: f240 0100    	movw	r1, #0
 8000010: f240 0000    	movw	r0, #0
 8000014: f2c2 0100    	movt	r1, #8192
 8000018: f2c2 0000    	movt	r0, #8192
 800001c: 4288         	cmp	r0, r1
 800001e: d20e         	bhs	0x800003e <reset_handler+0x36> @ imm = #28
 8000020: 1d02         	adds	r2, r0, #4
 8000022: 4291         	cmp	r1, r2
 8000024: bf88         	it	hi
 8000026: 460a         	movhi	r2, r1
 8000028: 43c1         	mvns	r1, r0
 800002a: 4411         	add	r1, r2
 800002c: 3104         	adds	r1, #4
 800002e: f021 0203    	bic	r2, r1, #3
 8000032: f240 217c    	movw	r1, #636
 8000036: f6c0 0100    	movt	r1, #2048
 800003a: f000 f824    	bl	0x8000086 <__aeabi_memcpy4> @ imm = #72
 800003e: f240 0000    	movw	r0, #0
 8000042: f240 0100    	movw	r1, #0
 8000046: f2c2 0000    	movt	r0, #8192
 800004a: f2c2 0100    	movt	r1, #8192
 800004e: 4281         	cmp	r1, r0
 8000050: d214         	bhs	0x800007c <reset_handler+0x74> @ imm = #40
 8000052: f240 0100    	movw	r1, #0
 8000056: 2200         	movs	r2, #0
 8000058: f2c2 0100    	movt	r1, #8192
 800005c: f841 2b04    	str	r2, [r1], #4
 8000060: 4281         	cmp	r1, r0
 8000062: d20b         	bhs	0x800007c <reset_handler+0x74> @ imm = #22
 8000064: f841 2b04    	str	r2, [r1], #4
 8000068: 4281         	cmp	r1, r0
 800006a: bf3c         	itt	lo
 800006c: f841 2b04    	strlo	r2, [r1], #4
 8000070: 4281         	cmplo	r1, r0
 8000072: d203         	bhs	0x800007c <reset_handler+0x74> @ imm = #6
 8000074: f841 2b04    	str	r2, [r1], #4
 8000078: 4281         	cmp	r1, r0
 800007a: d3ef         	blo	0x800005c <reset_handler+0x54> @ imm = #-34
 800007c: bf10         	yield
 800007e: bf10         	yield
 8000080: bf10         	yield
 8000082: bf10         	yield
 8000084: e7fa         	b	0x800007c <reset_handler+0x74> @ imm = #-12

08000086 <__aeabi_memcpy4>:
 8000086: f000 b802    	b.w	0x800008e <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE> @ imm = #4

0800008a <_ZN17compiler_builtins3arm14__aeabi_memcpy17h1dced3a27c0678afE>:
 800008a: f000 b84d    	b.w	0x8000128 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE> @ imm = #154

0800008e <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE>:
 800008e: b5b0         	push	{r4, r5, r7, lr}
 8000090: af02         	add	r7, sp, #8
 8000092: 2a04         	cmp	r2, #4
 8000094: d340         	blo	0x8000118 <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE+0x8a> @ imm = #128
 8000096: f1a2 0e04    	sub.w	lr, r2, #4
 800009a: 2301         	movs	r3, #1
 800009c: eb03 039e    	add.w	r3, r3, lr, lsr #2
 80000a0: f013 0403    	ands	r4, r3, #3
 80000a4: d00e         	beq	0x80000c4 <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE+0x36> @ imm = #28
 80000a6: 468c         	mov	r12, r1
 80000a8: 4603         	mov	r3, r0
 80000aa: f85c 5b04    	ldr	r5, [r12], #4
 80000ae: 2c01         	cmp	r4, #1
 80000b0: f843 5b04    	str	r5, [r3], #4
 80000b4: d10f         	bne	0x80000d6 <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE+0x48> @ imm = #30
 80000b6: 4618         	mov	r0, r3
 80000b8: 4661         	mov	r1, r12
 80000ba: 4672         	mov	r2, lr
 80000bc: f1be 0f0c    	cmp.w	lr, #12
 80000c0: d21b         	bhs	0x80000fa <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE+0x6c> @ imm = #54
 80000c2: e002         	b	0x80000ca <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE+0x3c> @ imm = #4
 80000c4: f1be 0f0c    	cmp.w	lr, #12
 80000c8: d217         	bhs	0x80000fa <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE+0x6c> @ imm = #46
 80000ca: 4618         	mov	r0, r3
 80000cc: 4661         	mov	r1, r12
 80000ce: e8bd 40b0    	pop.w	{r4, r5, r7, lr}
 80000d2: f7ff bfda    	b.w	0x800008a <_ZN17compiler_builtins3arm14__aeabi_memcpy17h1dced3a27c0678afE> @ imm = #-76
 80000d6: 684b         	ldr	r3, [r1, #4]
 80000d8: 2c02         	cmp	r4, #2
 80000da: 6043         	str	r3, [r0, #4]
 80000dc: d103         	bne	0x80000e6 <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE+0x58> @ imm = #6
 80000de: 3a08         	subs	r2, #8
 80000e0: 3108         	adds	r1, #8
 80000e2: 3008         	adds	r0, #8
 80000e4: e004         	b	0x80000f0 <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE+0x62> @ imm = #8
 80000e6: 688b         	ldr	r3, [r1, #8]
 80000e8: 3a0c         	subs	r2, #12
 80000ea: 6083         	str	r3, [r0, #8]
 80000ec: 310c         	adds	r1, #12
 80000ee: 300c         	adds	r0, #12
 80000f0: 4603         	mov	r3, r0
 80000f2: 468c         	mov	r12, r1
 80000f4: f1be 0f0c    	cmp.w	lr, #12
 80000f8: d3e7         	blo	0x80000ca <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE+0x3c> @ imm = #-50
 80000fa: 680b         	ldr	r3, [r1]
 80000fc: 3a10         	subs	r2, #16
 80000fe: 6003         	str	r3, [r0]
 8000100: 2a03         	cmp	r2, #3
 8000102: 684b         	ldr	r3, [r1, #4]
 8000104: 6043         	str	r3, [r0, #4]
 8000106: 688b         	ldr	r3, [r1, #8]
 8000108: 6083         	str	r3, [r0, #8]
 800010a: 68cb         	ldr	r3, [r1, #12]
 800010c: f101 0110    	add.w	r1, r1, #16
 8000110: 60c3         	str	r3, [r0, #12]
 8000112: f100 0010    	add.w	r0, r0, #16
 8000116: d8f0         	bhi	0x80000fa <_ZN17compiler_builtins3arm15__aeabi_memcpy417ha8e50f95c2181ddaE+0x6c> @ imm = #-32
 8000118: 468c         	mov	r12, r1
 800011a: 4603         	mov	r3, r0
 800011c: 4618         	mov	r0, r3
 800011e: 4661         	mov	r1, r12
 8000120: e8bd 40b0    	pop.w	{r4, r5, r7, lr}
 8000124: f7ff bfb1    	b.w	0x800008a <_ZN17compiler_builtins3arm14__aeabi_memcpy17h1dced3a27c0678afE> @ imm = #-158

08000128 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE>:
 8000128: b5f0         	push	{r4, r5, r6, r7, lr}
 800012a: af03         	add	r7, sp, #12
 800012c: e92d 0700    	push.w	{r8, r9, r10}
 8000130: 2a0f         	cmp	r2, #15
 8000132: d961         	bls	0x80001f8 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0xd0> @ imm = #194
 8000134: 4243         	rsbs	r3, r0, #0
 8000136: f013 0403    	ands	r4, r3, #3
 800013a: eb00 0c04    	add.w	r12, r0, r4
 800013e: d016         	beq	0x800016e <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x46> @ imm = #44
 8000140: 4603         	mov	r3, r0
 8000142: 460e         	mov	r6, r1
 8000144: 7835         	ldrb	r5, [r6]
 8000146: f803 5b01    	strb	r5, [r3], #1
 800014a: 4563         	cmp	r3, r12
 800014c: d20f         	bhs	0x800016e <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x46> @ imm = #30
 800014e: 7875         	ldrb	r5, [r6, #1]
 8000150: f803 5b01    	strb	r5, [r3], #1
 8000154: 4563         	cmp	r3, r12
 8000156: bf3e         	ittt	lo
 8000158: 78b5         	ldrblo	r5, [r6, #2]
 800015a: f803 5b01    	strblo	r5, [r3], #1
 800015e: 4563         	cmplo	r3, r12
 8000160: d205         	bhs	0x800016e <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x46> @ imm = #10
 8000162: 78f5         	ldrb	r5, [r6, #3]
 8000164: 3604         	adds	r6, #4
 8000166: f803 5b01    	strb	r5, [r3], #1
 800016a: 4563         	cmp	r3, r12
 800016c: d3ea         	blo	0x8000144 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x1c> @ imm = #-44
 800016e: eba2 0e04    	sub.w	lr, r2, r4
 8000172: eb01 0804    	add.w	r8, r1, r4
 8000176: f02e 0903    	bic	r9, lr, #3
 800017a: f018 0103    	ands	r1, r8, #3
 800017e: eb0c 0309    	add.w	r3, r12, r9
 8000182: d03c         	beq	0x80001fe <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0xd6> @ imm = #120
 8000184: f1b9 0f01    	cmp.w	r9, #1
 8000188: db52         	blt	0x8000230 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x108> @ imm = #164
 800018a: ea4f 0ac1    	lsl.w	r10, r1, #3
 800018e: f028 0103    	bic	r1, r8, #3
 8000192: f1ca 0600    	rsb.w	r6, r10, #0
 8000196: f101 0508    	add.w	r5, r1, #8
 800019a: 6809         	ldr	r1, [r1]
 800019c: f006 0618    	and	r6, r6, #24
 80001a0: fa21 f20a    	lsr.w	r2, r1, r10
 80001a4: f855 1c04    	ldr	r1, [r5, #-4]
 80001a8: fa01 f406    	lsl.w	r4, r1, r6
 80001ac: 4322         	orrs	r2, r4
 80001ae: f84c 2b04    	str	r2, [r12], #4
 80001b2: 459c         	cmp	r12, r3
 80001b4: d23c         	bhs	0x8000230 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x108> @ imm = #120
 80001b6: fa21 f20a    	lsr.w	r2, r1, r10
 80001ba: 6829         	ldr	r1, [r5]
 80001bc: fa01 f406    	lsl.w	r4, r1, r6
 80001c0: 4322         	orrs	r2, r4
 80001c2: f84c 2b04    	str	r2, [r12], #4
 80001c6: 459c         	cmp	r12, r3
 80001c8: bf3f         	itttt	lo
 80001ca: fa21 f20a    	lsrlo.w	r2, r1, r10
 80001ce: 6869         	ldrlo	r1, [r5, #4]
 80001d0: fa01 f406    	lsllo.w	r4, r1, r6
 80001d4: 4322         	orrlo	r2, r4
 80001d6: bf3c         	itt	lo
 80001d8: f84c 2b04    	strlo	r2, [r12], #4
 80001dc: 459c         	cmplo	r12, r3
 80001de: d227         	bhs	0x8000230 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x108> @ imm = #78
 80001e0: fa21 f20a    	lsr.w	r2, r1, r10
 80001e4: 68a9         	ldr	r1, [r5, #8]
 80001e6: 3510         	adds	r5, #16
 80001e8: fa01 f406    	lsl.w	r4, r1, r6
 80001ec: 4322         	orrs	r2, r4
 80001ee: f84c 2b04    	str	r2, [r12], #4
 80001f2: 459c         	cmp	r12, r3
 80001f4: d3d4         	blo	0x80001a0 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x78> @ imm = #-88
 80001f6: e01b         	b	0x8000230 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x108> @ imm = #54
 80001f8: 4603         	mov	r3, r0
 80001fa: b9f2         	cbnz	r2, 0x800023a <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x112> @ imm = #60
 80001fc: e033         	b	0x8000266 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x13e> @ imm = #102
 80001fe: f1b9 0f01    	cmp.w	r9, #1
 8000202: db15         	blt	0x8000230 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x108> @ imm = #42
 8000204: 4644         	mov	r4, r8
 8000206: 6821         	ldr	r1, [r4]
 8000208: f84c 1b04    	str	r1, [r12], #4
 800020c: 459c         	cmp	r12, r3
 800020e: d20f         	bhs	0x8000230 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x108> @ imm = #30
 8000210: 6861         	ldr	r1, [r4, #4]
 8000212: f84c 1b04    	str	r1, [r12], #4
 8000216: 459c         	cmp	r12, r3
 8000218: bf3e         	ittt	lo
 800021a: 68a1         	ldrlo	r1, [r4, #8]
 800021c: f84c 1b04    	strlo	r1, [r12], #4
 8000220: 459c         	cmplo	r12, r3
 8000222: d205         	bhs	0x8000230 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x108> @ imm = #10
 8000224: 68e1         	ldr	r1, [r4, #12]
 8000226: 3410         	adds	r4, #16
 8000228: f84c 1b04    	str	r1, [r12], #4
 800022c: 459c         	cmp	r12, r3
 800022e: d3ea         	blo	0x8000206 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0xde> @ imm = #-44
 8000230: eb08 0109    	add.w	r1, r8, r9
 8000234: f00e 0203    	and	r2, lr, #3
 8000238: b1aa         	cbz	r2, 0x8000266 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x13e> @ imm = #42
 800023a: 441a         	add	r2, r3
 800023c: 780e         	ldrb	r6, [r1]
 800023e: f803 6b01    	strb	r6, [r3], #1
 8000242: 4293         	cmp	r3, r2
 8000244: d20f         	bhs	0x8000266 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x13e> @ imm = #30
 8000246: 784e         	ldrb	r6, [r1, #1]
 8000248: f803 6b01    	strb	r6, [r3], #1
 800024c: 4293         	cmp	r3, r2
 800024e: bf3e         	ittt	lo
 8000250: 788e         	ldrblo	r6, [r1, #2]
 8000252: f803 6b01    	strblo	r6, [r3], #1
 8000256: 4293         	cmplo	r3, r2
 8000258: d205         	bhs	0x8000266 <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x13e> @ imm = #10
 800025a: 78ce         	ldrb	r6, [r1, #3]
 800025c: 3104         	adds	r1, #4
 800025e: f803 6b01    	strb	r6, [r3], #1
 8000262: 4293         	cmp	r3, r2
 8000264: d3ea         	blo	0x800023c <_ZN17compiler_builtins3mem6memcpy17h99e5d80e40bf35baE+0x114> @ imm = #-44
 8000266: e8bd 0700    	pop.w	{r8, r9, r10}
 800026a: bdf0         	pop	{r4, r5, r6, r7, pc}

Disassembly of section .ARM.exidx:

0800026c <.ARM.exidx>:
 800026c: fd9c 7fff    	ldc2	p15, c7, [r12, #1020]
 8000270: 0001         	movs	r1, r0
 8000272: 0000         	movs	r0, r0
 8000274: fff8 7fff    	<unknown>
 8000278: 0001         	movs	r1, r0
 800027a: 0000         	movs	r0, r0

Disassembly of section .ARM.attributes:

00000000 <.ARM.attributes>:
       0: 3141         	adds	r1, #65
       2: 0000         	movs	r0, r0
       4: 6100         	str	r0, [r0, #16]
       6: 6165         	str	r5, [r4, #20]
       8: 6962         	ldr	r2, [r4, #20]
       a: 0100         	lsls	r0, r0, #4
       c: 0027         	movs	r7, r4
       e: 0000         	movs	r0, r0
      10: 3243         	adds	r2, #67
      12: 302e         	adds	r0, #46
      14: 0039         	movs	r1, r7
      16: 0a06         	lsrs	r6, r0, #8
      18: 4d07         	ldr	r5, [pc, #28]           @ 0x38 <.ARM.attributes+0x38>
      1a: 0008         	movs	r0, r1
      1c: 0209         	lsls	r1, r1, #8
      1e: 000e         	movs	r6, r1
      20: 0111         	lsls	r1, r2, #4
      22: 0114         	lsls	r4, r2, #4
      24: 0015         	movs	r5, r2
      26: 0317         	lsls	r7, r2, #12
      28: 0118         	lsls	r0, r3, #4
      2a: 0119         	lsls	r1, r3, #4
      2c: 021e         	lsls	r6, r3, #8
      2e: 0122         	lsls	r2, r4, #4
      30: 0126         	lsls	r6, r4, #4

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
       0: 1101         	asrs	r1, r0, #4
       2: 2501         	movs	r5, #1
       4: 130e         	asrs	r6, r1, #12
       6: 0305         	lsls	r5, r0, #12
       8: 100e         	asrs	r6, r1, #32
       a: 1b17         	subs	r7, r2, r4
       c: b40e         	push	{r1, r2, r3}
       e: 1942         	adds	r2, r0, r5
      10: 0111         	lsls	r1, r2, #4
      12: 0612         	lsls	r2, r2, #24
      14: 0000         	movs	r0, r0
      16: 3902         	subs	r1, #2
      18: 0301         	lsls	r1, r0, #12
      1a: 000e         	movs	r6, r1
      1c: 0300         	lsls	r0, r0, #12
      1e: 002e         	movs	r6, r5
      20: 0111         	lsls	r1, r2, #4
      22: 0612         	lsls	r2, r2, #24
      24: 1840         	adds	r0, r0, r1
      26: 0e03         	lsrs	r3, r0, #24
      28: 0b3a         	lsrs	r2, r7, #12
      2a: 053b         	lsls	r3, r7, #20
      2c: 193f         	adds	r7, r7, r4
      2e: 0000         	movs	r0, r0
      30: 0100         	lsls	r0, r0, #4
      32: 0111         	lsls	r1, r2, #4
      34: 0e25         	lsrs	r5, r4, #24
      36: 0513         	lsls	r3, r2, #20
      38: 0e03         	lsrs	r3, r0, #24
      3a: 1710         	asrs	r0, r2, #28
      3c: 0e1b         	lsrs	r3, r3, #24
      3e: 42b4         	cmp	r4, r6
      40: 1119         	asrs	r1, r3, #4
      42: 5501         	strb	r1, [r0, r4]
      44: 0017         	movs	r7, r2
      46: 0200         	lsls	r0, r0, #8
      48: 0139         	lsls	r1, r7, #4
      4a: 0e03         	lsrs	r3, r0, #24
      4c: 0000         	movs	r0, r0
      4e: 2e03         	cmp	r6, #3
      50: 1100         	asrs	r0, r0, #4
      52: 1201         	asrs	r1, r0, #8
      54: 4006         	ands	r6, r0
      56: 6e18         	ldr	r0, [r3, #96]
      58: 030e         	lsls	r6, r1, #12
      5a: 3a0e         	subs	r2, #14
      5c: 3b0b         	subs	r3, #11
      5e: 3f05         	subs	r7, #5
      60: 0019         	movs	r1, r3
      62: 0400         	lsls	r0, r0, #16
      64: 012e         	lsls	r6, r5, #4
      66: 0111         	lsls	r1, r2, #4
      68: 0612         	lsls	r2, r2, #24
      6a: 1840         	adds	r0, r0, r1
      6c: 0e6e         	lsrs	r6, r5, #25
      6e: 0e03         	lsrs	r3, r0, #24
      70: 0b3a         	lsrs	r2, r7, #12
      72: 053b         	lsls	r3, r7, #20
      74: 193f         	adds	r7, r7, r4
      76: 0000         	movs	r0, r0
      78: 1d05         	adds	r5, r0, #4
      7a: 3100         	adds	r1, #0
      7c: 5513         	strb	r3, [r2, r4]
      7e: 5817         	ldr	r7, [r2, r0]
      80: 590b         	ldr	r3, [r1, r4]
      82: 570b         	ldrsb	r3, [r1, r4]
      84: 000b         	movs	r3, r1
      86: 0600         	lsls	r0, r0, #24
      88: 002e         	movs	r6, r5
      8a: 0e6e         	lsrs	r6, r5, #25
      8c: 0e03         	lsrs	r3, r0, #24
      8e: 0b3a         	lsrs	r2, r7, #12
      90: 053b         	lsls	r3, r7, #20
      92: 0b20         	lsrs	r0, r4, #12
      94: 0000         	movs	r0, r0
      96: 0100         	lsls	r0, r0, #4
      98: 0111         	lsls	r1, r2, #4
      9a: 0e25         	lsrs	r5, r4, #24
      9c: 0513         	lsls	r3, r2, #20
      9e: 0e03         	lsrs	r3, r0, #24
      a0: 1710         	asrs	r0, r2, #28
      a2: 0e1b         	lsrs	r3, r3, #24
      a4: 42b4         	cmp	r4, r6
      a6: 1119         	asrs	r1, r3, #4
      a8: 5501         	strb	r1, [r0, r4]
      aa: 0017         	movs	r7, r2
      ac: 0200         	lsls	r0, r0, #8
      ae: 0139         	lsls	r1, r7, #4
      b0: 0e03         	lsrs	r3, r0, #24
      b2: 0000         	movs	r0, r0
      b4: 2e03         	cmp	r6, #3
      b6: 6e00         	ldr	r0, [r0, #96]
      b8: 030e         	lsls	r6, r1, #12
      ba: 3a0e         	subs	r2, #14
      bc: 3b0b         	subs	r3, #11
      be: 200b         	movs	r0, #11
      c0: 000b         	movs	r3, r1
      c2: 0400         	lsls	r0, r0, #16
      c4: 002e         	movs	r6, r5
      c6: 0e6e         	lsrs	r6, r5, #25
      c8: 0e03         	lsrs	r3, r0, #24
      ca: 0b3a         	lsrs	r2, r7, #12
      cc: 053b         	lsls	r3, r7, #20
      ce: 0b20         	lsrs	r0, r4, #12
      d0: 0000         	movs	r0, r0
      d2: 2e05         	cmp	r6, #5
      d4: 1101         	asrs	r1, r0, #4
      d6: 1201         	asrs	r1, r0, #8
      d8: 4006         	ands	r6, r0
      da: 6e18         	ldr	r0, [r3, #96]
      dc: 030e         	lsls	r6, r1, #12
      de: 3a0e         	subs	r2, #14
      e0: 3b0b         	subs	r3, #11
      e2: 3f05         	subs	r7, #5
      e4: 0019         	movs	r1, r3
      e6: 0600         	lsls	r0, r0, #24
      e8: 011d         	lsls	r5, r3, #4
      ea: 1331         	asrs	r1, r6, #12
      ec: 0111         	lsls	r1, r2, #4
      ee: 0612         	lsls	r2, r2, #24
      f0: 0b58         	lsrs	r0, r3, #13
      f2: 0b59         	lsrs	r1, r3, #13
      f4: 0b57         	lsrs	r7, r2, #13
      f6: 0000         	movs	r0, r0
      f8: 1d07         	adds	r7, r0, #4
      fa: 3100         	adds	r1, #0
      fc: 1113         	asrs	r3, r2, #4
      fe: 1201         	asrs	r1, r0, #8
     100: 5806         	ldr	r6, [r0, r0]
     102: 590b         	ldr	r3, [r1, r4]
     104: 5705         	ldrsb	r5, [r0, r4]
     106: 000b         	movs	r3, r1
     108: 0800         	lsrs	r0, r0, #32
     10a: 001d         	movs	r5, r3
     10c: 1331         	asrs	r1, r6, #12
     10e: 0111         	lsls	r1, r2, #4
     110: 0612         	lsls	r2, r2, #24
     112: 0b58         	lsrs	r0, r3, #13
     114: 0b59         	lsrs	r1, r3, #13
     116: 0b57         	lsrs	r7, r2, #13
     118: 0000         	movs	r0, r0
     11a: 1d09         	adds	r1, r1, #4
     11c: 3101         	adds	r1, #1
     11e: 5513         	strb	r3, [r2, r4]
     120: 5817         	ldr	r7, [r2, r0]
     122: 590b         	ldr	r3, [r1, r4]
     124: 570b         	ldrsb	r3, [r1, r4]
     126: 000b         	movs	r3, r1
     128: 0a00         	lsrs	r0, r0, #8
     12a: 011d         	lsls	r5, r3, #4
     12c: 1331         	asrs	r1, r6, #12
     12e: 0111         	lsls	r1, r2, #4
     130: 0612         	lsls	r2, r2, #24
     132: 0b58         	lsrs	r0, r3, #13
     134: 0559         	lsls	r1, r3, #21
     136: 0b57         	lsrs	r7, r2, #13
     138: 0000         	movs	r0, r0
     13a: 1d0b         	adds	r3, r1, #4
     13c: 3100         	adds	r1, #0
     13e: 5513         	strb	r3, [r2, r4]
     140: 5817         	ldr	r7, [r2, r0]
     142: 590b         	ldr	r3, [r1, r4]
     144: 5705         	ldrsb	r5, [r0, r4]
     146: 000b         	movs	r3, r1
     148: 0c00         	lsrs	r0, r0, #16
     14a: 001d         	movs	r5, r3
     14c: 1331         	asrs	r1, r6, #12
     14e: 1755         	asrs	r5, r2, #29
     150: 0b58         	lsrs	r0, r3, #13
     152: 0b59         	lsrs	r1, r3, #13
     154: 0b57         	lsrs	r7, r2, #13
     156: 0000         	movs	r0, r0
     158: 2e0d         	cmp	r6, #13
     15a: 1100         	asrs	r0, r0, #4
     15c: 1201         	asrs	r1, r0, #8
     15e: 4006         	ands	r6, r0
     160: 6e18         	ldr	r0, [r3, #96]
     162: 030e         	lsls	r6, r1, #12
     164: 3a0e         	subs	r2, #14
     166: 3b0b         	subs	r3, #11
     168: 3f05         	subs	r7, #5
     16a: 0019         	movs	r1, r3
     16c: 0000         	movs	r0, r0

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0: 0047         	lsls	r7, r0, #1
       2: 0000         	movs	r0, r0
       4: 0004         	movs	r4, r0
       6: 0000         	movs	r0, r0
       8: 0000         	movs	r0, r0
       a: 0104         	lsls	r4, r0, #4
       c: 109d         	asrs	r5, r3, #2
       e: 0000         	movs	r0, r0
      10: 001c         	movs	r4, r3
      12: 1129         	asrs	r1, r5, #4
      14: 0000         	movs	r0, r0
      16: 0000         	movs	r0, r0
      18: 0000         	movs	r0, r0
      1a: 0523         	lsls	r3, r4, #20
      1c: 0000         	movs	r0, r0
      1e: 0086         	lsls	r6, r0, #2
      20: 0800         	lsrs	r0, r0, #32
      22: 0004         	movs	r4, r0
      24: 0000         	movs	r0, r0
      26: b602         	<unknown>
      28: 000b         	movs	r3, r1
      2a: 0200         	lsls	r0, r0, #8
      2c: 139b         	asrs	r3, r3, #14
      2e: 0000         	movs	r0, r0
      30: fd02 000a    	stc2	p0, c0, [r2, #-40]
      34: 0300         	lsls	r0, r0, #12
      36: 0086         	lsls	r6, r0, #2
      38: 0800         	lsrs	r0, r0, #32
      3a: 0004         	movs	r4, r0
      3c: 0000         	movs	r0, r0
      3e: 5701         	ldrsb	r1, [r0, r4]
      40: 0afd         	lsrs	r5, r7, #11
      42: 0000         	movs	r0, r0
      44: a301         	adr	r3, #4 <.debug_info+0x49>
      46: 0001         	movs	r1, r0
      48: 0000         	movs	r0, r0
      4a: 7000         	strb	r0, [r0]
      4c: 0001         	movs	r1, r0
      4e: 0400         	lsls	r0, r0, #16
      50: 3100         	adds	r1, #0
      52: 0000         	movs	r0, r0
      54: 0400         	lsls	r0, r0, #16
      56: 9d01         	ldr	r5, [sp, #4]
      58: 0010         	movs	r0, r2
      5a: 1c00         	adds	r0, r0, #0
      5c: 2000         	movs	r0, #0
      5e: 0019         	movs	r1, r3
      60: 4300         	orrs	r0, r0
      62: 0000         	movs	r0, r0
      64: 2300         	movs	r3, #0
      66: 0005         	movs	r5, r0
      68: 0000         	movs	r0, r0
      6a: 0000         	movs	r0, r0
      6c: 4800         	ldr	r0, [pc, #0]            @ 0x70 <.debug_info+0x70>
      6e: 0000         	movs	r0, r0
      70: 0200         	lsls	r0, r0, #8
      72: 0bb6         	lsrs	r6, r6, #14
      74: 0000         	movs	r0, r0
      76: 9b02         	ldr	r3, [sp, #8]
      78: 0013         	movs	r3, r2
      7a: 0300         	lsls	r0, r0, #12
      7c: 008a         	lsls	r2, r1, #2
      7e: 0800         	lsrs	r0, r0, #32
      80: 0004         	movs	r4, r0
      82: 0000         	movs	r0, r0
      84: 5701         	ldrsb	r1, [r0, r4]
      86: 1852         	adds	r2, r2, r1
      88: 0000         	movs	r0, r0
      8a: 074e         	lsls	r6, r1, #29
      8c: 0000         	movs	r0, r0
      8e: 9c01         	ldr	r4, [sp, #4]
      90: 0401         	lsls	r1, r0, #16
      92: 008e         	lsls	r6, r1, #2
      94: 0800         	lsrs	r0, r0, #32
      96: 009a         	lsls	r2, r3, #2
      98: 0000         	movs	r0, r0
      9a: 5701         	ldrsb	r1, [r0, r4]
      9c: 008f         	lsls	r7, r1, #2
      9e: 0000         	movs	r0, r0
      a0: 0afd         	lsrs	r5, r7, #11
      a2: 0000         	movs	r0, r0
      a4: 9c01         	ldr	r4, [sp, #4]
      a6: 0501         	lsls	r1, r0, #20
      a8: 0148         	lsls	r0, r1, #5
      aa: 0000         	movs	r0, r0
      ac: 0000         	movs	r0, r0
      ae: 0000         	movs	r0, r0
      b0: 6c02         	ldr	r2, [r0, #64]
      b2: 0513         	lsls	r3, r2, #20
      b4: 0155         	lsls	r5, r2, #5
      b6: 0000         	movs	r0, r0
      b8: 0018         	movs	r0, r3
      ba: 0000         	movs	r0, r0
      bc: 6b02         	ldr	r2, [r0, #48]
      be: 0014         	movs	r4, r2
      c0: 0003         	movs	r3, r0
      c2: 0000         	movs	r0, r0
      c4: 0400         	lsls	r0, r0, #16
      c6: 0000         	movs	r0, r0
      c8: 0100         	lsls	r0, r0, #4
      ca: f957 0014    	<unknown>
      ce: c800         	<unknown>
      d0: 000b         	movs	r3, r1
      d2: 0100         	lsls	r0, r0, #4
      d4: 019c         	lsls	r4, r3, #6
      d6: 0003         	movs	r3, r0
      d8: 0000         	movs	r0, r0
      da: 0400         	lsls	r0, r0, #16
      dc: 0000         	movs	r0, r0
      de: 0100         	lsls	r0, r0, #4
      e0: 5257         	strh	r7, [r2, r1]
      e2: 000f         	movs	r7, r1
      e4: 0000         	movs	r0, r0
      e6: 0000         	movs	r0, r0
      e8: 0100         	lsls	r0, r0, #4
      ea: 019c         	lsls	r4, r3, #6
      ec: 0003         	movs	r3, r0
      ee: 0000         	movs	r0, r0
      f0: 0400         	lsls	r0, r0, #16
      f2: 0000         	movs	r0, r0
      f4: 0100         	lsls	r0, r0, #4
      f6: 9f57         	ldr	r7, [sp, #348]
      f8: 0013         	movs	r3, r2
      fa: 2700         	movs	r7, #0
      fc: 0013         	movs	r3, r2
      fe: 0100         	lsls	r0, r0, #4
     100: 019c         	lsls	r4, r3, #6
     102: 0003         	movs	r3, r0
     104: 0000         	movs	r0, r0
     106: 0a00         	lsrs	r0, r0, #8
     108: 0000         	movs	r0, r0
     10a: 0100         	lsls	r0, r0, #4
     10c: 0b57         	lsrs	r7, r2, #13
     10e: 0002         	movs	r2, r0
     110: 5d00         	ldrb	r0, [r0, r4]
     112: 0007         	movs	r7, r0
     114: 0100         	lsls	r0, r0, #4
     116: 019c         	lsls	r4, r3, #6
     118: 0004         	movs	r4, r0
     11a: 0000         	movs	r0, r0
     11c: 8c00         	ldrh	r0, [r0, #32]
     11e: 0000         	movs	r0, r0
     120: 0100         	lsls	r0, r0, #4
     122: de57         	udf	#87
     124: 0010         	movs	r0, r2
     126: d800         	bhi	0x12a <.debug_info+0x12a> @ imm = #0
     128: 000b         	movs	r3, r1
     12a: 0100         	lsls	r0, r0, #4
     12c: 019c         	lsls	r4, r3, #6
     12e: 6205         	str	r5, [r0, #32]
     130: 0001         	movs	r1, r0
     132: 3000         	adds	r0, #0
     134: 0000         	movs	r0, r0
     136: 0200         	lsls	r0, r0, #8
     138: 149d         	asrs	r5, r3, #18
     13a: 0300         	lsls	r0, r0, #12
     13c: 0000         	movs	r0, r0
     13e: 0000         	movs	r0, r0
     140: 0004         	movs	r4, r0
     142: 0000         	movs	r0, r0
     144: 5701         	ldrsb	r1, [r0, r4]
     146: 076c         	lsls	r4, r5, #29
     148: 0000         	movs	r0, r0
     14a: 0a07         	lsrs	r7, r0, #8
     14c: 0000         	movs	r0, r0
     14e: 9c01         	ldr	r4, [sp, #4]
     150: 0301         	lsls	r1, r0, #12
     152: 0000         	movs	r0, r0
     154: 0000         	movs	r0, r0
     156: 0006         	movs	r6, r0
     158: 0000         	movs	r0, r0
     15a: 5701         	ldrsb	r1, [r0, r4]
     15c: 13e0         	asrs	r0, r4, #15
     15e: 0000         	movs	r0, r0
     160: 15f8         	asrs	r0, r7, #23
     162: 0000         	movs	r0, r0
     164: 9c01         	ldr	r4, [sp, #4]
     166: 0301         	lsls	r1, r0, #12
     168: 0000         	movs	r0, r0
     16a: 0000         	movs	r0, r0
     16c: 0006         	movs	r6, r0
     16e: 0000         	movs	r0, r0
     170: 5701         	ldrsb	r1, [r0, r4]
     172: 0ff0         	lsrs	r0, r6, #31
     174: 0000         	movs	r0, r0
     176: 03e3         	lsls	r3, r4, #15
     178: 0000         	movs	r0, r0
     17a: 9c01         	ldr	r4, [sp, #4]
     17c: 0001         	movs	r1, r0
     17e: 0200         	lsls	r0, r0, #8
     180: 09e8         	lsrs	r0, r5, #7
     182: 0000         	movs	r0, r0
     184: 0702         	lsls	r2, r0, #28
     186: 0002         	movs	r2, r0
     188: 0200         	lsls	r0, r0, #8
     18a: 056c         	lsls	r4, r5, #21
     18c: 0000         	movs	r0, r0
     18e: e702         	b	0xffffff96 <_sbss+0xffffffffdfffff96> @ imm = #-508
     190: 000f         	movs	r7, r1
     192: 0600         	lsls	r0, r0, #24
     194: 0910         	lsrs	r0, r2, #4
     196: 0000         	movs	r0, r0
     198: 09ed         	lsrs	r5, r5, #7
     19a: 0000         	movs	r0, r0
     19c: e103         	b	0x3a6 <.debug_info+0x3a6> @ imm = #518
     19e: 0101         	lsls	r1, r0, #4
     1a0: 1006         	asrs	r6, r0, #32
     1a2: 0009         	movs	r1, r1
     1a4: ed00 0009    	stc	p0, c0, [r0, #-36]
     1a8: 0300         	lsls	r0, r0, #12
     1aa: 01e1         	lsls	r1, r4, #7
     1ac: 0601         	lsls	r1, r0, #24
     1ae: 0910         	lsrs	r0, r2, #4
     1b0: 0000         	movs	r0, r0
     1b2: 09ed         	lsrs	r5, r5, #7
     1b4: 0000         	movs	r0, r0
     1b6: e103         	b	0x3c0 <.debug_info+0x3c0> @ imm = #518
     1b8: 0101         	lsls	r1, r0, #4
     1ba: 0000         	movs	r0, r0
     1bc: 0000         	movs	r0, r0
     1be: e700         	b	0xffffffc2 <_sbss+0xffffffffdfffffc2> @ imm = #-512
     1c0: 000c         	movs	r4, r1
     1c2: 0400         	lsls	r0, r0, #16
     1c4: 9700         	str	r7, [sp]
     1c6: 0000         	movs	r0, r0
     1c8: 0400         	lsls	r0, r0, #16
     1ca: 9d01         	ldr	r5, [sp, #4]
     1cc: 0010         	movs	r0, r2
     1ce: 1c00         	adds	r0, r0, #0
     1d0: c400         	<unknown>
     1d2: 000c         	movs	r4, r1
     1d4: fe00 0002    	cdp2	p0, #0, c0, c0, c2, #0
     1d8: 2300         	movs	r3, #0
     1da: 0005         	movs	r5, r0
     1dc: 0000         	movs	r0, r0
     1de: 0000         	movs	r0, r0
     1e0: 0000         	movs	r0, r0
     1e2: 0004         	movs	r4, r0
     1e4: 0200         	lsls	r0, r0, #8
     1e6: 0bb6         	lsrs	r6, r6, #14
     1e8: 0000         	movs	r0, r0
     1ea: 6402         	str	r2, [r0, #64]
     1ec: 0016         	movs	r6, r2
     1ee: 0200         	lsls	r0, r0, #8
     1f0: 0574         	lsls	r4, r6, #21
     1f2: 0000         	movs	r0, r0
     1f4: 1703         	asrs	r3, r0, #28
     1f6: 000a         	movs	r2, r1
     1f8: 7a00         	ldrb	r0, [r0, #8]
     1fa: 0005         	movs	r5, r0
     1fc: 0200         	lsls	r0, r0, #8
     1fe: 011c         	lsls	r4, r3, #4
     200: 7a02         	ldrb	r2, [r0, #8]
     202: 0005         	movs	r5, r0
     204: 0300         	lsls	r0, r0, #12
     206: 064c         	lsls	r4, r1, #25
     208: 0000         	movs	r0, r0
     20a: 1338         	asrs	r0, r7, #12
     20c: 0000         	movs	r0, r0
     20e: 1e02         	subs	r2, r0, #0
     210: 0301         	lsls	r1, r0, #12
     212: 03f3         	lsls	r3, r6, #15
     214: 0000         	movs	r0, r0
     216: 0a5a         	lsrs	r2, r3, #9
     218: 0000         	movs	r0, r0
     21a: 3602         	adds	r6, #2
     21c: 0301         	lsls	r1, r0, #12
     21e: 064c         	lsls	r4, r1, #25
     220: 0000         	movs	r0, r0
     222: 1338         	asrs	r0, r7, #12
     224: 0000         	movs	r0, r0
     226: 1e02         	subs	r2, r0, #0
     228: 0301         	lsls	r1, r0, #12
     22a: 07b6         	lsls	r6, r6, #30
     22c: 0000         	movs	r0, r0
     22e: 0bf0         	lsrs	r0, r6, #15
     230: 0000         	movs	r0, r0
     232: 2802         	cmp	r0, #2
     234: 0301         	lsls	r1, r0, #12
     236: 064c         	lsls	r4, r1, #25
     238: 0000         	movs	r0, r0
     23a: 1338         	asrs	r0, r7, #12
     23c: 0000         	movs	r0, r0
     23e: 1e02         	subs	r2, r0, #0
     240: 0301         	lsls	r1, r0, #12
     242: 03f3         	lsls	r3, r6, #15
     244: 0000         	movs	r0, r0
     246: 0a5a         	lsrs	r2, r3, #9
     248: 0000         	movs	r0, r0
     24a: 3602         	adds	r6, #2
     24c: 0301         	lsls	r1, r0, #12
     24e: 064c         	lsls	r4, r1, #25
     250: 0000         	movs	r0, r0
     252: 1338         	asrs	r0, r7, #12
     254: 0000         	movs	r0, r0
     256: 1e02         	subs	r2, r0, #0
     258: 0301         	lsls	r1, r0, #12
     25a: 07b6         	lsls	r6, r6, #30
     25c: 0000         	movs	r0, r0
     25e: 0bf0         	lsrs	r0, r6, #15
     260: 0000         	movs	r0, r0
     262: 2802         	cmp	r0, #2
     264: 0001         	movs	r1, r0
     266: 7803         	ldrb	r3, [r0]
     268: 000a         	movs	r2, r1
     26a: 3900         	subs	r1, #0
     26c: 0015         	movs	r5, r2
     26e: 0200         	lsls	r0, r0, #8
     270: 017c         	lsls	r4, r7, #5
     272: 3902         	subs	r1, #2
     274: 0015         	movs	r5, r2
     276: 0300         	lsls	r0, r0, #12
     278: 0815         	lsrs	r5, r2, #32
     27a: 0000         	movs	r0, r0
     27c: 09af         	lsrs	r7, r5, #6
     27e: 0000         	movs	r0, r0
     280: 8002         	strh	r2, [r0]
     282: 0301         	lsls	r1, r0, #12
     284: 16bd         	asrs	r5, r7, #26
     286: 0000         	movs	r0, r0
     288: 1030         	asrs	r0, r6, #32
     28a: 0000         	movs	r0, r0
     28c: 9802         	ldr	r0, [sp, #8]
     28e: 0301         	lsls	r1, r0, #12
     290: 1547         	asrs	r7, r0, #21
     292: 0000         	movs	r0, r0
     294: 09c3         	lsrs	r3, r0, #7
     296: 0000         	movs	r0, r0
     298: 8a02         	ldrh	r2, [r0, #16]
     29a: 0301         	lsls	r1, r0, #12
     29c: 0815         	lsrs	r5, r2, #32
     29e: 0000         	movs	r0, r0
     2a0: 09af         	lsrs	r7, r5, #6
     2a2: 0000         	movs	r0, r0
     2a4: 8002         	strh	r2, [r0]
     2a6: 0001         	movs	r1, r0
     2a8: 1703         	asrs	r3, r0, #28
     2aa: 000a         	movs	r2, r1
     2ac: 7a00         	ldrb	r0, [r0, #8]
     2ae: 0005         	movs	r5, r0
     2b0: 0200         	lsls	r0, r0, #8
     2b2: 011c         	lsls	r4, r3, #4
     2b4: d003         	beq	0x2be <.debug_info+0x2be> @ imm = #6
     2b6: 0011         	movs	r1, r2
     2b8: 8000         	strh	r0, [r0]
     2ba: 000e         	movs	r6, r1
     2bc: 0200         	lsls	r0, r0, #8
     2be: 01e1         	lsls	r1, r4, #7
     2c0: 8002         	strh	r2, [r0]
     2c2: 000e         	movs	r6, r1
     2c4: 0300         	lsls	r0, r0, #12
     2c6: 125f         	asrs	r7, r3, #9
     2c8: 0000         	movs	r0, r0
     2ca: 0abc         	lsrs	r4, r7, #10
     2cc: 0000         	movs	r0, r0
     2ce: e302         	b	0x8d6 <.debug_info+0x8d6> @ imm = #1540
     2d0: 0301         	lsls	r1, r0, #12
     2d2: 1471         	asrs	r1, r6, #17
     2d4: 0000         	movs	r0, r0
     2d6: 029f         	lsls	r7, r3, #10
     2d8: 0000         	movs	r0, r0
     2da: ec02 0301    	<unknown>
     2de: 125f         	asrs	r7, r3, #9
     2e0: 0000         	movs	r0, r0
     2e2: 0abc         	lsrs	r4, r7, #10
     2e4: 0000         	movs	r0, r0
     2e6: e302         	b	0x8ee <.debug_info+0x8ee> @ imm = #1540
     2e8: 0001         	movs	r1, r0
     2ea: af04         	add	r7, sp, #16
     2ec: 0002         	movs	r2, r0
     2ee: c100         	<unknown>
     2f0: 0014         	movs	r4, r2
     2f2: 0200         	lsls	r0, r0, #8
     2f4: 010e         	lsls	r6, r1, #4
     2f6: 0001         	movs	r1, r0
     2f8: 2805         	cmp	r0, #5
     2fa: 0001         	movs	r1, r0
     2fc: 4408         	add	r0, r1
     2fe: 0001         	movs	r1, r0
     300: 0100         	lsls	r0, r0, #4
     302: 4057         	eors	r7, r2
     304: 001a         	movs	r2, r3
     306: 5d00         	ldrb	r0, [r0, r4]
     308: 0016         	movs	r6, r2
     30a: 0100         	lsls	r0, r0, #4
     30c: 0129         	lsls	r1, r5, #4
     30e: 3506         	adds	r5, #6
     310: 0000         	movs	r0, r0
     312: 3000         	adds	r0, #0
     314: 0001         	movs	r1, r0
     316: 3608         	adds	r6, #8
     318: 0001         	movs	r1, r0
     31a: 0600         	lsls	r0, r0, #24
     31c: 091a         	lsrs	r2, r3, #4
     31e: 3506         	adds	r5, #6
     320: 0009         	movs	r1, r1
     322: 3400         	adds	r4, #0
     324: 0001         	movs	r1, r0
     326: 0208         	lsls	r0, r1, #8
     328: 0000         	movs	r0, r0
     32a: 0200         	lsls	r0, r0, #8
     32c: 2167         	movs	r1, #103
     32e: 2807         	cmp	r0, #7
     330: 0009         	movs	r1, r1
     332: 3400         	adds	r4, #0
     334: 0001         	movs	r1, r0
     336: 0208         	lsls	r0, r1, #8
     338: 0000         	movs	r0, r0
     33a: 0300         	lsls	r0, r0, #12
     33c: 0548         	lsls	r0, r1, #21
     33e: 000d         	movs	r5, r1
     340: 4606         	mov	r6, r0
     342: 0000         	movs	r0, r0
     344: 3a00         	subs	r2, #0
     346: 0001         	movs	r1, r0
     348: 3408         	adds	r4, #8
     34a: 0000         	movs	r0, r0
     34c: 0200         	lsls	r0, r0, #8
     34e: 0968         	lsrs	r0, r5, #5
     350: c106         	stm	r1!, {r1, r2}
     352: 0009         	movs	r1, r1
     354: 3a00         	subs	r2, #0
     356: 0001         	movs	r1, r0
     358: 0408         	lsls	r0, r1, #16
     35a: 0000         	movs	r0, r0
     35c: 0200         	lsls	r0, r0, #8
     35e: 181f         	adds	r7, r3, r0
     360: b407         	push	{r0, r1, r2}
     362: 0009         	movs	r1, r1
     364: 3a00         	subs	r2, #0
     366: 0001         	movs	r1, r0
     368: 0408         	lsls	r0, r1, #16
     36a: 0000         	movs	r0, r0
     36c: 0400         	lsls	r0, r0, #16
     36e: 040b         	lsls	r3, r1, #16
     370: 0012         	movs	r2, r2
     372: 1f06         	subs	r6, r0, #4
     374: 000b         	movs	r3, r1
     376: 6400         	str	r0, [r0, #64]
     378: 0001         	movs	r1, r0
     37a: 0208         	lsls	r0, r1, #8
     37c: 0000         	movs	r0, r0
     37e: 0200         	lsls	r0, r0, #8
     380: 1323         	asrs	r3, r4, #12
     382: 1207         	asrs	r7, r0, #8
     384: 000b         	movs	r3, r1
     386: 6400         	str	r0, [r0, #64]
     388: 0001         	movs	r1, r0
     38a: 0208         	lsls	r0, r1, #8
     38c: 0000         	movs	r0, r0
     38e: 0500         	lsls	r0, r0, #20
     390: 03a5         	lsls	r5, r4, #14
     392: 0012         	movs	r2, r2
     394: 0600         	lsls	r0, r0, #24
     396: 0b39         	lsrs	r1, r7, #12
     398: 0000         	movs	r0, r0
     39a: 0172         	lsls	r2, r6, #5
     39c: 0800         	lsrs	r0, r0, #32
     39e: 0004         	movs	r4, r0
     3a0: 0000         	movs	r0, r0
     3a2: 6a02         	ldr	r2, [r0, #32]
     3a4: 070f         	lsls	r7, r1, #28
     3a6: 0b2c         	lsrs	r4, r5, #12
     3a8: 0000         	movs	r0, r0
     3aa: 0172         	lsls	r2, r6, #5
     3ac: 0800         	lsrs	r0, r0, #32
     3ae: 0004         	movs	r4, r0
     3b0: 0000         	movs	r0, r0
     3b2: a505         	adr	r5, #20 <.debug_info+0x3bb>
     3b4: 1203         	asrs	r3, r0, #8
     3b6: 0800         	lsrs	r0, r0, #32
     3b8: 0052         	lsls	r2, r2, #1
     3ba: 0000         	movs	r0, r0
     3bc: 0184         	lsls	r4, r0, #6
     3be: 0800         	lsrs	r0, r0, #32
     3c0: 0074         	lsls	r4, r6, #1
     3c2: 0000         	movs	r0, r0
     3c4: 7202         	strb	r2, [r0, #8]
     3c6: 080d         	lsrs	r5, r1, #32
     3c8: 006a         	lsls	r2, r5, #1
     3ca: 0000         	movs	r0, r0
     3cc: 01fe         	lsls	r6, r7, #7
     3ce: 0800         	lsrs	r0, r0, #32
     3d0: 0032         	movs	r2, r6
     3d2: 0000         	movs	r0, r0
     3d4: 7002         	strb	r2, [r0]
     3d6: 060d         	lsls	r5, r1, #24
     3d8: 0b53         	lsrs	r3, r2, #13
     3da: 0000         	movs	r0, r0
     3dc: 0230         	lsls	r0, r6, #8
     3de: 0800         	lsrs	r0, r0, #32
     3e0: 0004         	movs	r4, r0
     3e2: 0000         	movs	r0, r0
     3e4: 7502         	strb	r2, [r0, #20]
     3e6: 070f         	lsls	r7, r1, #28
     3e8: 0b46         	lsrs	r6, r0, #13
     3ea: 0000         	movs	r0, r0
     3ec: 0230         	lsls	r0, r6, #8
     3ee: 0800         	lsrs	r0, r0, #32
     3f0: 0004         	movs	r4, r0
     3f2: 0000         	movs	r0, r0
     3f4: a505         	adr	r5, #20 <.debug_info+0x3fd>
     3f6: 1203         	asrs	r3, r0, #8
     3f8: 0900         	lsrs	r0, r0, #4
     3fa: 005e         	lsls	r6, r3, #1
     3fc: 0000         	movs	r0, r0
     3fe: 00a0         	lsls	r0, r4, #2
     400: 0000         	movs	r0, r0
     402: 7802         	ldrb	r2, [r0]
     404: 0605         	lsls	r5, r0, #24
     406: 0b6d         	lsrs	r5, r5, #13
     408: 0000         	movs	r0, r0
     40a: 025c         	lsls	r4, r3, #9
     40c: 0800         	lsrs	r0, r0, #32
     40e: 0002         	movs	r2, r0
     410: 0000         	movs	r0, r0
     412: 2302         	movs	r3, #2
     414: 0713         	lsls	r3, r2, #28
     416: 0b60         	lsrs	r0, r4, #13
     418: 0000         	movs	r0, r0
     41a: 025c         	lsls	r4, r3, #9
     41c: 0800         	lsrs	r0, r0, #32
     41e: 0002         	movs	r2, r0
     420: 0000         	movs	r0, r0
     422: a505         	adr	r5, #20 <.debug_info+0x42b>
     424: 1203         	asrs	r3, r0, #8
     426: 0000         	movs	r0, r0
     428: 0000         	movs	r0, r0
     42a: 0005         	movs	r5, r0
     42c: 0000         	movs	r0, r0
     42e: 3800         	subs	r0, #0
     430: 0003         	movs	r3, r0
     432: 0100         	lsls	r0, r0, #4
     434: c357         	stm	r3!, {r0, r1, r2, r4, r6}
     436: 0017         	movs	r7, r2
     438: cc00         	<unknown>
     43a: 000a         	movs	r2, r1
     43c: 0100         	lsls	r0, r0, #4
     43e: 0129         	lsls	r1, r5, #4
     440: 4208         	tst	r0, r1
     442: 0009         	movs	r1, r1
     444: 0000         	movs	r0, r0
     446: 0000         	movs	r0, r0
     448: 0200         	lsls	r0, r0, #8
     44a: 0000         	movs	r0, r0
     44c: 0600         	lsls	r0, r0, #24
     44e: 1521         	asrs	r1, r4, #20
     450: a709         	adr	r7, #36 <.debug_info+0x45d>
     452: 0000         	movs	r0, r0
     454: b800         	<unknown>
     456: 0000         	movs	r0, r0
     458: 0600         	lsls	r0, r0, #24
     45a: 0d27         	lsrs	r7, r4, #20
     45c: 8706         	strh	r6, [r0, #56]
     45e: 000b         	movs	r3, r1
     460: 0000         	movs	r0, r0
     462: 0000         	movs	r0, r0
     464: 0200         	lsls	r0, r0, #8
     466: 0000         	movs	r0, r0
     468: 0200         	lsls	r0, r0, #8
     46a: 13c7         	asrs	r7, r0, #15
     46c: 7a07         	ldrb	r7, [r0, #8]
     46e: 000b         	movs	r3, r1
     470: 0000         	movs	r0, r0
     472: 0000         	movs	r0, r0
     474: 0200         	lsls	r0, r0, #8
     476: 0000         	movs	r0, r0
     478: 0500         	lsls	r0, r0, #20
     47a: 03a5         	lsls	r5, r4, #14
     47c: 0012         	movs	r2, r2
     47e: b806         	<unknown>
     480: 0000         	movs	r0, r0
     482: 0000         	movs	r0, r0
     484: 0000         	movs	r0, r0
     486: 5a00         	ldrh	r0, [r0, r0]
     488: 0000         	movs	r0, r0
     48a: 0200         	lsls	r0, r0, #8
     48c: 09cd         	lsrs	r5, r1, #7
     48e: f506 0009    	add.w	r0, r6, #8978432
     492: 0000         	movs	r0, r0
     494: 0000         	movs	r0, r0
     496: 0a00         	lsrs	r0, r0, #8
     498: 0000         	movs	r0, r0
     49a: 0200         	lsls	r0, r0, #8
     49c: 1a81         	subs	r1, r0, r2
     49e: e807 0009    	<unknown>
     4a2: 0000         	movs	r0, r0
     4a4: 0000         	movs	r0, r0
     4a6: 0400         	lsls	r0, r0, #16
     4a8: 0000         	movs	r0, r0
     4aa: 0400         	lsls	r0, r0, #16
     4ac: 0460         	lsls	r0, r4, #17
     4ae: 0a12         	lsrs	r2, r2, #8
     4b0: 0996         	lsrs	r6, r2, #6
     4b2: 0000         	movs	r0, r0
     4b4: 0000         	movs	r0, r0
     4b6: 0000         	movs	r0, r0
     4b8: 0006         	movs	r6, r0
     4ba: 0000         	movs	r0, r0
     4bc: 6004         	str	r4, [r0]
     4be: 1e04         	subs	r4, r0, #0
     4c0: 8907         	ldrh	r7, [r0, #8]
     4c2: 0009         	movs	r1, r1
     4c4: 0000         	movs	r0, r0
     4c6: 0000         	movs	r0, r0
     4c8: 0600         	lsls	r0, r0, #24
     4ca: 0000         	movs	r0, r0
     4cc: 0700         	lsls	r0, r0, #28
     4ce: 053b         	lsls	r3, r7, #20
     4d0: 000d         	movs	r5, r1
     4d2: 0900         	lsrs	r0, r0, #4
     4d4: 0ba1         	lsrs	r1, r4, #14
     4d6: 0000         	movs	r0, r0
     4d8: 00d8         	lsls	r0, r3, #3
     4da: 0000         	movs	r0, r0
     4dc: 8402         	strh	r2, [r0, #32]
     4de: 0b13         	lsrs	r3, r2, #12
     4e0: 0b94         	lsrs	r4, r2, #14
     4e2: 0000         	movs	r0, r0
     4e4: 00f8         	lsls	r0, r7, #3
     4e6: 0000         	movs	r0, r0
     4e8: fa05 1203    	<unknown>
     4ec: 0000         	movs	r0, r0
     4ee: bb06         	cbnz	r6, 0x532 <.debug_info+0x532> @ imm = #64
     4f0: 000b         	movs	r3, r1
     4f2: 0000         	movs	r0, r0
     4f4: 0000         	movs	r0, r0
     4f6: 0400         	lsls	r0, r0, #16
     4f8: 0000         	movs	r0, r0
     4fa: 0200         	lsls	r0, r0, #8
     4fc: 0fcf         	lsrs	r7, r1, #31
     4fe: ae07         	add	r6, sp, #28
     500: 000b         	movs	r3, r1
     502: 0000         	movs	r0, r0
     504: 0000         	movs	r0, r0
     506: 0400         	lsls	r0, r0, #16
     508: 0000         	movs	r0, r0
     50a: 0500         	lsls	r0, r0, #20
     50c: 03fa         	lsls	r2, r7, #15
     50e: 0012         	movs	r2, r2
     510: c408         	stm	r4!, {r3}
     512: 0000         	movs	r0, r0
     514: 0000         	movs	r0, r0
     516: 0000         	movs	r0, r0
     518: ac00         	add	r4, sp, #0
     51a: 0000         	movs	r0, r0
     51c: 0200         	lsls	r0, r0, #8
     51e: 0dd7         	lsrs	r7, r2, #23
     520: d009         	beq	0x536 <.debug_info+0x536> @ imm = #18
     522: 0000         	movs	r0, r0
     524: 1800         	adds	r0, r0, r0
     526: 0001         	movs	r1, r0
     528: 0200         	lsls	r0, r0, #8
     52a: 0dd5         	lsrs	r5, r2, #23
     52c: 2909         	cmp	r1, #9
     52e: 000a         	movs	r2, r1
     530: 3000         	adds	r0, #0
     532: 0001         	movs	r1, r0
     534: 0200         	lsls	r0, r0, #8
     536: 1991         	adds	r1, r2, r6
     538: 1c0b         	adds	r3, r1, #0
     53a: 000a         	movs	r2, r1
     53c: 5000         	str	r0, [r0, r0]
     53e: 0001         	movs	r1, r0
     540: 0400         	lsls	r0, r0, #16
     542: 0460         	lsls	r0, r4, #17
     544: 0012         	movs	r2, r2
     546: 0800         	lsrs	r0, r0, #32
     548: 00dc         	lsls	r4, r3, #3
     54a: 0000         	movs	r0, r0
     54c: 0000         	movs	r0, r0
     54e: 0000         	movs	r0, r0
     550: 0044         	lsls	r4, r0, #1
     552: 0000         	movs	r0, r0
     554: dd02         	ble	0x55c <.debug_info+0x55c> @ imm = #4
     556: 0605         	lsls	r5, r0, #24
     558: 09db         	lsrs	r3, r3, #7
     55a: 0000         	movs	r0, r0
     55c: 0000         	movs	r0, r0
     55e: 0000         	movs	r0, r0
     560: 0004         	movs	r4, r0
     562: 0000         	movs	r0, r0
     564: c602         	stm	r6!, {r1}
     566: 0714         	lsls	r4, r2, #28
     568: 09ce         	lsrs	r6, r1, #7
     56a: 0000         	movs	r0, r0
     56c: 0000         	movs	r0, r0
     56e: 0000         	movs	r0, r0
     570: 0004         	movs	r4, r0
     572: 0000         	movs	r0, r0
     574: 0b04         	lsrs	r4, r0, #12
     576: 1204         	asrs	r4, r0, #8
     578: 0000         	movs	r0, r0
     57a: e909 0000    	<unknown>
     57e: 7000         	strb	r0, [r0]
     580: 0001         	movs	r1, r0
     582: 0600         	lsls	r0, r0, #24
     584: 0d25         	lsrs	r5, r4, #20
     586: 5c06         	ldrb	r6, [r0, r0]
     588: 0009         	movs	r1, r1
     58a: 0000         	movs	r0, r0
     58c: 0000         	movs	r0, r0
     58e: 0200         	lsls	r0, r0, #8
     590: 0000         	movs	r0, r0
     592: 0200         	lsls	r0, r0, #8
     594: 2167         	movs	r1, #103
     596: 4f07         	ldr	r7, [pc, #28]           @ 0x5b4 <.debug_info+0x5b4>
     598: 0009         	movs	r1, r1
     59a: 0000         	movs	r0, r0
     59c: 0000         	movs	r0, r0
     59e: 0200         	lsls	r0, r0, #8
     5a0: 0000         	movs	r0, r0
     5a2: 0300         	lsls	r0, r0, #12
     5a4: 0548         	lsls	r0, r1, #21
     5a6: 000d         	movs	r5, r1
     5a8: 7606         	strb	r6, [r0, #24]
     5aa: 0000         	movs	r0, r0
     5ac: 0000         	movs	r0, r0
     5ae: 0000         	movs	r0, r0
     5b0: 3400         	adds	r4, #0
     5b2: 0000         	movs	r0, r0
     5b4: 0200         	lsls	r0, r0, #8
     5b6: 0968         	lsrs	r0, r5, #5
     5b8: 0f06         	lsrs	r6, r0, #28
     5ba: 000a         	movs	r2, r1
     5bc: 0000         	movs	r0, r0
     5be: 0000         	movs	r0, r0
     5c0: 0400         	lsls	r0, r0, #16
     5c2: 0000         	movs	r0, r0
     5c4: 0200         	lsls	r0, r0, #8
     5c6: 181f         	adds	r7, r3, r0
     5c8: 0207         	lsls	r7, r0, #8
     5ca: 000a         	movs	r2, r1
     5cc: 0000         	movs	r0, r0
     5ce: 0000         	movs	r0, r0
     5d0: 0400         	lsls	r0, r0, #16
     5d2: 0000         	movs	r0, r0
     5d4: 0400         	lsls	r0, r0, #16
     5d6: 040b         	lsls	r3, r1, #16
     5d8: 0012         	movs	r2, r2
     5da: d506         	bpl	0x5ea <.debug_info+0x5ea> @ imm = #12
     5dc: 000b         	movs	r3, r1
     5de: 0000         	movs	r0, r0
     5e0: 0000         	movs	r0, r0
     5e2: 0200         	lsls	r0, r0, #8
     5e4: 0000         	movs	r0, r0
     5e6: 0200         	lsls	r0, r0, #8
     5e8: 1323         	asrs	r3, r4, #12
     5ea: c807         	ldm	r0, {r0, r1, r2}
     5ec: 000b         	movs	r3, r1
     5ee: 0000         	movs	r0, r0
     5f0: 0000         	movs	r0, r0
     5f2: 0200         	lsls	r0, r0, #8
     5f4: 0000         	movs	r0, r0
     5f6: 0500         	lsls	r0, r0, #20
     5f8: 03a5         	lsls	r5, r4, #14
     5fa: 0012         	movs	r2, r2
     5fc: 0600         	lsls	r0, r0, #24
     5fe: 0bef         	lsrs	r7, r5, #15
     600: 0000         	movs	r0, r0
     602: 0000         	movs	r0, r0
     604: 0000         	movs	r0, r0
     606: 0004         	movs	r4, r0
     608: 0000         	movs	r0, r0
     60a: 6a02         	ldr	r2, [r0, #32]
     60c: 070f         	lsls	r7, r1, #28
     60e: 0be2         	lsrs	r2, r4, #15
     610: 0000         	movs	r0, r0
     612: 0000         	movs	r0, r0
     614: 0000         	movs	r0, r0
     616: 0004         	movs	r4, r0
     618: 0000         	movs	r0, r0
     61a: a505         	adr	r5, #20 <.debug_info+0x623>
     61c: 1203         	asrs	r3, r0, #8
     61e: 0800         	lsrs	r0, r0, #32
     620: 0082         	lsls	r2, r0, #2
     622: 0000         	movs	r0, r0
     624: 0000         	movs	r0, r0
     626: 0000         	movs	r0, r0
     628: 0076         	lsls	r6, r6, #1
     62a: 0000         	movs	r0, r0
     62c: 7202         	strb	r2, [r0, #8]
     62e: 080d         	lsrs	r5, r1, #32
     630: 009a         	lsls	r2, r3, #2
     632: 0000         	movs	r0, r0
     634: 0000         	movs	r0, r0
     636: 0000         	movs	r0, r0
     638: 0032         	movs	r2, r6
     63a: 0000         	movs	r0, r0
     63c: 7002         	strb	r2, [r0]
     63e: 060d         	lsls	r5, r1, #24
     640: 0c09         	lsrs	r1, r1, #16
     642: 0000         	movs	r0, r0
     644: 0000         	movs	r0, r0
     646: 0000         	movs	r0, r0
     648: 0004         	movs	r4, r0
     64a: 0000         	movs	r0, r0
     64c: 7502         	strb	r2, [r0, #20]
     64e: 070f         	lsls	r7, r1, #28
     650: 0bfc         	lsrs	r4, r7, #15
     652: 0000         	movs	r0, r0
     654: 0000         	movs	r0, r0
     656: 0000         	movs	r0, r0
     658: 0004         	movs	r4, r0
     65a: 0000         	movs	r0, r0
     65c: a505         	adr	r5, #20 <.debug_info+0x665>
     65e: 1203         	asrs	r3, r0, #8
     660: 0900         	lsrs	r0, r0, #4
     662: 008e         	lsls	r6, r1, #2
     664: 0000         	movs	r0, r0
     666: 0188         	lsls	r0, r1, #6
     668: 0000         	movs	r0, r0
     66a: 7802         	ldrb	r2, [r0]
     66c: 0605         	lsls	r5, r0, #24
     66e: 0c23         	lsrs	r3, r4, #16
     670: 0000         	movs	r0, r0
     672: 0000         	movs	r0, r0
     674: 0000         	movs	r0, r0
     676: 0002         	movs	r2, r0
     678: 0000         	movs	r0, r0
     67a: 2302         	movs	r3, #2
     67c: 0713         	lsls	r3, r2, #28
     67e: 0c16         	lsrs	r6, r2, #16
     680: 0000         	movs	r0, r0
     682: 0000         	movs	r0, r0
     684: 0000         	movs	r0, r0
     686: 0002         	movs	r2, r0
     688: 0000         	movs	r0, r0
     68a: a505         	adr	r5, #20 <.debug_info+0x693>
     68c: 1203         	asrs	r3, r0, #8
     68e: 0000         	movs	r0, r0
     690: 0000         	movs	r0, r0
     692: 0005         	movs	r5, r0
     694: 0000         	movs	r0, r0
     696: 9c00         	ldr	r4, [sp]
     698: 0000         	movs	r0, r0
     69a: 0100         	lsls	r0, r0, #4
     69c: f357 0002    	<unknown>
     6a0: b000         	add	sp, #0
     6a2: 000e         	movs	r6, r1
     6a4: 0100         	lsls	r0, r0, #4
     6a6: 0129         	lsls	r1, r5, #4
     6a8: f506 0000    	add.w	r0, r6, #8388608
     6ac: 0000         	movs	r0, r0
     6ae: 0000         	movs	r0, r0
     6b0: 9600         	str	r6, [sp]
     6b2: 0000         	movs	r0, r0
     6b4: 0600         	lsls	r0, r0, #24
     6b6: 092f         	lsrs	r7, r5, #4
     6b8: 760a         	strb	r2, [r1, #24]
     6ba: 0009         	movs	r1, r1
     6bc: 0000         	movs	r0, r0
     6be: 0000         	movs	r0, r0
     6c0: 0200         	lsls	r0, r0, #8
     6c2: 0000         	movs	r0, r0
     6c4: 0200         	lsls	r0, r0, #8
     6c6: 0100         	lsls	r0, r0, #4
     6c8: 071c         	lsls	r4, r3, #28
     6ca: 0969         	lsrs	r1, r5, #5
     6cc: 0000         	movs	r0, r0
     6ce: 0000         	movs	r0, r0
     6d0: 0000         	movs	r0, r0
     6d2: 0002         	movs	r2, r0
     6d4: 0000         	movs	r0, r0
     6d6: 4803         	ldr	r0, [pc, #12]           @ 0x6e4 <.debug_info+0x6e4>
     6d8: 0d05         	lsrs	r5, r0, #20
     6da: 0a00         	lsrs	r0, r0, #8
     6dc: 0106         	lsls	r6, r0, #4
     6de: 0000         	movs	r0, r0
     6e0: 0000         	movs	r0, r0
     6e2: 0000         	movs	r0, r0
     6e4: 0026         	movs	r6, r4
     6e6: 0000         	movs	r0, r0
     6e8: 0102         	lsls	r2, r0, #4
     6ea: 0901         	lsrs	r1, r0, #4
     6ec: 4306         	orrs	r6, r0
     6ee: 000a         	movs	r2, r1
     6f0: 0000         	movs	r0, r0
     6f2: 0000         	movs	r0, r0
     6f4: 0400         	lsls	r0, r0, #16
     6f6: 0000         	movs	r0, r0
     6f8: 0200         	lsls	r0, r0, #8
     6fa: 13e4         	asrs	r4, r4, #15
     6fc: 3607         	adds	r6, #7
     6fe: 000a         	movs	r2, r1
     700: 0000         	movs	r0, r0
     702: 0000         	movs	r0, r0
     704: 0400         	lsls	r0, r0, #16
     706: 0000         	movs	r0, r0
     708: 0400         	lsls	r0, r0, #16
     70a: 040b         	lsls	r3, r1, #16
     70c: 0012         	movs	r2, r2
     70e: 0a00         	lsrs	r0, r0, #8
     710: 0112         	lsls	r2, r2, #4
     712: 0000         	movs	r0, r0
     714: 0000         	movs	r0, r0
     716: 0000         	movs	r0, r0
     718: 0030         	movs	r0, r6
     71a: 0000         	movs	r0, r0
     71c: 0602         	lsls	r2, r0, #24
     71e: 0901         	lsrs	r1, r0, #4
     720: 5d06         	ldrb	r6, [r0, r4]
     722: 000a         	movs	r2, r1
     724: 0000         	movs	r0, r0
     726: 0000         	movs	r0, r0
     728: 0400         	lsls	r0, r0, #16
     72a: 0000         	movs	r0, r0
     72c: 0200         	lsls	r0, r0, #8
     72e: 13f5         	asrs	r5, r6, #15
     730: 5007         	str	r7, [r0, r0]
     732: 000a         	movs	r2, r1
     734: 0000         	movs	r0, r0
     736: 0000         	movs	r0, r0
     738: 0400         	lsls	r0, r0, #16
     73a: 0000         	movs	r0, r0
     73c: 0400         	lsls	r0, r0, #16
     73e: 040b         	lsls	r3, r1, #16
     740: 0012         	movs	r2, r2
     742: 0700         	lsls	r0, r0, #28
     744: 011e         	lsls	r6, r3, #4
     746: 0000         	movs	r0, r0
     748: 0000         	movs	r0, r0
     74a: 0000         	movs	r0, r0
     74c: 002a         	movs	r2, r5
     74e: 0000         	movs	r0, r0
     750: 0a02         	lsrs	r2, r0, #8
     752: 0501         	lsls	r1, r0, #20
     754: 0000         	movs	r0, r0
     756: 0005         	movs	r5, r0
     758: 0000         	movs	r0, r0
     75a: 6e00         	ldr	r0, [r0, #96]
     75c: 0000         	movs	r0, r0
     75e: 0100         	lsls	r0, r0, #4
     760: 1c57         	adds	r7, r2, #1
     762: 000f         	movs	r7, r1
     764: 2900         	cmp	r1, #0
     766: 0003         	movs	r3, r0
     768: 0100         	lsls	r0, r0, #4
     76a: 0129         	lsls	r1, r5, #4
     76c: 2b0c         	cmp	r3, #12
     76e: 0001         	movs	r1, r0
     770: a000         	adr	r0, #0 <.debug_info+0x774>
     772: 0001         	movs	r1, r0
     774: 0600         	lsls	r0, r0, #24
     776: 0936         	lsrs	r6, r6, #4
     778: 0d00         	lsrs	r0, r0, #20
     77a: 0000         	movs	r0, r0
     77c: 0000         	movs	r0, r0
     77e: 0004         	movs	r4, r0
     780: 0000         	movs	r0, r0
     782: 5701         	ldrsb	r1, [r0, r4]
     784: 1a76         	subs	r6, r6, r1
     786: 0000         	movs	r0, r0
     788: 162b         	asrs	r3, r5, #24
     78a: 0000         	movs	r0, r0
     78c: 2901         	cmp	r1, #1
     78e: 0d01         	lsrs	r1, r0, #20
     790: 0000         	movs	r0, r0
     792: 0000         	movs	r0, r0
     794: 003a         	movs	r2, r7
     796: 0000         	movs	r0, r0
     798: 5701         	ldrsb	r1, [r0, r4]
     79a: 18ea         	adds	r2, r5, r3
     79c: 0000         	movs	r0, r0
     79e: 17fa         	asrs	r2, r7, #31
     7a0: 0000         	movs	r0, r0
     7a2: 2901         	cmp	r1, #1
     7a4: 0301         	lsls	r1, r0, #12
     7a6: 0587         	lsls	r7, r0, #22
     7a8: 0000         	movs	r0, r0
     7aa: 1607         	asrs	r7, r0, #24
     7ac: 0000         	movs	r0, r0
     7ae: 4e06         	ldr	r6, [pc, #24]           @ 0x7c8 <.debug_info+0x7c8>
     7b0: 0501         	lsls	r1, r0, #20
     7b2: 0000         	movs	r0, r0
     7b4: 0000         	movs	r0, r0
     7b6: 007e         	lsls	r6, r7, #1
     7b8: 0000         	movs	r0, r0
     7ba: 5701         	ldrsb	r1, [r0, r4]
     7bc: 0330         	lsls	r0, r6, #12
     7be: 0000         	movs	r0, r0
     7c0: 0ad4         	lsrs	r4, r2, #11
     7c2: 0000         	movs	r0, r0
     7c4: 9c01         	ldr	r4, [sp, #4]
     7c6: 0901         	lsrs	r1, r0, #4
     7c8: 05e6         	lsls	r6, r4, #23
     7ca: 0000         	movs	r0, r0
     7cc: 01b8         	lsls	r0, r7, #6
     7ce: 0000         	movs	r0, r0
     7d0: 8e06         	ldrh	r6, [r0, #48]
     7d2: 0609         	lsls	r1, r1, #24
     7d4: 0c3d         	lsrs	r5, r7, #16
     7d6: 0000         	movs	r0, r0
     7d8: 0000         	movs	r0, r0
     7da: 0000         	movs	r0, r0
     7dc: 0004         	movs	r4, r0
     7de: 0000         	movs	r0, r0
     7e0: 5306         	strh	r6, [r0, r4]
     7e2: 0747         	lsls	r7, r0, #29
     7e4: 0c30         	lsrs	r0, r6, #16
     7e6: 0000         	movs	r0, r0
     7e8: 0000         	movs	r0, r0
     7ea: 0000         	movs	r0, r0
     7ec: 0004         	movs	r4, r0
     7ee: 0000         	movs	r0, r0
     7f0: a505         	adr	r5, #20 <.debug_info+0x7f9>
     7f2: 1203         	asrs	r3, r0, #8
     7f4: 0000         	movs	r0, r0
     7f6: 0300         	lsls	r0, r0, #12
     7f8: 134b         	asrs	r3, r1, #13
     7fa: 0000         	movs	r0, r0
     7fc: 04fe         	lsls	r6, r7, #19
     7fe: 0000         	movs	r0, r0
     800: 4e06         	ldr	r6, [pc, #24]           @ 0x81c <.debug_info+0x81c>
     802: 0501         	lsls	r1, r0, #20
     804: 0000         	movs	r0, r0
     806: 0000         	movs	r0, r0
     808: 0096         	lsls	r6, r2, #2
     80a: 0000         	movs	r0, r0
     80c: 5701         	ldrsb	r1, [r0, r4]
     80e: 1aaa         	subs	r2, r5, r2
     810: 0000         	movs	r0, r0
     812: 1074         	asrs	r4, r6, #1
     814: 0000         	movs	r0, r0
     816: 9c01         	ldr	r4, [sp, #4]
     818: 0601         	lsls	r1, r0, #24
     81a: 0638         	lsls	r0, r7, #24
     81c: 0000         	movs	r0, r0
     81e: 0000         	movs	r0, r0
     820: 0000         	movs	r0, r0
     822: 0088         	lsls	r0, r1, #2
     824: 0000         	movs	r0, r0
     826: 9206         	str	r2, [sp, #24]
     828: 0909         	lsrs	r1, r1, #4
     82a: 0c57         	lsrs	r7, r2, #17
     82c: 0000         	movs	r0, r0
     82e: 01d0         	lsls	r0, r2, #7
     830: 0000         	movs	r0, r0
     832: 5306         	strh	r6, [r0, r4]
     834: 0b47         	lsrs	r7, r0, #13
     836: 0c4a         	lsrs	r2, r1, #17
     838: 0000         	movs	r0, r0
     83a: 01e8         	lsls	r0, r5, #7
     83c: 0000         	movs	r0, r0
     83e: a505         	adr	r5, #20 <.debug_info+0x847>
     840: 1203         	asrs	r3, r0, #8
     842: 0900         	lsrs	r0, r0, #4
     844: 0a77         	lsrs	r7, r6, #9
     846: 0000         	movs	r0, r0
     848: 0200         	lsls	r0, r0, #8
     84a: 0000         	movs	r0, r0
     84c: 5306         	strh	r6, [r0, r4]
     84e: 0b24         	lsrs	r4, r4, #12
     850: 0a6a         	lsrs	r2, r5, #9
     852: 0000         	movs	r0, r0
     854: 0218         	lsls	r0, r3, #8
     856: 0000         	movs	r0, r0
     858: 0b04         	lsrs	r4, r0, #12
     85a: 1204         	asrs	r4, r0, #8
     85c: 0000         	movs	r0, r0
     85e: 0300         	lsls	r0, r0, #12
     860: 0455         	lsls	r5, r2, #17
     862: 0000         	movs	r0, r0
     864: 104f         	asrs	r7, r1, #1
     866: 0000         	movs	r0, r0
     868: 4e06         	ldr	r6, [pc, #24]           @ 0x884 <.debug_info+0x884>
     86a: 0501         	lsls	r1, r0, #20
     86c: 0000         	movs	r0, r0
     86e: 0000         	movs	r0, r0
     870: 00a4         	lsls	r4, r4, #2
     872: 0000         	movs	r0, r0
     874: 5701         	ldrsb	r1, [r0, r4]
     876: 06f5         	lsls	r5, r6, #27
     878: 0000         	movs	r0, r0
     87a: 0d8e         	lsrs	r6, r1, #22
     87c: 0000         	movs	r0, r0
     87e: 9c01         	ldr	r4, [sp, #4]
     880: 0901         	lsrs	r1, r0, #4
     882: 06a0         	lsls	r0, r4, #26
     884: 0000         	movs	r0, r0
     886: 0230         	lsls	r0, r6, #8
     888: 0000         	movs	r0, r0
     88a: 9606         	str	r6, [sp, #24]
     88c: 0909         	lsrs	r1, r1, #4
     88e: 0c71         	lsrs	r1, r6, #17
     890: 0000         	movs	r0, r0
     892: 0248         	lsls	r0, r1, #9
     894: 0000         	movs	r0, r0
     896: 5306         	strh	r6, [r0, r4]
     898: 0b47         	lsrs	r7, r0, #13
     89a: 0c64         	lsrs	r4, r4, #17
     89c: 0000         	movs	r0, r0
     89e: 0260         	lsls	r0, r4, #9
     8a0: 0000         	movs	r0, r0
     8a2: a505         	adr	r5, #20 <.debug_info+0x8ab>
     8a4: 1203         	asrs	r3, r0, #8
     8a6: 0900         	lsrs	r0, r0, #4
     8a8: 0a91         	lsrs	r1, r2, #10
     8aa: 0000         	movs	r0, r0
     8ac: 0278         	lsls	r0, r7, #9
     8ae: 0000         	movs	r0, r0
     8b0: 5306         	strh	r6, [r0, r4]
     8b2: 0b24         	lsrs	r4, r4, #12
     8b4: 0a84         	lsrs	r4, r0, #10
     8b6: 0000         	movs	r0, r0
     8b8: 0290         	lsls	r0, r2, #10
     8ba: 0000         	movs	r0, r0
     8bc: 0b04         	lsrs	r4, r0, #12
     8be: 1204         	asrs	r4, r0, #8
     8c0: 0000         	movs	r0, r0
     8c2: 0300         	lsls	r0, r0, #12
     8c4: 1721         	asrs	r1, r4, #28
     8c6: 0000         	movs	r0, r0
     8c8: 0010         	movs	r0, r2
     8ca: 0000         	movs	r0, r0
     8cc: 5b06         	ldrh	r6, [r0, r4]
     8ce: 0501         	lsls	r1, r0, #20
     8d0: 0000         	movs	r0, r0
     8d2: 0000         	movs	r0, r0
     8d4: 00e2         	lsls	r2, r4, #3
     8d6: 0000         	movs	r0, r0
     8d8: 5701         	ldrsb	r1, [r0, r4]
     8da: 0eb7         	lsrs	r7, r6, #26
     8dc: 0000         	movs	r0, r0
     8de: 0b8c         	lsrs	r4, r1, #14
     8e0: 0000         	movs	r0, r0
     8e2: 9c01         	ldr	r4, [sp, #4]
     8e4: 0901         	lsrs	r1, r0, #4
     8e6: 0704         	lsls	r4, r0, #28
     8e8: 0000         	movs	r0, r0
     8ea: 02a8         	lsls	r0, r5, #10
     8ec: 0000         	movs	r0, r0
     8ee: a306         	adr	r3, #24 <.debug_info+0x8f8>
     8f0: 0609         	lsls	r1, r1, #24
     8f2: 0ca5         	lsrs	r5, r4, #18
     8f4: 0000         	movs	r0, r0
     8f6: 0000         	movs	r0, r0
     8f8: 0000         	movs	r0, r0
     8fa: 0004         	movs	r4, r0
     8fc: 0000         	movs	r0, r0
     8fe: 6306         	str	r6, [r0, #48]
     900: 074b         	lsls	r3, r1, #29
     902: 0c98         	lsrs	r0, r3, #18
     904: 0000         	movs	r0, r0
     906: 0000         	movs	r0, r0
     908: 0000         	movs	r0, r0
     90a: 0004         	movs	r4, r0
     90c: 0000         	movs	r0, r0
     90e: a505         	adr	r5, #20 <.debug_info+0x917>
     910: 1203         	asrs	r3, r0, #8
     912: 0600         	lsls	r0, r0, #24
     914: 0c8b         	lsrs	r3, r1, #18
     916: 0000         	movs	r0, r0
     918: 0000         	movs	r0, r0
     91a: 0000         	movs	r0, r0
     91c: 0004         	movs	r4, r0
     91e: 0000         	movs	r0, r0
     920: 6906         	ldr	r6, [r0, #16]
     922: 074b         	lsls	r3, r1, #29
     924: 0c7e         	lsrs	r6, r7, #17
     926: 0000         	movs	r0, r0
     928: 0000         	movs	r0, r0
     92a: 0000         	movs	r0, r0
     92c: 0004         	movs	r4, r0
     92e: 0000         	movs	r0, r0
     930: a505         	adr	r5, #20 <.debug_info+0x939>
     932: 1203         	asrs	r3, r0, #8
     934: 0000         	movs	r0, r0
     936: 0300         	lsls	r0, r0, #12
     938: 1801         	adds	r1, r0, r0
     93a: 0000         	movs	r0, r0
     93c: 11a1         	asrs	r1, r4, #6
     93e: 0000         	movs	r0, r0
     940: 5b06         	ldrh	r6, [r0, r4]
     942: 0501         	lsls	r1, r0, #20
     944: 0000         	movs	r0, r0
     946: 0000         	movs	r0, r0
     948: 0102         	lsls	r2, r0, #4
     94a: 0000         	movs	r0, r0
     94c: 5701         	ldrsb	r1, [r0, r4]
     94e: 0389         	lsls	r1, r1, #14
     950: 0000         	movs	r0, r0
     952: 12fd         	asrs	r5, r7, #11
     954: 0000         	movs	r0, r0
     956: 9c01         	ldr	r4, [sp, #4]
     958: 0601         	lsls	r1, r0, #24
     95a: 0778         	lsls	r0, r7, #29
     95c: 0000         	movs	r0, r0
     95e: 0000         	movs	r0, r0
     960: 0000         	movs	r0, r0
     962: 00f4         	lsls	r4, r6, #3
     964: 0000         	movs	r0, r0
     966: a706         	adr	r7, #24 <.debug_info+0x970>
     968: 0909         	lsrs	r1, r1, #4
     96a: 0cbf         	lsrs	r7, r7, #18
     96c: 0000         	movs	r0, r0
     96e: 02c8         	lsls	r0, r1, #11
     970: 0000         	movs	r0, r0
     972: 6906         	ldr	r6, [r0, #16]
     974: 0b4b         	lsrs	r3, r1, #13
     976: 0cb2         	lsrs	r2, r6, #18
     978: 0000         	movs	r0, r0
     97a: 02e0         	lsls	r0, r4, #11
     97c: 0000         	movs	r0, r0
     97e: a505         	adr	r5, #20 <.debug_info+0x987>
     980: 1203         	asrs	r3, r0, #8
     982: 0900         	lsrs	r0, r0, #4
     984: 0aab         	lsrs	r3, r5, #10
     986: 0000         	movs	r0, r0
     988: 02f8         	lsls	r0, r7, #11
     98a: 0000         	movs	r0, r0
     98c: 6906         	ldr	r6, [r0, #16]
     98e: 0b28         	lsrs	r0, r5, #12
     990: 0a9e         	lsrs	r6, r3, #10
     992: 0000         	movs	r0, r0
     994: 0310         	lsls	r0, r2, #12
     996: 0000         	movs	r0, r0
     998: 0b04         	lsrs	r4, r0, #12
     99a: 1204         	asrs	r4, r0, #8
     99c: 0000         	movs	r0, r0
     99e: 0300         	lsls	r0, r0, #12
     9a0: 1772         	asrs	r2, r6, #29
     9a2: 0000         	movs	r0, r0
     9a4: 0e8a         	lsrs	r2, r1, #26
     9a6: 0000         	movs	r0, r0
     9a8: 5b06         	ldrh	r6, [r0, r4]
     9aa: 0501         	lsls	r1, r0, #20
     9ac: 0000         	movs	r0, r0
     9ae: 0000         	movs	r0, r0
     9b0: 011a         	lsls	r2, r3, #4
     9b2: 0000         	movs	r0, r0
     9b4: 5701         	ldrsb	r1, [r0, r4]
     9b6: 0035         	movs	r5, r6
     9b8: 0000         	movs	r0, r0
     9ba: 14cf         	asrs	r7, r1, #19
     9bc: 0000         	movs	r0, r0
     9be: 9c01         	ldr	r4, [sp, #4]
     9c0: 0901         	lsrs	r1, r0, #4
     9c2: 07e0         	lsls	r0, r4, #31
     9c4: 0000         	movs	r0, r0
     9c6: 0328         	lsls	r0, r5, #12
     9c8: 0000         	movs	r0, r0
     9ca: ab06         	add	r3, sp, #24
     9cc: 0909         	lsrs	r1, r1, #4
     9ce: 0cd9         	lsrs	r1, r3, #19
     9d0: 0000         	movs	r0, r0
     9d2: 0348         	lsls	r0, r1, #13
     9d4: 0000         	movs	r0, r0
     9d6: 6906         	ldr	r6, [r0, #16]
     9d8: 0b4b         	lsrs	r3, r1, #13
     9da: 0ccc         	lsrs	r4, r1, #19
     9dc: 0000         	movs	r0, r0
     9de: 0360         	lsls	r0, r4, #13
     9e0: 0000         	movs	r0, r0
     9e2: a505         	adr	r5, #20 <.debug_info+0x9eb>
     9e4: 1203         	asrs	r3, r0, #8
     9e6: 0900         	lsrs	r0, r0, #4
     9e8: 0ac5         	lsrs	r5, r0, #11
     9ea: 0000         	movs	r0, r0
     9ec: 0378         	lsls	r0, r7, #13
     9ee: 0000         	movs	r0, r0
     9f0: 6906         	ldr	r6, [r0, #16]
     9f2: 0b28         	lsrs	r0, r5, #12
     9f4: 0ab8         	lsrs	r0, r7, #10
     9f6: 0000         	movs	r0, r0
     9f8: 0390         	lsls	r0, r2, #14
     9fa: 0000         	movs	r0, r0
     9fc: 0b04         	lsrs	r4, r0, #12
     9fe: 1204         	asrs	r4, r0, #8
     a00: 0000         	movs	r0, r0
     a02: 0300         	lsls	r0, r0, #12
     a04: 08c0         	lsrs	r0, r0, #3
     a06: 0000         	movs	r0, r0
     a08: 05d7         	lsls	r7, r2, #23
     a0a: 0000         	movs	r0, r0
     a0c: 7206         	strb	r6, [r0, #8]
     a0e: 0501         	lsls	r1, r0, #20
     a10: 0000         	movs	r0, r0
     a12: 0000         	movs	r0, r0
     a14: 0056         	lsls	r6, r2, #1
     a16: 0000         	movs	r0, r0
     a18: 5701         	ldrsb	r1, [r0, r4]
     a1a: 012c         	lsls	r4, r5, #4
     a1c: 0000         	movs	r0, r0
     a1e: 0185         	lsls	r5, r0, #6
     a20: 0000         	movs	r0, r0
     a22: 9c01         	ldr	r4, [sp, #4]
     a24: 0c01         	lsrs	r1, r0, #16
     a26: 0844         	lsrs	r4, r0, #1
     a28: 0000         	movs	r0, r0
     a2a: 03a8         	lsls	r0, r5, #14
     a2c: 0000         	movs	r0, r0
     a2e: b806         	<unknown>
     a30: 0009         	movs	r1, r1
     a32: 0f03         	lsrs	r3, r0, #28
     a34: 0012         	movs	r2, r2
     a36: 6700         	str	r0, [r0, #112]
     a38: 000b         	movs	r3, r1
     a3a: 0600         	lsls	r0, r0, #24
     a3c: 0172         	lsls	r2, r6, #5
     a3e: 0005         	movs	r5, r0
     a40: 0000         	movs	r0, r0
     a42: 6800         	ldr	r0, [r0]
     a44: 0000         	movs	r0, r0
     a46: 0100         	lsls	r0, r0, #4
     a48: a557         	adr	r5, #348 <.debug_info+0xaa3>
     a4a: 0004         	movs	r4, r0
     a4c: 9b00         	ldr	r3, [sp]
     a4e: 000c         	movs	r4, r1
     a50: 0100         	lsls	r0, r0, #4
     a52: 019c         	lsls	r4, r3, #6
     a54: 7309         	strb	r1, [r1, #12]
     a56: 0008         	movs	r0, r1
     a58: c000         	<unknown>
     a5a: 0003         	movs	r3, r0
     a5c: 0600         	lsls	r0, r0, #24
     a5e: 09bc         	lsrs	r4, r7, #6
     a60: df06         	svc	#6
     a62: 000a         	movs	r2, r1
     a64: 0000         	movs	r0, r0
     a66: 0000         	movs	r0, r0
     a68: 0400         	lsls	r0, r0, #16
     a6a: 0000         	movs	r0, r0
     a6c: 0600         	lsls	r0, r0, #24
     a6e: 2485         	movs	r4, #133
     a70: d207         	bhs	0xa82 <.debug_info+0xa82> @ imm = #14
     a72: 000a         	movs	r2, r1
     a74: 0000         	movs	r0, r0
     a76: 0000         	movs	r0, r0
     a78: 0400         	lsls	r0, r0, #16
     a7a: 0000         	movs	r0, r0
     a7c: 0400         	lsls	r0, r0, #16
     a7e: 040b         	lsls	r3, r1, #16
     a80: 0012         	movs	r2, r2
     a82: 0000         	movs	r0, r0
     a84: a803         	add	r0, sp, #12
     a86: 0015         	movs	r5, r2
     a88: 3800         	subs	r0, #0
     a8a: 0016         	movs	r6, r2
     a8c: 0600         	lsls	r0, r0, #24
     a8e: 0172         	lsls	r2, r6, #5
     a90: 0005         	movs	r5, r0
     a92: 0000         	movs	r0, r0
     a94: 7200         	strb	r0, [r0, #8]
     a96: 0000         	movs	r0, r0
     a98: 0100         	lsls	r0, r0, #4
     a9a: ae57         	add	r6, sp, #348
     a9c: 0001         	movs	r1, r0
     a9e: b700         	<unknown>
     aa0: 000d         	movs	r5, r1
     aa2: 0100         	lsls	r0, r0, #4
     aa4: 019c         	lsls	r4, r3, #6
     aa6: c509         	stm	r5!, {r0, r3}
     aa8: 0008         	movs	r0, r1
     aaa: e000         	b	0xaae <.debug_info+0xaae> @ imm = #0
     aac: 0003         	movs	r3, r0
     aae: 0600         	lsls	r0, r0, #24
     ab0: 09c0         	lsrs	r0, r0, #7
     ab2: f906 000a    	<unknown>
     ab6: 0000         	movs	r0, r0
     ab8: 0000         	movs	r0, r0
     aba: 0400         	lsls	r0, r0, #16
     abc: 0000         	movs	r0, r0
     abe: 0600         	lsls	r0, r0, #24
     ac0: 2485         	movs	r4, #133
     ac2: ec07 000a    	<unknown>
     ac6: 0000         	movs	r0, r0
     ac8: 0000         	movs	r0, r0
     aca: 0400         	lsls	r0, r0, #16
     acc: 0000         	movs	r0, r0
     ace: 0400         	lsls	r0, r0, #16
     ad0: 040b         	lsls	r3, r1, #16
     ad2: 0012         	movs	r2, r2
     ad4: 0000         	movs	r0, r0
     ad6: 0000         	movs	r0, r0
     ad8: e802 0009    	<unknown>
     adc: 0200         	lsls	r0, r0, #8
     ade: 1891         	adds	r1, r2, r2
     ae0: 0000         	movs	r0, r0
     ae2: ac02         	add	r4, sp, #8
     ae4: 0007         	movs	r7, r0
     ae6: 0400         	lsls	r0, r0, #16
     ae8: 024a         	lsls	r2, r1, #9
     aea: 0000         	movs	r0, r0
     aec: 1997         	adds	r7, r2, r6
     aee: 0000         	movs	r0, r0
     af0: b203         	sxth	r3, r0
     af2: 0104         	lsls	r4, r0, #4
     af4: 1f04         	subs	r4, r0, #4
     af6: 0014         	movs	r4, r2
     af8: 9200         	str	r2, [sp]
     afa: 0002         	movs	r2, r0
     afc: 0300         	lsls	r0, r0, #12
     afe: 0547         	lsls	r7, r0, #21
     b00: 0401         	lsls	r1, r0, #16
     b02: 024a         	lsls	r2, r1, #9
     b04: 0000         	movs	r0, r0
     b06: 1997         	adds	r7, r2, r6
     b08: 0000         	movs	r0, r0
     b0a: b203         	sxth	r3, r0
     b0c: 0104         	lsls	r4, r0, #4
     b0e: 4a04         	ldr	r2, [pc, #16]           @ 0xb20 <.debug_info+0xb20>
     b10: 0002         	movs	r2, r0
     b12: 9700         	str	r7, [sp]
     b14: 0019         	movs	r1, r3
     b16: 0300         	lsls	r0, r0, #12
     b18: 04b2         	lsls	r2, r6, #18
     b1a: 0401         	lsls	r1, r0, #16
     b1c: 141f         	asrs	r7, r3, #16
     b1e: 0000         	movs	r0, r0
     b20: 0292         	lsls	r2, r2, #10
     b22: 0000         	movs	r0, r0
     b24: 4703         	bx	r0
     b26: 0105         	lsls	r5, r0, #4
     b28: 4a04         	ldr	r2, [pc, #16]           @ 0xb3c <.debug_info+0xb3c>
     b2a: 0002         	movs	r2, r0
     b2c: 9700         	str	r7, [sp]
     b2e: 0019         	movs	r1, r3
     b30: 0300         	lsls	r0, r0, #12
     b32: 04b2         	lsls	r2, r6, #18
     b34: 0401         	lsls	r1, r0, #16
     b36: 141f         	asrs	r7, r3, #16
     b38: 0000         	movs	r0, r0
     b3a: 0292         	lsls	r2, r2, #10
     b3c: 0000         	movs	r0, r0
     b3e: 4703         	bx	r0
     b40: 0105         	lsls	r5, r0, #4
     b42: 0200         	lsls	r0, r0, #8
     b44: 11c7         	asrs	r7, r0, #7
     b46: 0000         	movs	r0, r0
     b48: 0b04         	lsrs	r4, r0, #12
     b4a: 000c         	movs	r4, r1
     b4c: 9700         	str	r7, [sp]
     b4e: 0019         	movs	r1, r3
     b50: 0700         	lsls	r0, r0, #28
     b52: 048b         	lsls	r3, r1, #18
     b54: 0401         	lsls	r1, r0, #16
     b56: 0c53         	lsrs	r3, r2, #17
     b58: 0000         	movs	r0, r0
     b5a: 0292         	lsls	r2, r2, #10
     b5c: 0000         	movs	r0, r0
     b5e: 3a07         	subs	r2, #7
     b60: 0105         	lsls	r5, r0, #4
     b62: 0000         	movs	r0, r0
     b64: 0702         	lsls	r2, r0, #28
     b66: 0002         	movs	r2, r0
     b68: 0200         	lsls	r0, r0, #8
     b6a: 056c         	lsls	r4, r5, #21
     b6c: 0000         	movs	r0, r0
     b6e: e702         	b	0x976 <.debug_info+0x976> @ imm = #-508
     b70: 000f         	movs	r7, r1
     b72: 0400         	lsls	r0, r0, #16
     b74: 05fb         	lsls	r3, r7, #23
     b76: 0000         	movs	r0, r0
     b78: 0f11         	lsrs	r1, r2, #28
     b7a: 0000         	movs	r0, r0
     b7c: e104         	b	0xd88 <.debug_info+0xd88> @ imm = #520
     b7e: 0101         	lsls	r1, r0, #4
     b80: 6104         	str	r4, [r0, #16]
     b82: 0009         	movs	r1, r1
     b84: e800 000b    	<unknown>
     b88: 0400         	lsls	r0, r0, #16
     b8a: 0406         	lsls	r6, r0, #16
     b8c: 0401         	lsls	r1, r0, #16
     b8e: 05fb         	lsls	r3, r7, #23
     b90: 0000         	movs	r0, r0
     b92: 0f11         	lsrs	r1, r2, #28
     b94: 0000         	movs	r0, r0
     b96: e104         	b	0xda2 <.debug_info+0xda2> @ imm = #520
     b98: 0101         	lsls	r1, r0, #4
     b9a: 6104         	str	r4, [r0, #16]
     b9c: 0009         	movs	r1, r1
     b9e: e800 000b    	<unknown>
     ba2: 0400         	lsls	r0, r0, #16
     ba4: 0406         	lsls	r6, r0, #16
     ba6: 0401         	lsls	r1, r0, #16
     ba8: 05fb         	lsls	r3, r7, #23
     baa: 0000         	movs	r0, r0
     bac: 0f11         	lsrs	r1, r2, #28
     bae: 0000         	movs	r0, r0
     bb0: e104         	b	0xdbc <.debug_info+0xdbc> @ imm = #520
     bb2: 0101         	lsls	r1, r0, #4
     bb4: 3204         	adds	r2, #4
     bb6: 000e         	movs	r6, r1
     bb8: 3000         	adds	r0, #0
     bba: 0016         	movs	r6, r2
     bbc: 0400         	lsls	r0, r0, #16
     bbe: 045b         	lsls	r3, r3, #17
     bc0: 0401         	lsls	r1, r0, #16
     bc2: 05fb         	lsls	r3, r7, #23
     bc4: 0000         	movs	r0, r0
     bc6: 0f11         	lsrs	r1, r2, #28
     bc8: 0000         	movs	r0, r0
     bca: e104         	b	0xdd6 <.debug_info+0xdd6> @ imm = #520
     bcc: 0101         	lsls	r1, r0, #4
     bce: 6104         	str	r4, [r0, #16]
     bd0: 0009         	movs	r1, r1
     bd2: e800 000b    	<unknown>
     bd6: 0400         	lsls	r0, r0, #16
     bd8: 0406         	lsls	r6, r0, #16
     bda: 0401         	lsls	r1, r0, #16
     bdc: 00cf         	lsls	r7, r1, #3
     bde: 0000         	movs	r0, r0
     be0: 09f9         	lsrs	r1, r7, #7
     be2: 0000         	movs	r0, r0
     be4: e104         	b	0xdf0 <.debug_info+0xdf0> @ imm = #520
     be6: 0101         	lsls	r1, r0, #4
     be8: a404         	adr	r4, #16 <.debug_info+0xbf0>
     bea: 0019         	movs	r1, r3
     bec: 1e00         	subs	r0, r0, #0
     bee: 0011         	movs	r1, r2
     bf0: 0400         	lsls	r0, r0, #16
     bf2: 045b         	lsls	r3, r3, #17
     bf4: 0401         	lsls	r1, r0, #16
     bf6: 05fb         	lsls	r3, r7, #23
     bf8: 0000         	movs	r0, r0
     bfa: 0f11         	lsrs	r1, r2, #28
     bfc: 0000         	movs	r0, r0
     bfe: e104         	b	0xe0a <.debug_info+0xe0a> @ imm = #520
     c00: 0101         	lsls	r1, r0, #4
     c02: 6104         	str	r4, [r0, #16]
     c04: 0009         	movs	r1, r1
     c06: e800 000b    	<unknown>
     c0a: 0400         	lsls	r0, r0, #16
     c0c: 0406         	lsls	r6, r0, #16
     c0e: 0401         	lsls	r1, r0, #16
     c10: 05fb         	lsls	r3, r7, #23
     c12: 0000         	movs	r0, r0
     c14: 0f11         	lsrs	r1, r2, #28
     c16: 0000         	movs	r0, r0
     c18: e104         	b	0xe24 <.debug_info+0xe24> @ imm = #520
     c1a: 0101         	lsls	r1, r0, #4
     c1c: 6104         	str	r4, [r0, #16]
     c1e: 0009         	movs	r1, r1
     c20: e800 000b    	<unknown>
     c24: 0400         	lsls	r0, r0, #16
     c26: 0406         	lsls	r6, r0, #16
     c28: 0401         	lsls	r1, r0, #16
     c2a: 0b16         	lsrs	r6, r2, #12
     c2c: 0000         	movs	r0, r0
     c2e: 0120         	lsls	r0, r4, #4
     c30: 0000         	movs	r0, r0
     c32: e104         	b	0xe3e <.debug_info+0xe3e> @ imm = #520
     c34: 0101         	lsls	r1, r0, #4
     c36: af04         	add	r7, sp, #16
     c38: 0012         	movs	r2, r2
     c3a: 0d00         	lsrs	r0, r0, #20
     c3c: 000b         	movs	r3, r1
     c3e: 0400         	lsls	r0, r0, #16
     c40: 0406         	lsls	r6, r0, #16
     c42: 0401         	lsls	r1, r0, #16
     c44: 0910         	lsrs	r0, r2, #4
     c46: 0000         	movs	r0, r0
     c48: 09ed         	lsrs	r5, r5, #7
     c4a: 0000         	movs	r0, r0
     c4c: e104         	b	0xe58 <.debug_info+0xe58> @ imm = #520
     c4e: 0101         	lsls	r1, r0, #4
     c50: f204 0019    	addw	r0, r4, #25
     c54: df00         	svc	#0
     c56: 0009         	movs	r1, r1
     c58: 0400         	lsls	r0, r0, #16
     c5a: 0406         	lsls	r6, r0, #16
     c5c: 0401         	lsls	r1, r0, #16
     c5e: 0b16         	lsrs	r6, r2, #12
     c60: 0000         	movs	r0, r0
     c62: 0120         	lsls	r0, r4, #4
     c64: 0000         	movs	r0, r0
     c66: e104         	b	0xe72 <.debug_info+0xe72> @ imm = #520
     c68: 0101         	lsls	r1, r0, #4
     c6a: af04         	add	r7, sp, #16
     c6c: 0012         	movs	r2, r2
     c6e: 0d00         	lsrs	r0, r0, #20
     c70: 000b         	movs	r3, r1
     c72: 0400         	lsls	r0, r0, #16
     c74: 0406         	lsls	r6, r0, #16
     c76: 0401         	lsls	r1, r0, #16
     c78: 0910         	lsrs	r0, r2, #4
     c7a: 0000         	movs	r0, r0
     c7c: 09ed         	lsrs	r5, r5, #7
     c7e: 0000         	movs	r0, r0
     c80: e104         	b	0xe8c <.debug_info+0xe8c> @ imm = #520
     c82: 0101         	lsls	r1, r0, #4
     c84: f204 0019    	addw	r0, r4, #25
     c88: df00         	svc	#0
     c8a: 0009         	movs	r1, r1
     c8c: 0400         	lsls	r0, r0, #16
     c8e: 0406         	lsls	r6, r0, #16
     c90: 0401         	lsls	r1, r0, #16
     c92: 0b16         	lsrs	r6, r2, #12
     c94: 0000         	movs	r0, r0
     c96: 0120         	lsls	r0, r4, #4
     c98: 0000         	movs	r0, r0
     c9a: e104         	b	0xea6 <.debug_info+0xea6> @ imm = #520
     c9c: 0101         	lsls	r1, r0, #4
     c9e: af04         	add	r7, sp, #16
     ca0: 0012         	movs	r2, r2
     ca2: 0d00         	lsrs	r0, r0, #20
     ca4: 000b         	movs	r3, r1
     ca6: 0400         	lsls	r0, r0, #16
     ca8: 0406         	lsls	r6, r0, #16
     caa: 0401         	lsls	r1, r0, #16
     cac: 0910         	lsrs	r0, r2, #4
     cae: 0000         	movs	r0, r0
     cb0: 09ed         	lsrs	r5, r5, #7
     cb2: 0000         	movs	r0, r0
     cb4: e104         	b	0xec0 <.debug_info+0xec0> @ imm = #520
     cb6: 0101         	lsls	r1, r0, #4
     cb8: f204 0019    	addw	r0, r4, #25
     cbc: df00         	svc	#0
     cbe: 0009         	movs	r1, r1
     cc0: 0400         	lsls	r0, r0, #16
     cc2: 0406         	lsls	r6, r0, #16
     cc4: 0001         	movs	r1, r0
     cc6: 0200         	lsls	r0, r0, #8
     cc8: 1467         	asrs	r7, r4, #17
     cca: 0000         	movs	r0, r0
     ccc: e702         	b	0xad4 <.debug_info+0xad4> @ imm = #-508
     cce: 000f         	movs	r7, r1
     cd0: 0400         	lsls	r0, r0, #16
     cd2: 1668         	asrs	r0, r5, #25
     cd4: 0000         	movs	r0, r0
     cd6: 0f11         	lsrs	r1, r2, #28
     cd8: 0000         	movs	r0, r0
     cda: d505         	bpl	0xce8 <.debug_info+0xce8> @ imm = #10
     cdc: 0101         	lsls	r1, r0, #4
     cde: e004         	b	0xcea <.debug_info+0xcea> @ imm = #8
     ce0: 000d         	movs	r5, r1
     ce2: e800 000b    	<unknown>
     ce6: 0500         	lsls	r0, r0, #20
     ce8: 03a0         	lsls	r0, r4, #14
     cea: 0401         	lsls	r1, r0, #16
     cec: 1668         	asrs	r0, r5, #25
     cee: 0000         	movs	r0, r0
     cf0: 0f11         	lsrs	r1, r2, #28
     cf2: 0000         	movs	r0, r0
     cf4: d505         	bpl	0xd02 <.debug_info+0xd02> @ imm = #10
     cf6: 0101         	lsls	r1, r0, #4
     cf8: e004         	b	0xd04 <.debug_info+0xd04> @ imm = #8
     cfa: 000d         	movs	r5, r1
     cfc: e800 000b    	<unknown>
     d00: 0500         	lsls	r0, r0, #20
     d02: 03a0         	lsls	r0, r4, #14
     d04: 0401         	lsls	r1, r0, #16
     d06: 1668         	asrs	r0, r5, #25
     d08: 0000         	movs	r0, r0
     d0a: 0f11         	lsrs	r1, r2, #28
     d0c: 0000         	movs	r0, r0
     d0e: d505         	bpl	0xd1c <.debug_info+0xd1c> @ imm = #10
     d10: 0101         	lsls	r1, r0, #4
     d12: e004         	b	0xd1e <.debug_info+0xd1e> @ imm = #8
     d14: 000d         	movs	r5, r1
     d16: e800 000b    	<unknown>
     d1a: 0500         	lsls	r0, r0, #20
     d1c: 03a0         	lsls	r0, r4, #14
     d1e: 0401         	lsls	r1, r0, #16
     d20: 1668         	asrs	r0, r5, #25
     d22: 0000         	movs	r0, r0
     d24: 0f11         	lsrs	r1, r2, #28
     d26: 0000         	movs	r0, r0
     d28: d505         	bpl	0xd36 <.debug_info+0xd36> @ imm = #10
     d2a: 0101         	lsls	r1, r0, #4
     d2c: e004         	b	0xd38 <.debug_info+0xd38> @ imm = #8
     d2e: 000d         	movs	r5, r1
     d30: e800 000b    	<unknown>
     d34: 0500         	lsls	r0, r0, #20
     d36: 03a0         	lsls	r0, r4, #14
     d38: 0401         	lsls	r1, r0, #16
     d3a: 1668         	asrs	r0, r5, #25
     d3c: 0000         	movs	r0, r0
     d3e: 0f11         	lsrs	r1, r2, #28
     d40: 0000         	movs	r0, r0
     d42: d505         	bpl	0xd50 <.debug_info+0xd50> @ imm = #10
     d44: 0101         	lsls	r1, r0, #4
     d46: e004         	b	0xd52 <.debug_info+0xd52> @ imm = #8
     d48: 000d         	movs	r5, r1
     d4a: e800 000b    	<unknown>
     d4e: 0500         	lsls	r0, r0, #20
     d50: 03a0         	lsls	r0, r4, #14
     d52: 0401         	lsls	r1, r0, #16
     d54: 1668         	asrs	r0, r5, #25
     d56: 0000         	movs	r0, r0
     d58: 0f11         	lsrs	r1, r2, #28
     d5a: 0000         	movs	r0, r0
     d5c: d505         	bpl	0xd6a <.debug_info+0xd6a> @ imm = #10
     d5e: 0101         	lsls	r1, r0, #4
     d60: a304         	adr	r3, #16 <.debug_info+0xd68>
     d62: 0006         	movs	r6, r0
     d64: 3000         	adds	r0, #0
     d66: 0016         	movs	r6, r2
     d68: 0500         	lsls	r0, r0, #20
     d6a: 03f5         	lsls	r5, r6, #15
     d6c: 0401         	lsls	r1, r0, #16
     d6e: 1668         	asrs	r0, r5, #25
     d70: 0000         	movs	r0, r0
     d72: 0f11         	lsrs	r1, r2, #28
     d74: 0000         	movs	r0, r0
     d76: d505         	bpl	0xd84 <.debug_info+0xd84> @ imm = #10
     d78: 0101         	lsls	r1, r0, #4
     d7a: a304         	adr	r3, #16 <.debug_info+0xd82>
     d7c: 0006         	movs	r6, r0
     d7e: 3000         	adds	r0, #0
     d80: 0016         	movs	r6, r2
     d82: 0500         	lsls	r0, r0, #20
     d84: 03f5         	lsls	r5, r6, #15
     d86: 0401         	lsls	r1, r0, #16
     d88: 1668         	asrs	r0, r5, #25
     d8a: 0000         	movs	r0, r0
     d8c: 0f11         	lsrs	r1, r2, #28
     d8e: 0000         	movs	r0, r0
     d90: d505         	bpl	0xd9e <.debug_info+0xd9e> @ imm = #10
     d92: 0101         	lsls	r1, r0, #4
     d94: e004         	b	0xda0 <.debug_info+0xda0> @ imm = #8
     d96: 000d         	movs	r5, r1
     d98: e800 000b    	<unknown>
     d9c: 0500         	lsls	r0, r0, #20
     d9e: 03a0         	lsls	r0, r4, #14
     da0: 0401         	lsls	r1, r0, #16
     da2: 1668         	asrs	r0, r5, #25
     da4: 0000         	movs	r0, r0
     da6: 0f11         	lsrs	r1, r2, #28
     da8: 0000         	movs	r0, r0
     daa: d505         	bpl	0xdb8 <.debug_info+0xdb8> @ imm = #10
     dac: 0101         	lsls	r1, r0, #4
     dae: e004         	b	0xdba <.debug_info+0xdba> @ imm = #8
     db0: 000d         	movs	r5, r1
     db2: e800 000b    	<unknown>
     db6: 0500         	lsls	r0, r0, #20
     db8: 03a0         	lsls	r0, r4, #14
     dba: 0401         	lsls	r1, r0, #16
     dbc: 1668         	asrs	r0, r5, #25
     dbe: 0000         	movs	r0, r0
     dc0: 0f11         	lsrs	r1, r2, #28
     dc2: 0000         	movs	r0, r0
     dc4: d505         	bpl	0xdd2 <.debug_info+0xdd2> @ imm = #10
     dc6: 0101         	lsls	r1, r0, #4
     dc8: e004         	b	0xdd4 <.debug_info+0xdd4> @ imm = #8
     dca: 000d         	movs	r5, r1
     dcc: e800 000b    	<unknown>
     dd0: 0500         	lsls	r0, r0, #20
     dd2: 03a0         	lsls	r0, r4, #14
     dd4: 0401         	lsls	r1, r0, #16
     dd6: 1668         	asrs	r0, r5, #25
     dd8: 0000         	movs	r0, r0
     dda: 0f11         	lsrs	r1, r2, #28
     ddc: 0000         	movs	r0, r0
     dde: d505         	bpl	0xdec <.debug_info+0xdec> @ imm = #10
     de0: 0101         	lsls	r1, r0, #4
     de2: e004         	b	0xdee <.debug_info+0xdee> @ imm = #8
     de4: 000d         	movs	r5, r1
     de6: e800 000b    	<unknown>
     dea: 0500         	lsls	r0, r0, #20
     dec: 03a0         	lsls	r0, r4, #14
     dee: 0401         	lsls	r1, r0, #16
     df0: 1668         	asrs	r0, r5, #25
     df2: 0000         	movs	r0, r0
     df4: 0f11         	lsrs	r1, r2, #28
     df6: 0000         	movs	r0, r0
     df8: d505         	bpl	0xe06 <.debug_info+0xe06> @ imm = #10
     dfa: 0101         	lsls	r1, r0, #4
     dfc: e004         	b	0xe08 <.debug_info+0xe08> @ imm = #8
     dfe: 000d         	movs	r5, r1
     e00: e800 000b    	<unknown>
     e04: 0500         	lsls	r0, r0, #20
     e06: 03a0         	lsls	r0, r4, #14
     e08: 0401         	lsls	r1, r0, #16
     e0a: 0f92         	lsrs	r2, r2, #30
     e0c: 0000         	movs	r0, r0
     e0e: 0120         	lsls	r0, r4, #4
     e10: 0000         	movs	r0, r0
     e12: d505         	bpl	0xe20 <.debug_info+0xe20> @ imm = #10
     e14: 0101         	lsls	r1, r0, #4
     e16: 3c04         	subs	r4, #4
     e18: 000d         	movs	r5, r1
     e1a: 0d00         	lsrs	r0, r0, #20
     e1c: 000b         	movs	r3, r1
     e1e: 0500         	lsls	r0, r0, #20
     e20: 03a0         	lsls	r0, r4, #14
     e22: 0401         	lsls	r1, r0, #16
     e24: 1895         	adds	r5, r2, r2
     e26: 0000         	movs	r0, r0
     e28: 09ed         	lsrs	r5, r5, #7
     e2a: 0000         	movs	r0, r0
     e2c: d505         	bpl	0xe3a <.debug_info+0xe3a> @ imm = #10
     e2e: 0101         	lsls	r1, r0, #4
     e30: 6e04         	ldr	r4, [r0, #96]
     e32: 0008         	movs	r0, r1
     e34: df00         	svc	#0
     e36: 0009         	movs	r1, r1
     e38: 0500         	lsls	r0, r0, #20
     e3a: 03a0         	lsls	r0, r4, #14
     e3c: 0401         	lsls	r1, r0, #16
     e3e: 1668         	asrs	r0, r5, #25
     e40: 0000         	movs	r0, r0
     e42: 0f11         	lsrs	r1, r2, #28
     e44: 0000         	movs	r0, r0
     e46: d505         	bpl	0xe54 <.debug_info+0xe54> @ imm = #10
     e48: 0101         	lsls	r1, r0, #4
     e4a: e004         	b	0xe56 <.debug_info+0xe56> @ imm = #8
     e4c: 000d         	movs	r5, r1
     e4e: e800 000b    	<unknown>
     e52: 0500         	lsls	r0, r0, #20
     e54: 03a0         	lsls	r0, r4, #14
     e56: 0401         	lsls	r1, r0, #16
     e58: 1668         	asrs	r0, r5, #25
     e5a: 0000         	movs	r0, r0
     e5c: 0f11         	lsrs	r1, r2, #28
     e5e: 0000         	movs	r0, r0
     e60: d505         	bpl	0xe6e <.debug_info+0xe6e> @ imm = #10
     e62: 0101         	lsls	r1, r0, #4
     e64: e004         	b	0xe70 <.debug_info+0xe70> @ imm = #8
     e66: 000d         	movs	r5, r1
     e68: e800 000b    	<unknown>
     e6c: 0500         	lsls	r0, r0, #20
     e6e: 03a0         	lsls	r0, r4, #14
     e70: 0401         	lsls	r1, r0, #16
     e72: 0f92         	lsrs	r2, r2, #30
     e74: 0000         	movs	r0, r0
     e76: 0120         	lsls	r0, r4, #4
     e78: 0000         	movs	r0, r0
     e7a: d505         	bpl	0xe88 <.debug_info+0xe88> @ imm = #10
     e7c: 0101         	lsls	r1, r0, #4
     e7e: 3c04         	subs	r4, #4
     e80: 000d         	movs	r5, r1
     e82: 0d00         	lsrs	r0, r0, #20
     e84: 000b         	movs	r3, r1
     e86: 0500         	lsls	r0, r0, #20
     e88: 03a0         	lsls	r0, r4, #14
     e8a: 0401         	lsls	r1, r0, #16
     e8c: 1895         	adds	r5, r2, r2
     e8e: 0000         	movs	r0, r0
     e90: 09ed         	lsrs	r5, r5, #7
     e92: 0000         	movs	r0, r0
     e94: d505         	bpl	0xea2 <.debug_info+0xea2> @ imm = #10
     e96: 0101         	lsls	r1, r0, #4
     e98: 6e04         	ldr	r4, [r0, #96]
     e9a: 0008         	movs	r0, r1
     e9c: df00         	svc	#0
     e9e: 0009         	movs	r1, r1
     ea0: 0500         	lsls	r0, r0, #20
     ea2: 03a0         	lsls	r0, r4, #14
     ea4: 0001         	movs	r1, r0
     ea6: 0000         	movs	r0, r0
     ea8: 0000         	movs	r0, r0

Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
       0: 001c         	movs	r4, r3
       2: 0000         	movs	r0, r0
       4: 0002         	movs	r2, r0
       6: 0000         	movs	r0, r0
       8: 0000         	movs	r0, r0
       a: 0004         	movs	r4, r0
       c: ffff ffff    	<unknown>
      10: 0086         	lsls	r6, r0, #2
      12: 0800         	lsrs	r0, r0, #32
      14: 0004         	movs	r4, r0
		...
      1e: 0000         	movs	r0, r0
      20: 0064         	lsls	r4, r4, #1
      22: 0000         	movs	r0, r0
      24: 0002         	movs	r2, r0
      26: 004b         	lsls	r3, r1, #1
      28: 0000         	movs	r0, r0
      2a: 0004         	movs	r4, r0
      2c: ffff ffff    	<unknown>
      30: 008a         	lsls	r2, r1, #2
      32: 0800         	lsrs	r0, r0, #32
      34: 0004         	movs	r4, r0
      36: 0000         	movs	r0, r0
      38: 008e         	lsls	r6, r1, #2
      3a: 0800         	lsrs	r0, r0, #32
      3c: 009a         	lsls	r2, r3, #2
      3e: 0000         	movs	r0, r0
      40: 0000         	movs	r0, r0
      42: 0000         	movs	r0, r0
      44: 0004         	movs	r4, r0
      46: 0000         	movs	r0, r0
      48: 0000         	movs	r0, r0
      4a: 0000         	movs	r0, r0
      4c: 0004         	movs	r4, r0
      4e: 0000         	movs	r0, r0
      50: 0000         	movs	r0, r0
      52: 0000         	movs	r0, r0
      54: 0004         	movs	r4, r0
      56: 0000         	movs	r0, r0
      58: 0000         	movs	r0, r0
      5a: 0000         	movs	r0, r0
      5c: 000a         	movs	r2, r1
      5e: 0000         	movs	r0, r0
      60: 0000         	movs	r0, r0
      62: 0000         	movs	r0, r0
      64: 008c         	lsls	r4, r1, #2
      66: 0000         	movs	r0, r0
      68: 0000         	movs	r0, r0
      6a: 0000         	movs	r0, r0
      6c: 0004         	movs	r4, r0
      6e: 0000         	movs	r0, r0
      70: 0000         	movs	r0, r0
      72: 0000         	movs	r0, r0
      74: 0006         	movs	r6, r0
      76: 0000         	movs	r0, r0
      78: 0000         	movs	r0, r0
      7a: 0000         	movs	r0, r0
      7c: 0006         	movs	r6, r0
		...
      86: 0000         	movs	r0, r0
      88: 008c         	lsls	r4, r1, #2
      8a: 0000         	movs	r0, r0
      8c: 0002         	movs	r2, r0
      8e: 01bf         	lsls	r7, r7, #6
      90: 0000         	movs	r0, r0
      92: 0004         	movs	r4, r0
      94: ffff ffff    	<unknown>
      98: 0128         	lsls	r0, r5, #4
      9a: 0800         	lsrs	r0, r0, #32
      9c: 0144         	lsls	r4, r0, #5
      9e: 0000         	movs	r0, r0
      a0: 0000         	movs	r0, r0
      a2: 0000         	movs	r0, r0
      a4: 0338         	lsls	r0, r7, #12
      a6: 0000         	movs	r0, r0
      a8: 0000         	movs	r0, r0
      aa: 0000         	movs	r0, r0
      ac: 009c         	lsls	r4, r3, #2
      ae: 0000         	movs	r0, r0
      b0: 0000         	movs	r0, r0
      b2: 0000         	movs	r0, r0
      b4: 006e         	lsls	r6, r5, #1
      b6: 0000         	movs	r0, r0
      b8: 0000         	movs	r0, r0
      ba: 0000         	movs	r0, r0
      bc: 0004         	movs	r4, r0
      be: 0000         	movs	r0, r0
      c0: 0000         	movs	r0, r0
      c2: 0000         	movs	r0, r0
      c4: 003a         	movs	r2, r7
      c6: 0000         	movs	r0, r0
      c8: 0000         	movs	r0, r0
      ca: 0000         	movs	r0, r0
      cc: 007e         	lsls	r6, r7, #1
      ce: 0000         	movs	r0, r0
      d0: 0000         	movs	r0, r0
      d2: 0000         	movs	r0, r0
      d4: 0096         	lsls	r6, r2, #2
      d6: 0000         	movs	r0, r0
      d8: 0000         	movs	r0, r0
      da: 0000         	movs	r0, r0
      dc: 00a4         	lsls	r4, r4, #2
      de: 0000         	movs	r0, r0
      e0: 0000         	movs	r0, r0
      e2: 0000         	movs	r0, r0
      e4: 00e2         	lsls	r2, r4, #3
      e6: 0000         	movs	r0, r0
      e8: 0000         	movs	r0, r0
      ea: 0000         	movs	r0, r0
      ec: 0102         	lsls	r2, r0, #4
      ee: 0000         	movs	r0, r0
      f0: 0000         	movs	r0, r0
      f2: 0000         	movs	r0, r0
      f4: 011a         	lsls	r2, r3, #4
      f6: 0000         	movs	r0, r0
      f8: 0000         	movs	r0, r0
      fa: 0000         	movs	r0, r0
      fc: 0056         	lsls	r6, r2, #1
      fe: 0000         	movs	r0, r0
     100: 0000         	movs	r0, r0
     102: 0000         	movs	r0, r0
     104: 0068         	lsls	r0, r5, #1
     106: 0000         	movs	r0, r0
     108: 0000         	movs	r0, r0
     10a: 0000         	movs	r0, r0
     10c: 0072         	lsls	r2, r6, #1
		...
     116: 0000         	movs	r0, r0

Disassembly of section .debug_str:

00000000 <.debug_str>:
       0: 5f5f         	ldrsh	r7, [r3, r5]
       2: 6561         	str	r1, [r4, #84]
       4: 6261         	str	r1, [r4, #36]
       6: 5f69         	ldrsh	r1, [r5, r5]
       8: 656d         	str	r5, [r5, #84]
       a: 6d6d         	ldr	r5, [r5, #84]
       c: 766f         	strb	r7, [r5, #25]
       e: 0065         	lsls	r5, r4, #1
      10: 656d         	str	r5, [r5, #84]
      12: 6d6d         	ldr	r5, [r5, #84]
      14: 766f         	strb	r7, [r5, #25]
      16: 5f65         	ldrsh	r5, [r4, r5]
      18: 6c65         	ldr	r5, [r4, #68]
      1a: 6d65         	ldr	r5, [r4, #84]
      1c: 6e65         	ldr	r5, [r4, #100]
      1e: 5f74         	ldrsh	r4, [r6, r5]
      20: 6e75         	ldr	r5, [r6, #100]
      22: 726f         	strb	r7, [r5, #9]
      24: 6564         	str	r4, [r4, #84]
      26: 6572         	str	r2, [r6, #84]
      28: 5f64         	ldrsh	r4, [r4, r5]
      2a: 7461         	strb	r1, [r4, #17]
      2c: 6d6f         	ldr	r7, [r5, #84]
      2e: 6369         	str	r1, [r5, #52]
      30: 753c         	strb	r4, [r7, #20]
      32: 3e38         	subs	r6, #56
      34: 5f00         	ldrsh	r0, [r0, r4]
      36: 4e5a         	ldr	r6, [pc, #360]          @ 0x1a0 <.debug_str+0x1a0>
      38: 3731         	adds	r7, #49
      3a: 6f63         	ldr	r3, [r4, #116]
      3c: 706d         	strb	r5, [r5, #1]
      3e: 6c69         	ldr	r1, [r5, #68]
      40: 7265         	strb	r5, [r4, #9]
      42: 625f         	str	r7, [r3, #36]
      44: 6975         	ldr	r5, [r6, #20]
      46: 746c         	strb	r4, [r5, #17]
      48: 6e69         	ldr	r1, [r5, #100]
      4a: 3373         	adds	r3, #115
      4c: 656d         	str	r5, [r5, #84]
      4e: 346d         	adds	r4, #109
      50: 5f31         	ldrsh	r1, [r6, r4]
      52: 6c5f         	ldr	r7, [r3, #68]
      54: 766c         	strb	r4, [r5, #25]
      56: 5f6d         	ldrsh	r5, [r5, r5]
      58: 656d         	str	r5, [r5, #84]
      5a: 6d6d         	ldr	r5, [r5, #84]
      5c: 766f         	strb	r7, [r5, #25]
      5e: 5f65         	ldrsh	r5, [r4, r5]
      60: 6c65         	ldr	r5, [r4, #68]
      62: 6d65         	ldr	r5, [r4, #84]
      64: 6e65         	ldr	r5, [r4, #100]
      66: 5f74         	ldrsh	r4, [r6, r5]
      68: 6e75         	ldr	r5, [r6, #100]
      6a: 726f         	strb	r7, [r5, #9]
      6c: 6564         	str	r4, [r4, #84]
      6e: 6572         	str	r2, [r6, #84]
      70: 5f64         	ldrsh	r4, [r4, r5]
      72: 7461         	strb	r1, [r4, #17]
      74: 6d6f         	ldr	r7, [r5, #84]
      76: 6369         	str	r1, [r5, #52]
      78: 345f         	adds	r4, #95
      7a: 3731         	adds	r7, #49
      7c: 3668         	adds	r6, #104
      7e: 3533         	adds	r5, #51
      80: 6638         	str	r0, [r7, #96]
      82: 3235         	adds	r2, #53
      84: 3336         	adds	r3, #54
      86: 3661         	adds	r6, #97
      88: 3366         	adds	r3, #102
      8a: 3338         	adds	r3, #56
      8c: 4538         	cmp	r0, r7
      8e: 5f00         	ldrsh	r0, [r0, r4]
      90: 4e5a         	ldr	r6, [pc, #360]          @ 0x1fc <.debug_str+0x1fc>
      92: 3731         	adds	r7, #49
      94: 6f63         	ldr	r3, [r4, #116]
      96: 706d         	strb	r5, [r5, #1]
      98: 6c69         	ldr	r1, [r5, #68]
      9a: 7265         	strb	r5, [r4, #9]
      9c: 625f         	str	r7, [r3, #36]
      9e: 6975         	ldr	r5, [r6, #20]
      a0: 746c         	strb	r4, [r5, #17]
      a2: 6e69         	ldr	r1, [r5, #100]
      a4: 3373         	adds	r3, #115
      a6: 7261         	strb	r1, [r4, #9]
      a8: 316d         	adds	r1, #109
      aa: 5f35         	ldrsh	r5, [r6, r4]
      ac: 615f         	str	r7, [r3, #20]
      ae: 6165         	str	r5, [r4, #20]
      b0: 6962         	ldr	r2, [r4, #20]
      b2: 6d5f         	ldr	r7, [r3, #84]
      b4: 6d65         	ldr	r5, [r4, #84]
      b6: 7063         	strb	r3, [r4, #1]
      b8: 3479         	adds	r4, #121
      ba: 3731         	adds	r7, #49
      bc: 6168         	str	r0, [r5, #20]
      be: 6538         	str	r0, [r7, #80]
      c0: 3035         	adds	r0, #53
      c2: 3966         	subs	r1, #102
      c4: 6335         	str	r5, [r6, #48]
      c6: 3132         	adds	r1, #50
      c8: 3138         	adds	r1, #56
      ca: 6464         	str	r4, [r4, #68]
      cc: 4561         	cmp	r1, r12
      ce: 5f00         	ldrsh	r0, [r0, r4]
      d0: 4e5a         	ldr	r6, [pc, #360]          @ 0x23c <.debug_str+0x23c>
      d2: 6334         	str	r4, [r6, #48]
      d4: 726f         	strb	r7, [r5, #9]
      d6: 3365         	adds	r3, #101
      d8: 7470         	strb	r0, [r6, #17]
      da: 3772         	adds	r7, #114
      dc: 756d         	strb	r5, [r5, #21]
      de: 5f74         	ldrsh	r4, [r6, r5]
      e0: 7470         	strb	r0, [r6, #17]
      e2: 3372         	adds	r3, #114
      e4: 5f31         	ldrsh	r1, [r6, r4]
      e6: 4c24         	ldr	r4, [pc, #144]          @ 0x178 <.debug_str+0x178>
      e8: 2454         	movs	r4, #84
      ea: 6d69         	ldr	r1, [r5, #84]
      ec: 6c70         	ldr	r0, [r6, #68]
      ee: 7524         	strb	r4, [r4, #20]
      f0: 3032         	adds	r0, #50
      f2: 2424         	movs	r4, #36
      f4: 5042         	str	r2, [r0, r1]
      f6: 6d24         	ldr	r4, [r4, #80]
      f8: 7475         	strb	r5, [r6, #17]
      fa: 7524         	strb	r4, [r4, #20]
      fc: 3032         	adds	r0, #50
      fe: 5424         	strb	r4, [r4, r0]
     100: 4724         	bx	r4
     102: 2454         	movs	r4, #84
     104: 6f36         	ldr	r6, [r6, #112]
     106: 6666         	str	r6, [r4, #100]
     108: 6573         	str	r3, [r6, #84]
     10a: 3174         	adds	r1, #116
     10c: 6837         	ldr	r7, [r6]
     10e: 3664         	adds	r6, #100
     110: 3261         	adds	r2, #97
     112: 3332         	adds	r3, #50
     114: 3830         	subs	r0, #48
     116: 6637         	str	r7, [r6, #96]
     118: 3139         	adds	r1, #57
     11a: 6236         	str	r6, [r6, #32]
     11c: 3965         	subs	r1, #101
     11e: 0045         	lsls	r5, r0, #1
     120: 666f         	str	r7, [r5, #100]
     122: 7366         	strb	r6, [r4, #13]
     124: 7465         	strb	r5, [r4, #17]
     126: 753c         	strb	r4, [r7, #20]
     128: 3631         	adds	r6, #49
     12a: 003e         	movs	r6, r7
     12c: 5a5f         	ldrh	r7, [r3, r1]
     12e: 314e         	adds	r1, #78
     130: 6337         	str	r7, [r6, #48]
     132: 6d6f         	ldr	r7, [r5, #84]
     134: 6970         	ldr	r0, [r6, #20]
     136: 656c         	str	r4, [r5, #84]
     138: 5f72         	ldrsh	r2, [r6, r5]
     13a: 7562         	strb	r2, [r4, #21]
     13c: 6c69         	ldr	r1, [r5, #68]
     13e: 6974         	ldr	r4, [r6, #20]
     140: 736e         	strb	r6, [r5, #13]
     142: 6d33         	ldr	r3, [r6, #80]
     144: 6d65         	ldr	r5, [r4, #84]
     146: 3034         	adds	r0, #52
     148: 5f5f         	ldrsh	r7, [r3, r5]
     14a: 6c6c         	ldr	r4, [r5, #68]
     14c: 6d76         	ldr	r6, [r6, #84]
     14e: 6d5f         	ldr	r7, [r3, #84]
     150: 6d65         	ldr	r5, [r4, #84]
     152: 6573         	str	r3, [r6, #84]
     154: 5f74         	ldrsh	r4, [r6, r5]
     156: 6c65         	ldr	r5, [r4, #68]
     158: 6d65         	ldr	r5, [r4, #84]
     15a: 6e65         	ldr	r5, [r4, #100]
     15c: 5f74         	ldrsh	r4, [r6, r5]
     15e: 6e75         	ldr	r5, [r6, #100]
     160: 726f         	strb	r7, [r5, #9]
     162: 6564         	str	r4, [r4, #84]
     164: 6572         	str	r2, [r6, #84]
     166: 5f64         	ldrsh	r4, [r4, r5]
     168: 7461         	strb	r1, [r4, #17]
     16a: 6d6f         	ldr	r7, [r5, #84]
     16c: 6369         	str	r1, [r5, #52]
     16e: 315f         	adds	r1, #95
     170: 3731         	adds	r7, #49
     172: 3568         	adds	r5, #104
     174: 3134         	adds	r1, #52
     176: 6661         	str	r1, [r4, #100]
     178: 3637         	adds	r6, #55
     17a: 3435         	adds	r4, #53
     17c: 3938         	subs	r1, #56
     17e: 3438         	adds	r4, #56
     180: 3938         	subs	r1, #56
     182: 4532         	cmp	r2, r6
     184: 5f00         	ldrsh	r0, [r0, r4]
     186: 6c5f         	ldr	r7, [r3, #68]
     188: 766c         	strb	r4, [r5, #25]
     18a: 5f6d         	ldrsh	r5, [r5, r5]
     18c: 656d         	str	r5, [r5, #84]
     18e: 736d         	strb	r5, [r5, #13]
     190: 7465         	strb	r5, [r4, #17]
     192: 655f         	str	r7, [r3, #84]
     194: 656c         	str	r4, [r5, #84]
     196: 656d         	str	r5, [r5, #84]
     198: 746e         	strb	r6, [r5, #17]
     19a: 755f         	strb	r7, [r3, #21]
     19c: 6f6e         	ldr	r6, [r5, #116]
     19e: 6472         	str	r2, [r6, #68]
     1a0: 7265         	strb	r5, [r4, #9]
     1a2: 6465         	str	r5, [r4, #68]
     1a4: 615f         	str	r7, [r3, #20]
     1a6: 6f74         	ldr	r4, [r6, #116]
     1a8: 696d         	ldr	r5, [r5, #20]
     1aa: 5f63         	ldrsh	r3, [r4, r5]
     1ac: 0031         	movs	r1, r6
     1ae: 5a5f         	ldrh	r7, [r3, r1]
     1b0: 314e         	adds	r1, #78
     1b2: 6337         	str	r7, [r6, #48]
     1b4: 6d6f         	ldr	r7, [r5, #84]
     1b6: 6970         	ldr	r0, [r6, #20]
     1b8: 656c         	str	r4, [r5, #84]
     1ba: 5f72         	ldrsh	r2, [r6, r5]
     1bc: 7562         	strb	r2, [r4, #21]
     1be: 6c69         	ldr	r1, [r5, #68]
     1c0: 6974         	ldr	r4, [r6, #20]
     1c2: 736e         	strb	r6, [r5, #13]
     1c4: 6d33         	ldr	r3, [r6, #80]
     1c6: 6d65         	ldr	r5, [r4, #84]
     1c8: 3034         	adds	r0, #52
     1ca: 5f5f         	ldrsh	r7, [r3, r5]
     1cc: 6c6c         	ldr	r4, [r5, #68]
     1ce: 6d76         	ldr	r6, [r6, #84]
     1d0: 6d5f         	ldr	r7, [r3, #84]
     1d2: 6d65         	ldr	r5, [r4, #84]
     1d4: 6573         	str	r3, [r6, #84]
     1d6: 5f74         	ldrsh	r4, [r6, r5]
     1d8: 6c65         	ldr	r5, [r4, #68]
     1da: 6d65         	ldr	r5, [r4, #84]
     1dc: 6e65         	ldr	r5, [r4, #100]
     1de: 5f74         	ldrsh	r4, [r6, r5]
     1e0: 6e75         	ldr	r5, [r6, #100]
     1e2: 726f         	strb	r7, [r5, #9]
     1e4: 6564         	str	r4, [r4, #84]
     1e6: 6572         	str	r2, [r6, #84]
     1e8: 5f64         	ldrsh	r4, [r4, r5]
     1ea: 7461         	strb	r1, [r4, #17]
     1ec: 6d6f         	ldr	r7, [r5, #84]
     1ee: 6369         	str	r1, [r5, #52]
     1f0: 345f         	adds	r4, #95
     1f2: 3731         	adds	r7, #49
     1f4: 6668         	str	r0, [r5, #100]
     1f6: 6362         	str	r2, [r4, #52]
     1f8: 3665         	adds	r6, #101
     1fa: 3634         	adds	r6, #52
     1fc: 3333         	adds	r3, #51
     1fe: 6664         	str	r4, [r4, #100]
     200: 6236         	str	r6, [r6, #32]
     202: 6465         	str	r5, [r4, #68]
     204: 4564         	cmp	r4, r12
     206: 7000         	strb	r0, [r0]
     208: 7274         	strb	r4, [r6, #9]
     20a: 5f00         	ldrsh	r0, [r0, r4]
     20c: 4e5a         	ldr	r6, [pc, #360]          @ 0x378 <.debug_str+0x378>
     20e: 3731         	adds	r7, #49
     210: 6f63         	ldr	r3, [r4, #116]
     212: 706d         	strb	r5, [r5, #1]
     214: 6c69         	ldr	r1, [r5, #68]
     216: 7265         	strb	r5, [r4, #9]
     218: 625f         	str	r7, [r3, #36]
     21a: 6975         	ldr	r5, [r6, #20]
     21c: 746c         	strb	r4, [r5, #17]
     21e: 6e69         	ldr	r1, [r5, #100]
     220: 3373         	adds	r3, #115
     222: 7261         	strb	r1, [r4, #9]
     224: 316d         	adds	r1, #109
     226: 5f34         	ldrsh	r4, [r6, r4]
     228: 615f         	str	r7, [r3, #20]
     22a: 6165         	str	r5, [r4, #20]
     22c: 6962         	ldr	r2, [r4, #20]
     22e: 6d5f         	ldr	r7, [r3, #84]
     230: 6d65         	ldr	r5, [r4, #84]
     232: 6573         	str	r3, [r6, #84]
     234: 3174         	adds	r1, #116
     236: 6837         	ldr	r7, [r6]
     238: 3962         	subs	r1, #98
     23a: 3263         	adds	r2, #99
     23c: 6334         	str	r4, [r6, #48]
     23e: 6438         	str	r0, [r7, #64]
     240: 6561         	str	r1, [r4, #84]
     242: 3136         	adds	r1, #54
     244: 3835         	subs	r0, #53
     246: 6364         	str	r4, [r4, #52]
     248: 0045         	lsls	r5, r0, #1
     24a: 5a5f         	ldrh	r7, [r3, r1]
     24c: 344e         	adds	r4, #78
     24e: 6f63         	ldr	r3, [r4, #116]
     250: 6572         	str	r2, [r6, #84]
     252: 6e33         	ldr	r3, [r6, #96]
     254: 6d75         	ldr	r5, [r6, #84]
     256: 3332         	adds	r3, #50
     258: 245f         	movs	r4, #95
     25a: 544c         	strb	r4, [r1, r1]
     25c: 6924         	ldr	r4, [r4, #16]
     25e: 706d         	strb	r5, [r5, #1]
     260: 246c         	movs	r4, #108
     262: 3275         	adds	r2, #117
     264: 2430         	movs	r4, #48
     266: 7375         	strb	r5, [r6, #13]
     268: 7a69         	ldrb	r1, [r5, #9]
     26a: 2465         	movs	r4, #101
     26c: 5447         	strb	r7, [r0, r1]
     26e: 3124         	adds	r1, #36
     270: 7732         	strb	r2, [r6, #28]
     272: 6172         	str	r2, [r6, #20]
     274: 7070         	strb	r0, [r6, #1]
     276: 6e69         	ldr	r1, [r5, #100]
     278: 5f67         	ldrsh	r7, [r4, r5]
     27a: 7573         	strb	r3, [r6, #21]
     27c: 3162         	adds	r1, #98
     27e: 6837         	ldr	r7, [r6]
     280: 3861         	subs	r0, #97
     282: 6537         	str	r7, [r6, #80]
     284: 3062         	adds	r0, #98
     286: 6532         	str	r2, [r6, #80]
     288: 3434         	adds	r4, #52
     28a: 6265         	str	r5, [r4, #36]
     28c: 3266         	adds	r2, #102
     28e: 6534         	str	r4, [r6, #80]
     290: 0045         	lsls	r5, r0, #1
     292: 7277         	strb	r7, [r6, #9]
     294: 7061         	strb	r1, [r4, #1]
     296: 6970         	ldr	r0, [r6, #20]
     298: 676e         	str	r6, [r5, #116]
     29a: 6e5f         	ldr	r7, [r3, #100]
     29c: 6765         	str	r5, [r4, #116]
     29e: 7300         	strb	r0, [r0, #12]
     2a0: 7465         	strb	r5, [r4, #17]
     2a2: 625f         	str	r7, [r3, #36]
     2a4: 7479         	strb	r1, [r7, #17]
     2a6: 7365         	strb	r5, [r4, #13]
     2a8: 775f         	strb	r7, [r3, #29]
     2aa: 726f         	strb	r7, [r5, #9]
     2ac: 7364         	strb	r4, [r4, #13]
     2ae: 5f00         	ldrsh	r0, [r0, r4]
     2b0: 4e5a         	ldr	r6, [pc, #360]          @ 0x41c <.debug_str+0x41c>
     2b2: 3731         	adds	r7, #49
     2b4: 6f63         	ldr	r3, [r4, #116]
     2b6: 706d         	strb	r5, [r5, #1]
     2b8: 6c69         	ldr	r1, [r5, #68]
     2ba: 7265         	strb	r5, [r4, #9]
     2bc: 625f         	str	r7, [r3, #36]
     2be: 6975         	ldr	r5, [r6, #20]
     2c0: 746c         	strb	r4, [r5, #17]
     2c2: 6e69         	ldr	r1, [r5, #100]
     2c4: 3373         	adds	r3, #115
     2c6: 656d         	str	r5, [r5, #84]
     2c8: 356d         	adds	r5, #109
     2ca: 6d69         	ldr	r1, [r5, #84]
     2cc: 6c70         	ldr	r0, [r6, #68]
     2ce: 3173         	adds	r1, #115
     2d0: 6333         	str	r3, [r6, #48]
     2d2: 6d6f         	ldr	r7, [r5, #84]
     2d4: 6170         	str	r0, [r6, #20]
     2d6: 6572         	str	r2, [r6, #84]
     2d8: 625f         	str	r7, [r3, #36]
     2da: 7479         	strb	r1, [r7, #17]
     2dc: 7365         	strb	r5, [r4, #13]
     2de: 3731         	adds	r7, #49
     2e0: 3668         	adds	r6, #104
     2e2: 6366         	str	r6, [r4, #52]
     2e4: 3435         	adds	r4, #53
     2e6: 3338         	adds	r3, #56
     2e8: 6463         	str	r3, [r4, #68]
     2ea: 6563         	str	r3, [r4, #84]
     2ec: 6132         	str	r2, [r6, #16]
     2ee: 3133         	adds	r1, #51
     2f0: 4531         	cmp	r1, r6
     2f2: 5f00         	ldrsh	r0, [r0, r4]
     2f4: 4e5a         	ldr	r6, [pc, #360]          @ 0x460 <.debug_str+0x460>
     2f6: 3731         	adds	r7, #49
     2f8: 6f63         	ldr	r3, [r4, #116]
     2fa: 706d         	strb	r5, [r5, #1]
     2fc: 6c69         	ldr	r1, [r5, #68]
     2fe: 7265         	strb	r5, [r4, #9]
     300: 625f         	str	r7, [r3, #36]
     302: 6975         	ldr	r5, [r6, #20]
     304: 746c         	strb	r4, [r5, #17]
     306: 6e69         	ldr	r1, [r5, #100]
     308: 3373         	adds	r3, #115
     30a: 656d         	str	r5, [r5, #84]
     30c: 366d         	adds	r6, #109
     30e: 656d         	str	r5, [r5, #84]
     310: 736d         	strb	r5, [r5, #13]
     312: 7465         	strb	r5, [r4, #17]
     314: 3731         	adds	r7, #49
     316: 3968         	subs	r1, #104
     318: 6536         	str	r6, [r6, #80]
     31a: 3965         	subs	r1, #101
     31c: 6462         	str	r2, [r4, #68]
     31e: 3038         	adds	r0, #56
     320: 3263         	adds	r2, #99
     322: 3863         	subs	r0, #99
     324: 6661         	str	r1, [r4, #100]
     326: 4534         	cmp	r4, r6
     328: 6d00         	ldr	r0, [r0, #80]
     32a: 6d65         	ldr	r5, [r4, #84]
     32c: 6d63         	ldr	r3, [r4, #84]
     32e: 0070         	lsls	r0, r6, #1
     330: 5a5f         	ldrh	r7, [r3, r1]
     332: 314e         	adds	r1, #78
     334: 6337         	str	r7, [r6, #48]
     336: 6d6f         	ldr	r7, [r5, #84]
     338: 6970         	ldr	r0, [r6, #20]
     33a: 656c         	str	r4, [r5, #84]
     33c: 5f72         	ldrsh	r2, [r6, r5]
     33e: 7562         	strb	r2, [r4, #21]
     340: 6c69         	ldr	r1, [r5, #68]
     342: 6974         	ldr	r4, [r6, #20]
     344: 736e         	strb	r6, [r5, #13]
     346: 6d33         	ldr	r3, [r6, #80]
     348: 6d65         	ldr	r5, [r4, #84]
     34a: 3034         	adds	r0, #52
     34c: 5f5f         	ldrsh	r7, [r3, r5]
     34e: 6c6c         	ldr	r4, [r5, #68]
     350: 6d76         	ldr	r6, [r6, #84]
     352: 6d5f         	ldr	r7, [r3, #84]
     354: 6d65         	ldr	r5, [r4, #84]
     356: 7063         	strb	r3, [r4, #1]
     358: 5f79         	ldrsh	r1, [r7, r5]
     35a: 6c65         	ldr	r5, [r4, #68]
     35c: 6d65         	ldr	r5, [r4, #84]
     35e: 6e65         	ldr	r5, [r4, #100]
     360: 5f74         	ldrsh	r4, [r6, r5]
     362: 6e75         	ldr	r5, [r6, #100]
     364: 726f         	strb	r7, [r5, #9]
     366: 6564         	str	r4, [r4, #84]
     368: 6572         	str	r2, [r6, #84]
     36a: 5f64         	ldrsh	r4, [r4, r5]
     36c: 7461         	strb	r1, [r4, #17]
     36e: 6d6f         	ldr	r7, [r5, #84]
     370: 6369         	str	r1, [r5, #52]
     372: 315f         	adds	r1, #95
     374: 3731         	adds	r7, #49
     376: 6568         	str	r0, [r5, #84]
     378: 3438         	adds	r4, #56
     37a: 3535         	adds	r5, #53
     37c: 6262         	str	r2, [r4, #36]
     37e: 3034         	adds	r0, #52
     380: 6531         	str	r1, [r6, #80]
     382: 3563         	adds	r5, #99
     384: 3938         	subs	r1, #56
     386: 4533         	cmp	r3, r6
     388: 5f00         	ldrsh	r0, [r0, r4]
     38a: 4e5a         	ldr	r6, [pc, #360]          @ 0x4f4 <.debug_str+0x4f4>
     38c: 3731         	adds	r7, #49
     38e: 6f63         	ldr	r3, [r4, #116]
     390: 706d         	strb	r5, [r5, #1]
     392: 6c69         	ldr	r1, [r5, #68]
     394: 7265         	strb	r5, [r4, #9]
     396: 625f         	str	r7, [r3, #36]
     398: 6975         	ldr	r5, [r6, #20]
     39a: 746c         	strb	r4, [r5, #17]
     39c: 6e69         	ldr	r1, [r5, #100]
     39e: 3373         	adds	r3, #115
     3a0: 656d         	str	r5, [r5, #84]
     3a2: 346d         	adds	r4, #109
     3a4: 5f31         	ldrsh	r1, [r6, r4]
     3a6: 6c5f         	ldr	r7, [r3, #68]
     3a8: 766c         	strb	r4, [r5, #25]
     3aa: 5f6d         	ldrsh	r5, [r5, r5]
     3ac: 656d         	str	r5, [r5, #84]
     3ae: 6d6d         	ldr	r5, [r5, #84]
     3b0: 766f         	strb	r7, [r5, #25]
     3b2: 5f65         	ldrsh	r5, [r4, r5]
     3b4: 6c65         	ldr	r5, [r4, #68]
     3b6: 6d65         	ldr	r5, [r4, #84]
     3b8: 6e65         	ldr	r5, [r4, #100]
     3ba: 5f74         	ldrsh	r4, [r6, r5]
     3bc: 6e75         	ldr	r5, [r6, #100]
     3be: 726f         	strb	r7, [r5, #9]
     3c0: 6564         	str	r4, [r4, #84]
     3c2: 6572         	str	r2, [r6, #84]
     3c4: 5f64         	ldrsh	r4, [r4, r5]
     3c6: 7461         	strb	r1, [r4, #17]
     3c8: 6d6f         	ldr	r7, [r5, #84]
     3ca: 6369         	str	r1, [r5, #52]
     3cc: 325f         	adds	r2, #95
     3ce: 3731         	adds	r7, #49
     3d0: 6568         	str	r0, [r5, #84]
     3d2: 6434         	str	r4, [r6, #64]
     3d4: 6536         	str	r6, [r6, #80]
     3d6: 3833         	subs	r0, #51
     3d8: 3132         	adds	r1, #50
     3da: 3432         	adds	r4, #50
     3dc: 6563         	str	r3, [r4, #84]
     3de: 3164         	adds	r1, #100
     3e0: 4537         	cmp	r7, r6
     3e2: 5f00         	ldrsh	r0, [r0, r4]
     3e4: 615f         	str	r7, [r3, #20]
     3e6: 6165         	str	r5, [r4, #20]
     3e8: 6962         	ldr	r2, [r4, #20]
     3ea: 6d5f         	ldr	r7, [r3, #84]
     3ec: 6d65         	ldr	r5, [r4, #84]
     3ee: 6c63         	ldr	r3, [r4, #68]
     3f0: 3472         	adds	r4, #114
     3f2: 5f00         	ldrsh	r0, [r0, r4]
     3f4: 4e5a         	ldr	r6, [pc, #360]          @ 0x560 <.debug_str+0x560>
     3f6: 3731         	adds	r7, #49
     3f8: 6f63         	ldr	r3, [r4, #116]
     3fa: 706d         	strb	r5, [r5, #1]
     3fc: 6c69         	ldr	r1, [r5, #68]
     3fe: 7265         	strb	r5, [r4, #9]
     400: 625f         	str	r7, [r3, #36]
     402: 6975         	ldr	r5, [r6, #20]
     404: 746c         	strb	r4, [r5, #17]
     406: 6e69         	ldr	r1, [r5, #100]
     408: 3373         	adds	r3, #115
     40a: 656d         	str	r5, [r5, #84]
     40c: 356d         	adds	r5, #109
     40e: 6d69         	ldr	r1, [r5, #84]
     410: 6c70         	ldr	r0, [r6, #68]
     412: 3173         	adds	r1, #115
     414: 6332         	str	r2, [r6, #48]
     416: 706f         	strb	r7, [r5, #1]
     418: 5f79         	ldrsh	r1, [r7, r5]
     41a: 6f66         	ldr	r6, [r4, #116]
     41c: 7772         	strb	r2, [r6, #29]
     41e: 7261         	strb	r1, [r4, #9]
     420: 3264         	adds	r2, #100
     422: 6339         	str	r1, [r7, #48]
     424: 706f         	strb	r7, [r5, #1]
     426: 5f79         	ldrsh	r1, [r7, r5]
     428: 6f66         	ldr	r6, [r4, #116]
     42a: 7772         	strb	r2, [r6, #29]
     42c: 7261         	strb	r1, [r4, #9]
     42e: 5f64         	ldrsh	r4, [r4, r5]
     430: 696d         	ldr	r5, [r5, #20]
     432: 6173         	str	r3, [r6, #20]
     434: 696c         	ldr	r4, [r5, #20]
     436: 6e67         	ldr	r7, [r4, #100]
     438: 6465         	str	r5, [r4, #68]
     43a: 775f         	strb	r7, [r3, #29]
     43c: 726f         	strb	r7, [r5, #9]
     43e: 7364         	strb	r4, [r4, #13]
     440: 3731         	adds	r7, #49
     442: 3268         	adds	r2, #104
     444: 6162         	str	r2, [r4, #20]
     446: 3134         	adds	r1, #52
     448: 6632         	str	r2, [r6, #96]
     44a: 3938         	subs	r1, #56
     44c: 6430         	str	r0, [r6, #64]
     44e: 6538         	str	r0, [r7, #80]
     450: 3833         	subs	r0, #51
     452: 4531         	cmp	r1, r6
     454: 5f00         	ldrsh	r0, [r0, r4]
     456: 4e5a         	ldr	r6, [pc, #360]          @ 0x5c0 <.debug_str+0x5c0>
     458: 3731         	adds	r7, #49
     45a: 6f63         	ldr	r3, [r4, #116]
     45c: 706d         	strb	r5, [r5, #1]
     45e: 6c69         	ldr	r1, [r5, #68]
     460: 7265         	strb	r5, [r4, #9]
     462: 625f         	str	r7, [r3, #36]
     464: 6975         	ldr	r5, [r6, #20]
     466: 746c         	strb	r4, [r5, #17]
     468: 6e69         	ldr	r1, [r5, #100]
     46a: 3373         	adds	r3, #115
     46c: 656d         	str	r5, [r5, #84]
     46e: 336d         	adds	r3, #109
     470: 6d31         	ldr	r1, [r6, #80]
     472: 6d65         	ldr	r5, [r4, #84]
     474: 7063         	strb	r3, [r4, #1]
     476: 5f79         	ldrsh	r1, [r7, r5]
     478: 6c65         	ldr	r5, [r4, #68]
     47a: 6d65         	ldr	r5, [r4, #84]
     47c: 6e65         	ldr	r5, [r4, #100]
     47e: 5f74         	ldrsh	r4, [r6, r5]
     480: 6e75         	ldr	r5, [r6, #100]
     482: 726f         	strb	r7, [r5, #9]
     484: 6564         	str	r4, [r4, #84]
     486: 6572         	str	r2, [r6, #84]
     488: 5f64         	ldrsh	r4, [r4, r5]
     48a: 7461         	strb	r1, [r4, #17]
     48c: 6d6f         	ldr	r7, [r5, #84]
     48e: 6369         	str	r1, [r5, #52]
     490: 3731         	adds	r7, #49
     492: 3468         	adds	r4, #104
     494: 3963         	subs	r1, #99
     496: 3037         	adds	r0, #55
     498: 6435         	str	r5, [r6, #64]
     49a: 3265         	adds	r2, #101
     49c: 3837         	subs	r0, #55
     49e: 3530         	adds	r5, #48
     4a0: 6538         	str	r0, [r7, #80]
     4a2: 4538         	cmp	r0, r7
     4a4: 5f00         	ldrsh	r0, [r0, r4]
     4a6: 4e5a         	ldr	r6, [pc, #360]          @ 0x610 <.debug_str+0x610>
     4a8: 3731         	adds	r7, #49
     4aa: 6f63         	ldr	r3, [r4, #116]
     4ac: 706d         	strb	r5, [r5, #1]
     4ae: 6c69         	ldr	r1, [r5, #68]
     4b0: 7265         	strb	r5, [r4, #9]
     4b2: 625f         	str	r7, [r3, #36]
     4b4: 6975         	ldr	r5, [r6, #20]
     4b6: 746c         	strb	r4, [r5, #17]
     4b8: 6e69         	ldr	r1, [r5, #100]
     4ba: 3373         	adds	r3, #115
     4bc: 656d         	str	r5, [r5, #84]
     4be: 346d         	adds	r4, #109
     4c0: 5f30         	ldrsh	r0, [r6, r4]
     4c2: 6c5f         	ldr	r7, [r3, #68]
     4c4: 766c         	strb	r4, [r5, #25]
     4c6: 5f6d         	ldrsh	r5, [r5, r5]
     4c8: 656d         	str	r5, [r5, #84]
     4ca: 736d         	strb	r5, [r5, #13]
     4cc: 7465         	strb	r5, [r4, #17]
     4ce: 655f         	str	r7, [r3, #84]
     4d0: 656c         	str	r4, [r5, #84]
     4d2: 656d         	str	r5, [r5, #84]
     4d4: 746e         	strb	r6, [r5, #17]
     4d6: 755f         	strb	r7, [r3, #21]
     4d8: 6f6e         	ldr	r6, [r5, #116]
     4da: 6472         	str	r2, [r6, #68]
     4dc: 7265         	strb	r5, [r4, #9]
     4de: 6465         	str	r5, [r4, #68]
     4e0: 615f         	str	r7, [r3, #20]
     4e2: 6f74         	ldr	r4, [r6, #116]
     4e4: 696d         	ldr	r5, [r5, #20]
     4e6: 5f63         	ldrsh	r3, [r4, r5]
     4e8: 3132         	adds	r1, #50
     4ea: 6837         	ldr	r7, [r6]
     4ec: 3431         	adds	r4, #49
     4ee: 3530         	adds	r5, #48
     4f0: 3865         	subs	r0, #101
     4f2: 3065         	adds	r0, #101
     4f4: 6461         	str	r1, [r4, #68]
     4f6: 3438         	adds	r4, #56
     4f8: 3838         	subs	r0, #56
     4fa: 3330         	adds	r3, #48
     4fc: 0045         	lsls	r5, r0, #1
     4fe: 656d         	str	r5, [r5, #84]
     500: 636d         	str	r5, [r5, #52]
     502: 7970         	ldrb	r0, [r6, #5]
     504: 655f         	str	r7, [r3, #84]
     506: 656c         	str	r4, [r5, #84]
     508: 656d         	str	r5, [r5, #84]
     50a: 746e         	strb	r6, [r5, #17]
     50c: 755f         	strb	r7, [r3, #21]
     50e: 6f6e         	ldr	r6, [r5, #116]
     510: 6472         	str	r2, [r6, #68]
     512: 7265         	strb	r5, [r4, #9]
     514: 6465         	str	r5, [r4, #68]
     516: 615f         	str	r7, [r3, #20]
     518: 6f74         	ldr	r4, [r6, #116]
     51a: 696d         	ldr	r5, [r5, #20]
     51c: 3c63         	subs	r4, #99
     51e: 3175         	adds	r1, #117
     520: 3e36         	subs	r6, #54
     522: 2f00         	cmp	r7, #0
     524: 6163         	str	r3, [r4, #20]
     526: 6772         	str	r2, [r6, #116]
     528: 2f6f         	cmp	r7, #111
     52a: 6572         	str	r2, [r6, #84]
     52c: 6967         	ldr	r7, [r4, #20]
     52e: 7473         	strb	r3, [r6, #17]
     530: 7972         	ldrb	r2, [r6, #5]
     532: 732f         	strb	r7, [r5, #12]
     534: 6372         	str	r2, [r6, #52]
     536: 672f         	str	r7, [r5, #112]
     538: 7469         	strb	r1, [r5, #17]
     53a: 7568         	strb	r0, [r5, #21]
     53c: 2e62         	cmp	r6, #98
     53e: 6f63         	ldr	r3, [r4, #116]
     540: 2d6d         	cmp	r5, #109
     542: 6531         	str	r1, [r6, #80]
     544: 6363         	str	r3, [r4, #52]
     546: 3236         	adds	r2, #54
     548: 3939         	subs	r1, #57
     54a: 6264         	str	r4, [r4, #36]
     54c: 6539         	str	r1, [r7, #80]
     54e: 3863         	subs	r0, #99
     550: 3332         	adds	r3, #50
     552: 632f         	str	r7, [r5, #48]
     554: 6d6f         	ldr	r7, [r5, #84]
     556: 6970         	ldr	r0, [r6, #20]
     558: 656c         	str	r4, [r5, #84]
     55a: 5f72         	ldrsh	r2, [r6, r5]
     55c: 7562         	strb	r2, [r4, #21]
     55e: 6c69         	ldr	r1, [r5, #68]
     560: 6974         	ldr	r4, [r6, #20]
     562: 736e         	strb	r6, [r5, #13]
     564: 302d         	adds	r0, #45
     566: 312e         	adds	r1, #46
     568: 382e         	subs	r0, #46
     56a: 0035         	movs	r5, r6
     56c: 756d         	strb	r5, [r5, #21]
     56e: 5f74         	ldrsh	r4, [r6, r5]
     570: 7470         	strb	r0, [r6, #17]
     572: 0072         	lsls	r2, r6, #1
     574: 6d69         	ldr	r1, [r5, #84]
     576: 6c70         	ldr	r0, [r6, #68]
     578: 0073         	lsls	r3, r6, #1
     57a: 6f63         	ldr	r3, [r4, #116]
     57c: 7970         	ldrb	r0, [r6, #5]
     57e: 665f         	str	r7, [r3, #100]
     580: 726f         	strb	r7, [r5, #9]
     582: 6177         	str	r7, [r6, #20]
     584: 6472         	str	r2, [r6, #68]
     586: 5f00         	ldrsh	r0, [r0, r4]
     588: 4e5a         	ldr	r6, [pc, #360]          @ 0x6f4 <.debug_str+0x6f4>
     58a: 3731         	adds	r7, #49
     58c: 6f63         	ldr	r3, [r4, #116]
     58e: 706d         	strb	r5, [r5, #1]
     590: 6c69         	ldr	r1, [r5, #68]
     592: 7265         	strb	r5, [r4, #9]
     594: 625f         	str	r7, [r3, #36]
     596: 6975         	ldr	r5, [r6, #20]
     598: 746c         	strb	r4, [r5, #17]
     59a: 6e69         	ldr	r1, [r5, #100]
     59c: 3373         	adds	r3, #115
     59e: 656d         	str	r5, [r5, #84]
     5a0: 336d         	adds	r3, #109
     5a2: 6d31         	ldr	r1, [r6, #80]
     5a4: 6d65         	ldr	r5, [r4, #84]
     5a6: 7063         	strb	r3, [r4, #1]
     5a8: 5f79         	ldrsh	r1, [r7, r5]
     5aa: 6c65         	ldr	r5, [r4, #68]
     5ac: 6d65         	ldr	r5, [r4, #84]
     5ae: 6e65         	ldr	r5, [r4, #100]
     5b0: 5f74         	ldrsh	r4, [r6, r5]
     5b2: 6e75         	ldr	r5, [r6, #100]
     5b4: 726f         	strb	r7, [r5, #9]
     5b6: 6564         	str	r4, [r4, #84]
     5b8: 6572         	str	r2, [r6, #84]
     5ba: 5f64         	ldrsh	r4, [r4, r5]
     5bc: 7461         	strb	r1, [r4, #17]
     5be: 6d6f         	ldr	r7, [r5, #84]
     5c0: 6369         	str	r1, [r5, #52]
     5c2: 3731         	adds	r7, #49
     5c4: 3568         	adds	r5, #104
     5c6: 6563         	str	r3, [r4, #84]
     5c8: 3035         	adds	r0, #53
     5ca: 6131         	str	r1, [r6, #16]
     5cc: 3338         	adds	r3, #56
     5ce: 3762         	adds	r7, #98
     5d0: 3437         	adds	r4, #55
     5d2: 3564         	adds	r5, #100
     5d4: 4563         	cmp	r3, r12
     5d6: 6d00         	ldr	r0, [r0, #80]
     5d8: 6d65         	ldr	r5, [r4, #84]
     5da: 6573         	str	r3, [r6, #84]
     5dc: 5f74         	ldrsh	r4, [r6, r5]
     5de: 6c65         	ldr	r5, [r4, #68]
     5e0: 6d65         	ldr	r5, [r4, #84]
     5e2: 6e65         	ldr	r5, [r4, #100]
     5e4: 5f74         	ldrsh	r4, [r6, r5]
     5e6: 6e75         	ldr	r5, [r6, #100]
     5e8: 726f         	strb	r7, [r5, #9]
     5ea: 6564         	str	r4, [r4, #84]
     5ec: 6572         	str	r2, [r6, #84]
     5ee: 5f64         	ldrsh	r4, [r4, r5]
     5f0: 7461         	strb	r1, [r4, #17]
     5f2: 6d6f         	ldr	r7, [r5, #84]
     5f4: 6369         	str	r1, [r5, #52]
     5f6: 753c         	strb	r4, [r7, #20]
     5f8: 3e38         	subs	r6, #56
     5fa: 5f00         	ldrsh	r0, [r0, r4]
     5fc: 4e5a         	ldr	r6, [pc, #360]          @ 0x768 <.debug_str+0x768>
     5fe: 6334         	str	r4, [r6, #48]
     600: 726f         	strb	r7, [r5, #9]
     602: 3365         	adds	r3, #101
     604: 7470         	strb	r0, [r6, #17]
     606: 3772         	adds	r7, #114
     608: 756d         	strb	r5, [r5, #21]
     60a: 5f74         	ldrsh	r4, [r6, r5]
     60c: 7470         	strb	r0, [r6, #17]
     60e: 3372         	adds	r3, #114
     610: 5f31         	ldrsh	r1, [r6, r4]
     612: 4c24         	ldr	r4, [pc, #144]          @ 0x6a4 <.debug_str+0x6a4>
     614: 2454         	movs	r4, #84
     616: 6d69         	ldr	r1, [r5, #84]
     618: 6c70         	ldr	r0, [r6, #68]
     61a: 7524         	strb	r4, [r4, #20]
     61c: 3032         	adds	r0, #50
     61e: 2424         	movs	r4, #36
     620: 5042         	str	r2, [r0, r1]
     622: 6d24         	ldr	r4, [r4, #80]
     624: 7475         	strb	r5, [r6, #17]
     626: 7524         	strb	r4, [r4, #20]
     628: 3032         	adds	r0, #50
     62a: 5424         	strb	r4, [r4, r0]
     62c: 4724         	bx	r4
     62e: 2454         	movs	r4, #84
     630: 6f36         	ldr	r6, [r6, #112]
     632: 6666         	str	r6, [r4, #100]
     634: 6573         	str	r3, [r6, #84]
     636: 3174         	adds	r1, #116
     638: 6837         	ldr	r7, [r6]
     63a: 3036         	adds	r0, #54
     63c: 3134         	adds	r1, #52
     63e: 3564         	adds	r5, #100
     640: 6264         	str	r4, [r4, #36]
     642: 3764         	adds	r7, #100
     644: 3161         	adds	r1, #97
     646: 3233         	adds	r2, #51
     648: 3038         	adds	r0, #56
     64a: 0045         	lsls	r5, r0, #1
     64c: 5a5f         	ldrh	r7, [r3, r1]
     64e: 314e         	adds	r1, #78
     650: 6337         	str	r7, [r6, #48]
     652: 6d6f         	ldr	r7, [r5, #84]
     654: 6970         	ldr	r0, [r6, #20]
     656: 656c         	str	r4, [r5, #84]
     658: 5f72         	ldrsh	r2, [r6, r5]
     65a: 7562         	strb	r2, [r4, #21]
     65c: 6c69         	ldr	r1, [r5, #68]
     65e: 6974         	ldr	r4, [r6, #20]
     660: 736e         	strb	r6, [r5, #13]
     662: 6d33         	ldr	r3, [r6, #80]
     664: 6d65         	ldr	r5, [r4, #84]
     666: 6935         	ldr	r5, [r6, #16]
     668: 706d         	strb	r5, [r5, #1]
     66a: 736c         	strb	r4, [r5, #13]
     66c: 3231         	adds	r2, #49
     66e: 6f63         	ldr	r3, [r4, #116]
     670: 7970         	ldrb	r0, [r6, #5]
     672: 665f         	str	r7, [r3, #100]
     674: 726f         	strb	r7, [r5, #9]
     676: 6177         	str	r7, [r6, #20]
     678: 6472         	str	r2, [r6, #68]
     67a: 3831         	subs	r0, #49
     67c: 6f63         	ldr	r3, [r4, #116]
     67e: 7970         	ldrb	r0, [r6, #5]
     680: 665f         	str	r7, [r3, #100]
     682: 726f         	strb	r7, [r5, #9]
     684: 6177         	str	r7, [r6, #20]
     686: 6472         	str	r2, [r6, #68]
     688: 625f         	str	r7, [r3, #36]
     68a: 7479         	strb	r1, [r7, #17]
     68c: 7365         	strb	r5, [r4, #13]
     68e: 3731         	adds	r7, #49
     690: 3568         	adds	r5, #104
     692: 3136         	adds	r1, #54
     694: 6639         	str	r1, [r7, #96]
     696: 6166         	str	r6, [r4, #20]
     698: 6135         	str	r5, [r6, #16]
     69a: 3166         	adds	r1, #102
     69c: 3139         	adds	r1, #57
     69e: 3562         	adds	r5, #98
     6a0: 4562         	cmp	r2, r12
     6a2: 5f00         	ldrsh	r0, [r0, r4]
     6a4: 4e5a         	ldr	r6, [pc, #360]          @ 0x810 <.debug_str+0x810>
     6a6: 6334         	str	r4, [r6, #48]
     6a8: 726f         	strb	r7, [r5, #9]
     6aa: 3365         	adds	r3, #101
     6ac: 7470         	strb	r0, [r6, #17]
     6ae: 3972         	subs	r1, #114
     6b0: 6f63         	ldr	r3, [r4, #116]
     6b2: 736e         	strb	r6, [r5, #13]
     6b4: 5f74         	ldrsh	r4, [r6, r5]
     6b6: 7470         	strb	r0, [r6, #17]
     6b8: 3372         	adds	r3, #114
     6ba: 5f33         	ldrsh	r3, [r6, r4]
     6bc: 4c24         	ldr	r4, [pc, #144]          @ 0x750 <.debug_str+0x750>
     6be: 2454         	movs	r4, #84
     6c0: 6d69         	ldr	r1, [r5, #84]
     6c2: 6c70         	ldr	r0, [r6, #68]
     6c4: 7524         	strb	r4, [r4, #20]
     6c6: 3032         	adds	r0, #50
     6c8: 2424         	movs	r4, #36
     6ca: 5042         	str	r2, [r0, r1]
     6cc: 6324         	str	r4, [r4, #48]
     6ce: 6e6f         	ldr	r7, [r5, #100]
     6d0: 7473         	strb	r3, [r6, #17]
     6d2: 7524         	strb	r4, [r4, #20]
     6d4: 3032         	adds	r0, #50
     6d6: 5424         	strb	r4, [r4, r0]
     6d8: 4724         	bx	r4
     6da: 2454         	movs	r4, #84
     6dc: 7333         	strb	r3, [r6, #12]
     6de: 6275         	str	r5, [r6, #36]
     6e0: 3731         	adds	r7, #49
     6e2: 3468         	adds	r4, #104
     6e4: 3433         	adds	r4, #51
     6e6: 3530         	adds	r5, #48
     6e8: 3134         	adds	r1, #52
     6ea: 3565         	adds	r5, #101
     6ec: 3034         	adds	r0, #52
     6ee: 3230         	adds	r2, #48
     6f0: 3665         	adds	r6, #101
     6f2: 4531         	cmp	r1, r6
     6f4: 5f00         	ldrsh	r0, [r0, r4]
     6f6: 4e5a         	ldr	r6, [pc, #360]          @ 0x860 <.debug_str+0x860>
     6f8: 3731         	adds	r7, #49
     6fa: 6f63         	ldr	r3, [r4, #116]
     6fc: 706d         	strb	r5, [r5, #1]
     6fe: 6c69         	ldr	r1, [r5, #68]
     700: 7265         	strb	r5, [r4, #9]
     702: 625f         	str	r7, [r3, #36]
     704: 6975         	ldr	r5, [r6, #20]
     706: 746c         	strb	r4, [r5, #17]
     708: 6e69         	ldr	r1, [r5, #100]
     70a: 3373         	adds	r3, #115
     70c: 656d         	str	r5, [r5, #84]
     70e: 346d         	adds	r4, #109
     710: 5f30         	ldrsh	r0, [r6, r4]
     712: 6c5f         	ldr	r7, [r3, #68]
     714: 766c         	strb	r4, [r5, #25]
     716: 5f6d         	ldrsh	r5, [r5, r5]
     718: 656d         	str	r5, [r5, #84]
     71a: 636d         	str	r5, [r5, #52]
     71c: 7970         	ldrb	r0, [r6, #5]
     71e: 655f         	str	r7, [r3, #84]
     720: 656c         	str	r4, [r5, #84]
     722: 656d         	str	r5, [r5, #84]
     724: 746e         	strb	r6, [r5, #17]
     726: 755f         	strb	r7, [r3, #21]
     728: 6f6e         	ldr	r6, [r5, #116]
     72a: 6472         	str	r2, [r6, #68]
     72c: 7265         	strb	r5, [r4, #9]
     72e: 6465         	str	r5, [r4, #68]
     730: 615f         	str	r7, [r3, #20]
     732: 6f74         	ldr	r4, [r6, #116]
     734: 696d         	ldr	r5, [r5, #20]
     736: 5f63         	ldrsh	r3, [r4, r5]
     738: 3134         	adds	r1, #52
     73a: 6837         	ldr	r7, [r6]
     73c: 6365         	str	r5, [r4, #52]
     73e: 6539         	str	r1, [r7, #80]
     740: 6639         	str	r1, [r7, #96]
     742: 3137         	adds	r1, #55
     744: 3736         	adds	r7, #54
     746: 6364         	str	r4, [r4, #52]
     748: 6337         	str	r7, [r6, #48]
     74a: 3533         	adds	r5, #51
     74c: 0045         	lsls	r5, r0, #1
     74e: 5f5f         	ldrsh	r7, [r3, r5]
     750: 6561         	str	r1, [r4, #84]
     752: 6261         	str	r1, [r4, #36]
     754: 5f69         	ldrsh	r1, [r5, r5]
     756: 656d         	str	r5, [r5, #84]
     758: 636d         	str	r5, [r5, #52]
     75a: 7970         	ldrb	r0, [r6, #5]
     75c: 5f00         	ldrsh	r0, [r0, r4]
     75e: 615f         	str	r7, [r3, #20]
     760: 6165         	str	r5, [r4, #20]
     762: 6962         	ldr	r2, [r4, #20]
     764: 6d5f         	ldr	r7, [r3, #84]
     766: 6d65         	ldr	r5, [r4, #84]
     768: 6573         	str	r3, [r6, #84]
     76a: 0074         	lsls	r4, r6, #1
     76c: 5a5f         	ldrh	r7, [r3, r1]
     76e: 314e         	adds	r1, #78
     770: 6337         	str	r7, [r6, #48]
     772: 6d6f         	ldr	r7, [r5, #84]
     774: 6970         	ldr	r0, [r6, #20]
     776: 656c         	str	r4, [r5, #84]
     778: 5f72         	ldrsh	r2, [r6, r5]
     77a: 7562         	strb	r2, [r4, #21]
     77c: 6c69         	ldr	r1, [r5, #68]
     77e: 6974         	ldr	r4, [r6, #20]
     780: 736e         	strb	r6, [r5, #13]
     782: 6133         	str	r3, [r6, #16]
     784: 6d72         	ldr	r2, [r6, #84]
     786: 3531         	adds	r5, #49
     788: 5f5f         	ldrsh	r7, [r3, r5]
     78a: 6561         	str	r1, [r4, #84]
     78c: 6261         	str	r1, [r4, #36]
     78e: 5f69         	ldrsh	r1, [r5, r5]
     790: 656d         	str	r5, [r5, #84]
     792: 736d         	strb	r5, [r5, #13]
     794: 7465         	strb	r5, [r4, #17]
     796: 3138         	adds	r1, #56
     798: 6837         	ldr	r7, [r6]
     79a: 6538         	str	r0, [r7, #80]
     79c: 6263         	str	r3, [r4, #36]
     79e: 3930         	subs	r1, #48
     7a0: 6333         	str	r3, [r6, #48]
     7a2: 3637         	adds	r6, #55
     7a4: 3062         	adds	r0, #98
     7a6: 3065         	adds	r0, #101
     7a8: 6139         	str	r1, [r7, #16]
     7aa: 0045         	lsls	r5, r0, #1
     7ac: 697b         	ldr	r3, [r7, #20]
     7ae: 706d         	strb	r5, [r5, #1]
     7b0: 236c         	movs	r3, #108
     7b2: 3231         	adds	r2, #49
     7b4: 007d         	lsls	r5, r7, #1
     7b6: 5a5f         	ldrh	r7, [r3, r1]
     7b8: 314e         	adds	r1, #78
     7ba: 6337         	str	r7, [r6, #48]
     7bc: 6d6f         	ldr	r7, [r5, #84]
     7be: 6970         	ldr	r0, [r6, #20]
     7c0: 656c         	str	r4, [r5, #84]
     7c2: 5f72         	ldrsh	r2, [r6, r5]
     7c4: 7562         	strb	r2, [r4, #21]
     7c6: 6c69         	ldr	r1, [r5, #68]
     7c8: 6974         	ldr	r4, [r6, #20]
     7ca: 736e         	strb	r6, [r5, #13]
     7cc: 6d33         	ldr	r3, [r6, #80]
     7ce: 6d65         	ldr	r5, [r4, #84]
     7d0: 6935         	ldr	r5, [r6, #16]
     7d2: 706d         	strb	r5, [r5, #1]
     7d4: 736c         	strb	r4, [r5, #13]
     7d6: 3231         	adds	r2, #49
     7d8: 6f63         	ldr	r3, [r4, #116]
     7da: 7970         	ldrb	r0, [r6, #5]
     7dc: 665f         	str	r7, [r3, #100]
     7de: 726f         	strb	r7, [r5, #9]
     7e0: 6177         	str	r7, [r6, #20]
     7e2: 6472         	str	r2, [r6, #68]
     7e4: 3632         	adds	r6, #50
     7e6: 6f63         	ldr	r3, [r4, #116]
     7e8: 7970         	ldrb	r0, [r6, #5]
     7ea: 665f         	str	r7, [r3, #100]
     7ec: 726f         	strb	r7, [r5, #9]
     7ee: 6177         	str	r7, [r6, #20]
     7f0: 6472         	str	r2, [r6, #68]
     7f2: 615f         	str	r7, [r3, #20]
     7f4: 696c         	ldr	r4, [r5, #20]
     7f6: 6e67         	ldr	r7, [r4, #100]
     7f8: 6465         	str	r5, [r4, #68]
     7fa: 775f         	strb	r7, [r3, #29]
     7fc: 726f         	strb	r7, [r5, #9]
     7fe: 7364         	strb	r4, [r4, #13]
     800: 3731         	adds	r7, #49
     802: 3068         	adds	r0, #104
     804: 3134         	adds	r1, #52
     806: 6537         	str	r7, [r6, #80]
     808: 6365         	str	r5, [r4, #52]
     80a: 6265         	str	r5, [r4, #36]
     80c: 3964         	subs	r1, #100
     80e: 3737         	adds	r7, #55
     810: 3765         	adds	r7, #101
     812: 4562         	cmp	r2, r12
     814: 5f00         	ldrsh	r0, [r0, r4]
     816: 4e5a         	ldr	r6, [pc, #360]          @ 0x980 <.debug_str+0x980>
     818: 3731         	adds	r7, #49
     81a: 6f63         	ldr	r3, [r4, #116]
     81c: 706d         	strb	r5, [r5, #1]
     81e: 6c69         	ldr	r1, [r5, #68]
     820: 7265         	strb	r5, [r4, #9]
     822: 625f         	str	r7, [r3, #36]
     824: 6975         	ldr	r5, [r6, #20]
     826: 746c         	strb	r4, [r5, #17]
     828: 6e69         	ldr	r1, [r5, #100]
     82a: 3373         	adds	r3, #115
     82c: 656d         	str	r5, [r5, #84]
     82e: 356d         	adds	r5, #109
     830: 6d69         	ldr	r1, [r5, #84]
     832: 6c70         	ldr	r0, [r6, #68]
     834: 3173         	adds	r1, #115
     836: 6333         	str	r3, [r6, #48]
     838: 706f         	strb	r7, [r5, #1]
     83a: 5f79         	ldrsh	r1, [r7, r5]
     83c: 6162         	str	r2, [r4, #20]
     83e: 6b63         	ldr	r3, [r4, #52]
     840: 6177         	str	r7, [r6, #20]
     842: 6472         	str	r2, [r6, #68]
     844: 3931         	subs	r1, #49
     846: 6f63         	ldr	r3, [r4, #116]
     848: 7970         	ldrb	r0, [r6, #5]
     84a: 625f         	str	r7, [r3, #36]
     84c: 6361         	str	r1, [r4, #52]
     84e: 776b         	strb	r3, [r5, #29]
     850: 7261         	strb	r1, [r4, #9]
     852: 5f64         	ldrsh	r4, [r4, r5]
     854: 7962         	ldrb	r2, [r4, #5]
     856: 6574         	str	r4, [r6, #84]
     858: 3173         	adds	r1, #115
     85a: 6837         	ldr	r7, [r6]
     85c: 3332         	adds	r3, #50
     85e: 3935         	subs	r1, #53
     860: 3965         	subs	r1, #101
     862: 6232         	str	r2, [r6, #32]
     864: 3136         	adds	r1, #54
     866: 3562         	adds	r5, #98
     868: 6133         	str	r3, [r6, #16]
     86a: 3630         	adds	r6, #48
     86c: 0045         	lsls	r5, r0, #1
     86e: 5a5f         	ldrh	r7, [r3, r1]
     870: 344e         	adds	r4, #78
     872: 6f63         	ldr	r3, [r4, #116]
     874: 6572         	str	r2, [r6, #84]
     876: 7033         	strb	r3, [r6]
     878: 7274         	strb	r4, [r6, #9]
     87a: 6339         	str	r1, [r7, #48]
     87c: 6e6f         	ldr	r7, [r5, #100]
     87e: 7473         	strb	r3, [r6, #17]
     880: 705f         	strb	r7, [r3, #1]
     882: 7274         	strb	r4, [r6, #9]
     884: 3333         	adds	r3, #51
     886: 245f         	movs	r4, #95
     888: 544c         	strb	r4, [r1, r1]
     88a: 6924         	ldr	r4, [r4, #16]
     88c: 706d         	strb	r5, [r5, #1]
     88e: 246c         	movs	r4, #108
     890: 3275         	adds	r2, #117
     892: 2430         	movs	r4, #48
     894: 4224         	tst	r4, r4
     896: 2450         	movs	r4, #80
     898: 6f63         	ldr	r3, [r4, #116]
     89a: 736e         	strb	r6, [r5, #13]
     89c: 2474         	movs	r4, #116
     89e: 3275         	adds	r2, #117
     8a0: 2430         	movs	r4, #48
     8a2: 2454         	movs	r4, #84
     8a4: 5447         	strb	r7, [r0, r1]
     8a6: 3324         	adds	r3, #36
     8a8: 6461         	str	r1, [r4, #68]
     8aa: 3164         	adds	r1, #100
     8ac: 6837         	ldr	r7, [r6]
     8ae: 3161         	adds	r1, #97
     8b0: 6435         	str	r5, [r6, #64]
     8b2: 6364         	str	r4, [r4, #52]
     8b4: 3735         	adds	r7, #53
     8b6: 3937         	subs	r1, #55
     8b8: 6663         	str	r3, [r4, #100]
     8ba: 3736         	adds	r7, #54
     8bc: 6463         	str	r3, [r4, #68]
     8be: 0045         	lsls	r5, r0, #1
     8c0: 5a5f         	ldrh	r7, [r3, r1]
     8c2: 314e         	adds	r1, #78
     8c4: 6337         	str	r7, [r6, #48]
     8c6: 6d6f         	ldr	r7, [r5, #84]
     8c8: 6970         	ldr	r0, [r6, #20]
     8ca: 656c         	str	r4, [r5, #84]
     8cc: 5f72         	ldrsh	r2, [r6, r5]
     8ce: 7562         	strb	r2, [r4, #21]
     8d0: 6c69         	ldr	r1, [r5, #68]
     8d2: 6974         	ldr	r4, [r6, #20]
     8d4: 736e         	strb	r6, [r5, #13]
     8d6: 6d33         	ldr	r3, [r6, #80]
     8d8: 6d65         	ldr	r5, [r4, #84]
     8da: 3133         	adds	r1, #51
     8dc: 656d         	str	r5, [r5, #84]
     8de: 736d         	strb	r5, [r5, #13]
     8e0: 7465         	strb	r5, [r4, #17]
     8e2: 655f         	str	r7, [r3, #84]
     8e4: 656c         	str	r4, [r5, #84]
     8e6: 656d         	str	r5, [r5, #84]
     8e8: 746e         	strb	r6, [r5, #17]
     8ea: 755f         	strb	r7, [r3, #21]
     8ec: 6f6e         	ldr	r6, [r5, #116]
     8ee: 6472         	str	r2, [r6, #68]
     8f0: 7265         	strb	r5, [r4, #9]
     8f2: 6465         	str	r5, [r4, #68]
     8f4: 615f         	str	r7, [r3, #20]
     8f6: 6f74         	ldr	r4, [r6, #116]
     8f8: 696d         	ldr	r5, [r5, #20]
     8fa: 3163         	adds	r1, #99
     8fc: 6837         	ldr	r7, [r6]
     8fe: 6665         	str	r5, [r4, #100]
     900: 6665         	str	r5, [r4, #100]
     902: 3536         	adds	r5, #54
     904: 3663         	adds	r6, #99
     906: 3834         	subs	r0, #52
     908: 3838         	subs	r0, #56
     90a: 3135         	adds	r1, #53
     90c: 3137         	adds	r1, #55
     90e: 0045         	lsls	r5, r0, #1
     910: 5a5f         	ldrh	r7, [r3, r1]
     912: 344e         	adds	r4, #78
     914: 6f63         	ldr	r3, [r4, #116]
     916: 6572         	str	r2, [r6, #84]
     918: 7033         	strb	r3, [r6]
     91a: 7274         	strb	r4, [r6, #9]
     91c: 6d37         	ldr	r7, [r6, #80]
     91e: 7475         	strb	r5, [r6, #17]
     920: 705f         	strb	r7, [r3, #1]
     922: 7274         	strb	r4, [r6, #9]
     924: 3133         	adds	r1, #51
     926: 245f         	movs	r4, #95
     928: 544c         	strb	r4, [r1, r1]
     92a: 6924         	ldr	r4, [r4, #16]
     92c: 706d         	strb	r5, [r5, #1]
     92e: 246c         	movs	r4, #108
     930: 3275         	adds	r2, #117
     932: 2430         	movs	r4, #48
     934: 4224         	tst	r4, r4
     936: 2450         	movs	r4, #80
     938: 756d         	strb	r5, [r5, #21]
     93a: 2474         	movs	r4, #116
     93c: 3275         	adds	r2, #117
     93e: 2430         	movs	r4, #48
     940: 2454         	movs	r4, #84
     942: 5447         	strb	r7, [r0, r1]
     944: 3624         	adds	r6, #36
     946: 666f         	str	r7, [r5, #100]
     948: 7366         	strb	r6, [r4, #13]
     94a: 7465         	strb	r5, [r4, #17]
     94c: 3731         	adds	r7, #49
     94e: 6368         	str	r0, [r5, #52]
     950: 3437         	adds	r4, #55
     952: 3539         	adds	r5, #57
     954: 3964         	subs	r1, #100
     956: 3862         	subs	r0, #98
     958: 3730         	adds	r7, #48
     95a: 6637         	str	r7, [r6, #96]
     95c: 6166         	str	r6, [r4, #20]
     95e: 4539         	cmp	r1, r7
     960: 5f00         	ldrsh	r0, [r0, r4]
     962: 4e5a         	ldr	r6, [pc, #360]          @ 0xacc <.debug_str+0xacc>
     964: 6334         	str	r4, [r6, #48]
     966: 726f         	strb	r7, [r5, #9]
     968: 3365         	adds	r3, #101
     96a: 7470         	strb	r0, [r6, #17]
     96c: 3772         	adds	r7, #114
     96e: 756d         	strb	r5, [r5, #21]
     970: 5f74         	ldrsh	r4, [r6, r5]
     972: 7470         	strb	r0, [r6, #17]
     974: 3372         	adds	r3, #114
     976: 5f31         	ldrsh	r1, [r6, r4]
     978: 4c24         	ldr	r4, [pc, #144]          @ 0xa0c <.debug_str+0xa0c>
     97a: 2454         	movs	r4, #84
     97c: 6d69         	ldr	r1, [r5, #84]
     97e: 6c70         	ldr	r0, [r6, #68]
     980: 7524         	strb	r4, [r4, #20]
     982: 3032         	adds	r0, #50
     984: 2424         	movs	r4, #36
     986: 5042         	str	r2, [r0, r1]
     988: 6d24         	ldr	r4, [r4, #80]
     98a: 7475         	strb	r5, [r6, #17]
     98c: 7524         	strb	r4, [r4, #20]
     98e: 3032         	adds	r0, #50
     990: 5424         	strb	r4, [r4, r0]
     992: 4724         	bx	r4
     994: 2454         	movs	r4, #84
     996: 6133         	str	r3, [r6, #16]
     998: 6464         	str	r4, [r4, #68]
     99a: 3731         	adds	r7, #49
     99c: 3268         	adds	r2, #104
     99e: 6235         	str	r5, [r6, #32]
     9a0: 3735         	adds	r7, #53
     9a2: 6432         	str	r2, [r6, #64]
     9a4: 3235         	adds	r2, #53
     9a6: 6663         	str	r3, [r4, #100]
     9a8: 3132         	adds	r1, #50
     9aa: 6536         	str	r6, [r6, #80]
     9ac: 4533         	cmp	r3, r6
     9ae: 6300         	str	r0, [r0, #48]
     9b0: 706f         	strb	r7, [r5, #1]
     9b2: 5f79         	ldrsh	r1, [r7, r5]
     9b4: 6162         	str	r2, [r4, #20]
     9b6: 6b63         	ldr	r3, [r4, #52]
     9b8: 6177         	str	r7, [r6, #20]
     9ba: 6472         	str	r2, [r6, #68]
     9bc: 625f         	str	r7, [r3, #36]
     9be: 7479         	strb	r1, [r7, #17]
     9c0: 7365         	strb	r5, [r4, #13]
     9c2: 6300         	str	r0, [r0, #48]
     9c4: 706f         	strb	r7, [r5, #1]
     9c6: 5f79         	ldrsh	r1, [r7, r5]
     9c8: 6162         	str	r2, [r4, #20]
     9ca: 6b63         	ldr	r3, [r4, #52]
     9cc: 6177         	str	r7, [r6, #20]
     9ce: 6472         	str	r2, [r6, #68]
     9d0: 615f         	str	r7, [r3, #20]
     9d2: 696c         	ldr	r4, [r5, #20]
     9d4: 6e67         	ldr	r7, [r4, #100]
     9d6: 6465         	str	r5, [r4, #68]
     9d8: 775f         	strb	r7, [r3, #29]
     9da: 726f         	strb	r7, [r5, #9]
     9dc: 7364         	strb	r4, [r4, #13]
     9de: 6100         	str	r0, [r0, #16]
     9e0: 6464         	str	r4, [r4, #68]
     9e2: 753c         	strb	r4, [r7, #20]
     9e4: 3233         	adds	r2, #51
     9e6: 003e         	movs	r6, r7
     9e8: 6f63         	ldr	r3, [r4, #116]
     9ea: 6572         	str	r2, [r6, #84]
     9ec: 6f00         	ldr	r0, [r0, #112]
     9ee: 6666         	str	r6, [r4, #100]
     9f0: 6573         	str	r3, [r6, #84]
     9f2: 3c74         	subs	r4, #116
     9f4: 3375         	adds	r3, #117
     9f6: 3e32         	subs	r6, #50
     9f8: 6f00         	ldr	r0, [r0, #112]
     9fa: 6666         	str	r6, [r4, #100]
     9fc: 6573         	str	r3, [r6, #84]
     9fe: 3c74         	subs	r4, #116
     a00: 7375         	strb	r5, [r6, #13]
     a02: 7a69         	ldrb	r1, [r5, #9]
     a04: 3e65         	subs	r6, #101
     a06: 5f00         	ldrsh	r0, [r0, r4]
     a08: 615f         	str	r7, [r3, #20]
     a0a: 6165         	str	r5, [r4, #20]
     a0c: 6962         	ldr	r2, [r4, #20]
     a0e: 6d5f         	ldr	r7, [r3, #84]
     a10: 6d65         	ldr	r5, [r4, #84]
     a12: 6573         	str	r3, [r6, #84]
     a14: 3874         	subs	r0, #116
     a16: 5f00         	ldrsh	r0, [r0, r4]
     a18: 4e5a         	ldr	r6, [pc, #360]          @ 0xb84 <.debug_str+0xb84>
     a1a: 3731         	adds	r7, #49
     a1c: 6f63         	ldr	r3, [r4, #116]
     a1e: 706d         	strb	r5, [r5, #1]
     a20: 6c69         	ldr	r1, [r5, #68]
     a22: 7265         	strb	r5, [r4, #9]
     a24: 625f         	str	r7, [r3, #36]
     a26: 6975         	ldr	r5, [r6, #20]
     a28: 746c         	strb	r4, [r5, #17]
     a2a: 6e69         	ldr	r1, [r5, #100]
     a2c: 3373         	adds	r3, #115
     a2e: 656d         	str	r5, [r5, #84]
     a30: 356d         	adds	r5, #109
     a32: 6d69         	ldr	r1, [r5, #84]
     a34: 6c70         	ldr	r0, [r6, #68]
     a36: 3173         	adds	r1, #115
     a38: 6332         	str	r2, [r6, #48]
     a3a: 706f         	strb	r7, [r5, #1]
     a3c: 5f79         	ldrsh	r1, [r7, r5]
     a3e: 6f66         	ldr	r6, [r4, #116]
     a40: 7772         	strb	r2, [r6, #29]
     a42: 7261         	strb	r1, [r4, #9]
     a44: 3164         	adds	r1, #100
     a46: 6837         	ldr	r7, [r6]
     a48: 6533         	str	r3, [r6, #80]
     a4a: 3739         	adds	r7, #57
     a4c: 3133         	adds	r1, #51
     a4e: 6366         	str	r6, [r4, #52]
     a50: 3639         	adds	r6, #57
     a52: 3961         	subs	r1, #97
     a54: 6237         	str	r7, [r6, #32]
     a56: 3563         	adds	r5, #99
     a58: 0045         	lsls	r5, r0, #1
     a5a: 6f63         	ldr	r3, [r4, #116]
     a5c: 7970         	ldrb	r0, [r6, #5]
     a5e: 665f         	str	r7, [r3, #100]
     a60: 726f         	strb	r7, [r5, #9]
     a62: 6177         	str	r7, [r6, #20]
     a64: 6472         	str	r2, [r6, #68]
     a66: 6d5f         	ldr	r7, [r3, #84]
     a68: 7369         	strb	r1, [r5, #13]
     a6a: 6c61         	ldr	r1, [r4, #68]
     a6c: 6769         	str	r1, [r5, #116]
     a6e: 656e         	str	r6, [r5, #84]
     a70: 5f64         	ldrsh	r4, [r4, r5]
     a72: 6f77         	ldr	r7, [r6, #116]
     a74: 6472         	str	r2, [r6, #68]
     a76: 0073         	lsls	r3, r6, #1
     a78: 5a5f         	ldrh	r7, [r3, r1]
     a7a: 314e         	adds	r1, #78
     a7c: 6337         	str	r7, [r6, #48]
     a7e: 6d6f         	ldr	r7, [r5, #84]
     a80: 6970         	ldr	r0, [r6, #20]
     a82: 656c         	str	r4, [r5, #84]
     a84: 5f72         	ldrsh	r2, [r6, r5]
     a86: 7562         	strb	r2, [r4, #21]
     a88: 6c69         	ldr	r1, [r5, #68]
     a8a: 6974         	ldr	r4, [r6, #20]
     a8c: 736e         	strb	r6, [r5, #13]
     a8e: 6d33         	ldr	r3, [r6, #80]
     a90: 6d65         	ldr	r5, [r4, #84]
     a92: 6935         	ldr	r5, [r6, #16]
     a94: 706d         	strb	r5, [r5, #1]
     a96: 736c         	strb	r4, [r5, #13]
     a98: 3331         	adds	r3, #49
     a9a: 6f63         	ldr	r3, [r4, #116]
     a9c: 7970         	ldrb	r0, [r6, #5]
     a9e: 625f         	str	r7, [r3, #36]
     aa0: 6361         	str	r1, [r4, #52]
     aa2: 776b         	strb	r3, [r5, #29]
     aa4: 7261         	strb	r1, [r4, #9]
     aa6: 3164         	adds	r1, #100
     aa8: 6837         	ldr	r7, [r6]
     aaa: 3832         	subs	r0, #50
     aac: 3032         	adds	r0, #50
     aae: 3766         	adds	r7, #102
     ab0: 3863         	subs	r0, #99
     ab2: 6263         	str	r3, [r4, #36]
     ab4: 3230         	adds	r2, #48
     ab6: 3262         	adds	r2, #98
     ab8: 6261         	str	r1, [r4, #36]
     aba: 0045         	lsls	r5, r0, #1
     abc: 6573         	str	r3, [r6, #84]
     abe: 5f74         	ldrsh	r4, [r6, r5]
     ac0: 7962         	ldrb	r2, [r4, #5]
     ac2: 6574         	str	r4, [r6, #84]
     ac4: 5f73         	ldrsh	r3, [r6, r5]
     ac6: 7962         	ldrb	r2, [r4, #5]
     ac8: 6574         	str	r4, [r6, #84]
     aca: 0073         	lsls	r3, r6, #1
     acc: 656d         	str	r5, [r5, #84]
     ace: 6d6d         	ldr	r5, [r5, #84]
     ad0: 766f         	strb	r7, [r5, #25]
     ad2: 0065         	lsls	r5, r4, #1
     ad4: 5f5f         	ldrsh	r7, [r3, r5]
     ad6: 6c6c         	ldr	r4, [r5, #68]
     ad8: 6d76         	ldr	r6, [r6, #84]
     ada: 6d5f         	ldr	r7, [r3, #84]
     adc: 6d65         	ldr	r5, [r4, #84]
     ade: 7063         	strb	r3, [r4, #1]
     ae0: 5f79         	ldrsh	r1, [r7, r5]
     ae2: 6c65         	ldr	r5, [r4, #68]
     ae4: 6d65         	ldr	r5, [r4, #84]
     ae6: 6e65         	ldr	r5, [r4, #100]
     ae8: 5f74         	ldrsh	r4, [r6, r5]
     aea: 6e75         	ldr	r5, [r6, #100]
     aec: 726f         	strb	r7, [r5, #9]
     aee: 6564         	str	r4, [r4, #84]
     af0: 6572         	str	r2, [r6, #84]
     af2: 5f64         	ldrsh	r4, [r4, r5]
     af4: 7461         	strb	r1, [r4, #17]
     af6: 6d6f         	ldr	r7, [r5, #84]
     af8: 6369         	str	r1, [r5, #52]
     afa: 315f         	adds	r1, #95
     afc: 5f00         	ldrsh	r0, [r0, r4]
     afe: 615f         	str	r7, [r3, #20]
     b00: 6165         	str	r5, [r4, #20]
     b02: 6962         	ldr	r2, [r4, #20]
     b04: 6d5f         	ldr	r7, [r3, #84]
     b06: 6d65         	ldr	r5, [r4, #84]
     b08: 7063         	strb	r3, [r4, #1]
     b0a: 3479         	adds	r4, #121
     b0c: 6100         	str	r0, [r0, #16]
     b0e: 6464         	str	r4, [r4, #68]
     b10: 753c         	strb	r4, [r7, #20]
     b12: 3631         	adds	r6, #49
     b14: 003e         	movs	r6, r7
     b16: 5a5f         	ldrh	r7, [r3, r1]
     b18: 344e         	adds	r4, #78
     b1a: 6f63         	ldr	r3, [r4, #116]
     b1c: 6572         	str	r2, [r6, #84]
     b1e: 7033         	strb	r3, [r6]
     b20: 7274         	strb	r4, [r6, #9]
     b22: 6d37         	ldr	r7, [r6, #80]
     b24: 7475         	strb	r5, [r6, #17]
     b26: 705f         	strb	r7, [r3, #1]
     b28: 7274         	strb	r4, [r6, #9]
     b2a: 3133         	adds	r1, #51
     b2c: 245f         	movs	r4, #95
     b2e: 544c         	strb	r4, [r1, r1]
     b30: 6924         	ldr	r4, [r4, #16]
     b32: 706d         	strb	r5, [r5, #1]
     b34: 246c         	movs	r4, #108
     b36: 3275         	adds	r2, #117
     b38: 2430         	movs	r4, #48
     b3a: 4224         	tst	r4, r4
     b3c: 2450         	movs	r4, #80
     b3e: 756d         	strb	r5, [r5, #21]
     b40: 2474         	movs	r4, #116
     b42: 3275         	adds	r2, #117
     b44: 2430         	movs	r4, #48
     b46: 2454         	movs	r4, #84
     b48: 5447         	strb	r7, [r0, r1]
     b4a: 3624         	adds	r6, #36
     b4c: 666f         	str	r7, [r5, #100]
     b4e: 7366         	strb	r6, [r4, #13]
     b50: 7465         	strb	r5, [r4, #17]
     b52: 3731         	adds	r7, #49
     b54: 3268         	adds	r2, #104
     b56: 6538         	str	r0, [r7, #80]
     b58: 6532         	str	r2, [r6, #80]
     b5a: 3934         	subs	r1, #52
     b5c: 6336         	str	r6, [r6, #48]
     b5e: 6136         	str	r6, [r6, #16]
     b60: 6336         	str	r6, [r6, #48]
     b62: 6130         	str	r0, [r6, #16]
     b64: 4565         	cmp	r5, r12
     b66: 6d00         	ldr	r0, [r0, #80]
     b68: 6d65         	ldr	r5, [r4, #84]
     b6a: 6573         	str	r3, [r6, #84]
     b6c: 5f74         	ldrsh	r4, [r6, r5]
     b6e: 6c65         	ldr	r5, [r4, #68]
     b70: 6d65         	ldr	r5, [r4, #84]
     b72: 6e65         	ldr	r5, [r4, #100]
     b74: 5f74         	ldrsh	r4, [r6, r5]
     b76: 6e75         	ldr	r5, [r6, #100]
     b78: 726f         	strb	r7, [r5, #9]
     b7a: 6564         	str	r4, [r4, #84]
     b7c: 6572         	str	r2, [r6, #84]
     b7e: 5f64         	ldrsh	r4, [r4, r5]
     b80: 7461         	strb	r1, [r4, #17]
     b82: 6d6f         	ldr	r7, [r5, #84]
     b84: 6369         	str	r1, [r5, #52]
     b86: 753c         	strb	r4, [r7, #20]
     b88: 3631         	adds	r6, #49
     b8a: 003e         	movs	r6, r7
     b8c: 5f5f         	ldrsh	r7, [r3, r5]
     b8e: 6c6c         	ldr	r4, [r5, #68]
     b90: 6d76         	ldr	r6, [r6, #84]
     b92: 6d5f         	ldr	r7, [r3, #84]
     b94: 6d65         	ldr	r5, [r4, #84]
     b96: 6f6d         	ldr	r5, [r5, #116]
     b98: 6576         	str	r6, [r6, #84]
     b9a: 655f         	str	r7, [r3, #84]
     b9c: 656c         	str	r4, [r5, #84]
     b9e: 656d         	str	r5, [r5, #84]
     ba0: 746e         	strb	r6, [r5, #17]
     ba2: 755f         	strb	r7, [r3, #21]
     ba4: 6f6e         	ldr	r6, [r5, #116]
     ba6: 6472         	str	r2, [r6, #68]
     ba8: 7265         	strb	r5, [r4, #9]
     baa: 6465         	str	r5, [r4, #68]
     bac: 615f         	str	r7, [r3, #20]
     bae: 6f74         	ldr	r4, [r6, #116]
     bb0: 696d         	ldr	r5, [r5, #20]
     bb2: 5f63         	ldrsh	r3, [r4, r5]
     bb4: 0031         	movs	r1, r6
     bb6: 6f63         	ldr	r3, [r4, #116]
     bb8: 706d         	strb	r5, [r5, #1]
     bba: 6c69         	ldr	r1, [r5, #68]
     bbc: 7265         	strb	r5, [r4, #9]
     bbe: 625f         	str	r7, [r3, #36]
     bc0: 6975         	ldr	r5, [r6, #20]
     bc2: 746c         	strb	r4, [r5, #17]
     bc4: 6e69         	ldr	r1, [r5, #100]
     bc6: 0073         	lsls	r3, r6, #1
     bc8: 5f5f         	ldrsh	r7, [r3, r5]
     bca: 6561         	str	r1, [r4, #84]
     bcc: 6261         	str	r1, [r4, #36]
     bce: 5f69         	ldrsh	r1, [r5, r5]
     bd0: 656d         	str	r5, [r5, #84]
     bd2: 636d         	str	r5, [r5, #52]
     bd4: 7970         	ldrb	r0, [r6, #5]
     bd6: 0038         	movs	r0, r7
     bd8: 5f5f         	ldrsh	r7, [r3, r5]
     bda: 6561         	str	r1, [r4, #84]
     bdc: 6261         	str	r1, [r4, #36]
     bde: 5f69         	ldrsh	r1, [r5, r5]
     be0: 656d         	str	r5, [r5, #84]
     be2: 736d         	strb	r5, [r5, #13]
     be4: 7465         	strb	r5, [r4, #17]
     be6: 0034         	movs	r4, r6
     be8: 6461         	str	r1, [r4, #68]
     bea: 3c64         	subs	r4, #100
     bec: 3875         	subs	r0, #117
     bee: 003e         	movs	r6, r7
     bf0: 6f63         	ldr	r3, [r4, #116]
     bf2: 7970         	ldrb	r0, [r6, #5]
     bf4: 665f         	str	r7, [r3, #100]
     bf6: 726f         	strb	r7, [r5, #9]
     bf8: 6177         	str	r7, [r6, #20]
     bfa: 6472         	str	r2, [r6, #68]
     bfc: 615f         	str	r7, [r3, #20]
     bfe: 696c         	ldr	r4, [r5, #20]
     c00: 6e67         	ldr	r7, [r4, #100]
     c02: 6465         	str	r5, [r4, #68]
     c04: 775f         	strb	r7, [r3, #29]
     c06: 726f         	strb	r7, [r5, #9]
     c08: 7364         	strb	r4, [r4, #13]
     c0a: 5f00         	ldrsh	r0, [r0, r4]
     c0c: 4e5a         	ldr	r6, [pc, #360]          @ 0xd78 <.debug_str+0xd78>
     c0e: 6334         	str	r4, [r6, #48]
     c10: 726f         	strb	r7, [r5, #9]
     c12: 3365         	adds	r3, #101
     c14: 756e         	strb	r6, [r5, #21]
     c16: 326d         	adds	r2, #109
     c18: 5f33         	ldrsh	r3, [r6, r4]
     c1a: 4c24         	ldr	r4, [pc, #144]          @ 0xcac <.debug_str+0xcac>
     c1c: 2454         	movs	r4, #84
     c1e: 6d69         	ldr	r1, [r5, #84]
     c20: 6c70         	ldr	r0, [r6, #68]
     c22: 7524         	strb	r4, [r4, #20]
     c24: 3032         	adds	r0, #50
     c26: 6924         	ldr	r4, [r4, #16]
     c28: 6973         	ldr	r3, [r6, #20]
     c2a: 657a         	str	r2, [r7, #84]
     c2c: 4724         	bx	r4
     c2e: 2454         	movs	r4, #84
     c30: 3231         	adds	r2, #49
     c32: 7277         	strb	r7, [r6, #9]
     c34: 7061         	strb	r1, [r4, #1]
     c36: 6970         	ldr	r0, [r6, #20]
     c38: 676e         	str	r6, [r5, #116]
     c3a: 735f         	strb	r7, [r3, #13]
     c3c: 6275         	str	r5, [r6, #36]
     c3e: 3731         	adds	r7, #49
     c40: 3768         	adds	r7, #104
     c42: 3337         	adds	r3, #55
     c44: 3937         	subs	r1, #55
     c46: 3735         	adds	r7, #53
     c48: 6339         	str	r1, [r7, #48]
     c4a: 6237         	str	r7, [r6, #32]
     c4c: 6161         	str	r1, [r4, #20]
     c4e: 6438         	str	r0, [r7, #64]
     c50: 4533         	cmp	r3, r6
     c52: 5f00         	ldrsh	r0, [r0, r4]
     c54: 4e5a         	ldr	r6, [pc, #360]          @ 0xdc0 <.debug_str+0xdc0>
     c56: 6334         	str	r4, [r6, #48]
     c58: 726f         	strb	r7, [r5, #9]
     c5a: 3365         	adds	r3, #101
     c5c: 756e         	strb	r6, [r5, #21]
     c5e: 326d         	adds	r2, #109
     c60: 5f33         	ldrsh	r3, [r6, r4]
     c62: 4c24         	ldr	r4, [pc, #144]          @ 0xcf4 <.debug_str+0xcf4>
     c64: 2454         	movs	r4, #84
     c66: 6d69         	ldr	r1, [r5, #84]
     c68: 6c70         	ldr	r0, [r6, #68]
     c6a: 7524         	strb	r4, [r4, #20]
     c6c: 3032         	adds	r0, #50
     c6e: 6924         	ldr	r4, [r4, #16]
     c70: 6973         	ldr	r3, [r6, #20]
     c72: 657a         	str	r2, [r7, #84]
     c74: 4724         	bx	r4
     c76: 2454         	movs	r4, #84
     c78: 3231         	adds	r2, #49
     c7a: 7277         	strb	r7, [r6, #9]
     c7c: 7061         	strb	r1, [r4, #1]
     c7e: 6970         	ldr	r0, [r6, #20]
     c80: 676e         	str	r6, [r5, #116]
     c82: 6e5f         	ldr	r7, [r3, #100]
     c84: 6765         	str	r5, [r4, #116]
     c86: 3731         	adds	r7, #49
     c88: 3168         	adds	r1, #104
     c8a: 6434         	str	r4, [r6, #64]
     c8c: 3463         	adds	r4, #99
     c8e: 3432         	adds	r4, #50
     c90: 6439         	str	r1, [r7, #64]
     c92: 6565         	str	r5, [r4, #84]
     c94: 6336         	str	r6, [r6, #48]
     c96: 3032         	adds	r0, #50
     c98: 4565         	cmp	r5, r12
     c9a: 5f00         	ldrsh	r0, [r0, r4]
     c9c: 6c5f         	ldr	r7, [r3, #68]
     c9e: 766c         	strb	r4, [r5, #25]
     ca0: 5f6d         	ldrsh	r5, [r5, r5]
     ca2: 656d         	str	r5, [r5, #84]
     ca4: 736d         	strb	r5, [r5, #13]
     ca6: 7465         	strb	r5, [r4, #17]
     ca8: 655f         	str	r7, [r3, #84]
     caa: 656c         	str	r4, [r5, #84]
     cac: 656d         	str	r5, [r5, #84]
     cae: 746e         	strb	r6, [r5, #17]
     cb0: 755f         	strb	r7, [r3, #21]
     cb2: 6f6e         	ldr	r6, [r5, #116]
     cb4: 6472         	str	r2, [r6, #68]
     cb6: 7265         	strb	r5, [r4, #9]
     cb8: 6465         	str	r5, [r4, #68]
     cba: 615f         	str	r7, [r3, #20]
     cbc: 6f74         	ldr	r4, [r6, #116]
     cbe: 696d         	ldr	r5, [r5, #20]
     cc0: 5f63         	ldrsh	r3, [r4, r5]
     cc2: 0032         	movs	r2, r6
     cc4: 632f         	str	r7, [r5, #48]
     cc6: 7261         	strb	r1, [r4, #9]
     cc8: 6f67         	ldr	r7, [r4, #116]
     cca: 722f         	strb	r7, [r5, #8]
     ccc: 6765         	str	r5, [r4, #116]
     cce: 7369         	strb	r1, [r5, #13]
     cd0: 7274         	strb	r4, [r6, #9]
     cd2: 2f79         	cmp	r7, #121
     cd4: 7273         	strb	r3, [r6, #9]
     cd6: 2f63         	cmp	r7, #99
     cd8: 6967         	ldr	r7, [r4, #20]
     cda: 6874         	ldr	r4, [r6, #4]
     cdc: 6275         	str	r5, [r6, #36]
     cde: 632e         	str	r6, [r5, #48]
     ce0: 6d6f         	ldr	r7, [r5, #84]
     ce2: 312d         	adds	r1, #45
     ce4: 6365         	str	r5, [r4, #52]
     ce6: 3663         	adds	r6, #99
     ce8: 3932         	subs	r1, #50
     cea: 6439         	str	r1, [r7, #64]
     cec: 3962         	subs	r1, #98
     cee: 6365         	str	r5, [r4, #52]
     cf0: 3238         	adds	r2, #56
     cf2: 2f33         	cmp	r7, #51
     cf4: 6f63         	ldr	r3, [r4, #116]
     cf6: 706d         	strb	r5, [r5, #1]
     cf8: 6c69         	ldr	r1, [r5, #68]
     cfa: 7265         	strb	r5, [r4, #9]
     cfc: 625f         	str	r7, [r3, #36]
     cfe: 6975         	ldr	r5, [r6, #20]
     d00: 746c         	strb	r4, [r5, #17]
     d02: 6e69         	ldr	r1, [r5, #100]
     d04: 2d73         	cmp	r5, #115
     d06: 2e30         	cmp	r6, #48
     d08: 2e31         	cmp	r6, #49
     d0a: 3538         	adds	r5, #56
     d0c: 732f         	strb	r7, [r5, #12]
     d0e: 6372         	str	r2, [r6, #52]
     d10: 6c2f         	ldr	r7, [r5, #64]
     d12: 6269         	str	r1, [r5, #36]
     d14: 722e         	strb	r6, [r5, #8]
     d16: 2f73         	cmp	r7, #115
     d18: 2f40         	cmp	r7, #64
     d1a: 6f63         	ldr	r3, [r4, #116]
     d1c: 706d         	strb	r5, [r5, #1]
     d1e: 6c69         	ldr	r1, [r5, #68]
     d20: 7265         	strb	r5, [r4, #9]
     d22: 625f         	str	r7, [r3, #36]
     d24: 6975         	ldr	r5, [r6, #20]
     d26: 746c         	strb	r4, [r5, #17]
     d28: 6e69         	ldr	r1, [r5, #100]
     d2a: 2e73         	cmp	r6, #115
     d2c: 6237         	str	r7, [r6, #32]
     d2e: 6561         	str	r1, [r4, #84]
     d30: 3266         	adds	r2, #102
     d32: 3364         	adds	r3, #100
     d34: 632d         	str	r5, [r5, #48]
     d36: 7567         	strb	r7, [r4, #21]
     d38: 392e         	subs	r1, #46
     d3a: 0036         	movs	r6, r6
     d3c: 5a5f         	ldrh	r7, [r3, r1]
     d3e: 344e         	adds	r4, #78
     d40: 6f63         	ldr	r3, [r4, #116]
     d42: 6572         	str	r2, [r6, #84]
     d44: 7033         	strb	r3, [r6]
     d46: 7274         	strb	r4, [r6, #9]
     d48: 6339         	str	r1, [r7, #48]
     d4a: 6e6f         	ldr	r7, [r5, #100]
     d4c: 7473         	strb	r3, [r6, #17]
     d4e: 705f         	strb	r7, [r3, #1]
     d50: 7274         	strb	r4, [r6, #9]
     d52: 3333         	adds	r3, #51
     d54: 245f         	movs	r4, #95
     d56: 544c         	strb	r4, [r1, r1]
     d58: 6924         	ldr	r4, [r4, #16]
     d5a: 706d         	strb	r5, [r5, #1]
     d5c: 246c         	movs	r4, #108
     d5e: 3275         	adds	r2, #117
     d60: 2430         	movs	r4, #48
     d62: 4224         	tst	r4, r4
     d64: 2450         	movs	r4, #80
     d66: 6f63         	ldr	r3, [r4, #116]
     d68: 736e         	strb	r6, [r5, #13]
     d6a: 2474         	movs	r4, #116
     d6c: 3275         	adds	r2, #117
     d6e: 2430         	movs	r4, #48
     d70: 2454         	movs	r4, #84
     d72: 5447         	strb	r7, [r0, r1]
     d74: 3324         	adds	r3, #36
     d76: 6461         	str	r1, [r4, #68]
     d78: 3164         	adds	r1, #100
     d7a: 6837         	ldr	r7, [r6]
     d7c: 6532         	str	r2, [r6, #80]
     d7e: 3636         	adds	r6, #54
     d80: 6131         	str	r1, [r6, #16]
     d82: 6661         	str	r1, [r4, #100]
     d84: 6661         	str	r1, [r4, #100]
     d86: 3863         	subs	r0, #99
     d88: 3635         	adds	r6, #53
     d8a: 3738         	adds	r7, #56
     d8c: 0045         	lsls	r5, r0, #1
     d8e: 5f5f         	ldrsh	r7, [r3, r5]
     d90: 6c6c         	ldr	r4, [r5, #68]
     d92: 6d76         	ldr	r6, [r6, #84]
     d94: 6d5f         	ldr	r7, [r3, #84]
     d96: 6d65         	ldr	r5, [r4, #84]
     d98: 7063         	strb	r3, [r4, #1]
     d9a: 5f79         	ldrsh	r1, [r7, r5]
     d9c: 6c65         	ldr	r5, [r4, #68]
     d9e: 6d65         	ldr	r5, [r4, #84]
     da0: 6e65         	ldr	r5, [r4, #100]
     da2: 5f74         	ldrsh	r4, [r6, r5]
     da4: 6e75         	ldr	r5, [r6, #100]
     da6: 726f         	strb	r7, [r5, #9]
     da8: 6564         	str	r4, [r4, #84]
     daa: 6572         	str	r2, [r6, #84]
     dac: 5f64         	ldrsh	r4, [r4, r5]
     dae: 7461         	strb	r1, [r4, #17]
     db0: 6d6f         	ldr	r7, [r5, #84]
     db2: 6369         	str	r1, [r5, #52]
     db4: 345f         	adds	r4, #95
     db6: 5f00         	ldrsh	r0, [r0, r4]
     db8: 6c5f         	ldr	r7, [r3, #68]
     dba: 766c         	strb	r4, [r5, #25]
     dbc: 5f6d         	ldrsh	r5, [r5, r5]
     dbe: 656d         	str	r5, [r5, #84]
     dc0: 736d         	strb	r5, [r5, #13]
     dc2: 7465         	strb	r5, [r4, #17]
     dc4: 655f         	str	r7, [r3, #84]
     dc6: 656c         	str	r4, [r5, #84]
     dc8: 656d         	str	r5, [r5, #84]
     dca: 746e         	strb	r6, [r5, #17]
     dcc: 755f         	strb	r7, [r3, #21]
     dce: 6f6e         	ldr	r6, [r5, #116]
     dd0: 6472         	str	r2, [r6, #68]
     dd2: 7265         	strb	r5, [r4, #9]
     dd4: 6465         	str	r5, [r4, #68]
     dd6: 615f         	str	r7, [r3, #20]
     dd8: 6f74         	ldr	r4, [r6, #116]
     dda: 696d         	ldr	r5, [r5, #20]
     ddc: 5f63         	ldrsh	r3, [r4, r5]
     dde: 0034         	movs	r4, r6
     de0: 5a5f         	ldrh	r7, [r3, r1]
     de2: 344e         	adds	r4, #78
     de4: 6f63         	ldr	r3, [r4, #116]
     de6: 6572         	str	r2, [r6, #84]
     de8: 7033         	strb	r3, [r6]
     dea: 7274         	strb	r4, [r6, #9]
     dec: 6339         	str	r1, [r7, #48]
     dee: 6e6f         	ldr	r7, [r5, #100]
     df0: 7473         	strb	r3, [r6, #17]
     df2: 705f         	strb	r7, [r3, #1]
     df4: 7274         	strb	r4, [r6, #9]
     df6: 3333         	adds	r3, #51
     df8: 245f         	movs	r4, #95
     dfa: 544c         	strb	r4, [r1, r1]
     dfc: 6924         	ldr	r4, [r4, #16]
     dfe: 706d         	strb	r5, [r5, #1]
     e00: 246c         	movs	r4, #108
     e02: 3275         	adds	r2, #117
     e04: 2430         	movs	r4, #48
     e06: 4224         	tst	r4, r4
     e08: 2450         	movs	r4, #80
     e0a: 6f63         	ldr	r3, [r4, #116]
     e0c: 736e         	strb	r6, [r5, #13]
     e0e: 2474         	movs	r4, #116
     e10: 3275         	adds	r2, #117
     e12: 2430         	movs	r4, #48
     e14: 2454         	movs	r4, #84
     e16: 5447         	strb	r7, [r0, r1]
     e18: 3324         	adds	r3, #36
     e1a: 6461         	str	r1, [r4, #68]
     e1c: 3164         	adds	r1, #100
     e1e: 6837         	ldr	r7, [r6]
     e20: 3866         	subs	r0, #102
     e22: 6165         	str	r5, [r4, #20]
     e24: 3666         	adds	r6, #102
     e26: 6435         	str	r5, [r6, #64]
     e28: 6362         	str	r2, [r4, #52]
     e2a: 3664         	adds	r6, #100
     e2c: 6235         	str	r5, [r6, #32]
     e2e: 3165         	adds	r1, #101
     e30: 0045         	lsls	r5, r0, #1
     e32: 5a5f         	ldrh	r7, [r3, r1]
     e34: 344e         	adds	r4, #78
     e36: 6f63         	ldr	r3, [r4, #116]
     e38: 6572         	str	r2, [r6, #84]
     e3a: 7033         	strb	r3, [r6]
     e3c: 7274         	strb	r4, [r6, #9]
     e3e: 6d37         	ldr	r7, [r6, #80]
     e40: 7475         	strb	r5, [r6, #17]
     e42: 705f         	strb	r7, [r3, #1]
     e44: 7274         	strb	r4, [r6, #9]
     e46: 3133         	adds	r1, #51
     e48: 245f         	movs	r4, #95
     e4a: 544c         	strb	r4, [r1, r1]
     e4c: 6924         	ldr	r4, [r4, #16]
     e4e: 706d         	strb	r5, [r5, #1]
     e50: 246c         	movs	r4, #108
     e52: 3275         	adds	r2, #117
     e54: 2430         	movs	r4, #48
     e56: 4224         	tst	r4, r4
     e58: 2450         	movs	r4, #80
     e5a: 756d         	strb	r5, [r5, #21]
     e5c: 2474         	movs	r4, #116
     e5e: 3275         	adds	r2, #117
     e60: 2430         	movs	r4, #48
     e62: 2454         	movs	r4, #84
     e64: 5447         	strb	r7, [r0, r1]
     e66: 3324         	adds	r3, #36
     e68: 7573         	strb	r3, [r6, #21]
     e6a: 3162         	adds	r1, #98
     e6c: 6837         	ldr	r7, [r6]
     e6e: 3233         	adds	r2, #51
     e70: 3561         	adds	r5, #97
     e72: 6335         	str	r5, [r6, #48]
     e74: 6439         	str	r1, [r7, #64]
     e76: 3264         	adds	r2, #100
     e78: 6132         	str	r2, [r6, #16]
     e7a: 3239         	adds	r2, #57
     e7c: 6636         	str	r6, [r6, #96]
     e7e: 0045         	lsls	r5, r0, #1
     e80: 6573         	str	r3, [r6, #84]
     e82: 5f74         	ldrsh	r4, [r6, r5]
     e84: 7962         	ldrb	r2, [r4, #5]
     e86: 6574         	str	r4, [r6, #84]
     e88: 0073         	lsls	r3, r6, #1
     e8a: 656d         	str	r5, [r5, #84]
     e8c: 6d6d         	ldr	r5, [r5, #84]
     e8e: 766f         	strb	r7, [r5, #25]
     e90: 5f65         	ldrsh	r5, [r4, r5]
     e92: 6c65         	ldr	r5, [r4, #68]
     e94: 6d65         	ldr	r5, [r4, #84]
     e96: 6e65         	ldr	r5, [r4, #100]
     e98: 5f74         	ldrsh	r4, [r6, r5]
     e9a: 6e75         	ldr	r5, [r6, #100]
     e9c: 726f         	strb	r7, [r5, #9]
     e9e: 6564         	str	r4, [r4, #84]
     ea0: 6572         	str	r2, [r6, #84]
     ea2: 5f64         	ldrsh	r4, [r4, r5]
     ea4: 7461         	strb	r1, [r4, #17]
     ea6: 6d6f         	ldr	r7, [r5, #84]
     ea8: 6369         	str	r1, [r5, #52]
     eaa: 753c         	strb	r4, [r7, #20]
     eac: 3233         	adds	r2, #51
     eae: 003e         	movs	r6, r7
     eb0: 656d         	str	r5, [r5, #84]
     eb2: 736d         	strb	r5, [r5, #13]
     eb4: 7465         	strb	r5, [r4, #17]
     eb6: 5f00         	ldrsh	r0, [r0, r4]
     eb8: 4e5a         	ldr	r6, [pc, #360]          @ 0x1024 <.debug_str+0x1024>
     eba: 3731         	adds	r7, #49
     ebc: 6f63         	ldr	r3, [r4, #116]
     ebe: 706d         	strb	r5, [r5, #1]
     ec0: 6c69         	ldr	r1, [r5, #68]
     ec2: 7265         	strb	r5, [r4, #9]
     ec4: 625f         	str	r7, [r3, #36]
     ec6: 6975         	ldr	r5, [r6, #20]
     ec8: 746c         	strb	r4, [r5, #17]
     eca: 6e69         	ldr	r1, [r5, #100]
     ecc: 3373         	adds	r3, #115
     ece: 656d         	str	r5, [r5, #84]
     ed0: 346d         	adds	r4, #109
     ed2: 5f31         	ldrsh	r1, [r6, r4]
     ed4: 6c5f         	ldr	r7, [r3, #68]
     ed6: 766c         	strb	r4, [r5, #25]
     ed8: 5f6d         	ldrsh	r5, [r5, r5]
     eda: 656d         	str	r5, [r5, #84]
     edc: 6d6d         	ldr	r5, [r5, #84]
     ede: 766f         	strb	r7, [r5, #25]
     ee0: 5f65         	ldrsh	r5, [r4, r5]
     ee2: 6c65         	ldr	r5, [r4, #68]
     ee4: 6d65         	ldr	r5, [r4, #84]
     ee6: 6e65         	ldr	r5, [r4, #100]
     ee8: 5f74         	ldrsh	r4, [r6, r5]
     eea: 6e75         	ldr	r5, [r6, #100]
     eec: 726f         	strb	r7, [r5, #9]
     eee: 6564         	str	r4, [r4, #84]
     ef0: 6572         	str	r2, [r6, #84]
     ef2: 5f64         	ldrsh	r4, [r4, r5]
     ef4: 7461         	strb	r1, [r4, #17]
     ef6: 6d6f         	ldr	r7, [r5, #84]
     ef8: 6369         	str	r1, [r5, #52]
     efa: 315f         	adds	r1, #95
     efc: 3731         	adds	r7, #49
     efe: 3568         	adds	r5, #104
     f00: 3864         	subs	r0, #100
     f02: 3034         	adds	r0, #52
     f04: 6363         	str	r3, [r4, #52]
     f06: 3166         	adds	r1, #102
     f08: 3363         	adds	r3, #99
     f0a: 3030         	adds	r0, #48
     f0c: 3437         	adds	r4, #55
     f0e: 4563         	cmp	r3, r12
     f10: 6f00         	ldr	r0, [r0, #112]
     f12: 6666         	str	r6, [r4, #100]
     f14: 6573         	str	r3, [r6, #84]
     f16: 3c74         	subs	r4, #116
     f18: 3875         	subs	r0, #117
     f1a: 003e         	movs	r6, r7
     f1c: 5a5f         	ldrh	r7, [r3, r1]
     f1e: 314e         	adds	r1, #78
     f20: 6337         	str	r7, [r6, #48]
     f22: 6d6f         	ldr	r7, [r5, #84]
     f24: 6970         	ldr	r0, [r6, #20]
     f26: 656c         	str	r4, [r5, #84]
     f28: 5f72         	ldrsh	r2, [r6, r5]
     f2a: 7562         	strb	r2, [r4, #21]
     f2c: 6c69         	ldr	r1, [r5, #68]
     f2e: 6974         	ldr	r4, [r6, #20]
     f30: 736e         	strb	r6, [r5, #13]
     f32: 6d33         	ldr	r3, [r6, #80]
     f34: 6d65         	ldr	r5, [r4, #84]
     f36: 6d36         	ldr	r6, [r6, #80]
     f38: 6d65         	ldr	r5, [r4, #84]
     f3a: 6d63         	ldr	r3, [r4, #84]
     f3c: 3170         	adds	r1, #112
     f3e: 6837         	ldr	r7, [r6]
     f40: 3236         	adds	r2, #54
     f42: 3239         	adds	r2, #57
     f44: 3638         	adds	r6, #56
     f46: 6163         	str	r3, [r4, #20]
     f48: 3832         	subs	r0, #50
     f4a: 3933         	subs	r1, #51
     f4c: 3436         	adds	r4, #54
     f4e: 3139         	adds	r1, #57
     f50: 0045         	lsls	r5, r0, #1
     f52: 5a5f         	ldrh	r7, [r3, r1]
     f54: 314e         	adds	r1, #78
     f56: 6337         	str	r7, [r6, #48]
     f58: 6d6f         	ldr	r7, [r5, #84]
     f5a: 6970         	ldr	r0, [r6, #20]
     f5c: 656c         	str	r4, [r5, #84]
     f5e: 5f72         	ldrsh	r2, [r6, r5]
     f60: 7562         	strb	r2, [r4, #21]
     f62: 6c69         	ldr	r1, [r5, #68]
     f64: 6974         	ldr	r4, [r6, #20]
     f66: 736e         	strb	r6, [r5, #13]
     f68: 6133         	str	r3, [r6, #16]
     f6a: 6d72         	ldr	r2, [r6, #84]
     f6c: 3531         	adds	r5, #49
     f6e: 5f5f         	ldrsh	r7, [r3, r5]
     f70: 6561         	str	r1, [r4, #84]
     f72: 6261         	str	r1, [r4, #36]
     f74: 5f69         	ldrsh	r1, [r5, r5]
     f76: 656d         	str	r5, [r5, #84]
     f78: 6d6d         	ldr	r5, [r5, #84]
     f7a: 766f         	strb	r7, [r5, #25]
     f7c: 3165         	adds	r1, #101
     f7e: 6837         	ldr	r7, [r6]
     f80: 6137         	str	r7, [r6, #16]
     f82: 6636         	str	r6, [r6, #96]
     f84: 3862         	subs	r0, #98
     f86: 3239         	adds	r2, #57
     f88: 3363         	adds	r3, #99
     f8a: 3931         	subs	r1, #49
     f8c: 3039         	adds	r0, #57
     f8e: 6337         	str	r7, [r6, #48]
     f90: 0045         	lsls	r5, r0, #1
     f92: 5a5f         	ldrh	r7, [r3, r1]
     f94: 344e         	adds	r4, #78
     f96: 6f63         	ldr	r3, [r4, #116]
     f98: 6572         	str	r2, [r6, #84]
     f9a: 7033         	strb	r3, [r6]
     f9c: 7274         	strb	r4, [r6, #9]
     f9e: 6339         	str	r1, [r7, #48]
     fa0: 6e6f         	ldr	r7, [r5, #100]
     fa2: 7473         	strb	r3, [r6, #17]
     fa4: 705f         	strb	r7, [r3, #1]
     fa6: 7274         	strb	r4, [r6, #9]
     fa8: 3333         	adds	r3, #51
     faa: 245f         	movs	r4, #95
     fac: 544c         	strb	r4, [r1, r1]
     fae: 6924         	ldr	r4, [r4, #16]
     fb0: 706d         	strb	r5, [r5, #1]
     fb2: 246c         	movs	r4, #108
     fb4: 3275         	adds	r2, #117
     fb6: 2430         	movs	r4, #48
     fb8: 4224         	tst	r4, r4
     fba: 2450         	movs	r4, #80
     fbc: 6f63         	ldr	r3, [r4, #116]
     fbe: 736e         	strb	r6, [r5, #13]
     fc0: 2474         	movs	r4, #116
     fc2: 3275         	adds	r2, #117
     fc4: 2430         	movs	r4, #48
     fc6: 2454         	movs	r4, #84
     fc8: 5447         	strb	r7, [r0, r1]
     fca: 3624         	adds	r6, #36
     fcc: 666f         	str	r7, [r5, #100]
     fce: 7366         	strb	r6, [r4, #13]
     fd0: 7465         	strb	r5, [r4, #17]
     fd2: 3731         	adds	r7, #49
     fd4: 3068         	adds	r0, #104
     fd6: 3866         	subs	r0, #102
     fd8: 3265         	adds	r2, #101
     fda: 3432         	adds	r4, #50
     fdc: 3264         	adds	r2, #100
     fde: 3034         	adds	r0, #52
     fe0: 6232         	str	r2, [r6, #32]
     fe2: 3961         	subs	r1, #97
     fe4: 4539         	cmp	r1, r7
     fe6: 7b00         	ldrb	r0, [r0, #12]
     fe8: 6d69         	ldr	r1, [r5, #84]
     fea: 6c70         	ldr	r0, [r6, #68]
     fec: 3023         	adds	r0, #35
     fee: 007d         	lsls	r5, r7, #1
     ff0: 5a5f         	ldrh	r7, [r3, r1]
     ff2: 314e         	adds	r1, #78
     ff4: 6337         	str	r7, [r6, #48]
     ff6: 6d6f         	ldr	r7, [r5, #84]
     ff8: 6970         	ldr	r0, [r6, #20]
     ffa: 656c         	str	r4, [r5, #84]
     ffc: 5f72         	ldrsh	r2, [r6, r5]
     ffe: 7562         	strb	r2, [r4, #21]
    1000: 6c69         	ldr	r1, [r5, #68]
    1002: 6974         	ldr	r4, [r6, #20]
    1004: 736e         	strb	r6, [r5, #13]
    1006: 6133         	str	r3, [r6, #16]
    1008: 6d72         	ldr	r2, [r6, #84]
    100a: 3531         	adds	r5, #49
    100c: 5f5f         	ldrsh	r7, [r3, r5]
    100e: 6561         	str	r1, [r4, #84]
    1010: 6261         	str	r1, [r4, #36]
    1012: 5f69         	ldrsh	r1, [r5, r5]
    1014: 656d         	str	r5, [r5, #84]
    1016: 636d         	str	r5, [r5, #52]
    1018: 726c         	strb	r4, [r5, #9]
    101a: 3134         	adds	r1, #52
    101c: 6837         	ldr	r7, [r6]
    101e: 6330         	str	r0, [r6, #48]
    1020: 6362         	str	r2, [r4, #52]
    1022: 6130         	str	r0, [r6, #16]
    1024: 3233         	adds	r2, #51
    1026: 3635         	adds	r6, #53
    1028: 3965         	subs	r1, #101
    102a: 3835         	subs	r0, #53
    102c: 6466         	str	r6, [r4, #68]
    102e: 0045         	lsls	r5, r0, #1
    1030: 6f63         	ldr	r3, [r4, #116]
    1032: 7970         	ldrb	r0, [r6, #5]
    1034: 625f         	str	r7, [r3, #36]
    1036: 6361         	str	r1, [r4, #52]
    1038: 776b         	strb	r3, [r5, #29]
    103a: 7261         	strb	r1, [r4, #9]
    103c: 5f64         	ldrsh	r4, [r4, r5]
    103e: 696d         	ldr	r5, [r5, #20]
    1040: 6173         	str	r3, [r6, #20]
    1042: 696c         	ldr	r4, [r5, #20]
    1044: 6e67         	ldr	r7, [r4, #100]
    1046: 6465         	str	r5, [r4, #68]
    1048: 775f         	strb	r7, [r3, #29]
    104a: 726f         	strb	r7, [r5, #9]
    104c: 7364         	strb	r4, [r4, #13]
    104e: 6d00         	ldr	r0, [r0, #80]
    1050: 6d65         	ldr	r5, [r4, #84]
    1052: 7063         	strb	r3, [r4, #1]
    1054: 5f79         	ldrsh	r1, [r7, r5]
    1056: 6c65         	ldr	r5, [r4, #68]
    1058: 6d65         	ldr	r5, [r4, #84]
    105a: 6e65         	ldr	r5, [r4, #100]
    105c: 5f74         	ldrsh	r4, [r6, r5]
    105e: 6e75         	ldr	r5, [r6, #100]
    1060: 726f         	strb	r7, [r5, #9]
    1062: 6564         	str	r4, [r4, #84]
    1064: 6572         	str	r2, [r6, #84]
    1066: 5f64         	ldrsh	r4, [r4, r5]
    1068: 7461         	strb	r1, [r4, #17]
    106a: 6d6f         	ldr	r7, [r5, #84]
    106c: 6369         	str	r1, [r5, #52]
    106e: 753c         	strb	r4, [r7, #20]
    1070: 3233         	adds	r2, #51
    1072: 003e         	movs	r6, r7
    1074: 5f5f         	ldrsh	r7, [r3, r5]
    1076: 6c6c         	ldr	r4, [r5, #68]
    1078: 6d76         	ldr	r6, [r6, #84]
    107a: 6d5f         	ldr	r7, [r3, #84]
    107c: 6d65         	ldr	r5, [r4, #84]
    107e: 7063         	strb	r3, [r4, #1]
    1080: 5f79         	ldrsh	r1, [r7, r5]
    1082: 6c65         	ldr	r5, [r4, #68]
    1084: 6d65         	ldr	r5, [r4, #84]
    1086: 6e65         	ldr	r5, [r4, #100]
    1088: 5f74         	ldrsh	r4, [r6, r5]
    108a: 6e75         	ldr	r5, [r6, #100]
    108c: 726f         	strb	r7, [r5, #9]
    108e: 6564         	str	r4, [r4, #84]
    1090: 6572         	str	r2, [r6, #84]
    1092: 5f64         	ldrsh	r4, [r4, r5]
    1094: 7461         	strb	r1, [r4, #17]
    1096: 6d6f         	ldr	r7, [r5, #84]
    1098: 6369         	str	r1, [r5, #52]
    109a: 325f         	adds	r2, #95
    109c: 6300         	str	r0, [r0, #48]
    109e: 616c         	str	r4, [r5, #20]
    10a0: 676e         	str	r6, [r5, #116]
    10a2: 4c20         	ldr	r4, [pc, #128]          @ 0x1124 <.debug_str+0x1124>
    10a4: 564c         	ldrsb	r4, [r1, r1]
    10a6: 204d         	movs	r0, #77
    10a8: 7228         	strb	r0, [r5, #8]
    10aa: 7375         	strb	r5, [r6, #13]
    10ac: 6374         	str	r4, [r6, #52]
    10ae: 7620         	strb	r0, [r4, #24]
    10b0: 7265         	strb	r5, [r4, #9]
    10b2: 6973         	ldr	r3, [r6, #20]
    10b4: 6e6f         	ldr	r7, [r5, #100]
    10b6: 3120         	adds	r1, #32
    10b8: 362e         	adds	r6, #46
    10ba: 2e38         	cmp	r6, #56
    10bc: 2d30         	cmp	r5, #48
    10be: 696e         	ldr	r6, [r5, #20]
    10c0: 6867         	ldr	r7, [r4, #4]
    10c2: 6c74         	ldr	r4, [r6, #68]
    10c4: 2079         	movs	r0, #121
    10c6: 6228         	str	r0, [r5, #32]
    10c8: 3037         	adds	r0, #55
    10ca: 6162         	str	r2, [r4, #20]
    10cc: 3461         	adds	r4, #97
    10ce: 3966         	subs	r1, #102
    10d0: 3220         	adds	r2, #32
    10d2: 3230         	adds	r2, #48
    10d4: 2d32         	cmp	r5, #50
    10d6: 3231         	adds	r2, #49
    10d8: 312d         	adds	r1, #45
    10da: 2934         	cmp	r1, #52
    10dc: 0029         	movs	r1, r5
    10de: 5a5f         	ldrh	r7, [r3, r1]
    10e0: 314e         	adds	r1, #78
    10e2: 6337         	str	r7, [r6, #48]
    10e4: 6d6f         	ldr	r7, [r5, #84]
    10e6: 6970         	ldr	r0, [r6, #20]
    10e8: 656c         	str	r4, [r5, #84]
    10ea: 5f72         	ldrsh	r2, [r6, r5]
    10ec: 7562         	strb	r2, [r4, #21]
    10ee: 6c69         	ldr	r1, [r5, #68]
    10f0: 6974         	ldr	r4, [r6, #20]
    10f2: 736e         	strb	r6, [r5, #13]
    10f4: 6133         	str	r3, [r6, #16]
    10f6: 6d72         	ldr	r2, [r6, #84]
    10f8: 3531         	adds	r5, #49
    10fa: 5f5f         	ldrsh	r7, [r3, r5]
    10fc: 6561         	str	r1, [r4, #84]
    10fe: 6261         	str	r1, [r4, #36]
    1100: 5f69         	ldrsh	r1, [r5, r5]
    1102: 656d         	str	r5, [r5, #84]
    1104: 736d         	strb	r5, [r5, #13]
    1106: 7465         	strb	r5, [r4, #17]
    1108: 3134         	adds	r1, #52
    110a: 6837         	ldr	r7, [r6]
    110c: 3330         	adds	r3, #48
    110e: 3561         	adds	r5, #97
    1110: 3036         	adds	r0, #54
    1112: 3831         	subs	r0, #49
    1114: 3239         	adds	r2, #57
    1116: 6461         	str	r1, [r4, #68]
    1118: 6632         	str	r2, [r6, #96]
    111a: 3438         	adds	r4, #56
    111c: 0045         	lsls	r5, r0, #1
    111e: 7573         	strb	r3, [r6, #21]
    1120: 3c62         	subs	r4, #98
    1122: 7375         	strb	r5, [r6, #13]
    1124: 7a69         	ldrb	r1, [r5, #9]
    1126: 3e65         	subs	r6, #101
    1128: 2f00         	cmp	r7, #0
    112a: 6163         	str	r3, [r4, #20]
    112c: 6772         	str	r2, [r6, #116]
    112e: 2f6f         	cmp	r7, #111
    1130: 6572         	str	r2, [r6, #84]
    1132: 6967         	ldr	r7, [r4, #20]
    1134: 7473         	strb	r3, [r6, #17]
    1136: 7972         	ldrb	r2, [r6, #5]
    1138: 732f         	strb	r7, [r5, #12]
    113a: 6372         	str	r2, [r6, #52]
    113c: 672f         	str	r7, [r5, #112]
    113e: 7469         	strb	r1, [r5, #17]
    1140: 7568         	strb	r0, [r5, #21]
    1142: 2e62         	cmp	r6, #98
    1144: 6f63         	ldr	r3, [r4, #116]
    1146: 2d6d         	cmp	r5, #109
    1148: 6531         	str	r1, [r6, #80]
    114a: 6363         	str	r3, [r4, #52]
    114c: 3236         	adds	r2, #54
    114e: 3939         	subs	r1, #57
    1150: 6264         	str	r4, [r4, #36]
    1152: 6539         	str	r1, [r7, #80]
    1154: 3863         	subs	r0, #99
    1156: 3332         	adds	r3, #50
    1158: 632f         	str	r7, [r5, #48]
    115a: 6d6f         	ldr	r7, [r5, #84]
    115c: 6970         	ldr	r0, [r6, #20]
    115e: 656c         	str	r4, [r5, #84]
    1160: 5f72         	ldrsh	r2, [r6, r5]
    1162: 7562         	strb	r2, [r4, #21]
    1164: 6c69         	ldr	r1, [r5, #68]
    1166: 6974         	ldr	r4, [r6, #20]
    1168: 736e         	strb	r6, [r5, #13]
    116a: 302d         	adds	r0, #45
    116c: 312e         	adds	r1, #46
    116e: 382e         	subs	r0, #46
    1170: 2f35         	cmp	r7, #53
    1172: 7273         	strb	r3, [r6, #9]
    1174: 2f63         	cmp	r7, #99
    1176: 696c         	ldr	r4, [r5, #20]
    1178: 2e62         	cmp	r6, #98
    117a: 7372         	strb	r2, [r6, #13]
    117c: 402f         	ands	r7, r5
    117e: 632f         	str	r7, [r5, #48]
    1180: 6d6f         	ldr	r7, [r5, #84]
    1182: 6970         	ldr	r0, [r6, #20]
    1184: 656c         	str	r4, [r5, #84]
    1186: 5f72         	ldrsh	r2, [r6, r5]
    1188: 7562         	strb	r2, [r4, #21]
    118a: 6c69         	ldr	r1, [r5, #68]
    118c: 6974         	ldr	r4, [r6, #20]
    118e: 736e         	strb	r6, [r5, #13]
    1190: 372e         	adds	r7, #46
    1192: 6162         	str	r2, [r4, #20]
    1194: 6665         	str	r5, [r4, #100]
    1196: 6432         	str	r2, [r6, #64]
    1198: 2d33         	cmp	r5, #51
    119a: 6763         	str	r3, [r4, #116]
    119c: 2e75         	cmp	r6, #117
    119e: 3834         	subs	r0, #52
    11a0: 6d00         	ldr	r0, [r0, #80]
    11a2: 6d65         	ldr	r5, [r4, #84]
    11a4: 6f6d         	ldr	r5, [r5, #116]
    11a6: 6576         	str	r6, [r6, #84]
    11a8: 655f         	str	r7, [r3, #84]
    11aa: 656c         	str	r4, [r5, #84]
    11ac: 656d         	str	r5, [r5, #84]
    11ae: 746e         	strb	r6, [r5, #17]
    11b0: 755f         	strb	r7, [r3, #21]
    11b2: 6f6e         	ldr	r6, [r5, #116]
    11b4: 6472         	str	r2, [r6, #68]
    11b6: 7265         	strb	r5, [r4, #9]
    11b8: 6465         	str	r5, [r4, #68]
    11ba: 615f         	str	r7, [r3, #20]
    11bc: 6f74         	ldr	r4, [r6, #116]
    11be: 696d         	ldr	r5, [r5, #20]
    11c0: 3c63         	subs	r4, #99
    11c2: 3175         	adds	r1, #117
    11c4: 3e36         	subs	r6, #54
    11c6: 7b00         	ldrb	r0, [r0, #12]
    11c8: 6d69         	ldr	r1, [r5, #84]
    11ca: 6c70         	ldr	r0, [r6, #68]
    11cc: 3623         	adds	r6, #35
    11ce: 007d         	lsls	r5, r7, #1
    11d0: 5a5f         	ldrh	r7, [r3, r1]
    11d2: 314e         	adds	r1, #78
    11d4: 6337         	str	r7, [r6, #48]
    11d6: 6d6f         	ldr	r7, [r5, #84]
    11d8: 6970         	ldr	r0, [r6, #20]
    11da: 656c         	str	r4, [r5, #84]
    11dc: 5f72         	ldrsh	r2, [r6, r5]
    11de: 7562         	strb	r2, [r4, #21]
    11e0: 6c69         	ldr	r1, [r5, #68]
    11e2: 6974         	ldr	r4, [r6, #20]
    11e4: 736e         	strb	r6, [r5, #13]
    11e6: 6d33         	ldr	r3, [r6, #80]
    11e8: 6d65         	ldr	r5, [r4, #84]
    11ea: 6935         	ldr	r5, [r6, #16]
    11ec: 706d         	strb	r5, [r5, #1]
    11ee: 736c         	strb	r4, [r5, #13]
    11f0: 7339         	strb	r1, [r7, #12]
    11f2: 7465         	strb	r5, [r4, #17]
    11f4: 625f         	str	r7, [r3, #36]
    11f6: 7479         	strb	r1, [r7, #17]
    11f8: 7365         	strb	r5, [r4, #13]
    11fa: 3731         	adds	r7, #49
    11fc: 6568         	str	r0, [r5, #84]
    11fe: 3864         	subs	r0, #100
    1200: 6661         	str	r1, [r4, #100]
    1202: 6661         	str	r1, [r4, #100]
    1204: 3163         	adds	r1, #99
    1206: 3735         	adds	r7, #53
    1208: 6661         	str	r1, [r4, #100]
    120a: 3732         	adds	r7, #50
    120c: 4538         	cmp	r0, r7
    120e: 5f00         	ldrsh	r0, [r0, r4]
    1210: 4e5a         	ldr	r6, [pc, #360]          @ 0x137c <.debug_str+0x137c>
    1212: 3731         	adds	r7, #49
    1214: 6f63         	ldr	r3, [r4, #116]
    1216: 706d         	strb	r5, [r5, #1]
    1218: 6c69         	ldr	r1, [r5, #68]
    121a: 7265         	strb	r5, [r4, #9]
    121c: 625f         	str	r7, [r3, #36]
    121e: 6975         	ldr	r5, [r6, #20]
    1220: 746c         	strb	r4, [r5, #17]
    1222: 6e69         	ldr	r1, [r5, #100]
    1224: 3373         	adds	r3, #115
    1226: 656d         	str	r5, [r5, #84]
    1228: 336d         	adds	r3, #109
    122a: 6d31         	ldr	r1, [r6, #80]
    122c: 6d65         	ldr	r5, [r4, #84]
    122e: 6573         	str	r3, [r6, #84]
    1230: 5f74         	ldrsh	r4, [r6, r5]
    1232: 6c65         	ldr	r5, [r4, #68]
    1234: 6d65         	ldr	r5, [r4, #84]
    1236: 6e65         	ldr	r5, [r4, #100]
    1238: 5f74         	ldrsh	r4, [r6, r5]
    123a: 6e75         	ldr	r5, [r6, #100]
    123c: 726f         	strb	r7, [r5, #9]
    123e: 6564         	str	r4, [r4, #84]
    1240: 6572         	str	r2, [r6, #84]
    1242: 5f64         	ldrsh	r4, [r4, r5]
    1244: 7461         	strb	r1, [r4, #17]
    1246: 6d6f         	ldr	r7, [r5, #84]
    1248: 6369         	str	r1, [r5, #52]
    124a: 3731         	adds	r7, #49
    124c: 3668         	adds	r6, #104
    124e: 3130         	adds	r1, #48
    1250: 6439         	str	r1, [r7, #64]
    1252: 6534         	str	r4, [r6, #80]
    1254: 6165         	str	r5, [r4, #20]
    1256: 3536         	adds	r5, #54
    1258: 6533         	str	r3, [r6, #80]
    125a: 3464         	adds	r4, #100
    125c: 4566         	cmp	r6, r12
    125e: 5f00         	ldrsh	r0, [r0, r4]
    1260: 4e5a         	ldr	r6, [pc, #360]          @ 0x13cc <.debug_str+0x13cc>
    1262: 3731         	adds	r7, #49
    1264: 6f63         	ldr	r3, [r4, #116]
    1266: 706d         	strb	r5, [r5, #1]
    1268: 6c69         	ldr	r1, [r5, #68]
    126a: 7265         	strb	r5, [r4, #9]
    126c: 625f         	str	r7, [r3, #36]
    126e: 6975         	ldr	r5, [r6, #20]
    1270: 746c         	strb	r4, [r5, #17]
    1272: 6e69         	ldr	r1, [r5, #100]
    1274: 3373         	adds	r3, #115
    1276: 656d         	str	r5, [r5, #84]
    1278: 356d         	adds	r5, #109
    127a: 6d69         	ldr	r1, [r5, #84]
    127c: 6c70         	ldr	r0, [r6, #68]
    127e: 3973         	subs	r1, #115
    1280: 6573         	str	r3, [r6, #84]
    1282: 5f74         	ldrsh	r4, [r6, r5]
    1284: 7962         	ldrb	r2, [r4, #5]
    1286: 6574         	str	r4, [r6, #84]
    1288: 3173         	adds	r1, #115
    128a: 7335         	strb	r5, [r6, #12]
    128c: 7465         	strb	r5, [r4, #17]
    128e: 625f         	str	r7, [r3, #36]
    1290: 7479         	strb	r1, [r7, #17]
    1292: 7365         	strb	r5, [r4, #13]
    1294: 625f         	str	r7, [r3, #36]
    1296: 7479         	strb	r1, [r7, #17]
    1298: 7365         	strb	r5, [r4, #13]
    129a: 3731         	adds	r7, #49
    129c: 3268         	adds	r2, #104
    129e: 6263         	str	r3, [r4, #36]
    12a0: 3933         	subs	r1, #51
    12a2: 6566         	str	r6, [r4, #84]
    12a4: 3334         	adds	r3, #52
    12a6: 6136         	str	r6, [r6, #16]
    12a8: 6436         	str	r6, [r6, #64]
    12aa: 3738         	adds	r7, #56
    12ac: 4534         	cmp	r4, r6
    12ae: 5f00         	ldrsh	r0, [r0, r4]
    12b0: 4e5a         	ldr	r6, [pc, #360]          @ 0x141c <.debug_str+0x141c>
    12b2: 6334         	str	r4, [r6, #48]
    12b4: 726f         	strb	r7, [r5, #9]
    12b6: 3365         	adds	r3, #101
    12b8: 7470         	strb	r0, [r6, #17]
    12ba: 3772         	adds	r7, #114
    12bc: 756d         	strb	r5, [r5, #21]
    12be: 5f74         	ldrsh	r4, [r6, r5]
    12c0: 7470         	strb	r0, [r6, #17]
    12c2: 3372         	adds	r3, #114
    12c4: 5f31         	ldrsh	r1, [r6, r4]
    12c6: 4c24         	ldr	r4, [pc, #144]          @ 0x1358 <.debug_str+0x1358>
    12c8: 2454         	movs	r4, #84
    12ca: 6d69         	ldr	r1, [r5, #84]
    12cc: 6c70         	ldr	r0, [r6, #68]
    12ce: 7524         	strb	r4, [r4, #20]
    12d0: 3032         	adds	r0, #50
    12d2: 2424         	movs	r4, #36
    12d4: 5042         	str	r2, [r0, r1]
    12d6: 6d24         	ldr	r4, [r4, #80]
    12d8: 7475         	strb	r5, [r6, #17]
    12da: 7524         	strb	r4, [r4, #20]
    12dc: 3032         	adds	r0, #50
    12de: 5424         	strb	r4, [r4, r0]
    12e0: 4724         	bx	r4
    12e2: 2454         	movs	r4, #84
    12e4: 6133         	str	r3, [r6, #16]
    12e6: 6464         	str	r4, [r4, #68]
    12e8: 3731         	adds	r7, #49
    12ea: 3168         	adds	r1, #104
    12ec: 6136         	str	r6, [r6, #16]
    12ee: 3461         	adds	r4, #97
    12f0: 3664         	adds	r6, #100
    12f2: 6632         	str	r2, [r6, #96]
    12f4: 3865         	subs	r0, #101
    12f6: 6561         	str	r1, [r4, #84]
    12f8: 6438         	str	r0, [r7, #64]
    12fa: 4532         	cmp	r2, r6
    12fc: 5f00         	ldrsh	r0, [r0, r4]
    12fe: 6c5f         	ldr	r7, [r3, #68]
    1300: 766c         	strb	r4, [r5, #25]
    1302: 5f6d         	ldrsh	r5, [r5, r5]
    1304: 656d         	str	r5, [r5, #84]
    1306: 6d6d         	ldr	r5, [r5, #84]
    1308: 766f         	strb	r7, [r5, #25]
    130a: 5f65         	ldrsh	r5, [r4, r5]
    130c: 6c65         	ldr	r5, [r4, #68]
    130e: 6d65         	ldr	r5, [r4, #84]
    1310: 6e65         	ldr	r5, [r4, #100]
    1312: 5f74         	ldrsh	r4, [r6, r5]
    1314: 6e75         	ldr	r5, [r6, #100]
    1316: 726f         	strb	r7, [r5, #9]
    1318: 6564         	str	r4, [r4, #84]
    131a: 6572         	str	r2, [r6, #84]
    131c: 5f64         	ldrsh	r4, [r4, r5]
    131e: 7461         	strb	r1, [r4, #17]
    1320: 6d6f         	ldr	r7, [r5, #84]
    1322: 6369         	str	r1, [r5, #52]
    1324: 325f         	adds	r2, #95
    1326: 5f00         	ldrsh	r0, [r0, r4]
    1328: 615f         	str	r7, [r3, #20]
    132a: 6165         	str	r5, [r4, #20]
    132c: 6962         	ldr	r2, [r4, #20]
    132e: 6d5f         	ldr	r7, [r3, #84]
    1330: 6d65         	ldr	r5, [r4, #84]
    1332: 6f6d         	ldr	r5, [r5, #116]
    1334: 6576         	str	r6, [r6, #84]
    1336: 0034         	movs	r4, r6
    1338: 6f63         	ldr	r3, [r4, #116]
    133a: 7970         	ldrb	r0, [r6, #5]
    133c: 665f         	str	r7, [r3, #100]
    133e: 726f         	strb	r7, [r5, #9]
    1340: 6177         	str	r7, [r6, #20]
    1342: 6472         	str	r2, [r6, #68]
    1344: 625f         	str	r7, [r3, #36]
    1346: 7479         	strb	r1, [r7, #17]
    1348: 7365         	strb	r5, [r4, #13]
    134a: 5f00         	ldrsh	r0, [r0, r4]
    134c: 4e5a         	ldr	r6, [pc, #360]          @ 0x14b8 <.debug_str+0x14b8>
    134e: 3731         	adds	r7, #49
    1350: 6f63         	ldr	r3, [r4, #116]
    1352: 706d         	strb	r5, [r5, #1]
    1354: 6c69         	ldr	r1, [r5, #68]
    1356: 7265         	strb	r5, [r4, #9]
    1358: 625f         	str	r7, [r3, #36]
    135a: 6975         	ldr	r5, [r6, #20]
    135c: 746c         	strb	r4, [r5, #17]
    135e: 6e69         	ldr	r1, [r5, #100]
    1360: 3373         	adds	r3, #115
    1362: 656d         	str	r5, [r5, #84]
    1364: 336d         	adds	r3, #109
    1366: 6d31         	ldr	r1, [r6, #80]
    1368: 6d65         	ldr	r5, [r4, #84]
    136a: 7063         	strb	r3, [r4, #1]
    136c: 5f79         	ldrsh	r1, [r7, r5]
    136e: 6c65         	ldr	r5, [r4, #68]
    1370: 6d65         	ldr	r5, [r4, #84]
    1372: 6e65         	ldr	r5, [r4, #100]
    1374: 5f74         	ldrsh	r4, [r6, r5]
    1376: 6e75         	ldr	r5, [r6, #100]
    1378: 726f         	strb	r7, [r5, #9]
    137a: 6564         	str	r4, [r4, #84]
    137c: 6572         	str	r2, [r6, #84]
    137e: 5f64         	ldrsh	r4, [r4, r5]
    1380: 7461         	strb	r1, [r4, #17]
    1382: 6d6f         	ldr	r7, [r5, #84]
    1384: 6369         	str	r1, [r5, #52]
    1386: 3731         	adds	r7, #49
    1388: 3268         	adds	r2, #104
    138a: 3261         	adds	r2, #97
    138c: 3630         	adds	r6, #48
    138e: 6665         	str	r5, [r4, #100]
    1390: 3566         	adds	r5, #102
    1392: 6665         	str	r5, [r4, #100]
    1394: 3139         	adds	r1, #57
    1396: 3961         	subs	r1, #97
    1398: 4536         	cmp	r6, r6
    139a: 6100         	str	r0, [r0, #16]
    139c: 6d72         	ldr	r2, [r6, #84]
    139e: 5f00         	ldrsh	r0, [r0, r4]
    13a0: 4e5a         	ldr	r6, [pc, #360]          @ 0x150c <.debug_str+0x150c>
    13a2: 3731         	adds	r7, #49
    13a4: 6f63         	ldr	r3, [r4, #116]
    13a6: 706d         	strb	r5, [r5, #1]
    13a8: 6c69         	ldr	r1, [r5, #68]
    13aa: 7265         	strb	r5, [r4, #9]
    13ac: 625f         	str	r7, [r3, #36]
    13ae: 6975         	ldr	r5, [r6, #20]
    13b0: 746c         	strb	r4, [r5, #17]
    13b2: 6e69         	ldr	r1, [r5, #100]
    13b4: 3373         	adds	r3, #115
    13b6: 7261         	strb	r1, [r4, #9]
    13b8: 316d         	adds	r1, #109
    13ba: 5f36         	ldrsh	r6, [r6, r4]
    13bc: 615f         	str	r7, [r3, #20]
    13be: 6165         	str	r5, [r4, #20]
    13c0: 6962         	ldr	r2, [r4, #20]
    13c2: 6d5f         	ldr	r7, [r3, #84]
    13c4: 6d65         	ldr	r5, [r4, #84]
    13c6: 6f6d         	ldr	r5, [r5, #116]
    13c8: 6576         	str	r6, [r6, #84]
    13ca: 3134         	adds	r1, #52
    13cc: 6837         	ldr	r7, [r6]
    13ce: 3466         	adds	r4, #102
    13d0: 3065         	adds	r0, #101
    13d2: 3732         	adds	r7, #50
    13d4: 3265         	adds	r2, #101
    13d6: 3339         	adds	r3, #57
    13d8: 3333         	adds	r3, #51
    13da: 6637         	str	r7, [r6, #96]
    13dc: 3964         	subs	r1, #100
    13de: 0045         	lsls	r5, r0, #1
    13e0: 5a5f         	ldrh	r7, [r3, r1]
    13e2: 314e         	adds	r1, #78
    13e4: 6337         	str	r7, [r6, #48]
    13e6: 6d6f         	ldr	r7, [r5, #84]
    13e8: 6970         	ldr	r0, [r6, #20]
    13ea: 656c         	str	r4, [r5, #84]
    13ec: 5f72         	ldrsh	r2, [r6, r5]
    13ee: 7562         	strb	r2, [r4, #21]
    13f0: 6c69         	ldr	r1, [r5, #68]
    13f2: 6974         	ldr	r4, [r6, #20]
    13f4: 736e         	strb	r6, [r5, #13]
    13f6: 6133         	str	r3, [r6, #16]
    13f8: 6d72         	ldr	r2, [r6, #84]
    13fa: 3431         	adds	r4, #49
    13fc: 5f5f         	ldrsh	r7, [r3, r5]
    13fe: 6561         	str	r1, [r4, #84]
    1400: 6261         	str	r1, [r4, #36]
    1402: 5f69         	ldrsh	r1, [r5, r5]
    1404: 656d         	str	r5, [r5, #84]
    1406: 636d         	str	r5, [r5, #52]
    1408: 726c         	strb	r4, [r5, #9]
    140a: 3731         	adds	r7, #49
    140c: 3768         	adds	r7, #104
    140e: 3933         	subs	r1, #51
    1410: 6633         	str	r3, [r6, #96]
    1412: 6133         	str	r3, [r6, #16]
    1414: 3065         	adds	r0, #101
    1416: 6465         	str	r5, [r4, #68]
    1418: 3361         	adds	r3, #97
    141a: 6339         	str	r1, [r7, #48]
    141c: 4539         	cmp	r1, r7
    141e: 5f00         	ldrsh	r0, [r0, r4]
    1420: 4e5a         	ldr	r6, [pc, #360]          @ 0x158c <.debug_str+0x158c>
    1422: 6334         	str	r4, [r6, #48]
    1424: 726f         	strb	r7, [r5, #9]
    1426: 3365         	adds	r3, #101
    1428: 756e         	strb	r6, [r5, #21]
    142a: 326d         	adds	r2, #109
    142c: 5f33         	ldrsh	r3, [r6, r4]
    142e: 4c24         	ldr	r4, [pc, #144]          @ 0x14c0 <.debug_str+0x14c0>
    1430: 2454         	movs	r4, #84
    1432: 6d69         	ldr	r1, [r5, #84]
    1434: 6c70         	ldr	r0, [r6, #68]
    1436: 7524         	strb	r4, [r4, #20]
    1438: 3032         	adds	r0, #50
    143a: 7524         	strb	r4, [r4, #20]
    143c: 6973         	ldr	r3, [r6, #20]
    143e: 657a         	str	r2, [r7, #84]
    1440: 4724         	bx	r4
    1442: 2454         	movs	r4, #84
    1444: 3231         	adds	r2, #49
    1446: 7277         	strb	r7, [r6, #9]
    1448: 7061         	strb	r1, [r4, #1]
    144a: 6970         	ldr	r0, [r6, #20]
    144c: 676e         	str	r6, [r5, #116]
    144e: 6e5f         	ldr	r7, [r3, #100]
    1450: 6765         	str	r5, [r4, #116]
    1452: 3731         	adds	r7, #49
    1454: 6668         	str	r0, [r5, #100]
    1456: 6664         	str	r4, [r4, #100]
    1458: 3134         	adds	r1, #52
    145a: 3633         	adds	r6, #51
    145c: 3331         	adds	r3, #49
    145e: 6666         	str	r6, [r4, #100]
    1460: 6131         	str	r1, [r6, #16]
    1462: 3034         	adds	r0, #52
    1464: 4535         	cmp	r5, r6
    1466: 6300         	str	r0, [r0, #48]
    1468: 6e6f         	ldr	r7, [r5, #100]
    146a: 7473         	strb	r3, [r6, #17]
    146c: 705f         	strb	r7, [r3, #1]
    146e: 7274         	strb	r4, [r6, #9]
    1470: 5f00         	ldrsh	r0, [r0, r4]
    1472: 4e5a         	ldr	r6, [pc, #360]          @ 0x15dc <.debug_str+0x15dc>
    1474: 3731         	adds	r7, #49
    1476: 6f63         	ldr	r3, [r4, #116]
    1478: 706d         	strb	r5, [r5, #1]
    147a: 6c69         	ldr	r1, [r5, #68]
    147c: 7265         	strb	r5, [r4, #9]
    147e: 625f         	str	r7, [r3, #36]
    1480: 6975         	ldr	r5, [r6, #20]
    1482: 746c         	strb	r4, [r5, #17]
    1484: 6e69         	ldr	r1, [r5, #100]
    1486: 3373         	adds	r3, #115
    1488: 656d         	str	r5, [r5, #84]
    148a: 356d         	adds	r5, #109
    148c: 6d69         	ldr	r1, [r5, #84]
    148e: 6c70         	ldr	r0, [r6, #68]
    1490: 3973         	subs	r1, #115
    1492: 6573         	str	r3, [r6, #84]
    1494: 5f74         	ldrsh	r4, [r6, r5]
    1496: 7962         	ldrb	r2, [r4, #5]
    1498: 6574         	str	r4, [r6, #84]
    149a: 3173         	adds	r1, #115
    149c: 7335         	strb	r5, [r6, #12]
    149e: 7465         	strb	r5, [r4, #17]
    14a0: 625f         	str	r7, [r3, #36]
    14a2: 7479         	strb	r1, [r7, #17]
    14a4: 7365         	strb	r5, [r4, #13]
    14a6: 775f         	strb	r7, [r3, #29]
    14a8: 726f         	strb	r7, [r5, #9]
    14aa: 7364         	strb	r4, [r4, #13]
    14ac: 3731         	adds	r7, #49
    14ae: 6468         	str	r0, [r5, #68]
    14b0: 6333         	str	r3, [r6, #48]
    14b2: 3965         	subs	r1, #101
    14b4: 6431         	str	r1, [r6, #64]
    14b6: 3838         	subs	r0, #56
    14b8: 6261         	str	r1, [r4, #36]
    14ba: 3230         	adds	r2, #48
    14bc: 6564         	str	r4, [r4, #84]
    14be: 4534         	cmp	r4, r6
    14c0: 6300         	str	r0, [r0, #48]
    14c2: 6d6f         	ldr	r7, [r5, #84]
    14c4: 6170         	str	r0, [r6, #20]
    14c6: 6572         	str	r2, [r6, #84]
    14c8: 625f         	str	r7, [r3, #36]
    14ca: 7479         	strb	r1, [r7, #17]
    14cc: 7365         	strb	r5, [r4, #13]
    14ce: 5f00         	ldrsh	r0, [r0, r4]
    14d0: 6c5f         	ldr	r7, [r3, #68]
    14d2: 766c         	strb	r4, [r5, #25]
    14d4: 5f6d         	ldrsh	r5, [r5, r5]
    14d6: 656d         	str	r5, [r5, #84]
    14d8: 6d6d         	ldr	r5, [r5, #84]
    14da: 766f         	strb	r7, [r5, #25]
    14dc: 5f65         	ldrsh	r5, [r4, r5]
    14de: 6c65         	ldr	r5, [r4, #68]
    14e0: 6d65         	ldr	r5, [r4, #84]
    14e2: 6e65         	ldr	r5, [r4, #100]
    14e4: 5f74         	ldrsh	r4, [r6, r5]
    14e6: 6e75         	ldr	r5, [r6, #100]
    14e8: 726f         	strb	r7, [r5, #9]
    14ea: 6564         	str	r4, [r4, #84]
    14ec: 6572         	str	r2, [r6, #84]
    14ee: 5f64         	ldrsh	r4, [r4, r5]
    14f0: 7461         	strb	r1, [r4, #17]
    14f2: 6d6f         	ldr	r7, [r5, #84]
    14f4: 6369         	str	r1, [r5, #52]
    14f6: 345f         	adds	r4, #95
    14f8: 5f00         	ldrsh	r0, [r0, r4]
    14fa: 4e5a         	ldr	r6, [pc, #360]          @ 0x1664 <.debug_str+0x1664>
    14fc: 3731         	adds	r7, #49
    14fe: 6f63         	ldr	r3, [r4, #116]
    1500: 706d         	strb	r5, [r5, #1]
    1502: 6c69         	ldr	r1, [r5, #68]
    1504: 7265         	strb	r5, [r4, #9]
    1506: 625f         	str	r7, [r3, #36]
    1508: 6975         	ldr	r5, [r6, #20]
    150a: 746c         	strb	r4, [r5, #17]
    150c: 6e69         	ldr	r1, [r5, #100]
    150e: 3373         	adds	r3, #115
    1510: 7261         	strb	r1, [r4, #9]
    1512: 316d         	adds	r1, #109
    1514: 5f35         	ldrsh	r5, [r6, r4]
    1516: 615f         	str	r7, [r3, #20]
    1518: 6165         	str	r5, [r4, #20]
    151a: 6962         	ldr	r2, [r4, #20]
    151c: 6d5f         	ldr	r7, [r3, #84]
    151e: 6d65         	ldr	r5, [r4, #84]
    1520: 7063         	strb	r3, [r4, #1]
    1522: 3879         	subs	r0, #121
    1524: 3731         	adds	r7, #49
    1526: 3468         	adds	r4, #104
    1528: 6136         	str	r6, [r6, #16]
    152a: 3265         	adds	r2, #101
    152c: 3663         	adds	r6, #99
    152e: 3730         	adds	r7, #48
    1530: 6131         	str	r1, [r6, #16]
    1532: 6364         	str	r4, [r4, #52]
    1534: 3332         	adds	r3, #50
    1536: 4564         	cmp	r4, r12
    1538: 6300         	str	r0, [r0, #48]
    153a: 706f         	strb	r7, [r5, #1]
    153c: 5f79         	ldrsh	r1, [r7, r5]
    153e: 6162         	str	r2, [r4, #20]
    1540: 6b63         	ldr	r3, [r4, #52]
    1542: 6177         	str	r7, [r6, #20]
    1544: 6472         	str	r2, [r6, #68]
    1546: 5f00         	ldrsh	r0, [r0, r4]
    1548: 4e5a         	ldr	r6, [pc, #360]          @ 0x16b4 <.debug_str+0x16b4>
    154a: 3731         	adds	r7, #49
    154c: 6f63         	ldr	r3, [r4, #116]
    154e: 706d         	strb	r5, [r5, #1]
    1550: 6c69         	ldr	r1, [r5, #68]
    1552: 7265         	strb	r5, [r4, #9]
    1554: 625f         	str	r7, [r3, #36]
    1556: 6975         	ldr	r5, [r6, #20]
    1558: 746c         	strb	r4, [r5, #17]
    155a: 6e69         	ldr	r1, [r5, #100]
    155c: 3373         	adds	r3, #115
    155e: 656d         	str	r5, [r5, #84]
    1560: 356d         	adds	r5, #109
    1562: 6d69         	ldr	r1, [r5, #84]
    1564: 6c70         	ldr	r0, [r6, #68]
    1566: 3173         	adds	r1, #115
    1568: 6333         	str	r3, [r6, #48]
    156a: 706f         	strb	r7, [r5, #1]
    156c: 5f79         	ldrsh	r1, [r7, r5]
    156e: 6162         	str	r2, [r4, #20]
    1570: 6b63         	ldr	r3, [r4, #52]
    1572: 6177         	str	r7, [r6, #20]
    1574: 6472         	str	r2, [r6, #68]
    1576: 3732         	adds	r7, #50
    1578: 6f63         	ldr	r3, [r4, #116]
    157a: 7970         	ldrb	r0, [r6, #5]
    157c: 625f         	str	r7, [r3, #36]
    157e: 6361         	str	r1, [r4, #52]
    1580: 776b         	strb	r3, [r5, #29]
    1582: 7261         	strb	r1, [r4, #9]
    1584: 5f64         	ldrsh	r4, [r4, r5]
    1586: 6c61         	ldr	r1, [r4, #68]
    1588: 6769         	str	r1, [r5, #116]
    158a: 656e         	str	r6, [r5, #84]
    158c: 5f64         	ldrsh	r4, [r4, r5]
    158e: 6f77         	ldr	r7, [r6, #116]
    1590: 6472         	str	r2, [r6, #68]
    1592: 3173         	adds	r1, #115
    1594: 6837         	ldr	r7, [r6]
    1596: 3266         	adds	r2, #102
    1598: 3362         	adds	r3, #98
    159a: 6464         	str	r4, [r4, #68]
    159c: 6366         	str	r6, [r4, #52]
    159e: 6364         	str	r4, [r4, #52]
    15a0: 3135         	adds	r1, #53
    15a2: 6461         	str	r1, [r4, #68]
    15a4: 3033         	adds	r0, #51
    15a6: 0045         	lsls	r5, r0, #1
    15a8: 5a5f         	ldrh	r7, [r3, r1]
    15aa: 314e         	adds	r1, #78
    15ac: 6337         	str	r7, [r6, #48]
    15ae: 6d6f         	ldr	r7, [r5, #84]
    15b0: 6970         	ldr	r0, [r6, #20]
    15b2: 656c         	str	r4, [r5, #84]
    15b4: 5f72         	ldrsh	r2, [r6, r5]
    15b6: 7562         	strb	r2, [r4, #21]
    15b8: 6c69         	ldr	r1, [r5, #68]
    15ba: 6974         	ldr	r4, [r6, #20]
    15bc: 736e         	strb	r6, [r5, #13]
    15be: 6d33         	ldr	r3, [r6, #80]
    15c0: 6d65         	ldr	r5, [r4, #84]
    15c2: 3133         	adds	r1, #51
    15c4: 656d         	str	r5, [r5, #84]
    15c6: 736d         	strb	r5, [r5, #13]
    15c8: 7465         	strb	r5, [r4, #17]
    15ca: 655f         	str	r7, [r3, #84]
    15cc: 656c         	str	r4, [r5, #84]
    15ce: 656d         	str	r5, [r5, #84]
    15d0: 746e         	strb	r6, [r5, #17]
    15d2: 755f         	strb	r7, [r3, #21]
    15d4: 6f6e         	ldr	r6, [r5, #116]
    15d6: 6472         	str	r2, [r6, #68]
    15d8: 7265         	strb	r5, [r4, #9]
    15da: 6465         	str	r5, [r4, #68]
    15dc: 615f         	str	r7, [r3, #20]
    15de: 6f74         	ldr	r4, [r6, #116]
    15e0: 696d         	ldr	r5, [r5, #20]
    15e2: 3163         	adds	r1, #99
    15e4: 6837         	ldr	r7, [r6]
    15e6: 3165         	adds	r1, #101
    15e8: 3837         	subs	r0, #55
    15ea: 3333         	adds	r3, #51
    15ec: 6161         	str	r1, [r4, #20]
    15ee: 3732         	adds	r7, #50
    15f0: 3662         	adds	r6, #98
    15f2: 3035         	adds	r0, #53
    15f4: 6530         	str	r0, [r6, #80]
    15f6: 0045         	lsls	r5, r0, #1
    15f8: 5f5f         	ldrsh	r7, [r3, r5]
    15fa: 6561         	str	r1, [r4, #84]
    15fc: 6261         	str	r1, [r4, #36]
    15fe: 5f69         	ldrsh	r1, [r5, r5]
    1600: 656d         	str	r5, [r5, #84]
    1602: 636d         	str	r5, [r5, #52]
    1604: 726c         	strb	r4, [r5, #9]
    1606: 6d00         	ldr	r0, [r0, #80]
    1608: 6d65         	ldr	r5, [r4, #84]
    160a: 7063         	strb	r3, [r4, #1]
    160c: 5f79         	ldrsh	r1, [r7, r5]
    160e: 6c65         	ldr	r5, [r4, #68]
    1610: 6d65         	ldr	r5, [r4, #84]
    1612: 6e65         	ldr	r5, [r4, #100]
    1614: 5f74         	ldrsh	r4, [r6, r5]
    1616: 6e75         	ldr	r5, [r6, #100]
    1618: 726f         	strb	r7, [r5, #9]
    161a: 6564         	str	r4, [r4, #84]
    161c: 6572         	str	r2, [r6, #84]
    161e: 5f64         	ldrsh	r4, [r4, r5]
    1620: 7461         	strb	r1, [r4, #17]
    1622: 6d6f         	ldr	r7, [r5, #84]
    1624: 6369         	str	r1, [r5, #52]
    1626: 753c         	strb	r4, [r7, #20]
    1628: 3e38         	subs	r6, #56
    162a: 6200         	str	r0, [r0, #32]
    162c: 6d63         	ldr	r3, [r4, #84]
    162e: 0070         	lsls	r0, r6, #1
    1630: 7573         	strb	r3, [r6, #21]
    1632: 3c62         	subs	r4, #98
    1634: 3875         	subs	r0, #117
    1636: 003e         	movs	r6, r7
    1638: 656d         	str	r5, [r5, #84]
    163a: 736d         	strb	r5, [r5, #13]
    163c: 7465         	strb	r5, [r4, #17]
    163e: 655f         	str	r7, [r3, #84]
    1640: 656c         	str	r4, [r5, #84]
    1642: 656d         	str	r5, [r5, #84]
    1644: 746e         	strb	r6, [r5, #17]
    1646: 755f         	strb	r7, [r3, #21]
    1648: 6f6e         	ldr	r6, [r5, #116]
    164a: 6472         	str	r2, [r6, #68]
    164c: 7265         	strb	r5, [r4, #9]
    164e: 6465         	str	r5, [r4, #68]
    1650: 615f         	str	r7, [r3, #20]
    1652: 6f74         	ldr	r4, [r6, #116]
    1654: 696d         	ldr	r5, [r5, #20]
    1656: 3c63         	subs	r4, #99
    1658: 3375         	adds	r3, #117
    165a: 3e32         	subs	r6, #50
    165c: 6d00         	ldr	r0, [r0, #80]
    165e: 6d65         	ldr	r5, [r4, #84]
    1660: 7063         	strb	r3, [r4, #1]
    1662: 0079         	lsls	r1, r7, #1
    1664: 656d         	str	r5, [r5, #84]
    1666: 006d         	lsls	r5, r5, #1
    1668: 5a5f         	ldrh	r7, [r3, r1]
    166a: 344e         	adds	r4, #78
    166c: 6f63         	ldr	r3, [r4, #116]
    166e: 6572         	str	r2, [r6, #84]
    1670: 7033         	strb	r3, [r6]
    1672: 7274         	strb	r4, [r6, #9]
    1674: 6339         	str	r1, [r7, #48]
    1676: 6e6f         	ldr	r7, [r5, #100]
    1678: 7473         	strb	r3, [r6, #17]
    167a: 705f         	strb	r7, [r3, #1]
    167c: 7274         	strb	r4, [r6, #9]
    167e: 3333         	adds	r3, #51
    1680: 245f         	movs	r4, #95
    1682: 544c         	strb	r4, [r1, r1]
    1684: 6924         	ldr	r4, [r4, #16]
    1686: 706d         	strb	r5, [r5, #1]
    1688: 246c         	movs	r4, #108
    168a: 3275         	adds	r2, #117
    168c: 2430         	movs	r4, #48
    168e: 4224         	tst	r4, r4
    1690: 2450         	movs	r4, #80
    1692: 6f63         	ldr	r3, [r4, #116]
    1694: 736e         	strb	r6, [r5, #13]
    1696: 2474         	movs	r4, #116
    1698: 3275         	adds	r2, #117
    169a: 2430         	movs	r4, #48
    169c: 2454         	movs	r4, #84
    169e: 5447         	strb	r7, [r0, r1]
    16a0: 3624         	adds	r6, #36
    16a2: 666f         	str	r7, [r5, #100]
    16a4: 7366         	strb	r6, [r4, #13]
    16a6: 7465         	strb	r5, [r4, #17]
    16a8: 3731         	adds	r7, #49
    16aa: 3768         	adds	r7, #104
    16ac: 3963         	subs	r1, #99
    16ae: 6631         	str	r1, [r6, #96]
    16b0: 6463         	str	r3, [r4, #68]
    16b2: 6134         	str	r4, [r6, #16]
    16b4: 3937         	subs	r1, #55
    16b6: 3135         	adds	r1, #53
    16b8: 3965         	subs	r1, #101
    16ba: 4564         	cmp	r4, r12
    16bc: 5f00         	ldrsh	r0, [r0, r4]
    16be: 4e5a         	ldr	r6, [pc, #360]          @ 0x1828 <.debug_str+0x1828>
    16c0: 3731         	adds	r7, #49
    16c2: 6f63         	ldr	r3, [r4, #116]
    16c4: 706d         	strb	r5, [r5, #1]
    16c6: 6c69         	ldr	r1, [r5, #68]
    16c8: 7265         	strb	r5, [r4, #9]
    16ca: 625f         	str	r7, [r3, #36]
    16cc: 6975         	ldr	r5, [r6, #20]
    16ce: 746c         	strb	r4, [r5, #17]
    16d0: 6e69         	ldr	r1, [r5, #100]
    16d2: 3373         	adds	r3, #115
    16d4: 656d         	str	r5, [r5, #84]
    16d6: 356d         	adds	r5, #109
    16d8: 6d69         	ldr	r1, [r5, #84]
    16da: 6c70         	ldr	r0, [r6, #68]
    16dc: 3173         	adds	r1, #115
    16de: 6333         	str	r3, [r6, #48]
    16e0: 706f         	strb	r7, [r5, #1]
    16e2: 5f79         	ldrsh	r1, [r7, r5]
    16e4: 6162         	str	r2, [r4, #20]
    16e6: 6b63         	ldr	r3, [r4, #52]
    16e8: 6177         	str	r7, [r6, #20]
    16ea: 6472         	str	r2, [r6, #68]
    16ec: 3033         	adds	r0, #51
    16ee: 6f63         	ldr	r3, [r4, #116]
    16f0: 7970         	ldrb	r0, [r6, #5]
    16f2: 625f         	str	r7, [r3, #36]
    16f4: 6361         	str	r1, [r4, #52]
    16f6: 776b         	strb	r3, [r5, #29]
    16f8: 7261         	strb	r1, [r4, #9]
    16fa: 5f64         	ldrsh	r4, [r4, r5]
    16fc: 696d         	ldr	r5, [r5, #20]
    16fe: 6173         	str	r3, [r6, #20]
    1700: 696c         	ldr	r4, [r5, #20]
    1702: 6e67         	ldr	r7, [r4, #100]
    1704: 6465         	str	r5, [r4, #68]
    1706: 775f         	strb	r7, [r3, #29]
    1708: 726f         	strb	r7, [r5, #9]
    170a: 7364         	strb	r4, [r4, #13]
    170c: 3731         	adds	r7, #49
    170e: 6468         	str	r0, [r5, #68]
    1710: 6133         	str	r3, [r6, #16]
    1712: 3866         	subs	r0, #102
    1714: 3965         	subs	r1, #101
    1716: 6439         	str	r1, [r7, #64]
    1718: 6134         	str	r4, [r6, #16]
    171a: 6566         	str	r6, [r4, #84]
    171c: 6365         	str	r5, [r4, #52]
    171e: 4534         	cmp	r4, r6
    1720: 5f00         	ldrsh	r0, [r0, r4]
    1722: 4e5a         	ldr	r6, [pc, #360]          @ 0x188c <.debug_str+0x188c>
    1724: 3731         	adds	r7, #49
    1726: 6f63         	ldr	r3, [r4, #116]
    1728: 706d         	strb	r5, [r5, #1]
    172a: 6c69         	ldr	r1, [r5, #68]
    172c: 7265         	strb	r5, [r4, #9]
    172e: 625f         	str	r7, [r3, #36]
    1730: 6975         	ldr	r5, [r6, #20]
    1732: 746c         	strb	r4, [r5, #17]
    1734: 6e69         	ldr	r1, [r5, #100]
    1736: 3373         	adds	r3, #115
    1738: 656d         	str	r5, [r5, #84]
    173a: 336d         	adds	r3, #109
    173c: 6d32         	ldr	r2, [r6, #80]
    173e: 6d65         	ldr	r5, [r4, #84]
    1740: 6f6d         	ldr	r5, [r5, #116]
    1742: 6576         	str	r6, [r6, #84]
    1744: 655f         	str	r7, [r3, #84]
    1746: 656c         	str	r4, [r5, #84]
    1748: 656d         	str	r5, [r5, #84]
    174a: 746e         	strb	r6, [r5, #17]
    174c: 755f         	strb	r7, [r3, #21]
    174e: 6f6e         	ldr	r6, [r5, #116]
    1750: 6472         	str	r2, [r6, #68]
    1752: 7265         	strb	r5, [r4, #9]
    1754: 6465         	str	r5, [r4, #68]
    1756: 615f         	str	r7, [r3, #20]
    1758: 6f74         	ldr	r4, [r6, #116]
    175a: 696d         	ldr	r5, [r5, #20]
    175c: 3163         	adds	r1, #99
    175e: 6837         	ldr	r7, [r6]
    1760: 6639         	str	r1, [r7, #96]
    1762: 3264         	adds	r2, #100
    1764: 3236         	adds	r2, #54
    1766: 3361         	adds	r3, #97
    1768: 3530         	adds	r5, #48
    176a: 3938         	subs	r1, #56
    176c: 3736         	adds	r7, #54
    176e: 3461         	adds	r4, #97
    1770: 0045         	lsls	r5, r0, #1
    1772: 5a5f         	ldrh	r7, [r3, r1]
    1774: 314e         	adds	r1, #78
    1776: 6337         	str	r7, [r6, #48]
    1778: 6d6f         	ldr	r7, [r5, #84]
    177a: 6970         	ldr	r0, [r6, #20]
    177c: 656c         	str	r4, [r5, #84]
    177e: 5f72         	ldrsh	r2, [r6, r5]
    1780: 7562         	strb	r2, [r4, #21]
    1782: 6c69         	ldr	r1, [r5, #68]
    1784: 6974         	ldr	r4, [r6, #20]
    1786: 736e         	strb	r6, [r5, #13]
    1788: 6d33         	ldr	r3, [r6, #80]
    178a: 6d65         	ldr	r5, [r4, #84]
    178c: 3233         	adds	r2, #51
    178e: 656d         	str	r5, [r5, #84]
    1790: 6d6d         	ldr	r5, [r5, #84]
    1792: 766f         	strb	r7, [r5, #25]
    1794: 5f65         	ldrsh	r5, [r4, r5]
    1796: 6c65         	ldr	r5, [r4, #68]
    1798: 6d65         	ldr	r5, [r4, #84]
    179a: 6e65         	ldr	r5, [r4, #100]
    179c: 5f74         	ldrsh	r4, [r6, r5]
    179e: 6e75         	ldr	r5, [r6, #100]
    17a0: 726f         	strb	r7, [r5, #9]
    17a2: 6564         	str	r4, [r4, #84]
    17a4: 6572         	str	r2, [r6, #84]
    17a6: 5f64         	ldrsh	r4, [r4, r5]
    17a8: 7461         	strb	r1, [r4, #17]
    17aa: 6d6f         	ldr	r7, [r5, #84]
    17ac: 6369         	str	r1, [r5, #52]
    17ae: 3731         	adds	r7, #49
    17b0: 3068         	adds	r0, #104
    17b2: 3762         	adds	r7, #98
    17b4: 3937         	subs	r1, #55
    17b6: 6137         	str	r7, [r6, #16]
    17b8: 3833         	subs	r0, #51
    17ba: 6136         	str	r6, [r6, #16]
    17bc: 3661         	adds	r6, #97
    17be: 3031         	adds	r0, #49
    17c0: 4561         	cmp	r1, r12
    17c2: 5f00         	ldrsh	r0, [r0, r4]
    17c4: 4e5a         	ldr	r6, [pc, #360]          @ 0x1930 <.debug_str+0x1930>
    17c6: 3731         	adds	r7, #49
    17c8: 6f63         	ldr	r3, [r4, #116]
    17ca: 706d         	strb	r5, [r5, #1]
    17cc: 6c69         	ldr	r1, [r5, #68]
    17ce: 7265         	strb	r5, [r4, #9]
    17d0: 625f         	str	r7, [r3, #36]
    17d2: 6975         	ldr	r5, [r6, #20]
    17d4: 746c         	strb	r4, [r5, #17]
    17d6: 6e69         	ldr	r1, [r5, #100]
    17d8: 3373         	adds	r3, #115
    17da: 656d         	str	r5, [r5, #84]
    17dc: 376d         	adds	r7, #109
    17de: 656d         	str	r5, [r5, #84]
    17e0: 6d6d         	ldr	r5, [r5, #84]
    17e2: 766f         	strb	r7, [r5, #25]
    17e4: 3165         	adds	r1, #101
    17e6: 6837         	ldr	r7, [r6]
    17e8: 3134         	adds	r1, #52
    17ea: 3037         	adds	r0, #55
    17ec: 3263         	adds	r2, #99
    17ee: 3939         	subs	r1, #57
    17f0: 3166         	adds	r1, #102
    17f2: 3631         	adds	r6, #49
    17f4: 6539         	str	r1, [r7, #80]
    17f6: 3262         	adds	r2, #98
    17f8: 0045         	lsls	r5, r0, #1
    17fa: 7473         	strb	r3, [r6, #17]
    17fc: 6c72         	ldr	r2, [r6, #68]
    17fe: 6e65         	ldr	r5, [r4, #100]
    1800: 5f00         	ldrsh	r0, [r0, r4]
    1802: 4e5a         	ldr	r6, [pc, #360]          @ 0x196c <.debug_str+0x196c>
    1804: 3731         	adds	r7, #49
    1806: 6f63         	ldr	r3, [r4, #116]
    1808: 706d         	strb	r5, [r5, #1]
    180a: 6c69         	ldr	r1, [r5, #68]
    180c: 7265         	strb	r5, [r4, #9]
    180e: 625f         	str	r7, [r3, #36]
    1810: 6975         	ldr	r5, [r6, #20]
    1812: 746c         	strb	r4, [r5, #17]
    1814: 6e69         	ldr	r1, [r5, #100]
    1816: 3373         	adds	r3, #115
    1818: 656d         	str	r5, [r5, #84]
    181a: 336d         	adds	r3, #109
    181c: 6d32         	ldr	r2, [r6, #80]
    181e: 6d65         	ldr	r5, [r4, #84]
    1820: 6f6d         	ldr	r5, [r5, #116]
    1822: 6576         	str	r6, [r6, #84]
    1824: 655f         	str	r7, [r3, #84]
    1826: 656c         	str	r4, [r5, #84]
    1828: 656d         	str	r5, [r5, #84]
    182a: 746e         	strb	r6, [r5, #17]
    182c: 755f         	strb	r7, [r3, #21]
    182e: 6f6e         	ldr	r6, [r5, #116]
    1830: 6472         	str	r2, [r6, #68]
    1832: 7265         	strb	r5, [r4, #9]
    1834: 6465         	str	r5, [r4, #68]
    1836: 615f         	str	r7, [r3, #20]
    1838: 6f74         	ldr	r4, [r6, #116]
    183a: 696d         	ldr	r5, [r5, #20]
    183c: 3163         	adds	r1, #99
    183e: 6837         	ldr	r7, [r6]
    1840: 3363         	adds	r3, #99
    1842: 3733         	adds	r7, #51
    1844: 3666         	adds	r6, #102
    1846: 6332         	str	r2, [r6, #48]
    1848: 6133         	str	r3, [r6, #16]
    184a: 3538         	adds	r5, #56
    184c: 3961         	subs	r1, #97
    184e: 3564         	adds	r5, #100
    1850: 0045         	lsls	r5, r0, #1
    1852: 5a5f         	ldrh	r7, [r3, r1]
    1854: 314e         	adds	r1, #78
    1856: 6337         	str	r7, [r6, #48]
    1858: 6d6f         	ldr	r7, [r5, #84]
    185a: 6970         	ldr	r0, [r6, #20]
    185c: 656c         	str	r4, [r5, #84]
    185e: 5f72         	ldrsh	r2, [r6, r5]
    1860: 7562         	strb	r2, [r4, #21]
    1862: 6c69         	ldr	r1, [r5, #68]
    1864: 6974         	ldr	r4, [r6, #20]
    1866: 736e         	strb	r6, [r5, #13]
    1868: 6133         	str	r3, [r6, #16]
    186a: 6d72         	ldr	r2, [r6, #84]
    186c: 3431         	adds	r4, #49
    186e: 5f5f         	ldrsh	r7, [r3, r5]
    1870: 6561         	str	r1, [r4, #84]
    1872: 6261         	str	r1, [r4, #36]
    1874: 5f69         	ldrsh	r1, [r5, r5]
    1876: 656d         	str	r5, [r5, #84]
    1878: 636d         	str	r5, [r5, #52]
    187a: 7970         	ldrb	r0, [r6, #5]
    187c: 3731         	adds	r7, #49
    187e: 3168         	adds	r1, #104
    1880: 6364         	str	r4, [r4, #52]
    1882: 6465         	str	r5, [r4, #68]
    1884: 6133         	str	r3, [r6, #16]
    1886: 3732         	adds	r7, #50
    1888: 3063         	adds	r0, #99
    188a: 3736         	adds	r7, #54
    188c: 6138         	str	r0, [r7, #16]
    188e: 4566         	cmp	r6, r12
    1890: 6e00         	ldr	r0, [r0, #96]
    1892: 6d75         	ldr	r5, [r6, #84]
    1894: 5f00         	ldrsh	r0, [r0, r4]
    1896: 4e5a         	ldr	r6, [pc, #360]          @ 0x1a00 <.debug_str+0x1a00>
    1898: 6334         	str	r4, [r6, #48]
    189a: 726f         	strb	r7, [r5, #9]
    189c: 3365         	adds	r3, #101
    189e: 7470         	strb	r0, [r6, #17]
    18a0: 3972         	subs	r1, #114
    18a2: 6f63         	ldr	r3, [r4, #116]
    18a4: 736e         	strb	r6, [r5, #13]
    18a6: 5f74         	ldrsh	r4, [r6, r5]
    18a8: 7470         	strb	r0, [r6, #17]
    18aa: 3372         	adds	r3, #114
    18ac: 5f33         	ldrsh	r3, [r6, r4]
    18ae: 4c24         	ldr	r4, [pc, #144]          @ 0x1940 <.debug_str+0x1940>
    18b0: 2454         	movs	r4, #84
    18b2: 6d69         	ldr	r1, [r5, #84]
    18b4: 6c70         	ldr	r0, [r6, #68]
    18b6: 7524         	strb	r4, [r4, #20]
    18b8: 3032         	adds	r0, #50
    18ba: 2424         	movs	r4, #36
    18bc: 5042         	str	r2, [r0, r1]
    18be: 6324         	str	r4, [r4, #48]
    18c0: 6e6f         	ldr	r7, [r5, #100]
    18c2: 7473         	strb	r3, [r6, #17]
    18c4: 7524         	strb	r4, [r4, #20]
    18c6: 3032         	adds	r0, #50
    18c8: 5424         	strb	r4, [r4, r0]
    18ca: 4724         	bx	r4
    18cc: 2454         	movs	r4, #84
    18ce: 6f36         	ldr	r6, [r6, #112]
    18d0: 6666         	str	r6, [r4, #100]
    18d2: 6573         	str	r3, [r6, #84]
    18d4: 3174         	adds	r1, #116
    18d6: 6837         	ldr	r7, [r6]
    18d8: 3832         	subs	r0, #50
    18da: 3033         	adds	r0, #51
    18dc: 3336         	adds	r3, #54
    18de: 3637         	adds	r6, #55
    18e0: 3335         	adds	r3, #53
    18e2: 3062         	adds	r0, #98
    18e4: 3864         	subs	r0, #100
    18e6: 3438         	adds	r4, #56
    18e8: 0045         	lsls	r5, r0, #1
    18ea: 5a5f         	ldrh	r7, [r3, r1]
    18ec: 314e         	adds	r1, #78
    18ee: 6337         	str	r7, [r6, #48]
    18f0: 6d6f         	ldr	r7, [r5, #84]
    18f2: 6970         	ldr	r0, [r6, #20]
    18f4: 656c         	str	r4, [r5, #84]
    18f6: 5f72         	ldrsh	r2, [r6, r5]
    18f8: 7562         	strb	r2, [r4, #21]
    18fa: 6c69         	ldr	r1, [r5, #68]
    18fc: 6974         	ldr	r4, [r6, #20]
    18fe: 736e         	strb	r6, [r5, #13]
    1900: 6d33         	ldr	r3, [r6, #80]
    1902: 6d65         	ldr	r5, [r4, #84]
    1904: 7336         	strb	r6, [r6, #12]
    1906: 7274         	strb	r4, [r6, #9]
    1908: 656c         	str	r4, [r5, #84]
    190a: 316e         	adds	r1, #110
    190c: 6837         	ldr	r7, [r6]
    190e: 3561         	adds	r5, #97
    1910: 6631         	str	r1, [r6, #96]
    1912: 6435         	str	r5, [r6, #64]
    1914: 3437         	adds	r4, #55
    1916: 3564         	adds	r5, #100
    1918: 3538         	adds	r5, #56
    191a: 6630         	str	r0, [r6, #96]
    191c: 6636         	str	r6, [r6, #96]
    191e: 0045         	lsls	r5, r0, #1
    1920: 632f         	str	r7, [r5, #48]
    1922: 7261         	strb	r1, [r4, #9]
    1924: 6f67         	ldr	r7, [r4, #116]
    1926: 722f         	strb	r7, [r5, #8]
    1928: 6765         	str	r5, [r4, #116]
    192a: 7369         	strb	r1, [r5, #13]
    192c: 7274         	strb	r4, [r6, #9]
    192e: 2f79         	cmp	r7, #121
    1930: 7273         	strb	r3, [r6, #9]
    1932: 2f63         	cmp	r7, #99
    1934: 6967         	ldr	r7, [r4, #20]
    1936: 6874         	ldr	r4, [r6, #4]
    1938: 6275         	str	r5, [r6, #36]
    193a: 632e         	str	r6, [r5, #48]
    193c: 6d6f         	ldr	r7, [r5, #84]
    193e: 312d         	adds	r1, #45
    1940: 6365         	str	r5, [r4, #52]
    1942: 3663         	adds	r6, #99
    1944: 3932         	subs	r1, #50
    1946: 6439         	str	r1, [r7, #64]
    1948: 3962         	subs	r1, #98
    194a: 6365         	str	r5, [r4, #52]
    194c: 3238         	adds	r2, #56
    194e: 2f33         	cmp	r7, #51
    1950: 6f63         	ldr	r3, [r4, #116]
    1952: 706d         	strb	r5, [r5, #1]
    1954: 6c69         	ldr	r1, [r5, #68]
    1956: 7265         	strb	r5, [r4, #9]
    1958: 625f         	str	r7, [r3, #36]
    195a: 6975         	ldr	r5, [r6, #20]
    195c: 746c         	strb	r4, [r5, #17]
    195e: 6e69         	ldr	r1, [r5, #100]
    1960: 2d73         	cmp	r5, #115
    1962: 2e30         	cmp	r6, #48
    1964: 2e31         	cmp	r6, #49
    1966: 3538         	adds	r5, #56
    1968: 732f         	strb	r7, [r5, #12]
    196a: 6372         	str	r2, [r6, #52]
    196c: 6c2f         	ldr	r7, [r5, #64]
    196e: 6269         	str	r1, [r5, #36]
    1970: 722e         	strb	r6, [r5, #8]
    1972: 2f73         	cmp	r7, #115
    1974: 2f40         	cmp	r7, #64
    1976: 6f63         	ldr	r3, [r4, #116]
    1978: 706d         	strb	r5, [r5, #1]
    197a: 6c69         	ldr	r1, [r5, #68]
    197c: 7265         	strb	r5, [r4, #9]
    197e: 625f         	str	r7, [r3, #36]
    1980: 6975         	ldr	r5, [r6, #20]
    1982: 746c         	strb	r4, [r5, #17]
    1984: 6e69         	ldr	r1, [r5, #100]
    1986: 2e73         	cmp	r6, #115
    1988: 6237         	str	r7, [r6, #32]
    198a: 6561         	str	r1, [r4, #84]
    198c: 3266         	adds	r2, #102
    198e: 3364         	adds	r3, #100
    1990: 632d         	str	r5, [r5, #48]
    1992: 7567         	strb	r7, [r4, #21]
    1994: 382e         	subs	r0, #46
    1996: 7700         	strb	r0, [r0, #28]
    1998: 6172         	str	r2, [r6, #20]
    199a: 7070         	strb	r0, [r6, #1]
    199c: 6e69         	ldr	r1, [r5, #100]
    199e: 5f67         	ldrsh	r7, [r4, r5]
    19a0: 7573         	strb	r3, [r6, #21]
    19a2: 0062         	lsls	r2, r4, #1
    19a4: 5a5f         	ldrh	r7, [r3, r1]
    19a6: 344e         	adds	r4, #78
    19a8: 6f63         	ldr	r3, [r4, #116]
    19aa: 6572         	str	r2, [r6, #84]
    19ac: 7033         	strb	r3, [r6]
    19ae: 7274         	strb	r4, [r6, #9]
    19b0: 6d37         	ldr	r7, [r6, #80]
    19b2: 7475         	strb	r5, [r6, #17]
    19b4: 705f         	strb	r7, [r3, #1]
    19b6: 7274         	strb	r4, [r6, #9]
    19b8: 3133         	adds	r1, #51
    19ba: 245f         	movs	r4, #95
    19bc: 544c         	strb	r4, [r1, r1]
    19be: 6924         	ldr	r4, [r4, #16]
    19c0: 706d         	strb	r5, [r5, #1]
    19c2: 246c         	movs	r4, #108
    19c4: 3275         	adds	r2, #117
    19c6: 2430         	movs	r4, #48
    19c8: 4224         	tst	r4, r4
    19ca: 2450         	movs	r4, #80
    19cc: 756d         	strb	r5, [r5, #21]
    19ce: 2474         	movs	r4, #116
    19d0: 3275         	adds	r2, #117
    19d2: 2430         	movs	r4, #48
    19d4: 2454         	movs	r4, #84
    19d6: 5447         	strb	r7, [r0, r1]
    19d8: 3324         	adds	r3, #36
    19da: 7573         	strb	r3, [r6, #21]
    19dc: 3162         	adds	r1, #98
    19de: 6837         	ldr	r7, [r6]
    19e0: 6234         	str	r4, [r6, #32]
    19e2: 3739         	adds	r7, #57
    19e4: 3834         	subs	r0, #52
    19e6: 6261         	str	r1, [r4, #36]
    19e8: 3436         	adds	r4, #54
    19ea: 3065         	adds	r0, #101
    19ec: 3435         	adds	r4, #53
    19ee: 3062         	adds	r0, #98
    19f0: 0045         	lsls	r5, r0, #1
    19f2: 5a5f         	ldrh	r7, [r3, r1]
    19f4: 344e         	adds	r4, #78
    19f6: 6f63         	ldr	r3, [r4, #116]
    19f8: 6572         	str	r2, [r6, #84]
    19fa: 7033         	strb	r3, [r6]
    19fc: 7274         	strb	r4, [r6, #9]
    19fe: 6d37         	ldr	r7, [r6, #80]
    1a00: 7475         	strb	r5, [r6, #17]
    1a02: 705f         	strb	r7, [r3, #1]
    1a04: 7274         	strb	r4, [r6, #9]
    1a06: 3133         	adds	r1, #51
    1a08: 245f         	movs	r4, #95
    1a0a: 544c         	strb	r4, [r1, r1]
    1a0c: 6924         	ldr	r4, [r4, #16]
    1a0e: 706d         	strb	r5, [r5, #1]
    1a10: 246c         	movs	r4, #108
    1a12: 3275         	adds	r2, #117
    1a14: 2430         	movs	r4, #48
    1a16: 4224         	tst	r4, r4
    1a18: 2450         	movs	r4, #80
    1a1a: 756d         	strb	r5, [r5, #21]
    1a1c: 2474         	movs	r4, #116
    1a1e: 3275         	adds	r2, #117
    1a20: 2430         	movs	r4, #48
    1a22: 2454         	movs	r4, #84
    1a24: 5447         	strb	r7, [r0, r1]
    1a26: 3324         	adds	r3, #36
    1a28: 6461         	str	r1, [r4, #68]
    1a2a: 3164         	adds	r1, #100
    1a2c: 6837         	ldr	r7, [r6]
    1a2e: 3435         	adds	r4, #53
    1a30: 6561         	str	r1, [r4, #84]
    1a32: 6261         	str	r1, [r4, #36]
    1a34: 3264         	adds	r2, #100
    1a36: 6234         	str	r4, [r6, #32]
    1a38: 6634         	str	r4, [r6, #96]
    1a3a: 3339         	adds	r3, #57
    1a3c: 6239         	str	r1, [r7, #32]
    1a3e: 0045         	lsls	r5, r0, #1
    1a40: 5a5f         	ldrh	r7, [r3, r1]
    1a42: 314e         	adds	r1, #78
    1a44: 6337         	str	r7, [r6, #48]
    1a46: 6d6f         	ldr	r7, [r5, #84]
    1a48: 6970         	ldr	r0, [r6, #20]
    1a4a: 656c         	str	r4, [r5, #84]
    1a4c: 5f72         	ldrsh	r2, [r6, r5]
    1a4e: 7562         	strb	r2, [r4, #21]
    1a50: 6c69         	ldr	r1, [r5, #68]
    1a52: 6974         	ldr	r4, [r6, #20]
    1a54: 736e         	strb	r6, [r5, #13]
    1a56: 6d33         	ldr	r3, [r6, #80]
    1a58: 6d65         	ldr	r5, [r4, #84]
    1a5a: 6d36         	ldr	r6, [r6, #80]
    1a5c: 6d65         	ldr	r5, [r4, #84]
    1a5e: 7063         	strb	r3, [r4, #1]
    1a60: 3179         	adds	r1, #121
    1a62: 6837         	ldr	r7, [r6]
    1a64: 3939         	subs	r1, #57
    1a66: 3565         	adds	r5, #101
    1a68: 3864         	subs	r0, #100
    1a6a: 6530         	str	r0, [r6, #80]
    1a6c: 3034         	adds	r0, #52
    1a6e: 6662         	str	r2, [r4, #100]
    1a70: 3533         	adds	r5, #51
    1a72: 6162         	str	r2, [r4, #20]
    1a74: 0045         	lsls	r5, r0, #1
    1a76: 5a5f         	ldrh	r7, [r3, r1]
    1a78: 314e         	adds	r1, #78
    1a7a: 6337         	str	r7, [r6, #48]
    1a7c: 6d6f         	ldr	r7, [r5, #84]
    1a7e: 6970         	ldr	r0, [r6, #20]
    1a80: 656c         	str	r4, [r5, #84]
    1a82: 5f72         	ldrsh	r2, [r6, r5]
    1a84: 7562         	strb	r2, [r4, #21]
    1a86: 6c69         	ldr	r1, [r5, #68]
    1a88: 6974         	ldr	r4, [r6, #20]
    1a8a: 736e         	strb	r6, [r5, #13]
    1a8c: 6d33         	ldr	r3, [r6, #80]
    1a8e: 6d65         	ldr	r5, [r4, #84]
    1a90: 6234         	str	r4, [r6, #32]
    1a92: 6d63         	ldr	r3, [r4, #84]
    1a94: 3170         	adds	r1, #112
    1a96: 6837         	ldr	r7, [r6]
    1a98: 3964         	subs	r1, #100
    1a9a: 3038         	adds	r0, #56
    1a9c: 3632         	adds	r6, #50
    1a9e: 3563         	adds	r5, #99
    1aa0: 3937         	subs	r1, #55
    1aa2: 3233         	adds	r2, #51
    1aa4: 3561         	adds	r5, #97
    1aa6: 3336         	adds	r3, #54
    1aa8: 0045         	lsls	r5, r0, #1
    1aaa: 5a5f         	ldrh	r7, [r3, r1]
    1aac: 314e         	adds	r1, #78
    1aae: 6337         	str	r7, [r6, #48]
    1ab0: 6d6f         	ldr	r7, [r5, #84]
    1ab2: 6970         	ldr	r0, [r6, #20]
    1ab4: 656c         	str	r4, [r5, #84]
    1ab6: 5f72         	ldrsh	r2, [r6, r5]
    1ab8: 7562         	strb	r2, [r4, #21]
    1aba: 6c69         	ldr	r1, [r5, #68]
    1abc: 6974         	ldr	r4, [r6, #20]
    1abe: 736e         	strb	r6, [r5, #13]
    1ac0: 6d33         	ldr	r3, [r6, #80]
    1ac2: 6d65         	ldr	r5, [r4, #84]
    1ac4: 3034         	adds	r0, #52
    1ac6: 5f5f         	ldrsh	r7, [r3, r5]
    1ac8: 6c6c         	ldr	r4, [r5, #68]
    1aca: 6d76         	ldr	r6, [r6, #84]
    1acc: 6d5f         	ldr	r7, [r3, #84]
    1ace: 6d65         	ldr	r5, [r4, #84]
    1ad0: 7063         	strb	r3, [r4, #1]
    1ad2: 5f79         	ldrsh	r1, [r7, r5]
    1ad4: 6c65         	ldr	r5, [r4, #68]
    1ad6: 6d65         	ldr	r5, [r4, #84]
    1ad8: 6e65         	ldr	r5, [r4, #100]
    1ada: 5f74         	ldrsh	r4, [r6, r5]
    1adc: 6e75         	ldr	r5, [r6, #100]
    1ade: 726f         	strb	r7, [r5, #9]
    1ae0: 6564         	str	r4, [r4, #84]
    1ae2: 6572         	str	r2, [r6, #84]
    1ae4: 5f64         	ldrsh	r4, [r4, r5]
    1ae6: 7461         	strb	r1, [r4, #17]
    1ae8: 6d6f         	ldr	r7, [r5, #84]
    1aea: 6369         	str	r1, [r5, #52]
    1aec: 325f         	adds	r2, #95
    1aee: 3731         	adds	r7, #49
    1af0: 6668         	str	r0, [r5, #100]
    1af2: 3165         	adds	r1, #101
    1af4: 3335         	adds	r3, #53
    1af6: 3762         	adds	r7, #98
    1af8: 3562         	adds	r5, #98
    1afa: 3138         	adds	r1, #56
    1afc: 3162         	adds	r1, #98
    1afe: 3732         	adds	r7, #50
    1b00: 4534         	cmp	r4, r6
    1b02: 00           	<unknown>

Disassembly of section .debug_pubnames:

00000000 <.debug_pubnames>:
       0: 0040         	lsls	r0, r0, #1
       2: 0000         	movs	r0, r0
       4: 0002         	movs	r2, r0
       6: 0000         	movs	r0, r0
       8: 0000         	movs	r0, r0
       a: 004b         	lsls	r3, r1, #1
       c: 0000         	movs	r0, r0
       e: 002b         	movs	r3, r5
      10: 0000         	movs	r0, r0
      12: 7261         	strb	r1, [r4, #9]
      14: 006d         	lsls	r5, r5, #1
      16: 0026         	movs	r6, r4
      18: 0000         	movs	r0, r0
      1a: 6f63         	ldr	r3, [r4, #116]
      1c: 706d         	strb	r5, [r5, #1]
      1e: 6c69         	ldr	r1, [r5, #68]
      20: 7265         	strb	r5, [r4, #9]
      22: 625f         	str	r7, [r3, #36]
      24: 6975         	ldr	r5, [r6, #20]
      26: 746c         	strb	r4, [r5, #17]
      28: 6e69         	ldr	r1, [r5, #100]
      2a: 0073         	lsls	r3, r6, #1
      2c: 0035         	movs	r5, r6
      2e: 0000         	movs	r0, r0
      30: 5f5f         	ldrsh	r7, [r3, r5]
      32: 6561         	str	r1, [r4, #84]
      34: 6261         	str	r1, [r4, #36]
      36: 5f69         	ldrsh	r1, [r5, r5]
      38: 656d         	str	r5, [r5, #84]
      3a: 636d         	str	r5, [r5, #52]
      3c: 7970         	ldrb	r0, [r6, #5]
      3e: 0034         	movs	r4, r6
      40: 0000         	movs	r0, r0
      42: 0000         	movs	r0, r0
      44: 012c         	lsls	r4, r5, #4
      46: 0000         	movs	r0, r0
      48: 0002         	movs	r2, r0
      4a: 004b         	lsls	r3, r1, #1
      4c: 0000         	movs	r0, r0
      4e: 0174         	lsls	r4, r6, #5
      50: 0000         	movs	r0, r0
      52: 002b         	movs	r3, r5
      54: 0000         	movs	r0, r0
      56: 7261         	strb	r1, [r4, #9]
      58: 006d         	lsls	r5, r5, #1
      5a: 011c         	lsls	r4, r3, #4
      5c: 0000         	movs	r0, r0
      5e: 5f5f         	ldrsh	r7, [r3, r5]
      60: 6561         	str	r1, [r4, #84]
      62: 6261         	str	r1, [r4, #36]
      64: 5f69         	ldrsh	r1, [r5, r5]
      66: 656d         	str	r5, [r5, #84]
      68: 636d         	str	r5, [r5, #52]
      6a: 726c         	strb	r4, [r5, #9]
      6c: 0034         	movs	r4, r6
      6e: 0026         	movs	r6, r4
      70: 0000         	movs	r0, r0
      72: 6f63         	ldr	r3, [r4, #116]
      74: 706d         	strb	r5, [r5, #1]
      76: 6c69         	ldr	r1, [r5, #68]
      78: 7265         	strb	r5, [r4, #9]
      7a: 625f         	str	r7, [r3, #36]
      7c: 6975         	ldr	r5, [r6, #20]
      7e: 746c         	strb	r4, [r5, #17]
      80: 6e69         	ldr	r1, [r5, #100]
      82: 0073         	lsls	r3, r6, #1
      84: 008b         	lsls	r3, r1, #2
      86: 0000         	movs	r0, r0
      88: 5f5f         	ldrsh	r7, [r3, r5]
      8a: 6561         	str	r1, [r4, #84]
      8c: 6261         	str	r1, [r4, #36]
      8e: 5f69         	ldrsh	r1, [r5, r5]
      90: 656d         	str	r5, [r5, #84]
      92: 6d6d         	ldr	r5, [r5, #84]
      94: 766f         	strb	r7, [r5, #25]
      96: 0065         	lsls	r5, r4, #1
      98: 0134         	lsls	r4, r6, #4
      9a: 0000         	movs	r0, r0
      9c: 6f63         	ldr	r3, [r4, #116]
      9e: 6572         	str	r2, [r6, #84]
      a0: 3e00         	subs	r6, #0
      a2: 0001         	movs	r1, r0
      a4: 6d00         	ldr	r0, [r0, #80]
      a6: 7475         	strb	r5, [r6, #17]
      a8: 705f         	strb	r7, [r3, #1]
      aa: 7274         	strb	r4, [r6, #9]
      ac: 4600         	mov	r0, r0
      ae: 0000         	movs	r0, r0
      b0: 5f00         	ldrsh	r0, [r0, r4]
      b2: 615f         	str	r7, [r3, #20]
      b4: 6165         	str	r5, [r4, #20]
      b6: 6962         	ldr	r2, [r4, #20]
      b8: 6d5f         	ldr	r7, [r3, #84]
      ba: 6d65         	ldr	r5, [r4, #84]
      bc: 7063         	strb	r3, [r4, #1]
      be: 3479         	adds	r4, #121
      c0: cd00         	<unknown>
      c2: 0000         	movs	r0, r0
      c4: 5f00         	ldrsh	r0, [r0, r4]
      c6: 615f         	str	r7, [r3, #20]
      c8: 6165         	str	r5, [r4, #20]
      ca: 6962         	ldr	r2, [r4, #20]
      cc: 6d5f         	ldr	r7, [r3, #84]
      ce: 6d65         	ldr	r5, [r4, #84]
      d0: 6573         	str	r3, [r6, #84]
      d2: 3474         	adds	r4, #116
      d4: 0600         	lsls	r0, r0, #24
      d6: 0001         	movs	r1, r0
      d8: 5f00         	ldrsh	r0, [r0, r4]
      da: 615f         	str	r7, [r3, #20]
      dc: 6165         	str	r5, [r4, #20]
      de: 6962         	ldr	r2, [r4, #20]
      e0: 6d5f         	ldr	r7, [r3, #84]
      e2: 6d65         	ldr	r5, [r4, #84]
      e4: 6c63         	ldr	r3, [r4, #68]
      e6: 0072         	lsls	r2, r6, #1
      e8: 0075         	lsls	r5, r6, #1
      ea: 0000         	movs	r0, r0
      ec: 5f5f         	ldrsh	r7, [r3, r5]
      ee: 6561         	str	r1, [r4, #84]
      f0: 6261         	str	r1, [r4, #36]
      f2: 5f69         	ldrsh	r1, [r5, r5]
      f4: 656d         	str	r5, [r5, #84]
      f6: 636d         	str	r5, [r5, #52]
      f8: 7970         	ldrb	r0, [r6, #5]
      fa: 0038         	movs	r0, r7
      fc: 00f0         	lsls	r0, r6, #3
      fe: 0000         	movs	r0, r0
     100: 5f5f         	ldrsh	r7, [r3, r5]
     102: 6561         	str	r1, [r4, #84]
     104: 6261         	str	r1, [r4, #36]
     106: 5f69         	ldrsh	r1, [r5, r5]
     108: 656d         	str	r5, [r5, #84]
     10a: 736d         	strb	r5, [r5, #13]
     10c: 7465         	strb	r5, [r4, #17]
     10e: 0038         	movs	r0, r7
     110: 0139         	lsls	r1, r7, #4
     112: 0000         	movs	r0, r0
     114: 7470         	strb	r0, [r6, #17]
     116: 0072         	lsls	r2, r6, #1
     118: 00a1         	lsls	r1, r4, #2
     11a: 0000         	movs	r0, r0
     11c: 5f5f         	ldrsh	r7, [r3, r5]
     11e: 6561         	str	r1, [r4, #84]
     120: 6261         	str	r1, [r4, #36]
     122: 5f69         	ldrsh	r1, [r5, r5]
     124: 656d         	str	r5, [r5, #84]
     126: 6d6d         	ldr	r5, [r5, #84]
     128: 766f         	strb	r7, [r5, #25]
     12a: 3465         	adds	r4, #101
     12c: b700         	<unknown>
     12e: 0000         	movs	r0, r0
     130: 5f00         	ldrsh	r0, [r0, r4]
     132: 615f         	str	r7, [r3, #20]
     134: 6165         	str	r5, [r4, #20]
     136: 6962         	ldr	r2, [r4, #20]
     138: 6d5f         	ldr	r7, [r3, #84]
     13a: 6d65         	ldr	r5, [r4, #84]
     13c: 6573         	str	r3, [r6, #84]
     13e: 0074         	lsls	r4, r6, #1
     140: 0030         	movs	r0, r6
     142: 0000         	movs	r0, r0
     144: 5f5f         	ldrsh	r7, [r3, r5]
     146: 6561         	str	r1, [r4, #84]
     148: 6261         	str	r1, [r4, #36]
     14a: 5f69         	ldrsh	r1, [r5, r5]
     14c: 656d         	str	r5, [r5, #84]
     14e: 636d         	str	r5, [r5, #52]
     150: 7970         	ldrb	r0, [r6, #5]
     152: 6200         	str	r0, [r0, #32]
     154: 0001         	movs	r1, r0
     156: 6f00         	ldr	r0, [r0, #112]
     158: 6666         	str	r6, [r4, #100]
     15a: 6573         	str	r3, [r6, #84]
     15c: 3c74         	subs	r4, #116
     15e: 3375         	adds	r3, #117
     160: 3e32         	subs	r6, #50
     162: 4300         	orrs	r0, r0
     164: 0001         	movs	r1, r0
     166: 7b00         	ldrb	r0, [r0, #12]
     168: 6d69         	ldr	r1, [r5, #84]
     16a: 6c70         	ldr	r0, [r6, #68]
     16c: 3023         	adds	r0, #35
     16e: 007d         	lsls	r5, r7, #1
     170: 0000         	movs	r0, r0
     172: 0000         	movs	r0, r0
     174: 059d         	lsls	r5, r3, #22
     176: 0000         	movs	r0, r0
     178: 0002         	movs	r2, r0
     17a: 01bf         	lsls	r7, r7, #6
     17c: 0000         	movs	r0, r0
     17e: 0ceb         	lsrs	r3, r5, #19
     180: 0000         	movs	r0, r0
     182: 0976         	lsrs	r6, r6, #5
     184: 0000         	movs	r0, r0
     186: 7277         	strb	r7, [r6, #9]
     188: 7061         	strb	r1, [r4, #1]
     18a: 6970         	ldr	r0, [r6, #20]
     18c: 676e         	str	r6, [r5, #116]
     18e: 6e5f         	ldr	r7, [r3, #100]
     190: 6765         	str	r5, [r4, #116]
     192: 8400         	strh	r0, [r0, #32]
     194: 0009         	movs	r1, r1
     196: 7b00         	ldrb	r0, [r0, #12]
     198: 6d69         	ldr	r1, [r5, #84]
     19a: 6c70         	ldr	r0, [r6, #68]
     19c: 3623         	adds	r6, #35
     19e: 007d         	lsls	r5, r7, #1
     1a0: 0030         	movs	r0, r6
     1a2: 0000         	movs	r0, r0
     1a4: 6d69         	ldr	r1, [r5, #84]
     1a6: 6c70         	ldr	r0, [r6, #68]
     1a8: 0073         	lsls	r3, r6, #1
     1aa: 09aa         	lsrs	r2, r5, #6
     1ac: 0000         	movs	r0, r0
     1ae: 756d         	strb	r5, [r5, #21]
     1b0: 5f74         	ldrsh	r4, [r6, r5]
     1b2: 7470         	strb	r0, [r6, #17]
     1b4: 0072         	lsls	r2, r6, #1
     1b6: 06a0         	lsls	r0, r4, #26
     1b8: 0000         	movs	r0, r0
     1ba: 656d         	str	r5, [r5, #84]
     1bc: 636d         	str	r5, [r5, #52]
     1be: 7970         	ldrb	r0, [r6, #5]
     1c0: 655f         	str	r7, [r3, #84]
     1c2: 656c         	str	r4, [r5, #84]
     1c4: 656d         	str	r5, [r5, #84]
     1c6: 746e         	strb	r6, [r5, #17]
     1c8: 755f         	strb	r7, [r3, #21]
     1ca: 6f6e         	ldr	r6, [r5, #116]
     1cc: 6472         	str	r2, [r6, #68]
     1ce: 7265         	strb	r5, [r4, #9]
     1d0: 6465         	str	r5, [r4, #68]
     1d2: 615f         	str	r7, [r3, #20]
     1d4: 6f74         	ldr	r4, [r6, #116]
     1d6: 696d         	ldr	r5, [r5, #20]
     1d8: 3c63         	subs	r4, #99
     1da: 3375         	adds	r3, #117
     1dc: 3e32         	subs	r6, #50
     1de: 3800         	subs	r0, #0
     1e0: 0006         	movs	r6, r0
     1e2: 6d00         	ldr	r0, [r0, #80]
     1e4: 6d65         	ldr	r5, [r4, #84]
     1e6: 7063         	strb	r3, [r4, #1]
     1e8: 5f79         	ldrsh	r1, [r7, r5]
     1ea: 6c65         	ldr	r5, [r4, #68]
     1ec: 6d65         	ldr	r5, [r4, #84]
     1ee: 6e65         	ldr	r5, [r4, #100]
     1f0: 5f74         	ldrsh	r4, [r6, r5]
     1f2: 6e75         	ldr	r5, [r6, #100]
     1f4: 726f         	strb	r7, [r5, #9]
     1f6: 6564         	str	r4, [r4, #84]
     1f8: 6572         	str	r2, [r6, #84]
     1fa: 5f64         	ldrsh	r4, [r4, r5]
     1fc: 7461         	strb	r1, [r4, #17]
     1fe: 6d6f         	ldr	r7, [r5, #84]
     200: 6369         	str	r1, [r5, #52]
     202: 753c         	strb	r4, [r7, #20]
     204: 3631         	adds	r6, #49
     206: 003e         	movs	r6, r7
     208: 00e9         	lsls	r1, r5, #3
     20a: 0000         	movs	r0, r0
     20c: 6f63         	ldr	r3, [r4, #116]
     20e: 7970         	ldrb	r0, [r6, #5]
     210: 665f         	str	r7, [r3, #100]
     212: 726f         	strb	r7, [r5, #9]
     214: 6177         	str	r7, [r6, #20]
     216: 6472         	str	r2, [r6, #68]
     218: bb00         	cbnz	r0, 0x25c <.debug_str+0x25c> @ imm = #64
     21a: 000b         	movs	r3, r1
     21c: 7300         	strb	r0, [r0, #12]
     21e: 6275         	str	r5, [r6, #36]
     220: 753c         	strb	r4, [r7, #20]
     222: 3e38         	subs	r6, #56
     224: 0100         	lsls	r0, r0, #4
     226: 0001         	movs	r1, r0
     228: 7300         	strb	r0, [r0, #12]
     22a: 7465         	strb	r5, [r4, #17]
     22c: 625f         	str	r7, [r3, #36]
     22e: 7479         	strb	r1, [r7, #17]
     230: 7365         	strb	r5, [r4, #13]
     232: b300         	cbz	r0, 0x276 <.debug_str+0x276> @ imm = #64
     234: 0000         	movs	r0, r0
     236: 6300         	str	r0, [r0, #48]
     238: 706f         	strb	r7, [r5, #1]
     23a: 5f79         	ldrsh	r1, [r7, r5]
     23c: 6162         	str	r2, [r4, #20]
     23e: 6b63         	ldr	r3, [r4, #52]
     240: 6177         	str	r7, [r6, #20]
     242: 6472         	str	r2, [r6, #68]
     244: ec00 000a    	<unknown>
     248: 6f00         	ldr	r0, [r0, #112]
     24a: 6666         	str	r6, [r4, #100]
     24c: 6573         	str	r3, [r6, #84]
     24e: 3c74         	subs	r4, #116
     250: 3375         	adds	r3, #117
     252: 3e32         	subs	r6, #50
     254: d200         	bhs	0x258 <.debug_str+0x258> @ imm = #0
     256: 000a         	movs	r2, r1
     258: 6f00         	ldr	r0, [r0, #112]
     25a: 6666         	str	r6, [r4, #100]
     25c: 6573         	str	r3, [r6, #84]
     25e: 3c74         	subs	r4, #116
     260: 3175         	adds	r1, #117
     262: 3e36         	subs	r6, #54
     264: 2b00         	cmp	r3, #0
     266: 0000         	movs	r0, r0
     268: 6d00         	ldr	r0, [r0, #80]
     26a: 6d65         	ldr	r5, [r4, #84]
     26c: 1200         	asrs	r0, r0, #8
     26e: 0001         	movs	r1, r0
     270: 7300         	strb	r0, [r0, #12]
     272: 7465         	strb	r5, [r4, #17]
     274: 625f         	str	r7, [r3, #36]
     276: 7479         	strb	r1, [r7, #17]
     278: 7365         	strb	r5, [r4, #13]
     27a: 775f         	strb	r7, [r3, #29]
     27c: 726f         	strb	r7, [r5, #9]
     27e: 7364         	strb	r4, [r4, #13]
     280: 2600         	movs	r6, #0
     282: 0000         	movs	r0, r0
     284: 6300         	str	r0, [r0, #48]
     286: 6d6f         	ldr	r7, [r5, #84]
     288: 6970         	ldr	r0, [r6, #20]
     28a: 656c         	str	r4, [r5, #84]
     28c: 5f72         	ldrsh	r2, [r6, r5]
     28e: 7562         	strb	r2, [r4, #21]
     290: 6c69         	ldr	r1, [r5, #68]
     292: 6974         	ldr	r4, [r6, #20]
     294: 736e         	strb	r6, [r5, #13]
     296: 0400         	lsls	r0, r0, #16
     298: 0007         	movs	r7, r0
     29a: 6d00         	ldr	r0, [r0, #80]
     29c: 6d65         	ldr	r5, [r4, #84]
     29e: 6f6d         	ldr	r5, [r5, #116]
     2a0: 6576         	str	r6, [r6, #84]
     2a2: 655f         	str	r7, [r3, #84]
     2a4: 656c         	str	r4, [r5, #84]
     2a6: 656d         	str	r5, [r5, #84]
     2a8: 746e         	strb	r6, [r5, #17]
     2aa: 755f         	strb	r7, [r3, #21]
     2ac: 6f6e         	ldr	r6, [r5, #116]
     2ae: 6472         	str	r2, [r6, #68]
     2b0: 7265         	strb	r5, [r4, #9]
     2b2: 6465         	str	r5, [r4, #68]
     2b4: 615f         	str	r7, [r3, #20]
     2b6: 6f74         	ldr	r4, [r6, #116]
     2b8: 696d         	ldr	r5, [r5, #20]
     2ba: 3c63         	subs	r4, #99
     2bc: 3875         	subs	r0, #117
     2be: 003e         	movs	r6, r7
     2c0: 08c5         	lsrs	r5, r0, #3
     2c2: 0000         	movs	r0, r0
     2c4: 656d         	str	r5, [r5, #84]
     2c6: 736d         	strb	r5, [r5, #13]
     2c8: 7465         	strb	r5, [r4, #17]
     2ca: 655f         	str	r7, [r3, #84]
     2cc: 656c         	str	r4, [r5, #84]
     2ce: 656d         	str	r5, [r5, #84]
     2d0: 746e         	strb	r6, [r5, #17]
     2d2: 755f         	strb	r7, [r3, #21]
     2d4: 6f6e         	ldr	r6, [r5, #116]
     2d6: 6472         	str	r2, [r6, #68]
     2d8: 7265         	strb	r5, [r4, #9]
     2da: 6465         	str	r5, [r4, #68]
     2dc: 615f         	str	r7, [r3, #20]
     2de: 6f74         	ldr	r4, [r6, #116]
     2e0: 696d         	ldr	r5, [r5, #20]
     2e2: 3c63         	subs	r4, #99
     2e4: 3375         	adds	r3, #117
     2e6: 3e32         	subs	r6, #50
     2e8: 2b00         	cmp	r3, #0
     2ea: 0001         	movs	r1, r0
     2ec: 6300         	str	r0, [r0, #48]
     2ee: 6d6f         	ldr	r7, [r5, #84]
     2f0: 6170         	str	r0, [r6, #20]
     2f2: 6572         	str	r2, [r6, #84]
     2f4: 625f         	str	r7, [r3, #36]
     2f6: 7479         	strb	r1, [r7, #17]
     2f8: 7365         	strb	r5, [r4, #13]
     2fa: 7300         	strb	r0, [r0, #12]
     2fc: 0008         	movs	r0, r1
     2fe: 6d00         	ldr	r0, [r0, #80]
     300: 6d65         	ldr	r5, [r4, #84]
     302: 6573         	str	r3, [r6, #84]
     304: 5f74         	ldrsh	r4, [r6, r5]
     306: 6c65         	ldr	r5, [r4, #68]
     308: 6d65         	ldr	r5, [r4, #84]
     30a: 6e65         	ldr	r5, [r4, #100]
     30c: 5f74         	ldrsh	r4, [r6, r5]
     30e: 6e75         	ldr	r5, [r6, #100]
     310: 726f         	strb	r7, [r5, #9]
     312: 6564         	str	r4, [r4, #84]
     314: 6572         	str	r2, [r6, #84]
     316: 5f64         	ldrsh	r4, [r4, r5]
     318: 7461         	strb	r1, [r4, #17]
     31a: 6d6f         	ldr	r7, [r5, #84]
     31c: 6369         	str	r1, [r5, #52]
     31e: 753c         	strb	r4, [r7, #20]
     320: 3631         	adds	r6, #49
     322: 003e         	movs	r6, r7
     324: 0a29         	lsrs	r1, r5, #8
     326: 0000         	movs	r0, r0
     328: 7573         	strb	r3, [r6, #21]
     32a: 3c62         	subs	r4, #98
     32c: 7375         	strb	r5, [r6, #13]
     32e: 7a69         	ldrb	r1, [r5, #9]
     330: 3e65         	subs	r6, #101
     332: 8e00         	ldrh	r0, [r0, #48]
     334: 0000         	movs	r0, r0
     336: 6300         	str	r0, [r0, #48]
     338: 706f         	strb	r7, [r5, #1]
     33a: 5f79         	ldrsh	r1, [r7, r5]
     33c: 6f66         	ldr	r6, [r4, #116]
     33e: 7772         	strb	r2, [r6, #29]
     340: 7261         	strb	r1, [r4, #9]
     342: 5f64         	ldrsh	r4, [r4, r5]
     344: 7962         	ldrb	r2, [r4, #5]
     346: 6574         	str	r4, [r6, #84]
     348: 0073         	lsls	r3, r6, #1
     34a: 026b         	lsls	r3, r5, #9
     34c: 0000         	movs	r0, r0
     34e: 656d         	str	r5, [r5, #84]
     350: 6d6d         	ldr	r5, [r5, #84]
     352: 766f         	strb	r7, [r5, #25]
     354: 0065         	lsls	r5, r4, #1
     356: 07e0         	lsls	r0, r4, #31
     358: 0000         	movs	r0, r0
     35a: 656d         	str	r5, [r5, #84]
     35c: 6d6d         	ldr	r5, [r5, #84]
     35e: 766f         	strb	r7, [r5, #25]
     360: 5f65         	ldrsh	r5, [r4, r5]
     362: 6c65         	ldr	r5, [r4, #68]
     364: 6d65         	ldr	r5, [r4, #84]
     366: 6e65         	ldr	r5, [r4, #100]
     368: 5f74         	ldrsh	r4, [r6, r5]
     36a: 6e75         	ldr	r5, [r6, #100]
     36c: 726f         	strb	r7, [r5, #9]
     36e: 6564         	str	r4, [r4, #84]
     370: 6572         	str	r2, [r6, #84]
     372: 5f64         	ldrsh	r4, [r4, r5]
     374: 7461         	strb	r1, [r4, #17]
     376: 6d6f         	ldr	r7, [r5, #84]
     378: 6369         	str	r1, [r5, #52]
     37a: 753c         	strb	r4, [r7, #20]
     37c: 3233         	adds	r2, #51
     37e: 003e         	movs	r6, r7
     380: 0778         	lsls	r0, r7, #29
     382: 0000         	movs	r0, r0
     384: 656d         	str	r5, [r5, #84]
     386: 6d6d         	ldr	r5, [r5, #84]
     388: 766f         	strb	r7, [r5, #25]
     38a: 5f65         	ldrsh	r5, [r4, r5]
     38c: 6c65         	ldr	r5, [r4, #68]
     38e: 6d65         	ldr	r5, [r4, #84]
     390: 6e65         	ldr	r5, [r4, #100]
     392: 5f74         	ldrsh	r4, [r6, r5]
     394: 6e75         	ldr	r5, [r6, #100]
     396: 726f         	strb	r7, [r5, #9]
     398: 6564         	str	r4, [r4, #84]
     39a: 6572         	str	r2, [r6, #84]
     39c: 5f64         	ldrsh	r4, [r4, r5]
     39e: 7461         	strb	r1, [r4, #17]
     3a0: 6d6f         	ldr	r7, [r5, #84]
     3a2: 6369         	str	r1, [r5, #52]
     3a4: 753c         	strb	r4, [r7, #20]
     3a6: 3631         	adds	r6, #49
     3a8: 003e         	movs	r6, r7
     3aa: 0b0d         	lsrs	r5, r1, #12
     3ac: 0000         	movs	r0, r0
     3ae: 697b         	ldr	r3, [r7, #20]
     3b0: 706d         	strb	r5, [r5, #1]
     3b2: 236c         	movs	r3, #108
     3b4: 7d30         	ldrb	r0, [r6, #20]
     3b6: f900 000a    	<unknown>
     3ba: 6100         	str	r0, [r0, #16]
     3bc: 6464         	str	r4, [r4, #68]
     3be: 753c         	strb	r4, [r7, #20]
     3c0: 3233         	adds	r2, #51
     3c2: 003e         	movs	r6, r7
     3c4: 0adf         	lsrs	r7, r3, #11
     3c6: 0000         	movs	r0, r0
     3c8: 6461         	str	r1, [r4, #68]
     3ca: 3c64         	subs	r4, #100
     3cc: 3175         	adds	r1, #117
     3ce: 3e36         	subs	r6, #54
     3d0: dc00         	bgt	0x3d4 <.debug_str+0x3d4> @ imm = #0
     3d2: 0000         	movs	r0, r0
     3d4: 6300         	str	r0, [r0, #48]
     3d6: 706f         	strb	r7, [r5, #1]
     3d8: 5f79         	ldrsh	r1, [r7, r5]
     3da: 6162         	str	r2, [r4, #20]
     3dc: 6b63         	ldr	r3, [r4, #52]
     3de: 6177         	str	r7, [r6, #20]
     3e0: 6472         	str	r2, [r6, #68]
     3e2: 625f         	str	r7, [r3, #36]
     3e4: 7479         	strb	r1, [r7, #17]
     3e6: 7365         	strb	r5, [r4, #13]
     3e8: 4400         	add	r0, r0
     3ea: 0006         	movs	r6, r0
     3ec: 5f00         	ldrsh	r0, [r0, r4]
     3ee: 6c5f         	ldr	r7, [r3, #68]
     3f0: 766c         	strb	r4, [r5, #25]
     3f2: 5f6d         	ldrsh	r5, [r5, r5]
     3f4: 656d         	str	r5, [r5, #84]
     3f6: 636d         	str	r5, [r5, #52]
     3f8: 7970         	ldrb	r0, [r6, #5]
     3fa: 655f         	str	r7, [r3, #84]
     3fc: 656c         	str	r4, [r5, #84]
     3fe: 656d         	str	r5, [r5, #84]
     400: 746e         	strb	r6, [r5, #17]
     402: 755f         	strb	r7, [r3, #21]
     404: 6f6e         	ldr	r6, [r5, #116]
     406: 6472         	str	r2, [r6, #68]
     408: 7265         	strb	r5, [r4, #9]
     40a: 6465         	str	r5, [r4, #68]
     40c: 615f         	str	r7, [r3, #20]
     40e: 6f74         	ldr	r4, [r6, #116]
     410: 696d         	ldr	r5, [r5, #20]
     412: 5f63         	ldrsh	r3, [r4, r5]
     414: 0032         	movs	r2, r6
     416: 05ba         	lsls	r2, r7, #22
     418: 0000         	movs	r0, r0
     41a: 6362         	str	r2, [r4, #52]
     41c: 706d         	strb	r5, [r5, #1]
     41e: c400         	<unknown>
     420: 0000         	movs	r0, r0
     422: 6300         	str	r0, [r0, #48]
     424: 706f         	strb	r7, [r5, #1]
     426: 5f79         	ldrsh	r1, [r7, r5]
     428: 6162         	str	r2, [r4, #20]
     42a: 6b63         	ldr	r3, [r4, #52]
     42c: 6177         	str	r7, [r6, #20]
     42e: 6472         	str	r2, [r6, #68]
     430: 6d5f         	ldr	r7, [r3, #84]
     432: 7369         	strb	r1, [r5, #13]
     434: 6c61         	ldr	r1, [r4, #68]
     436: 6769         	str	r1, [r5, #116]
     438: 656e         	str	r6, [r5, #84]
     43a: 5f64         	ldrsh	r4, [r4, r5]
     43c: 6f77         	ldr	r7, [r6, #116]
     43e: 6472         	str	r2, [r6, #68]
     440: 0073         	lsls	r3, r6, #1
     442: 05f2         	lsls	r2, r6, #23
     444: 0000         	movs	r0, r0
     446: 5f5f         	ldrsh	r7, [r3, r5]
     448: 6c6c         	ldr	r4, [r5, #68]
     44a: 6d76         	ldr	r6, [r6, #84]
     44c: 6d5f         	ldr	r7, [r3, #84]
     44e: 6d65         	ldr	r5, [r4, #84]
     450: 7063         	strb	r3, [r4, #1]
     452: 5f79         	ldrsh	r1, [r7, r5]
     454: 6c65         	ldr	r5, [r4, #68]
     456: 6d65         	ldr	r5, [r4, #84]
     458: 6e65         	ldr	r5, [r4, #100]
     45a: 5f74         	ldrsh	r4, [r6, r5]
     45c: 6e75         	ldr	r5, [r6, #100]
     45e: 726f         	strb	r7, [r5, #9]
     460: 6564         	str	r4, [r4, #84]
     462: 6572         	str	r2, [r6, #84]
     464: 5f64         	ldrsh	r4, [r4, r5]
     466: 7461         	strb	r1, [r4, #17]
     468: 6d6f         	ldr	r7, [r5, #84]
     46a: 6369         	str	r1, [r5, #52]
     46c: 315f         	adds	r1, #95
     46e: ac00         	add	r4, sp, #0
     470: 0006         	movs	r6, r0
     472: 5f00         	ldrsh	r0, [r0, r4]
     474: 6c5f         	ldr	r7, [r3, #68]
     476: 766c         	strb	r4, [r5, #25]
     478: 5f6d         	ldrsh	r5, [r5, r5]
     47a: 656d         	str	r5, [r5, #84]
     47c: 636d         	str	r5, [r5, #52]
     47e: 7970         	ldrb	r0, [r6, #5]
     480: 655f         	str	r7, [r3, #84]
     482: 656c         	str	r4, [r5, #84]
     484: 656d         	str	r5, [r5, #84]
     486: 746e         	strb	r6, [r5, #17]
     488: 755f         	strb	r7, [r3, #21]
     48a: 6f6e         	ldr	r6, [r5, #116]
     48c: 6472         	str	r2, [r6, #68]
     48e: 7265         	strb	r5, [r4, #9]
     490: 6465         	str	r5, [r4, #68]
     492: 615f         	str	r7, [r3, #20]
     494: 6f74         	ldr	r4, [r6, #116]
     496: 696d         	ldr	r5, [r5, #20]
     498: 5f63         	ldrsh	r3, [r4, r5]
     49a: 0034         	movs	r4, r6
     49c: 0919         	lsrs	r1, r3, #4
     49e: 0000         	movs	r0, r0
     4a0: 6f63         	ldr	r3, [r4, #116]
     4a2: 6572         	str	r2, [r6, #84]
     4a4: 1000         	asrs	r0, r0, #32
     4a6: 0007         	movs	r7, r0
     4a8: 5f00         	ldrsh	r0, [r0, r4]
     4aa: 6c5f         	ldr	r7, [r3, #68]
     4ac: 766c         	strb	r4, [r5, #25]
     4ae: 5f6d         	ldrsh	r5, [r5, r5]
     4b0: 656d         	str	r5, [r5, #84]
     4b2: 6d6d         	ldr	r5, [r5, #84]
     4b4: 766f         	strb	r7, [r5, #25]
     4b6: 5f65         	ldrsh	r5, [r4, r5]
     4b8: 6c65         	ldr	r5, [r4, #68]
     4ba: 6d65         	ldr	r5, [r4, #84]
     4bc: 6e65         	ldr	r5, [r4, #100]
     4be: 5f74         	ldrsh	r4, [r6, r5]
     4c0: 6e75         	ldr	r5, [r6, #100]
     4c2: 726f         	strb	r7, [r5, #9]
     4c4: 6564         	str	r4, [r4, #84]
     4c6: 6572         	str	r2, [r6, #84]
     4c8: 5f64         	ldrsh	r4, [r4, r5]
     4ca: 7461         	strb	r1, [r4, #17]
     4cc: 6d6f         	ldr	r7, [r5, #84]
     4ce: 6369         	str	r1, [r5, #52]
     4d0: 315f         	adds	r1, #95
     4d2: 3900         	subs	r1, #0
     4d4: 0001         	movs	r1, r0
     4d6: 6d00         	ldr	r0, [r0, #80]
     4d8: 6d65         	ldr	r5, [r4, #84]
     4da: 7063         	strb	r3, [r4, #1]
     4dc: 0079         	lsls	r1, r7, #1
     4de: 0784         	lsls	r4, r0, #30
     4e0: 0000         	movs	r0, r0
     4e2: 5f5f         	ldrsh	r7, [r3, r5]
     4e4: 6c6c         	ldr	r4, [r5, #68]
     4e6: 6d76         	ldr	r6, [r6, #84]
     4e8: 6d5f         	ldr	r7, [r3, #84]
     4ea: 6d65         	ldr	r5, [r4, #84]
     4ec: 6f6d         	ldr	r5, [r5, #116]
     4ee: 6576         	str	r6, [r6, #84]
     4f0: 655f         	str	r7, [r3, #84]
     4f2: 656c         	str	r4, [r5, #84]
     4f4: 656d         	str	r5, [r5, #84]
     4f6: 746e         	strb	r6, [r5, #17]
     4f8: 755f         	strb	r7, [r3, #21]
     4fa: 6f6e         	ldr	r6, [r5, #116]
     4fc: 6472         	str	r2, [r6, #68]
     4fe: 7265         	strb	r5, [r4, #9]
     500: 6465         	str	r5, [r4, #68]
     502: 615f         	str	r7, [r3, #20]
     504: 6f74         	ldr	r4, [r6, #116]
     506: 696d         	ldr	r5, [r5, #20]
     508: 5f63         	ldrsh	r3, [r4, r5]
     50a: 0032         	movs	r2, r6
     50c: 07ec         	lsls	r4, r5, #31
     50e: 0000         	movs	r0, r0
     510: 5f5f         	ldrsh	r7, [r3, r5]
     512: 6c6c         	ldr	r4, [r5, #68]
     514: 6d76         	ldr	r6, [r6, #84]
     516: 6d5f         	ldr	r7, [r3, #84]
     518: 6d65         	ldr	r5, [r4, #84]
     51a: 6f6d         	ldr	r5, [r5, #116]
     51c: 6576         	str	r6, [r6, #84]
     51e: 655f         	str	r7, [r3, #84]
     520: 656c         	str	r4, [r5, #84]
     522: 656d         	str	r5, [r5, #84]
     524: 746e         	strb	r6, [r5, #17]
     526: 755f         	strb	r7, [r3, #21]
     528: 6f6e         	ldr	r6, [r5, #116]
     52a: 6472         	str	r2, [r6, #68]
     52c: 7265         	strb	r5, [r4, #9]
     52e: 6465         	str	r5, [r4, #68]
     530: 615f         	str	r7, [r3, #20]
     532: 6f74         	ldr	r4, [r6, #116]
     534: 696d         	ldr	r5, [r5, #20]
     536: 5f63         	ldrsh	r3, [r4, r5]
     538: 0034         	movs	r4, r6
     53a: 0ca5         	lsrs	r5, r4, #18
     53c: 0000         	movs	r0, r0
     53e: 6461         	str	r1, [r4, #68]
     540: 3c64         	subs	r4, #100
     542: 3875         	subs	r0, #117
     544: 003e         	movs	r6, r7
     546: 0969         	lsrs	r1, r5, #5
     548: 0000         	movs	r0, r0
     54a: 7277         	strb	r7, [r6, #9]
     54c: 7061         	strb	r1, [r4, #1]
     54e: 6970         	ldr	r0, [r6, #20]
     550: 676e         	str	r6, [r5, #116]
     552: 735f         	strb	r7, [r3, #13]
     554: 6275         	str	r5, [r6, #36]
     556: a500         	adr	r5, #0 <.debug_str+0x55a>
     558: 0009         	movs	r1, r1
     55a: 7000         	strb	r0, [r0]
     55c: 7274         	strb	r4, [r6, #9]
     55e: d000         	beq	0x562 <.debug_str+0x562> @ imm = #0
     560: 0005         	movs	r5, r0
     562: 7300         	strb	r0, [r0, #12]
     564: 7274         	strb	r4, [r6, #9]
     566: 656c         	str	r4, [r5, #84]
     568: 006e         	lsls	r6, r5, #1
     56a: 05e6         	lsls	r6, r4, #23
     56c: 0000         	movs	r0, r0
     56e: 656d         	str	r5, [r5, #84]
     570: 636d         	str	r5, [r5, #52]
     572: 7970         	ldrb	r0, [r6, #5]
     574: 655f         	str	r7, [r3, #84]
     576: 656c         	str	r4, [r5, #84]
     578: 656d         	str	r5, [r5, #84]
     57a: 746e         	strb	r6, [r5, #17]
     57c: 755f         	strb	r7, [r3, #21]
     57e: 6f6e         	ldr	r6, [r5, #116]
     580: 6472         	str	r2, [r6, #68]
     582: 7265         	strb	r5, [r4, #9]
     584: 6465         	str	r5, [r4, #68]
     586: 615f         	str	r7, [r3, #20]
     588: 6f74         	ldr	r4, [r6, #116]
     58a: 696d         	ldr	r5, [r5, #20]
     58c: 3c63         	subs	r4, #99
     58e: 3875         	subs	r0, #117
     590: 003e         	movs	r6, r7
     592: 0597         	lsls	r7, r2, #22
     594: 0000         	movs	r0, r0
     596: 656d         	str	r5, [r5, #84]
     598: 636d         	str	r5, [r5, #52]
     59a: 706d         	strb	r5, [r5, #1]
     59c: 5000         	str	r0, [r0, r0]
     59e: 0008         	movs	r0, r1
     5a0: 5f00         	ldrsh	r0, [r0, r4]
     5a2: 6c5f         	ldr	r7, [r3, #68]
     5a4: 766c         	strb	r4, [r5, #25]
     5a6: 5f6d         	ldrsh	r5, [r5, r5]
     5a8: 656d         	str	r5, [r5, #84]
     5aa: 736d         	strb	r5, [r5, #13]
     5ac: 7465         	strb	r5, [r4, #17]
     5ae: 655f         	str	r7, [r3, #84]
     5b0: 656c         	str	r4, [r5, #84]
     5b2: 656d         	str	r5, [r5, #84]
     5b4: 746e         	strb	r6, [r5, #17]
     5b6: 755f         	strb	r7, [r3, #21]
     5b8: 6f6e         	ldr	r6, [r5, #116]
     5ba: 6472         	str	r2, [r6, #68]
     5bc: 7265         	strb	r5, [r4, #9]
     5be: 6465         	str	r5, [r4, #68]
     5c0: 615f         	str	r7, [r3, #20]
     5c2: 6f74         	ldr	r4, [r6, #116]
     5c4: 696d         	ldr	r5, [r5, #20]
     5c6: 5f63         	ldrsh	r3, [r4, r5]
     5c8: 0031         	movs	r1, r6
     5ca: 087f         	lsrs	r7, r7, #1
     5cc: 0000         	movs	r0, r0
     5ce: 5f5f         	ldrsh	r7, [r3, r5]
     5d0: 6c6c         	ldr	r4, [r5, #68]
     5d2: 6d76         	ldr	r6, [r6, #84]
     5d4: 6d5f         	ldr	r7, [r3, #84]
     5d6: 6d65         	ldr	r5, [r4, #84]
     5d8: 6573         	str	r3, [r6, #84]
     5da: 5f74         	ldrsh	r4, [r6, r5]
     5dc: 6c65         	ldr	r5, [r4, #68]
     5de: 6d65         	ldr	r5, [r4, #84]
     5e0: 6e65         	ldr	r5, [r4, #100]
     5e2: 5f74         	ldrsh	r4, [r6, r5]
     5e4: 6e75         	ldr	r5, [r6, #100]
     5e6: 726f         	strb	r7, [r5, #9]
     5e8: 6564         	str	r4, [r4, #84]
     5ea: 6572         	str	r2, [r6, #84]
     5ec: 5f64         	ldrsh	r4, [r4, r5]
     5ee: 7461         	strb	r1, [r4, #17]
     5f0: 6d6f         	ldr	r7, [r5, #84]
     5f2: 6369         	str	r1, [r5, #52]
     5f4: 325f         	adds	r2, #95
     5f6: d100         	bne	0x5fa <.debug_str+0x5fa> @ imm = #0
     5f8: 0008         	movs	r0, r1
     5fa: 5f00         	ldrsh	r0, [r0, r4]
     5fc: 6c5f         	ldr	r7, [r3, #68]
     5fe: 766c         	strb	r4, [r5, #25]
     600: 5f6d         	ldrsh	r5, [r5, r5]
     602: 656d         	str	r5, [r5, #84]
     604: 736d         	strb	r5, [r5, #13]
     606: 7465         	strb	r5, [r4, #17]
     608: 655f         	str	r7, [r3, #84]
     60a: 656c         	str	r4, [r5, #84]
     60c: 656d         	str	r5, [r5, #84]
     60e: 746e         	strb	r6, [r5, #17]
     610: 755f         	strb	r7, [r3, #21]
     612: 6f6e         	ldr	r6, [r5, #116]
     614: 6472         	str	r2, [r6, #68]
     616: 7265         	strb	r5, [r4, #9]
     618: 6465         	str	r5, [r4, #68]
     61a: 615f         	str	r7, [r3, #20]
     61c: 6f74         	ldr	r4, [r6, #116]
     61e: 696d         	ldr	r5, [r5, #20]
     620: 5f63         	ldrsh	r3, [r4, r5]
     622: 0034         	movs	r4, r6
     624: 04d3         	lsls	r3, r2, #19
     626: 0000         	movs	r0, r0
     628: 656d         	str	r5, [r5, #84]
     62a: 736d         	strb	r5, [r5, #13]
     62c: 7465         	strb	r5, [r4, #17]
     62e: 9800         	ldr	r0, [sp]
     630: 000c         	movs	r4, r1
     632: 6f00         	ldr	r0, [r0, #112]
     634: 6666         	str	r6, [r4, #100]
     636: 6573         	str	r3, [r6, #84]
     638: 3c74         	subs	r4, #116
     63a: 3875         	subs	r0, #117
     63c: 003e         	movs	r6, r7
     63e: 009a         	lsls	r2, r3, #2
     640: 0000         	movs	r0, r0
     642: 6f63         	ldr	r3, [r4, #116]
     644: 7970         	ldrb	r0, [r6, #5]
     646: 665f         	str	r7, [r3, #100]
     648: 726f         	strb	r7, [r5, #9]
     64a: 6177         	str	r7, [r6, #20]
     64c: 6472         	str	r2, [r6, #68]
     64e: 615f         	str	r7, [r3, #20]
     650: 696c         	ldr	r4, [r5, #20]
     652: 6e67         	ldr	r7, [r4, #100]
     654: 6465         	str	r5, [r4, #68]
     656: 775f         	strb	r7, [r3, #29]
     658: 726f         	strb	r7, [r5, #9]
     65a: 7364         	strb	r4, [r4, #13]
     65c: 1e00         	subs	r0, r0, #0
     65e: 0009         	movs	r1, r1
     660: 6e00         	ldr	r0, [r0, #96]
     662: 6d75         	ldr	r5, [r6, #84]
     664: 1c00         	adds	r0, r0, #0
     666: 000a         	movs	r2, r1
     668: 6f00         	ldr	r0, [r0, #112]
     66a: 6666         	str	r6, [r4, #100]
     66c: 6573         	str	r3, [r6, #84]
     66e: 3c74         	subs	r4, #116
     670: 7375         	strb	r5, [r6, #13]
     672: 7a69         	ldrb	r1, [r5, #9]
     674: 3e65         	subs	r6, #101
     676: 2300         	movs	r3, #0
     678: 0009         	movs	r1, r1
     67a: 7b00         	ldrb	r0, [r0, #12]
     67c: 6d69         	ldr	r1, [r5, #84]
     67e: 6c70         	ldr	r0, [r6, #68]
     680: 3123         	adds	r1, #35
     682: 7d32         	ldrb	r2, [r6, #20]
     684: 1e00         	subs	r0, r0, #0
     686: 0001         	movs	r1, r0
     688: 7300         	strb	r0, [r0, #12]
     68a: 7465         	strb	r5, [r4, #17]
     68c: 625f         	str	r7, [r3, #36]
     68e: 7479         	strb	r1, [r7, #17]
     690: 7365         	strb	r5, [r4, #13]
     692: 625f         	str	r7, [r3, #36]
     694: 7479         	strb	r1, [r7, #17]
     696: 7365         	strb	r5, [r4, #13]
     698: 8200         	strh	r0, [r0, #16]
     69a: 0000         	movs	r0, r0
     69c: 6300         	str	r0, [r0, #48]
     69e: 706f         	strb	r7, [r5, #1]
     6a0: 5f79         	ldrsh	r1, [r7, r5]
     6a2: 6f66         	ldr	r6, [r4, #116]
     6a4: 7772         	strb	r2, [r6, #29]
     6a6: 7261         	strb	r1, [r4, #9]
     6a8: 5f64         	ldrsh	r4, [r4, r5]
     6aa: 696d         	ldr	r5, [r5, #20]
     6ac: 6173         	str	r3, [r6, #20]
     6ae: 696c         	ldr	r4, [r5, #20]
     6b0: 6e67         	ldr	r7, [r4, #100]
     6b2: 6465         	str	r5, [r4, #68]
     6b4: 775f         	strb	r7, [r3, #29]
     6b6: 726f         	strb	r7, [r5, #9]
     6b8: 7364         	strb	r4, [r4, #13]
     6ba: d000         	beq	0x6be <.debug_str+0x6be> @ imm = #0
     6bc: 0000         	movs	r0, r0
     6be: 6300         	str	r0, [r0, #48]
     6c0: 706f         	strb	r7, [r5, #1]
     6c2: 5f79         	ldrsh	r1, [r7, r5]
     6c4: 6162         	str	r2, [r4, #20]
     6c6: 6b63         	ldr	r3, [r4, #52]
     6c8: 6177         	str	r7, [r6, #20]
     6ca: 6472         	str	r2, [r6, #68]
     6cc: 615f         	str	r7, [r3, #20]
     6ce: 696c         	ldr	r4, [r5, #20]
     6d0: 6e67         	ldr	r7, [r4, #100]
     6d2: 6465         	str	r5, [r4, #68]
     6d4: 775f         	strb	r7, [r3, #29]
     6d6: 726f         	strb	r7, [r5, #9]
     6d8: 7364         	strb	r4, [r4, #13]
     6da: 0800         	lsrs	r0, r0, #32
     6dc: 000b         	movs	r3, r1
     6de: 6300         	str	r0, [r0, #48]
     6e0: 6e6f         	ldr	r7, [r5, #100]
     6e2: 7473         	strb	r3, [r6, #17]
     6e4: 705f         	strb	r7, [r3, #1]
     6e6: 7274         	strb	r4, [r6, #9]
     6e8: 4400         	add	r0, r0
     6ea: 0008         	movs	r0, r1
     6ec: 6d00         	ldr	r0, [r0, #80]
     6ee: 6d65         	ldr	r5, [r4, #84]
     6f0: 6573         	str	r3, [r6, #84]
     6f2: 5f74         	ldrsh	r4, [r6, r5]
     6f4: 6c65         	ldr	r5, [r4, #68]
     6f6: 6d65         	ldr	r5, [r4, #84]
     6f8: 6e65         	ldr	r5, [r4, #100]
     6fa: 5f74         	ldrsh	r4, [r6, r5]
     6fc: 6e75         	ldr	r5, [r6, #100]
     6fe: 726f         	strb	r7, [r5, #9]
     700: 6564         	str	r4, [r4, #84]
     702: 6572         	str	r2, [r6, #84]
     704: 5f64         	ldrsh	r4, [r4, r5]
     706: 7461         	strb	r1, [r4, #17]
     708: 6d6f         	ldr	r7, [r5, #84]
     70a: 6369         	str	r1, [r5, #52]
     70c: 753c         	strb	r4, [r7, #20]
     70e: 3e38         	subs	r6, #56
     710: 0000         	movs	r0, r0
     712: 0000         	movs	r0, r0
     714: 00           	<unknown>

Disassembly of section .debug_pubtypes:

00000000 <.debug_pubtypes>:
       0: 000e         	movs	r6, r1
       2: 0000         	movs	r0, r0
       4: 0002         	movs	r2, r0
       6: 0000         	movs	r0, r0
       8: 0000         	movs	r0, r0
       a: 004b         	lsls	r3, r1, #1
       c: 0000         	movs	r0, r0
       e: 0000         	movs	r0, r0
      10: 0000         	movs	r0, r0
      12: 000e         	movs	r6, r1
      14: 0000         	movs	r0, r0
      16: 0002         	movs	r2, r0
      18: 004b         	lsls	r3, r1, #1
      1a: 0000         	movs	r0, r0
      1c: 0174         	lsls	r4, r6, #5
      1e: 0000         	movs	r0, r0
      20: 0000         	movs	r0, r0
      22: 0000         	movs	r0, r0
      24: 000e         	movs	r6, r1
      26: 0000         	movs	r0, r0
      28: 0002         	movs	r2, r0
      2a: 01bf         	lsls	r7, r7, #6
      2c: 0000         	movs	r0, r0
      2e: 0ceb         	lsrs	r3, r5, #19
      30: 0000         	movs	r0, r0
      32: 0000         	movs	r0, r0
      34: 0000         	movs	r0, r0

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
       0: 0010         	movs	r0, r2
       2: 0000         	movs	r0, r0
       4: ffff ffff    	<unknown>
       8: 0004         	movs	r4, r0
       a: 0004         	movs	r4, r0
       c: 7c01         	ldrb	r1, [r0, #16]
       e: 0c0e         	lsrs	r6, r1, #16
      10: 000d         	movs	r5, r1
      12: 0000         	movs	r0, r0
      14: 000c         	movs	r4, r1
      16: 0000         	movs	r0, r0
      18: 0000         	movs	r0, r0
      1a: 0000         	movs	r0, r0
      1c: 0086         	lsls	r6, r0, #2
      1e: 0800         	lsrs	r0, r0, #32
      20: 0004         	movs	r4, r0
      22: 0000         	movs	r0, r0
      24: 0010         	movs	r0, r2
      26: 0000         	movs	r0, r0
      28: ffff ffff    	<unknown>
      2c: 0004         	movs	r4, r0
      2e: 0004         	movs	r4, r0
      30: 7c01         	ldrb	r1, [r0, #16]
      32: 0c0e         	lsrs	r6, r1, #16
      34: 000d         	movs	r5, r1
      36: 0000         	movs	r0, r0
      38: 000c         	movs	r4, r1
      3a: 0000         	movs	r0, r0
      3c: 0024         	movs	r4, r4
      3e: 0000         	movs	r0, r0
      40: 008a         	lsls	r2, r1, #2
      42: 0800         	lsrs	r0, r0, #32
      44: 0004         	movs	r4, r0
      46: 0000         	movs	r0, r0
      48: 001c         	movs	r4, r3
      4a: 0000         	movs	r0, r0
      4c: 0024         	movs	r4, r4
      4e: 0000         	movs	r0, r0
      50: 008e         	lsls	r6, r1, #2
      52: 0800         	lsrs	r0, r0, #32
      54: 009a         	lsls	r2, r3, #2
      56: 0000         	movs	r0, r0
      58: 0e42         	lsrs	r2, r0, #25
      5a: 8e10         	ldrh	r0, [r2, #48]
      5c: 8701         	strh	r1, [r0, #56]
      5e: 8502         	strh	r2, [r0, #40]
      60: 8403         	strh	r3, [r0, #32]
      62: 4204         	tst	r4, r0
      64: 070c         	lsls	r4, r1, #28
      66: 0008         	movs	r0, r1
      68: 000c         	movs	r4, r1
      6a: 0000         	movs	r0, r0
      6c: 0024         	movs	r4, r4
      6e: 0000         	movs	r0, r0
      70: 0000         	movs	r0, r0
      72: 0000         	movs	r0, r0
      74: 0004         	movs	r4, r0
      76: 0000         	movs	r0, r0
      78: 000c         	movs	r4, r1
      7a: 0000         	movs	r0, r0
      7c: 0024         	movs	r4, r4
      7e: 0000         	movs	r0, r0
      80: 0000         	movs	r0, r0
      82: 0000         	movs	r0, r0
      84: 0004         	movs	r4, r0
      86: 0000         	movs	r0, r0
      88: 000c         	movs	r4, r1
      8a: 0000         	movs	r0, r0
      8c: 0024         	movs	r4, r4
      8e: 0000         	movs	r0, r0
      90: 0000         	movs	r0, r0
      92: 0000         	movs	r0, r0
      94: 0004         	movs	r4, r0
      96: 0000         	movs	r0, r0
      98: 000c         	movs	r4, r1
      9a: 0000         	movs	r0, r0
      9c: 0024         	movs	r4, r4
      9e: 0000         	movs	r0, r0
      a0: 0000         	movs	r0, r0
      a2: 0000         	movs	r0, r0
      a4: 000a         	movs	r2, r1
      a6: 0000         	movs	r0, r0
      a8: 001c         	movs	r4, r3
      aa: 0000         	movs	r0, r0
      ac: 0024         	movs	r4, r4
      ae: 0000         	movs	r0, r0
      b0: 0000         	movs	r0, r0
      b2: 0000         	movs	r0, r0
      b4: 008c         	lsls	r4, r1, #2
      b6: 0000         	movs	r0, r0
      b8: 0e42         	lsrs	r2, r0, #25
      ba: 8e10         	ldrh	r0, [r2, #48]
      bc: 8701         	strh	r1, [r0, #56]
      be: 8602         	strh	r2, [r0, #48]
      c0: 8403         	strh	r3, [r0, #32]
      c2: 4204         	tst	r4, r0
      c4: 070c         	lsls	r4, r1, #28
      c6: 0008         	movs	r0, r1
      c8: 000c         	movs	r4, r1
      ca: 0000         	movs	r0, r0
      cc: 0024         	movs	r4, r4
      ce: 0000         	movs	r0, r0
      d0: 0000         	movs	r0, r0
      d2: 0000         	movs	r0, r0
      d4: 0004         	movs	r4, r0
      d6: 0000         	movs	r0, r0
      d8: 000c         	movs	r4, r1
      da: 0000         	movs	r0, r0
      dc: 0024         	movs	r4, r4
      de: 0000         	movs	r0, r0
      e0: 0000         	movs	r0, r0
      e2: 0000         	movs	r0, r0
      e4: 0006         	movs	r6, r0
      e6: 0000         	movs	r0, r0
      e8: 000c         	movs	r4, r1
      ea: 0000         	movs	r0, r0
      ec: 0024         	movs	r4, r4
      ee: 0000         	movs	r0, r0
      f0: 0000         	movs	r0, r0
      f2: 0000         	movs	r0, r0
      f4: 0006         	movs	r6, r0
      f6: 0000         	movs	r0, r0
      f8: 0010         	movs	r0, r2
      fa: 0000         	movs	r0, r0
      fc: ffff ffff    	<unknown>
     100: 0004         	movs	r4, r0
     102: 0004         	movs	r4, r0
     104: 7c01         	ldrb	r1, [r0, #16]
     106: 0c0e         	lsrs	r6, r1, #16
     108: 000d         	movs	r5, r1
     10a: 0000         	movs	r0, r0
     10c: 0024         	movs	r4, r4
     10e: 0000         	movs	r0, r0
     110: 00f8         	lsls	r0, r7, #3
     112: 0000         	movs	r0, r0
     114: 0128         	lsls	r0, r5, #4
     116: 0800         	lsrs	r0, r0, #32
     118: 0144         	lsls	r4, r0, #5
     11a: 0000         	movs	r0, r0
     11c: 0e42         	lsrs	r2, r0, #25
     11e: 8e14         	ldrh	r4, [r2, #48]
     120: 8701         	strh	r1, [r0, #56]
     122: 8602         	strh	r2, [r0, #48]
     124: 8503         	strh	r3, [r0, #40]
     126: 8404         	strh	r4, [r0, #32]
     128: 4205         	tst	r5, r0
     12a: 070c         	lsls	r4, r1, #28
     12c: 4408         	add	r0, r1
     12e: 068a         	lsls	r2, r1, #26
     130: 0789         	lsls	r1, r1, #30
     132: 0888         	lsrs	r0, r1, #2
     134: 0028         	movs	r0, r5
     136: 0000         	movs	r0, r0
     138: 00f8         	lsls	r0, r7, #3
     13a: 0000         	movs	r0, r0
     13c: 0000         	movs	r0, r0
     13e: 0000         	movs	r0, r0
     140: 0338         	lsls	r0, r7, #12
     142: 0000         	movs	r0, r0
     144: 0e42         	lsrs	r2, r0, #25
     146: 8e14         	ldrh	r4, [r2, #48]
     148: 8701         	strh	r1, [r0, #56]
     14a: 8602         	strh	r2, [r0, #48]
     14c: 8503         	strh	r3, [r0, #40]
     14e: 8404         	strh	r4, [r0, #32]
     150: 4205         	tst	r5, r0
     152: 070c         	lsls	r4, r1, #28
     154: 4408         	add	r0, r1
     156: 068b         	lsls	r3, r1, #26
     158: 078a         	lsls	r2, r1, #30
     15a: 0889         	lsrs	r1, r1, #2
     15c: 0988         	lsrs	r0, r1, #6
     15e: 0000         	movs	r0, r0
     160: 001c         	movs	r4, r3
     162: 0000         	movs	r0, r0
     164: 00f8         	lsls	r0, r7, #3
     166: 0000         	movs	r0, r0
     168: 0000         	movs	r0, r0
     16a: 0000         	movs	r0, r0
     16c: 009c         	lsls	r4, r3, #2
     16e: 0000         	movs	r0, r0
     170: 0e42         	lsrs	r2, r0, #25
     172: 8e10         	ldrh	r0, [r2, #48]
     174: 8701         	strh	r1, [r0, #56]
     176: 8602         	strh	r2, [r0, #48]
     178: 8403         	strh	r3, [r0, #32]
     17a: 4204         	tst	r4, r0
     17c: 070c         	lsls	r4, r1, #28
     17e: 0008         	movs	r0, r1
     180: 0024         	movs	r4, r4
     182: 0000         	movs	r0, r0
     184: 00f8         	lsls	r0, r7, #3
     186: 0000         	movs	r0, r0
     188: 0000         	movs	r0, r0
     18a: 0000         	movs	r0, r0
     18c: 006e         	lsls	r6, r5, #1
     18e: 0000         	movs	r0, r0
     190: 0e42         	lsrs	r2, r0, #25
     192: 8e14         	ldrh	r4, [r2, #48]
     194: 8701         	strh	r1, [r0, #56]
     196: 8602         	strh	r2, [r0, #48]
     198: 8503         	strh	r3, [r0, #40]
     19a: 8404         	strh	r4, [r0, #32]
     19c: 4205         	tst	r5, r0
     19e: 070c         	lsls	r4, r1, #28
     1a0: 4408         	add	r0, r1
     1a2: 068b         	lsls	r3, r1, #26
     1a4: 0789         	lsls	r1, r1, #30
     1a6: 0888         	lsrs	r0, r1, #2
     1a8: 000c         	movs	r4, r1
     1aa: 0000         	movs	r0, r0
     1ac: 00f8         	lsls	r0, r7, #3
     1ae: 0000         	movs	r0, r0
     1b0: 0000         	movs	r0, r0
     1b2: 0000         	movs	r0, r0
     1b4: 0004         	movs	r4, r0
     1b6: 0000         	movs	r0, r0
     1b8: 000c         	movs	r4, r1
     1ba: 0000         	movs	r0, r0
     1bc: 00f8         	lsls	r0, r7, #3
     1be: 0000         	movs	r0, r0
     1c0: 0000         	movs	r0, r0
     1c2: 0000         	movs	r0, r0
     1c4: 003a         	movs	r2, r7
     1c6: 0000         	movs	r0, r0
     1c8: 0020         	movs	r0, r4
     1ca: 0000         	movs	r0, r0
     1cc: 00f8         	lsls	r0, r7, #3
     1ce: 0000         	movs	r0, r0
     1d0: 0000         	movs	r0, r0
     1d2: 0000         	movs	r0, r0
     1d4: 007e         	lsls	r6, r7, #1
     1d6: 0000         	movs	r0, r0
     1d8: 0e42         	lsrs	r2, r0, #25
     1da: 8e14         	ldrh	r4, [r2, #48]
     1dc: 8701         	strh	r1, [r0, #56]
     1de: 8602         	strh	r2, [r0, #48]
     1e0: 8503         	strh	r3, [r0, #40]
     1e2: 8404         	strh	r4, [r0, #32]
     1e4: 4205         	tst	r5, r0
     1e6: 070c         	lsls	r4, r1, #28
     1e8: 4408         	add	r0, r1
     1ea: 0688         	lsls	r0, r1, #26
     1ec: 0024         	movs	r4, r4
     1ee: 0000         	movs	r0, r0
     1f0: 00f8         	lsls	r0, r7, #3
     1f2: 0000         	movs	r0, r0
     1f4: 0000         	movs	r0, r0
     1f6: 0000         	movs	r0, r0
     1f8: 0096         	lsls	r6, r2, #2
     1fa: 0000         	movs	r0, r0
     1fc: 0e42         	lsrs	r2, r0, #25
     1fe: 8e14         	ldrh	r4, [r2, #48]
     200: 8701         	strh	r1, [r0, #56]
     202: 8602         	strh	r2, [r0, #48]
     204: 8503         	strh	r3, [r0, #40]
     206: 8404         	strh	r4, [r0, #32]
     208: 4205         	tst	r5, r0
     20a: 070c         	lsls	r4, r1, #28
     20c: 4408         	add	r0, r1
     20e: 068b         	lsls	r3, r1, #26
     210: 0789         	lsls	r1, r1, #30
     212: 0888         	lsrs	r0, r1, #2
     214: 0020         	movs	r0, r4
     216: 0000         	movs	r0, r0
     218: 00f8         	lsls	r0, r7, #3
     21a: 0000         	movs	r0, r0
     21c: 0000         	movs	r0, r0
     21e: 0000         	movs	r0, r0
     220: 00a4         	lsls	r4, r4, #2
     222: 0000         	movs	r0, r0
     224: 0e42         	lsrs	r2, r0, #25
     226: 8e14         	ldrh	r4, [r2, #48]
     228: 8701         	strh	r1, [r0, #56]
     22a: 8602         	strh	r2, [r0, #48]
     22c: 8503         	strh	r3, [r0, #40]
     22e: 8404         	strh	r4, [r0, #32]
     230: 4205         	tst	r5, r0
     232: 070c         	lsls	r4, r1, #28
     234: 4408         	add	r0, r1
     236: 0688         	lsls	r0, r1, #26
     238: 0020         	movs	r0, r4
     23a: 0000         	movs	r0, r0
     23c: 00f8         	lsls	r0, r7, #3
     23e: 0000         	movs	r0, r0
     240: 0000         	movs	r0, r0
     242: 0000         	movs	r0, r0
     244: 00e2         	lsls	r2, r4, #3
     246: 0000         	movs	r0, r0
     248: 0e42         	lsrs	r2, r0, #25
     24a: 8e14         	ldrh	r4, [r2, #48]
     24c: 8701         	strh	r1, [r0, #56]
     24e: 8602         	strh	r2, [r0, #48]
     250: 8503         	strh	r3, [r0, #40]
     252: 8404         	strh	r4, [r0, #32]
     254: 4205         	tst	r5, r0
     256: 070c         	lsls	r4, r1, #28
     258: 4408         	add	r0, r1
     25a: 0688         	lsls	r0, r1, #26
     25c: 0024         	movs	r4, r4
     25e: 0000         	movs	r0, r0
     260: 00f8         	lsls	r0, r7, #3
     262: 0000         	movs	r0, r0
     264: 0000         	movs	r0, r0
     266: 0000         	movs	r0, r0
     268: 0102         	lsls	r2, r0, #4
     26a: 0000         	movs	r0, r0
     26c: 0e42         	lsrs	r2, r0, #25
     26e: 8e14         	ldrh	r4, [r2, #48]
     270: 8701         	strh	r1, [r0, #56]
     272: 8602         	strh	r2, [r0, #48]
     274: 8503         	strh	r3, [r0, #40]
     276: 8404         	strh	r4, [r0, #32]
     278: 4205         	tst	r5, r0
     27a: 070c         	lsls	r4, r1, #28
     27c: 4408         	add	r0, r1
     27e: 068b         	lsls	r3, r1, #26
     280: 0789         	lsls	r1, r1, #30
     282: 0888         	lsrs	r0, r1, #2
     284: 0020         	movs	r0, r4
     286: 0000         	movs	r0, r0
     288: 00f8         	lsls	r0, r7, #3
     28a: 0000         	movs	r0, r0
     28c: 0000         	movs	r0, r0
     28e: 0000         	movs	r0, r0
     290: 011a         	lsls	r2, r3, #4
     292: 0000         	movs	r0, r0
     294: 0e42         	lsrs	r2, r0, #25
     296: 8e14         	ldrh	r4, [r2, #48]
     298: 8701         	strh	r1, [r0, #56]
     29a: 8602         	strh	r2, [r0, #48]
     29c: 8503         	strh	r3, [r0, #40]
     29e: 8404         	strh	r4, [r0, #32]
     2a0: 4205         	tst	r5, r0
     2a2: 070c         	lsls	r4, r1, #28
     2a4: 4408         	add	r0, r1
     2a6: 0688         	lsls	r0, r1, #26
     2a8: 001c         	movs	r4, r3
     2aa: 0000         	movs	r0, r0
     2ac: 00f8         	lsls	r0, r7, #3
     2ae: 0000         	movs	r0, r0
     2b0: 0000         	movs	r0, r0
     2b2: 0000         	movs	r0, r0
     2b4: 0056         	lsls	r6, r2, #1
     2b6: 0000         	movs	r0, r0
     2b8: 0e42         	lsrs	r2, r0, #25
     2ba: 8e10         	ldrh	r0, [r2, #48]
     2bc: 8701         	strh	r1, [r0, #56]
     2be: 8602         	strh	r2, [r0, #48]
     2c0: 8403         	strh	r3, [r0, #32]
     2c2: 4204         	tst	r4, r0
     2c4: 070c         	lsls	r4, r1, #28
     2c6: 0008         	movs	r0, r1
     2c8: 0018         	movs	r0, r3
     2ca: 0000         	movs	r0, r0
     2cc: 00f8         	lsls	r0, r7, #3
     2ce: 0000         	movs	r0, r0
     2d0: 0000         	movs	r0, r0
     2d2: 0000         	movs	r0, r0
     2d4: 0068         	lsls	r0, r5, #1
     2d6: 0000         	movs	r0, r0
     2d8: 0e42         	lsrs	r2, r0, #25
     2da: 8e08         	ldrh	r0, [r1, #48]
     2dc: 8701         	strh	r1, [r0, #56]
     2de: 4202         	tst	r2, r0
     2e0: 070d         	lsls	r5, r1, #28
     2e2: 0000         	movs	r0, r0
     2e4: 0018         	movs	r0, r3
     2e6: 0000         	movs	r0, r0
     2e8: 00f8         	lsls	r0, r7, #3
     2ea: 0000         	movs	r0, r0
     2ec: 0000         	movs	r0, r0
     2ee: 0000         	movs	r0, r0
     2f0: 0072         	lsls	r2, r6, #1
     2f2: 0000         	movs	r0, r0
     2f4: 0e42         	lsrs	r2, r0, #25
     2f6: 8e08         	ldrh	r0, [r1, #48]
     2f8: 8701         	strh	r1, [r0, #56]
     2fa: 4202         	tst	r2, r0
     2fc: 070d         	lsls	r5, r1, #28
     2fe: 0000         	movs	r0, r0

Disassembly of section .debug_line:

00000000 <.debug_line>:
       0: 003f         	movs	r7, r7
       2: 0000         	movs	r0, r0
       4: 0004         	movs	r4, r0
       6: 0025         	movs	r5, r4
       8: 0000         	movs	r0, r0
       a: 0101         	lsls	r1, r0, #4
       c: fb01 0d0e    	mla	sp, r1, lr, r0
      10: 0100         	lsls	r0, r0, #4
      12: 0101         	lsls	r1, r0, #4
      14: 0001         	movs	r1, r0
      16: 0000         	movs	r0, r0
      18: 0001         	movs	r1, r0
      1a: 0100         	lsls	r0, r0, #4
      1c: 7273         	strb	r3, [r6, #9]
      1e: 0063         	lsls	r3, r4, #1
      20: 6d00         	ldr	r0, [r0, #80]
      22: 6361         	str	r1, [r4, #52]
      24: 6f72         	ldr	r2, [r6, #116]
      26: 2e73         	cmp	r6, #115
      28: 7372         	strb	r2, [r6, #13]
      2a: 0100         	lsls	r0, r0, #4
      2c: 0000         	movs	r0, r0
      2e: 0000         	movs	r0, r0
      30: 0205         	lsls	r5, r0, #8
      32: 0086         	lsls	r6, r0, #2
      34: 0800         	lsrs	r0, r0, #32
      36: a203         	adr	r2, #12 <.debug_str+0x3d>
      38: 0103         	lsls	r3, r0, #4
      3a: 1105         	asrs	r5, r0, #4
      3c: 130a         	asrs	r2, r1, #12
      3e: 0402         	lsls	r2, r0, #16
      40: 0100         	lsls	r0, r0, #4
      42: b701         	<unknown>
      44: 0002         	movs	r2, r0
      46: 0400         	lsls	r0, r0, #16
      48: 8200         	strh	r0, [r0, #16]
      4a: 0000         	movs	r0, r0
      4c: 0100         	lsls	r0, r0, #4
      4e: 0101         	lsls	r1, r0, #4
      50: 0efb         	lsrs	r3, r7, #27
      52: 000d         	movs	r5, r1
      54: 0101         	lsls	r1, r0, #4
      56: 0101         	lsls	r1, r0, #4
      58: 0000         	movs	r0, r0
      5a: 0100         	lsls	r0, r0, #4
      5c: 0000         	movs	r0, r0
      5e: 7301         	strb	r1, [r0, #12]
      60: 6372         	str	r2, [r6, #52]
      62: 2f00         	cmp	r7, #0
      64: 7572         	strb	r2, [r6, #21]
      66: 7473         	strb	r3, [r6, #17]
      68: 2f63         	cmp	r7, #99
      6a: 3762         	adds	r7, #98
      6c: 6230         	str	r0, [r6, #32]
      6e: 6161         	str	r1, [r4, #20]
      70: 6634         	str	r4, [r6, #96]
      72: 3239         	adds	r2, #57
      74: 6132         	str	r2, [r6, #16]
      76: 3831         	subs	r0, #49
      78: 3930         	subs	r1, #48
      7a: 3764         	adds	r7, #100
      7c: 6339         	str	r1, [r7, #48]
      7e: 6561         	str	r1, [r4, #84]
      80: 6561         	str	r1, [r4, #84]
      82: 3962         	subs	r1, #98
      84: 3230         	adds	r2, #48
      86: 3038         	adds	r0, #56
      88: 6330         	str	r0, [r6, #48]
      8a: 6233         	str	r3, [r6, #32]
      8c: 3265         	adds	r2, #101
      8e: 3338         	adds	r3, #56
      90: 3962         	subs	r1, #98
      92: 6c2f         	ldr	r7, [r5, #64]
      94: 6269         	str	r1, [r5, #36]
      96: 6172         	str	r2, [r6, #20]
      98: 7972         	ldrb	r2, [r6, #5]
      9a: 632f         	str	r7, [r5, #48]
      9c: 726f         	strb	r7, [r5, #9]
      9e: 2f65         	cmp	r7, #101
      a0: 7273         	strb	r3, [r6, #9]
      a2: 2f63         	cmp	r7, #99
      a4: 7470         	strb	r0, [r6, #17]
      a6: 0072         	lsls	r2, r6, #1
      a8: 6d00         	ldr	r0, [r0, #80]
      aa: 6361         	str	r1, [r4, #52]
      ac: 6f72         	ldr	r2, [r6, #116]
      ae: 2e73         	cmp	r6, #115
      b0: 7372         	strb	r2, [r6, #13]
      b2: 0100         	lsls	r0, r0, #4
      b4: 0000         	movs	r0, r0
      b6: 7261         	strb	r1, [r4, #9]
      b8: 2e6d         	cmp	r6, #109
      ba: 7372         	strb	r2, [r6, #13]
      bc: 0100         	lsls	r0, r0, #4
      be: 0000         	movs	r0, r0
      c0: 756d         	strb	r5, [r5, #21]
      c2: 5f74         	ldrsh	r4, [r6, r5]
      c4: 7470         	strb	r0, [r6, #17]
      c6: 2e72         	cmp	r6, #114
      c8: 7372         	strb	r2, [r6, #13]
      ca: 0200         	lsls	r0, r0, #8
      cc: 0000         	movs	r0, r0
      ce: 0000         	movs	r0, r0
      d0: 0205         	lsls	r5, r0, #8
      d2: 008a         	lsls	r2, r1, #2
      d4: 0800         	lsrs	r0, r0, #32
      d6: 9b03         	ldr	r3, [sp, #12]
      d8: 0103         	lsls	r3, r0, #4
      da: 0204         	lsls	r4, r0, #8
      dc: 0905         	lsrs	r5, r0, #4
      de: 030a         	lsls	r2, r1, #12
      e0: 7dc2         	ldrb	r2, [r0, #23]
      e2: 0201         	lsls	r1, r0, #8
      e4: 0004         	movs	r4, r0
      e6: 0101         	lsls	r1, r0, #4
      e8: 0500         	lsls	r0, r0, #20
      ea: 8e02         	ldrh	r2, [r0, #48]
      ec: 0000         	movs	r0, r0
      ee: 0308         	lsls	r0, r1, #12
      f0: 039b         	lsls	r3, r3, #14
      f2: 0401         	lsls	r1, r0, #16
      f4: 0502         	lsls	r2, r0, #20
      f6: 0a0f         	lsrs	r7, r1, #8
      f8: cd03         	ldm	r5!, {r0, r1}
      fa: 4a7d         	ldr	r2, [pc, #500]          @ 0x2f0 <.debug_str+0x2f0>
      fc: 1505         	asrs	r5, r0, #20
      fe: 3d08         	subs	r5, #8
     100: 0d05         	lsrs	r5, r0, #20
     102: 2e06         	cmp	r6, #6
     104: 1505         	asrs	r5, r0, #20
     106: 052e         	lsls	r6, r5, #20
     108: 060f         	lsls	r7, r1, #24
     10a: 0549         	lsls	r1, r1, #21
     10c: 2f0d         	cmp	r7, #13
     10e: 0f05         	lsrs	r5, r0, #28
     110: 0649         	lsls	r1, r1, #25
     112: 9703         	str	r7, [sp, #12]
     114: 2e7f         	cmp	r6, #127
     116: e903 6600    	<unknown>
     11a: 0905         	lsrs	r5, r0, #4
     11c: dd06         	ble	0x12c <.debug_str+0x12c> @ imm = #12
     11e: 1505         	asrs	r5, r0, #20
     120: 7a03         	ldrb	r3, [r0, #8]
     122: 05ba         	lsls	r2, r7, #22
     124: 2d0f         	cmp	r5, #15
     126: 0d05         	lsrs	r5, r0, #20
     128: 052f         	lsls	r7, r5, #20
     12a: 2d0f         	cmp	r5, #15
     12c: 0306         	lsls	r6, r0, #12
     12e: 7f97         	ldrb	r7, [r2, #30]
     130: 052e         	lsls	r6, r5, #20
     132: 0615         	lsls	r5, r2, #24
     134: ea03 8200    	and.w	r2, r3, r0
     138: 0d05         	lsrs	r5, r0, #20
     13a: 2b31         	cmp	r3, #49
     13c: 0304         	lsls	r4, r0, #12
     13e: 1205         	asrs	r5, r0, #8
     140: fe03 2e02    	cdp2	p14, #0, c2, c3, c2, #0
     144: 2e06         	cmp	r6, #6
     146: 9803         	ldr	r0, [sp, #12]
     148: 2e7c         	cmp	r6, #124
     14a: 0204         	lsls	r4, r0, #8
     14c: 0f05         	lsrs	r5, r0, #28
     14e: 0306         	lsls	r6, r0, #12
     150: 00e9         	lsls	r1, r5, #3
     152: 054a         	lsls	r2, r1, #21
     154: 6715         	str	r5, [r2, #112]
     156: 0d05         	lsrs	r5, r0, #20
     158: 2b31         	cmp	r3, #49
     15a: 0f05         	lsrs	r5, r0, #28
     15c: 052d         	lsls	r5, r5, #20
     15e: 2f15         	cmp	r7, #21
     160: 0d05         	lsrs	r5, r0, #20
     162: 2e06         	cmp	r6, #6
     164: 1505         	asrs	r5, r0, #20
     166: 052e         	lsls	r6, r5, #20
     168: 2e0d         	cmp	r6, #13
     16a: 1505         	asrs	r5, r0, #20
     16c: 042e         	lsls	r6, r5, #16
     16e: 0503         	lsls	r3, r0, #20
     170: 0612         	lsls	r2, r2, #24
     172: fe03 2e02    	cdp2	p14, #0, c2, c3, c2, #0
     176: 0204         	lsls	r4, r0, #8
     178: 0d05         	lsrs	r5, r0, #20
     17a: 8203         	strh	r3, [r0, #16]
     17c: 4a7d         	ldr	r2, [pc, #500]          @ 0x374 <.debug_str+0x374>
     17e: 0304         	lsls	r4, r0, #12
     180: 1205         	asrs	r5, r0, #8
     182: fe03 2e02    	cdp2	p14, #0, c2, c3, c2, #0
     186: 0204         	lsls	r4, r0, #8
     188: 0f05         	lsrs	r5, r0, #28
     18a: 8103         	strh	r3, [r0, #8]
     18c: 4a7d         	ldr	r2, [pc, #500]          @ 0x384 <.debug_str+0x384>
     18e: 0306         	lsls	r6, r0, #12
     190: 7f97         	ldrb	r7, [r2, #30]
     192: 052e         	lsls	r6, r5, #20
     194: 0609         	lsls	r1, r1, #24
     196: f003 4a00    	and	r10, r3, #2147483648
     19a: 0c02         	lsrs	r2, r0, #16
     19c: 0100         	lsls	r0, r0, #4
     19e: 0001         	movs	r1, r0
     1a0: 0205         	lsls	r5, r0, #8
     1a2: 0000         	movs	r0, r0
     1a4: 0000         	movs	r0, r0
     1a6: 9b03         	ldr	r3, [sp, #12]
     1a8: 0103         	lsls	r3, r0, #4
     1aa: 0204         	lsls	r4, r0, #8
     1ac: 0905         	lsrs	r5, r0, #4
     1ae: 030a         	lsls	r2, r1, #12
     1b0: 7dda         	ldrb	r2, [r3, #23]
     1b2: 0201         	lsls	r1, r0, #8
     1b4: 0004         	movs	r4, r0
     1b6: 0101         	lsls	r1, r0, #4
     1b8: 0500         	lsls	r0, r0, #20
     1ba: 0002         	movs	r2, r0
     1bc: 0000         	movs	r0, r0
     1be: 0300         	lsls	r0, r0, #12
     1c0: 039b         	lsls	r3, r3, #14
     1c2: 0401         	lsls	r1, r0, #16
     1c4: 0502         	lsls	r2, r0, #20
     1c6: 0a09         	lsrs	r1, r1, #8
     1c8: e003         	b	0x1d2 <.debug_str+0x1d2> @ imm = #6
     1ca: 017d         	lsls	r5, r7, #5
     1cc: 0402         	lsls	r2, r0, #16
     1ce: 0100         	lsls	r0, r0, #4
     1d0: 0001         	movs	r1, r0
     1d2: 0205         	lsls	r5, r0, #8
     1d4: 0000         	movs	r0, r0
     1d6: 0000         	movs	r0, r0
     1d8: 9b03         	ldr	r3, [sp, #12]
     1da: 0103         	lsls	r3, r0, #4
     1dc: 0204         	lsls	r4, r0, #8
     1de: 0905         	lsrs	r5, r0, #4
     1e0: 030a         	lsls	r2, r1, #12
     1e2: 7de6         	ldrb	r6, [r4, #23]
     1e4: 0201         	lsls	r1, r0, #8
     1e6: 0004         	movs	r4, r0
     1e8: 0101         	lsls	r1, r0, #4
     1ea: 0500         	lsls	r0, r0, #20
     1ec: 0002         	movs	r2, r0
     1ee: 0000         	movs	r0, r0
     1f0: 0300         	lsls	r0, r0, #12
     1f2: 039b         	lsls	r3, r3, #14
     1f4: 0401         	lsls	r1, r0, #16
     1f6: 0502         	lsls	r2, r0, #20
     1f8: 0a09         	lsrs	r1, r1, #8
     1fa: f303 2e7d    	<unknown>
     1fe: 0802         	lsrs	r2, r0, #32
     200: 0100         	lsls	r0, r0, #4
     202: 0001         	movs	r1, r0
     204: 0205         	lsls	r5, r0, #8
     206: 0000         	movs	r0, r0
     208: 0000         	movs	r0, r0
     20a: 9b03         	ldr	r3, [sp, #12]
     20c: 0103         	lsls	r3, r0, #4
     20e: 0204         	lsls	r4, r0, #8
     210: 1405         	asrs	r5, r0, #16
     212: 030a         	lsls	r2, r1, #12
     214: 7dfc         	ldrb	r4, [r7, #23]
     216: 0566         	lsls	r6, r4, #21
     218: 310f         	adds	r1, #15
     21a: 0104         	lsls	r4, r0, #4
     21c: 0005         	movs	r5, r0
     21e: 0306         	lsls	r6, r0, #12
     220: 7ee5         	ldrb	r5, [r4, #27]
     222: 044a         	lsls	r2, r1, #17
     224: 0502         	lsls	r2, r0, #20
     226: 030f         	lsls	r7, r1, #12
     228: 019b         	lsls	r3, r3, #6
     22a: 042e         	lsls	r6, r5, #16
     22c: 0501         	lsls	r1, r0, #20
     22e: 0300         	lsls	r0, r0, #12
     230: 7ee5         	ldrb	r5, [r4, #27]
     232: 044a         	lsls	r2, r1, #17
     234: 0502         	lsls	r2, r0, #20
     236: 030f         	lsls	r7, r1, #12
     238: 019b         	lsls	r3, r3, #6
     23a: 049e         	lsls	r6, r3, #18
     23c: 0501         	lsls	r1, r0, #20
     23e: 0300         	lsls	r0, r0, #12
     240: 7ee5         	ldrb	r5, [r4, #27]
     242: 044a         	lsls	r2, r1, #17
     244: 0502         	lsls	r2, r0, #20
     246: 030f         	lsls	r7, r1, #12
     248: 019b         	lsls	r3, r3, #6
     24a: 052e         	lsls	r6, r5, #20
     24c: 060d         	lsls	r5, r1, #24
     24e: 0567         	lsls	r7, r4, #21
     250: 2d0f         	cmp	r5, #15
     252: 0d05         	lsrs	r5, r0, #20
     254: 052f         	lsls	r7, r5, #20
     256: 490f         	ldr	r1, [pc, #60]           @ 0x294 <.debug_str+0x294>
     258: 0306         	lsls	r6, r0, #12
     25a: 7ee5         	ldrb	r5, [r4, #27]
     25c: 032e         	lsls	r6, r5, #12
     25e: 019b         	lsls	r3, r3, #6
     260: 054a         	lsls	r2, r1, #21
     262: 0609         	lsls	r1, r1, #24
     264: 05dc         	lsls	r4, r3, #23
     266: 030f         	lsls	r7, r1, #12
     268: 9e7a         	ldr	r6, [sp, #488]
     26a: 0d05         	lsrs	r5, r0, #20
     26c: 052f         	lsls	r7, r5, #20
     26e: 2d0f         	cmp	r5, #15
     270: 0306         	lsls	r6, r0, #12
     272: 7ee5         	ldrb	r5, [r4, #27]
     274: 032e         	lsls	r6, r5, #12
     276: 019b         	lsls	r3, r3, #6
     278: 0566         	lsls	r6, r4, #21
     27a: 060d         	lsls	r5, r1, #24
     27c: 3083         	adds	r0, #131
     27e: 0304         	lsls	r4, r0, #12
     280: 1205         	asrs	r5, r0, #8
     282: ca03         	ldm	r2!, {r0, r1}
     284: 2e02         	cmp	r6, #2
     286: 0204         	lsls	r4, r0, #8
     288: 0f05         	lsrs	r5, r0, #28
     28a: b303         	cbz	r3, 0x2ce <.debug_str+0x2ce> @ imm = #64
     28c: 4a7d         	ldr	r2, [pc, #500]          @ 0x484 <.debug_str+0x484>
     28e: 0d05         	lsrs	r5, r0, #20
     290: 2c69         	cmp	r4, #105
     292: 0304         	lsls	r4, r0, #12
     294: 1205         	asrs	r5, r0, #8
     296: cc03         	ldm	r4!, {r0, r1}
     298: 8202         	strh	r2, [r0, #16]
     29a: 0204         	lsls	r4, r0, #8
     29c: 0f05         	lsrs	r5, r0, #28
     29e: b303         	cbz	r3, 0x2e2 <.debug_str+0x2e2> @ imm = #64
     2a0: 2e7d         	cmp	r6, #125
     2a2: 0306         	lsls	r6, r0, #12
     2a4: 7ee5         	ldrb	r5, [r4, #27]
     2a6: 054a         	lsls	r2, r1, #21
     2a8: 0609         	lsls	r1, r1, #24
     2aa: a103         	adr	r1, #12 <.debug_str+0x2b1>
     2ac: 2e01         	cmp	r6, #1
     2ae: 0a02         	lsrs	r2, r0, #8
     2b0: 0100         	lsls	r0, r0, #4
     2b2: 0001         	movs	r1, r0
     2b4: 0205         	lsls	r5, r0, #8
     2b6: 0000         	movs	r0, r0
     2b8: 0000         	movs	r0, r0
     2ba: 9b03         	ldr	r3, [sp, #12]
     2bc: 0103         	lsls	r3, r0, #4
     2be: 0204         	lsls	r4, r0, #8
     2c0: 0905         	lsrs	r5, r0, #4
     2c2: 030a         	lsls	r2, r1, #12
     2c4: 7e8b         	ldrb	r3, [r1, #26]
     2c6: 0201         	lsls	r1, r0, #8
     2c8: 0004         	movs	r4, r0
     2ca: 0101         	lsls	r1, r0, #4
     2cc: 0500         	lsls	r0, r0, #20
     2ce: 0002         	movs	r2, r0
     2d0: 0000         	movs	r0, r0
     2d2: 0300         	lsls	r0, r0, #12
     2d4: 039b         	lsls	r3, r3, #14
     2d6: 0401         	lsls	r1, r0, #16
     2d8: 0502         	lsls	r2, r0, #20
     2da: 0a09         	lsrs	r1, r1, #8
     2dc: 9103         	str	r1, [sp, #12]
     2de: 017e         	lsls	r6, r7, #5
     2e0: 0602         	lsls	r2, r0, #24
     2e2: 0100         	lsls	r0, r0, #4
     2e4: 0001         	movs	r1, r0
     2e6: 0205         	lsls	r5, r0, #8
     2e8: 0000         	movs	r0, r0
     2ea: 0000         	movs	r0, r0
     2ec: 9b03         	ldr	r3, [sp, #12]
     2ee: 0103         	lsls	r3, r0, #4
     2f0: 0204         	lsls	r4, r0, #8
     2f2: 0905         	lsrs	r5, r0, #4
     2f4: 030a         	lsls	r2, r1, #12
     2f6: 7e97         	ldrb	r7, [r2, #26]
     2f8: 0201         	lsls	r1, r0, #8
     2fa: 0006         	movs	r6, r0
     2fc: 0101         	lsls	r1, r0, #4
     2fe: 0ea5         	lsrs	r5, r4, #26
     300: 0000         	movs	r0, r0
     302: 0004         	movs	r4, r0
     304: 010e         	lsls	r6, r1, #4
     306: 0000         	movs	r0, r0
     308: 0101         	lsls	r1, r0, #4
     30a: fb01 0d0e    	mla	sp, r1, lr, r0
     30e: 0100         	lsls	r0, r0, #4
     310: 0101         	lsls	r1, r0, #4
     312: 0001         	movs	r1, r0
     314: 0000         	movs	r0, r0
     316: 0001         	movs	r1, r0
     318: 0100         	lsls	r0, r0, #4
     31a: 7273         	strb	r3, [r6, #9]
     31c: 0063         	lsls	r3, r4, #1
     31e: 7273         	strb	r3, [r6, #9]
     320: 2f63         	cmp	r7, #99
     322: 656d         	str	r5, [r5, #84]
     324: 006d         	lsls	r5, r5, #1
     326: 722f         	strb	r7, [r5, #8]
     328: 7375         	strb	r5, [r6, #13]
     32a: 6374         	str	r4, [r6, #52]
     32c: 622f         	str	r7, [r5, #32]
     32e: 3037         	adds	r0, #55
     330: 6162         	str	r2, [r4, #20]
     332: 3461         	adds	r4, #97
     334: 3966         	subs	r1, #102
     336: 3232         	adds	r2, #50
     338: 3161         	adds	r1, #97
     33a: 3038         	adds	r0, #56
     33c: 6439         	str	r1, [r7, #64]
     33e: 3937         	subs	r1, #55
     340: 6163         	str	r3, [r4, #20]
     342: 6165         	str	r5, [r4, #20]
     344: 6265         	str	r5, [r4, #36]
     346: 3039         	adds	r0, #57
     348: 3832         	subs	r0, #50
     34a: 3030         	adds	r0, #48
     34c: 3363         	adds	r3, #99
     34e: 6562         	str	r2, [r4, #84]
     350: 3832         	subs	r0, #50
     352: 6233         	str	r3, [r6, #32]
     354: 2f39         	cmp	r7, #57
     356: 696c         	ldr	r4, [r5, #20]
     358: 7262         	strb	r2, [r4, #9]
     35a: 7261         	strb	r1, [r4, #9]
     35c: 2f79         	cmp	r7, #121
     35e: 6f63         	ldr	r3, [r4, #116]
     360: 6572         	str	r2, [r6, #84]
     362: 732f         	strb	r7, [r5, #12]
     364: 6372         	str	r2, [r6, #52]
     366: 6e2f         	ldr	r7, [r5, #96]
     368: 6d75         	ldr	r5, [r6, #84]
     36a: 2f00         	cmp	r7, #0
     36c: 7572         	strb	r2, [r6, #21]
     36e: 7473         	strb	r3, [r6, #17]
     370: 2f63         	cmp	r7, #99
     372: 3762         	adds	r7, #98
     374: 6230         	str	r0, [r6, #32]
     376: 6161         	str	r1, [r4, #20]
     378: 6634         	str	r4, [r6, #96]
     37a: 3239         	adds	r2, #57
     37c: 6132         	str	r2, [r6, #16]
     37e: 3831         	subs	r0, #49
     380: 3930         	subs	r1, #48
     382: 3764         	adds	r7, #100
     384: 6339         	str	r1, [r7, #48]
     386: 6561         	str	r1, [r4, #84]
     388: 6561         	str	r1, [r4, #84]
     38a: 3962         	subs	r1, #98
     38c: 3230         	adds	r2, #48
     38e: 3038         	adds	r0, #56
     390: 6330         	str	r0, [r6, #48]
     392: 6233         	str	r3, [r6, #32]
     394: 3265         	adds	r2, #101
     396: 3338         	adds	r3, #56
     398: 3962         	subs	r1, #98
     39a: 6c2f         	ldr	r7, [r5, #64]
     39c: 6269         	str	r1, [r5, #36]
     39e: 6172         	str	r2, [r6, #20]
     3a0: 7972         	ldrb	r2, [r6, #5]
     3a2: 632f         	str	r7, [r5, #48]
     3a4: 726f         	strb	r7, [r5, #9]
     3a6: 2f65         	cmp	r7, #101
     3a8: 7273         	strb	r3, [r6, #9]
     3aa: 2f63         	cmp	r7, #99
     3ac: 7470         	strb	r0, [r6, #17]
     3ae: 0072         	lsls	r2, r6, #1
     3b0: 6d00         	ldr	r0, [r0, #80]
     3b2: 6361         	str	r1, [r4, #52]
     3b4: 6f72         	ldr	r2, [r6, #116]
     3b6: 2e73         	cmp	r6, #115
     3b8: 7372         	strb	r2, [r6, #13]
     3ba: 0100         	lsls	r0, r0, #4
     3bc: 0000         	movs	r0, r0
     3be: 6d69         	ldr	r1, [r5, #84]
     3c0: 6c70         	ldr	r0, [r6, #68]
     3c2: 2e73         	cmp	r6, #115
     3c4: 7372         	strb	r2, [r6, #13]
     3c6: 0200         	lsls	r0, r0, #8
     3c8: 0000         	movs	r0, r0
     3ca: 6975         	ldr	r5, [r6, #20]
     3cc: 746e         	strb	r6, [r5, #17]
     3ce: 6d5f         	ldr	r7, [r3, #84]
     3d0: 6361         	str	r1, [r4, #52]
     3d2: 6f72         	ldr	r2, [r6, #116]
     3d4: 2e73         	cmp	r6, #115
     3d6: 7372         	strb	r2, [r6, #13]
     3d8: 0300         	lsls	r0, r0, #12
     3da: 0000         	movs	r0, r0
     3dc: 756d         	strb	r5, [r5, #21]
     3de: 5f74         	ldrsh	r4, [r6, r5]
     3e0: 7470         	strb	r0, [r6, #17]
     3e2: 2e72         	cmp	r6, #114
     3e4: 7372         	strb	r2, [r6, #13]
     3e6: 0400         	lsls	r0, r0, #16
     3e8: 0000         	movs	r0, r0
     3ea: 6f63         	ldr	r3, [r4, #116]
     3ec: 736e         	strb	r6, [r5, #13]
     3ee: 5f74         	ldrsh	r4, [r6, r5]
     3f0: 7470         	strb	r0, [r6, #17]
     3f2: 2e72         	cmp	r6, #114
     3f4: 7372         	strb	r2, [r6, #13]
     3f6: 0400         	lsls	r0, r0, #16
     3f8: 0000         	movs	r0, r0
     3fa: 6f6d         	ldr	r5, [r5, #116]
     3fc: 2e64         	cmp	r6, #100
     3fe: 7372         	strb	r2, [r6, #13]
     400: 0200         	lsls	r0, r0, #8
     402: 0000         	movs	r0, r0
     404: 6e69         	ldr	r1, [r5, #100]
     406: 5f74         	ldrsh	r4, [r6, r5]
     408: 616d         	str	r5, [r5, #20]
     40a: 7263         	strb	r3, [r4, #9]
     40c: 736f         	strb	r7, [r5, #13]
     40e: 722e         	strb	r6, [r5, #8]
     410: 0073         	lsls	r3, r6, #1
     412: 0003         	movs	r3, r0
     414: 0000         	movs	r0, r0
     416: 0500         	lsls	r0, r0, #20
     418: 2802         	cmp	r0, #2
     41a: 0001         	movs	r1, r0
     41c: 0308         	lsls	r0, r1, #12
     41e: 02a8         	lsls	r0, r5, #10
     420: 0401         	lsls	r1, r0, #16
     422: 0502         	lsls	r2, r0, #20
     424: 0a08         	lsrs	r0, r1, #8
     426: bb03         	cbnz	r3, 0x46a <.debug_str+0x46a> @ imm = #64
     428: 827e         	strh	r6, [r7, #18]
     42a: 0304         	lsls	r4, r0, #12
     42c: 0d05         	lsrs	r5, r0, #20
     42e: cf03         	ldm	r7!, {r0, r1}
     430: 4a08         	ldr	r2, [pc, #32]           @ 0x454 <.debug_str+0x454>
     432: 0204         	lsls	r4, r0, #8
     434: 2105         	movs	r1, #5
     436: b403         	push	{r0, r1}
     438: 2e77         	cmp	r6, #119
     43a: 0404         	lsls	r4, r0, #16
     43c: 1205         	asrs	r5, r0, #8
     43e: 8103         	strh	r3, [r0, #8]
     440: 4a03         	ldr	r2, [pc, #12]           @ 0x450 <.debug_str+0x450>
     442: 0204         	lsls	r4, r0, #8
     444: 0f05         	lsrs	r5, r0, #28
     446: b803         	<unknown>
     448: 4a7c         	ldr	r2, [pc, #496]          @ 0x63c <.debug_str+0x63c>
     44a: 0306         	lsls	r6, r0, #12
     44c: 2e60         	cmp	r6, #96
     44e: 1505         	asrs	r5, r0, #20
     450: 0306         	lsls	r6, r0, #12
     452: 4a21         	ldr	r2, [pc, #132]          @ 0x4d8 <.debug_str+0x4d8>
     454: 0d05         	lsrs	r5, r0, #20
     456: 2e06         	cmp	r6, #6
     458: 0f05         	lsrs	r5, r0, #28
     45a: 4906         	ldr	r1, [pc, #24]           @ 0x474 <.debug_str+0x474>
     45c: 1505         	asrs	r5, r0, #20
     45e: 054b         	lsls	r3, r1, #21
     460: 060d         	lsls	r5, r1, #24
     462: 052e         	lsls	r6, r5, #20
     464: 060f         	lsls	r7, r1, #24
     466: 0549         	lsls	r1, r1, #21
     468: 2f15         	cmp	r7, #21
     46a: 0d05         	lsrs	r5, r0, #20
     46c: 4a06         	ldr	r2, [pc, #24]           @ 0x488 <.debug_str+0x488>
     46e: 0f05         	lsrs	r5, r0, #28
     470: 4906         	ldr	r1, [pc, #24]           @ 0x48c <.debug_str+0x48c>
     472: 1505         	asrs	r5, r0, #20
     474: 044b         	lsls	r3, r1, #17
     476: 0505         	lsls	r5, r0, #20
     478: 0312         	lsls	r2, r2, #12
     47a: 03b9         	lsls	r1, r7, #14
     47c: 042e         	lsls	r6, r5, #16
     47e: 0502         	lsls	r2, r0, #20
     480: 030d         	lsls	r5, r1, #12
     482: 7cc7         	ldrb	r7, [r0, #19]
     484: 052e         	lsls	r6, r5, #20
     486: 490f         	ldr	r1, [pc, #60]           @ 0x4c4 <.debug_str+0x4c4>
     488: 0905         	lsrs	r5, r0, #4
     48a: cb03         	ldm	r3!, {r0, r1}
     48c: 4a00         	ldr	r2, [pc, #0]            @ 0x490 <.debug_str+0x490>
     48e: 0504         	lsls	r4, r0, #20
     490: 1205         	asrs	r5, r0, #8
     492: ef03 4a02    	<unknown>
     496: 0204         	lsls	r4, r0, #8
     498: 1705         	asrs	r5, r0, #28
     49a: 9303         	str	r3, [sp, #12]
     49c: 4a7d         	ldr	r2, [pc, #500]          @ 0x694 <.debug_str+0x694>
     49e: 2005         	movs	r0, #5
     4a0: 054b         	lsls	r3, r1, #21
     4a2: 0600         	lsls	r0, r0, #24
     4a4: 9203         	str	r2, [sp, #12]
     4a6: 4a7f         	ldr	r2, [pc, #508]          @ 0x6a4 <.debug_str+0x6a4>
     4a8: 0c05         	lsrs	r5, r0, #16
     4aa: 0306         	lsls	r6, r0, #12
     4ac: 00ef         	lsls	r7, r5, #3
     4ae: 054a         	lsls	r2, r1, #21
     4b0: 030f         	lsls	r7, r1, #12
     4b2: 2e59         	cmp	r6, #89
     4b4: 0005         	movs	r5, r0
     4b6: 0306         	lsls	r6, r0, #12
     4b8: 7fb8         	ldrb	r0, [r7, #30]
     4ba: 0566         	lsls	r6, r4, #21
     4bc: 061f         	lsls	r7, r3, #24
     4be: 3f03         	subs	r7, #3
     4c0: 054a         	lsls	r2, r1, #21
     4c2: 030f         	lsls	r7, r1, #12
     4c4: 8209         	strh	r1, [r1, #16]
     4c6: 1d05         	adds	r5, r0, #4
     4c8: 6e46         	ldr	r6, [r0, #100]
     4ca: 1c05         	adds	r5, r0, #0
     4cc: 0548         	lsls	r0, r1, #21
     4ce: 4c32         	ldr	r4, [pc, #200]          @ 0x598 <.debug_str+0x598>
     4d0: 1d05         	adds	r5, r0, #4
     4d2: 4a06         	ldr	r2, [pc, #24]           @ 0x4ec <.debug_str+0x4ec>
     4d4: 0d05         	lsrs	r5, r0, #20
     4d6: 3306         	adds	r3, #6
     4d8: 0f05         	lsrs	r5, r0, #28
     4da: 7703         	strb	r3, [r0, #28]
     4dc: 054a         	lsls	r2, r1, #21
     4de: 4e1d         	ldr	r6, [pc, #116]          @ 0x554 <.debug_str+0x554>
     4e0: 1c05         	adds	r5, r0, #0
     4e2: 0548         	lsls	r0, r1, #21
     4e4: 3032         	adds	r0, #50
     4e6: 1d05         	adds	r5, r0, #4
     4e8: 4a06         	ldr	r2, [pc, #24]           @ 0x504 <.debug_str+0x504>
     4ea: 0d05         	lsrs	r5, r0, #20
     4ec: 3306         	adds	r3, #6
     4ee: 0f05         	lsrs	r5, r0, #28
     4f0: 7703         	strb	r3, [r0, #28]
     4f2: 054a         	lsls	r2, r1, #21
     4f4: 321d         	adds	r2, #29
     4f6: 1c05         	adds	r5, r0, #0
     4f8: 0564         	lsls	r4, r4, #21
     4fa: 3032         	adds	r0, #50
     4fc: 1d05         	adds	r5, r0, #4
     4fe: 4a06         	ldr	r2, [pc, #24]           @ 0x518 <.debug_str+0x518>
     500: 0d05         	lsrs	r5, r0, #20
     502: 3306         	adds	r3, #6
     504: 0f05         	lsrs	r5, r0, #28
     506: 7703         	strb	r3, [r0, #28]
     508: 0566         	lsls	r6, r4, #21
     50a: 4e1d         	ldr	r6, [pc, #116]          @ 0x580 <.debug_str+0x580>
     50c: 1c05         	adds	r5, r0, #0
     50e: 0548         	lsls	r0, r1, #21
     510: 2c0f         	cmp	r4, #15
     512: 3205         	adds	r2, #5
     514: 0532         	lsls	r2, r6, #20
     516: 061d         	lsls	r5, r3, #24
     518: 054a         	lsls	r2, r1, #21
     51a: 060d         	lsls	r5, r1, #24
     51c: 0533         	lsls	r3, r6, #20
     51e: 030f         	lsls	r7, r1, #12
     520: 4a77         	ldr	r2, [pc, #476]          @ 0x700 <.debug_str+0x700>
     522: 0306         	lsls	r6, r0, #12
     524: 7fb8         	ldrb	r0, [r7, #30]
     526: 0666         	lsls	r6, r4, #25
     528: 2003         	movs	r0, #3
     52a: 032e         	lsls	r6, r5, #12
     52c: 4a0d         	ldr	r2, [pc, #52]           @ 0x564 <.debug_str+0x564>
     52e: 0306         	lsls	r6, r0, #12
     530: 6653         	str	r3, [r2, #100]
     532: 1b05         	subs	r5, r0, r4
     534: 0306         	lsls	r6, r0, #12
     536: 2e2e         	cmp	r6, #46
     538: 0d05         	lsrs	r5, r0, #20
     53a: 2e06         	cmp	r6, #6
     53c: 0f05         	lsrs	r5, r0, #28
     53e: 4906         	ldr	r1, [pc, #24]           @ 0x558 <.debug_str+0x558>
     540: 1b05         	subs	r5, r0, r4
     542: 054b         	lsls	r3, r1, #21
     544: 060d         	lsls	r5, r1, #24
     546: 052e         	lsls	r6, r5, #20
     548: 060f         	lsls	r7, r1, #24
     54a: 0549         	lsls	r1, r1, #21
     54c: 2f1b         	cmp	r7, #27
     54e: 0d05         	lsrs	r5, r0, #20
     550: 4a06         	ldr	r2, [pc, #24]           @ 0x56c <.debug_str+0x56c>
     552: 0f05         	lsrs	r5, r0, #28
     554: 4906         	ldr	r1, [pc, #24]           @ 0x570 <.debug_str+0x570>
     556: 1b05         	subs	r5, r0, r4
     558: 054b         	lsls	r3, r1, #21
     55a: 2d0f         	cmp	r5, #15
     55c: 0d05         	lsrs	r5, r0, #20
     55e: 052f         	lsls	r7, r5, #20
     560: 490f         	ldr	r1, [pc, #60]           @ 0x5a0 <.debug_str+0x5a0>
     562: 0504         	lsls	r4, r0, #20
     564: 1205         	asrs	r5, r0, #8
     566: ad03         	add	r5, sp, #12
     568: 4a03         	ldr	r2, [pc, #12]           @ 0x578 <.debug_str+0x578>
     56a: 0204         	lsls	r4, r0, #8
     56c: 0905         	lsrs	r5, r0, #4
     56e: 9c03         	ldr	r4, [sp, #12]
     570: 4a7d         	ldr	r2, [pc, #500]          @ 0x768 <.debug_str+0x768>
     572: 0f05         	lsrs	r5, r0, #28
     574: aa03         	add	r2, sp, #12
     576: 4a7f         	ldr	r2, [pc, #508]          @ 0x774 <.debug_str+0x774>
     578: 0306         	lsls	r6, r0, #12
     57a: 2e60         	cmp	r6, #96
     57c: 1505         	asrs	r5, r0, #20
     57e: 0306         	lsls	r6, r0, #12
     580: 2e21         	cmp	r6, #33
     582: 0d05         	lsrs	r5, r0, #20
     584: 2e06         	cmp	r6, #6
     586: 0f05         	lsrs	r5, r0, #28
     588: 4906         	ldr	r1, [pc, #24]           @ 0x5a4 <.debug_str+0x5a4>
     58a: 1505         	asrs	r5, r0, #20
     58c: 054b         	lsls	r3, r1, #21
     58e: 060d         	lsls	r5, r1, #24
     590: 052e         	lsls	r6, r5, #20
     592: 060f         	lsls	r7, r1, #24
     594: 0549         	lsls	r1, r1, #21
     596: 2f15         	cmp	r7, #21
     598: 0d05         	lsrs	r5, r0, #20
     59a: 4a06         	ldr	r2, [pc, #24]           @ 0x5b4 <.debug_str+0x5b4>
     59c: 0f05         	lsrs	r5, r0, #28
     59e: 4906         	ldr	r1, [pc, #24]           @ 0x5b8 <.debug_str+0x5b8>
     5a0: 1505         	asrs	r5, r0, #20
     5a2: 044b         	lsls	r3, r1, #17
     5a4: 0505         	lsls	r5, r0, #20
     5a6: 0312         	lsls	r2, r2, #12
     5a8: 03b9         	lsls	r1, r7, #14
     5aa: 042e         	lsls	r6, r5, #16
     5ac: 0502         	lsls	r2, r0, #20
     5ae: 030d         	lsls	r5, r1, #12
     5b0: 7cc7         	ldrb	r7, [r0, #19]
     5b2: 052e         	lsls	r6, r5, #20
     5b4: 490f         	ldr	r1, [pc, #60]           @ 0x5f4 <.debug_str+0x5f4>
     5b6: 0104         	lsls	r4, r0, #4
     5b8: 0a05         	lsrs	r5, r0, #8
     5ba: 8b03         	ldrh	r3, [r0, #24]
     5bc: 4a02         	ldr	r2, [pc, #8]            @ 0x5c8 <.debug_str+0x5c8>
     5be: 0602         	lsls	r2, r0, #24
     5c0: 0100         	lsls	r0, r0, #4
     5c2: 0001         	movs	r1, r0
     5c4: 0205         	lsls	r5, r0, #8
     5c6: 0000         	movs	r0, r0
     5c8: 0000         	movs	r0, r0
     5ca: a803         	add	r0, sp, #12
     5cc: 0102         	lsls	r2, r0, #4
     5ce: 0304         	lsls	r4, r0, #12
     5d0: 0d05         	lsrs	r5, r0, #20
     5d2: 030a         	lsls	r2, r1, #12
     5d4: 078a         	lsls	r2, r1, #30
     5d6: 049e         	lsls	r6, r3, #18
     5d8: 0506         	lsls	r6, r0, #20
     5da: 030c         	lsls	r4, r1, #12
     5dc: 76ef         	strb	r7, [r5, #27]
     5de: 042e         	lsls	r6, r5, #16
     5e0: 0505         	lsls	r5, r0, #20
     5e2: 0312         	lsls	r2, r2, #12
     5e4: 03b8         	lsls	r0, r7, #14
     5e6: 0466         	lsls	r6, r4, #17
     5e8: 0304         	lsls	r4, r0, #12
     5ea: 2e0e         	cmp	r6, #14
     5ec: 0204         	lsls	r4, r0, #8
     5ee: 0805         	lsrs	r5, r0, #32
     5f0: e103         	b	0x7fa <.debug_str+0x7fa> @ imm = #518
     5f2: 4a7d         	ldr	r2, [pc, #500]          @ 0x7e8 <.debug_str+0x7e8>
     5f4: 0306         	lsls	r6, r0, #12
     5f6: 7eb7         	ldrb	r7, [r6, #26]
     5f8: 0566         	lsls	r6, r4, #21
     5fa: 0621         	lsls	r1, r4, #24
     5fc: cc03         	ldm	r4!, {r0, r1}
     5fe: 2e01         	cmp	r6, #1
     600: 0404         	lsls	r4, r0, #16
     602: 1205         	asrs	r5, r0, #8
     604: 9c03         	ldr	r4, [sp, #12]
     606: 4a02         	ldr	r2, [pc, #8]            @ 0x610 <.debug_str+0x610>
     608: 0704         	lsls	r4, r0, #28
     60a: 0d05         	lsrs	r5, r0, #20
     60c: a403         	adr	r4, #12 <.debug_str+0x613>
     60e: 4a05         	ldr	r2, [pc, #20]           @ 0x624 <.debug_str+0x624>
     610: 0204         	lsls	r4, r0, #8
     612: 0f05         	lsrs	r5, r0, #28
     614: f603 6677    	addw	r6, r3, #3703
     618: 0306         	lsls	r6, r0, #12
     61a: 7efe         	ldrb	r6, [r7, #27]
     61c: 032e         	lsls	r6, r5, #12
     61e: 0182         	lsls	r2, r0, #6
     620: 042e         	lsls	r6, r5, #16
     622: 0505         	lsls	r5, r0, #20
     624: 0612         	lsls	r2, r2, #24
     626: d803         	bhi	0x630 <.debug_str+0x630> @ imm = #6
     628: 8202         	strh	r2, [r0, #16]
     62a: 0204         	lsls	r4, r0, #8
     62c: 1505         	asrs	r5, r0, #20
     62e: ab03         	add	r3, sp, #12
     630: 4a7d         	ldr	r2, [pc, #500]          @ 0x828 <.debug_str+0x828>
     632: 0d05         	lsrs	r5, r0, #20
     634: 6606         	str	r6, [r0, #96]
     636: 0f05         	lsrs	r5, r0, #28
     638: 6306         	str	r6, [r0, #48]
     63a: 1505         	asrs	r5, r0, #20
     63c: 054d         	lsls	r5, r1, #21
     63e: 060d         	lsls	r5, r1, #24
     640: 042e         	lsls	r6, r5, #16
     642: 0505         	lsls	r5, r0, #20
     644: 0612         	lsls	r2, r2, #24
     646: d503         	bpl	0x650 <.debug_str+0x650> @ imm = #6
     648: 4a02         	ldr	r2, [pc, #8]            @ 0x654 <.debug_str+0x654>
     64a: 0204         	lsls	r4, r0, #8
     64c: 0f05         	lsrs	r5, r0, #28
     64e: a803         	add	r0, sp, #12
     650: 4a7d         	ldr	r2, [pc, #500]          @ 0x848 <.debug_str+0x848>
     652: 1505         	asrs	r5, r0, #20
     654: 0531         	lsls	r1, r6, #20
     656: 060d         	lsls	r5, r1, #24
     658: 044a         	lsls	r2, r1, #17
     65a: 0505         	lsls	r5, r0, #20
     65c: 0612         	lsls	r2, r2, #24
     65e: d503         	bpl	0x668 <.debug_str+0x668> @ imm = #6
     660: 4a02         	ldr	r2, [pc, #8]            @ 0x66c <.debug_str+0x66c>
     662: 0204         	lsls	r4, r0, #8
     664: 0f05         	lsrs	r5, r0, #28
     666: a803         	add	r0, sp, #12
     668: 2e7d         	cmp	r6, #125
     66a: 1505         	asrs	r5, r0, #20
     66c: 054d         	lsls	r5, r1, #21
     66e: 2b0f         	cmp	r3, #15
     670: 0d05         	lsrs	r5, r0, #20
     672: 0569         	lsls	r1, r5, #21
     674: 470f         	bx	r1
     676: 0306         	lsls	r6, r0, #12
     678: 7efe         	ldrb	r6, [r7, #27]
     67a: 059e         	lsls	r6, r3, #22
     67c: 0609         	lsls	r1, r1, #24
     67e: d003         	beq	0x688 <.debug_str+0x688> @ imm = #6
     680: 2e01         	cmp	r6, #1
     682: 1705         	asrs	r5, r0, #28
     684: 0430         	lsls	r0, r6, #16
     686: 0505         	lsls	r5, r0, #20
     688: 0312         	lsls	r2, r2, #12
     68a: 0288         	lsls	r0, r1, #10
     68c: 0466         	lsls	r6, r4, #17
     68e: 0502         	lsls	r2, r0, #20
     690: 0600         	lsls	r0, r0, #24
     692: a603         	adr	r6, #12 <.debug_str+0x699>
     694: 4a7c         	ldr	r2, [pc, #496]          @ 0x888 <.debug_str+0x888>
     696: 2005         	movs	r0, #5
     698: 0306         	lsls	r6, r0, #12
     69a: 01d3         	lsls	r3, r2, #7
     69c: 0566         	lsls	r6, r4, #21
     69e: 0600         	lsls	r0, r0, #24
     6a0: ad03         	add	r5, sp, #12
     6a2: 4a7e         	ldr	r2, [pc, #504]          @ 0x89c <.debug_str+0x89c>
     6a4: 0c05         	lsrs	r5, r0, #16
     6a6: 0306         	lsls	r6, r0, #12
     6a8: 01d4         	lsls	r4, r2, #7
     6aa: 054a         	lsls	r2, r1, #21
     6ac: 030f         	lsls	r7, r1, #12
     6ae: 6656         	str	r6, [r2, #100]
     6b0: 0005         	movs	r5, r0
     6b2: 0306         	lsls	r6, r0, #12
     6b4: 7ed6         	ldrb	r6, [r2, #27]
     6b6: 0582         	lsls	r2, r0, #22
     6b8: 030f         	lsls	r7, r1, #12
     6ba: 01aa         	lsls	r2, r5, #6
     6bc: 054a         	lsls	r2, r1, #21
     6be: 061f         	lsls	r7, r3, #24
     6c0: 7703         	strb	r3, [r0, #28]
     6c2: 3c08         	subs	r4, #8
     6c4: 0f05         	lsrs	r5, r0, #28
     6c6: 0903         	lsrs	r3, r0, #4
     6c8: 052e         	lsls	r6, r5, #20
     6ca: 031f         	lsls	r7, r3, #12
     6cc: 6677         	str	r7, [r6, #100]
     6ce: 0f05         	lsrs	r5, r0, #28
     6d0: 0903         	lsrs	r3, r0, #4
     6d2: 0582         	lsls	r2, r0, #22
     6d4: 621d         	str	r5, [r3, #32]
     6d6: 0536         	lsls	r6, r6, #20
     6d8: 481c         	ldr	r0, [pc, #112]          @ 0x74c <.debug_str+0x74c>
     6da: 0d05         	lsrs	r5, r0, #20
     6dc: 0552         	lsls	r2, r2, #21
     6de: 031c         	lsls	r4, r3, #12
     6e0: 4a78         	ldr	r2, [pc, #480]          @ 0x8c4 <.debug_str+0x8c4>
     6e2: 4405         	add	r5, r0
     6e4: 054c         	lsls	r4, r1, #21
     6e6: 061d         	lsls	r5, r3, #24
     6e8: 054a         	lsls	r2, r1, #21
     6ea: 060d         	lsls	r5, r1, #24
     6ec: 0534         	lsls	r4, r6, #20
     6ee: 030f         	lsls	r7, r1, #12
     6f0: 8276         	strh	r6, [r6, #18]
     6f2: 1c05         	adds	r5, r0, #0
     6f4: 0568         	lsls	r0, r5, #21
     6f6: 301d         	adds	r0, #29
     6f8: 4405         	add	r5, r0
     6fa: 4a06         	ldr	r2, [pc, #24]           @ 0x714 <.debug_str+0x714>
     6fc: 1d05         	adds	r5, r0, #4
     6fe: 054a         	lsls	r2, r1, #21
     700: 060d         	lsls	r5, r1, #24
     702: 0534         	lsls	r4, r6, #20
     704: 030f         	lsls	r7, r1, #12
     706: 8276         	strh	r6, [r6, #18]
     708: 1d05         	adds	r5, r0, #4
     70a: 0532         	lsls	r2, r6, #20
     70c: 641c         	str	r4, [r3, #64]
     70e: 4405         	add	r5, r0
     710: 0530         	lsls	r0, r6, #20
     712: 061d         	lsls	r5, r3, #24
     714: 054a         	lsls	r2, r1, #21
     716: 060d         	lsls	r5, r1, #24
     718: 0534         	lsls	r4, r6, #20
     71a: 030f         	lsls	r7, r1, #12
     71c: 9e76         	ldr	r6, [sp, #472]
     71e: 1d05         	adds	r5, r0, #4
     720: 054e         	lsls	r6, r1, #21
     722: 481c         	ldr	r0, [pc, #112]          @ 0x794 <.debug_str+0x794>
     724: 0f05         	lsrs	r5, r0, #28
     726: 0548         	lsls	r0, r1, #21
     728: 3244         	adds	r2, #68
     72a: 1d05         	adds	r5, r0, #4
     72c: 4a06         	ldr	r2, [pc, #24]           @ 0x748 <.debug_str+0x748>
     72e: 0d05         	lsrs	r5, r0, #20
     730: 3406         	adds	r4, #6
     732: 0f05         	lsrs	r5, r0, #28
     734: 7603         	strb	r3, [r0, #24]
     736: 054a         	lsls	r2, r1, #21
     738: 0308         	lsls	r0, r1, #12
     73a: 7fba         	ldrb	r2, [r7, #30]
     73c: 049e         	lsls	r6, r3, #18
     73e: 0503         	lsls	r3, r0, #20
     740: 030d         	lsls	r5, r1, #12
     742: 08cf         	lsrs	r7, r1, #3
     744: 044a         	lsls	r2, r1, #17
     746: 0502         	lsls	r2, r0, #20
     748: 0321         	lsls	r1, r4, #12
     74a: 77b4         	strb	r4, [r6, #30]
     74c: 042e         	lsls	r6, r5, #16
     74e: 0504         	lsls	r4, r0, #20
     750: 0312         	lsls	r2, r2, #12
     752: 0381         	lsls	r1, r0, #14
     754: 044a         	lsls	r2, r1, #17
     756: 0502         	lsls	r2, r0, #20
     758: 030f         	lsls	r7, r1, #12
     75a: 7cb8         	ldrb	r0, [r7, #18]
     75c: 064a         	lsls	r2, r1, #25
     75e: 6003         	str	r3, [r0]
     760: 052e         	lsls	r6, r5, #20
     762: 0615         	lsls	r5, r2, #24
     764: 2103         	movs	r1, #3
     766: 054a         	lsls	r2, r1, #21
     768: 060d         	lsls	r5, r1, #24
     76a: 052e         	lsls	r6, r5, #20
     76c: 060f         	lsls	r7, r1, #24
     76e: 0549         	lsls	r1, r1, #21
     770: 4b15         	ldr	r3, [pc, #84]           @ 0x7c8 <.debug_str+0x7c8>
     772: 0d05         	lsrs	r5, r0, #20
     774: 2e06         	cmp	r6, #6
     776: 0f05         	lsrs	r5, r0, #28
     778: 4906         	ldr	r1, [pc, #24]           @ 0x794 <.debug_str+0x794>
     77a: 1505         	asrs	r5, r0, #20
     77c: 052f         	lsls	r7, r5, #20
     77e: 060d         	lsls	r5, r1, #24
     780: 054a         	lsls	r2, r1, #21
     782: 060f         	lsls	r7, r1, #24
     784: 0549         	lsls	r1, r1, #21
     786: 4b15         	ldr	r3, [pc, #84]           @ 0x7dc <.debug_str+0x7dc>
     788: 0504         	lsls	r4, r0, #20
     78a: 1205         	asrs	r5, r0, #8
     78c: b903         	cbnz	r3, 0x790 <.debug_str+0x790> @ imm = #0
     78e: 2e03         	cmp	r6, #3
     790: 0204         	lsls	r4, r0, #8
     792: 0d05         	lsrs	r5, r0, #20
     794: c703         	stm	r7!, {r0, r1}
     796: 2e7c         	cmp	r6, #124
     798: 0f05         	lsrs	r5, r0, #28
     79a: 0549         	lsls	r1, r1, #21
     79c: 0309         	lsls	r1, r1, #12
     79e: 00cb         	lsls	r3, r1, #3
     7a0: 044a         	lsls	r2, r1, #17
     7a2: 0505         	lsls	r5, r0, #20
     7a4: 0312         	lsls	r2, r2, #12
     7a6: 02ef         	lsls	r7, r5, #11
     7a8: 044a         	lsls	r2, r1, #17
     7aa: 0502         	lsls	r2, r0, #20
     7ac: 0317         	lsls	r7, r2, #12
     7ae: 7d93         	ldrb	r3, [r2, #22]
     7b0: 054a         	lsls	r2, r1, #21
     7b2: 4b20         	ldr	r3, [pc, #128]          @ 0x834 <.debug_str+0x834>
     7b4: 0005         	movs	r5, r0
     7b6: 0306         	lsls	r6, r0, #12
     7b8: 7f92         	ldrb	r2, [r2, #30]
     7ba: 054a         	lsls	r2, r1, #21
     7bc: 060c         	lsls	r4, r1, #24
     7be: ef03 4a00    	<unknown>
     7c2: 0f05         	lsrs	r5, r0, #28
     7c4: 5903         	ldr	r3, [r0, r4]
     7c6: 052e         	lsls	r6, r5, #20
     7c8: 0600         	lsls	r0, r0, #24
     7ca: b803         	<unknown>
     7cc: 827f         	strh	r7, [r7, #18]
     7ce: 1f05         	subs	r5, r0, #4
     7d0: 0306         	lsls	r6, r0, #12
     7d2: 4a3f         	ldr	r2, [pc, #252]          @ 0x8d0 <.debug_str+0x8d0>
     7d4: 0f05         	lsrs	r5, r0, #28
     7d6: 0903         	lsrs	r3, r0, #4
     7d8: 0582         	lsls	r2, r0, #22
     7da: 461d         	mov	r5, r3
     7dc: 056e         	lsls	r6, r5, #21
     7de: 481c         	ldr	r0, [pc, #112]          @ 0x850 <.debug_str+0x850>
     7e0: 3205         	adds	r2, #5
     7e2: 054c         	lsls	r4, r1, #21
     7e4: 061d         	lsls	r5, r3, #24
     7e6: 054a         	lsls	r2, r1, #21
     7e8: 060d         	lsls	r5, r1, #24
     7ea: 0533         	lsls	r3, r6, #20
     7ec: 030f         	lsls	r7, r1, #12
     7ee: 4a77         	ldr	r2, [pc, #476]          @ 0x9cc <.debug_str+0x9cc>
     7f0: 1d05         	adds	r5, r0, #4
     7f2: 054e         	lsls	r6, r1, #21
     7f4: 481c         	ldr	r0, [pc, #112]          @ 0x868 <.debug_str+0x868>
     7f6: 3205         	adds	r2, #5
     7f8: 0530         	lsls	r0, r6, #20
     7fa: 061d         	lsls	r5, r3, #24
     7fc: 054a         	lsls	r2, r1, #21
     7fe: 060d         	lsls	r5, r1, #24
     800: 0533         	lsls	r3, r6, #20
     802: 030f         	lsls	r7, r1, #12
     804: 4a77         	ldr	r2, [pc, #476]          @ 0x9e4 <.debug_str+0x9e4>
     806: 1d05         	adds	r5, r0, #4
     808: 0532         	lsls	r2, r6, #20
     80a: 641c         	str	r4, [r3, #64]
     80c: 3205         	adds	r2, #5
     80e: 0530         	lsls	r0, r6, #20
     810: 061d         	lsls	r5, r3, #24
     812: 054a         	lsls	r2, r1, #21
     814: 060d         	lsls	r5, r1, #24
     816: 0533         	lsls	r3, r6, #20
     818: 030f         	lsls	r7, r1, #12
     81a: 6677         	str	r7, [r6, #100]
     81c: 1d05         	adds	r5, r0, #4
     81e: 054e         	lsls	r6, r1, #21
     820: 481c         	ldr	r0, [pc, #112]          @ 0x894 <.debug_str+0x894>
     822: 0f05         	lsrs	r5, r0, #28
     824: 052c         	lsls	r4, r5, #20
     826: 3232         	adds	r2, #50
     828: 1d05         	adds	r5, r0, #4
     82a: 4a06         	ldr	r2, [pc, #24]           @ 0x844 <.debug_str+0x844>
     82c: 0d05         	lsrs	r5, r0, #20
     82e: 3306         	adds	r3, #6
     830: 0f05         	lsrs	r5, r0, #28
     832: 7703         	strb	r3, [r0, #28]
     834: 064a         	lsls	r2, r1, #25
     836: b803         	<unknown>
     838: 667f         	str	r7, [r7, #100]
     83a: 0306         	lsls	r6, r0, #12
     83c: 8220         	strh	r0, [r4, #16]
     83e: ef03 6600    	<unknown>
     842: 0905         	lsrs	r5, r0, #4
     844: cc03         	ldm	r4!, {r0, r1}
     846: 6600         	str	r0, [r0, #96]
     848: 0f05         	lsrs	r5, r0, #28
     84a: a703         	adr	r7, #12 <.debug_str+0x851>
     84c: 827f         	strh	r7, [r7, #18]
     84e: 0306         	lsls	r6, r0, #12
     850: 7efe         	ldrb	r6, [r7, #27]
     852: 032e         	lsls	r6, r5, #12
     854: 0182         	lsls	r2, r0, #6
     856: 0582         	lsls	r2, r0, #22
     858: 0615         	lsls	r5, r2, #24
     85a: 054d         	lsls	r5, r1, #21
     85c: 060d         	lsls	r5, r1, #24
     85e: 052e         	lsls	r6, r5, #20
     860: 060f         	lsls	r7, r1, #24
     862: 0563         	lsls	r3, r4, #21
     864: 4d15         	ldr	r5, [pc, #84]           @ 0x8bc <.debug_str+0x8bc>
     866: 0f05         	lsrs	r5, r0, #28
     868: 052b         	lsls	r3, r5, #20
     86a: 310d         	adds	r1, #13
     86c: 1505         	asrs	r5, r0, #20
     86e: 2e06         	cmp	r6, #6
     870: 0d05         	lsrs	r5, r0, #20
     872: 0566         	lsls	r6, r4, #21
     874: 060f         	lsls	r7, r1, #24
     876: 0563         	lsls	r3, r4, #21
     878: 4d15         	ldr	r5, [pc, #84]           @ 0x8d0 <.debug_str+0x8d0>
     87a: 0f05         	lsrs	r5, r0, #28
     87c: 0547         	lsls	r7, r0, #21
     87e: 310d         	adds	r1, #13
     880: 0f05         	lsrs	r5, r0, #28
     882: 0347         	lsls	r7, r0, #13
     884: 7fab         	ldrb	r3, [r5, #30]
     886: 069e         	lsls	r6, r3, #26
     888: 5303         	strh	r3, [r0, r4]
     88a: 0566         	lsls	r6, r4, #21
     88c: 061b         	lsls	r3, r3, #24
     88e: 2e03         	cmp	r6, #3
     890: 052e         	lsls	r6, r5, #20
     892: 060d         	lsls	r5, r1, #24
     894: 052e         	lsls	r6, r5, #20
     896: 060f         	lsls	r7, r1, #24
     898: 0549         	lsls	r1, r1, #21
     89a: 4b1b         	ldr	r3, [pc, #108]          @ 0x908 <.debug_str+0x908>
     89c: 0d05         	lsrs	r5, r0, #20
     89e: 2e06         	cmp	r6, #6
     8a0: 0f05         	lsrs	r5, r0, #28
     8a2: 4906         	ldr	r1, [pc, #24]           @ 0x8bc <.debug_str+0x8bc>
     8a4: 1b05         	subs	r5, r0, r4
     8a6: 052f         	lsls	r7, r5, #20
     8a8: 060d         	lsls	r5, r1, #24
     8aa: 054a         	lsls	r2, r1, #21
     8ac: 060f         	lsls	r7, r1, #24
     8ae: 0549         	lsls	r1, r1, #21
     8b0: 4b1b         	ldr	r3, [pc, #108]          @ 0x920 <.debug_str+0x920>
     8b2: 0f05         	lsrs	r5, r0, #28
     8b4: 052d         	lsls	r5, r5, #20
     8b6: 2f0d         	cmp	r7, #13
     8b8: 0f05         	lsrs	r5, r0, #28
     8ba: 0449         	lsls	r1, r1, #17
     8bc: 0505         	lsls	r5, r0, #20
     8be: 0312         	lsls	r2, r2, #12
     8c0: 03ad         	lsls	r5, r5, #14
     8c2: 044a         	lsls	r2, r1, #17
     8c4: 0502         	lsls	r2, r0, #20
     8c6: 0309         	lsls	r1, r1, #12
     8c8: 7d9c         	ldrb	r4, [r3, #22]
     8ca: 054a         	lsls	r2, r1, #21
     8cc: 030f         	lsls	r7, r1, #12
     8ce: 7faa         	ldrb	r2, [r5, #30]
     8d0: 064a         	lsls	r2, r1, #25
     8d2: 6003         	str	r3, [r0]
     8d4: 052e         	lsls	r6, r5, #20
     8d6: 0615         	lsls	r5, r2, #24
     8d8: 2103         	movs	r1, #3
     8da: 052e         	lsls	r6, r5, #20
     8dc: 060d         	lsls	r5, r1, #24
     8de: 052e         	lsls	r6, r5, #20
     8e0: 060f         	lsls	r7, r1, #24
     8e2: 0549         	lsls	r1, r1, #21
     8e4: 4b15         	ldr	r3, [pc, #84]           @ 0x93c <.debug_str+0x93c>
     8e6: 0d05         	lsrs	r5, r0, #20
     8e8: 2e06         	cmp	r6, #6
     8ea: 0f05         	lsrs	r5, r0, #28
     8ec: 4906         	ldr	r1, [pc, #24]           @ 0x908 <.debug_str+0x908>
     8ee: 1505         	asrs	r5, r0, #20
     8f0: 052f         	lsls	r7, r5, #20
     8f2: 060d         	lsls	r5, r1, #24
     8f4: 054a         	lsls	r2, r1, #21
     8f6: 060f         	lsls	r7, r1, #24
     8f8: 0549         	lsls	r1, r1, #21
     8fa: 4b15         	ldr	r3, [pc, #84]           @ 0x950 <.debug_str+0x950>
     8fc: 0504         	lsls	r4, r0, #20
     8fe: 1205         	asrs	r5, r0, #8
     900: b903         	cbnz	r3, 0x904 <.debug_str+0x904> @ imm = #0
     902: 2e03         	cmp	r6, #3
     904: 0204         	lsls	r4, r0, #8
     906: 0d05         	lsrs	r5, r0, #20
     908: c703         	stm	r7!, {r0, r1}
     90a: 2e7c         	cmp	r6, #124
     90c: 0f05         	lsrs	r5, r0, #28
     90e: 0449         	lsls	r1, r1, #17
     910: 0501         	lsls	r1, r0, #20
     912: 030a         	lsls	r2, r1, #12
     914: 028b         	lsls	r3, r1, #10
     916: 044a         	lsls	r2, r1, #17
     918: 0502         	lsls	r2, r0, #20
     91a: 030f         	lsls	r7, r1, #12
     91c: 7ee4         	ldrb	r4, [r4, #27]
     91e: 0582         	lsls	r2, r0, #22
     920: 851b         	strh	r3, [r3, #40]
     922: 0404         	lsls	r4, r0, #16
     924: 1205         	asrs	r5, r0, #8
     926: d603         	bvs	0x930 <.debug_str+0x930> @ imm = #6
     928: 4a02         	ldr	r2, [pc, #8]            @ 0x934 <.debug_str+0x934>
     92a: 0204         	lsls	r4, r0, #8
     92c: 0f05         	lsrs	r5, r0, #28
     92e: a703         	adr	r7, #12 <.debug_str+0x935>
     930: 827d         	strh	r5, [r7, #18]
     932: 1b05         	subs	r5, r0, r4
     934: 0531         	lsls	r1, r6, #20
     936: 060d         	lsls	r5, r1, #24
     938: 052e         	lsls	r6, r5, #20
     93a: 060f         	lsls	r7, r1, #24
     93c: 0547         	lsls	r7, r0, #21
     93e: 311b         	adds	r1, #27
     940: 0d05         	lsrs	r5, r0, #20
     942: 2e06         	cmp	r6, #6
     944: 0404         	lsls	r4, r0, #16
     946: 1205         	asrs	r5, r0, #8
     948: 0306         	lsls	r6, r0, #12
     94a: 02d6         	lsls	r6, r2, #11
     94c: 044a         	lsls	r2, r1, #17
     94e: 0502         	lsls	r2, r0, #20
     950: 030f         	lsls	r7, r1, #12
     952: 7da7         	ldrb	r7, [r4, #22]
     954: 052e         	lsls	r6, r5, #20
     956: 311b         	adds	r1, #27
     958: 0d05         	lsrs	r5, r0, #20
     95a: 4a06         	ldr	r2, [pc, #24]           @ 0x974 <.debug_str+0x974>
     95c: 0404         	lsls	r4, r0, #16
     95e: 1205         	asrs	r5, r0, #8
     960: 0306         	lsls	r6, r0, #12
     962: 02d6         	lsls	r6, r2, #11
     964: 044a         	lsls	r2, r1, #17
     966: 0502         	lsls	r2, r0, #20
     968: 030f         	lsls	r7, r1, #12
     96a: 7da7         	ldrb	r7, [r4, #22]
     96c: 054a         	lsls	r2, r1, #21
     96e: 691b         	ldr	r3, [r3, #16]
     970: 0f05         	lsrs	r5, r0, #28
     972: 0547         	lsls	r7, r0, #21
     974: 690d         	ldr	r5, [r1, #16]
     976: 0f05         	lsrs	r5, r0, #28
     978: 0247         	lsls	r7, r0, #9
     97a: 000a         	movs	r2, r1
     97c: 0101         	lsls	r1, r0, #4
     97e: 0500         	lsls	r0, r0, #20
     980: 0002         	movs	r2, r0
     982: 0000         	movs	r0, r0
     984: 0300         	lsls	r0, r0, #12
     986: 02a8         	lsls	r0, r5, #10
     988: 0401         	lsls	r1, r0, #16
     98a: 0502         	lsls	r2, r0, #20
     98c: 0a08         	lsrs	r0, r1, #8
     98e: 5403         	strb	r3, [r0, r0]
     990: 044a         	lsls	r2, r1, #17
     992: 0503         	lsls	r3, r0, #20
     994: 030d         	lsls	r5, r1, #12
     996: 07b6         	lsls	r6, r6, #30
     998: 044a         	lsls	r2, r1, #17
     99a: 0502         	lsls	r2, r0, #20
     99c: 031c         	lsls	r4, r3, #12
     99e: 78cd         	ldrb	r5, [r1, #3]
     9a0: 042e         	lsls	r6, r5, #16
     9a2: 0504         	lsls	r4, r0, #20
     9a4: 0312         	lsls	r2, r2, #12
     9a6: 01e8         	lsls	r0, r5, #7
     9a8: 044a         	lsls	r2, r1, #17
     9aa: 0502         	lsls	r2, r0, #20
     9ac: 030f         	lsls	r7, r1, #12
     9ae: 7dfd         	ldrb	r5, [r7, #23]
     9b0: 064a         	lsls	r2, r1, #25
     9b2: 9b03         	ldr	r3, [sp, #12]
     9b4: 2e7e         	cmp	r6, #126
     9b6: 0d05         	lsrs	r5, r0, #20
     9b8: 0306         	lsls	r6, r0, #12
     9ba: 01e6         	lsls	r6, r4, #7
     9bc: 052e         	lsls	r6, r5, #20
     9be: 490f         	ldr	r1, [pc, #60]           @ 0x9fc <.debug_str+0x9fc>
     9c0: 0d05         	lsrs	r5, r0, #20
     9c2: 052f         	lsls	r7, r5, #20
     9c4: 650f         	str	r7, [r1, #80]
     9c6: 0d05         	lsrs	r5, r0, #20
     9c8: 052f         	lsls	r7, r5, #20
     9ca: 490f         	ldr	r1, [pc, #60]           @ 0xa08 <.debug_str+0xa08>
     9cc: 0d05         	lsrs	r5, r0, #20
     9ce: 054b         	lsls	r3, r1, #21
     9d0: 490f         	ldr	r1, [pc, #60]           @ 0xa10 <.debug_str+0xa10>
     9d2: 0905         	lsrs	r5, r0, #4
     9d4: 1e03         	subs	r3, r0, #0
     9d6: 054a         	lsls	r2, r1, #21
     9d8: 4c17         	ldr	r4, [pc, #92]           @ 0xa38 <.debug_str+0xa38>
     9da: 0404         	lsls	r4, r0, #16
     9dc: 1205         	asrs	r5, r0, #8
     9de: e303         	b	0xfe8 <.debug_str+0xfe8> @ imm = #1542
     9e0: 4a01         	ldr	r2, [pc, #4]            @ 0x9e8 <.debug_str+0x9e8>
     9e2: 0204         	lsls	r4, r0, #8
     9e4: 0f05         	lsrs	r5, r0, #28
     9e6: 8f03         	ldrh	r3, [r0, #56]
     9e8: 4a7e         	ldr	r2, [pc, #504]          @ 0xbe4 <.debug_str+0xbe4>
     9ea: 0306         	lsls	r6, r0, #12
     9ec: 7e89         	ldrb	r1, [r1, #26]
     9ee: 054a         	lsls	r2, r1, #21
     9f0: 060d         	lsls	r5, r1, #24
     9f2: f803 8201    	<unknown>
     9f6: 0f05         	lsrs	r5, r0, #28
     9f8: 0549         	lsls	r1, r1, #21
     9fa: 4b0d         	ldr	r3, [pc, #52]           @ 0xa30 <.debug_str+0xa30>
     9fc: 0f05         	lsrs	r5, r0, #28
     9fe: 0549         	lsls	r1, r1, #21
     a00: 2f0d         	cmp	r7, #13
     a02: 0f05         	lsrs	r5, r0, #28
     a04: 0565         	lsls	r5, r4, #21
     a06: 4b0d         	ldr	r3, [pc, #52]           @ 0xa3c <.debug_str+0xa3c>
     a08: 0f05         	lsrs	r5, r0, #28
     a0a: 0549         	lsls	r1, r1, #21
     a0c: 0309         	lsls	r1, r1, #12
     a0e: 4a11         	ldr	r2, [pc, #68]           @ 0xa54 <.debug_str+0xa54>
     a10: 0f05         	lsrs	r5, r0, #28
     a12: 5d03         	ldrb	r3, [r0, r4]
     a14: 064a         	lsls	r2, r1, #25
     a16: 9b03         	ldr	r3, [sp, #12]
     a18: 4a7e         	ldr	r2, [pc, #504]          @ 0xc14 <.debug_str+0xc14>
     a1a: e503         	b	0x424 <.debug_str+0x424> @ imm = #-1530
     a1c: 2e01         	cmp	r6, #1
     a1e: 9b03         	ldr	r3, [sp, #12]
     a20: 2e7e         	cmp	r6, #126
     a22: 0d05         	lsrs	r5, r0, #20
     a24: 0306         	lsls	r6, r0, #12
     a26: 01e6         	lsls	r6, r4, #7
     a28: 052e         	lsls	r6, r5, #20
     a2a: 490f         	ldr	r1, [pc, #60]           @ 0xa68 <.debug_str+0xa68>
     a2c: 0d05         	lsrs	r5, r0, #20
     a2e: 054b         	lsls	r3, r1, #21
     a30: 490f         	ldr	r1, [pc, #60]           @ 0xa70 <.debug_str+0xa70>
     a32: 0d05         	lsrs	r5, r0, #20
     a34: 052f         	lsls	r7, r5, #20
     a36: 650f         	str	r7, [r1, #80]
     a38: 0d05         	lsrs	r5, r0, #20
     a3a: 054b         	lsls	r3, r1, #21
     a3c: 490f         	ldr	r1, [pc, #60]           @ 0xa7c <.debug_str+0xa7c>
     a3e: 0104         	lsls	r4, r0, #4
     a40: 0a05         	lsrs	r5, r0, #8
     a42: c603         	stm	r6!, {r0, r1}
     a44: 4a00         	ldr	r2, [pc, #0]            @ 0xa48 <.debug_str+0xa48>
     a46: 0202         	lsls	r2, r0, #8
     a48: 0100         	lsls	r0, r0, #4
     a4a: 0001         	movs	r1, r0
     a4c: 0205         	lsls	r5, r0, #8
     a4e: 0000         	movs	r0, r0
     a50: 0000         	movs	r0, r0
     a52: a803         	add	r0, sp, #12
     a54: 0102         	lsls	r2, r0, #4
     a56: 0204         	lsls	r4, r0, #8
     a58: 0b05         	lsrs	r5, r0, #12
     a5a: 030a         	lsls	r2, r1, #12
     a5c: 8267         	strh	r7, [r4, #18]
     a5e: 0c05         	lsrs	r5, r0, #16
     a60: 0531         	lsls	r1, r6, #20
     a62: 9d11         	ldr	r5, [sp, #68]
     a64: 052d         	lsls	r5, r5, #20
     a66: 300c         	adds	r0, #12
     a68: 0b05         	lsrs	r5, r0, #12
     a6a: 0547         	lsls	r7, r0, #21
     a6c: 4c11         	ldr	r4, [pc, #68]           @ 0xab4 <.debug_str+0xab4>
     a6e: 4b49         	ldr	r3, [pc, #292]          @ 0xb94 <.debug_str+0xb94>
     a70: 0549         	lsls	r1, r1, #21
     a72: 4c0c         	ldr	r4, [pc, #48]           @ 0xaa4 <.debug_str+0xaa4>
     a74: 0b05         	lsrs	r5, r0, #12
     a76: 0547         	lsls	r7, r0, #21
     a78: 8411         	strh	r1, [r2, #32]
     a7a: 0549         	lsls	r1, r1, #21
     a7c: 4c0c         	ldr	r4, [pc, #48]           @ 0xab0 <.debug_str+0xab0>
     a7e: 0b05         	lsrs	r5, r0, #12
     a80: 0547         	lsls	r7, r0, #21
     a82: 4c11         	ldr	r4, [pc, #68]           @ 0xac8 <.debug_str+0xac8>
     a84: 0549         	lsls	r1, r1, #21
     a86: 4c0c         	ldr	r4, [pc, #48]           @ 0xab8 <.debug_str+0xab8>
     a88: 0905         	lsrs	r5, r0, #4
     a8a: 054d         	lsls	r5, r1, #21
     a8c: 030b         	lsls	r3, r1, #12
     a8e: 2e7a         	cmp	r6, #122
     a90: 0306         	lsls	r6, r0, #12
     a92: 7df0         	ldrb	r0, [r6, #23]
     a94: 044a         	lsls	r2, r1, #17
     a96: 0501         	lsls	r1, r0, #20
     a98: 060a         	lsls	r2, r1, #24
     a9a: ab03         	add	r3, sp, #12
     a9c: 2e02         	cmp	r6, #2
     a9e: 0204         	lsls	r4, r0, #8
     aa0: 1405         	asrs	r5, r0, #16
     aa2: 6903         	ldr	r3, [r0, #16]
     aa4: 0466         	lsls	r6, r4, #17
     aa6: 0501         	lsls	r1, r0, #20
     aa8: 030a         	lsls	r2, r1, #12
     aaa: 2e17         	cmp	r6, #23
     aac: 0602         	lsls	r2, r0, #24
     aae: 0100         	lsls	r0, r0, #4
     ab0: 0001         	movs	r1, r0
     ab2: 0205         	lsls	r5, r0, #8
     ab4: 0000         	movs	r0, r0
     ab6: 0000         	movs	r0, r0
     ab8: a803         	add	r0, sp, #12
     aba: 0102         	lsls	r2, r0, #4
     abc: 0604         	lsls	r4, r0, #24
     abe: 0905         	lsrs	r5, r0, #4
     ac0: 030a         	lsls	r2, r1, #12
     ac2: 7e93         	ldrb	r3, [r2, #26]
     ac4: 0201         	lsls	r1, r0, #8
     ac6: 0004         	movs	r4, r0
     ac8: 0101         	lsls	r1, r0, #4
     aca: 0500         	lsls	r0, r0, #20
     acc: 0002         	movs	r2, r0
     ace: 0000         	movs	r0, r0
     ad0: 0300         	lsls	r0, r0, #12
     ad2: 02a8         	lsls	r0, r5, #10
     ad4: 0401         	lsls	r1, r0, #16
     ad6: 0506         	lsls	r6, r0, #20
     ad8: 0a0f         	lsrs	r7, r1, #8
     ada: 9b03         	ldr	r3, [sp, #12]
     adc: 2e7e         	cmp	r6, #126
     ade: 0104         	lsls	r4, r0, #4
     ae0: 0a05         	lsrs	r5, r0, #8
     ae2: e703         	b	0x8ec <.debug_str+0x8ec> @ imm = #-506
     ae4: 8201         	strh	r1, [r0, #16]
     ae6: 0306         	lsls	r6, r0, #12
     ae8: 7dd5         	ldrb	r5, [r2, #23]
     aea: 042e         	lsls	r6, r5, #16
     aec: 0506         	lsls	r6, r0, #20
     aee: 060f         	lsls	r7, r1, #24
     af0: c403         	stm	r4!, {r0, r1}
     af2: 2e00         	cmp	r6, #0
     af4: 0104         	lsls	r4, r0, #4
     af6: 0a05         	lsrs	r5, r0, #8
     af8: e703         	b	0x902 <.debug_str+0x902> @ imm = #-506
     afa: 8201         	strh	r1, [r0, #16]
     afc: 0604         	lsls	r4, r0, #24
     afe: 0f05         	lsrs	r5, r0, #28
     b00: 9903         	ldr	r1, [sp, #12]
     b02: 667e         	str	r6, [r7, #100]
     b04: 0104         	lsls	r4, r0, #4
     b06: 0a05         	lsrs	r5, r0, #8
     b08: e703         	b	0x912 <.debug_str+0x912> @ imm = #-506
     b0a: 4a01         	ldr	r2, [pc, #4]            @ 0xb10 <.debug_str+0xb10>
     b0c: 0604         	lsls	r4, r0, #24
     b0e: 0f05         	lsrs	r5, r0, #28
     b10: 9903         	ldr	r1, [sp, #12]
     b12: 4a7e         	ldr	r2, [pc, #504]          @ 0xd0c <.debug_str+0xd0c>
     b14: 0104         	lsls	r4, r0, #4
     b16: 0a05         	lsrs	r5, r0, #8
     b18: e703         	b	0x922 <.debug_str+0x922> @ imm = #-506
     b1a: 4a01         	ldr	r2, [pc, #4]            @ 0xb20 <.debug_str+0xb20>
     b1c: 0604         	lsls	r4, r0, #24
     b1e: 0f05         	lsrs	r5, r0, #28
     b20: 9903         	ldr	r1, [sp, #12]
     b22: 667e         	str	r6, [r7, #100]
     b24: 0104         	lsls	r4, r0, #4
     b26: 0a05         	lsrs	r5, r0, #8
     b28: e703         	b	0x932 <.debug_str+0x932> @ imm = #-506
     b2a: 8201         	strh	r1, [r0, #16]
     b2c: 0402         	lsls	r2, r0, #16
     b2e: 0100         	lsls	r0, r0, #4
     b30: 0001         	movs	r1, r0
     b32: 0205         	lsls	r5, r0, #8
     b34: 0000         	movs	r0, r0
     b36: 0000         	movs	r0, r0
     b38: 9b03         	ldr	r3, [sp, #12]
     b3a: 0103         	lsls	r3, r0, #4
     b3c: 0604         	lsls	r4, r0, #24
     b3e: 0f05         	lsrs	r5, r0, #28
     b40: 030a         	lsls	r2, r1, #12
     b42: 7db6         	ldrb	r6, [r6, #22]
     b44: 0682         	lsls	r2, r0, #26
     b46: ae03         	add	r6, sp, #12
     b48: ba7f         	rev16	r7, r7
     b4a: d203         	bhs	0xb54 <.debug_str+0xb54> @ imm = #6
     b4c: 2e00         	cmp	r6, #0
     b4e: 0104         	lsls	r4, r0, #4
     b50: 0a05         	lsrs	r5, r0, #8
     b52: 0306         	lsls	r6, r0, #12
     b54: 02cc         	lsls	r4, r1, #11
     b56: 0466         	lsls	r6, r4, #17
     b58: 0506         	lsls	r6, r0, #20
     b5a: 030f         	lsls	r7, r1, #12
     b5c: 7db4         	ldrb	r4, [r6, #22]
     b5e: 0566         	lsls	r6, r4, #21
     b60: 0831         	lsrs	r1, r6, #32
     b62: 0421         	lsls	r1, r4, #16
     b64: 0505         	lsls	r5, r0, #20
     b66: 0312         	lsls	r2, r2, #12
     b68: 0387         	lsls	r7, r0, #14
     b6a: 044a         	lsls	r2, r1, #17
     b6c: 0506         	lsls	r6, r0, #20
     b6e: 030f         	lsls	r7, r1, #12
     b70: 7cf8         	ldrb	r0, [r7, #19]
     b72: 054a         	lsls	r2, r1, #21
     b74: 2f31         	cmp	r7, #49
     b76: 0d05         	lsrs	r5, r0, #20
     b78: 2e06         	cmp	r6, #6
     b7a: 3105         	adds	r1, #5
     b7c: 052e         	lsls	r6, r5, #20
     b7e: 2e0d         	cmp	r6, #13
     b80: 3105         	adds	r1, #5
     b82: 052e         	lsls	r6, r5, #20
     b84: 2e0d         	cmp	r6, #13
     b86: 3105         	adds	r1, #5
     b88: 052e         	lsls	r6, r5, #20
     b8a: 2e0d         	cmp	r6, #13
     b8c: 0f05         	lsrs	r5, r0, #28
     b8e: 2d06         	cmp	r5, #6
     b90: 3105         	adds	r1, #5
     b92: 05d7         	lsls	r7, r2, #23
     b94: 2d0f         	cmp	r5, #15
     b96: 0d05         	lsrs	r5, r0, #20
     b98: 054b         	lsls	r3, r1, #21
     b9a: 2d0f         	cmp	r5, #15
     b9c: 0d05         	lsrs	r5, r0, #20
     b9e: 0530         	lsls	r0, r6, #20
     ba0: 2c0f         	cmp	r4, #15
     ba2: 3105         	adds	r1, #5
     ba4: 054b         	lsls	r3, r1, #21
     ba6: 060d         	lsls	r5, r1, #24
     ba8: 052e         	lsls	r6, r5, #20
     baa: 060f         	lsls	r7, r1, #24
     bac: 052d         	lsls	r5, r5, #20
     bae: 300d         	adds	r0, #13
     bb0: 3105         	adds	r1, #5
     bb2: 052d         	lsls	r5, r5, #20
     bb4: 060d         	lsls	r5, r1, #24
     bb6: 042e         	lsls	r6, r5, #16
     bb8: 0501         	lsls	r1, r0, #20
     bba: 060a         	lsls	r2, r1, #24
     bbc: cb03         	ldm	r3!, {r0, r1}
     bbe: 2e02         	cmp	r6, #2
     bc0: 0602         	lsls	r2, r0, #24
     bc2: 0100         	lsls	r0, r0, #4
     bc4: 0001         	movs	r1, r0
     bc6: 0205         	lsls	r5, r0, #8
     bc8: 0000         	movs	r0, r0
     bca: 0000         	movs	r0, r0
     bcc: 9b03         	ldr	r3, [sp, #12]
     bce: 0103         	lsls	r3, r0, #4
     bd0: 0604         	lsls	r4, r0, #24
     bd2: 0f05         	lsrs	r5, r0, #28
     bd4: 030a         	lsls	r2, r1, #12
     bd6: 7db6         	ldrb	r6, [r6, #22]
     bd8: 0582         	lsls	r2, r0, #22
     bda: 4811         	ldr	r0, [pc, #68]           @ 0xc20 <.debug_str+0xc20>
     bdc: 0f05         	lsrs	r5, r0, #28
     bde: 0668         	lsls	r0, r5, #25
     be0: ae03         	add	r6, sp, #12
     be2: 087f         	lsrs	r7, r7, #1
     be4: 0320         	lsls	r0, r4, #12
     be6: 00d2         	lsls	r2, r2, #3
     be8: 054a         	lsls	r2, r1, #21
     bea: 0631         	lsls	r1, r6, #24
     bec: 049f         	lsls	r7, r3, #18
     bee: 0505         	lsls	r5, r0, #20
     bf0: 0312         	lsls	r2, r2, #12
     bf2: 0387         	lsls	r7, r0, #14
     bf4: 044a         	lsls	r2, r1, #17
     bf6: 0506         	lsls	r6, r0, #20
     bf8: 0331         	lsls	r1, r6, #12
     bfa: 7cf9         	ldrb	r1, [r7, #19]
     bfc: 054a         	lsls	r2, r1, #21
     bfe: 490f         	ldr	r1, [pc, #60]           @ 0xc3c <.debug_str+0xc3c>
     c00: 3105         	adds	r1, #5
     c02: 052f         	lsls	r7, r5, #20
     c04: 060d         	lsls	r5, r1, #24
     c06: 044a         	lsls	r2, r1, #17
     c08: 0505         	lsls	r5, r0, #20
     c0a: 0612         	lsls	r2, r2, #24
     c0c: 8703         	strh	r3, [r0, #56]
     c0e: 4a03         	ldr	r2, [pc, #12]           @ 0xc1c <.debug_str+0xc1c>
     c10: 0604         	lsls	r4, r0, #24
     c12: 3105         	adds	r1, #5
     c14: f903 4a7c    	<unknown>
     c18: 0d05         	lsrs	r5, r0, #20
     c1a: 2d2f         	cmp	r5, #47
     c1c: 0f05         	lsrs	r5, r0, #28
     c1e: 052d         	lsls	r5, r5, #20
     c20: 2f31         	cmp	r7, #49
     c22: 0d05         	lsrs	r5, r0, #20
     c24: 2e06         	cmp	r6, #6
     c26: 3105         	adds	r1, #5
     c28: 052e         	lsls	r6, r5, #20
     c2a: 4a0d         	ldr	r2, [pc, #52]           @ 0xc60 <.debug_str+0xc60>
     c2c: 0f05         	lsrs	r5, r0, #28
     c2e: 4906         	ldr	r1, [pc, #24]           @ 0xc48 <.debug_str+0xc48>
     c30: 3105         	adds	r1, #5
     c32: 0583         	lsls	r3, r0, #22
     c34: 490f         	ldr	r1, [pc, #60]           @ 0xc74 <.debug_str+0xc74>
     c36: 0d05         	lsrs	r5, r0, #20
     c38: 054b         	lsls	r3, r1, #21
     c3a: 490f         	ldr	r1, [pc, #60]           @ 0xc78 <.debug_str+0xc78>
     c3c: 0404         	lsls	r4, r0, #16
     c3e: 1205         	asrs	r5, r0, #8
     c40: 9603         	str	r6, [sp, #12]
     c42: 2e03         	cmp	r6, #3
     c44: 0604         	lsls	r4, r0, #24
     c46: 0f05         	lsrs	r5, r0, #28
     c48: ea03 2e7c    	and.w	lr, r3, r12, ror #9
     c4c: 3105         	adds	r1, #5
     c4e: 054b         	lsls	r3, r1, #21
     c50: 060d         	lsls	r5, r1, #24
     c52: 054a         	lsls	r2, r1, #21
     c54: 060f         	lsls	r7, r1, #24
     c56: 0449         	lsls	r1, r1, #17
     c58: 0504         	lsls	r4, r0, #20
     c5a: 0312         	lsls	r2, r2, #12
     c5c: 0396         	lsls	r6, r2, #14
     c5e: 042e         	lsls	r6, r5, #16
     c60: 0506         	lsls	r6, r0, #20
     c62: 0331         	lsls	r1, r6, #12
     c64: 7ceb         	ldrb	r3, [r5, #19]
     c66: 052e         	lsls	r6, r5, #20
     c68: 060d         	lsls	r5, r1, #24
     c6a: 044a         	lsls	r2, r1, #17
     c6c: 0501         	lsls	r1, r0, #20
     c6e: 060a         	lsls	r2, r1, #24
     c70: cb03         	ldm	r3!, {r0, r1}
     c72: 4a02         	ldr	r2, [pc, #8]            @ 0xc7c <.debug_str+0xc7c>
     c74: 0602         	lsls	r2, r0, #24
     c76: 0100         	lsls	r0, r0, #4
     c78: 0001         	movs	r1, r0
     c7a: 0205         	lsls	r5, r0, #8
     c7c: 0000         	movs	r0, r0
     c7e: 0000         	movs	r0, r0
     c80: 9b03         	ldr	r3, [sp, #12]
     c82: 0103         	lsls	r3, r0, #4
     c84: 0604         	lsls	r4, r0, #24
     c86: 0f05         	lsrs	r5, r0, #28
     c88: 030a         	lsls	r2, r1, #12
     c8a: 7db6         	ldrb	r6, [r6, #22]
     c8c: 0682         	lsls	r2, r0, #26
     c8e: ae03         	add	r6, sp, #12
     c90: 2e7f         	cmp	r6, #127
     c92: 1105         	asrs	r5, r0, #4
     c94: 0306         	lsls	r6, r0, #12
     c96: 00d0         	lsls	r0, r2, #3
     c98: 052e         	lsls	r6, r5, #20
     c9a: 300f         	adds	r0, #15
     c9c: 0306         	lsls	r6, r0, #12
     c9e: 7fae         	ldrb	r6, [r5, #30]
     ca0: 03f2         	lsls	r2, r6, #15
     ca2: 00d2         	lsls	r2, r2, #3
     ca4: 042e         	lsls	r6, r5, #16
     ca6: 0501         	lsls	r1, r0, #20
     ca8: 060a         	lsls	r2, r1, #24
     caa: cc03         	ldm	r4!, {r0, r1}
     cac: 6602         	str	r2, [r0, #96]
     cae: 0604         	lsls	r4, r0, #24
     cb0: 0f05         	lsrs	r5, r0, #28
     cb2: b403         	push	{r0, r1}
     cb4: 667d         	str	r5, [r7, #100]
     cb6: 3105         	adds	r1, #5
     cb8: 3d08         	subs	r5, #8
     cba: 0f05         	lsrs	r5, r0, #28
     cbc: 0565         	lsls	r5, r4, #21
     cbe: 2f0d         	cmp	r7, #13
     cc0: 0504         	lsls	r4, r0, #20
     cc2: 1205         	asrs	r5, r0, #8
     cc4: 8703         	strh	r3, [r0, #56]
     cc6: 2e03         	cmp	r6, #3
     cc8: 0604         	lsls	r4, r0, #24
     cca: 0f05         	lsrs	r5, r0, #28
     ccc: f803 2e7c    	strbt	r2, [r3, #124]
     cd0: 3105         	adds	r1, #5
     cd2: 052f         	lsls	r7, r5, #20
     cd4: 060d         	lsls	r5, r1, #24
     cd6: 054a         	lsls	r2, r1, #21
     cd8: 4a31         	ldr	r2, [pc, #196]          @ 0xda0 <.debug_str+0xda0>
     cda: 0d05         	lsrs	r5, r0, #20
     cdc: 0482         	lsls	r2, r0, #18
     cde: 0505         	lsls	r5, r0, #20
     ce0: 0612         	lsls	r2, r2, #24
     ce2: 8703         	strh	r3, [r0, #56]
     ce4: 2e03         	cmp	r6, #3
     ce6: 0604         	lsls	r4, r0, #24
     ce8: 0f05         	lsrs	r5, r0, #28
     cea: f803 4a7c    	<unknown>
     cee: 3105         	adds	r1, #5
     cf0: 054b         	lsls	r3, r1, #21
     cf2: 060d         	lsls	r5, r1, #24
     cf4: 052e         	lsls	r6, r5, #20
     cf6: 060f         	lsls	r7, r1, #24
     cf8: 052d         	lsls	r5, r5, #20
     cfa: 9f31         	ldr	r7, [sp, #196]
     cfc: 0f05         	lsrs	r5, r0, #28
     cfe: 0549         	lsls	r1, r1, #21
     d00: 4b0d         	ldr	r3, [pc, #52]           @ 0xd38 <.debug_str+0xd38>
     d02: 0f05         	lsrs	r5, r0, #28
     d04: 0449         	lsls	r1, r1, #17
     d06: 0504         	lsls	r4, r0, #20
     d08: 0312         	lsls	r2, r2, #12
     d0a: 0396         	lsls	r6, r2, #14
     d0c: 042e         	lsls	r6, r5, #16
     d0e: 0506         	lsls	r6, r0, #20
     d10: 030f         	lsls	r7, r1, #12
     d12: 7cea         	ldrb	r2, [r5, #19]
     d14: 052e         	lsls	r6, r5, #20
     d16: 4b31         	ldr	r3, [pc, #196]          @ 0xddc <.debug_str+0xddc>
     d18: 0d05         	lsrs	r5, r0, #20
     d1a: 4a06         	ldr	r2, [pc, #24]           @ 0xd34 <.debug_str+0xd34>
     d1c: 0f05         	lsrs	r5, r0, #28
     d1e: 4906         	ldr	r1, [pc, #24]           @ 0xd38 <.debug_str+0xd38>
     d20: 0404         	lsls	r4, r0, #16
     d22: 1205         	asrs	r5, r0, #8
     d24: 9603         	str	r6, [sp, #12]
     d26: 2e03         	cmp	r6, #3
     d28: 0604         	lsls	r4, r0, #24
     d2a: 3105         	adds	r1, #5
     d2c: eb03 2e7c    	add.w	lr, r3, r12, ror #9
     d30: 0d05         	lsrs	r5, r0, #20
     d32: 4a06         	ldr	r2, [pc, #24]           @ 0xd4c <.debug_str+0xd4c>
     d34: 0104         	lsls	r4, r0, #4
     d36: 0a05         	lsrs	r5, r0, #8
     d38: 0306         	lsls	r6, r0, #12
     d3a: 02cb         	lsls	r3, r1, #11
     d3c: 024a         	lsls	r2, r1, #9
     d3e: 0006         	movs	r6, r0
     d40: 0101         	lsls	r1, r0, #4
     d42: 0500         	lsls	r0, r0, #20
     d44: 0002         	movs	r2, r0
     d46: 0000         	movs	r0, r0
     d48: 0300         	lsls	r0, r0, #12
     d4a: 039b         	lsls	r3, r3, #14
     d4c: 0401         	lsls	r1, r0, #16
     d4e: 0506         	lsls	r6, r0, #20
     d50: 0a0c         	lsrs	r4, r1, #8
     d52: c203         	stm	r2!, {r0, r1}
     d54: 827d         	strh	r5, [r7, #18]
     d56: 1305         	asrs	r5, r0, #12
     d58: 054d         	lsls	r5, r1, #21
     d5a: bc35         	pop	{r0, r2, r4, r5}
     d5c: 1305         	asrs	r5, r0, #12
     d5e: 0548         	lsls	r0, r1, #21
     d60: 4c11         	ldr	r4, [pc, #68]           @ 0xda8 <.debug_str+0xda8>
     d62: 1305         	asrs	r5, r0, #12
     d64: 0564         	lsls	r4, r4, #21
     d66: 2f11         	cmp	r7, #17
     d68: 1305         	asrs	r5, r0, #12
     d6a: 052d         	lsls	r5, r5, #20
     d6c: 4c35         	ldr	r4, [pc, #212]          @ 0xe44 <.debug_str+0xe44>
     d6e: 1105         	asrs	r5, r0, #4
     d70: 2e06         	cmp	r6, #6
     d72: 1305         	asrs	r5, r0, #12
     d74: 2c06         	cmp	r4, #6
     d76: 1105         	asrs	r5, r0, #4
     d78: 052f         	lsls	r7, r5, #20
     d7a: 2f35         	cmp	r7, #53
     d7c: 1105         	asrs	r5, r0, #4
     d7e: 2e06         	cmp	r6, #6
     d80: 1305         	asrs	r5, r0, #12
     d82: 4f06         	ldr	r7, [pc, #24]           @ 0xd9c <.debug_str+0xd9c>
     d84: 0306         	lsls	r6, r0, #12
     d86: 7f98         	ldrb	r0, [r3, #30]
     d88: 03ba         	lsls	r2, r7, #14
     d8a: 00e8         	lsls	r0, r5, #3
     d8c: 042e         	lsls	r6, r5, #16
     d8e: 0501         	lsls	r1, r0, #20
     d90: 060a         	lsls	r2, r1, #24
     d92: b603         	<unknown>
     d94: 6602         	str	r2, [r0, #96]
     d96: 0604         	lsls	r4, r0, #24
     d98: 1305         	asrs	r5, r0, #12
     d9a: ca03         	ldm	r2!, {r0, r1}
     d9c: 667d         	str	r5, [r7, #100]
     d9e: 3505         	adds	r5, #5
     da0: 2108         	movs	r1, #8
     da2: 0504         	lsls	r4, r0, #20
     da4: 1205         	asrs	r5, r0, #8
     da6: f103 4a02    	add.w	r10, r3, #2181038080
     daa: 0604         	lsls	r4, r0, #24
     dac: 1305         	asrs	r5, r0, #12
     dae: 8e03         	ldrh	r3, [r0, #48]
     db0: 4a7d         	ldr	r2, [pc, #500]          @ 0xfa8 <.debug_str+0xfa8>
     db2: 3505         	adds	r5, #5
     db4: 052f         	lsls	r7, r5, #20
     db6: 0611         	lsls	r1, r2, #24
     db8: 052e         	lsls	r6, r5, #20
     dba: 2e35         	cmp	r6, #53
     dbc: 1105         	asrs	r5, r0, #4
     dbe: 052e         	lsls	r6, r5, #20
     dc0: 2e35         	cmp	r6, #53
     dc2: 1105         	asrs	r5, r0, #4
     dc4: 052e         	lsls	r6, r5, #20
     dc6: 2e35         	cmp	r6, #53
     dc8: 1105         	asrs	r5, r0, #4
     dca: 052e         	lsls	r6, r5, #20
     dcc: 0613         	lsls	r3, r2, #24
     dce: 052d         	lsls	r5, r5, #20
     dd0: d735         	bvc	0xe3e <.debug_str+0xe3e> @ imm = #106
     dd2: 1305         	asrs	r5, r0, #12
     dd4: 052d         	lsls	r5, r5, #20
     dd6: 4b11         	ldr	r3, [pc, #68]           @ 0xe1c <.debug_str+0xe1c>
     dd8: 1305         	asrs	r5, r0, #12
     dda: 052d         	lsls	r5, r5, #20
     ddc: 3011         	adds	r0, #17
     dde: 1305         	asrs	r5, r0, #12
     de0: 052c         	lsls	r4, r5, #20
     de2: 4b35         	ldr	r3, [pc, #212]          @ 0xeb8 <.debug_str+0xeb8>
     de4: 1105         	asrs	r5, r0, #4
     de6: 2e06         	cmp	r6, #6
     de8: 1305         	asrs	r5, r0, #12
     dea: 2d06         	cmp	r5, #6
     dec: 1105         	asrs	r5, r0, #4
     dee: 0530         	lsls	r0, r6, #20
     df0: 2d35         	cmp	r5, #53
     df2: 1105         	asrs	r5, r0, #4
     df4: 2e06         	cmp	r6, #6
     df6: 0104         	lsls	r4, r0, #4
     df8: 0a05         	lsrs	r5, r0, #8
     dfa: 0306         	lsls	r6, r0, #12
     dfc: 02b5         	lsls	r5, r6, #10
     dfe: 062e         	lsls	r6, r5, #24
     e00: e203         	b	0x120a <.debug_str+0x120a> @ imm = #1030
     e02: 667c         	str	r4, [r7, #100]
     e04: 0604         	lsls	r4, r0, #24
     e06: 1305         	asrs	r5, r0, #12
     e08: 0306         	lsls	r6, r0, #12
     e0a: 00e1         	lsls	r1, r4, #3
     e0c: 052e         	lsls	r6, r5, #20
     e0e: bc35         	pop	{r0, r2, r4, r5}
     e10: 0504         	lsls	r4, r0, #20
     e12: 1205         	asrs	r5, r0, #8
     e14: f703 2e02    	<unknown>
     e18: 0604         	lsls	r4, r0, #24
     e1a: 3505         	adds	r5, #5
     e1c: 8903         	ldrh	r3, [r0, #8]
     e1e: 4a7d         	ldr	r2, [pc, #500]          @ 0x1014 <.debug_str+0x1014>
     e20: 1105         	asrs	r5, r0, #4
     e22: 2e06         	cmp	r6, #6
     e24: 3505         	adds	r5, #5
     e26: 052e         	lsls	r6, r5, #20
     e28: 2e11         	cmp	r6, #17
     e2a: 3505         	adds	r5, #5
     e2c: 052e         	lsls	r6, r5, #20
     e2e: 4a11         	ldr	r2, [pc, #68]           @ 0xe74 <.debug_str+0xe74>
     e30: 3505         	adds	r5, #5
     e32: 052e         	lsls	r6, r5, #20
     e34: 4a11         	ldr	r2, [pc, #68]           @ 0xe7c <.debug_str+0xe7c>
     e36: 4906         	ldr	r1, [pc, #24]           @ 0xe50 <.debug_str+0xe50>
     e38: 1305         	asrs	r5, r0, #12
     e3a: 022d         	lsls	r5, r5, #8
     e3c: 0004         	movs	r4, r0
     e3e: 0101         	lsls	r1, r0, #4
     e40: 0500         	lsls	r0, r0, #20
     e42: 0002         	movs	r2, r0
     e44: 0000         	movs	r0, r0
     e46: 0300         	lsls	r0, r0, #12
     e48: 039b         	lsls	r3, r3, #14
     e4a: 0401         	lsls	r1, r0, #16
     e4c: 0506         	lsls	r6, r0, #20
     e4e: 0a11         	lsrs	r1, r2, #8
     e50: c103         	stm	r1!, {r0, r1}
     e52: 827d         	strh	r5, [r7, #18]
     e54: 0c05         	lsrs	r5, r0, #16
     e56: 052f         	lsls	r7, r5, #20
     e58: 4d13         	ldr	r5, [pc, #76]           @ 0xea8 <.debug_str+0xea8>
     e5a: 3505         	adds	r5, #5
     e5c: 05d8         	lsls	r0, r3, #23
     e5e: 4813         	ldr	r0, [pc, #76]           @ 0xeac <.debug_str+0xeac>
     e60: 1105         	asrs	r5, r0, #4
     e62: 054c         	lsls	r4, r1, #21
     e64: 6413         	str	r3, [r2, #64]
     e66: 1105         	asrs	r5, r0, #4
     e68: 052f         	lsls	r7, r5, #20
     e6a: 2d13         	cmp	r5, #19
     e6c: 3505         	adds	r5, #5
     e6e: 054c         	lsls	r4, r1, #21
     e70: 0611         	lsls	r1, r2, #24
     e72: 054a         	lsls	r2, r1, #21
     e74: 0613         	lsls	r3, r2, #24
     e76: 0548         	lsls	r0, r1, #21
     e78: 2f11         	cmp	r7, #17
     e7a: 3505         	adds	r5, #5
     e7c: 052f         	lsls	r7, r5, #20
     e7e: 0611         	lsls	r1, r2, #24
     e80: 054a         	lsls	r2, r1, #21
     e82: 0613         	lsls	r3, r2, #24
     e84: 066b         	lsls	r3, r5, #25
     e86: 9803         	ldr	r0, [sp, #12]
     e88: 087f         	lsrs	r7, r7, #1
     e8a: 033c         	lsls	r4, r7, #12
     e8c: 00e8         	lsls	r0, r5, #3
     e8e: 054a         	lsls	r2, r1, #21
     e90: 0635         	lsls	r5, r6, #24
     e92: 049f         	lsls	r7, r3, #18
     e94: 0505         	lsls	r5, r0, #20
     e96: 0312         	lsls	r2, r2, #12
     e98: 02f1         	lsls	r1, r6, #11
     e9a: 044a         	lsls	r2, r1, #17
     e9c: 0506         	lsls	r6, r0, #20
     e9e: 0335         	lsls	r5, r6, #12
     ea0: 7d8f         	ldrb	r7, [r1, #22]
     ea2: 054a         	lsls	r2, r1, #21
     ea4: 4913         	ldr	r1, [pc, #76]           @ 0xef4 <.debug_str+0xef4>
     ea6: 3505         	adds	r5, #5
     ea8: 052f         	lsls	r7, r5, #20
     eaa: 0611         	lsls	r1, r2, #24
     eac: 044a         	lsls	r2, r1, #17
     eae: 0505         	lsls	r5, r0, #20
     eb0: 0612         	lsls	r2, r2, #24
     eb2: f103 4a02    	add.w	r10, r3, #2181038080
     eb6: 0604         	lsls	r4, r0, #24
     eb8: 3505         	adds	r5, #5
     eba: 8f03         	ldrh	r3, [r0, #56]
     ebc: 4a7d         	ldr	r2, [pc, #500]          @ 0x10b4 <.debug_str+0x10b4>
     ebe: 1105         	asrs	r5, r0, #4
     ec0: 2d2f         	cmp	r5, #47
     ec2: 1305         	asrs	r5, r0, #12
     ec4: 052d         	lsls	r5, r5, #20
     ec6: 2f35         	cmp	r7, #53
     ec8: 1105         	asrs	r5, r0, #4
     eca: 2e06         	cmp	r6, #6
     ecc: 3505         	adds	r5, #5
     ece: 052e         	lsls	r6, r5, #20
     ed0: 4a11         	ldr	r2, [pc, #68]           @ 0xf18 <.debug_str+0xf18>
     ed2: 1305         	asrs	r5, r0, #12
     ed4: 4906         	ldr	r1, [pc, #24]           @ 0xef0 <.debug_str+0xef0>
     ed6: 3505         	adds	r5, #5
     ed8: 0583         	lsls	r3, r0, #22
     eda: 4913         	ldr	r1, [pc, #76]           @ 0xf28 <.debug_str+0xf28>
     edc: 1105         	asrs	r5, r0, #4
     ede: 054b         	lsls	r3, r1, #21
     ee0: 4913         	ldr	r1, [pc, #76]           @ 0xf30 <.debug_str+0xf30>
     ee2: 0404         	lsls	r4, r0, #16
     ee4: 1205         	asrs	r5, r0, #8
     ee6: 8003         	strh	r3, [r0]
     ee8: 2e03         	cmp	r6, #3
     eea: 0604         	lsls	r4, r0, #24
     eec: 1305         	asrs	r5, r0, #12
     eee: 8003         	strh	r3, [r0]
     ef0: 2e7d         	cmp	r6, #125
     ef2: 3505         	adds	r5, #5
     ef4: 054b         	lsls	r3, r1, #21
     ef6: 0611         	lsls	r1, r2, #24
     ef8: 054a         	lsls	r2, r1, #21
     efa: 0613         	lsls	r3, r2, #24
     efc: 0449         	lsls	r1, r1, #17
     efe: 0504         	lsls	r4, r0, #20
     f00: 0312         	lsls	r2, r2, #12
     f02: 0380         	lsls	r0, r0, #14
     f04: 042e         	lsls	r6, r5, #16
     f06: 0506         	lsls	r6, r0, #20
     f08: 0335         	lsls	r5, r6, #12
     f0a: 7d81         	ldrb	r1, [r0, #22]
     f0c: 052e         	lsls	r6, r5, #20
     f0e: 0611         	lsls	r1, r2, #24
     f10: 034a         	lsls	r2, r1, #13
     f12: 7f97         	ldrb	r7, [r2, #30]
     f14: 0566         	lsls	r6, r4, #21
     f16: 0613         	lsls	r3, r2, #24
     f18: e103         	b	0x1122 <.debug_str+0x1122> @ imm = #518
     f1a: 2e00         	cmp	r6, #0
     f1c: 3505         	adds	r5, #5
     f1e: 2208         	movs	r2, #8
     f20: 1105         	asrs	r5, r0, #4
     f22: 2f2d         	cmp	r7, #45
     f24: 3505         	adds	r5, #5
     f26: 2e06         	cmp	r6, #6
     f28: 1105         	asrs	r5, r0, #4
     f2a: 052e         	lsls	r6, r5, #20
     f2c: 2e35         	cmp	r6, #53
     f2e: 1105         	asrs	r5, r0, #4
     f30: 054a         	lsls	r2, r1, #21
     f32: 2e35         	cmp	r6, #53
     f34: 1305         	asrs	r5, r0, #12
     f36: 4806         	ldr	r0, [pc, #24]           @ 0xf50 <.debug_str+0xf50>
     f38: 1105         	asrs	r5, r0, #4
     f3a: 054c         	lsls	r4, r1, #21
     f3c: 4813         	ldr	r0, [pc, #76]           @ 0xf8c <.debug_str+0xf8c>
     f3e: 0104         	lsls	r4, r0, #4
     f40: 0a05         	lsrs	r5, r0, #8
     f42: bd03         	pop	{r0, r1, pc}
     f44: 2e02         	cmp	r6, #2
     f46: 0602         	lsls	r2, r0, #24
     f48: 0100         	lsls	r0, r0, #4
     f4a: 0001         	movs	r1, r0
     f4c: 0205         	lsls	r5, r0, #8
     f4e: 0000         	movs	r0, r0
     f50: 0000         	movs	r0, r0
     f52: 9b03         	ldr	r3, [sp, #12]
     f54: 0103         	lsls	r3, r0, #4
     f56: 0604         	lsls	r4, r0, #24
     f58: 1105         	asrs	r5, r0, #4
     f5a: 030a         	lsls	r2, r1, #12
     f5c: 7dc1         	ldrb	r1, [r0, #23]
     f5e: 0582         	lsls	r2, r0, #22
     f60: 4b0c         	ldr	r3, [pc, #48]           @ 0xf94 <.debug_str+0xf94>
     f62: 1305         	asrs	r5, r0, #12
     f64: 054d         	lsls	r5, r1, #21
     f66: bc35         	pop	{r0, r2, r4, r5}
     f68: 1305         	asrs	r5, r0, #12
     f6a: 0548         	lsls	r0, r1, #21
     f6c: 3011         	adds	r0, #17
     f6e: 1305         	asrs	r5, r0, #12
     f70: 0564         	lsls	r4, r4, #21
     f72: 2f11         	cmp	r7, #17
     f74: 1305         	asrs	r5, r0, #12
     f76: 0549         	lsls	r1, r1, #21
     f78: 3035         	adds	r0, #53
     f7a: 1105         	asrs	r5, r0, #4
     f7c: 4a06         	ldr	r2, [pc, #24]           @ 0xf98 <.debug_str+0xf98>
     f7e: 1305         	asrs	r5, r0, #12
     f80: 4806         	ldr	r0, [pc, #24]           @ 0xf9c <.debug_str+0xf9c>
     f82: 1105         	asrs	r5, r0, #4
     f84: 052f         	lsls	r7, r5, #20
     f86: 4b35         	ldr	r3, [pc, #212]          @ 0x105c <.debug_str+0x105c>
     f88: 1105         	asrs	r5, r0, #4
     f8a: 4a06         	ldr	r2, [pc, #24]           @ 0xfa4 <.debug_str+0xfa4>
     f8c: 1305         	asrs	r5, r0, #12
     f8e: 6b06         	ldr	r6, [r0, #48]
     f90: 0306         	lsls	r6, r0, #12
     f92: 7f98         	ldrb	r0, [r3, #30]
     f94: 7408         	strb	r0, [r1, #16]
     f96: e803 2e00    	<unknown>
     f9a: 0104         	lsls	r4, r0, #4
     f9c: 0a05         	lsrs	r5, r0, #8
     f9e: 0306         	lsls	r6, r0, #12
     fa0: 02b6         	lsls	r6, r6, #10
     fa2: 0466         	lsls	r6, r4, #17
     fa4: 0506         	lsls	r6, r0, #20
     fa6: 0313         	lsls	r3, r2, #12
     fa8: 7dca         	ldrb	r2, [r1, #23]
     faa: 0566         	lsls	r6, r4, #21
     fac: 0835         	lsrs	r5, r6, #32
     fae: 053d         	lsls	r5, r7, #20
     fb0: 6513         	str	r3, [r2, #80]
     fb2: 1105         	asrs	r5, r0, #4
     fb4: 042f         	lsls	r7, r5, #16
     fb6: 0505         	lsls	r5, r0, #20
     fb8: 0312         	lsls	r2, r2, #12
     fba: 02f1         	lsls	r1, r6, #11
     fbc: 042e         	lsls	r6, r5, #16
     fbe: 0506         	lsls	r6, r0, #20
     fc0: 0313         	lsls	r3, r2, #12
     fc2: 7d8e         	ldrb	r6, [r1, #22]
     fc4: 052e         	lsls	r6, r5, #20
     fc6: 2f35         	cmp	r7, #53
     fc8: 1105         	asrs	r5, r0, #4
     fca: 4a06         	ldr	r2, [pc, #24]           @ 0xfe4 <.debug_str+0xfe4>
     fcc: 3505         	adds	r5, #5
     fce: 054a         	lsls	r2, r1, #21
     fd0: 8211         	strh	r1, [r2, #16]
     fd2: 0504         	lsls	r4, r0, #20
     fd4: 1205         	asrs	r5, r0, #8
     fd6: 0306         	lsls	r6, r0, #12
     fd8: 02f1         	lsls	r1, r6, #11
     fda: 042e         	lsls	r6, r5, #16
     fdc: 0506         	lsls	r6, r0, #20
     fde: 0313         	lsls	r3, r2, #12
     fe0: 7d8e         	ldrb	r6, [r1, #22]
     fe2: 054a         	lsls	r2, r1, #21
     fe4: 4b35         	ldr	r3, [pc, #212]          @ 0x10bc <.debug_str+0x10bc>
     fe6: 1105         	asrs	r5, r0, #4
     fe8: 2e06         	cmp	r6, #6
     fea: 1305         	asrs	r5, r0, #12
     fec: 2d06         	cmp	r5, #6
     fee: 3505         	adds	r5, #5
     ff0: 059f         	lsls	r7, r3, #22
     ff2: 4913         	ldr	r1, [pc, #76]           @ 0x1040 <.debug_str+0x1040>
     ff4: 1105         	asrs	r5, r0, #4
     ff6: 054b         	lsls	r3, r1, #21
     ff8: 4913         	ldr	r1, [pc, #76]           @ 0x1048 <.debug_str+0x1048>
     ffa: 0404         	lsls	r4, r0, #16
     ffc: 1205         	asrs	r5, r0, #8
     ffe: 8003         	strh	r3, [r0]
    1000: 2e03         	cmp	r6, #3
    1002: 0604         	lsls	r4, r0, #24
    1004: 1305         	asrs	r5, r0, #12
    1006: 8003         	strh	r3, [r0]
    1008: 2e7d         	cmp	r6, #125
    100a: 3505         	adds	r5, #5
    100c: 054b         	lsls	r3, r1, #21
    100e: 0611         	lsls	r1, r2, #24
    1010: 054a         	lsls	r2, r1, #21
    1012: 0613         	lsls	r3, r2, #24
    1014: 0449         	lsls	r1, r1, #17
    1016: 0504         	lsls	r4, r0, #20
    1018: 0312         	lsls	r2, r2, #12
    101a: 0380         	lsls	r0, r0, #14
    101c: 042e         	lsls	r6, r5, #16
    101e: 0506         	lsls	r6, r0, #20
    1020: 0335         	lsls	r5, r6, #12
    1022: 7d81         	ldrb	r1, [r0, #22]
    1024: 052e         	lsls	r6, r5, #20
    1026: 0611         	lsls	r1, r2, #24
    1028: 044a         	lsls	r2, r1, #17
    102a: 0501         	lsls	r1, r0, #20
    102c: 060a         	lsls	r2, r1, #24
    102e: b503         	push	{r0, r1, lr}
    1030: 4a02         	ldr	r2, [pc, #8]            @ 0x103c <.debug_str+0x103c>
    1032: 0306         	lsls	r6, r0, #12
    1034: 7ce2         	ldrb	r2, [r4, #19]
    1036: 0466         	lsls	r6, r4, #17
    1038: 0506         	lsls	r6, r0, #20
    103a: 0613         	lsls	r3, r2, #24
    103c: e103         	b	0x1246 <.debug_str+0x1246> @ imm = #518
    103e: 2e00         	cmp	r6, #0
    1040: 3505         	adds	r5, #5
    1042: 05f4         	lsls	r4, r6, #23
    1044: 2d11         	cmp	r5, #17
    1046: 052f         	lsls	r7, r5, #20
    1048: 0635         	lsls	r5, r6, #24
    104a: 052e         	lsls	r6, r5, #20
    104c: 2e11         	cmp	r6, #17
    104e: 3505         	adds	r5, #5
    1050: 052e         	lsls	r6, r5, #20
    1052: 4a11         	ldr	r2, [pc, #68]           @ 0x1098 <.debug_str+0x1098>
    1054: 3505         	adds	r5, #5
    1056: 052e         	lsls	r6, r5, #20
    1058: 0613         	lsls	r3, r2, #24
    105a: 0548         	lsls	r0, r1, #21
    105c: 4c11         	ldr	r4, [pc, #68]           @ 0x10a4 <.debug_str+0x10a4>
    105e: 1305         	asrs	r5, r0, #12
    1060: 022c         	lsls	r4, r5, #8
    1062: 0008         	movs	r0, r1
    1064: 0101         	lsls	r1, r0, #4
    1066: 0500         	lsls	r0, r0, #20
    1068: 0002         	movs	r2, r0
    106a: 0000         	movs	r0, r0
    106c: 0300         	lsls	r0, r0, #12
    106e: 039b         	lsls	r3, r3, #14
    1070: 0401         	lsls	r1, r0, #16
    1072: 0506         	lsls	r6, r0, #20
    1074: 0a0f         	lsrs	r7, r1, #8
    1076: e803 4a7d    	<unknown>
    107a: 0306         	lsls	r6, r0, #12
    107c: 7efc         	ldrb	r4, [r7, #27]
    107e: 03ba         	lsls	r2, r7, #14
    1080: 0184         	lsls	r4, r0, #6
    1082: 054a         	lsls	r2, r1, #21
    1084: 060d         	lsls	r5, r1, #24
    1086: 05d7         	lsls	r7, r2, #23
    1088: 490f         	ldr	r1, [pc, #60]           @ 0x10c8 <.debug_str+0x10c8>
    108a: 0d05         	lsrs	r5, r0, #20
    108c: 052f         	lsls	r7, r5, #20
    108e: 810f         	strh	r7, [r1, #8]
    1090: 0d05         	lsrs	r5, r0, #20
    1092: 05bb         	lsls	r3, r7, #22
    1094: 490f         	ldr	r1, [pc, #60]           @ 0x10d4 <.debug_str+0x10d4>
    1096: 0104         	lsls	r4, r0, #4
    1098: 0a05         	lsrs	r5, r0, #8
    109a: 9a03         	ldr	r2, [sp, #12]
    109c: 6602         	str	r2, [r0, #96]
    109e: 0604         	lsls	r4, r0, #24
    10a0: 0d05         	lsrs	r5, r0, #20
    10a2: e803 2e7d    	<unknown>
    10a6: 0f05         	lsrs	r5, r0, #28
    10a8: 052c         	lsls	r4, r5, #20
    10aa: 4b0d         	ldr	r3, [pc, #52]           @ 0x10e0 <.debug_str+0x10e0>
    10ac: 0104         	lsls	r4, r0, #4
    10ae: 0a05         	lsrs	r5, r0, #8
    10b0: 9903         	ldr	r1, [sp, #12]
    10b2: 6602         	str	r2, [r0, #96]
    10b4: 0202         	lsls	r2, r0, #8
    10b6: 0100         	lsls	r0, r0, #4
    10b8: 0001         	movs	r1, r0
    10ba: 0205         	lsls	r5, r0, #8
    10bc: 0000         	movs	r0, r0
    10be: 0000         	movs	r0, r0
    10c0: 9b03         	ldr	r3, [sp, #12]
    10c2: 0103         	lsls	r3, r0, #4
    10c4: 0604         	lsls	r4, r0, #24
    10c6: 0f05         	lsrs	r5, r0, #28
    10c8: 030a         	lsls	r2, r1, #12
    10ca: 7de8         	ldrb	r0, [r5, #23]
    10cc: 044a         	lsls	r2, r1, #17
    10ce: 0501         	lsls	r1, r0, #20
    10d0: 030a         	lsls	r2, r1, #12
    10d2: 029a         	lsls	r2, r3, #10
    10d4: 042e         	lsls	r6, r5, #16
    10d6: 0506         	lsls	r6, r0, #20
    10d8: 0311         	lsls	r1, r2, #12
    10da: 7dd9         	ldrb	r1, [r3, #23]
    10dc: 054a         	lsls	r2, r1, #21
    10de: 030f         	lsls	r7, r1, #12
    10e0: 660d         	str	r5, [r1, #96]
    10e2: 0005         	movs	r5, r0
    10e4: 0306         	lsls	r6, r0, #12
    10e6: 7efc         	ldrb	r4, [r7, #27]
    10e8: 059e         	lsls	r6, r3, #22
    10ea: 030f         	lsls	r7, r1, #12
    10ec: 0184         	lsls	r4, r0, #6
    10ee: 034a         	lsls	r2, r1, #13
    10f0: 7efc         	ldrb	r4, [r7, #27]
    10f2: 0382         	lsls	r2, r0, #14
    10f4: 0184         	lsls	r4, r0, #6
    10f6: 054a         	lsls	r2, r1, #21
    10f8: 060d         	lsls	r5, r1, #24
    10fa: 2da0         	cmp	r5, #160
    10fc: 0f05         	lsrs	r5, r0, #28
    10fe: 0549         	lsls	r1, r1, #21
    1100: 2f0d         	cmp	r7, #13
    1102: 0f05         	lsrs	r5, r0, #28
    1104: 0581         	lsls	r1, r0, #22
    1106: 670d         	str	r5, [r1, #112]
    1108: 0f05         	lsrs	r5, r0, #28
    110a: 0465         	lsls	r5, r4, #17
    110c: 0501         	lsls	r1, r0, #20
    110e: 030a         	lsls	r2, r1, #12
    1110: 029a         	lsls	r2, r3, #10
    1112: 0466         	lsls	r6, r4, #17
    1114: 0504         	lsls	r4, r0, #20
    1116: 0312         	lsls	r2, r2, #12
    1118: 00ca         	lsls	r2, r1, #3
    111a: 042e         	lsls	r6, r5, #16
    111c: 0506         	lsls	r6, r0, #20
    111e: 030f         	lsls	r7, r1, #12
    1120: 7d9c         	ldrb	r4, [r3, #22]
    1122: 054a         	lsls	r2, r1, #21
    1124: 4b0d         	ldr	r3, [pc, #52]           @ 0x115c <.debug_str+0x115c>
    1126: 0104         	lsls	r4, r0, #4
    1128: 0a05         	lsrs	r5, r0, #8
    112a: 9903         	ldr	r1, [sp, #12]
    112c: 6602         	str	r2, [r0, #96]
    112e: 0202         	lsls	r2, r0, #8
    1130: 0100         	lsls	r0, r0, #4
    1132: 0001         	movs	r1, r0
    1134: 0205         	lsls	r5, r0, #8
    1136: 0000         	movs	r0, r0
    1138: 0000         	movs	r0, r0
    113a: 9b03         	ldr	r3, [sp, #12]
    113c: 0103         	lsls	r3, r0, #4
    113e: 0604         	lsls	r4, r0, #24
    1140: 0f05         	lsrs	r5, r0, #28
    1142: 030a         	lsls	r2, r1, #12
    1144: 7de8         	ldrb	r0, [r5, #23]
    1146: 044a         	lsls	r2, r1, #17
    1148: 0501         	lsls	r1, r0, #20
    114a: 030a         	lsls	r2, r1, #12
    114c: 029a         	lsls	r2, r3, #10
    114e: 062e         	lsls	r6, r5, #24
    1150: e203         	b	0x155a <.debug_str+0x155a> @ imm = #1030
    1152: 4a7c         	ldr	r2, [pc, #496]          @ 0x1344 <.debug_str+0x1344>
    1154: 0604         	lsls	r4, r0, #24
    1156: 1105         	asrs	r5, r0, #4
    1158: 0306         	lsls	r6, r0, #12
    115a: 00f7         	lsls	r7, r6, #3
    115c: 059e         	lsls	r6, r3, #22
    115e: 030f         	lsls	r7, r1, #12
    1160: 2e0d         	cmp	r6, #13
    1162: 0306         	lsls	r6, r0, #12
    1164: 7efc         	ldrb	r4, [r7, #27]
    1166: 3c08         	subs	r4, #8
    1168: 8403         	strh	r3, [r0, #32]
    116a: 4a01         	ldr	r2, [pc, #4]            @ 0x1170 <.debug_str+0x1170>
    116c: 0d05         	lsrs	r5, r0, #20
    116e: f306 0f05    	ssat	pc, #6, r6
    1172: 0549         	lsls	r1, r1, #21
    1174: 2f0d         	cmp	r7, #13
    1176: 0f05         	lsrs	r5, r0, #28
    1178: 0581         	lsls	r1, r0, #22
    117a: 830d         	strh	r5, [r1, #24]
    117c: 0f05         	lsrs	r5, r0, #28
    117e: 0465         	lsls	r5, r4, #17
    1180: 0501         	lsls	r1, r0, #20
    1182: 030a         	lsls	r2, r1, #12
    1184: 029a         	lsls	r2, r3, #10
    1186: 0466         	lsls	r6, r4, #17
    1188: 0504         	lsls	r4, r0, #20
    118a: 0312         	lsls	r2, r2, #12
    118c: 00ca         	lsls	r2, r1, #3
    118e: 042e         	lsls	r6, r5, #16
    1190: 0506         	lsls	r6, r0, #20
    1192: 030f         	lsls	r7, r1, #12
    1194: 7d9c         	ldrb	r4, [r3, #22]
    1196: 054a         	lsls	r2, r1, #21
    1198: 4b0d         	ldr	r3, [pc, #52]           @ 0x11d0 <.debug_str+0x11d0>
    119a: 0104         	lsls	r4, r0, #4
    119c: 0a05         	lsrs	r5, r0, #8
    119e: 9903         	ldr	r1, [sp, #12]
    11a0: 6602         	str	r2, [r0, #96]
    11a2: 0202         	lsls	r2, r0, #8
    11a4: 0100         	lsls	r0, r0, #4
    11a6: 01           	<unknown>

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
       0: 00ec         	lsls	r4, r5, #3
       2: 0800         	lsrs	r0, r0, #32
       4: 00ee         	lsls	r6, r5, #3
       6: 0800         	lsrs	r0, r0, #32
       8: 010c         	lsls	r4, r1, #4
       a: 0800         	lsrs	r0, r0, #32
       c: 0110         	lsls	r0, r2, #4
       e: 0800         	lsrs	r0, r0, #32
		...
      18: 00ee         	lsls	r6, r5, #3
      1a: 0800         	lsrs	r0, r0, #32
      1c: 00f0         	lsls	r0, r6, #3
      1e: 0800         	lsrs	r0, r0, #32
      20: 0112         	lsls	r2, r2, #4
      22: 0800         	lsrs	r0, r0, #32
      24: 0116         	lsls	r6, r2, #4
      26: 0800         	lsrs	r0, r0, #32
		...
      30: 0001         	movs	r1, r0
      32: 0000         	movs	r0, r0
      34: 0001         	movs	r1, r0
      36: 0000         	movs	r0, r0
      38: 0001         	movs	r1, r0
      3a: 0000         	movs	r0, r0
      3c: 0001         	movs	r1, r0
		...
      46: 0000         	movs	r0, r0
      48: 008a         	lsls	r2, r1, #2
      4a: 0800         	lsrs	r0, r0, #32
      4c: 008e         	lsls	r6, r1, #2
      4e: 0800         	lsrs	r0, r0, #32
      50: 008e         	lsls	r6, r1, #2
      52: 0800         	lsrs	r0, r0, #32
      54: 0128         	lsls	r0, r5, #4
      56: 0800         	lsrs	r0, r0, #32
      58: 0001         	movs	r1, r0
      5a: 0000         	movs	r0, r0
      5c: 0001         	movs	r1, r0
      5e: 0000         	movs	r0, r0
      60: 0001         	movs	r1, r0
      62: 0000         	movs	r0, r0
      64: 0001         	movs	r1, r0
      66: 0000         	movs	r0, r0
      68: 0001         	movs	r1, r0
      6a: 0000         	movs	r0, r0
      6c: 0001         	movs	r1, r0
      6e: 0000         	movs	r0, r0
      70: 0001         	movs	r1, r0
      72: 0000         	movs	r0, r0
      74: 0001         	movs	r1, r0
      76: 0000         	movs	r0, r0
      78: 0001         	movs	r1, r0
      7a: 0000         	movs	r0, r0
      7c: 0001         	movs	r1, r0
      7e: 0000         	movs	r0, r0
      80: 0001         	movs	r1, r0
      82: 0000         	movs	r0, r0
      84: 0001         	movs	r1, r0
      86: 0000         	movs	r0, r0
      88: 0001         	movs	r1, r0
      8a: 0000         	movs	r0, r0
      8c: 0001         	movs	r1, r0
      8e: 0000         	movs	r0, r0
      90: 0001         	movs	r1, r0
      92: 0000         	movs	r0, r0
      94: 0001         	movs	r1, r0
		...
      9e: 0000         	movs	r0, r0
      a0: 01fa         	lsls	r2, r7, #7
      a2: 0800         	lsrs	r0, r0, #32
      a4: 01fe         	lsls	r6, r7, #7
      a6: 0800         	lsrs	r0, r0, #32
      a8: 0238         	lsls	r0, r7, #8
      aa: 0800         	lsrs	r0, r0, #32
      ac: 0266         	lsls	r6, r4, #9
      ae: 0800         	lsrs	r0, r0, #32
		...
      b8: 0001         	movs	r1, r0
      ba: 0000         	movs	r0, r0
      bc: 0001         	movs	r1, r0
      be: 0000         	movs	r0, r0
      c0: 0001         	movs	r1, r0
      c2: 0000         	movs	r0, r0
      c4: 0001         	movs	r1, r0
      c6: 0000         	movs	r0, r0
      c8: 0001         	movs	r1, r0
      ca: 0000         	movs	r0, r0
      cc: 0001         	movs	r1, r0
		...
      d6: 0000         	movs	r0, r0
      d8: 0001         	movs	r1, r0
      da: 0000         	movs	r0, r0
      dc: 0001         	movs	r1, r0
      de: 0000         	movs	r0, r0
      e0: 0001         	movs	r1, r0
      e2: 0000         	movs	r0, r0
      e4: 0001         	movs	r1, r0
      e6: 0000         	movs	r0, r0
      e8: 0001         	movs	r1, r0
      ea: 0000         	movs	r0, r0
      ec: 0001         	movs	r1, r0
		...
      f6: 0000         	movs	r0, r0
      f8: 0001         	movs	r1, r0
      fa: 0000         	movs	r0, r0
      fc: 0001         	movs	r1, r0
      fe: 0000         	movs	r0, r0
     100: 0001         	movs	r1, r0
     102: 0000         	movs	r0, r0
     104: 0001         	movs	r1, r0
     106: 0000         	movs	r0, r0
     108: 0001         	movs	r1, r0
     10a: 0000         	movs	r0, r0
     10c: 0001         	movs	r1, r0
		...
     116: 0000         	movs	r0, r0
     118: 0001         	movs	r1, r0
     11a: 0000         	movs	r0, r0
     11c: 0001         	movs	r1, r0
     11e: 0000         	movs	r0, r0
     120: 0001         	movs	r1, r0
     122: 0000         	movs	r0, r0
     124: 0001         	movs	r1, r0
		...
     12e: 0000         	movs	r0, r0
     130: 0001         	movs	r1, r0
     132: 0000         	movs	r0, r0
     134: 0001         	movs	r1, r0
     136: 0000         	movs	r0, r0
     138: 0001         	movs	r1, r0
     13a: 0000         	movs	r0, r0
     13c: 0001         	movs	r1, r0
     13e: 0000         	movs	r0, r0
     140: 0001         	movs	r1, r0
     142: 0000         	movs	r0, r0
     144: 0001         	movs	r1, r0
		...
     14e: 0000         	movs	r0, r0
     150: 0001         	movs	r1, r0
     152: 0000         	movs	r0, r0
     154: 0001         	movs	r1, r0
     156: 0000         	movs	r0, r0
     158: 0001         	movs	r1, r0
     15a: 0000         	movs	r0, r0
     15c: 0001         	movs	r1, r0
     15e: 0000         	movs	r0, r0
     160: 0001         	movs	r1, r0
     162: 0000         	movs	r0, r0
     164: 0001         	movs	r1, r0
		...
     16e: 0000         	movs	r0, r0
     170: 0001         	movs	r1, r0
     172: 0000         	movs	r0, r0
     174: 0001         	movs	r1, r0
     176: 0000         	movs	r0, r0
     178: 0001         	movs	r1, r0
     17a: 0000         	movs	r0, r0
     17c: 0001         	movs	r1, r0
		...
     186: 0000         	movs	r0, r0
     188: 0001         	movs	r1, r0
     18a: 0000         	movs	r0, r0
     18c: 0001         	movs	r1, r0
     18e: 0000         	movs	r0, r0
     190: 0001         	movs	r1, r0
     192: 0000         	movs	r0, r0
     194: 0001         	movs	r1, r0
		...
     19e: 0000         	movs	r0, r0
     1a0: 0001         	movs	r1, r0
     1a2: 0000         	movs	r0, r0
     1a4: 0001         	movs	r1, r0
     1a6: 0000         	movs	r0, r0
     1a8: 0001         	movs	r1, r0
     1aa: 0000         	movs	r0, r0
     1ac: 0001         	movs	r1, r0
		...
     1b6: 0000         	movs	r0, r0
     1b8: 0001         	movs	r1, r0
     1ba: 0000         	movs	r0, r0
     1bc: 0001         	movs	r1, r0
     1be: 0000         	movs	r0, r0
     1c0: 0001         	movs	r1, r0
     1c2: 0000         	movs	r0, r0
     1c4: 0001         	movs	r1, r0
		...
     1ce: 0000         	movs	r0, r0
     1d0: 0001         	movs	r1, r0
     1d2: 0000         	movs	r0, r0
     1d4: 0001         	movs	r1, r0
     1d6: 0000         	movs	r0, r0
     1d8: 0001         	movs	r1, r0
     1da: 0000         	movs	r0, r0
     1dc: 0001         	movs	r1, r0
		...
     1e6: 0000         	movs	r0, r0
     1e8: 0001         	movs	r1, r0
     1ea: 0000         	movs	r0, r0
     1ec: 0001         	movs	r1, r0
     1ee: 0000         	movs	r0, r0
     1f0: 0001         	movs	r1, r0
     1f2: 0000         	movs	r0, r0
     1f4: 0001         	movs	r1, r0
		...
     1fe: 0000         	movs	r0, r0
     200: 0001         	movs	r1, r0
     202: 0000         	movs	r0, r0
     204: 0001         	movs	r1, r0
     206: 0000         	movs	r0, r0
     208: 0001         	movs	r1, r0
     20a: 0000         	movs	r0, r0
     20c: 0001         	movs	r1, r0
		...
     216: 0000         	movs	r0, r0
     218: 0001         	movs	r1, r0
     21a: 0000         	movs	r0, r0
     21c: 0001         	movs	r1, r0
     21e: 0000         	movs	r0, r0
     220: 0001         	movs	r1, r0
     222: 0000         	movs	r0, r0
     224: 0001         	movs	r1, r0
		...
     22e: 0000         	movs	r0, r0
     230: 0001         	movs	r1, r0
     232: 0000         	movs	r0, r0
     234: 0001         	movs	r1, r0
     236: 0000         	movs	r0, r0
     238: 0001         	movs	r1, r0
     23a: 0000         	movs	r0, r0
     23c: 0001         	movs	r1, r0
		...
     246: 0000         	movs	r0, r0
     248: 0001         	movs	r1, r0
     24a: 0000         	movs	r0, r0
     24c: 0001         	movs	r1, r0
     24e: 0000         	movs	r0, r0
     250: 0001         	movs	r1, r0
     252: 0000         	movs	r0, r0
     254: 0001         	movs	r1, r0
		...
     25e: 0000         	movs	r0, r0
     260: 0001         	movs	r1, r0
     262: 0000         	movs	r0, r0
     264: 0001         	movs	r1, r0
     266: 0000         	movs	r0, r0
     268: 0001         	movs	r1, r0
     26a: 0000         	movs	r0, r0
     26c: 0001         	movs	r1, r0
		...
     276: 0000         	movs	r0, r0
     278: 0001         	movs	r1, r0
     27a: 0000         	movs	r0, r0
     27c: 0001         	movs	r1, r0
     27e: 0000         	movs	r0, r0
     280: 0001         	movs	r1, r0
     282: 0000         	movs	r0, r0
     284: 0001         	movs	r1, r0
		...
     28e: 0000         	movs	r0, r0
     290: 0001         	movs	r1, r0
     292: 0000         	movs	r0, r0
     294: 0001         	movs	r1, r0
     296: 0000         	movs	r0, r0
     298: 0001         	movs	r1, r0
     29a: 0000         	movs	r0, r0
     29c: 0001         	movs	r1, r0
		...
     2a6: 0000         	movs	r0, r0
     2a8: 0001         	movs	r1, r0
     2aa: 0000         	movs	r0, r0
     2ac: 0001         	movs	r1, r0
     2ae: 0000         	movs	r0, r0
     2b0: 0001         	movs	r1, r0
     2b2: 0000         	movs	r0, r0
     2b4: 0001         	movs	r1, r0
     2b6: 0000         	movs	r0, r0
     2b8: 0001         	movs	r1, r0
     2ba: 0000         	movs	r0, r0
     2bc: 0001         	movs	r1, r0
		...
     2c6: 0000         	movs	r0, r0
     2c8: 0001         	movs	r1, r0
     2ca: 0000         	movs	r0, r0
     2cc: 0001         	movs	r1, r0
     2ce: 0000         	movs	r0, r0
     2d0: 0001         	movs	r1, r0
     2d2: 0000         	movs	r0, r0
     2d4: 0001         	movs	r1, r0
		...
     2de: 0000         	movs	r0, r0
     2e0: 0001         	movs	r1, r0
     2e2: 0000         	movs	r0, r0
     2e4: 0001         	movs	r1, r0
     2e6: 0000         	movs	r0, r0
     2e8: 0001         	movs	r1, r0
     2ea: 0000         	movs	r0, r0
     2ec: 0001         	movs	r1, r0
		...
     2f6: 0000         	movs	r0, r0
     2f8: 0001         	movs	r1, r0
     2fa: 0000         	movs	r0, r0
     2fc: 0001         	movs	r1, r0
     2fe: 0000         	movs	r0, r0
     300: 0001         	movs	r1, r0
     302: 0000         	movs	r0, r0
     304: 0001         	movs	r1, r0
		...
     30e: 0000         	movs	r0, r0
     310: 0001         	movs	r1, r0
     312: 0000         	movs	r0, r0
     314: 0001         	movs	r1, r0
     316: 0000         	movs	r0, r0
     318: 0001         	movs	r1, r0
     31a: 0000         	movs	r0, r0
     31c: 0001         	movs	r1, r0
		...
     326: 0000         	movs	r0, r0
     328: 0001         	movs	r1, r0
     32a: 0000         	movs	r0, r0
     32c: 0001         	movs	r1, r0
     32e: 0000         	movs	r0, r0
     330: 0001         	movs	r1, r0
     332: 0000         	movs	r0, r0
     334: 0001         	movs	r1, r0
     336: 0000         	movs	r0, r0
     338: 0001         	movs	r1, r0
     33a: 0000         	movs	r0, r0
     33c: 0001         	movs	r1, r0
		...
     346: 0000         	movs	r0, r0
     348: 0001         	movs	r1, r0
     34a: 0000         	movs	r0, r0
     34c: 0001         	movs	r1, r0
     34e: 0000         	movs	r0, r0
     350: 0001         	movs	r1, r0
     352: 0000         	movs	r0, r0
     354: 0001         	movs	r1, r0
		...
     35e: 0000         	movs	r0, r0
     360: 0001         	movs	r1, r0
     362: 0000         	movs	r0, r0
     364: 0001         	movs	r1, r0
     366: 0000         	movs	r0, r0
     368: 0001         	movs	r1, r0
     36a: 0000         	movs	r0, r0
     36c: 0001         	movs	r1, r0
		...
     376: 0000         	movs	r0, r0
     378: 0001         	movs	r1, r0
     37a: 0000         	movs	r0, r0
     37c: 0001         	movs	r1, r0
     37e: 0000         	movs	r0, r0
     380: 0001         	movs	r1, r0
     382: 0000         	movs	r0, r0
     384: 0001         	movs	r1, r0
		...
     38e: 0000         	movs	r0, r0
     390: 0001         	movs	r1, r0
     392: 0000         	movs	r0, r0
     394: 0001         	movs	r1, r0
     396: 0000         	movs	r0, r0
     398: 0001         	movs	r1, r0
     39a: 0000         	movs	r0, r0
     39c: 0001         	movs	r1, r0
		...
     3a6: 0000         	movs	r0, r0
     3a8: 0001         	movs	r1, r0
     3aa: 0000         	movs	r0, r0
     3ac: 0001         	movs	r1, r0
     3ae: 0000         	movs	r0, r0
     3b0: 0001         	movs	r1, r0
     3b2: 0000         	movs	r0, r0
     3b4: 0001         	movs	r1, r0
		...
     3be: 0000         	movs	r0, r0
     3c0: 0001         	movs	r1, r0
     3c2: 0000         	movs	r0, r0
     3c4: 0001         	movs	r1, r0
     3c6: 0000         	movs	r0, r0
     3c8: 0001         	movs	r1, r0
     3ca: 0000         	movs	r0, r0
     3cc: 0001         	movs	r1, r0
     3ce: 0000         	movs	r0, r0
     3d0: 0001         	movs	r1, r0
     3d2: 0000         	movs	r0, r0
     3d4: 0001         	movs	r1, r0
		...
     3de: 0000         	movs	r0, r0
     3e0: 0001         	movs	r1, r0
     3e2: 0000         	movs	r0, r0
     3e4: 0001         	movs	r1, r0
     3e6: 0000         	movs	r0, r0
     3e8: 0001         	movs	r1, r0
     3ea: 0000         	movs	r0, r0
     3ec: 0001         	movs	r1, r0
     3ee: 0000         	movs	r0, r0
     3f0: 0001         	movs	r1, r0
     3f2: 0000         	movs	r0, r0
     3f4: 0001         	movs	r1, r0
		...
     3fe: 0000         	movs	r0, r0
     400: 0128         	lsls	r0, r5, #4
     402: 0800         	lsrs	r0, r0, #32
     404: 026c         	lsls	r4, r5, #9
     406: 0800         	lsrs	r0, r0, #32
     408: 0001         	movs	r1, r0
     40a: 0000         	movs	r0, r0
     40c: 0001         	movs	r1, r0
     40e: 0000         	movs	r0, r0
     410: 0001         	movs	r1, r0
     412: 0000         	movs	r0, r0
     414: 0001         	movs	r1, r0
     416: 0000         	movs	r0, r0
     418: 0001         	movs	r1, r0
     41a: 0000         	movs	r0, r0
     41c: 0001         	movs	r1, r0
     41e: 0000         	movs	r0, r0
     420: 0001         	movs	r1, r0
     422: 0000         	movs	r0, r0
     424: 0001         	movs	r1, r0
     426: 0000         	movs	r0, r0
     428: 0001         	movs	r1, r0
     42a: 0000         	movs	r0, r0
     42c: 0001         	movs	r1, r0
     42e: 0000         	movs	r0, r0
     430: 0001         	movs	r1, r0
     432: 0000         	movs	r0, r0
     434: 0001         	movs	r1, r0
     436: 0000         	movs	r0, r0
     438: 0001         	movs	r1, r0
     43a: 0000         	movs	r0, r0
     43c: 0001         	movs	r1, r0
     43e: 0000         	movs	r0, r0
     440: 0001         	movs	r1, r0
     442: 0000         	movs	r0, r0
     444: 0001         	movs	r1, r0
     446: 0000         	movs	r0, r0
     448: 0001         	movs	r1, r0
     44a: 0000         	movs	r0, r0
     44c: 0001         	movs	r1, r0
     44e: 0000         	movs	r0, r0
     450: 0001         	movs	r1, r0
     452: 0000         	movs	r0, r0
     454: 0001         	movs	r1, r0
     456: 0000         	movs	r0, r0
     458: 0001         	movs	r1, r0
     45a: 0000         	movs	r0, r0
     45c: 0001         	movs	r1, r0
     45e: 0000         	movs	r0, r0
     460: 0001         	movs	r1, r0
     462: 0000         	movs	r0, r0
     464: 0001         	movs	r1, r0
     466: 0000         	movs	r0, r0
     468: 0001         	movs	r1, r0
     46a: 0000         	movs	r0, r0
     46c: 0001         	movs	r1, r0
     46e: 0000         	movs	r0, r0
     470: 0001         	movs	r1, r0
     472: 0000         	movs	r0, r0
     474: 0001         	movs	r1, r0
		...
     47e: 0000         	movs	r0, r0

Disassembly of section .comment:

00000000 <.comment>:
       0: 694c         	ldr	r4, [r1, #20]
       2: 6b6e         	ldr	r6, [r5, #52]
       4: 7265         	strb	r5, [r4, #9]
       6: 203a         	movs	r0, #58
       8: 4c4c         	ldr	r4, [pc, #304]          @ 0x13c <.debug_str+0x13c>
       a: 2044         	movs	r0, #68
       c: 3531         	adds	r5, #49
       e: 302e         	adds	r0, #46
      10: 362e         	adds	r6, #46
      12: 00           	<unknown>

Disassembly of section .symtab:

00000000 <.symtab>:
		...
      10: 0001         	movs	r1, r0
		...
      1a: 0000         	movs	r0, r0
      1c: 0004         	movs	r4, r0
      1e: fff1 001a    	<unknown>
      22: 0000         	movs	r0, r0
      24: 0008         	movs	r0, r1
      26: 0800         	lsrs	r0, r0, #32
      28: 0000         	movs	r0, r0
      2a: 0000         	movs	r0, r0
      2c: 0000         	movs	r0, r0
      2e: 0002         	movs	r2, r0
      30: 001f         	movs	r7, r3
		...
      3a: 0000         	movs	r0, r0
      3c: 0004         	movs	r4, r0
      3e: fff1 0041    	<unknown>
      42: 0000         	movs	r0, r0
      44: 0086         	lsls	r6, r0, #2
      46: 0800         	lsrs	r0, r0, #32
      48: 0000         	movs	r0, r0
      4a: 0000         	movs	r0, r0
      4c: 0000         	movs	r0, r0
      4e: 0002         	movs	r2, r0
      50: 00bc         	lsls	r4, r7, #2
      52: 0000         	movs	r0, r0
      54: 0087         	lsls	r7, r0, #2
      56: 0800         	lsrs	r0, r0, #32
      58: 0004         	movs	r4, r0
      5a: 0000         	movs	r0, r0
      5c: 0202         	lsls	r2, r0, #8
      5e: 0002         	movs	r2, r0
      60: 0046         	lsls	r6, r0, #1
		...
      6a: 0000         	movs	r0, r0
      6c: 0004         	movs	r4, r0
      6e: fff1 0067    	<unknown>
      72: 0000         	movs	r0, r0
      74: 008a         	lsls	r2, r1, #2
      76: 0800         	lsrs	r0, r0, #32
      78: 0000         	movs	r0, r0
      7a: 0000         	movs	r0, r0
      7c: 0000         	movs	r0, r0
      7e: 0002         	movs	r2, r0
      80: 006c         	lsls	r4, r5, #1
      82: 0000         	movs	r0, r0
      84: 008e         	lsls	r6, r1, #2
      86: 0800         	lsrs	r0, r0, #32
      88: 0000         	movs	r0, r0
      8a: 0000         	movs	r0, r0
      8c: 0000         	movs	r0, r0
      8e: 0002         	movs	r2, r0
      90: 00d8         	lsls	r0, r3, #3
      92: 0000         	movs	r0, r0
      94: 008f         	lsls	r7, r1, #2
      96: 0800         	lsrs	r0, r0, #32
      98: 009a         	lsls	r2, r3, #2
      9a: 0000         	movs	r0, r0
      9c: 0202         	lsls	r2, r0, #8
      9e: 0002         	movs	r2, r0
      a0: 0118         	lsls	r0, r3, #4
      a2: 0000         	movs	r0, r0
      a4: 008b         	lsls	r3, r1, #2
      a6: 0800         	lsrs	r0, r0, #32
      a8: 0004         	movs	r4, r0
      aa: 0000         	movs	r0, r0
      ac: 0202         	lsls	r2, r0, #8
      ae: 0002         	movs	r2, r0
      b0: 0071         	lsls	r1, r6, #1
		...
      ba: 0000         	movs	r0, r0
      bc: 0004         	movs	r4, r0
      be: fff1 0093    	<unknown>
      c2: 0000         	movs	r0, r0
      c4: 0128         	lsls	r0, r5, #4
      c6: 0800         	lsrs	r0, r0, #32
      c8: 0000         	movs	r0, r0
      ca: 0000         	movs	r0, r0
      cc: 0000         	movs	r0, r0
      ce: 0002         	movs	r2, r0
      d0: 0157         	lsls	r7, r2, #5
      d2: 0000         	movs	r0, r0
      d4: 0129         	lsls	r1, r5, #4
      d6: 0800         	lsrs	r0, r0, #32
      d8: 0144         	lsls	r4, r0, #5
      da: 0000         	movs	r0, r0
      dc: 0202         	lsls	r2, r0, #8
      de: 0002         	movs	r2, r0
      e0: 0098         	lsls	r0, r3, #2
      e2: 0000         	movs	r0, r0
      e4: 0009         	movs	r1, r1
      e6: 0800         	lsrs	r0, r0, #32
      e8: 007e         	lsls	r6, r7, #1
      ea: 0000         	movs	r0, r0
      ec: 0012         	movs	r2, r2
      ee: 0002         	movs	r2, r0
      f0: 00a6         	lsls	r6, r4, #2
      f2: 0000         	movs	r0, r0
      f4: 0000         	movs	r0, r0
      f6: 2000         	movs	r0, #0
      f8: 0000         	movs	r0, r0
      fa: 0000         	movs	r0, r0
      fc: 0010         	movs	r0, r2
      fe: 0005         	movs	r5, r0
     100: 00ad         	lsls	r5, r5, #2
     102: 0000         	movs	r0, r0
     104: 0000         	movs	r0, r0
     106: 2000         	movs	r0, #0
     108: 0000         	movs	r0, r0
     10a: 0000         	movs	r0, r0
     10c: 0010         	movs	r0, r2
     10e: 0005         	movs	r5, r0
     110: 00b4         	lsls	r4, r6, #2
     112: 0000         	movs	r0, r0
     114: 027c         	lsls	r4, r7, #9
     116: 0800         	lsrs	r0, r0, #32
     118: 0000         	movs	r0, r0
     11a: 0000         	movs	r0, r0
     11c: 0010         	movs	r0, r2
     11e: fff1 00cc    	<unknown>
     122: 0000         	movs	r0, r0
     124: 0000         	movs	r0, r0
     126: 2000         	movs	r0, #0
     128: 0000         	movs	r0, r0
     12a: 0000         	movs	r0, r0
     12c: 0010         	movs	r0, r2
     12e: 0006         	movs	r6, r0
     130: 00d2         	lsls	r2, r2, #3
     132: 0000         	movs	r0, r0
     134: 0000         	movs	r0, r0
     136: 2000         	movs	r0, #0
     138: 0000         	movs	r0, r0
     13a: 0000         	movs	r0, r0
     13c: 0010         	movs	r0, r2
     13e: 0006         	movs	r6, r0
     140: 018d         	lsls	r5, r1, #6
     142: 0000         	movs	r0, r0
     144: a000         	adr	r0, #0 <.debug_str+0x148>
     146: 2000         	movs	r0, #0
     148: 0000         	movs	r0, r0
     14a: 0000         	movs	r0, r0
     14c: 0010         	movs	r0, r2
     14e: fff1         	<unknown>

Disassembly of section .shstrtab:

00000000 <.shstrtab>:
       0: 2e00         	cmp	r6, #0
       2: 7369         	strb	r1, [r5, #13]
       4: 5f72         	ldrsh	r2, [r6, r5]
       6: 6576         	str	r6, [r6, #84]
       8: 7463         	strb	r3, [r4, #17]
       a: 726f         	strb	r7, [r5, #9]
       c: 2e00         	cmp	r6, #0
       e: 6574         	str	r4, [r6, #84]
      10: 7478         	strb	r0, [r7, #17]
      12: 2e00         	cmp	r6, #0
      14: 5241         	strh	r1, [r0, r1]
      16: 2e4d         	cmp	r6, #77
      18: 7865         	ldrb	r5, [r4, #1]
      1a: 6469         	str	r1, [r5, #68]
      1c: 0078         	lsls	r0, r7, #1
      1e: 722e         	strb	r6, [r5, #8]
      20: 646f         	str	r7, [r5, #68]
      22: 7461         	strb	r1, [r4, #17]
      24: 0061         	lsls	r1, r4, #1
      26: 642e         	str	r6, [r5, #64]
      28: 7461         	strb	r1, [r4, #17]
      2a: 0061         	lsls	r1, r4, #1
      2c: 622e         	str	r6, [r5, #32]
      2e: 7373         	strb	r3, [r6, #13]
      30: 2e00         	cmp	r6, #0
      32: 5241         	strh	r1, [r0, r1]
      34: 2e4d         	cmp	r6, #77
      36: 7461         	strb	r1, [r4, #17]
      38: 7274         	strb	r4, [r6, #9]
      3a: 6269         	str	r1, [r5, #36]
      3c: 7475         	strb	r5, [r6, #17]
      3e: 7365         	strb	r5, [r4, #13]
      40: 2e00         	cmp	r6, #0
      42: 6564         	str	r4, [r4, #84]
      44: 7562         	strb	r2, [r4, #21]
      46: 5f67         	ldrsh	r7, [r4, r5]
      48: 6261         	str	r1, [r4, #36]
      4a: 7262         	strb	r2, [r4, #9]
      4c: 7665         	strb	r5, [r4, #25]
      4e: 2e00         	cmp	r6, #0
      50: 6564         	str	r4, [r4, #84]
      52: 7562         	strb	r2, [r4, #21]
      54: 5f67         	ldrsh	r7, [r4, r5]
      56: 6e69         	ldr	r1, [r5, #100]
      58: 6f66         	ldr	r6, [r4, #116]
      5a: 2e00         	cmp	r6, #0
      5c: 6564         	str	r4, [r4, #84]
      5e: 7562         	strb	r2, [r4, #21]
      60: 5f67         	ldrsh	r7, [r4, r5]
      62: 7261         	strb	r1, [r4, #9]
      64: 6e61         	ldr	r1, [r4, #100]
      66: 6567         	str	r7, [r4, #84]
      68: 0073         	lsls	r3, r6, #1
      6a: 642e         	str	r6, [r5, #64]
      6c: 6265         	str	r5, [r4, #36]
      6e: 6775         	str	r5, [r6, #116]
      70: 735f         	strb	r7, [r3, #13]
      72: 7274         	strb	r4, [r6, #9]
      74: 2e00         	cmp	r6, #0
      76: 6564         	str	r4, [r4, #84]
      78: 7562         	strb	r2, [r4, #21]
      7a: 5f67         	ldrsh	r7, [r4, r5]
      7c: 7570         	strb	r0, [r6, #21]
      7e: 6e62         	ldr	r2, [r4, #100]
      80: 6d61         	ldr	r1, [r4, #84]
      82: 7365         	strb	r5, [r4, #13]
      84: 2e00         	cmp	r6, #0
      86: 6564         	str	r4, [r4, #84]
      88: 7562         	strb	r2, [r4, #21]
      8a: 5f67         	ldrsh	r7, [r4, r5]
      8c: 7570         	strb	r0, [r6, #21]
      8e: 7462         	strb	r2, [r4, #17]
      90: 7079         	strb	r1, [r7, #1]
      92: 7365         	strb	r5, [r4, #13]
      94: 2e00         	cmp	r6, #0
      96: 6564         	str	r4, [r4, #84]
      98: 7562         	strb	r2, [r4, #21]
      9a: 5f67         	ldrsh	r7, [r4, r5]
      9c: 7266         	strb	r6, [r4, #9]
      9e: 6d61         	ldr	r1, [r4, #84]
      a0: 0065         	lsls	r5, r4, #1
      a2: 642e         	str	r6, [r5, #64]
      a4: 6265         	str	r5, [r4, #36]
      a6: 6775         	str	r5, [r6, #116]
      a8: 6c5f         	ldr	r7, [r3, #68]
      aa: 6e69         	ldr	r1, [r5, #100]
      ac: 0065         	lsls	r5, r4, #1
      ae: 642e         	str	r6, [r5, #64]
      b0: 6265         	str	r5, [r4, #36]
      b2: 6775         	str	r5, [r6, #116]
      b4: 725f         	strb	r7, [r3, #9]
      b6: 6e61         	ldr	r1, [r4, #100]
      b8: 6567         	str	r7, [r4, #84]
      ba: 0073         	lsls	r3, r6, #1
      bc: 632e         	str	r6, [r5, #48]
      be: 6d6f         	ldr	r7, [r5, #84]
      c0: 656d         	str	r5, [r5, #84]
      c2: 746e         	strb	r6, [r5, #17]
      c4: 2e00         	cmp	r6, #0
      c6: 7973         	ldrb	r3, [r6, #5]
      c8: 746d         	strb	r5, [r5, #17]
      ca: 6261         	str	r1, [r4, #36]
      cc: 2e00         	cmp	r6, #0
      ce: 6873         	ldr	r3, [r6, #4]
      d0: 7473         	strb	r3, [r6, #17]
      d2: 7472         	strb	r2, [r6, #17]
      d4: 6261         	str	r1, [r4, #36]
      d6: 2e00         	cmp	r6, #0
      d8: 7473         	strb	r3, [r6, #17]
      da: 7472         	strb	r2, [r6, #17]
      dc: 6261         	str	r1, [r4, #36]
      de: 00           	<unknown>

Disassembly of section .strtab:

00000000 <.strtab>:
       0: 7400         	strb	r0, [r0, #16]
       2: 7972         	ldrb	r2, [r6, #5]
       4: 735f         	strb	r7, [r3, #13]
       6: 6d74         	ldr	r4, [r6, #84]
       8: 3233         	adds	r2, #51
       a: 392e         	subs	r1, #46
       c: 3635         	adds	r6, #53
       e: 6263         	str	r3, [r4, #36]
      10: 3538         	adds	r5, #56
      12: 2d33         	cmp	r5, #51
      14: 6763         	str	r3, [r4, #116]
      16: 2e75         	cmp	r6, #117
      18: 0030         	movs	r0, r6
      1a: 7424         	strb	r4, [r4, #16]
      1c: 302e         	adds	r0, #46
      1e: 6300         	str	r0, [r0, #48]
      20: 6d6f         	ldr	r7, [r5, #84]
      22: 6970         	ldr	r0, [r6, #20]
      24: 656c         	str	r4, [r5, #84]
      26: 5f72         	ldrsh	r2, [r6, r5]
      28: 7562         	strb	r2, [r4, #21]
      2a: 6c69         	ldr	r1, [r5, #68]
      2c: 6974         	ldr	r4, [r6, #20]
      2e: 736e         	strb	r6, [r5, #13]
      30: 372e         	adds	r7, #46
      32: 6162         	str	r2, [r4, #20]
      34: 6665         	str	r5, [r4, #100]
      36: 6432         	str	r2, [r6, #64]
      38: 2d33         	cmp	r5, #51
      3a: 6763         	str	r3, [r4, #116]
      3c: 2e75         	cmp	r6, #117
      3e: 3834         	subs	r0, #52
      40: 2400         	movs	r4, #0
      42: 2e74         	cmp	r6, #116
      44: 0030         	movs	r0, r6
      46: 6f63         	ldr	r3, [r4, #116]
      48: 706d         	strb	r5, [r5, #1]
      4a: 6c69         	ldr	r1, [r5, #68]
      4c: 7265         	strb	r5, [r4, #9]
      4e: 625f         	str	r7, [r3, #36]
      50: 6975         	ldr	r5, [r6, #20]
      52: 746c         	strb	r4, [r5, #17]
      54: 6e69         	ldr	r1, [r5, #100]
      56: 2e73         	cmp	r6, #115
      58: 6237         	str	r7, [r6, #32]
      5a: 6561         	str	r1, [r4, #84]
      5c: 3266         	adds	r2, #102
      5e: 3364         	adds	r3, #100
      60: 632d         	str	r5, [r5, #48]
      62: 7567         	strb	r7, [r4, #21]
      64: 382e         	subs	r0, #46
      66: 2400         	movs	r4, #0
      68: 2e74         	cmp	r6, #116
      6a: 0030         	movs	r0, r6
      6c: 7424         	strb	r4, [r4, #16]
      6e: 312e         	adds	r1, #46
      70: 6300         	str	r0, [r0, #48]
      72: 6d6f         	ldr	r7, [r5, #84]
      74: 6970         	ldr	r0, [r6, #20]
      76: 656c         	str	r4, [r5, #84]
      78: 5f72         	ldrsh	r2, [r6, r5]
      7a: 7562         	strb	r2, [r4, #21]
      7c: 6c69         	ldr	r1, [r5, #68]
      7e: 6974         	ldr	r4, [r6, #20]
      80: 736e         	strb	r6, [r5, #13]
      82: 372e         	adds	r7, #46
      84: 6162         	str	r2, [r4, #20]
      86: 6665         	str	r5, [r4, #100]
      88: 6432         	str	r2, [r6, #64]
      8a: 2d33         	cmp	r5, #51
      8c: 6763         	str	r3, [r4, #116]
      8e: 2e75         	cmp	r6, #117
      90: 3639         	adds	r6, #57
      92: 2400         	movs	r4, #0
      94: 2e74         	cmp	r6, #116
      96: 0030         	movs	r0, r6
      98: 6572         	str	r2, [r6, #84]
      9a: 6573         	str	r3, [r6, #84]
      9c: 5f74         	ldrsh	r4, [r6, r5]
      9e: 6168         	str	r0, [r5, #20]
      a0: 646e         	str	r6, [r5, #68]
      a2: 656c         	str	r4, [r5, #84]
      a4: 0072         	lsls	r2, r6, #1
      a6: 655f         	str	r7, [r3, #84]
      a8: 6164         	str	r4, [r4, #20]
      aa: 6174         	str	r4, [r6, #20]
      ac: 5f00         	ldrsh	r0, [r0, r4]
      ae: 6473         	str	r3, [r6, #68]
      b0: 7461         	strb	r1, [r4, #17]
      b2: 0061         	lsls	r1, r4, #1
      b4: 735f         	strb	r7, [r3, #13]
      b6: 6469         	str	r1, [r5, #68]
      b8: 7461         	strb	r1, [r4, #17]
      ba: 0061         	lsls	r1, r4, #1
      bc: 5f5f         	ldrsh	r7, [r3, r5]
      be: 6561         	str	r1, [r4, #84]
      c0: 6261         	str	r1, [r4, #36]
      c2: 5f69         	ldrsh	r1, [r5, r5]
      c4: 656d         	str	r5, [r5, #84]
      c6: 636d         	str	r5, [r5, #52]
      c8: 7970         	ldrb	r0, [r6, #5]
      ca: 0034         	movs	r4, r6
      cc: 655f         	str	r7, [r3, #84]
      ce: 7362         	strb	r2, [r4, #13]
      d0: 0073         	lsls	r3, r6, #1
      d2: 735f         	strb	r7, [r3, #13]
      d4: 7362         	strb	r2, [r4, #13]
      d6: 0073         	lsls	r3, r6, #1
      d8: 5a5f         	ldrh	r7, [r3, r1]
      da: 314e         	adds	r1, #78
      dc: 6337         	str	r7, [r6, #48]
      de: 6d6f         	ldr	r7, [r5, #84]
      e0: 6970         	ldr	r0, [r6, #20]
      e2: 656c         	str	r4, [r5, #84]
      e4: 5f72         	ldrsh	r2, [r6, r5]
      e6: 7562         	strb	r2, [r4, #21]
      e8: 6c69         	ldr	r1, [r5, #68]
      ea: 6974         	ldr	r4, [r6, #20]
      ec: 736e         	strb	r6, [r5, #13]
      ee: 6133         	str	r3, [r6, #16]
      f0: 6d72         	ldr	r2, [r6, #84]
      f2: 3531         	adds	r5, #49
      f4: 5f5f         	ldrsh	r7, [r3, r5]
      f6: 6561         	str	r1, [r4, #84]
      f8: 6261         	str	r1, [r4, #36]
      fa: 5f69         	ldrsh	r1, [r5, r5]
      fc: 656d         	str	r5, [r5, #84]
      fe: 636d         	str	r5, [r5, #52]
     100: 7970         	ldrb	r0, [r6, #5]
     102: 3134         	adds	r1, #52
     104: 6837         	ldr	r7, [r6]
     106: 3861         	subs	r0, #97
     108: 3565         	adds	r5, #101
     10a: 6630         	str	r0, [r6, #96]
     10c: 3539         	adds	r5, #57
     10e: 3263         	adds	r2, #99
     110: 3831         	subs	r0, #49
     112: 6431         	str	r1, [r6, #64]
     114: 6164         	str	r4, [r4, #20]
     116: 0045         	lsls	r5, r0, #1
     118: 5a5f         	ldrh	r7, [r3, r1]
     11a: 314e         	adds	r1, #78
     11c: 6337         	str	r7, [r6, #48]
     11e: 6d6f         	ldr	r7, [r5, #84]
     120: 6970         	ldr	r0, [r6, #20]
     122: 656c         	str	r4, [r5, #84]
     124: 5f72         	ldrsh	r2, [r6, r5]
     126: 7562         	strb	r2, [r4, #21]
     128: 6c69         	ldr	r1, [r5, #68]
     12a: 6974         	ldr	r4, [r6, #20]
     12c: 736e         	strb	r6, [r5, #13]
     12e: 6133         	str	r3, [r6, #16]
     130: 6d72         	ldr	r2, [r6, #84]
     132: 3431         	adds	r4, #49
     134: 5f5f         	ldrsh	r7, [r3, r5]
     136: 6561         	str	r1, [r4, #84]
     138: 6261         	str	r1, [r4, #36]
     13a: 5f69         	ldrsh	r1, [r5, r5]
     13c: 656d         	str	r5, [r5, #84]
     13e: 636d         	str	r5, [r5, #52]
     140: 7970         	ldrb	r0, [r6, #5]
     142: 3731         	adds	r7, #49
     144: 3168         	adds	r1, #104
     146: 6364         	str	r4, [r4, #52]
     148: 6465         	str	r5, [r4, #68]
     14a: 6133         	str	r3, [r6, #16]
     14c: 3732         	adds	r7, #50
     14e: 3063         	adds	r0, #99
     150: 3736         	adds	r7, #54
     152: 6138         	str	r0, [r7, #16]
     154: 4566         	cmp	r6, r12
     156: 5f00         	ldrsh	r0, [r0, r4]
     158: 4e5a         	ldr	r6, [pc, #360]          @ 0x2c4 <.debug_str+0x2c4>
     15a: 3731         	adds	r7, #49
     15c: 6f63         	ldr	r3, [r4, #116]
     15e: 706d         	strb	r5, [r5, #1]
     160: 6c69         	ldr	r1, [r5, #68]
     162: 7265         	strb	r5, [r4, #9]
     164: 625f         	str	r7, [r3, #36]
     166: 6975         	ldr	r5, [r6, #20]
     168: 746c         	strb	r4, [r5, #17]
     16a: 6e69         	ldr	r1, [r5, #100]
     16c: 3373         	adds	r3, #115
     16e: 656d         	str	r5, [r5, #84]
     170: 366d         	adds	r6, #109
     172: 656d         	str	r5, [r5, #84]
     174: 636d         	str	r5, [r5, #52]
     176: 7970         	ldrb	r0, [r6, #5]
     178: 3731         	adds	r7, #49
     17a: 3968         	subs	r1, #104
     17c: 6539         	str	r1, [r7, #80]
     17e: 6435         	str	r5, [r6, #64]
     180: 3038         	adds	r0, #56
     182: 3465         	adds	r4, #101
     184: 6230         	str	r0, [r6, #32]
     186: 3366         	adds	r3, #102
     188: 6235         	str	r5, [r6, #32]
     18a: 4561         	cmp	r1, r12
     18c: 5f00         	ldrsh	r0, [r0, r4]
     18e: 7373         	strb	r3, [r6, #13]
     190: 6174         	str	r4, [r6, #20]
     192: 6b63         	ldr	r3, [r4, #52]
     194: 00           	<unknown>
