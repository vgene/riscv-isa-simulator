
gcc_dry2:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	00015197          	auipc	gp,0x15
   10004:	bf018193          	addi	gp,gp,-1040 # 24bf0 <_gp>
   10008:	00014297          	auipc	t0,0x14
   1000c:	4e028293          	addi	t0,t0,1248 # 244e8 <Reg>
   10010:	00017317          	auipc	t1,0x17
   10014:	db830313          	addi	t1,t1,-584 # 26dc8 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00001517          	auipc	a0,0x1
   10028:	bf450513          	addi	a0,a0,-1036 # 10c18 <__libc_fini_array>
   1002c:	3a9000ef          	jal	10bd4 <atexit>
   10030:	445000ef          	jal	10c74 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	2e0000ef          	jal	10320 <main>
   10044:	3a50006f          	j	10be8 <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	00024537          	lui	a0,0x24
   10050:	000247b7          	lui	a5,0x24
   10054:	3e850713          	addi	a4,a0,1000 # 243e8 <__TMC_END__>
   10058:	3ef78793          	addi	a5,a5,1007 # 243ef <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	3e850513          	addi	a0,a0,1000
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	00024537          	lui	a0,0x24
   10084:	000247b7          	lui	a5,0x24
   10088:	3e850593          	addi	a1,a0,1000 # 243e8 <__TMC_END__>
   1008c:	3e878793          	addi	a5,a5,1000 # 243e8 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	3e850513          	addi	a0,a0,1000
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	9301c783          	lbu	a5,-1744(gp) # 24520 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00022537          	lui	a0,0x22
   100e8:	d5850513          	addi	a0,a0,-680 # 21d58 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	92f18823          	sb	a5,-1744(gp) # 24520 <_bss_start>
   100fc:	00813083          	ld	ra,8(sp)
   10100:	00013403          	ld	s0,0(sp)
   10104:	01010113          	addi	sp,sp,16
   10108:	00008067          	ret

000000000001010c <frame_dummy>:
   1010c:	ff010113          	addi	sp,sp,-16
   10110:	000007b7          	lui	a5,0x0
   10114:	00113423          	sd	ra,8(sp)
   10118:	00078793          	mv	a5,a5
   1011c:	00078c63          	beqz	a5,10134 <frame_dummy+0x28>
   10120:	00022537          	lui	a0,0x22
   10124:	93818593          	addi	a1,gp,-1736 # 24528 <object.3092>
   10128:	d5850513          	addi	a0,a0,-680 # 21d58 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	000237b7          	lui	a5,0x23
   10138:	3e078513          	addi	a0,a5,992 # 233e0 <__JCR_END__>
   1013c:	00053783          	ld	a5,0(a0)
   10140:	00079863          	bnez	a5,10150 <frame_dummy+0x44>
   10144:	00813083          	ld	ra,8(sp)
   10148:	01010113          	addi	sp,sp,16
   1014c:	f35ff06f          	j	10080 <register_tm_clones>
   10150:	000007b7          	lui	a5,0x0
   10154:	00078793          	mv	a5,a5
   10158:	fe0786e3          	beqz	a5,10144 <frame_dummy+0x38>
   1015c:	000780e7          	jalr	a5
   10160:	fe5ff06f          	j	10144 <frame_dummy+0x38>

0000000000010164 <Proc_2>:
   10164:	000277b7          	lui	a5,0x27
   10168:	ccc7c703          	lbu	a4,-820(a5) # 26ccc <Ch_1_Glob>
   1016c:	04100793          	li	a5,65
   10170:	00f71e63          	bne	a4,a5,1018c <Proc_2+0x28>
   10174:	00052783          	lw	a5,0(a0)
   10178:	0097879b          	addiw	a5,a5,9
   1017c:	00027737          	lui	a4,0x27
   10180:	cc872703          	lw	a4,-824(a4) # 26cc8 <Int_Glob>
   10184:	40e787bb          	subw	a5,a5,a4
   10188:	00f52023          	sw	a5,0(a0)
   1018c:	00008067          	ret

0000000000010190 <Proc_3>:
   10190:	ff010113          	addi	sp,sp,-16
   10194:	00113423          	sd	ra,8(sp)
   10198:	000277b7          	lui	a5,0x27
   1019c:	cd07b783          	ld	a5,-816(a5) # 26cd0 <Ptr_Glob>
   101a0:	00078663          	beqz	a5,101ac <Proc_3+0x1c>
   101a4:	0007b783          	ld	a5,0(a5)
   101a8:	00f53023          	sd	a5,0(a0)
   101ac:	000277b7          	lui	a5,0x27
   101b0:	cd07b603          	ld	a2,-816(a5) # 26cd0 <Ptr_Glob>
   101b4:	01060613          	addi	a2,a2,16
   101b8:	000277b7          	lui	a5,0x27
   101bc:	cc87a583          	lw	a1,-824(a5) # 26cc8 <Int_Glob>
   101c0:	00a00513          	li	a0,10
   101c4:	0cd000ef          	jal	10a90 <Proc_7>
   101c8:	00813083          	ld	ra,8(sp)
   101cc:	01010113          	addi	sp,sp,16
   101d0:	00008067          	ret

00000000000101d4 <Proc_1>:
   101d4:	fe010113          	addi	sp,sp,-32
   101d8:	00113c23          	sd	ra,24(sp)
   101dc:	00813823          	sd	s0,16(sp)
   101e0:	00913423          	sd	s1,8(sp)
   101e4:	00050493          	mv	s1,a0
   101e8:	00053403          	ld	s0,0(a0)
   101ec:	000277b7          	lui	a5,0x27
   101f0:	cd07b783          	ld	a5,-816(a5) # 26cd0 <Ptr_Glob>
   101f4:	0007b703          	ld	a4,0(a5)
   101f8:	00e43023          	sd	a4,0(s0)
   101fc:	0087b703          	ld	a4,8(a5)
   10200:	00e43423          	sd	a4,8(s0)
   10204:	0107b703          	ld	a4,16(a5)
   10208:	00e43823          	sd	a4,16(s0)
   1020c:	0187b703          	ld	a4,24(a5)
   10210:	00e43c23          	sd	a4,24(s0)
   10214:	0207b703          	ld	a4,32(a5)
   10218:	02e43023          	sd	a4,32(s0)
   1021c:	0287b703          	ld	a4,40(a5)
   10220:	02e43423          	sd	a4,40(s0)
   10224:	0307b783          	ld	a5,48(a5)
   10228:	02f43823          	sd	a5,48(s0)
   1022c:	00500793          	li	a5,5
   10230:	00f52823          	sw	a5,16(a0)
   10234:	00f42823          	sw	a5,16(s0)
   10238:	00053783          	ld	a5,0(a0)
   1023c:	00f43023          	sd	a5,0(s0)
   10240:	00040513          	mv	a0,s0
   10244:	f4dff0ef          	jal	10190 <Proc_3>
   10248:	00842783          	lw	a5,8(s0)
   1024c:	02079e63          	bnez	a5,10288 <Proc_1+0xb4>
   10250:	00600793          	li	a5,6
   10254:	00f42823          	sw	a5,16(s0)
   10258:	00c40593          	addi	a1,s0,12
   1025c:	00c4a503          	lw	a0,12(s1)
   10260:	7bc000ef          	jal	10a1c <Proc_6>
   10264:	000277b7          	lui	a5,0x27
   10268:	cd07b783          	ld	a5,-816(a5) # 26cd0 <Ptr_Glob>
   1026c:	0007b783          	ld	a5,0(a5)
   10270:	00f43023          	sd	a5,0(s0)
   10274:	01040613          	addi	a2,s0,16
   10278:	00a00593          	li	a1,10
   1027c:	01042503          	lw	a0,16(s0)
   10280:	011000ef          	jal	10a90 <Proc_7>
   10284:	0400006f          	j	102c4 <Proc_1+0xf0>
   10288:	0004b783          	ld	a5,0(s1)
   1028c:	0007b703          	ld	a4,0(a5)
   10290:	00e4b023          	sd	a4,0(s1)
   10294:	0087b703          	ld	a4,8(a5)
   10298:	00e4b423          	sd	a4,8(s1)
   1029c:	0107b703          	ld	a4,16(a5)
   102a0:	00e4b823          	sd	a4,16(s1)
   102a4:	0187b703          	ld	a4,24(a5)
   102a8:	00e4bc23          	sd	a4,24(s1)
   102ac:	0207b703          	ld	a4,32(a5)
   102b0:	02e4b023          	sd	a4,32(s1)
   102b4:	0287b703          	ld	a4,40(a5)
   102b8:	02e4b423          	sd	a4,40(s1)
   102bc:	0307b783          	ld	a5,48(a5)
   102c0:	02f4b823          	sd	a5,48(s1)
   102c4:	01813083          	ld	ra,24(sp)
   102c8:	01013403          	ld	s0,16(sp)
   102cc:	00813483          	ld	s1,8(sp)
   102d0:	02010113          	addi	sp,sp,32
   102d4:	00008067          	ret

00000000000102d8 <Proc_4>:
   102d8:	000276b7          	lui	a3,0x27
   102dc:	000277b7          	lui	a5,0x27
   102e0:	ccc7c783          	lbu	a5,-820(a5) # 26ccc <Ch_1_Glob>
   102e4:	fbf7879b          	addiw	a5,a5,-65
   102e8:	0017b793          	seqz	a5,a5
   102ec:	da06a703          	lw	a4,-608(a3) # 26da0 <Bool_Glob>
   102f0:	00e7e7b3          	or	a5,a5,a4
   102f4:	daf6a023          	sw	a5,-608(a3)
   102f8:	04200713          	li	a4,66
   102fc:	000277b7          	lui	a5,0x27
   10300:	cce786a3          	sb	a4,-819(a5) # 26ccd <Ch_2_Glob>
   10304:	00008067          	ret

0000000000010308 <Proc_5>:
   10308:	04100713          	li	a4,65
   1030c:	000277b7          	lui	a5,0x27
   10310:	cce78623          	sb	a4,-820(a5) # 26ccc <Ch_1_Glob>
   10314:	000277b7          	lui	a5,0x27
   10318:	da07a023          	sw	zero,-608(a5) # 26da0 <Bool_Glob>
   1031c:	00008067          	ret

0000000000010320 <main>:
   10320:	f3010113          	addi	sp,sp,-208
   10324:	0c113423          	sd	ra,200(sp)
   10328:	0c813023          	sd	s0,192(sp)
   1032c:	0a913c23          	sd	s1,184(sp)
   10330:	0b213823          	sd	s2,176(sp)
   10334:	0b313423          	sd	s3,168(sp)
   10338:	0b413023          	sd	s4,160(sp)
   1033c:	09513c23          	sd	s5,152(sp)
   10340:	09613823          	sd	s6,144(sp)
   10344:	09713423          	sd	s7,136(sp)
   10348:	09813023          	sd	s8,128(sp)
   1034c:	07913c23          	sd	s9,120(sp)
   10350:	07a13823          	sd	s10,112(sp)
   10354:	07b13423          	sd	s11,104(sp)
   10358:	03800513          	li	a0,56
   1035c:	1b9000ef          	jal	10d14 <malloc>
   10360:	000274b7          	lui	s1,0x27
   10364:	cca4b023          	sd	a0,-832(s1) # 26cc0 <Next_Ptr_Glob>
   10368:	03800513          	li	a0,56
   1036c:	1a9000ef          	jal	10d14 <malloc>
   10370:	000277b7          	lui	a5,0x27
   10374:	cca7b823          	sd	a0,-816(a5) # 26cd0 <Ptr_Glob>
   10378:	cc04b703          	ld	a4,-832(s1)
   1037c:	00e53023          	sd	a4,0(a0)
   10380:	cd07b503          	ld	a0,-816(a5)
   10384:	00052423          	sw	zero,8(a0)
   10388:	00200793          	li	a5,2
   1038c:	00f52623          	sw	a5,12(a0)
   10390:	02800793          	li	a5,40
   10394:	00f52823          	sw	a5,16(a0)
   10398:	01f00613          	li	a2,31
   1039c:	000215b7          	lui	a1,0x21
   103a0:	64058593          	addi	a1,a1,1600 # 21640 <zeroes.4123+0x10>
   103a4:	01450513          	addi	a0,a0,20
   103a8:	0f4010ef          	jal	1149c <memcpy>
   103ac:	000227b7          	lui	a5,0x22
   103b0:	c307b703          	ld	a4,-976(a5) # 21c30 <zeroes.4123+0x600>
   103b4:	02e13823          	sd	a4,48(sp)
   103b8:	c3078793          	addi	a5,a5,-976
   103bc:	0087b703          	ld	a4,8(a5)
   103c0:	02e13c23          	sd	a4,56(sp)
   103c4:	0107b703          	ld	a4,16(a5)
   103c8:	04e13023          	sd	a4,64(sp)
   103cc:	0187a703          	lw	a4,24(a5)
   103d0:	04e12423          	sw	a4,72(sp)
   103d4:	01c7d703          	lhu	a4,28(a5)
   103d8:	04e11623          	sh	a4,76(sp)
   103dc:	01e7c783          	lbu	a5,30(a5)
   103e0:	04f10723          	sb	a5,78(sp)
   103e4:	00a00493          	li	s1,10
   103e8:	0091aa23          	sw	s1,20(gp) # 24c04 <_gp+0x14>
   103ec:	00048513          	mv	a0,s1
   103f0:	270010ef          	jal	11660 <putchar>
   103f4:	00021537          	lui	a0,0x21
   103f8:	66050513          	addi	a0,a0,1632 # 21660 <zeroes.4123+0x30>
   103fc:	488010ef          	jal	11884 <puts>
   10400:	00048513          	mv	a0,s1
   10404:	25c010ef          	jal	11660 <putchar>
   10408:	8f81a783          	lw	a5,-1800(gp) # 244e8 <Reg>
   1040c:	00078e63          	beqz	a5,10428 <main+0x108>
   10410:	00021537          	lui	a0,0x21
   10414:	69050513          	addi	a0,a0,1680 # 21690 <zeroes.4123+0x60>
   10418:	46c010ef          	jal	11884 <puts>
   1041c:	00048513          	mv	a0,s1
   10420:	240010ef          	jal	11660 <putchar>
   10424:	0180006f          	j	1043c <main+0x11c>
   10428:	00021537          	lui	a0,0x21
   1042c:	6c050513          	addi	a0,a0,1728 # 216c0 <zeroes.4123+0x90>
   10430:	454010ef          	jal	11884 <puts>
   10434:	00a00513          	li	a0,10
   10438:	228010ef          	jal	11660 <putchar>
   1043c:	00021537          	lui	a0,0x21
   10440:	6f050513          	addi	a0,a0,1776 # 216f0 <zeroes.4123+0xc0>
   10444:	1c4010ef          	jal	11608 <printf>
   10448:	00c10593          	addi	a1,sp,12
   1044c:	00021537          	lui	a0,0x21
   10450:	72850513          	addi	a0,a0,1832 # 21728 <zeroes.4123+0xf8>
   10454:	43c010ef          	jal	11890 <scanf>
   10458:	00c12b83          	lw	s7,12(sp)
   1045c:	00a00513          	li	a0,10
   10460:	200010ef          	jal	11660 <putchar>
   10464:	000b8593          	mv	a1,s7
   10468:	00021537          	lui	a0,0x21
   1046c:	73050513          	addi	a0,a0,1840 # 21730 <zeroes.4123+0x100>
   10470:	198010ef          	jal	11608 <printf>
   10474:	000274b7          	lui	s1,0x27
   10478:	da848513          	addi	a0,s1,-600 # 26da8 <time_info>
   1047c:	0e0100ef          	jal	2055c <times>
   10480:	da84b703          	ld	a4,-600(s1)
   10484:	9ae1b823          	sd	a4,-1616(gp) # 245a0 <Begin_Time>
   10488:	19705a63          	blez	s7,1061c <main+0x2fc>
   1048c:	00100a13          	li	s4,1
   10490:	00022d37          	lui	s10,0x22
   10494:	c50d3d83          	ld	s11,-944(s10) # 21c50 <zeroes.4123+0x620>
   10498:	00300493          	li	s1,3
   1049c:	00022c37          	lui	s8,0x22
   104a0:	c70c3c83          	ld	s9,-912(s8) # 21c70 <zeroes.4123+0x640>
   104a4:	e65ff0ef          	jal	10308 <Proc_5>
   104a8:	e31ff0ef          	jal	102d8 <Proc_4>
   104ac:	00200413          	li	s0,2
   104b0:	04812e23          	sw	s0,92(sp)
   104b4:	01b13823          	sd	s11,16(sp)
   104b8:	c50d0793          	addi	a5,s10,-944
   104bc:	0087b703          	ld	a4,8(a5)
   104c0:	00e13c23          	sd	a4,24(sp)
   104c4:	0107b703          	ld	a4,16(a5)
   104c8:	02e13023          	sd	a4,32(sp)
   104cc:	0187a703          	lw	a4,24(a5)
   104d0:	02e12423          	sw	a4,40(sp)
   104d4:	01c7d703          	lhu	a4,28(a5)
   104d8:	02e11623          	sh	a4,44(sp)
   104dc:	01e7c783          	lbu	a5,30(a5)
   104e0:	02f10723          	sb	a5,46(sp)
   104e4:	00100793          	li	a5,1
   104e8:	04f12a23          	sw	a5,84(sp)
   104ec:	01010593          	addi	a1,sp,16
   104f0:	03010513          	addi	a0,sp,48
   104f4:	664000ef          	jal	10b58 <Func_2>
   104f8:	00153513          	seqz	a0,a0
   104fc:	000277b7          	lui	a5,0x27
   10500:	daa7a023          	sw	a0,-608(a5) # 26da0 <Bool_Glob>
   10504:	05c12503          	lw	a0,92(sp)
   10508:	02a44863          	blt	s0,a0,10538 <main+0x218>
   1050c:	0025179b          	slliw	a5,a0,0x2
   10510:	00a787bb          	addw	a5,a5,a0
   10514:	ffd7879b          	addiw	a5,a5,-3
   10518:	04f12c23          	sw	a5,88(sp)
   1051c:	05810613          	addi	a2,sp,88
   10520:	00048593          	mv	a1,s1
   10524:	56c000ef          	jal	10a90 <Proc_7>
   10528:	05c12503          	lw	a0,92(sp)
   1052c:	0015051b          	addiw	a0,a0,1
   10530:	04a12e23          	sw	a0,92(sp)
   10534:	fca45ce3          	ble	a0,s0,1050c <main+0x1ec>
   10538:	05812683          	lw	a3,88(sp)
   1053c:	00050613          	mv	a2,a0
   10540:	9b818593          	addi	a1,gp,-1608 # 245a8 <Arr_2_Glob>
   10544:	000277b7          	lui	a5,0x27
   10548:	cd878513          	addi	a0,a5,-808 # 26cd8 <Arr_1_Glob>
   1054c:	554000ef          	jal	10aa0 <Proc_8>
   10550:	000277b7          	lui	a5,0x27
   10554:	cd07b503          	ld	a0,-816(a5) # 26cd0 <Ptr_Glob>
   10558:	c7dff0ef          	jal	101d4 <Proc_1>
   1055c:	000277b7          	lui	a5,0x27
   10560:	ccd7c703          	lbu	a4,-819(a5) # 26ccd <Ch_2_Glob>
   10564:	00048a93          	mv	s5,s1
   10568:	04000793          	li	a5,64
   1056c:	06e7fe63          	bleu	a4,a5,105e8 <main+0x2c8>
   10570:	04100413          	li	s0,65
   10574:	04300993          	li	s3,67
   10578:	00027b37          	lui	s6,0x27
   1057c:	00027937          	lui	s2,0x27
   10580:	00098593          	mv	a1,s3
   10584:	00040513          	mv	a0,s0
   10588:	5ac000ef          	jal	10b34 <Func_1>
   1058c:	05412783          	lw	a5,84(sp)
   10590:	04f51463          	bne	a0,a5,105d8 <main+0x2b8>
   10594:	05410593          	addi	a1,sp,84
   10598:	00000513          	li	a0,0
   1059c:	480000ef          	jal	10a1c <Proc_6>
   105a0:	01913823          	sd	s9,16(sp)
   105a4:	c70c0793          	addi	a5,s8,-912
   105a8:	0087b703          	ld	a4,8(a5)
   105ac:	00e13c23          	sd	a4,24(sp)
   105b0:	0107b703          	ld	a4,16(a5)
   105b4:	02e13023          	sd	a4,32(sp)
   105b8:	0187a703          	lw	a4,24(a5)
   105bc:	02e12423          	sw	a4,40(sp)
   105c0:	01c7d703          	lhu	a4,28(a5)
   105c4:	02e11623          	sh	a4,44(sp)
   105c8:	01e7c783          	lbu	a5,30(a5)
   105cc:	02f10723          	sb	a5,46(sp)
   105d0:	cd4b2423          	sw	s4,-824(s6) # 26cc8 <Int_Glob>
   105d4:	000a0a93          	mv	s5,s4
   105d8:	0014041b          	addiw	s0,s0,1
   105dc:	0ff47413          	andi	s0,s0,255
   105e0:	ccd94783          	lbu	a5,-819(s2) # 26ccd <Ch_2_Glob>
   105e4:	f887fee3          	bleu	s0,a5,10580 <main+0x260>
   105e8:	05c12783          	lw	a5,92(sp)
   105ec:	02fa8abb          	mulw	s5,s5,a5
   105f0:	05812903          	lw	s2,88(sp)
   105f4:	032ac43b          	divw	s0,s5,s2
   105f8:	04812e23          	sw	s0,92(sp)
   105fc:	05c10513          	addi	a0,sp,92
   10600:	b65ff0ef          	jal	10164 <Proc_2>
   10604:	001a0a1b          	addiw	s4,s4,1
   10608:	e94bdee3          	ble	s4,s7,104a4 <main+0x184>
   1060c:	412a8abb          	subw	s5,s5,s2
   10610:	003a979b          	slliw	a5,s5,0x3
   10614:	41578abb          	subw	s5,a5,s5
   10618:	408a843b          	subw	s0,s5,s0
   1061c:	000274b7          	lui	s1,0x27
   10620:	da848513          	addi	a0,s1,-600 # 26da8 <time_info>
   10624:	7390f0ef          	jal	2055c <times>
   10628:	000279b7          	lui	s3,0x27
   1062c:	da84b783          	ld	a5,-600(s1)
   10630:	caf9bc23          	sd	a5,-840(s3) # 26cb8 <End_Time>
   10634:	00021537          	lui	a0,0x21
   10638:	76050513          	addi	a0,a0,1888 # 21760 <zeroes.4123+0x130>
   1063c:	248010ef          	jal	11884 <puts>
   10640:	00a00513          	li	a0,10
   10644:	01c010ef          	jal	11660 <putchar>
   10648:	00021537          	lui	a0,0x21
   1064c:	77050513          	addi	a0,a0,1904 # 21770 <zeroes.4123+0x140>
   10650:	234010ef          	jal	11884 <puts>
   10654:	00a00513          	li	a0,10
   10658:	008010ef          	jal	11660 <putchar>
   1065c:	000277b7          	lui	a5,0x27
   10660:	cc87a583          	lw	a1,-824(a5) # 26cc8 <Int_Glob>
   10664:	00021537          	lui	a0,0x21
   10668:	7a850513          	addi	a0,a0,1960 # 217a8 <zeroes.4123+0x178>
   1066c:	79d000ef          	jal	11608 <printf>
   10670:	00500593          	li	a1,5
   10674:	000214b7          	lui	s1,0x21
   10678:	7c848513          	addi	a0,s1,1992 # 217c8 <zeroes.4123+0x198>
   1067c:	78d000ef          	jal	11608 <printf>
   10680:	000277b7          	lui	a5,0x27
   10684:	da07a583          	lw	a1,-608(a5) # 26da0 <Bool_Glob>
   10688:	00021537          	lui	a0,0x21
   1068c:	7e850513          	addi	a0,a0,2024 # 217e8 <zeroes.4123+0x1b8>
   10690:	779000ef          	jal	11608 <printf>
   10694:	00100593          	li	a1,1
   10698:	7c848513          	addi	a0,s1,1992
   1069c:	76d000ef          	jal	11608 <printf>
   106a0:	000277b7          	lui	a5,0x27
   106a4:	ccc7c583          	lbu	a1,-820(a5) # 26ccc <Ch_1_Glob>
   106a8:	00022537          	lui	a0,0x22
   106ac:	80850513          	addi	a0,a0,-2040 # 21808 <zeroes.4123+0x1d8>
   106b0:	759000ef          	jal	11608 <printf>
   106b4:	04100593          	li	a1,65
   106b8:	00022937          	lui	s2,0x22
   106bc:	82890513          	addi	a0,s2,-2008 # 21828 <zeroes.4123+0x1f8>
   106c0:	749000ef          	jal	11608 <printf>
   106c4:	000277b7          	lui	a5,0x27
   106c8:	ccd7c583          	lbu	a1,-819(a5) # 26ccd <Ch_2_Glob>
   106cc:	00022537          	lui	a0,0x22
   106d0:	84850513          	addi	a0,a0,-1976 # 21848 <zeroes.4123+0x218>
   106d4:	735000ef          	jal	11608 <printf>
   106d8:	04200593          	li	a1,66
   106dc:	82890513          	addi	a0,s2,-2008
   106e0:	729000ef          	jal	11608 <printf>
   106e4:	000277b7          	lui	a5,0x27
   106e8:	cf87a583          	lw	a1,-776(a5) # 26cf8 <Arr_1_Glob+0x20>
   106ec:	00022537          	lui	a0,0x22
   106f0:	86850513          	addi	a0,a0,-1944 # 21868 <zeroes.4123+0x238>
   106f4:	715000ef          	jal	11608 <printf>
   106f8:	00700593          	li	a1,7
   106fc:	7c848513          	addi	a0,s1,1992
   10700:	709000ef          	jal	11608 <printf>
   10704:	0141a583          	lw	a1,20(gp) # 24c04 <_gp+0x14>
   10708:	00022537          	lui	a0,0x22
   1070c:	88850513          	addi	a0,a0,-1912 # 21888 <zeroes.4123+0x258>
   10710:	6f9000ef          	jal	11608 <printf>
   10714:	00022537          	lui	a0,0x22
   10718:	8a850513          	addi	a0,a0,-1880 # 218a8 <zeroes.4123+0x278>
   1071c:	168010ef          	jal	11884 <puts>
   10720:	00022537          	lui	a0,0x22
   10724:	8d850513          	addi	a0,a0,-1832 # 218d8 <zeroes.4123+0x2a8>
   10728:	15c010ef          	jal	11884 <puts>
   1072c:	00027937          	lui	s2,0x27
   10730:	cd093783          	ld	a5,-816(s2) # 26cd0 <Ptr_Glob>
   10734:	0007a583          	lw	a1,0(a5)
   10738:	00022d37          	lui	s10,0x22
   1073c:	8e8d0513          	addi	a0,s10,-1816 # 218e8 <zeroes.4123+0x2b8>
   10740:	6c9000ef          	jal	11608 <printf>
   10744:	00022537          	lui	a0,0x22
   10748:	90850513          	addi	a0,a0,-1784 # 21908 <zeroes.4123+0x2d8>
   1074c:	138010ef          	jal	11884 <puts>
   10750:	cd093783          	ld	a5,-816(s2)
   10754:	0087a583          	lw	a1,8(a5)
   10758:	00022cb7          	lui	s9,0x22
   1075c:	938c8513          	addi	a0,s9,-1736 # 21938 <zeroes.4123+0x308>
   10760:	6a9000ef          	jal	11608 <printf>
   10764:	00000593          	li	a1,0
   10768:	7c848513          	addi	a0,s1,1992
   1076c:	69d000ef          	jal	11608 <printf>
   10770:	cd093783          	ld	a5,-816(s2)
   10774:	00c7a583          	lw	a1,12(a5)
   10778:	00022c37          	lui	s8,0x22
   1077c:	958c0513          	addi	a0,s8,-1704 # 21958 <zeroes.4123+0x328>
   10780:	689000ef          	jal	11608 <printf>
   10784:	00200593          	li	a1,2
   10788:	7c848513          	addi	a0,s1,1992
   1078c:	67d000ef          	jal	11608 <printf>
   10790:	cd093783          	ld	a5,-816(s2)
   10794:	0107a583          	lw	a1,16(a5)
   10798:	00022b37          	lui	s6,0x22
   1079c:	978b0513          	addi	a0,s6,-1672 # 21978 <zeroes.4123+0x348>
   107a0:	669000ef          	jal	11608 <printf>
   107a4:	01100593          	li	a1,17
   107a8:	7c848513          	addi	a0,s1,1992
   107ac:	65d000ef          	jal	11608 <printf>
   107b0:	cd093583          	ld	a1,-816(s2)
   107b4:	01458593          	addi	a1,a1,20
   107b8:	00022ab7          	lui	s5,0x22
   107bc:	998a8513          	addi	a0,s5,-1640 # 21998 <zeroes.4123+0x368>
   107c0:	649000ef          	jal	11608 <printf>
   107c4:	00022a37          	lui	s4,0x22
   107c8:	9b8a0513          	addi	a0,s4,-1608 # 219b8 <zeroes.4123+0x388>
   107cc:	0b8010ef          	jal	11884 <puts>
   107d0:	00022537          	lui	a0,0x22
   107d4:	9f050513          	addi	a0,a0,-1552 # 219f0 <zeroes.4123+0x3c0>
   107d8:	0ac010ef          	jal	11884 <puts>
   107dc:	00027937          	lui	s2,0x27
   107e0:	cc093783          	ld	a5,-832(s2) # 26cc0 <Next_Ptr_Glob>
   107e4:	0007a583          	lw	a1,0(a5)
   107e8:	8e8d0513          	addi	a0,s10,-1816
   107ec:	61d000ef          	jal	11608 <printf>
   107f0:	00022537          	lui	a0,0x22
   107f4:	a0050513          	addi	a0,a0,-1536 # 21a00 <zeroes.4123+0x3d0>
   107f8:	08c010ef          	jal	11884 <puts>
   107fc:	cc093783          	ld	a5,-832(s2)
   10800:	0087a583          	lw	a1,8(a5)
   10804:	938c8513          	addi	a0,s9,-1736
   10808:	601000ef          	jal	11608 <printf>
   1080c:	00000593          	li	a1,0
   10810:	7c848513          	addi	a0,s1,1992
   10814:	5f5000ef          	jal	11608 <printf>
   10818:	cc093783          	ld	a5,-832(s2)
   1081c:	00c7a583          	lw	a1,12(a5)
   10820:	958c0513          	addi	a0,s8,-1704
   10824:	5e5000ef          	jal	11608 <printf>
   10828:	00100593          	li	a1,1
   1082c:	7c848513          	addi	a0,s1,1992
   10830:	5d9000ef          	jal	11608 <printf>
   10834:	cc093783          	ld	a5,-832(s2)
   10838:	0107a583          	lw	a1,16(a5)
   1083c:	978b0513          	addi	a0,s6,-1672
   10840:	5c9000ef          	jal	11608 <printf>
   10844:	01200593          	li	a1,18
   10848:	7c848513          	addi	a0,s1,1992
   1084c:	5bd000ef          	jal	11608 <printf>
   10850:	cc093583          	ld	a1,-832(s2)
   10854:	01458593          	addi	a1,a1,20
   10858:	998a8513          	addi	a0,s5,-1640
   1085c:	5ad000ef          	jal	11608 <printf>
   10860:	9b8a0513          	addi	a0,s4,-1608
   10864:	020010ef          	jal	11884 <puts>
   10868:	05c12583          	lw	a1,92(sp)
   1086c:	00022537          	lui	a0,0x22
   10870:	a4050513          	addi	a0,a0,-1472 # 21a40 <zeroes.4123+0x410>
   10874:	595000ef          	jal	11608 <printf>
   10878:	00500593          	li	a1,5
   1087c:	7c848513          	addi	a0,s1,1992
   10880:	589000ef          	jal	11608 <printf>
   10884:	00040593          	mv	a1,s0
   10888:	00022537          	lui	a0,0x22
   1088c:	a6050513          	addi	a0,a0,-1440 # 21a60 <zeroes.4123+0x430>
   10890:	579000ef          	jal	11608 <printf>
   10894:	00d00593          	li	a1,13
   10898:	7c848513          	addi	a0,s1,1992
   1089c:	56d000ef          	jal	11608 <printf>
   108a0:	05812583          	lw	a1,88(sp)
   108a4:	00022537          	lui	a0,0x22
   108a8:	a8050513          	addi	a0,a0,-1408 # 21a80 <zeroes.4123+0x450>
   108ac:	55d000ef          	jal	11608 <printf>
   108b0:	00700593          	li	a1,7
   108b4:	7c848513          	addi	a0,s1,1992
   108b8:	551000ef          	jal	11608 <printf>
   108bc:	05412583          	lw	a1,84(sp)
   108c0:	00022537          	lui	a0,0x22
   108c4:	aa050513          	addi	a0,a0,-1376 # 21aa0 <zeroes.4123+0x470>
   108c8:	541000ef          	jal	11608 <printf>
   108cc:	00100593          	li	a1,1
   108d0:	7c848513          	addi	a0,s1,1992
   108d4:	535000ef          	jal	11608 <printf>
   108d8:	03010593          	addi	a1,sp,48
   108dc:	00022537          	lui	a0,0x22
   108e0:	ac050513          	addi	a0,a0,-1344 # 21ac0 <zeroes.4123+0x490>
   108e4:	525000ef          	jal	11608 <printf>
   108e8:	00022537          	lui	a0,0x22
   108ec:	ae050513          	addi	a0,a0,-1312 # 21ae0 <zeroes.4123+0x4b0>
   108f0:	795000ef          	jal	11884 <puts>
   108f4:	01010593          	addi	a1,sp,16
   108f8:	00022537          	lui	a0,0x22
   108fc:	b1850513          	addi	a0,a0,-1256 # 21b18 <zeroes.4123+0x4e8>
   10900:	509000ef          	jal	11608 <printf>
   10904:	00022537          	lui	a0,0x22
   10908:	b3850513          	addi	a0,a0,-1224 # 21b38 <zeroes.4123+0x508>
   1090c:	779000ef          	jal	11884 <puts>
   10910:	00a00513          	li	a0,10
   10914:	54d000ef          	jal	11660 <putchar>
   10918:	cb89b783          	ld	a5,-840(s3)
   1091c:	9b01b703          	ld	a4,-1616(gp) # 245a0 <Begin_Time>
   10920:	40e787b3          	sub	a5,a5,a4
   10924:	9af1b423          	sd	a5,-1624(gp) # 24598 <User_Time>
   10928:	07700713          	li	a4,119
   1092c:	02f74463          	blt	a4,a5,10954 <main+0x634>
   10930:	00022537          	lui	a0,0x22
   10934:	b7050513          	addi	a0,a0,-1168 # 21b70 <zeroes.4123+0x540>
   10938:	74d000ef          	jal	11884 <puts>
   1093c:	00022537          	lui	a0,0x22
   10940:	ba850513          	addi	a0,a0,-1112 # 21ba8 <zeroes.4123+0x578>
   10944:	741000ef          	jal	11884 <puts>
   10948:	00a00513          	li	a0,10
   1094c:	515000ef          	jal	11660 <putchar>
   10950:	08c0006f          	j	109dc <main+0x6bc>
   10954:	d027f753          	fcvt.s.l	fa4,a5
   10958:	d00bf6d3          	fcvt.s.w	fa3,s7
   1095c:	000247b7          	lui	a5,0x24
   10960:	4407a787          	flw	fa5,1088(a5) # 24440 <__wctomb+0x10>
   10964:	10f6f7d3          	fmul.s	fa5,fa3,fa5
   10968:	420706d3          	fcvt.d.s	fa3,fa4
   1096c:	000247b7          	lui	a5,0x24
   10970:	4387b607          	fld	fa2,1080(a5) # 24438 <__wctomb+0x8>
   10974:	12c6f6d3          	fmul.d	fa3,fa3,fa2
   10978:	42078653          	fcvt.d.s	fa2,fa5
   1097c:	1ac6f6d3          	fdiv.d	fa3,fa3,fa2
   10980:	4016f6d3          	fcvt.s.d	fa3,fa3
   10984:	9ad1a027          	fsw	fa3,-1632(gp) # 24590 <Microseconds>
   10988:	18e7f7d3          	fdiv.s	fa5,fa5,fa4
   1098c:	9af1a227          	fsw	fa5,-1628(gp) # 24594 <Dhrystones_Per_Second>
   10990:	00022537          	lui	a0,0x22
   10994:	bc850513          	addi	a0,a0,-1080 # 21bc8 <zeroes.4123+0x598>
   10998:	471000ef          	jal	11608 <printf>
   1099c:	9a01a787          	flw	fa5,-1632(gp) # 24590 <Microseconds>
   109a0:	00022437          	lui	s0,0x22
   109a4:	420787d3          	fcvt.d.s	fa5,fa5
   109a8:	e20785d3          	fmv.x.d	a1,fa5
   109ac:	bf840513          	addi	a0,s0,-1032 # 21bf8 <zeroes.4123+0x5c8>
   109b0:	459000ef          	jal	11608 <printf>
   109b4:	00022537          	lui	a0,0x22
   109b8:	c0050513          	addi	a0,a0,-1024 # 21c00 <zeroes.4123+0x5d0>
   109bc:	44d000ef          	jal	11608 <printf>
   109c0:	9a41a787          	flw	fa5,-1628(gp) # 24594 <Dhrystones_Per_Second>
   109c4:	420787d3          	fcvt.d.s	fa5,fa5
   109c8:	e20785d3          	fmv.x.d	a1,fa5
   109cc:	bf840513          	addi	a0,s0,-1032
   109d0:	439000ef          	jal	11608 <printf>
   109d4:	00a00513          	li	a0,10
   109d8:	489000ef          	jal	11660 <putchar>
   109dc:	00000513          	li	a0,0
   109e0:	0c813083          	ld	ra,200(sp)
   109e4:	0c013403          	ld	s0,192(sp)
   109e8:	0b813483          	ld	s1,184(sp)
   109ec:	0b013903          	ld	s2,176(sp)
   109f0:	0a813983          	ld	s3,168(sp)
   109f4:	0a013a03          	ld	s4,160(sp)
   109f8:	09813a83          	ld	s5,152(sp)
   109fc:	09013b03          	ld	s6,144(sp)
   10a00:	08813b83          	ld	s7,136(sp)
   10a04:	08013c03          	ld	s8,128(sp)
   10a08:	07813c83          	ld	s9,120(sp)
   10a0c:	07013d03          	ld	s10,112(sp)
   10a10:	06813d83          	ld	s11,104(sp)
   10a14:	0d010113          	addi	sp,sp,208
   10a18:	00008067          	ret

0000000000010a1c <Proc_6>:
   10a1c:	00200793          	li	a5,2
   10a20:	04f50c63          	beq	a0,a5,10a78 <Proc_6+0x5c>
   10a24:	00300793          	li	a5,3
   10a28:	00f5a023          	sw	a5,0(a1)
   10a2c:	00100793          	li	a5,1
   10a30:	02f50263          	beq	a0,a5,10a54 <Proc_6+0x38>
   10a34:	00050c63          	beqz	a0,10a4c <Proc_6+0x30>
   10a38:	00200793          	li	a5,2
   10a3c:	02f50e63          	beq	a0,a5,10a78 <Proc_6+0x5c>
   10a40:	00400793          	li	a5,4
   10a44:	04f50063          	beq	a0,a5,10a84 <Proc_6+0x68>
   10a48:	00008067          	ret
   10a4c:	0005a023          	sw	zero,0(a1)
   10a50:	00008067          	ret
   10a54:	000277b7          	lui	a5,0x27
   10a58:	cc87a703          	lw	a4,-824(a5) # 26cc8 <Int_Glob>
   10a5c:	06400793          	li	a5,100
   10a60:	00e7d663          	ble	a4,a5,10a6c <Proc_6+0x50>
   10a64:	0005a023          	sw	zero,0(a1)
   10a68:	00008067          	ret
   10a6c:	00300793          	li	a5,3
   10a70:	00f5a023          	sw	a5,0(a1)
   10a74:	00008067          	ret
   10a78:	00100793          	li	a5,1
   10a7c:	00f5a023          	sw	a5,0(a1)
   10a80:	00008067          	ret
   10a84:	00200793          	li	a5,2
   10a88:	00f5a023          	sw	a5,0(a1)
   10a8c:	00008067          	ret

0000000000010a90 <Proc_7>:
   10a90:	0025051b          	addiw	a0,a0,2
   10a94:	00b505bb          	addw	a1,a0,a1
   10a98:	00b62023          	sw	a1,0(a2)
   10a9c:	00008067          	ret

0000000000010aa0 <Proc_8>:
   10aa0:	0056081b          	addiw	a6,a2,5
   10aa4:	00080313          	mv	t1,a6
   10aa8:	00231793          	slli	a5,t1,0x2
   10aac:	00f50533          	add	a0,a0,a5
   10ab0:	00d52023          	sw	a3,0(a0)
   10ab4:	00d52223          	sw	a3,4(a0)
   10ab8:	07052c23          	sw	a6,120(a0)
   10abc:	0066089b          	addiw	a7,a2,6
   10ac0:	0308c463          	blt	a7,a6,10ae8 <Proc_8+0x48>
   10ac4:	0c800693          	li	a3,200
   10ac8:	02d306b3          	mul	a3,t1,a3
   10acc:	00d586b3          	add	a3,a1,a3
   10ad0:	00080713          	mv	a4,a6
   10ad4:	00271793          	slli	a5,a4,0x2
   10ad8:	00f687b3          	add	a5,a3,a5
   10adc:	0107a023          	sw	a6,0(a5)
   10ae0:	0017071b          	addiw	a4,a4,1
   10ae4:	fee8d8e3          	ble	a4,a7,10ad4 <Proc_8+0x34>
   10ae8:	0c800793          	li	a5,200
   10aec:	02f30333          	mul	t1,t1,a5
   10af0:	00261793          	slli	a5,a2,0x2
   10af4:	006787b3          	add	a5,a5,t1
   10af8:	00f587b3          	add	a5,a1,a5
   10afc:	0107a703          	lw	a4,16(a5)
   10b00:	0017071b          	addiw	a4,a4,1
   10b04:	00e7a823          	sw	a4,16(a5)
   10b08:	00052703          	lw	a4,0(a0)
   10b0c:	00658333          	add	t1,a1,t1
   10b10:	000017b7          	lui	a5,0x1
   10b14:	00678333          	add	t1,a5,t1
   10b18:	00281813          	slli	a6,a6,0x2
   10b1c:	01030833          	add	a6,t1,a6
   10b20:	fae82023          	sw	a4,-96(a6)
   10b24:	00500713          	li	a4,5
   10b28:	000277b7          	lui	a5,0x27
   10b2c:	cce7a423          	sw	a4,-824(a5) # 26cc8 <Int_Glob>
   10b30:	00008067          	ret

0000000000010b34 <Func_1>:
   10b34:	0ff57513          	andi	a0,a0,255
   10b38:	0ff5f593          	andi	a1,a1,255
   10b3c:	00b51a63          	bne	a0,a1,10b50 <Func_1+0x1c>
   10b40:	000277b7          	lui	a5,0x27
   10b44:	cca78623          	sb	a0,-820(a5) # 26ccc <Ch_1_Glob>
   10b48:	00100513          	li	a0,1
   10b4c:	00008067          	ret
   10b50:	00000513          	li	a0,0
   10b54:	00008067          	ret

0000000000010b58 <Func_2>:
   10b58:	ff010113          	addi	sp,sp,-16
   10b5c:	00113423          	sd	ra,8(sp)
   10b60:	00813023          	sd	s0,0(sp)
   10b64:	00200413          	li	s0,2
   10b68:	00027637          	lui	a2,0x27
   10b6c:	00040693          	mv	a3,s0
   10b70:	00850733          	add	a4,a0,s0
   10b74:	00074703          	lbu	a4,0(a4)
   10b78:	008587b3          	add	a5,a1,s0
   10b7c:	0017c783          	lbu	a5,1(a5)
   10b80:	02e79863          	bne	a5,a4,10bb0 <Func_2+0x58>
   10b84:	cce60623          	sb	a4,-820(a2) # 26ccc <Ch_1_Glob>
   10b88:	fe86d4e3          	ble	s0,a3,10b70 <Func_2+0x18>
   10b8c:	599000ef          	jal	11924 <strcmp>
   10b90:	00a05c63          	blez	a0,10ba8 <Func_2+0x50>
   10b94:	0074041b          	addiw	s0,s0,7
   10b98:	000277b7          	lui	a5,0x27
   10b9c:	cc87a423          	sw	s0,-824(a5) # 26cc8 <Int_Glob>
   10ba0:	00100513          	li	a0,1
   10ba4:	0140006f          	j	10bb8 <Func_2+0x60>
   10ba8:	00000513          	li	a0,0
   10bac:	00c0006f          	j	10bb8 <Func_2+0x60>
   10bb0:	0014041b          	addiw	s0,s0,1
   10bb4:	fd5ff06f          	j	10b88 <Func_2+0x30>
   10bb8:	00813083          	ld	ra,8(sp)
   10bbc:	00013403          	ld	s0,0(sp)
   10bc0:	01010113          	addi	sp,sp,16
   10bc4:	00008067          	ret

0000000000010bc8 <Func_3>:
   10bc8:	ffe5051b          	addiw	a0,a0,-2
   10bcc:	00153513          	seqz	a0,a0
   10bd0:	00008067          	ret

0000000000010bd4 <atexit>:
   10bd4:	00050593          	mv	a1,a0
   10bd8:	00000693          	li	a3,0
   10bdc:	00000613          	li	a2,0
   10be0:	00000513          	li	a0,0
   10be4:	12c0406f          	j	14d10 <__register_exitproc>

0000000000010be8 <exit>:
   10be8:	ff010113          	addi	sp,sp,-16
   10bec:	00000593          	li	a1,0
   10bf0:	00813023          	sd	s0,0(sp)
   10bf4:	00113423          	sd	ra,8(sp)
   10bf8:	00050413          	mv	s0,a0
   10bfc:	224040ef          	jal	14e20 <__call_exitprocs>
   10c00:	8081b503          	ld	a0,-2040(gp) # 243f8 <_global_impure_ptr>
   10c04:	05853783          	ld	a5,88(a0)
   10c08:	00078463          	beqz	a5,10c10 <exit+0x28>
   10c0c:	000780e7          	jalr	a5
   10c10:	00040513          	mv	a0,s0
   10c14:	2a10f0ef          	jal	206b4 <_exit>

0000000000010c18 <__libc_fini_array>:
   10c18:	fe010113          	addi	sp,sp,-32
   10c1c:	00813823          	sd	s0,16(sp)
   10c20:	00913423          	sd	s1,8(sp)
   10c24:	00022437          	lui	s0,0x22
   10c28:	000224b7          	lui	s1,0x22
   10c2c:	d5048493          	addi	s1,s1,-688 # 21d50 <__init_array_end>
   10c30:	d5840413          	addi	s0,s0,-680 # 21d58 <__fini_array_end>
   10c34:	40940433          	sub	s0,s0,s1
   10c38:	ff840793          	addi	a5,s0,-8
   10c3c:	00113c23          	sd	ra,24(sp)
   10c40:	40345413          	srai	s0,s0,0x3
   10c44:	009784b3          	add	s1,a5,s1
   10c48:	00040c63          	beqz	s0,10c60 <__libc_fini_array+0x48>
   10c4c:	0004b783          	ld	a5,0(s1)
   10c50:	fff40413          	addi	s0,s0,-1
   10c54:	ff848493          	addi	s1,s1,-8
   10c58:	000780e7          	jalr	a5
   10c5c:	fe0418e3          	bnez	s0,10c4c <__libc_fini_array+0x34>
   10c60:	01813083          	ld	ra,24(sp)
   10c64:	01013403          	ld	s0,16(sp)
   10c68:	00813483          	ld	s1,8(sp)
   10c6c:	02010113          	addi	sp,sp,32
   10c70:	bd8ff06f          	j	10048 <_fini>

0000000000010c74 <__libc_init_array>:
   10c74:	fe010113          	addi	sp,sp,-32
   10c78:	00813823          	sd	s0,16(sp)
   10c7c:	000227b7          	lui	a5,0x22
   10c80:	00022437          	lui	s0,0x22
   10c84:	01213023          	sd	s2,0(sp)
   10c88:	d4878793          	addi	a5,a5,-696 # 21d48 <_etext>
   10c8c:	d4840913          	addi	s2,s0,-696 # 21d48 <_etext>
   10c90:	41278933          	sub	s2,a5,s2
   10c94:	00913423          	sd	s1,8(sp)
   10c98:	00113c23          	sd	ra,24(sp)
   10c9c:	40395913          	srai	s2,s2,0x3
   10ca0:	d4840413          	addi	s0,s0,-696
   10ca4:	00000493          	li	s1,0
   10ca8:	00090c63          	beqz	s2,10cc0 <__libc_init_array+0x4c>
   10cac:	00043783          	ld	a5,0(s0)
   10cb0:	00148493          	addi	s1,s1,1
   10cb4:	00840413          	addi	s0,s0,8
   10cb8:	000780e7          	jalr	a5
   10cbc:	fe9918e3          	bne	s2,s1,10cac <__libc_init_array+0x38>
   10cc0:	b88ff0ef          	jal	10048 <_fini>
   10cc4:	00022437          	lui	s0,0x22
   10cc8:	000227b7          	lui	a5,0x22
   10ccc:	d4840913          	addi	s2,s0,-696 # 21d48 <_etext>
   10cd0:	d5078793          	addi	a5,a5,-688 # 21d50 <__init_array_end>
   10cd4:	41278933          	sub	s2,a5,s2
   10cd8:	40395913          	srai	s2,s2,0x3
   10cdc:	d4840413          	addi	s0,s0,-696
   10ce0:	00000493          	li	s1,0
   10ce4:	00090c63          	beqz	s2,10cfc <__libc_init_array+0x88>
   10ce8:	00043783          	ld	a5,0(s0)
   10cec:	00148493          	addi	s1,s1,1
   10cf0:	00840413          	addi	s0,s0,8
   10cf4:	000780e7          	jalr	a5
   10cf8:	fe9918e3          	bne	s2,s1,10ce8 <__libc_init_array+0x74>
   10cfc:	01813083          	ld	ra,24(sp)
   10d00:	01013403          	ld	s0,16(sp)
   10d04:	00813483          	ld	s1,8(sp)
   10d08:	00013903          	ld	s2,0(sp)
   10d0c:	02010113          	addi	sp,sp,32
   10d10:	00008067          	ret

0000000000010d14 <malloc>:
   10d14:	00050593          	mv	a1,a0
   10d18:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   10d1c:	0100006f          	j	10d2c <_malloc_r>

0000000000010d20 <free>:
   10d20:	00050593          	mv	a1,a0
   10d24:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   10d28:	74d0506f          	j	16c74 <_free_r>

0000000000010d2c <_malloc_r>:
   10d2c:	fa010113          	addi	sp,sp,-96
   10d30:	04913423          	sd	s1,72(sp)
   10d34:	03313c23          	sd	s3,56(sp)
   10d38:	04113c23          	sd	ra,88(sp)
   10d3c:	04813823          	sd	s0,80(sp)
   10d40:	05213023          	sd	s2,64(sp)
   10d44:	03413823          	sd	s4,48(sp)
   10d48:	03513423          	sd	s5,40(sp)
   10d4c:	03613023          	sd	s6,32(sp)
   10d50:	01713c23          	sd	s7,24(sp)
   10d54:	01813823          	sd	s8,16(sp)
   10d58:	01913423          	sd	s9,8(sp)
   10d5c:	01758493          	addi	s1,a1,23
   10d60:	02e00793          	li	a5,46
   10d64:	00050993          	mv	s3,a0
   10d68:	1c97fa63          	bleu	s1,a5,10f3c <_malloc_r+0x210>
   10d6c:	800007b7          	lui	a5,0x80000
   10d70:	ff04f493          	andi	s1,s1,-16
   10d74:	fff7c793          	not	a5,a5
   10d78:	2497ee63          	bltu	a5,s1,10fd4 <_malloc_r+0x2a8>
   10d7c:	24b4ec63          	bltu	s1,a1,10fd4 <_malloc_r+0x2a8>
   10d80:	03d000ef          	jal	115bc <__malloc_lock>
   10d84:	1f700793          	li	a5,503
   10d88:	7097f063          	bleu	s1,a5,11488 <_malloc_r+0x75c>
   10d8c:	0094d793          	srli	a5,s1,0x9
   10d90:	08000693          	li	a3,128
   10d94:	04000513          	li	a0,64
   10d98:	03f00593          	li	a1,63
   10d9c:	24079463          	bnez	a5,10fe4 <_malloc_r+0x2b8>
   10da0:	00024937          	lui	s2,0x24
   10da4:	b3890913          	addi	s2,s2,-1224 # 23b38 <__malloc_av_>
   10da8:	00369693          	slli	a3,a3,0x3
   10dac:	00d906b3          	add	a3,s2,a3
   10db0:	0086b403          	ld	s0,8(a3)
   10db4:	ff068693          	addi	a3,a3,-16
   10db8:	24868663          	beq	a3,s0,11004 <_malloc_r+0x2d8>
   10dbc:	00843783          	ld	a5,8(s0)
   10dc0:	01f00613          	li	a2,31
   10dc4:	ffc7f793          	andi	a5,a5,-4
   10dc8:	40978733          	sub	a4,a5,s1
   10dcc:	02e64063          	blt	a2,a4,10dec <_malloc_r+0xc0>
   10dd0:	22075e63          	bgez	a4,1100c <_malloc_r+0x2e0>
   10dd4:	01843403          	ld	s0,24(s0)
   10dd8:	22868663          	beq	a3,s0,11004 <_malloc_r+0x2d8>
   10ddc:	00843783          	ld	a5,8(s0)
   10de0:	ffc7f793          	andi	a5,a5,-4
   10de4:	40978733          	sub	a4,a5,s1
   10de8:	fee654e3          	ble	a4,a2,10dd0 <_malloc_r+0xa4>
   10dec:	00058693          	mv	a3,a1
   10df0:	02093403          	ld	s0,32(s2)
   10df4:	01090813          	addi	a6,s2,16
   10df8:	47040a63          	beq	s0,a6,1126c <_malloc_r+0x540>
   10dfc:	00843783          	ld	a5,8(s0)
   10e00:	01f00613          	li	a2,31
   10e04:	ffc7f793          	andi	a5,a5,-4
   10e08:	40978733          	sub	a4,a5,s1
   10e0c:	44e64a63          	blt	a2,a4,11260 <_malloc_r+0x534>
   10e10:	03093423          	sd	a6,40(s2)
   10e14:	03093023          	sd	a6,32(s2)
   10e18:	20075063          	bgez	a4,11018 <_malloc_r+0x2ec>
   10e1c:	1ff00713          	li	a4,511
   10e20:	3cf76c63          	bltu	a4,a5,111f8 <_malloc_r+0x4cc>
   10e24:	0037d793          	srli	a5,a5,0x3
   10e28:	0007879b          	sext.w	a5,a5
   10e2c:	0017861b          	addiw	a2,a5,1
   10e30:	0016161b          	slliw	a2,a2,0x1
   10e34:	00361613          	slli	a2,a2,0x3
   10e38:	00893703          	ld	a4,8(s2)
   10e3c:	00c90633          	add	a2,s2,a2
   10e40:	00063503          	ld	a0,0(a2)
   10e44:	4027d79b          	sraiw	a5,a5,0x2
   10e48:	00100593          	li	a1,1
   10e4c:	00f597b3          	sll	a5,a1,a5
   10e50:	00e7e7b3          	or	a5,a5,a4
   10e54:	ff060713          	addi	a4,a2,-16
   10e58:	00e43c23          	sd	a4,24(s0)
   10e5c:	00a43823          	sd	a0,16(s0)
   10e60:	00f93423          	sd	a5,8(s2)
   10e64:	00863023          	sd	s0,0(a2)
   10e68:	00853c23          	sd	s0,24(a0)
   10e6c:	4026d61b          	sraiw	a2,a3,0x2
   10e70:	00100713          	li	a4,1
   10e74:	00c71633          	sll	a2,a4,a2
   10e78:	1cc7e063          	bltu	a5,a2,11038 <_malloc_r+0x30c>
   10e7c:	00f67733          	and	a4,a2,a5
   10e80:	02071463          	bnez	a4,10ea8 <_malloc_r+0x17c>
   10e84:	00161613          	slli	a2,a2,0x1
   10e88:	ffc6f693          	andi	a3,a3,-4
   10e8c:	00f67733          	and	a4,a2,a5
   10e90:	0046869b          	addiw	a3,a3,4
   10e94:	00071a63          	bnez	a4,10ea8 <_malloc_r+0x17c>
   10e98:	00161613          	slli	a2,a2,0x1
   10e9c:	00f67733          	and	a4,a2,a5
   10ea0:	0046869b          	addiw	a3,a3,4
   10ea4:	fe070ae3          	beqz	a4,10e98 <_malloc_r+0x16c>
   10ea8:	01f00513          	li	a0,31
   10eac:	0016889b          	addiw	a7,a3,1
   10eb0:	0018989b          	slliw	a7,a7,0x1
   10eb4:	00389893          	slli	a7,a7,0x3
   10eb8:	011908b3          	add	a7,s2,a7
   10ebc:	ff088893          	addi	a7,a7,-16
   10ec0:	00088593          	mv	a1,a7
   10ec4:	00068313          	mv	t1,a3
   10ec8:	0185b403          	ld	s0,24(a1)
   10ecc:	00859a63          	bne	a1,s0,10ee0 <_malloc_r+0x1b4>
   10ed0:	3a40006f          	j	11274 <_malloc_r+0x548>
   10ed4:	3c075263          	bgez	a4,11298 <_malloc_r+0x56c>
   10ed8:	01843403          	ld	s0,24(s0)
   10edc:	38858c63          	beq	a1,s0,11274 <_malloc_r+0x548>
   10ee0:	00843783          	ld	a5,8(s0)
   10ee4:	ffc7f793          	andi	a5,a5,-4
   10ee8:	40978733          	sub	a4,a5,s1
   10eec:	fee554e3          	ble	a4,a0,10ed4 <_malloc_r+0x1a8>
   10ef0:	01843783          	ld	a5,24(s0)
   10ef4:	01043683          	ld	a3,16(s0)
   10ef8:	0014e613          	ori	a2,s1,1
   10efc:	00c43423          	sd	a2,8(s0)
   10f00:	00f6bc23          	sd	a5,24(a3)
   10f04:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_end+0xffffffff7ffd9248>
   10f08:	009404b3          	add	s1,s0,s1
   10f0c:	02993423          	sd	s1,40(s2)
   10f10:	02993023          	sd	s1,32(s2)
   10f14:	00176793          	ori	a5,a4,1
   10f18:	0104bc23          	sd	a6,24(s1)
   10f1c:	0104b823          	sd	a6,16(s1)
   10f20:	00f4b423          	sd	a5,8(s1)
   10f24:	00e484b3          	add	s1,s1,a4
   10f28:	00098513          	mv	a0,s3
   10f2c:	00e4b023          	sd	a4,0(s1)
   10f30:	690000ef          	jal	115c0 <__malloc_unlock>
   10f34:	01040513          	addi	a0,s0,16
   10f38:	0680006f          	j	10fa0 <_malloc_r+0x274>
   10f3c:	02000493          	li	s1,32
   10f40:	08b4ea63          	bltu	s1,a1,10fd4 <_malloc_r+0x2a8>
   10f44:	678000ef          	jal	115bc <__malloc_lock>
   10f48:	00a00793          	li	a5,10
   10f4c:	00400693          	li	a3,4
   10f50:	00024937          	lui	s2,0x24
   10f54:	b3890913          	addi	s2,s2,-1224 # 23b38 <__malloc_av_>
   10f58:	00379793          	slli	a5,a5,0x3
   10f5c:	00f907b3          	add	a5,s2,a5
   10f60:	0087b403          	ld	s0,8(a5)
   10f64:	ff078713          	addi	a4,a5,-16
   10f68:	32e40063          	beq	s0,a4,11288 <_malloc_r+0x55c>
   10f6c:	00843783          	ld	a5,8(s0)
   10f70:	01843683          	ld	a3,24(s0)
   10f74:	01043603          	ld	a2,16(s0)
   10f78:	ffc7f793          	andi	a5,a5,-4
   10f7c:	00f407b3          	add	a5,s0,a5
   10f80:	0087b703          	ld	a4,8(a5)
   10f84:	00d63c23          	sd	a3,24(a2)
   10f88:	00c6b823          	sd	a2,16(a3)
   10f8c:	00176713          	ori	a4,a4,1
   10f90:	00098513          	mv	a0,s3
   10f94:	00e7b423          	sd	a4,8(a5)
   10f98:	628000ef          	jal	115c0 <__malloc_unlock>
   10f9c:	01040513          	addi	a0,s0,16
   10fa0:	05813083          	ld	ra,88(sp)
   10fa4:	05013403          	ld	s0,80(sp)
   10fa8:	04813483          	ld	s1,72(sp)
   10fac:	04013903          	ld	s2,64(sp)
   10fb0:	03813983          	ld	s3,56(sp)
   10fb4:	03013a03          	ld	s4,48(sp)
   10fb8:	02813a83          	ld	s5,40(sp)
   10fbc:	02013b03          	ld	s6,32(sp)
   10fc0:	01813b83          	ld	s7,24(sp)
   10fc4:	01013c03          	ld	s8,16(sp)
   10fc8:	00813c83          	ld	s9,8(sp)
   10fcc:	06010113          	addi	sp,sp,96
   10fd0:	00008067          	ret
   10fd4:	00c00793          	li	a5,12
   10fd8:	00f9a023          	sw	a5,0(s3)
   10fdc:	00000513          	li	a0,0
   10fe0:	fc1ff06f          	j	10fa0 <_malloc_r+0x274>
   10fe4:	00400713          	li	a4,4
   10fe8:	1ef76463          	bltu	a4,a5,111d0 <_malloc_r+0x4a4>
   10fec:	0064d593          	srli	a1,s1,0x6
   10ff0:	0005859b          	sext.w	a1,a1
   10ff4:	0395851b          	addiw	a0,a1,57
   10ff8:	0015169b          	slliw	a3,a0,0x1
   10ffc:	0385859b          	addiw	a1,a1,56
   11000:	da1ff06f          	j	10da0 <_malloc_r+0x74>
   11004:	00050693          	mv	a3,a0
   11008:	de9ff06f          	j	10df0 <_malloc_r+0xc4>
   1100c:	01843683          	ld	a3,24(s0)
   11010:	01043603          	ld	a2,16(s0)
   11014:	f69ff06f          	j	10f7c <_malloc_r+0x250>
   11018:	00f407b3          	add	a5,s0,a5
   1101c:	0087b703          	ld	a4,8(a5)
   11020:	00098513          	mv	a0,s3
   11024:	00176713          	ori	a4,a4,1
   11028:	00e7b423          	sd	a4,8(a5)
   1102c:	594000ef          	jal	115c0 <__malloc_unlock>
   11030:	01040513          	addi	a0,s0,16
   11034:	f6dff06f          	j	10fa0 <_malloc_r+0x274>
   11038:	01093403          	ld	s0,16(s2)
   1103c:	00843703          	ld	a4,8(s0)
   11040:	ffc77b93          	andi	s7,a4,-4
   11044:	009be863          	bltu	s7,s1,11054 <_malloc_r+0x328>
   11048:	409b87b3          	sub	a5,s7,s1
   1104c:	01f00713          	li	a4,31
   11050:	14f74c63          	blt	a4,a5,111a8 <_malloc_r+0x47c>
   11054:	9101b783          	ld	a5,-1776(gp) # 24500 <__malloc_top_pad>
   11058:	8181b683          	ld	a3,-2024(gp) # 24408 <__malloc_sbrk_base>
   1105c:	fff00713          	li	a4,-1
   11060:	00f487b3          	add	a5,s1,a5
   11064:	01740a33          	add	s4,s0,s7
   11068:	02078b13          	addi	s6,a5,32
   1106c:	00e68c63          	beq	a3,a4,11084 <_malloc_r+0x358>
   11070:	00001b37          	lui	s6,0x1
   11074:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   11078:	01678b33          	add	s6,a5,s6
   1107c:	fffff7b7          	lui	a5,0xfffff
   11080:	00fb7b33          	and	s6,s6,a5
   11084:	000b0513          	mv	a0,s6
   11088:	5d80f0ef          	jal	20660 <sbrk>
   1108c:	fff00793          	li	a5,-1
   11090:	00050a93          	mv	s5,a0
   11094:	26f50263          	beq	a0,a5,112f8 <_malloc_r+0x5cc>
   11098:	25456e63          	bltu	a0,s4,112f4 <_malloc_r+0x5c8>
   1109c:	96818c13          	addi	s8,gp,-1688 # 24558 <__malloc_current_mallinfo>
   110a0:	000c2783          	lw	a5,0(s8)
   110a4:	00fb07bb          	addw	a5,s6,a5
   110a8:	00fc2023          	sw	a5,0(s8)
   110ac:	355a0463          	beq	s4,s5,113f4 <_malloc_r+0x6c8>
   110b0:	8181b683          	ld	a3,-2024(gp) # 24408 <__malloc_sbrk_base>
   110b4:	fff00713          	li	a4,-1
   110b8:	36e68263          	beq	a3,a4,1141c <_malloc_r+0x6f0>
   110bc:	414a8a33          	sub	s4,s5,s4
   110c0:	00fa07bb          	addw	a5,s4,a5
   110c4:	00fc2023          	sw	a5,0(s8)
   110c8:	00faf713          	andi	a4,s5,15
   110cc:	000017b7          	lui	a5,0x1
   110d0:	00070a63          	beqz	a4,110e4 <_malloc_r+0x3b8>
   110d4:	40ea8ab3          	sub	s5,s5,a4
   110d8:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   110dc:	010a8a93          	addi	s5,s5,16
   110e0:	40ea07b3          	sub	a5,s4,a4
   110e4:	00001a37          	lui	s4,0x1
   110e8:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   110ec:	016a8b33          	add	s6,s5,s6
   110f0:	014b7b33          	and	s6,s6,s4
   110f4:	41678a33          	sub	s4,a5,s6
   110f8:	000a0513          	mv	a0,s4
   110fc:	5640f0ef          	jal	20660 <sbrk>
   11100:	fff00793          	li	a5,-1
   11104:	30f50663          	beq	a0,a5,11410 <_malloc_r+0x6e4>
   11108:	41550733          	sub	a4,a0,s5
   1110c:	01470733          	add	a4,a4,s4
   11110:	00176713          	ori	a4,a4,1
   11114:	000a0a1b          	sext.w	s4,s4
   11118:	000c2783          	lw	a5,0(s8)
   1111c:	01593823          	sd	s5,16(s2)
   11120:	00eab423          	sd	a4,8(s5)
   11124:	00fa07bb          	addw	a5,s4,a5
   11128:	00fc2023          	sw	a5,0(s8)
   1112c:	03240c63          	beq	s0,s2,11164 <_malloc_r+0x438>
   11130:	01f00613          	li	a2,31
   11134:	27767463          	bleu	s7,a2,1139c <_malloc_r+0x670>
   11138:	00843683          	ld	a3,8(s0)
   1113c:	fe8b8713          	addi	a4,s7,-24
   11140:	ff077713          	andi	a4,a4,-16
   11144:	0016f693          	andi	a3,a3,1
   11148:	00e6e6b3          	or	a3,a3,a4
   1114c:	00d43423          	sd	a3,8(s0)
   11150:	00900593          	li	a1,9
   11154:	00e406b3          	add	a3,s0,a4
   11158:	00b6b423          	sd	a1,8(a3)
   1115c:	00b6b823          	sd	a1,16(a3)
   11160:	2ce66263          	bltu	a2,a4,11424 <_malloc_r+0x6f8>
   11164:	9081b683          	ld	a3,-1784(gp) # 244f8 <__malloc_max_sbrked_mem>
   11168:	00f6f463          	bleu	a5,a3,11170 <_malloc_r+0x444>
   1116c:	90f1b423          	sd	a5,-1784(gp) # 244f8 <__malloc_max_sbrked_mem>
   11170:	9001b683          	ld	a3,-1792(gp) # 244f0 <__malloc_max_total_mem>
   11174:	01093403          	ld	s0,16(s2)
   11178:	00f6f463          	bleu	a5,a3,11180 <_malloc_r+0x454>
   1117c:	90f1b023          	sd	a5,-1792(gp) # 244f0 <__malloc_max_total_mem>
   11180:	00843703          	ld	a4,8(s0)
   11184:	ffc77713          	andi	a4,a4,-4
   11188:	409707b3          	sub	a5,a4,s1
   1118c:	00976663          	bltu	a4,s1,11198 <_malloc_r+0x46c>
   11190:	01f00713          	li	a4,31
   11194:	00f74a63          	blt	a4,a5,111a8 <_malloc_r+0x47c>
   11198:	00098513          	mv	a0,s3
   1119c:	424000ef          	jal	115c0 <__malloc_unlock>
   111a0:	00000513          	li	a0,0
   111a4:	dfdff06f          	j	10fa0 <_malloc_r+0x274>
   111a8:	0014e713          	ori	a4,s1,1
   111ac:	00e43423          	sd	a4,8(s0)
   111b0:	009404b3          	add	s1,s0,s1
   111b4:	00993823          	sd	s1,16(s2)
   111b8:	0017e793          	ori	a5,a5,1
   111bc:	00098513          	mv	a0,s3
   111c0:	00f4b423          	sd	a5,8(s1)
   111c4:	3fc000ef          	jal	115c0 <__malloc_unlock>
   111c8:	01040513          	addi	a0,s0,16
   111cc:	dd5ff06f          	j	10fa0 <_malloc_r+0x274>
   111d0:	01400713          	li	a4,20
   111d4:	0ef77a63          	bleu	a5,a4,112c8 <_malloc_r+0x59c>
   111d8:	05400713          	li	a4,84
   111dc:	18f76063          	bltu	a4,a5,1135c <_malloc_r+0x630>
   111e0:	00c4d593          	srli	a1,s1,0xc
   111e4:	0005859b          	sext.w	a1,a1
   111e8:	06f5851b          	addiw	a0,a1,111
   111ec:	0015169b          	slliw	a3,a0,0x1
   111f0:	06e5859b          	addiw	a1,a1,110
   111f4:	badff06f          	j	10da0 <_malloc_r+0x74>
   111f8:	0097d713          	srli	a4,a5,0x9
   111fc:	00400613          	li	a2,4
   11200:	0ce67e63          	bleu	a4,a2,112dc <_malloc_r+0x5b0>
   11204:	01400613          	li	a2,20
   11208:	1ce66663          	bltu	a2,a4,113d4 <_malloc_r+0x6a8>
   1120c:	0007071b          	sext.w	a4,a4
   11210:	05c7059b          	addiw	a1,a4,92
   11214:	05b7061b          	addiw	a2,a4,91
   11218:	0015959b          	slliw	a1,a1,0x1
   1121c:	00359593          	slli	a1,a1,0x3
   11220:	00b905b3          	add	a1,s2,a1
   11224:	0005b703          	ld	a4,0(a1)
   11228:	ff058593          	addi	a1,a1,-16
   1122c:	14e58863          	beq	a1,a4,1137c <_malloc_r+0x650>
   11230:	00873603          	ld	a2,8(a4)
   11234:	ffc67613          	andi	a2,a2,-4
   11238:	00c7f663          	bleu	a2,a5,11244 <_malloc_r+0x518>
   1123c:	01073703          	ld	a4,16(a4)
   11240:	fee598e3          	bne	a1,a4,11230 <_malloc_r+0x504>
   11244:	01873583          	ld	a1,24(a4)
   11248:	00893783          	ld	a5,8(s2)
   1124c:	00b43c23          	sd	a1,24(s0)
   11250:	00e43823          	sd	a4,16(s0)
   11254:	0085b823          	sd	s0,16(a1)
   11258:	00873c23          	sd	s0,24(a4)
   1125c:	c11ff06f          	j	10e6c <_malloc_r+0x140>
   11260:	0014e793          	ori	a5,s1,1
   11264:	00f43423          	sd	a5,8(s0)
   11268:	ca1ff06f          	j	10f08 <_malloc_r+0x1dc>
   1126c:	00893783          	ld	a5,8(s2)
   11270:	bfdff06f          	j	10e6c <_malloc_r+0x140>
   11274:	0013031b          	addiw	t1,t1,1
   11278:	00337793          	andi	a5,t1,3
   1127c:	01058593          	addi	a1,a1,16
   11280:	c40794e3          	bnez	a5,10ec8 <_malloc_r+0x19c>
   11284:	0900006f          	j	11314 <_malloc_r+0x5e8>
   11288:	0187b403          	ld	s0,24(a5)
   1128c:	0026869b          	addiw	a3,a3,2
   11290:	b68780e3          	beq	a5,s0,10df0 <_malloc_r+0xc4>
   11294:	cd9ff06f          	j	10f6c <_malloc_r+0x240>
   11298:	00f407b3          	add	a5,s0,a5
   1129c:	0087b703          	ld	a4,8(a5)
   112a0:	01843683          	ld	a3,24(s0)
   112a4:	01043603          	ld	a2,16(s0)
   112a8:	00176713          	ori	a4,a4,1
   112ac:	00e7b423          	sd	a4,8(a5)
   112b0:	00d63c23          	sd	a3,24(a2)
   112b4:	00098513          	mv	a0,s3
   112b8:	00c6b823          	sd	a2,16(a3)
   112bc:	304000ef          	jal	115c0 <__malloc_unlock>
   112c0:	01040513          	addi	a0,s0,16
   112c4:	cddff06f          	j	10fa0 <_malloc_r+0x274>
   112c8:	0007879b          	sext.w	a5,a5
   112cc:	05c7851b          	addiw	a0,a5,92
   112d0:	05b7859b          	addiw	a1,a5,91
   112d4:	0015169b          	slliw	a3,a0,0x1
   112d8:	ac9ff06f          	j	10da0 <_malloc_r+0x74>
   112dc:	0067d713          	srli	a4,a5,0x6
   112e0:	0007071b          	sext.w	a4,a4
   112e4:	0397059b          	addiw	a1,a4,57
   112e8:	0387061b          	addiw	a2,a4,56
   112ec:	0015959b          	slliw	a1,a1,0x1
   112f0:	f2dff06f          	j	1121c <_malloc_r+0x4f0>
   112f4:	db2404e3          	beq	s0,s2,1109c <_malloc_r+0x370>
   112f8:	01093403          	ld	s0,16(s2)
   112fc:	00843703          	ld	a4,8(s0)
   11300:	ffc77713          	andi	a4,a4,-4
   11304:	e85ff06f          	j	11188 <_malloc_r+0x45c>
   11308:	0108b783          	ld	a5,16(a7)
   1130c:	fff6869b          	addiw	a3,a3,-1
   11310:	16f89863          	bne	a7,a5,11480 <_malloc_r+0x754>
   11314:	0036f793          	andi	a5,a3,3
   11318:	ff088893          	addi	a7,a7,-16
   1131c:	fe0796e3          	bnez	a5,11308 <_malloc_r+0x5dc>
   11320:	00893783          	ld	a5,8(s2)
   11324:	fff64713          	not	a4,a2
   11328:	00f777b3          	and	a5,a4,a5
   1132c:	00f93423          	sd	a5,8(s2)
   11330:	00161613          	slli	a2,a2,0x1
   11334:	d0c7e2e3          	bltu	a5,a2,11038 <_malloc_r+0x30c>
   11338:	d00600e3          	beqz	a2,11038 <_malloc_r+0x30c>
   1133c:	00f67733          	and	a4,a2,a5
   11340:	00030693          	mv	a3,t1
   11344:	b60714e3          	bnez	a4,10eac <_malloc_r+0x180>
   11348:	00161613          	slli	a2,a2,0x1
   1134c:	00f67733          	and	a4,a2,a5
   11350:	0046869b          	addiw	a3,a3,4
   11354:	fe070ae3          	beqz	a4,11348 <_malloc_r+0x61c>
   11358:	b55ff06f          	j	10eac <_malloc_r+0x180>
   1135c:	15400713          	li	a4,340
   11360:	04f76463          	bltu	a4,a5,113a8 <_malloc_r+0x67c>
   11364:	00f4d593          	srli	a1,s1,0xf
   11368:	0005859b          	sext.w	a1,a1
   1136c:	0785851b          	addiw	a0,a1,120
   11370:	0015169b          	slliw	a3,a0,0x1
   11374:	0775859b          	addiw	a1,a1,119
   11378:	a29ff06f          	j	10da0 <_malloc_r+0x74>
   1137c:	00893783          	ld	a5,8(s2)
   11380:	4026571b          	sraiw	a4,a2,0x2
   11384:	00100613          	li	a2,1
   11388:	00e61733          	sll	a4,a2,a4
   1138c:	00f767b3          	or	a5,a4,a5
   11390:	00f93423          	sd	a5,8(s2)
   11394:	00058713          	mv	a4,a1
   11398:	eb5ff06f          	j	1124c <_malloc_r+0x520>
   1139c:	00100793          	li	a5,1
   113a0:	00fab423          	sd	a5,8(s5)
   113a4:	df5ff06f          	j	11198 <_malloc_r+0x46c>
   113a8:	55400713          	li	a4,1364
   113ac:	0fe00693          	li	a3,254
   113b0:	07f00513          	li	a0,127
   113b4:	07e00593          	li	a1,126
   113b8:	9ef764e3          	bltu	a4,a5,10da0 <_malloc_r+0x74>
   113bc:	0124d593          	srli	a1,s1,0x12
   113c0:	0005859b          	sext.w	a1,a1
   113c4:	07d5851b          	addiw	a0,a1,125
   113c8:	0015169b          	slliw	a3,a0,0x1
   113cc:	07c5859b          	addiw	a1,a1,124
   113d0:	9d1ff06f          	j	10da0 <_malloc_r+0x74>
   113d4:	05400613          	li	a2,84
   113d8:	06e66063          	bltu	a2,a4,11438 <_malloc_r+0x70c>
   113dc:	00c7d713          	srli	a4,a5,0xc
   113e0:	0007071b          	sext.w	a4,a4
   113e4:	06f7059b          	addiw	a1,a4,111
   113e8:	06e7061b          	addiw	a2,a4,110
   113ec:	0015959b          	slliw	a1,a1,0x1
   113f0:	e2dff06f          	j	1121c <_malloc_r+0x4f0>
   113f4:	034a1713          	slli	a4,s4,0x34
   113f8:	ca071ce3          	bnez	a4,110b0 <_malloc_r+0x384>
   113fc:	01093683          	ld	a3,16(s2)
   11400:	016b8733          	add	a4,s7,s6
   11404:	00176713          	ori	a4,a4,1
   11408:	00e6b423          	sd	a4,8(a3)
   1140c:	d59ff06f          	j	11164 <_malloc_r+0x438>
   11410:	00100713          	li	a4,1
   11414:	00000a13          	li	s4,0
   11418:	d01ff06f          	j	11118 <_malloc_r+0x3ec>
   1141c:	8151bc23          	sd	s5,-2024(gp) # 24408 <__malloc_sbrk_base>
   11420:	ca9ff06f          	j	110c8 <_malloc_r+0x39c>
   11424:	01040593          	addi	a1,s0,16
   11428:	00098513          	mv	a0,s3
   1142c:	049050ef          	jal	16c74 <_free_r>
   11430:	000c2783          	lw	a5,0(s8)
   11434:	d31ff06f          	j	11164 <_malloc_r+0x438>
   11438:	15400613          	li	a2,340
   1143c:	00e66e63          	bltu	a2,a4,11458 <_malloc_r+0x72c>
   11440:	00f7d713          	srli	a4,a5,0xf
   11444:	0007071b          	sext.w	a4,a4
   11448:	0787059b          	addiw	a1,a4,120
   1144c:	0777061b          	addiw	a2,a4,119
   11450:	0015959b          	slliw	a1,a1,0x1
   11454:	dc9ff06f          	j	1121c <_malloc_r+0x4f0>
   11458:	55400513          	li	a0,1364
   1145c:	0fe00593          	li	a1,254
   11460:	07e00613          	li	a2,126
   11464:	dae56ce3          	bltu	a0,a4,1121c <_malloc_r+0x4f0>
   11468:	0127d713          	srli	a4,a5,0x12
   1146c:	0007071b          	sext.w	a4,a4
   11470:	07d7059b          	addiw	a1,a4,125
   11474:	07c7061b          	addiw	a2,a4,124
   11478:	0015959b          	slliw	a1,a1,0x1
   1147c:	da1ff06f          	j	1121c <_malloc_r+0x4f0>
   11480:	00893783          	ld	a5,8(s2)
   11484:	eadff06f          	j	11330 <_malloc_r+0x604>
   11488:	0034d693          	srli	a3,s1,0x3
   1148c:	0006869b          	sext.w	a3,a3
   11490:	0016879b          	addiw	a5,a3,1
   11494:	0017979b          	slliw	a5,a5,0x1
   11498:	ab9ff06f          	j	10f50 <_malloc_r+0x224>

000000000001149c <memcpy>:
   1149c:	00a5c7b3          	xor	a5,a1,a0
   114a0:	0077f793          	andi	a5,a5,7
   114a4:	00c508b3          	add	a7,a0,a2
   114a8:	0e079263          	bnez	a5,1158c <memcpy+0xf0>
   114ac:	00700793          	li	a5,7
   114b0:	0ec7fe63          	bleu	a2,a5,115ac <memcpy+0x110>
   114b4:	00757793          	andi	a5,a0,7
   114b8:	04079a63          	bnez	a5,1150c <memcpy+0x70>
   114bc:	ff88f813          	andi	a6,a7,-8
   114c0:	fc080793          	addi	a5,a6,-64
   114c4:	00050713          	mv	a4,a0
   114c8:	06f56663          	bltu	a0,a5,11534 <memcpy+0x98>
   114cc:	00058693          	mv	a3,a1
   114d0:	00070793          	mv	a5,a4
   114d4:	03077863          	bleu	a6,a4,11504 <memcpy+0x68>
   114d8:	0006b603          	ld	a2,0(a3)
   114dc:	00878793          	addi	a5,a5,8
   114e0:	00868693          	addi	a3,a3,8
   114e4:	fec7bc23          	sd	a2,-8(a5)
   114e8:	ff07e8e3          	bltu	a5,a6,114d8 <memcpy+0x3c>
   114ec:	fff74793          	not	a5,a4
   114f0:	01078833          	add	a6,a5,a6
   114f4:	ff887813          	andi	a6,a6,-8
   114f8:	00880813          	addi	a6,a6,8
   114fc:	01070733          	add	a4,a4,a6
   11500:	010585b3          	add	a1,a1,a6
   11504:	09176863          	bltu	a4,a7,11594 <memcpy+0xf8>
   11508:	00008067          	ret
   1150c:	00050713          	mv	a4,a0
   11510:	0005c683          	lbu	a3,0(a1)
   11514:	00170713          	addi	a4,a4,1
   11518:	00777793          	andi	a5,a4,7
   1151c:	fed70fa3          	sb	a3,-1(a4)
   11520:	00158593          	addi	a1,a1,1
   11524:	fe0796e3          	bnez	a5,11510 <memcpy+0x74>
   11528:	ff88f813          	andi	a6,a7,-8
   1152c:	fc080793          	addi	a5,a6,-64
   11530:	f8f77ee3          	bleu	a5,a4,114cc <memcpy+0x30>
   11534:	0005b383          	ld	t2,0(a1)
   11538:	0085b283          	ld	t0,8(a1)
   1153c:	0105bf83          	ld	t6,16(a1)
   11540:	0185bf03          	ld	t5,24(a1)
   11544:	0205be83          	ld	t4,32(a1)
   11548:	0285be03          	ld	t3,40(a1)
   1154c:	0305b303          	ld	t1,48(a1)
   11550:	0385b603          	ld	a2,56(a1)
   11554:	04858593          	addi	a1,a1,72
   11558:	04870713          	addi	a4,a4,72
   1155c:	ff85b683          	ld	a3,-8(a1)
   11560:	fa773c23          	sd	t2,-72(a4)
   11564:	fc573023          	sd	t0,-64(a4)
   11568:	fdf73423          	sd	t6,-56(a4)
   1156c:	fde73823          	sd	t5,-48(a4)
   11570:	fdd73c23          	sd	t4,-40(a4)
   11574:	ffc73023          	sd	t3,-32(a4)
   11578:	fe673423          	sd	t1,-24(a4)
   1157c:	fec73823          	sd	a2,-16(a4)
   11580:	fed73c23          	sd	a3,-8(a4)
   11584:	faf768e3          	bltu	a4,a5,11534 <memcpy+0x98>
   11588:	f45ff06f          	j	114cc <memcpy+0x30>
   1158c:	00050713          	mv	a4,a0
   11590:	03157463          	bleu	a7,a0,115b8 <memcpy+0x11c>
   11594:	0005c783          	lbu	a5,0(a1)
   11598:	00170713          	addi	a4,a4,1
   1159c:	00158593          	addi	a1,a1,1
   115a0:	fef70fa3          	sb	a5,-1(a4)
   115a4:	ff1768e3          	bltu	a4,a7,11594 <memcpy+0xf8>
   115a8:	00008067          	ret
   115ac:	00050713          	mv	a4,a0
   115b0:	ff1562e3          	bltu	a0,a7,11594 <memcpy+0xf8>
   115b4:	f55ff06f          	j	11508 <memcpy+0x6c>
   115b8:	00008067          	ret

00000000000115bc <__malloc_lock>:
   115bc:	00008067          	ret

00000000000115c0 <__malloc_unlock>:
   115c0:	00008067          	ret

00000000000115c4 <_printf_r>:
   115c4:	fb010113          	addi	sp,sp,-80
   115c8:	02c13023          	sd	a2,32(sp)
   115cc:	02d13423          	sd	a3,40(sp)
   115d0:	02f13c23          	sd	a5,56(sp)
   115d4:	02e13823          	sd	a4,48(sp)
   115d8:	05013023          	sd	a6,64(sp)
   115dc:	05113423          	sd	a7,72(sp)
   115e0:	00058613          	mv	a2,a1
   115e4:	01053583          	ld	a1,16(a0)
   115e8:	02010793          	addi	a5,sp,32
   115ec:	00078693          	mv	a3,a5
   115f0:	00113c23          	sd	ra,24(sp)
   115f4:	00f13423          	sd	a5,8(sp)
   115f8:	528000ef          	jal	11b20 <_vfprintf_r>
   115fc:	01813083          	ld	ra,24(sp)
   11600:	05010113          	addi	sp,sp,80
   11604:	00008067          	ret

0000000000011608 <printf>:
   11608:	8101b303          	ld	t1,-2032(gp) # 24400 <_impure_ptr>
   1160c:	fa010113          	addi	sp,sp,-96
   11610:	02c13823          	sd	a2,48(sp)
   11614:	02d13c23          	sd	a3,56(sp)
   11618:	04f13423          	sd	a5,72(sp)
   1161c:	02b13423          	sd	a1,40(sp)
   11620:	04e13023          	sd	a4,64(sp)
   11624:	05013823          	sd	a6,80(sp)
   11628:	05113c23          	sd	a7,88(sp)
   1162c:	01033583          	ld	a1,16(t1)
   11630:	02810793          	addi	a5,sp,40
   11634:	00050613          	mv	a2,a0
   11638:	00078693          	mv	a3,a5
   1163c:	00030513          	mv	a0,t1
   11640:	00113c23          	sd	ra,24(sp)
   11644:	00f13423          	sd	a5,8(sp)
   11648:	4d8000ef          	jal	11b20 <_vfprintf_r>
   1164c:	01813083          	ld	ra,24(sp)
   11650:	06010113          	addi	sp,sp,96
   11654:	00008067          	ret

0000000000011658 <_putchar_r>:
   11658:	01053603          	ld	a2,16(a0)
   1165c:	0180006f          	j	11674 <_putc_r>

0000000000011660 <putchar>:
   11660:	8101b783          	ld	a5,-2032(gp) # 24400 <_impure_ptr>
   11664:	00050593          	mv	a1,a0
   11668:	0107b603          	ld	a2,16(a5)
   1166c:	00078513          	mv	a0,a5
   11670:	0040006f          	j	11674 <_putc_r>

0000000000011674 <_putc_r>:
   11674:	fe010113          	addi	sp,sp,-32
   11678:	00813823          	sd	s0,16(sp)
   1167c:	00113c23          	sd	ra,24(sp)
   11680:	00050413          	mv	s0,a0
   11684:	00050663          	beqz	a0,11690 <_putc_r+0x1c>
   11688:	05052783          	lw	a5,80(a0)
   1168c:	06078863          	beqz	a5,116fc <_putc_r+0x88>
   11690:	00c62783          	lw	a5,12(a2)
   11694:	fff7879b          	addiw	a5,a5,-1
   11698:	00f62623          	sw	a5,12(a2)
   1169c:	0207c663          	bltz	a5,116c8 <_putc_r+0x54>
   116a0:	00063783          	ld	a5,0(a2)
   116a4:	00b78023          	sb	a1,0(a5)
   116a8:	00063783          	ld	a5,0(a2)
   116ac:	01813083          	ld	ra,24(sp)
   116b0:	00178713          	addi	a4,a5,1
   116b4:	00e63023          	sd	a4,0(a2)
   116b8:	0007c503          	lbu	a0,0(a5)
   116bc:	01013403          	ld	s0,16(sp)
   116c0:	02010113          	addi	sp,sp,32
   116c4:	00008067          	ret
   116c8:	02862703          	lw	a4,40(a2)
   116cc:	00e7ce63          	blt	a5,a4,116e8 <_putc_r+0x74>
   116d0:	00063783          	ld	a5,0(a2)
   116d4:	00a00713          	li	a4,10
   116d8:	00b78023          	sb	a1,0(a5)
   116dc:	00063783          	ld	a5,0(a2)
   116e0:	0007c583          	lbu	a1,0(a5)
   116e4:	fce594e3          	bne	a1,a4,116ac <_putc_r+0x38>
   116e8:	00040513          	mv	a0,s0
   116ec:	01813083          	ld	ra,24(sp)
   116f0:	01013403          	ld	s0,16(sp)
   116f4:	02010113          	addi	sp,sp,32
   116f8:	32c0306f          	j	14a24 <__swbuf_r>
   116fc:	00c13423          	sd	a2,8(sp)
   11700:	00b13023          	sd	a1,0(sp)
   11704:	1ac050ef          	jal	168b0 <__sinit>
   11708:	00813603          	ld	a2,8(sp)
   1170c:	00013583          	ld	a1,0(sp)
   11710:	f81ff06f          	j	11690 <_putc_r+0x1c>

0000000000011714 <putc>:
   11714:	fd010113          	addi	sp,sp,-48
   11718:	02813023          	sd	s0,32(sp)
   1171c:	8101b403          	ld	s0,-2032(gp) # 24400 <_impure_ptr>
   11720:	00913c23          	sd	s1,24(sp)
   11724:	02113423          	sd	ra,40(sp)
   11728:	00050493          	mv	s1,a0
   1172c:	00040663          	beqz	s0,11738 <putc+0x24>
   11730:	05042783          	lw	a5,80(s0)
   11734:	06078663          	beqz	a5,117a0 <putc+0x8c>
   11738:	00c5a783          	lw	a5,12(a1)
   1173c:	fff7879b          	addiw	a5,a5,-1
   11740:	00f5a623          	sw	a5,12(a1)
   11744:	0207c863          	bltz	a5,11774 <putc+0x60>
   11748:	0005b783          	ld	a5,0(a1)
   1174c:	00978023          	sb	s1,0(a5)
   11750:	0005b783          	ld	a5,0(a1)
   11754:	02813083          	ld	ra,40(sp)
   11758:	00178713          	addi	a4,a5,1
   1175c:	00e5b023          	sd	a4,0(a1)
   11760:	0007c503          	lbu	a0,0(a5)
   11764:	02013403          	ld	s0,32(sp)
   11768:	01813483          	ld	s1,24(sp)
   1176c:	03010113          	addi	sp,sp,48
   11770:	00008067          	ret
   11774:	0285a703          	lw	a4,40(a1)
   11778:	02e7ce63          	blt	a5,a4,117b4 <putc+0xa0>
   1177c:	0005b783          	ld	a5,0(a1)
   11780:	00a00693          	li	a3,10
   11784:	00978023          	sb	s1,0(a5)
   11788:	0005b783          	ld	a5,0(a1)
   1178c:	0007c703          	lbu	a4,0(a5)
   11790:	fcd712e3          	bne	a4,a3,11754 <putc+0x40>
   11794:	00058613          	mv	a2,a1
   11798:	00070593          	mv	a1,a4
   1179c:	0200006f          	j	117bc <putc+0xa8>
   117a0:	00040513          	mv	a0,s0
   117a4:	00b13423          	sd	a1,8(sp)
   117a8:	108050ef          	jal	168b0 <__sinit>
   117ac:	00813583          	ld	a1,8(sp)
   117b0:	f89ff06f          	j	11738 <putc+0x24>
   117b4:	00058613          	mv	a2,a1
   117b8:	00048593          	mv	a1,s1
   117bc:	00040513          	mv	a0,s0
   117c0:	02813083          	ld	ra,40(sp)
   117c4:	02013403          	ld	s0,32(sp)
   117c8:	01813483          	ld	s1,24(sp)
   117cc:	03010113          	addi	sp,sp,48
   117d0:	2540306f          	j	14a24 <__swbuf_r>

00000000000117d4 <_puts_r>:
   117d4:	fa010113          	addi	sp,sp,-96
   117d8:	04813823          	sd	s0,80(sp)
   117dc:	00050413          	mv	s0,a0
   117e0:	00058513          	mv	a0,a1
   117e4:	04913423          	sd	s1,72(sp)
   117e8:	04113c23          	sd	ra,88(sp)
   117ec:	00058493          	mv	s1,a1
   117f0:	260000ef          	jal	11a50 <strlen>
   117f4:	01043583          	ld	a1,16(s0)
   117f8:	00022737          	lui	a4,0x22
   117fc:	c9870713          	addi	a4,a4,-872 # 21c98 <zeroes.4123+0x668>
   11800:	01059683          	lh	a3,16(a1)
   11804:	02e13823          	sd	a4,48(sp)
   11808:	00100713          	li	a4,1
   1180c:	02e13c23          	sd	a4,56(sp)
   11810:	02010713          	addi	a4,sp,32
   11814:	00150613          	addi	a2,a0,1
   11818:	00e13423          	sd	a4,8(sp)
   1181c:	00200713          	li	a4,2
   11820:	02913023          	sd	s1,32(sp)
   11824:	02a13423          	sd	a0,40(sp)
   11828:	00c13c23          	sd	a2,24(sp)
   1182c:	00e12823          	sw	a4,16(sp)
   11830:	03269793          	slli	a5,a3,0x32
   11834:	0207c263          	bltz	a5,11858 <_puts_r+0x84>
   11838:	0ac5a783          	lw	a5,172(a1)
   1183c:	ffffe737          	lui	a4,0xffffe
   11840:	00002637          	lui	a2,0x2
   11844:	fff7071b          	addiw	a4,a4,-1
   11848:	00c6e6b3          	or	a3,a3,a2
   1184c:	00e7f733          	and	a4,a5,a4
   11850:	00d59823          	sh	a3,16(a1)
   11854:	0ae5a623          	sw	a4,172(a1)
   11858:	00810613          	addi	a2,sp,8
   1185c:	00040513          	mv	a0,s0
   11860:	724050ef          	jal	16f84 <__sfvwrite_r>
   11864:	05813083          	ld	ra,88(sp)
   11868:	00a03533          	snez	a0,a0
   1186c:	40a0053b          	negw	a0,a0
   11870:	00a56513          	ori	a0,a0,10
   11874:	05013403          	ld	s0,80(sp)
   11878:	04813483          	ld	s1,72(sp)
   1187c:	06010113          	addi	sp,sp,96
   11880:	00008067          	ret

0000000000011884 <puts>:
   11884:	00050593          	mv	a1,a0
   11888:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   1188c:	f49ff06f          	j	117d4 <_puts_r>

0000000000011890 <scanf>:
   11890:	8101b303          	ld	t1,-2032(gp) # 24400 <_impure_ptr>
   11894:	fa010113          	addi	sp,sp,-96
   11898:	02c13823          	sd	a2,48(sp)
   1189c:	02d13c23          	sd	a3,56(sp)
   118a0:	04f13423          	sd	a5,72(sp)
   118a4:	02b13423          	sd	a1,40(sp)
   118a8:	04e13023          	sd	a4,64(sp)
   118ac:	05013823          	sd	a6,80(sp)
   118b0:	05113c23          	sd	a7,88(sp)
   118b4:	00833583          	ld	a1,8(t1)
   118b8:	02810793          	addi	a5,sp,40
   118bc:	00050613          	mv	a2,a0
   118c0:	00078693          	mv	a3,a5
   118c4:	00030513          	mv	a0,t1
   118c8:	00113c23          	sd	ra,24(sp)
   118cc:	00f13423          	sd	a5,8(sp)
   118d0:	108030ef          	jal	149d8 <_vfscanf_r>
   118d4:	01813083          	ld	ra,24(sp)
   118d8:	06010113          	addi	sp,sp,96
   118dc:	00008067          	ret

00000000000118e0 <_scanf_r>:
   118e0:	fb010113          	addi	sp,sp,-80
   118e4:	02c13023          	sd	a2,32(sp)
   118e8:	02d13423          	sd	a3,40(sp)
   118ec:	02f13c23          	sd	a5,56(sp)
   118f0:	02e13823          	sd	a4,48(sp)
   118f4:	05013023          	sd	a6,64(sp)
   118f8:	05113423          	sd	a7,72(sp)
   118fc:	00058613          	mv	a2,a1
   11900:	00853583          	ld	a1,8(a0)
   11904:	02010793          	addi	a5,sp,32
   11908:	00078693          	mv	a3,a5
   1190c:	00113c23          	sd	ra,24(sp)
   11910:	00f13423          	sd	a5,8(sp)
   11914:	0c4030ef          	jal	149d8 <_vfscanf_r>
   11918:	01813083          	ld	ra,24(sp)
   1191c:	05010113          	addi	sp,sp,80
   11920:	00008067          	ret

0000000000011924 <strcmp>:
   11924:	00b56733          	or	a4,a0,a1
   11928:	fff00393          	li	t2,-1
   1192c:	00777713          	andi	a4,a4,7
   11930:	0c071c63          	bnez	a4,11a08 <strcmp+0xe4>
   11934:	00013e17          	auipc	t3,0x13
   11938:	b14e3e03          	ld	t3,-1260(t3) # 24448 <mask>
   1193c:	00053603          	ld	a2,0(a0)
   11940:	0005b683          	ld	a3,0(a1)
   11944:	01c672b3          	and	t0,a2,t3
   11948:	01c66333          	or	t1,a2,t3
   1194c:	01c282b3          	add	t0,t0,t3
   11950:	0062e2b3          	or	t0,t0,t1
   11954:	0c729e63          	bne	t0,t2,11a30 <strcmp+0x10c>
   11958:	04d61663          	bne	a2,a3,119a4 <strcmp+0x80>
   1195c:	00853603          	ld	a2,8(a0)
   11960:	0085b683          	ld	a3,8(a1)
   11964:	01c672b3          	and	t0,a2,t3
   11968:	01c66333          	or	t1,a2,t3
   1196c:	01c282b3          	add	t0,t0,t3
   11970:	0062e2b3          	or	t0,t0,t1
   11974:	0a729a63          	bne	t0,t2,11a28 <strcmp+0x104>
   11978:	02d61663          	bne	a2,a3,119a4 <strcmp+0x80>
   1197c:	01053603          	ld	a2,16(a0)
   11980:	0105b683          	ld	a3,16(a1)
   11984:	01c672b3          	and	t0,a2,t3
   11988:	01c66333          	or	t1,a2,t3
   1198c:	01c282b3          	add	t0,t0,t3
   11990:	0062e2b3          	or	t0,t0,t1
   11994:	0a729463          	bne	t0,t2,11a3c <strcmp+0x118>
   11998:	01850513          	addi	a0,a0,24
   1199c:	01858593          	addi	a1,a1,24
   119a0:	f8d60ee3          	beq	a2,a3,1193c <strcmp+0x18>
   119a4:	03061713          	slli	a4,a2,0x30
   119a8:	03069793          	slli	a5,a3,0x30
   119ac:	02f71a63          	bne	a4,a5,119e0 <strcmp+0xbc>
   119b0:	02061713          	slli	a4,a2,0x20
   119b4:	02069793          	slli	a5,a3,0x20
   119b8:	02f71463          	bne	a4,a5,119e0 <strcmp+0xbc>
   119bc:	01061713          	slli	a4,a2,0x10
   119c0:	01069793          	slli	a5,a3,0x10
   119c4:	00f71e63          	bne	a4,a5,119e0 <strcmp+0xbc>
   119c8:	03065713          	srli	a4,a2,0x30
   119cc:	0306d793          	srli	a5,a3,0x30
   119d0:	40f70533          	sub	a0,a4,a5
   119d4:	0ff57593          	andi	a1,a0,255
   119d8:	02059063          	bnez	a1,119f8 <strcmp+0xd4>
   119dc:	00008067          	ret
   119e0:	03075713          	srli	a4,a4,0x30
   119e4:	0307d793          	srli	a5,a5,0x30
   119e8:	40f70533          	sub	a0,a4,a5
   119ec:	0ff57593          	andi	a1,a0,255
   119f0:	00059463          	bnez	a1,119f8 <strcmp+0xd4>
   119f4:	00008067          	ret
   119f8:	0ff77713          	andi	a4,a4,255
   119fc:	0ff7f793          	andi	a5,a5,255
   11a00:	40f70533          	sub	a0,a4,a5
   11a04:	00008067          	ret
   11a08:	00054603          	lbu	a2,0(a0)
   11a0c:	0005c683          	lbu	a3,0(a1)
   11a10:	00150513          	addi	a0,a0,1
   11a14:	00158593          	addi	a1,a1,1
   11a18:	00d61463          	bne	a2,a3,11a20 <strcmp+0xfc>
   11a1c:	fe0616e3          	bnez	a2,11a08 <strcmp+0xe4>
   11a20:	40d60533          	sub	a0,a2,a3
   11a24:	00008067          	ret
   11a28:	00850513          	addi	a0,a0,8
   11a2c:	00858593          	addi	a1,a1,8
   11a30:	fcd61ce3          	bne	a2,a3,11a08 <strcmp+0xe4>
   11a34:	00000513          	li	a0,0
   11a38:	00008067          	ret
   11a3c:	01050513          	addi	a0,a0,16
   11a40:	01058593          	addi	a1,a1,16
   11a44:	fcd612e3          	bne	a2,a3,11a08 <strcmp+0xe4>
   11a48:	00000513          	li	a0,0
   11a4c:	00008067          	ret

0000000000011a50 <strlen>:
   11a50:	00757793          	andi	a5,a0,7
   11a54:	00050593          	mv	a1,a0
   11a58:	06079a63          	bnez	a5,11acc <strlen+0x7c>
   11a5c:	000247b7          	lui	a5,0x24
   11a60:	4487b683          	ld	a3,1096(a5) # 24448 <mask>
   11a64:	fff00613          	li	a2,-1
   11a68:	00850513          	addi	a0,a0,8
   11a6c:	ff853783          	ld	a5,-8(a0)
   11a70:	00d7f733          	and	a4,a5,a3
   11a74:	00d70733          	add	a4,a4,a3
   11a78:	00d7e7b3          	or	a5,a5,a3
   11a7c:	00f767b3          	or	a5,a4,a5
   11a80:	fec784e3          	beq	a5,a2,11a68 <strlen+0x18>
   11a84:	ff854783          	lbu	a5,-8(a0)
   11a88:	40b505b3          	sub	a1,a0,a1
   11a8c:	06078263          	beqz	a5,11af0 <strlen+0xa0>
   11a90:	ff954783          	lbu	a5,-7(a0)
   11a94:	04078a63          	beqz	a5,11ae8 <strlen+0x98>
   11a98:	ffa54783          	lbu	a5,-6(a0)
   11a9c:	06078263          	beqz	a5,11b00 <strlen+0xb0>
   11aa0:	ffb54783          	lbu	a5,-5(a0)
   11aa4:	04078a63          	beqz	a5,11af8 <strlen+0xa8>
   11aa8:	ffc54783          	lbu	a5,-4(a0)
   11aac:	ffd54703          	lbu	a4,-3(a0)
   11ab0:	ffe54683          	lbu	a3,-2(a0)
   11ab4:	04078a63          	beqz	a5,11b08 <strlen+0xb8>
   11ab8:	04070c63          	beqz	a4,11b10 <strlen+0xc0>
   11abc:	fff58513          	addi	a0,a1,-1
   11ac0:	04068c63          	beqz	a3,11b18 <strlen+0xc8>
   11ac4:	00008067          	ret
   11ac8:	f8070ae3          	beqz	a4,11a5c <strlen+0xc>
   11acc:	00054783          	lbu	a5,0(a0)
   11ad0:	00150513          	addi	a0,a0,1
   11ad4:	00757713          	andi	a4,a0,7
   11ad8:	fe0798e3          	bnez	a5,11ac8 <strlen+0x78>
   11adc:	40b50533          	sub	a0,a0,a1
   11ae0:	fff50513          	addi	a0,a0,-1
   11ae4:	00008067          	ret
   11ae8:	ff958513          	addi	a0,a1,-7
   11aec:	00008067          	ret
   11af0:	ff858513          	addi	a0,a1,-8
   11af4:	00008067          	ret
   11af8:	ffb58513          	addi	a0,a1,-5
   11afc:	00008067          	ret
   11b00:	ffa58513          	addi	a0,a1,-6
   11b04:	00008067          	ret
   11b08:	ffc58513          	addi	a0,a1,-4
   11b0c:	00008067          	ret
   11b10:	ffd58513          	addi	a0,a1,-3
   11b14:	00008067          	ret
   11b18:	ffe58513          	addi	a0,a1,-2
   11b1c:	00008067          	ret

0000000000011b20 <_vfprintf_r>:
   11b20:	e1010113          	addi	sp,sp,-496
   11b24:	1e113423          	sd	ra,488(sp)
   11b28:	1d313423          	sd	s3,456(sp)
   11b2c:	1d413023          	sd	s4,448(sp)
   11b30:	1b713423          	sd	s7,424(sp)
   11b34:	00058a13          	mv	s4,a1
   11b38:	00060993          	mv	s3,a2
   11b3c:	02d13423          	sd	a3,40(sp)
   11b40:	1e813023          	sd	s0,480(sp)
   11b44:	1c913c23          	sd	s1,472(sp)
   11b48:	1d213823          	sd	s2,464(sp)
   11b4c:	1b513c23          	sd	s5,440(sp)
   11b50:	1b613823          	sd	s6,432(sp)
   11b54:	1b813023          	sd	s8,416(sp)
   11b58:	19913c23          	sd	s9,408(sp)
   11b5c:	19a13823          	sd	s10,400(sp)
   11b60:	19b13423          	sd	s11,392(sp)
   11b64:	16813c27          	fsd	fs0,376(sp)
   11b68:	00050b93          	mv	s7,a0
   11b6c:	30d050ef          	jal	17678 <_localeconv_r>
   11b70:	00053783          	ld	a5,0(a0)
   11b74:	00078513          	mv	a0,a5
   11b78:	06f13023          	sd	a5,96(sp)
   11b7c:	ed5ff0ef          	jal	11a50 <strlen>
   11b80:	06a13423          	sd	a0,104(sp)
   11b84:	000b8663          	beqz	s7,11b90 <_vfprintf_r+0x70>
   11b88:	050ba783          	lw	a5,80(s7)
   11b8c:	2e078c63          	beqz	a5,11e84 <_vfprintf_r+0x364>
   11b90:	010a1683          	lh	a3,16(s4)
   11b94:	03069793          	slli	a5,a3,0x30
   11b98:	0307d793          	srli	a5,a5,0x30
   11b9c:	03279713          	slli	a4,a5,0x32
   11ba0:	02074a63          	bltz	a4,11bd4 <_vfprintf_r+0xb4>
   11ba4:	000027b7          	lui	a5,0x2
   11ba8:	0aca2603          	lw	a2,172(s4)
   11bac:	00f6e7b3          	or	a5,a3,a5
   11bb0:	0107979b          	slliw	a5,a5,0x10
   11bb4:	ffffe737          	lui	a4,0xffffe
   11bb8:	4107d79b          	sraiw	a5,a5,0x10
   11bbc:	fff7071b          	addiw	a4,a4,-1
   11bc0:	00e67733          	and	a4,a2,a4
   11bc4:	00fa1823          	sh	a5,16(s4)
   11bc8:	03079793          	slli	a5,a5,0x30
   11bcc:	0aea2623          	sw	a4,172(s4)
   11bd0:	0307d793          	srli	a5,a5,0x30
   11bd4:	0087f713          	andi	a4,a5,8
   11bd8:	1e070063          	beqz	a4,11db8 <_vfprintf_r+0x298>
   11bdc:	018a3703          	ld	a4,24(s4)
   11be0:	1c070c63          	beqz	a4,11db8 <_vfprintf_r+0x298>
   11be4:	01a7f793          	andi	a5,a5,26
   11be8:	00a00713          	li	a4,10
   11bec:	1ee78863          	beq	a5,a4,11ddc <_vfprintf_r+0x2bc>
   11bf0:	000207b7          	lui	a5,0x20
   11bf4:	74078793          	addi	a5,a5,1856 # 20740 <sulp+0x68>
   11bf8:	0f010b13          	addi	s6,sp,240
   11bfc:	02f13823          	sd	a5,48(sp)
   11c00:	0ef10793          	addi	a5,sp,239
   11c04:	00021ab7          	lui	s5,0x21
   11c08:	000214b7          	lui	s1,0x21
   11c0c:	40fb07b3          	sub	a5,s6,a5
   11c10:	04013c23          	sd	zero,88(sp)
   11c14:	0b613823          	sd	s6,176(sp)
   11c18:	0c013023          	sd	zero,192(sp)
   11c1c:	0a012c23          	sw	zero,184(sp)
   11c20:	06012823          	sw	zero,112(sp)
   11c24:	000b0893          	mv	a7,s6
   11c28:	02013c23          	sd	zero,56(sp)
   11c2c:	06012a23          	sw	zero,116(sp)
   11c30:	00012e23          	sw	zero,28(sp)
   11c34:	8a8a8a93          	addi	s5,s5,-1880 # 208a8 <blanks.4193>
   11c38:	8b848493          	addi	s1,s1,-1864 # 208b8 <zeroes.4194>
   11c3c:	06f13c23          	sd	a5,120(sp)
   11c40:	0009c783          	lbu	a5,0(s3)
   11c44:	0e0782e3          	beqz	a5,12528 <_vfprintf_r+0xa08>
   11c48:	02500713          	li	a4,37
   11c4c:	00098413          	mv	s0,s3
   11c50:	00e79663          	bne	a5,a4,11c5c <_vfprintf_r+0x13c>
   11c54:	0580006f          	j	11cac <_vfprintf_r+0x18c>
   11c58:	00e78863          	beq	a5,a4,11c68 <_vfprintf_r+0x148>
   11c5c:	00140413          	addi	s0,s0,1
   11c60:	00044783          	lbu	a5,0(s0)
   11c64:	fe079ae3          	bnez	a5,11c58 <_vfprintf_r+0x138>
   11c68:	4134093b          	subw	s2,s0,s3
   11c6c:	04090063          	beqz	s2,11cac <_vfprintf_r+0x18c>
   11c70:	0c013703          	ld	a4,192(sp)
   11c74:	0b812783          	lw	a5,184(sp)
   11c78:	00090693          	mv	a3,s2
   11c7c:	00d70733          	add	a4,a4,a3
   11c80:	0017879b          	addiw	a5,a5,1
   11c84:	0138b023          	sd	s3,0(a7)
   11c88:	00d8b423          	sd	a3,8(a7)
   11c8c:	0ce13023          	sd	a4,192(sp)
   11c90:	0af12c23          	sw	a5,184(sp)
   11c94:	00700713          	li	a4,7
   11c98:	01088893          	addi	a7,a7,16
   11c9c:	16f74063          	blt	a4,a5,11dfc <_vfprintf_r+0x2dc>
   11ca0:	01c12783          	lw	a5,28(sp)
   11ca4:	012787bb          	addw	a5,a5,s2
   11ca8:	00f12e23          	sw	a5,28(sp)
   11cac:	00044783          	lbu	a5,0(s0)
   11cb0:	16078463          	beqz	a5,11e18 <_vfprintf_r+0x2f8>
   11cb4:	00140993          	addi	s3,s0,1
   11cb8:	080107a3          	sb	zero,143(sp)
   11cbc:	00000613          	li	a2,0
   11cc0:	00000593          	li	a1,0
   11cc4:	fff00413          	li	s0,-1
   11cc8:	00012c23          	sw	zero,24(sp)
   11ccc:	00000c13          	li	s8,0
   11cd0:	05800713          	li	a4,88
   11cd4:	00900693          	li	a3,9
   11cd8:	02a00513          	li	a0,42
   11cdc:	0009cd03          	lbu	s10,0(s3)
   11ce0:	00198993          	addi	s3,s3,1
   11ce4:	fe0d079b          	addiw	a5,s10,-32
   11ce8:	1cf762e3          	bltu	a4,a5,126ac <_vfprintf_r+0xb8c>
   11cec:	03013803          	ld	a6,48(sp)
   11cf0:	02079793          	slli	a5,a5,0x20
   11cf4:	01e7d793          	srli	a5,a5,0x1e
   11cf8:	010787b3          	add	a5,a5,a6
   11cfc:	0007a783          	lw	a5,0(a5)
   11d00:	00078067          	jr	a5
   11d04:	010c6c13          	ori	s8,s8,16
   11d08:	fd5ff06f          	j	11cdc <_vfprintf_r+0x1bc>
   11d0c:	02813783          	ld	a5,40(sp)
   11d10:	0007a803          	lw	a6,0(a5)
   11d14:	00878793          	addi	a5,a5,8
   11d18:	02f13423          	sd	a5,40(sp)
   11d1c:	01012c23          	sw	a6,24(sp)
   11d20:	fa085ee3          	bgez	a6,11cdc <_vfprintf_r+0x1bc>
   11d24:	410007bb          	negw	a5,a6
   11d28:	00f12c23          	sw	a5,24(sp)
   11d2c:	004c6c13          	ori	s8,s8,4
   11d30:	fadff06f          	j	11cdc <_vfprintf_r+0x1bc>
   11d34:	03000793          	li	a5,48
   11d38:	08f10823          	sb	a5,144(sp)
   11d3c:	07800793          	li	a5,120
   11d40:	08f108a3          	sb	a5,145(sp)
   11d44:	02813783          	ld	a5,40(sp)
   11d48:	080107a3          	sb	zero,143(sp)
   11d4c:	002c6693          	ori	a3,s8,2
   11d50:	00878713          	addi	a4,a5,8
   11d54:	0007b783          	ld	a5,0(a5)
   11d58:	180444e3          	bltz	s0,126e0 <_vfprintf_r+0xbc0>
   11d5c:	f7fc7c13          	andi	s8,s8,-129
   11d60:	02e13423          	sd	a4,40(sp)
   11d64:	002c6c13          	ori	s8,s8,2
   11d68:	120796e3          	bnez	a5,12694 <_vfprintf_r+0xb74>
   11d6c:	000227b7          	lui	a5,0x22
   11d70:	cd878793          	addi	a5,a5,-808 # 21cd8 <zeroes.4123+0x6a8>
   11d74:	02f13c23          	sd	a5,56(sp)
   11d78:	07800d13          	li	s10,120
   11d7c:	00000613          	li	a2,0
   11d80:	7e040463          	beqz	s0,12568 <_vfprintf_r+0xa48>
   11d84:	00000793          	li	a5,0
   11d88:	000b0913          	mv	s2,s6
   11d8c:	03813683          	ld	a3,56(sp)
   11d90:	00f7f713          	andi	a4,a5,15
   11d94:	fff90913          	addi	s2,s2,-1
   11d98:	00e68733          	add	a4,a3,a4
   11d9c:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_end+0xfffffffffffd7238>
   11da0:	0047d793          	srli	a5,a5,0x4
   11da4:	00e90023          	sb	a4,0(s2)
   11da8:	fe0792e3          	bnez	a5,11d8c <_vfprintf_r+0x26c>
   11dac:	412b07b3          	sub	a5,s6,s2
   11db0:	02f12023          	sw	a5,32(sp)
   11db4:	1680006f          	j	11f1c <_vfprintf_r+0x3fc>
   11db8:	000a0593          	mv	a1,s4
   11dbc:	000b8513          	mv	a0,s7
   11dc0:	5ed020ef          	jal	14bac <__swsetup_r>
   11dc4:	00050463          	beqz	a0,11dcc <_vfprintf_r+0x2ac>
   11dc8:	3940106f          	j	1315c <_vfprintf_r+0x163c>
   11dcc:	010a5783          	lhu	a5,16(s4)
   11dd0:	00a00713          	li	a4,10
   11dd4:	01a7f793          	andi	a5,a5,26
   11dd8:	e0e79ce3          	bne	a5,a4,11bf0 <_vfprintf_r+0xd0>
   11ddc:	012a1783          	lh	a5,18(s4)
   11de0:	e007c8e3          	bltz	a5,11bf0 <_vfprintf_r+0xd0>
   11de4:	02813683          	ld	a3,40(sp)
   11de8:	00098613          	mv	a2,s3
   11dec:	000a0593          	mv	a1,s4
   11df0:	000b8513          	mv	a0,s7
   11df4:	1c9010ef          	jal	137bc <__sbprintf>
   11df8:	04c0006f          	j	11e44 <_vfprintf_r+0x324>
   11dfc:	0b010613          	addi	a2,sp,176
   11e00:	000a0593          	mv	a1,s4
   11e04:	000b8513          	mv	a0,s7
   11e08:	1e80b0ef          	jal	1cff0 <__sprint_r>
   11e0c:	02051263          	bnez	a0,11e30 <_vfprintf_r+0x310>
   11e10:	000b0893          	mv	a7,s6
   11e14:	e8dff06f          	j	11ca0 <_vfprintf_r+0x180>
   11e18:	0c013783          	ld	a5,192(sp)
   11e1c:	00078a63          	beqz	a5,11e30 <_vfprintf_r+0x310>
   11e20:	0b010613          	addi	a2,sp,176
   11e24:	000a0593          	mv	a1,s4
   11e28:	000b8513          	mv	a0,s7
   11e2c:	1c40b0ef          	jal	1cff0 <__sprint_r>
   11e30:	010a5783          	lhu	a5,16(s4)
   11e34:	0407f793          	andi	a5,a5,64
   11e38:	00078463          	beqz	a5,11e40 <_vfprintf_r+0x320>
   11e3c:	3200106f          	j	1315c <_vfprintf_r+0x163c>
   11e40:	01c12503          	lw	a0,28(sp)
   11e44:	1e813083          	ld	ra,488(sp)
   11e48:	1e013403          	ld	s0,480(sp)
   11e4c:	1d813483          	ld	s1,472(sp)
   11e50:	1d013903          	ld	s2,464(sp)
   11e54:	1c813983          	ld	s3,456(sp)
   11e58:	1c013a03          	ld	s4,448(sp)
   11e5c:	1b813a83          	ld	s5,440(sp)
   11e60:	1b013b03          	ld	s6,432(sp)
   11e64:	1a813b83          	ld	s7,424(sp)
   11e68:	1a013c03          	ld	s8,416(sp)
   11e6c:	19813c83          	ld	s9,408(sp)
   11e70:	19013d03          	ld	s10,400(sp)
   11e74:	18813d83          	ld	s11,392(sp)
   11e78:	17813407          	fld	fs0,376(sp)
   11e7c:	1f010113          	addi	sp,sp,496
   11e80:	00008067          	ret
   11e84:	000b8513          	mv	a0,s7
   11e88:	229040ef          	jal	168b0 <__sinit>
   11e8c:	d05ff06f          	j	11b90 <_vfprintf_r+0x70>
   11e90:	00100613          	li	a2,1
   11e94:	02b00593          	li	a1,43
   11e98:	e45ff06f          	j	11cdc <_vfprintf_r+0x1bc>
   11e9c:	00060463          	beqz	a2,11ea4 <_vfprintf_r+0x384>
   11ea0:	0d90106f          	j	13778 <_vfprintf_r+0x1c58>
   11ea4:	010c7793          	andi	a5,s8,16
   11ea8:	22078263          	beqz	a5,120cc <_vfprintf_r+0x5ac>
   11eac:	02813783          	ld	a5,40(sp)
   11eb0:	080107a3          	sb	zero,143(sp)
   11eb4:	00878713          	addi	a4,a5,8
   11eb8:	0007b783          	ld	a5,0(a5)
   11ebc:	22044663          	bltz	s0,120e8 <_vfprintf_r+0x5c8>
   11ec0:	02e13423          	sd	a4,40(sp)
   11ec4:	f7fc7c13          	andi	s8,s8,-129
   11ec8:	22079663          	bnez	a5,120f4 <_vfprintf_r+0x5d4>
   11ecc:	00000613          	li	a2,0
   11ed0:	00000793          	li	a5,0
   11ed4:	00041463          	bnez	s0,11edc <_vfprintf_r+0x3bc>
   11ed8:	3680106f          	j	13240 <_vfprintf_r+0x1720>
   11edc:	000b0913          	mv	s2,s6
   11ee0:	0077f713          	andi	a4,a5,7
   11ee4:	fff90913          	addi	s2,s2,-1
   11ee8:	0307071b          	addiw	a4,a4,48
   11eec:	00e90023          	sb	a4,0(s2)
   11ef0:	0037d793          	srli	a5,a5,0x3
   11ef4:	fe0796e3          	bnez	a5,11ee0 <_vfprintf_r+0x3c0>
   11ef8:	001c7793          	andi	a5,s8,1
   11efc:	ea0788e3          	beqz	a5,11dac <_vfprintf_r+0x28c>
   11f00:	03000793          	li	a5,48
   11f04:	eaf704e3          	beq	a4,a5,11dac <_vfprintf_r+0x28c>
   11f08:	fff90713          	addi	a4,s2,-1
   11f0c:	40eb06b3          	sub	a3,s6,a4
   11f10:	fef90fa3          	sb	a5,-1(s2)
   11f14:	02d12023          	sw	a3,32(sp)
   11f18:	00070913          	mv	s2,a4
   11f1c:	02012783          	lw	a5,32(sp)
   11f20:	00078d93          	mv	s11,a5
   11f24:	0087d463          	ble	s0,a5,11f2c <_vfprintf_r+0x40c>
   11f28:	00040d93          	mv	s11,s0
   11f2c:	01b12423          	sw	s11,8(sp)
   11f30:	04012623          	sw	zero,76(sp)
   11f34:	2a060263          	beqz	a2,121d8 <_vfprintf_r+0x6b8>
   11f38:	00812783          	lw	a5,8(sp)
   11f3c:	0017879b          	addiw	a5,a5,1
   11f40:	00f12423          	sw	a5,8(sp)
   11f44:	2940006f          	j	121d8 <_vfprintf_r+0x6b8>
   11f48:	0009cd03          	lbu	s10,0(s3)
   11f4c:	00198993          	addi	s3,s3,1
   11f50:	00ad1463          	bne	s10,a0,11f58 <_vfprintf_r+0x438>
   11f54:	75c0106f          	j	136b0 <_vfprintf_r+0x1b90>
   11f58:	fd0d079b          	addiw	a5,s10,-48
   11f5c:	00000413          	li	s0,0
   11f60:	d8f6e2e3          	bltu	a3,a5,11ce4 <_vfprintf_r+0x1c4>
   11f64:	00198993          	addi	s3,s3,1
   11f68:	fff9cd03          	lbu	s10,-1(s3)
   11f6c:	0014181b          	slliw	a6,s0,0x1
   11f70:	0034141b          	slliw	s0,s0,0x3
   11f74:	0088043b          	addw	s0,a6,s0
   11f78:	00f4043b          	addw	s0,s0,a5
   11f7c:	fd0d079b          	addiw	a5,s10,-48
   11f80:	fef6f2e3          	bleu	a5,a3,11f64 <_vfprintf_r+0x444>
   11f84:	d60450e3          	bgez	s0,11ce4 <_vfprintf_r+0x1c4>
   11f88:	fff00413          	li	s0,-1
   11f8c:	d59ff06f          	j	11ce4 <_vfprintf_r+0x1c4>
   11f90:	080c6c13          	ori	s8,s8,128
   11f94:	d49ff06f          	j	11cdc <_vfprintf_r+0x1bc>
   11f98:	d40592e3          	bnez	a1,11cdc <_vfprintf_r+0x1bc>
   11f9c:	00100613          	li	a2,1
   11fa0:	02000593          	li	a1,32
   11fa4:	d39ff06f          	j	11cdc <_vfprintf_r+0x1bc>
   11fa8:	001c6c13          	ori	s8,s8,1
   11fac:	d31ff06f          	j	11cdc <_vfprintf_r+0x1bc>
   11fb0:	02813783          	ld	a5,40(sp)
   11fb4:	080107a3          	sb	zero,143(sp)
   11fb8:	0007b903          	ld	s2,0(a5)
   11fbc:	00878c93          	addi	s9,a5,8
   11fc0:	00091463          	bnez	s2,11fc8 <_vfprintf_r+0x4a8>
   11fc4:	39c0106f          	j	13360 <_vfprintf_r+0x1840>
   11fc8:	01113023          	sd	a7,0(sp)
   11fcc:	00045463          	bgez	s0,11fd4 <_vfprintf_r+0x4b4>
   11fd0:	3240106f          	j	132f4 <_vfprintf_r+0x17d4>
   11fd4:	00040613          	mv	a2,s0
   11fd8:	00000593          	li	a1,0
   11fdc:	00090513          	mv	a0,s2
   11fe0:	2c9050ef          	jal	17aa8 <memchr>
   11fe4:	00013883          	ld	a7,0(sp)
   11fe8:	00051463          	bnez	a0,11ff0 <_vfprintf_r+0x4d0>
   11fec:	4c00106f          	j	134ac <_vfprintf_r+0x198c>
   11ff0:	412507bb          	subw	a5,a0,s2
   11ff4:	02f12023          	sw	a5,32(sp)
   11ff8:	00078d93          	mv	s11,a5
   11ffc:	0007d463          	bgez	a5,12004 <_vfprintf_r+0x4e4>
   12000:	3140106f          	j	13314 <_vfprintf_r+0x17f4>
   12004:	08f14603          	lbu	a2,143(sp)
   12008:	01b12423          	sw	s11,8(sp)
   1200c:	03913423          	sd	s9,40(sp)
   12010:	00000413          	li	s0,0
   12014:	04012623          	sw	zero,76(sp)
   12018:	f1dff06f          	j	11f34 <_vfprintf_r+0x414>
   1201c:	00060463          	beqz	a2,12024 <_vfprintf_r+0x504>
   12020:	7800106f          	j	137a0 <_vfprintf_r+0x1c80>
   12024:	010c7793          	andi	a5,s8,16
   12028:	0e078463          	beqz	a5,12110 <_vfprintf_r+0x5f0>
   1202c:	02813783          	ld	a5,40(sp)
   12030:	080107a3          	sb	zero,143(sp)
   12034:	00878713          	addi	a4,a5,8
   12038:	0007b783          	ld	a5,0(a5)
   1203c:	0e044863          	bltz	s0,1212c <_vfprintf_r+0x60c>
   12040:	02e13423          	sd	a4,40(sp)
   12044:	f7fc7c13          	andi	s8,s8,-129
   12048:	00000613          	li	a2,0
   1204c:	50078c63          	beqz	a5,12564 <_vfprintf_r+0xa44>
   12050:	00900713          	li	a4,9
   12054:	000b0913          	mv	s2,s6
   12058:	00a00693          	li	a3,10
   1205c:	40f770e3          	bleu	a5,a4,12c5c <_vfprintf_r+0x113c>
   12060:	02d7f733          	remu	a4,a5,a3
   12064:	fff90913          	addi	s2,s2,-1
   12068:	02d7d7b3          	divu	a5,a5,a3
   1206c:	0307071b          	addiw	a4,a4,48
   12070:	00e90023          	sb	a4,0(s2)
   12074:	fe0796e3          	bnez	a5,12060 <_vfprintf_r+0x540>
   12078:	412b07b3          	sub	a5,s6,s2
   1207c:	02f12023          	sw	a5,32(sp)
   12080:	e9dff06f          	j	11f1c <_vfprintf_r+0x3fc>
   12084:	00012c23          	sw	zero,24(sp)
   12088:	fd0d079b          	addiw	a5,s10,-48
   1208c:	01812303          	lw	t1,24(sp)
   12090:	00198993          	addi	s3,s3,1
   12094:	fff9cd03          	lbu	s10,-1(s3)
   12098:	0013181b          	slliw	a6,t1,0x1
   1209c:	00331c9b          	slliw	s9,t1,0x3
   120a0:	01980cbb          	addw	s9,a6,s9
   120a4:	019787bb          	addw	a5,a5,s9
   120a8:	00f12c23          	sw	a5,24(sp)
   120ac:	fd0d079b          	addiw	a5,s10,-48
   120b0:	fcf6fee3          	bleu	a5,a3,1208c <_vfprintf_r+0x56c>
   120b4:	c31ff06f          	j	11ce4 <_vfprintf_r+0x1c4>
   120b8:	00060463          	beqz	a2,120c0 <_vfprintf_r+0x5a0>
   120bc:	6d80106f          	j	13794 <_vfprintf_r+0x1c74>
   120c0:	010c6c13          	ori	s8,s8,16
   120c4:	010c7793          	andi	a5,s8,16
   120c8:	de0792e3          	bnez	a5,11eac <_vfprintf_r+0x38c>
   120cc:	040c7793          	andi	a5,s8,64
   120d0:	080107a3          	sb	zero,143(sp)
   120d4:	580780e3          	beqz	a5,12e54 <_vfprintf_r+0x1334>
   120d8:	02813783          	ld	a5,40(sp)
   120dc:	00878713          	addi	a4,a5,8
   120e0:	0007d783          	lhu	a5,0(a5)
   120e4:	dc045ee3          	bgez	s0,11ec0 <_vfprintf_r+0x3a0>
   120e8:	02e13423          	sd	a4,40(sp)
   120ec:	00000613          	li	a2,0
   120f0:	60078a63          	beqz	a5,12704 <_vfprintf_r+0xbe4>
   120f4:	00000613          	li	a2,0
   120f8:	de5ff06f          	j	11edc <_vfprintf_r+0x3bc>
   120fc:	00060463          	beqz	a2,12104 <_vfprintf_r+0x5e4>
   12100:	6880106f          	j	13788 <_vfprintf_r+0x1c68>
   12104:	010c6c13          	ori	s8,s8,16
   12108:	010c7793          	andi	a5,s8,16
   1210c:	f20790e3          	bnez	a5,1202c <_vfprintf_r+0x50c>
   12110:	040c7793          	andi	a5,s8,64
   12114:	080107a3          	sb	zero,143(sp)
   12118:	500780e3          	beqz	a5,12e18 <_vfprintf_r+0x12f8>
   1211c:	02813783          	ld	a5,40(sp)
   12120:	00878713          	addi	a4,a5,8
   12124:	0007d783          	lhu	a5,0(a5)
   12128:	f0045ce3          	bgez	s0,12040 <_vfprintf_r+0x520>
   1212c:	02e13423          	sd	a4,40(sp)
   12130:	00000613          	li	a2,0
   12134:	f0079ee3          	bnez	a5,12050 <_vfprintf_r+0x530>
   12138:	00100793          	li	a5,1
   1213c:	5c80006f          	j	12704 <_vfprintf_r+0xbe4>
   12140:	00060463          	beqz	a2,12148 <_vfprintf_r+0x628>
   12144:	63c0106f          	j	13780 <_vfprintf_r+0x1c60>
   12148:	000227b7          	lui	a5,0x22
   1214c:	cc078793          	addi	a5,a5,-832 # 21cc0 <zeroes.4123+0x690>
   12150:	02f13c23          	sd	a5,56(sp)
   12154:	010c7793          	andi	a5,s8,16
   12158:	4c078263          	beqz	a5,1261c <_vfprintf_r+0xafc>
   1215c:	02813703          	ld	a4,40(sp)
   12160:	00073783          	ld	a5,0(a4)
   12164:	00870713          	addi	a4,a4,8
   12168:	02e13423          	sd	a4,40(sp)
   1216c:	001c7713          	andi	a4,s8,1
   12170:	120706e3          	beqz	a4,12a9c <_vfprintf_r+0xf7c>
   12174:	6a078ee3          	beqz	a5,13030 <_vfprintf_r+0x1510>
   12178:	03000713          	li	a4,48
   1217c:	08e10823          	sb	a4,144(sp)
   12180:	09a108a3          	sb	s10,145(sp)
   12184:	080107a3          	sb	zero,143(sp)
   12188:	002c6713          	ori	a4,s8,2
   1218c:	00045463          	bgez	s0,12194 <_vfprintf_r+0x674>
   12190:	2140106f          	j	133a4 <_vfprintf_r+0x1884>
   12194:	f7fc7c13          	andi	s8,s8,-129
   12198:	002c6c13          	ori	s8,s8,2
   1219c:	00000613          	li	a2,0
   121a0:	be9ff06f          	j	11d88 <_vfprintf_r+0x268>
   121a4:	02813703          	ld	a4,40(sp)
   121a8:	00100693          	li	a3,1
   121ac:	00d12423          	sw	a3,8(sp)
   121b0:	00072783          	lw	a5,0(a4)
   121b4:	080107a3          	sb	zero,143(sp)
   121b8:	00000613          	li	a2,0
   121bc:	0cf10423          	sb	a5,200(sp)
   121c0:	00870793          	addi	a5,a4,8
   121c4:	02f13423          	sd	a5,40(sp)
   121c8:	02d12023          	sw	a3,32(sp)
   121cc:	00000413          	li	s0,0
   121d0:	04012623          	sw	zero,76(sp)
   121d4:	0c810913          	addi	s2,sp,200
   121d8:	002c7793          	andi	a5,s8,2
   121dc:	04f12023          	sw	a5,64(sp)
   121e0:	00078863          	beqz	a5,121f0 <_vfprintf_r+0x6d0>
   121e4:	00812783          	lw	a5,8(sp)
   121e8:	0027879b          	addiw	a5,a5,2
   121ec:	00f12423          	sw	a5,8(sp)
   121f0:	084c7793          	andi	a5,s8,132
   121f4:	04f12423          	sw	a5,72(sp)
   121f8:	52079263          	bnez	a5,1271c <_vfprintf_r+0xbfc>
   121fc:	01812783          	lw	a5,24(sp)
   12200:	00812703          	lw	a4,8(sp)
   12204:	40e78cbb          	subw	s9,a5,a4
   12208:	51905a63          	blez	s9,1271c <_vfprintf_r+0xbfc>
   1220c:	01000793          	li	a5,16
   12210:	0197c463          	blt	a5,s9,12218 <_vfprintf_r+0x6f8>
   12214:	1080106f          	j	1331c <_vfprintf_r+0x17fc>
   12218:	01000813          	li	a6,16
   1221c:	0c013783          	ld	a5,192(sp)
   12220:	0b812703          	lw	a4,184(sp)
   12224:	05513823          	sd	s5,80(sp)
   12228:	00700313          	li	t1,7
   1222c:	00080d93          	mv	s11,a6
   12230:	00c0006f          	j	1223c <_vfprintf_r+0x71c>
   12234:	ff0c8c9b          	addiw	s9,s9,-16
   12238:	059dde63          	ble	s9,s11,12294 <_vfprintf_r+0x774>
   1223c:	01078793          	addi	a5,a5,16
   12240:	0017071b          	addiw	a4,a4,1
   12244:	0158b023          	sd	s5,0(a7)
   12248:	0108b423          	sd	a6,8(a7)
   1224c:	0cf13023          	sd	a5,192(sp)
   12250:	0ae12c23          	sw	a4,184(sp)
   12254:	01088893          	addi	a7,a7,16
   12258:	fce35ee3          	ble	a4,t1,12234 <_vfprintf_r+0x714>
   1225c:	0b010613          	addi	a2,sp,176
   12260:	000a0593          	mv	a1,s4
   12264:	000b8513          	mv	a0,s7
   12268:	00613823          	sd	t1,16(sp)
   1226c:	01013023          	sd	a6,0(sp)
   12270:	5810a0ef          	jal	1cff0 <__sprint_r>
   12274:	ba051ee3          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12278:	ff0c8c9b          	addiw	s9,s9,-16
   1227c:	0c013783          	ld	a5,192(sp)
   12280:	0b812703          	lw	a4,184(sp)
   12284:	000b0893          	mv	a7,s6
   12288:	01013303          	ld	t1,16(sp)
   1228c:	00013803          	ld	a6,0(sp)
   12290:	fb9dc6e3          	blt	s11,s9,1223c <_vfprintf_r+0x71c>
   12294:	05013603          	ld	a2,80(sp)
   12298:	00fc87b3          	add	a5,s9,a5
   1229c:	0017071b          	addiw	a4,a4,1
   122a0:	00c8b023          	sd	a2,0(a7)
   122a4:	0198b423          	sd	s9,8(a7)
   122a8:	0cf13023          	sd	a5,192(sp)
   122ac:	0ae12c23          	sw	a4,184(sp)
   122b0:	00700693          	li	a3,7
   122b4:	0ce6cae3          	blt	a3,a4,12b88 <_vfprintf_r+0x1068>
   122b8:	08f14603          	lbu	a2,143(sp)
   122bc:	01088893          	addi	a7,a7,16
   122c0:	02060a63          	beqz	a2,122f4 <_vfprintf_r+0x7d4>
   122c4:	0b812703          	lw	a4,184(sp)
   122c8:	08f10693          	addi	a3,sp,143
   122cc:	00d8b023          	sd	a3,0(a7)
   122d0:	00178793          	addi	a5,a5,1
   122d4:	00100693          	li	a3,1
   122d8:	0017071b          	addiw	a4,a4,1
   122dc:	00d8b423          	sd	a3,8(a7)
   122e0:	0cf13023          	sd	a5,192(sp)
   122e4:	0ae12c23          	sw	a4,184(sp)
   122e8:	00700693          	li	a3,7
   122ec:	01088893          	addi	a7,a7,16
   122f0:	76e6c663          	blt	a3,a4,12a5c <_vfprintf_r+0xf3c>
   122f4:	04012703          	lw	a4,64(sp)
   122f8:	02070a63          	beqz	a4,1232c <_vfprintf_r+0x80c>
   122fc:	0b812703          	lw	a4,184(sp)
   12300:	09010693          	addi	a3,sp,144
   12304:	00d8b023          	sd	a3,0(a7)
   12308:	00278793          	addi	a5,a5,2
   1230c:	00200693          	li	a3,2
   12310:	0017071b          	addiw	a4,a4,1
   12314:	00d8b423          	sd	a3,8(a7)
   12318:	0cf13023          	sd	a5,192(sp)
   1231c:	0ae12c23          	sw	a4,184(sp)
   12320:	00700693          	li	a3,7
   12324:	01088893          	addi	a7,a7,16
   12328:	74e6ca63          	blt	a3,a4,12a7c <_vfprintf_r+0xf5c>
   1232c:	04812683          	lw	a3,72(sp)
   12330:	08000713          	li	a4,128
   12334:	5ee68663          	beq	a3,a4,12920 <_vfprintf_r+0xe00>
   12338:	02012703          	lw	a4,32(sp)
   1233c:	40e4043b          	subw	s0,s0,a4
   12340:	0c805063          	blez	s0,12400 <_vfprintf_r+0x8e0>
   12344:	01000713          	li	a4,16
   12348:	4e875ce3          	ble	s0,a4,13040 <_vfprintf_r+0x1520>
   1234c:	01000c93          	li	s9,16
   12350:	0b812703          	lw	a4,184(sp)
   12354:	00913823          	sd	s1,16(sp)
   12358:	00700813          	li	a6,7
   1235c:	000c8d93          	mv	s11,s9
   12360:	00c0006f          	j	1236c <_vfprintf_r+0x84c>
   12364:	ff04041b          	addiw	s0,s0,-16
   12368:	048dda63          	ble	s0,s11,123bc <_vfprintf_r+0x89c>
   1236c:	01078793          	addi	a5,a5,16
   12370:	0017071b          	addiw	a4,a4,1
   12374:	0098b023          	sd	s1,0(a7)
   12378:	0198b423          	sd	s9,8(a7)
   1237c:	0cf13023          	sd	a5,192(sp)
   12380:	0ae12c23          	sw	a4,184(sp)
   12384:	01088893          	addi	a7,a7,16
   12388:	fce85ee3          	ble	a4,a6,12364 <_vfprintf_r+0x844>
   1238c:	0b010613          	addi	a2,sp,176
   12390:	000a0593          	mv	a1,s4
   12394:	000b8513          	mv	a0,s7
   12398:	01013023          	sd	a6,0(sp)
   1239c:	4550a0ef          	jal	1cff0 <__sprint_r>
   123a0:	a80518e3          	bnez	a0,11e30 <_vfprintf_r+0x310>
   123a4:	ff04041b          	addiw	s0,s0,-16
   123a8:	0c013783          	ld	a5,192(sp)
   123ac:	0b812703          	lw	a4,184(sp)
   123b0:	000b0893          	mv	a7,s6
   123b4:	00013803          	ld	a6,0(sp)
   123b8:	fa8dcae3          	blt	s11,s0,1236c <_vfprintf_r+0x84c>
   123bc:	01013683          	ld	a3,16(sp)
   123c0:	008787b3          	add	a5,a5,s0
   123c4:	0017071b          	addiw	a4,a4,1
   123c8:	00d8b023          	sd	a3,0(a7)
   123cc:	0088b423          	sd	s0,8(a7)
   123d0:	0cf13023          	sd	a5,192(sp)
   123d4:	0ae12c23          	sw	a4,184(sp)
   123d8:	00700693          	li	a3,7
   123dc:	01088893          	addi	a7,a7,16
   123e0:	02e6d063          	ble	a4,a3,12400 <_vfprintf_r+0x8e0>
   123e4:	0b010613          	addi	a2,sp,176
   123e8:	000a0593          	mv	a1,s4
   123ec:	000b8513          	mv	a0,s7
   123f0:	4010a0ef          	jal	1cff0 <__sprint_r>
   123f4:	a2051ee3          	bnez	a0,11e30 <_vfprintf_r+0x310>
   123f8:	0c013783          	ld	a5,192(sp)
   123fc:	000b0893          	mv	a7,s6
   12400:	100c7713          	andi	a4,s8,256
   12404:	40071663          	bnez	a4,12810 <_vfprintf_r+0xcf0>
   12408:	02012703          	lw	a4,32(sp)
   1240c:	0b812683          	lw	a3,184(sp)
   12410:	0128b023          	sd	s2,0(a7)
   12414:	00e787b3          	add	a5,a5,a4
   12418:	0016869b          	addiw	a3,a3,1
   1241c:	00e8b423          	sd	a4,8(a7)
   12420:	0cf13023          	sd	a5,192(sp)
   12424:	0ad12c23          	sw	a3,184(sp)
   12428:	00700713          	li	a4,7
   1242c:	3cd74263          	blt	a4,a3,127f0 <_vfprintf_r+0xcd0>
   12430:	01088893          	addi	a7,a7,16
   12434:	004c7c13          	andi	s8,s8,4
   12438:	0c0c0063          	beqz	s8,124f8 <_vfprintf_r+0x9d8>
   1243c:	01812703          	lw	a4,24(sp)
   12440:	00812683          	lw	a3,8(sp)
   12444:	40d7043b          	subw	s0,a4,a3
   12448:	0a805863          	blez	s0,124f8 <_vfprintf_r+0x9d8>
   1244c:	01000713          	li	a4,16
   12450:	748754e3          	ble	s0,a4,13398 <_vfprintf_r+0x1878>
   12454:	01000913          	li	s2,16
   12458:	0b812703          	lw	a4,184(sp)
   1245c:	05513823          	sd	s5,80(sp)
   12460:	00700c13          	li	s8,7
   12464:	00090d13          	mv	s10,s2
   12468:	00c0006f          	j	12474 <_vfprintf_r+0x954>
   1246c:	ff04041b          	addiw	s0,s0,-16
   12470:	048d5663          	ble	s0,s10,124bc <_vfprintf_r+0x99c>
   12474:	01078793          	addi	a5,a5,16
   12478:	0017071b          	addiw	a4,a4,1
   1247c:	0158b023          	sd	s5,0(a7)
   12480:	0128b423          	sd	s2,8(a7)
   12484:	0cf13023          	sd	a5,192(sp)
   12488:	0ae12c23          	sw	a4,184(sp)
   1248c:	01088893          	addi	a7,a7,16
   12490:	fcec5ee3          	ble	a4,s8,1246c <_vfprintf_r+0x94c>
   12494:	0b010613          	addi	a2,sp,176
   12498:	000a0593          	mv	a1,s4
   1249c:	000b8513          	mv	a0,s7
   124a0:	3510a0ef          	jal	1cff0 <__sprint_r>
   124a4:	980516e3          	bnez	a0,11e30 <_vfprintf_r+0x310>
   124a8:	ff04041b          	addiw	s0,s0,-16
   124ac:	0c013783          	ld	a5,192(sp)
   124b0:	0b812703          	lw	a4,184(sp)
   124b4:	000b0893          	mv	a7,s6
   124b8:	fa8d4ee3          	blt	s10,s0,12474 <_vfprintf_r+0x954>
   124bc:	05013683          	ld	a3,80(sp)
   124c0:	008787b3          	add	a5,a5,s0
   124c4:	0017071b          	addiw	a4,a4,1
   124c8:	00d8b023          	sd	a3,0(a7)
   124cc:	0088b423          	sd	s0,8(a7)
   124d0:	0cf13023          	sd	a5,192(sp)
   124d4:	0ae12c23          	sw	a4,184(sp)
   124d8:	00700693          	li	a3,7
   124dc:	00e6de63          	ble	a4,a3,124f8 <_vfprintf_r+0x9d8>
   124e0:	0b010613          	addi	a2,sp,176
   124e4:	000a0593          	mv	a1,s4
   124e8:	000b8513          	mv	a0,s7
   124ec:	3050a0ef          	jal	1cff0 <__sprint_r>
   124f0:	940510e3          	bnez	a0,11e30 <_vfprintf_r+0x310>
   124f4:	0c013783          	ld	a5,192(sp)
   124f8:	01812c83          	lw	s9,24(sp)
   124fc:	00812703          	lw	a4,8(sp)
   12500:	00ecd463          	ble	a4,s9,12508 <_vfprintf_r+0x9e8>
   12504:	00070c93          	mv	s9,a4
   12508:	01c12703          	lw	a4,28(sp)
   1250c:	0197073b          	addw	a4,a4,s9
   12510:	00e12e23          	sw	a4,28(sp)
   12514:	52079863          	bnez	a5,12a44 <_vfprintf_r+0xf24>
   12518:	0009c783          	lbu	a5,0(s3)
   1251c:	0a012c23          	sw	zero,184(sp)
   12520:	000b0893          	mv	a7,s6
   12524:	f2079263          	bnez	a5,11c48 <_vfprintf_r+0x128>
   12528:	00098413          	mv	s0,s3
   1252c:	f80ff06f          	j	11cac <_vfprintf_r+0x18c>
   12530:	00060463          	beqz	a2,12538 <_vfprintf_r+0xa18>
   12534:	22c0106f          	j	13760 <_vfprintf_r+0x1c40>
   12538:	010c7793          	andi	a5,s8,16
   1253c:	12078e63          	beqz	a5,12678 <_vfprintf_r+0xb58>
   12540:	02813703          	ld	a4,40(sp)
   12544:	00073783          	ld	a5,0(a4)
   12548:	00870713          	addi	a4,a4,8
   1254c:	02e13423          	sd	a4,40(sp)
   12550:	1407c0e3          	bltz	a5,12e90 <_vfprintf_r+0x1370>
   12554:	08f14603          	lbu	a2,143(sp)
   12558:	bc044ee3          	bltz	s0,12134 <_vfprintf_r+0x614>
   1255c:	f7fc7c13          	andi	s8,s8,-129
   12560:	ae0798e3          	bnez	a5,12050 <_vfprintf_r+0x530>
   12564:	6e041a63          	bnez	s0,12c58 <_vfprintf_r+0x1138>
   12568:	00000413          	li	s0,0
   1256c:	02012023          	sw	zero,32(sp)
   12570:	000b0913          	mv	s2,s6
   12574:	9a9ff06f          	j	11f1c <_vfprintf_r+0x3fc>
   12578:	040c6c13          	ori	s8,s8,64
   1257c:	f60ff06f          	j	11cdc <_vfprintf_r+0x1bc>
   12580:	00060463          	beqz	a2,12588 <_vfprintf_r+0xa68>
   12584:	1d40106f          	j	13758 <_vfprintf_r+0x1c38>
   12588:	02813783          	ld	a5,40(sp)
   1258c:	00100913          	li	s2,1
   12590:	0007b787          	fld	fa5,0(a5)
   12594:	00878793          	addi	a5,a5,8
   12598:	01113023          	sd	a7,0(sp)
   1259c:	04f13c27          	fsd	fa5,88(sp)
   125a0:	05813c83          	ld	s9,88(sp)
   125a4:	02f13423          	sd	a5,40(sp)
   125a8:	f20c8553          	fmv.d.x	fa0,s9
   125ac:	0e8070ef          	jal	19694 <__fpclassifyd>
   125b0:	00013883          	ld	a7,0(sp)
   125b4:	0f251ce3          	bne	a0,s2,12eac <_vfprintf_r+0x138c>
   125b8:	f20007d3          	fmv.d.x	fa5,zero
   125bc:	f20c8753          	fmv.d.x	fa4,s9
   125c0:	a2f717d3          	flt.d	a5,fa4,fa5
   125c4:	600792e3          	bnez	a5,133c8 <_vfprintf_r+0x18a8>
   125c8:	08f14603          	lbu	a2,143(sp)
   125cc:	04700793          	li	a5,71
   125d0:	3da7d8e3          	ble	s10,a5,131a0 <_vfprintf_r+0x1680>
   125d4:	00022937          	lui	s2,0x22
   125d8:	ca890913          	addi	s2,s2,-856 # 21ca8 <zeroes.4123+0x678>
   125dc:	00300793          	li	a5,3
   125e0:	00f12423          	sw	a5,8(sp)
   125e4:	f7fc7c13          	andi	s8,s8,-129
   125e8:	02f12023          	sw	a5,32(sp)
   125ec:	00000413          	li	s0,0
   125f0:	04012623          	sw	zero,76(sp)
   125f4:	941ff06f          	j	11f34 <_vfprintf_r+0x414>
   125f8:	008c6c13          	ori	s8,s8,8
   125fc:	ee0ff06f          	j	11cdc <_vfprintf_r+0x1bc>
   12600:	00060463          	beqz	a2,12608 <_vfprintf_r+0xae8>
   12604:	1280106f          	j	1372c <_vfprintf_r+0x1c0c>
   12608:	000227b7          	lui	a5,0x22
   1260c:	cd878793          	addi	a5,a5,-808 # 21cd8 <zeroes.4123+0x6a8>
   12610:	02f13c23          	sd	a5,56(sp)
   12614:	010c7793          	andi	a5,s8,16
   12618:	b40792e3          	bnez	a5,1215c <_vfprintf_r+0x63c>
   1261c:	040c7793          	andi	a5,s8,64
   12620:	02813703          	ld	a4,40(sp)
   12624:	1c0784e3          	beqz	a5,12fec <_vfprintf_r+0x14cc>
   12628:	00075783          	lhu	a5,0(a4)
   1262c:	00870713          	addi	a4,a4,8
   12630:	02e13423          	sd	a4,40(sp)
   12634:	b39ff06f          	j	1216c <_vfprintf_r+0x64c>
   12638:	00060463          	beqz	a2,12640 <_vfprintf_r+0xb20>
   1263c:	10c0106f          	j	13748 <_vfprintf_r+0x1c28>
   12640:	010c7793          	andi	a5,s8,16
   12644:	1a078ce3          	beqz	a5,12ffc <_vfprintf_r+0x14dc>
   12648:	02813683          	ld	a3,40(sp)
   1264c:	01c12703          	lw	a4,28(sp)
   12650:	0006b783          	ld	a5,0(a3)
   12654:	00868693          	addi	a3,a3,8
   12658:	02d13423          	sd	a3,40(sp)
   1265c:	00e7b023          	sd	a4,0(a5)
   12660:	de0ff06f          	j	11c40 <_vfprintf_r+0x120>
   12664:	00060463          	beqz	a2,1266c <_vfprintf_r+0xb4c>
   12668:	0d40106f          	j	1373c <_vfprintf_r+0x1c1c>
   1266c:	010c6c13          	ori	s8,s8,16
   12670:	010c7793          	andi	a5,s8,16
   12674:	ec0796e3          	bnez	a5,12540 <_vfprintf_r+0xa20>
   12678:	040c7793          	andi	a5,s8,64
   1267c:	02813703          	ld	a4,40(sp)
   12680:	1a0780e3          	beqz	a5,13020 <_vfprintf_r+0x1500>
   12684:	00071783          	lh	a5,0(a4)
   12688:	00870713          	addi	a4,a4,8
   1268c:	02e13423          	sd	a4,40(sp)
   12690:	ec1ff06f          	j	12550 <_vfprintf_r+0xa30>
   12694:	00022737          	lui	a4,0x22
   12698:	cd870713          	addi	a4,a4,-808 # 21cd8 <zeroes.4123+0x6a8>
   1269c:	00000613          	li	a2,0
   126a0:	02e13c23          	sd	a4,56(sp)
   126a4:	07800d13          	li	s10,120
   126a8:	ee0ff06f          	j	11d88 <_vfprintf_r+0x268>
   126ac:	00060463          	beqz	a2,126b4 <_vfprintf_r+0xb94>
   126b0:	0c00106f          	j	13770 <_vfprintf_r+0x1c50>
   126b4:	f60d0263          	beqz	s10,11e18 <_vfprintf_r+0x2f8>
   126b8:	00100793          	li	a5,1
   126bc:	00f12423          	sw	a5,8(sp)
   126c0:	0da10423          	sb	s10,200(sp)
   126c4:	080107a3          	sb	zero,143(sp)
   126c8:	00000613          	li	a2,0
   126cc:	02f12023          	sw	a5,32(sp)
   126d0:	00000413          	li	s0,0
   126d4:	04012623          	sw	zero,76(sp)
   126d8:	0c810913          	addi	s2,sp,200
   126dc:	afdff06f          	j	121d8 <_vfprintf_r+0x6b8>
   126e0:	02e13423          	sd	a4,40(sp)
   126e4:	00022737          	lui	a4,0x22
   126e8:	cd870713          	addi	a4,a4,-808 # 21cd8 <zeroes.4123+0x6a8>
   126ec:	00068c13          	mv	s8,a3
   126f0:	02e13c23          	sd	a4,56(sp)
   126f4:	07800d13          	li	s10,120
   126f8:	3a079a63          	bnez	a5,12aac <_vfprintf_r+0xf8c>
   126fc:	00000613          	li	a2,0
   12700:	00200793          	li	a5,2
   12704:	00100713          	li	a4,1
   12708:	54e78863          	beq	a5,a4,12c58 <_vfprintf_r+0x1138>
   1270c:	00200713          	li	a4,2
   12710:	e6e78a63          	beq	a5,a4,11d84 <_vfprintf_r+0x264>
   12714:	00000793          	li	a5,0
   12718:	fc4ff06f          	j	11edc <_vfprintf_r+0x3bc>
   1271c:	0c013783          	ld	a5,192(sp)
   12720:	ba1ff06f          	j	122c0 <_vfprintf_r+0x7a0>
   12724:	07012683          	lw	a3,112(sp)
   12728:	00100713          	li	a4,1
   1272c:	00178793          	addi	a5,a5,1
   12730:	6cd75663          	ble	a3,a4,12dfc <_vfprintf_r+0x12dc>
   12734:	0b812703          	lw	a4,184(sp)
   12738:	00100693          	li	a3,1
   1273c:	00d8b423          	sd	a3,8(a7)
   12740:	0017071b          	addiw	a4,a4,1
   12744:	0128b023          	sd	s2,0(a7)
   12748:	0cf13023          	sd	a5,192(sp)
   1274c:	0ae12c23          	sw	a4,184(sp)
   12750:	00700693          	li	a3,7
   12754:	01088893          	addi	a7,a7,16
   12758:	6ce6ca63          	blt	a3,a4,12e2c <_vfprintf_r+0x130c>
   1275c:	06813683          	ld	a3,104(sp)
   12760:	06013603          	ld	a2,96(sp)
   12764:	0017071b          	addiw	a4,a4,1
   12768:	00f687b3          	add	a5,a3,a5
   1276c:	00d8b423          	sd	a3,8(a7)
   12770:	00c8b023          	sd	a2,0(a7)
   12774:	0cf13023          	sd	a5,192(sp)
   12778:	0ae12c23          	sw	a4,184(sp)
   1277c:	00700693          	li	a3,7
   12780:	01088893          	addi	a7,a7,16
   12784:	6ee6c263          	blt	a3,a4,12e68 <_vfprintf_r+0x1348>
   12788:	f20007d3          	fmv.d.x	fa5,zero
   1278c:	05813707          	fld	fa4,88(sp)
   12790:	a2f726d3          	feq.d	a3,fa4,fa5
   12794:	40069c63          	bnez	a3,12bac <_vfprintf_r+0x108c>
   12798:	07012683          	lw	a3,112(sp)
   1279c:	00190913          	addi	s2,s2,1
   127a0:	0017071b          	addiw	a4,a4,1
   127a4:	fff6869b          	addiw	a3,a3,-1
   127a8:	00d787b3          	add	a5,a5,a3
   127ac:	0128b023          	sd	s2,0(a7)
   127b0:	00d8b423          	sd	a3,8(a7)
   127b4:	0cf13023          	sd	a5,192(sp)
   127b8:	0ae12c23          	sw	a4,184(sp)
   127bc:	00700693          	li	a3,7
   127c0:	26e6c063          	blt	a3,a4,12a20 <_vfprintf_r+0xf00>
   127c4:	01088893          	addi	a7,a7,16
   127c8:	07412683          	lw	a3,116(sp)
   127cc:	0a010613          	addi	a2,sp,160
   127d0:	0017071b          	addiw	a4,a4,1
   127d4:	00f687b3          	add	a5,a3,a5
   127d8:	00c8b023          	sd	a2,0(a7)
   127dc:	00d8b423          	sd	a3,8(a7)
   127e0:	0cf13023          	sd	a5,192(sp)
   127e4:	0ae12c23          	sw	a4,184(sp)
   127e8:	00700693          	li	a3,7
   127ec:	c4e6d2e3          	ble	a4,a3,12430 <_vfprintf_r+0x910>
   127f0:	0b010613          	addi	a2,sp,176
   127f4:	000a0593          	mv	a1,s4
   127f8:	000b8513          	mv	a0,s7
   127fc:	7f40a0ef          	jal	1cff0 <__sprint_r>
   12800:	e2051863          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12804:	0c013783          	ld	a5,192(sp)
   12808:	000b0893          	mv	a7,s6
   1280c:	c29ff06f          	j	12434 <_vfprintf_r+0x914>
   12810:	06500713          	li	a4,101
   12814:	f1a758e3          	ble	s10,a4,12724 <_vfprintf_r+0xc04>
   12818:	f20007d3          	fmv.d.x	fa5,zero
   1281c:	05813707          	fld	fa4,88(sp)
   12820:	a2f72753          	feq.d	a4,fa4,fa5
   12824:	28070863          	beqz	a4,12ab4 <_vfprintf_r+0xf94>
   12828:	0b812703          	lw	a4,184(sp)
   1282c:	000226b7          	lui	a3,0x22
   12830:	cf868693          	addi	a3,a3,-776 # 21cf8 <zeroes.4123+0x6c8>
   12834:	00d8b023          	sd	a3,0(a7)
   12838:	00178793          	addi	a5,a5,1
   1283c:	00100693          	li	a3,1
   12840:	0017071b          	addiw	a4,a4,1
   12844:	00d8b423          	sd	a3,8(a7)
   12848:	0cf13023          	sd	a5,192(sp)
   1284c:	0ae12c23          	sw	a4,184(sp)
   12850:	00700693          	li	a3,7
   12854:	01088893          	addi	a7,a7,16
   12858:	7ee6ca63          	blt	a3,a4,1304c <_vfprintf_r+0x152c>
   1285c:	09812703          	lw	a4,152(sp)
   12860:	07012683          	lw	a3,112(sp)
   12864:	00d74663          	blt	a4,a3,12870 <_vfprintf_r+0xd50>
   12868:	001c7713          	andi	a4,s8,1
   1286c:	bc0704e3          	beqz	a4,12434 <_vfprintf_r+0x914>
   12870:	06013703          	ld	a4,96(sp)
   12874:	06813683          	ld	a3,104(sp)
   12878:	01088893          	addi	a7,a7,16
   1287c:	fee8b823          	sd	a4,-16(a7)
   12880:	0b812703          	lw	a4,184(sp)
   12884:	00d787b3          	add	a5,a5,a3
   12888:	fed8bc23          	sd	a3,-8(a7)
   1288c:	0017071b          	addiw	a4,a4,1
   12890:	0cf13023          	sd	a5,192(sp)
   12894:	0ae12c23          	sw	a4,184(sp)
   12898:	00700693          	li	a3,7
   1289c:	1ce6c8e3          	blt	a3,a4,1326c <_vfprintf_r+0x174c>
   128a0:	07012703          	lw	a4,112(sp)
   128a4:	fff7041b          	addiw	s0,a4,-1
   128a8:	b88056e3          	blez	s0,12434 <_vfprintf_r+0x914>
   128ac:	01000713          	li	a4,16
   128b0:	36875c63          	ble	s0,a4,12c28 <_vfprintf_r+0x1108>
   128b4:	01000913          	li	s2,16
   128b8:	0b812703          	lw	a4,184(sp)
   128bc:	00913823          	sd	s1,16(sp)
   128c0:	00700d13          	li	s10,7
   128c4:	00090693          	mv	a3,s2
   128c8:	00c0006f          	j	128d4 <_vfprintf_r+0xdb4>
   128cc:	ff04041b          	addiw	s0,s0,-16
   128d0:	3686d063          	ble	s0,a3,12c30 <_vfprintf_r+0x1110>
   128d4:	01078793          	addi	a5,a5,16
   128d8:	0017071b          	addiw	a4,a4,1
   128dc:	0098b023          	sd	s1,0(a7)
   128e0:	0128b423          	sd	s2,8(a7)
   128e4:	0cf13023          	sd	a5,192(sp)
   128e8:	0ae12c23          	sw	a4,184(sp)
   128ec:	01088893          	addi	a7,a7,16
   128f0:	fced5ee3          	ble	a4,s10,128cc <_vfprintf_r+0xdac>
   128f4:	0b010613          	addi	a2,sp,176
   128f8:	000a0593          	mv	a1,s4
   128fc:	000b8513          	mv	a0,s7
   12900:	00d13023          	sd	a3,0(sp)
   12904:	6ec0a0ef          	jal	1cff0 <__sprint_r>
   12908:	d2051463          	bnez	a0,11e30 <_vfprintf_r+0x310>
   1290c:	0c013783          	ld	a5,192(sp)
   12910:	0b812703          	lw	a4,184(sp)
   12914:	000b0893          	mv	a7,s6
   12918:	00013683          	ld	a3,0(sp)
   1291c:	fb1ff06f          	j	128cc <_vfprintf_r+0xdac>
   12920:	01812703          	lw	a4,24(sp)
   12924:	00812683          	lw	a3,8(sp)
   12928:	40d70cbb          	subw	s9,a4,a3
   1292c:	a19056e3          	blez	s9,12338 <_vfprintf_r+0x818>
   12930:	01000713          	li	a4,16
   12934:	2f975ee3          	ble	s9,a4,13430 <_vfprintf_r+0x1910>
   12938:	01000813          	li	a6,16
   1293c:	0b812703          	lw	a4,184(sp)
   12940:	00913823          	sd	s1,16(sp)
   12944:	00700313          	li	t1,7
   12948:	00080d93          	mv	s11,a6
   1294c:	00c0006f          	j	12958 <_vfprintf_r+0xe38>
   12950:	ff0c8c9b          	addiw	s9,s9,-16
   12954:	059dde63          	ble	s9,s11,129b0 <_vfprintf_r+0xe90>
   12958:	01078793          	addi	a5,a5,16
   1295c:	0017071b          	addiw	a4,a4,1
   12960:	0098b023          	sd	s1,0(a7)
   12964:	0108b423          	sd	a6,8(a7)
   12968:	0cf13023          	sd	a5,192(sp)
   1296c:	0ae12c23          	sw	a4,184(sp)
   12970:	01088893          	addi	a7,a7,16
   12974:	fce35ee3          	ble	a4,t1,12950 <_vfprintf_r+0xe30>
   12978:	0b010613          	addi	a2,sp,176
   1297c:	000a0593          	mv	a1,s4
   12980:	000b8513          	mv	a0,s7
   12984:	04613023          	sd	t1,64(sp)
   12988:	01013023          	sd	a6,0(sp)
   1298c:	6640a0ef          	jal	1cff0 <__sprint_r>
   12990:	ca051063          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12994:	ff0c8c9b          	addiw	s9,s9,-16
   12998:	0c013783          	ld	a5,192(sp)
   1299c:	0b812703          	lw	a4,184(sp)
   129a0:	000b0893          	mv	a7,s6
   129a4:	04013303          	ld	t1,64(sp)
   129a8:	00013803          	ld	a6,0(sp)
   129ac:	fb9dc6e3          	blt	s11,s9,12958 <_vfprintf_r+0xe38>
   129b0:	01013603          	ld	a2,16(sp)
   129b4:	019787b3          	add	a5,a5,s9
   129b8:	0017071b          	addiw	a4,a4,1
   129bc:	00c8b023          	sd	a2,0(a7)
   129c0:	0198b423          	sd	s9,8(a7)
   129c4:	0cf13023          	sd	a5,192(sp)
   129c8:	0ae12c23          	sw	a4,184(sp)
   129cc:	00700693          	li	a3,7
   129d0:	01088893          	addi	a7,a7,16
   129d4:	96e6d2e3          	ble	a4,a3,12338 <_vfprintf_r+0x818>
   129d8:	0b010613          	addi	a2,sp,176
   129dc:	000a0593          	mv	a1,s4
   129e0:	000b8513          	mv	a0,s7
   129e4:	60c0a0ef          	jal	1cff0 <__sprint_r>
   129e8:	c4051463          	bnez	a0,11e30 <_vfprintf_r+0x310>
   129ec:	0c013783          	ld	a5,192(sp)
   129f0:	000b0893          	mv	a7,s6
   129f4:	945ff06f          	j	12338 <_vfprintf_r+0x818>
   129f8:	00913823          	sd	s1,16(sp)
   129fc:	01013683          	ld	a3,16(sp)
   12a00:	008787b3          	add	a5,a5,s0
   12a04:	0017071b          	addiw	a4,a4,1
   12a08:	00d8b023          	sd	a3,0(a7)
   12a0c:	0088b423          	sd	s0,8(a7)
   12a10:	0cf13023          	sd	a5,192(sp)
   12a14:	0ae12c23          	sw	a4,184(sp)
   12a18:	00700693          	li	a3,7
   12a1c:	dae6d4e3          	ble	a4,a3,127c4 <_vfprintf_r+0xca4>
   12a20:	0b010613          	addi	a2,sp,176
   12a24:	000a0593          	mv	a1,s4
   12a28:	000b8513          	mv	a0,s7
   12a2c:	5c40a0ef          	jal	1cff0 <__sprint_r>
   12a30:	c0051063          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12a34:	0c013783          	ld	a5,192(sp)
   12a38:	0b812703          	lw	a4,184(sp)
   12a3c:	000b0893          	mv	a7,s6
   12a40:	d89ff06f          	j	127c8 <_vfprintf_r+0xca8>
   12a44:	0b010613          	addi	a2,sp,176
   12a48:	000a0593          	mv	a1,s4
   12a4c:	000b8513          	mv	a0,s7
   12a50:	5a00a0ef          	jal	1cff0 <__sprint_r>
   12a54:	ac0502e3          	beqz	a0,12518 <_vfprintf_r+0x9f8>
   12a58:	bd8ff06f          	j	11e30 <_vfprintf_r+0x310>
   12a5c:	0b010613          	addi	a2,sp,176
   12a60:	000a0593          	mv	a1,s4
   12a64:	000b8513          	mv	a0,s7
   12a68:	5880a0ef          	jal	1cff0 <__sprint_r>
   12a6c:	bc051263          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12a70:	0c013783          	ld	a5,192(sp)
   12a74:	000b0893          	mv	a7,s6
   12a78:	87dff06f          	j	122f4 <_vfprintf_r+0x7d4>
   12a7c:	0b010613          	addi	a2,sp,176
   12a80:	000a0593          	mv	a1,s4
   12a84:	000b8513          	mv	a0,s7
   12a88:	5680a0ef          	jal	1cff0 <__sprint_r>
   12a8c:	ba051263          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12a90:	0c013783          	ld	a5,192(sp)
   12a94:	000b0893          	mv	a7,s6
   12a98:	895ff06f          	j	1232c <_vfprintf_r+0x80c>
   12a9c:	080107a3          	sb	zero,143(sp)
   12aa0:	c4044ce3          	bltz	s0,126f8 <_vfprintf_r+0xbd8>
   12aa4:	f7fc7c13          	andi	s8,s8,-129
   12aa8:	ac078a63          	beqz	a5,11d7c <_vfprintf_r+0x25c>
   12aac:	00000613          	li	a2,0
   12ab0:	ad8ff06f          	j	11d88 <_vfprintf_r+0x268>
   12ab4:	09812403          	lw	s0,152(sp)
   12ab8:	5a805c63          	blez	s0,13070 <_vfprintf_r+0x1550>
   12abc:	04c12703          	lw	a4,76(sp)
   12ac0:	07012683          	lw	a3,112(sp)
   12ac4:	00070413          	mv	s0,a4
   12ac8:	00e6d463          	ble	a4,a3,12ad0 <_vfprintf_r+0xfb0>
   12acc:	00068413          	mv	s0,a3
   12ad0:	02805663          	blez	s0,12afc <_vfprintf_r+0xfdc>
   12ad4:	0b812703          	lw	a4,184(sp)
   12ad8:	008787b3          	add	a5,a5,s0
   12adc:	0128b023          	sd	s2,0(a7)
   12ae0:	0017071b          	addiw	a4,a4,1
   12ae4:	0088b423          	sd	s0,8(a7)
   12ae8:	0cf13023          	sd	a5,192(sp)
   12aec:	0ae12c23          	sw	a4,184(sp)
   12af0:	00700693          	li	a3,7
   12af4:	01088893          	addi	a7,a7,16
   12af8:	6ae6ca63          	blt	a3,a4,131ac <_vfprintf_r+0x168c>
   12afc:	020448e3          	bltz	s0,1332c <_vfprintf_r+0x180c>
   12b00:	04c12703          	lw	a4,76(sp)
   12b04:	4087043b          	subw	s0,a4,s0
   12b08:	1a805c63          	blez	s0,12cc0 <_vfprintf_r+0x11a0>
   12b0c:	01000713          	li	a4,16
   12b10:	16875263          	ble	s0,a4,12c74 <_vfprintf_r+0x1154>
   12b14:	01000d13          	li	s10,16
   12b18:	0b812703          	lw	a4,184(sp)
   12b1c:	00913823          	sd	s1,16(sp)
   12b20:	00700693          	li	a3,7
   12b24:	000d0813          	mv	a6,s10
   12b28:	00c0006f          	j	12b34 <_vfprintf_r+0x1014>
   12b2c:	ff04041b          	addiw	s0,s0,-16
   12b30:	14885663          	ble	s0,a6,12c7c <_vfprintf_r+0x115c>
   12b34:	01078793          	addi	a5,a5,16
   12b38:	0017071b          	addiw	a4,a4,1
   12b3c:	0098b023          	sd	s1,0(a7)
   12b40:	01a8b423          	sd	s10,8(a7)
   12b44:	0cf13023          	sd	a5,192(sp)
   12b48:	0ae12c23          	sw	a4,184(sp)
   12b4c:	01088893          	addi	a7,a7,16
   12b50:	fce6dee3          	ble	a4,a3,12b2c <_vfprintf_r+0x100c>
   12b54:	0b010613          	addi	a2,sp,176
   12b58:	000a0593          	mv	a1,s4
   12b5c:	000b8513          	mv	a0,s7
   12b60:	03013023          	sd	a6,32(sp)
   12b64:	00d13023          	sd	a3,0(sp)
   12b68:	4880a0ef          	jal	1cff0 <__sprint_r>
   12b6c:	ac051263          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12b70:	0c013783          	ld	a5,192(sp)
   12b74:	0b812703          	lw	a4,184(sp)
   12b78:	000b0893          	mv	a7,s6
   12b7c:	02013803          	ld	a6,32(sp)
   12b80:	00013683          	ld	a3,0(sp)
   12b84:	fa9ff06f          	j	12b2c <_vfprintf_r+0x100c>
   12b88:	0b010613          	addi	a2,sp,176
   12b8c:	000a0593          	mv	a1,s4
   12b90:	000b8513          	mv	a0,s7
   12b94:	45c0a0ef          	jal	1cff0 <__sprint_r>
   12b98:	a8051c63          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12b9c:	08f14603          	lbu	a2,143(sp)
   12ba0:	0c013783          	ld	a5,192(sp)
   12ba4:	000b0893          	mv	a7,s6
   12ba8:	f18ff06f          	j	122c0 <_vfprintf_r+0x7a0>
   12bac:	07012683          	lw	a3,112(sp)
   12bb0:	fff6841b          	addiw	s0,a3,-1
   12bb4:	c0805ae3          	blez	s0,127c8 <_vfprintf_r+0xca8>
   12bb8:	01000693          	li	a3,16
   12bbc:	e286dee3          	ble	s0,a3,129f8 <_vfprintf_r+0xed8>
   12bc0:	01000913          	li	s2,16
   12bc4:	00913823          	sd	s1,16(sp)
   12bc8:	00700d13          	li	s10,7
   12bcc:	00090693          	mv	a3,s2
   12bd0:	00c0006f          	j	12bdc <_vfprintf_r+0x10bc>
   12bd4:	ff04041b          	addiw	s0,s0,-16
   12bd8:	e286d2e3          	ble	s0,a3,129fc <_vfprintf_r+0xedc>
   12bdc:	01078793          	addi	a5,a5,16
   12be0:	0017071b          	addiw	a4,a4,1
   12be4:	0098b023          	sd	s1,0(a7)
   12be8:	0128b423          	sd	s2,8(a7)
   12bec:	0cf13023          	sd	a5,192(sp)
   12bf0:	0ae12c23          	sw	a4,184(sp)
   12bf4:	01088893          	addi	a7,a7,16
   12bf8:	fced5ee3          	ble	a4,s10,12bd4 <_vfprintf_r+0x10b4>
   12bfc:	0b010613          	addi	a2,sp,176
   12c00:	000a0593          	mv	a1,s4
   12c04:	000b8513          	mv	a0,s7
   12c08:	00d13023          	sd	a3,0(sp)
   12c0c:	3e40a0ef          	jal	1cff0 <__sprint_r>
   12c10:	a2051063          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12c14:	0c013783          	ld	a5,192(sp)
   12c18:	0b812703          	lw	a4,184(sp)
   12c1c:	000b0893          	mv	a7,s6
   12c20:	00013683          	ld	a3,0(sp)
   12c24:	fb1ff06f          	j	12bd4 <_vfprintf_r+0x10b4>
   12c28:	0b812703          	lw	a4,184(sp)
   12c2c:	00913823          	sd	s1,16(sp)
   12c30:	01013683          	ld	a3,16(sp)
   12c34:	008787b3          	add	a5,a5,s0
   12c38:	0088b423          	sd	s0,8(a7)
   12c3c:	00d8b023          	sd	a3,0(a7)
   12c40:	0017071b          	addiw	a4,a4,1
   12c44:	0cf13023          	sd	a5,192(sp)
   12c48:	0ae12c23          	sw	a4,184(sp)
   12c4c:	00700693          	li	a3,7
   12c50:	fee6d063          	ble	a4,a3,12430 <_vfprintf_r+0x910>
   12c54:	b9dff06f          	j	127f0 <_vfprintf_r+0xcd0>
   12c58:	00000793          	li	a5,0
   12c5c:	0307879b          	addiw	a5,a5,48
   12c60:	0ef107a3          	sb	a5,239(sp)
   12c64:	07813783          	ld	a5,120(sp)
   12c68:	0ef10913          	addi	s2,sp,239
   12c6c:	02f12023          	sw	a5,32(sp)
   12c70:	aacff06f          	j	11f1c <_vfprintf_r+0x3fc>
   12c74:	0b812703          	lw	a4,184(sp)
   12c78:	00913823          	sd	s1,16(sp)
   12c7c:	01013683          	ld	a3,16(sp)
   12c80:	008787b3          	add	a5,a5,s0
   12c84:	0017071b          	addiw	a4,a4,1
   12c88:	00d8b023          	sd	a3,0(a7)
   12c8c:	0088b423          	sd	s0,8(a7)
   12c90:	0cf13023          	sd	a5,192(sp)
   12c94:	0ae12c23          	sw	a4,184(sp)
   12c98:	00700693          	li	a3,7
   12c9c:	01088893          	addi	a7,a7,16
   12ca0:	02e6d063          	ble	a4,a3,12cc0 <_vfprintf_r+0x11a0>
   12ca4:	0b010613          	addi	a2,sp,176
   12ca8:	000a0593          	mv	a1,s4
   12cac:	000b8513          	mv	a0,s7
   12cb0:	3400a0ef          	jal	1cff0 <__sprint_r>
   12cb4:	96051e63          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12cb8:	0c013783          	ld	a5,192(sp)
   12cbc:	000b0893          	mv	a7,s6
   12cc0:	04c12d03          	lw	s10,76(sp)
   12cc4:	09812703          	lw	a4,152(sp)
   12cc8:	07012683          	lw	a3,112(sp)
   12ccc:	01a90d33          	add	s10,s2,s10
   12cd0:	0cd74a63          	blt	a4,a3,12da4 <_vfprintf_r+0x1284>
   12cd4:	001c7693          	andi	a3,s8,1
   12cd8:	0c069663          	bnez	a3,12da4 <_vfprintf_r+0x1284>
   12cdc:	07012683          	lw	a3,112(sp)
   12ce0:	00d90433          	add	s0,s2,a3
   12ce4:	41a40433          	sub	s0,s0,s10
   12ce8:	40e6873b          	subw	a4,a3,a4
   12cec:	0004041b          	sext.w	s0,s0
   12cf0:	00875463          	ble	s0,a4,12cf8 <_vfprintf_r+0x11d8>
   12cf4:	00070413          	mv	s0,a4
   12cf8:	02805663          	blez	s0,12d24 <_vfprintf_r+0x1204>
   12cfc:	0b812683          	lw	a3,184(sp)
   12d00:	008787b3          	add	a5,a5,s0
   12d04:	01a8b023          	sd	s10,0(a7)
   12d08:	0016869b          	addiw	a3,a3,1
   12d0c:	0088b423          	sd	s0,8(a7)
   12d10:	0cf13023          	sd	a5,192(sp)
   12d14:	0ad12c23          	sw	a3,184(sp)
   12d18:	00700613          	li	a2,7
   12d1c:	01088893          	addi	a7,a7,16
   12d20:	4cd64263          	blt	a2,a3,131e4 <_vfprintf_r+0x16c4>
   12d24:	60044863          	bltz	s0,13334 <_vfprintf_r+0x1814>
   12d28:	4087043b          	subw	s0,a4,s0
   12d2c:	f0805463          	blez	s0,12434 <_vfprintf_r+0x914>
   12d30:	01000713          	li	a4,16
   12d34:	ee875ae3          	ble	s0,a4,12c28 <_vfprintf_r+0x1108>
   12d38:	01000913          	li	s2,16
   12d3c:	0b812703          	lw	a4,184(sp)
   12d40:	00913823          	sd	s1,16(sp)
   12d44:	00700d13          	li	s10,7
   12d48:	00090693          	mv	a3,s2
   12d4c:	00c0006f          	j	12d58 <_vfprintf_r+0x1238>
   12d50:	ff04041b          	addiw	s0,s0,-16
   12d54:	ec86dee3          	ble	s0,a3,12c30 <_vfprintf_r+0x1110>
   12d58:	01078793          	addi	a5,a5,16
   12d5c:	0017071b          	addiw	a4,a4,1
   12d60:	0098b023          	sd	s1,0(a7)
   12d64:	0128b423          	sd	s2,8(a7)
   12d68:	0cf13023          	sd	a5,192(sp)
   12d6c:	0ae12c23          	sw	a4,184(sp)
   12d70:	01088893          	addi	a7,a7,16
   12d74:	fced5ee3          	ble	a4,s10,12d50 <_vfprintf_r+0x1230>
   12d78:	0b010613          	addi	a2,sp,176
   12d7c:	000a0593          	mv	a1,s4
   12d80:	000b8513          	mv	a0,s7
   12d84:	00d13023          	sd	a3,0(sp)
   12d88:	2680a0ef          	jal	1cff0 <__sprint_r>
   12d8c:	8a051263          	bnez	a0,11e30 <_vfprintf_r+0x310>
   12d90:	0c013783          	ld	a5,192(sp)
   12d94:	0b812703          	lw	a4,184(sp)
   12d98:	000b0893          	mv	a7,s6
   12d9c:	00013683          	ld	a3,0(sp)
   12da0:	fb1ff06f          	j	12d50 <_vfprintf_r+0x1230>
   12da4:	06013683          	ld	a3,96(sp)
   12da8:	06813603          	ld	a2,104(sp)
   12dac:	01088893          	addi	a7,a7,16
   12db0:	fed8b823          	sd	a3,-16(a7)
   12db4:	0b812683          	lw	a3,184(sp)
   12db8:	00c787b3          	add	a5,a5,a2
   12dbc:	fec8bc23          	sd	a2,-8(a7)
   12dc0:	0016869b          	addiw	a3,a3,1
   12dc4:	0cf13023          	sd	a5,192(sp)
   12dc8:	0ad12c23          	sw	a3,184(sp)
   12dcc:	00700613          	li	a2,7
   12dd0:	f0d656e3          	ble	a3,a2,12cdc <_vfprintf_r+0x11bc>
   12dd4:	0b010613          	addi	a2,sp,176
   12dd8:	000a0593          	mv	a1,s4
   12ddc:	000b8513          	mv	a0,s7
   12de0:	2100a0ef          	jal	1cff0 <__sprint_r>
   12de4:	00050463          	beqz	a0,12dec <_vfprintf_r+0x12cc>
   12de8:	848ff06f          	j	11e30 <_vfprintf_r+0x310>
   12dec:	09812703          	lw	a4,152(sp)
   12df0:	0c013783          	ld	a5,192(sp)
   12df4:	000b0893          	mv	a7,s6
   12df8:	ee5ff06f          	j	12cdc <_vfprintf_r+0x11bc>
   12dfc:	00ec7733          	and	a4,s8,a4
   12e00:	92071ae3          	bnez	a4,12734 <_vfprintf_r+0xc14>
   12e04:	0b812703          	lw	a4,184(sp)
   12e08:	0128b023          	sd	s2,0(a7)
   12e0c:	00100693          	li	a3,1
   12e10:	0017071b          	addiw	a4,a4,1
   12e14:	99dff06f          	j	127b0 <_vfprintf_r+0xc90>
   12e18:	02813783          	ld	a5,40(sp)
   12e1c:	00878713          	addi	a4,a5,8
   12e20:	0007e783          	lwu	a5,0(a5)
   12e24:	a0045e63          	bgez	s0,12040 <_vfprintf_r+0x520>
   12e28:	b04ff06f          	j	1212c <_vfprintf_r+0x60c>
   12e2c:	0b010613          	addi	a2,sp,176
   12e30:	000a0593          	mv	a1,s4
   12e34:	000b8513          	mv	a0,s7
   12e38:	1b80a0ef          	jal	1cff0 <__sprint_r>
   12e3c:	00050463          	beqz	a0,12e44 <_vfprintf_r+0x1324>
   12e40:	ff1fe06f          	j	11e30 <_vfprintf_r+0x310>
   12e44:	0c013783          	ld	a5,192(sp)
   12e48:	0b812703          	lw	a4,184(sp)
   12e4c:	000b0893          	mv	a7,s6
   12e50:	90dff06f          	j	1275c <_vfprintf_r+0xc3c>
   12e54:	02813783          	ld	a5,40(sp)
   12e58:	00878713          	addi	a4,a5,8
   12e5c:	0007e783          	lwu	a5,0(a5)
   12e60:	86045063          	bgez	s0,11ec0 <_vfprintf_r+0x3a0>
   12e64:	a84ff06f          	j	120e8 <_vfprintf_r+0x5c8>
   12e68:	0b010613          	addi	a2,sp,176
   12e6c:	000a0593          	mv	a1,s4
   12e70:	000b8513          	mv	a0,s7
   12e74:	17c0a0ef          	jal	1cff0 <__sprint_r>
   12e78:	00050463          	beqz	a0,12e80 <_vfprintf_r+0x1360>
   12e7c:	fb5fe06f          	j	11e30 <_vfprintf_r+0x310>
   12e80:	0c013783          	ld	a5,192(sp)
   12e84:	0b812703          	lw	a4,184(sp)
   12e88:	000b0893          	mv	a7,s6
   12e8c:	8fdff06f          	j	12788 <_vfprintf_r+0xc68>
   12e90:	02d00713          	li	a4,45
   12e94:	08e107a3          	sb	a4,143(sp)
   12e98:	40f007b3          	neg	a5,a5
   12e9c:	4a044063          	bltz	s0,1333c <_vfprintf_r+0x181c>
   12ea0:	f7fc7c13          	andi	s8,s8,-129
   12ea4:	02d00613          	li	a2,45
   12ea8:	9a8ff06f          	j	12050 <_vfprintf_r+0x530>
   12eac:	05813507          	fld	fa0,88(sp)
   12eb0:	01113023          	sd	a7,0(sp)
   12eb4:	7e0060ef          	jal	19694 <__fpclassifyd>
   12eb8:	00013883          	ld	a7,0(sp)
   12ebc:	2a050463          	beqz	a0,13164 <_vfprintf_r+0x1644>
   12ec0:	fff00793          	li	a5,-1
   12ec4:	fdfd7d93          	andi	s11,s10,-33
   12ec8:	62f40c63          	beq	s0,a5,13500 <_vfprintf_r+0x19e0>
   12ecc:	04700793          	li	a5,71
   12ed0:	62fd8263          	beq	s11,a5,134f4 <_vfprintf_r+0x19d4>
   12ed4:	05813703          	ld	a4,88(sp)
   12ed8:	100c6693          	ori	a3,s8,256
   12edc:	00d12023          	sw	a3,0(sp)
   12ee0:	42075793          	srai	a5,a4,0x20
   12ee4:	f2070453          	fmv.d.x	fs0,a4
   12ee8:	00000c93          	li	s9,0
   12eec:	6607c663          	bltz	a5,13558 <_vfprintf_r+0x1a38>
   12ef0:	06600793          	li	a5,102
   12ef4:	60fd0a63          	beq	s10,a5,13508 <_vfprintf_r+0x19e8>
   12ef8:	04600793          	li	a5,70
   12efc:	72fd0863          	beq	s10,a5,1362c <_vfprintf_r+0x1b0c>
   12f00:	fbbd859b          	addiw	a1,s11,-69
   12f04:	0015b593          	seqz	a1,a1
   12f08:	228405d3          	fmv.d	fa1,fs0
   12f0c:	00b405bb          	addw	a1,s0,a1
   12f10:	09c10793          	addi	a5,sp,156
   12f14:	00058693          	mv	a3,a1
   12f18:	0a810813          	addi	a6,sp,168
   12f1c:	09810713          	addi	a4,sp,152
   12f20:	00200613          	li	a2,2
   12f24:	000b8513          	mv	a0,s7
   12f28:	01113823          	sd	a7,16(sp)
   12f2c:	00b13423          	sd	a1,8(sp)
   12f30:	26c020ef          	jal	1519c <_dtoa_r>
   12f34:	06700793          	li	a5,103
   12f38:	00050913          	mv	s2,a0
   12f3c:	00813583          	ld	a1,8(sp)
   12f40:	01013883          	ld	a7,16(sp)
   12f44:	46fd0863          	beq	s10,a5,133b4 <_vfprintf_r+0x1894>
   12f48:	04700793          	li	a5,71
   12f4c:	00b50733          	add	a4,a0,a1
   12f50:	48fd0a63          	beq	s10,a5,133e4 <_vfprintf_r+0x18c4>
   12f54:	f20007d3          	fmv.d.x	fa5,zero
   12f58:	00070793          	mv	a5,a4
   12f5c:	a2f426d3          	feq.d	a3,fs0,fa5
   12f60:	02069263          	bnez	a3,12f84 <_vfprintf_r+0x1464>
   12f64:	0a813783          	ld	a5,168(sp)
   12f68:	00e7fe63          	bleu	a4,a5,12f84 <_vfprintf_r+0x1464>
   12f6c:	03000613          	li	a2,48
   12f70:	00178693          	addi	a3,a5,1
   12f74:	0ad13423          	sd	a3,168(sp)
   12f78:	00c78023          	sb	a2,0(a5)
   12f7c:	0a813783          	ld	a5,168(sp)
   12f80:	fee7e8e3          	bltu	a5,a4,12f70 <_vfprintf_r+0x1450>
   12f84:	412787b3          	sub	a5,a5,s2
   12f88:	06f12823          	sw	a5,112(sp)
   12f8c:	04700793          	li	a5,71
   12f90:	46fd8663          	beq	s11,a5,133fc <_vfprintf_r+0x18dc>
   12f94:	06500793          	li	a5,101
   12f98:	7ba7dc63          	ble	s10,a5,13750 <_vfprintf_r+0x1c30>
   12f9c:	06600793          	li	a5,102
   12fa0:	60fd0263          	beq	s10,a5,135a4 <_vfprintf_r+0x1a84>
   12fa4:	09812783          	lw	a5,152(sp)
   12fa8:	04f12623          	sw	a5,76(sp)
   12fac:	04c12703          	lw	a4,76(sp)
   12fb0:	07012683          	lw	a3,112(sp)
   12fb4:	00070793          	mv	a5,a4
   12fb8:	5ad74663          	blt	a4,a3,13564 <_vfprintf_r+0x1a44>
   12fbc:	001c7c13          	andi	s8,s8,1
   12fc0:	5c0c1463          	bnez	s8,13588 <_vfprintf_r+0x1a68>
   12fc4:	76074863          	bltz	a4,13734 <_vfprintf_r+0x1c14>
   12fc8:	04c12703          	lw	a4,76(sp)
   12fcc:	06700d13          	li	s10,103
   12fd0:	02e12023          	sw	a4,32(sp)
   12fd4:	440c9063          	bnez	s9,13414 <_vfprintf_r+0x18f4>
   12fd8:	08f14603          	lbu	a2,143(sp)
   12fdc:	00f12423          	sw	a5,8(sp)
   12fe0:	00012c03          	lw	s8,0(sp)
   12fe4:	00000413          	li	s0,0
   12fe8:	f4dfe06f          	j	11f34 <_vfprintf_r+0x414>
   12fec:	00076783          	lwu	a5,0(a4)
   12ff0:	00870713          	addi	a4,a4,8
   12ff4:	02e13423          	sd	a4,40(sp)
   12ff8:	974ff06f          	j	1216c <_vfprintf_r+0x64c>
   12ffc:	02813703          	ld	a4,40(sp)
   13000:	040c7c13          	andi	s8,s8,64
   13004:	00073783          	ld	a5,0(a4)
   13008:	00870713          	addi	a4,a4,8
   1300c:	02e13423          	sd	a4,40(sp)
   13010:	180c0263          	beqz	s8,13194 <_vfprintf_r+0x1674>
   13014:	01c15703          	lhu	a4,28(sp)
   13018:	00e79023          	sh	a4,0(a5)
   1301c:	c25fe06f          	j	11c40 <_vfprintf_r+0x120>
   13020:	00072783          	lw	a5,0(a4)
   13024:	00870713          	addi	a4,a4,8
   13028:	02e13423          	sd	a4,40(sp)
   1302c:	d24ff06f          	j	12550 <_vfprintf_r+0xa30>
   13030:	080107a3          	sb	zero,143(sp)
   13034:	ec044463          	bltz	s0,126fc <_vfprintf_r+0xbdc>
   13038:	f7fc7c13          	andi	s8,s8,-129
   1303c:	d41fe06f          	j	11d7c <_vfprintf_r+0x25c>
   13040:	0b812703          	lw	a4,184(sp)
   13044:	00913823          	sd	s1,16(sp)
   13048:	b74ff06f          	j	123bc <_vfprintf_r+0x89c>
   1304c:	0b010613          	addi	a2,sp,176
   13050:	000a0593          	mv	a1,s4
   13054:	000b8513          	mv	a0,s7
   13058:	799090ef          	jal	1cff0 <__sprint_r>
   1305c:	00050463          	beqz	a0,13064 <_vfprintf_r+0x1544>
   13060:	dd1fe06f          	j	11e30 <_vfprintf_r+0x310>
   13064:	0c013783          	ld	a5,192(sp)
   13068:	000b0893          	mv	a7,s6
   1306c:	ff0ff06f          	j	1285c <_vfprintf_r+0xd3c>
   13070:	0b812703          	lw	a4,184(sp)
   13074:	000226b7          	lui	a3,0x22
   13078:	cf868693          	addi	a3,a3,-776 # 21cf8 <zeroes.4123+0x6c8>
   1307c:	00d8b023          	sd	a3,0(a7)
   13080:	00178793          	addi	a5,a5,1
   13084:	00100693          	li	a3,1
   13088:	0017071b          	addiw	a4,a4,1
   1308c:	00d8b423          	sd	a3,8(a7)
   13090:	0cf13023          	sd	a5,192(sp)
   13094:	0ae12c23          	sw	a4,184(sp)
   13098:	00700693          	li	a3,7
   1309c:	01088893          	addi	a7,a7,16
   130a0:	16e6ca63          	blt	a3,a4,13214 <_vfprintf_r+0x16f4>
   130a4:	12040663          	beqz	s0,131d0 <_vfprintf_r+0x16b0>
   130a8:	06013703          	ld	a4,96(sp)
   130ac:	06813683          	ld	a3,104(sp)
   130b0:	01088893          	addi	a7,a7,16
   130b4:	fee8b823          	sd	a4,-16(a7)
   130b8:	0b812703          	lw	a4,184(sp)
   130bc:	00f687b3          	add	a5,a3,a5
   130c0:	fed8bc23          	sd	a3,-8(a7)
   130c4:	0017071b          	addiw	a4,a4,1
   130c8:	0cf13023          	sd	a5,192(sp)
   130cc:	0ae12c23          	sw	a4,184(sp)
   130d0:	00700693          	li	a3,7
   130d4:	3ee6ca63          	blt	a3,a4,134c8 <_vfprintf_r+0x19a8>
   130d8:	4080043b          	negw	s0,s0
   130dc:	20805263          	blez	s0,132e0 <_vfprintf_r+0x17c0>
   130e0:	01000693          	li	a3,16
   130e4:	1a86d663          	ble	s0,a3,13290 <_vfprintf_r+0x1770>
   130e8:	01000d13          	li	s10,16
   130ec:	00913823          	sd	s1,16(sp)
   130f0:	00700813          	li	a6,7
   130f4:	000d0693          	mv	a3,s10
   130f8:	00c0006f          	j	13104 <_vfprintf_r+0x15e4>
   130fc:	ff04041b          	addiw	s0,s0,-16
   13100:	1886da63          	ble	s0,a3,13294 <_vfprintf_r+0x1774>
   13104:	01078793          	addi	a5,a5,16
   13108:	0017071b          	addiw	a4,a4,1
   1310c:	0098b023          	sd	s1,0(a7)
   13110:	01a8b423          	sd	s10,8(a7)
   13114:	0cf13023          	sd	a5,192(sp)
   13118:	0ae12c23          	sw	a4,184(sp)
   1311c:	01088893          	addi	a7,a7,16
   13120:	fce85ee3          	ble	a4,a6,130fc <_vfprintf_r+0x15dc>
   13124:	0b010613          	addi	a2,sp,176
   13128:	000a0593          	mv	a1,s4
   1312c:	000b8513          	mv	a0,s7
   13130:	02d13023          	sd	a3,32(sp)
   13134:	01013023          	sd	a6,0(sp)
   13138:	6b9090ef          	jal	1cff0 <__sprint_r>
   1313c:	00050463          	beqz	a0,13144 <_vfprintf_r+0x1624>
   13140:	cf1fe06f          	j	11e30 <_vfprintf_r+0x310>
   13144:	0c013783          	ld	a5,192(sp)
   13148:	0b812703          	lw	a4,184(sp)
   1314c:	000b0893          	mv	a7,s6
   13150:	02013683          	ld	a3,32(sp)
   13154:	00013803          	ld	a6,0(sp)
   13158:	fa5ff06f          	j	130fc <_vfprintf_r+0x15dc>
   1315c:	fff00513          	li	a0,-1
   13160:	ce5fe06f          	j	11e44 <_vfprintf_r+0x324>
   13164:	04700793          	li	a5,71
   13168:	27a7c863          	blt	a5,s10,133d8 <_vfprintf_r+0x18b8>
   1316c:	00022937          	lui	s2,0x22
   13170:	cb090913          	addi	s2,s2,-848 # 21cb0 <zeroes.4123+0x680>
   13174:	00300793          	li	a5,3
   13178:	00f12423          	sw	a5,8(sp)
   1317c:	f7fc7c13          	andi	s8,s8,-129
   13180:	08f14603          	lbu	a2,143(sp)
   13184:	02f12023          	sw	a5,32(sp)
   13188:	00000413          	li	s0,0
   1318c:	04012623          	sw	zero,76(sp)
   13190:	da5fe06f          	j	11f34 <_vfprintf_r+0x414>
   13194:	01c12703          	lw	a4,28(sp)
   13198:	00e7a023          	sw	a4,0(a5)
   1319c:	aa5fe06f          	j	11c40 <_vfprintf_r+0x120>
   131a0:	00022937          	lui	s2,0x22
   131a4:	ca090913          	addi	s2,s2,-864 # 21ca0 <zeroes.4123+0x670>
   131a8:	c34ff06f          	j	125dc <_vfprintf_r+0xabc>
   131ac:	0b010613          	addi	a2,sp,176
   131b0:	000a0593          	mv	a1,s4
   131b4:	000b8513          	mv	a0,s7
   131b8:	639090ef          	jal	1cff0 <__sprint_r>
   131bc:	00050463          	beqz	a0,131c4 <_vfprintf_r+0x16a4>
   131c0:	c71fe06f          	j	11e30 <_vfprintf_r+0x310>
   131c4:	0c013783          	ld	a5,192(sp)
   131c8:	000b0893          	mv	a7,s6
   131cc:	931ff06f          	j	12afc <_vfprintf_r+0xfdc>
   131d0:	07012703          	lw	a4,112(sp)
   131d4:	ec071ae3          	bnez	a4,130a8 <_vfprintf_r+0x1588>
   131d8:	001c7713          	andi	a4,s8,1
   131dc:	a4070c63          	beqz	a4,12434 <_vfprintf_r+0x914>
   131e0:	ec9ff06f          	j	130a8 <_vfprintf_r+0x1588>
   131e4:	0b010613          	addi	a2,sp,176
   131e8:	000a0593          	mv	a1,s4
   131ec:	000b8513          	mv	a0,s7
   131f0:	601090ef          	jal	1cff0 <__sprint_r>
   131f4:	00050463          	beqz	a0,131fc <_vfprintf_r+0x16dc>
   131f8:	c39fe06f          	j	11e30 <_vfprintf_r+0x310>
   131fc:	09812703          	lw	a4,152(sp)
   13200:	07012683          	lw	a3,112(sp)
   13204:	0c013783          	ld	a5,192(sp)
   13208:	000b0893          	mv	a7,s6
   1320c:	40e6873b          	subw	a4,a3,a4
   13210:	b15ff06f          	j	12d24 <_vfprintf_r+0x1204>
   13214:	0b010613          	addi	a2,sp,176
   13218:	000a0593          	mv	a1,s4
   1321c:	000b8513          	mv	a0,s7
   13220:	5d1090ef          	jal	1cff0 <__sprint_r>
   13224:	00050463          	beqz	a0,1322c <_vfprintf_r+0x170c>
   13228:	c09fe06f          	j	11e30 <_vfprintf_r+0x310>
   1322c:	09812403          	lw	s0,152(sp)
   13230:	0c013783          	ld	a5,192(sp)
   13234:	000b0893          	mv	a7,s6
   13238:	e60418e3          	bnez	s0,130a8 <_vfprintf_r+0x1588>
   1323c:	f95ff06f          	j	131d0 <_vfprintf_r+0x16b0>
   13240:	001c7793          	andi	a5,s8,1
   13244:	00078e63          	beqz	a5,13260 <_vfprintf_r+0x1740>
   13248:	03000793          	li	a5,48
   1324c:	0ef107a3          	sb	a5,239(sp)
   13250:	07813783          	ld	a5,120(sp)
   13254:	0ef10913          	addi	s2,sp,239
   13258:	02f12023          	sw	a5,32(sp)
   1325c:	cc1fe06f          	j	11f1c <_vfprintf_r+0x3fc>
   13260:	02012023          	sw	zero,32(sp)
   13264:	000b0913          	mv	s2,s6
   13268:	cb5fe06f          	j	11f1c <_vfprintf_r+0x3fc>
   1326c:	0b010613          	addi	a2,sp,176
   13270:	000a0593          	mv	a1,s4
   13274:	000b8513          	mv	a0,s7
   13278:	579090ef          	jal	1cff0 <__sprint_r>
   1327c:	00050463          	beqz	a0,13284 <_vfprintf_r+0x1764>
   13280:	bb1fe06f          	j	11e30 <_vfprintf_r+0x310>
   13284:	0c013783          	ld	a5,192(sp)
   13288:	000b0893          	mv	a7,s6
   1328c:	e14ff06f          	j	128a0 <_vfprintf_r+0xd80>
   13290:	00913823          	sd	s1,16(sp)
   13294:	01013683          	ld	a3,16(sp)
   13298:	008787b3          	add	a5,a5,s0
   1329c:	0017071b          	addiw	a4,a4,1
   132a0:	00d8b023          	sd	a3,0(a7)
   132a4:	0088b423          	sd	s0,8(a7)
   132a8:	0cf13023          	sd	a5,192(sp)
   132ac:	0ae12c23          	sw	a4,184(sp)
   132b0:	00700693          	li	a3,7
   132b4:	01088893          	addi	a7,a7,16
   132b8:	02e6d463          	ble	a4,a3,132e0 <_vfprintf_r+0x17c0>
   132bc:	0b010613          	addi	a2,sp,176
   132c0:	000a0593          	mv	a1,s4
   132c4:	000b8513          	mv	a0,s7
   132c8:	529090ef          	jal	1cff0 <__sprint_r>
   132cc:	00050463          	beqz	a0,132d4 <_vfprintf_r+0x17b4>
   132d0:	b61fe06f          	j	11e30 <_vfprintf_r+0x310>
   132d4:	0c013783          	ld	a5,192(sp)
   132d8:	0b812703          	lw	a4,184(sp)
   132dc:	000b0893          	mv	a7,s6
   132e0:	07012683          	lw	a3,112(sp)
   132e4:	0017071b          	addiw	a4,a4,1
   132e8:	0128b023          	sd	s2,0(a7)
   132ec:	00f687b3          	add	a5,a3,a5
   132f0:	cecff06f          	j	127dc <_vfprintf_r+0xcbc>
   132f4:	00090513          	mv	a0,s2
   132f8:	f58fe0ef          	jal	11a50 <strlen>
   132fc:	0005079b          	sext.w	a5,a0
   13300:	02f12023          	sw	a5,32(sp)
   13304:	00078d93          	mv	s11,a5
   13308:	00013883          	ld	a7,0(sp)
   1330c:	0007c463          	bltz	a5,13314 <_vfprintf_r+0x17f4>
   13310:	cf5fe06f          	j	12004 <_vfprintf_r+0x4e4>
   13314:	00000d93          	li	s11,0
   13318:	cedfe06f          	j	12004 <_vfprintf_r+0x4e4>
   1331c:	0c013783          	ld	a5,192(sp)
   13320:	0b812703          	lw	a4,184(sp)
   13324:	05513823          	sd	s5,80(sp)
   13328:	f6dfe06f          	j	12294 <_vfprintf_r+0x774>
   1332c:	00000413          	li	s0,0
   13330:	fd0ff06f          	j	12b00 <_vfprintf_r+0xfe0>
   13334:	00000413          	li	s0,0
   13338:	9f1ff06f          	j	12d28 <_vfprintf_r+0x1208>
   1333c:	02d00613          	li	a2,45
   13340:	00100713          	li	a4,1
   13344:	00100693          	li	a3,1
   13348:	00d71463          	bne	a4,a3,13350 <_vfprintf_r+0x1830>
   1334c:	d05fe06f          	j	12050 <_vfprintf_r+0x530>
   13350:	00200693          	li	a3,2
   13354:	00d71463          	bne	a4,a3,1335c <_vfprintf_r+0x183c>
   13358:	a31fe06f          	j	11d88 <_vfprintf_r+0x268>
   1335c:	b81fe06f          	j	11edc <_vfprintf_r+0x3bc>
   13360:	00600713          	li	a4,6
   13364:	00877463          	bleu	s0,a4,1336c <_vfprintf_r+0x184c>
   13368:	00070413          	mv	s0,a4
   1336c:	02812023          	sw	s0,32(sp)
   13370:	00040d93          	mv	s11,s0
   13374:	32044a63          	bltz	s0,136a8 <_vfprintf_r+0x1b88>
   13378:	00022937          	lui	s2,0x22
   1337c:	01b12423          	sw	s11,8(sp)
   13380:	03913423          	sd	s9,40(sp)
   13384:	00000613          	li	a2,0
   13388:	00000413          	li	s0,0
   1338c:	04012623          	sw	zero,76(sp)
   13390:	cf090913          	addi	s2,s2,-784 # 21cf0 <zeroes.4123+0x6c0>
   13394:	e45fe06f          	j	121d8 <_vfprintf_r+0x6b8>
   13398:	0b812703          	lw	a4,184(sp)
   1339c:	05513823          	sd	s5,80(sp)
   133a0:	91cff06f          	j	124bc <_vfprintf_r+0x99c>
   133a4:	00070c13          	mv	s8,a4
   133a8:	00000613          	li	a2,0
   133ac:	00200713          	li	a4,2
   133b0:	f95ff06f          	j	13344 <_vfprintf_r+0x1824>
   133b4:	001c7793          	andi	a5,s8,1
   133b8:	00b50733          	add	a4,a0,a1
   133bc:	b8079ce3          	bnez	a5,12f54 <_vfprintf_r+0x1434>
   133c0:	0a813783          	ld	a5,168(sp)
   133c4:	bc1ff06f          	j	12f84 <_vfprintf_r+0x1464>
   133c8:	02d00793          	li	a5,45
   133cc:	08f107a3          	sb	a5,143(sp)
   133d0:	02d00613          	li	a2,45
   133d4:	9f8ff06f          	j	125cc <_vfprintf_r+0xaac>
   133d8:	00022937          	lui	s2,0x22
   133dc:	cb890913          	addi	s2,s2,-840 # 21cb8 <zeroes.4123+0x688>
   133e0:	d95ff06f          	j	13174 <_vfprintf_r+0x1654>
   133e4:	001c7793          	andi	a5,s8,1
   133e8:	26079a63          	bnez	a5,1365c <_vfprintf_r+0x1b3c>
   133ec:	0a813783          	ld	a5,168(sp)
   133f0:	412787b3          	sub	a5,a5,s2
   133f4:	06f12823          	sw	a5,112(sp)
   133f8:	35ad9c63          	bne	s11,s10,13750 <_vfprintf_r+0x1c30>
   133fc:	09812783          	lw	a5,152(sp)
   13400:	ffd00713          	li	a4,-3
   13404:	02e7cc63          	blt	a5,a4,1343c <_vfprintf_r+0x191c>
   13408:	02f44a63          	blt	s0,a5,1343c <_vfprintf_r+0x191c>
   1340c:	04f12623          	sw	a5,76(sp)
   13410:	b9dff06f          	j	12fac <_vfprintf_r+0x148c>
   13414:	02d00713          	li	a4,45
   13418:	08e107a3          	sb	a4,143(sp)
   1341c:	00f12423          	sw	a5,8(sp)
   13420:	00012c03          	lw	s8,0(sp)
   13424:	02d00613          	li	a2,45
   13428:	00000413          	li	s0,0
   1342c:	b0dfe06f          	j	11f38 <_vfprintf_r+0x418>
   13430:	0b812703          	lw	a4,184(sp)
   13434:	00913823          	sd	s1,16(sp)
   13438:	d78ff06f          	j	129b0 <_vfprintf_r+0xe90>
   1343c:	ffed0d1b          	addiw	s10,s10,-2
   13440:	fff7879b          	addiw	a5,a5,-1
   13444:	08f12c23          	sw	a5,152(sp)
   13448:	0ba10023          	sb	s10,160(sp)
   1344c:	2c07c863          	bltz	a5,1371c <_vfprintf_r+0x1bfc>
   13450:	02b00713          	li	a4,43
   13454:	0ae100a3          	sb	a4,161(sp)
   13458:	00900613          	li	a2,9
   1345c:	16f64463          	blt	a2,a5,135c4 <_vfprintf_r+0x1aa4>
   13460:	0307879b          	addiw	a5,a5,48
   13464:	03000713          	li	a4,48
   13468:	0af101a3          	sb	a5,163(sp)
   1346c:	0ae10123          	sb	a4,162(sp)
   13470:	0a410793          	addi	a5,sp,164
   13474:	0a010713          	addi	a4,sp,160
   13478:	40e787bb          	subw	a5,a5,a4
   1347c:	07012703          	lw	a4,112(sp)
   13480:	06f12a23          	sw	a5,116(sp)
   13484:	00e787bb          	addw	a5,a5,a4
   13488:	02f12023          	sw	a5,32(sp)
   1348c:	00100793          	li	a5,1
   13490:	26e7d263          	ble	a4,a5,136f4 <_vfprintf_r+0x1bd4>
   13494:	02012783          	lw	a5,32(sp)
   13498:	0017879b          	addiw	a5,a5,1
   1349c:	02f12023          	sw	a5,32(sp)
   134a0:	2607c463          	bltz	a5,13708 <_vfprintf_r+0x1be8>
   134a4:	04012623          	sw	zero,76(sp)
   134a8:	b2dff06f          	j	12fd4 <_vfprintf_r+0x14b4>
   134ac:	00812423          	sw	s0,8(sp)
   134b0:	02812023          	sw	s0,32(sp)
   134b4:	08f14603          	lbu	a2,143(sp)
   134b8:	03913423          	sd	s9,40(sp)
   134bc:	00000413          	li	s0,0
   134c0:	04012623          	sw	zero,76(sp)
   134c4:	a71fe06f          	j	11f34 <_vfprintf_r+0x414>
   134c8:	0b010613          	addi	a2,sp,176
   134cc:	000a0593          	mv	a1,s4
   134d0:	000b8513          	mv	a0,s7
   134d4:	31d090ef          	jal	1cff0 <__sprint_r>
   134d8:	00050463          	beqz	a0,134e0 <_vfprintf_r+0x19c0>
   134dc:	955fe06f          	j	11e30 <_vfprintf_r+0x310>
   134e0:	09812403          	lw	s0,152(sp)
   134e4:	0c013783          	ld	a5,192(sp)
   134e8:	0b812703          	lw	a4,184(sp)
   134ec:	000b0893          	mv	a7,s6
   134f0:	be9ff06f          	j	130d8 <_vfprintf_r+0x15b8>
   134f4:	9e0410e3          	bnez	s0,12ed4 <_vfprintf_r+0x13b4>
   134f8:	00090413          	mv	s0,s2
   134fc:	9d9ff06f          	j	12ed4 <_vfprintf_r+0x13b4>
   13500:	00600413          	li	s0,6
   13504:	9d1ff06f          	j	12ed4 <_vfprintf_r+0x13b4>
   13508:	228405d3          	fmv.d	fa1,fs0
   1350c:	09810713          	addi	a4,sp,152
   13510:	0a810813          	addi	a6,sp,168
   13514:	09c10793          	addi	a5,sp,156
   13518:	00040693          	mv	a3,s0
   1351c:	00300613          	li	a2,3
   13520:	000b8513          	mv	a0,s7
   13524:	01113423          	sd	a7,8(sp)
   13528:	475010ef          	jal	1519c <_dtoa_r>
   1352c:	00813883          	ld	a7,8(sp)
   13530:	00040713          	mv	a4,s0
   13534:	00050913          	mv	s2,a0
   13538:	00e50733          	add	a4,a0,a4
   1353c:	00040593          	mv	a1,s0
   13540:	00094683          	lbu	a3,0(s2)
   13544:	03000793          	li	a5,48
   13548:	14f68063          	beq	a3,a5,13688 <_vfprintf_r+0x1b68>
   1354c:	09812583          	lw	a1,152(sp)
   13550:	00b70733          	add	a4,a4,a1
   13554:	a01ff06f          	j	12f54 <_vfprintf_r+0x1434>
   13558:	22841453          	fneg.d	fs0,fs0
   1355c:	02d00c93          	li	s9,45
   13560:	991ff06f          	j	12ef0 <_vfprintf_r+0x13d0>
   13564:	04c12703          	lw	a4,76(sp)
   13568:	00100793          	li	a5,1
   1356c:	1ae05263          	blez	a4,13710 <_vfprintf_r+0x1bf0>
   13570:	07012703          	lw	a4,112(sp)
   13574:	00e787bb          	addw	a5,a5,a4
   13578:	02f12023          	sw	a5,32(sp)
   1357c:	0007ce63          	bltz	a5,13598 <_vfprintf_r+0x1a78>
   13580:	06700d13          	li	s10,103
   13584:	a51ff06f          	j	12fd4 <_vfprintf_r+0x14b4>
   13588:	04c12783          	lw	a5,76(sp)
   1358c:	0017879b          	addiw	a5,a5,1
   13590:	02f12023          	sw	a5,32(sp)
   13594:	fe07d6e3          	bgez	a5,13580 <_vfprintf_r+0x1a60>
   13598:	00000793          	li	a5,0
   1359c:	06700d13          	li	s10,103
   135a0:	a35ff06f          	j	12fd4 <_vfprintf_r+0x14b4>
   135a4:	09812783          	lw	a5,152(sp)
   135a8:	04f12623          	sw	a5,76(sp)
   135ac:	12f05263          	blez	a5,136d0 <_vfprintf_r+0x1bb0>
   135b0:	0a041e63          	bnez	s0,1366c <_vfprintf_r+0x1b4c>
   135b4:	001c7c13          	andi	s8,s8,1
   135b8:	0a0c1a63          	bnez	s8,1366c <_vfprintf_r+0x1b4c>
   135bc:	02f12023          	sw	a5,32(sp)
   135c0:	a15ff06f          	j	12fd4 <_vfprintf_r+0x14b4>
   135c4:	0af10593          	addi	a1,sp,175
   135c8:	00058713          	mv	a4,a1
   135cc:	00a00513          	li	a0,10
   135d0:	02a7e6bb          	remw	a3,a5,a0
   135d4:	fff70713          	addi	a4,a4,-1
   135d8:	02a7c7bb          	divw	a5,a5,a0
   135dc:	0306869b          	addiw	a3,a3,48
   135e0:	00d70023          	sb	a3,0(a4)
   135e4:	fef646e3          	blt	a2,a5,135d0 <_vfprintf_r+0x1ab0>
   135e8:	0307879b          	addiw	a5,a5,48
   135ec:	0ff7f793          	andi	a5,a5,255
   135f0:	fff70693          	addi	a3,a4,-1
   135f4:	fef70fa3          	sb	a5,-1(a4)
   135f8:	16b6f863          	bleu	a1,a3,13768 <_vfprintf_r+0x1c48>
   135fc:	0a210613          	addi	a2,sp,162
   13600:	0080006f          	j	13608 <_vfprintf_r+0x1ae8>
   13604:	0006c783          	lbu	a5,0(a3)
   13608:	00160613          	addi	a2,a2,1 # 2001 <_ftext-0xdfff>
   1360c:	00168693          	addi	a3,a3,1
   13610:	fef60fa3          	sb	a5,-1(a2)
   13614:	feb698e3          	bne	a3,a1,13604 <_vfprintf_r+0x1ae4>
   13618:	0b010793          	addi	a5,sp,176
   1361c:	40e787b3          	sub	a5,a5,a4
   13620:	0a210713          	addi	a4,sp,162
   13624:	00f707b3          	add	a5,a4,a5
   13628:	e4dff06f          	j	13474 <_vfprintf_r+0x1954>
   1362c:	228405d3          	fmv.d	fa1,fs0
   13630:	0a810813          	addi	a6,sp,168
   13634:	09c10793          	addi	a5,sp,156
   13638:	09810713          	addi	a4,sp,152
   1363c:	00040693          	mv	a3,s0
   13640:	00300613          	li	a2,3
   13644:	000b8513          	mv	a0,s7
   13648:	01113423          	sd	a7,8(sp)
   1364c:	351010ef          	jal	1519c <_dtoa_r>
   13650:	00813883          	ld	a7,8(sp)
   13654:	00050913          	mv	s2,a0
   13658:	00040593          	mv	a1,s0
   1365c:	04600793          	li	a5,70
   13660:	00b90733          	add	a4,s2,a1
   13664:	ecfd0ee3          	beq	s10,a5,13540 <_vfprintf_r+0x1a20>
   13668:	8edff06f          	j	12f54 <_vfprintf_r+0x1434>
   1366c:	04c12783          	lw	a5,76(sp)
   13670:	0014041b          	addiw	s0,s0,1
   13674:	008787bb          	addw	a5,a5,s0
   13678:	02f12023          	sw	a5,32(sp)
   1367c:	9407dce3          	bgez	a5,12fd4 <_vfprintf_r+0x14b4>
   13680:	00000793          	li	a5,0
   13684:	951ff06f          	j	12fd4 <_vfprintf_r+0x14b4>
   13688:	f20007d3          	fmv.d.x	fa5,zero
   1368c:	a2f427d3          	feq.d	a5,fs0,fa5
   13690:	ea079ee3          	bnez	a5,1354c <_vfprintf_r+0x1a2c>
   13694:	00100793          	li	a5,1
   13698:	40b785bb          	subw	a1,a5,a1
   1369c:	08b12c23          	sw	a1,152(sp)
   136a0:	00b70733          	add	a4,a4,a1
   136a4:	8b1ff06f          	j	12f54 <_vfprintf_r+0x1434>
   136a8:	00000d93          	li	s11,0
   136ac:	ccdff06f          	j	13378 <_vfprintf_r+0x1858>
   136b0:	02813783          	ld	a5,40(sp)
   136b4:	0007a403          	lw	s0,0(a5)
   136b8:	00878793          	addi	a5,a5,8
   136bc:	02f13423          	sd	a5,40(sp)
   136c0:	00044463          	bltz	s0,136c8 <_vfprintf_r+0x1ba8>
   136c4:	e18fe06f          	j	11cdc <_vfprintf_r+0x1bc>
   136c8:	fff00413          	li	s0,-1
   136cc:	e10fe06f          	j	11cdc <_vfprintf_r+0x1bc>
   136d0:	00041a63          	bnez	s0,136e4 <_vfprintf_r+0x1bc4>
   136d4:	00100793          	li	a5,1
   136d8:	00fc7c33          	and	s8,s8,a5
   136dc:	02f12023          	sw	a5,32(sp)
   136e0:	8e0c0ae3          	beqz	s8,12fd4 <_vfprintf_r+0x14b4>
   136e4:	0024079b          	addiw	a5,s0,2
   136e8:	02f12023          	sw	a5,32(sp)
   136ec:	8e07d4e3          	bgez	a5,12fd4 <_vfprintf_r+0x14b4>
   136f0:	f91ff06f          	j	13680 <_vfprintf_r+0x1b60>
   136f4:	00fc7c33          	and	s8,s8,a5
   136f8:	d80c1ee3          	bnez	s8,13494 <_vfprintf_r+0x1974>
   136fc:	02012703          	lw	a4,32(sp)
   13700:	00070793          	mv	a5,a4
   13704:	da0750e3          	bgez	a4,134a4 <_vfprintf_r+0x1984>
   13708:	00000793          	li	a5,0
   1370c:	d99ff06f          	j	134a4 <_vfprintf_r+0x1984>
   13710:	00200793          	li	a5,2
   13714:	40e787bb          	subw	a5,a5,a4
   13718:	e59ff06f          	j	13570 <_vfprintf_r+0x1a50>
   1371c:	02d00713          	li	a4,45
   13720:	40f007bb          	negw	a5,a5
   13724:	0ae100a3          	sb	a4,161(sp)
   13728:	d31ff06f          	j	13458 <_vfprintf_r+0x1938>
   1372c:	08b107a3          	sb	a1,143(sp)
   13730:	ed9fe06f          	j	12608 <_vfprintf_r+0xae8>
   13734:	00000793          	li	a5,0
   13738:	891ff06f          	j	12fc8 <_vfprintf_r+0x14a8>
   1373c:	08b107a3          	sb	a1,143(sp)
   13740:	010c6c13          	ori	s8,s8,16
   13744:	f2dfe06f          	j	12670 <_vfprintf_r+0xb50>
   13748:	08b107a3          	sb	a1,143(sp)
   1374c:	ef5fe06f          	j	12640 <_vfprintf_r+0xb20>
   13750:	09812783          	lw	a5,152(sp)
   13754:	cedff06f          	j	13440 <_vfprintf_r+0x1920>
   13758:	08b107a3          	sb	a1,143(sp)
   1375c:	e2dfe06f          	j	12588 <_vfprintf_r+0xa68>
   13760:	08b107a3          	sb	a1,143(sp)
   13764:	dd5fe06f          	j	12538 <_vfprintf_r+0xa18>
   13768:	0a210793          	addi	a5,sp,162
   1376c:	d09ff06f          	j	13474 <_vfprintf_r+0x1954>
   13770:	08b107a3          	sb	a1,143(sp)
   13774:	f41fe06f          	j	126b4 <_vfprintf_r+0xb94>
   13778:	08b107a3          	sb	a1,143(sp)
   1377c:	f28fe06f          	j	11ea4 <_vfprintf_r+0x384>
   13780:	08b107a3          	sb	a1,143(sp)
   13784:	9c5fe06f          	j	12148 <_vfprintf_r+0x628>
   13788:	08b107a3          	sb	a1,143(sp)
   1378c:	010c6c13          	ori	s8,s8,16
   13790:	979fe06f          	j	12108 <_vfprintf_r+0x5e8>
   13794:	08b107a3          	sb	a1,143(sp)
   13798:	010c6c13          	ori	s8,s8,16
   1379c:	929fe06f          	j	120c4 <_vfprintf_r+0x5a4>
   137a0:	08b107a3          	sb	a1,143(sp)
   137a4:	881fe06f          	j	12024 <_vfprintf_r+0x504>

00000000000137a8 <vfprintf>:
   137a8:	00060693          	mv	a3,a2
   137ac:	00058613          	mv	a2,a1
   137b0:	00050593          	mv	a1,a0
   137b4:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   137b8:	b68fe06f          	j	11b20 <_vfprintf_r>

00000000000137bc <__sbprintf>:
   137bc:	0105d783          	lhu	a5,16(a1)
   137c0:	0ac5ae03          	lw	t3,172(a1)
   137c4:	0125d303          	lhu	t1,18(a1)
   137c8:	0305b883          	ld	a7,48(a1)
   137cc:	0405b803          	ld	a6,64(a1)
   137d0:	b3010113          	addi	sp,sp,-1232
   137d4:	ffd7f793          	andi	a5,a5,-3
   137d8:	40000713          	li	a4,1024
   137dc:	4c813023          	sd	s0,1216(sp)
   137e0:	00f11823          	sh	a5,16(sp)
   137e4:	00058413          	mv	s0,a1
   137e8:	0b010793          	addi	a5,sp,176
   137ec:	00010593          	mv	a1,sp
   137f0:	4a913c23          	sd	s1,1208(sp)
   137f4:	4b213823          	sd	s2,1200(sp)
   137f8:	4c113423          	sd	ra,1224(sp)
   137fc:	00050913          	mv	s2,a0
   13800:	0bc12623          	sw	t3,172(sp)
   13804:	00611923          	sh	t1,18(sp)
   13808:	03113823          	sd	a7,48(sp)
   1380c:	05013023          	sd	a6,64(sp)
   13810:	00f13023          	sd	a5,0(sp)
   13814:	00f13c23          	sd	a5,24(sp)
   13818:	00e12623          	sw	a4,12(sp)
   1381c:	02e12023          	sw	a4,32(sp)
   13820:	02012423          	sw	zero,40(sp)
   13824:	afcfe0ef          	jal	11b20 <_vfprintf_r>
   13828:	00050493          	mv	s1,a0
   1382c:	00054a63          	bltz	a0,13840 <__sbprintf+0x84>
   13830:	00010593          	mv	a1,sp
   13834:	00090513          	mv	a0,s2
   13838:	4cd020ef          	jal	16504 <_fflush_r>
   1383c:	02051c63          	bnez	a0,13874 <__sbprintf+0xb8>
   13840:	01015783          	lhu	a5,16(sp)
   13844:	0407f793          	andi	a5,a5,64
   13848:	00078863          	beqz	a5,13858 <__sbprintf+0x9c>
   1384c:	01045783          	lhu	a5,16(s0)
   13850:	0407e793          	ori	a5,a5,64
   13854:	00f41823          	sh	a5,16(s0)
   13858:	4c813083          	ld	ra,1224(sp)
   1385c:	00048513          	mv	a0,s1
   13860:	4c013403          	ld	s0,1216(sp)
   13864:	4b813483          	ld	s1,1208(sp)
   13868:	4b013903          	ld	s2,1200(sp)
   1386c:	4d010113          	addi	sp,sp,1232
   13870:	00008067          	ret
   13874:	fff00493          	li	s1,-1
   13878:	fc9ff06f          	j	13840 <__sbprintf+0x84>

000000000001387c <__svfscanf_r>:
   1387c:	cb010113          	addi	sp,sp,-848
   13880:	31813023          	sd	s8,768(sp)
   13884:	00058c13          	mv	s8,a1
   13888:	01059583          	lh	a1,16(a1)
   1388c:	34813023          	sd	s0,832(sp)
   13890:	32913c23          	sd	s1,824(sp)
   13894:	31613823          	sd	s6,784(sp)
   13898:	34113423          	sd	ra,840(sp)
   1389c:	33213823          	sd	s2,816(sp)
   138a0:	33313423          	sd	s3,808(sp)
   138a4:	33413023          	sd	s4,800(sp)
   138a8:	31513c23          	sd	s5,792(sp)
   138ac:	31713423          	sd	s7,776(sp)
   138b0:	2f913c23          	sd	s9,760(sp)
   138b4:	2fa13823          	sd	s10,752(sp)
   138b8:	2fb13423          	sd	s11,744(sp)
   138bc:	2c813c27          	fsd	fs0,728(sp)
   138c0:	03259793          	slli	a5,a1,0x32
   138c4:	00050493          	mv	s1,a0
   138c8:	00060413          	mv	s0,a2
   138cc:	00068b13          	mv	s6,a3
   138d0:	0207c263          	bltz	a5,138f4 <__svfscanf_r+0x78>
   138d4:	0acc2603          	lw	a2,172(s8)
   138d8:	ffffe737          	lui	a4,0xffffe
   138dc:	000026b7          	lui	a3,0x2
   138e0:	fff7071b          	addiw	a4,a4,-1
   138e4:	00d5e5b3          	or	a1,a1,a3
   138e8:	00e67733          	and	a4,a2,a4
   138ec:	00bc1823          	sh	a1,16(s8)
   138f0:	0aec2623          	sw	a4,172(s8)
   138f4:	000217b7          	lui	a5,0x21
   138f8:	be878793          	addi	a5,a5,-1048 # 20be8 <zeroes.4194+0x330>
   138fc:	fffff737          	lui	a4,0xfffff
   13900:	000219b7          	lui	s3,0x21
   13904:	00f13c23          	sd	a5,24(sp)
   13908:	47f7079b          	addiw	a5,a4,1151
   1390c:	02013423          	sd	zero,40(sp)
   13910:	00012823          	sw	zero,16(sp)
   13914:	00000b93          	li	s7,0
   13918:	00012a23          	sw	zero,20(sp)
   1391c:	8c898993          	addi	s3,s3,-1848 # 208c8 <zeroes.4194+0x10>
   13920:	04f12423          	sw	a5,72(sp)
   13924:	00044703          	lbu	a4,0(s0)
   13928:	00140413          	addi	s0,s0,1
   1392c:	06e12223          	sw	a4,100(sp)
   13930:	00070693          	mv	a3,a4
   13934:	06070e63          	beqz	a4,139b0 <__svfscanf_r+0x134>
   13938:	8281b503          	ld	a0,-2008(gp) # 24418 <__ctype_ptr__>
   1393c:	00e50733          	add	a4,a0,a4
   13940:	00174703          	lbu	a4,1(a4) # fffffffffffff001 <_end+0xfffffffffffd8239>
   13944:	00877713          	andi	a4,a4,8
   13948:	06070863          	beqz	a4,139b8 <__svfscanf_r+0x13c>
   1394c:	008c2703          	lw	a4,8(s8)
   13950:	02e05e63          	blez	a4,1398c <__svfscanf_r+0x110>
   13954:	000c3683          	ld	a3,0(s8)
   13958:	8281b703          	ld	a4,-2008(gp) # 24418 <__ctype_ptr__>
   1395c:	0006c603          	lbu	a2,0(a3) # 2000 <_ftext-0xe000>
   13960:	00c70733          	add	a4,a4,a2
   13964:	00174703          	lbu	a4,1(a4)
   13968:	00877713          	andi	a4,a4,8
   1396c:	fa070ce3          	beqz	a4,13924 <__svfscanf_r+0xa8>
   13970:	008c2703          	lw	a4,8(s8)
   13974:	00168693          	addi	a3,a3,1
   13978:	00dc3023          	sd	a3,0(s8)
   1397c:	fff7071b          	addiw	a4,a4,-1
   13980:	00ec2423          	sw	a4,8(s8)
   13984:	001b8b9b          	addiw	s7,s7,1
   13988:	fce046e3          	bgtz	a4,13954 <__svfscanf_r+0xd8>
   1398c:	000c0593          	mv	a1,s8
   13990:	00048513          	mv	a0,s1
   13994:	1f5050ef          	jal	19388 <__srefill_r>
   13998:	fa050ee3          	beqz	a0,13954 <__svfscanf_r+0xd8>
   1399c:	00044703          	lbu	a4,0(s0)
   139a0:	00140413          	addi	s0,s0,1
   139a4:	06e12223          	sw	a4,100(sp)
   139a8:	00070693          	mv	a3,a4
   139ac:	f80716e3          	bnez	a4,13938 <__svfscanf_r+0xbc>
   139b0:	01412503          	lw	a0,20(sp)
   139b4:	06c0006f          	j	13a20 <__svfscanf_r+0x1a4>
   139b8:	02500713          	li	a4,37
   139bc:	02e69663          	bne	a3,a4,139e8 <__svfscanf_r+0x16c>
   139c0:	00000a93          	li	s5,0
   139c4:	00000913          	li	s2,0
   139c8:	07800613          	li	a2,120
   139cc:	00140413          	addi	s0,s0,1
   139d0:	fff44683          	lbu	a3,-1(s0)
   139d4:	1ad66a63          	bltu	a2,a3,13b88 <__svfscanf_r+0x30c>
   139d8:	00269713          	slli	a4,a3,0x2
   139dc:	01370733          	add	a4,a4,s3
   139e0:	00072703          	lw	a4,0(a4)
   139e4:	00070067          	jr	a4
   139e8:	008c2703          	lw	a4,8(s8)
   139ec:	58e05a63          	blez	a4,13f80 <__svfscanf_r+0x704>
   139f0:	000c3703          	ld	a4,0(s8)
   139f4:	fff44683          	lbu	a3,-1(s0)
   139f8:	00074603          	lbu	a2,0(a4)
   139fc:	fad61ae3          	bne	a2,a3,139b0 <__svfscanf_r+0x134>
   13a00:	008c2683          	lw	a3,8(s8)
   13a04:	00170713          	addi	a4,a4,1
   13a08:	00ec3023          	sd	a4,0(s8)
   13a0c:	fff6871b          	addiw	a4,a3,-1
   13a10:	00ec2423          	sw	a4,8(s8)
   13a14:	001b8b9b          	addiw	s7,s7,1
   13a18:	f0dff06f          	j	13924 <__svfscanf_r+0xa8>
   13a1c:	fff00513          	li	a0,-1
   13a20:	34813083          	ld	ra,840(sp)
   13a24:	34013403          	ld	s0,832(sp)
   13a28:	33813483          	ld	s1,824(sp)
   13a2c:	33013903          	ld	s2,816(sp)
   13a30:	32813983          	ld	s3,808(sp)
   13a34:	32013a03          	ld	s4,800(sp)
   13a38:	31813a83          	ld	s5,792(sp)
   13a3c:	31013b03          	ld	s6,784(sp)
   13a40:	30813b83          	ld	s7,776(sp)
   13a44:	30013c03          	ld	s8,768(sp)
   13a48:	2f813c83          	ld	s9,760(sp)
   13a4c:	2f013d03          	ld	s10,752(sp)
   13a50:	2e813d83          	ld	s11,744(sp)
   13a54:	2d813407          	fld	fs0,728(sp)
   13a58:	35010113          	addi	sp,sp,848
   13a5c:	00008067          	ret
   13a60:	008c2703          	lw	a4,8(s8)
   13a64:	0001ba37          	lui	s4,0x1b
   13a68:	e3ca0793          	addi	a5,s4,-452 # 1ae3c <_strtoul_r>
   13a6c:	02f13423          	sd	a5,40(sp)
   13a70:	00a00793          	li	a5,10
   13a74:	00f12823          	sw	a5,16(sp)
   13a78:	00300c93          	li	s9,3
   13a7c:	02e05e63          	blez	a4,13ab8 <__svfscanf_r+0x23c>
   13a80:	000c3683          	ld	a3,0(s8)
   13a84:	00c0006f          	j	13a90 <__svfscanf_r+0x214>
   13a88:	00168693          	addi	a3,a3,1
   13a8c:	00dc3023          	sd	a3,0(s8)
   13a90:	0006c603          	lbu	a2,0(a3)
   13a94:	00c50733          	add	a4,a0,a2
   13a98:	00174703          	lbu	a4,1(a4)
   13a9c:	00877593          	andi	a1,a4,8
   13aa0:	58058063          	beqz	a1,14020 <__svfscanf_r+0x7a4>
   13aa4:	008c2703          	lw	a4,8(s8)
   13aa8:	001b8b9b          	addiw	s7,s7,1
   13aac:	fff7071b          	addiw	a4,a4,-1
   13ab0:	00ec2423          	sw	a4,8(s8)
   13ab4:	fce04ae3          	bgtz	a4,13a88 <__svfscanf_r+0x20c>
   13ab8:	000c0593          	mv	a1,s8
   13abc:	00048513          	mv	a0,s1
   13ac0:	0c9050ef          	jal	19388 <__srefill_r>
   13ac4:	04051863          	bnez	a0,13b14 <__svfscanf_r+0x298>
   13ac8:	8281b503          	ld	a0,-2008(gp) # 24418 <__ctype_ptr__>
   13acc:	fb5ff06f          	j	13a80 <__svfscanf_r+0x204>
   13ad0:	008c2703          	lw	a4,8(s8)
   13ad4:	00200c93          	li	s9,2
   13ad8:	fae044e3          	bgtz	a4,13a80 <__svfscanf_r+0x204>
   13adc:	fddff06f          	j	13ab8 <__svfscanf_r+0x23c>
   13ae0:	008c2703          	lw	a4,8(s8)
   13ae4:	220aea93          	ori	s5,s5,544
   13ae8:	0001ba37          	lui	s4,0x1b
   13aec:	e3ca0793          	addi	a5,s4,-452 # 1ae3c <_strtoul_r>
   13af0:	02f13423          	sd	a5,40(sp)
   13af4:	01000793          	li	a5,16
   13af8:	00f12823          	sw	a5,16(sp)
   13afc:	00300c93          	li	s9,3
   13b00:	f8e040e3          	bgtz	a4,13a80 <__svfscanf_r+0x204>
   13b04:	000c0593          	mv	a1,s8
   13b08:	00048513          	mv	a0,s1
   13b0c:	07d050ef          	jal	19388 <__srefill_r>
   13b10:	fa050ce3          	beqz	a0,13ac8 <__svfscanf_r+0x24c>
   13b14:	01412703          	lw	a4,20(sp)
   13b18:	fff00513          	li	a0,-1
   13b1c:	f00702e3          	beqz	a4,13a20 <__svfscanf_r+0x1a4>
   13b20:	010c5783          	lhu	a5,16(s8)
   13b24:	0407f793          	andi	a5,a5,64
   13b28:	ee079ce3          	bnez	a5,13a20 <__svfscanf_r+0x1a4>
   13b2c:	00070513          	mv	a0,a4
   13b30:	ef1ff06f          	j	13a20 <__svfscanf_r+0x1a4>
   13b34:	008c2703          	lw	a4,8(s8)
   13b38:	4ce05863          	blez	a4,14008 <__svfscanf_r+0x78c>
   13b3c:	0001ba37          	lui	s4,0x1b
   13b40:	e3ca0793          	addi	a5,s4,-452 # 1ae3c <_strtoul_r>
   13b44:	02f13423          	sd	a5,40(sp)
   13b48:	00800793          	li	a5,8
   13b4c:	00f12823          	sw	a5,16(sp)
   13b50:	00300c93          	li	s9,3
   13b54:	f2dff06f          	j	13a80 <__svfscanf_r+0x204>
   13b58:	010af713          	andi	a4,s5,16
   13b5c:	dc0714e3          	bnez	a4,13924 <__svfscanf_r+0xa8>
   13b60:	004af713          	andi	a4,s5,4
   13b64:	42070e63          	beqz	a4,13fa0 <__svfscanf_r+0x724>
   13b68:	000b3703          	ld	a4,0(s6)
   13b6c:	008b0b13          	addi	s6,s6,8
   13b70:	01771023          	sh	s7,0(a4)
   13b74:	db1ff06f          	j	13924 <__svfscanf_r+0xa8>
   13b78:	00140413          	addi	s0,s0,1
   13b7c:	fff44683          	lbu	a3,-1(s0)
   13b80:	001aea93          	ori	s5,s5,1
   13b84:	e4d67ae3          	bleu	a3,a2,139d8 <__svfscanf_r+0x15c>
   13b88:	00d506b3          	add	a3,a0,a3
   13b8c:	0016c703          	lbu	a4,1(a3)
   13b90:	00100693          	li	a3,1
   13b94:	00377713          	andi	a4,a4,3
   13b98:	3ed70e63          	beq	a4,a3,13f94 <__svfscanf_r+0x718>
   13b9c:	008c2703          	lw	a4,8(s8)
   13ba0:	1440006f          	j	13ce4 <__svfscanf_r+0x468>
   13ba4:	004aea93          	ori	s5,s5,4
   13ba8:	e25ff06f          	j	139cc <__svfscanf_r+0x150>
   13bac:	008c2703          	lw	a4,8(s8)
   13bb0:	40e05463          	blez	a4,13fb8 <__svfscanf_r+0x73c>
   13bb4:	0001ba37          	lui	s4,0x1b
   13bb8:	c4ca0793          	addi	a5,s4,-948 # 1ac4c <_strtol_r>
   13bbc:	02f13423          	sd	a5,40(sp)
   13bc0:	00a00793          	li	a5,10
   13bc4:	00f12823          	sw	a5,16(sp)
   13bc8:	00300c93          	li	s9,3
   13bcc:	eb5ff06f          	j	13a80 <__svfscanf_r+0x204>
   13bd0:	008c2703          	lw	a4,8(s8)
   13bd4:	34e05663          	blez	a4,13f20 <__svfscanf_r+0x6a4>
   13bd8:	00091463          	bnez	s2,13be0 <__svfscanf_r+0x364>
   13bdc:	00100913          	li	s2,1
   13be0:	001af713          	andi	a4,s5,1
   13be4:	22071063          	bnez	a4,13e04 <__svfscanf_r+0x588>
   13be8:	010afa93          	andi	s5,s5,16
   13bec:	360a8063          	beqz	s5,13f4c <__svfscanf_r+0x6d0>
   13bf0:	00000a93          	li	s5,0
   13bf4:	0280006f          	j	13c1c <__svfscanf_r+0x3a0>
   13bf8:	000c3683          	ld	a3,0(s8)
   13bfc:	000c0593          	mv	a1,s8
   13c00:	00048513          	mv	a0,s1
   13c04:	00e686b3          	add	a3,a3,a4
   13c08:	00dc3023          	sd	a3,0(s8)
   13c0c:	00ea8ab3          	add	s5,s5,a4
   13c10:	40e90933          	sub	s2,s2,a4
   13c14:	774050ef          	jal	19388 <__srefill_r>
   13c18:	30051e63          	bnez	a0,13f34 <__svfscanf_r+0x6b8>
   13c1c:	008c2703          	lw	a4,8(s8)
   13c20:	0009069b          	sext.w	a3,s2
   13c24:	fcd74ae3          	blt	a4,a3,13bf8 <__svfscanf_r+0x37c>
   13c28:	000c3603          	ld	a2,0(s8)
   13c2c:	40d7073b          	subw	a4,a4,a3
   13c30:	012a8ab3          	add	s5,s5,s2
   13c34:	01260333          	add	t1,a2,s2
   13c38:	00ec2423          	sw	a4,8(s8)
   13c3c:	006c3023          	sd	t1,0(s8)
   13c40:	017a8bbb          	addw	s7,s5,s7
   13c44:	ce1ff06f          	j	13924 <__svfscanf_r+0xa8>
   13c48:	00040593          	mv	a1,s0
   13c4c:	07010513          	addi	a0,sp,112
   13c50:	181050ef          	jal	195d0 <__sccl>
   13c54:	008c2703          	lw	a4,8(s8)
   13c58:	00050413          	mv	s0,a0
   13c5c:	38e05063          	blez	a4,13fdc <__svfscanf_r+0x760>
   13c60:	000c3683          	ld	a3,0(s8)
   13c64:	0006c703          	lbu	a4,0(a3)
   13c68:	10090263          	beqz	s2,13d6c <__svfscanf_r+0x4f0>
   13c6c:	010afa93          	andi	s5,s5,16
   13c70:	100a8463          	beqz	s5,13d78 <__svfscanf_r+0x4fc>
   13c74:	00000a93          	li	s5,0
   13c78:	0080006f          	j	13c80 <__svfscanf_r+0x404>
   13c7c:	0006c703          	lbu	a4,0(a3)
   13c80:	2d010793          	addi	a5,sp,720
   13c84:	00e78733          	add	a4,a5,a4
   13c88:	da074703          	lbu	a4,-608(a4)
   13c8c:	2a070a63          	beqz	a4,13f40 <__svfscanf_r+0x6c4>
   13c90:	008c2703          	lw	a4,8(s8)
   13c94:	00168693          	addi	a3,a3,1
   13c98:	00dc3023          	sd	a3,0(s8)
   13c9c:	fff7071b          	addiw	a4,a4,-1
   13ca0:	00ec2423          	sw	a4,8(s8)
   13ca4:	fff90913          	addi	s2,s2,-1
   13ca8:	001a8a9b          	addiw	s5,s5,1
   13cac:	14090863          	beqz	s2,13dfc <__svfscanf_r+0x580>
   13cb0:	fce046e3          	bgtz	a4,13c7c <__svfscanf_r+0x400>
   13cb4:	000c0593          	mv	a1,s8
   13cb8:	00048513          	mv	a0,s1
   13cbc:	6cc050ef          	jal	19388 <__srefill_r>
   13cc0:	12051e63          	bnez	a0,13dfc <__svfscanf_r+0x580>
   13cc4:	000c3683          	ld	a3,0(s8)
   13cc8:	fb5ff06f          	j	13c7c <__svfscanf_r+0x400>
   13ccc:	008c2703          	lw	a4,8(s8)
   13cd0:	00400c93          	li	s9,4
   13cd4:	dae046e3          	bgtz	a4,13a80 <__svfscanf_r+0x204>
   13cd8:	de1ff06f          	j	13ab8 <__svfscanf_r+0x23c>
   13cdc:	008c2703          	lw	a4,8(s8)
   13ce0:	001aea93          	ori	s5,s5,1
   13ce4:	0001ba37          	lui	s4,0x1b
   13ce8:	c4ca0793          	addi	a5,s4,-948 # 1ac4c <_strtol_r>
   13cec:	d81ff06f          	j	13a6c <__svfscanf_r+0x1f0>
   13cf0:	0001ba37          	lui	s4,0x1b
   13cf4:	e3ca0793          	addi	a5,s4,-452 # 1ae3c <_strtoul_r>
   13cf8:	008c2703          	lw	a4,8(s8)
   13cfc:	02f13423          	sd	a5,40(sp)
   13d00:	00800793          	li	a5,8
   13d04:	00f12823          	sw	a5,16(sp)
   13d08:	001aea93          	ori	s5,s5,1
   13d0c:	00300c93          	li	s9,3
   13d10:	d6e048e3          	bgtz	a4,13a80 <__svfscanf_r+0x204>
   13d14:	da5ff06f          	j	13ab8 <__svfscanf_r+0x23c>
   13d18:	002aea93          	ori	s5,s5,2
   13d1c:	cb1ff06f          	j	139cc <__svfscanf_r+0x150>
   13d20:	008c2703          	lw	a4,8(s8)
   13d24:	200aea93          	ori	s5,s5,512
   13d28:	dc1ff06f          	j	13ae8 <__svfscanf_r+0x26c>
   13d2c:	00191713          	slli	a4,s2,0x1
   13d30:	00391313          	slli	t1,s2,0x3
   13d34:	00670333          	add	t1,a4,t1
   13d38:	fd068693          	addi	a3,a3,-48
   13d3c:	00668933          	add	s2,a3,t1
   13d40:	c8dff06f          	j	139cc <__svfscanf_r+0x150>
   13d44:	010aea93          	ori	s5,s5,16
   13d48:	c85ff06f          	j	139cc <__svfscanf_r+0x150>
   13d4c:	008c2703          	lw	a4,8(s8)
   13d50:	2ae05063          	blez	a4,13ff0 <__svfscanf_r+0x774>
   13d54:	0001ba37          	lui	s4,0x1b
   13d58:	c4ca0793          	addi	a5,s4,-948 # 1ac4c <_strtol_r>
   13d5c:	02f13423          	sd	a5,40(sp)
   13d60:	00012823          	sw	zero,16(sp)
   13d64:	00300c93          	li	s9,3
   13d68:	d19ff06f          	j	13a80 <__svfscanf_r+0x204>
   13d6c:	010afa93          	andi	s5,s5,16
   13d70:	fff00913          	li	s2,-1
   13d74:	f00a90e3          	bnez	s5,13c74 <__svfscanf_r+0x3f8>
   13d78:	000b3a83          	ld	s5,0(s6)
   13d7c:	008b0b13          	addi	s6,s6,8
   13d80:	012a8d33          	add	s10,s5,s2
   13d84:	000a8c93          	mv	s9,s5
   13d88:	00c0006f          	j	13d94 <__svfscanf_r+0x518>
   13d8c:	000c3683          	ld	a3,0(s8)
   13d90:	0006c703          	lbu	a4,0(a3)
   13d94:	2d010793          	addi	a5,sp,720
   13d98:	00e78733          	add	a4,a5,a4
   13d9c:	da074703          	lbu	a4,-608(a4)
   13da0:	04070263          	beqz	a4,13de4 <__svfscanf_r+0x568>
   13da4:	008c2703          	lw	a4,8(s8)
   13da8:	00168613          	addi	a2,a3,1
   13dac:	00cc3023          	sd	a2,0(s8)
   13db0:	fff7071b          	addiw	a4,a4,-1
   13db4:	00ec2423          	sw	a4,8(s8)
   13db8:	0006c703          	lbu	a4,0(a3)
   13dbc:	001c8c93          	addi	s9,s9,1
   13dc0:	feec8fa3          	sb	a4,-1(s9)
   13dc4:	03ac8063          	beq	s9,s10,13de4 <__svfscanf_r+0x568>
   13dc8:	008c2703          	lw	a4,8(s8)
   13dcc:	fce040e3          	bgtz	a4,13d8c <__svfscanf_r+0x510>
   13dd0:	000c0593          	mv	a1,s8
   13dd4:	00048513          	mv	a0,s1
   13dd8:	5b0050ef          	jal	19388 <__srefill_r>
   13ddc:	fa0508e3          	beqz	a0,13d8c <__svfscanf_r+0x510>
   13de0:	d39a8ae3          	beq	s5,s9,13b14 <__svfscanf_r+0x298>
   13de4:	415c8abb          	subw	s5,s9,s5
   13de8:	bc0a84e3          	beqz	s5,139b0 <__svfscanf_r+0x134>
   13dec:	01412783          	lw	a5,20(sp)
   13df0:	000c8023          	sb	zero,0(s9)
   13df4:	0017879b          	addiw	a5,a5,1
   13df8:	00f12a23          	sw	a5,20(sp)
   13dfc:	015b8bbb          	addw	s7,s7,s5
   13e00:	b25ff06f          	j	13924 <__svfscanf_r+0xa8>
   13e04:	010af793          	andi	a5,s5,16
   13e08:	06810c93          	addi	s9,sp,104
   13e0c:	00800613          	li	a2,8
   13e10:	00000593          	li	a1,0
   13e14:	000c8513          	mv	a0,s9
   13e18:	00078a13          	mv	s4,a5
   13e1c:	00f12423          	sw	a5,8(sp)
   13e20:	00000a93          	li	s5,0
   13e24:	68d030ef          	jal	17cb0 <memset>
   13e28:	0e0a0663          	beqz	s4,13f14 <__svfscanf_r+0x698>
   13e2c:	00000a13          	li	s4,0
   13e30:	fff00d13          	li	s10,-1
   13e34:	029030ef          	jal	1765c <__locale_mb_cur_max>
   13e38:	cd450ee3          	beq	a0,s4,13b14 <__svfscanf_r+0x298>
   13e3c:	000c3683          	ld	a3,0(s8)
   13e40:	008c2603          	lw	a2,8(s8)
   13e44:	001a0d9b          	addiw	s11,s4,1
   13e48:	0006ce83          	lbu	t4,0(a3)
   13e4c:	fff6061b          	addiw	a2,a2,-1
   13e50:	00168693          	addi	a3,a3,1
   13e54:	2d010793          	addi	a5,sp,720
   13e58:	014788b3          	add	a7,a5,s4
   13e5c:	00cc2423          	sw	a2,8(s8)
   13e60:	00dc3023          	sd	a3,0(s8)
   13e64:	000c8713          	mv	a4,s9
   13e68:	000d8693          	mv	a3,s11
   13e6c:	17010613          	addi	a2,sp,368
   13e70:	000a8593          	mv	a1,s5
   13e74:	00048513          	mv	a0,s1
   13e78:	ebd88023          	sb	t4,-352(a7)
   13e7c:	1d1030ef          	jal	1784c <_mbrtowc_r>
   13e80:	c9a50ae3          	beq	a0,s10,13b14 <__svfscanf_r+0x298>
   13e84:	04051263          	bnez	a0,13ec8 <__svfscanf_r+0x64c>
   13e88:	00812783          	lw	a5,8(sp)
   13e8c:	06079463          	bnez	a5,13ef4 <__svfscanf_r+0x678>
   13e90:	000aa023          	sw	zero,0(s5)
   13e94:	01bb8bbb          	addw	s7,s7,s11
   13e98:	fff90913          	addi	s2,s2,-1
   13e9c:	004a8a93          	addi	s5,s5,4
   13ea0:	008c2683          	lw	a3,8(s8)
   13ea4:	00000a13          	li	s4,0
   13ea8:	02d05a63          	blez	a3,13edc <__svfscanf_r+0x660>
   13eac:	f80914e3          	bnez	s2,13e34 <__svfscanf_r+0x5b8>
   13eb0:	00812783          	lw	a5,8(sp)
   13eb4:	0017ba93          	seqz	s5,a5
   13eb8:	01412783          	lw	a5,20(sp)
   13ebc:	015787bb          	addw	a5,a5,s5
   13ec0:	00f12a23          	sw	a5,20(sp)
   13ec4:	a61ff06f          	j	13924 <__svfscanf_r+0xa8>
   13ec8:	ffe00793          	li	a5,-2
   13ecc:	02f51a63          	bne	a0,a5,13f00 <__svfscanf_r+0x684>
   13ed0:	008c2703          	lw	a4,8(s8)
   13ed4:	000d8a13          	mv	s4,s11
   13ed8:	f4e04ee3          	bgtz	a4,13e34 <__svfscanf_r+0x5b8>
   13edc:	000c0593          	mv	a1,s8
   13ee0:	00048513          	mv	a0,s1
   13ee4:	4a4050ef          	jal	19388 <__srefill_r>
   13ee8:	fc0502e3          	beqz	a0,13eac <__svfscanf_r+0x630>
   13eec:	fc0a02e3          	beqz	s4,13eb0 <__svfscanf_r+0x634>
   13ef0:	c25ff06f          	j	13b14 <__svfscanf_r+0x298>
   13ef4:	01bb8bbb          	addw	s7,s7,s11
   13ef8:	fff90913          	addi	s2,s2,-1
   13efc:	fa5ff06f          	j	13ea0 <__svfscanf_r+0x624>
   13f00:	00812783          	lw	a5,8(sp)
   13f04:	01bb8bbb          	addw	s7,s7,s11
   13f08:	fff90913          	addi	s2,s2,-1
   13f0c:	f80788e3          	beqz	a5,13e9c <__svfscanf_r+0x620>
   13f10:	f91ff06f          	j	13ea0 <__svfscanf_r+0x624>
   13f14:	000b3a83          	ld	s5,0(s6)
   13f18:	008b0b13          	addi	s6,s6,8
   13f1c:	f11ff06f          	j	13e2c <__svfscanf_r+0x5b0>
   13f20:	000c0593          	mv	a1,s8
   13f24:	00048513          	mv	a0,s1
   13f28:	460050ef          	jal	19388 <__srefill_r>
   13f2c:	ca0506e3          	beqz	a0,13bd8 <__svfscanf_r+0x35c>
   13f30:	be5ff06f          	j	13b14 <__svfscanf_r+0x298>
   13f34:	be0a80e3          	beqz	s5,13b14 <__svfscanf_r+0x298>
   13f38:	017a8bbb          	addw	s7,s5,s7
   13f3c:	9e9ff06f          	j	13924 <__svfscanf_r+0xa8>
   13f40:	a60a88e3          	beqz	s5,139b0 <__svfscanf_r+0x134>
   13f44:	015b8bbb          	addw	s7,s7,s5
   13f48:	9ddff06f          	j	13924 <__svfscanf_r+0xa8>
   13f4c:	000b3583          	ld	a1,0(s6)
   13f50:	000c0713          	mv	a4,s8
   13f54:	00090693          	mv	a3,s2
   13f58:	00100613          	li	a2,1
   13f5c:	00048513          	mv	a0,s1
   13f60:	191020ef          	jal	168f0 <_fread_r>
   13f64:	008b0b13          	addi	s6,s6,8
   13f68:	ba0506e3          	beqz	a0,13b14 <__svfscanf_r+0x298>
   13f6c:	01412783          	lw	a5,20(sp)
   13f70:	01750bbb          	addw	s7,a0,s7
   13f74:	0017879b          	addiw	a5,a5,1
   13f78:	00f12a23          	sw	a5,20(sp)
   13f7c:	9a9ff06f          	j	13924 <__svfscanf_r+0xa8>
   13f80:	000c0593          	mv	a1,s8
   13f84:	00048513          	mv	a0,s1
   13f88:	400050ef          	jal	19388 <__srefill_r>
   13f8c:	a60502e3          	beqz	a0,139f0 <__svfscanf_r+0x174>
   13f90:	b85ff06f          	j	13b14 <__svfscanf_r+0x298>
   13f94:	008c2703          	lw	a4,8(s8)
   13f98:	00daeab3          	or	s5,s5,a3
   13f9c:	d49ff06f          	j	13ce4 <__svfscanf_r+0x468>
   13fa0:	001afa93          	andi	s5,s5,1
   13fa4:	000b3703          	ld	a4,0(s6)
   13fa8:	020a8463          	beqz	s5,13fd0 <__svfscanf_r+0x754>
   13fac:	008b0b13          	addi	s6,s6,8
   13fb0:	01773023          	sd	s7,0(a4)
   13fb4:	971ff06f          	j	13924 <__svfscanf_r+0xa8>
   13fb8:	000c0593          	mv	a1,s8
   13fbc:	00048513          	mv	a0,s1
   13fc0:	3c8050ef          	jal	19388 <__srefill_r>
   13fc4:	b40518e3          	bnez	a0,13b14 <__svfscanf_r+0x298>
   13fc8:	8281b503          	ld	a0,-2008(gp) # 24418 <__ctype_ptr__>
   13fcc:	be9ff06f          	j	13bb4 <__svfscanf_r+0x338>
   13fd0:	008b0b13          	addi	s6,s6,8
   13fd4:	01772023          	sw	s7,0(a4)
   13fd8:	94dff06f          	j	13924 <__svfscanf_r+0xa8>
   13fdc:	000c0593          	mv	a1,s8
   13fe0:	00048513          	mv	a0,s1
   13fe4:	3a4050ef          	jal	19388 <__srefill_r>
   13fe8:	c6050ce3          	beqz	a0,13c60 <__svfscanf_r+0x3e4>
   13fec:	b29ff06f          	j	13b14 <__svfscanf_r+0x298>
   13ff0:	000c0593          	mv	a1,s8
   13ff4:	00048513          	mv	a0,s1
   13ff8:	390050ef          	jal	19388 <__srefill_r>
   13ffc:	b0051ce3          	bnez	a0,13b14 <__svfscanf_r+0x298>
   14000:	8281b503          	ld	a0,-2008(gp) # 24418 <__ctype_ptr__>
   14004:	d51ff06f          	j	13d54 <__svfscanf_r+0x4d8>
   14008:	000c0593          	mv	a1,s8
   1400c:	00048513          	mv	a0,s1
   14010:	378050ef          	jal	19388 <__srefill_r>
   14014:	b00510e3          	bnez	a0,13b14 <__svfscanf_r+0x298>
   14018:	8281b503          	ld	a0,-2008(gp) # 24418 <__ctype_ptr__>
   1401c:	b21ff06f          	j	13b3c <__svfscanf_r+0x2c0>
   14020:	00300593          	li	a1,3
   14024:	3ebc8e63          	beq	s9,a1,14420 <__svfscanf_r+0xba4>
   14028:	00400613          	li	a2,4
   1402c:	38cc9063          	bne	s9,a2,143ac <__svfscanf_r+0xb30>
   14030:	00048513          	mv	a0,s1
   14034:	644030ef          	jal	17678 <_localeconv_r>
   14038:	00053783          	ld	a5,0(a0)
   1403c:	fff90713          	addi	a4,s2,-1
   14040:	04012623          	sw	zero,76(sp)
   14044:	04f13023          	sd	a5,64(sp)
   14048:	15c00693          	li	a3,348
   1404c:	00e6f863          	bleu	a4,a3,1405c <__svfscanf_r+0x7e0>
   14050:	ea39079b          	addiw	a5,s2,-349
   14054:	04f12623          	sw	a5,76(sp)
   14058:	15d00913          	li	s2,349
   1405c:	17010793          	addi	a5,sp,368
   14060:	00021637          	lui	a2,0x21
   14064:	780aea13          	ori	s4,s5,1920
   14068:	02f13823          	sd	a5,48(sp)
   1406c:	00000c93          	li	s9,0
   14070:	00000d13          	li	s10,0
   14074:	04013c23          	sd	zero,88(sp)
   14078:	04013823          	sd	zero,80(sp)
   1407c:	00000a93          	li	s5,0
   14080:	02013c23          	sd	zero,56(sp)
   14084:	00078d93          	mv	s11,a5
   14088:	04e00e93          	li	t4,78
   1408c:	aac60613          	addi	a2,a2,-1364 # 20aac <zeroes.4194+0x1f4>
   14090:	000c3583          	ld	a1,0(s8)
   14094:	0005c503          	lbu	a0,0(a1)
   14098:	fd55071b          	addiw	a4,a0,-43
   1409c:	0ff77f93          	andi	t6,a4,255
   140a0:	2dfee463          	bltu	t4,t6,14368 <__svfscanf_r+0xaec>
   140a4:	0ff77713          	andi	a4,a4,255
   140a8:	00271713          	slli	a4,a4,0x2
   140ac:	00c70733          	add	a4,a4,a2
   140b0:	00072703          	lw	a4,0(a4)
   140b4:	00070067          	jr	a4
   140b8:	019d073b          	addw	a4,s10,s9
   140bc:	02071a63          	bnez	a4,140f0 <__svfscanf_r+0x874>
   140c0:	e7fa7a13          	andi	s4,s4,-385
   140c4:	00ad8023          	sb	a0,0(s11)
   140c8:	001d8d93          	addi	s11,s11,1
   140cc:	008c2703          	lw	a4,8(s8)
   140d0:	fff90913          	addi	s2,s2,-1
   140d4:	001b8b9b          	addiw	s7,s7,1
   140d8:	fff7071b          	addiw	a4,a4,-1
   140dc:	00ec2423          	sw	a4,8(s8)
   140e0:	04e05c63          	blez	a4,14138 <__svfscanf_r+0x8bc>
   140e4:	00158593          	addi	a1,a1,1
   140e8:	00bc3023          	sd	a1,0(s8)
   140ec:	fa0912e3          	bnez	s2,14090 <__svfscanf_r+0x814>
   140f0:	0e0a8263          	beqz	s5,141d4 <__svfscanf_r+0x958>
   140f4:	effa7a13          	andi	s4,s4,-257
   140f8:	0dc0006f          	j	141d4 <__svfscanf_r+0x958>
   140fc:	100a7713          	andi	a4,s4,256
   14100:	fa070ce3          	beqz	a4,140b8 <__svfscanf_r+0x83c>
   14104:	04c12783          	lw	a5,76(sp)
   14108:	f7fa7a13          	andi	s4,s4,-129
   1410c:	001a8a93          	addi	s5,s5,1
   14110:	fa078ee3          	beqz	a5,140cc <__svfscanf_r+0x850>
   14114:	008c2703          	lw	a4,8(s8)
   14118:	fff7879b          	addiw	a5,a5,-1
   1411c:	00190913          	addi	s2,s2,1
   14120:	fff7071b          	addiw	a4,a4,-1
   14124:	04f12623          	sw	a5,76(sp)
   14128:	00ec2423          	sw	a4,8(s8)
   1412c:	fff90913          	addi	s2,s2,-1
   14130:	001b8b9b          	addiw	s7,s7,1
   14134:	fae048e3          	bgtz	a4,140e4 <__svfscanf_r+0x868>
   14138:	000c0593          	mv	a1,s8
   1413c:	00048513          	mv	a0,s1
   14140:	02c13023          	sd	a2,32(sp)
   14144:	01d13423          	sd	t4,8(sp)
   14148:	240050ef          	jal	19388 <__srefill_r>
   1414c:	00813e83          	ld	t4,8(sp)
   14150:	02013603          	ld	a2,32(sp)
   14154:	f8051ee3          	bnez	a0,140f0 <__svfscanf_r+0x874>
   14158:	f2091ce3          	bnez	s2,14090 <__svfscanf_r+0x814>
   1415c:	f95ff06f          	j	140f0 <__svfscanf_r+0x874>
   14160:	00700793          	li	a5,7
   14164:	f8fc96e3          	bne	s9,a5,140f0 <__svfscanf_r+0x874>
   14168:	00800c93          	li	s9,8
   1416c:	f59ff06f          	j	140c4 <__svfscanf_r+0x848>
   14170:	080a7713          	andi	a4,s4,128
   14174:	f6070ee3          	beqz	a4,140f0 <__svfscanf_r+0x874>
   14178:	f7fa7a13          	andi	s4,s4,-129
   1417c:	f49ff06f          	j	140c4 <__svfscanf_r+0x848>
   14180:	00600793          	li	a5,6
   14184:	f6fc96e3          	bne	s9,a5,140f0 <__svfscanf_r+0x874>
   14188:	00700c93          	li	s9,7
   1418c:	f39ff06f          	j	140c4 <__svfscanf_r+0x848>
   14190:	1e0d1c63          	bnez	s10,14388 <__svfscanf_r+0xb0c>
   14194:	000a9863          	bnez	s5,141a4 <__svfscanf_r+0x928>
   14198:	700a7713          	andi	a4,s4,1792
   1419c:	70000793          	li	a5,1792
   141a0:	56f70863          	beq	a4,a5,14710 <__svfscanf_r+0xe94>
   141a4:	00100713          	li	a4,1
   141a8:	00ec8663          	beq	s9,a4,141b4 <__svfscanf_r+0x938>
   141ac:	00400713          	li	a4,4
   141b0:	f4ec90e3          	bne	s9,a4,140f0 <__svfscanf_r+0x874>
   141b4:	001c8e1b          	addiw	t3,s9,1
   141b8:	0ffe7c93          	andi	s9,t3,255
   141bc:	f09ff06f          	j	140c4 <__svfscanf_r+0x848>
   141c0:	1c0c9c63          	bnez	s9,14398 <__svfscanf_r+0xb1c>
   141c4:	f20a98e3          	bnez	s5,140f4 <__svfscanf_r+0x878>
   141c8:	700a7713          	andi	a4,s4,1792
   141cc:	70000793          	li	a5,1792
   141d0:	54f70663          	beq	a4,a5,1471c <__svfscanf_r+0xea0>
   141d4:	fffd0f1b          	addiw	t5,s10,-1
   141d8:	00100713          	li	a4,1
   141dc:	6fe77c63          	bleu	t5,a4,148d4 <__svfscanf_r+0x1058>
   141e0:	fffc871b          	addiw	a4,s9,-1
   141e4:	00600613          	li	a2,6
   141e8:	06e66063          	bltu	a2,a4,14248 <__svfscanf_r+0x9cc>
   141ec:	00200793          	li	a5,2
   141f0:	7397fa63          	bleu	s9,a5,14924 <__svfscanf_r+0x10a8>
   141f4:	00300613          	li	a2,3
   141f8:	0ff77713          	andi	a4,a4,255
   141fc:	000d8d13          	mv	s10,s11
   14200:	00078913          	mv	s2,a5
   14204:	04cc8263          	beq	s9,a2,14248 <__svfscanf_r+0x9cc>
   14208:	fffd0d13          	addi	s10,s10,-1
   1420c:	000d4583          	lbu	a1,0(s10)
   14210:	000c0613          	mv	a2,s8
   14214:	00048513          	mv	a0,s1
   14218:	00e13423          	sd	a4,8(sp)
   1421c:	30d080ef          	jal	1cd28 <_ungetc_r>
   14220:	00813703          	ld	a4,8(sp)
   14224:	fff7071b          	addiw	a4,a4,-1
   14228:	0ff77713          	andi	a4,a4,255
   1422c:	fd271ee3          	bne	a4,s2,14208 <__svfscanf_r+0x98c>
   14230:	ffcc871b          	addiw	a4,s9,-4
   14234:	0ff77713          	andi	a4,a4,255
   14238:	fff74613          	not	a2,a4
   1423c:	fffb881b          	addiw	a6,s7,-1
   14240:	00cd8db3          	add	s11,s11,a2
   14244:	40e80bbb          	subw	s7,a6,a4
   14248:	100a7713          	andi	a4,s4,256
   1424c:	04070e63          	beqz	a4,142a8 <__svfscanf_r+0xa2c>
   14250:	400a7713          	andi	a4,s4,1024
   14254:	6a071463          	bnez	a4,148fc <__svfscanf_r+0x1080>
   14258:	fffdc583          	lbu	a1,-1(s11)
   1425c:	06500613          	li	a2,101
   14260:	fffd8d13          	addi	s10,s11,-1
   14264:	fffb871b          	addiw	a4,s7,-1
   14268:	02c58263          	beq	a1,a2,1428c <__svfscanf_r+0xa10>
   1426c:	04500613          	li	a2,69
   14270:	00c58e63          	beq	a1,a2,1428c <__svfscanf_r+0xa10>
   14274:	000c0613          	mv	a2,s8
   14278:	00048513          	mv	a0,s1
   1427c:	2ad080ef          	jal	1cd28 <_ungetc_r>
   14280:	ffedc583          	lbu	a1,-2(s11)
   14284:	ffed8d13          	addi	s10,s11,-2
   14288:	ffeb871b          	addiw	a4,s7,-2
   1428c:	000c0613          	mv	a2,s8
   14290:	00048513          	mv	a0,s1
   14294:	00e13423          	sd	a4,8(sp)
   14298:	291080ef          	jal	1cd28 <_ungetc_r>
   1429c:	00813703          	ld	a4,8(sp)
   142a0:	000d0d93          	mv	s11,s10
   142a4:	00070b93          	mv	s7,a4
   142a8:	010a7713          	andi	a4,s4,16
   142ac:	e6071c63          	bnez	a4,13924 <__svfscanf_r+0xa8>
   142b0:	000d8023          	sb	zero,0(s11)
   142b4:	600a7713          	andi	a4,s4,1536
   142b8:	40000613          	li	a2,1024
   142bc:	48c70e63          	beq	a4,a2,14758 <__svfscanf_r+0xedc>
   142c0:	05013783          	ld	a5,80(sp)
   142c4:	4c079263          	bnez	a5,14788 <__svfscanf_r+0xf0c>
   142c8:	03013583          	ld	a1,48(sp)
   142cc:	00000613          	li	a2,0
   142d0:	00048513          	mv	a0,s1
   142d4:	674050ef          	jal	19948 <_strtod_r>
   142d8:	001a7713          	andi	a4,s4,1
   142dc:	22a50453          	fmv.d	fs0,fa0
   142e0:	00071663          	bnez	a4,142ec <__svfscanf_r+0xa70>
   142e4:	002a7893          	andi	a7,s4,2
   142e8:	4c088e63          	beqz	a7,147c4 <__svfscanf_r+0xf48>
   142ec:	000b3703          	ld	a4,0(s6)
   142f0:	008b0b13          	addi	s6,s6,8
   142f4:	00873027          	fsd	fs0,0(a4)
   142f8:	01412783          	lw	a5,20(sp)
   142fc:	0017879b          	addiw	a5,a5,1
   14300:	00f12a23          	sw	a5,20(sp)
   14304:	e20ff06f          	j	13924 <__svfscanf_r+0xa8>
   14308:	00200793          	li	a5,2
   1430c:	defc92e3          	bne	s9,a5,140f0 <__svfscanf_r+0x874>
   14310:	00300c93          	li	s9,3
   14314:	db1ff06f          	j	140c4 <__svfscanf_r+0x848>
   14318:	500a7713          	andi	a4,s4,1280
   1431c:	40000793          	li	a5,1024
   14320:	00f70863          	beq	a4,a5,14330 <__svfscanf_r+0xab4>
   14324:	00fa7733          	and	a4,s4,a5
   14328:	dc0704e3          	beqz	a4,140f0 <__svfscanf_r+0x874>
   1432c:	ea0a84e3          	beqz	s5,141d4 <__svfscanf_r+0x958>
   14330:	200a7713          	andi	a4,s4,512
   14334:	00071a63          	bnez	a4,14348 <__svfscanf_r+0xacc>
   14338:	03813783          	ld	a5,56(sp)
   1433c:	05b13c23          	sd	s11,88(sp)
   14340:	40fa87b3          	sub	a5,s5,a5
   14344:	04f13823          	sd	a5,80(sp)
   14348:	87fa7a93          	andi	s5,s4,-1921
   1434c:	180aea13          	ori	s4,s5,384
   14350:	00000a93          	li	s5,0
   14354:	d71ff06f          	j	140c4 <__svfscanf_r+0x848>
   14358:	00100713          	li	a4,1
   1435c:	d8ed1ae3          	bne	s10,a4,140f0 <__svfscanf_r+0x874>
   14360:	00200d13          	li	s10,2
   14364:	d61ff06f          	j	140c4 <__svfscanf_r+0x848>
   14368:	04013783          	ld	a5,64(sp)
   1436c:	0007c703          	lbu	a4,0(a5)
   14370:	d8a710e3          	bne	a4,a0,140f0 <__svfscanf_r+0x874>
   14374:	200a7713          	andi	a4,s4,512
   14378:	d6070ce3          	beqz	a4,140f0 <__svfscanf_r+0x874>
   1437c:	d7fa7a13          	andi	s4,s4,-641
   14380:	03513c23          	sd	s5,56(sp)
   14384:	d41ff06f          	j	140c4 <__svfscanf_r+0x848>
   14388:	00200793          	li	a5,2
   1438c:	e0fd1ce3          	bne	s10,a5,141a4 <__svfscanf_r+0x928>
   14390:	00300d13          	li	s10,3
   14394:	d31ff06f          	j	140c4 <__svfscanf_r+0x848>
   14398:	ffdc871b          	addiw	a4,s9,-3
   1439c:	0fd77713          	andi	a4,a4,253
   143a0:	e0070ae3          	beqz	a4,141b4 <__svfscanf_r+0x938>
   143a4:	e20a88e3          	beqz	s5,141d4 <__svfscanf_r+0x958>
   143a8:	d4dff06f          	j	140f4 <__svfscanf_r+0x878>
   143ac:	00091463          	bnez	s2,143b4 <__svfscanf_r+0xb38>
   143b0:	fff00913          	li	s2,-1
   143b4:	001af613          	andi	a2,s5,1
   143b8:	2c061863          	bnez	a2,14688 <__svfscanf_r+0xe0c>
   143bc:	010afa93          	andi	s5,s5,16
   143c0:	1e0a8e63          	beqz	s5,145bc <__svfscanf_r+0xd40>
   143c4:	00000a93          	li	s5,0
   143c8:	0100006f          	j	143d8 <__svfscanf_r+0xb5c>
   143cc:	0006c703          	lbu	a4,0(a3)
   143d0:	00e50733          	add	a4,a0,a4
   143d4:	00174703          	lbu	a4,1(a4)
   143d8:	00877713          	andi	a4,a4,8
   143dc:	a20710e3          	bnez	a4,13dfc <__svfscanf_r+0x580>
   143e0:	008c2703          	lw	a4,8(s8)
   143e4:	00168693          	addi	a3,a3,1
   143e8:	00dc3023          	sd	a3,0(s8)
   143ec:	fff7071b          	addiw	a4,a4,-1
   143f0:	00ec2423          	sw	a4,8(s8)
   143f4:	fff90913          	addi	s2,s2,-1
   143f8:	001a8a9b          	addiw	s5,s5,1
   143fc:	a00900e3          	beqz	s2,13dfc <__svfscanf_r+0x580>
   14400:	fce046e3          	bgtz	a4,143cc <__svfscanf_r+0xb50>
   14404:	000c0593          	mv	a1,s8
   14408:	00048513          	mv	a0,s1
   1440c:	77d040ef          	jal	19388 <__srefill_r>
   14410:	9e0516e3          	bnez	a0,13dfc <__svfscanf_r+0x580>
   14414:	8281b503          	ld	a0,-2008(gp) # 24418 <__ctype_ptr__>
   14418:	000c3683          	ld	a3,0(s8)
   1441c:	fb1ff06f          	j	143cc <__svfscanf_r+0xb50>
   14420:	fff90713          	addi	a4,s2,-1
   14424:	15c00593          	li	a1,348
   14428:	00000e13          	li	t3,0
   1442c:	00e5f663          	bleu	a4,a1,14438 <__svfscanf_r+0xbbc>
   14430:	ea390e1b          	addiw	t3,s2,-349
   14434:	15d00913          	li	s2,349
   14438:	17010793          	addi	a5,sp,368
   1443c:	00001737          	lui	a4,0x1
   14440:	02f13823          	sd	a5,48(sp)
   14444:	d807071b          	addiw	a4,a4,-640
   14448:	00078d13          	mv	s10,a5
   1444c:	00021db7          	lui	s11,0x21
   14450:	000017b7          	lui	a5,0x1
   14454:	00eaeab3          	or	s5,s5,a4
   14458:	00000a13          	li	s4,0
   1445c:	d20d8d93          	addi	s11,s11,-736 # 20d20 <basefix.4147>
   14460:	80078c9b          	addiw	s9,a5,-2048
   14464:	fd56071b          	addiw	a4,a2,-43
   14468:	0ff77513          	andi	a0,a4,255
   1446c:	04d00593          	li	a1,77
   14470:	0aa5e063          	bltu	a1,a0,14510 <__svfscanf_r+0xc94>
   14474:	01813783          	ld	a5,24(sp)
   14478:	0ff77713          	andi	a4,a4,255
   1447c:	00271713          	slli	a4,a4,0x2
   14480:	00f70733          	add	a4,a4,a5
   14484:	00072703          	lw	a4,0(a4) # 1000 <_ftext-0xf000>
   14488:	00070067          	jr	a4
   1448c:	600af713          	andi	a4,s5,1536
   14490:	20000593          	li	a1,512
   14494:	06b71e63          	bne	a4,a1,14510 <__svfscanf_r+0xc94>
   14498:	dffafa93          	andi	s5,s5,-513
   1449c:	01000793          	li	a5,16
   144a0:	500aea93          	ori	s5,s5,1280
   144a4:	00f12823          	sw	a5,16(sp)
   144a8:	00cd0023          	sb	a2,0(s10)
   144ac:	001d0d13          	addi	s10,s10,1
   144b0:	008c2703          	lw	a4,8(s8)
   144b4:	fff7071b          	addiw	a4,a4,-1
   144b8:	00ec2423          	sw	a4,8(s8)
   144bc:	0ee05263          	blez	a4,145a0 <__svfscanf_r+0xd24>
   144c0:	00168693          	addi	a3,a3,1
   144c4:	00dc3023          	sd	a3,0(s8)
   144c8:	fff90913          	addi	s2,s2,-1
   144cc:	04090263          	beqz	s2,14510 <__svfscanf_r+0xc94>
   144d0:	000c3683          	ld	a3,0(s8)
   144d4:	0006c603          	lbu	a2,0(a3)
   144d8:	f8dff06f          	j	14464 <__svfscanf_r+0xbe8>
   144dc:	01012783          	lw	a5,16(sp)
   144e0:	00a00713          	li	a4,10
   144e4:	02f75663          	ble	a5,a4,14510 <__svfscanf_r+0xc94>
   144e8:	04812783          	lw	a5,72(sp)
   144ec:	00fafab3          	and	s5,s5,a5
   144f0:	fb9ff06f          	j	144a8 <__svfscanf_r+0xc2c>
   144f4:	01012703          	lw	a4,16(sp)
   144f8:	00171713          	slli	a4,a4,0x1
   144fc:	00ed8733          	add	a4,s11,a4
   14500:	00071783          	lh	a5,0(a4)
   14504:	00800713          	li	a4,8
   14508:	00f12823          	sw	a5,16(sp)
   1450c:	fcf74ee3          	blt	a4,a5,144e8 <__svfscanf_r+0xc6c>
   14510:	100af713          	andi	a4,s5,256
   14514:	00070a63          	beqz	a4,14528 <__svfscanf_r+0xcac>
   14518:	03013783          	ld	a5,48(sp)
   1451c:	21a7e663          	bltu	a5,s10,14728 <__svfscanf_r+0xeac>
   14520:	03013783          	ld	a5,48(sp)
   14524:	c8fd0663          	beq	s10,a5,139b0 <__svfscanf_r+0x134>
   14528:	010af713          	andi	a4,s5,16
   1452c:	10070e63          	beqz	a4,14648 <__svfscanf_r+0xdcc>
   14530:	03013783          	ld	a5,48(sp)
   14534:	017a083b          	addw	a6,s4,s7
   14538:	40fd0cb3          	sub	s9,s10,a5
   1453c:	010c8bbb          	addw	s7,s9,a6
   14540:	be4ff06f          	j	13924 <__svfscanf_r+0xa8>
   14544:	01012703          	lw	a4,16(sp)
   14548:	00171713          	slli	a4,a4,0x1
   1454c:	00ed8733          	add	a4,s11,a4
   14550:	00071783          	lh	a5,0(a4)
   14554:	00f12823          	sw	a5,16(sp)
   14558:	04812783          	lw	a5,72(sp)
   1455c:	00fafab3          	and	s5,s5,a5
   14560:	f49ff06f          	j	144a8 <__svfscanf_r+0xc2c>
   14564:	019af733          	and	a4,s5,s9
   14568:	f40700e3          	beqz	a4,144a8 <__svfscanf_r+0xc2c>
   1456c:	01012783          	lw	a5,16(sp)
   14570:	00079863          	bnez	a5,14580 <__svfscanf_r+0xd04>
   14574:	00800793          	li	a5,8
   14578:	200aea93          	ori	s5,s5,512
   1457c:	00f12823          	sw	a5,16(sp)
   14580:	400af713          	andi	a4,s5,1024
   14584:	16070a63          	beqz	a4,146f8 <__svfscanf_r+0xe7c>
   14588:	a7fafa93          	andi	s5,s5,-1409
   1458c:	f1dff06f          	j	144a8 <__svfscanf_r+0xc2c>
   14590:	080af713          	andi	a4,s5,128
   14594:	f6070ee3          	beqz	a4,14510 <__svfscanf_r+0xc94>
   14598:	f7fafa93          	andi	s5,s5,-129
   1459c:	f0dff06f          	j	144a8 <__svfscanf_r+0xc2c>
   145a0:	000c0593          	mv	a1,s8
   145a4:	00048513          	mv	a0,s1
   145a8:	01c13423          	sd	t3,8(sp)
   145ac:	5dd040ef          	jal	19388 <__srefill_r>
   145b0:	00813e03          	ld	t3,8(sp)
   145b4:	f0050ae3          	beqz	a0,144c8 <__svfscanf_r+0xc4c>
   145b8:	f59ff06f          	j	14510 <__svfscanf_r+0xc94>
   145bc:	000b3c83          	ld	s9,0(s6)
   145c0:	008b0b13          	addi	s6,s6,8
   145c4:	012c8d33          	add	s10,s9,s2
   145c8:	000c8a93          	mv	s5,s9
   145cc:	0180006f          	j	145e4 <__svfscanf_r+0xd68>
   145d0:	000c3683          	ld	a3,0(s8)
   145d4:	8281b703          	ld	a4,-2008(gp) # 24418 <__ctype_ptr__>
   145d8:	0006c603          	lbu	a2,0(a3)
   145dc:	00c70733          	add	a4,a4,a2
   145e0:	00174703          	lbu	a4,1(a4)
   145e4:	00877713          	andi	a4,a4,8
   145e8:	04071063          	bnez	a4,14628 <__svfscanf_r+0xdac>
   145ec:	008c2703          	lw	a4,8(s8)
   145f0:	00168613          	addi	a2,a3,1
   145f4:	00cc3023          	sd	a2,0(s8)
   145f8:	fff7071b          	addiw	a4,a4,-1
   145fc:	00ec2423          	sw	a4,8(s8)
   14600:	0006c703          	lbu	a4,0(a3)
   14604:	001a8a93          	addi	s5,s5,1
   14608:	feea8fa3          	sb	a4,-1(s5)
   1460c:	035d0063          	beq	s10,s5,1462c <__svfscanf_r+0xdb0>
   14610:	008c2703          	lw	a4,8(s8)
   14614:	fae04ee3          	bgtz	a4,145d0 <__svfscanf_r+0xd54>
   14618:	000c0593          	mv	a1,s8
   1461c:	00048513          	mv	a0,s1
   14620:	569040ef          	jal	19388 <__srefill_r>
   14624:	fa0506e3          	beqz	a0,145d0 <__svfscanf_r+0xd54>
   14628:	000a8d13          	mv	s10,s5
   1462c:	01412783          	lw	a5,20(sp)
   14630:	419d0cb3          	sub	s9,s10,s9
   14634:	000d0023          	sb	zero,0(s10)
   14638:	0017879b          	addiw	a5,a5,1
   1463c:	017c8bbb          	addw	s7,s9,s7
   14640:	00f12a23          	sw	a5,20(sp)
   14644:	ae0ff06f          	j	13924 <__svfscanf_r+0xa8>
   14648:	01012683          	lw	a3,16(sp)
   1464c:	03013583          	ld	a1,48(sp)
   14650:	02813783          	ld	a5,40(sp)
   14654:	00000613          	li	a2,0
   14658:	00048513          	mv	a0,s1
   1465c:	000d0023          	sb	zero,0(s10)
   14660:	000780e7          	jalr	a5
   14664:	020af713          	andi	a4,s5,32
   14668:	0c070c63          	beqz	a4,14740 <__svfscanf_r+0xec4>
   1466c:	000b3703          	ld	a4,0(s6)
   14670:	008b0b13          	addi	s6,s6,8
   14674:	00a73023          	sd	a0,0(a4)
   14678:	01412783          	lw	a5,20(sp)
   1467c:	0017879b          	addiw	a5,a5,1
   14680:	00f12a23          	sw	a5,20(sp)
   14684:	eadff06f          	j	14530 <__svfscanf_r+0xcb4>
   14688:	010af793          	andi	a5,s5,16
   1468c:	06810c93          	addi	s9,sp,104
   14690:	00800613          	li	a2,8
   14694:	00000593          	li	a1,0
   14698:	000c8513          	mv	a0,s9
   1469c:	00078a13          	mv	s4,a5
   146a0:	00f12423          	sw	a5,8(sp)
   146a4:	06410a93          	addi	s5,sp,100
   146a8:	608030ef          	jal	17cb0 <memset>
   146ac:	000a1663          	bnez	s4,146b8 <__svfscanf_r+0xe3c>
   146b0:	000b3a83          	ld	s5,0(s6)
   146b4:	008b0b13          	addi	s6,s6,8
   146b8:	00000a13          	li	s4,0
   146bc:	000c3603          	ld	a2,0(s8)
   146c0:	8281b683          	ld	a3,-2008(gp) # 24418 <__ctype_ptr__>
   146c4:	00064603          	lbu	a2,0(a2)
   146c8:	00c686b3          	add	a3,a3,a2
   146cc:	0016c683          	lbu	a3,1(a3)
   146d0:	0086f693          	andi	a3,a3,8
   146d4:	00069463          	bnez	a3,146dc <__svfscanf_r+0xe60>
   146d8:	10091663          	bnez	s2,147e4 <__svfscanf_r+0xf68>
   146dc:	00812783          	lw	a5,8(sp)
   146e0:	a4079263          	bnez	a5,13924 <__svfscanf_r+0xa8>
   146e4:	01412783          	lw	a5,20(sp)
   146e8:	000aa023          	sw	zero,0(s5)
   146ec:	0017879b          	addiw	a5,a5,1
   146f0:	00f12a23          	sw	a5,20(sp)
   146f4:	a30ff06f          	j	13924 <__svfscanf_r+0xa8>
   146f8:	c7fafa93          	andi	s5,s5,-897
   146fc:	000e0663          	beqz	t3,14708 <__svfscanf_r+0xe8c>
   14700:	fffe0e1b          	addiw	t3,t3,-1
   14704:	00190913          	addi	s2,s2,1
   14708:	001a0a1b          	addiw	s4,s4,1
   1470c:	da5ff06f          	j	144b0 <__svfscanf_r+0xc34>
   14710:	87fa7a13          	andi	s4,s4,-1921
   14714:	00100d13          	li	s10,1
   14718:	9adff06f          	j	140c4 <__svfscanf_r+0x848>
   1471c:	87fa7a13          	andi	s4,s4,-1921
   14720:	00100c93          	li	s9,1
   14724:	9a1ff06f          	j	140c4 <__svfscanf_r+0x848>
   14728:	fffd4583          	lbu	a1,-1(s10)
   1472c:	000c0613          	mv	a2,s8
   14730:	00048513          	mv	a0,s1
   14734:	fffd0d13          	addi	s10,s10,-1
   14738:	5f0080ef          	jal	1cd28 <_ungetc_r>
   1473c:	de5ff06f          	j	14520 <__svfscanf_r+0xca4>
   14740:	004af713          	andi	a4,s5,4
   14744:	06070463          	beqz	a4,147ac <__svfscanf_r+0xf30>
   14748:	000b3703          	ld	a4,0(s6)
   1474c:	008b0b13          	addi	s6,s6,8
   14750:	00a71023          	sh	a0,0(a4)
   14754:	f25ff06f          	j	14678 <__svfscanf_r+0xdfc>
   14758:	03813783          	ld	a5,56(sp)
   1475c:	40fa8ab3          	sub	s5,s5,a5
   14760:	41500633          	neg	a2,s5
   14764:	b60a82e3          	beqz	s5,142c8 <__svfscanf_r+0xa4c>
   14768:	2b910713          	addi	a4,sp,697
   1476c:	00ede463          	bltu	s11,a4,14774 <__svfscanf_r+0xef8>
   14770:	2b810d93          	addi	s11,sp,696
   14774:	000225b7          	lui	a1,0x22
   14778:	d0058593          	addi	a1,a1,-768 # 21d00 <zeroes.4123+0x6d0>
   1477c:	000d8513          	mv	a0,s11
   14780:	7fd040ef          	jal	1977c <sprintf>
   14784:	b45ff06f          	j	142c8 <__svfscanf_r+0xa4c>
   14788:	05813d83          	ld	s11,88(sp)
   1478c:	00000613          	li	a2,0
   14790:	00a00693          	li	a3,10
   14794:	001d8593          	addi	a1,s11,1
   14798:	00048513          	mv	a0,s1
   1479c:	4b0060ef          	jal	1ac4c <_strtol_r>
   147a0:	05013783          	ld	a5,80(sp)
   147a4:	40f50633          	sub	a2,a0,a5
   147a8:	fc1ff06f          	j	14768 <__svfscanf_r+0xeec>
   147ac:	001afa93          	andi	s5,s5,1
   147b0:	000b3703          	ld	a4,0(s6)
   147b4:	008b0b13          	addi	s6,s6,8
   147b8:	0c0a8063          	beqz	s5,14878 <__svfscanf_r+0xffc>
   147bc:	00a73023          	sd	a0,0(a4)
   147c0:	eb9ff06f          	j	14678 <__svfscanf_r+0xdfc>
   147c4:	008b0a93          	addi	s5,s6,8
   147c8:	000b3c83          	ld	s9,0(s6)
   147cc:	6c9040ef          	jal	19694 <__fpclassifyd>
   147d0:	18050063          	beqz	a0,14950 <__svfscanf_r+0x10d4>
   147d4:	40147453          	fcvt.s.d	fs0,fs0
   147d8:	000a8b13          	mv	s6,s5
   147dc:	008ca027          	fsw	fs0,0(s9)
   147e0:	b19ff06f          	j	142f8 <__svfscanf_r+0xa7c>
   147e4:	679020ef          	jal	1765c <__locale_mb_cur_max>
   147e8:	b2aa0663          	beq	s4,a0,13b14 <__svfscanf_r+0x298>
   147ec:	000c3683          	ld	a3,0(s8)
   147f0:	008c2603          	lw	a2,8(s8)
   147f4:	2d010793          	addi	a5,sp,720
   147f8:	0006cf03          	lbu	t5,0(a3)
   147fc:	fff6061b          	addiw	a2,a2,-1
   14800:	00168693          	addi	a3,a3,1
   14804:	001a0d1b          	addiw	s10,s4,1
   14808:	01478eb3          	add	t4,a5,s4
   1480c:	00cc2423          	sw	a2,8(s8)
   14810:	00dc3023          	sd	a3,0(s8)
   14814:	000c8713          	mv	a4,s9
   14818:	000d0693          	mv	a3,s10
   1481c:	17010613          	addi	a2,sp,368
   14820:	000a8593          	mv	a1,s5
   14824:	00048513          	mv	a0,s1
   14828:	ebee8023          	sb	t5,-352(t4)
   1482c:	020030ef          	jal	1784c <_mbrtowc_r>
   14830:	fff00793          	li	a5,-1
   14834:	aef50063          	beq	a0,a5,13b14 <__svfscanf_r+0x298>
   14838:	04051463          	bnez	a0,14880 <__svfscanf_r+0x1004>
   1483c:	000aa023          	sw	zero,0(s5)
   14840:	00000513          	li	a0,0
   14844:	565020ef          	jal	175a8 <iswspace>
   14848:	06050263          	beqz	a0,148ac <__svfscanf_r+0x1030>
   1484c:	e80d08e3          	beqz	s10,146dc <__svfscanf_r+0xe60>
   14850:	fffd0d1b          	addiw	s10,s10,-1
   14854:	000d0713          	mv	a4,s10
   14858:	2d010793          	addi	a5,sp,720
   1485c:	00e78733          	add	a4,a5,a4
   14860:	ea074583          	lbu	a1,-352(a4)
   14864:	000c0613          	mv	a2,s8
   14868:	00048513          	mv	a0,s1
   1486c:	4bc080ef          	jal	1cd28 <_ungetc_r>
   14870:	fe0d10e3          	bnez	s10,14850 <__svfscanf_r+0xfd4>
   14874:	e69ff06f          	j	146dc <__svfscanf_r+0xe60>
   14878:	00a72023          	sw	a0,0(a4)
   1487c:	dfdff06f          	j	14678 <__svfscanf_r+0xdfc>
   14880:	ffe00793          	li	a5,-2
   14884:	000d0a13          	mv	s4,s10
   14888:	04f51263          	bne	a0,a5,148cc <__svfscanf_r+0x1050>
   1488c:	008c2683          	lw	a3,8(s8)
   14890:	e2d046e3          	bgtz	a3,146bc <__svfscanf_r+0xe40>
   14894:	000c0593          	mv	a1,s8
   14898:	00048513          	mv	a0,s1
   1489c:	2ed040ef          	jal	19388 <__srefill_r>
   148a0:	e0050ee3          	beqz	a0,146bc <__svfscanf_r+0xe40>
   148a4:	a60a1863          	bnez	s4,13b14 <__svfscanf_r+0x298>
   148a8:	e35ff06f          	j	146dc <__svfscanf_r+0xe60>
   148ac:	00812783          	lw	a5,8(sp)
   148b0:	01ab8bbb          	addw	s7,s7,s10
   148b4:	fff90913          	addi	s2,s2,-1
   148b8:	00000a13          	li	s4,0
   148bc:	fc0798e3          	bnez	a5,1488c <__svfscanf_r+0x1010>
   148c0:	004a8a93          	addi	s5,s5,4
   148c4:	00078a13          	mv	s4,a5
   148c8:	fc5ff06f          	j	1488c <__svfscanf_r+0x1010>
   148cc:	000aa503          	lw	a0,0(s5)
   148d0:	f75ff06f          	j	14844 <__svfscanf_r+0xfc8>
   148d4:	03013783          	ld	a5,48(sp)
   148d8:	8db7fc63          	bleu	s11,a5,139b0 <__svfscanf_r+0x134>
   148dc:	fffd8d93          	addi	s11,s11,-1
   148e0:	000dc583          	lbu	a1,0(s11)
   148e4:	000c0613          	mv	a2,s8
   148e8:	00048513          	mv	a0,s1
   148ec:	43c080ef          	jal	1cd28 <_ungetc_r>
   148f0:	03013783          	ld	a5,48(sp)
   148f4:	fefd94e3          	bne	s11,a5,148dc <__svfscanf_r+0x1060>
   148f8:	8b8ff06f          	j	139b0 <__svfscanf_r+0x134>
   148fc:	03013783          	ld	a5,48(sp)
   14900:	8bb7f863          	bleu	s11,a5,139b0 <__svfscanf_r+0x134>
   14904:	fffd8d93          	addi	s11,s11,-1
   14908:	000dc583          	lbu	a1,0(s11)
   1490c:	000c0613          	mv	a2,s8
   14910:	00048513          	mv	a0,s1
   14914:	414080ef          	jal	1cd28 <_ungetc_r>
   14918:	03013783          	ld	a5,48(sp)
   1491c:	fefd94e3          	bne	s11,a5,14904 <__svfscanf_r+0x1088>
   14920:	890ff06f          	j	139b0 <__svfscanf_r+0x134>
   14924:	03013783          	ld	a5,48(sp)
   14928:	01b7e463          	bltu	a5,s11,14930 <__svfscanf_r+0x10b4>
   1492c:	884ff06f          	j	139b0 <__svfscanf_r+0x134>
   14930:	fffd8d93          	addi	s11,s11,-1
   14934:	000dc583          	lbu	a1,0(s11)
   14938:	000c0613          	mv	a2,s8
   1493c:	00048513          	mv	a0,s1
   14940:	3e8080ef          	jal	1cd28 <_ungetc_r>
   14944:	03013783          	ld	a5,48(sp)
   14948:	fefd94e3          	bne	s11,a5,14930 <__svfscanf_r+0x10b4>
   1494c:	864ff06f          	j	139b0 <__svfscanf_r+0x134>
   14950:	00000513          	li	a0,0
   14954:	535040ef          	jal	19688 <nanf>
   14958:	00aca027          	fsw	fa0,0(s9)
   1495c:	000a8b13          	mv	s6,s5
   14960:	999ff06f          	j	142f8 <__svfscanf_r+0xa7c>

0000000000014964 <vfscanf>:
   14964:	fd010113          	addi	sp,sp,-48
   14968:	02813023          	sd	s0,32(sp)
   1496c:	8101b403          	ld	s0,-2032(gp) # 24400 <_impure_ptr>
   14970:	00913c23          	sd	s1,24(sp)
   14974:	02113423          	sd	ra,40(sp)
   14978:	00050493          	mv	s1,a0
   1497c:	00060693          	mv	a3,a2
   14980:	02040263          	beqz	s0,149a4 <vfscanf+0x40>
   14984:	05042783          	lw	a5,80(s0)
   14988:	00079e63          	bnez	a5,149a4 <vfscanf+0x40>
   1498c:	00040513          	mv	a0,s0
   14990:	00b13023          	sd	a1,0(sp)
   14994:	00c13423          	sd	a2,8(sp)
   14998:	719010ef          	jal	168b0 <__sinit>
   1499c:	00813683          	ld	a3,8(sp)
   149a0:	00013583          	ld	a1,0(sp)
   149a4:	00058613          	mv	a2,a1
   149a8:	00040513          	mv	a0,s0
   149ac:	00048593          	mv	a1,s1
   149b0:	02813083          	ld	ra,40(sp)
   149b4:	02013403          	ld	s0,32(sp)
   149b8:	01813483          	ld	s1,24(sp)
   149bc:	03010113          	addi	sp,sp,48
   149c0:	ebdfe06f          	j	1387c <__svfscanf_r>

00000000000149c4 <__svfscanf>:
   149c4:	00060693          	mv	a3,a2
   149c8:	00058613          	mv	a2,a1
   149cc:	00050593          	mv	a1,a0
   149d0:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   149d4:	ea9fe06f          	j	1387c <__svfscanf_r>

00000000000149d8 <_vfscanf_r>:
   149d8:	fd010113          	addi	sp,sp,-48
   149dc:	02813023          	sd	s0,32(sp)
   149e0:	02113423          	sd	ra,40(sp)
   149e4:	00050413          	mv	s0,a0
   149e8:	02050463          	beqz	a0,14a10 <_vfscanf_r+0x38>
   149ec:	05052783          	lw	a5,80(a0)
   149f0:	02079063          	bnez	a5,14a10 <_vfscanf_r+0x38>
   149f4:	00d13c23          	sd	a3,24(sp)
   149f8:	00c13823          	sd	a2,16(sp)
   149fc:	00b13423          	sd	a1,8(sp)
   14a00:	6b1010ef          	jal	168b0 <__sinit>
   14a04:	01813683          	ld	a3,24(sp)
   14a08:	01013603          	ld	a2,16(sp)
   14a0c:	00813583          	ld	a1,8(sp)
   14a10:	00040513          	mv	a0,s0
   14a14:	02813083          	ld	ra,40(sp)
   14a18:	02013403          	ld	s0,32(sp)
   14a1c:	03010113          	addi	sp,sp,48
   14a20:	e5dfe06f          	j	1387c <__svfscanf_r>

0000000000014a24 <__swbuf_r>:
   14a24:	fd010113          	addi	sp,sp,-48
   14a28:	02813023          	sd	s0,32(sp)
   14a2c:	00913c23          	sd	s1,24(sp)
   14a30:	01313423          	sd	s3,8(sp)
   14a34:	02113423          	sd	ra,40(sp)
   14a38:	01213823          	sd	s2,16(sp)
   14a3c:	00050493          	mv	s1,a0
   14a40:	00058993          	mv	s3,a1
   14a44:	00060413          	mv	s0,a2
   14a48:	00050663          	beqz	a0,14a54 <__swbuf_r+0x30>
   14a4c:	05052783          	lw	a5,80(a0)
   14a50:	12078e63          	beqz	a5,14b8c <__swbuf_r+0x168>
   14a54:	01041683          	lh	a3,16(s0)
   14a58:	02842783          	lw	a5,40(s0)
   14a5c:	03069713          	slli	a4,a3,0x30
   14a60:	03075713          	srli	a4,a4,0x30
   14a64:	00f42623          	sw	a5,12(s0)
   14a68:	00877793          	andi	a5,a4,8
   14a6c:	0e078e63          	beqz	a5,14b68 <__swbuf_r+0x144>
   14a70:	01843783          	ld	a5,24(s0)
   14a74:	0e078a63          	beqz	a5,14b68 <__swbuf_r+0x144>
   14a78:	03271613          	slli	a2,a4,0x32
   14a7c:	0ff9f913          	andi	s2,s3,255
   14a80:	06065663          	bgez	a2,14aec <__swbuf_r+0xc8>
   14a84:	00043703          	ld	a4,0(s0)
   14a88:	02042683          	lw	a3,32(s0)
   14a8c:	40f707bb          	subw	a5,a4,a5
   14a90:	08d7d663          	ble	a3,a5,14b1c <__swbuf_r+0xf8>
   14a94:	0017879b          	addiw	a5,a5,1
   14a98:	00c42683          	lw	a3,12(s0)
   14a9c:	00170613          	addi	a2,a4,1
   14aa0:	00c43023          	sd	a2,0(s0)
   14aa4:	fff6869b          	addiw	a3,a3,-1
   14aa8:	00d42623          	sw	a3,12(s0)
   14aac:	01370023          	sb	s3,0(a4)
   14ab0:	02042703          	lw	a4,32(s0)
   14ab4:	08f70263          	beq	a4,a5,14b38 <__swbuf_r+0x114>
   14ab8:	01045783          	lhu	a5,16(s0)
   14abc:	00090513          	mv	a0,s2
   14ac0:	0017f793          	andi	a5,a5,1
   14ac4:	00078663          	beqz	a5,14ad0 <__swbuf_r+0xac>
   14ac8:	00a00793          	li	a5,10
   14acc:	06f90663          	beq	s2,a5,14b38 <__swbuf_r+0x114>
   14ad0:	02813083          	ld	ra,40(sp)
   14ad4:	02013403          	ld	s0,32(sp)
   14ad8:	01813483          	ld	s1,24(sp)
   14adc:	01013903          	ld	s2,16(sp)
   14ae0:	00813983          	ld	s3,8(sp)
   14ae4:	03010113          	addi	sp,sp,48
   14ae8:	00008067          	ret
   14aec:	0ac42583          	lw	a1,172(s0)
   14af0:	ffffe737          	lui	a4,0xffffe
   14af4:	fff7071b          	addiw	a4,a4,-1
   14af8:	00e5f733          	and	a4,a1,a4
   14afc:	00002637          	lui	a2,0x2
   14b00:	00c6e6b3          	or	a3,a3,a2
   14b04:	0ae42623          	sw	a4,172(s0)
   14b08:	00043703          	ld	a4,0(s0)
   14b0c:	00d41823          	sh	a3,16(s0)
   14b10:	02042683          	lw	a3,32(s0)
   14b14:	40f707bb          	subw	a5,a4,a5
   14b18:	f6d7cee3          	blt	a5,a3,14a94 <__swbuf_r+0x70>
   14b1c:	00040593          	mv	a1,s0
   14b20:	00048513          	mv	a0,s1
   14b24:	1e1010ef          	jal	16504 <_fflush_r>
   14b28:	06051663          	bnez	a0,14b94 <__swbuf_r+0x170>
   14b2c:	00043703          	ld	a4,0(s0)
   14b30:	00100793          	li	a5,1
   14b34:	f65ff06f          	j	14a98 <__swbuf_r+0x74>
   14b38:	00040593          	mv	a1,s0
   14b3c:	00048513          	mv	a0,s1
   14b40:	1c5010ef          	jal	16504 <_fflush_r>
   14b44:	04051863          	bnez	a0,14b94 <__swbuf_r+0x170>
   14b48:	02813083          	ld	ra,40(sp)
   14b4c:	00090513          	mv	a0,s2
   14b50:	02013403          	ld	s0,32(sp)
   14b54:	01813483          	ld	s1,24(sp)
   14b58:	01013903          	ld	s2,16(sp)
   14b5c:	00813983          	ld	s3,8(sp)
   14b60:	03010113          	addi	sp,sp,48
   14b64:	00008067          	ret
   14b68:	00040593          	mv	a1,s0
   14b6c:	00048513          	mv	a0,s1
   14b70:	03c000ef          	jal	14bac <__swsetup_r>
   14b74:	02051063          	bnez	a0,14b94 <__swbuf_r+0x170>
   14b78:	01041683          	lh	a3,16(s0)
   14b7c:	01843783          	ld	a5,24(s0)
   14b80:	03069713          	slli	a4,a3,0x30
   14b84:	03075713          	srli	a4,a4,0x30
   14b88:	ef1ff06f          	j	14a78 <__swbuf_r+0x54>
   14b8c:	525010ef          	jal	168b0 <__sinit>
   14b90:	ec5ff06f          	j	14a54 <__swbuf_r+0x30>
   14b94:	fff00513          	li	a0,-1
   14b98:	f39ff06f          	j	14ad0 <__swbuf_r+0xac>

0000000000014b9c <__swbuf>:
   14b9c:	00058613          	mv	a2,a1
   14ba0:	00050593          	mv	a1,a0
   14ba4:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   14ba8:	e7dff06f          	j	14a24 <__swbuf_r>

0000000000014bac <__swsetup_r>:
   14bac:	8101b783          	ld	a5,-2032(gp) # 24400 <_impure_ptr>
   14bb0:	fe010113          	addi	sp,sp,-32
   14bb4:	00813823          	sd	s0,16(sp)
   14bb8:	00913423          	sd	s1,8(sp)
   14bbc:	00113c23          	sd	ra,24(sp)
   14bc0:	00050493          	mv	s1,a0
   14bc4:	00058413          	mv	s0,a1
   14bc8:	00078663          	beqz	a5,14bd4 <__swsetup_r+0x28>
   14bcc:	0507a703          	lw	a4,80(a5) # 1050 <_ftext-0xefb0>
   14bd0:	0e070063          	beqz	a4,14cb0 <__swsetup_r+0x104>
   14bd4:	01041703          	lh	a4,16(s0)
   14bd8:	03071793          	slli	a5,a4,0x30
   14bdc:	0307d793          	srli	a5,a5,0x30
   14be0:	0087f693          	andi	a3,a5,8
   14be4:	04068263          	beqz	a3,14c28 <__swsetup_r+0x7c>
   14be8:	01843683          	ld	a3,24(s0)
   14bec:	06068663          	beqz	a3,14c58 <__swsetup_r+0xac>
   14bf0:	0017f713          	andi	a4,a5,1
   14bf4:	08071463          	bnez	a4,14c7c <__swsetup_r+0xd0>
   14bf8:	0027f793          	andi	a5,a5,2
   14bfc:	00000713          	li	a4,0
   14c00:	00079463          	bnez	a5,14c08 <__swsetup_r+0x5c>
   14c04:	02042703          	lw	a4,32(s0)
   14c08:	00e42623          	sw	a4,12(s0)
   14c0c:	00000513          	li	a0,0
   14c10:	08068263          	beqz	a3,14c94 <__swsetup_r+0xe8>
   14c14:	01813083          	ld	ra,24(sp)
   14c18:	01013403          	ld	s0,16(sp)
   14c1c:	00813483          	ld	s1,8(sp)
   14c20:	02010113          	addi	sp,sp,32
   14c24:	00008067          	ret
   14c28:	0107f693          	andi	a3,a5,16
   14c2c:	0c068663          	beqz	a3,14cf8 <__swsetup_r+0x14c>
   14c30:	0047f793          	andi	a5,a5,4
   14c34:	08079463          	bnez	a5,14cbc <__swsetup_r+0x110>
   14c38:	01843683          	ld	a3,24(s0)
   14c3c:	00876793          	ori	a5,a4,8
   14c40:	0107979b          	slliw	a5,a5,0x10
   14c44:	4107d79b          	sraiw	a5,a5,0x10
   14c48:	00f41823          	sh	a5,16(s0)
   14c4c:	03079793          	slli	a5,a5,0x30
   14c50:	0307d793          	srli	a5,a5,0x30
   14c54:	f8069ee3          	bnez	a3,14bf0 <__swsetup_r+0x44>
   14c58:	2807f713          	andi	a4,a5,640
   14c5c:	20000613          	li	a2,512
   14c60:	f8c708e3          	beq	a4,a2,14bf0 <__swsetup_r+0x44>
   14c64:	00040593          	mv	a1,s0
   14c68:	00048513          	mv	a0,s1
   14c6c:	235020ef          	jal	176a0 <__smakebuf_r>
   14c70:	01045783          	lhu	a5,16(s0)
   14c74:	01843683          	ld	a3,24(s0)
   14c78:	f79ff06f          	j	14bf0 <__swsetup_r+0x44>
   14c7c:	02042783          	lw	a5,32(s0)
   14c80:	00042623          	sw	zero,12(s0)
   14c84:	00000513          	li	a0,0
   14c88:	40f007bb          	negw	a5,a5
   14c8c:	02f42423          	sw	a5,40(s0)
   14c90:	f80692e3          	bnez	a3,14c14 <__swsetup_r+0x68>
   14c94:	01041783          	lh	a5,16(s0)
   14c98:	0807f713          	andi	a4,a5,128
   14c9c:	f6070ce3          	beqz	a4,14c14 <__swsetup_r+0x68>
   14ca0:	0407e793          	ori	a5,a5,64
   14ca4:	00f41823          	sh	a5,16(s0)
   14ca8:	fff00513          	li	a0,-1
   14cac:	f69ff06f          	j	14c14 <__swsetup_r+0x68>
   14cb0:	00078513          	mv	a0,a5
   14cb4:	3fd010ef          	jal	168b0 <__sinit>
   14cb8:	f1dff06f          	j	14bd4 <__swsetup_r+0x28>
   14cbc:	05843583          	ld	a1,88(s0)
   14cc0:	00058e63          	beqz	a1,14cdc <__swsetup_r+0x130>
   14cc4:	07440793          	addi	a5,s0,116
   14cc8:	00f58863          	beq	a1,a5,14cd8 <__swsetup_r+0x12c>
   14ccc:	00048513          	mv	a0,s1
   14cd0:	7a5010ef          	jal	16c74 <_free_r>
   14cd4:	01041703          	lh	a4,16(s0)
   14cd8:	04043c23          	sd	zero,88(s0)
   14cdc:	01843683          	ld	a3,24(s0)
   14ce0:	fdb77713          	andi	a4,a4,-37
   14ce4:	0107171b          	slliw	a4,a4,0x10
   14ce8:	4107571b          	sraiw	a4,a4,0x10
   14cec:	00042423          	sw	zero,8(s0)
   14cf0:	00d43023          	sd	a3,0(s0)
   14cf4:	f49ff06f          	j	14c3c <__swsetup_r+0x90>
   14cf8:	00900793          	li	a5,9
   14cfc:	00f4a023          	sw	a5,0(s1)
   14d00:	04076713          	ori	a4,a4,64
   14d04:	00e41823          	sh	a4,16(s0)
   14d08:	fff00513          	li	a0,-1
   14d0c:	f09ff06f          	j	14c14 <__swsetup_r+0x68>

0000000000014d10 <__register_exitproc>:
   14d10:	fd010113          	addi	sp,sp,-48
   14d14:	02813023          	sd	s0,32(sp)
   14d18:	8081b403          	ld	s0,-2040(gp) # 243f8 <_global_impure_ptr>
   14d1c:	00913c23          	sd	s1,24(sp)
   14d20:	00050493          	mv	s1,a0
   14d24:	1f843503          	ld	a0,504(s0)
   14d28:	01213823          	sd	s2,16(sp)
   14d2c:	01313423          	sd	s3,8(sp)
   14d30:	01413023          	sd	s4,0(sp)
   14d34:	02113423          	sd	ra,40(sp)
   14d38:	00058913          	mv	s2,a1
   14d3c:	00060a13          	mv	s4,a2
   14d40:	00068993          	mv	s3,a3
   14d44:	0c050463          	beqz	a0,14e0c <__register_exitproc+0xfc>
   14d48:	00852703          	lw	a4,8(a0)
   14d4c:	01f00793          	li	a5,31
   14d50:	0017059b          	addiw	a1,a4,1
   14d54:	02e7de63          	ble	a4,a5,14d90 <__register_exitproc+0x80>
   14d58:	000117b7          	lui	a5,0x11
   14d5c:	d1478793          	addi	a5,a5,-748 # 10d14 <malloc>
   14d60:	0a078c63          	beqz	a5,14e18 <__register_exitproc+0x108>
   14d64:	31800513          	li	a0,792
   14d68:	fadfb0ef          	jal	10d14 <malloc>
   14d6c:	0a050663          	beqz	a0,14e18 <__register_exitproc+0x108>
   14d70:	1f843783          	ld	a5,504(s0)
   14d74:	00052423          	sw	zero,8(a0)
   14d78:	00100593          	li	a1,1
   14d7c:	00f53023          	sd	a5,0(a0)
   14d80:	1ea43c23          	sd	a0,504(s0)
   14d84:	30052823          	sw	zero,784(a0)
   14d88:	30052a23          	sw	zero,788(a0)
   14d8c:	00000713          	li	a4,0
   14d90:	00070793          	mv	a5,a4
   14d94:	02049e63          	bnez	s1,14dd0 <__register_exitproc+0xc0>
   14d98:	00278793          	addi	a5,a5,2
   14d9c:	00379793          	slli	a5,a5,0x3
   14da0:	00b52423          	sw	a1,8(a0)
   14da4:	00f50533          	add	a0,a0,a5
   14da8:	01253023          	sd	s2,0(a0)
   14dac:	00000513          	li	a0,0
   14db0:	02813083          	ld	ra,40(sp)
   14db4:	02013403          	ld	s0,32(sp)
   14db8:	01813483          	ld	s1,24(sp)
   14dbc:	01013903          	ld	s2,16(sp)
   14dc0:	00813983          	ld	s3,8(sp)
   14dc4:	00013a03          	ld	s4,0(sp)
   14dc8:	03010113          	addi	sp,sp,48
   14dcc:	00008067          	ret
   14dd0:	00371813          	slli	a6,a4,0x3
   14dd4:	01050833          	add	a6,a0,a6
   14dd8:	11483823          	sd	s4,272(a6)
   14ddc:	31052883          	lw	a7,784(a0)
   14de0:	00100613          	li	a2,1
   14de4:	00e6173b          	sllw	a4,a2,a4
   14de8:	00e8e633          	or	a2,a7,a4
   14dec:	30c52823          	sw	a2,784(a0)
   14df0:	21383823          	sd	s3,528(a6)
   14df4:	00200693          	li	a3,2
   14df8:	fad490e3          	bne	s1,a3,14d98 <__register_exitproc+0x88>
   14dfc:	31452683          	lw	a3,788(a0)
   14e00:	00e6e733          	or	a4,a3,a4
   14e04:	30e52a23          	sw	a4,788(a0)
   14e08:	f91ff06f          	j	14d98 <__register_exitproc+0x88>
   14e0c:	20040513          	addi	a0,s0,512
   14e10:	1ea43c23          	sd	a0,504(s0)
   14e14:	f35ff06f          	j	14d48 <__register_exitproc+0x38>
   14e18:	fff00513          	li	a0,-1
   14e1c:	f95ff06f          	j	14db0 <__register_exitproc+0xa0>

0000000000014e20 <__call_exitprocs>:
   14e20:	fa010113          	addi	sp,sp,-96
   14e24:	03413823          	sd	s4,48(sp)
   14e28:	8081ba03          	ld	s4,-2040(gp) # 243f8 <_global_impure_ptr>
   14e2c:	03313c23          	sd	s3,56(sp)
   14e30:	000119b7          	lui	s3,0x11
   14e34:	04913423          	sd	s1,72(sp)
   14e38:	05213023          	sd	s2,64(sp)
   14e3c:	03513423          	sd	s5,40(sp)
   14e40:	01713c23          	sd	s7,24(sp)
   14e44:	01813823          	sd	s8,16(sp)
   14e48:	04113c23          	sd	ra,88(sp)
   14e4c:	04813823          	sd	s0,80(sp)
   14e50:	03613023          	sd	s6,32(sp)
   14e54:	01913423          	sd	s9,8(sp)
   14e58:	01a13023          	sd	s10,0(sp)
   14e5c:	00050913          	mv	s2,a0
   14e60:	00058b93          	mv	s7,a1
   14e64:	1f8a0a93          	addi	s5,s4,504
   14e68:	00100493          	li	s1,1
   14e6c:	fff00c13          	li	s8,-1
   14e70:	d2098993          	addi	s3,s3,-736 # 10d20 <free>
   14e74:	1f8a3b03          	ld	s6,504(s4)
   14e78:	0c0b0463          	beqz	s6,14f40 <__call_exitprocs+0x120>
   14e7c:	000a8d13          	mv	s10,s5
   14e80:	008b2403          	lw	s0,8(s6)
   14e84:	fff4041b          	addiw	s0,s0,-1
   14e88:	02045263          	bgez	s0,14eac <__call_exitprocs+0x8c>
   14e8c:	08c0006f          	j	14f18 <__call_exitprocs+0xf8>
   14e90:	02040793          	addi	a5,s0,32
   14e94:	00379793          	slli	a5,a5,0x3
   14e98:	00fb07b3          	add	a5,s6,a5
   14e9c:	1107b783          	ld	a5,272(a5)
   14ea0:	00fb8a63          	beq	s7,a5,14eb4 <__call_exitprocs+0x94>
   14ea4:	fff4041b          	addiw	s0,s0,-1
   14ea8:	07840863          	beq	s0,s8,14f18 <__call_exitprocs+0xf8>
   14eac:	00040713          	mv	a4,s0
   14eb0:	fe0b90e3          	bnez	s7,14e90 <__call_exitprocs+0x70>
   14eb4:	008b2783          	lw	a5,8(s6)
   14eb8:	00371713          	slli	a4,a4,0x3
   14ebc:	00eb0733          	add	a4,s6,a4
   14ec0:	fff7879b          	addiw	a5,a5,-1
   14ec4:	01073683          	ld	a3,16(a4) # ffffffffffffe010 <_end+0xfffffffffffd7248>
   14ec8:	0a878c63          	beq	a5,s0,14f80 <__call_exitprocs+0x160>
   14ecc:	00073823          	sd	zero,16(a4)
   14ed0:	fc068ae3          	beqz	a3,14ea4 <__call_exitprocs+0x84>
   14ed4:	310b2783          	lw	a5,784(s6)
   14ed8:	0084963b          	sllw	a2,s1,s0
   14edc:	008b2c83          	lw	s9,8(s6)
   14ee0:	00f677b3          	and	a5,a2,a5
   14ee4:	08078a63          	beqz	a5,14f78 <__call_exitprocs+0x158>
   14ee8:	314b2783          	lw	a5,788(s6)
   14eec:	00f67633          	and	a2,a2,a5
   14ef0:	08061c63          	bnez	a2,14f88 <__call_exitprocs+0x168>
   14ef4:	11073583          	ld	a1,272(a4)
   14ef8:	00090513          	mv	a0,s2
   14efc:	000680e7          	jalr	a3
   14f00:	008b2783          	lw	a5,8(s6)
   14f04:	f79798e3          	bne	a5,s9,14e74 <__call_exitprocs+0x54>
   14f08:	000d3783          	ld	a5,0(s10)
   14f0c:	f76794e3          	bne	a5,s6,14e74 <__call_exitprocs+0x54>
   14f10:	fff4041b          	addiw	s0,s0,-1
   14f14:	f9841ce3          	bne	s0,s8,14eac <__call_exitprocs+0x8c>
   14f18:	02098463          	beqz	s3,14f40 <__call_exitprocs+0x120>
   14f1c:	008b2783          	lw	a5,8(s6)
   14f20:	06079a63          	bnez	a5,14f94 <__call_exitprocs+0x174>
   14f24:	000b3783          	ld	a5,0(s6)
   14f28:	08078063          	beqz	a5,14fa8 <__call_exitprocs+0x188>
   14f2c:	000b0513          	mv	a0,s6
   14f30:	00fd3023          	sd	a5,0(s10)
   14f34:	dedfb0ef          	jal	10d20 <free>
   14f38:	000d3b03          	ld	s6,0(s10)
   14f3c:	f40b12e3          	bnez	s6,14e80 <__call_exitprocs+0x60>
   14f40:	05813083          	ld	ra,88(sp)
   14f44:	05013403          	ld	s0,80(sp)
   14f48:	04813483          	ld	s1,72(sp)
   14f4c:	04013903          	ld	s2,64(sp)
   14f50:	03813983          	ld	s3,56(sp)
   14f54:	03013a03          	ld	s4,48(sp)
   14f58:	02813a83          	ld	s5,40(sp)
   14f5c:	02013b03          	ld	s6,32(sp)
   14f60:	01813b83          	ld	s7,24(sp)
   14f64:	01013c03          	ld	s8,16(sp)
   14f68:	00813c83          	ld	s9,8(sp)
   14f6c:	00013d03          	ld	s10,0(sp)
   14f70:	06010113          	addi	sp,sp,96
   14f74:	00008067          	ret
   14f78:	000680e7          	jalr	a3
   14f7c:	f85ff06f          	j	14f00 <__call_exitprocs+0xe0>
   14f80:	008b2423          	sw	s0,8(s6)
   14f84:	f4dff06f          	j	14ed0 <__call_exitprocs+0xb0>
   14f88:	11073503          	ld	a0,272(a4)
   14f8c:	000680e7          	jalr	a3
   14f90:	f71ff06f          	j	14f00 <__call_exitprocs+0xe0>
   14f94:	000b3783          	ld	a5,0(s6)
   14f98:	000b0d13          	mv	s10,s6
   14f9c:	00078b13          	mv	s6,a5
   14fa0:	ee0b10e3          	bnez	s6,14e80 <__call_exitprocs+0x60>
   14fa4:	f9dff06f          	j	14f40 <__call_exitprocs+0x120>
   14fa8:	00000793          	li	a5,0
   14fac:	fedff06f          	j	14f98 <__call_exitprocs+0x178>

0000000000014fb0 <quorem>:
   14fb0:	fc010113          	addi	sp,sp,-64
   14fb4:	03213023          	sd	s2,32(sp)
   14fb8:	01452783          	lw	a5,20(a0)
   14fbc:	0145a903          	lw	s2,20(a1)
   14fc0:	02113c23          	sd	ra,56(sp)
   14fc4:	02813823          	sd	s0,48(sp)
   14fc8:	02913423          	sd	s1,40(sp)
   14fcc:	01313c23          	sd	s3,24(sp)
   14fd0:	01413823          	sd	s4,16(sp)
   14fd4:	01513423          	sd	s5,8(sp)
   14fd8:	1b27ce63          	blt	a5,s2,15194 <quorem+0x1e4>
   14fdc:	fff9091b          	addiw	s2,s2,-1
   14fe0:	00090f13          	mv	t5,s2
   14fe4:	002f1f13          	slli	t5,t5,0x2
   14fe8:	01858413          	addi	s0,a1,24
   14fec:	01e409b3          	add	s3,s0,t5
   14ff0:	01850a13          	addi	s4,a0,24
   14ff4:	01ea0f33          	add	t5,s4,t5
   14ff8:	0009a783          	lw	a5,0(s3)
   14ffc:	000f2483          	lw	s1,0(t5)
   15000:	0017879b          	addiw	a5,a5,1
   15004:	02f4d4bb          	divuw	s1,s1,a5
   15008:	0a048e63          	beqz	s1,150c4 <quorem+0x114>
   1500c:	00010337          	lui	t1,0x10
   15010:	00040e93          	mv	t4,s0
   15014:	000a0e13          	mv	t3,s4
   15018:	00000613          	li	a2,0
   1501c:	00000713          	li	a4,0
   15020:	fff3031b          	addiw	t1,t1,-1
   15024:	004e8e93          	addi	t4,t4,4
   15028:	ffcea803          	lw	a6,-4(t4)
   1502c:	000e2683          	lw	a3,0(t3)
   15030:	004e0e13          	addi	t3,t3,4
   15034:	006878b3          	and	a7,a6,t1
   15038:	029888bb          	mulw	a7,a7,s1
   1503c:	0108581b          	srliw	a6,a6,0x10
   15040:	0066f7b3          	and	a5,a3,t1
   15044:	0106d69b          	srliw	a3,a3,0x10
   15048:	0298083b          	mulw	a6,a6,s1
   1504c:	00c888bb          	addw	a7,a7,a2
   15050:	0108d61b          	srliw	a2,a7,0x10
   15054:	0068f8b3          	and	a7,a7,t1
   15058:	4117073b          	subw	a4,a4,a7
   1505c:	00f707bb          	addw	a5,a4,a5
   15060:	4107d71b          	sraiw	a4,a5,0x10
   15064:	0067f7b3          	and	a5,a5,t1
   15068:	00c8063b          	addw	a2,a6,a2
   1506c:	00667833          	and	a6,a2,t1
   15070:	410686bb          	subw	a3,a3,a6
   15074:	00e6873b          	addw	a4,a3,a4
   15078:	0107169b          	slliw	a3,a4,0x10
   1507c:	00f6e6b3          	or	a3,a3,a5
   15080:	fede2e23          	sw	a3,-4(t3)
   15084:	0106561b          	srliw	a2,a2,0x10
   15088:	4107571b          	sraiw	a4,a4,0x10
   1508c:	f9d9fce3          	bleu	t4,s3,15024 <quorem+0x74>
   15090:	000f2783          	lw	a5,0(t5)
   15094:	02079863          	bnez	a5,150c4 <quorem+0x114>
   15098:	ffcf0793          	addi	a5,t5,-4
   1509c:	02fa7263          	bleu	a5,s4,150c0 <quorem+0x110>
   150a0:	ffcf2703          	lw	a4,-4(t5)
   150a4:	00070863          	beqz	a4,150b4 <quorem+0x104>
   150a8:	0180006f          	j	150c0 <quorem+0x110>
   150ac:	0007a703          	lw	a4,0(a5)
   150b0:	00071863          	bnez	a4,150c0 <quorem+0x110>
   150b4:	ffc78793          	addi	a5,a5,-4
   150b8:	fff9091b          	addiw	s2,s2,-1
   150bc:	fefa68e3          	bltu	s4,a5,150ac <quorem+0xfc>
   150c0:	01252a23          	sw	s2,20(a0)
   150c4:	00050a93          	mv	s5,a0
   150c8:	5bc030ef          	jal	18684 <__mcmp>
   150cc:	0a054063          	bltz	a0,1516c <quorem+0x1bc>
   150d0:	000105b7          	lui	a1,0x10
   150d4:	0014849b          	addiw	s1,s1,1
   150d8:	000a0613          	mv	a2,s4
   150dc:	00000793          	li	a5,0
   150e0:	fff5859b          	addiw	a1,a1,-1
   150e4:	00440413          	addi	s0,s0,4
   150e8:	ffc42683          	lw	a3,-4(s0)
   150ec:	00062703          	lw	a4,0(a2) # 2000 <_ftext-0xe000>
   150f0:	00460613          	addi	a2,a2,4
   150f4:	00b6f833          	and	a6,a3,a1
   150f8:	410787bb          	subw	a5,a5,a6
   150fc:	00b77833          	and	a6,a4,a1
   15100:	010787bb          	addw	a5,a5,a6
   15104:	0106d69b          	srliw	a3,a3,0x10
   15108:	0107571b          	srliw	a4,a4,0x10
   1510c:	40d7073b          	subw	a4,a4,a3
   15110:	4107d69b          	sraiw	a3,a5,0x10
   15114:	00d706bb          	addw	a3,a4,a3
   15118:	0106981b          	slliw	a6,a3,0x10
   1511c:	00b7f733          	and	a4,a5,a1
   15120:	00e86733          	or	a4,a6,a4
   15124:	fee62e23          	sw	a4,-4(a2)
   15128:	4106d79b          	sraiw	a5,a3,0x10
   1512c:	fa89fce3          	bleu	s0,s3,150e4 <quorem+0x134>
   15130:	00291713          	slli	a4,s2,0x2
   15134:	00ea0733          	add	a4,s4,a4
   15138:	00072783          	lw	a5,0(a4)
   1513c:	02079863          	bnez	a5,1516c <quorem+0x1bc>
   15140:	ffc70793          	addi	a5,a4,-4
   15144:	02fa7263          	bleu	a5,s4,15168 <quorem+0x1b8>
   15148:	ffc72703          	lw	a4,-4(a4)
   1514c:	00070863          	beqz	a4,1515c <quorem+0x1ac>
   15150:	0180006f          	j	15168 <quorem+0x1b8>
   15154:	0007a703          	lw	a4,0(a5)
   15158:	00071863          	bnez	a4,15168 <quorem+0x1b8>
   1515c:	ffc78793          	addi	a5,a5,-4
   15160:	fff9091b          	addiw	s2,s2,-1
   15164:	fefa68e3          	bltu	s4,a5,15154 <quorem+0x1a4>
   15168:	012aaa23          	sw	s2,20(s5)
   1516c:	00048513          	mv	a0,s1
   15170:	03813083          	ld	ra,56(sp)
   15174:	03013403          	ld	s0,48(sp)
   15178:	02813483          	ld	s1,40(sp)
   1517c:	02013903          	ld	s2,32(sp)
   15180:	01813983          	ld	s3,24(sp)
   15184:	01013a03          	ld	s4,16(sp)
   15188:	00813a83          	ld	s5,8(sp)
   1518c:	04010113          	addi	sp,sp,64
   15190:	00008067          	ret
   15194:	00000513          	li	a0,0
   15198:	fd9ff06f          	j	15170 <quorem+0x1c0>

000000000001519c <_dtoa_r>:
   1519c:	e20585d3          	fmv.x.d	a1,fa1
   151a0:	06053883          	ld	a7,96(a0)
   151a4:	f3010113          	addi	sp,sp,-208
   151a8:	0c813023          	sd	s0,192(sp)
   151ac:	0a913c23          	sd	s1,184(sp)
   151b0:	0b313423          	sd	s3,168(sp)
   151b4:	09613823          	sd	s6,144(sp)
   151b8:	07913c23          	sd	s9,120(sp)
   151bc:	07a13823          	sd	s10,112(sp)
   151c0:	0c113423          	sd	ra,200(sp)
   151c4:	0b213823          	sd	s2,176(sp)
   151c8:	0b413023          	sd	s4,160(sp)
   151cc:	09513c23          	sd	s5,152(sp)
   151d0:	09713423          	sd	s7,136(sp)
   151d4:	09813023          	sd	s8,128(sp)
   151d8:	07b13423          	sd	s11,104(sp)
   151dc:	00e13023          	sd	a4,0(sp)
   151e0:	00050413          	mv	s0,a0
   151e4:	00060993          	mv	s3,a2
   151e8:	00068c93          	mv	s9,a3
   151ec:	00078493          	mv	s1,a5
   151f0:	00080b13          	mv	s6,a6
   151f4:	00058d13          	mv	s10,a1
   151f8:	02088263          	beqz	a7,1521c <_dtoa_r+0x80>
   151fc:	06852603          	lw	a2,104(a0)
   15200:	00100693          	li	a3,1
   15204:	00088593          	mv	a1,a7
   15208:	00c696bb          	sllw	a3,a3,a2
   1520c:	00c8a423          	sw	a2,8(a7)
   15210:	00d8a623          	sw	a3,12(a7)
   15214:	425020ef          	jal	17e38 <_Bfree>
   15218:	06043023          	sd	zero,96(s0)
   1521c:	420d5913          	srai	s2,s10,0x20
   15220:	0c094063          	bltz	s2,152e0 <_dtoa_r+0x144>
   15224:	0004a023          	sw	zero,0(s1)
   15228:	7ff007b7          	lui	a5,0x7ff00
   1522c:	00f976b3          	and	a3,s2,a5
   15230:	06f68a63          	beq	a3,a5,152a4 <_dtoa_r+0x108>
   15234:	f20007d3          	fmv.d.x	fa5,zero
   15238:	f20d0753          	fmv.d.x	fa4,s10
   1523c:	a2f727d3          	feq.d	a5,fa4,fa5
   15240:	0c078463          	beqz	a5,15308 <_dtoa_r+0x16c>
   15244:	00013703          	ld	a4,0(sp)
   15248:	00100793          	li	a5,1
   1524c:	00f72023          	sw	a5,0(a4)
   15250:	480b0a63          	beqz	s6,156e4 <_dtoa_r+0x548>
   15254:	000227b7          	lui	a5,0x22
   15258:	cf978793          	addi	a5,a5,-775 # 21cf9 <zeroes.4123+0x6c9>
   1525c:	00022537          	lui	a0,0x22
   15260:	00fb3023          	sd	a5,0(s6)
   15264:	cf850513          	addi	a0,a0,-776 # 21cf8 <zeroes.4123+0x6c8>
   15268:	0c813083          	ld	ra,200(sp)
   1526c:	0c013403          	ld	s0,192(sp)
   15270:	0b813483          	ld	s1,184(sp)
   15274:	0b013903          	ld	s2,176(sp)
   15278:	0a813983          	ld	s3,168(sp)
   1527c:	0a013a03          	ld	s4,160(sp)
   15280:	09813a83          	ld	s5,152(sp)
   15284:	09013b03          	ld	s6,144(sp)
   15288:	08813b83          	ld	s7,136(sp)
   1528c:	08013c03          	ld	s8,128(sp)
   15290:	07813c83          	ld	s9,120(sp)
   15294:	07013d03          	ld	s10,112(sp)
   15298:	06813d83          	ld	s11,104(sp)
   1529c:	0d010113          	addi	sp,sp,208
   152a0:	00008067          	ret
   152a4:	00013703          	ld	a4,0(sp)
   152a8:	000027b7          	lui	a5,0x2
   152ac:	70f7879b          	addiw	a5,a5,1807
   152b0:	00f72023          	sw	a5,0(a4)
   152b4:	00cd1793          	slli	a5,s10,0xc
   152b8:	3e079863          	bnez	a5,156a8 <_dtoa_r+0x50c>
   152bc:	00022537          	lui	a0,0x22
   152c0:	d0850513          	addi	a0,a0,-760 # 21d08 <zeroes.4123+0x6d8>
   152c4:	fa0b02e3          	beqz	s6,15268 <_dtoa_r+0xcc>
   152c8:	00354703          	lbu	a4,3(a0)
   152cc:	00350793          	addi	a5,a0,3
   152d0:	00070463          	beqz	a4,152d8 <_dtoa_r+0x13c>
   152d4:	00850793          	addi	a5,a0,8
   152d8:	00fb3023          	sd	a5,0(s6)
   152dc:	f8dff06f          	j	15268 <_dtoa_r+0xcc>
   152e0:	800007b7          	lui	a5,0x80000
   152e4:	fff7c793          	not	a5,a5
   152e8:	020d1713          	slli	a4,s10,0x20
   152ec:	00f97933          	and	s2,s2,a5
   152f0:	02091793          	slli	a5,s2,0x20
   152f4:	02075713          	srli	a4,a4,0x20
   152f8:	00100693          	li	a3,1
   152fc:	00d4a023          	sw	a3,0(s1)
   15300:	00f76d33          	or	s10,a4,a5
   15304:	f25ff06f          	j	15228 <_dtoa_r+0x8c>
   15308:	f20d05d3          	fmv.d.x	fa1,s10
   1530c:	05810693          	addi	a3,sp,88
   15310:	05c10613          	addi	a2,sp,92
   15314:	00040513          	mv	a0,s0
   15318:	7ac030ef          	jal	18ac4 <__d2b>
   1531c:	02a13023          	sd	a0,32(sp)
   15320:	0149581b          	srliw	a6,s2,0x14
   15324:	38081863          	bnez	a6,156b4 <_dtoa_r+0x518>
   15328:	05812603          	lw	a2,88(sp)
   1532c:	05c12803          	lw	a6,92(sp)
   15330:	02000793          	li	a5,32
   15334:	0106083b          	addw	a6,a2,a6
   15338:	4328069b          	addiw	a3,a6,1074
   1533c:	6ad7de63          	ble	a3,a5,159f8 <_dtoa_r+0x85c>
   15340:	04000593          	li	a1,64
   15344:	4128049b          	addiw	s1,a6,1042
   15348:	000d079b          	sext.w	a5,s10
   1534c:	40d585bb          	subw	a1,a1,a3
   15350:	0097d7bb          	srlw	a5,a5,s1
   15354:	00b914bb          	sllw	s1,s2,a1
   15358:	0097e4b3          	or	s1,a5,s1
   1535c:	d21487d3          	fcvt.d.wu	fa5,s1
   15360:	fe1006b7          	lui	a3,0xfe100
   15364:	fff8081b          	addiw	a6,a6,-1
   15368:	e20784d3          	fmv.x.d	s1,fa5
   1536c:	00100913          	li	s2,1
   15370:	4204d793          	srai	a5,s1,0x20
   15374:	00d787bb          	addw	a5,a5,a3
   15378:	02049493          	slli	s1,s1,0x20
   1537c:	02079793          	slli	a5,a5,0x20
   15380:	0204d493          	srli	s1,s1,0x20
   15384:	00f4e4b3          	or	s1,s1,a5
   15388:	000247b7          	lui	a5,0x24
   1538c:	4507b787          	fld	fa5,1104(a5) # 24450 <mask+0x8>
   15390:	f2048753          	fmv.d.x	fa4,s1
   15394:	000247b7          	lui	a5,0x24
   15398:	0af77653          	fsub.d	fa2,fa4,fa5
   1539c:	4607b787          	fld	fa5,1120(a5) # 24460 <mask+0x18>
   153a0:	000247b7          	lui	a5,0x24
   153a4:	4587b687          	fld	fa3,1112(a5) # 24458 <mask+0x10>
   153a8:	000247b7          	lui	a5,0x24
   153ac:	d2080753          	fcvt.d.w	fa4,a6
   153b0:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   153b4:	4687b687          	fld	fa3,1128(a5) # 24468 <mask+0x20>
   153b8:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   153bc:	f2000753          	fmv.d.x	fa4,zero
   153c0:	a2e797d3          	flt.d	a5,fa5,fa4
   153c4:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   153c8:	5e079e63          	bnez	a5,159c4 <_dtoa_r+0x828>
   153cc:	00100793          	li	a5,1
   153d0:	02f12823          	sw	a5,48(sp)
   153d4:	01600793          	li	a5,22
   153d8:	0377e663          	bltu	a5,s7,15404 <_dtoa_r+0x268>
   153dc:	000217b7          	lui	a5,0x21
   153e0:	003b9693          	slli	a3,s7,0x3
   153e4:	e6078793          	addi	a5,a5,-416 # 20e60 <__mprec_tens>
   153e8:	00f687b3          	add	a5,a3,a5
   153ec:	0007b787          	fld	fa5,0(a5)
   153f0:	f20d0753          	fmv.d.x	fa4,s10
   153f4:	a2f717d3          	flt.d	a5,fa4,fa5
   153f8:	60078863          	beqz	a5,15a08 <_dtoa_r+0x86c>
   153fc:	fffb8b9b          	addiw	s7,s7,-1
   15400:	02012823          	sw	zero,48(sp)
   15404:	4106083b          	subw	a6,a2,a6
   15408:	fff80d9b          	addiw	s11,a6,-1
   1540c:	00000813          	li	a6,0
   15410:	2e0dc063          	bltz	s11,156f0 <_dtoa_r+0x554>
   15414:	5c0bc263          	bltz	s7,159d8 <_dtoa_r+0x83c>
   15418:	017d8dbb          	addw	s11,s11,s7
   1541c:	03712423          	sw	s7,40(sp)
   15420:	00000c13          	li	s8,0
   15424:	00900793          	li	a5,9
   15428:	2d37ea63          	bltu	a5,s3,156fc <_dtoa_r+0x560>
   1542c:	00500793          	li	a5,5
   15430:	00100a13          	li	s4,1
   15434:	0137d663          	ble	s3,a5,15440 <_dtoa_r+0x2a4>
   15438:	ffc9899b          	addiw	s3,s3,-4
   1543c:	00000a13          	li	s4,0
   15440:	00300793          	li	a5,3
   15444:	2af982e3          	beq	s3,a5,15ee8 <_dtoa_r+0xd4c>
   15448:	1f37dce3          	ble	s3,a5,15e40 <_dtoa_r+0xca4>
   1544c:	00400793          	li	a5,4
   15450:	0cf98ae3          	beq	s3,a5,15d24 <_dtoa_r+0xb88>
   15454:	00100793          	li	a5,1
   15458:	00f12823          	sw	a5,16(sp)
   1545c:	00500793          	li	a5,5
   15460:	1ef996e3          	bne	s3,a5,15e4c <_dtoa_r+0xcb0>
   15464:	019b87bb          	addw	a5,s7,s9
   15468:	00178a9b          	addiw	s5,a5,1
   1546c:	02f12a23          	sw	a5,52(sp)
   15470:	000a8513          	mv	a0,s5
   15474:	000a8493          	mv	s1,s5
   15478:	1b505ee3          	blez	s5,15e34 <_dtoa_r+0xc98>
   1547c:	06042423          	sw	zero,104(s0)
   15480:	01f00793          	li	a5,31
   15484:	00000593          	li	a1,0
   15488:	02a7f463          	bleu	a0,a5,154b0 <_dtoa_r+0x314>
   1548c:	00100613          	li	a2,1
   15490:	00400693          	li	a3,4
   15494:	0016969b          	slliw	a3,a3,0x1
   15498:	00068793          	mv	a5,a3
   1549c:	01c78793          	addi	a5,a5,28
   154a0:	00060593          	mv	a1,a2
   154a4:	0016061b          	addiw	a2,a2,1
   154a8:	fef576e3          	bleu	a5,a0,15494 <_dtoa_r+0x2f8>
   154ac:	06b42423          	sw	a1,104(s0)
   154b0:	00040513          	mv	a0,s0
   154b4:	03013c23          	sd	a6,56(sp)
   154b8:	0d5020ef          	jal	17d8c <_Balloc>
   154bc:	00a13423          	sd	a0,8(sp)
   154c0:	06a43023          	sd	a0,96(s0)
   154c4:	00e00793          	li	a5,14
   154c8:	03813803          	ld	a6,56(sp)
   154cc:	2697e463          	bltu	a5,s1,15734 <_dtoa_r+0x598>
   154d0:	260a0263          	beqz	s4,15734 <_dtoa_r+0x598>
   154d4:	03a13c23          	sd	s10,56(sp)
   154d8:	317054e3          	blez	s7,15fe0 <_dtoa_r+0xe44>
   154dc:	00fbf713          	andi	a4,s7,15
   154e0:	00371693          	slli	a3,a4,0x3
   154e4:	00021737          	lui	a4,0x21
   154e8:	404bd79b          	sraiw	a5,s7,0x4
   154ec:	e6070713          	addi	a4,a4,-416 # 20e60 <__mprec_tens>
   154f0:	00e68733          	add	a4,a3,a4
   154f4:	0107f693          	andi	a3,a5,16
   154f8:	00073687          	fld	fa3,0(a4)
   154fc:	f20d07d3          	fmv.d.x	fa5,s10
   15500:	00200713          	li	a4,2
   15504:	00068c63          	beqz	a3,1551c <_dtoa_r+0x380>
   15508:	00021737          	lui	a4,0x21
   1550c:	f7073707          	fld	fa4,-144(a4) # 20f70 <__mprec_bigtens+0x20>
   15510:	00f7f793          	andi	a5,a5,15
   15514:	00300713          	li	a4,3
   15518:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   1551c:	02078663          	beqz	a5,15548 <_dtoa_r+0x3ac>
   15520:	000216b7          	lui	a3,0x21
   15524:	f5068693          	addi	a3,a3,-176 # 20f50 <__mprec_bigtens>
   15528:	0017f613          	andi	a2,a5,1
   1552c:	4017d79b          	sraiw	a5,a5,0x1
   15530:	00060863          	beqz	a2,15540 <_dtoa_r+0x3a4>
   15534:	0006b707          	fld	fa4,0(a3)
   15538:	0017071b          	addiw	a4,a4,1
   1553c:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   15540:	00868693          	addi	a3,a3,8
   15544:	fe0792e3          	bnez	a5,15528 <_dtoa_r+0x38c>
   15548:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   1554c:	03012783          	lw	a5,48(sp)
   15550:	00078a63          	beqz	a5,15564 <_dtoa_r+0x3c8>
   15554:	000247b7          	lui	a5,0x24
   15558:	4707b707          	fld	fa4,1136(a5) # 24470 <mask+0x28>
   1555c:	a2e797d3          	flt.d	a5,fa5,fa4
   15560:	440790e3          	bnez	a5,161a0 <_dtoa_r+0x1004>
   15564:	000247b7          	lui	a5,0x24
   15568:	d20706d3          	fcvt.d.w	fa3,a4
   1556c:	4807b707          	fld	fa4,1152(a5) # 24480 <mask+0x38>
   15570:	fcc006b7          	lui	a3,0xfcc00
   15574:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   15578:	e2070753          	fmv.x.d	a4,fa4
   1557c:	42075793          	srai	a5,a4,0x20
   15580:	00d787bb          	addw	a5,a5,a3
   15584:	02071713          	slli	a4,a4,0x20
   15588:	02079793          	slli	a5,a5,0x20
   1558c:	02075713          	srli	a4,a4,0x20
   15590:	00f76733          	or	a4,a4,a5
   15594:	180a86e3          	beqz	s5,15f20 <_dtoa_r+0xd84>
   15598:	000b8693          	mv	a3,s7
   1559c:	000a8613          	mv	a2,s5
   155a0:	01012783          	lw	a5,16(sp)
   155a4:	300782e3          	beqz	a5,160a8 <_dtoa_r+0xf0c>
   155a8:	fff6079b          	addiw	a5,a2,-1
   155ac:	000215b7          	lui	a1,0x21
   155b0:	e6058593          	addi	a1,a1,-416 # 20e60 <__mprec_tens>
   155b4:	00379793          	slli	a5,a5,0x3
   155b8:	00b787b3          	add	a5,a5,a1
   155bc:	000245b7          	lui	a1,0x24
   155c0:	0007b687          	fld	fa3,0(a5)
   155c4:	4905b707          	fld	fa4,1168(a1) # 24490 <mask+0x48>
   155c8:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   155cc:	00813503          	ld	a0,8(sp)
   155d0:	1ad77753          	fdiv.d	fa4,fa4,fa3
   155d4:	d20786d3          	fcvt.d.w	fa3,a5
   155d8:	0307879b          	addiw	a5,a5,48
   155dc:	0ff7f793          	andi	a5,a5,255
   155e0:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   155e4:	f20706d3          	fmv.d.x	fa3,a4
   155e8:	00f50023          	sb	a5,0(a0)
   155ec:	00150493          	addi	s1,a0,1
   155f0:	0ad77753          	fsub.d	fa4,fa4,fa3
   155f4:	a2e79753          	flt.d	a4,fa5,fa4
   155f8:	08071063          	bnez	a4,15678 <_dtoa_r+0x4dc>
   155fc:	00024737          	lui	a4,0x24
   15600:	47073587          	fld	fa1,1136(a4) # 24470 <mask+0x28>
   15604:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   15608:	a2e69753          	flt.d	a4,fa3,fa4
   1560c:	40071ae3          	bnez	a4,16220 <_dtoa_r+0x1084>
   15610:	00100793          	li	a5,1
   15614:	1ac7d4e3          	ble	a2,a5,15fbc <_dtoa_r+0xe20>
   15618:	000247b7          	lui	a5,0x24
   1561c:	ffe6061b          	addiw	a2,a2,-2
   15620:	02061613          	slli	a2,a2,0x20
   15624:	4787b607          	fld	fa2,1144(a5) # 24478 <mask+0x30>
   15628:	00813783          	ld	a5,8(sp)
   1562c:	02065613          	srli	a2,a2,0x20
   15630:	00260613          	addi	a2,a2,2
   15634:	00c78633          	add	a2,a5,a2
   15638:	0140006f          	j	1564c <_dtoa_r+0x4b0>
   1563c:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   15640:	a2e69753          	flt.d	a4,fa3,fa4
   15644:	3c071ee3          	bnez	a4,16220 <_dtoa_r+0x1084>
   15648:	16960ae3          	beq	a2,s1,15fbc <_dtoa_r+0xe20>
   1564c:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   15650:	12c77753          	fmul.d	fa4,fa4,fa2
   15654:	00148493          	addi	s1,s1,1
   15658:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   1565c:	d20786d3          	fcvt.d.w	fa3,a5
   15660:	0307879b          	addiw	a5,a5,48
   15664:	0ff7f793          	andi	a5,a5,255
   15668:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   1566c:	fef48fa3          	sb	a5,-1(s1)
   15670:	a2e79753          	flt.d	a4,fa5,fa4
   15674:	fc0704e3          	beqz	a4,1563c <_dtoa_r+0x4a0>
   15678:	00068b93          	mv	s7,a3
   1567c:	02013583          	ld	a1,32(sp)
   15680:	00040513          	mv	a0,s0
   15684:	001b8b9b          	addiw	s7,s7,1
   15688:	7b0020ef          	jal	17e38 <_Bfree>
   1568c:	00013783          	ld	a5,0(sp)
   15690:	00048023          	sb	zero,0(s1)
   15694:	0177a023          	sw	s7,0(a5)
   15698:	0c0b0ce3          	beqz	s6,15f70 <_dtoa_r+0xdd4>
   1569c:	009b3023          	sd	s1,0(s6)
   156a0:	00813503          	ld	a0,8(sp)
   156a4:	bc5ff06f          	j	15268 <_dtoa_r+0xcc>
   156a8:	00022537          	lui	a0,0x22
   156ac:	d1850513          	addi	a0,a0,-744 # 21d18 <zeroes.4123+0x6e8>
   156b0:	c15ff06f          	j	152c4 <_dtoa_r+0x128>
   156b4:	00cd1793          	slli	a5,s10,0xc
   156b8:	02c7d693          	srli	a3,a5,0x2c
   156bc:	3ff007b7          	lui	a5,0x3ff00
   156c0:	00f6e7b3          	or	a5,a3,a5
   156c4:	020d1493          	slli	s1,s10,0x20
   156c8:	02079793          	slli	a5,a5,0x20
   156cc:	0204d493          	srli	s1,s1,0x20
   156d0:	00f4e4b3          	or	s1,s1,a5
   156d4:	c018081b          	addiw	a6,a6,-1023
   156d8:	05812603          	lw	a2,88(sp)
   156dc:	00000913          	li	s2,0
   156e0:	ca9ff06f          	j	15388 <_dtoa_r+0x1ec>
   156e4:	00022537          	lui	a0,0x22
   156e8:	cf850513          	addi	a0,a0,-776 # 21cf8 <zeroes.4123+0x6c8>
   156ec:	b7dff06f          	j	15268 <_dtoa_r+0xcc>
   156f0:	41b0083b          	negw	a6,s11
   156f4:	00000d93          	li	s11,0
   156f8:	d1dff06f          	j	15414 <_dtoa_r+0x278>
   156fc:	06042423          	sw	zero,104(s0)
   15700:	00000593          	li	a1,0
   15704:	00040513          	mv	a0,s0
   15708:	03013c23          	sd	a6,56(sp)
   1570c:	680020ef          	jal	17d8c <_Balloc>
   15710:	03813803          	ld	a6,56(sp)
   15714:	fff00a93          	li	s5,-1
   15718:	00100793          	li	a5,1
   1571c:	00a13423          	sd	a0,8(sp)
   15720:	06a43023          	sd	a0,96(s0)
   15724:	03512a23          	sw	s5,52(sp)
   15728:	00000993          	li	s3,0
   1572c:	00000c93          	li	s9,0
   15730:	00f12823          	sw	a5,16(sp)
   15734:	05c12783          	lw	a5,92(sp)
   15738:	0e07ca63          	bltz	a5,1582c <_dtoa_r+0x690>
   1573c:	00e00693          	li	a3,14
   15740:	0f76c663          	blt	a3,s7,1582c <_dtoa_r+0x690>
   15744:	000217b7          	lui	a5,0x21
   15748:	003b9693          	slli	a3,s7,0x3
   1574c:	e6078793          	addi	a5,a5,-416 # 20e60 <__mprec_tens>
   15750:	00f687b3          	add	a5,a3,a5
   15754:	0007b687          	fld	fa3,0(a5)
   15758:	5e0cc663          	bltz	s9,15d44 <_dtoa_r+0xba8>
   1575c:	f20d0653          	fmv.d.x	fa2,s10
   15760:	00813703          	ld	a4,8(sp)
   15764:	22d69553          	fneg.d	fa0,fa3
   15768:	1ad67753          	fdiv.d	fa4,fa2,fa3
   1576c:	00170493          	addi	s1,a4,1
   15770:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   15774:	d20787d3          	fcvt.d.w	fa5,a5
   15778:	0307869b          	addiw	a3,a5,48
   1577c:	00d70023          	sb	a3,0(a4)
   15780:	00100713          	li	a4,1
   15784:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   15788:	2aea88e3          	beq	s5,a4,16238 <_dtoa_r+0x109c>
   1578c:	000247b7          	lui	a5,0x24
   15790:	4787b587          	fld	fa1,1144(a5) # 24478 <mask+0x30>
   15794:	f2000653          	fmv.d.x	fa2,zero
   15798:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   1579c:	a2c7a7d3          	feq.d	a5,fa5,fa2
   157a0:	ec079ee3          	bnez	a5,1567c <_dtoa_r+0x4e0>
   157a4:	ffea869b          	addiw	a3,s5,-2
   157a8:	02069693          	slli	a3,a3,0x20
   157ac:	00813783          	ld	a5,8(sp)
   157b0:	0206d693          	srli	a3,a3,0x20
   157b4:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_end+0xfffffffffcbd923a>
   157b8:	00d786b3          	add	a3,a5,a3
   157bc:	0100006f          	j	157cc <_dtoa_r+0x630>
   157c0:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   157c4:	a2c7a7d3          	feq.d	a5,fa5,fa2
   157c8:	ea079ae3          	bnez	a5,1567c <_dtoa_r+0x4e0>
   157cc:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   157d0:	00148493          	addi	s1,s1,1
   157d4:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   157d8:	d2078753          	fcvt.d.w	fa4,a5
   157dc:	0307871b          	addiw	a4,a5,48
   157e0:	fee48fa3          	sb	a4,-1(s1)
   157e4:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   157e8:	fcd49ce3          	bne	s1,a3,157c0 <_dtoa_r+0x624>
   157ec:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   157f0:	a2f69753          	flt.d	a4,fa3,fa5
   157f4:	7c070863          	beqz	a4,15fc4 <_dtoa_r+0xe28>
   157f8:	fff6c783          	lbu	a5,-1(a3)
   157fc:	00068493          	mv	s1,a3
   15800:	03900693          	li	a3,57
   15804:	0140006f          	j	15818 <_dtoa_r+0x67c>
   15808:	00813783          	ld	a5,8(sp)
   1580c:	02f70ce3          	beq	a4,a5,16044 <_dtoa_r+0xea8>
   15810:	fff74783          	lbu	a5,-1(a4)
   15814:	00070493          	mv	s1,a4
   15818:	fff48713          	addi	a4,s1,-1
   1581c:	fed786e3          	beq	a5,a3,15808 <_dtoa_r+0x66c>
   15820:	0017879b          	addiw	a5,a5,1
   15824:	00f70023          	sb	a5,0(a4)
   15828:	e55ff06f          	j	1567c <_dtoa_r+0x4e0>
   1582c:	01012703          	lw	a4,16(sp)
   15830:	1a070c63          	beqz	a4,159e8 <_dtoa_r+0x84c>
   15834:	00100693          	li	a3,1
   15838:	5536d863          	ble	s3,a3,15d88 <_dtoa_r+0xbec>
   1583c:	fffa869b          	addiw	a3,s5,-1
   15840:	72dc4c63          	blt	s8,a3,15f78 <_dtoa_r+0xddc>
   15844:	40dc06bb          	subw	a3,s8,a3
   15848:	00080493          	mv	s1,a6
   1584c:	000a8793          	mv	a5,s5
   15850:	120ac2e3          	bltz	s5,16174 <_dtoa_r+0xfd8>
   15854:	00f8083b          	addw	a6,a6,a5
   15858:	00100593          	li	a1,1
   1585c:	00040513          	mv	a0,s0
   15860:	04d13423          	sd	a3,72(sp)
   15864:	05013023          	sd	a6,64(sp)
   15868:	03013c23          	sd	a6,56(sp)
   1586c:	00fd8dbb          	addw	s11,s11,a5
   15870:	155020ef          	jal	181c4 <__i2b>
   15874:	04013803          	ld	a6,64(sp)
   15878:	04813683          	ld	a3,72(sp)
   1587c:	00050a13          	mv	s4,a0
   15880:	00048e63          	beqz	s1,1589c <_dtoa_r+0x700>
   15884:	01b05c63          	blez	s11,1589c <_dtoa_r+0x700>
   15888:	00048793          	mv	a5,s1
   1588c:	489dc463          	blt	s11,s1,15d14 <_dtoa_r+0xb78>
   15890:	40f8083b          	subw	a6,a6,a5
   15894:	40f484bb          	subw	s1,s1,a5
   15898:	40fd8dbb          	subw	s11,s11,a5
   1589c:	02013903          	ld	s2,32(sp)
   158a0:	07805e63          	blez	s8,1591c <_dtoa_r+0x780>
   158a4:	01012783          	lw	a5,16(sp)
   158a8:	6a078463          	beqz	a5,15f50 <_dtoa_r+0xdb4>
   158ac:	04068a63          	beqz	a3,15900 <_dtoa_r+0x764>
   158b0:	00068613          	mv	a2,a3
   158b4:	000a0593          	mv	a1,s4
   158b8:	00040513          	mv	a0,s0
   158bc:	05013023          	sd	a6,64(sp)
   158c0:	02d13c23          	sd	a3,56(sp)
   158c4:	329020ef          	jal	183ec <__pow5mult>
   158c8:	02013603          	ld	a2,32(sp)
   158cc:	00050593          	mv	a1,a0
   158d0:	00050a13          	mv	s4,a0
   158d4:	00040513          	mv	a0,s0
   158d8:	121020ef          	jal	181f8 <__multiply>
   158dc:	03813683          	ld	a3,56(sp)
   158e0:	02013583          	ld	a1,32(sp)
   158e4:	00050913          	mv	s2,a0
   158e8:	00040513          	mv	a0,s0
   158ec:	40dc0c3b          	subw	s8,s8,a3
   158f0:	548020ef          	jal	17e38 <_Bfree>
   158f4:	04013803          	ld	a6,64(sp)
   158f8:	020c0263          	beqz	s8,1591c <_dtoa_r+0x780>
   158fc:	03213023          	sd	s2,32(sp)
   15900:	02013583          	ld	a1,32(sp)
   15904:	000c0613          	mv	a2,s8
   15908:	00040513          	mv	a0,s0
   1590c:	03013c23          	sd	a6,56(sp)
   15910:	2dd020ef          	jal	183ec <__pow5mult>
   15914:	03813803          	ld	a6,56(sp)
   15918:	00050913          	mv	s2,a0
   1591c:	00100593          	li	a1,1
   15920:	00040513          	mv	a0,s0
   15924:	03013023          	sd	a6,32(sp)
   15928:	09d020ef          	jal	181c4 <__i2b>
   1592c:	02812783          	lw	a5,40(sp)
   15930:	00050c13          	mv	s8,a0
   15934:	02013803          	ld	a6,32(sp)
   15938:	0c078c63          	beqz	a5,15a10 <_dtoa_r+0x874>
   1593c:	00078613          	mv	a2,a5
   15940:	00050593          	mv	a1,a0
   15944:	00040513          	mv	a0,s0
   15948:	2a5020ef          	jal	183ec <__pow5mult>
   1594c:	00100793          	li	a5,1
   15950:	00050c13          	mv	s8,a0
   15954:	02013803          	ld	a6,32(sp)
   15958:	3d37c263          	blt	a5,s3,15d1c <_dtoa_r+0xb80>
   1595c:	00cd1793          	slli	a5,s10,0xc
   15960:	3a079e63          	bnez	a5,15d1c <_dtoa_r+0xb80>
   15964:	420d5693          	srai	a3,s10,0x20
   15968:	7ff007b7          	lui	a5,0x7ff00
   1596c:	00f6f7b3          	and	a5,a3,a5
   15970:	02012023          	sw	zero,32(sp)
   15974:	00078a63          	beqz	a5,15988 <_dtoa_r+0x7ec>
   15978:	00100793          	li	a5,1
   1597c:	0018081b          	addiw	a6,a6,1
   15980:	001d8d9b          	addiw	s11,s11,1
   15984:	02f12023          	sw	a5,32(sp)
   15988:	02812783          	lw	a5,40(sp)
   1598c:	00100513          	li	a0,1
   15990:	08078863          	beqz	a5,15a20 <_dtoa_r+0x884>
   15994:	014c2783          	lw	a5,20(s8)
   15998:	03013423          	sd	a6,40(sp)
   1599c:	fff7879b          	addiw	a5,a5,-1
   159a0:	00478793          	addi	a5,a5,4 # 7ff00004 <_end+0x7fed923c>
   159a4:	00279793          	slli	a5,a5,0x2
   159a8:	00fc07b3          	add	a5,s8,a5
   159ac:	0087a503          	lw	a0,8(a5)
   159b0:	6e8020ef          	jal	18098 <__hi0bits>
   159b4:	02000793          	li	a5,32
   159b8:	40a7853b          	subw	a0,a5,a0
   159bc:	02813803          	ld	a6,40(sp)
   159c0:	0600006f          	j	15a20 <_dtoa_r+0x884>
   159c4:	d20b8753          	fcvt.d.w	fa4,s7
   159c8:	a2e7a7d3          	feq.d	a5,fa5,fa4
   159cc:	0017b793          	seqz	a5,a5
   159d0:	40fb8bbb          	subw	s7,s7,a5
   159d4:	9f9ff06f          	j	153cc <_dtoa_r+0x230>
   159d8:	4178083b          	subw	a6,a6,s7
   159dc:	41700c3b          	negw	s8,s7
   159e0:	02012423          	sw	zero,40(sp)
   159e4:	a41ff06f          	j	15424 <_dtoa_r+0x288>
   159e8:	000c0693          	mv	a3,s8
   159ec:	00080493          	mv	s1,a6
   159f0:	00000a13          	li	s4,0
   159f4:	e8dff06f          	j	15880 <_dtoa_r+0x6e4>
   159f8:	000d049b          	sext.w	s1,s10
   159fc:	40d787bb          	subw	a5,a5,a3
   15a00:	00f494bb          	sllw	s1,s1,a5
   15a04:	959ff06f          	j	1535c <_dtoa_r+0x1c0>
   15a08:	02012823          	sw	zero,48(sp)
   15a0c:	9f9ff06f          	j	15404 <_dtoa_r+0x268>
   15a10:	00100793          	li	a5,1
   15a14:	0737d4e3          	ble	s3,a5,1627c <_dtoa_r+0x10e0>
   15a18:	02012023          	sw	zero,32(sp)
   15a1c:	00078513          	mv	a0,a5
   15a20:	01b507bb          	addw	a5,a0,s11
   15a24:	01f7f793          	andi	a5,a5,31
   15a28:	1a078663          	beqz	a5,15bd4 <_dtoa_r+0xa38>
   15a2c:	02000693          	li	a3,32
   15a30:	40f686bb          	subw	a3,a3,a5
   15a34:	00400613          	li	a2,4
   15a38:	04d658e3          	ble	a3,a2,16288 <_dtoa_r+0x10ec>
   15a3c:	01c00693          	li	a3,28
   15a40:	40f687bb          	subw	a5,a3,a5
   15a44:	00f8083b          	addw	a6,a6,a5
   15a48:	00f484bb          	addw	s1,s1,a5
   15a4c:	00fd8dbb          	addw	s11,s11,a5
   15a50:	01005c63          	blez	a6,15a68 <_dtoa_r+0x8cc>
   15a54:	00090593          	mv	a1,s2
   15a58:	00080613          	mv	a2,a6
   15a5c:	00040513          	mv	a0,s0
   15a60:	2c5020ef          	jal	18524 <__lshift>
   15a64:	00050913          	mv	s2,a0
   15a68:	01b05c63          	blez	s11,15a80 <_dtoa_r+0x8e4>
   15a6c:	000c0593          	mv	a1,s8
   15a70:	000d8613          	mv	a2,s11
   15a74:	00040513          	mv	a0,s0
   15a78:	2ad020ef          	jal	18524 <__lshift>
   15a7c:	00050c13          	mv	s8,a0
   15a80:	03012783          	lw	a5,48(sp)
   15a84:	22079663          	bnez	a5,15cb0 <_dtoa_r+0xb14>
   15a88:	3f505e63          	blez	s5,15e84 <_dtoa_r+0xce8>
   15a8c:	01012783          	lw	a5,16(sp)
   15a90:	14078c63          	beqz	a5,15be8 <_dtoa_r+0xa4c>
   15a94:	00905c63          	blez	s1,15aac <_dtoa_r+0x910>
   15a98:	000a0593          	mv	a1,s4
   15a9c:	00048613          	mv	a2,s1
   15aa0:	00040513          	mv	a0,s0
   15aa4:	281020ef          	jal	18524 <__lshift>
   15aa8:	00050a13          	mv	s4,a0
   15aac:	02012783          	lw	a5,32(sp)
   15ab0:	000a0d93          	mv	s11,s4
   15ab4:	5a079463          	bnez	a5,1605c <_dtoa_r+0xec0>
   15ab8:	fffa849b          	addiw	s1,s5,-1
   15abc:	00813783          	ld	a5,8(sp)
   15ac0:	02049493          	slli	s1,s1,0x20
   15ac4:	0204d493          	srli	s1,s1,0x20
   15ac8:	00148493          	addi	s1,s1,1
   15acc:	009784b3          	add	s1,a5,s1
   15ad0:	00078c93          	mv	s9,a5
   15ad4:	001d7793          	andi	a5,s10,1
   15ad8:	00f13823          	sd	a5,16(sp)
   15adc:	000c0593          	mv	a1,s8
   15ae0:	00090513          	mv	a0,s2
   15ae4:	cccff0ef          	jal	14fb0 <quorem>
   15ae8:	00050d13          	mv	s10,a0
   15aec:	02a12823          	sw	a0,48(sp)
   15af0:	000a0593          	mv	a1,s4
   15af4:	00090513          	mv	a0,s2
   15af8:	38d020ef          	jal	18684 <__mcmp>
   15afc:	00050a93          	mv	s5,a0
   15b00:	000d8613          	mv	a2,s11
   15b04:	000c0593          	mv	a1,s8
   15b08:	00040513          	mv	a0,s0
   15b0c:	3d9020ef          	jal	186e4 <__mdiff>
   15b10:	01052683          	lw	a3,16(a0)
   15b14:	00050793          	mv	a5,a0
   15b18:	030d0d1b          	addiw	s10,s10,48
   15b1c:	00100713          	li	a4,1
   15b20:	00069e63          	bnez	a3,15b3c <_dtoa_r+0x9a0>
   15b24:	00050593          	mv	a1,a0
   15b28:	02a13023          	sd	a0,32(sp)
   15b2c:	00090513          	mv	a0,s2
   15b30:	355020ef          	jal	18684 <__mcmp>
   15b34:	02013783          	ld	a5,32(sp)
   15b38:	00050713          	mv	a4,a0
   15b3c:	00078593          	mv	a1,a5
   15b40:	00040513          	mv	a0,s0
   15b44:	02e13023          	sd	a4,32(sp)
   15b48:	2f0020ef          	jal	17e38 <_Bfree>
   15b4c:	02013703          	ld	a4,32(sp)
   15b50:	013767b3          	or	a5,a4,s3
   15b54:	00079663          	bnez	a5,15b60 <_dtoa_r+0x9c4>
   15b58:	01012783          	lw	a5,16(sp)
   15b5c:	24078063          	beqz	a5,15d9c <_dtoa_r+0xc00>
   15b60:	260ac463          	bltz	s5,15dc8 <_dtoa_r+0xc2c>
   15b64:	013aeab3          	or	s5,s5,s3
   15b68:	000a9663          	bnez	s5,15b74 <_dtoa_r+0x9d8>
   15b6c:	01012783          	lw	a5,16(sp)
   15b70:	24078c63          	beqz	a5,15dc8 <_dtoa_r+0xc2c>
   15b74:	5ee04263          	bgtz	a4,16158 <_dtoa_r+0xfbc>
   15b78:	001c8c93          	addi	s9,s9,1
   15b7c:	ffac8fa3          	sb	s10,-1(s9)
   15b80:	5f948463          	beq	s1,s9,16168 <_dtoa_r+0xfcc>
   15b84:	00090593          	mv	a1,s2
   15b88:	00000693          	li	a3,0
   15b8c:	00a00613          	li	a2,10
   15b90:	00040513          	mv	a0,s0
   15b94:	2c8020ef          	jal	17e5c <__multadd>
   15b98:	00050913          	mv	s2,a0
   15b9c:	00000693          	li	a3,0
   15ba0:	00a00613          	li	a2,10
   15ba4:	000a0593          	mv	a1,s4
   15ba8:	00040513          	mv	a0,s0
   15bac:	27ba0463          	beq	s4,s11,15e14 <_dtoa_r+0xc78>
   15bb0:	2ac020ef          	jal	17e5c <__multadd>
   15bb4:	000d8593          	mv	a1,s11
   15bb8:	00050a13          	mv	s4,a0
   15bbc:	00000693          	li	a3,0
   15bc0:	00a00613          	li	a2,10
   15bc4:	00040513          	mv	a0,s0
   15bc8:	294020ef          	jal	17e5c <__multadd>
   15bcc:	00050d93          	mv	s11,a0
   15bd0:	f0dff06f          	j	15adc <_dtoa_r+0x940>
   15bd4:	01c00793          	li	a5,28
   15bd8:	00f8083b          	addw	a6,a6,a5
   15bdc:	00f484bb          	addw	s1,s1,a5
   15be0:	00fd8dbb          	addw	s11,s11,a5
   15be4:	e6dff06f          	j	15a50 <_dtoa_r+0x8b4>
   15be8:	00813483          	ld	s1,8(sp)
   15bec:	00100993          	li	s3,1
   15bf0:	0100006f          	j	15c00 <_dtoa_r+0xa64>
   15bf4:	268020ef          	jal	17e5c <__multadd>
   15bf8:	00050913          	mv	s2,a0
   15bfc:	0019899b          	addiw	s3,s3,1
   15c00:	000c0593          	mv	a1,s8
   15c04:	00090513          	mv	a0,s2
   15c08:	ba8ff0ef          	jal	14fb0 <quorem>
   15c0c:	03050d1b          	addiw	s10,a0,48
   15c10:	00148493          	addi	s1,s1,1
   15c14:	ffa48fa3          	sb	s10,-1(s1)
   15c18:	00000693          	li	a3,0
   15c1c:	00a00613          	li	a2,10
   15c20:	00090593          	mv	a1,s2
   15c24:	00040513          	mv	a0,s0
   15c28:	fd59c6e3          	blt	s3,s5,15bf4 <_dtoa_r+0xa58>
   15c2c:	00000993          	li	s3,0
   15c30:	00090593          	mv	a1,s2
   15c34:	00100613          	li	a2,1
   15c38:	00040513          	mv	a0,s0
   15c3c:	0e9020ef          	jal	18524 <__lshift>
   15c40:	000c0593          	mv	a1,s8
   15c44:	02a13023          	sd	a0,32(sp)
   15c48:	23d020ef          	jal	18684 <__mcmp>
   15c4c:	34a05463          	blez	a0,15f94 <_dtoa_r+0xdf8>
   15c50:	fff4c703          	lbu	a4,-1(s1)
   15c54:	03900693          	li	a3,57
   15c58:	0140006f          	j	15c6c <_dtoa_r+0xad0>
   15c5c:	00813703          	ld	a4,8(sp)
   15c60:	26e78a63          	beq	a5,a4,15ed4 <_dtoa_r+0xd38>
   15c64:	fff7c703          	lbu	a4,-1(a5)
   15c68:	00078493          	mv	s1,a5
   15c6c:	fff48793          	addi	a5,s1,-1
   15c70:	fed706e3          	beq	a4,a3,15c5c <_dtoa_r+0xac0>
   15c74:	0017071b          	addiw	a4,a4,1
   15c78:	00e78023          	sb	a4,0(a5)
   15c7c:	000c0593          	mv	a1,s8
   15c80:	00040513          	mv	a0,s0
   15c84:	1b4020ef          	jal	17e38 <_Bfree>
   15c88:	9e0a0ae3          	beqz	s4,1567c <_dtoa_r+0x4e0>
   15c8c:	00098a63          	beqz	s3,15ca0 <_dtoa_r+0xb04>
   15c90:	01498863          	beq	s3,s4,15ca0 <_dtoa_r+0xb04>
   15c94:	00098593          	mv	a1,s3
   15c98:	00040513          	mv	a0,s0
   15c9c:	19c020ef          	jal	17e38 <_Bfree>
   15ca0:	000a0593          	mv	a1,s4
   15ca4:	00040513          	mv	a0,s0
   15ca8:	190020ef          	jal	17e38 <_Bfree>
   15cac:	9d1ff06f          	j	1567c <_dtoa_r+0x4e0>
   15cb0:	000c0593          	mv	a1,s8
   15cb4:	00090513          	mv	a0,s2
   15cb8:	1cd020ef          	jal	18684 <__mcmp>
   15cbc:	dc0556e3          	bgez	a0,15a88 <_dtoa_r+0x8ec>
   15cc0:	00090593          	mv	a1,s2
   15cc4:	00000693          	li	a3,0
   15cc8:	00a00613          	li	a2,10
   15ccc:	00040513          	mv	a0,s0
   15cd0:	18c020ef          	jal	17e5c <__multadd>
   15cd4:	01012783          	lw	a5,16(sp)
   15cd8:	00050913          	mv	s2,a0
   15cdc:	fffb8b9b          	addiw	s7,s7,-1
   15ce0:	56079063          	bnez	a5,16240 <_dtoa_r+0x10a4>
   15ce4:	03412783          	lw	a5,52(sp)
   15ce8:	00078a93          	mv	s5,a5
   15cec:	eef04ee3          	bgtz	a5,15be8 <_dtoa_r+0xa4c>
   15cf0:	00200793          	li	a5,2
   15cf4:	5937c063          	blt	a5,s3,16274 <_dtoa_r+0x10d8>
   15cf8:	000c0593          	mv	a1,s8
   15cfc:	ab4ff0ef          	jal	14fb0 <quorem>
   15d00:	00813783          	ld	a5,8(sp)
   15d04:	03050d1b          	addiw	s10,a0,48
   15d08:	00178493          	addi	s1,a5,1
   15d0c:	ffa48fa3          	sb	s10,-1(s1)
   15d10:	f1dff06f          	j	15c2c <_dtoa_r+0xa90>
   15d14:	000d8793          	mv	a5,s11
   15d18:	b79ff06f          	j	15890 <_dtoa_r+0x6f4>
   15d1c:	02012023          	sw	zero,32(sp)
   15d20:	c75ff06f          	j	15994 <_dtoa_r+0x7f8>
   15d24:	00100793          	li	a5,1
   15d28:	00f12823          	sw	a5,16(sp)
   15d2c:	0f905c63          	blez	s9,15e24 <_dtoa_r+0xc88>
   15d30:	000c8513          	mv	a0,s9
   15d34:	000c8493          	mv	s1,s9
   15d38:	03912a23          	sw	s9,52(sp)
   15d3c:	000c8a93          	mv	s5,s9
   15d40:	f3cff06f          	j	1547c <_dtoa_r+0x2e0>
   15d44:	a1504ce3          	bgtz	s5,1575c <_dtoa_r+0x5c0>
   15d48:	1e0a9e63          	bnez	s5,15f44 <_dtoa_r+0xda8>
   15d4c:	000247b7          	lui	a5,0x24
   15d50:	4887b787          	fld	fa5,1160(a5) # 24488 <mask+0x40>
   15d54:	00000c13          	li	s8,0
   15d58:	00000a13          	li	s4,0
   15d5c:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   15d60:	f20d07d3          	fmv.d.x	fa5,s10
   15d64:	a2d78753          	fle.d	a4,fa5,fa3
   15d68:	14070a63          	beqz	a4,15ebc <_dtoa_r+0xd20>
   15d6c:	00813483          	ld	s1,8(sp)
   15d70:	fffccb93          	not	s7,s9
   15d74:	000c0593          	mv	a1,s8
   15d78:	00040513          	mv	a0,s0
   15d7c:	0bc020ef          	jal	17e38 <_Bfree>
   15d80:	8e0a0ee3          	beqz	s4,1567c <_dtoa_r+0x4e0>
   15d84:	f1dff06f          	j	15ca0 <_dtoa_r+0xb04>
   15d88:	3e090c63          	beqz	s2,16180 <_dtoa_r+0xfe4>
   15d8c:	4337879b          	addiw	a5,a5,1075
   15d90:	000c0693          	mv	a3,s8
   15d94:	00080493          	mv	s1,a6
   15d98:	abdff06f          	j	15854 <_dtoa_r+0x6b8>
   15d9c:	03900793          	li	a5,57
   15da0:	04fd0a63          	beq	s10,a5,15df4 <_dtoa_r+0xc58>
   15da4:	01505663          	blez	s5,15db0 <_dtoa_r+0xc14>
   15da8:	03012783          	lw	a5,48(sp)
   15dac:	03178d1b          	addiw	s10,a5,49
   15db0:	000a0993          	mv	s3,s4
   15db4:	001c8493          	addi	s1,s9,1
   15db8:	01ac8023          	sb	s10,0(s9)
   15dbc:	000d8a13          	mv	s4,s11
   15dc0:	03213023          	sd	s2,32(sp)
   15dc4:	eb9ff06f          	j	15c7c <_dtoa_r+0xae0>
   15dc8:	fee054e3          	blez	a4,15db0 <_dtoa_r+0xc14>
   15dcc:	00090593          	mv	a1,s2
   15dd0:	00100613          	li	a2,1
   15dd4:	00040513          	mv	a0,s0
   15dd8:	74c020ef          	jal	18524 <__lshift>
   15ddc:	000c0593          	mv	a1,s8
   15de0:	00050913          	mv	s2,a0
   15de4:	0a1020ef          	jal	18684 <__mcmp>
   15de8:	44a05063          	blez	a0,16228 <_dtoa_r+0x108c>
   15dec:	03900793          	li	a5,57
   15df0:	fafd1ce3          	bne	s10,a5,15da8 <_dtoa_r+0xc0c>
   15df4:	03900793          	li	a5,57
   15df8:	000a0993          	mv	s3,s4
   15dfc:	001c8493          	addi	s1,s9,1
   15e00:	00fc8023          	sb	a5,0(s9)
   15e04:	000d8a13          	mv	s4,s11
   15e08:	03213023          	sd	s2,32(sp)
   15e0c:	03900713          	li	a4,57
   15e10:	e45ff06f          	j	15c54 <_dtoa_r+0xab8>
   15e14:	048020ef          	jal	17e5c <__multadd>
   15e18:	00050a13          	mv	s4,a0
   15e1c:	00050d93          	mv	s11,a0
   15e20:	cbdff06f          	j	15adc <_dtoa_r+0x940>
   15e24:	00100493          	li	s1,1
   15e28:	02912a23          	sw	s1,52(sp)
   15e2c:	00048a93          	mv	s5,s1
   15e30:	00048c93          	mv	s9,s1
   15e34:	06042423          	sw	zero,104(s0)
   15e38:	00000593          	li	a1,0
   15e3c:	e74ff06f          	j	154b0 <_dtoa_r+0x314>
   15e40:	00012823          	sw	zero,16(sp)
   15e44:	00200793          	li	a5,2
   15e48:	eef982e3          	beq	s3,a5,15d2c <_dtoa_r+0xb90>
   15e4c:	06042423          	sw	zero,104(s0)
   15e50:	00000593          	li	a1,0
   15e54:	00040513          	mv	a0,s0
   15e58:	03013c23          	sd	a6,56(sp)
   15e5c:	731010ef          	jal	17d8c <_Balloc>
   15e60:	fff00a93          	li	s5,-1
   15e64:	00100793          	li	a5,1
   15e68:	00a13423          	sd	a0,8(sp)
   15e6c:	06a43023          	sd	a0,96(s0)
   15e70:	03512a23          	sw	s5,52(sp)
   15e74:	00000c93          	li	s9,0
   15e78:	00f12823          	sw	a5,16(sp)
   15e7c:	03813803          	ld	a6,56(sp)
   15e80:	8b5ff06f          	j	15734 <_dtoa_r+0x598>
   15e84:	00200793          	li	a5,2
   15e88:	c137d2e3          	ble	s3,a5,15a8c <_dtoa_r+0x8f0>
   15e8c:	300a9663          	bnez	s5,16198 <_dtoa_r+0xffc>
   15e90:	000c0593          	mv	a1,s8
   15e94:	00000693          	li	a3,0
   15e98:	00500613          	li	a2,5
   15e9c:	00040513          	mv	a0,s0
   15ea0:	7bd010ef          	jal	17e5c <__multadd>
   15ea4:	00050593          	mv	a1,a0
   15ea8:	00050c13          	mv	s8,a0
   15eac:	00090513          	mv	a0,s2
   15eb0:	7d4020ef          	jal	18684 <__mcmp>
   15eb4:	03213023          	sd	s2,32(sp)
   15eb8:	eaa05ae3          	blez	a0,15d6c <_dtoa_r+0xbd0>
   15ebc:	00813703          	ld	a4,8(sp)
   15ec0:	03100793          	li	a5,49
   15ec4:	001b8b9b          	addiw	s7,s7,1
   15ec8:	00170493          	addi	s1,a4,1
   15ecc:	00f70023          	sb	a5,0(a4)
   15ed0:	ea5ff06f          	j	15d74 <_dtoa_r+0xbd8>
   15ed4:	00813703          	ld	a4,8(sp)
   15ed8:	03100793          	li	a5,49
   15edc:	001b8b9b          	addiw	s7,s7,1
   15ee0:	00f70023          	sb	a5,0(a4)
   15ee4:	d99ff06f          	j	15c7c <_dtoa_r+0xae0>
   15ee8:	00012823          	sw	zero,16(sp)
   15eec:	d78ff06f          	j	15464 <_dtoa_r+0x2c8>
   15ef0:	000247b7          	lui	a5,0x24
   15ef4:	d20706d3          	fcvt.d.w	fa3,a4
   15ef8:	4807b707          	fld	fa4,1152(a5) # 24480 <mask+0x38>
   15efc:	fcc006b7          	lui	a3,0xfcc00
   15f00:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   15f04:	e2070753          	fmv.x.d	a4,fa4
   15f08:	42075793          	srai	a5,a4,0x20
   15f0c:	00d787bb          	addw	a5,a5,a3
   15f10:	02071713          	slli	a4,a4,0x20
   15f14:	02079793          	slli	a5,a5,0x20
   15f18:	02075713          	srli	a4,a4,0x20
   15f1c:	00f76733          	or	a4,a4,a5
   15f20:	000247b7          	lui	a5,0x24
   15f24:	4887b707          	fld	fa4,1160(a5) # 24488 <mask+0x40>
   15f28:	f20706d3          	fmv.d.x	fa3,a4
   15f2c:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   15f30:	a2f697d3          	flt.d	a5,fa3,fa5
   15f34:	16079463          	bnez	a5,1609c <_dtoa_r+0xf00>
   15f38:	22d69753          	fneg.d	fa4,fa3
   15f3c:	a2e797d3          	flt.d	a5,fa5,fa4
   15f40:	06078e63          	beqz	a5,15fbc <_dtoa_r+0xe20>
   15f44:	00000c13          	li	s8,0
   15f48:	00000a13          	li	s4,0
   15f4c:	e21ff06f          	j	15d6c <_dtoa_r+0xbd0>
   15f50:	00090593          	mv	a1,s2
   15f54:	000c0613          	mv	a2,s8
   15f58:	00040513          	mv	a0,s0
   15f5c:	03013023          	sd	a6,32(sp)
   15f60:	48c020ef          	jal	183ec <__pow5mult>
   15f64:	00050913          	mv	s2,a0
   15f68:	02013803          	ld	a6,32(sp)
   15f6c:	9b1ff06f          	j	1591c <_dtoa_r+0x780>
   15f70:	00813503          	ld	a0,8(sp)
   15f74:	af4ff06f          	j	15268 <_dtoa_r+0xcc>
   15f78:	02812783          	lw	a5,40(sp)
   15f7c:	41868c3b          	subw	s8,a3,s8
   15f80:	018787bb          	addw	a5,a5,s8
   15f84:	02f12423          	sw	a5,40(sp)
   15f88:	00068c13          	mv	s8,a3
   15f8c:	00000693          	li	a3,0
   15f90:	8b9ff06f          	j	15848 <_dtoa_r+0x6ac>
   15f94:	00051663          	bnez	a0,15fa0 <_dtoa_r+0xe04>
   15f98:	001d7d13          	andi	s10,s10,1
   15f9c:	ca0d1ae3          	bnez	s10,15c50 <_dtoa_r+0xab4>
   15fa0:	03000693          	li	a3,48
   15fa4:	0080006f          	j	15fac <_dtoa_r+0xe10>
   15fa8:	00070493          	mv	s1,a4
   15fac:	fff4c783          	lbu	a5,-1(s1)
   15fb0:	fff48713          	addi	a4,s1,-1
   15fb4:	fed78ae3          	beq	a5,a3,15fa8 <_dtoa_r+0xe0c>
   15fb8:	cc5ff06f          	j	15c7c <_dtoa_r+0xae0>
   15fbc:	03813d03          	ld	s10,56(sp)
   15fc0:	f74ff06f          	j	15734 <_dtoa_r+0x598>
   15fc4:	a2f6a753          	feq.d	a4,fa3,fa5
   15fc8:	00068493          	mv	s1,a3
   15fcc:	ea070863          	beqz	a4,1567c <_dtoa_r+0x4e0>
   15fd0:	0017f793          	andi	a5,a5,1
   15fd4:	ea078463          	beqz	a5,1567c <_dtoa_r+0x4e0>
   15fd8:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_end+0xfffffffffcbd9237>
   15fdc:	825ff06f          	j	15800 <_dtoa_r+0x664>
   15fe0:	417007bb          	negw	a5,s7
   15fe4:	03813787          	fld	fa5,56(sp)
   15fe8:	00200713          	li	a4,2
   15fec:	d6078063          	beqz	a5,1554c <_dtoa_r+0x3b0>
   15ff0:	00f7f693          	andi	a3,a5,15
   15ff4:	00021637          	lui	a2,0x21
   15ff8:	00369693          	slli	a3,a3,0x3
   15ffc:	e6060613          	addi	a2,a2,-416 # 20e60 <__mprec_tens>
   16000:	00c686b3          	add	a3,a3,a2
   16004:	0006b787          	fld	fa5,0(a3)
   16008:	03813707          	fld	fa4,56(sp)
   1600c:	4047d79b          	sraiw	a5,a5,0x4
   16010:	12f777d3          	fmul.d	fa5,fa4,fa5
   16014:	d2078c63          	beqz	a5,1554c <_dtoa_r+0x3b0>
   16018:	000216b7          	lui	a3,0x21
   1601c:	f5068693          	addi	a3,a3,-176 # 20f50 <__mprec_bigtens>
   16020:	0017f613          	andi	a2,a5,1
   16024:	4017d79b          	sraiw	a5,a5,0x1
   16028:	00060863          	beqz	a2,16038 <_dtoa_r+0xe9c>
   1602c:	0006b707          	fld	fa4,0(a3)
   16030:	0017071b          	addiw	a4,a4,1
   16034:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   16038:	00868693          	addi	a3,a3,8
   1603c:	fe0792e3          	bnez	a5,16020 <_dtoa_r+0xe84>
   16040:	d0cff06f          	j	1554c <_dtoa_r+0x3b0>
   16044:	00813683          	ld	a3,8(sp)
   16048:	03000793          	li	a5,48
   1604c:	001b8b9b          	addiw	s7,s7,1
   16050:	00f68023          	sb	a5,0(a3)
   16054:	fff4c783          	lbu	a5,-1(s1)
   16058:	fc8ff06f          	j	15820 <_dtoa_r+0x684>
   1605c:	008a2583          	lw	a1,8(s4)
   16060:	00040513          	mv	a0,s0
   16064:	529010ef          	jal	17d8c <_Balloc>
   16068:	014a2603          	lw	a2,20(s4)
   1606c:	00050493          	mv	s1,a0
   16070:	010a0593          	addi	a1,s4,16
   16074:	00260613          	addi	a2,a2,2
   16078:	00261613          	slli	a2,a2,0x2
   1607c:	01050513          	addi	a0,a0,16
   16080:	c1cfb0ef          	jal	1149c <memcpy>
   16084:	00100613          	li	a2,1
   16088:	00048593          	mv	a1,s1
   1608c:	00040513          	mv	a0,s0
   16090:	494020ef          	jal	18524 <__lshift>
   16094:	00050d93          	mv	s11,a0
   16098:	a21ff06f          	j	15ab8 <_dtoa_r+0x91c>
   1609c:	00000c13          	li	s8,0
   160a0:	00000a13          	li	s4,0
   160a4:	e19ff06f          	j	15ebc <_dtoa_r+0xd20>
   160a8:	fff6079b          	addiw	a5,a2,-1
   160ac:	00021537          	lui	a0,0x21
   160b0:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   160b4:	00379793          	slli	a5,a5,0x3
   160b8:	e6050513          	addi	a0,a0,-416 # 20e60 <__mprec_tens>
   160bc:	00a787b3          	add	a5,a5,a0
   160c0:	0007b707          	fld	fa4,0(a5)
   160c4:	00813783          	ld	a5,8(sp)
   160c8:	d20586d3          	fcvt.d.w	fa3,a1
   160cc:	f2070653          	fmv.d.x	fa2,a4
   160d0:	0305859b          	addiw	a1,a1,48
   160d4:	00b78023          	sb	a1,0(a5)
   160d8:	00178493          	addi	s1,a5,1
   160dc:	00100793          	li	a5,1
   160e0:	12c77653          	fmul.d	fa2,fa4,fa2
   160e4:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   160e8:	04f60863          	beq	a2,a5,16138 <_dtoa_r+0xf9c>
   160ec:	ffe6061b          	addiw	a2,a2,-2
   160f0:	000247b7          	lui	a5,0x24
   160f4:	02061593          	slli	a1,a2,0x20
   160f8:	4787b687          	fld	fa3,1144(a5) # 24478 <mask+0x30>
   160fc:	00813783          	ld	a5,8(sp)
   16100:	0205d593          	srli	a1,a1,0x20
   16104:	00258513          	addi	a0,a1,2
   16108:	00a78533          	add	a0,a5,a0
   1610c:	00048613          	mv	a2,s1
   16110:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   16114:	00160613          	addi	a2,a2,1
   16118:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   1611c:	d2078753          	fcvt.d.w	fa4,a5
   16120:	0307879b          	addiw	a5,a5,48
   16124:	fef60fa3          	sb	a5,-1(a2)
   16128:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   1612c:	fea612e3          	bne	a2,a0,16110 <_dtoa_r+0xf74>
   16130:	00158593          	addi	a1,a1,1
   16134:	00b484b3          	add	s1,s1,a1
   16138:	000247b7          	lui	a5,0x24
   1613c:	4907b707          	fld	fa4,1168(a5) # 24490 <mask+0x48>
   16140:	02e676d3          	fadd.d	fa3,fa2,fa4
   16144:	a2f697d3          	flt.d	a5,fa3,fa5
   16148:	0a078663          	beqz	a5,161f4 <_dtoa_r+0x1058>
   1614c:	fff4c783          	lbu	a5,-1(s1)
   16150:	00068b93          	mv	s7,a3
   16154:	eacff06f          	j	15800 <_dtoa_r+0x664>
   16158:	03900793          	li	a5,57
   1615c:	c8fd0ce3          	beq	s10,a5,15df4 <_dtoa_r+0xc58>
   16160:	001d0d1b          	addiw	s10,s10,1
   16164:	c4dff06f          	j	15db0 <_dtoa_r+0xc14>
   16168:	000a0993          	mv	s3,s4
   1616c:	000d8a13          	mv	s4,s11
   16170:	ac1ff06f          	j	15c30 <_dtoa_r+0xa94>
   16174:	415804bb          	subw	s1,a6,s5
   16178:	00000793          	li	a5,0
   1617c:	ed8ff06f          	j	15854 <_dtoa_r+0x6b8>
   16180:	05812603          	lw	a2,88(sp)
   16184:	03600793          	li	a5,54
   16188:	000c0693          	mv	a3,s8
   1618c:	40c787bb          	subw	a5,a5,a2
   16190:	00080493          	mv	s1,a6
   16194:	ec0ff06f          	j	15854 <_dtoa_r+0x6b8>
   16198:	03213023          	sd	s2,32(sp)
   1619c:	bd1ff06f          	j	15d6c <_dtoa_r+0xbd0>
   161a0:	d40a88e3          	beqz	s5,15ef0 <_dtoa_r+0xd54>
   161a4:	03412603          	lw	a2,52(sp)
   161a8:	e0c05ae3          	blez	a2,15fbc <_dtoa_r+0xe20>
   161ac:	000247b7          	lui	a5,0x24
   161b0:	4787b707          	fld	fa4,1144(a5) # 24478 <mask+0x30>
   161b4:	0017071b          	addiw	a4,a4,1
   161b8:	000247b7          	lui	a5,0x24
   161bc:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   161c0:	d20706d3          	fcvt.d.w	fa3,a4
   161c4:	4807b707          	fld	fa4,1152(a5) # 24480 <mask+0x38>
   161c8:	fcc005b7          	lui	a1,0xfcc00
   161cc:	fffb869b          	addiw	a3,s7,-1
   161d0:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   161d4:	e2070753          	fmv.x.d	a4,fa4
   161d8:	42075793          	srai	a5,a4,0x20
   161dc:	00b787bb          	addw	a5,a5,a1
   161e0:	02071713          	slli	a4,a4,0x20
   161e4:	02079793          	slli	a5,a5,0x20
   161e8:	02075713          	srli	a4,a4,0x20
   161ec:	00f76733          	or	a4,a4,a5
   161f0:	bb0ff06f          	j	155a0 <_dtoa_r+0x404>
   161f4:	0ac77753          	fsub.d	fa4,fa4,fa2
   161f8:	03000613          	li	a2,48
   161fc:	a2e797d3          	flt.d	a5,fa5,fa4
   16200:	00079663          	bnez	a5,1620c <_dtoa_r+0x1070>
   16204:	db9ff06f          	j	15fbc <_dtoa_r+0xe20>
   16208:	00070493          	mv	s1,a4
   1620c:	fff4c783          	lbu	a5,-1(s1)
   16210:	fff48713          	addi	a4,s1,-1
   16214:	fec78ae3          	beq	a5,a2,16208 <_dtoa_r+0x106c>
   16218:	00068b93          	mv	s7,a3
   1621c:	c60ff06f          	j	1567c <_dtoa_r+0x4e0>
   16220:	00068b93          	mv	s7,a3
   16224:	ddcff06f          	j	15800 <_dtoa_r+0x664>
   16228:	b80514e3          	bnez	a0,15db0 <_dtoa_r+0xc14>
   1622c:	001d7793          	andi	a5,s10,1
   16230:	b80780e3          	beqz	a5,15db0 <_dtoa_r+0xc14>
   16234:	bb9ff06f          	j	15dec <_dtoa_r+0xc50>
   16238:	00048693          	mv	a3,s1
   1623c:	db0ff06f          	j	157ec <_dtoa_r+0x650>
   16240:	000a0593          	mv	a1,s4
   16244:	00000693          	li	a3,0
   16248:	00a00613          	li	a2,10
   1624c:	00040513          	mv	a0,s0
   16250:	40d010ef          	jal	17e5c <__multadd>
   16254:	03412783          	lw	a5,52(sp)
   16258:	00050a13          	mv	s4,a0
   1625c:	00078a93          	mv	s5,a5
   16260:	82f04ae3          	bgtz	a5,15a94 <_dtoa_r+0x8f8>
   16264:	00200793          	li	a5,2
   16268:	0137c663          	blt	a5,s3,16274 <_dtoa_r+0x10d8>
   1626c:	03412a83          	lw	s5,52(sp)
   16270:	825ff06f          	j	15a94 <_dtoa_r+0x8f8>
   16274:	03412a83          	lw	s5,52(sp)
   16278:	c15ff06f          	j	15e8c <_dtoa_r+0xcf0>
   1627c:	00cd1713          	slli	a4,s10,0xc
   16280:	ee070263          	beqz	a4,15964 <_dtoa_r+0x7c8>
   16284:	f94ff06f          	j	15a18 <_dtoa_r+0x87c>
   16288:	fcc68463          	beq	a3,a2,15a50 <_dtoa_r+0x8b4>
   1628c:	03c00693          	li	a3,60
   16290:	40f687bb          	subw	a5,a3,a5
   16294:	945ff06f          	j	15bd8 <_dtoa_r+0xa3c>

0000000000016298 <__sflush_r>:
   16298:	01059683          	lh	a3,16(a1) # fffffffffcc00010 <_end+0xfffffffffcbd9248>
   1629c:	fd010113          	addi	sp,sp,-48
   162a0:	00913c23          	sd	s1,24(sp)
   162a4:	03069713          	slli	a4,a3,0x30
   162a8:	03075713          	srli	a4,a4,0x30
   162ac:	01313423          	sd	s3,8(sp)
   162b0:	02113423          	sd	ra,40(sp)
   162b4:	02813023          	sd	s0,32(sp)
   162b8:	01213823          	sd	s2,16(sp)
   162bc:	00877793          	andi	a5,a4,8
   162c0:	00058493          	mv	s1,a1
   162c4:	00050993          	mv	s3,a0
   162c8:	0e079863          	bnez	a5,163b8 <__sflush_r+0x120>
   162cc:	000017b7          	lui	a5,0x1
   162d0:	8007879b          	addiw	a5,a5,-2048
   162d4:	00f6e7b3          	or	a5,a3,a5
   162d8:	0107979b          	slliw	a5,a5,0x10
   162dc:	0085a703          	lw	a4,8(a1)
   162e0:	4107d79b          	sraiw	a5,a5,0x10
   162e4:	00f59823          	sh	a5,16(a1)
   162e8:	1ae05863          	blez	a4,16498 <__sflush_r+0x200>
   162ec:	0484b703          	ld	a4,72(s1)
   162f0:	0a070463          	beqz	a4,16398 <__sflush_r+0x100>
   162f4:	03079793          	slli	a5,a5,0x30
   162f8:	0307d793          	srli	a5,a5,0x30
   162fc:	0009a403          	lw	s0,0(s3)
   16300:	03379693          	slli	a3,a5,0x33
   16304:	0009a023          	sw	zero,0(s3)
   16308:	1806de63          	bgez	a3,164a4 <__sflush_r+0x20c>
   1630c:	0904b603          	ld	a2,144(s1)
   16310:	0047f793          	andi	a5,a5,4
   16314:	00078e63          	beqz	a5,16330 <__sflush_r+0x98>
   16318:	0084a683          	lw	a3,8(s1)
   1631c:	0584b783          	ld	a5,88(s1)
   16320:	40d60633          	sub	a2,a2,a3
   16324:	00078663          	beqz	a5,16330 <__sflush_r+0x98>
   16328:	0704a783          	lw	a5,112(s1)
   1632c:	40f60633          	sub	a2,a2,a5
   16330:	0304b583          	ld	a1,48(s1)
   16334:	00000693          	li	a3,0
   16338:	00098513          	mv	a0,s3
   1633c:	000700e7          	jalr	a4
   16340:	fff00793          	li	a5,-1
   16344:	0ef50c63          	beq	a0,a5,1643c <__sflush_r+0x1a4>
   16348:	0104d683          	lhu	a3,16(s1)
   1634c:	fffff7b7          	lui	a5,0xfffff
   16350:	7ff7879b          	addiw	a5,a5,2047
   16354:	0184b703          	ld	a4,24(s1)
   16358:	00f6f7b3          	and	a5,a3,a5
   1635c:	0107979b          	slliw	a5,a5,0x10
   16360:	4107d79b          	sraiw	a5,a5,0x10
   16364:	00e4b023          	sd	a4,0(s1)
   16368:	00f49823          	sh	a5,16(s1)
   1636c:	0004a423          	sw	zero,8(s1)
   16370:	03379713          	slli	a4,a5,0x33
   16374:	10074e63          	bltz	a4,16490 <__sflush_r+0x1f8>
   16378:	0584b583          	ld	a1,88(s1)
   1637c:	0089a023          	sw	s0,0(s3)
   16380:	00058c63          	beqz	a1,16398 <__sflush_r+0x100>
   16384:	07448793          	addi	a5,s1,116
   16388:	00f58663          	beq	a1,a5,16394 <__sflush_r+0xfc>
   1638c:	00098513          	mv	a0,s3
   16390:	0e5000ef          	jal	16c74 <_free_r>
   16394:	0404bc23          	sd	zero,88(s1)
   16398:	00000513          	li	a0,0
   1639c:	02813083          	ld	ra,40(sp)
   163a0:	02013403          	ld	s0,32(sp)
   163a4:	01813483          	ld	s1,24(sp)
   163a8:	01013903          	ld	s2,16(sp)
   163ac:	00813983          	ld	s3,8(sp)
   163b0:	03010113          	addi	sp,sp,48
   163b4:	00008067          	ret
   163b8:	0185b903          	ld	s2,24(a1)
   163bc:	fc090ee3          	beqz	s2,16398 <__sflush_r+0x100>
   163c0:	0005b403          	ld	s0,0(a1)
   163c4:	00377713          	andi	a4,a4,3
   163c8:	0125b023          	sd	s2,0(a1)
   163cc:	4124043b          	subw	s0,s0,s2
   163d0:	00000793          	li	a5,0
   163d4:	00071463          	bnez	a4,163dc <__sflush_r+0x144>
   163d8:	0205a783          	lw	a5,32(a1)
   163dc:	00f4a623          	sw	a5,12(s1)
   163e0:	00804863          	bgtz	s0,163f0 <__sflush_r+0x158>
   163e4:	fb5ff06f          	j	16398 <__sflush_r+0x100>
   163e8:	00a90933          	add	s2,s2,a0
   163ec:	fa8056e3          	blez	s0,16398 <__sflush_r+0x100>
   163f0:	0404b783          	ld	a5,64(s1)
   163f4:	0304b583          	ld	a1,48(s1)
   163f8:	00040693          	mv	a3,s0
   163fc:	00090613          	mv	a2,s2
   16400:	00098513          	mv	a0,s3
   16404:	000780e7          	jalr	a5
   16408:	40a4043b          	subw	s0,s0,a0
   1640c:	fca04ee3          	bgtz	a0,163e8 <__sflush_r+0x150>
   16410:	0104d783          	lhu	a5,16(s1)
   16414:	02813083          	ld	ra,40(sp)
   16418:	fff00513          	li	a0,-1
   1641c:	0407e793          	ori	a5,a5,64
   16420:	00f49823          	sh	a5,16(s1)
   16424:	02013403          	ld	s0,32(sp)
   16428:	01813483          	ld	s1,24(sp)
   1642c:	01013903          	ld	s2,16(sp)
   16430:	00813983          	ld	s3,8(sp)
   16434:	03010113          	addi	sp,sp,48
   16438:	00008067          	ret
   1643c:	0009a703          	lw	a4,0(s3)
   16440:	01d00793          	li	a5,29
   16444:	fce7e6e3          	bltu	a5,a4,16410 <__sflush_r+0x178>
   16448:	204007b7          	lui	a5,0x20400
   1644c:	00178793          	addi	a5,a5,1 # 20400001 <_end+0x203d9239>
   16450:	00e7d7b3          	srl	a5,a5,a4
   16454:	0017f793          	andi	a5,a5,1
   16458:	fa078ce3          	beqz	a5,16410 <__sflush_r+0x178>
   1645c:	0104d603          	lhu	a2,16(s1)
   16460:	fffff7b7          	lui	a5,0xfffff
   16464:	7ff7879b          	addiw	a5,a5,2047
   16468:	0184b683          	ld	a3,24(s1)
   1646c:	00f677b3          	and	a5,a2,a5
   16470:	0107979b          	slliw	a5,a5,0x10
   16474:	4107d79b          	sraiw	a5,a5,0x10
   16478:	00d4b023          	sd	a3,0(s1)
   1647c:	00f49823          	sh	a5,16(s1)
   16480:	0004a423          	sw	zero,8(s1)
   16484:	03379693          	slli	a3,a5,0x33
   16488:	ee06d8e3          	bgez	a3,16378 <__sflush_r+0xe0>
   1648c:	ee0716e3          	bnez	a4,16378 <__sflush_r+0xe0>
   16490:	08a4b823          	sd	a0,144(s1)
   16494:	ee5ff06f          	j	16378 <__sflush_r+0xe0>
   16498:	0705a703          	lw	a4,112(a1)
   1649c:	e4e048e3          	bgtz	a4,162ec <__sflush_r+0x54>
   164a0:	ef9ff06f          	j	16398 <__sflush_r+0x100>
   164a4:	0304b583          	ld	a1,48(s1)
   164a8:	00000613          	li	a2,0
   164ac:	00100693          	li	a3,1
   164b0:	00098513          	mv	a0,s3
   164b4:	000700e7          	jalr	a4
   164b8:	fff00793          	li	a5,-1
   164bc:	00050613          	mv	a2,a0
   164c0:	00f50863          	beq	a0,a5,164d0 <__sflush_r+0x238>
   164c4:	0104d783          	lhu	a5,16(s1)
   164c8:	0484b703          	ld	a4,72(s1)
   164cc:	e45ff06f          	j	16310 <__sflush_r+0x78>
   164d0:	0009a783          	lw	a5,0(s3)
   164d4:	fe0788e3          	beqz	a5,164c4 <__sflush_r+0x22c>
   164d8:	01d00713          	li	a4,29
   164dc:	00e78663          	beq	a5,a4,164e8 <__sflush_r+0x250>
   164e0:	01600713          	li	a4,22
   164e4:	00e79863          	bne	a5,a4,164f4 <__sflush_r+0x25c>
   164e8:	0089a023          	sw	s0,0(s3)
   164ec:	00000513          	li	a0,0
   164f0:	eadff06f          	j	1639c <__sflush_r+0x104>
   164f4:	0104d783          	lhu	a5,16(s1)
   164f8:	0407e793          	ori	a5,a5,64
   164fc:	00f49823          	sh	a5,16(s1)
   16500:	e9dff06f          	j	1639c <__sflush_r+0x104>

0000000000016504 <_fflush_r>:
   16504:	fe010113          	addi	sp,sp,-32
   16508:	00813823          	sd	s0,16(sp)
   1650c:	00113c23          	sd	ra,24(sp)
   16510:	00050413          	mv	s0,a0
   16514:	00050663          	beqz	a0,16520 <_fflush_r+0x1c>
   16518:	05052783          	lw	a5,80(a0)
   1651c:	02078a63          	beqz	a5,16550 <_fflush_r+0x4c>
   16520:	01059783          	lh	a5,16(a1)
   16524:	00079c63          	bnez	a5,1653c <_fflush_r+0x38>
   16528:	01813083          	ld	ra,24(sp)
   1652c:	00000513          	li	a0,0
   16530:	01013403          	ld	s0,16(sp)
   16534:	02010113          	addi	sp,sp,32
   16538:	00008067          	ret
   1653c:	00040513          	mv	a0,s0
   16540:	01813083          	ld	ra,24(sp)
   16544:	01013403          	ld	s0,16(sp)
   16548:	02010113          	addi	sp,sp,32
   1654c:	d4dff06f          	j	16298 <__sflush_r>
   16550:	00b13423          	sd	a1,8(sp)
   16554:	35c000ef          	jal	168b0 <__sinit>
   16558:	00813583          	ld	a1,8(sp)
   1655c:	fc5ff06f          	j	16520 <_fflush_r+0x1c>

0000000000016560 <fflush>:
   16560:	00050593          	mv	a1,a0
   16564:	00050663          	beqz	a0,16570 <fflush+0x10>
   16568:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   1656c:	f99ff06f          	j	16504 <_fflush_r>
   16570:	8081b503          	ld	a0,-2040(gp) # 243f8 <_global_impure_ptr>
   16574:	000165b7          	lui	a1,0x16
   16578:	50458593          	addi	a1,a1,1284 # 16504 <_fflush_r>
   1657c:	76d0006f          	j	174e8 <_fwalk_reent>

0000000000016580 <__fp_unlock>:
   16580:	00000513          	li	a0,0
   16584:	00008067          	ret

0000000000016588 <_cleanup_r>:
   16588:	0001e5b7          	lui	a1,0x1e
   1658c:	22c58593          	addi	a1,a1,556 # 1e22c <_fclose_r>
   16590:	7590006f          	j	174e8 <_fwalk_reent>

0000000000016594 <__sinit.part.1>:
   16594:	fc010113          	addi	sp,sp,-64
   16598:	000167b7          	lui	a5,0x16
   1659c:	02113c23          	sd	ra,56(sp)
   165a0:	02813823          	sd	s0,48(sp)
   165a4:	02913423          	sd	s1,40(sp)
   165a8:	00853403          	ld	s0,8(a0)
   165ac:	03213023          	sd	s2,32(sp)
   165b0:	01313c23          	sd	s3,24(sp)
   165b4:	01413823          	sd	s4,16(sp)
   165b8:	01513423          	sd	s5,8(sp)
   165bc:	01613023          	sd	s6,0(sp)
   165c0:	58878793          	addi	a5,a5,1416 # 16588 <_cleanup_r>
   165c4:	04f53c23          	sd	a5,88(a0)
   165c8:	53850713          	addi	a4,a0,1336
   165cc:	00300793          	li	a5,3
   165d0:	52e53823          	sd	a4,1328(a0)
   165d4:	52f52423          	sw	a5,1320(a0)
   165d8:	52053023          	sd	zero,1312(a0)
   165dc:	00400793          	li	a5,4
   165e0:	00050913          	mv	s2,a0
   165e4:	00f41823          	sh	a5,16(s0)
   165e8:	00800613          	li	a2,8
   165ec:	00000593          	li	a1,0
   165f0:	00043023          	sd	zero,0(s0)
   165f4:	00042423          	sw	zero,8(s0)
   165f8:	00042623          	sw	zero,12(s0)
   165fc:	0a042623          	sw	zero,172(s0)
   16600:	00041923          	sh	zero,18(s0)
   16604:	00043c23          	sd	zero,24(s0)
   16608:	02042023          	sw	zero,32(s0)
   1660c:	02042423          	sw	zero,40(s0)
   16610:	0a440513          	addi	a0,s0,164
   16614:	69c010ef          	jal	17cb0 <memset>
   16618:	00019b37          	lui	s6,0x19
   1661c:	01093483          	ld	s1,16(s2)
   16620:	0001aab7          	lui	s5,0x1a
   16624:	0001aa37          	lui	s4,0x1a
   16628:	0001a9b7          	lui	s3,0x1a
   1662c:	7f8b0b13          	addi	s6,s6,2040 # 197f8 <__sread>
   16630:	864a8a93          	addi	s5,s5,-1948 # 19864 <__swrite>
   16634:	8d4a0a13          	addi	s4,s4,-1836 # 198d4 <__sseek>
   16638:	94098993          	addi	s3,s3,-1728 # 19940 <__sclose>
   1663c:	03643c23          	sd	s6,56(s0)
   16640:	05543023          	sd	s5,64(s0)
   16644:	05443423          	sd	s4,72(s0)
   16648:	05343823          	sd	s3,80(s0)
   1664c:	02843823          	sd	s0,48(s0)
   16650:	00900793          	li	a5,9
   16654:	00f49823          	sh	a5,16(s1)
   16658:	00100793          	li	a5,1
   1665c:	00f49923          	sh	a5,18(s1)
   16660:	00800613          	li	a2,8
   16664:	00000593          	li	a1,0
   16668:	0004b023          	sd	zero,0(s1)
   1666c:	0004a423          	sw	zero,8(s1)
   16670:	0004a623          	sw	zero,12(s1)
   16674:	0a04a623          	sw	zero,172(s1)
   16678:	0004bc23          	sd	zero,24(s1)
   1667c:	0204a023          	sw	zero,32(s1)
   16680:	0204a423          	sw	zero,40(s1)
   16684:	0a448513          	addi	a0,s1,164
   16688:	628010ef          	jal	17cb0 <memset>
   1668c:	01893403          	ld	s0,24(s2)
   16690:	01200793          	li	a5,18
   16694:	0364bc23          	sd	s6,56(s1)
   16698:	0554b023          	sd	s5,64(s1)
   1669c:	0544b423          	sd	s4,72(s1)
   166a0:	0534b823          	sd	s3,80(s1)
   166a4:	0294b823          	sd	s1,48(s1)
   166a8:	00f41823          	sh	a5,16(s0)
   166ac:	00200793          	li	a5,2
   166b0:	00f41923          	sh	a5,18(s0)
   166b4:	00043023          	sd	zero,0(s0)
   166b8:	00042423          	sw	zero,8(s0)
   166bc:	00042623          	sw	zero,12(s0)
   166c0:	0a042623          	sw	zero,172(s0)
   166c4:	00043c23          	sd	zero,24(s0)
   166c8:	02042023          	sw	zero,32(s0)
   166cc:	02042423          	sw	zero,40(s0)
   166d0:	0a440513          	addi	a0,s0,164
   166d4:	00800613          	li	a2,8
   166d8:	00000593          	li	a1,0
   166dc:	5d4010ef          	jal	17cb0 <memset>
   166e0:	03813083          	ld	ra,56(sp)
   166e4:	03643c23          	sd	s6,56(s0)
   166e8:	05543023          	sd	s5,64(s0)
   166ec:	05443423          	sd	s4,72(s0)
   166f0:	05343823          	sd	s3,80(s0)
   166f4:	02843823          	sd	s0,48(s0)
   166f8:	00100793          	li	a5,1
   166fc:	04f92823          	sw	a5,80(s2)
   16700:	03013403          	ld	s0,48(sp)
   16704:	02813483          	ld	s1,40(sp)
   16708:	02013903          	ld	s2,32(sp)
   1670c:	01813983          	ld	s3,24(sp)
   16710:	01013a03          	ld	s4,16(sp)
   16714:	00813a83          	ld	s5,8(sp)
   16718:	00013b03          	ld	s6,0(sp)
   1671c:	04010113          	addi	sp,sp,64
   16720:	00008067          	ret

0000000000016724 <__fp_lock>:
   16724:	00000513          	li	a0,0
   16728:	00008067          	ret

000000000001672c <__sfmoreglue>:
   1672c:	fe010113          	addi	sp,sp,-32
   16730:	fff5879b          	addiw	a5,a1,-1
   16734:	00913423          	sd	s1,8(sp)
   16738:	0b000493          	li	s1,176
   1673c:	029784b3          	mul	s1,a5,s1
   16740:	01213023          	sd	s2,0(sp)
   16744:	00058913          	mv	s2,a1
   16748:	00813823          	sd	s0,16(sp)
   1674c:	00113c23          	sd	ra,24(sp)
   16750:	0c848593          	addi	a1,s1,200
   16754:	dd8fa0ef          	jal	10d2c <_malloc_r>
   16758:	00050413          	mv	s0,a0
   1675c:	02050063          	beqz	a0,1677c <__sfmoreglue+0x50>
   16760:	01850513          	addi	a0,a0,24
   16764:	00043023          	sd	zero,0(s0)
   16768:	01242423          	sw	s2,8(s0)
   1676c:	00a43823          	sd	a0,16(s0)
   16770:	0b048613          	addi	a2,s1,176
   16774:	00000593          	li	a1,0
   16778:	538010ef          	jal	17cb0 <memset>
   1677c:	01813083          	ld	ra,24(sp)
   16780:	00040513          	mv	a0,s0
   16784:	00813483          	ld	s1,8(sp)
   16788:	01013403          	ld	s0,16(sp)
   1678c:	00013903          	ld	s2,0(sp)
   16790:	02010113          	addi	sp,sp,32
   16794:	00008067          	ret

0000000000016798 <__sfp>:
   16798:	fd010113          	addi	sp,sp,-48
   1679c:	01213823          	sd	s2,16(sp)
   167a0:	8081b903          	ld	s2,-2040(gp) # 243f8 <_global_impure_ptr>
   167a4:	01313423          	sd	s3,8(sp)
   167a8:	02113423          	sd	ra,40(sp)
   167ac:	05092783          	lw	a5,80(s2)
   167b0:	02813023          	sd	s0,32(sp)
   167b4:	00913c23          	sd	s1,24(sp)
   167b8:	00050993          	mv	s3,a0
   167bc:	00079663          	bnez	a5,167c8 <__sfp+0x30>
   167c0:	00090513          	mv	a0,s2
   167c4:	dd1ff0ef          	jal	16594 <__sinit.part.1>
   167c8:	52090913          	addi	s2,s2,1312
   167cc:	fff00493          	li	s1,-1
   167d0:	00892783          	lw	a5,8(s2)
   167d4:	01093403          	ld	s0,16(s2)
   167d8:	fff7879b          	addiw	a5,a5,-1
   167dc:	0007da63          	bgez	a5,167f0 <__sfp+0x58>
   167e0:	0840006f          	j	16864 <__sfp+0xcc>
   167e4:	fff7879b          	addiw	a5,a5,-1
   167e8:	0b040413          	addi	s0,s0,176
   167ec:	06978c63          	beq	a5,s1,16864 <__sfp+0xcc>
   167f0:	01041703          	lh	a4,16(s0)
   167f4:	fe0718e3          	bnez	a4,167e4 <__sfp+0x4c>
   167f8:	fff00793          	li	a5,-1
   167fc:	00f41923          	sh	a5,18(s0)
   16800:	00100793          	li	a5,1
   16804:	00f41823          	sh	a5,16(s0)
   16808:	0a042623          	sw	zero,172(s0)
   1680c:	00043023          	sd	zero,0(s0)
   16810:	00042623          	sw	zero,12(s0)
   16814:	00042423          	sw	zero,8(s0)
   16818:	00043c23          	sd	zero,24(s0)
   1681c:	02042023          	sw	zero,32(s0)
   16820:	02042423          	sw	zero,40(s0)
   16824:	00800613          	li	a2,8
   16828:	00000593          	li	a1,0
   1682c:	0a440513          	addi	a0,s0,164
   16830:	480010ef          	jal	17cb0 <memset>
   16834:	00040513          	mv	a0,s0
   16838:	04043c23          	sd	zero,88(s0)
   1683c:	06042023          	sw	zero,96(s0)
   16840:	06043c23          	sd	zero,120(s0)
   16844:	08042023          	sw	zero,128(s0)
   16848:	02813083          	ld	ra,40(sp)
   1684c:	02013403          	ld	s0,32(sp)
   16850:	01813483          	ld	s1,24(sp)
   16854:	01013903          	ld	s2,16(sp)
   16858:	00813983          	ld	s3,8(sp)
   1685c:	03010113          	addi	sp,sp,48
   16860:	00008067          	ret
   16864:	00093783          	ld	a5,0(s2)
   16868:	00078663          	beqz	a5,16874 <__sfp+0xdc>
   1686c:	00078913          	mv	s2,a5
   16870:	f61ff06f          	j	167d0 <__sfp+0x38>
   16874:	00400593          	li	a1,4
   16878:	00098513          	mv	a0,s3
   1687c:	eb1ff0ef          	jal	1672c <__sfmoreglue>
   16880:	00a93023          	sd	a0,0(s2)
   16884:	00050663          	beqz	a0,16890 <__sfp+0xf8>
   16888:	00050913          	mv	s2,a0
   1688c:	f45ff06f          	j	167d0 <__sfp+0x38>
   16890:	00c00793          	li	a5,12
   16894:	00f9a023          	sw	a5,0(s3)
   16898:	00000513          	li	a0,0
   1689c:	fadff06f          	j	16848 <__sfp+0xb0>

00000000000168a0 <_cleanup>:
   168a0:	8081b503          	ld	a0,-2040(gp) # 243f8 <_global_impure_ptr>
   168a4:	0001e5b7          	lui	a1,0x1e
   168a8:	22c58593          	addi	a1,a1,556 # 1e22c <_fclose_r>
   168ac:	43d0006f          	j	174e8 <_fwalk_reent>

00000000000168b0 <__sinit>:
   168b0:	05052783          	lw	a5,80(a0)
   168b4:	00078463          	beqz	a5,168bc <__sinit+0xc>
   168b8:	00008067          	ret
   168bc:	cd9ff06f          	j	16594 <__sinit.part.1>

00000000000168c0 <__sfp_lock_acquire>:
   168c0:	00008067          	ret

00000000000168c4 <__sfp_lock_release>:
   168c4:	00008067          	ret

00000000000168c8 <__sinit_lock_acquire>:
   168c8:	00008067          	ret

00000000000168cc <__sinit_lock_release>:
   168cc:	00008067          	ret

00000000000168d0 <__fp_lock_all>:
   168d0:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   168d4:	000165b7          	lui	a1,0x16
   168d8:	72458593          	addi	a1,a1,1828 # 16724 <__fp_lock>
   168dc:	35d0006f          	j	17438 <_fwalk>

00000000000168e0 <__fp_unlock_all>:
   168e0:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   168e4:	000165b7          	lui	a1,0x16
   168e8:	58058593          	addi	a1,a1,1408 # 16580 <__fp_unlock>
   168ec:	34d0006f          	j	17438 <_fwalk>

00000000000168f0 <_fread_r>:
   168f0:	fa010113          	addi	sp,sp,-96
   168f4:	03613023          	sd	s6,32(sp)
   168f8:	02c68b33          	mul	s6,a3,a2
   168fc:	04113c23          	sd	ra,88(sp)
   16900:	04813823          	sd	s0,80(sp)
   16904:	04913423          	sd	s1,72(sp)
   16908:	05213023          	sd	s2,64(sp)
   1690c:	03313c23          	sd	s3,56(sp)
   16910:	03413823          	sd	s4,48(sp)
   16914:	03513423          	sd	s5,40(sp)
   16918:	01713c23          	sd	s7,24(sp)
   1691c:	01813823          	sd	s8,16(sp)
   16920:	01913423          	sd	s9,8(sp)
   16924:	01a13023          	sd	s10,0(sp)
   16928:	1c0b0863          	beqz	s6,16af8 <_fread_r+0x208>
   1692c:	00060b93          	mv	s7,a2
   16930:	00068a93          	mv	s5,a3
   16934:	00050a13          	mv	s4,a0
   16938:	00058913          	mv	s2,a1
   1693c:	00070413          	mv	s0,a4
   16940:	00050663          	beqz	a0,1694c <_fread_r+0x5c>
   16944:	05052783          	lw	a5,80(a0)
   16948:	1c078a63          	beqz	a5,16b1c <_fread_r+0x22c>
   1694c:	01041683          	lh	a3,16(s0)
   16950:	03069793          	slli	a5,a3,0x30
   16954:	0307d793          	srli	a5,a5,0x30
   16958:	03279713          	slli	a4,a5,0x32
   1695c:	02074a63          	bltz	a4,16990 <_fread_r+0xa0>
   16960:	000027b7          	lui	a5,0x2
   16964:	0ac42603          	lw	a2,172(s0)
   16968:	00f6e7b3          	or	a5,a3,a5
   1696c:	0107979b          	slliw	a5,a5,0x10
   16970:	ffffe737          	lui	a4,0xffffe
   16974:	4107d79b          	sraiw	a5,a5,0x10
   16978:	fff7071b          	addiw	a4,a4,-1
   1697c:	00e67733          	and	a4,a2,a4
   16980:	00f41823          	sh	a5,16(s0)
   16984:	03079793          	slli	a5,a5,0x30
   16988:	0ae42623          	sw	a4,172(s0)
   1698c:	0307d793          	srli	a5,a5,0x30
   16990:	00842483          	lw	s1,8(s0)
   16994:	00048713          	mv	a4,s1
   16998:	1604c463          	bltz	s1,16b00 <_fread_r+0x210>
   1699c:	0027f793          	andi	a5,a5,2
   169a0:	000b0993          	mv	s3,s6
   169a4:	0e078463          	beqz	a5,16a8c <_fread_r+0x19c>
   169a8:	000b0493          	mv	s1,s6
   169ac:	01677463          	bleu	s6,a4,169b4 <_fread_r+0xc4>
   169b0:	00070493          	mv	s1,a4
   169b4:	00043583          	ld	a1,0(s0)
   169b8:	00048613          	mv	a2,s1
   169bc:	00090513          	mv	a0,s2
   169c0:	addfa0ef          	jal	1149c <memcpy>
   169c4:	00842703          	lw	a4,8(s0)
   169c8:	00043c03          	ld	s8,0(s0)
   169cc:	0004879b          	sext.w	a5,s1
   169d0:	05843583          	ld	a1,88(s0)
   169d4:	009c0c33          	add	s8,s8,s1
   169d8:	40f707bb          	subw	a5,a4,a5
   169dc:	01843023          	sd	s8,0(s0)
   169e0:	00f42423          	sw	a5,8(s0)
   169e4:	409b09b3          	sub	s3,s6,s1
   169e8:	14058863          	beqz	a1,16b38 <_fread_r+0x248>
   169ec:	14098863          	beqz	s3,16b3c <_fread_r+0x24c>
   169f0:	07440793          	addi	a5,s0,116
   169f4:	00f58863          	beq	a1,a5,16a04 <_fread_r+0x114>
   169f8:	000a0513          	mv	a0,s4
   169fc:	278000ef          	jal	16c74 <_free_r>
   16a00:	00043c03          	ld	s8,0(s0)
   16a04:	04043c23          	sd	zero,88(s0)
   16a08:	01843d03          	ld	s10,24(s0)
   16a0c:	02042c83          	lw	s9,32(s0)
   16a10:	00990933          	add	s2,s2,s1
   16a14:	0080006f          	j	16a1c <_fread_r+0x12c>
   16a18:	12098263          	beqz	s3,16b3c <_fread_r+0x24c>
   16a1c:	01243c23          	sd	s2,24(s0)
   16a20:	03342023          	sw	s3,32(s0)
   16a24:	01243023          	sd	s2,0(s0)
   16a28:	00040593          	mv	a1,s0
   16a2c:	000a0513          	mv	a0,s4
   16a30:	159020ef          	jal	19388 <__srefill_r>
   16a34:	00842783          	lw	a5,8(s0)
   16a38:	01a43c23          	sd	s10,24(s0)
   16a3c:	03942023          	sw	s9,32(s0)
   16a40:	01843023          	sd	s8,0(s0)
   16a44:	00042423          	sw	zero,8(s0)
   16a48:	40f989b3          	sub	s3,s3,a5
   16a4c:	00f90933          	add	s2,s2,a5
   16a50:	fc0504e3          	beqz	a0,16a18 <_fread_r+0x128>
   16a54:	413b09b3          	sub	s3,s6,s3
   16a58:	0379d533          	divu	a0,s3,s7
   16a5c:	0640006f          	j	16ac0 <_fread_r+0x1d0>
   16a60:	a3dfa0ef          	jal	1149c <memcpy>
   16a64:	00043783          	ld	a5,0(s0)
   16a68:	00990933          	add	s2,s2,s1
   16a6c:	409989b3          	sub	s3,s3,s1
   16a70:	009784b3          	add	s1,a5,s1
   16a74:	00040593          	mv	a1,s0
   16a78:	000a0513          	mv	a0,s4
   16a7c:	00943023          	sd	s1,0(s0)
   16a80:	109020ef          	jal	19388 <__srefill_r>
   16a84:	fc0518e3          	bnez	a0,16a54 <_fread_r+0x164>
   16a88:	00842483          	lw	s1,8(s0)
   16a8c:	00048613          	mv	a2,s1
   16a90:	00090513          	mv	a0,s2
   16a94:	00043583          	ld	a1,0(s0)
   16a98:	fd34e4e3          	bltu	s1,s3,16a60 <_fread_r+0x170>
   16a9c:	00098613          	mv	a2,s3
   16aa0:	9fdfa0ef          	jal	1149c <memcpy>
   16aa4:	00842703          	lw	a4,8(s0)
   16aa8:	00043783          	ld	a5,0(s0)
   16aac:	000a8513          	mv	a0,s5
   16ab0:	4137073b          	subw	a4,a4,s3
   16ab4:	013789b3          	add	s3,a5,s3
   16ab8:	00e42423          	sw	a4,8(s0)
   16abc:	01343023          	sd	s3,0(s0)
   16ac0:	05813083          	ld	ra,88(sp)
   16ac4:	05013403          	ld	s0,80(sp)
   16ac8:	04813483          	ld	s1,72(sp)
   16acc:	04013903          	ld	s2,64(sp)
   16ad0:	03813983          	ld	s3,56(sp)
   16ad4:	03013a03          	ld	s4,48(sp)
   16ad8:	02813a83          	ld	s5,40(sp)
   16adc:	02013b03          	ld	s6,32(sp)
   16ae0:	01813b83          	ld	s7,24(sp)
   16ae4:	01013c03          	ld	s8,16(sp)
   16ae8:	00813c83          	ld	s9,8(sp)
   16aec:	00013d03          	ld	s10,0(sp)
   16af0:	06010113          	addi	sp,sp,96
   16af4:	00008067          	ret
   16af8:	00000513          	li	a0,0
   16afc:	fc5ff06f          	j	16ac0 <_fread_r+0x1d0>
   16b00:	00042423          	sw	zero,8(s0)
   16b04:	0027f793          	andi	a5,a5,2
   16b08:	00000713          	li	a4,0
   16b0c:	00000493          	li	s1,0
   16b10:	000b0993          	mv	s3,s6
   16b14:	f6078ce3          	beqz	a5,16a8c <_fread_r+0x19c>
   16b18:	e91ff06f          	j	169a8 <_fread_r+0xb8>
   16b1c:	d95ff0ef          	jal	168b0 <__sinit>
   16b20:	01041683          	lh	a3,16(s0)
   16b24:	03069793          	slli	a5,a3,0x30
   16b28:	0307d793          	srli	a5,a5,0x30
   16b2c:	03279713          	slli	a4,a5,0x32
   16b30:	e60740e3          	bltz	a4,16990 <_fread_r+0xa0>
   16b34:	e2dff06f          	j	16960 <_fread_r+0x70>
   16b38:	ec0998e3          	bnez	s3,16a08 <_fread_r+0x118>
   16b3c:	000a8513          	mv	a0,s5
   16b40:	f81ff06f          	j	16ac0 <_fread_r+0x1d0>

0000000000016b44 <fread>:
   16b44:	00068713          	mv	a4,a3
   16b48:	00060693          	mv	a3,a2
   16b4c:	00058613          	mv	a2,a1
   16b50:	00050593          	mv	a1,a0
   16b54:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   16b58:	d99ff06f          	j	168f0 <_fread_r>

0000000000016b5c <_malloc_trim_r>:
   16b5c:	fd010113          	addi	sp,sp,-48
   16b60:	01213823          	sd	s2,16(sp)
   16b64:	00024937          	lui	s2,0x24
   16b68:	02813023          	sd	s0,32(sp)
   16b6c:	00913c23          	sd	s1,24(sp)
   16b70:	00058413          	mv	s0,a1
   16b74:	01313423          	sd	s3,8(sp)
   16b78:	02113423          	sd	ra,40(sp)
   16b7c:	00050993          	mv	s3,a0
   16b80:	b3890913          	addi	s2,s2,-1224 # 23b38 <__malloc_av_>
   16b84:	a39fa0ef          	jal	115bc <__malloc_lock>
   16b88:	01093703          	ld	a4,16(s2)
   16b8c:	000017b7          	lui	a5,0x1
   16b90:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   16b94:	00873483          	ld	s1,8(a4) # ffffffffffffe008 <_end+0xfffffffffffd7240>
   16b98:	ffc4f493          	andi	s1,s1,-4
   16b9c:	40848433          	sub	s0,s1,s0
   16ba0:	00b40433          	add	s0,s0,a1
   16ba4:	00c45413          	srli	s0,s0,0xc
   16ba8:	fff40413          	addi	s0,s0,-1
   16bac:	00c41413          	slli	s0,s0,0xc
   16bb0:	00f44c63          	blt	s0,a5,16bc8 <_malloc_trim_r+0x6c>
   16bb4:	00000513          	li	a0,0
   16bb8:	2a9090ef          	jal	20660 <sbrk>
   16bbc:	01093783          	ld	a5,16(s2)
   16bc0:	009787b3          	add	a5,a5,s1
   16bc4:	02f50663          	beq	a0,a5,16bf0 <_malloc_trim_r+0x94>
   16bc8:	00098513          	mv	a0,s3
   16bcc:	9f5fa0ef          	jal	115c0 <__malloc_unlock>
   16bd0:	02813083          	ld	ra,40(sp)
   16bd4:	00000513          	li	a0,0
   16bd8:	02013403          	ld	s0,32(sp)
   16bdc:	01813483          	ld	s1,24(sp)
   16be0:	01013903          	ld	s2,16(sp)
   16be4:	00813983          	ld	s3,8(sp)
   16be8:	03010113          	addi	sp,sp,48
   16bec:	00008067          	ret
   16bf0:	40800533          	neg	a0,s0
   16bf4:	26d090ef          	jal	20660 <sbrk>
   16bf8:	fff00793          	li	a5,-1
   16bfc:	04f50463          	beq	a0,a5,16c44 <_malloc_trim_r+0xe8>
   16c00:	9681a783          	lw	a5,-1688(gp) # 24558 <__malloc_current_mallinfo>
   16c04:	01093683          	ld	a3,16(s2)
   16c08:	408484b3          	sub	s1,s1,s0
   16c0c:	0014e493          	ori	s1,s1,1
   16c10:	4087843b          	subw	s0,a5,s0
   16c14:	00098513          	mv	a0,s3
   16c18:	0096b423          	sd	s1,8(a3)
   16c1c:	9681a423          	sw	s0,-1688(gp) # 24558 <__malloc_current_mallinfo>
   16c20:	9a1fa0ef          	jal	115c0 <__malloc_unlock>
   16c24:	02813083          	ld	ra,40(sp)
   16c28:	00100513          	li	a0,1
   16c2c:	02013403          	ld	s0,32(sp)
   16c30:	01813483          	ld	s1,24(sp)
   16c34:	01013903          	ld	s2,16(sp)
   16c38:	00813983          	ld	s3,8(sp)
   16c3c:	03010113          	addi	sp,sp,48
   16c40:	00008067          	ret
   16c44:	00000513          	li	a0,0
   16c48:	219090ef          	jal	20660 <sbrk>
   16c4c:	01093703          	ld	a4,16(s2)
   16c50:	01f00693          	li	a3,31
   16c54:	40e507b3          	sub	a5,a0,a4
   16c58:	f6f6d8e3          	ble	a5,a3,16bc8 <_malloc_trim_r+0x6c>
   16c5c:	8181b683          	ld	a3,-2024(gp) # 24408 <__malloc_sbrk_base>
   16c60:	0017e793          	ori	a5,a5,1
   16c64:	00f73423          	sd	a5,8(a4)
   16c68:	40d50533          	sub	a0,a0,a3
   16c6c:	96a1a423          	sw	a0,-1688(gp) # 24558 <__malloc_current_mallinfo>
   16c70:	f59ff06f          	j	16bc8 <_malloc_trim_r+0x6c>

0000000000016c74 <_free_r>:
   16c74:	10058263          	beqz	a1,16d78 <_free_r+0x104>
   16c78:	fe010113          	addi	sp,sp,-32
   16c7c:	00813823          	sd	s0,16(sp)
   16c80:	00913423          	sd	s1,8(sp)
   16c84:	00058413          	mv	s0,a1
   16c88:	00050493          	mv	s1,a0
   16c8c:	00113c23          	sd	ra,24(sp)
   16c90:	92dfa0ef          	jal	115bc <__malloc_lock>
   16c94:	ff843503          	ld	a0,-8(s0)
   16c98:	ff040693          	addi	a3,s0,-16
   16c9c:	000245b7          	lui	a1,0x24
   16ca0:	ffe57793          	andi	a5,a0,-2
   16ca4:	00f68633          	add	a2,a3,a5
   16ca8:	b3858593          	addi	a1,a1,-1224 # 23b38 <__malloc_av_>
   16cac:	00863703          	ld	a4,8(a2)
   16cb0:	0105b803          	ld	a6,16(a1)
   16cb4:	ffc77713          	andi	a4,a4,-4
   16cb8:	17060663          	beq	a2,a6,16e24 <_free_r+0x1b0>
   16cbc:	00e63423          	sd	a4,8(a2)
   16cc0:	00157513          	andi	a0,a0,1
   16cc4:	02051663          	bnez	a0,16cf0 <_free_r+0x7c>
   16cc8:	ff043503          	ld	a0,-16(s0)
   16ccc:	40a686b3          	sub	a3,a3,a0
   16cd0:	0106b803          	ld	a6,16(a3)
   16cd4:	00a787b3          	add	a5,a5,a0
   16cd8:	00024537          	lui	a0,0x24
   16cdc:	b4850513          	addi	a0,a0,-1208 # 23b48 <__malloc_av_+0x10>
   16ce0:	18a80863          	beq	a6,a0,16e70 <_free_r+0x1fc>
   16ce4:	0186b503          	ld	a0,24(a3)
   16ce8:	00a83c23          	sd	a0,24(a6)
   16cec:	01053823          	sd	a6,16(a0)
   16cf0:	00e60533          	add	a0,a2,a4
   16cf4:	00853503          	ld	a0,8(a0)
   16cf8:	00157513          	andi	a0,a0,1
   16cfc:	0e050a63          	beqz	a0,16df0 <_free_r+0x17c>
   16d00:	0017e713          	ori	a4,a5,1
   16d04:	00e6b423          	sd	a4,8(a3)
   16d08:	00f68733          	add	a4,a3,a5
   16d0c:	00f73023          	sd	a5,0(a4)
   16d10:	1ff00713          	li	a4,511
   16d14:	06f76463          	bltu	a4,a5,16d7c <_free_r+0x108>
   16d18:	0037d793          	srli	a5,a5,0x3
   16d1c:	0007879b          	sext.w	a5,a5
   16d20:	0017871b          	addiw	a4,a5,1
   16d24:	0017171b          	slliw	a4,a4,0x1
   16d28:	00371713          	slli	a4,a4,0x3
   16d2c:	0085b603          	ld	a2,8(a1)
   16d30:	00e58733          	add	a4,a1,a4
   16d34:	00073803          	ld	a6,0(a4)
   16d38:	4027d79b          	sraiw	a5,a5,0x2
   16d3c:	00100513          	li	a0,1
   16d40:	00f517b3          	sll	a5,a0,a5
   16d44:	00c7e7b3          	or	a5,a5,a2
   16d48:	ff070613          	addi	a2,a4,-16
   16d4c:	00c6bc23          	sd	a2,24(a3)
   16d50:	0106b823          	sd	a6,16(a3)
   16d54:	00f5b423          	sd	a5,8(a1)
   16d58:	00d73023          	sd	a3,0(a4)
   16d5c:	00d83c23          	sd	a3,24(a6)
   16d60:	00048513          	mv	a0,s1
   16d64:	01813083          	ld	ra,24(sp)
   16d68:	01013403          	ld	s0,16(sp)
   16d6c:	00813483          	ld	s1,8(sp)
   16d70:	02010113          	addi	sp,sp,32
   16d74:	84dfa06f          	j	115c0 <__malloc_unlock>
   16d78:	00008067          	ret
   16d7c:	0097d713          	srli	a4,a5,0x9
   16d80:	00400613          	li	a2,4
   16d84:	12e66263          	bltu	a2,a4,16ea8 <_free_r+0x234>
   16d88:	0067d713          	srli	a4,a5,0x6
   16d8c:	0007071b          	sext.w	a4,a4
   16d90:	0397051b          	addiw	a0,a4,57
   16d94:	0387061b          	addiw	a2,a4,56
   16d98:	0015151b          	slliw	a0,a0,0x1
   16d9c:	00351513          	slli	a0,a0,0x3
   16da0:	00a58533          	add	a0,a1,a0
   16da4:	00053703          	ld	a4,0(a0)
   16da8:	ff050513          	addi	a0,a0,-16
   16dac:	10e50c63          	beq	a0,a4,16ec4 <_free_r+0x250>
   16db0:	00873603          	ld	a2,8(a4)
   16db4:	ffc67613          	andi	a2,a2,-4
   16db8:	00c7f663          	bleu	a2,a5,16dc4 <_free_r+0x150>
   16dbc:	01073703          	ld	a4,16(a4)
   16dc0:	fee518e3          	bne	a0,a4,16db0 <_free_r+0x13c>
   16dc4:	01873503          	ld	a0,24(a4)
   16dc8:	00a6bc23          	sd	a0,24(a3)
   16dcc:	00e6b823          	sd	a4,16(a3)
   16dd0:	00d53823          	sd	a3,16(a0)
   16dd4:	01813083          	ld	ra,24(sp)
   16dd8:	00048513          	mv	a0,s1
   16ddc:	01013403          	ld	s0,16(sp)
   16de0:	00813483          	ld	s1,8(sp)
   16de4:	00d73c23          	sd	a3,24(a4)
   16de8:	02010113          	addi	sp,sp,32
   16dec:	fd4fa06f          	j	115c0 <__malloc_unlock>
   16df0:	01063503          	ld	a0,16(a2)
   16df4:	00e787b3          	add	a5,a5,a4
   16df8:	00024737          	lui	a4,0x24
   16dfc:	b4870713          	addi	a4,a4,-1208 # 23b48 <__malloc_av_+0x10>
   16e00:	0ee50263          	beq	a0,a4,16ee4 <_free_r+0x270>
   16e04:	01863803          	ld	a6,24(a2)
   16e08:	0017e613          	ori	a2,a5,1
   16e0c:	00f68733          	add	a4,a3,a5
   16e10:	01053c23          	sd	a6,24(a0)
   16e14:	00a83823          	sd	a0,16(a6)
   16e18:	00c6b423          	sd	a2,8(a3)
   16e1c:	00f73023          	sd	a5,0(a4)
   16e20:	ef1ff06f          	j	16d10 <_free_r+0x9c>
   16e24:	00157513          	andi	a0,a0,1
   16e28:	00e787b3          	add	a5,a5,a4
   16e2c:	02051063          	bnez	a0,16e4c <_free_r+0x1d8>
   16e30:	ff043503          	ld	a0,-16(s0)
   16e34:	40a686b3          	sub	a3,a3,a0
   16e38:	0186b703          	ld	a4,24(a3)
   16e3c:	0106b603          	ld	a2,16(a3)
   16e40:	00a787b3          	add	a5,a5,a0
   16e44:	00e63c23          	sd	a4,24(a2)
   16e48:	00c73823          	sd	a2,16(a4)
   16e4c:	0017e613          	ori	a2,a5,1
   16e50:	8201b703          	ld	a4,-2016(gp) # 24410 <__malloc_trim_threshold>
   16e54:	00c6b423          	sd	a2,8(a3)
   16e58:	00d5b823          	sd	a3,16(a1)
   16e5c:	f0e7e2e3          	bltu	a5,a4,16d60 <_free_r+0xec>
   16e60:	9101b583          	ld	a1,-1776(gp) # 24500 <__malloc_top_pad>
   16e64:	00048513          	mv	a0,s1
   16e68:	cf5ff0ef          	jal	16b5c <_malloc_trim_r>
   16e6c:	ef5ff06f          	j	16d60 <_free_r+0xec>
   16e70:	00e605b3          	add	a1,a2,a4
   16e74:	0085b583          	ld	a1,8(a1)
   16e78:	0015f593          	andi	a1,a1,1
   16e7c:	0e059a63          	bnez	a1,16f70 <_free_r+0x2fc>
   16e80:	01063583          	ld	a1,16(a2)
   16e84:	01863603          	ld	a2,24(a2)
   16e88:	00f707b3          	add	a5,a4,a5
   16e8c:	0017e713          	ori	a4,a5,1
   16e90:	00c5bc23          	sd	a2,24(a1)
   16e94:	00b63823          	sd	a1,16(a2)
   16e98:	00e6b423          	sd	a4,8(a3)
   16e9c:	00f686b3          	add	a3,a3,a5
   16ea0:	00f6b023          	sd	a5,0(a3)
   16ea4:	ebdff06f          	j	16d60 <_free_r+0xec>
   16ea8:	01400613          	li	a2,20
   16eac:	04e66e63          	bltu	a2,a4,16f08 <_free_r+0x294>
   16eb0:	0007071b          	sext.w	a4,a4
   16eb4:	05c7051b          	addiw	a0,a4,92
   16eb8:	05b7061b          	addiw	a2,a4,91
   16ebc:	0015151b          	slliw	a0,a0,0x1
   16ec0:	eddff06f          	j	16d9c <_free_r+0x128>
   16ec4:	0085b783          	ld	a5,8(a1)
   16ec8:	4026571b          	sraiw	a4,a2,0x2
   16ecc:	00100613          	li	a2,1
   16ed0:	00e61733          	sll	a4,a2,a4
   16ed4:	00f767b3          	or	a5,a4,a5
   16ed8:	00f5b423          	sd	a5,8(a1)
   16edc:	00050713          	mv	a4,a0
   16ee0:	ee9ff06f          	j	16dc8 <_free_r+0x154>
   16ee4:	02d5b423          	sd	a3,40(a1)
   16ee8:	02d5b023          	sd	a3,32(a1)
   16eec:	0017e713          	ori	a4,a5,1
   16ef0:	00a6bc23          	sd	a0,24(a3)
   16ef4:	00a6b823          	sd	a0,16(a3)
   16ef8:	00e6b423          	sd	a4,8(a3)
   16efc:	00f686b3          	add	a3,a3,a5
   16f00:	00f6b023          	sd	a5,0(a3)
   16f04:	e5dff06f          	j	16d60 <_free_r+0xec>
   16f08:	05400613          	li	a2,84
   16f0c:	00e66e63          	bltu	a2,a4,16f28 <_free_r+0x2b4>
   16f10:	00c7d713          	srli	a4,a5,0xc
   16f14:	0007071b          	sext.w	a4,a4
   16f18:	06f7051b          	addiw	a0,a4,111
   16f1c:	06e7061b          	addiw	a2,a4,110
   16f20:	0015151b          	slliw	a0,a0,0x1
   16f24:	e79ff06f          	j	16d9c <_free_r+0x128>
   16f28:	15400613          	li	a2,340
   16f2c:	00e66e63          	bltu	a2,a4,16f48 <_free_r+0x2d4>
   16f30:	00f7d713          	srli	a4,a5,0xf
   16f34:	0007071b          	sext.w	a4,a4
   16f38:	0787051b          	addiw	a0,a4,120
   16f3c:	0777061b          	addiw	a2,a4,119
   16f40:	0015151b          	slliw	a0,a0,0x1
   16f44:	e59ff06f          	j	16d9c <_free_r+0x128>
   16f48:	55400813          	li	a6,1364
   16f4c:	0fe00513          	li	a0,254
   16f50:	07e00613          	li	a2,126
   16f54:	e4e864e3          	bltu	a6,a4,16d9c <_free_r+0x128>
   16f58:	0127d713          	srli	a4,a5,0x12
   16f5c:	0007071b          	sext.w	a4,a4
   16f60:	07d7051b          	addiw	a0,a4,125
   16f64:	07c7061b          	addiw	a2,a4,124
   16f68:	0015151b          	slliw	a0,a0,0x1
   16f6c:	e31ff06f          	j	16d9c <_free_r+0x128>
   16f70:	0017e713          	ori	a4,a5,1
   16f74:	00e6b423          	sd	a4,8(a3)
   16f78:	00f686b3          	add	a3,a3,a5
   16f7c:	00f6b023          	sd	a5,0(a3)
   16f80:	de1ff06f          	j	16d60 <_free_r+0xec>

0000000000016f84 <__sfvwrite_r>:
   16f84:	01063783          	ld	a5,16(a2)
   16f88:	26078a63          	beqz	a5,171fc <__sfvwrite_r+0x278>
   16f8c:	0105d703          	lhu	a4,16(a1)
   16f90:	f9010113          	addi	sp,sp,-112
   16f94:	06813023          	sd	s0,96(sp)
   16f98:	03513c23          	sd	s5,56(sp)
   16f9c:	03613823          	sd	s6,48(sp)
   16fa0:	06113423          	sd	ra,104(sp)
   16fa4:	04913c23          	sd	s1,88(sp)
   16fa8:	05213823          	sd	s2,80(sp)
   16fac:	05313423          	sd	s3,72(sp)
   16fb0:	05413023          	sd	s4,64(sp)
   16fb4:	03713423          	sd	s7,40(sp)
   16fb8:	03813023          	sd	s8,32(sp)
   16fbc:	01913c23          	sd	s9,24(sp)
   16fc0:	01a13823          	sd	s10,16(sp)
   16fc4:	01b13423          	sd	s11,8(sp)
   16fc8:	00877793          	andi	a5,a4,8
   16fcc:	00058413          	mv	s0,a1
   16fd0:	00050b13          	mv	s6,a0
   16fd4:	00060a93          	mv	s5,a2
   16fd8:	0a078863          	beqz	a5,17088 <__sfvwrite_r+0x104>
   16fdc:	0185b783          	ld	a5,24(a1)
   16fe0:	0a078463          	beqz	a5,17088 <__sfvwrite_r+0x104>
   16fe4:	00277793          	andi	a5,a4,2
   16fe8:	000ab483          	ld	s1,0(s5)
   16fec:	0c078063          	beqz	a5,170ac <__sfvwrite_r+0x128>
   16ff0:	80000a37          	lui	s4,0x80000
   16ff4:	00000993          	li	s3,0
   16ff8:	00000913          	li	s2,0
   16ffc:	c00a4a13          	xori	s4,s4,-1024
   17000:	00098613          	mv	a2,s3
   17004:	000b0513          	mv	a0,s6
   17008:	1e090263          	beqz	s2,171ec <__sfvwrite_r+0x268>
   1700c:	00090693          	mv	a3,s2
   17010:	012a7463          	bleu	s2,s4,17018 <__sfvwrite_r+0x94>
   17014:	000a0693          	mv	a3,s4
   17018:	04043783          	ld	a5,64(s0)
   1701c:	03043583          	ld	a1,48(s0)
   17020:	0006869b          	sext.w	a3,a3
   17024:	000780e7          	jalr	a5
   17028:	22a05063          	blez	a0,17248 <__sfvwrite_r+0x2c4>
   1702c:	010ab783          	ld	a5,16(s5)
   17030:	00a989b3          	add	s3,s3,a0
   17034:	40a90933          	sub	s2,s2,a0
   17038:	40a78533          	sub	a0,a5,a0
   1703c:	00aab823          	sd	a0,16(s5)
   17040:	fc0510e3          	bnez	a0,17000 <__sfvwrite_r+0x7c>
   17044:	00000793          	li	a5,0
   17048:	06813083          	ld	ra,104(sp)
   1704c:	00078513          	mv	a0,a5
   17050:	06013403          	ld	s0,96(sp)
   17054:	05813483          	ld	s1,88(sp)
   17058:	05013903          	ld	s2,80(sp)
   1705c:	04813983          	ld	s3,72(sp)
   17060:	04013a03          	ld	s4,64(sp)
   17064:	03813a83          	ld	s5,56(sp)
   17068:	03013b03          	ld	s6,48(sp)
   1706c:	02813b83          	ld	s7,40(sp)
   17070:	02013c03          	ld	s8,32(sp)
   17074:	01813c83          	ld	s9,24(sp)
   17078:	01013d03          	ld	s10,16(sp)
   1707c:	00813d83          	ld	s11,8(sp)
   17080:	07010113          	addi	sp,sp,112
   17084:	00008067          	ret
   17088:	00040593          	mv	a1,s0
   1708c:	000b0513          	mv	a0,s6
   17090:	b1dfd0ef          	jal	14bac <__swsetup_r>
   17094:	fff00793          	li	a5,-1
   17098:	fa0518e3          	bnez	a0,17048 <__sfvwrite_r+0xc4>
   1709c:	01045703          	lhu	a4,16(s0)
   170a0:	000ab483          	ld	s1,0(s5)
   170a4:	00277793          	andi	a5,a4,2
   170a8:	f40794e3          	bnez	a5,16ff0 <__sfvwrite_r+0x6c>
   170ac:	00177793          	andi	a5,a4,1
   170b0:	1a079663          	bnez	a5,1725c <__sfvwrite_r+0x2d8>
   170b4:	80000bb7          	lui	s7,0x80000
   170b8:	ffebcc13          	xori	s8,s7,-2
   170bc:	00000c93          	li	s9,0
   170c0:	00000913          	li	s2,0
   170c4:	fffbcb93          	not	s7,s7
   170c8:	10090a63          	beqz	s2,171dc <__sfvwrite_r+0x258>
   170cc:	00c42983          	lw	s3,12(s0)
   170d0:	20077793          	andi	a5,a4,512
   170d4:	00098a13          	mv	s4,s3
   170d8:	26078863          	beqz	a5,17348 <__sfvwrite_r+0x3c4>
   170dc:	2b396a63          	bltu	s2,s3,17390 <__sfvwrite_r+0x40c>
   170e0:	48077793          	andi	a5,a4,1152
   170e4:	2a078663          	beqz	a5,17390 <__sfvwrite_r+0x40c>
   170e8:	02042a03          	lw	s4,32(s0)
   170ec:	01843583          	ld	a1,24(s0)
   170f0:	00043d03          	ld	s10,0(s0)
   170f4:	001a179b          	slliw	a5,s4,0x1
   170f8:	01478a3b          	addw	s4,a5,s4
   170fc:	01fa579b          	srliw	a5,s4,0x1f
   17100:	40bd0d3b          	subw	s10,s10,a1
   17104:	01478a3b          	addw	s4,a5,s4
   17108:	000d0993          	mv	s3,s10
   1710c:	401a5a1b          	sraiw	s4,s4,0x1
   17110:	00198793          	addi	a5,s3,1
   17114:	000a0613          	mv	a2,s4
   17118:	012787b3          	add	a5,a5,s2
   1711c:	00f67863          	bleu	a5,a2,1712c <__sfvwrite_r+0x1a8>
   17120:	001d0a1b          	addiw	s4,s10,1
   17124:	01490a3b          	addw	s4,s2,s4
   17128:	000a0613          	mv	a2,s4
   1712c:	40077713          	andi	a4,a4,1024
   17130:	2a070a63          	beqz	a4,173e4 <__sfvwrite_r+0x460>
   17134:	00060593          	mv	a1,a2
   17138:	000b0513          	mv	a0,s6
   1713c:	bf1f90ef          	jal	10d2c <_malloc_r>
   17140:	00050d93          	mv	s11,a0
   17144:	2e050263          	beqz	a0,17428 <__sfvwrite_r+0x4a4>
   17148:	01843583          	ld	a1,24(s0)
   1714c:	00098613          	mv	a2,s3
   17150:	b4cfa0ef          	jal	1149c <memcpy>
   17154:	01045783          	lhu	a5,16(s0)
   17158:	b7f7f793          	andi	a5,a5,-1153
   1715c:	0807e793          	ori	a5,a5,128
   17160:	00f41823          	sh	a5,16(s0)
   17164:	41aa0d3b          	subw	s10,s4,s10
   17168:	013d8533          	add	a0,s11,s3
   1716c:	03442023          	sw	s4,32(s0)
   17170:	01b43c23          	sd	s11,24(s0)
   17174:	00a43023          	sd	a0,0(s0)
   17178:	00090a13          	mv	s4,s2
   1717c:	01a42623          	sw	s10,12(s0)
   17180:	000a0d13          	mv	s10,s4
   17184:	00090993          	mv	s3,s2
   17188:	01497863          	bleu	s4,s2,17198 <__sfvwrite_r+0x214>
   1718c:	00090d13          	mv	s10,s2
   17190:	00090993          	mv	s3,s2
   17194:	00090a13          	mv	s4,s2
   17198:	000d0613          	mv	a2,s10
   1719c:	000c8593          	mv	a1,s9
   171a0:	1f1000ef          	jal	17b90 <memmove>
   171a4:	00c42783          	lw	a5,12(s0)
   171a8:	00043603          	ld	a2,0(s0)
   171ac:	41478a3b          	subw	s4,a5,s4
   171b0:	01a60633          	add	a2,a2,s10
   171b4:	01442623          	sw	s4,12(s0)
   171b8:	00c43023          	sd	a2,0(s0)
   171bc:	010ab503          	ld	a0,16(s5)
   171c0:	013c8cb3          	add	s9,s9,s3
   171c4:	41390933          	sub	s2,s2,s3
   171c8:	413509b3          	sub	s3,a0,s3
   171cc:	013ab823          	sd	s3,16(s5)
   171d0:	e6098ae3          	beqz	s3,17044 <__sfvwrite_r+0xc0>
   171d4:	01045703          	lhu	a4,16(s0)
   171d8:	ee091ae3          	bnez	s2,170cc <__sfvwrite_r+0x148>
   171dc:	0004bc83          	ld	s9,0(s1)
   171e0:	0084b903          	ld	s2,8(s1)
   171e4:	01048493          	addi	s1,s1,16
   171e8:	ee1ff06f          	j	170c8 <__sfvwrite_r+0x144>
   171ec:	0004b983          	ld	s3,0(s1)
   171f0:	0084b903          	ld	s2,8(s1)
   171f4:	01048493          	addi	s1,s1,16
   171f8:	e09ff06f          	j	17000 <__sfvwrite_r+0x7c>
   171fc:	00000793          	li	a5,0
   17200:	00078513          	mv	a0,a5
   17204:	00008067          	ret
   17208:	01397463          	bleu	s3,s2,17210 <__sfvwrite_r+0x28c>
   1720c:	00090993          	mv	s3,s2
   17210:	00098613          	mv	a2,s3
   17214:	000c8593          	mv	a1,s9
   17218:	179000ef          	jal	17b90 <memmove>
   1721c:	00c42783          	lw	a5,12(s0)
   17220:	00043703          	ld	a4,0(s0)
   17224:	413787bb          	subw	a5,a5,s3
   17228:	01370733          	add	a4,a4,s3
   1722c:	00f42623          	sw	a5,12(s0)
   17230:	00e43023          	sd	a4,0(s0)
   17234:	f80794e3          	bnez	a5,171bc <__sfvwrite_r+0x238>
   17238:	00040593          	mv	a1,s0
   1723c:	000b0513          	mv	a0,s6
   17240:	ac4ff0ef          	jal	16504 <_fflush_r>
   17244:	f6050ce3          	beqz	a0,171bc <__sfvwrite_r+0x238>
   17248:	01041783          	lh	a5,16(s0)
   1724c:	0407e793          	ori	a5,a5,64
   17250:	00f41823          	sh	a5,16(s0)
   17254:	fff00793          	li	a5,-1
   17258:	df1ff06f          	j	17048 <__sfvwrite_r+0xc4>
   1725c:	00000a13          	li	s4,0
   17260:	00000c13          	li	s8,0
   17264:	00000d13          	li	s10,0
   17268:	00000913          	li	s2,0
   1726c:	06090e63          	beqz	s2,172e8 <__sfvwrite_r+0x364>
   17270:	140c0863          	beqz	s8,173c0 <__sfvwrite_r+0x43c>
   17274:	000a0993          	mv	s3,s4
   17278:	01497463          	bleu	s4,s2,17280 <__sfvwrite_r+0x2fc>
   1727c:	00090993          	mv	s3,s2
   17280:	00043503          	ld	a0,0(s0)
   17284:	01843783          	ld	a5,24(s0)
   17288:	00098b93          	mv	s7,s3
   1728c:	02042683          	lw	a3,32(s0)
   17290:	00a7fa63          	bleu	a0,a5,172a4 <__sfvwrite_r+0x320>
   17294:	00c42c83          	lw	s9,12(s0)
   17298:	01968cbb          	addw	s9,a3,s9
   1729c:	000c8d93          	mv	s11,s9
   172a0:	053dce63          	blt	s11,s3,172fc <__sfvwrite_r+0x378>
   172a4:	0ed9ca63          	blt	s3,a3,17398 <__sfvwrite_r+0x414>
   172a8:	04043783          	ld	a5,64(s0)
   172ac:	03043583          	ld	a1,48(s0)
   172b0:	000d0613          	mv	a2,s10
   172b4:	000b0513          	mv	a0,s6
   172b8:	000780e7          	jalr	a5
   172bc:	00050b93          	mv	s7,a0
   172c0:	f8a054e3          	blez	a0,17248 <__sfvwrite_r+0x2c4>
   172c4:	417a0a3b          	subw	s4,s4,s7
   172c8:	060a0463          	beqz	s4,17330 <__sfvwrite_r+0x3ac>
   172cc:	010ab783          	ld	a5,16(s5)
   172d0:	017d0d33          	add	s10,s10,s7
   172d4:	41790933          	sub	s2,s2,s7
   172d8:	41778bb3          	sub	s7,a5,s7
   172dc:	017ab823          	sd	s7,16(s5)
   172e0:	d60b82e3          	beqz	s7,17044 <__sfvwrite_r+0xc0>
   172e4:	f80916e3          	bnez	s2,17270 <__sfvwrite_r+0x2ec>
   172e8:	0004bd03          	ld	s10,0(s1)
   172ec:	0084b903          	ld	s2,8(s1)
   172f0:	00000c13          	li	s8,0
   172f4:	01048493          	addi	s1,s1,16
   172f8:	f75ff06f          	j	1726c <__sfvwrite_r+0x2e8>
   172fc:	000d0593          	mv	a1,s10
   17300:	000c8613          	mv	a2,s9
   17304:	08d000ef          	jal	17b90 <memmove>
   17308:	00043783          	ld	a5,0(s0)
   1730c:	00040593          	mv	a1,s0
   17310:	000b0513          	mv	a0,s6
   17314:	01b78db3          	add	s11,a5,s11
   17318:	01b43023          	sd	s11,0(s0)
   1731c:	9e8ff0ef          	jal	16504 <_fflush_r>
   17320:	f20514e3          	bnez	a0,17248 <__sfvwrite_r+0x2c4>
   17324:	000c8b93          	mv	s7,s9
   17328:	417a0a3b          	subw	s4,s4,s7
   1732c:	fa0a10e3          	bnez	s4,172cc <__sfvwrite_r+0x348>
   17330:	00040593          	mv	a1,s0
   17334:	000b0513          	mv	a0,s6
   17338:	9ccff0ef          	jal	16504 <_fflush_r>
   1733c:	f00516e3          	bnez	a0,17248 <__sfvwrite_r+0x2c4>
   17340:	00000c13          	li	s8,0
   17344:	f89ff06f          	j	172cc <__sfvwrite_r+0x348>
   17348:	00043503          	ld	a0,0(s0)
   1734c:	01843783          	ld	a5,24(s0)
   17350:	eaa7ece3          	bltu	a5,a0,17208 <__sfvwrite_r+0x284>
   17354:	02042783          	lw	a5,32(s0)
   17358:	eaf968e3          	bltu	s2,a5,17208 <__sfvwrite_r+0x284>
   1735c:	000b8693          	mv	a3,s7
   17360:	012c6463          	bltu	s8,s2,17368 <__sfvwrite_r+0x3e4>
   17364:	0009069b          	sext.w	a3,s2
   17368:	02f6c6bb          	divw	a3,a3,a5
   1736c:	04043703          	ld	a4,64(s0)
   17370:	03043583          	ld	a1,48(s0)
   17374:	000c8613          	mv	a2,s9
   17378:	000b0513          	mv	a0,s6
   1737c:	02f686bb          	mulw	a3,a3,a5
   17380:	000700e7          	jalr	a4
   17384:	eca052e3          	blez	a0,17248 <__sfvwrite_r+0x2c4>
   17388:	00050993          	mv	s3,a0
   1738c:	e31ff06f          	j	171bc <__sfvwrite_r+0x238>
   17390:	00043503          	ld	a0,0(s0)
   17394:	dedff06f          	j	17180 <__sfvwrite_r+0x1fc>
   17398:	00098613          	mv	a2,s3
   1739c:	000d0593          	mv	a1,s10
   173a0:	7f0000ef          	jal	17b90 <memmove>
   173a4:	00c42703          	lw	a4,12(s0)
   173a8:	00043783          	ld	a5,0(s0)
   173ac:	4137073b          	subw	a4,a4,s3
   173b0:	013789b3          	add	s3,a5,s3
   173b4:	00e42623          	sw	a4,12(s0)
   173b8:	01343023          	sd	s3,0(s0)
   173bc:	f09ff06f          	j	172c4 <__sfvwrite_r+0x340>
   173c0:	00090613          	mv	a2,s2
   173c4:	00a00593          	li	a1,10
   173c8:	000d0513          	mv	a0,s10
   173cc:	6dc000ef          	jal	17aa8 <memchr>
   173d0:	04050663          	beqz	a0,1741c <__sfvwrite_r+0x498>
   173d4:	00150a13          	addi	s4,a0,1
   173d8:	41aa0a3b          	subw	s4,s4,s10
   173dc:	00100c13          	li	s8,1
   173e0:	e95ff06f          	j	17274 <__sfvwrite_r+0x2f0>
   173e4:	000b0513          	mv	a0,s6
   173e8:	209010ef          	jal	18df0 <_realloc_r>
   173ec:	00050d93          	mv	s11,a0
   173f0:	d6051ae3          	bnez	a0,17164 <__sfvwrite_r+0x1e0>
   173f4:	01843583          	ld	a1,24(s0)
   173f8:	000b0513          	mv	a0,s6
   173fc:	879ff0ef          	jal	16c74 <_free_r>
   17400:	01045783          	lhu	a5,16(s0)
   17404:	00c00713          	li	a4,12
   17408:	00eb2023          	sw	a4,0(s6)
   1740c:	f7f7f793          	andi	a5,a5,-129
   17410:	0107979b          	slliw	a5,a5,0x10
   17414:	4107d79b          	sraiw	a5,a5,0x10
   17418:	e35ff06f          	j	1724c <__sfvwrite_r+0x2c8>
   1741c:	00190a1b          	addiw	s4,s2,1
   17420:	00100c13          	li	s8,1
   17424:	e51ff06f          	j	17274 <__sfvwrite_r+0x2f0>
   17428:	00c00793          	li	a5,12
   1742c:	00fb2023          	sw	a5,0(s6)
   17430:	01041783          	lh	a5,16(s0)
   17434:	e19ff06f          	j	1724c <__sfvwrite_r+0x2c8>

0000000000017438 <_fwalk>:
   17438:	fc010113          	addi	sp,sp,-64
   1743c:	01513423          	sd	s5,8(sp)
   17440:	02113c23          	sd	ra,56(sp)
   17444:	02813823          	sd	s0,48(sp)
   17448:	02913423          	sd	s1,40(sp)
   1744c:	03213023          	sd	s2,32(sp)
   17450:	01313c23          	sd	s3,24(sp)
   17454:	01413823          	sd	s4,16(sp)
   17458:	01613023          	sd	s6,0(sp)
   1745c:	52050a93          	addi	s5,a0,1312
   17460:	080a8063          	beqz	s5,174e0 <_fwalk+0xa8>
   17464:	00058b13          	mv	s6,a1
   17468:	00000a13          	li	s4,0
   1746c:	00100993          	li	s3,1
   17470:	fff00913          	li	s2,-1
   17474:	008aa483          	lw	s1,8(s5)
   17478:	010ab403          	ld	s0,16(s5)
   1747c:	fff4849b          	addiw	s1,s1,-1
   17480:	0204c663          	bltz	s1,174ac <_fwalk+0x74>
   17484:	01045783          	lhu	a5,16(s0)
   17488:	fff4849b          	addiw	s1,s1,-1
   1748c:	00f9fc63          	bleu	a5,s3,174a4 <_fwalk+0x6c>
   17490:	01241783          	lh	a5,18(s0)
   17494:	00040513          	mv	a0,s0
   17498:	01278663          	beq	a5,s2,174a4 <_fwalk+0x6c>
   1749c:	000b00e7          	jalr	s6
   174a0:	00aa6a33          	or	s4,s4,a0
   174a4:	0b040413          	addi	s0,s0,176
   174a8:	fd249ee3          	bne	s1,s2,17484 <_fwalk+0x4c>
   174ac:	000aba83          	ld	s5,0(s5)
   174b0:	fc0a92e3          	bnez	s5,17474 <_fwalk+0x3c>
   174b4:	03813083          	ld	ra,56(sp)
   174b8:	000a0513          	mv	a0,s4
   174bc:	03013403          	ld	s0,48(sp)
   174c0:	02813483          	ld	s1,40(sp)
   174c4:	02013903          	ld	s2,32(sp)
   174c8:	01813983          	ld	s3,24(sp)
   174cc:	01013a03          	ld	s4,16(sp)
   174d0:	00813a83          	ld	s5,8(sp)
   174d4:	00013b03          	ld	s6,0(sp)
   174d8:	04010113          	addi	sp,sp,64
   174dc:	00008067          	ret
   174e0:	00000a13          	li	s4,0
   174e4:	fd1ff06f          	j	174b4 <_fwalk+0x7c>

00000000000174e8 <_fwalk_reent>:
   174e8:	fb010113          	addi	sp,sp,-80
   174ec:	01613823          	sd	s6,16(sp)
   174f0:	04113423          	sd	ra,72(sp)
   174f4:	04813023          	sd	s0,64(sp)
   174f8:	02913c23          	sd	s1,56(sp)
   174fc:	03213823          	sd	s2,48(sp)
   17500:	03313423          	sd	s3,40(sp)
   17504:	03413023          	sd	s4,32(sp)
   17508:	01513c23          	sd	s5,24(sp)
   1750c:	01713423          	sd	s7,8(sp)
   17510:	52050b13          	addi	s6,a0,1312
   17514:	080b0663          	beqz	s6,175a0 <_fwalk_reent+0xb8>
   17518:	00058b93          	mv	s7,a1
   1751c:	00050a93          	mv	s5,a0
   17520:	00000a13          	li	s4,0
   17524:	00100993          	li	s3,1
   17528:	fff00913          	li	s2,-1
   1752c:	008b2483          	lw	s1,8(s6)
   17530:	010b3403          	ld	s0,16(s6)
   17534:	fff4849b          	addiw	s1,s1,-1
   17538:	0204c863          	bltz	s1,17568 <_fwalk_reent+0x80>
   1753c:	01045783          	lhu	a5,16(s0)
   17540:	fff4849b          	addiw	s1,s1,-1
   17544:	00f9fe63          	bleu	a5,s3,17560 <_fwalk_reent+0x78>
   17548:	01241783          	lh	a5,18(s0)
   1754c:	00040593          	mv	a1,s0
   17550:	000a8513          	mv	a0,s5
   17554:	01278663          	beq	a5,s2,17560 <_fwalk_reent+0x78>
   17558:	000b80e7          	jalr	s7
   1755c:	00aa6a33          	or	s4,s4,a0
   17560:	0b040413          	addi	s0,s0,176
   17564:	fd249ce3          	bne	s1,s2,1753c <_fwalk_reent+0x54>
   17568:	000b3b03          	ld	s6,0(s6)
   1756c:	fc0b10e3          	bnez	s6,1752c <_fwalk_reent+0x44>
   17570:	04813083          	ld	ra,72(sp)
   17574:	000a0513          	mv	a0,s4
   17578:	04013403          	ld	s0,64(sp)
   1757c:	03813483          	ld	s1,56(sp)
   17580:	03013903          	ld	s2,48(sp)
   17584:	02813983          	ld	s3,40(sp)
   17588:	02013a03          	ld	s4,32(sp)
   1758c:	01813a83          	ld	s5,24(sp)
   17590:	01013b03          	ld	s6,16(sp)
   17594:	00813b83          	ld	s7,8(sp)
   17598:	05010113          	addi	sp,sp,80
   1759c:	00008067          	ret
   175a0:	00000a13          	li	s4,0
   175a4:	fcdff06f          	j	17570 <_fwalk_reent+0x88>

00000000000175a8 <iswspace>:
   175a8:	0ff00793          	li	a5,255
   175ac:	02a7e263          	bltu	a5,a0,175d0 <iswspace+0x28>
   175b0:	8281b783          	ld	a5,-2008(gp) # 24418 <__ctype_ptr__>
   175b4:	02051513          	slli	a0,a0,0x20
   175b8:	02055513          	srli	a0,a0,0x20
   175bc:	00a78533          	add	a0,a5,a0
   175c0:	00154503          	lbu	a0,1(a0)
   175c4:	00857513          	andi	a0,a0,8
   175c8:	0ff57513          	andi	a0,a0,255
   175cc:	00008067          	ret
   175d0:	00000513          	li	a0,0
   175d4:	00008067          	ret

00000000000175d8 <_setlocale_r>:
   175d8:	fe010113          	addi	sp,sp,-32
   175dc:	00913423          	sd	s1,8(sp)
   175e0:	00113c23          	sd	ra,24(sp)
   175e4:	00813823          	sd	s0,16(sp)
   175e8:	000224b7          	lui	s1,0x22
   175ec:	02060063          	beqz	a2,1760c <_setlocale_r+0x34>
   175f0:	000225b7          	lui	a1,0x22
   175f4:	d2058593          	addi	a1,a1,-736 # 21d20 <zeroes.4123+0x6f0>
   175f8:	00060513          	mv	a0,a2
   175fc:	00060413          	mv	s0,a2
   17600:	b24fa0ef          	jal	11924 <strcmp>
   17604:	000224b7          	lui	s1,0x22
   17608:	00051e63          	bnez	a0,17624 <_setlocale_r+0x4c>
   1760c:	c9048513          	addi	a0,s1,-880 # 21c90 <zeroes.4123+0x660>
   17610:	01813083          	ld	ra,24(sp)
   17614:	01013403          	ld	s0,16(sp)
   17618:	00813483          	ld	s1,8(sp)
   1761c:	02010113          	addi	sp,sp,32
   17620:	00008067          	ret
   17624:	c9048593          	addi	a1,s1,-880
   17628:	00040513          	mv	a0,s0
   1762c:	af8fa0ef          	jal	11924 <strcmp>
   17630:	fc050ee3          	beqz	a0,1760c <_setlocale_r+0x34>
   17634:	000225b7          	lui	a1,0x22
   17638:	82058593          	addi	a1,a1,-2016 # 21820 <zeroes.4123+0x1f0>
   1763c:	00040513          	mv	a0,s0
   17640:	ae4fa0ef          	jal	11924 <strcmp>
   17644:	fc0504e3          	beqz	a0,1760c <_setlocale_r+0x34>
   17648:	00000513          	li	a0,0
   1764c:	fc5ff06f          	j	17610 <_setlocale_r+0x38>

0000000000017650 <__locale_charset>:
   17650:	00024537          	lui	a0,0x24
   17654:	34850513          	addi	a0,a0,840 # 24348 <lc_ctype_charset>
   17658:	00008067          	ret

000000000001765c <__locale_mb_cur_max>:
   1765c:	8301a503          	lw	a0,-2000(gp) # 24420 <__mb_cur_max>
   17660:	00008067          	ret

0000000000017664 <__locale_msgcharset>:
   17664:	00024537          	lui	a0,0x24
   17668:	36850513          	addi	a0,a0,872 # 24368 <lc_message_charset>
   1766c:	00008067          	ret

0000000000017670 <__locale_cjk_lang>:
   17670:	00000513          	li	a0,0
   17674:	00008067          	ret

0000000000017678 <_localeconv_r>:
   17678:	00024537          	lui	a0,0x24
   1767c:	38850513          	addi	a0,a0,904 # 24388 <lconv>
   17680:	00008067          	ret

0000000000017684 <setlocale>:
   17684:	00058613          	mv	a2,a1
   17688:	00050593          	mv	a1,a0
   1768c:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   17690:	f49ff06f          	j	175d8 <_setlocale_r>

0000000000017694 <localeconv>:
   17694:	00024537          	lui	a0,0x24
   17698:	38850513          	addi	a0,a0,904 # 24388 <lconv>
   1769c:	00008067          	ret

00000000000176a0 <__smakebuf_r>:
   176a0:	01059783          	lh	a5,16(a1)
   176a4:	f5010113          	addi	sp,sp,-176
   176a8:	08913c23          	sd	s1,152(sp)
   176ac:	03079493          	slli	s1,a5,0x30
   176b0:	0304d493          	srli	s1,s1,0x30
   176b4:	0a113423          	sd	ra,168(sp)
   176b8:	0a813023          	sd	s0,160(sp)
   176bc:	09213823          	sd	s2,144(sp)
   176c0:	09313423          	sd	s3,136(sp)
   176c4:	0024f713          	andi	a4,s1,2
   176c8:	0e071063          	bnez	a4,177a8 <__smakebuf_r+0x108>
   176cc:	00050913          	mv	s2,a0
   176d0:	01259503          	lh	a0,18(a1)
   176d4:	00058413          	mv	s0,a1
   176d8:	04054c63          	bltz	a0,17730 <__smakebuf_r+0x90>
   176dc:	00010593          	mv	a1,sp
   176e0:	4b5080ef          	jal	20394 <fstat>
   176e4:	04054063          	bltz	a0,17724 <__smakebuf_r+0x84>
   176e8:	01012703          	lw	a4,16(sp)
   176ec:	0000f7b7          	lui	a5,0xf
   176f0:	ffffe9b7          	lui	s3,0xffffe
   176f4:	00f777b3          	and	a5,a4,a5
   176f8:	013789bb          	addw	s3,a5,s3
   176fc:	00008737          	lui	a4,0x8
   17700:	0019b993          	seqz	s3,s3
   17704:	0ce78a63          	beq	a5,a4,177d8 <__smakebuf_r+0x138>
   17708:	01045703          	lhu	a4,16(s0)
   1770c:	000017b7          	lui	a5,0x1
   17710:	8007879b          	addiw	a5,a5,-2048
   17714:	00f767b3          	or	a5,a4,a5
   17718:	00f41823          	sh	a5,16(s0)
   1771c:	40000493          	li	s1,1024
   17720:	0340006f          	j	17754 <__smakebuf_r+0xb4>
   17724:	01041783          	lh	a5,16(s0)
   17728:	03079493          	slli	s1,a5,0x30
   1772c:	0304d493          	srli	s1,s1,0x30
   17730:	03849493          	slli	s1,s1,0x38
   17734:	00001737          	lui	a4,0x1
   17738:	43f4d493          	srai	s1,s1,0x3f
   1773c:	8007071b          	addiw	a4,a4,-2048
   17740:	c404f493          	andi	s1,s1,-960
   17744:	00e7e7b3          	or	a5,a5,a4
   17748:	40048493          	addi	s1,s1,1024
   1774c:	00f41823          	sh	a5,16(s0)
   17750:	00000993          	li	s3,0
   17754:	00048593          	mv	a1,s1
   17758:	00090513          	mv	a0,s2
   1775c:	dd0f90ef          	jal	10d2c <_malloc_r>
   17760:	0c050063          	beqz	a0,17820 <__smakebuf_r+0x180>
   17764:	01045783          	lhu	a5,16(s0)
   17768:	00016737          	lui	a4,0x16
   1776c:	58870713          	addi	a4,a4,1416 # 16588 <_cleanup_r>
   17770:	04e93c23          	sd	a4,88(s2)
   17774:	0807e793          	ori	a5,a5,128
   17778:	00f41823          	sh	a5,16(s0)
   1777c:	00a43023          	sd	a0,0(s0)
   17780:	00a43c23          	sd	a0,24(s0)
   17784:	02942023          	sw	s1,32(s0)
   17788:	06099e63          	bnez	s3,17804 <__smakebuf_r+0x164>
   1778c:	0a813083          	ld	ra,168(sp)
   17790:	0a013403          	ld	s0,160(sp)
   17794:	09813483          	ld	s1,152(sp)
   17798:	09013903          	ld	s2,144(sp)
   1779c:	08813983          	ld	s3,136(sp)
   177a0:	0b010113          	addi	sp,sp,176
   177a4:	00008067          	ret
   177a8:	0a813083          	ld	ra,168(sp)
   177ac:	07758793          	addi	a5,a1,119
   177b0:	00f5b023          	sd	a5,0(a1)
   177b4:	00f5bc23          	sd	a5,24(a1)
   177b8:	00100793          	li	a5,1
   177bc:	0a013403          	ld	s0,160(sp)
   177c0:	09813483          	ld	s1,152(sp)
   177c4:	09013903          	ld	s2,144(sp)
   177c8:	08813983          	ld	s3,136(sp)
   177cc:	02f5a023          	sw	a5,32(a1)
   177d0:	0b010113          	addi	sp,sp,176
   177d4:	00008067          	ret
   177d8:	04843703          	ld	a4,72(s0)
   177dc:	0001a7b7          	lui	a5,0x1a
   177e0:	8d478793          	addi	a5,a5,-1836 # 198d4 <__sseek>
   177e4:	f2f712e3          	bne	a4,a5,17708 <__smakebuf_r+0x68>
   177e8:	01045783          	lhu	a5,16(s0)
   177ec:	40000713          	li	a4,1024
   177f0:	08e42423          	sw	a4,136(s0)
   177f4:	00e7e7b3          	or	a5,a5,a4
   177f8:	00f41823          	sh	a5,16(s0)
   177fc:	40000493          	li	s1,1024
   17800:	f55ff06f          	j	17754 <__smakebuf_r+0xb4>
   17804:	01241503          	lh	a0,18(s0)
   17808:	519080ef          	jal	20520 <isatty>
   1780c:	f80500e3          	beqz	a0,1778c <__smakebuf_r+0xec>
   17810:	01045783          	lhu	a5,16(s0)
   17814:	0017e793          	ori	a5,a5,1
   17818:	00f41823          	sh	a5,16(s0)
   1781c:	f71ff06f          	j	1778c <__smakebuf_r+0xec>
   17820:	01041783          	lh	a5,16(s0)
   17824:	2007f713          	andi	a4,a5,512
   17828:	f60712e3          	bnez	a4,1778c <__smakebuf_r+0xec>
   1782c:	0027e793          	ori	a5,a5,2
   17830:	07740713          	addi	a4,s0,119
   17834:	00f41823          	sh	a5,16(s0)
   17838:	00100793          	li	a5,1
   1783c:	00e43023          	sd	a4,0(s0)
   17840:	00e43c23          	sd	a4,24(s0)
   17844:	02f42023          	sw	a5,32(s0)
   17848:	f45ff06f          	j	1778c <__smakebuf_r+0xec>

000000000001784c <_mbrtowc_r>:
   1784c:	fc010113          	addi	sp,sp,-64
   17850:	02913423          	sd	s1,40(sp)
   17854:	03213023          	sd	s2,32(sp)
   17858:	02113c23          	sd	ra,56(sp)
   1785c:	02813823          	sd	s0,48(sp)
   17860:	01313c23          	sd	s3,24(sp)
   17864:	01413823          	sd	s4,16(sp)
   17868:	01513423          	sd	s5,8(sp)
   1786c:	00050493          	mv	s1,a0
   17870:	00070913          	mv	s2,a4
   17874:	06060c63          	beqz	a2,178ec <_mbrtowc_r+0xa0>
   17878:	8381ba83          	ld	s5,-1992(gp) # 24428 <__mbtowc>
   1787c:	00060413          	mv	s0,a2
   17880:	00058993          	mv	s3,a1
   17884:	00068a13          	mv	s4,a3
   17888:	dc9ff0ef          	jal	17650 <__locale_charset>
   1788c:	00090793          	mv	a5,s2
   17890:	00050713          	mv	a4,a0
   17894:	000a0693          	mv	a3,s4
   17898:	00040613          	mv	a2,s0
   1789c:	00098593          	mv	a1,s3
   178a0:	00048513          	mv	a0,s1
   178a4:	000a80e7          	jalr	s5
   178a8:	00050793          	mv	a5,a0
   178ac:	fff00713          	li	a4,-1
   178b0:	00078513          	mv	a0,a5
   178b4:	00e79a63          	bne	a5,a4,178c8 <_mbrtowc_r+0x7c>
   178b8:	00092023          	sw	zero,0(s2)
   178bc:	08a00793          	li	a5,138
   178c0:	00f4a023          	sw	a5,0(s1)
   178c4:	fff00513          	li	a0,-1
   178c8:	03813083          	ld	ra,56(sp)
   178cc:	03013403          	ld	s0,48(sp)
   178d0:	02813483          	ld	s1,40(sp)
   178d4:	02013903          	ld	s2,32(sp)
   178d8:	01813983          	ld	s3,24(sp)
   178dc:	01013a03          	ld	s4,16(sp)
   178e0:	00813a83          	ld	s5,8(sp)
   178e4:	04010113          	addi	sp,sp,64
   178e8:	00008067          	ret
   178ec:	8381b403          	ld	s0,-1992(gp) # 24428 <__mbtowc>
   178f0:	d61ff0ef          	jal	17650 <__locale_charset>
   178f4:	00022637          	lui	a2,0x22
   178f8:	00090793          	mv	a5,s2
   178fc:	00050713          	mv	a4,a0
   17900:	00100693          	li	a3,1
   17904:	82060613          	addi	a2,a2,-2016 # 21820 <zeroes.4123+0x1f0>
   17908:	00000593          	li	a1,0
   1790c:	00048513          	mv	a0,s1
   17910:	000400e7          	jalr	s0
   17914:	00050793          	mv	a5,a0
   17918:	f95ff06f          	j	178ac <_mbrtowc_r+0x60>

000000000001791c <mbrtowc>:
   1791c:	fc010113          	addi	sp,sp,-64
   17920:	02913423          	sd	s1,40(sp)
   17924:	03213023          	sd	s2,32(sp)
   17928:	02113c23          	sd	ra,56(sp)
   1792c:	02813823          	sd	s0,48(sp)
   17930:	01313c23          	sd	s3,24(sp)
   17934:	01413823          	sd	s4,16(sp)
   17938:	01513423          	sd	s5,8(sp)
   1793c:	00068913          	mv	s2,a3
   17940:	8101b483          	ld	s1,-2032(gp) # 24400 <_impure_ptr>
   17944:	06058c63          	beqz	a1,179bc <mbrtowc+0xa0>
   17948:	8381ba83          	ld	s5,-1992(gp) # 24428 <__mbtowc>
   1794c:	00058413          	mv	s0,a1
   17950:	00060a13          	mv	s4,a2
   17954:	00050993          	mv	s3,a0
   17958:	cf9ff0ef          	jal	17650 <__locale_charset>
   1795c:	00090793          	mv	a5,s2
   17960:	00050713          	mv	a4,a0
   17964:	000a0693          	mv	a3,s4
   17968:	00040613          	mv	a2,s0
   1796c:	00098593          	mv	a1,s3
   17970:	00048513          	mv	a0,s1
   17974:	000a80e7          	jalr	s5
   17978:	00050793          	mv	a5,a0
   1797c:	fff00713          	li	a4,-1
   17980:	00078513          	mv	a0,a5
   17984:	00e79a63          	bne	a5,a4,17998 <mbrtowc+0x7c>
   17988:	00092023          	sw	zero,0(s2)
   1798c:	08a00793          	li	a5,138
   17990:	00f4a023          	sw	a5,0(s1)
   17994:	fff00513          	li	a0,-1
   17998:	03813083          	ld	ra,56(sp)
   1799c:	03013403          	ld	s0,48(sp)
   179a0:	02813483          	ld	s1,40(sp)
   179a4:	02013903          	ld	s2,32(sp)
   179a8:	01813983          	ld	s3,24(sp)
   179ac:	01013a03          	ld	s4,16(sp)
   179b0:	00813a83          	ld	s5,8(sp)
   179b4:	04010113          	addi	sp,sp,64
   179b8:	00008067          	ret
   179bc:	8381b403          	ld	s0,-1992(gp) # 24428 <__mbtowc>
   179c0:	c91ff0ef          	jal	17650 <__locale_charset>
   179c4:	00022637          	lui	a2,0x22
   179c8:	00090793          	mv	a5,s2
   179cc:	00050713          	mv	a4,a0
   179d0:	00100693          	li	a3,1
   179d4:	82060613          	addi	a2,a2,-2016 # 21820 <zeroes.4123+0x1f0>
   179d8:	00000593          	li	a1,0
   179dc:	00048513          	mv	a0,s1
   179e0:	000400e7          	jalr	s0
   179e4:	00050793          	mv	a5,a0
   179e8:	f95ff06f          	j	1797c <mbrtowc+0x60>

00000000000179ec <__ascii_mbtowc>:
   179ec:	ff010113          	addi	sp,sp,-16
   179f0:	02058463          	beqz	a1,17a18 <__ascii_mbtowc+0x2c>
   179f4:	02060663          	beqz	a2,17a20 <__ascii_mbtowc+0x34>
   179f8:	ffe00513          	li	a0,-2
   179fc:	00068a63          	beqz	a3,17a10 <__ascii_mbtowc+0x24>
   17a00:	00064783          	lbu	a5,0(a2)
   17a04:	00f5a023          	sw	a5,0(a1)
   17a08:	00064503          	lbu	a0,0(a2)
   17a0c:	00a03533          	snez	a0,a0
   17a10:	01010113          	addi	sp,sp,16
   17a14:	00008067          	ret
   17a18:	00c10593          	addi	a1,sp,12
   17a1c:	fc061ee3          	bnez	a2,179f8 <__ascii_mbtowc+0xc>
   17a20:	00000513          	li	a0,0
   17a24:	01010113          	addi	sp,sp,16
   17a28:	00008067          	ret

0000000000017a2c <_mbtowc_r>:
   17a2c:	fc010113          	addi	sp,sp,-64
   17a30:	02813823          	sd	s0,48(sp)
   17a34:	8381b403          	ld	s0,-1992(gp) # 24428 <__mbtowc>
   17a38:	02113c23          	sd	ra,56(sp)
   17a3c:	02913423          	sd	s1,40(sp)
   17a40:	03213023          	sd	s2,32(sp)
   17a44:	01313c23          	sd	s3,24(sp)
   17a48:	01413823          	sd	s4,16(sp)
   17a4c:	01513423          	sd	s5,8(sp)
   17a50:	00050493          	mv	s1,a0
   17a54:	00070a93          	mv	s5,a4
   17a58:	00058913          	mv	s2,a1
   17a5c:	00060993          	mv	s3,a2
   17a60:	00068a13          	mv	s4,a3
   17a64:	bedff0ef          	jal	17650 <__locale_charset>
   17a68:	000a8793          	mv	a5,s5
   17a6c:	00050713          	mv	a4,a0
   17a70:	000a0693          	mv	a3,s4
   17a74:	00098613          	mv	a2,s3
   17a78:	00090593          	mv	a1,s2
   17a7c:	00048513          	mv	a0,s1
   17a80:	00040313          	mv	t1,s0
   17a84:	03813083          	ld	ra,56(sp)
   17a88:	03013403          	ld	s0,48(sp)
   17a8c:	02813483          	ld	s1,40(sp)
   17a90:	02013903          	ld	s2,32(sp)
   17a94:	01813983          	ld	s3,24(sp)
   17a98:	01013a03          	ld	s4,16(sp)
   17a9c:	00813a83          	ld	s5,8(sp)
   17aa0:	04010113          	addi	sp,sp,64
   17aa4:	00030067          	jr	t1

0000000000017aa8 <memchr>:
   17aa8:	00757793          	andi	a5,a0,7
   17aac:	0ff5f813          	andi	a6,a1,255
   17ab0:	0c078c63          	beqz	a5,17b88 <memchr+0xe0>
   17ab4:	fff60793          	addi	a5,a2,-1
   17ab8:	06060463          	beqz	a2,17b20 <memchr+0x78>
   17abc:	00054703          	lbu	a4,0(a0)
   17ac0:	07070263          	beq	a4,a6,17b24 <memchr+0x7c>
   17ac4:	00080693          	mv	a3,a6
   17ac8:	0140006f          	j	17adc <memchr+0x34>
   17acc:	04078a63          	beqz	a5,17b20 <memchr+0x78>
   17ad0:	00054703          	lbu	a4,0(a0)
   17ad4:	fff78793          	addi	a5,a5,-1
   17ad8:	04d70663          	beq	a4,a3,17b24 <memchr+0x7c>
   17adc:	00150513          	addi	a0,a0,1
   17ae0:	00757713          	andi	a4,a0,7
   17ae4:	fe0714e3          	bnez	a4,17acc <memchr+0x24>
   17ae8:	00700693          	li	a3,7
   17aec:	02f6ee63          	bltu	a3,a5,17b28 <memchr+0x80>
   17af0:	02078863          	beqz	a5,17b20 <memchr+0x78>
   17af4:	00054703          	lbu	a4,0(a0)
   17af8:	03070663          	beq	a4,a6,17b24 <memchr+0x7c>
   17afc:	00150713          	addi	a4,a0,1
   17b00:	00f507b3          	add	a5,a0,a5
   17b04:	00080613          	mv	a2,a6
   17b08:	0100006f          	j	17b18 <memchr+0x70>
   17b0c:	00170713          	addi	a4,a4,1
   17b10:	fff74683          	lbu	a3,-1(a4)
   17b14:	00c68863          	beq	a3,a2,17b24 <memchr+0x7c>
   17b18:	00070513          	mv	a0,a4
   17b1c:	fee798e3          	bne	a5,a4,17b0c <memchr+0x64>
   17b20:	00000513          	li	a0,0
   17b24:	00008067          	ret
   17b28:	0ff5f593          	andi	a1,a1,255
   17b2c:	0085971b          	slliw	a4,a1,0x8
   17b30:	00b765b3          	or	a1,a4,a1
   17b34:	00058713          	mv	a4,a1
   17b38:	01071613          	slli	a2,a4,0x10
   17b3c:	00c76733          	or	a4,a4,a2
   17b40:	00024637          	lui	a2,0x24
   17b44:	49863303          	ld	t1,1176(a2) # 24498 <mask+0x50>
   17b48:	00024637          	lui	a2,0x24
   17b4c:	4a063883          	ld	a7,1184(a2) # 244a0 <mask+0x58>
   17b50:	02071613          	slli	a2,a4,0x20
   17b54:	00e66633          	or	a2,a2,a4
   17b58:	00068593          	mv	a1,a3
   17b5c:	00053703          	ld	a4,0(a0)
   17b60:	00e64733          	xor	a4,a2,a4
   17b64:	006706b3          	add	a3,a4,t1
   17b68:	fff74713          	not	a4,a4
   17b6c:	00e6f733          	and	a4,a3,a4
   17b70:	01177733          	and	a4,a4,a7
   17b74:	f80710e3          	bnez	a4,17af4 <memchr+0x4c>
   17b78:	ff878793          	addi	a5,a5,-8
   17b7c:	00850513          	addi	a0,a0,8
   17b80:	fcf5eee3          	bltu	a1,a5,17b5c <memchr+0xb4>
   17b84:	f6dff06f          	j	17af0 <memchr+0x48>
   17b88:	00060793          	mv	a5,a2
   17b8c:	f5dff06f          	j	17ae8 <memchr+0x40>

0000000000017b90 <memmove>:
   17b90:	02a5f863          	bleu	a0,a1,17bc0 <memmove+0x30>
   17b94:	00c58733          	add	a4,a1,a2
   17b98:	02e57463          	bleu	a4,a0,17bc0 <memmove+0x30>
   17b9c:	00c507b3          	add	a5,a0,a2
   17ba0:	40c785b3          	sub	a1,a5,a2
   17ba4:	0e060263          	beqz	a2,17c88 <memmove+0xf8>
   17ba8:	fff70713          	addi	a4,a4,-1
   17bac:	00074683          	lbu	a3,0(a4)
   17bb0:	fff78793          	addi	a5,a5,-1
   17bb4:	00d78023          	sb	a3,0(a5)
   17bb8:	fef598e3          	bne	a1,a5,17ba8 <memmove+0x18>
   17bbc:	00008067          	ret
   17bc0:	01f00893          	li	a7,31
   17bc4:	0cc8f463          	bleu	a2,a7,17c8c <memmove+0xfc>
   17bc8:	00a5e7b3          	or	a5,a1,a0
   17bcc:	0077f793          	andi	a5,a5,7
   17bd0:	0c079463          	bnez	a5,17c98 <memmove+0x108>
   17bd4:	00058713          	mv	a4,a1
   17bd8:	00050793          	mv	a5,a0
   17bdc:	00060693          	mv	a3,a2
   17be0:	00073803          	ld	a6,0(a4)
   17be4:	02078793          	addi	a5,a5,32
   17be8:	02070713          	addi	a4,a4,32
   17bec:	ff07b023          	sd	a6,-32(a5)
   17bf0:	fe873803          	ld	a6,-24(a4)
   17bf4:	fe068693          	addi	a3,a3,-32
   17bf8:	ff07b423          	sd	a6,-24(a5)
   17bfc:	ff073803          	ld	a6,-16(a4)
   17c00:	ff07b823          	sd	a6,-16(a5)
   17c04:	ff873803          	ld	a6,-8(a4)
   17c08:	ff07bc23          	sd	a6,-8(a5)
   17c0c:	fcd8eae3          	bltu	a7,a3,17be0 <memmove+0x50>
   17c10:	fe060713          	addi	a4,a2,-32
   17c14:	fe077713          	andi	a4,a4,-32
   17c18:	02070713          	addi	a4,a4,32
   17c1c:	01f67e13          	andi	t3,a2,31
   17c20:	00700313          	li	t1,7
   17c24:	00e507b3          	add	a5,a0,a4
   17c28:	00e585b3          	add	a1,a1,a4
   17c2c:	07c37c63          	bleu	t3,t1,17ca4 <memmove+0x114>
   17c30:	00058813          	mv	a6,a1
   17c34:	00078693          	mv	a3,a5
   17c38:	000e0713          	mv	a4,t3
   17c3c:	00880813          	addi	a6,a6,8
   17c40:	ff883883          	ld	a7,-8(a6)
   17c44:	00868693          	addi	a3,a3,8
   17c48:	ff870713          	addi	a4,a4,-8
   17c4c:	ff16bc23          	sd	a7,-8(a3)
   17c50:	fee366e3          	bltu	t1,a4,17c3c <memmove+0xac>
   17c54:	ff8e0713          	addi	a4,t3,-8
   17c58:	ff877713          	andi	a4,a4,-8
   17c5c:	00870713          	addi	a4,a4,8
   17c60:	00767613          	andi	a2,a2,7
   17c64:	00e787b3          	add	a5,a5,a4
   17c68:	00e585b3          	add	a1,a1,a4
   17c6c:	02060a63          	beqz	a2,17ca0 <memmove+0x110>
   17c70:	00c78633          	add	a2,a5,a2
   17c74:	00158593          	addi	a1,a1,1
   17c78:	fff5c703          	lbu	a4,-1(a1)
   17c7c:	00178793          	addi	a5,a5,1
   17c80:	fee78fa3          	sb	a4,-1(a5)
   17c84:	fec798e3          	bne	a5,a2,17c74 <memmove+0xe4>
   17c88:	00008067          	ret
   17c8c:	00050793          	mv	a5,a0
   17c90:	fe0610e3          	bnez	a2,17c70 <memmove+0xe0>
   17c94:	00c0006f          	j	17ca0 <memmove+0x110>
   17c98:	00050793          	mv	a5,a0
   17c9c:	fd5ff06f          	j	17c70 <memmove+0xe0>
   17ca0:	00008067          	ret
   17ca4:	000e0613          	mv	a2,t3
   17ca8:	fc0614e3          	bnez	a2,17c70 <memmove+0xe0>
   17cac:	ff5ff06f          	j	17ca0 <memmove+0x110>

0000000000017cb0 <memset>:
   17cb0:	00f00813          	li	a6,15
   17cb4:	00050713          	mv	a4,a0
   17cb8:	02c87a63          	bleu	a2,a6,17cec <memset+0x3c>
   17cbc:	00f77793          	andi	a5,a4,15
   17cc0:	0a079063          	bnez	a5,17d60 <memset+0xb0>
   17cc4:	06059e63          	bnez	a1,17d40 <memset+0x90>
   17cc8:	ff067693          	andi	a3,a2,-16
   17ccc:	00f67613          	andi	a2,a2,15
   17cd0:	00e686b3          	add	a3,a3,a4
   17cd4:	00b73023          	sd	a1,0(a4)
   17cd8:	00b73423          	sd	a1,8(a4)
   17cdc:	01070713          	addi	a4,a4,16
   17ce0:	fed76ae3          	bltu	a4,a3,17cd4 <memset+0x24>
   17ce4:	00061463          	bnez	a2,17cec <memset+0x3c>
   17ce8:	00008067          	ret
   17cec:	40c806b3          	sub	a3,a6,a2
   17cf0:	00269693          	slli	a3,a3,0x2
   17cf4:	00000297          	auipc	t0,0x0
   17cf8:	005686b3          	add	a3,a3,t0
   17cfc:	00c68067          	jr	a3,12
   17d00:	00b70723          	sb	a1,14(a4)
   17d04:	00b706a3          	sb	a1,13(a4)
   17d08:	00b70623          	sb	a1,12(a4)
   17d0c:	00b705a3          	sb	a1,11(a4)
   17d10:	00b70523          	sb	a1,10(a4)
   17d14:	00b704a3          	sb	a1,9(a4)
   17d18:	00b70423          	sb	a1,8(a4)
   17d1c:	00b703a3          	sb	a1,7(a4)
   17d20:	00b70323          	sb	a1,6(a4)
   17d24:	00b702a3          	sb	a1,5(a4)
   17d28:	00b70223          	sb	a1,4(a4)
   17d2c:	00b701a3          	sb	a1,3(a4)
   17d30:	00b70123          	sb	a1,2(a4)
   17d34:	00b700a3          	sb	a1,1(a4)
   17d38:	00b70023          	sb	a1,0(a4)
   17d3c:	00008067          	ret
   17d40:	0ff5f593          	andi	a1,a1,255
   17d44:	00859693          	slli	a3,a1,0x8
   17d48:	00d5e5b3          	or	a1,a1,a3
   17d4c:	01059693          	slli	a3,a1,0x10
   17d50:	00d5e5b3          	or	a1,a1,a3
   17d54:	02059693          	slli	a3,a1,0x20
   17d58:	00d5e5b3          	or	a1,a1,a3
   17d5c:	f6dff06f          	j	17cc8 <memset+0x18>
   17d60:	00279693          	slli	a3,a5,0x2
   17d64:	00000297          	auipc	t0,0x0
   17d68:	005686b3          	add	a3,a3,t0
   17d6c:	00008293          	mv	t0,ra
   17d70:	f98680e7          	jalr	a3,-104
   17d74:	00028093          	mv	ra,t0
   17d78:	ff078793          	addi	a5,a5,-16
   17d7c:	40f70733          	sub	a4,a4,a5
   17d80:	00f60633          	add	a2,a2,a5
   17d84:	f6c874e3          	bleu	a2,a6,17cec <memset+0x3c>
   17d88:	f3dff06f          	j	17cc4 <memset+0x14>

0000000000017d8c <_Balloc>:
   17d8c:	07853783          	ld	a5,120(a0)
   17d90:	fe010113          	addi	sp,sp,-32
   17d94:	00813823          	sd	s0,16(sp)
   17d98:	00913423          	sd	s1,8(sp)
   17d9c:	00113c23          	sd	ra,24(sp)
   17da0:	01213023          	sd	s2,0(sp)
   17da4:	00050413          	mv	s0,a0
   17da8:	00058493          	mv	s1,a1
   17dac:	02078e63          	beqz	a5,17de8 <_Balloc+0x5c>
   17db0:	00349513          	slli	a0,s1,0x3
   17db4:	00a787b3          	add	a5,a5,a0
   17db8:	0007b503          	ld	a0,0(a5)
   17dbc:	04050663          	beqz	a0,17e08 <_Balloc+0x7c>
   17dc0:	00053703          	ld	a4,0(a0)
   17dc4:	00e7b023          	sd	a4,0(a5)
   17dc8:	00052a23          	sw	zero,20(a0)
   17dcc:	00052823          	sw	zero,16(a0)
   17dd0:	01813083          	ld	ra,24(sp)
   17dd4:	01013403          	ld	s0,16(sp)
   17dd8:	00813483          	ld	s1,8(sp)
   17ddc:	00013903          	ld	s2,0(sp)
   17de0:	02010113          	addi	sp,sp,32
   17de4:	00008067          	ret
   17de8:	04100613          	li	a2,65
   17dec:	00800593          	li	a1,8
   17df0:	388060ef          	jal	1e178 <_calloc_r>
   17df4:	06a43c23          	sd	a0,120(s0)
   17df8:	00050793          	mv	a5,a0
   17dfc:	fa051ae3          	bnez	a0,17db0 <_Balloc+0x24>
   17e00:	00000513          	li	a0,0
   17e04:	fcdff06f          	j	17dd0 <_Balloc+0x44>
   17e08:	00100913          	li	s2,1
   17e0c:	0099193b          	sllw	s2,s2,s1
   17e10:	fff9061b          	addiw	a2,s2,-1
   17e14:	00860613          	addi	a2,a2,8
   17e18:	00261613          	slli	a2,a2,0x2
   17e1c:	00100593          	li	a1,1
   17e20:	00040513          	mv	a0,s0
   17e24:	354060ef          	jal	1e178 <_calloc_r>
   17e28:	fc050ce3          	beqz	a0,17e00 <_Balloc+0x74>
   17e2c:	00952423          	sw	s1,8(a0)
   17e30:	01252623          	sw	s2,12(a0)
   17e34:	f95ff06f          	j	17dc8 <_Balloc+0x3c>

0000000000017e38 <_Bfree>:
   17e38:	02058063          	beqz	a1,17e58 <_Bfree+0x20>
   17e3c:	0085a783          	lw	a5,8(a1)
   17e40:	07853703          	ld	a4,120(a0)
   17e44:	00379793          	slli	a5,a5,0x3
   17e48:	00f707b3          	add	a5,a4,a5
   17e4c:	0007b703          	ld	a4,0(a5)
   17e50:	00e5b023          	sd	a4,0(a1)
   17e54:	00b7b023          	sd	a1,0(a5)
   17e58:	00008067          	ret

0000000000017e5c <__multadd>:
   17e5c:	fc010113          	addi	sp,sp,-64
   17e60:	00010837          	lui	a6,0x10
   17e64:	02813823          	sd	s0,48(sp)
   17e68:	02913423          	sd	s1,40(sp)
   17e6c:	03213023          	sd	s2,32(sp)
   17e70:	00058493          	mv	s1,a1
   17e74:	0145a403          	lw	s0,20(a1)
   17e78:	00050913          	mv	s2,a0
   17e7c:	02113c23          	sd	ra,56(sp)
   17e80:	01313c23          	sd	s3,24(sp)
   17e84:	01858593          	addi	a1,a1,24
   17e88:	00000513          	li	a0,0
   17e8c:	fff8081b          	addiw	a6,a6,-1
   17e90:	0005a783          	lw	a5,0(a1)
   17e94:	00458593          	addi	a1,a1,4
   17e98:	0015051b          	addiw	a0,a0,1
   17e9c:	0107f733          	and	a4,a5,a6
   17ea0:	02c7073b          	mulw	a4,a4,a2
   17ea4:	0107d79b          	srliw	a5,a5,0x10
   17ea8:	02c787bb          	mulw	a5,a5,a2
   17eac:	00d7073b          	addw	a4,a4,a3
   17eb0:	0107569b          	srliw	a3,a4,0x10
   17eb4:	01077733          	and	a4,a4,a6
   17eb8:	00d786bb          	addw	a3,a5,a3
   17ebc:	0106979b          	slliw	a5,a3,0x10
   17ec0:	00e7873b          	addw	a4,a5,a4
   17ec4:	fee5ae23          	sw	a4,-4(a1)
   17ec8:	0106d69b          	srliw	a3,a3,0x10
   17ecc:	fc8542e3          	blt	a0,s0,17e90 <__multadd+0x34>
   17ed0:	02068263          	beqz	a3,17ef4 <__multadd+0x98>
   17ed4:	00c4a783          	lw	a5,12(s1)
   17ed8:	02f45e63          	ble	a5,s0,17f14 <__multadd+0xb8>
   17edc:	00440793          	addi	a5,s0,4
   17ee0:	00279793          	slli	a5,a5,0x2
   17ee4:	00f487b3          	add	a5,s1,a5
   17ee8:	00d7a423          	sw	a3,8(a5)
   17eec:	0014041b          	addiw	s0,s0,1
   17ef0:	0084aa23          	sw	s0,20(s1)
   17ef4:	03813083          	ld	ra,56(sp)
   17ef8:	00048513          	mv	a0,s1
   17efc:	03013403          	ld	s0,48(sp)
   17f00:	02813483          	ld	s1,40(sp)
   17f04:	02013903          	ld	s2,32(sp)
   17f08:	01813983          	ld	s3,24(sp)
   17f0c:	04010113          	addi	sp,sp,64
   17f10:	00008067          	ret
   17f14:	0084a583          	lw	a1,8(s1)
   17f18:	00090513          	mv	a0,s2
   17f1c:	00d13423          	sd	a3,8(sp)
   17f20:	0015859b          	addiw	a1,a1,1
   17f24:	e69ff0ef          	jal	17d8c <_Balloc>
   17f28:	0144a603          	lw	a2,20(s1)
   17f2c:	00050993          	mv	s3,a0
   17f30:	01048593          	addi	a1,s1,16
   17f34:	00260613          	addi	a2,a2,2
   17f38:	01050513          	addi	a0,a0,16
   17f3c:	00261613          	slli	a2,a2,0x2
   17f40:	d5cf90ef          	jal	1149c <memcpy>
   17f44:	0084a703          	lw	a4,8(s1)
   17f48:	07893783          	ld	a5,120(s2)
   17f4c:	00813683          	ld	a3,8(sp)
   17f50:	00371713          	slli	a4,a4,0x3
   17f54:	00e787b3          	add	a5,a5,a4
   17f58:	0007b703          	ld	a4,0(a5)
   17f5c:	00e4b023          	sd	a4,0(s1)
   17f60:	0097b023          	sd	s1,0(a5)
   17f64:	00098493          	mv	s1,s3
   17f68:	f75ff06f          	j	17edc <__multadd+0x80>

0000000000017f6c <__s2b>:
   17f6c:	fc010113          	addi	sp,sp,-64
   17f70:	0086879b          	addiw	a5,a3,8
   17f74:	03213023          	sd	s2,32(sp)
   17f78:	00068913          	mv	s2,a3
   17f7c:	00900693          	li	a3,9
   17f80:	02d7c6bb          	divw	a3,a5,a3
   17f84:	02813823          	sd	s0,48(sp)
   17f88:	02913423          	sd	s1,40(sp)
   17f8c:	01313c23          	sd	s3,24(sp)
   17f90:	01413823          	sd	s4,16(sp)
   17f94:	02113c23          	sd	ra,56(sp)
   17f98:	01513423          	sd	s5,8(sp)
   17f9c:	01613023          	sd	s6,0(sp)
   17fa0:	00100793          	li	a5,1
   17fa4:	00058413          	mv	s0,a1
   17fa8:	00050993          	mv	s3,a0
   17fac:	00060a13          	mv	s4,a2
   17fb0:	00070493          	mv	s1,a4
   17fb4:	00000593          	li	a1,0
   17fb8:	00d7d863          	ble	a3,a5,17fc8 <__s2b+0x5c>
   17fbc:	0017979b          	slliw	a5,a5,0x1
   17fc0:	0015859b          	addiw	a1,a1,1
   17fc4:	fed7cce3          	blt	a5,a3,17fbc <__s2b+0x50>
   17fc8:	00098513          	mv	a0,s3
   17fcc:	dc1ff0ef          	jal	17d8c <_Balloc>
   17fd0:	00100793          	li	a5,1
   17fd4:	00f52a23          	sw	a5,20(a0)
   17fd8:	00952c23          	sw	s1,24(a0)
   17fdc:	00900793          	li	a5,9
   17fe0:	0b47d663          	ble	s4,a5,1808c <__s2b+0x120>
   17fe4:	ff6a0b1b          	addiw	s6,s4,-10
   17fe8:	020b1b13          	slli	s6,s6,0x20
   17fec:	020b5b13          	srli	s6,s6,0x20
   17ff0:	00940a93          	addi	s5,s0,9
   17ff4:	00ab0793          	addi	a5,s6,10
   17ff8:	00f40433          	add	s0,s0,a5
   17ffc:	000a8493          	mv	s1,s5
   18000:	00148493          	addi	s1,s1,1
   18004:	fff4c683          	lbu	a3,-1(s1)
   18008:	00050593          	mv	a1,a0
   1800c:	00a00613          	li	a2,10
   18010:	fd06869b          	addiw	a3,a3,-48
   18014:	00098513          	mv	a0,s3
   18018:	e45ff0ef          	jal	17e5c <__multadd>
   1801c:	fe8492e3          	bne	s1,s0,18000 <__s2b+0x94>
   18020:	016a8433          	add	s0,s5,s6
   18024:	00240413          	addi	s0,s0,2
   18028:	032a5e63          	ble	s2,s4,18064 <__s2b+0xf8>
   1802c:	fff9091b          	addiw	s2,s2,-1
   18030:	414904bb          	subw	s1,s2,s4
   18034:	02049493          	slli	s1,s1,0x20
   18038:	0204d493          	srli	s1,s1,0x20
   1803c:	00148493          	addi	s1,s1,1
   18040:	009404b3          	add	s1,s0,s1
   18044:	00140413          	addi	s0,s0,1
   18048:	fff44683          	lbu	a3,-1(s0)
   1804c:	00050593          	mv	a1,a0
   18050:	00a00613          	li	a2,10
   18054:	fd06869b          	addiw	a3,a3,-48
   18058:	00098513          	mv	a0,s3
   1805c:	e01ff0ef          	jal	17e5c <__multadd>
   18060:	fe9412e3          	bne	s0,s1,18044 <__s2b+0xd8>
   18064:	03813083          	ld	ra,56(sp)
   18068:	03013403          	ld	s0,48(sp)
   1806c:	02813483          	ld	s1,40(sp)
   18070:	02013903          	ld	s2,32(sp)
   18074:	01813983          	ld	s3,24(sp)
   18078:	01013a03          	ld	s4,16(sp)
   1807c:	00813a83          	ld	s5,8(sp)
   18080:	00013b03          	ld	s6,0(sp)
   18084:	04010113          	addi	sp,sp,64
   18088:	00008067          	ret
   1808c:	00a40413          	addi	s0,s0,10
   18090:	00078a13          	mv	s4,a5
   18094:	f95ff06f          	j	18028 <__s2b+0xbc>

0000000000018098 <__hi0bits>:
   18098:	ffff06b7          	lui	a3,0xffff0
   1809c:	00d576b3          	and	a3,a0,a3
   180a0:	00050793          	mv	a5,a0
   180a4:	00000713          	li	a4,0
   180a8:	00069663          	bnez	a3,180b4 <__hi0bits+0x1c>
   180ac:	0105179b          	slliw	a5,a0,0x10
   180b0:	01000713          	li	a4,16
   180b4:	ff0006b7          	lui	a3,0xff000
   180b8:	00d7f6b3          	and	a3,a5,a3
   180bc:	00069663          	bnez	a3,180c8 <__hi0bits+0x30>
   180c0:	0087071b          	addiw	a4,a4,8
   180c4:	0087979b          	slliw	a5,a5,0x8
   180c8:	f00006b7          	lui	a3,0xf0000
   180cc:	00d7f6b3          	and	a3,a5,a3
   180d0:	00069663          	bnez	a3,180dc <__hi0bits+0x44>
   180d4:	0047071b          	addiw	a4,a4,4
   180d8:	0047979b          	slliw	a5,a5,0x4
   180dc:	c00006b7          	lui	a3,0xc0000
   180e0:	00d7f6b3          	and	a3,a5,a3
   180e4:	00069663          	bnez	a3,180f0 <__hi0bits+0x58>
   180e8:	0027071b          	addiw	a4,a4,2
   180ec:	0027979b          	slliw	a5,a5,0x2
   180f0:	0007ce63          	bltz	a5,1810c <__hi0bits+0x74>
   180f4:	02179693          	slli	a3,a5,0x21
   180f8:	02000513          	li	a0,32
   180fc:	0006c463          	bltz	a3,18104 <__hi0bits+0x6c>
   18100:	00008067          	ret
   18104:	0017051b          	addiw	a0,a4,1
   18108:	00008067          	ret
   1810c:	00070513          	mv	a0,a4
   18110:	00008067          	ret

0000000000018114 <__lo0bits>:
   18114:	00052783          	lw	a5,0(a0)
   18118:	00050693          	mv	a3,a0
   1811c:	0077f713          	andi	a4,a5,7
   18120:	02070463          	beqz	a4,18148 <__lo0bits+0x34>
   18124:	0017f713          	andi	a4,a5,1
   18128:	00000513          	li	a0,0
   1812c:	08071263          	bnez	a4,181b0 <__lo0bits+0x9c>
   18130:	0027f713          	andi	a4,a5,2
   18134:	08071063          	bnez	a4,181b4 <__lo0bits+0xa0>
   18138:	0027d79b          	srliw	a5,a5,0x2
   1813c:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_end+0xffffffffbffd9238>
   18140:	00200513          	li	a0,2
   18144:	00008067          	ret
   18148:	0107961b          	slliw	a2,a5,0x10
   1814c:	0106561b          	srliw	a2,a2,0x10
   18150:	00000713          	li	a4,0
   18154:	00061663          	bnez	a2,18160 <__lo0bits+0x4c>
   18158:	0107d79b          	srliw	a5,a5,0x10
   1815c:	01000713          	li	a4,16
   18160:	0ff7f613          	andi	a2,a5,255
   18164:	00061663          	bnez	a2,18170 <__lo0bits+0x5c>
   18168:	0087071b          	addiw	a4,a4,8
   1816c:	0087d79b          	srliw	a5,a5,0x8
   18170:	00f7f613          	andi	a2,a5,15
   18174:	00061663          	bnez	a2,18180 <__lo0bits+0x6c>
   18178:	0047071b          	addiw	a4,a4,4
   1817c:	0047d79b          	srliw	a5,a5,0x4
   18180:	0037f613          	andi	a2,a5,3
   18184:	00061663          	bnez	a2,18190 <__lo0bits+0x7c>
   18188:	0027071b          	addiw	a4,a4,2
   1818c:	0027d79b          	srliw	a5,a5,0x2
   18190:	0017f613          	andi	a2,a5,1
   18194:	00061a63          	bnez	a2,181a8 <__lo0bits+0x94>
   18198:	0017d79b          	srliw	a5,a5,0x1
   1819c:	02000513          	li	a0,32
   181a0:	00078863          	beqz	a5,181b0 <__lo0bits+0x9c>
   181a4:	0017071b          	addiw	a4,a4,1
   181a8:	00f6a023          	sw	a5,0(a3)
   181ac:	00070513          	mv	a0,a4
   181b0:	00008067          	ret
   181b4:	0017d79b          	srliw	a5,a5,0x1
   181b8:	00f6a023          	sw	a5,0(a3)
   181bc:	00100513          	li	a0,1
   181c0:	00008067          	ret

00000000000181c4 <__i2b>:
   181c4:	ff010113          	addi	sp,sp,-16
   181c8:	00813023          	sd	s0,0(sp)
   181cc:	00058413          	mv	s0,a1
   181d0:	00100593          	li	a1,1
   181d4:	00113423          	sd	ra,8(sp)
   181d8:	bb5ff0ef          	jal	17d8c <_Balloc>
   181dc:	00813083          	ld	ra,8(sp)
   181e0:	00100713          	li	a4,1
   181e4:	00852c23          	sw	s0,24(a0)
   181e8:	00e52a23          	sw	a4,20(a0)
   181ec:	00013403          	ld	s0,0(sp)
   181f0:	01010113          	addi	sp,sp,16
   181f4:	00008067          	ret

00000000000181f8 <__multiply>:
   181f8:	fd010113          	addi	sp,sp,-48
   181fc:	01313423          	sd	s3,8(sp)
   18200:	01413023          	sd	s4,0(sp)
   18204:	0145a983          	lw	s3,20(a1)
   18208:	01462a03          	lw	s4,20(a2)
   1820c:	00913c23          	sd	s1,24(sp)
   18210:	01213823          	sd	s2,16(sp)
   18214:	02113423          	sd	ra,40(sp)
   18218:	02813023          	sd	s0,32(sp)
   1821c:	00058913          	mv	s2,a1
   18220:	00060493          	mv	s1,a2
   18224:	0149dc63          	ble	s4,s3,1823c <__multiply+0x44>
   18228:	00098713          	mv	a4,s3
   1822c:	00060913          	mv	s2,a2
   18230:	000a0993          	mv	s3,s4
   18234:	00058493          	mv	s1,a1
   18238:	00070a13          	mv	s4,a4
   1823c:	00c92783          	lw	a5,12(s2)
   18240:	00892583          	lw	a1,8(s2)
   18244:	0149843b          	addw	s0,s3,s4
   18248:	0087a7b3          	slt	a5,a5,s0
   1824c:	00f585bb          	addw	a1,a1,a5
   18250:	b3dff0ef          	jal	17d8c <_Balloc>
   18254:	00040893          	mv	a7,s0
   18258:	01850313          	addi	t1,a0,24
   1825c:	00289893          	slli	a7,a7,0x2
   18260:	011308b3          	add	a7,t1,a7
   18264:	00030793          	mv	a5,t1
   18268:	01137863          	bleu	a7,t1,18278 <__multiply+0x80>
   1826c:	0007a023          	sw	zero,0(a5)
   18270:	00478793          	addi	a5,a5,4
   18274:	ff17ece3          	bltu	a5,a7,1826c <__multiply+0x74>
   18278:	01848613          	addi	a2,s1,24
   1827c:	002a1e13          	slli	t3,s4,0x2
   18280:	01890e93          	addi	t4,s2,24
   18284:	00299813          	slli	a6,s3,0x2
   18288:	000105b7          	lui	a1,0x10
   1828c:	01c60e33          	add	t3,a2,t3
   18290:	010e8833          	add	a6,t4,a6
   18294:	fff5859b          	addiw	a1,a1,-1
   18298:	11c67463          	bleu	t3,a2,183a0 <__multiply+0x1a8>
   1829c:	00062383          	lw	t2,0(a2)
   182a0:	00b3f4b3          	and	s1,t2,a1
   182a4:	06048a63          	beqz	s1,18318 <__multiply+0x120>
   182a8:	00030293          	mv	t0,t1
   182ac:	000e8f93          	mv	t6,t4
   182b0:	00000793          	li	a5,0
   182b4:	0080006f          	j	182bc <__multiply+0xc4>
   182b8:	00038293          	mv	t0,t2
   182bc:	000fa683          	lw	a3,0(t6)
   182c0:	0002af03          	lw	t5,0(t0) # 17d64 <memset+0xb4>
   182c4:	00428393          	addi	t2,t0,4
   182c8:	00b6f733          	and	a4,a3,a1
   182cc:	0297073b          	mulw	a4,a4,s1
   182d0:	0106d69b          	srliw	a3,a3,0x10
   182d4:	00bf7933          	and	s2,t5,a1
   182d8:	010f5f1b          	srliw	t5,t5,0x10
   182dc:	004f8f93          	addi	t6,t6,4
   182e0:	029686bb          	mulw	a3,a3,s1
   182e4:	0127073b          	addw	a4,a4,s2
   182e8:	00f707bb          	addw	a5,a4,a5
   182ec:	0107d71b          	srliw	a4,a5,0x10
   182f0:	00b7f7b3          	and	a5,a5,a1
   182f4:	01e686bb          	addw	a3,a3,t5
   182f8:	00e6873b          	addw	a4,a3,a4
   182fc:	0107169b          	slliw	a3,a4,0x10
   18300:	00f6e7b3          	or	a5,a3,a5
   18304:	fef3ae23          	sw	a5,-4(t2)
   18308:	0107579b          	srliw	a5,a4,0x10
   1830c:	fb0fe6e3          	bltu	t6,a6,182b8 <__multiply+0xc0>
   18310:	00f2a223          	sw	a5,4(t0)
   18314:	00062383          	lw	t2,0(a2)
   18318:	0103d39b          	srliw	t2,t2,0x10
   1831c:	06038c63          	beqz	t2,18394 <__multiply+0x19c>
   18320:	00032783          	lw	a5,0(t1) # 10000 <_ftext>
   18324:	00030293          	mv	t0,t1
   18328:	000e8f93          	mv	t6,t4
   1832c:	00078f13          	mv	t5,a5
   18330:	00000693          	li	a3,0
   18334:	0080006f          	j	1833c <__multiply+0x144>
   18338:	00048293          	mv	t0,s1
   1833c:	000fa703          	lw	a4,0(t6)
   18340:	010f5f1b          	srliw	t5,t5,0x10
   18344:	00b7f7b3          	and	a5,a5,a1
   18348:	00b77733          	and	a4,a4,a1
   1834c:	0277073b          	mulw	a4,a4,t2
   18350:	00428493          	addi	s1,t0,4
   18354:	004f8f93          	addi	t6,t6,4
   18358:	01e7073b          	addw	a4,a4,t5
   1835c:	00d706bb          	addw	a3,a4,a3
   18360:	0106971b          	slliw	a4,a3,0x10
   18364:	00f767b3          	or	a5,a4,a5
   18368:	fef4ae23          	sw	a5,-4(s1)
   1836c:	ffefd703          	lhu	a4,-2(t6)
   18370:	0042af03          	lw	t5,4(t0)
   18374:	0106d69b          	srliw	a3,a3,0x10
   18378:	0277073b          	mulw	a4,a4,t2
   1837c:	00bf77b3          	and	a5,t5,a1
   18380:	00f707bb          	addw	a5,a4,a5
   18384:	00d787bb          	addw	a5,a5,a3
   18388:	0107d69b          	srliw	a3,a5,0x10
   1838c:	fb0fe6e3          	bltu	t6,a6,18338 <__multiply+0x140>
   18390:	00f2a223          	sw	a5,4(t0)
   18394:	00460613          	addi	a2,a2,4
   18398:	00430313          	addi	t1,t1,4
   1839c:	f1c660e3          	bltu	a2,t3,1829c <__multiply+0xa4>
   183a0:	02805463          	blez	s0,183c8 <__multiply+0x1d0>
   183a4:	ffc8a783          	lw	a5,-4(a7)
   183a8:	ffc88893          	addi	a7,a7,-4
   183ac:	00078863          	beqz	a5,183bc <__multiply+0x1c4>
   183b0:	0180006f          	j	183c8 <__multiply+0x1d0>
   183b4:	0008a783          	lw	a5,0(a7)
   183b8:	00079863          	bnez	a5,183c8 <__multiply+0x1d0>
   183bc:	fff4041b          	addiw	s0,s0,-1
   183c0:	ffc88893          	addi	a7,a7,-4
   183c4:	fe0418e3          	bnez	s0,183b4 <__multiply+0x1bc>
   183c8:	02813083          	ld	ra,40(sp)
   183cc:	00852a23          	sw	s0,20(a0)
   183d0:	01813483          	ld	s1,24(sp)
   183d4:	02013403          	ld	s0,32(sp)
   183d8:	01013903          	ld	s2,16(sp)
   183dc:	00813983          	ld	s3,8(sp)
   183e0:	00013a03          	ld	s4,0(sp)
   183e4:	03010113          	addi	sp,sp,48
   183e8:	00008067          	ret

00000000000183ec <__pow5mult>:
   183ec:	fd010113          	addi	sp,sp,-48
   183f0:	02813023          	sd	s0,32(sp)
   183f4:	01213823          	sd	s2,16(sp)
   183f8:	01313423          	sd	s3,8(sp)
   183fc:	02113423          	sd	ra,40(sp)
   18400:	00913c23          	sd	s1,24(sp)
   18404:	00367793          	andi	a5,a2,3
   18408:	00060413          	mv	s0,a2
   1840c:	00050993          	mv	s3,a0
   18410:	00058913          	mv	s2,a1
   18414:	0a079e63          	bnez	a5,184d0 <__pow5mult+0xe4>
   18418:	4024541b          	sraiw	s0,s0,0x2
   1841c:	06040663          	beqz	s0,18488 <__pow5mult+0x9c>
   18420:	0709b483          	ld	s1,112(s3) # ffffffffffffe070 <_end+0xfffffffffffd72a8>
   18424:	0c048a63          	beqz	s1,184f8 <__pow5mult+0x10c>
   18428:	00147793          	andi	a5,s0,1
   1842c:	02079063          	bnez	a5,1844c <__pow5mult+0x60>
   18430:	4014541b          	sraiw	s0,s0,0x1
   18434:	04040a63          	beqz	s0,18488 <__pow5mult+0x9c>
   18438:	0004b503          	ld	a0,0(s1)
   1843c:	06050663          	beqz	a0,184a8 <__pow5mult+0xbc>
   18440:	00050493          	mv	s1,a0
   18444:	00147793          	andi	a5,s0,1
   18448:	fe0784e3          	beqz	a5,18430 <__pow5mult+0x44>
   1844c:	00048613          	mv	a2,s1
   18450:	00090593          	mv	a1,s2
   18454:	00098513          	mv	a0,s3
   18458:	da1ff0ef          	jal	181f8 <__multiply>
   1845c:	06090663          	beqz	s2,184c8 <__pow5mult+0xdc>
   18460:	00892783          	lw	a5,8(s2)
   18464:	0789b703          	ld	a4,120(s3)
   18468:	4014541b          	sraiw	s0,s0,0x1
   1846c:	00379793          	slli	a5,a5,0x3
   18470:	00f707b3          	add	a5,a4,a5
   18474:	0007b703          	ld	a4,0(a5)
   18478:	00e93023          	sd	a4,0(s2)
   1847c:	0127b023          	sd	s2,0(a5)
   18480:	00050913          	mv	s2,a0
   18484:	fa041ae3          	bnez	s0,18438 <__pow5mult+0x4c>
   18488:	02813083          	ld	ra,40(sp)
   1848c:	00090513          	mv	a0,s2
   18490:	02013403          	ld	s0,32(sp)
   18494:	01813483          	ld	s1,24(sp)
   18498:	01013903          	ld	s2,16(sp)
   1849c:	00813983          	ld	s3,8(sp)
   184a0:	03010113          	addi	sp,sp,48
   184a4:	00008067          	ret
   184a8:	00048613          	mv	a2,s1
   184ac:	00048593          	mv	a1,s1
   184b0:	00098513          	mv	a0,s3
   184b4:	d45ff0ef          	jal	181f8 <__multiply>
   184b8:	00a4b023          	sd	a0,0(s1)
   184bc:	00053023          	sd	zero,0(a0)
   184c0:	00050493          	mv	s1,a0
   184c4:	f81ff06f          	j	18444 <__pow5mult+0x58>
   184c8:	00050913          	mv	s2,a0
   184cc:	f65ff06f          	j	18430 <__pow5mult+0x44>
   184d0:	fff7879b          	addiw	a5,a5,-1
   184d4:	00021737          	lui	a4,0x21
   184d8:	e5070713          	addi	a4,a4,-432 # 20e50 <p05.2568>
   184dc:	00279793          	slli	a5,a5,0x2
   184e0:	00f707b3          	add	a5,a4,a5
   184e4:	0007a603          	lw	a2,0(a5)
   184e8:	00000693          	li	a3,0
   184ec:	971ff0ef          	jal	17e5c <__multadd>
   184f0:	00050913          	mv	s2,a0
   184f4:	f25ff06f          	j	18418 <__pow5mult+0x2c>
   184f8:	00100593          	li	a1,1
   184fc:	00098513          	mv	a0,s3
   18500:	88dff0ef          	jal	17d8c <_Balloc>
   18504:	27100793          	li	a5,625
   18508:	00f52c23          	sw	a5,24(a0)
   1850c:	00100793          	li	a5,1
   18510:	00f52a23          	sw	a5,20(a0)
   18514:	06a9b823          	sd	a0,112(s3)
   18518:	00050493          	mv	s1,a0
   1851c:	00053023          	sd	zero,0(a0)
   18520:	f09ff06f          	j	18428 <__pow5mult+0x3c>

0000000000018524 <__lshift>:
   18524:	fc010113          	addi	sp,sp,-64
   18528:	01513423          	sd	s5,8(sp)
   1852c:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   18530:	02813823          	sd	s0,48(sp)
   18534:	00c5a783          	lw	a5,12(a1)
   18538:	4056541b          	sraiw	s0,a2,0x5
   1853c:	01540abb          	addw	s5,s0,s5
   18540:	02913423          	sd	s1,40(sp)
   18544:	03213023          	sd	s2,32(sp)
   18548:	01313c23          	sd	s3,24(sp)
   1854c:	01413823          	sd	s4,16(sp)
   18550:	02113c23          	sd	ra,56(sp)
   18554:	001a849b          	addiw	s1,s5,1
   18558:	00058913          	mv	s2,a1
   1855c:	00060993          	mv	s3,a2
   18560:	00050a13          	mv	s4,a0
   18564:	0085a583          	lw	a1,8(a1)
   18568:	0097d863          	ble	s1,a5,18578 <__lshift+0x54>
   1856c:	0017979b          	slliw	a5,a5,0x1
   18570:	0015859b          	addiw	a1,a1,1
   18574:	fe97cce3          	blt	a5,s1,1856c <__lshift+0x48>
   18578:	000a0513          	mv	a0,s4
   1857c:	811ff0ef          	jal	17d8c <_Balloc>
   18580:	01850793          	addi	a5,a0,24
   18584:	0e805c63          	blez	s0,1867c <__lshift+0x158>
   18588:	fff4071b          	addiw	a4,s0,-1
   1858c:	02071713          	slli	a4,a4,0x20
   18590:	02075713          	srli	a4,a4,0x20
   18594:	00170713          	addi	a4,a4,1
   18598:	00271713          	slli	a4,a4,0x2
   1859c:	00e78733          	add	a4,a5,a4
   185a0:	00478793          	addi	a5,a5,4
   185a4:	fe07ae23          	sw	zero,-4(a5)
   185a8:	fee79ce3          	bne	a5,a4,185a0 <__lshift+0x7c>
   185ac:	01492883          	lw	a7,20(s2)
   185b0:	01890793          	addi	a5,s2,24
   185b4:	01f9f613          	andi	a2,s3,31
   185b8:	00289893          	slli	a7,a7,0x2
   185bc:	011788b3          	add	a7,a5,a7
   185c0:	08060863          	beqz	a2,18650 <__lshift+0x12c>
   185c4:	02000313          	li	t1,32
   185c8:	40c3033b          	subw	t1,t1,a2
   185cc:	00000693          	li	a3,0
   185d0:	0080006f          	j	185d8 <__lshift+0xb4>
   185d4:	00080713          	mv	a4,a6
   185d8:	0007a583          	lw	a1,0(a5)
   185dc:	00470813          	addi	a6,a4,4
   185e0:	00478793          	addi	a5,a5,4
   185e4:	00c595bb          	sllw	a1,a1,a2
   185e8:	00d5e6b3          	or	a3,a1,a3
   185ec:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   185f0:	ffc7a683          	lw	a3,-4(a5)
   185f4:	0066d6bb          	srlw	a3,a3,t1
   185f8:	fd17eee3          	bltu	a5,a7,185d4 <__lshift+0xb0>
   185fc:	00d72223          	sw	a3,4(a4)
   18600:	00068463          	beqz	a3,18608 <__lshift+0xe4>
   18604:	002a849b          	addiw	s1,s5,2
   18608:	00892783          	lw	a5,8(s2)
   1860c:	078a3703          	ld	a4,120(s4) # ffffffff80000078 <_end+0xffffffff7ffd92b0>
   18610:	fff4849b          	addiw	s1,s1,-1
   18614:	00379793          	slli	a5,a5,0x3
   18618:	00f707b3          	add	a5,a4,a5
   1861c:	0007b703          	ld	a4,0(a5)
   18620:	03813083          	ld	ra,56(sp)
   18624:	00952a23          	sw	s1,20(a0)
   18628:	00e93023          	sd	a4,0(s2)
   1862c:	0127b023          	sd	s2,0(a5)
   18630:	03013403          	ld	s0,48(sp)
   18634:	02813483          	ld	s1,40(sp)
   18638:	02013903          	ld	s2,32(sp)
   1863c:	01813983          	ld	s3,24(sp)
   18640:	01013a03          	ld	s4,16(sp)
   18644:	00813a83          	ld	s5,8(sp)
   18648:	04010113          	addi	sp,sp,64
   1864c:	00008067          	ret
   18650:	00478793          	addi	a5,a5,4
   18654:	ffc7a683          	lw	a3,-4(a5)
   18658:	00470713          	addi	a4,a4,4
   1865c:	fed72e23          	sw	a3,-4(a4)
   18660:	fb17f4e3          	bleu	a7,a5,18608 <__lshift+0xe4>
   18664:	00478793          	addi	a5,a5,4
   18668:	ffc7a683          	lw	a3,-4(a5)
   1866c:	00470713          	addi	a4,a4,4
   18670:	fed72e23          	sw	a3,-4(a4)
   18674:	fd17eee3          	bltu	a5,a7,18650 <__lshift+0x12c>
   18678:	f91ff06f          	j	18608 <__lshift+0xe4>
   1867c:	00078713          	mv	a4,a5
   18680:	f2dff06f          	j	185ac <__lshift+0x88>

0000000000018684 <__mcmp>:
   18684:	01452783          	lw	a5,20(a0)
   18688:	0145a703          	lw	a4,20(a1)
   1868c:	40e787bb          	subw	a5,a5,a4
   18690:	04079263          	bnez	a5,186d4 <__mcmp+0x50>
   18694:	00271713          	slli	a4,a4,0x2
   18698:	01850513          	addi	a0,a0,24
   1869c:	01858593          	addi	a1,a1,24
   186a0:	00e507b3          	add	a5,a0,a4
   186a4:	00e585b3          	add	a1,a1,a4
   186a8:	0080006f          	j	186b0 <__mcmp+0x2c>
   186ac:	02f57863          	bleu	a5,a0,186dc <__mcmp+0x58>
   186b0:	ffc78793          	addi	a5,a5,-4
   186b4:	ffc58593          	addi	a1,a1,-4
   186b8:	0007a703          	lw	a4,0(a5)
   186bc:	0005a683          	lw	a3,0(a1)
   186c0:	fed706e3          	beq	a4,a3,186ac <__mcmp+0x28>
   186c4:	00d737b3          	sltu	a5,a4,a3
   186c8:	40f007bb          	negw	a5,a5
   186cc:	0017e513          	ori	a0,a5,1
   186d0:	00008067          	ret
   186d4:	00078513          	mv	a0,a5
   186d8:	00008067          	ret
   186dc:	00000513          	li	a0,0
   186e0:	00008067          	ret

00000000000186e4 <__mdiff>:
   186e4:	0145a703          	lw	a4,20(a1)
   186e8:	01462783          	lw	a5,20(a2)
   186ec:	fd010113          	addi	sp,sp,-48
   186f0:	01213823          	sd	s2,16(sp)
   186f4:	01313423          	sd	s3,8(sp)
   186f8:	02113423          	sd	ra,40(sp)
   186fc:	02813023          	sd	s0,32(sp)
   18700:	00913c23          	sd	s1,24(sp)
   18704:	01413023          	sd	s4,0(sp)
   18708:	40f7073b          	subw	a4,a4,a5
   1870c:	00058913          	mv	s2,a1
   18710:	00060993          	mv	s3,a2
   18714:	04071863          	bnez	a4,18764 <__mdiff+0x80>
   18718:	00279713          	slli	a4,a5,0x2
   1871c:	01858813          	addi	a6,a1,24
   18720:	01860413          	addi	s0,a2,24
   18724:	00e807b3          	add	a5,a6,a4
   18728:	00e40733          	add	a4,s0,a4
   1872c:	0080006f          	j	18734 <__mdiff+0x50>
   18730:	16f87263          	bleu	a5,a6,18894 <__mdiff+0x1b0>
   18734:	ffc78793          	addi	a5,a5,-4
   18738:	ffc70713          	addi	a4,a4,-4
   1873c:	0007a583          	lw	a1,0(a5)
   18740:	00072683          	lw	a3,0(a4)
   18744:	fed586e3          	beq	a1,a3,18730 <__mdiff+0x4c>
   18748:	18d5f063          	bleu	a3,a1,188c8 <__mdiff+0x1e4>
   1874c:	00090793          	mv	a5,s2
   18750:	00080493          	mv	s1,a6
   18754:	00098913          	mv	s2,s3
   18758:	00100a13          	li	s4,1
   1875c:	00078993          	mv	s3,a5
   18760:	0140006f          	j	18774 <__mdiff+0x90>
   18764:	16074a63          	bltz	a4,188d8 <__mdiff+0x1f4>
   18768:	01860493          	addi	s1,a2,24
   1876c:	01858413          	addi	s0,a1,24
   18770:	00000a13          	li	s4,0
   18774:	00892583          	lw	a1,8(s2)
   18778:	e14ff0ef          	jal	17d8c <_Balloc>
   1877c:	01492e03          	lw	t3,20(s2)
   18780:	0149af03          	lw	t5,20(s3)
   18784:	00010337          	lui	t1,0x10
   18788:	002e1e93          	slli	t4,t3,0x2
   1878c:	002f1f13          	slli	t5,t5,0x2
   18790:	01452823          	sw	s4,16(a0)
   18794:	01d40eb3          	add	t4,s0,t4
   18798:	01e48f33          	add	t5,s1,t5
   1879c:	01850813          	addi	a6,a0,24
   187a0:	00000693          	li	a3,0
   187a4:	fff3031b          	addiw	t1,t1,-1
   187a8:	00042583          	lw	a1,0(s0)
   187ac:	0004a883          	lw	a7,0(s1)
   187b0:	00480813          	addi	a6,a6,4
   187b4:	0065f633          	and	a2,a1,t1
   187b8:	00d606bb          	addw	a3,a2,a3
   187bc:	0068f733          	and	a4,a7,t1
   187c0:	40e6873b          	subw	a4,a3,a4
   187c4:	0105d59b          	srliw	a1,a1,0x10
   187c8:	0108d69b          	srliw	a3,a7,0x10
   187cc:	40d585bb          	subw	a1,a1,a3
   187d0:	4107569b          	sraiw	a3,a4,0x10
   187d4:	00d586bb          	addw	a3,a1,a3
   187d8:	0106979b          	slliw	a5,a3,0x10
   187dc:	00677733          	and	a4,a4,t1
   187e0:	00e7e7b3          	or	a5,a5,a4
   187e4:	00448493          	addi	s1,s1,4
   187e8:	fef82e23          	sw	a5,-4(a6)
   187ec:	00440413          	addi	s0,s0,4
   187f0:	4106d69b          	sraiw	a3,a3,0x10
   187f4:	fbe4eae3          	bltu	s1,t5,187a8 <__mdiff+0xc4>
   187f8:	07d47063          	bleu	t4,s0,18858 <__mdiff+0x174>
   187fc:	00010f37          	lui	t5,0x10
   18800:	00080313          	mv	t1,a6
   18804:	00040893          	mv	a7,s0
   18808:	ffff0f1b          	addiw	t5,t5,-1
   1880c:	0008a583          	lw	a1,0(a7)
   18810:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   18814:	00488893          	addi	a7,a7,4
   18818:	01e5f633          	and	a2,a1,t5
   1881c:	00d606bb          	addw	a3,a2,a3
   18820:	4106d71b          	sraiw	a4,a3,0x10
   18824:	0105d59b          	srliw	a1,a1,0x10
   18828:	00e5873b          	addw	a4,a1,a4
   1882c:	01e6f6b3          	and	a3,a3,t5
   18830:	0107179b          	slliw	a5,a4,0x10
   18834:	00d7e7b3          	or	a5,a5,a3
   18838:	fef32e23          	sw	a5,-4(t1)
   1883c:	4107569b          	sraiw	a3,a4,0x10
   18840:	fdd8e6e3          	bltu	a7,t4,1880c <__mdiff+0x128>
   18844:	fff44413          	not	s0,s0
   18848:	01d40eb3          	add	t4,s0,t4
   1884c:	ffcefe93          	andi	t4,t4,-4
   18850:	004e8e93          	addi	t4,t4,4
   18854:	01d80833          	add	a6,a6,t4
   18858:	ffc80813          	addi	a6,a6,-4
   1885c:	00079a63          	bnez	a5,18870 <__mdiff+0x18c>
   18860:	ffc80813          	addi	a6,a6,-4
   18864:	00082783          	lw	a5,0(a6)
   18868:	fffe0e1b          	addiw	t3,t3,-1
   1886c:	fe078ae3          	beqz	a5,18860 <__mdiff+0x17c>
   18870:	02813083          	ld	ra,40(sp)
   18874:	02013403          	ld	s0,32(sp)
   18878:	01813483          	ld	s1,24(sp)
   1887c:	01013903          	ld	s2,16(sp)
   18880:	00813983          	ld	s3,8(sp)
   18884:	00013a03          	ld	s4,0(sp)
   18888:	01c52a23          	sw	t3,20(a0)
   1888c:	03010113          	addi	sp,sp,48
   18890:	00008067          	ret
   18894:	00000593          	li	a1,0
   18898:	cf4ff0ef          	jal	17d8c <_Balloc>
   1889c:	02813083          	ld	ra,40(sp)
   188a0:	00100793          	li	a5,1
   188a4:	02013403          	ld	s0,32(sp)
   188a8:	01813483          	ld	s1,24(sp)
   188ac:	01013903          	ld	s2,16(sp)
   188b0:	00813983          	ld	s3,8(sp)
   188b4:	00013a03          	ld	s4,0(sp)
   188b8:	00f52a23          	sw	a5,20(a0)
   188bc:	00052c23          	sw	zero,24(a0)
   188c0:	03010113          	addi	sp,sp,48
   188c4:	00008067          	ret
   188c8:	00040493          	mv	s1,s0
   188cc:	00000a13          	li	s4,0
   188d0:	00080413          	mv	s0,a6
   188d4:	ea1ff06f          	j	18774 <__mdiff+0x90>
   188d8:	00090793          	mv	a5,s2
   188dc:	01890493          	addi	s1,s2,24
   188e0:	01898413          	addi	s0,s3,24
   188e4:	00098913          	mv	s2,s3
   188e8:	00100a13          	li	s4,1
   188ec:	00078993          	mv	s3,a5
   188f0:	e85ff06f          	j	18774 <__mdiff+0x90>

00000000000188f4 <__ulp>:
   188f4:	e20507d3          	fmv.x.d	a5,fa0
   188f8:	7ff00737          	lui	a4,0x7ff00
   188fc:	4207d793          	srai	a5,a5,0x20
   18900:	00e7f7b3          	and	a5,a5,a4
   18904:	fcc00737          	lui	a4,0xfcc00
   18908:	00e787bb          	addw	a5,a5,a4
   1890c:	00f05863          	blez	a5,1891c <__ulp+0x28>
   18910:	02079793          	slli	a5,a5,0x20
   18914:	f2078553          	fmv.d.x	fa0,a5
   18918:	00008067          	ret
   1891c:	40f007bb          	negw	a5,a5
   18920:	4147d79b          	sraiw	a5,a5,0x14
   18924:	01300713          	li	a4,19
   18928:	04f75063          	ble	a5,a4,18968 <__ulp+0x74>
   1892c:	fec7869b          	addiw	a3,a5,-20
   18930:	01e00613          	li	a2,30
   18934:	00000793          	li	a5,0
   18938:	00100713          	li	a4,1
   1893c:	00d64663          	blt	a2,a3,18948 <__ulp+0x54>
   18940:	fff6c693          	not	a3,a3
   18944:	00d7173b          	sllw	a4,a4,a3
   18948:	fff00693          	li	a3,-1
   1894c:	02069693          	slli	a3,a3,0x20
   18950:	02071713          	slli	a4,a4,0x20
   18954:	02075713          	srli	a4,a4,0x20
   18958:	00d7f7b3          	and	a5,a5,a3
   1895c:	00e7e7b3          	or	a5,a5,a4
   18960:	f2078553          	fmv.d.x	fa0,a5
   18964:	00008067          	ret
   18968:	00080737          	lui	a4,0x80
   1896c:	40f757bb          	sraw	a5,a4,a5
   18970:	fa1ff06f          	j	18910 <__ulp+0x1c>

0000000000018974 <__b2d>:
   18974:	fd010113          	addi	sp,sp,-48
   18978:	02813023          	sd	s0,32(sp)
   1897c:	01452403          	lw	s0,20(a0)
   18980:	00913c23          	sd	s1,24(sp)
   18984:	01850493          	addi	s1,a0,24
   18988:	00241413          	slli	s0,s0,0x2
   1898c:	00848433          	add	s0,s1,s0
   18990:	01213823          	sd	s2,16(sp)
   18994:	ffc42903          	lw	s2,-4(s0)
   18998:	01313423          	sd	s3,8(sp)
   1899c:	01413023          	sd	s4,0(sp)
   189a0:	00090513          	mv	a0,s2
   189a4:	00058a13          	mv	s4,a1
   189a8:	02113423          	sd	ra,40(sp)
   189ac:	eecff0ef          	jal	18098 <__hi0bits>
   189b0:	02000793          	li	a5,32
   189b4:	40a7873b          	subw	a4,a5,a0
   189b8:	00ea2023          	sw	a4,0(s4)
   189bc:	00a00713          	li	a4,10
   189c0:	ffc40993          	addi	s3,s0,-4
   189c4:	06a74a63          	blt	a4,a0,18a38 <__b2d+0xc4>
   189c8:	00b00693          	li	a3,11
   189cc:	40a686bb          	subw	a3,a3,a0
   189d0:	3ff00737          	lui	a4,0x3ff00
   189d4:	00d957bb          	srlw	a5,s2,a3
   189d8:	00e7e7b3          	or	a5,a5,a4
   189dc:	02079793          	slli	a5,a5,0x20
   189e0:	00000713          	li	a4,0
   189e4:	0134f663          	bleu	s3,s1,189f0 <__b2d+0x7c>
   189e8:	ff842703          	lw	a4,-8(s0)
   189ec:	00d7573b          	srlw	a4,a4,a3
   189f0:	0155051b          	addiw	a0,a0,21
   189f4:	00a9153b          	sllw	a0,s2,a0
   189f8:	00e56533          	or	a0,a0,a4
   189fc:	fff00713          	li	a4,-1
   18a00:	02051513          	slli	a0,a0,0x20
   18a04:	02071713          	slli	a4,a4,0x20
   18a08:	02055513          	srli	a0,a0,0x20
   18a0c:	00e7f7b3          	and	a5,a5,a4
   18a10:	00a7e7b3          	or	a5,a5,a0
   18a14:	02813083          	ld	ra,40(sp)
   18a18:	f2078553          	fmv.d.x	fa0,a5
   18a1c:	02013403          	ld	s0,32(sp)
   18a20:	01813483          	ld	s1,24(sp)
   18a24:	01013903          	ld	s2,16(sp)
   18a28:	00813983          	ld	s3,8(sp)
   18a2c:	00013a03          	ld	s4,0(sp)
   18a30:	03010113          	addi	sp,sp,48
   18a34:	00008067          	ret
   18a38:	ff55051b          	addiw	a0,a0,-11
   18a3c:	0534f263          	bleu	s3,s1,18a80 <__b2d+0x10c>
   18a40:	ff842683          	lw	a3,-8(s0)
   18a44:	04050263          	beqz	a0,18a88 <__b2d+0x114>
   18a48:	40a7863b          	subw	a2,a5,a0
   18a4c:	00a917bb          	sllw	a5,s2,a0
   18a50:	3ff00937          	lui	s2,0x3ff00
   18a54:	00c6d73b          	srlw	a4,a3,a2
   18a58:	0127e7b3          	or	a5,a5,s2
   18a5c:	00e7e7b3          	or	a5,a5,a4
   18a60:	ff840713          	addi	a4,s0,-8
   18a64:	02079793          	slli	a5,a5,0x20
   18a68:	04e4fa63          	bleu	a4,s1,18abc <__b2d+0x148>
   18a6c:	ff442703          	lw	a4,-12(s0)
   18a70:	00a6953b          	sllw	a0,a3,a0
   18a74:	00c756bb          	srlw	a3,a4,a2
   18a78:	00a6e533          	or	a0,a3,a0
   18a7c:	f81ff06f          	j	189fc <__b2d+0x88>
   18a80:	00000693          	li	a3,0
   18a84:	02051063          	bnez	a0,18aa4 <__b2d+0x130>
   18a88:	3ff00737          	lui	a4,0x3ff00
   18a8c:	00e967b3          	or	a5,s2,a4
   18a90:	02069693          	slli	a3,a3,0x20
   18a94:	0206d693          	srli	a3,a3,0x20
   18a98:	02079793          	slli	a5,a5,0x20
   18a9c:	00d7e7b3          	or	a5,a5,a3
   18aa0:	f75ff06f          	j	18a14 <__b2d+0xa0>
   18aa4:	00a917bb          	sllw	a5,s2,a0
   18aa8:	3ff00737          	lui	a4,0x3ff00
   18aac:	00e7e7b3          	or	a5,a5,a4
   18ab0:	02079793          	slli	a5,a5,0x20
   18ab4:	00000513          	li	a0,0
   18ab8:	f45ff06f          	j	189fc <__b2d+0x88>
   18abc:	00a6953b          	sllw	a0,a3,a0
   18ac0:	f3dff06f          	j	189fc <__b2d+0x88>

0000000000018ac4 <__d2b>:
   18ac4:	fc010113          	addi	sp,sp,-64
   18ac8:	02813823          	sd	s0,48(sp)
   18acc:	e2058453          	fmv.x.d	s0,fa1
   18ad0:	00100593          	li	a1,1
   18ad4:	02913423          	sd	s1,40(sp)
   18ad8:	03213023          	sd	s2,32(sp)
   18adc:	01313c23          	sd	s3,24(sp)
   18ae0:	01413823          	sd	s4,16(sp)
   18ae4:	00068993          	mv	s3,a3
   18ae8:	02113c23          	sd	ra,56(sp)
   18aec:	00060a13          	mv	s4,a2
   18af0:	a9cff0ef          	jal	17d8c <_Balloc>
   18af4:	42045793          	srai	a5,s0,0x20
   18af8:	02179493          	slli	s1,a5,0x21
   18afc:	001006b7          	lui	a3,0x100
   18b00:	fff6871b          	addiw	a4,a3,-1
   18b04:	0354d493          	srli	s1,s1,0x35
   18b08:	00050913          	mv	s2,a0
   18b0c:	00e7f7b3          	and	a5,a5,a4
   18b10:	00048463          	beqz	s1,18b18 <__d2b+0x54>
   18b14:	00d7e7b3          	or	a5,a5,a3
   18b18:	00f12623          	sw	a5,12(sp)
   18b1c:	0004041b          	sext.w	s0,s0
   18b20:	08040063          	beqz	s0,18ba0 <__d2b+0xdc>
   18b24:	00810513          	addi	a0,sp,8
   18b28:	00812423          	sw	s0,8(sp)
   18b2c:	de8ff0ef          	jal	18114 <__lo0bits>
   18b30:	00c12783          	lw	a5,12(sp)
   18b34:	0a051463          	bnez	a0,18bdc <__d2b+0x118>
   18b38:	00812703          	lw	a4,8(sp)
   18b3c:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_end+0x3fed9250>
   18b40:	0017b413          	seqz	s0,a5
   18b44:	00200713          	li	a4,2
   18b48:	4087043b          	subw	s0,a4,s0
   18b4c:	00f92e23          	sw	a5,28(s2)
   18b50:	00892a23          	sw	s0,20(s2)
   18b54:	06049663          	bnez	s1,18bc0 <__d2b+0xfc>
   18b58:	bce5051b          	addiw	a0,a0,-1074
   18b5c:	00241793          	slli	a5,s0,0x2
   18b60:	00aa2023          	sw	a0,0(s4)
   18b64:	00f907b3          	add	a5,s2,a5
   18b68:	0147a503          	lw	a0,20(a5)
   18b6c:	0054141b          	slliw	s0,s0,0x5
   18b70:	d28ff0ef          	jal	18098 <__hi0bits>
   18b74:	40a4053b          	subw	a0,s0,a0
   18b78:	00a9a023          	sw	a0,0(s3)
   18b7c:	03813083          	ld	ra,56(sp)
   18b80:	00090513          	mv	a0,s2
   18b84:	03013403          	ld	s0,48(sp)
   18b88:	02813483          	ld	s1,40(sp)
   18b8c:	02013903          	ld	s2,32(sp)
   18b90:	01813983          	ld	s3,24(sp)
   18b94:	01013a03          	ld	s4,16(sp)
   18b98:	04010113          	addi	sp,sp,64
   18b9c:	00008067          	ret
   18ba0:	00c10513          	addi	a0,sp,12
   18ba4:	d70ff0ef          	jal	18114 <__lo0bits>
   18ba8:	00c12783          	lw	a5,12(sp)
   18bac:	00100413          	li	s0,1
   18bb0:	00892a23          	sw	s0,20(s2)
   18bb4:	00f92c23          	sw	a5,24(s2)
   18bb8:	0205051b          	addiw	a0,a0,32
   18bbc:	f8048ee3          	beqz	s1,18b58 <__d2b+0x94>
   18bc0:	bcd4849b          	addiw	s1,s1,-1075
   18bc4:	00a484bb          	addw	s1,s1,a0
   18bc8:	03500793          	li	a5,53
   18bcc:	009a2023          	sw	s1,0(s4)
   18bd0:	40a7853b          	subw	a0,a5,a0
   18bd4:	00a9a023          	sw	a0,0(s3)
   18bd8:	fa5ff06f          	j	18b7c <__d2b+0xb8>
   18bdc:	02000713          	li	a4,32
   18be0:	00812683          	lw	a3,8(sp)
   18be4:	40a7073b          	subw	a4,a4,a0
   18be8:	00e7973b          	sllw	a4,a5,a4
   18bec:	00d76733          	or	a4,a4,a3
   18bf0:	00a7d7bb          	srlw	a5,a5,a0
   18bf4:	00e92c23          	sw	a4,24(s2)
   18bf8:	00f12623          	sw	a5,12(sp)
   18bfc:	f45ff06f          	j	18b40 <__d2b+0x7c>

0000000000018c00 <__ratio>:
   18c00:	fd010113          	addi	sp,sp,-48
   18c04:	00913c23          	sd	s1,24(sp)
   18c08:	00058493          	mv	s1,a1
   18c0c:	00810593          	addi	a1,sp,8
   18c10:	02113423          	sd	ra,40(sp)
   18c14:	02813023          	sd	s0,32(sp)
   18c18:	01213823          	sd	s2,16(sp)
   18c1c:	00050913          	mv	s2,a0
   18c20:	d55ff0ef          	jal	18974 <__b2d>
   18c24:	00c10593          	addi	a1,sp,12
   18c28:	00048513          	mv	a0,s1
   18c2c:	e2050453          	fmv.x.d	s0,fa0
   18c30:	d45ff0ef          	jal	18974 <__b2d>
   18c34:	01492703          	lw	a4,20(s2)
   18c38:	0144a783          	lw	a5,20(s1)
   18c3c:	00c12603          	lw	a2,12(sp)
   18c40:	e20506d3          	fmv.x.d	a3,fa0
   18c44:	40f707bb          	subw	a5,a4,a5
   18c48:	0057971b          	slliw	a4,a5,0x5
   18c4c:	00812783          	lw	a5,8(sp)
   18c50:	40c787bb          	subw	a5,a5,a2
   18c54:	00f707bb          	addw	a5,a4,a5
   18c58:	04f05463          	blez	a5,18ca0 <__ratio+0xa0>
   18c5c:	00040713          	mv	a4,s0
   18c60:	0147979b          	slliw	a5,a5,0x14
   18c64:	42045413          	srai	s0,s0,0x20
   18c68:	00f407bb          	addw	a5,s0,a5
   18c6c:	02071413          	slli	s0,a4,0x20
   18c70:	02079793          	slli	a5,a5,0x20
   18c74:	02045413          	srli	s0,s0,0x20
   18c78:	00f46433          	or	s0,s0,a5
   18c7c:	f20407d3          	fmv.d.x	fa5,s0
   18c80:	f2068753          	fmv.d.x	fa4,a3
   18c84:	02813083          	ld	ra,40(sp)
   18c88:	02013403          	ld	s0,32(sp)
   18c8c:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   18c90:	01813483          	ld	s1,24(sp)
   18c94:	01013903          	ld	s2,16(sp)
   18c98:	03010113          	addi	sp,sp,48
   18c9c:	00008067          	ret
   18ca0:	00068613          	mv	a2,a3
   18ca4:	0147979b          	slliw	a5,a5,0x14
   18ca8:	4206d693          	srai	a3,a3,0x20
   18cac:	40f687bb          	subw	a5,a3,a5
   18cb0:	02061693          	slli	a3,a2,0x20
   18cb4:	02079793          	slli	a5,a5,0x20
   18cb8:	0206d693          	srli	a3,a3,0x20
   18cbc:	00f6e6b3          	or	a3,a3,a5
   18cc0:	fbdff06f          	j	18c7c <__ratio+0x7c>

0000000000018cc4 <_mprec_log10>:
   18cc4:	01700793          	li	a5,23
   18cc8:	02a7d263          	ble	a0,a5,18cec <_mprec_log10+0x28>
   18ccc:	000247b7          	lui	a5,0x24
   18cd0:	4707b507          	fld	fa0,1136(a5) # 24470 <mask+0x28>
   18cd4:	000247b7          	lui	a5,0x24
   18cd8:	4787b787          	fld	fa5,1144(a5) # 24478 <mask+0x30>
   18cdc:	fff5051b          	addiw	a0,a0,-1
   18ce0:	12f57553          	fmul.d	fa0,fa0,fa5
   18ce4:	fe051ce3          	bnez	a0,18cdc <_mprec_log10+0x18>
   18ce8:	00008067          	ret
   18cec:	000217b7          	lui	a5,0x21
   18cf0:	e5078793          	addi	a5,a5,-432 # 20e50 <p05.2568>
   18cf4:	00351513          	slli	a0,a0,0x3
   18cf8:	00a78533          	add	a0,a5,a0
   18cfc:	01053507          	fld	fa0,16(a0)
   18d00:	00008067          	ret

0000000000018d04 <__copybits>:
   18d04:	01462703          	lw	a4,20(a2)
   18d08:	fff5859b          	addiw	a1,a1,-1
   18d0c:	4055d81b          	sraiw	a6,a1,0x5
   18d10:	00180813          	addi	a6,a6,1
   18d14:	01860793          	addi	a5,a2,24
   18d18:	00271713          	slli	a4,a4,0x2
   18d1c:	00281813          	slli	a6,a6,0x2
   18d20:	00e786b3          	add	a3,a5,a4
   18d24:	01050833          	add	a6,a0,a6
   18d28:	02d7f863          	bleu	a3,a5,18d58 <__copybits+0x54>
   18d2c:	00050713          	mv	a4,a0
   18d30:	00478793          	addi	a5,a5,4
   18d34:	ffc7a583          	lw	a1,-4(a5)
   18d38:	00470713          	addi	a4,a4,4 # 3ff00004 <_end+0x3fed923c>
   18d3c:	feb72e23          	sw	a1,-4(a4)
   18d40:	fed7e8e3          	bltu	a5,a3,18d30 <__copybits+0x2c>
   18d44:	40c687b3          	sub	a5,a3,a2
   18d48:	fe778793          	addi	a5,a5,-25
   18d4c:	ffc7f793          	andi	a5,a5,-4
   18d50:	00478793          	addi	a5,a5,4
   18d54:	00f50533          	add	a0,a0,a5
   18d58:	01057863          	bleu	a6,a0,18d68 <__copybits+0x64>
   18d5c:	00450513          	addi	a0,a0,4
   18d60:	fe052e23          	sw	zero,-4(a0)
   18d64:	ff056ce3          	bltu	a0,a6,18d5c <__copybits+0x58>
   18d68:	00008067          	ret

0000000000018d6c <__any_on>:
   18d6c:	01452783          	lw	a5,20(a0)
   18d70:	4055d71b          	sraiw	a4,a1,0x5
   18d74:	01850693          	addi	a3,a0,24
   18d78:	04e7c463          	blt	a5,a4,18dc0 <__any_on+0x54>
   18d7c:	04f75063          	ble	a5,a4,18dbc <__any_on+0x50>
   18d80:	00070793          	mv	a5,a4
   18d84:	00279793          	slli	a5,a5,0x2
   18d88:	01f5f593          	andi	a1,a1,31
   18d8c:	00f687b3          	add	a5,a3,a5
   18d90:	04059063          	bnez	a1,18dd0 <__any_on+0x64>
   18d94:	04f6fa63          	bleu	a5,a3,18de8 <__any_on+0x7c>
   18d98:	ffc7a503          	lw	a0,-4(a5)
   18d9c:	ffc78793          	addi	a5,a5,-4
   18da0:	00051a63          	bnez	a0,18db4 <__any_on+0x48>
   18da4:	02f6f463          	bleu	a5,a3,18dcc <__any_on+0x60>
   18da8:	ffc78793          	addi	a5,a5,-4
   18dac:	0007a703          	lw	a4,0(a5)
   18db0:	fe070ae3          	beqz	a4,18da4 <__any_on+0x38>
   18db4:	00100513          	li	a0,1
   18db8:	00008067          	ret
   18dbc:	00070793          	mv	a5,a4
   18dc0:	00279793          	slli	a5,a5,0x2
   18dc4:	00f687b3          	add	a5,a3,a5
   18dc8:	fcdff06f          	j	18d94 <__any_on+0x28>
   18dcc:	00008067          	ret
   18dd0:	0007a603          	lw	a2,0(a5)
   18dd4:	00100513          	li	a0,1
   18dd8:	00b6573b          	srlw	a4,a2,a1
   18ddc:	00b715bb          	sllw	a1,a4,a1
   18de0:	fab60ae3          	beq	a2,a1,18d94 <__any_on+0x28>
   18de4:	00008067          	ret
   18de8:	00000513          	li	a0,0
   18dec:	00008067          	ret

0000000000018df0 <_realloc_r>:
   18df0:	fb010113          	addi	sp,sp,-80
   18df4:	02913c23          	sd	s1,56(sp)
   18df8:	04113423          	sd	ra,72(sp)
   18dfc:	04813023          	sd	s0,64(sp)
   18e00:	03213823          	sd	s2,48(sp)
   18e04:	03313423          	sd	s3,40(sp)
   18e08:	03413023          	sd	s4,32(sp)
   18e0c:	01513c23          	sd	s5,24(sp)
   18e10:	01613823          	sd	s6,16(sp)
   18e14:	01713423          	sd	s7,8(sp)
   18e18:	01813023          	sd	s8,0(sp)
   18e1c:	00060493          	mv	s1,a2
   18e20:	1c058a63          	beqz	a1,18ff4 <_realloc_r+0x204>
   18e24:	00058993          	mv	s3,a1
   18e28:	00050913          	mv	s2,a0
   18e2c:	f90f80ef          	jal	115bc <__malloc_lock>
   18e30:	ff89b783          	ld	a5,-8(s3)
   18e34:	01748413          	addi	s0,s1,23
   18e38:	02e00713          	li	a4,46
   18e3c:	ff098a93          	addi	s5,s3,-16
   18e40:	ffc7fa13          	andi	s4,a5,-4
   18e44:	0c877463          	bleu	s0,a4,18f0c <_realloc_r+0x11c>
   18e48:	80000737          	lui	a4,0x80000
   18e4c:	ff047413          	andi	s0,s0,-16
   18e50:	fff74713          	not	a4,a4
   18e54:	14876a63          	bltu	a4,s0,18fa8 <_realloc_r+0x1b8>
   18e58:	14946863          	bltu	s0,s1,18fa8 <_realloc_r+0x1b8>
   18e5c:	0a8a5c63          	ble	s0,s4,18f14 <_realloc_r+0x124>
   18e60:	00024b37          	lui	s6,0x24
   18e64:	b38b0b13          	addi	s6,s6,-1224 # 23b38 <__malloc_av_>
   18e68:	010b3703          	ld	a4,16(s6)
   18e6c:	014a86b3          	add	a3,s5,s4
   18e70:	2ee68e63          	beq	a3,a4,1916c <_realloc_r+0x37c>
   18e74:	0086b703          	ld	a4,8(a3) # 100008 <_end+0xd9240>
   18e78:	ffe77613          	andi	a2,a4,-2
   18e7c:	00c68633          	add	a2,a3,a2
   18e80:	00863603          	ld	a2,8(a2)
   18e84:	00167613          	andi	a2,a2,1
   18e88:	0e060c63          	beqz	a2,18f80 <_realloc_r+0x190>
   18e8c:	0017f793          	andi	a5,a5,1
   18e90:	26078063          	beqz	a5,190f0 <_realloc_r+0x300>
   18e94:	00048593          	mv	a1,s1
   18e98:	00090513          	mv	a0,s2
   18e9c:	e91f70ef          	jal	10d2c <_malloc_r>
   18ea0:	00050493          	mv	s1,a0
   18ea4:	48050e63          	beqz	a0,19340 <_realloc_r+0x550>
   18ea8:	ff89b783          	ld	a5,-8(s3)
   18eac:	ff050713          	addi	a4,a0,-16
   18eb0:	ffe7f793          	andi	a5,a5,-2
   18eb4:	00fa87b3          	add	a5,s5,a5
   18eb8:	40f70e63          	beq	a4,a5,192d4 <_realloc_r+0x4e4>
   18ebc:	ff8a0613          	addi	a2,s4,-8
   18ec0:	04800793          	li	a5,72
   18ec4:	3ec7e263          	bltu	a5,a2,192a8 <_realloc_r+0x4b8>
   18ec8:	02700713          	li	a4,39
   18ecc:	36c76663          	bltu	a4,a2,19238 <_realloc_r+0x448>
   18ed0:	00050793          	mv	a5,a0
   18ed4:	00098713          	mv	a4,s3
   18ed8:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_end+0xffffffff7ffd9238>
   18edc:	00d7b023          	sd	a3,0(a5)
   18ee0:	00873683          	ld	a3,8(a4)
   18ee4:	00d7b423          	sd	a3,8(a5)
   18ee8:	01073703          	ld	a4,16(a4)
   18eec:	00e7b823          	sd	a4,16(a5)
   18ef0:	00098593          	mv	a1,s3
   18ef4:	00090513          	mv	a0,s2
   18ef8:	d7dfd0ef          	jal	16c74 <_free_r>
   18efc:	00090513          	mv	a0,s2
   18f00:	ec0f80ef          	jal	115c0 <__malloc_unlock>
   18f04:	00048513          	mv	a0,s1
   18f08:	0480006f          	j	18f50 <_realloc_r+0x160>
   18f0c:	02000413          	li	s0,32
   18f10:	f49ff06f          	j	18e58 <_realloc_r+0x68>
   18f14:	00098493          	mv	s1,s3
   18f18:	408a07b3          	sub	a5,s4,s0
   18f1c:	01f00713          	li	a4,31
   18f20:	08f76c63          	bltu	a4,a5,18fb8 <_realloc_r+0x1c8>
   18f24:	008ab783          	ld	a5,8(s5)
   18f28:	014a8733          	add	a4,s5,s4
   18f2c:	0017f793          	andi	a5,a5,1
   18f30:	0147e633          	or	a2,a5,s4
   18f34:	00cab423          	sd	a2,8(s5)
   18f38:	00873783          	ld	a5,8(a4)
   18f3c:	0017e793          	ori	a5,a5,1
   18f40:	00f73423          	sd	a5,8(a4)
   18f44:	00090513          	mv	a0,s2
   18f48:	e78f80ef          	jal	115c0 <__malloc_unlock>
   18f4c:	00048513          	mv	a0,s1
   18f50:	04813083          	ld	ra,72(sp)
   18f54:	04013403          	ld	s0,64(sp)
   18f58:	03813483          	ld	s1,56(sp)
   18f5c:	03013903          	ld	s2,48(sp)
   18f60:	02813983          	ld	s3,40(sp)
   18f64:	02013a03          	ld	s4,32(sp)
   18f68:	01813a83          	ld	s5,24(sp)
   18f6c:	01013b03          	ld	s6,16(sp)
   18f70:	00813b83          	ld	s7,8(sp)
   18f74:	00013c03          	ld	s8,0(sp)
   18f78:	05010113          	addi	sp,sp,80
   18f7c:	00008067          	ret
   18f80:	ffc77713          	andi	a4,a4,-4
   18f84:	01470733          	add	a4,a4,s4
   18f88:	0a874063          	blt	a4,s0,19028 <_realloc_r+0x238>
   18f8c:	0186b783          	ld	a5,24(a3)
   18f90:	0106b683          	ld	a3,16(a3)
   18f94:	00098493          	mv	s1,s3
   18f98:	00070a13          	mv	s4,a4
   18f9c:	00f6bc23          	sd	a5,24(a3)
   18fa0:	00d7b823          	sd	a3,16(a5)
   18fa4:	f75ff06f          	j	18f18 <_realloc_r+0x128>
   18fa8:	00c00793          	li	a5,12
   18fac:	00f92023          	sw	a5,0(s2)
   18fb0:	00000513          	li	a0,0
   18fb4:	f9dff06f          	j	18f50 <_realloc_r+0x160>
   18fb8:	008ab703          	ld	a4,8(s5)
   18fbc:	008a85b3          	add	a1,s5,s0
   18fc0:	0017e693          	ori	a3,a5,1
   18fc4:	00177713          	andi	a4,a4,1
   18fc8:	00876433          	or	s0,a4,s0
   18fcc:	008ab423          	sd	s0,8(s5)
   18fd0:	00d5b423          	sd	a3,8(a1)
   18fd4:	00f587b3          	add	a5,a1,a5
   18fd8:	0087b703          	ld	a4,8(a5)
   18fdc:	01058593          	addi	a1,a1,16
   18fe0:	00090513          	mv	a0,s2
   18fe4:	00176713          	ori	a4,a4,1
   18fe8:	00e7b423          	sd	a4,8(a5)
   18fec:	c89fd0ef          	jal	16c74 <_free_r>
   18ff0:	f55ff06f          	j	18f44 <_realloc_r+0x154>
   18ff4:	04813083          	ld	ra,72(sp)
   18ff8:	04013403          	ld	s0,64(sp)
   18ffc:	03813483          	ld	s1,56(sp)
   19000:	03013903          	ld	s2,48(sp)
   19004:	02813983          	ld	s3,40(sp)
   19008:	02013a03          	ld	s4,32(sp)
   1900c:	01813a83          	ld	s5,24(sp)
   19010:	01013b03          	ld	s6,16(sp)
   19014:	00813b83          	ld	s7,8(sp)
   19018:	00013c03          	ld	s8,0(sp)
   1901c:	00060593          	mv	a1,a2
   19020:	05010113          	addi	sp,sp,80
   19024:	d09f706f          	j	10d2c <_malloc_r>
   19028:	0017f793          	andi	a5,a5,1
   1902c:	e60794e3          	bnez	a5,18e94 <_realloc_r+0xa4>
   19030:	ff09bb83          	ld	s7,-16(s3)
   19034:	417a8bb3          	sub	s7,s5,s7
   19038:	008bb783          	ld	a5,8(s7) # ffffffff80000008 <_end+0xffffffff7ffd9240>
   1903c:	ffc7f793          	andi	a5,a5,-4
   19040:	00f70b33          	add	s6,a4,a5
   19044:	0a8b4e63          	blt	s6,s0,19100 <_realloc_r+0x310>
   19048:	0186b783          	ld	a5,24(a3)
   1904c:	0106b703          	ld	a4,16(a3)
   19050:	ff8a0613          	addi	a2,s4,-8
   19054:	010b8493          	addi	s1,s7,16
   19058:	00f73c23          	sd	a5,24(a4)
   1905c:	00e7b823          	sd	a4,16(a5)
   19060:	010bb703          	ld	a4,16(s7)
   19064:	018bb783          	ld	a5,24(s7)
   19068:	00f73c23          	sd	a5,24(a4)
   1906c:	00e7b823          	sd	a4,16(a5)
   19070:	04800793          	li	a5,72
   19074:	1ec7e463          	bltu	a5,a2,1925c <_realloc_r+0x46c>
   19078:	02700713          	li	a4,39
   1907c:	00048793          	mv	a5,s1
   19080:	04c77663          	bleu	a2,a4,190cc <_realloc_r+0x2dc>
   19084:	0009b783          	ld	a5,0(s3)
   19088:	00fbb823          	sd	a5,16(s7)
   1908c:	0089b783          	ld	a5,8(s3)
   19090:	00fbbc23          	sd	a5,24(s7)
   19094:	03700793          	li	a5,55
   19098:	24c7f863          	bleu	a2,a5,192e8 <_realloc_r+0x4f8>
   1909c:	0109b783          	ld	a5,16(s3)
   190a0:	02fbb023          	sd	a5,32(s7)
   190a4:	0189b783          	ld	a5,24(s3)
   190a8:	02fbb423          	sd	a5,40(s7)
   190ac:	04800793          	li	a5,72
   190b0:	0af61863          	bne	a2,a5,19160 <_realloc_r+0x370>
   190b4:	0209b703          	ld	a4,32(s3)
   190b8:	040b8793          	addi	a5,s7,64
   190bc:	03098993          	addi	s3,s3,48
   190c0:	02ebb823          	sd	a4,48(s7)
   190c4:	ff89b703          	ld	a4,-8(s3)
   190c8:	02ebbc23          	sd	a4,56(s7)
   190cc:	0009b703          	ld	a4,0(s3)
   190d0:	000b0a13          	mv	s4,s6
   190d4:	000b8a93          	mv	s5,s7
   190d8:	00e7b023          	sd	a4,0(a5)
   190dc:	0089b703          	ld	a4,8(s3)
   190e0:	00e7b423          	sd	a4,8(a5)
   190e4:	0109b703          	ld	a4,16(s3)
   190e8:	00e7b823          	sd	a4,16(a5)
   190ec:	e2dff06f          	j	18f18 <_realloc_r+0x128>
   190f0:	ff09bb83          	ld	s7,-16(s3)
   190f4:	417a8bb3          	sub	s7,s5,s7
   190f8:	008bb783          	ld	a5,8(s7)
   190fc:	ffc7f793          	andi	a5,a5,-4
   19100:	00fa0b33          	add	s6,s4,a5
   19104:	d88b48e3          	blt	s6,s0,18e94 <_realloc_r+0xa4>
   19108:	018bb783          	ld	a5,24(s7)
   1910c:	010bb703          	ld	a4,16(s7)
   19110:	ff8a0613          	addi	a2,s4,-8
   19114:	04800693          	li	a3,72
   19118:	00f73c23          	sd	a5,24(a4)
   1911c:	00e7b823          	sd	a4,16(a5)
   19120:	010b8493          	addi	s1,s7,16
   19124:	12c6ec63          	bltu	a3,a2,1925c <_realloc_r+0x46c>
   19128:	02700713          	li	a4,39
   1912c:	00048793          	mv	a5,s1
   19130:	f8c77ee3          	bleu	a2,a4,190cc <_realloc_r+0x2dc>
   19134:	0009b783          	ld	a5,0(s3)
   19138:	00fbb823          	sd	a5,16(s7)
   1913c:	0089b783          	ld	a5,8(s3)
   19140:	00fbbc23          	sd	a5,24(s7)
   19144:	03700793          	li	a5,55
   19148:	1ac7f063          	bleu	a2,a5,192e8 <_realloc_r+0x4f8>
   1914c:	0109b783          	ld	a5,16(s3)
   19150:	02fbb023          	sd	a5,32(s7)
   19154:	0189b783          	ld	a5,24(s3)
   19158:	02fbb423          	sd	a5,40(s7)
   1915c:	f4d60ce3          	beq	a2,a3,190b4 <_realloc_r+0x2c4>
   19160:	030b8793          	addi	a5,s7,48
   19164:	02098993          	addi	s3,s3,32
   19168:	f65ff06f          	j	190cc <_realloc_r+0x2dc>
   1916c:	0086b703          	ld	a4,8(a3)
   19170:	02040693          	addi	a3,s0,32
   19174:	ffc77713          	andi	a4,a4,-4
   19178:	01470733          	add	a4,a4,s4
   1917c:	0ed75c63          	ble	a3,a4,19274 <_realloc_r+0x484>
   19180:	0017f793          	andi	a5,a5,1
   19184:	d00798e3          	bnez	a5,18e94 <_realloc_r+0xa4>
   19188:	ff09bb83          	ld	s7,-16(s3)
   1918c:	417a8bb3          	sub	s7,s5,s7
   19190:	008bb783          	ld	a5,8(s7)
   19194:	ffc7f793          	andi	a5,a5,-4
   19198:	00e78c33          	add	s8,a5,a4
   1919c:	f6dc42e3          	blt	s8,a3,19100 <_realloc_r+0x310>
   191a0:	018bb783          	ld	a5,24(s7)
   191a4:	010bb703          	ld	a4,16(s7)
   191a8:	ff8a0613          	addi	a2,s4,-8
   191ac:	04800693          	li	a3,72
   191b0:	00f73c23          	sd	a5,24(a4)
   191b4:	00e7b823          	sd	a4,16(a5)
   191b8:	010b8493          	addi	s1,s7,16
   191bc:	14c6ea63          	bltu	a3,a2,19310 <_realloc_r+0x520>
   191c0:	02700713          	li	a4,39
   191c4:	00048793          	mv	a5,s1
   191c8:	02c77263          	bleu	a2,a4,191ec <_realloc_r+0x3fc>
   191cc:	0009b783          	ld	a5,0(s3)
   191d0:	00fbb823          	sd	a5,16(s7)
   191d4:	0089b783          	ld	a5,8(s3)
   191d8:	00fbbc23          	sd	a5,24(s7)
   191dc:	03700793          	li	a5,55
   191e0:	14c7e063          	bltu	a5,a2,19320 <_realloc_r+0x530>
   191e4:	020b8793          	addi	a5,s7,32
   191e8:	01098993          	addi	s3,s3,16
   191ec:	0009b703          	ld	a4,0(s3)
   191f0:	00e7b023          	sd	a4,0(a5)
   191f4:	0089b703          	ld	a4,8(s3)
   191f8:	00e7b423          	sd	a4,8(a5)
   191fc:	0109b703          	ld	a4,16(s3)
   19200:	00e7b823          	sd	a4,16(a5)
   19204:	008b8733          	add	a4,s7,s0
   19208:	408c07b3          	sub	a5,s8,s0
   1920c:	00eb3823          	sd	a4,16(s6)
   19210:	0017e793          	ori	a5,a5,1
   19214:	00f73423          	sd	a5,8(a4)
   19218:	008bb783          	ld	a5,8(s7)
   1921c:	00090513          	mv	a0,s2
   19220:	0017f793          	andi	a5,a5,1
   19224:	0087e433          	or	s0,a5,s0
   19228:	008bb423          	sd	s0,8(s7)
   1922c:	b94f80ef          	jal	115c0 <__malloc_unlock>
   19230:	00048513          	mv	a0,s1
   19234:	d1dff06f          	j	18f50 <_realloc_r+0x160>
   19238:	0009b703          	ld	a4,0(s3)
   1923c:	00e53023          	sd	a4,0(a0)
   19240:	0089b703          	ld	a4,8(s3)
   19244:	00e53423          	sd	a4,8(a0)
   19248:	03700713          	li	a4,55
   1924c:	06c76463          	bltu	a4,a2,192b4 <_realloc_r+0x4c4>
   19250:	01050793          	addi	a5,a0,16
   19254:	01098713          	addi	a4,s3,16
   19258:	c81ff06f          	j	18ed8 <_realloc_r+0xe8>
   1925c:	00098593          	mv	a1,s3
   19260:	00048513          	mv	a0,s1
   19264:	92dfe0ef          	jal	17b90 <memmove>
   19268:	000b0a13          	mv	s4,s6
   1926c:	000b8a93          	mv	s5,s7
   19270:	ca9ff06f          	j	18f18 <_realloc_r+0x128>
   19274:	008a8ab3          	add	s5,s5,s0
   19278:	408707b3          	sub	a5,a4,s0
   1927c:	015b3823          	sd	s5,16(s6)
   19280:	0017e793          	ori	a5,a5,1
   19284:	00fab423          	sd	a5,8(s5)
   19288:	ff89b783          	ld	a5,-8(s3)
   1928c:	00090513          	mv	a0,s2
   19290:	0017f793          	andi	a5,a5,1
   19294:	0087e433          	or	s0,a5,s0
   19298:	fe89bc23          	sd	s0,-8(s3)
   1929c:	b24f80ef          	jal	115c0 <__malloc_unlock>
   192a0:	00098513          	mv	a0,s3
   192a4:	cadff06f          	j	18f50 <_realloc_r+0x160>
   192a8:	00098593          	mv	a1,s3
   192ac:	8e5fe0ef          	jal	17b90 <memmove>
   192b0:	c41ff06f          	j	18ef0 <_realloc_r+0x100>
   192b4:	0109b703          	ld	a4,16(s3)
   192b8:	00e53823          	sd	a4,16(a0)
   192bc:	0189b703          	ld	a4,24(s3)
   192c0:	00e53c23          	sd	a4,24(a0)
   192c4:	02f60863          	beq	a2,a5,192f4 <_realloc_r+0x504>
   192c8:	02050793          	addi	a5,a0,32
   192cc:	02098713          	addi	a4,s3,32
   192d0:	c09ff06f          	j	18ed8 <_realloc_r+0xe8>
   192d4:	ff853783          	ld	a5,-8(a0)
   192d8:	00098493          	mv	s1,s3
   192dc:	ffc7f793          	andi	a5,a5,-4
   192e0:	00fa0a33          	add	s4,s4,a5
   192e4:	c35ff06f          	j	18f18 <_realloc_r+0x128>
   192e8:	020b8793          	addi	a5,s7,32
   192ec:	01098993          	addi	s3,s3,16
   192f0:	dddff06f          	j	190cc <_realloc_r+0x2dc>
   192f4:	0209b683          	ld	a3,32(s3)
   192f8:	03050793          	addi	a5,a0,48
   192fc:	03098713          	addi	a4,s3,48
   19300:	02d53023          	sd	a3,32(a0)
   19304:	0289b683          	ld	a3,40(s3)
   19308:	02d53423          	sd	a3,40(a0)
   1930c:	bcdff06f          	j	18ed8 <_realloc_r+0xe8>
   19310:	00098593          	mv	a1,s3
   19314:	00048513          	mv	a0,s1
   19318:	879fe0ef          	jal	17b90 <memmove>
   1931c:	ee9ff06f          	j	19204 <_realloc_r+0x414>
   19320:	0109b783          	ld	a5,16(s3)
   19324:	02fbb023          	sd	a5,32(s7)
   19328:	0189b783          	ld	a5,24(s3)
   1932c:	02fbb423          	sd	a5,40(s7)
   19330:	02d60063          	beq	a2,a3,19350 <_realloc_r+0x560>
   19334:	030b8793          	addi	a5,s7,48
   19338:	02098993          	addi	s3,s3,32
   1933c:	eb1ff06f          	j	191ec <_realloc_r+0x3fc>
   19340:	00090513          	mv	a0,s2
   19344:	a7cf80ef          	jal	115c0 <__malloc_unlock>
   19348:	00000513          	li	a0,0
   1934c:	c05ff06f          	j	18f50 <_realloc_r+0x160>
   19350:	0209b703          	ld	a4,32(s3)
   19354:	040b8793          	addi	a5,s7,64
   19358:	03098993          	addi	s3,s3,48
   1935c:	02ebb823          	sd	a4,48(s7)
   19360:	ff89b703          	ld	a4,-8(s3)
   19364:	02ebbc23          	sd	a4,56(s7)
   19368:	e85ff06f          	j	191ec <_realloc_r+0x3fc>

000000000001936c <lflush>:
   1936c:	01055783          	lhu	a5,16(a0)
   19370:	00900713          	li	a4,9
   19374:	0097f793          	andi	a5,a5,9
   19378:	00e78663          	beq	a5,a4,19384 <lflush+0x18>
   1937c:	00000513          	li	a0,0
   19380:	00008067          	ret
   19384:	9dcfd06f          	j	16560 <fflush>

0000000000019388 <__srefill_r>:
   19388:	fd010113          	addi	sp,sp,-48
   1938c:	02813023          	sd	s0,32(sp)
   19390:	00913c23          	sd	s1,24(sp)
   19394:	02113423          	sd	ra,40(sp)
   19398:	01213823          	sd	s2,16(sp)
   1939c:	01313423          	sd	s3,8(sp)
   193a0:	00050493          	mv	s1,a0
   193a4:	00058413          	mv	s0,a1
   193a8:	00050663          	beqz	a0,193b4 <__srefill_r+0x2c>
   193ac:	05052783          	lw	a5,80(a0)
   193b0:	12078a63          	beqz	a5,194e4 <__srefill_r+0x15c>
   193b4:	01041783          	lh	a5,16(s0)
   193b8:	03079713          	slli	a4,a5,0x30
   193bc:	03075713          	srli	a4,a4,0x30
   193c0:	03271693          	slli	a3,a4,0x32
   193c4:	0206ca63          	bltz	a3,193f8 <__srefill_r+0x70>
   193c8:	0ac42683          	lw	a3,172(s0)
   193cc:	00002737          	lui	a4,0x2
   193d0:	00e7e7b3          	or	a5,a5,a4
   193d4:	ffffe737          	lui	a4,0xffffe
   193d8:	0107979b          	slliw	a5,a5,0x10
   193dc:	fff7071b          	addiw	a4,a4,-1
   193e0:	4107d79b          	sraiw	a5,a5,0x10
   193e4:	00e6f733          	and	a4,a3,a4
   193e8:	0ae42623          	sw	a4,172(s0)
   193ec:	03079713          	slli	a4,a5,0x30
   193f0:	00f41823          	sh	a5,16(s0)
   193f4:	03075713          	srli	a4,a4,0x30
   193f8:	00042423          	sw	zero,8(s0)
   193fc:	02077693          	andi	a3,a4,32
   19400:	1a069c63          	bnez	a3,195b8 <__srefill_r+0x230>
   19404:	00477693          	andi	a3,a4,4
   19408:	08068863          	beqz	a3,19498 <__srefill_r+0x110>
   1940c:	05843583          	ld	a1,88(s0)
   19410:	02058263          	beqz	a1,19434 <__srefill_r+0xac>
   19414:	07440793          	addi	a5,s0,116
   19418:	00f58663          	beq	a1,a5,19424 <__srefill_r+0x9c>
   1941c:	00048513          	mv	a0,s1
   19420:	855fd0ef          	jal	16c74 <_free_r>
   19424:	07042783          	lw	a5,112(s0)
   19428:	04043c23          	sd	zero,88(s0)
   1942c:	00f42423          	sw	a5,8(s0)
   19430:	12079263          	bnez	a5,19554 <__srefill_r+0x1cc>
   19434:	01843783          	ld	a5,24(s0)
   19438:	18078463          	beqz	a5,195c0 <__srefill_r+0x238>
   1943c:	01041983          	lh	s3,16(s0)
   19440:	03099913          	slli	s2,s3,0x30
   19444:	03095913          	srli	s2,s2,0x30
   19448:	00397793          	andi	a5,s2,3
   1944c:	0a079063          	bnez	a5,194ec <__srefill_r+0x164>
   19450:	01843603          	ld	a2,24(s0)
   19454:	03843783          	ld	a5,56(s0)
   19458:	02042683          	lw	a3,32(s0)
   1945c:	03043583          	ld	a1,48(s0)
   19460:	00c43023          	sd	a2,0(s0)
   19464:	00048513          	mv	a0,s1
   19468:	000780e7          	jalr	a5
   1946c:	0005079b          	sext.w	a5,a0
   19470:	00f42423          	sw	a5,8(s0)
   19474:	00000513          	li	a0,0
   19478:	02f05e63          	blez	a5,194b4 <__srefill_r+0x12c>
   1947c:	02813083          	ld	ra,40(sp)
   19480:	02013403          	ld	s0,32(sp)
   19484:	01813483          	ld	s1,24(sp)
   19488:	01013903          	ld	s2,16(sp)
   1948c:	00813983          	ld	s3,8(sp)
   19490:	03010113          	addi	sp,sp,48
   19494:	00008067          	ret
   19498:	01077693          	andi	a3,a4,16
   1949c:	10068663          	beqz	a3,195a8 <__srefill_r+0x220>
   194a0:	00877713          	andi	a4,a4,8
   194a4:	0c071c63          	bnez	a4,1957c <__srefill_r+0x1f4>
   194a8:	0047e793          	ori	a5,a5,4
   194ac:	00f41823          	sh	a5,16(s0)
   194b0:	f85ff06f          	j	19434 <__srefill_r+0xac>
   194b4:	06079863          	bnez	a5,19524 <__srefill_r+0x19c>
   194b8:	01045783          	lhu	a5,16(s0)
   194bc:	02813083          	ld	ra,40(sp)
   194c0:	fff00513          	li	a0,-1
   194c4:	0207e793          	ori	a5,a5,32
   194c8:	00f41823          	sh	a5,16(s0)
   194cc:	01813483          	ld	s1,24(sp)
   194d0:	02013403          	ld	s0,32(sp)
   194d4:	01013903          	ld	s2,16(sp)
   194d8:	00813983          	ld	s3,8(sp)
   194dc:	03010113          	addi	sp,sp,48
   194e0:	00008067          	ret
   194e4:	bccfd0ef          	jal	168b0 <__sinit>
   194e8:	ecdff06f          	j	193b4 <__srefill_r+0x2c>
   194ec:	8081b503          	ld	a0,-2040(gp) # 243f8 <_global_impure_ptr>
   194f0:	000195b7          	lui	a1,0x19
   194f4:	00100793          	li	a5,1
   194f8:	00f41823          	sh	a5,16(s0)
   194fc:	36c58593          	addi	a1,a1,876 # 1936c <lflush>
   19500:	f39fd0ef          	jal	17438 <_fwalk>
   19504:	00997913          	andi	s2,s2,9
   19508:	01341823          	sh	s3,16(s0)
   1950c:	00900793          	li	a5,9
   19510:	f4f910e3          	bne	s2,a5,19450 <__srefill_r+0xc8>
   19514:	00040593          	mv	a1,s0
   19518:	00048513          	mv	a0,s1
   1951c:	d7dfc0ef          	jal	16298 <__sflush_r>
   19520:	f31ff06f          	j	19450 <__srefill_r+0xc8>
   19524:	01045783          	lhu	a5,16(s0)
   19528:	02813083          	ld	ra,40(sp)
   1952c:	00042423          	sw	zero,8(s0)
   19530:	0407e793          	ori	a5,a5,64
   19534:	fff00513          	li	a0,-1
   19538:	00f41823          	sh	a5,16(s0)
   1953c:	01813483          	ld	s1,24(sp)
   19540:	02013403          	ld	s0,32(sp)
   19544:	01013903          	ld	s2,16(sp)
   19548:	00813983          	ld	s3,8(sp)
   1954c:	03010113          	addi	sp,sp,48
   19550:	00008067          	ret
   19554:	06843783          	ld	a5,104(s0)
   19558:	02813083          	ld	ra,40(sp)
   1955c:	00000513          	li	a0,0
   19560:	00f43023          	sd	a5,0(s0)
   19564:	01813483          	ld	s1,24(sp)
   19568:	02013403          	ld	s0,32(sp)
   1956c:	01013903          	ld	s2,16(sp)
   19570:	00813983          	ld	s3,8(sp)
   19574:	03010113          	addi	sp,sp,48
   19578:	00008067          	ret
   1957c:	00040593          	mv	a1,s0
   19580:	00048513          	mv	a0,s1
   19584:	f81fc0ef          	jal	16504 <_fflush_r>
   19588:	02051863          	bnez	a0,195b8 <__srefill_r+0x230>
   1958c:	01045783          	lhu	a5,16(s0)
   19590:	00042623          	sw	zero,12(s0)
   19594:	02042423          	sw	zero,40(s0)
   19598:	ff77f793          	andi	a5,a5,-9
   1959c:	0107979b          	slliw	a5,a5,0x10
   195a0:	4107d79b          	sraiw	a5,a5,0x10
   195a4:	f05ff06f          	j	194a8 <__srefill_r+0x120>
   195a8:	00900713          	li	a4,9
   195ac:	00e4a023          	sw	a4,0(s1)
   195b0:	0407e793          	ori	a5,a5,64
   195b4:	00f41823          	sh	a5,16(s0)
   195b8:	fff00513          	li	a0,-1
   195bc:	ec1ff06f          	j	1947c <__srefill_r+0xf4>
   195c0:	00040593          	mv	a1,s0
   195c4:	00048513          	mv	a0,s1
   195c8:	8d8fe0ef          	jal	176a0 <__smakebuf_r>
   195cc:	e71ff06f          	j	1943c <__srefill_r+0xb4>

00000000000195d0 <__sccl>:
   195d0:	0005c603          	lbu	a2,0(a1)
   195d4:	05e00793          	li	a5,94
   195d8:	08f60e63          	beq	a2,a5,19674 <__sccl+0xa4>
   195dc:	00158593          	addi	a1,a1,1
   195e0:	00000713          	li	a4,0
   195e4:	00000813          	li	a6,0
   195e8:	00050793          	mv	a5,a0
   195ec:	10050693          	addi	a3,a0,256
   195f0:	00e78023          	sb	a4,0(a5)
   195f4:	00178793          	addi	a5,a5,1
   195f8:	fed79ce3          	bne	a5,a3,195f0 <__sccl+0x20>
   195fc:	00183713          	seqz	a4,a6
   19600:	02d00313          	li	t1,45
   19604:	05d00893          	li	a7,93
   19608:	02060a63          	beqz	a2,1963c <__sccl+0x6c>
   1960c:	00c507b3          	add	a5,a0,a2
   19610:	00e78023          	sb	a4,0(a5)
   19614:	0005c783          	lbu	a5,0(a1)
   19618:	00158813          	addi	a6,a1,1
   1961c:	02678863          	beq	a5,t1,1964c <__sccl+0x7c>
   19620:	03178263          	beq	a5,a7,19644 <__sccl+0x74>
   19624:	00078863          	beqz	a5,19634 <__sccl+0x64>
   19628:	00078613          	mv	a2,a5
   1962c:	00080593          	mv	a1,a6
   19630:	fddff06f          	j	1960c <__sccl+0x3c>
   19634:	00058513          	mv	a0,a1
   19638:	00008067          	ret
   1963c:	fff58513          	addi	a0,a1,-1
   19640:	00008067          	ret
   19644:	00080513          	mv	a0,a6
   19648:	00008067          	ret
   1964c:	0015c683          	lbu	a3,1(a1)
   19650:	fd168ce3          	beq	a3,a7,19628 <__sccl+0x58>
   19654:	fcc6cae3          	blt	a3,a2,19628 <__sccl+0x58>
   19658:	00258593          	addi	a1,a1,2
   1965c:	00c507b3          	add	a5,a0,a2
   19660:	00e780a3          	sb	a4,1(a5)
   19664:	0016061b          	addiw	a2,a2,1
   19668:	00178793          	addi	a5,a5,1
   1966c:	fed64ae3          	blt	a2,a3,19660 <__sccl+0x90>
   19670:	fa5ff06f          	j	19614 <__sccl+0x44>
   19674:	00100713          	li	a4,1
   19678:	0015c603          	lbu	a2,1(a1)
   1967c:	00070813          	mv	a6,a4
   19680:	00258593          	addi	a1,a1,2
   19684:	f65ff06f          	j	195e8 <__sccl+0x18>

0000000000019688 <nanf>:
   19688:	000247b7          	lui	a5,0x24
   1968c:	4a87a507          	flw	fa0,1192(a5) # 244a8 <mask+0x60>
   19690:	00008067          	ret

0000000000019694 <__fpclassifyd>:
   19694:	e20507d3          	fmv.x.d	a5,fa0
   19698:	00200513          	li	a0,2
   1969c:	4207d713          	srai	a4,a5,0x20
   196a0:	0007879b          	sext.w	a5,a5
   196a4:	00f766b3          	or	a3,a4,a5
   196a8:	00069463          	bnez	a3,196b0 <__fpclassifyd+0x1c>
   196ac:	00008067          	ret
   196b0:	800006b7          	lui	a3,0x80000
   196b4:	04d70863          	beq	a4,a3,19704 <__fpclassifyd+0x70>
   196b8:	fff006b7          	lui	a3,0xfff00
   196bc:	00d706bb          	addw	a3,a4,a3
   196c0:	7fe00637          	lui	a2,0x7fe00
   196c4:	00400513          	li	a0,4
   196c8:	fec6e2e3          	bltu	a3,a2,196ac <__fpclassifyd+0x18>
   196cc:	7ff006b7          	lui	a3,0x7ff00
   196d0:	00d706bb          	addw	a3,a4,a3
   196d4:	fcc6ece3          	bltu	a3,a2,196ac <__fpclassifyd+0x18>
   196d8:	800006b7          	lui	a3,0x80000
   196dc:	fff6c693          	not	a3,a3
   196e0:	00d77733          	and	a4,a4,a3
   196e4:	001006b7          	lui	a3,0x100
   196e8:	00300513          	li	a0,3
   196ec:	fcd760e3          	bltu	a4,a3,196ac <__fpclassifyd+0x18>
   196f0:	7ff006b7          	lui	a3,0x7ff00
   196f4:	00000513          	li	a0,0
   196f8:	fad71ae3          	bne	a4,a3,196ac <__fpclassifyd+0x18>
   196fc:	0017b513          	seqz	a0,a5
   19700:	00008067          	ret
   19704:	fc079ae3          	bnez	a5,196d8 <__fpclassifyd+0x44>
   19708:	00008067          	ret

000000000001970c <_sprintf_r>:
   1970c:	f0010113          	addi	sp,sp,-256
   19710:	0d810e13          	addi	t3,sp,216
   19714:	0ef13423          	sd	a5,232(sp)
   19718:	80000337          	lui	t1,0x80000
   1971c:	20800793          	li	a5,520
   19720:	00058e93          	mv	t4,a1
   19724:	fff34313          	not	t1,t1
   19728:	0cd13c23          	sd	a3,216(sp)
   1972c:	02f11023          	sh	a5,32(sp)
   19730:	01010593          	addi	a1,sp,16
   19734:	fff00793          	li	a5,-1
   19738:	000e0693          	mv	a3,t3
   1973c:	0c113423          	sd	ra,200(sp)
   19740:	02f11123          	sh	a5,34(sp)
   19744:	0ee13023          	sd	a4,224(sp)
   19748:	0f013823          	sd	a6,240(sp)
   1974c:	0f113c23          	sd	a7,248(sp)
   19750:	01d13823          	sd	t4,16(sp)
   19754:	03d13423          	sd	t4,40(sp)
   19758:	00612e23          	sw	t1,28(sp)
   1975c:	02612823          	sw	t1,48(sp)
   19760:	01c13423          	sd	t3,8(sp)
   19764:	0d5010ef          	jal	1b038 <_svfprintf_r>
   19768:	01013783          	ld	a5,16(sp)
   1976c:	00078023          	sb	zero,0(a5)
   19770:	0c813083          	ld	ra,200(sp)
   19774:	10010113          	addi	sp,sp,256
   19778:	00008067          	ret

000000000001977c <sprintf>:
   1977c:	00050e93          	mv	t4,a0
   19780:	f0010113          	addi	sp,sp,-256
   19784:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   19788:	0d010e13          	addi	t3,sp,208
   1978c:	0ef13423          	sd	a5,232(sp)
   19790:	80000337          	lui	t1,0x80000
   19794:	20800793          	li	a5,520
   19798:	fff34313          	not	t1,t1
   1979c:	0cc13823          	sd	a2,208(sp)
   197a0:	0cd13c23          	sd	a3,216(sp)
   197a4:	02f11023          	sh	a5,32(sp)
   197a8:	00058613          	mv	a2,a1
   197ac:	fff00793          	li	a5,-1
   197b0:	01010593          	addi	a1,sp,16
   197b4:	000e0693          	mv	a3,t3
   197b8:	0c113423          	sd	ra,200(sp)
   197bc:	02f11123          	sh	a5,34(sp)
   197c0:	0ee13023          	sd	a4,224(sp)
   197c4:	0f013823          	sd	a6,240(sp)
   197c8:	0f113c23          	sd	a7,248(sp)
   197cc:	01d13823          	sd	t4,16(sp)
   197d0:	03d13423          	sd	t4,40(sp)
   197d4:	00612e23          	sw	t1,28(sp)
   197d8:	02612823          	sw	t1,48(sp)
   197dc:	01c13423          	sd	t3,8(sp)
   197e0:	059010ef          	jal	1b038 <_svfprintf_r>
   197e4:	01013783          	ld	a5,16(sp)
   197e8:	00078023          	sb	zero,0(a5)
   197ec:	0c813083          	ld	ra,200(sp)
   197f0:	10010113          	addi	sp,sp,256
   197f4:	00008067          	ret

00000000000197f8 <__sread>:
   197f8:	01259503          	lh	a0,18(a1)
   197fc:	ff010113          	addi	sp,sp,-16
   19800:	00813023          	sd	s0,0(sp)
   19804:	00058413          	mv	s0,a1
   19808:	00060593          	mv	a1,a2
   1980c:	00068613          	mv	a2,a3
   19810:	00113423          	sd	ra,8(sp)
   19814:	359060ef          	jal	2036c <read>
   19818:	02054063          	bltz	a0,19838 <__sread+0x40>
   1981c:	09043783          	ld	a5,144(s0)
   19820:	00813083          	ld	ra,8(sp)
   19824:	00a787b3          	add	a5,a5,a0
   19828:	08f43823          	sd	a5,144(s0)
   1982c:	00013403          	ld	s0,0(sp)
   19830:	01010113          	addi	sp,sp,16
   19834:	00008067          	ret
   19838:	01045703          	lhu	a4,16(s0)
   1983c:	fffff7b7          	lui	a5,0xfffff
   19840:	00813083          	ld	ra,8(sp)
   19844:	fff7879b          	addiw	a5,a5,-1
   19848:	00f777b3          	and	a5,a4,a5
   1984c:	00f41823          	sh	a5,16(s0)
   19850:	00013403          	ld	s0,0(sp)
   19854:	01010113          	addi	sp,sp,16
   19858:	00008067          	ret

000000000001985c <__seofread>:
   1985c:	00000513          	li	a0,0
   19860:	00008067          	ret

0000000000019864 <__swrite>:
   19864:	01059703          	lh	a4,16(a1)
   19868:	fd010113          	addi	sp,sp,-48
   1986c:	02813023          	sd	s0,32(sp)
   19870:	00913c23          	sd	s1,24(sp)
   19874:	02113423          	sd	ra,40(sp)
   19878:	10077793          	andi	a5,a4,256
   1987c:	00058413          	mv	s0,a1
   19880:	00060493          	mv	s1,a2
   19884:	02078063          	beqz	a5,198a4 <__swrite+0x40>
   19888:	01259503          	lh	a0,18(a1)
   1988c:	00200613          	li	a2,2
   19890:	00000593          	li	a1,0
   19894:	00d13423          	sd	a3,8(sp)
   19898:	2c1060ef          	jal	20358 <lseek>
   1989c:	01041703          	lh	a4,16(s0)
   198a0:	00813683          	ld	a3,8(sp)
   198a4:	fffff7b7          	lui	a5,0xfffff
   198a8:	fff7879b          	addiw	a5,a5,-1
   198ac:	00f777b3          	and	a5,a4,a5
   198b0:	01241503          	lh	a0,18(s0)
   198b4:	00f41823          	sh	a5,16(s0)
   198b8:	00048593          	mv	a1,s1
   198bc:	02813083          	ld	ra,40(sp)
   198c0:	02013403          	ld	s0,32(sp)
   198c4:	01813483          	ld	s1,24(sp)
   198c8:	00068613          	mv	a2,a3
   198cc:	03010113          	addi	sp,sp,48
   198d0:	2b10606f          	j	20380 <write>

00000000000198d4 <__sseek>:
   198d4:	01259503          	lh	a0,18(a1)
   198d8:	ff010113          	addi	sp,sp,-16
   198dc:	00813023          	sd	s0,0(sp)
   198e0:	00058413          	mv	s0,a1
   198e4:	00060593          	mv	a1,a2
   198e8:	00068613          	mv	a2,a3
   198ec:	00113423          	sd	ra,8(sp)
   198f0:	269060ef          	jal	20358 <lseek>
   198f4:	fff00793          	li	a5,-1
   198f8:	01045703          	lhu	a4,16(s0)
   198fc:	02f50263          	beq	a0,a5,19920 <__sseek+0x4c>
   19900:	00813083          	ld	ra,8(sp)
   19904:	000017b7          	lui	a5,0x1
   19908:	00f767b3          	or	a5,a4,a5
   1990c:	08a43823          	sd	a0,144(s0)
   19910:	00f41823          	sh	a5,16(s0)
   19914:	00013403          	ld	s0,0(sp)
   19918:	01010113          	addi	sp,sp,16
   1991c:	00008067          	ret
   19920:	fffff7b7          	lui	a5,0xfffff
   19924:	00813083          	ld	ra,8(sp)
   19928:	fff7879b          	addiw	a5,a5,-1
   1992c:	00f777b3          	and	a5,a4,a5
   19930:	00f41823          	sh	a5,16(s0)
   19934:	00013403          	ld	s0,0(sp)
   19938:	01010113          	addi	sp,sp,16
   1993c:	00008067          	ret

0000000000019940 <__sclose>:
   19940:	01259503          	lh	a0,18(a1)
   19944:	2e90606f          	j	2042c <close>

0000000000019948 <_strtod_r>:
   19948:	f0010113          	addi	sp,sp,-256
   1994c:	0e813823          	sd	s0,240(sp)
   19950:	0f213023          	sd	s2,224(sp)
   19954:	0d313c23          	sd	s3,216(sp)
   19958:	0b713c23          	sd	s7,184(sp)
   1995c:	0b913423          	sd	s9,168(sp)
   19960:	0e113c23          	sd	ra,248(sp)
   19964:	0e913423          	sd	s1,232(sp)
   19968:	0d413823          	sd	s4,208(sp)
   1996c:	0d513423          	sd	s5,200(sp)
   19970:	0d613023          	sd	s6,192(sp)
   19974:	0b813823          	sd	s8,176(sp)
   19978:	0ba13023          	sd	s10,160(sp)
   1997c:	09b13c23          	sd	s11,152(sp)
   19980:	08813427          	fsd	fs0,136(sp)
   19984:	08913027          	fsd	fs1,128(sp)
   19988:	07213c27          	fsd	fs2,120(sp)
   1998c:	07313827          	fsd	fs3,112(sp)
   19990:	07413427          	fsd	fs4,104(sp)
   19994:	07513027          	fsd	fs5,96(sp)
   19998:	05613c27          	fsd	fs6,88(sp)
   1999c:	05713827          	fsd	fs7,80(sp)
   199a0:	04013023          	sd	zero,64(sp)
   199a4:	02b13c23          	sd	a1,56(sp)
   199a8:	00058b93          	mv	s7,a1
   199ac:	000bc783          	lbu	a5,0(s7)
   199b0:	00060993          	mv	s3,a2
   199b4:	000216b7          	lui	a3,0x21
   199b8:	02d00613          	li	a2,45
   199bc:	00058c93          	mv	s9,a1
   199c0:	00050413          	mv	s0,a0
   199c4:	00000913          	li	s2,0
   199c8:	f7868693          	addi	a3,a3,-136 # 20f78 <__mprec_bigtens+0x28>
   199cc:	28f66e63          	bltu	a2,a5,19c68 <_strtod_r+0x320>
   199d0:	00279713          	slli	a4,a5,0x2
   199d4:	00d70733          	add	a4,a4,a3
   199d8:	00072703          	lw	a4,0(a4) # ffffffffffffe000 <_end+0xfffffffffffd7238>
   199dc:	00070067          	jr	a4
   199e0:	00000a93          	li	s5,0
   199e4:	001b8713          	addi	a4,s7,1
   199e8:	02e13c23          	sd	a4,56(sp)
   199ec:	001bc783          	lbu	a5,1(s7)
   199f0:	1c078e63          	beqz	a5,19bcc <_strtod_r+0x284>
   199f4:	00070b93          	mv	s7,a4
   199f8:	03000713          	li	a4,48
   199fc:	000b8a13          	mv	s4,s7
   19a00:	00000b13          	li	s6,0
   19a04:	26e78c63          	beq	a5,a4,19c7c <_strtod_r+0x334>
   19a08:	fd07871b          	addiw	a4,a5,-48
   19a0c:	0ff77713          	andi	a4,a4,255
   19a10:	00900513          	li	a0,9
   19a14:	40e566e3          	bltu	a0,a4,1a620 <_strtod_r+0xcd8>
   19a18:	001a0593          	addi	a1,s4,1
   19a1c:	00000d93          	li	s11,0
   19a20:	00000d13          	li	s10,0
   19a24:	00000c13          	li	s8,0
   19a28:	00800813          	li	a6,8
   19a2c:	29884663          	blt	a6,s8,19cb8 <_strtod_r+0x370>
   19a30:	001d161b          	slliw	a2,s10,0x1
   19a34:	003d171b          	slliw	a4,s10,0x3
   19a38:	00e6073b          	addw	a4,a2,a4
   19a3c:	00f7073b          	addw	a4,a4,a5
   19a40:	fd070d1b          	addiw	s10,a4,-48
   19a44:	02b13c23          	sd	a1,56(sp)
   19a48:	0005c783          	lbu	a5,0(a1)
   19a4c:	00058913          	mv	s2,a1
   19a50:	001c0c1b          	addiw	s8,s8,1
   19a54:	fd07869b          	addiw	a3,a5,-48
   19a58:	0ff6f693          	andi	a3,a3,255
   19a5c:	00158593          	addi	a1,a1,1
   19a60:	fcd576e3          	bleu	a3,a0,19a2c <_strtod_r+0xe4>
   19a64:	00078493          	mv	s1,a5
   19a68:	00040513          	mv	a0,s0
   19a6c:	c0dfd0ef          	jal	17678 <_localeconv_r>
   19a70:	00053b83          	ld	s7,0(a0)
   19a74:	00040513          	mv	a0,s0
   19a78:	c01fd0ef          	jal	17678 <_localeconv_r>
   19a7c:	00053503          	ld	a0,0(a0)
   19a80:	fd1f70ef          	jal	11a50 <strlen>
   19a84:	00050613          	mv	a2,a0
   19a88:	000b8593          	mv	a1,s7
   19a8c:	00090513          	mv	a0,s2
   19a90:	5a0050ef          	jal	1f030 <strncmp>
   19a94:	32050e63          	beqz	a0,19dd0 <_strtod_r+0x488>
   19a98:	000c0693          	mv	a3,s8
   19a9c:	00000613          	li	a2,0
   19aa0:	00000593          	li	a1,0
   19aa4:	00000513          	li	a0,0
   19aa8:	fdf4f793          	andi	a5,s1,-33
   19aac:	04500713          	li	a4,69
   19ab0:	00000b93          	li	s7,0
   19ab4:	10e79463          	bne	a5,a4,19bbc <_strtod_r+0x274>
   19ab8:	00c6e7b3          	or	a5,a3,a2
   19abc:	0167e7b3          	or	a5,a5,s6
   19ac0:	10078663          	beqz	a5,19bcc <_strtod_r+0x284>
   19ac4:	03813c83          	ld	s9,56(sp)
   19ac8:	02b00713          	li	a4,43
   19acc:	001c8793          	addi	a5,s9,1
   19ad0:	02f13c23          	sd	a5,56(sp)
   19ad4:	001cc783          	lbu	a5,1(s9)
   19ad8:	22e780e3          	beq	a5,a4,1a4f8 <_strtod_r+0xbb0>
   19adc:	02d00713          	li	a4,45
   19ae0:	04e78ce3          	beq	a5,a4,1a338 <_strtod_r+0x9f0>
   19ae4:	00078493          	mv	s1,a5
   19ae8:	00000893          	li	a7,0
   19aec:	fd04879b          	addiw	a5,s1,-48
   19af0:	00900813          	li	a6,9
   19af4:	00048713          	mv	a4,s1
   19af8:	12f860e3          	bltu	a6,a5,1a418 <_strtod_r+0xad0>
   19afc:	03000793          	li	a5,48
   19b00:	02f49263          	bne	s1,a5,19b24 <_strtod_r+0x1dc>
   19b04:	03813783          	ld	a5,56(sp)
   19b08:	00048813          	mv	a6,s1
   19b0c:	00178793          	addi	a5,a5,1 # fffffffffffff001 <_end+0xfffffffffffd8239>
   19b10:	02f13c23          	sd	a5,56(sp)
   19b14:	0007c703          	lbu	a4,0(a5)
   19b18:	00178793          	addi	a5,a5,1
   19b1c:	00070493          	mv	s1,a4
   19b20:	ff0708e3          	beq	a4,a6,19b10 <_strtod_r+0x1c8>
   19b24:	fcf7071b          	addiw	a4,a4,-49
   19b28:	00800793          	li	a5,8
   19b2c:	00000b93          	li	s7,0
   19b30:	08e7e663          	bltu	a5,a4,19bbc <_strtod_r+0x274>
   19b34:	03813f03          	ld	t5,56(sp)
   19b38:	fd04879b          	addiw	a5,s1,-48
   19b3c:	00900e93          	li	t4,9
   19b40:	001f0e13          	addi	t3,t5,1 # 10001 <_ftext+0x1>
   19b44:	03c13c23          	sd	t3,56(sp)
   19b48:	001f4483          	lbu	s1,1(t5)
   19b4c:	fd04871b          	addiw	a4,s1,-48
   19b50:	0ff77713          	andi	a4,a4,255
   19b54:	02eeee63          	bltu	t4,a4,19b90 <_strtod_r+0x248>
   19b58:	002f0313          	addi	t1,t5,2
   19b5c:	02613c23          	sd	t1,56(sp)
   19b60:	00034803          	lbu	a6,0(t1) # ffffffff80000000 <_end+0xffffffff7ffd9238>
   19b64:	0017971b          	slliw	a4,a5,0x1
   19b68:	0037979b          	slliw	a5,a5,0x3
   19b6c:	00f707bb          	addw	a5,a4,a5
   19b70:	fd08071b          	addiw	a4,a6,-48
   19b74:	009787bb          	addw	a5,a5,s1
   19b78:	0ff77713          	andi	a4,a4,255
   19b7c:	00030e13          	mv	t3,t1
   19b80:	fd07879b          	addiw	a5,a5,-48
   19b84:	00080493          	mv	s1,a6
   19b88:	00130313          	addi	t1,t1,1
   19b8c:	fceef8e3          	bleu	a4,t4,19b5c <_strtod_r+0x214>
   19b90:	00005737          	lui	a4,0x5
   19b94:	41ee0e33          	sub	t3,t3,t5
   19b98:	00800813          	li	a6,8
   19b9c:	e1f70b9b          	addiw	s7,a4,-481
   19ba0:	01c84a63          	blt	a6,t3,19bb4 <_strtod_r+0x26c>
   19ba4:	e1f7071b          	addiw	a4,a4,-481
   19ba8:	00078b93          	mv	s7,a5
   19bac:	00f75463          	ble	a5,a4,19bb4 <_strtod_r+0x26c>
   19bb0:	00070b93          	mv	s7,a4
   19bb4:	00088463          	beqz	a7,19bbc <_strtod_r+0x274>
   19bb8:	41700bbb          	negw	s7,s7
   19bbc:	10069a63          	bnez	a3,19cd0 <_strtod_r+0x388>
   19bc0:	01666b33          	or	s6,a2,s6
   19bc4:	200b1263          	bnez	s6,19dc8 <_strtod_r+0x480>
   19bc8:	70050a63          	beqz	a0,1a2dc <_strtod_r+0x994>
   19bcc:	00000493          	li	s1,0
   19bd0:	00000a93          	li	s5,0
   19bd4:	00098663          	beqz	s3,19be0 <_strtod_r+0x298>
   19bd8:	0199b023          	sd	s9,0(s3)
   19bdc:	060a9263          	bnez	s5,19c40 <_strtod_r+0x2f8>
   19be0:	0f813083          	ld	ra,248(sp)
   19be4:	f2048553          	fmv.d.x	fa0,s1
   19be8:	0f013403          	ld	s0,240(sp)
   19bec:	0e813483          	ld	s1,232(sp)
   19bf0:	0e013903          	ld	s2,224(sp)
   19bf4:	0d813983          	ld	s3,216(sp)
   19bf8:	0d013a03          	ld	s4,208(sp)
   19bfc:	0c813a83          	ld	s5,200(sp)
   19c00:	0c013b03          	ld	s6,192(sp)
   19c04:	0b813b83          	ld	s7,184(sp)
   19c08:	0b013c03          	ld	s8,176(sp)
   19c0c:	0a813c83          	ld	s9,168(sp)
   19c10:	0a013d03          	ld	s10,160(sp)
   19c14:	09813d83          	ld	s11,152(sp)
   19c18:	08813407          	fld	fs0,136(sp)
   19c1c:	08013487          	fld	fs1,128(sp)
   19c20:	07813907          	fld	fs2,120(sp)
   19c24:	07013987          	fld	fs3,112(sp)
   19c28:	06813a07          	fld	fs4,104(sp)
   19c2c:	06013a87          	fld	fs5,96(sp)
   19c30:	05813b07          	fld	fs6,88(sp)
   19c34:	05013b87          	fld	fs7,80(sp)
   19c38:	10010113          	addi	sp,sp,256
   19c3c:	00008067          	ret
   19c40:	f20487d3          	fmv.d.x	fa5,s1
   19c44:	22f797d3          	fneg.d	fa5,fa5
   19c48:	e20784d3          	fmv.x.d	s1,fa5
   19c4c:	f95ff06f          	j	19be0 <_strtod_r+0x298>
   19c50:	00100a93          	li	s5,1
   19c54:	d91ff06f          	j	199e4 <_strtod_r+0x9c>
   19c58:	001b8b93          	addi	s7,s7,1
   19c5c:	03713c23          	sd	s7,56(sp)
   19c60:	000bc783          	lbu	a5,0(s7)
   19c64:	d6f676e3          	bleu	a5,a2,199d0 <_strtod_r+0x88>
   19c68:	03000713          	li	a4,48
   19c6c:	00000a93          	li	s5,0
   19c70:	000b8a13          	mv	s4,s7
   19c74:	00000b13          	li	s6,0
   19c78:	d8e798e3          	bne	a5,a4,19a08 <_strtod_r+0xc0>
   19c7c:	001bc703          	lbu	a4,1(s7)
   19c80:	05800693          	li	a3,88
   19c84:	7ad70063          	beq	a4,a3,1a424 <_strtod_r+0xadc>
   19c88:	07800693          	li	a3,120
   19c8c:	78d70c63          	beq	a4,a3,1a424 <_strtod_r+0xadc>
   19c90:	001b8713          	addi	a4,s7,1
   19c94:	00070a13          	mv	s4,a4
   19c98:	02e13c23          	sd	a4,56(sp)
   19c9c:	00170713          	addi	a4,a4,1 # 5001 <_ftext-0xafff>
   19ca0:	fff74483          	lbu	s1,-1(a4)
   19ca4:	fef488e3          	beq	s1,a5,19c94 <_strtod_r+0x34c>
   19ca8:	12048063          	beqz	s1,19dc8 <_strtod_r+0x480>
   19cac:	00048793          	mv	a5,s1
   19cb0:	00100b13          	li	s6,1
   19cb4:	d55ff06f          	j	19a08 <_strtod_r+0xc0>
   19cb8:	001d961b          	slliw	a2,s11,0x1
   19cbc:	003d969b          	slliw	a3,s11,0x3
   19cc0:	00d606bb          	addw	a3,a2,a3
   19cc4:	00f687bb          	addw	a5,a3,a5
   19cc8:	fd078d9b          	addiw	s11,a5,-48
   19ccc:	d79ff06f          	j	19a44 <_strtod_r+0xfc>
   19cd0:	40bb8bbb          	subw	s7,s7,a1
   19cd4:	000c1463          	bnez	s8,19cdc <_strtod_r+0x394>
   19cd8:	00068c13          	mv	s8,a3
   19cdc:	01000793          	li	a5,16
   19ce0:	00068713          	mv	a4,a3
   19ce4:	00d7d463          	ble	a3,a5,19cec <_strtod_r+0x3a4>
   19ce8:	00078713          	mv	a4,a5
   19cec:	d21d07d3          	fcvt.d.wu	fa5,s10
   19cf0:	00900793          	li	a5,9
   19cf4:	e20785d3          	fmv.x.d	a1,fa5
   19cf8:	00058913          	mv	s2,a1
   19cfc:	02e7d663          	ble	a4,a5,19d28 <_strtod_r+0x3e0>
   19d00:	ff77079b          	addiw	a5,a4,-9
   19d04:	00021637          	lui	a2,0x21
   19d08:	00379793          	slli	a5,a5,0x3
   19d0c:	e6060613          	addi	a2,a2,-416 # 20e60 <__mprec_tens>
   19d10:	00c78633          	add	a2,a5,a2
   19d14:	d21d87d3          	fcvt.d.wu	fa5,s11
   19d18:	00063707          	fld	fa4,0(a2)
   19d1c:	f20586d3          	fmv.d.x	fa3,a1
   19d20:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   19d24:	e2078953          	fmv.x.d	s2,fa5
   19d28:	00f00793          	li	a5,15
   19d2c:	10d7c663          	blt	a5,a3,19e38 <_strtod_r+0x4f0>
   19d30:	080b8863          	beqz	s7,19dc0 <_strtod_r+0x478>
   19d34:	357054e3          	blez	s7,1a87c <_strtod_r+0xf34>
   19d38:	01600613          	li	a2,22
   19d3c:	29764ce3          	blt	a2,s7,1a7d4 <_strtod_r+0xe8c>
   19d40:	00021737          	lui	a4,0x21
   19d44:	003b9793          	slli	a5,s7,0x3
   19d48:	e6070713          	addi	a4,a4,-416 # 20e60 <__mprec_tens>
   19d4c:	00e787b3          	add	a5,a5,a4
   19d50:	0007b787          	fld	fa5,0(a5)
   19d54:	f2090753          	fmv.d.x	fa4,s2
   19d58:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   19d5c:	e20784d3          	fmv.x.d	s1,fa5
   19d60:	e6098ee3          	beqz	s3,19bdc <_strtod_r+0x294>
   19d64:	03813c83          	ld	s9,56(sp)
   19d68:	0199b023          	sd	s9,0(s3)
   19d6c:	e71ff06f          	j	19bdc <_strtod_r+0x294>
   19d70:	00022737          	lui	a4,0x22
   19d74:	02d13c23          	sd	a3,56(sp)
   19d78:	00068613          	mv	a2,a3
   19d7c:	d3870713          	addi	a4,a4,-712 # 21d38 <zeroes.4123+0x708>
   19d80:	01900893          	li	a7,25
   19d84:	00170713          	addi	a4,a4,1
   19d88:	fff74503          	lbu	a0,-1(a4)
   19d8c:	00160613          	addi	a2,a2,1
   19d90:	480500e3          	beqz	a0,1aa10 <_strtod_r+0x10c8>
   19d94:	00064583          	lbu	a1,0(a2)
   19d98:	fbf5879b          	addiw	a5,a1,-65
   19d9c:	0ff7f793          	andi	a5,a5,255
   19da0:	00058813          	mv	a6,a1
   19da4:	00f8e463          	bltu	a7,a5,19dac <_strtod_r+0x464>
   19da8:	0205881b          	addiw	a6,a1,32
   19dac:	fca80ce3          	beq	a6,a0,19d84 <_strtod_r+0x43c>
   19db0:	00168693          	addi	a3,a3,1
   19db4:	02d13c23          	sd	a3,56(sp)
   19db8:	7ff00913          	li	s2,2047
   19dbc:	03491913          	slli	s2,s2,0x34
   19dc0:	00090493          	mv	s1,s2
   19dc4:	f9dff06f          	j	19d60 <_strtod_r+0x418>
   19dc8:	00000493          	li	s1,0
   19dcc:	f95ff06f          	j	19d60 <_strtod_r+0x418>
   19dd0:	00040513          	mv	a0,s0
   19dd4:	8a5fd0ef          	jal	17678 <_localeconv_r>
   19dd8:	00053503          	ld	a0,0(a0)
   19ddc:	c75f70ef          	jal	11a50 <strlen>
   19de0:	03813783          	ld	a5,56(sp)
   19de4:	00a78533          	add	a0,a5,a0
   19de8:	02a13c23          	sd	a0,56(sp)
   19dec:	00054483          	lbu	s1,0(a0)
   19df0:	4a0c1863          	bnez	s8,1a2a0 <_strtod_r+0x958>
   19df4:	03000793          	li	a5,48
   19df8:	2ef494e3          	bne	s1,a5,1a8e0 <_strtod_r+0xf98>
   19dfc:	00150793          	addi	a5,a0,1
   19e00:	00000613          	li	a2,0
   19e04:	00048713          	mv	a4,s1
   19e08:	02f13c23          	sd	a5,56(sp)
   19e0c:	0007c483          	lbu	s1,0(a5)
   19e10:	0016061b          	addiw	a2,a2,1
   19e14:	00178793          	addi	a5,a5,1
   19e18:	fee488e3          	beq	s1,a4,19e08 <_strtod_r+0x4c0>
   19e1c:	fcf4879b          	addiw	a5,s1,-49
   19e20:	00800713          	li	a4,8
   19e24:	16f778e3          	bleu	a5,a4,1a794 <_strtod_r+0xe4c>
   19e28:	00000693          	li	a3,0
   19e2c:	00000593          	li	a1,0
   19e30:	00100513          	li	a0,1
   19e34:	c75ff06f          	j	19aa8 <_strtod_r+0x160>
   19e38:	40e6873b          	subw	a4,a3,a4
   19e3c:	0177073b          	addw	a4,a4,s7
   19e40:	70e05a63          	blez	a4,1a554 <_strtod_r+0xc0c>
   19e44:	00f77793          	andi	a5,a4,15
   19e48:	02078263          	beqz	a5,19e6c <_strtod_r+0x524>
   19e4c:	00021637          	lui	a2,0x21
   19e50:	00379793          	slli	a5,a5,0x3
   19e54:	e6060613          	addi	a2,a2,-416 # 20e60 <__mprec_tens>
   19e58:	00c787b3          	add	a5,a5,a2
   19e5c:	f2090753          	fmv.d.x	fa4,s2
   19e60:	0007b787          	fld	fa5,0(a5)
   19e64:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   19e68:	e2078953          	fmv.x.d	s2,fa5
   19e6c:	ff077793          	andi	a5,a4,-16
   19e70:	0c078863          	beqz	a5,19f40 <_strtod_r+0x5f8>
   19e74:	13400713          	li	a4,308
   19e78:	4cf74a63          	blt	a4,a5,1a34c <_strtod_r+0xa04>
   19e7c:	4047d79b          	sraiw	a5,a5,0x4
   19e80:	00100513          	li	a0,1
   19e84:	3af55ce3          	ble	a5,a0,1aa3c <_strtod_r+0x10f4>
   19e88:	00021737          	lui	a4,0x21
   19e8c:	f5070313          	addi	t1,a4,-176 # 20f50 <__mprec_bigtens>
   19e90:	00090813          	mv	a6,s2
   19e94:	f5070713          	addi	a4,a4,-176
   19e98:	00000893          	li	a7,0
   19e9c:	00000613          	li	a2,0
   19ea0:	0017f593          	andi	a1,a5,1
   19ea4:	00058c63          	beqz	a1,19ebc <_strtod_r+0x574>
   19ea8:	f2080753          	fmv.d.x	fa4,a6
   19eac:	00073787          	fld	fa5,0(a4)
   19eb0:	00100893          	li	a7,1
   19eb4:	12f777d3          	fmul.d	fa5,fa4,fa5
   19eb8:	e2078853          	fmv.x.d	a6,fa5
   19ebc:	4017d79b          	sraiw	a5,a5,0x1
   19ec0:	0016061b          	addiw	a2,a2,1
   19ec4:	00870713          	addi	a4,a4,8
   19ec8:	fca79ce3          	bne	a5,a0,19ea0 <_strtod_r+0x558>
   19ecc:	500890e3          	bnez	a7,1abcc <_strtod_r+0x1284>
   19ed0:	00361793          	slli	a5,a2,0x3
   19ed4:	42095713          	srai	a4,s2,0x20
   19ed8:	00f30633          	add	a2,t1,a5
   19edc:	fcb007b7          	lui	a5,0xfcb00
   19ee0:	00f707bb          	addw	a5,a4,a5
   19ee4:	fff00713          	li	a4,-1
   19ee8:	02075713          	srli	a4,a4,0x20
   19eec:	02079793          	slli	a5,a5,0x20
   19ef0:	00e97933          	and	s2,s2,a4
   19ef4:	00f96933          	or	s2,s2,a5
   19ef8:	00063787          	fld	fa5,0(a2)
   19efc:	f2090753          	fmv.d.x	fa4,s2
   19f00:	7ff007b7          	lui	a5,0x7ff00
   19f04:	7ca005b7          	lui	a1,0x7ca00
   19f08:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   19f0c:	e2078953          	fmv.x.d	s2,fa5
   19f10:	42095613          	srai	a2,s2,0x20
   19f14:	00f677b3          	and	a5,a2,a5
   19f18:	42f5ea63          	bltu	a1,a5,1a34c <_strtod_r+0xa04>
   19f1c:	7c9005b7          	lui	a1,0x7c900
   19f20:	2cf5f4e3          	bleu	a5,a1,1a9e8 <_strtod_r+0x10a0>
   19f24:	7ff007b7          	lui	a5,0x7ff00
   19f28:	02091913          	slli	s2,s2,0x20
   19f2c:	fff78793          	addi	a5,a5,-1 # 7fefffff <_end+0x7fed9237>
   19f30:	02095913          	srli	s2,s2,0x20
   19f34:	02079793          	slli	a5,a5,0x20
   19f38:	00f96933          	or	s2,s2,a5
   19f3c:	00e96933          	or	s2,s2,a4
   19f40:	00000c93          	li	s9,0
   19f44:	000d0713          	mv	a4,s10
   19f48:	000c0613          	mv	a2,s8
   19f4c:	000a0593          	mv	a1,s4
   19f50:	00040513          	mv	a0,s0
   19f54:	818fe0ef          	jal	17f6c <__s2b>
   19f58:	00050d13          	mv	s10,a0
   19f5c:	3e050863          	beqz	a0,1a34c <_strtod_r+0xa04>
   19f60:	417007bb          	negw	a5,s7
   19f64:	41fbdd9b          	sraiw	s11,s7,0x1f
   19f68:	00fdf7b3          	and	a5,s11,a5
   19f6c:	01712423          	sw	s7,8(sp)
   19f70:	00f12623          	sw	a5,12(sp)
   19f74:	100bc0e3          	bltz	s7,1a874 <_strtod_r+0xf2c>
   19f78:	000247b7          	lui	a5,0x24
   19f7c:	4907b907          	fld	fs2,1168(a5) # 24490 <mask+0x48>
   19f80:	000247b7          	lui	a5,0x24
   19f84:	4b87b487          	fld	fs1,1208(a5) # 244b8 <mask+0x70>
   19f88:	000247b7          	lui	a5,0x24
   19f8c:	4707b987          	fld	fs3,1136(a5) # 24470 <mask+0x28>
   19f90:	000247b7          	lui	a5,0x24
   19f94:	4b07bb07          	fld	fs6,1200(a5) # 244b0 <mask+0x68>
   19f98:	000247b7          	lui	a5,0x24
   19f9c:	23290ad3          	fmv.d	fs5,fs2
   19fa0:	4c87ba07          	fld	fs4,1224(a5) # 244c8 <mask+0x80>
   19fa4:	00000c13          	li	s8,0
   19fa8:	00000a13          	li	s4,0
   19fac:	008d2583          	lw	a1,8(s10)
   19fb0:	00040513          	mv	a0,s0
   19fb4:	dd9fd0ef          	jal	17d8c <_Balloc>
   19fb8:	00050b13          	mv	s6,a0
   19fbc:	3a050263          	beqz	a0,1a360 <_strtod_r+0xa18>
   19fc0:	014d2603          	lw	a2,20(s10)
   19fc4:	010d0593          	addi	a1,s10,16
   19fc8:	01050513          	addi	a0,a0,16
   19fcc:	00260613          	addi	a2,a2,2
   19fd0:	00261613          	slli	a2,a2,0x2
   19fd4:	cc8f70ef          	jal	1149c <memcpy>
   19fd8:	f20905d3          	fmv.d.x	fa1,s2
   19fdc:	04810693          	addi	a3,sp,72
   19fe0:	03410613          	addi	a2,sp,52
   19fe4:	00040513          	mv	a0,s0
   19fe8:	addfe0ef          	jal	18ac4 <__d2b>
   19fec:	04a13023          	sd	a0,64(sp)
   19ff0:	00090493          	mv	s1,s2
   19ff4:	36050863          	beqz	a0,1a364 <_strtod_r+0xa1c>
   19ff8:	00100593          	li	a1,1
   19ffc:	00040513          	mv	a0,s0
   1a000:	9c4fe0ef          	jal	181c4 <__i2b>
   1a004:	00050a13          	mv	s4,a0
   1a008:	34050c63          	beqz	a0,1a360 <_strtod_r+0xa18>
   1a00c:	03412703          	lw	a4,52(sp)
   1a010:	3a074e63          	bltz	a4,1a3cc <_strtod_r+0xa84>
   1a014:	00c12783          	lw	a5,12(sp)
   1a018:	00812583          	lw	a1,8(sp)
   1a01c:	00e78dbb          	addw	s11,a5,a4
   1a020:	04812503          	lw	a0,72(sp)
   1a024:	4197073b          	subw	a4,a4,s9
   1a028:	00100693          	li	a3,1
   1a02c:	00a7073b          	addw	a4,a4,a0
   1a030:	03600793          	li	a5,54
   1a034:	fff7071b          	addiw	a4,a4,-1
   1a038:	c0200613          	li	a2,-1022
   1a03c:	00012c23          	sw	zero,24(sp)
   1a040:	00d12823          	sw	a3,16(sp)
   1a044:	40a787bb          	subw	a5,a5,a0
   1a048:	00c75e63          	ble	a2,a4,1a064 <_strtod_r+0x71c>
   1a04c:	40e6063b          	subw	a2,a2,a4
   1a050:	01f00513          	li	a0,31
   1a054:	40c787bb          	subw	a5,a5,a2
   1a058:	38c54263          	blt	a0,a2,1a3dc <_strtod_r+0xa94>
   1a05c:	00c6973b          	sllw	a4,a3,a2
   1a060:	00e12823          	sw	a4,16(sp)
   1a064:	00f5873b          	addw	a4,a1,a5
   1a068:	00fd87bb          	addw	a5,s11,a5
   1a06c:	00ec8bbb          	addw	s7,s9,a4
   1a070:	000d8593          	mv	a1,s11
   1a074:	01b7d463          	ble	s11,a5,1a07c <_strtod_r+0x734>
   1a078:	00078593          	mv	a1,a5
   1a07c:	000b8613          	mv	a2,s7
   1a080:	0175d463          	ble	s7,a1,1a088 <_strtod_r+0x740>
   1a084:	00058613          	mv	a2,a1
   1a088:	00c05863          	blez	a2,1a098 <_strtod_r+0x750>
   1a08c:	40c787bb          	subw	a5,a5,a2
   1a090:	40cb8bbb          	subw	s7,s7,a2
   1a094:	40cd8dbb          	subw	s11,s11,a2
   1a098:	00c12703          	lw	a4,12(sp)
   1a09c:	06070063          	beqz	a4,1a0fc <_strtod_r+0x7b4>
   1a0a0:	000a0593          	mv	a1,s4
   1a0a4:	00070613          	mv	a2,a4
   1a0a8:	00040513          	mv	a0,s0
   1a0ac:	02f13023          	sd	a5,32(sp)
   1a0b0:	b3cfe0ef          	jal	183ec <__pow5mult>
   1a0b4:	00050a13          	mv	s4,a0
   1a0b8:	02013783          	ld	a5,32(sp)
   1a0bc:	2a050263          	beqz	a0,1a360 <_strtod_r+0xa18>
   1a0c0:	04013603          	ld	a2,64(sp)
   1a0c4:	00050593          	mv	a1,a0
   1a0c8:	00040513          	mv	a0,s0
   1a0cc:	02f13023          	sd	a5,32(sp)
   1a0d0:	928fe0ef          	jal	181f8 <__multiply>
   1a0d4:	02013783          	ld	a5,32(sp)
   1a0d8:	28050463          	beqz	a0,1a360 <_strtod_r+0xa18>
   1a0dc:	04013583          	ld	a1,64(sp)
   1a0e0:	02a13423          	sd	a0,40(sp)
   1a0e4:	00040513          	mv	a0,s0
   1a0e8:	02f13023          	sd	a5,32(sp)
   1a0ec:	d4dfd0ef          	jal	17e38 <_Bfree>
   1a0f0:	02813603          	ld	a2,40(sp)
   1a0f4:	02013783          	ld	a5,32(sp)
   1a0f8:	04c13023          	sd	a2,64(sp)
   1a0fc:	00f05e63          	blez	a5,1a118 <_strtod_r+0x7d0>
   1a100:	04013583          	ld	a1,64(sp)
   1a104:	00078613          	mv	a2,a5
   1a108:	00040513          	mv	a0,s0
   1a10c:	c18fe0ef          	jal	18524 <__lshift>
   1a110:	04a13023          	sd	a0,64(sp)
   1a114:	24050863          	beqz	a0,1a364 <_strtod_r+0xa1c>
   1a118:	00812783          	lw	a5,8(sp)
   1a11c:	00078e63          	beqz	a5,1a138 <_strtod_r+0x7f0>
   1a120:	00812603          	lw	a2,8(sp)
   1a124:	000b0593          	mv	a1,s6
   1a128:	00040513          	mv	a0,s0
   1a12c:	ac0fe0ef          	jal	183ec <__pow5mult>
   1a130:	00050b13          	mv	s6,a0
   1a134:	22050663          	beqz	a0,1a360 <_strtod_r+0xa18>
   1a138:	01705e63          	blez	s7,1a154 <_strtod_r+0x80c>
   1a13c:	000b0593          	mv	a1,s6
   1a140:	000b8613          	mv	a2,s7
   1a144:	00040513          	mv	a0,s0
   1a148:	bdcfe0ef          	jal	18524 <__lshift>
   1a14c:	00050b13          	mv	s6,a0
   1a150:	20050863          	beqz	a0,1a360 <_strtod_r+0xa18>
   1a154:	01b05e63          	blez	s11,1a170 <_strtod_r+0x828>
   1a158:	000a0593          	mv	a1,s4
   1a15c:	000d8613          	mv	a2,s11
   1a160:	00040513          	mv	a0,s0
   1a164:	bc0fe0ef          	jal	18524 <__lshift>
   1a168:	00050a13          	mv	s4,a0
   1a16c:	1e050a63          	beqz	a0,1a360 <_strtod_r+0xa18>
   1a170:	04013583          	ld	a1,64(sp)
   1a174:	000b0613          	mv	a2,s6
   1a178:	00040513          	mv	a0,s0
   1a17c:	d68fe0ef          	jal	186e4 <__mdiff>
   1a180:	00050c13          	mv	s8,a0
   1a184:	1c050e63          	beqz	a0,1a360 <_strtod_r+0xa18>
   1a188:	01052783          	lw	a5,16(a0)
   1a18c:	000a0593          	mv	a1,s4
   1a190:	00052823          	sw	zero,16(a0)
   1a194:	00078b93          	mv	s7,a5
   1a198:	cecfe0ef          	jal	18684 <__mcmp>
   1a19c:	7c054063          	bltz	a0,1a95c <_strtod_r+0x1014>
   1a1a0:	74050463          	beqz	a0,1a8e8 <_strtod_r+0xfa0>
   1a1a4:	000a0593          	mv	a1,s4
   1a1a8:	000c0513          	mv	a0,s8
   1a1ac:	a55fe0ef          	jal	18c00 <__ratio>
   1a1b0:	a29507d3          	fle.d	a5,fa0,fs1
   1a1b4:	20078063          	beqz	a5,1a3b4 <_strtod_r+0xa6c>
   1a1b8:	220b8e63          	beqz	s7,1a3f4 <_strtod_r+0xaac>
   1a1bc:	00024737          	lui	a4,0x24
   1a1c0:	47073407          	fld	fs0,1136(a4) # 24470 <mask+0x28>
   1a1c4:	3ff00793          	li	a5,1023
   1a1c8:	03479793          	slli	a5,a5,0x34
   1a1cc:	42095713          	srai	a4,s2,0x20
   1a1d0:	7ff006b7          	lui	a3,0x7ff00
   1a1d4:	00d77633          	and	a2,a4,a3
   1a1d8:	7fe005b7          	lui	a1,0x7fe00
   1a1dc:	28b60863          	beq	a2,a1,1a46c <_strtod_r+0xb24>
   1a1e0:	040c8c63          	beqz	s9,1a238 <_strtod_r+0x8f0>
   1a1e4:	06a00737          	lui	a4,0x6a00
   1a1e8:	04c76863          	bltu	a4,a2,1a238 <_strtod_r+0x8f0>
   1a1ec:	00024737          	lui	a4,0x24
   1a1f0:	4c073787          	fld	fa5,1216(a4) # 244c0 <mask+0x78>
   1a1f4:	a2f40753          	fle.d	a4,fs0,fa5
   1a1f8:	02070063          	beqz	a4,1a218 <_strtod_r+0x8d0>
   1a1fc:	c21417d3          	fcvt.wu.d	a5,fs0,rtz
   1a200:	62078063          	beqz	a5,1a820 <_strtod_r+0xed8>
   1a204:	d2178453          	fcvt.d.wu	fs0,a5
   1a208:	e20407d3          	fmv.x.d	a5,fs0
   1a20c:	000b9663          	bnez	s7,1a218 <_strtod_r+0x8d0>
   1a210:	228417d3          	fneg.d	fa5,fs0
   1a214:	e20787d3          	fmv.x.d	a5,fa5
   1a218:	4207d713          	srai	a4,a5,0x20
   1a21c:	06b006b7          	lui	a3,0x6b00
   1a220:	00d7073b          	addw	a4,a4,a3
   1a224:	40c7073b          	subw	a4,a4,a2
   1a228:	02079793          	slli	a5,a5,0x20
   1a22c:	02071713          	slli	a4,a4,0x20
   1a230:	0207d793          	srli	a5,a5,0x20
   1a234:	00e7e7b3          	or	a5,a5,a4
   1a238:	f2048553          	fmv.d.x	fa0,s1
   1a23c:	00c13823          	sd	a2,16(sp)
   1a240:	f2078bd3          	fmv.d.x	fs7,a5
   1a244:	eb0fe0ef          	jal	188f4 <__ulp>
   1a248:	f20487d3          	fmv.d.x	fa5,s1
   1a24c:	01013603          	ld	a2,16(sp)
   1a250:	7aabf7c3          	fmadd.d	fa5,fs7,fa0,fa5
   1a254:	e2078953          	fmv.x.d	s2,fa5
   1a258:	42095713          	srai	a4,s2,0x20
   1a25c:	000c9863          	bnez	s9,1a26c <_strtod_r+0x924>
   1a260:	7ff007b7          	lui	a5,0x7ff00
   1a264:	00f777b3          	and	a5,a4,a5
   1a268:	28f60c63          	beq	a2,a5,1a500 <_strtod_r+0xbb8>
   1a26c:	04013583          	ld	a1,64(sp)
   1a270:	00040513          	mv	a0,s0
   1a274:	bc5fd0ef          	jal	17e38 <_Bfree>
   1a278:	000b0593          	mv	a1,s6
   1a27c:	00040513          	mv	a0,s0
   1a280:	bb9fd0ef          	jal	17e38 <_Bfree>
   1a284:	000a0593          	mv	a1,s4
   1a288:	00040513          	mv	a0,s0
   1a28c:	badfd0ef          	jal	17e38 <_Bfree>
   1a290:	000c0593          	mv	a1,s8
   1a294:	00040513          	mv	a0,s0
   1a298:	ba1fd0ef          	jal	17e38 <_Bfree>
   1a29c:	d11ff06f          	j	19fac <_strtod_r+0x664>
   1a2a0:	000c0693          	mv	a3,s8
   1a2a4:	00000613          	li	a2,0
   1a2a8:	00000593          	li	a1,0
   1a2ac:	fd04851b          	addiw	a0,s1,-48
   1a2b0:	00900793          	li	a5,9
   1a2b4:	b6a7eee3          	bltu	a5,a0,19e30 <_strtod_r+0x4e8>
   1a2b8:	0016071b          	addiw	a4,a2,1
   1a2bc:	00050493          	mv	s1,a0
   1a2c0:	46051863          	bnez	a0,1a730 <_strtod_r+0xde8>
   1a2c4:	03813803          	ld	a6,56(sp)
   1a2c8:	00070613          	mv	a2,a4
   1a2cc:	00180793          	addi	a5,a6,1
   1a2d0:	02f13c23          	sd	a5,56(sp)
   1a2d4:	00184483          	lbu	s1,1(a6)
   1a2d8:	fd5ff06f          	j	1a2ac <_strtod_r+0x964>
   1a2dc:	04e00793          	li	a5,78
   1a2e0:	00f48c63          	beq	s1,a5,1a2f8 <_strtod_r+0x9b0>
   1a2e4:	5497d463          	ble	s1,a5,1a82c <_strtod_r+0xee4>
   1a2e8:	06900793          	li	a5,105
   1a2ec:	54f48463          	beq	s1,a5,1a834 <_strtod_r+0xeec>
   1a2f0:	06e00793          	li	a5,110
   1a2f4:	8cf49ce3          	bne	s1,a5,19bcc <_strtod_r+0x284>
   1a2f8:	03813603          	ld	a2,56(sp)
   1a2fc:	00022737          	lui	a4,0x22
   1a300:	d4070713          	addi	a4,a4,-704 # 21d40 <zeroes.4123+0x710>
   1a304:	01900813          	li	a6,25
   1a308:	00170713          	addi	a4,a4,1
   1a30c:	fff74583          	lbu	a1,-1(a4)
   1a310:	5a058663          	beqz	a1,1a8bc <_strtod_r+0xf74>
   1a314:	00160613          	addi	a2,a2,1
   1a318:	00064683          	lbu	a3,0(a2)
   1a31c:	fbf6879b          	addiw	a5,a3,-65
   1a320:	0ff7f793          	andi	a5,a5,255
   1a324:	00068513          	mv	a0,a3
   1a328:	00f86463          	bltu	a6,a5,1a330 <_strtod_r+0x9e8>
   1a32c:	0206851b          	addiw	a0,a3,32
   1a330:	fcb50ce3          	beq	a0,a1,1a308 <_strtod_r+0x9c0>
   1a334:	899ff06f          	j	19bcc <_strtod_r+0x284>
   1a338:	00100893          	li	a7,1
   1a33c:	002c8793          	addi	a5,s9,2
   1a340:	02f13c23          	sd	a5,56(sp)
   1a344:	002cc483          	lbu	s1,2(s9)
   1a348:	fa4ff06f          	j	19aec <_strtod_r+0x1a4>
   1a34c:	02200793          	li	a5,34
   1a350:	7ff00493          	li	s1,2047
   1a354:	00f42023          	sw	a5,0(s0)
   1a358:	03449493          	slli	s1,s1,0x34
   1a35c:	a05ff06f          	j	19d60 <_strtod_r+0x418>
   1a360:	04013503          	ld	a0,64(sp)
   1a364:	02200793          	li	a5,34
   1a368:	7ff00493          	li	s1,2047
   1a36c:	00f42023          	sw	a5,0(s0)
   1a370:	03449493          	slli	s1,s1,0x34
   1a374:	00050593          	mv	a1,a0
   1a378:	00040513          	mv	a0,s0
   1a37c:	abdfd0ef          	jal	17e38 <_Bfree>
   1a380:	000b0593          	mv	a1,s6
   1a384:	00040513          	mv	a0,s0
   1a388:	ab1fd0ef          	jal	17e38 <_Bfree>
   1a38c:	000a0593          	mv	a1,s4
   1a390:	00040513          	mv	a0,s0
   1a394:	aa5fd0ef          	jal	17e38 <_Bfree>
   1a398:	000d0593          	mv	a1,s10
   1a39c:	00040513          	mv	a0,s0
   1a3a0:	a99fd0ef          	jal	17e38 <_Bfree>
   1a3a4:	000c0593          	mv	a1,s8
   1a3a8:	00040513          	mv	a0,s0
   1a3ac:	a8dfd0ef          	jal	17e38 <_Bfree>
   1a3b0:	9b1ff06f          	j	19d60 <_strtod_r+0x418>
   1a3b4:	13257453          	fmul.d	fs0,fa0,fs2
   1a3b8:	e20407d3          	fmv.x.d	a5,fs0
   1a3bc:	e00b98e3          	bnez	s7,1a1cc <_strtod_r+0x884>
   1a3c0:	228417d3          	fneg.d	fa5,fs0
   1a3c4:	e20787d3          	fmv.x.d	a5,fa5
   1a3c8:	e05ff06f          	j	1a1cc <_strtod_r+0x884>
   1a3cc:	00812783          	lw	a5,8(sp)
   1a3d0:	00c12d83          	lw	s11,12(sp)
   1a3d4:	40e785bb          	subw	a1,a5,a4
   1a3d8:	c49ff06f          	j	1a020 <_strtod_r+0x6d8>
   1a3dc:	01012683          	lw	a3,16(sp)
   1a3e0:	be200613          	li	a2,-1054
   1a3e4:	40e6073b          	subw	a4,a2,a4
   1a3e8:	00e6973b          	sllw	a4,a3,a4
   1a3ec:	00e12c23          	sw	a4,24(sp)
   1a3f0:	c75ff06f          	j	1a064 <_strtod_r+0x71c>
   1a3f4:	00c91793          	slli	a5,s2,0xc
   1a3f8:	12078e63          	beqz	a5,1a534 <_strtod_r+0xbec>
   1a3fc:	00100793          	li	a5,1
   1a400:	5cf90a63          	beq	s2,a5,1a9d4 <_strtod_r+0x108c>
   1a404:	bff00793          	li	a5,-1025
   1a408:	00024737          	lui	a4,0x24
   1a40c:	03479793          	slli	a5,a5,0x34
   1a410:	47073407          	fld	fs0,1136(a4) # 24470 <mask+0x28>
   1a414:	db9ff06f          	j	1a1cc <_strtod_r+0x884>
   1a418:	03913c23          	sd	s9,56(sp)
   1a41c:	00000b93          	li	s7,0
   1a420:	f9cff06f          	j	19bbc <_strtod_r+0x274>
   1a424:	00021637          	lui	a2,0x21
   1a428:	000a8793          	mv	a5,s5
   1a42c:	04010713          	addi	a4,sp,64
   1a430:	03410693          	addi	a3,sp,52
   1a434:	05060613          	addi	a2,a2,80 # 21050 <fpi.2617>
   1a438:	03810593          	addi	a1,sp,56
   1a43c:	00040513          	mv	a0,s0
   1a440:	200040ef          	jal	1e640 <__gethex>
   1a444:	00757a13          	andi	s4,a0,7
   1a448:	00050b13          	mv	s6,a0
   1a44c:	00000493          	li	s1,0
   1a450:	900a08e3          	beqz	s4,19d60 <_strtod_r+0x418>
   1a454:	00600793          	li	a5,6
   1a458:	1efa1e63          	bne	s4,a5,1a654 <_strtod_r+0xd0c>
   1a45c:	001b8713          	addi	a4,s7,1
   1a460:	02e13c23          	sd	a4,56(sp)
   1a464:	00000a93          	li	s5,0
   1a468:	8f9ff06f          	j	19d60 <_strtod_r+0x418>
   1a46c:	fcb005b7          	lui	a1,0xfcb00
   1a470:	00b7073b          	addw	a4,a4,a1
   1a474:	fff00593          	li	a1,-1
   1a478:	0205d593          	srli	a1,a1,0x20
   1a47c:	02071713          	slli	a4,a4,0x20
   1a480:	00b97933          	and	s2,s2,a1
   1a484:	00e96933          	or	s2,s2,a4
   1a488:	f2090553          	fmv.d.x	fa0,s2
   1a48c:	f2078bd3          	fmv.d.x	fs7,a5
   1a490:	00d13c23          	sd	a3,24(sp)
   1a494:	00c13823          	sd	a2,16(sp)
   1a498:	02b13023          	sd	a1,32(sp)
   1a49c:	c58fe0ef          	jal	188f4 <__ulp>
   1a4a0:	f20907d3          	fmv.d.x	fa5,s2
   1a4a4:	01813683          	ld	a3,24(sp)
   1a4a8:	7ca00737          	lui	a4,0x7ca00
   1a4ac:	7aabf7c3          	fmadd.d	fa5,fs7,fa0,fa5
   1a4b0:	01013603          	ld	a2,16(sp)
   1a4b4:	e2078953          	fmv.x.d	s2,fa5
   1a4b8:	42095793          	srai	a5,s2,0x20
   1a4bc:	00d7f6b3          	and	a3,a5,a3
   1a4c0:	16e6ec63          	bltu	a3,a4,1a638 <_strtod_r+0xcf0>
   1a4c4:	7ff00793          	li	a5,2047
   1a4c8:	03479793          	slli	a5,a5,0x34
   1a4cc:	fff78793          	addi	a5,a5,-1 # 7fefffff <_end+0x7fed9237>
   1a4d0:	02013583          	ld	a1,32(sp)
   1a4d4:	e8f486e3          	beq	s1,a5,1a360 <_strtod_r+0xa18>
   1a4d8:	7ff007b7          	lui	a5,0x7ff00
   1a4dc:	02091913          	slli	s2,s2,0x20
   1a4e0:	fff78793          	addi	a5,a5,-1 # 7fefffff <_end+0x7fed9237>
   1a4e4:	02095913          	srli	s2,s2,0x20
   1a4e8:	02079793          	slli	a5,a5,0x20
   1a4ec:	00f96933          	or	s2,s2,a5
   1a4f0:	00b96933          	or	s2,s2,a1
   1a4f4:	d79ff06f          	j	1a26c <_strtod_r+0x924>
   1a4f8:	00000893          	li	a7,0
   1a4fc:	e41ff06f          	j	1a33c <_strtod_r+0x9f4>
   1a500:	c20417d3          	fcvt.w.d	a5,fs0,rtz
   1a504:	d2078553          	fcvt.d.w	fa0,a5
   1a508:	0aa47553          	fsub.d	fa0,fs0,fa0
   1a50c:	0e0b9c63          	bnez	s7,1a604 <_strtod_r+0xcbc>
   1a510:	00c91793          	slli	a5,s2,0xc
   1a514:	0e079863          	bnez	a5,1a604 <_strtod_r+0xcbc>
   1a518:	000247b7          	lui	a5,0x24
   1a51c:	4d87b787          	fld	fa5,1240(a5) # 244d8 <mask+0x90>
   1a520:	a2f517d3          	flt.d	a5,fa0,fa5
   1a524:	d40784e3          	beqz	a5,1a26c <_strtod_r+0x924>
   1a528:	04013503          	ld	a0,64(sp)
   1a52c:	00090493          	mv	s1,s2
   1a530:	e45ff06f          	j	1a374 <_strtod_r+0xa2c>
   1a534:	a33517d3          	flt.d	a5,fa0,fs3
   1a538:	36079c63          	bnez	a5,1a8b0 <_strtod_r+0xf68>
   1a53c:	000247b7          	lui	a5,0x24
   1a540:	4907b407          	fld	fs0,1168(a5) # 24490 <mask+0x48>
   1a544:	12857453          	fmul.d	fs0,fa0,fs0
   1a548:	228417d3          	fneg.d	fa5,fs0
   1a54c:	e20787d3          	fmv.x.d	a5,fa5
   1a550:	c7dff06f          	j	1a1cc <_strtod_r+0x884>
   1a554:	9e0706e3          	beqz	a4,19f40 <_strtod_r+0x5f8>
   1a558:	40e007bb          	negw	a5,a4
   1a55c:	00f7f713          	andi	a4,a5,15
   1a560:	02070263          	beqz	a4,1a584 <_strtod_r+0xc3c>
   1a564:	00021637          	lui	a2,0x21
   1a568:	00371713          	slli	a4,a4,0x3
   1a56c:	e6060613          	addi	a2,a2,-416 # 20e60 <__mprec_tens>
   1a570:	00c70733          	add	a4,a4,a2
   1a574:	f2090753          	fmv.d.x	fa4,s2
   1a578:	00073787          	fld	fa5,0(a4) # 7ca00000 <_end+0x7c9d9238>
   1a57c:	1af777d3          	fdiv.d	fa5,fa4,fa5
   1a580:	e2078953          	fmv.x.d	s2,fa5
   1a584:	4047d79b          	sraiw	a5,a5,0x4
   1a588:	9a078ce3          	beqz	a5,19f40 <_strtod_r+0x5f8>
   1a58c:	01f00713          	li	a4,31
   1a590:	06f74263          	blt	a4,a5,1a5f4 <_strtod_r+0xcac>
   1a594:	0107f713          	andi	a4,a5,16
   1a598:	54070a63          	beqz	a4,1aaec <_strtod_r+0x11a4>
   1a59c:	06a00c93          	li	s9,106
   1a5a0:	50f05663          	blez	a5,1aaac <_strtod_r+0x1164>
   1a5a4:	00021737          	lui	a4,0x21
   1a5a8:	00090593          	mv	a1,s2
   1a5ac:	08070713          	addi	a4,a4,128 # 21080 <tinytens>
   1a5b0:	00000513          	li	a0,0
   1a5b4:	0017f613          	andi	a2,a5,1
   1a5b8:	00060c63          	beqz	a2,1a5d0 <_strtod_r+0xc88>
   1a5bc:	f2058753          	fmv.d.x	fa4,a1
   1a5c0:	00073787          	fld	fa5,0(a4)
   1a5c4:	00100513          	li	a0,1
   1a5c8:	12f777d3          	fmul.d	fa5,fa4,fa5
   1a5cc:	e20785d3          	fmv.x.d	a1,fa5
   1a5d0:	4017d79b          	sraiw	a5,a5,0x1
   1a5d4:	00870713          	addi	a4,a4,8
   1a5d8:	fc079ee3          	bnez	a5,1a5b4 <_strtod_r+0xc6c>
   1a5dc:	60051463          	bnez	a0,1abe4 <_strtod_r+0x129c>
   1a5e0:	4c0c9663          	bnez	s9,1aaac <_strtod_r+0x1164>
   1a5e4:	f20007d3          	fmv.d.x	fa5,zero
   1a5e8:	f2090753          	fmv.d.x	fa4,s2
   1a5ec:	a2f727d3          	feq.d	a5,fa4,fa5
   1a5f0:	94078ae3          	beqz	a5,19f44 <_strtod_r+0x5fc>
   1a5f4:	02200793          	li	a5,34
   1a5f8:	00f42023          	sw	a5,0(s0)
   1a5fc:	00000493          	li	s1,0
   1a600:	f60ff06f          	j	19d60 <_strtod_r+0x418>
   1a604:	a34517d3          	flt.d	a5,fa0,fs4
   1a608:	f20790e3          	bnez	a5,1a528 <_strtod_r+0xbe0>
   1a60c:	000247b7          	lui	a5,0x24
   1a610:	4d07b787          	fld	fa5,1232(a5) # 244d0 <mask+0x88>
   1a614:	a2a797d3          	flt.d	a5,fa5,fa0
   1a618:	c4078ae3          	beqz	a5,1a26c <_strtod_r+0x924>
   1a61c:	f0dff06f          	j	1a528 <_strtod_r+0xbe0>
   1a620:	00078493          	mv	s1,a5
   1a624:	000a0913          	mv	s2,s4
   1a628:	00000d93          	li	s11,0
   1a62c:	00000d13          	li	s10,0
   1a630:	00000c13          	li	s8,0
   1a634:	c34ff06f          	j	19a68 <_strtod_r+0x120>
   1a638:	03500737          	lui	a4,0x3500
   1a63c:	00e7873b          	addw	a4,a5,a4
   1a640:	02091913          	slli	s2,s2,0x20
   1a644:	02071793          	slli	a5,a4,0x20
   1a648:	02095913          	srli	s2,s2,0x20
   1a64c:	00f96933          	or	s2,s2,a5
   1a650:	c0dff06f          	j	1a25c <_strtod_r+0x914>
   1a654:	04013603          	ld	a2,64(sp)
   1a658:	00060e63          	beqz	a2,1a674 <_strtod_r+0xd2c>
   1a65c:	03500593          	li	a1,53
   1a660:	04810513          	addi	a0,sp,72
   1a664:	ea0fe0ef          	jal	18d04 <__copybits>
   1a668:	04013583          	ld	a1,64(sp)
   1a66c:	00040513          	mv	a0,s0
   1a670:	fc8fd0ef          	jal	17e38 <_Bfree>
   1a674:	00600793          	li	a5,6
   1a678:	0347e463          	bltu	a5,s4,1a6a0 <_strtod_r+0xd58>
   1a67c:	020a1793          	slli	a5,s4,0x20
   1a680:	00021737          	lui	a4,0x21
   1a684:	01e7d793          	srli	a5,a5,0x1e
   1a688:	03070713          	addi	a4,a4,48 # 21030 <__mprec_bigtens+0xe0>
   1a68c:	00e787b3          	add	a5,a5,a4
   1a690:	0007a783          	lw	a5,0(a5)
   1a694:	00078067          	jr	a5
   1a698:	7ff00913          	li	s2,2047
   1a69c:	03491913          	slli	s2,s2,0x34
   1a6a0:	008b7b13          	andi	s6,s6,8
   1a6a4:	f00b0e63          	beqz	s6,19dc0 <_strtod_r+0x478>
   1a6a8:	42095713          	srai	a4,s2,0x20
   1a6ac:	800007b7          	lui	a5,0x80000
   1a6b0:	00f767b3          	or	a5,a4,a5
   1a6b4:	02091493          	slli	s1,s2,0x20
   1a6b8:	02079793          	slli	a5,a5,0x20
   1a6bc:	0204d493          	srli	s1,s1,0x20
   1a6c0:	00f4e4b3          	or	s1,s1,a5
   1a6c4:	e9cff06f          	j	19d60 <_strtod_r+0x418>
   1a6c8:	04c16783          	lwu	a5,76(sp)
   1a6cc:	04816903          	lwu	s2,72(sp)
   1a6d0:	02079793          	slli	a5,a5,0x20
   1a6d4:	00f96933          	or	s2,s2,a5
   1a6d8:	fc9ff06f          	j	1a6a0 <_strtod_r+0xd58>
   1a6dc:	03412783          	lw	a5,52(sp)
   1a6e0:	04c12683          	lw	a3,76(sp)
   1a6e4:	fff00737          	lui	a4,0xfff00
   1a6e8:	4337879b          	addiw	a5,a5,1075
   1a6ec:	fff7071b          	addiw	a4,a4,-1
   1a6f0:	00e6f733          	and	a4,a3,a4
   1a6f4:	0147979b          	slliw	a5,a5,0x14
   1a6f8:	04816903          	lwu	s2,72(sp)
   1a6fc:	00f767b3          	or	a5,a4,a5
   1a700:	02079793          	slli	a5,a5,0x20
   1a704:	00f96933          	or	s2,s2,a5
   1a708:	f99ff06f          	j	1a6a0 <_strtod_r+0xd58>
   1a70c:	800007b7          	lui	a5,0x80000
   1a710:	fff7c793          	not	a5,a5
   1a714:	fff00913          	li	s2,-1
   1a718:	02079793          	slli	a5,a5,0x20
   1a71c:	02095913          	srli	s2,s2,0x20
   1a720:	0127e933          	or	s2,a5,s2
   1a724:	f7dff06f          	j	1a6a0 <_strtod_r+0xd58>
   1a728:	00000913          	li	s2,0
   1a72c:	f75ff06f          	j	1a6a0 <_strtod_r+0xd58>
   1a730:	00100793          	li	a5,1
   1a734:	00e585bb          	addw	a1,a1,a4
   1a738:	00d6063b          	addw	a2,a2,a3
   1a73c:	00800813          	li	a6,8
   1a740:	01000313          	li	t1,16
   1a744:	48f70863          	beq	a4,a5,1abd4 <_strtod_r+0x128c>
   1a748:	0016869b          	addiw	a3,a3,1
   1a74c:	fff6871b          	addiw	a4,a3,-1
   1a750:	06e86863          	bltu	a6,a4,1a7c0 <_strtod_r+0xe78>
   1a754:	001d189b          	slliw	a7,s10,0x1
   1a758:	003d171b          	slliw	a4,s10,0x3
   1a75c:	00e88d3b          	addw	s10,a7,a4
   1a760:	fec694e3          	bne	a3,a2,1a748 <_strtod_r+0xe00>
   1a764:	03813803          	ld	a6,56(sp)
   1a768:	0016869b          	addiw	a3,a3,1
   1a76c:	00800713          	li	a4,8
   1a770:	02c75c63          	ble	a2,a4,1a7a8 <_strtod_r+0xe60>
   1a774:	01000793          	li	a5,16
   1a778:	00000613          	li	a2,0
   1a77c:	b4d7c8e3          	blt	a5,a3,1a2cc <_strtod_r+0x984>
   1a780:	001d971b          	slliw	a4,s11,0x1
   1a784:	003d979b          	slliw	a5,s11,0x3
   1a788:	00f707bb          	addw	a5,a4,a5
   1a78c:	00f50dbb          	addw	s11,a0,a5
   1a790:	b3dff06f          	j	1a2cc <_strtod_r+0x984>
   1a794:	03813a03          	ld	s4,56(sp)
   1a798:	fd04849b          	addiw	s1,s1,-48
   1a79c:	0016059b          	addiw	a1,a2,1
   1a7a0:	000a0813          	mv	a6,s4
   1a7a4:	00100693          	li	a3,1
   1a7a8:	001d161b          	slliw	a2,s10,0x1
   1a7ac:	003d171b          	slliw	a4,s10,0x3
   1a7b0:	00e6073b          	addw	a4,a2,a4
   1a7b4:	00e48d3b          	addw	s10,s1,a4
   1a7b8:	00000613          	li	a2,0
   1a7bc:	b11ff06f          	j	1a2cc <_strtod_r+0x984>
   1a7c0:	fad340e3          	blt	t1,a3,1a760 <_strtod_r+0xe18>
   1a7c4:	001d971b          	slliw	a4,s11,0x1
   1a7c8:	003d979b          	slliw	a5,s11,0x3
   1a7cc:	00f70dbb          	addw	s11,a4,a5
   1a7d0:	f91ff06f          	j	1a760 <_strtod_r+0xe18>
   1a7d4:	02500613          	li	a2,37
   1a7d8:	40d6063b          	subw	a2,a2,a3
   1a7dc:	e5764e63          	blt	a2,s7,19e38 <_strtod_r+0x4f0>
   1a7e0:	40d787bb          	subw	a5,a5,a3
   1a7e4:	00078713          	mv	a4,a5
   1a7e8:	000216b7          	lui	a3,0x21
   1a7ec:	e6068693          	addi	a3,a3,-416 # 20e60 <__mprec_tens>
   1a7f0:	00371713          	slli	a4,a4,0x3
   1a7f4:	00d70733          	add	a4,a4,a3
   1a7f8:	00073787          	fld	fa5,0(a4) # fffffffffff00000 <_end+0xffffffffffed9238>
   1a7fc:	f2090753          	fmv.d.x	fa4,s2
   1a800:	40fb87bb          	subw	a5,s7,a5
   1a804:	00379793          	slli	a5,a5,0x3
   1a808:	12e7f753          	fmul.d	fa4,fa5,fa4
   1a80c:	00d787b3          	add	a5,a5,a3
   1a810:	0007b787          	fld	fa5,0(a5) # ffffffff80000000 <_end+0xffffffff7ffd9238>
   1a814:	12f777d3          	fmul.d	fa5,fa4,fa5
   1a818:	e20784d3          	fmv.x.d	s1,fa5
   1a81c:	d44ff06f          	j	19d60 <_strtod_r+0x418>
   1a820:	000247b7          	lui	a5,0x24
   1a824:	4707b407          	fld	fs0,1136(a5) # 24470 <mask+0x28>
   1a828:	9e1ff06f          	j	1a208 <_strtod_r+0x8c0>
   1a82c:	04900793          	li	a5,73
   1a830:	b8f49e63          	bne	s1,a5,19bcc <_strtod_r+0x284>
   1a834:	03813683          	ld	a3,56(sp)
   1a838:	00022737          	lui	a4,0x22
   1a83c:	d3070713          	addi	a4,a4,-720 # 21d30 <zeroes.4123+0x700>
   1a840:	01900813          	li	a6,25
   1a844:	00170713          	addi	a4,a4,1
   1a848:	fff74583          	lbu	a1,-1(a4)
   1a84c:	d2058263          	beqz	a1,19d70 <_strtod_r+0x428>
   1a850:	00168693          	addi	a3,a3,1
   1a854:	0006c603          	lbu	a2,0(a3)
   1a858:	fbf6079b          	addiw	a5,a2,-65
   1a85c:	0ff7f793          	andi	a5,a5,255
   1a860:	00060513          	mv	a0,a2
   1a864:	00f86463          	bltu	a6,a5,1a86c <_strtod_r+0xf24>
   1a868:	0206051b          	addiw	a0,a2,32
   1a86c:	fcb50ce3          	beq	a0,a1,1a844 <_strtod_r+0xefc>
   1a870:	b5cff06f          	j	19bcc <_strtod_r+0x284>
   1a874:	00012423          	sw	zero,8(sp)
   1a878:	f00ff06f          	j	19f78 <_strtod_r+0x630>
   1a87c:	fea00793          	li	a5,-22
   1a880:	dafbcc63          	blt	s7,a5,19e38 <_strtod_r+0x4f0>
   1a884:	41700bbb          	negw	s7,s7
   1a888:	000b8793          	mv	a5,s7
   1a88c:	00021737          	lui	a4,0x21
   1a890:	00379793          	slli	a5,a5,0x3
   1a894:	e6070713          	addi	a4,a4,-416 # 20e60 <__mprec_tens>
   1a898:	00e787b3          	add	a5,a5,a4
   1a89c:	0007b787          	fld	fa5,0(a5)
   1a8a0:	f2090753          	fmv.d.x	fa4,s2
   1a8a4:	1af777d3          	fdiv.d	fa5,fa4,fa5
   1a8a8:	e20784d3          	fmv.x.d	s1,fa5
   1a8ac:	cb4ff06f          	j	19d60 <_strtod_r+0x418>
   1a8b0:	e20b07d3          	fmv.x.d	a5,fs6
   1a8b4:	235a8453          	fmv.d	fs0,fs5
   1a8b8:	915ff06f          	j	1a1cc <_strtod_r+0x884>
   1a8bc:	00160793          	addi	a5,a2,1
   1a8c0:	02f13c23          	sd	a5,56(sp)
   1a8c4:	00164703          	lbu	a4,1(a2)
   1a8c8:	02800793          	li	a5,40
   1a8cc:	18f70063          	beq	a4,a5,1aa4c <_strtod_r+0x1104>
   1a8d0:	fff00913          	li	s2,-1
   1a8d4:	03391913          	slli	s2,s2,0x33
   1a8d8:	00090493          	mv	s1,s2
   1a8dc:	c84ff06f          	j	19d60 <_strtod_r+0x418>
   1a8e0:	00000613          	li	a2,0
   1a8e4:	d38ff06f          	j	19e1c <_strtod_r+0x4d4>
   1a8e8:	120b8863          	beqz	s7,1aa18 <_strtod_r+0x10d0>
   1a8ec:	42095693          	srai	a3,s2,0x20
   1a8f0:	fff6c793          	not	a5,a3
   1a8f4:	02c79713          	slli	a4,a5,0x2c
   1a8f8:	26070063          	beqz	a4,1ab58 <_strtod_r+0x1210>
   1a8fc:	01812703          	lw	a4,24(sp)
   1a900:	12070463          	beqz	a4,1aa28 <_strtod_r+0x10e0>
   1a904:	42095793          	srai	a5,s2,0x20
   1a908:	00e7f7b3          	and	a5,a5,a4
   1a90c:	02078063          	beqz	a5,1a92c <_strtod_r+0xfe4>
   1a910:	000c8593          	mv	a1,s9
   1a914:	00090513          	mv	a0,s2
   1a918:	160b8863          	beqz	s7,1aa88 <_strtod_r+0x1140>
   1a91c:	5bd050ef          	jal	206d8 <sulp>
   1a920:	f20487d3          	fmv.d.x	fa5,s1
   1a924:	02a7f7d3          	fadd.d	fa5,fa5,fa0
   1a928:	e20784d3          	fmv.x.d	s1,fa5
   1a92c:	0c0c8e63          	beqz	s9,1aa08 <_strtod_r+0x10c0>
   1a930:	39500793          	li	a5,917
   1a934:	03479793          	slli	a5,a5,0x34
   1a938:	f20487d3          	fmv.d.x	fa5,s1
   1a93c:	f2078753          	fmv.d.x	fa4,a5
   1a940:	04013503          	ld	a0,64(sp)
   1a944:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1a948:	e20784d3          	fmv.x.d	s1,fa5
   1a94c:	a20494e3          	bnez	s1,1a374 <_strtod_r+0xa2c>
   1a950:	02200793          	li	a5,34
   1a954:	00f42023          	sw	a5,0(s0)
   1a958:	a1dff06f          	j	1a374 <_strtod_r+0xa2c>
   1a95c:	fc0b98e3          	bnez	s7,1a92c <_strtod_r+0xfe4>
   1a960:	00c91793          	slli	a5,s2,0xc
   1a964:	fc0794e3          	bnez	a5,1a92c <_strtod_r+0xfe4>
   1a968:	02095913          	srli	s2,s2,0x20
   1a96c:	0009071b          	sext.w	a4,s2
   1a970:	7ff007b7          	lui	a5,0x7ff00
   1a974:	00f777b3          	and	a5,a4,a5
   1a978:	06b00737          	lui	a4,0x6b00
   1a97c:	faf778e3          	bleu	a5,a4,1a92c <_strtod_r+0xfe4>
   1a980:	018c2783          	lw	a5,24(s8)
   1a984:	00079863          	bnez	a5,1a994 <_strtod_r+0x104c>
   1a988:	014c2703          	lw	a4,20(s8)
   1a98c:	00100793          	li	a5,1
   1a990:	f8e7dee3          	ble	a4,a5,1a92c <_strtod_r+0xfe4>
   1a994:	000c0593          	mv	a1,s8
   1a998:	00100613          	li	a2,1
   1a99c:	00040513          	mv	a0,s0
   1a9a0:	b85fd0ef          	jal	18524 <__lshift>
   1a9a4:	000a0593          	mv	a1,s4
   1a9a8:	00050c13          	mv	s8,a0
   1a9ac:	cd9fd0ef          	jal	18684 <__mcmp>
   1a9b0:	f6a05ee3          	blez	a0,1a92c <_strtod_r+0xfe4>
   1a9b4:	140c8263          	beqz	s9,1aaf8 <_strtod_r+0x11b0>
   1a9b8:	0009071b          	sext.w	a4,s2
   1a9bc:	7ff007b7          	lui	a5,0x7ff00
   1a9c0:	00f777b3          	and	a5,a4,a5
   1a9c4:	06b00737          	lui	a4,0x6b00
   1a9c8:	12f74863          	blt	a4,a5,1aaf8 <_strtod_r+0x11b0>
   1a9cc:	03700737          	lui	a4,0x3700
   1a9d0:	f6f740e3          	blt	a4,a5,1a930 <_strtod_r+0xfe8>
   1a9d4:	02200793          	li	a5,34
   1a9d8:	00f42023          	sw	a5,0(s0)
   1a9dc:	04013503          	ld	a0,64(sp)
   1a9e0:	00000493          	li	s1,0
   1a9e4:	991ff06f          	j	1a374 <_strtod_r+0xa2c>
   1a9e8:	035007b7          	lui	a5,0x3500
   1a9ec:	00f607bb          	addw	a5,a2,a5
   1a9f0:	02091913          	slli	s2,s2,0x20
   1a9f4:	02079793          	slli	a5,a5,0x20
   1a9f8:	02095913          	srli	s2,s2,0x20
   1a9fc:	00f96933          	or	s2,s2,a5
   1aa00:	00000c93          	li	s9,0
   1aa04:	d40ff06f          	j	19f44 <_strtod_r+0x5fc>
   1aa08:	04013503          	ld	a0,64(sp)
   1aa0c:	969ff06f          	j	1a374 <_strtod_r+0xa2c>
   1aa10:	02c13c23          	sd	a2,56(sp)
   1aa14:	ba4ff06f          	j	19db8 <_strtod_r+0x470>
   1aa18:	00c91793          	slli	a5,s2,0xc
   1aa1c:	ee0790e3          	bnez	a5,1a8fc <_strtod_r+0xfb4>
   1aa20:	02095913          	srli	s2,s2,0x20
   1aa24:	f91ff06f          	j	1a9b4 <_strtod_r+0x106c>
   1aa28:	01012703          	lw	a4,16(sp)
   1aa2c:	0009079b          	sext.w	a5,s2
   1aa30:	00e7f7b3          	and	a5,a5,a4
   1aa34:	ee078ce3          	beqz	a5,1a92c <_strtod_r+0xfe4>
   1aa38:	ed9ff06f          	j	1a910 <_strtod_r+0xfc8>
   1aa3c:	00021337          	lui	t1,0x21
   1aa40:	00000613          	li	a2,0
   1aa44:	f5030313          	addi	t1,t1,-176 # 20f50 <__mprec_bigtens>
   1aa48:	c88ff06f          	j	19ed0 <_strtod_r+0x588>
   1aa4c:	000215b7          	lui	a1,0x21
   1aa50:	04810613          	addi	a2,sp,72
   1aa54:	06858593          	addi	a1,a1,104 # 21068 <fpinan.2653>
   1aa58:	03810513          	addi	a0,sp,56
   1aa5c:	374040ef          	jal	1edd0 <__hexnan>
   1aa60:	00500793          	li	a5,5
   1aa64:	e6f516e3          	bne	a0,a5,1a8d0 <_strtod_r+0xf88>
   1aa68:	04c12703          	lw	a4,76(sp)
   1aa6c:	04816903          	lwu	s2,72(sp)
   1aa70:	7ff007b7          	lui	a5,0x7ff00
   1aa74:	00f767b3          	or	a5,a4,a5
   1aa78:	02079793          	slli	a5,a5,0x20
   1aa7c:	0127e933          	or	s2,a5,s2
   1aa80:	00090493          	mv	s1,s2
   1aa84:	adcff06f          	j	19d60 <_strtod_r+0x418>
   1aa88:	451050ef          	jal	206d8 <sulp>
   1aa8c:	f20487d3          	fmv.d.x	fa5,s1
   1aa90:	0aa7f7d3          	fsub.d	fa5,fa5,fa0
   1aa94:	e20784d3          	fmv.x.d	s1,fa5
   1aa98:	f20007d3          	fmv.d.x	fa5,zero
   1aa9c:	f2048753          	fmv.d.x	fa4,s1
   1aaa0:	a2f727d3          	feq.d	a5,fa4,fa5
   1aaa4:	f20798e3          	bnez	a5,1a9d4 <_strtod_r+0x108c>
   1aaa8:	e85ff06f          	j	1a92c <_strtod_r+0xfe4>
   1aaac:	42095613          	srai	a2,s2,0x20
   1aab0:	02161793          	slli	a5,a2,0x21
   1aab4:	0357d713          	srli	a4,a5,0x35
   1aab8:	06b00793          	li	a5,107
   1aabc:	40e787bb          	subw	a5,a5,a4
   1aac0:	b2f052e3          	blez	a5,1a5e4 <_strtod_r+0xc9c>
   1aac4:	01f00713          	li	a4,31
   1aac8:	06f75263          	ble	a5,a4,1ab2c <_strtod_r+0x11e4>
   1aacc:	fff00713          	li	a4,-1
   1aad0:	02071593          	slli	a1,a4,0x20
   1aad4:	00b97933          	and	s2,s2,a1
   1aad8:	03400593          	li	a1,52
   1aadc:	0cf5da63          	ble	a5,a1,1abb0 <_strtod_r+0x1268>
   1aae0:	03700913          	li	s2,55
   1aae4:	03491913          	slli	s2,s2,0x34
   1aae8:	afdff06f          	j	1a5e4 <_strtod_r+0xc9c>
   1aaec:	00000c93          	li	s9,0
   1aaf0:	aaf04ae3          	bgtz	a5,1a5a4 <_strtod_r+0xc5c>
   1aaf4:	af1ff06f          	j	1a5e4 <_strtod_r+0xc9c>
   1aaf8:	7ff00737          	lui	a4,0x7ff00
   1aafc:	0009091b          	sext.w	s2,s2
   1ab00:	fff007b7          	lui	a5,0xfff00
   1ab04:	00e97933          	and	s2,s2,a4
   1ab08:	00f9073b          	addw	a4,s2,a5
   1ab0c:	001007b7          	lui	a5,0x100
   1ab10:	fff7879b          	addiw	a5,a5,-1
   1ab14:	00f767b3          	or	a5,a4,a5
   1ab18:	fff00493          	li	s1,-1
   1ab1c:	02079793          	slli	a5,a5,0x20
   1ab20:	0204d493          	srli	s1,s1,0x20
   1ab24:	00f4e4b3          	or	s1,s1,a5
   1ab28:	e05ff06f          	j	1a92c <_strtod_r+0xfe4>
   1ab2c:	fff00713          	li	a4,-1
   1ab30:	0009061b          	sext.w	a2,s2
   1ab34:	00f717bb          	sllw	a5,a4,a5
   1ab38:	00f677b3          	and	a5,a2,a5
   1ab3c:	fff00713          	li	a4,-1
   1ab40:	02079793          	slli	a5,a5,0x20
   1ab44:	02071713          	slli	a4,a4,0x20
   1ab48:	0207d793          	srli	a5,a5,0x20
   1ab4c:	00e97933          	and	s2,s2,a4
   1ab50:	00f96933          	or	s2,s2,a5
   1ab54:	a91ff06f          	j	1a5e4 <_strtod_r+0xc9c>
   1ab58:	0009059b          	sext.w	a1,s2
   1ab5c:	fff00713          	li	a4,-1
   1ab60:	020c8263          	beqz	s9,1ab84 <_strtod_r+0x123c>
   1ab64:	7ff007b7          	lui	a5,0x7ff00
   1ab68:	00f6f7b3          	and	a5,a3,a5
   1ab6c:	06a00637          	lui	a2,0x6a00
   1ab70:	00f66a63          	bltu	a2,a5,1ab84 <_strtod_r+0x123c>
   1ab74:	0147d79b          	srliw	a5,a5,0x14
   1ab78:	06b00613          	li	a2,107
   1ab7c:	40f607bb          	subw	a5,a2,a5
   1ab80:	00f7173b          	sllw	a4,a4,a5
   1ab84:	d6b71ce3          	bne	a4,a1,1a8fc <_strtod_r+0xfb4>
   1ab88:	7ff00713          	li	a4,2047
   1ab8c:	03471713          	slli	a4,a4,0x34
   1ab90:	fff70713          	addi	a4,a4,-1 # 7fefffff <_end+0x7fed9237>
   1ab94:	fce90663          	beq	s2,a4,1a360 <_strtod_r+0xa18>
   1ab98:	7ff007b7          	lui	a5,0x7ff00
   1ab9c:	00f6f7b3          	and	a5,a3,a5
   1aba0:	001004b7          	lui	s1,0x100
   1aba4:	009784bb          	addw	s1,a5,s1
   1aba8:	02049493          	slli	s1,s1,0x20
   1abac:	d81ff06f          	j	1a92c <_strtod_r+0xfe4>
   1abb0:	00f717bb          	sllw	a5,a4,a5
   1abb4:	00c7f7b3          	and	a5,a5,a2
   1abb8:	02075713          	srli	a4,a4,0x20
   1abbc:	02079793          	slli	a5,a5,0x20
   1abc0:	00e97933          	and	s2,s2,a4
   1abc4:	00f96933          	or	s2,s2,a5
   1abc8:	a1dff06f          	j	1a5e4 <_strtod_r+0xc9c>
   1abcc:	00080913          	mv	s2,a6
   1abd0:	b00ff06f          	j	19ed0 <_strtod_r+0x588>
   1abd4:	00068613          	mv	a2,a3
   1abd8:	03813803          	ld	a6,56(sp)
   1abdc:	00f686bb          	addw	a3,a3,a5
   1abe0:	b8dff06f          	j	1a76c <_strtod_r+0xe24>
   1abe4:	00058913          	mv	s2,a1
   1abe8:	9f9ff06f          	j	1a5e0 <_strtod_r+0xc98>

000000000001abec <strtod>:
   1abec:	00058613          	mv	a2,a1
   1abf0:	00050593          	mv	a1,a0
   1abf4:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   1abf8:	d51fe06f          	j	19948 <_strtod_r>

000000000001abfc <strtof>:
   1abfc:	00058613          	mv	a2,a1
   1ac00:	00050593          	mv	a1,a0
   1ac04:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   1ac08:	fe010113          	addi	sp,sp,-32
   1ac0c:	00813427          	fsd	fs0,8(sp)
   1ac10:	00113c23          	sd	ra,24(sp)
   1ac14:	d35fe0ef          	jal	19948 <_strtod_r>
   1ac18:	22a50453          	fmv.d	fs0,fa0
   1ac1c:	a79fe0ef          	jal	19694 <__fpclassifyd>
   1ac20:	00050c63          	beqz	a0,1ac38 <strtof+0x3c>
   1ac24:	01813083          	ld	ra,24(sp)
   1ac28:	40147553          	fcvt.s.d	fa0,fs0
   1ac2c:	00813407          	fld	fs0,8(sp)
   1ac30:	02010113          	addi	sp,sp,32
   1ac34:	00008067          	ret
   1ac38:	01813083          	ld	ra,24(sp)
   1ac3c:	00813407          	fld	fs0,8(sp)
   1ac40:	00000513          	li	a0,0
   1ac44:	02010113          	addi	sp,sp,32
   1ac48:	a41fe06f          	j	19688 <nanf>

000000000001ac4c <_strtol_r>:
   1ac4c:	8281be83          	ld	t4,-2008(gp) # 24418 <__ctype_ptr__>
   1ac50:	00058313          	mv	t1,a1
   1ac54:	0080006f          	j	1ac5c <_strtol_r+0x10>
   1ac58:	00080313          	mv	t1,a6
   1ac5c:	00130813          	addi	a6,t1,1
   1ac60:	fff84783          	lbu	a5,-1(a6)
   1ac64:	00fe8733          	add	a4,t4,a5
   1ac68:	00174703          	lbu	a4,1(a4)
   1ac6c:	00877713          	andi	a4,a4,8
   1ac70:	fe0714e3          	bnez	a4,1ac58 <_strtol_r+0xc>
   1ac74:	ff010113          	addi	sp,sp,-16
   1ac78:	00078893          	mv	a7,a5
   1ac7c:	00813423          	sd	s0,8(sp)
   1ac80:	00913023          	sd	s1,0(sp)
   1ac84:	02d00793          	li	a5,45
   1ac88:	14f88063          	beq	a7,a5,1adc8 <_strtol_r+0x17c>
   1ac8c:	02b00793          	li	a5,43
   1ac90:	00000393          	li	t2,0
   1ac94:	12f88463          	beq	a7,a5,1adbc <_strtol_r+0x170>
   1ac98:	0e068263          	beqz	a3,1ad7c <_strtol_r+0x130>
   1ac9c:	01000793          	li	a5,16
   1aca0:	00068413          	mv	s0,a3
   1aca4:	14f68863          	beq	a3,a5,1adf4 <_strtol_r+0x1a8>
   1aca8:	fff00793          	li	a5,-1
   1acac:	0017df13          	srli	t5,a5,0x1
   1acb0:	00038463          	beqz	t2,1acb8 <_strtol_r+0x6c>
   1acb4:	03f79f13          	slli	t5,a5,0x3f
   1acb8:	028f74b3          	remu	s1,t5,s0
   1acbc:	011e8733          	add	a4,t4,a7
   1acc0:	00174783          	lbu	a5,1(a4)
   1acc4:	00000e13          	li	t3,0
   1acc8:	00000313          	li	t1,0
   1accc:	0047f713          	andi	a4,a5,4
   1acd0:	00100293          	li	t0,1
   1acd4:	fff00f93          	li	t6,-1
   1acd8:	028f5f33          	divu	t5,t5,s0
   1acdc:	0004849b          	sext.w	s1,s1
   1ace0:	04070063          	beqz	a4,1ad20 <_strtol_r+0xd4>
   1ace4:	fd08879b          	addiw	a5,a7,-48
   1ace8:	04d7de63          	ble	a3,a5,1ad44 <_strtol_r+0xf8>
   1acec:	01fe0e63          	beq	t3,t6,1ad08 <_strtol_r+0xbc>
   1acf0:	fff00e13          	li	t3,-1
   1acf4:	006f6a63          	bltu	t5,t1,1ad08 <_strtol_r+0xbc>
   1acf8:	07e30e63          	beq	t1,t5,1ad74 <_strtol_r+0x128>
   1acfc:	00100e13          	li	t3,1
   1ad00:	02830333          	mul	t1,t1,s0
   1ad04:	00678333          	add	t1,a5,t1
   1ad08:	00180813          	addi	a6,a6,1
   1ad0c:	fff84883          	lbu	a7,-1(a6)
   1ad10:	011e8733          	add	a4,t4,a7
   1ad14:	00174783          	lbu	a5,1(a4)
   1ad18:	0047f713          	andi	a4,a5,4
   1ad1c:	fc0714e3          	bnez	a4,1ace4 <_strtol_r+0x98>
   1ad20:	0037f713          	andi	a4,a5,3
   1ad24:	02070063          	beqz	a4,1ad44 <_strtol_r+0xf8>
   1ad28:	40e2873b          	subw	a4,t0,a4
   1ad2c:	00e03733          	snez	a4,a4
   1ad30:	40e0073b          	negw	a4,a4
   1ad34:	02077713          	andi	a4,a4,32
   1ad38:	0377071b          	addiw	a4,a4,55
   1ad3c:	40e887bb          	subw	a5,a7,a4
   1ad40:	fad7c6e3          	blt	a5,a3,1acec <_strtol_r+0xa0>
   1ad44:	fff00793          	li	a5,-1
   1ad48:	04fe0863          	beq	t3,a5,1ad98 <_strtol_r+0x14c>
   1ad4c:	04039263          	bnez	t2,1ad90 <_strtol_r+0x144>
   1ad50:	00030793          	mv	a5,t1
   1ad54:	00060663          	beqz	a2,1ad60 <_strtol_r+0x114>
   1ad58:	040e1e63          	bnez	t3,1adb4 <_strtol_r+0x168>
   1ad5c:	00b63023          	sd	a1,0(a2) # 6a00000 <_end+0x69d9238>
   1ad60:	00078513          	mv	a0,a5
   1ad64:	00813403          	ld	s0,8(sp)
   1ad68:	00013483          	ld	s1,0(sp)
   1ad6c:	01010113          	addi	sp,sp,16
   1ad70:	00008067          	ret
   1ad74:	f8f4cae3          	blt	s1,a5,1ad08 <_strtol_r+0xbc>
   1ad78:	f85ff06f          	j	1acfc <_strtol_r+0xb0>
   1ad7c:	03000793          	li	a5,48
   1ad80:	04f88c63          	beq	a7,a5,1add8 <_strtol_r+0x18c>
   1ad84:	00a00413          	li	s0,10
   1ad88:	00040693          	mv	a3,s0
   1ad8c:	f1dff06f          	j	1aca8 <_strtol_r+0x5c>
   1ad90:	40600333          	neg	t1,t1
   1ad94:	fbdff06f          	j	1ad50 <_strtol_r+0x104>
   1ad98:	fff00713          	li	a4,-1
   1ad9c:	00175793          	srli	a5,a4,0x1
   1ada0:	00038463          	beqz	t2,1ada8 <_strtol_r+0x15c>
   1ada4:	03f71793          	slli	a5,a4,0x3f
   1ada8:	02200713          	li	a4,34
   1adac:	00e52023          	sw	a4,0(a0)
   1adb0:	fa0608e3          	beqz	a2,1ad60 <_strtol_r+0x114>
   1adb4:	fff80593          	addi	a1,a6,-1
   1adb8:	fa5ff06f          	j	1ad5c <_strtol_r+0x110>
   1adbc:	00134883          	lbu	a7,1(t1)
   1adc0:	00230813          	addi	a6,t1,2
   1adc4:	ed5ff06f          	j	1ac98 <_strtol_r+0x4c>
   1adc8:	00230813          	addi	a6,t1,2
   1adcc:	00134883          	lbu	a7,1(t1)
   1add0:	00100393          	li	t2,1
   1add4:	ec5ff06f          	j	1ac98 <_strtol_r+0x4c>
   1add8:	00084783          	lbu	a5,0(a6)
   1addc:	05800713          	li	a4,88
   1ade0:	0df7f793          	andi	a5,a5,223
   1ade4:	02e78463          	beq	a5,a4,1ae0c <_strtol_r+0x1c0>
   1ade8:	00800413          	li	s0,8
   1adec:	00040693          	mv	a3,s0
   1adf0:	eb9ff06f          	j	1aca8 <_strtol_r+0x5c>
   1adf4:	03000793          	li	a5,48
   1adf8:	02f89463          	bne	a7,a5,1ae20 <_strtol_r+0x1d4>
   1adfc:	00084783          	lbu	a5,0(a6)
   1ae00:	05800713          	li	a4,88
   1ae04:	0df7f793          	andi	a5,a5,223
   1ae08:	00e79c63          	bne	a5,a4,1ae20 <_strtol_r+0x1d4>
   1ae0c:	01000413          	li	s0,16
   1ae10:	00184883          	lbu	a7,1(a6)
   1ae14:	00040693          	mv	a3,s0
   1ae18:	00280813          	addi	a6,a6,2
   1ae1c:	e8dff06f          	j	1aca8 <_strtol_r+0x5c>
   1ae20:	01000413          	li	s0,16
   1ae24:	e85ff06f          	j	1aca8 <_strtol_r+0x5c>

000000000001ae28 <strtol>:
   1ae28:	00060693          	mv	a3,a2
   1ae2c:	00058613          	mv	a2,a1
   1ae30:	00050593          	mv	a1,a0
   1ae34:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   1ae38:	e15ff06f          	j	1ac4c <_strtol_r>

000000000001ae3c <_strtoul_r>:
   1ae3c:	00050f13          	mv	t5,a0
   1ae40:	8281be03          	ld	t3,-2008(gp) # 24418 <__ctype_ptr__>
   1ae44:	00058313          	mv	t1,a1
   1ae48:	0080006f          	j	1ae50 <_strtoul_r+0x14>
   1ae4c:	00080313          	mv	t1,a6
   1ae50:	00130813          	addi	a6,t1,1
   1ae54:	fff84783          	lbu	a5,-1(a6)
   1ae58:	00fe0733          	add	a4,t3,a5
   1ae5c:	00174703          	lbu	a4,1(a4)
   1ae60:	00877713          	andi	a4,a4,8
   1ae64:	fe0714e3          	bnez	a4,1ae4c <_strtoul_r+0x10>
   1ae68:	ff010113          	addi	sp,sp,-16
   1ae6c:	00078893          	mv	a7,a5
   1ae70:	00813423          	sd	s0,8(sp)
   1ae74:	00913023          	sd	s1,0(sp)
   1ae78:	02d00793          	li	a5,45
   1ae7c:	12f88263          	beq	a7,a5,1afa0 <_strtoul_r+0x164>
   1ae80:	02b00793          	li	a5,43
   1ae84:	00000f93          	li	t6,0
   1ae88:	0ef88663          	beq	a7,a5,1af74 <_strtoul_r+0x138>
   1ae8c:	02068263          	beqz	a3,1aeb0 <_strtoul_r+0x74>
   1ae90:	01000793          	li	a5,16
   1ae94:	14f68263          	beq	a3,a5,1afd8 <_strtoul_r+0x19c>
   1ae98:	fff00e93          	li	t4,-1
   1ae9c:	02def3b3          	remu	t2,t4,a3
   1aea0:	00068293          	mv	t0,a3
   1aea4:	02dedeb3          	divu	t4,t4,a3
   1aea8:	0003839b          	sext.w	t2,t2
   1aeac:	0200006f          	j	1aecc <_strtoul_r+0x90>
   1aeb0:	03000793          	li	a5,48
   1aeb4:	0ef88e63          	beq	a7,a5,1afb0 <_strtoul_r+0x174>
   1aeb8:	000247b7          	lui	a5,0x24
   1aebc:	4e07be83          	ld	t4,1248(a5) # 244e0 <mask+0x98>
   1aec0:	00a00293          	li	t0,10
   1aec4:	00500393          	li	t2,5
   1aec8:	00028693          	mv	a3,t0
   1aecc:	011e0733          	add	a4,t3,a7
   1aed0:	00174783          	lbu	a5,1(a4)
   1aed4:	00000313          	li	t1,0
   1aed8:	00000513          	li	a0,0
   1aedc:	0047f713          	andi	a4,a5,4
   1aee0:	00100493          	li	s1,1
   1aee4:	fff00413          	li	s0,-1
   1aee8:	04070063          	beqz	a4,1af28 <_strtoul_r+0xec>
   1aeec:	fd08879b          	addiw	a5,a7,-48
   1aef0:	04d7de63          	ble	a3,a5,1af4c <_strtoul_r+0x110>
   1aef4:	00830e63          	beq	t1,s0,1af10 <_strtoul_r+0xd4>
   1aef8:	fff00313          	li	t1,-1
   1aefc:	00aeea63          	bltu	t4,a0,1af10 <_strtoul_r+0xd4>
   1af00:	09d50063          	beq	a0,t4,1af80 <_strtoul_r+0x144>
   1af04:	02550733          	mul	a4,a0,t0
   1af08:	00100313          	li	t1,1
   1af0c:	00e78533          	add	a0,a5,a4
   1af10:	00180813          	addi	a6,a6,1
   1af14:	fff84883          	lbu	a7,-1(a6)
   1af18:	011e0733          	add	a4,t3,a7
   1af1c:	00174783          	lbu	a5,1(a4)
   1af20:	0047f713          	andi	a4,a5,4
   1af24:	fc0714e3          	bnez	a4,1aeec <_strtoul_r+0xb0>
   1af28:	0037f713          	andi	a4,a5,3
   1af2c:	02070063          	beqz	a4,1af4c <_strtoul_r+0x110>
   1af30:	40e4873b          	subw	a4,s1,a4
   1af34:	00e03733          	snez	a4,a4
   1af38:	40e0073b          	negw	a4,a4
   1af3c:	02077713          	andi	a4,a4,32
   1af40:	0377071b          	addiw	a4,a4,55
   1af44:	40e887bb          	subw	a5,a7,a4
   1af48:	fad7c6e3          	blt	a5,a3,1aef4 <_strtoul_r+0xb8>
   1af4c:	02034e63          	bltz	t1,1af88 <_strtoul_r+0x14c>
   1af50:	000f8463          	beqz	t6,1af58 <_strtoul_r+0x11c>
   1af54:	40a00533          	neg	a0,a0
   1af58:	00060663          	beqz	a2,1af64 <_strtoul_r+0x128>
   1af5c:	02031e63          	bnez	t1,1af98 <_strtoul_r+0x15c>
   1af60:	00b63023          	sd	a1,0(a2)
   1af64:	00813403          	ld	s0,8(sp)
   1af68:	00013483          	ld	s1,0(sp)
   1af6c:	01010113          	addi	sp,sp,16
   1af70:	00008067          	ret
   1af74:	00134883          	lbu	a7,1(t1)
   1af78:	00230813          	addi	a6,t1,2
   1af7c:	f11ff06f          	j	1ae8c <_strtoul_r+0x50>
   1af80:	f8f3c8e3          	blt	t2,a5,1af10 <_strtoul_r+0xd4>
   1af84:	f81ff06f          	j	1af04 <_strtoul_r+0xc8>
   1af88:	02200793          	li	a5,34
   1af8c:	00ff2023          	sw	a5,0(t5)
   1af90:	fff00513          	li	a0,-1
   1af94:	fc0608e3          	beqz	a2,1af64 <_strtoul_r+0x128>
   1af98:	fff80593          	addi	a1,a6,-1
   1af9c:	fc5ff06f          	j	1af60 <_strtoul_r+0x124>
   1afa0:	00230813          	addi	a6,t1,2
   1afa4:	00134883          	lbu	a7,1(t1)
   1afa8:	00100f93          	li	t6,1
   1afac:	ee1ff06f          	j	1ae8c <_strtoul_r+0x50>
   1afb0:	00084783          	lbu	a5,0(a6)
   1afb4:	05800713          	li	a4,88
   1afb8:	0df7f793          	andi	a5,a5,223
   1afbc:	02e78a63          	beq	a5,a4,1aff0 <_strtoul_r+0x1b4>
   1afc0:	00800293          	li	t0,8
   1afc4:	fff00e93          	li	t4,-1
   1afc8:	00700393          	li	t2,7
   1afcc:	003ede93          	srli	t4,t4,0x3
   1afd0:	00028693          	mv	a3,t0
   1afd4:	ef9ff06f          	j	1aecc <_strtoul_r+0x90>
   1afd8:	03000793          	li	a5,48
   1afdc:	02f89a63          	bne	a7,a5,1b010 <_strtoul_r+0x1d4>
   1afe0:	00084783          	lbu	a5,0(a6)
   1afe4:	05800713          	li	a4,88
   1afe8:	0df7f793          	andi	a5,a5,223
   1afec:	02e79263          	bne	a5,a4,1b010 <_strtoul_r+0x1d4>
   1aff0:	01000293          	li	t0,16
   1aff4:	fff00e93          	li	t4,-1
   1aff8:	00184883          	lbu	a7,1(a6)
   1affc:	00f00393          	li	t2,15
   1b000:	00280813          	addi	a6,a6,2
   1b004:	004ede93          	srli	t4,t4,0x4
   1b008:	00028693          	mv	a3,t0
   1b00c:	ec1ff06f          	j	1aecc <_strtoul_r+0x90>
   1b010:	fff00e93          	li	t4,-1
   1b014:	00f00393          	li	t2,15
   1b018:	004ede93          	srli	t4,t4,0x4
   1b01c:	01000293          	li	t0,16
   1b020:	eadff06f          	j	1aecc <_strtoul_r+0x90>

000000000001b024 <strtoul>:
   1b024:	00060693          	mv	a3,a2
   1b028:	00058613          	mv	a2,a1
   1b02c:	00050593          	mv	a1,a0
   1b030:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   1b034:	e09ff06f          	j	1ae3c <_strtoul_r>

000000000001b038 <_svfprintf_r>:
   1b038:	e1010113          	addi	sp,sp,-496
   1b03c:	1e113423          	sd	ra,488(sp)
   1b040:	1d313423          	sd	s3,456(sp)
   1b044:	1b713423          	sd	s7,424(sp)
   1b048:	1b813023          	sd	s8,416(sp)
   1b04c:	00058b93          	mv	s7,a1
   1b050:	00060993          	mv	s3,a2
   1b054:	02d13423          	sd	a3,40(sp)
   1b058:	1e813023          	sd	s0,480(sp)
   1b05c:	1c913c23          	sd	s1,472(sp)
   1b060:	1d213823          	sd	s2,464(sp)
   1b064:	1d413023          	sd	s4,448(sp)
   1b068:	1b513c23          	sd	s5,440(sp)
   1b06c:	1b613823          	sd	s6,432(sp)
   1b070:	19913c23          	sd	s9,408(sp)
   1b074:	19a13823          	sd	s10,400(sp)
   1b078:	19b13423          	sd	s11,392(sp)
   1b07c:	16813c27          	fsd	fs0,376(sp)
   1b080:	00050c13          	mv	s8,a0
   1b084:	df4fc0ef          	jal	17678 <_localeconv_r>
   1b088:	00053783          	ld	a5,0(a0)
   1b08c:	00078513          	mv	a0,a5
   1b090:	06f13023          	sd	a5,96(sp)
   1b094:	9bdf60ef          	jal	11a50 <strlen>
   1b098:	010bd783          	lhu	a5,16(s7)
   1b09c:	06a13423          	sd	a0,104(sp)
   1b0a0:	0807f793          	andi	a5,a5,128
   1b0a4:	00078863          	beqz	a5,1b0b4 <_svfprintf_r+0x7c>
   1b0a8:	018bb783          	ld	a5,24(s7)
   1b0ac:	00079463          	bnez	a5,1b0b4 <_svfprintf_r+0x7c>
   1b0b0:	5b00106f          	j	1c660 <_svfprintf_r+0x1628>
   1b0b4:	000217b7          	lui	a5,0x21
   1b0b8:	0a878793          	addi	a5,a5,168 # 210a8 <tinytens+0x28>
   1b0bc:	0f010a93          	addi	s5,sp,240
   1b0c0:	02f13823          	sd	a5,48(sp)
   1b0c4:	0ef10793          	addi	a5,sp,239
   1b0c8:	00021a37          	lui	s4,0x21
   1b0cc:	000214b7          	lui	s1,0x21
   1b0d0:	40fa87b3          	sub	a5,s5,a5
   1b0d4:	04013c23          	sd	zero,88(sp)
   1b0d8:	0b513823          	sd	s5,176(sp)
   1b0dc:	0c013023          	sd	zero,192(sp)
   1b0e0:	0a012c23          	sw	zero,184(sp)
   1b0e4:	06012823          	sw	zero,112(sp)
   1b0e8:	000a8893          	mv	a7,s5
   1b0ec:	02013c23          	sd	zero,56(sp)
   1b0f0:	06012a23          	sw	zero,116(sp)
   1b0f4:	00012e23          	sw	zero,28(sp)
   1b0f8:	210a0a13          	addi	s4,s4,528 # 21210 <blanks.4178>
   1b0fc:	22048493          	addi	s1,s1,544 # 21220 <zeroes.4179>
   1b100:	06f13c23          	sd	a5,120(sp)
   1b104:	0009c783          	lbu	a5,0(s3)
   1b108:	000780e3          	beqz	a5,1b908 <_svfprintf_r+0x8d0>
   1b10c:	02500713          	li	a4,37
   1b110:	00098413          	mv	s0,s3
   1b114:	00e79663          	bne	a5,a4,1b120 <_svfprintf_r+0xe8>
   1b118:	0580006f          	j	1b170 <_svfprintf_r+0x138>
   1b11c:	00e78863          	beq	a5,a4,1b12c <_svfprintf_r+0xf4>
   1b120:	00140413          	addi	s0,s0,1
   1b124:	00044783          	lbu	a5,0(s0)
   1b128:	fe079ae3          	bnez	a5,1b11c <_svfprintf_r+0xe4>
   1b12c:	4134093b          	subw	s2,s0,s3
   1b130:	04090063          	beqz	s2,1b170 <_svfprintf_r+0x138>
   1b134:	0c013703          	ld	a4,192(sp)
   1b138:	0b812783          	lw	a5,184(sp)
   1b13c:	00090693          	mv	a3,s2
   1b140:	00d70733          	add	a4,a4,a3
   1b144:	0017879b          	addiw	a5,a5,1
   1b148:	0138b023          	sd	s3,0(a7)
   1b14c:	00d8b423          	sd	a3,8(a7)
   1b150:	0ce13023          	sd	a4,192(sp)
   1b154:	0af12c23          	sw	a5,184(sp)
   1b158:	00700713          	li	a4,7
   1b15c:	01088893          	addi	a7,a7,16
   1b160:	14f74263          	blt	a4,a5,1b2a4 <_svfprintf_r+0x26c>
   1b164:	01c12783          	lw	a5,28(sp)
   1b168:	012787bb          	addw	a5,a5,s2
   1b16c:	00f12e23          	sw	a5,28(sp)
   1b170:	00044783          	lbu	a5,0(s0)
   1b174:	14078663          	beqz	a5,1b2c0 <_svfprintf_r+0x288>
   1b178:	00140993          	addi	s3,s0,1
   1b17c:	080107a3          	sb	zero,143(sp)
   1b180:	00000613          	li	a2,0
   1b184:	00000593          	li	a1,0
   1b188:	fff00413          	li	s0,-1
   1b18c:	00012c23          	sw	zero,24(sp)
   1b190:	00000b13          	li	s6,0
   1b194:	05800713          	li	a4,88
   1b198:	00900693          	li	a3,9
   1b19c:	02a00513          	li	a0,42
   1b1a0:	0009cd03          	lbu	s10,0(s3)
   1b1a4:	00198993          	addi	s3,s3,1
   1b1a8:	fe0d079b          	addiw	a5,s10,-32
   1b1ac:	14f766e3          	bltu	a4,a5,1baf8 <_svfprintf_r+0xac0>
   1b1b0:	03013803          	ld	a6,48(sp)
   1b1b4:	02079793          	slli	a5,a5,0x20
   1b1b8:	01e7d793          	srli	a5,a5,0x1e
   1b1bc:	010787b3          	add	a5,a5,a6
   1b1c0:	0007a783          	lw	a5,0(a5)
   1b1c4:	00078067          	jr	a5
   1b1c8:	010b6b13          	ori	s6,s6,16
   1b1cc:	fd5ff06f          	j	1b1a0 <_svfprintf_r+0x168>
   1b1d0:	02813783          	ld	a5,40(sp)
   1b1d4:	0007a803          	lw	a6,0(a5)
   1b1d8:	00878793          	addi	a5,a5,8
   1b1dc:	02f13423          	sd	a5,40(sp)
   1b1e0:	01012c23          	sw	a6,24(sp)
   1b1e4:	fa085ee3          	bgez	a6,1b1a0 <_svfprintf_r+0x168>
   1b1e8:	410007bb          	negw	a5,a6
   1b1ec:	00f12c23          	sw	a5,24(sp)
   1b1f0:	004b6b13          	ori	s6,s6,4
   1b1f4:	fadff06f          	j	1b1a0 <_svfprintf_r+0x168>
   1b1f8:	03000793          	li	a5,48
   1b1fc:	08f10823          	sb	a5,144(sp)
   1b200:	07800793          	li	a5,120
   1b204:	08f108a3          	sb	a5,145(sp)
   1b208:	02813783          	ld	a5,40(sp)
   1b20c:	080107a3          	sb	zero,143(sp)
   1b210:	002b6693          	ori	a3,s6,2
   1b214:	00878713          	addi	a4,a5,8
   1b218:	0007b783          	ld	a5,0(a5)
   1b21c:	100448e3          	bltz	s0,1bb2c <_svfprintf_r+0xaf4>
   1b220:	f7fb7b13          	andi	s6,s6,-129
   1b224:	02e13423          	sd	a4,40(sp)
   1b228:	002b6b13          	ori	s6,s6,2
   1b22c:	0a079ae3          	bnez	a5,1bae0 <_svfprintf_r+0xaa8>
   1b230:	000227b7          	lui	a5,0x22
   1b234:	cd878793          	addi	a5,a5,-808 # 21cd8 <zeroes.4123+0x6a8>
   1b238:	02f13c23          	sd	a5,56(sp)
   1b23c:	07800d13          	li	s10,120
   1b240:	00000613          	li	a2,0
   1b244:	00000793          	li	a5,0
   1b248:	70040063          	beqz	s0,1b948 <_svfprintf_r+0x910>
   1b24c:	000a8913          	mv	s2,s5
   1b250:	03813683          	ld	a3,56(sp)
   1b254:	00f7f713          	andi	a4,a5,15
   1b258:	fff90913          	addi	s2,s2,-1
   1b25c:	00e68733          	add	a4,a3,a4
   1b260:	00074703          	lbu	a4,0(a4)
   1b264:	0047d793          	srli	a5,a5,0x4
   1b268:	00e90023          	sb	a4,0(s2)
   1b26c:	fe0792e3          	bnez	a5,1b250 <_svfprintf_r+0x218>
   1b270:	412a87b3          	sub	a5,s5,s2
   1b274:	02f12023          	sw	a5,32(sp)
   1b278:	02012783          	lw	a5,32(sp)
   1b27c:	00078d93          	mv	s11,a5
   1b280:	0087d463          	ble	s0,a5,1b288 <_svfprintf_r+0x250>
   1b284:	00040d93          	mv	s11,s0
   1b288:	01b12423          	sw	s11,8(sp)
   1b28c:	04012623          	sw	zero,76(sp)
   1b290:	32060263          	beqz	a2,1b5b4 <_svfprintf_r+0x57c>
   1b294:	00812783          	lw	a5,8(sp)
   1b298:	0017879b          	addiw	a5,a5,1
   1b29c:	00f12423          	sw	a5,8(sp)
   1b2a0:	3140006f          	j	1b5b4 <_svfprintf_r+0x57c>
   1b2a4:	0b010613          	addi	a2,sp,176
   1b2a8:	000b8593          	mv	a1,s7
   1b2ac:	000c0513          	mv	a0,s8
   1b2b0:	659030ef          	jal	1f108 <__ssprint_r>
   1b2b4:	02051263          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1b2b8:	000a8893          	mv	a7,s5
   1b2bc:	ea9ff06f          	j	1b164 <_svfprintf_r+0x12c>
   1b2c0:	0c013783          	ld	a5,192(sp)
   1b2c4:	00078a63          	beqz	a5,1b2d8 <_svfprintf_r+0x2a0>
   1b2c8:	0b010613          	addi	a2,sp,176
   1b2cc:	000b8593          	mv	a1,s7
   1b2d0:	000c0513          	mv	a0,s8
   1b2d4:	635030ef          	jal	1f108 <__ssprint_r>
   1b2d8:	010bd783          	lhu	a5,16(s7)
   1b2dc:	01c12503          	lw	a0,28(sp)
   1b2e0:	0407f793          	andi	a5,a5,64
   1b2e4:	00078463          	beqz	a5,1b2ec <_svfprintf_r+0x2b4>
   1b2e8:	4f80106f          	j	1c7e0 <_svfprintf_r+0x17a8>
   1b2ec:	1e813083          	ld	ra,488(sp)
   1b2f0:	1e013403          	ld	s0,480(sp)
   1b2f4:	1d813483          	ld	s1,472(sp)
   1b2f8:	1d013903          	ld	s2,464(sp)
   1b2fc:	1c813983          	ld	s3,456(sp)
   1b300:	1c013a03          	ld	s4,448(sp)
   1b304:	1b813a83          	ld	s5,440(sp)
   1b308:	1b013b03          	ld	s6,432(sp)
   1b30c:	1a813b83          	ld	s7,424(sp)
   1b310:	1a013c03          	ld	s8,416(sp)
   1b314:	19813c83          	ld	s9,408(sp)
   1b318:	19013d03          	ld	s10,400(sp)
   1b31c:	18813d83          	ld	s11,392(sp)
   1b320:	17813407          	fld	fs0,376(sp)
   1b324:	1f010113          	addi	sp,sp,496
   1b328:	00008067          	ret
   1b32c:	00100613          	li	a2,1
   1b330:	02b00593          	li	a1,43
   1b334:	e6dff06f          	j	1b1a0 <_svfprintf_r+0x168>
   1b338:	00060463          	beqz	a2,1b340 <_svfprintf_r+0x308>
   1b33c:	0990106f          	j	1cbd4 <_svfprintf_r+0x1b9c>
   1b340:	010b7793          	andi	a5,s6,16
   1b344:	16078863          	beqz	a5,1b4b4 <_svfprintf_r+0x47c>
   1b348:	02813783          	ld	a5,40(sp)
   1b34c:	080107a3          	sb	zero,143(sp)
   1b350:	00878713          	addi	a4,a5,8
   1b354:	0007b783          	ld	a5,0(a5)
   1b358:	16044c63          	bltz	s0,1b4d0 <_svfprintf_r+0x498>
   1b35c:	02e13423          	sd	a4,40(sp)
   1b360:	f7fb7b13          	andi	s6,s6,-129
   1b364:	3a0794e3          	bnez	a5,1bf0c <_svfprintf_r+0xed4>
   1b368:	00000613          	li	a2,0
   1b36c:	00000793          	li	a5,0
   1b370:	00041463          	bnez	s0,1b378 <_svfprintf_r+0x340>
   1b374:	3780106f          	j	1c6ec <_svfprintf_r+0x16b4>
   1b378:	000a8913          	mv	s2,s5
   1b37c:	0077f713          	andi	a4,a5,7
   1b380:	fff90913          	addi	s2,s2,-1
   1b384:	0307071b          	addiw	a4,a4,48
   1b388:	00e90023          	sb	a4,0(s2)
   1b38c:	0037d793          	srli	a5,a5,0x3
   1b390:	fe0796e3          	bnez	a5,1b37c <_svfprintf_r+0x344>
   1b394:	001b7793          	andi	a5,s6,1
   1b398:	ec078ce3          	beqz	a5,1b270 <_svfprintf_r+0x238>
   1b39c:	03000793          	li	a5,48
   1b3a0:	ecf708e3          	beq	a4,a5,1b270 <_svfprintf_r+0x238>
   1b3a4:	fff90713          	addi	a4,s2,-1
   1b3a8:	40ea86b3          	sub	a3,s5,a4
   1b3ac:	fef90fa3          	sb	a5,-1(s2)
   1b3b0:	02d12023          	sw	a3,32(sp)
   1b3b4:	00070913          	mv	s2,a4
   1b3b8:	ec1ff06f          	j	1b278 <_svfprintf_r+0x240>
   1b3bc:	00060463          	beqz	a2,1b3c4 <_svfprintf_r+0x38c>
   1b3c0:	0710106f          	j	1cc30 <_svfprintf_r+0x1bf8>
   1b3c4:	000227b7          	lui	a5,0x22
   1b3c8:	cd878793          	addi	a5,a5,-808 # 21cd8 <zeroes.4123+0x6a8>
   1b3cc:	02f13c23          	sd	a5,56(sp)
   1b3d0:	010b7793          	andi	a5,s6,16
   1b3d4:	18078863          	beqz	a5,1b564 <_svfprintf_r+0x52c>
   1b3d8:	02813703          	ld	a4,40(sp)
   1b3dc:	00073783          	ld	a5,0(a4)
   1b3e0:	00870713          	addi	a4,a4,8
   1b3e4:	02e13423          	sd	a4,40(sp)
   1b3e8:	001b7713          	andi	a4,s6,1
   1b3ec:	300704e3          	beqz	a4,1bef4 <_svfprintf_r+0xebc>
   1b3f0:	00079463          	bnez	a5,1b3f8 <_svfprintf_r+0x3c0>
   1b3f4:	7b10006f          	j	1c3a4 <_svfprintf_r+0x136c>
   1b3f8:	03000713          	li	a4,48
   1b3fc:	08e10823          	sb	a4,144(sp)
   1b400:	09a108a3          	sb	s10,145(sp)
   1b404:	080107a3          	sb	zero,143(sp)
   1b408:	002b6713          	ori	a4,s6,2
   1b40c:	00045463          	bgez	s0,1b414 <_svfprintf_r+0x3dc>
   1b410:	4840106f          	j	1c894 <_svfprintf_r+0x185c>
   1b414:	f7fb7b13          	andi	s6,s6,-129
   1b418:	002b6b13          	ori	s6,s6,2
   1b41c:	00000613          	li	a2,0
   1b420:	e2dff06f          	j	1b24c <_svfprintf_r+0x214>
   1b424:	00060463          	beqz	a2,1b42c <_svfprintf_r+0x3f4>
   1b428:	7980106f          	j	1cbc0 <_svfprintf_r+0x1b88>
   1b42c:	010b7793          	andi	a5,s6,16
   1b430:	720788e3          	beqz	a5,1c360 <_svfprintf_r+0x1328>
   1b434:	02813683          	ld	a3,40(sp)
   1b438:	01c12703          	lw	a4,28(sp)
   1b43c:	0006b783          	ld	a5,0(a3)
   1b440:	00868693          	addi	a3,a3,8
   1b444:	02d13423          	sd	a3,40(sp)
   1b448:	00e7b023          	sd	a4,0(a5)
   1b44c:	cb9ff06f          	j	1b104 <_svfprintf_r+0xcc>
   1b450:	0009cd03          	lbu	s10,0(s3)
   1b454:	00198993          	addi	s3,s3,1
   1b458:	00ad1463          	bne	s10,a0,1b460 <_svfprintf_r+0x428>
   1b45c:	6f80106f          	j	1cb54 <_svfprintf_r+0x1b1c>
   1b460:	fd0d079b          	addiw	a5,s10,-48
   1b464:	00000413          	li	s0,0
   1b468:	d4f6e0e3          	bltu	a3,a5,1b1a8 <_svfprintf_r+0x170>
   1b46c:	00198993          	addi	s3,s3,1
   1b470:	fff9cd03          	lbu	s10,-1(s3)
   1b474:	0014181b          	slliw	a6,s0,0x1
   1b478:	0034141b          	slliw	s0,s0,0x3
   1b47c:	0088043b          	addw	s0,a6,s0
   1b480:	00f4043b          	addw	s0,s0,a5
   1b484:	fd0d079b          	addiw	a5,s10,-48
   1b488:	fef6f2e3          	bleu	a5,a3,1b46c <_svfprintf_r+0x434>
   1b48c:	d0045ee3          	bgez	s0,1b1a8 <_svfprintf_r+0x170>
   1b490:	fff00413          	li	s0,-1
   1b494:	d15ff06f          	j	1b1a8 <_svfprintf_r+0x170>
   1b498:	080b6b13          	ori	s6,s6,128
   1b49c:	d05ff06f          	j	1b1a0 <_svfprintf_r+0x168>
   1b4a0:	00060463          	beqz	a2,1b4a8 <_svfprintf_r+0x470>
   1b4a4:	7240106f          	j	1cbc8 <_svfprintf_r+0x1b90>
   1b4a8:	010b6b13          	ori	s6,s6,16
   1b4ac:	010b7793          	andi	a5,s6,16
   1b4b0:	e8079ce3          	bnez	a5,1b348 <_svfprintf_r+0x310>
   1b4b4:	040b7793          	andi	a5,s6,64
   1b4b8:	080107a3          	sb	zero,143(sp)
   1b4bc:	600784e3          	beqz	a5,1c2c4 <_svfprintf_r+0x128c>
   1b4c0:	02813783          	ld	a5,40(sp)
   1b4c4:	00878713          	addi	a4,a5,8
   1b4c8:	0007d783          	lhu	a5,0(a5)
   1b4cc:	e80458e3          	bgez	s0,1b35c <_svfprintf_r+0x324>
   1b4d0:	02e13423          	sd	a4,40(sp)
   1b4d4:	22079ce3          	bnez	a5,1bf0c <_svfprintf_r+0xed4>
   1b4d8:	00000613          	li	a2,0
   1b4dc:	00000713          	li	a4,0
   1b4e0:	6700006f          	j	1bb50 <_svfprintf_r+0xb18>
   1b4e4:	00060463          	beqz	a2,1b4ec <_svfprintf_r+0x4b4>
   1b4e8:	7040106f          	j	1cbec <_svfprintf_r+0x1bb4>
   1b4ec:	010b6b13          	ori	s6,s6,16
   1b4f0:	010b7793          	andi	a5,s6,16
   1b4f4:	38078ae3          	beqz	a5,1c088 <_svfprintf_r+0x1050>
   1b4f8:	02813783          	ld	a5,40(sp)
   1b4fc:	080107a3          	sb	zero,143(sp)
   1b500:	00878713          	addi	a4,a5,8
   1b504:	0007b783          	ld	a5,0(a5)
   1b508:	38044ee3          	bltz	s0,1c0a4 <_svfprintf_r+0x106c>
   1b50c:	02e13423          	sd	a4,40(sp)
   1b510:	f7fb7b13          	andi	s6,s6,-129
   1b514:	00000613          	li	a2,0
   1b518:	42078663          	beqz	a5,1b944 <_svfprintf_r+0x90c>
   1b51c:	00900713          	li	a4,9
   1b520:	000a8913          	mv	s2,s5
   1b524:	00a00693          	li	a3,10
   1b528:	62f77a63          	bleu	a5,a4,1bb5c <_svfprintf_r+0xb24>
   1b52c:	02d7f733          	remu	a4,a5,a3
   1b530:	fff90913          	addi	s2,s2,-1
   1b534:	02d7d7b3          	divu	a5,a5,a3
   1b538:	0307071b          	addiw	a4,a4,48
   1b53c:	00e90023          	sb	a4,0(s2)
   1b540:	fe0796e3          	bnez	a5,1b52c <_svfprintf_r+0x4f4>
   1b544:	d2dff06f          	j	1b270 <_svfprintf_r+0x238>
   1b548:	00060463          	beqz	a2,1b550 <_svfprintf_r+0x518>
   1b54c:	6980106f          	j	1cbe4 <_svfprintf_r+0x1bac>
   1b550:	000227b7          	lui	a5,0x22
   1b554:	cc078793          	addi	a5,a5,-832 # 21cc0 <zeroes.4123+0x690>
   1b558:	02f13c23          	sd	a5,56(sp)
   1b55c:	010b7793          	andi	a5,s6,16
   1b560:	e6079ce3          	bnez	a5,1b3d8 <_svfprintf_r+0x3a0>
   1b564:	040b7793          	andi	a5,s6,64
   1b568:	02813703          	ld	a4,40(sp)
   1b56c:	620784e3          	beqz	a5,1c394 <_svfprintf_r+0x135c>
   1b570:	00075783          	lhu	a5,0(a4)
   1b574:	00870713          	addi	a4,a4,8
   1b578:	02e13423          	sd	a4,40(sp)
   1b57c:	e6dff06f          	j	1b3e8 <_svfprintf_r+0x3b0>
   1b580:	02813703          	ld	a4,40(sp)
   1b584:	00100693          	li	a3,1
   1b588:	00d12423          	sw	a3,8(sp)
   1b58c:	00072783          	lw	a5,0(a4)
   1b590:	080107a3          	sb	zero,143(sp)
   1b594:	00000613          	li	a2,0
   1b598:	0cf10423          	sb	a5,200(sp)
   1b59c:	00870793          	addi	a5,a4,8
   1b5a0:	02f13423          	sd	a5,40(sp)
   1b5a4:	02d12023          	sw	a3,32(sp)
   1b5a8:	00000413          	li	s0,0
   1b5ac:	04012623          	sw	zero,76(sp)
   1b5b0:	0c810913          	addi	s2,sp,200
   1b5b4:	002b7793          	andi	a5,s6,2
   1b5b8:	04f12023          	sw	a5,64(sp)
   1b5bc:	00078863          	beqz	a5,1b5cc <_svfprintf_r+0x594>
   1b5c0:	00812783          	lw	a5,8(sp)
   1b5c4:	0027879b          	addiw	a5,a5,2
   1b5c8:	00f12423          	sw	a5,8(sp)
   1b5cc:	084b7793          	andi	a5,s6,132
   1b5d0:	04f12423          	sw	a5,72(sp)
   1b5d4:	5a079063          	bnez	a5,1bb74 <_svfprintf_r+0xb3c>
   1b5d8:	01812783          	lw	a5,24(sp)
   1b5dc:	00812703          	lw	a4,8(sp)
   1b5e0:	40e78cbb          	subw	s9,a5,a4
   1b5e4:	59905863          	blez	s9,1bb74 <_svfprintf_r+0xb3c>
   1b5e8:	01000793          	li	a5,16
   1b5ec:	0197c463          	blt	a5,s9,1b5f4 <_svfprintf_r+0x5bc>
   1b5f0:	1f80106f          	j	1c7e8 <_svfprintf_r+0x17b0>
   1b5f4:	01000813          	li	a6,16
   1b5f8:	0c013783          	ld	a5,192(sp)
   1b5fc:	0b812703          	lw	a4,184(sp)
   1b600:	05413823          	sd	s4,80(sp)
   1b604:	00700313          	li	t1,7
   1b608:	00080d93          	mv	s11,a6
   1b60c:	00c0006f          	j	1b618 <_svfprintf_r+0x5e0>
   1b610:	ff0c8c9b          	addiw	s9,s9,-16
   1b614:	059dde63          	ble	s9,s11,1b670 <_svfprintf_r+0x638>
   1b618:	01078793          	addi	a5,a5,16
   1b61c:	0017071b          	addiw	a4,a4,1
   1b620:	0148b023          	sd	s4,0(a7)
   1b624:	0108b423          	sd	a6,8(a7)
   1b628:	0cf13023          	sd	a5,192(sp)
   1b62c:	0ae12c23          	sw	a4,184(sp)
   1b630:	01088893          	addi	a7,a7,16
   1b634:	fce35ee3          	ble	a4,t1,1b610 <_svfprintf_r+0x5d8>
   1b638:	0b010613          	addi	a2,sp,176
   1b63c:	000b8593          	mv	a1,s7
   1b640:	000c0513          	mv	a0,s8
   1b644:	00613823          	sd	t1,16(sp)
   1b648:	01013023          	sd	a6,0(sp)
   1b64c:	2bd030ef          	jal	1f108 <__ssprint_r>
   1b650:	c80514e3          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1b654:	ff0c8c9b          	addiw	s9,s9,-16
   1b658:	0c013783          	ld	a5,192(sp)
   1b65c:	0b812703          	lw	a4,184(sp)
   1b660:	000a8893          	mv	a7,s5
   1b664:	01013303          	ld	t1,16(sp)
   1b668:	00013803          	ld	a6,0(sp)
   1b66c:	fb9dc6e3          	blt	s11,s9,1b618 <_svfprintf_r+0x5e0>
   1b670:	05013603          	ld	a2,80(sp)
   1b674:	00fc87b3          	add	a5,s9,a5
   1b678:	0017071b          	addiw	a4,a4,1
   1b67c:	00c8b023          	sd	a2,0(a7)
   1b680:	0198b423          	sd	s9,8(a7)
   1b684:	0cf13023          	sd	a5,192(sp)
   1b688:	0ae12c23          	sw	a4,184(sp)
   1b68c:	00700693          	li	a3,7
   1b690:	14e6cce3          	blt	a3,a4,1bfe8 <_svfprintf_r+0xfb0>
   1b694:	08f14603          	lbu	a2,143(sp)
   1b698:	01088893          	addi	a7,a7,16
   1b69c:	02060a63          	beqz	a2,1b6d0 <_svfprintf_r+0x698>
   1b6a0:	0b812703          	lw	a4,184(sp)
   1b6a4:	08f10693          	addi	a3,sp,143
   1b6a8:	00d8b023          	sd	a3,0(a7)
   1b6ac:	00178793          	addi	a5,a5,1
   1b6b0:	00100693          	li	a3,1
   1b6b4:	0017071b          	addiw	a4,a4,1
   1b6b8:	00d8b423          	sd	a3,8(a7)
   1b6bc:	0cf13023          	sd	a5,192(sp)
   1b6c0:	0ae12c23          	sw	a4,184(sp)
   1b6c4:	00700693          	li	a3,7
   1b6c8:	01088893          	addi	a7,a7,16
   1b6cc:	7ee6c463          	blt	a3,a4,1beb4 <_svfprintf_r+0xe7c>
   1b6d0:	04012703          	lw	a4,64(sp)
   1b6d4:	02070a63          	beqz	a4,1b708 <_svfprintf_r+0x6d0>
   1b6d8:	0b812703          	lw	a4,184(sp)
   1b6dc:	09010693          	addi	a3,sp,144
   1b6e0:	00d8b023          	sd	a3,0(a7)
   1b6e4:	00278793          	addi	a5,a5,2
   1b6e8:	00200693          	li	a3,2
   1b6ec:	0017071b          	addiw	a4,a4,1
   1b6f0:	00d8b423          	sd	a3,8(a7)
   1b6f4:	0cf13023          	sd	a5,192(sp)
   1b6f8:	0ae12c23          	sw	a4,184(sp)
   1b6fc:	00700693          	li	a3,7
   1b700:	01088893          	addi	a7,a7,16
   1b704:	7ce6c863          	blt	a3,a4,1bed4 <_svfprintf_r+0xe9c>
   1b708:	04812683          	lw	a3,72(sp)
   1b70c:	08000713          	li	a4,128
   1b710:	66e68463          	beq	a3,a4,1bd78 <_svfprintf_r+0xd40>
   1b714:	02012703          	lw	a4,32(sp)
   1b718:	40e4043b          	subw	s0,s0,a4
   1b71c:	0c805063          	blez	s0,1b7dc <_svfprintf_r+0x7a4>
   1b720:	01000713          	li	a4,16
   1b724:	488758e3          	ble	s0,a4,1c3b4 <_svfprintf_r+0x137c>
   1b728:	01000c93          	li	s9,16
   1b72c:	0b812703          	lw	a4,184(sp)
   1b730:	00913823          	sd	s1,16(sp)
   1b734:	00700813          	li	a6,7
   1b738:	000c8d93          	mv	s11,s9
   1b73c:	00c0006f          	j	1b748 <_svfprintf_r+0x710>
   1b740:	ff04041b          	addiw	s0,s0,-16
   1b744:	048dda63          	ble	s0,s11,1b798 <_svfprintf_r+0x760>
   1b748:	01078793          	addi	a5,a5,16
   1b74c:	0017071b          	addiw	a4,a4,1
   1b750:	0098b023          	sd	s1,0(a7)
   1b754:	0198b423          	sd	s9,8(a7)
   1b758:	0cf13023          	sd	a5,192(sp)
   1b75c:	0ae12c23          	sw	a4,184(sp)
   1b760:	01088893          	addi	a7,a7,16
   1b764:	fce85ee3          	ble	a4,a6,1b740 <_svfprintf_r+0x708>
   1b768:	0b010613          	addi	a2,sp,176
   1b76c:	000b8593          	mv	a1,s7
   1b770:	000c0513          	mv	a0,s8
   1b774:	01013023          	sd	a6,0(sp)
   1b778:	191030ef          	jal	1f108 <__ssprint_r>
   1b77c:	b4051ee3          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1b780:	ff04041b          	addiw	s0,s0,-16
   1b784:	0c013783          	ld	a5,192(sp)
   1b788:	0b812703          	lw	a4,184(sp)
   1b78c:	000a8893          	mv	a7,s5
   1b790:	00013803          	ld	a6,0(sp)
   1b794:	fa8dcae3          	blt	s11,s0,1b748 <_svfprintf_r+0x710>
   1b798:	01013683          	ld	a3,16(sp)
   1b79c:	008787b3          	add	a5,a5,s0
   1b7a0:	0017071b          	addiw	a4,a4,1
   1b7a4:	00d8b023          	sd	a3,0(a7)
   1b7a8:	0088b423          	sd	s0,8(a7)
   1b7ac:	0cf13023          	sd	a5,192(sp)
   1b7b0:	0ae12c23          	sw	a4,184(sp)
   1b7b4:	00700693          	li	a3,7
   1b7b8:	01088893          	addi	a7,a7,16
   1b7bc:	02e6d063          	ble	a4,a3,1b7dc <_svfprintf_r+0x7a4>
   1b7c0:	0b010613          	addi	a2,sp,176
   1b7c4:	000b8593          	mv	a1,s7
   1b7c8:	000c0513          	mv	a0,s8
   1b7cc:	13d030ef          	jal	1f108 <__ssprint_r>
   1b7d0:	b00514e3          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1b7d4:	0c013783          	ld	a5,192(sp)
   1b7d8:	000a8893          	mv	a7,s5
   1b7dc:	100b7713          	andi	a4,s6,256
   1b7e0:	48071463          	bnez	a4,1bc68 <_svfprintf_r+0xc30>
   1b7e4:	02012703          	lw	a4,32(sp)
   1b7e8:	0b812683          	lw	a3,184(sp)
   1b7ec:	0128b023          	sd	s2,0(a7)
   1b7f0:	00e787b3          	add	a5,a5,a4
   1b7f4:	0016869b          	addiw	a3,a3,1
   1b7f8:	00e8b423          	sd	a4,8(a7)
   1b7fc:	0cf13023          	sd	a5,192(sp)
   1b800:	0ad12c23          	sw	a3,184(sp)
   1b804:	00700713          	li	a4,7
   1b808:	44d74063          	blt	a4,a3,1bc48 <_svfprintf_r+0xc10>
   1b80c:	01088893          	addi	a7,a7,16
   1b810:	004b7b13          	andi	s6,s6,4
   1b814:	0c0b0263          	beqz	s6,1b8d8 <_svfprintf_r+0x8a0>
   1b818:	01812703          	lw	a4,24(sp)
   1b81c:	00812683          	lw	a3,8(sp)
   1b820:	40d7043b          	subw	s0,a4,a3
   1b824:	0a805a63          	blez	s0,1b8d8 <_svfprintf_r+0x8a0>
   1b828:	01000713          	li	a4,16
   1b82c:	00874463          	blt	a4,s0,1b834 <_svfprintf_r+0x7fc>
   1b830:	02c0106f          	j	1c85c <_svfprintf_r+0x1824>
   1b834:	01000913          	li	s2,16
   1b838:	0b812703          	lw	a4,184(sp)
   1b83c:	05413823          	sd	s4,80(sp)
   1b840:	00700b13          	li	s6,7
   1b844:	00090d13          	mv	s10,s2
   1b848:	00c0006f          	j	1b854 <_svfprintf_r+0x81c>
   1b84c:	ff04041b          	addiw	s0,s0,-16
   1b850:	048d5663          	ble	s0,s10,1b89c <_svfprintf_r+0x864>
   1b854:	01078793          	addi	a5,a5,16
   1b858:	0017071b          	addiw	a4,a4,1
   1b85c:	0148b023          	sd	s4,0(a7)
   1b860:	0128b423          	sd	s2,8(a7)
   1b864:	0cf13023          	sd	a5,192(sp)
   1b868:	0ae12c23          	sw	a4,184(sp)
   1b86c:	01088893          	addi	a7,a7,16
   1b870:	fceb5ee3          	ble	a4,s6,1b84c <_svfprintf_r+0x814>
   1b874:	0b010613          	addi	a2,sp,176
   1b878:	000b8593          	mv	a1,s7
   1b87c:	000c0513          	mv	a0,s8
   1b880:	089030ef          	jal	1f108 <__ssprint_r>
   1b884:	a4051ae3          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1b888:	ff04041b          	addiw	s0,s0,-16
   1b88c:	0c013783          	ld	a5,192(sp)
   1b890:	0b812703          	lw	a4,184(sp)
   1b894:	000a8893          	mv	a7,s5
   1b898:	fa8d4ee3          	blt	s10,s0,1b854 <_svfprintf_r+0x81c>
   1b89c:	05013683          	ld	a3,80(sp)
   1b8a0:	008787b3          	add	a5,a5,s0
   1b8a4:	0017071b          	addiw	a4,a4,1
   1b8a8:	00d8b023          	sd	a3,0(a7)
   1b8ac:	0088b423          	sd	s0,8(a7)
   1b8b0:	0cf13023          	sd	a5,192(sp)
   1b8b4:	0ae12c23          	sw	a4,184(sp)
   1b8b8:	00700693          	li	a3,7
   1b8bc:	00e6de63          	ble	a4,a3,1b8d8 <_svfprintf_r+0x8a0>
   1b8c0:	0b010613          	addi	a2,sp,176
   1b8c4:	000b8593          	mv	a1,s7
   1b8c8:	000c0513          	mv	a0,s8
   1b8cc:	03d030ef          	jal	1f108 <__ssprint_r>
   1b8d0:	a00514e3          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1b8d4:	0c013783          	ld	a5,192(sp)
   1b8d8:	01812c83          	lw	s9,24(sp)
   1b8dc:	00812703          	lw	a4,8(sp)
   1b8e0:	00ecd463          	ble	a4,s9,1b8e8 <_svfprintf_r+0x8b0>
   1b8e4:	00070c93          	mv	s9,a4
   1b8e8:	01c12703          	lw	a4,28(sp)
   1b8ec:	0197073b          	addw	a4,a4,s9
   1b8f0:	00e12e23          	sw	a4,28(sp)
   1b8f4:	5a079463          	bnez	a5,1be9c <_svfprintf_r+0xe64>
   1b8f8:	0009c783          	lbu	a5,0(s3)
   1b8fc:	0a012c23          	sw	zero,184(sp)
   1b900:	000a8893          	mv	a7,s5
   1b904:	800794e3          	bnez	a5,1b10c <_svfprintf_r+0xd4>
   1b908:	00098413          	mv	s0,s3
   1b90c:	865ff06f          	j	1b170 <_svfprintf_r+0x138>
   1b910:	00060463          	beqz	a2,1b918 <_svfprintf_r+0x8e0>
   1b914:	2f00106f          	j	1cc04 <_svfprintf_r+0x1bcc>
   1b918:	010b7793          	andi	a5,s6,16
   1b91c:	0e078e63          	beqz	a5,1ba18 <_svfprintf_r+0x9e0>
   1b920:	02813703          	ld	a4,40(sp)
   1b924:	00073783          	ld	a5,0(a4)
   1b928:	00870713          	addi	a4,a4,8
   1b92c:	02e13423          	sd	a4,40(sp)
   1b930:	1007c263          	bltz	a5,1ba34 <_svfprintf_r+0x9fc>
   1b934:	08f14603          	lbu	a2,143(sp)
   1b938:	76044a63          	bltz	s0,1c0ac <_svfprintf_r+0x1074>
   1b93c:	f7fb7b13          	andi	s6,s6,-129
   1b940:	bc079ee3          	bnez	a5,1b51c <_svfprintf_r+0x4e4>
   1b944:	1a041ee3          	bnez	s0,1c300 <_svfprintf_r+0x12c8>
   1b948:	00000413          	li	s0,0
   1b94c:	02012023          	sw	zero,32(sp)
   1b950:	000a8913          	mv	s2,s5
   1b954:	925ff06f          	j	1b278 <_svfprintf_r+0x240>
   1b958:	040b6b13          	ori	s6,s6,64
   1b95c:	845ff06f          	j	1b1a0 <_svfprintf_r+0x168>
   1b960:	001b6b13          	ori	s6,s6,1
   1b964:	83dff06f          	j	1b1a0 <_svfprintf_r+0x168>
   1b968:	b80604e3          	beqz	a2,1b4f0 <_svfprintf_r+0x4b8>
   1b96c:	08b107a3          	sb	a1,143(sp)
   1b970:	b81ff06f          	j	1b4f0 <_svfprintf_r+0x4b8>
   1b974:	820596e3          	bnez	a1,1b1a0 <_svfprintf_r+0x168>
   1b978:	00100613          	li	a2,1
   1b97c:	02000593          	li	a1,32
   1b980:	821ff06f          	j	1b1a0 <_svfprintf_r+0x168>
   1b984:	00060463          	beqz	a2,1b98c <_svfprintf_r+0x954>
   1b988:	2540106f          	j	1cbdc <_svfprintf_r+0x1ba4>
   1b98c:	02813783          	ld	a5,40(sp)
   1b990:	00100913          	li	s2,1
   1b994:	0007b787          	fld	fa5,0(a5)
   1b998:	00878793          	addi	a5,a5,8
   1b99c:	01113023          	sd	a7,0(sp)
   1b9a0:	04f13c27          	fsd	fa5,88(sp)
   1b9a4:	05813c83          	ld	s9,88(sp)
   1b9a8:	02f13423          	sd	a5,40(sp)
   1b9ac:	f20c8553          	fmv.d.x	fa0,s9
   1b9b0:	ce5fd0ef          	jal	19694 <__fpclassifyd>
   1b9b4:	00013883          	ld	a7,0(sp)
   1b9b8:	172512e3          	bne	a0,s2,1c31c <_svfprintf_r+0x12e4>
   1b9bc:	f20007d3          	fmv.d.x	fa5,zero
   1b9c0:	f20c8753          	fmv.d.x	fa4,s9
   1b9c4:	a2f717d3          	flt.d	a5,fa4,fa5
   1b9c8:	6a0794e3          	bnez	a5,1c870 <_svfprintf_r+0x1838>
   1b9cc:	08f14603          	lbu	a2,143(sp)
   1b9d0:	04700793          	li	a5,71
   1b9d4:	45a7dee3          	ble	s10,a5,1c630 <_svfprintf_r+0x15f8>
   1b9d8:	00022937          	lui	s2,0x22
   1b9dc:	ca890913          	addi	s2,s2,-856 # 21ca8 <zeroes.4123+0x678>
   1b9e0:	00300793          	li	a5,3
   1b9e4:	00f12423          	sw	a5,8(sp)
   1b9e8:	f7fb7b13          	andi	s6,s6,-129
   1b9ec:	02f12023          	sw	a5,32(sp)
   1b9f0:	00000413          	li	s0,0
   1b9f4:	04012623          	sw	zero,76(sp)
   1b9f8:	899ff06f          	j	1b290 <_svfprintf_r+0x258>
   1b9fc:	008b6b13          	ori	s6,s6,8
   1ba00:	fa0ff06f          	j	1b1a0 <_svfprintf_r+0x168>
   1ba04:	00060463          	beqz	a2,1ba0c <_svfprintf_r+0x9d4>
   1ba08:	21c0106f          	j	1cc24 <_svfprintf_r+0x1bec>
   1ba0c:	010b6b13          	ori	s6,s6,16
   1ba10:	010b7793          	andi	a5,s6,16
   1ba14:	f00796e3          	bnez	a5,1b920 <_svfprintf_r+0x8e8>
   1ba18:	040b7793          	andi	a5,s6,64
   1ba1c:	02813703          	ld	a4,40(sp)
   1ba20:	160782e3          	beqz	a5,1c384 <_svfprintf_r+0x134c>
   1ba24:	00071783          	lh	a5,0(a4)
   1ba28:	00870713          	addi	a4,a4,8
   1ba2c:	02e13423          	sd	a4,40(sp)
   1ba30:	f007d2e3          	bgez	a5,1b934 <_svfprintf_r+0x8fc>
   1ba34:	02d00713          	li	a4,45
   1ba38:	08e107a3          	sb	a4,143(sp)
   1ba3c:	40f007b3          	neg	a5,a5
   1ba40:	5c0440e3          	bltz	s0,1c800 <_svfprintf_r+0x17c8>
   1ba44:	f7fb7b13          	andi	s6,s6,-129
   1ba48:	02d00613          	li	a2,45
   1ba4c:	ad1ff06f          	j	1b51c <_svfprintf_r+0x4e4>
   1ba50:	02813783          	ld	a5,40(sp)
   1ba54:	080107a3          	sb	zero,143(sp)
   1ba58:	0007b903          	ld	s2,0(a5)
   1ba5c:	00878c93          	addi	s9,a5,8
   1ba60:	5c0902e3          	beqz	s2,1c824 <_svfprintf_r+0x17ec>
   1ba64:	01113023          	sd	a7,0(sp)
   1ba68:	54044ae3          	bltz	s0,1c7bc <_svfprintf_r+0x1784>
   1ba6c:	00040613          	mv	a2,s0
   1ba70:	00000593          	li	a1,0
   1ba74:	00090513          	mv	a0,s2
   1ba78:	830fc0ef          	jal	17aa8 <memchr>
   1ba7c:	00013883          	ld	a7,0(sp)
   1ba80:	660502e3          	beqz	a0,1c8e4 <_svfprintf_r+0x18ac>
   1ba84:	412507bb          	subw	a5,a0,s2
   1ba88:	02f12023          	sw	a5,32(sp)
   1ba8c:	00078d93          	mv	s11,a5
   1ba90:	5407c4e3          	bltz	a5,1c7d8 <_svfprintf_r+0x17a0>
   1ba94:	08f14603          	lbu	a2,143(sp)
   1ba98:	01b12423          	sw	s11,8(sp)
   1ba9c:	03913423          	sd	s9,40(sp)
   1baa0:	00000413          	li	s0,0
   1baa4:	04012623          	sw	zero,76(sp)
   1baa8:	fe8ff06f          	j	1b290 <_svfprintf_r+0x258>
   1baac:	00012c23          	sw	zero,24(sp)
   1bab0:	fd0d079b          	addiw	a5,s10,-48
   1bab4:	01812303          	lw	t1,24(sp)
   1bab8:	00198993          	addi	s3,s3,1
   1babc:	fff9cd03          	lbu	s10,-1(s3)
   1bac0:	0013181b          	slliw	a6,t1,0x1
   1bac4:	00331c9b          	slliw	s9,t1,0x3
   1bac8:	01980cbb          	addw	s9,a6,s9
   1bacc:	019787bb          	addw	a5,a5,s9
   1bad0:	00f12c23          	sw	a5,24(sp)
   1bad4:	fd0d079b          	addiw	a5,s10,-48
   1bad8:	fcf6fee3          	bleu	a5,a3,1bab4 <_svfprintf_r+0xa7c>
   1badc:	eccff06f          	j	1b1a8 <_svfprintf_r+0x170>
   1bae0:	00022737          	lui	a4,0x22
   1bae4:	cd870713          	addi	a4,a4,-808 # 21cd8 <zeroes.4123+0x6a8>
   1bae8:	00000613          	li	a2,0
   1baec:	02e13c23          	sd	a4,56(sp)
   1baf0:	07800d13          	li	s10,120
   1baf4:	f58ff06f          	j	1b24c <_svfprintf_r+0x214>
   1baf8:	00060463          	beqz	a2,1bb00 <_svfprintf_r+0xac8>
   1bafc:	1100106f          	j	1cc0c <_svfprintf_r+0x1bd4>
   1bb00:	fc0d0063          	beqz	s10,1b2c0 <_svfprintf_r+0x288>
   1bb04:	00100793          	li	a5,1
   1bb08:	00f12423          	sw	a5,8(sp)
   1bb0c:	0da10423          	sb	s10,200(sp)
   1bb10:	080107a3          	sb	zero,143(sp)
   1bb14:	00000613          	li	a2,0
   1bb18:	02f12023          	sw	a5,32(sp)
   1bb1c:	00000413          	li	s0,0
   1bb20:	04012623          	sw	zero,76(sp)
   1bb24:	0c810913          	addi	s2,sp,200
   1bb28:	a8dff06f          	j	1b5b4 <_svfprintf_r+0x57c>
   1bb2c:	02e13423          	sd	a4,40(sp)
   1bb30:	00022737          	lui	a4,0x22
   1bb34:	cd870713          	addi	a4,a4,-808 # 21cd8 <zeroes.4123+0x6a8>
   1bb38:	00068b13          	mv	s6,a3
   1bb3c:	02e13c23          	sd	a4,56(sp)
   1bb40:	07800d13          	li	s10,120
   1bb44:	3c079063          	bnez	a5,1bf04 <_svfprintf_r+0xecc>
   1bb48:	00000613          	li	a2,0
   1bb4c:	00200713          	li	a4,2
   1bb50:	00100693          	li	a3,1
   1bb54:	00000793          	li	a5,0
   1bb58:	4ad71ee3          	bne	a4,a3,1c814 <_svfprintf_r+0x17dc>
   1bb5c:	0307879b          	addiw	a5,a5,48
   1bb60:	0ef107a3          	sb	a5,239(sp)
   1bb64:	07813783          	ld	a5,120(sp)
   1bb68:	0ef10913          	addi	s2,sp,239
   1bb6c:	02f12023          	sw	a5,32(sp)
   1bb70:	f08ff06f          	j	1b278 <_svfprintf_r+0x240>
   1bb74:	0c013783          	ld	a5,192(sp)
   1bb78:	b25ff06f          	j	1b69c <_svfprintf_r+0x664>
   1bb7c:	07012683          	lw	a3,112(sp)
   1bb80:	00100713          	li	a4,1
   1bb84:	00178793          	addi	a5,a5,1
   1bb88:	6ed75263          	ble	a3,a4,1c26c <_svfprintf_r+0x1234>
   1bb8c:	0b812703          	lw	a4,184(sp)
   1bb90:	00100693          	li	a3,1
   1bb94:	00d8b423          	sd	a3,8(a7)
   1bb98:	0017071b          	addiw	a4,a4,1
   1bb9c:	0128b023          	sd	s2,0(a7)
   1bba0:	0cf13023          	sd	a5,192(sp)
   1bba4:	0ae12c23          	sw	a4,184(sp)
   1bba8:	00700693          	li	a3,7
   1bbac:	01088893          	addi	a7,a7,16
   1bbb0:	6ee6c663          	blt	a3,a4,1c29c <_svfprintf_r+0x1264>
   1bbb4:	06813683          	ld	a3,104(sp)
   1bbb8:	06013603          	ld	a2,96(sp)
   1bbbc:	0017071b          	addiw	a4,a4,1
   1bbc0:	00f687b3          	add	a5,a3,a5
   1bbc4:	00d8b423          	sd	a3,8(a7)
   1bbc8:	00c8b023          	sd	a2,0(a7)
   1bbcc:	0cf13023          	sd	a5,192(sp)
   1bbd0:	0ae12c23          	sw	a4,184(sp)
   1bbd4:	00700693          	li	a3,7
   1bbd8:	01088893          	addi	a7,a7,16
   1bbdc:	6ee6ce63          	blt	a3,a4,1c2d8 <_svfprintf_r+0x12a0>
   1bbe0:	f20007d3          	fmv.d.x	fa5,zero
   1bbe4:	05813707          	fld	fa4,88(sp)
   1bbe8:	a2f726d3          	feq.d	a3,fa4,fa5
   1bbec:	42069063          	bnez	a3,1c00c <_svfprintf_r+0xfd4>
   1bbf0:	07012683          	lw	a3,112(sp)
   1bbf4:	00190913          	addi	s2,s2,1
   1bbf8:	0017071b          	addiw	a4,a4,1
   1bbfc:	fff6869b          	addiw	a3,a3,-1
   1bc00:	00d787b3          	add	a5,a5,a3
   1bc04:	0128b023          	sd	s2,0(a7)
   1bc08:	00d8b423          	sd	a3,8(a7)
   1bc0c:	0cf13023          	sd	a5,192(sp)
   1bc10:	0ae12c23          	sw	a4,184(sp)
   1bc14:	00700693          	li	a3,7
   1bc18:	26e6c063          	blt	a3,a4,1be78 <_svfprintf_r+0xe40>
   1bc1c:	01088893          	addi	a7,a7,16
   1bc20:	07412683          	lw	a3,116(sp)
   1bc24:	0a010613          	addi	a2,sp,160
   1bc28:	0017071b          	addiw	a4,a4,1
   1bc2c:	00f687b3          	add	a5,a3,a5
   1bc30:	00c8b023          	sd	a2,0(a7)
   1bc34:	00d8b423          	sd	a3,8(a7)
   1bc38:	0cf13023          	sd	a5,192(sp)
   1bc3c:	0ae12c23          	sw	a4,184(sp)
   1bc40:	00700693          	li	a3,7
   1bc44:	bce6d4e3          	ble	a4,a3,1b80c <_svfprintf_r+0x7d4>
   1bc48:	0b010613          	addi	a2,sp,176
   1bc4c:	000b8593          	mv	a1,s7
   1bc50:	000c0513          	mv	a0,s8
   1bc54:	4b4030ef          	jal	1f108 <__ssprint_r>
   1bc58:	e8051063          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1bc5c:	0c013783          	ld	a5,192(sp)
   1bc60:	000a8893          	mv	a7,s5
   1bc64:	badff06f          	j	1b810 <_svfprintf_r+0x7d8>
   1bc68:	06500713          	li	a4,101
   1bc6c:	f1a758e3          	ble	s10,a4,1bb7c <_svfprintf_r+0xb44>
   1bc70:	f20007d3          	fmv.d.x	fa5,zero
   1bc74:	05813707          	fld	fa4,88(sp)
   1bc78:	a2f72753          	feq.d	a4,fa4,fa5
   1bc7c:	28070c63          	beqz	a4,1bf14 <_svfprintf_r+0xedc>
   1bc80:	0b812703          	lw	a4,184(sp)
   1bc84:	000226b7          	lui	a3,0x22
   1bc88:	cf868693          	addi	a3,a3,-776 # 21cf8 <zeroes.4123+0x6c8>
   1bc8c:	00d8b023          	sd	a3,0(a7)
   1bc90:	00178793          	addi	a5,a5,1
   1bc94:	00100693          	li	a3,1
   1bc98:	0017071b          	addiw	a4,a4,1
   1bc9c:	00d8b423          	sd	a3,8(a7)
   1bca0:	0cf13023          	sd	a5,192(sp)
   1bca4:	0ae12c23          	sw	a4,184(sp)
   1bca8:	00700693          	li	a3,7
   1bcac:	01088893          	addi	a7,a7,16
   1bcb0:	70e6c863          	blt	a3,a4,1c3c0 <_svfprintf_r+0x1388>
   1bcb4:	09812703          	lw	a4,152(sp)
   1bcb8:	07012683          	lw	a3,112(sp)
   1bcbc:	00d74663          	blt	a4,a3,1bcc8 <_svfprintf_r+0xc90>
   1bcc0:	001b7713          	andi	a4,s6,1
   1bcc4:	b40706e3          	beqz	a4,1b810 <_svfprintf_r+0x7d8>
   1bcc8:	06013703          	ld	a4,96(sp)
   1bccc:	06813683          	ld	a3,104(sp)
   1bcd0:	01088893          	addi	a7,a7,16
   1bcd4:	fee8b823          	sd	a4,-16(a7)
   1bcd8:	0b812703          	lw	a4,184(sp)
   1bcdc:	00d787b3          	add	a5,a5,a3
   1bce0:	fed8bc23          	sd	a3,-8(a7)
   1bce4:	0017071b          	addiw	a4,a4,1
   1bce8:	0cf13023          	sd	a5,192(sp)
   1bcec:	0ae12c23          	sw	a4,184(sp)
   1bcf0:	00700693          	li	a3,7
   1bcf4:	7ee6c663          	blt	a3,a4,1c4e0 <_svfprintf_r+0x14a8>
   1bcf8:	07012703          	lw	a4,112(sp)
   1bcfc:	fff7041b          	addiw	s0,a4,-1
   1bd00:	b08058e3          	blez	s0,1b810 <_svfprintf_r+0x7d8>
   1bd04:	01000713          	li	a4,16
   1bd08:	3a875863          	ble	s0,a4,1c0b8 <_svfprintf_r+0x1080>
   1bd0c:	01000913          	li	s2,16
   1bd10:	0b812703          	lw	a4,184(sp)
   1bd14:	00913823          	sd	s1,16(sp)
   1bd18:	00700d13          	li	s10,7
   1bd1c:	00090693          	mv	a3,s2
   1bd20:	00c0006f          	j	1bd2c <_svfprintf_r+0xcf4>
   1bd24:	ff04041b          	addiw	s0,s0,-16
   1bd28:	3886dc63          	ble	s0,a3,1c0c0 <_svfprintf_r+0x1088>
   1bd2c:	01078793          	addi	a5,a5,16
   1bd30:	0017071b          	addiw	a4,a4,1
   1bd34:	0098b023          	sd	s1,0(a7)
   1bd38:	0128b423          	sd	s2,8(a7)
   1bd3c:	0cf13023          	sd	a5,192(sp)
   1bd40:	0ae12c23          	sw	a4,184(sp)
   1bd44:	01088893          	addi	a7,a7,16
   1bd48:	fced5ee3          	ble	a4,s10,1bd24 <_svfprintf_r+0xcec>
   1bd4c:	0b010613          	addi	a2,sp,176
   1bd50:	000b8593          	mv	a1,s7
   1bd54:	000c0513          	mv	a0,s8
   1bd58:	00d13023          	sd	a3,0(sp)
   1bd5c:	3ac030ef          	jal	1f108 <__ssprint_r>
   1bd60:	d6051c63          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1bd64:	0c013783          	ld	a5,192(sp)
   1bd68:	0b812703          	lw	a4,184(sp)
   1bd6c:	000a8893          	mv	a7,s5
   1bd70:	00013683          	ld	a3,0(sp)
   1bd74:	fb1ff06f          	j	1bd24 <_svfprintf_r+0xcec>
   1bd78:	01812703          	lw	a4,24(sp)
   1bd7c:	00812683          	lw	a3,8(sp)
   1bd80:	40d70cbb          	subw	s9,a4,a3
   1bd84:	999058e3          	blez	s9,1b714 <_svfprintf_r+0x6dc>
   1bd88:	01000713          	li	a4,16
   1bd8c:	359756e3          	ble	s9,a4,1c8d8 <_svfprintf_r+0x18a0>
   1bd90:	01000813          	li	a6,16
   1bd94:	0b812703          	lw	a4,184(sp)
   1bd98:	00913823          	sd	s1,16(sp)
   1bd9c:	00700313          	li	t1,7
   1bda0:	00080d93          	mv	s11,a6
   1bda4:	00c0006f          	j	1bdb0 <_svfprintf_r+0xd78>
   1bda8:	ff0c8c9b          	addiw	s9,s9,-16
   1bdac:	059dde63          	ble	s9,s11,1be08 <_svfprintf_r+0xdd0>
   1bdb0:	01078793          	addi	a5,a5,16
   1bdb4:	0017071b          	addiw	a4,a4,1
   1bdb8:	0098b023          	sd	s1,0(a7)
   1bdbc:	0108b423          	sd	a6,8(a7)
   1bdc0:	0cf13023          	sd	a5,192(sp)
   1bdc4:	0ae12c23          	sw	a4,184(sp)
   1bdc8:	01088893          	addi	a7,a7,16
   1bdcc:	fce35ee3          	ble	a4,t1,1bda8 <_svfprintf_r+0xd70>
   1bdd0:	0b010613          	addi	a2,sp,176
   1bdd4:	000b8593          	mv	a1,s7
   1bdd8:	000c0513          	mv	a0,s8
   1bddc:	04613023          	sd	t1,64(sp)
   1bde0:	01013023          	sd	a6,0(sp)
   1bde4:	324030ef          	jal	1f108 <__ssprint_r>
   1bde8:	ce051863          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1bdec:	ff0c8c9b          	addiw	s9,s9,-16
   1bdf0:	0c013783          	ld	a5,192(sp)
   1bdf4:	0b812703          	lw	a4,184(sp)
   1bdf8:	000a8893          	mv	a7,s5
   1bdfc:	04013303          	ld	t1,64(sp)
   1be00:	00013803          	ld	a6,0(sp)
   1be04:	fb9dc6e3          	blt	s11,s9,1bdb0 <_svfprintf_r+0xd78>
   1be08:	01013603          	ld	a2,16(sp)
   1be0c:	019787b3          	add	a5,a5,s9
   1be10:	0017071b          	addiw	a4,a4,1
   1be14:	00c8b023          	sd	a2,0(a7)
   1be18:	0198b423          	sd	s9,8(a7)
   1be1c:	0cf13023          	sd	a5,192(sp)
   1be20:	0ae12c23          	sw	a4,184(sp)
   1be24:	00700693          	li	a3,7
   1be28:	01088893          	addi	a7,a7,16
   1be2c:	8ee6d4e3          	ble	a4,a3,1b714 <_svfprintf_r+0x6dc>
   1be30:	0b010613          	addi	a2,sp,176
   1be34:	000b8593          	mv	a1,s7
   1be38:	000c0513          	mv	a0,s8
   1be3c:	2cc030ef          	jal	1f108 <__ssprint_r>
   1be40:	c8051c63          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1be44:	0c013783          	ld	a5,192(sp)
   1be48:	000a8893          	mv	a7,s5
   1be4c:	8c9ff06f          	j	1b714 <_svfprintf_r+0x6dc>
   1be50:	00913823          	sd	s1,16(sp)
   1be54:	01013683          	ld	a3,16(sp)
   1be58:	008787b3          	add	a5,a5,s0
   1be5c:	0017071b          	addiw	a4,a4,1
   1be60:	00d8b023          	sd	a3,0(a7)
   1be64:	0088b423          	sd	s0,8(a7)
   1be68:	0cf13023          	sd	a5,192(sp)
   1be6c:	0ae12c23          	sw	a4,184(sp)
   1be70:	00700693          	li	a3,7
   1be74:	dae6d4e3          	ble	a4,a3,1bc1c <_svfprintf_r+0xbe4>
   1be78:	0b010613          	addi	a2,sp,176
   1be7c:	000b8593          	mv	a1,s7
   1be80:	000c0513          	mv	a0,s8
   1be84:	284030ef          	jal	1f108 <__ssprint_r>
   1be88:	c4051863          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1be8c:	0c013783          	ld	a5,192(sp)
   1be90:	0b812703          	lw	a4,184(sp)
   1be94:	000a8893          	mv	a7,s5
   1be98:	d89ff06f          	j	1bc20 <_svfprintf_r+0xbe8>
   1be9c:	0b010613          	addi	a2,sp,176
   1bea0:	000b8593          	mv	a1,s7
   1bea4:	000c0513          	mv	a0,s8
   1bea8:	260030ef          	jal	1f108 <__ssprint_r>
   1beac:	a40506e3          	beqz	a0,1b8f8 <_svfprintf_r+0x8c0>
   1beb0:	c28ff06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1beb4:	0b010613          	addi	a2,sp,176
   1beb8:	000b8593          	mv	a1,s7
   1bebc:	000c0513          	mv	a0,s8
   1bec0:	248030ef          	jal	1f108 <__ssprint_r>
   1bec4:	c0051a63          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1bec8:	0c013783          	ld	a5,192(sp)
   1becc:	000a8893          	mv	a7,s5
   1bed0:	801ff06f          	j	1b6d0 <_svfprintf_r+0x698>
   1bed4:	0b010613          	addi	a2,sp,176
   1bed8:	000b8593          	mv	a1,s7
   1bedc:	000c0513          	mv	a0,s8
   1bee0:	228030ef          	jal	1f108 <__ssprint_r>
   1bee4:	be051a63          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1bee8:	0c013783          	ld	a5,192(sp)
   1beec:	000a8893          	mv	a7,s5
   1bef0:	819ff06f          	j	1b708 <_svfprintf_r+0x6d0>
   1bef4:	080107a3          	sb	zero,143(sp)
   1bef8:	c40446e3          	bltz	s0,1bb44 <_svfprintf_r+0xb0c>
   1befc:	f7fb7b13          	andi	s6,s6,-129
   1bf00:	b4078063          	beqz	a5,1b240 <_svfprintf_r+0x208>
   1bf04:	00000613          	li	a2,0
   1bf08:	b44ff06f          	j	1b24c <_svfprintf_r+0x214>
   1bf0c:	00000613          	li	a2,0
   1bf10:	c68ff06f          	j	1b378 <_svfprintf_r+0x340>
   1bf14:	09812403          	lw	s0,152(sp)
   1bf18:	4c805663          	blez	s0,1c3e4 <_svfprintf_r+0x13ac>
   1bf1c:	04c12703          	lw	a4,76(sp)
   1bf20:	07012683          	lw	a3,112(sp)
   1bf24:	00070413          	mv	s0,a4
   1bf28:	00e6d463          	ble	a4,a3,1bf30 <_svfprintf_r+0xef8>
   1bf2c:	00068413          	mv	s0,a3
   1bf30:	02805663          	blez	s0,1bf5c <_svfprintf_r+0xf24>
   1bf34:	0b812703          	lw	a4,184(sp)
   1bf38:	008787b3          	add	a5,a5,s0
   1bf3c:	0128b023          	sd	s2,0(a7)
   1bf40:	0017071b          	addiw	a4,a4,1
   1bf44:	0088b423          	sd	s0,8(a7)
   1bf48:	0cf13023          	sd	a5,192(sp)
   1bf4c:	0ae12c23          	sw	a4,184(sp)
   1bf50:	00700693          	li	a3,7
   1bf54:	01088893          	addi	a7,a7,16
   1bf58:	6ee6c263          	blt	a3,a4,1c63c <_svfprintf_r+0x1604>
   1bf5c:	08044ee3          	bltz	s0,1c7f8 <_svfprintf_r+0x17c0>
   1bf60:	04c12703          	lw	a4,76(sp)
   1bf64:	4087043b          	subw	s0,a4,s0
   1bf68:	1c805663          	blez	s0,1c134 <_svfprintf_r+0x10fc>
   1bf6c:	01000713          	li	a4,16
   1bf70:	16875c63          	ble	s0,a4,1c0e8 <_svfprintf_r+0x10b0>
   1bf74:	01000d13          	li	s10,16
   1bf78:	0b812703          	lw	a4,184(sp)
   1bf7c:	00913823          	sd	s1,16(sp)
   1bf80:	00700693          	li	a3,7
   1bf84:	000d0813          	mv	a6,s10
   1bf88:	00c0006f          	j	1bf94 <_svfprintf_r+0xf5c>
   1bf8c:	ff04041b          	addiw	s0,s0,-16
   1bf90:	16885063          	ble	s0,a6,1c0f0 <_svfprintf_r+0x10b8>
   1bf94:	01078793          	addi	a5,a5,16
   1bf98:	0017071b          	addiw	a4,a4,1
   1bf9c:	0098b023          	sd	s1,0(a7)
   1bfa0:	01a8b423          	sd	s10,8(a7)
   1bfa4:	0cf13023          	sd	a5,192(sp)
   1bfa8:	0ae12c23          	sw	a4,184(sp)
   1bfac:	01088893          	addi	a7,a7,16
   1bfb0:	fce6dee3          	ble	a4,a3,1bf8c <_svfprintf_r+0xf54>
   1bfb4:	0b010613          	addi	a2,sp,176
   1bfb8:	000b8593          	mv	a1,s7
   1bfbc:	000c0513          	mv	a0,s8
   1bfc0:	03013023          	sd	a6,32(sp)
   1bfc4:	00d13023          	sd	a3,0(sp)
   1bfc8:	140030ef          	jal	1f108 <__ssprint_r>
   1bfcc:	b0051663          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1bfd0:	0c013783          	ld	a5,192(sp)
   1bfd4:	0b812703          	lw	a4,184(sp)
   1bfd8:	000a8893          	mv	a7,s5
   1bfdc:	02013803          	ld	a6,32(sp)
   1bfe0:	00013683          	ld	a3,0(sp)
   1bfe4:	fa9ff06f          	j	1bf8c <_svfprintf_r+0xf54>
   1bfe8:	0b010613          	addi	a2,sp,176
   1bfec:	000b8593          	mv	a1,s7
   1bff0:	000c0513          	mv	a0,s8
   1bff4:	114030ef          	jal	1f108 <__ssprint_r>
   1bff8:	ae051063          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1bffc:	08f14603          	lbu	a2,143(sp)
   1c000:	0c013783          	ld	a5,192(sp)
   1c004:	000a8893          	mv	a7,s5
   1c008:	e94ff06f          	j	1b69c <_svfprintf_r+0x664>
   1c00c:	07012683          	lw	a3,112(sp)
   1c010:	fff6841b          	addiw	s0,a3,-1
   1c014:	c08056e3          	blez	s0,1bc20 <_svfprintf_r+0xbe8>
   1c018:	01000693          	li	a3,16
   1c01c:	e286dae3          	ble	s0,a3,1be50 <_svfprintf_r+0xe18>
   1c020:	01000913          	li	s2,16
   1c024:	00913823          	sd	s1,16(sp)
   1c028:	00700d13          	li	s10,7
   1c02c:	00090693          	mv	a3,s2
   1c030:	00c0006f          	j	1c03c <_svfprintf_r+0x1004>
   1c034:	ff04041b          	addiw	s0,s0,-16
   1c038:	e086dee3          	ble	s0,a3,1be54 <_svfprintf_r+0xe1c>
   1c03c:	01078793          	addi	a5,a5,16
   1c040:	0017071b          	addiw	a4,a4,1
   1c044:	0098b023          	sd	s1,0(a7)
   1c048:	0128b423          	sd	s2,8(a7)
   1c04c:	0cf13023          	sd	a5,192(sp)
   1c050:	0ae12c23          	sw	a4,184(sp)
   1c054:	01088893          	addi	a7,a7,16
   1c058:	fced5ee3          	ble	a4,s10,1c034 <_svfprintf_r+0xffc>
   1c05c:	0b010613          	addi	a2,sp,176
   1c060:	000b8593          	mv	a1,s7
   1c064:	000c0513          	mv	a0,s8
   1c068:	00d13023          	sd	a3,0(sp)
   1c06c:	09c030ef          	jal	1f108 <__ssprint_r>
   1c070:	a6051463          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1c074:	0c013783          	ld	a5,192(sp)
   1c078:	0b812703          	lw	a4,184(sp)
   1c07c:	000a8893          	mv	a7,s5
   1c080:	00013683          	ld	a3,0(sp)
   1c084:	fb1ff06f          	j	1c034 <_svfprintf_r+0xffc>
   1c088:	040b7793          	andi	a5,s6,64
   1c08c:	080107a3          	sb	zero,143(sp)
   1c090:	1e078c63          	beqz	a5,1c288 <_svfprintf_r+0x1250>
   1c094:	02813783          	ld	a5,40(sp)
   1c098:	00878713          	addi	a4,a5,8
   1c09c:	0007d783          	lhu	a5,0(a5)
   1c0a0:	c6045663          	bgez	s0,1b50c <_svfprintf_r+0x4d4>
   1c0a4:	02e13423          	sd	a4,40(sp)
   1c0a8:	00000613          	li	a2,0
   1c0ac:	00100713          	li	a4,1
   1c0b0:	aa0780e3          	beqz	a5,1bb50 <_svfprintf_r+0xb18>
   1c0b4:	c68ff06f          	j	1b51c <_svfprintf_r+0x4e4>
   1c0b8:	0b812703          	lw	a4,184(sp)
   1c0bc:	00913823          	sd	s1,16(sp)
   1c0c0:	01013683          	ld	a3,16(sp)
   1c0c4:	008787b3          	add	a5,a5,s0
   1c0c8:	0088b423          	sd	s0,8(a7)
   1c0cc:	00d8b023          	sd	a3,0(a7)
   1c0d0:	0017071b          	addiw	a4,a4,1
   1c0d4:	0cf13023          	sd	a5,192(sp)
   1c0d8:	0ae12c23          	sw	a4,184(sp)
   1c0dc:	00700693          	li	a3,7
   1c0e0:	f2e6d663          	ble	a4,a3,1b80c <_svfprintf_r+0x7d4>
   1c0e4:	b65ff06f          	j	1bc48 <_svfprintf_r+0xc10>
   1c0e8:	0b812703          	lw	a4,184(sp)
   1c0ec:	00913823          	sd	s1,16(sp)
   1c0f0:	01013683          	ld	a3,16(sp)
   1c0f4:	008787b3          	add	a5,a5,s0
   1c0f8:	0017071b          	addiw	a4,a4,1
   1c0fc:	00d8b023          	sd	a3,0(a7)
   1c100:	0088b423          	sd	s0,8(a7)
   1c104:	0cf13023          	sd	a5,192(sp)
   1c108:	0ae12c23          	sw	a4,184(sp)
   1c10c:	00700693          	li	a3,7
   1c110:	01088893          	addi	a7,a7,16
   1c114:	02e6d063          	ble	a4,a3,1c134 <_svfprintf_r+0x10fc>
   1c118:	0b010613          	addi	a2,sp,176
   1c11c:	000b8593          	mv	a1,s7
   1c120:	000c0513          	mv	a0,s8
   1c124:	7e5020ef          	jal	1f108 <__ssprint_r>
   1c128:	9a051863          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1c12c:	0c013783          	ld	a5,192(sp)
   1c130:	000a8893          	mv	a7,s5
   1c134:	04c12d03          	lw	s10,76(sp)
   1c138:	09812703          	lw	a4,152(sp)
   1c13c:	07012683          	lw	a3,112(sp)
   1c140:	01a90d33          	add	s10,s2,s10
   1c144:	0cd74a63          	blt	a4,a3,1c218 <_svfprintf_r+0x11e0>
   1c148:	001b7693          	andi	a3,s6,1
   1c14c:	0c069663          	bnez	a3,1c218 <_svfprintf_r+0x11e0>
   1c150:	07012683          	lw	a3,112(sp)
   1c154:	00d90433          	add	s0,s2,a3
   1c158:	41a40433          	sub	s0,s0,s10
   1c15c:	40e6873b          	subw	a4,a3,a4
   1c160:	0004041b          	sext.w	s0,s0
   1c164:	00875463          	ble	s0,a4,1c16c <_svfprintf_r+0x1134>
   1c168:	00070413          	mv	s0,a4
   1c16c:	02805663          	blez	s0,1c198 <_svfprintf_r+0x1160>
   1c170:	0b812683          	lw	a3,184(sp)
   1c174:	008787b3          	add	a5,a5,s0
   1c178:	01a8b023          	sd	s10,0(a7)
   1c17c:	0016869b          	addiw	a3,a3,1
   1c180:	0088b423          	sd	s0,8(a7)
   1c184:	0cf13023          	sd	a5,192(sp)
   1c188:	0ad12c23          	sw	a3,184(sp)
   1c18c:	00700613          	li	a2,7
   1c190:	01088893          	addi	a7,a7,16
   1c194:	4ed64863          	blt	a2,a3,1c684 <_svfprintf_r+0x164c>
   1c198:	6c044863          	bltz	s0,1c868 <_svfprintf_r+0x1830>
   1c19c:	4087043b          	subw	s0,a4,s0
   1c1a0:	e6805863          	blez	s0,1b810 <_svfprintf_r+0x7d8>
   1c1a4:	01000713          	li	a4,16
   1c1a8:	f08758e3          	ble	s0,a4,1c0b8 <_svfprintf_r+0x1080>
   1c1ac:	01000913          	li	s2,16
   1c1b0:	0b812703          	lw	a4,184(sp)
   1c1b4:	00913823          	sd	s1,16(sp)
   1c1b8:	00700d13          	li	s10,7
   1c1bc:	00090693          	mv	a3,s2
   1c1c0:	00c0006f          	j	1c1cc <_svfprintf_r+0x1194>
   1c1c4:	ff04041b          	addiw	s0,s0,-16
   1c1c8:	ee86dce3          	ble	s0,a3,1c0c0 <_svfprintf_r+0x1088>
   1c1cc:	01078793          	addi	a5,a5,16
   1c1d0:	0017071b          	addiw	a4,a4,1
   1c1d4:	0098b023          	sd	s1,0(a7)
   1c1d8:	0128b423          	sd	s2,8(a7)
   1c1dc:	0cf13023          	sd	a5,192(sp)
   1c1e0:	0ae12c23          	sw	a4,184(sp)
   1c1e4:	01088893          	addi	a7,a7,16
   1c1e8:	fced5ee3          	ble	a4,s10,1c1c4 <_svfprintf_r+0x118c>
   1c1ec:	0b010613          	addi	a2,sp,176
   1c1f0:	000b8593          	mv	a1,s7
   1c1f4:	000c0513          	mv	a0,s8
   1c1f8:	00d13023          	sd	a3,0(sp)
   1c1fc:	70d020ef          	jal	1f108 <__ssprint_r>
   1c200:	8c051c63          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1c204:	0c013783          	ld	a5,192(sp)
   1c208:	0b812703          	lw	a4,184(sp)
   1c20c:	000a8893          	mv	a7,s5
   1c210:	00013683          	ld	a3,0(sp)
   1c214:	fb1ff06f          	j	1c1c4 <_svfprintf_r+0x118c>
   1c218:	06013683          	ld	a3,96(sp)
   1c21c:	06813603          	ld	a2,104(sp)
   1c220:	01088893          	addi	a7,a7,16
   1c224:	fed8b823          	sd	a3,-16(a7)
   1c228:	0b812683          	lw	a3,184(sp)
   1c22c:	00c787b3          	add	a5,a5,a2
   1c230:	fec8bc23          	sd	a2,-8(a7)
   1c234:	0016869b          	addiw	a3,a3,1
   1c238:	0cf13023          	sd	a5,192(sp)
   1c23c:	0ad12c23          	sw	a3,184(sp)
   1c240:	00700613          	li	a2,7
   1c244:	f0d656e3          	ble	a3,a2,1c150 <_svfprintf_r+0x1118>
   1c248:	0b010613          	addi	a2,sp,176
   1c24c:	000b8593          	mv	a1,s7
   1c250:	000c0513          	mv	a0,s8
   1c254:	6b5020ef          	jal	1f108 <__ssprint_r>
   1c258:	88051063          	bnez	a0,1b2d8 <_svfprintf_r+0x2a0>
   1c25c:	09812703          	lw	a4,152(sp)
   1c260:	0c013783          	ld	a5,192(sp)
   1c264:	000a8893          	mv	a7,s5
   1c268:	ee9ff06f          	j	1c150 <_svfprintf_r+0x1118>
   1c26c:	00eb7733          	and	a4,s6,a4
   1c270:	90071ee3          	bnez	a4,1bb8c <_svfprintf_r+0xb54>
   1c274:	0b812703          	lw	a4,184(sp)
   1c278:	0128b023          	sd	s2,0(a7)
   1c27c:	00100693          	li	a3,1
   1c280:	0017071b          	addiw	a4,a4,1
   1c284:	985ff06f          	j	1bc08 <_svfprintf_r+0xbd0>
   1c288:	02813783          	ld	a5,40(sp)
   1c28c:	00878713          	addi	a4,a5,8
   1c290:	0007e783          	lwu	a5,0(a5)
   1c294:	a6045c63          	bgez	s0,1b50c <_svfprintf_r+0x4d4>
   1c298:	e0dff06f          	j	1c0a4 <_svfprintf_r+0x106c>
   1c29c:	0b010613          	addi	a2,sp,176
   1c2a0:	000b8593          	mv	a1,s7
   1c2a4:	000c0513          	mv	a0,s8
   1c2a8:	661020ef          	jal	1f108 <__ssprint_r>
   1c2ac:	00050463          	beqz	a0,1c2b4 <_svfprintf_r+0x127c>
   1c2b0:	828ff06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1c2b4:	0c013783          	ld	a5,192(sp)
   1c2b8:	0b812703          	lw	a4,184(sp)
   1c2bc:	000a8893          	mv	a7,s5
   1c2c0:	8f5ff06f          	j	1bbb4 <_svfprintf_r+0xb7c>
   1c2c4:	02813783          	ld	a5,40(sp)
   1c2c8:	00878713          	addi	a4,a5,8
   1c2cc:	0007e783          	lwu	a5,0(a5)
   1c2d0:	88045663          	bgez	s0,1b35c <_svfprintf_r+0x324>
   1c2d4:	9fcff06f          	j	1b4d0 <_svfprintf_r+0x498>
   1c2d8:	0b010613          	addi	a2,sp,176
   1c2dc:	000b8593          	mv	a1,s7
   1c2e0:	000c0513          	mv	a0,s8
   1c2e4:	625020ef          	jal	1f108 <__ssprint_r>
   1c2e8:	00050463          	beqz	a0,1c2f0 <_svfprintf_r+0x12b8>
   1c2ec:	fedfe06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1c2f0:	0c013783          	ld	a5,192(sp)
   1c2f4:	0b812703          	lw	a4,184(sp)
   1c2f8:	000a8893          	mv	a7,s5
   1c2fc:	8e5ff06f          	j	1bbe0 <_svfprintf_r+0xba8>
   1c300:	00000793          	li	a5,0
   1c304:	0307879b          	addiw	a5,a5,48
   1c308:	0ef107a3          	sb	a5,239(sp)
   1c30c:	07813783          	ld	a5,120(sp)
   1c310:	0ef10913          	addi	s2,sp,239
   1c314:	02f12023          	sw	a5,32(sp)
   1c318:	f61fe06f          	j	1b278 <_svfprintf_r+0x240>
   1c31c:	05813507          	fld	fa0,88(sp)
   1c320:	01113023          	sd	a7,0(sp)
   1c324:	b70fd0ef          	jal	19694 <__fpclassifyd>
   1c328:	00013883          	ld	a7,0(sp)
   1c32c:	1c051c63          	bnez	a0,1c504 <_svfprintf_r+0x14cc>
   1c330:	04700793          	li	a5,71
   1c334:	39a7d063          	ble	s10,a5,1c6b4 <_svfprintf_r+0x167c>
   1c338:	00022937          	lui	s2,0x22
   1c33c:	cb890913          	addi	s2,s2,-840 # 21cb8 <zeroes.4123+0x688>
   1c340:	00300793          	li	a5,3
   1c344:	00f12423          	sw	a5,8(sp)
   1c348:	f7fb7b13          	andi	s6,s6,-129
   1c34c:	08f14603          	lbu	a2,143(sp)
   1c350:	02f12023          	sw	a5,32(sp)
   1c354:	00000413          	li	s0,0
   1c358:	04012623          	sw	zero,76(sp)
   1c35c:	f35fe06f          	j	1b290 <_svfprintf_r+0x258>
   1c360:	02813703          	ld	a4,40(sp)
   1c364:	040b7b13          	andi	s6,s6,64
   1c368:	00073783          	ld	a5,0(a4)
   1c36c:	00870713          	addi	a4,a4,8
   1c370:	02e13423          	sd	a4,40(sp)
   1c374:	420b0e63          	beqz	s6,1c7b0 <_svfprintf_r+0x1778>
   1c378:	01c15703          	lhu	a4,28(sp)
   1c37c:	00e79023          	sh	a4,0(a5)
   1c380:	d85fe06f          	j	1b104 <_svfprintf_r+0xcc>
   1c384:	00072783          	lw	a5,0(a4)
   1c388:	00870713          	addi	a4,a4,8
   1c38c:	02e13423          	sd	a4,40(sp)
   1c390:	da0ff06f          	j	1b930 <_svfprintf_r+0x8f8>
   1c394:	00076783          	lwu	a5,0(a4)
   1c398:	00870713          	addi	a4,a4,8
   1c39c:	02e13423          	sd	a4,40(sp)
   1c3a0:	848ff06f          	j	1b3e8 <_svfprintf_r+0x3b0>
   1c3a4:	080107a3          	sb	zero,143(sp)
   1c3a8:	fa044063          	bltz	s0,1bb48 <_svfprintf_r+0xb10>
   1c3ac:	f7fb7b13          	andi	s6,s6,-129
   1c3b0:	e91fe06f          	j	1b240 <_svfprintf_r+0x208>
   1c3b4:	0b812703          	lw	a4,184(sp)
   1c3b8:	00913823          	sd	s1,16(sp)
   1c3bc:	bdcff06f          	j	1b798 <_svfprintf_r+0x760>
   1c3c0:	0b010613          	addi	a2,sp,176
   1c3c4:	000b8593          	mv	a1,s7
   1c3c8:	000c0513          	mv	a0,s8
   1c3cc:	53d020ef          	jal	1f108 <__ssprint_r>
   1c3d0:	00050463          	beqz	a0,1c3d8 <_svfprintf_r+0x13a0>
   1c3d4:	f05fe06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1c3d8:	0c013783          	ld	a5,192(sp)
   1c3dc:	000a8893          	mv	a7,s5
   1c3e0:	8d5ff06f          	j	1bcb4 <_svfprintf_r+0xc7c>
   1c3e4:	0b812703          	lw	a4,184(sp)
   1c3e8:	000226b7          	lui	a3,0x22
   1c3ec:	cf868693          	addi	a3,a3,-776 # 21cf8 <zeroes.4123+0x6c8>
   1c3f0:	00d8b023          	sd	a3,0(a7)
   1c3f4:	00178793          	addi	a5,a5,1
   1c3f8:	00100693          	li	a3,1
   1c3fc:	0017071b          	addiw	a4,a4,1
   1c400:	00d8b423          	sd	a3,8(a7)
   1c404:	0cf13023          	sd	a5,192(sp)
   1c408:	0ae12c23          	sw	a4,184(sp)
   1c40c:	00700693          	li	a3,7
   1c410:	01088893          	addi	a7,a7,16
   1c414:	2ae6c663          	blt	a3,a4,1c6c0 <_svfprintf_r+0x1688>
   1c418:	00041a63          	bnez	s0,1c42c <_svfprintf_r+0x13f4>
   1c41c:	07012703          	lw	a4,112(sp)
   1c420:	00071663          	bnez	a4,1c42c <_svfprintf_r+0x13f4>
   1c424:	001b7713          	andi	a4,s6,1
   1c428:	be070463          	beqz	a4,1b810 <_svfprintf_r+0x7d8>
   1c42c:	06013703          	ld	a4,96(sp)
   1c430:	06813683          	ld	a3,104(sp)
   1c434:	01088893          	addi	a7,a7,16
   1c438:	fee8b823          	sd	a4,-16(a7)
   1c43c:	0b812703          	lw	a4,184(sp)
   1c440:	00f687b3          	add	a5,a3,a5
   1c444:	fed8bc23          	sd	a3,-8(a7)
   1c448:	0017071b          	addiw	a4,a4,1
   1c44c:	0cf13023          	sd	a5,192(sp)
   1c450:	0ae12c23          	sw	a4,184(sp)
   1c454:	00700693          	li	a3,7
   1c458:	30e6cc63          	blt	a3,a4,1c770 <_svfprintf_r+0x1738>
   1c45c:	4080043b          	negw	s0,s0
   1c460:	2e805e63          	blez	s0,1c75c <_svfprintf_r+0x1724>
   1c464:	01000693          	li	a3,16
   1c468:	2a86d263          	ble	s0,a3,1c70c <_svfprintf_r+0x16d4>
   1c46c:	01000d13          	li	s10,16
   1c470:	00913823          	sd	s1,16(sp)
   1c474:	00700813          	li	a6,7
   1c478:	000d0693          	mv	a3,s10
   1c47c:	00c0006f          	j	1c488 <_svfprintf_r+0x1450>
   1c480:	ff04041b          	addiw	s0,s0,-16
   1c484:	2886d663          	ble	s0,a3,1c710 <_svfprintf_r+0x16d8>
   1c488:	01078793          	addi	a5,a5,16
   1c48c:	0017071b          	addiw	a4,a4,1
   1c490:	0098b023          	sd	s1,0(a7)
   1c494:	01a8b423          	sd	s10,8(a7)
   1c498:	0cf13023          	sd	a5,192(sp)
   1c49c:	0ae12c23          	sw	a4,184(sp)
   1c4a0:	01088893          	addi	a7,a7,16
   1c4a4:	fce85ee3          	ble	a4,a6,1c480 <_svfprintf_r+0x1448>
   1c4a8:	0b010613          	addi	a2,sp,176
   1c4ac:	000b8593          	mv	a1,s7
   1c4b0:	000c0513          	mv	a0,s8
   1c4b4:	02d13023          	sd	a3,32(sp)
   1c4b8:	01013023          	sd	a6,0(sp)
   1c4bc:	44d020ef          	jal	1f108 <__ssprint_r>
   1c4c0:	00050463          	beqz	a0,1c4c8 <_svfprintf_r+0x1490>
   1c4c4:	e15fe06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1c4c8:	0c013783          	ld	a5,192(sp)
   1c4cc:	0b812703          	lw	a4,184(sp)
   1c4d0:	000a8893          	mv	a7,s5
   1c4d4:	02013683          	ld	a3,32(sp)
   1c4d8:	00013803          	ld	a6,0(sp)
   1c4dc:	fa5ff06f          	j	1c480 <_svfprintf_r+0x1448>
   1c4e0:	0b010613          	addi	a2,sp,176
   1c4e4:	000b8593          	mv	a1,s7
   1c4e8:	000c0513          	mv	a0,s8
   1c4ec:	41d020ef          	jal	1f108 <__ssprint_r>
   1c4f0:	00050463          	beqz	a0,1c4f8 <_svfprintf_r+0x14c0>
   1c4f4:	de5fe06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1c4f8:	0c013783          	ld	a5,192(sp)
   1c4fc:	000a8893          	mv	a7,s5
   1c500:	ff8ff06f          	j	1bcf8 <_svfprintf_r+0xcc0>
   1c504:	fff00793          	li	a5,-1
   1c508:	fdfd7d93          	andi	s11,s10,-33
   1c50c:	28f40863          	beq	s0,a5,1c79c <_svfprintf_r+0x1764>
   1c510:	04700793          	li	a5,71
   1c514:	44fd8e63          	beq	s11,a5,1c970 <_svfprintf_r+0x1938>
   1c518:	05813703          	ld	a4,88(sp)
   1c51c:	100b6693          	ori	a3,s6,256
   1c520:	00d12023          	sw	a3,0(sp)
   1c524:	42075793          	srai	a5,a4,0x20
   1c528:	f2070453          	fmv.d.x	fs0,a4
   1c52c:	00000c93          	li	s9,0
   1c530:	4407c663          	bltz	a5,1c97c <_svfprintf_r+0x1944>
   1c534:	06600793          	li	a5,102
   1c538:	48fd0863          	beq	s10,a5,1c9c8 <_svfprintf_r+0x1990>
   1c53c:	04600793          	li	a5,70
   1c540:	4cfd0c63          	beq	s10,a5,1ca18 <_svfprintf_r+0x19e0>
   1c544:	fbbd859b          	addiw	a1,s11,-69
   1c548:	0015b593          	seqz	a1,a1
   1c54c:	228405d3          	fmv.d	fa1,fs0
   1c550:	00b405bb          	addw	a1,s0,a1
   1c554:	09c10793          	addi	a5,sp,156
   1c558:	00058693          	mv	a3,a1
   1c55c:	0a810813          	addi	a6,sp,168
   1c560:	09810713          	addi	a4,sp,152
   1c564:	00200613          	li	a2,2
   1c568:	000c0513          	mv	a0,s8
   1c56c:	01113823          	sd	a7,16(sp)
   1c570:	00b13423          	sd	a1,8(sp)
   1c574:	c29f80ef          	jal	1519c <_dtoa_r>
   1c578:	06700793          	li	a5,103
   1c57c:	00050913          	mv	s2,a0
   1c580:	00813583          	ld	a1,8(sp)
   1c584:	01013883          	ld	a7,16(sp)
   1c588:	2efd0c63          	beq	s10,a5,1c880 <_svfprintf_r+0x1848>
   1c58c:	04700793          	li	a5,71
   1c590:	00b50733          	add	a4,a0,a1
   1c594:	60fd0663          	beq	s10,a5,1cba0 <_svfprintf_r+0x1b68>
   1c598:	f20007d3          	fmv.d.x	fa5,zero
   1c59c:	00070793          	mv	a5,a4
   1c5a0:	a2f426d3          	feq.d	a3,fs0,fa5
   1c5a4:	02069263          	bnez	a3,1c5c8 <_svfprintf_r+0x1590>
   1c5a8:	0a813783          	ld	a5,168(sp)
   1c5ac:	00e7fe63          	bleu	a4,a5,1c5c8 <_svfprintf_r+0x1590>
   1c5b0:	03000613          	li	a2,48
   1c5b4:	00178693          	addi	a3,a5,1
   1c5b8:	0ad13423          	sd	a3,168(sp)
   1c5bc:	00c78023          	sb	a2,0(a5)
   1c5c0:	0a813783          	ld	a5,168(sp)
   1c5c4:	fee7e8e3          	bltu	a5,a4,1c5b4 <_svfprintf_r+0x157c>
   1c5c8:	412787b3          	sub	a5,a5,s2
   1c5cc:	06f12823          	sw	a5,112(sp)
   1c5d0:	04700793          	li	a5,71
   1c5d4:	2efd8663          	beq	s11,a5,1c8c0 <_svfprintf_r+0x1888>
   1c5d8:	06500793          	li	a5,101
   1c5dc:	5da7de63          	ble	s10,a5,1cbb8 <_svfprintf_r+0x1b80>
   1c5e0:	06600793          	li	a5,102
   1c5e4:	46fd0a63          	beq	s10,a5,1ca58 <_svfprintf_r+0x1a20>
   1c5e8:	09812783          	lw	a5,152(sp)
   1c5ec:	04f12623          	sw	a5,76(sp)
   1c5f0:	04c12703          	lw	a4,76(sp)
   1c5f4:	07012683          	lw	a3,112(sp)
   1c5f8:	00070793          	mv	a5,a4
   1c5fc:	38d74663          	blt	a4,a3,1c988 <_svfprintf_r+0x1950>
   1c600:	001b7b13          	andi	s6,s6,1
   1c604:	3a0b1463          	bnez	s6,1c9ac <_svfprintf_r+0x1974>
   1c608:	60074a63          	bltz	a4,1cc1c <_svfprintf_r+0x1be4>
   1c60c:	04c12703          	lw	a4,76(sp)
   1c610:	06700d13          	li	s10,103
   1c614:	02e12023          	sw	a4,32(sp)
   1c618:	280c9663          	bnez	s9,1c8a4 <_svfprintf_r+0x186c>
   1c61c:	08f14603          	lbu	a2,143(sp)
   1c620:	00f12423          	sw	a5,8(sp)
   1c624:	00012b03          	lw	s6,0(sp)
   1c628:	00000413          	li	s0,0
   1c62c:	c65fe06f          	j	1b290 <_svfprintf_r+0x258>
   1c630:	00022937          	lui	s2,0x22
   1c634:	ca090913          	addi	s2,s2,-864 # 21ca0 <zeroes.4123+0x670>
   1c638:	ba8ff06f          	j	1b9e0 <_svfprintf_r+0x9a8>
   1c63c:	0b010613          	addi	a2,sp,176
   1c640:	000b8593          	mv	a1,s7
   1c644:	000c0513          	mv	a0,s8
   1c648:	2c1020ef          	jal	1f108 <__ssprint_r>
   1c64c:	00050463          	beqz	a0,1c654 <_svfprintf_r+0x161c>
   1c650:	c89fe06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1c654:	0c013783          	ld	a5,192(sp)
   1c658:	000a8893          	mv	a7,s5
   1c65c:	901ff06f          	j	1bf5c <_svfprintf_r+0xf24>
   1c660:	04000593          	li	a1,64
   1c664:	000c0513          	mv	a0,s8
   1c668:	ec4f40ef          	jal	10d2c <_malloc_r>
   1c66c:	00abb023          	sd	a0,0(s7)
   1c670:	00abbc23          	sd	a0,24(s7)
   1c674:	58050063          	beqz	a0,1cbf4 <_svfprintf_r+0x1bbc>
   1c678:	04000793          	li	a5,64
   1c67c:	02fba023          	sw	a5,32(s7)
   1c680:	a35fe06f          	j	1b0b4 <_svfprintf_r+0x7c>
   1c684:	0b010613          	addi	a2,sp,176
   1c688:	000b8593          	mv	a1,s7
   1c68c:	000c0513          	mv	a0,s8
   1c690:	279020ef          	jal	1f108 <__ssprint_r>
   1c694:	00050463          	beqz	a0,1c69c <_svfprintf_r+0x1664>
   1c698:	c41fe06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1c69c:	09812703          	lw	a4,152(sp)
   1c6a0:	07012683          	lw	a3,112(sp)
   1c6a4:	0c013783          	ld	a5,192(sp)
   1c6a8:	000a8893          	mv	a7,s5
   1c6ac:	40e6873b          	subw	a4,a3,a4
   1c6b0:	ae9ff06f          	j	1c198 <_svfprintf_r+0x1160>
   1c6b4:	00022937          	lui	s2,0x22
   1c6b8:	cb090913          	addi	s2,s2,-848 # 21cb0 <zeroes.4123+0x680>
   1c6bc:	c85ff06f          	j	1c340 <_svfprintf_r+0x1308>
   1c6c0:	0b010613          	addi	a2,sp,176
   1c6c4:	000b8593          	mv	a1,s7
   1c6c8:	000c0513          	mv	a0,s8
   1c6cc:	23d020ef          	jal	1f108 <__ssprint_r>
   1c6d0:	00050463          	beqz	a0,1c6d8 <_svfprintf_r+0x16a0>
   1c6d4:	c05fe06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1c6d8:	09812403          	lw	s0,152(sp)
   1c6dc:	0c013783          	ld	a5,192(sp)
   1c6e0:	000a8893          	mv	a7,s5
   1c6e4:	d40414e3          	bnez	s0,1c42c <_svfprintf_r+0x13f4>
   1c6e8:	d35ff06f          	j	1c41c <_svfprintf_r+0x13e4>
   1c6ec:	001b7793          	andi	a5,s6,1
   1c6f0:	0a078a63          	beqz	a5,1c7a4 <_svfprintf_r+0x176c>
   1c6f4:	03000793          	li	a5,48
   1c6f8:	0ef107a3          	sb	a5,239(sp)
   1c6fc:	07813783          	ld	a5,120(sp)
   1c700:	0ef10913          	addi	s2,sp,239
   1c704:	02f12023          	sw	a5,32(sp)
   1c708:	b71fe06f          	j	1b278 <_svfprintf_r+0x240>
   1c70c:	00913823          	sd	s1,16(sp)
   1c710:	01013683          	ld	a3,16(sp)
   1c714:	008787b3          	add	a5,a5,s0
   1c718:	0017071b          	addiw	a4,a4,1
   1c71c:	00d8b023          	sd	a3,0(a7)
   1c720:	0088b423          	sd	s0,8(a7)
   1c724:	0cf13023          	sd	a5,192(sp)
   1c728:	0ae12c23          	sw	a4,184(sp)
   1c72c:	00700693          	li	a3,7
   1c730:	01088893          	addi	a7,a7,16
   1c734:	02e6d463          	ble	a4,a3,1c75c <_svfprintf_r+0x1724>
   1c738:	0b010613          	addi	a2,sp,176
   1c73c:	000b8593          	mv	a1,s7
   1c740:	000c0513          	mv	a0,s8
   1c744:	1c5020ef          	jal	1f108 <__ssprint_r>
   1c748:	00050463          	beqz	a0,1c750 <_svfprintf_r+0x1718>
   1c74c:	b8dfe06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1c750:	0c013783          	ld	a5,192(sp)
   1c754:	0b812703          	lw	a4,184(sp)
   1c758:	000a8893          	mv	a7,s5
   1c75c:	07012683          	lw	a3,112(sp)
   1c760:	0017071b          	addiw	a4,a4,1
   1c764:	0128b023          	sd	s2,0(a7)
   1c768:	00f687b3          	add	a5,a3,a5
   1c76c:	cc8ff06f          	j	1bc34 <_svfprintf_r+0xbfc>
   1c770:	0b010613          	addi	a2,sp,176
   1c774:	000b8593          	mv	a1,s7
   1c778:	000c0513          	mv	a0,s8
   1c77c:	18d020ef          	jal	1f108 <__ssprint_r>
   1c780:	00050463          	beqz	a0,1c788 <_svfprintf_r+0x1750>
   1c784:	b55fe06f          	j	1b2d8 <_svfprintf_r+0x2a0>
   1c788:	09812403          	lw	s0,152(sp)
   1c78c:	0c013783          	ld	a5,192(sp)
   1c790:	0b812703          	lw	a4,184(sp)
   1c794:	000a8893          	mv	a7,s5
   1c798:	cc5ff06f          	j	1c45c <_svfprintf_r+0x1424>
   1c79c:	00600413          	li	s0,6
   1c7a0:	d79ff06f          	j	1c518 <_svfprintf_r+0x14e0>
   1c7a4:	02012023          	sw	zero,32(sp)
   1c7a8:	000a8913          	mv	s2,s5
   1c7ac:	acdfe06f          	j	1b278 <_svfprintf_r+0x240>
   1c7b0:	01c12703          	lw	a4,28(sp)
   1c7b4:	00e7a023          	sw	a4,0(a5)
   1c7b8:	94dfe06f          	j	1b104 <_svfprintf_r+0xcc>
   1c7bc:	00090513          	mv	a0,s2
   1c7c0:	a90f50ef          	jal	11a50 <strlen>
   1c7c4:	0005079b          	sext.w	a5,a0
   1c7c8:	02f12023          	sw	a5,32(sp)
   1c7cc:	00078d93          	mv	s11,a5
   1c7d0:	00013883          	ld	a7,0(sp)
   1c7d4:	ac07d063          	bgez	a5,1ba94 <_svfprintf_r+0xa5c>
   1c7d8:	00000d93          	li	s11,0
   1c7dc:	ab8ff06f          	j	1ba94 <_svfprintf_r+0xa5c>
   1c7e0:	fff00513          	li	a0,-1
   1c7e4:	b09fe06f          	j	1b2ec <_svfprintf_r+0x2b4>
   1c7e8:	0c013783          	ld	a5,192(sp)
   1c7ec:	0b812703          	lw	a4,184(sp)
   1c7f0:	05413823          	sd	s4,80(sp)
   1c7f4:	e7dfe06f          	j	1b670 <_svfprintf_r+0x638>
   1c7f8:	00000413          	li	s0,0
   1c7fc:	f64ff06f          	j	1bf60 <_svfprintf_r+0xf28>
   1c800:	02d00613          	li	a2,45
   1c804:	00100713          	li	a4,1
   1c808:	00100693          	li	a3,1
   1c80c:	00d71463          	bne	a4,a3,1c814 <_svfprintf_r+0x17dc>
   1c810:	d0dfe06f          	j	1b51c <_svfprintf_r+0x4e4>
   1c814:	00200693          	li	a3,2
   1c818:	00d70463          	beq	a4,a3,1c820 <_svfprintf_r+0x17e8>
   1c81c:	b5dfe06f          	j	1b378 <_svfprintf_r+0x340>
   1c820:	a2dfe06f          	j	1b24c <_svfprintf_r+0x214>
   1c824:	00600713          	li	a4,6
   1c828:	00877463          	bleu	s0,a4,1c830 <_svfprintf_r+0x17f8>
   1c82c:	00070413          	mv	s0,a4
   1c830:	02812023          	sw	s0,32(sp)
   1c834:	00040d93          	mv	s11,s0
   1c838:	2c044463          	bltz	s0,1cb00 <_svfprintf_r+0x1ac8>
   1c83c:	00022937          	lui	s2,0x22
   1c840:	01b12423          	sw	s11,8(sp)
   1c844:	03913423          	sd	s9,40(sp)
   1c848:	00000613          	li	a2,0
   1c84c:	00000413          	li	s0,0
   1c850:	04012623          	sw	zero,76(sp)
   1c854:	cf090913          	addi	s2,s2,-784 # 21cf0 <zeroes.4123+0x6c0>
   1c858:	d5dfe06f          	j	1b5b4 <_svfprintf_r+0x57c>
   1c85c:	0b812703          	lw	a4,184(sp)
   1c860:	05413823          	sd	s4,80(sp)
   1c864:	838ff06f          	j	1b89c <_svfprintf_r+0x864>
   1c868:	00000413          	li	s0,0
   1c86c:	931ff06f          	j	1c19c <_svfprintf_r+0x1164>
   1c870:	02d00793          	li	a5,45
   1c874:	08f107a3          	sb	a5,143(sp)
   1c878:	02d00613          	li	a2,45
   1c87c:	954ff06f          	j	1b9d0 <_svfprintf_r+0x998>
   1c880:	001b7793          	andi	a5,s6,1
   1c884:	00b50733          	add	a4,a0,a1
   1c888:	d00798e3          	bnez	a5,1c598 <_svfprintf_r+0x1560>
   1c88c:	0a813783          	ld	a5,168(sp)
   1c890:	d39ff06f          	j	1c5c8 <_svfprintf_r+0x1590>
   1c894:	00070b13          	mv	s6,a4
   1c898:	00000613          	li	a2,0
   1c89c:	00200713          	li	a4,2
   1c8a0:	f69ff06f          	j	1c808 <_svfprintf_r+0x17d0>
   1c8a4:	02d00713          	li	a4,45
   1c8a8:	08e107a3          	sb	a4,143(sp)
   1c8ac:	00f12423          	sw	a5,8(sp)
   1c8b0:	00012b03          	lw	s6,0(sp)
   1c8b4:	02d00613          	li	a2,45
   1c8b8:	00000413          	li	s0,0
   1c8bc:	9d9fe06f          	j	1b294 <_svfprintf_r+0x25c>
   1c8c0:	09812783          	lw	a5,152(sp)
   1c8c4:	ffd00713          	li	a4,-3
   1c8c8:	02e7cc63          	blt	a5,a4,1c900 <_svfprintf_r+0x18c8>
   1c8cc:	02f44a63          	blt	s0,a5,1c900 <_svfprintf_r+0x18c8>
   1c8d0:	04f12623          	sw	a5,76(sp)
   1c8d4:	d1dff06f          	j	1c5f0 <_svfprintf_r+0x15b8>
   1c8d8:	0b812703          	lw	a4,184(sp)
   1c8dc:	00913823          	sd	s1,16(sp)
   1c8e0:	d28ff06f          	j	1be08 <_svfprintf_r+0xdd0>
   1c8e4:	00812423          	sw	s0,8(sp)
   1c8e8:	02812023          	sw	s0,32(sp)
   1c8ec:	08f14603          	lbu	a2,143(sp)
   1c8f0:	03913423          	sd	s9,40(sp)
   1c8f4:	00000413          	li	s0,0
   1c8f8:	04012623          	sw	zero,76(sp)
   1c8fc:	995fe06f          	j	1b290 <_svfprintf_r+0x258>
   1c900:	ffed0d1b          	addiw	s10,s10,-2
   1c904:	fff7879b          	addiw	a5,a5,-1
   1c908:	08f12c23          	sw	a5,152(sp)
   1c90c:	0ba10023          	sb	s10,160(sp)
   1c910:	2607c263          	bltz	a5,1cb74 <_svfprintf_r+0x1b3c>
   1c914:	02b00713          	li	a4,43
   1c918:	0ae100a3          	sb	a4,161(sp)
   1c91c:	00900613          	li	a2,9
   1c920:	14f64c63          	blt	a2,a5,1ca78 <_svfprintf_r+0x1a40>
   1c924:	0307879b          	addiw	a5,a5,48
   1c928:	03000713          	li	a4,48
   1c92c:	0af101a3          	sb	a5,163(sp)
   1c930:	0ae10123          	sb	a4,162(sp)
   1c934:	0a410793          	addi	a5,sp,164
   1c938:	0a010713          	addi	a4,sp,160
   1c93c:	40e787bb          	subw	a5,a5,a4
   1c940:	07012703          	lw	a4,112(sp)
   1c944:	06f12a23          	sw	a5,116(sp)
   1c948:	00e787bb          	addw	a5,a5,a4
   1c94c:	02f12023          	sw	a5,32(sp)
   1c950:	00100793          	li	a5,1
   1c954:	22e7d863          	ble	a4,a5,1cb84 <_svfprintf_r+0x1b4c>
   1c958:	02012783          	lw	a5,32(sp)
   1c95c:	0017879b          	addiw	a5,a5,1
   1c960:	02f12023          	sw	a5,32(sp)
   1c964:	2207ca63          	bltz	a5,1cb98 <_svfprintf_r+0x1b60>
   1c968:	04012623          	sw	zero,76(sp)
   1c96c:	cadff06f          	j	1c618 <_svfprintf_r+0x15e0>
   1c970:	ba0414e3          	bnez	s0,1c518 <_svfprintf_r+0x14e0>
   1c974:	00090413          	mv	s0,s2
   1c978:	ba1ff06f          	j	1c518 <_svfprintf_r+0x14e0>
   1c97c:	22841453          	fneg.d	fs0,fs0
   1c980:	02d00c93          	li	s9,45
   1c984:	bb1ff06f          	j	1c534 <_svfprintf_r+0x14fc>
   1c988:	04c12703          	lw	a4,76(sp)
   1c98c:	00100793          	li	a5,1
   1c990:	1ae05c63          	blez	a4,1cb48 <_svfprintf_r+0x1b10>
   1c994:	07012703          	lw	a4,112(sp)
   1c998:	00e787bb          	addw	a5,a5,a4
   1c99c:	02f12023          	sw	a5,32(sp)
   1c9a0:	0007ce63          	bltz	a5,1c9bc <_svfprintf_r+0x1984>
   1c9a4:	06700d13          	li	s10,103
   1c9a8:	c71ff06f          	j	1c618 <_svfprintf_r+0x15e0>
   1c9ac:	04c12783          	lw	a5,76(sp)
   1c9b0:	0017879b          	addiw	a5,a5,1
   1c9b4:	02f12023          	sw	a5,32(sp)
   1c9b8:	fe07d6e3          	bgez	a5,1c9a4 <_svfprintf_r+0x196c>
   1c9bc:	00000793          	li	a5,0
   1c9c0:	06700d13          	li	s10,103
   1c9c4:	c55ff06f          	j	1c618 <_svfprintf_r+0x15e0>
   1c9c8:	228405d3          	fmv.d	fa1,fs0
   1c9cc:	09810713          	addi	a4,sp,152
   1c9d0:	0a810813          	addi	a6,sp,168
   1c9d4:	09c10793          	addi	a5,sp,156
   1c9d8:	00040693          	mv	a3,s0
   1c9dc:	00300613          	li	a2,3
   1c9e0:	000c0513          	mv	a0,s8
   1c9e4:	01113423          	sd	a7,8(sp)
   1c9e8:	fb4f80ef          	jal	1519c <_dtoa_r>
   1c9ec:	00813883          	ld	a7,8(sp)
   1c9f0:	00040713          	mv	a4,s0
   1c9f4:	00050913          	mv	s2,a0
   1c9f8:	00e50733          	add	a4,a0,a4
   1c9fc:	00040593          	mv	a1,s0
   1ca00:	00094683          	lbu	a3,0(s2)
   1ca04:	03000793          	li	a5,48
   1ca08:	0cf68c63          	beq	a3,a5,1cae0 <_svfprintf_r+0x1aa8>
   1ca0c:	09812583          	lw	a1,152(sp)
   1ca10:	00b70733          	add	a4,a4,a1
   1ca14:	b85ff06f          	j	1c598 <_svfprintf_r+0x1560>
   1ca18:	228405d3          	fmv.d	fa1,fs0
   1ca1c:	0a810813          	addi	a6,sp,168
   1ca20:	09c10793          	addi	a5,sp,156
   1ca24:	09810713          	addi	a4,sp,152
   1ca28:	00040693          	mv	a3,s0
   1ca2c:	00300613          	li	a2,3
   1ca30:	000c0513          	mv	a0,s8
   1ca34:	01113423          	sd	a7,8(sp)
   1ca38:	f64f80ef          	jal	1519c <_dtoa_r>
   1ca3c:	00813883          	ld	a7,8(sp)
   1ca40:	00050913          	mv	s2,a0
   1ca44:	00040593          	mv	a1,s0
   1ca48:	04600793          	li	a5,70
   1ca4c:	00b90733          	add	a4,s2,a1
   1ca50:	fafd08e3          	beq	s10,a5,1ca00 <_svfprintf_r+0x19c8>
   1ca54:	b45ff06f          	j	1c598 <_svfprintf_r+0x1560>
   1ca58:	09812783          	lw	a5,152(sp)
   1ca5c:	04f12623          	sw	a5,76(sp)
   1ca60:	0cf05263          	blez	a5,1cb24 <_svfprintf_r+0x1aec>
   1ca64:	0a041263          	bnez	s0,1cb08 <_svfprintf_r+0x1ad0>
   1ca68:	001b7b13          	andi	s6,s6,1
   1ca6c:	080b1e63          	bnez	s6,1cb08 <_svfprintf_r+0x1ad0>
   1ca70:	02f12023          	sw	a5,32(sp)
   1ca74:	ba5ff06f          	j	1c618 <_svfprintf_r+0x15e0>
   1ca78:	0af10593          	addi	a1,sp,175
   1ca7c:	00058713          	mv	a4,a1
   1ca80:	00a00513          	li	a0,10
   1ca84:	02a7e6bb          	remw	a3,a5,a0
   1ca88:	fff70713          	addi	a4,a4,-1
   1ca8c:	02a7c7bb          	divw	a5,a5,a0
   1ca90:	0306869b          	addiw	a3,a3,48
   1ca94:	00d70023          	sb	a3,0(a4)
   1ca98:	fef646e3          	blt	a2,a5,1ca84 <_svfprintf_r+0x1a4c>
   1ca9c:	0307879b          	addiw	a5,a5,48
   1caa0:	0ff7f793          	andi	a5,a5,255
   1caa4:	fff70693          	addi	a3,a4,-1
   1caa8:	fef70fa3          	sb	a5,-1(a4)
   1caac:	16b6f463          	bleu	a1,a3,1cc14 <_svfprintf_r+0x1bdc>
   1cab0:	0a210613          	addi	a2,sp,162
   1cab4:	0080006f          	j	1cabc <_svfprintf_r+0x1a84>
   1cab8:	0006c783          	lbu	a5,0(a3)
   1cabc:	00160613          	addi	a2,a2,1
   1cac0:	00168693          	addi	a3,a3,1
   1cac4:	fef60fa3          	sb	a5,-1(a2)
   1cac8:	feb698e3          	bne	a3,a1,1cab8 <_svfprintf_r+0x1a80>
   1cacc:	0b010793          	addi	a5,sp,176
   1cad0:	40e787b3          	sub	a5,a5,a4
   1cad4:	0a210713          	addi	a4,sp,162
   1cad8:	00f707b3          	add	a5,a4,a5
   1cadc:	e5dff06f          	j	1c938 <_svfprintf_r+0x1900>
   1cae0:	f20007d3          	fmv.d.x	fa5,zero
   1cae4:	a2f427d3          	feq.d	a5,fs0,fa5
   1cae8:	f20792e3          	bnez	a5,1ca0c <_svfprintf_r+0x19d4>
   1caec:	00100793          	li	a5,1
   1caf0:	40b785bb          	subw	a1,a5,a1
   1caf4:	08b12c23          	sw	a1,152(sp)
   1caf8:	00b70733          	add	a4,a4,a1
   1cafc:	a9dff06f          	j	1c598 <_svfprintf_r+0x1560>
   1cb00:	00000d93          	li	s11,0
   1cb04:	d39ff06f          	j	1c83c <_svfprintf_r+0x1804>
   1cb08:	04c12783          	lw	a5,76(sp)
   1cb0c:	0014041b          	addiw	s0,s0,1
   1cb10:	008787bb          	addw	a5,a5,s0
   1cb14:	02f12023          	sw	a5,32(sp)
   1cb18:	b007d0e3          	bgez	a5,1c618 <_svfprintf_r+0x15e0>
   1cb1c:	00000793          	li	a5,0
   1cb20:	af9ff06f          	j	1c618 <_svfprintf_r+0x15e0>
   1cb24:	00041a63          	bnez	s0,1cb38 <_svfprintf_r+0x1b00>
   1cb28:	00100793          	li	a5,1
   1cb2c:	00fb7b33          	and	s6,s6,a5
   1cb30:	02f12023          	sw	a5,32(sp)
   1cb34:	ae0b02e3          	beqz	s6,1c618 <_svfprintf_r+0x15e0>
   1cb38:	0024079b          	addiw	a5,s0,2
   1cb3c:	02f12023          	sw	a5,32(sp)
   1cb40:	ac07dce3          	bgez	a5,1c618 <_svfprintf_r+0x15e0>
   1cb44:	fd9ff06f          	j	1cb1c <_svfprintf_r+0x1ae4>
   1cb48:	00200793          	li	a5,2
   1cb4c:	40e787bb          	subw	a5,a5,a4
   1cb50:	e45ff06f          	j	1c994 <_svfprintf_r+0x195c>
   1cb54:	02813783          	ld	a5,40(sp)
   1cb58:	0007a403          	lw	s0,0(a5)
   1cb5c:	00878793          	addi	a5,a5,8
   1cb60:	02f13423          	sd	a5,40(sp)
   1cb64:	00044463          	bltz	s0,1cb6c <_svfprintf_r+0x1b34>
   1cb68:	e38fe06f          	j	1b1a0 <_svfprintf_r+0x168>
   1cb6c:	fff00413          	li	s0,-1
   1cb70:	e30fe06f          	j	1b1a0 <_svfprintf_r+0x168>
   1cb74:	02d00713          	li	a4,45
   1cb78:	40f007bb          	negw	a5,a5
   1cb7c:	0ae100a3          	sb	a4,161(sp)
   1cb80:	d9dff06f          	j	1c91c <_svfprintf_r+0x18e4>
   1cb84:	00fb7b33          	and	s6,s6,a5
   1cb88:	dc0b18e3          	bnez	s6,1c958 <_svfprintf_r+0x1920>
   1cb8c:	02012703          	lw	a4,32(sp)
   1cb90:	00070793          	mv	a5,a4
   1cb94:	dc075ae3          	bgez	a4,1c968 <_svfprintf_r+0x1930>
   1cb98:	00000793          	li	a5,0
   1cb9c:	dcdff06f          	j	1c968 <_svfprintf_r+0x1930>
   1cba0:	001b7793          	andi	a5,s6,1
   1cba4:	ea0792e3          	bnez	a5,1ca48 <_svfprintf_r+0x1a10>
   1cba8:	0a813783          	ld	a5,168(sp)
   1cbac:	412787b3          	sub	a5,a5,s2
   1cbb0:	06f12823          	sw	a5,112(sp)
   1cbb4:	d1ad86e3          	beq	s11,s10,1c8c0 <_svfprintf_r+0x1888>
   1cbb8:	09812783          	lw	a5,152(sp)
   1cbbc:	d49ff06f          	j	1c904 <_svfprintf_r+0x18cc>
   1cbc0:	08b107a3          	sb	a1,143(sp)
   1cbc4:	869fe06f          	j	1b42c <_svfprintf_r+0x3f4>
   1cbc8:	08b107a3          	sb	a1,143(sp)
   1cbcc:	010b6b13          	ori	s6,s6,16
   1cbd0:	8ddfe06f          	j	1b4ac <_svfprintf_r+0x474>
   1cbd4:	08b107a3          	sb	a1,143(sp)
   1cbd8:	f68fe06f          	j	1b340 <_svfprintf_r+0x308>
   1cbdc:	08b107a3          	sb	a1,143(sp)
   1cbe0:	dadfe06f          	j	1b98c <_svfprintf_r+0x954>
   1cbe4:	08b107a3          	sb	a1,143(sp)
   1cbe8:	969fe06f          	j	1b550 <_svfprintf_r+0x518>
   1cbec:	08b107a3          	sb	a1,143(sp)
   1cbf0:	8fdfe06f          	j	1b4ec <_svfprintf_r+0x4b4>
   1cbf4:	00c00793          	li	a5,12
   1cbf8:	00fc2023          	sw	a5,0(s8)
   1cbfc:	fff00513          	li	a0,-1
   1cc00:	eecfe06f          	j	1b2ec <_svfprintf_r+0x2b4>
   1cc04:	08b107a3          	sb	a1,143(sp)
   1cc08:	d11fe06f          	j	1b918 <_svfprintf_r+0x8e0>
   1cc0c:	08b107a3          	sb	a1,143(sp)
   1cc10:	ef1fe06f          	j	1bb00 <_svfprintf_r+0xac8>
   1cc14:	0a210793          	addi	a5,sp,162
   1cc18:	d21ff06f          	j	1c938 <_svfprintf_r+0x1900>
   1cc1c:	00000793          	li	a5,0
   1cc20:	9edff06f          	j	1c60c <_svfprintf_r+0x15d4>
   1cc24:	08b107a3          	sb	a1,143(sp)
   1cc28:	010b6b13          	ori	s6,s6,16
   1cc2c:	de5fe06f          	j	1ba10 <_svfprintf_r+0x9d8>
   1cc30:	08b107a3          	sb	a1,143(sp)
   1cc34:	f90fe06f          	j	1b3c4 <_svfprintf_r+0x38c>

000000000001cc38 <__submore>:
   1cc38:	fd010113          	addi	sp,sp,-48
   1cc3c:	02813023          	sd	s0,32(sp)
   1cc40:	00058413          	mv	s0,a1
   1cc44:	0585b583          	ld	a1,88(a1)
   1cc48:	02113423          	sd	ra,40(sp)
   1cc4c:	00913c23          	sd	s1,24(sp)
   1cc50:	01213823          	sd	s2,16(sp)
   1cc54:	01313423          	sd	s3,8(sp)
   1cc58:	01413023          	sd	s4,0(sp)
   1cc5c:	07440793          	addi	a5,s0,116
   1cc60:	06f58063          	beq	a1,a5,1ccc0 <__submore+0x88>
   1cc64:	06042983          	lw	s3,96(s0)
   1cc68:	00199a1b          	slliw	s4,s3,0x1
   1cc6c:	000a0613          	mv	a2,s4
   1cc70:	980fc0ef          	jal	18df0 <_realloc_r>
   1cc74:	00050493          	mv	s1,a0
   1cc78:	0a050463          	beqz	a0,1cd20 <__submore+0xe8>
   1cc7c:	01350933          	add	s2,a0,s3
   1cc80:	00050593          	mv	a1,a0
   1cc84:	00098613          	mv	a2,s3
   1cc88:	00090513          	mv	a0,s2
   1cc8c:	811f40ef          	jal	1149c <memcpy>
   1cc90:	00000513          	li	a0,0
   1cc94:	01243023          	sd	s2,0(s0)
   1cc98:	04943c23          	sd	s1,88(s0)
   1cc9c:	07442023          	sw	s4,96(s0)
   1cca0:	02813083          	ld	ra,40(sp)
   1cca4:	02013403          	ld	s0,32(sp)
   1cca8:	01813483          	ld	s1,24(sp)
   1ccac:	01013903          	ld	s2,16(sp)
   1ccb0:	00813983          	ld	s3,8(sp)
   1ccb4:	00013a03          	ld	s4,0(sp)
   1ccb8:	03010113          	addi	sp,sp,48
   1ccbc:	00008067          	ret
   1ccc0:	40000593          	li	a1,1024
   1ccc4:	868f40ef          	jal	10d2c <_malloc_r>
   1ccc8:	00050793          	mv	a5,a0
   1cccc:	04050a63          	beqz	a0,1cd20 <__submore+0xe8>
   1ccd0:	07644703          	lbu	a4,118(s0)
   1ccd4:	40000693          	li	a3,1024
   1ccd8:	04a43c23          	sd	a0,88(s0)
   1ccdc:	06d42023          	sw	a3,96(s0)
   1cce0:	3ee50fa3          	sb	a4,1023(a0)
   1cce4:	07544683          	lbu	a3,117(s0)
   1cce8:	3fd50713          	addi	a4,a0,1021
   1ccec:	00000513          	li	a0,0
   1ccf0:	3ed78f23          	sb	a3,1022(a5)
   1ccf4:	07444683          	lbu	a3,116(s0)
   1ccf8:	3ed78ea3          	sb	a3,1021(a5)
   1ccfc:	02813083          	ld	ra,40(sp)
   1cd00:	00e43023          	sd	a4,0(s0)
   1cd04:	01813483          	ld	s1,24(sp)
   1cd08:	02013403          	ld	s0,32(sp)
   1cd0c:	01013903          	ld	s2,16(sp)
   1cd10:	00813983          	ld	s3,8(sp)
   1cd14:	00013a03          	ld	s4,0(sp)
   1cd18:	03010113          	addi	sp,sp,48
   1cd1c:	00008067          	ret
   1cd20:	fff00513          	li	a0,-1
   1cd24:	f7dff06f          	j	1cca0 <__submore+0x68>

000000000001cd28 <_ungetc_r>:
   1cd28:	fff00793          	li	a5,-1
   1cd2c:	1cf58063          	beq	a1,a5,1ceec <_ungetc_r+0x1c4>
   1cd30:	fd010113          	addi	sp,sp,-48
   1cd34:	02813023          	sd	s0,32(sp)
   1cd38:	00913c23          	sd	s1,24(sp)
   1cd3c:	01313423          	sd	s3,8(sp)
   1cd40:	02113423          	sd	ra,40(sp)
   1cd44:	01213823          	sd	s2,16(sp)
   1cd48:	00050493          	mv	s1,a0
   1cd4c:	00060413          	mv	s0,a2
   1cd50:	00058993          	mv	s3,a1
   1cd54:	00050663          	beqz	a0,1cd60 <_ungetc_r+0x38>
   1cd58:	05052783          	lw	a5,80(a0)
   1cd5c:	0c078c63          	beqz	a5,1ce34 <_ungetc_r+0x10c>
   1cd60:	01041783          	lh	a5,16(s0)
   1cd64:	03279713          	slli	a4,a5,0x32
   1cd68:	02074463          	bltz	a4,1cd90 <_ungetc_r+0x68>
   1cd6c:	0ac42683          	lw	a3,172(s0)
   1cd70:	00002737          	lui	a4,0x2
   1cd74:	00e7e7b3          	or	a5,a5,a4
   1cd78:	ffffe737          	lui	a4,0xffffe
   1cd7c:	fff7071b          	addiw	a4,a4,-1
   1cd80:	00e6f733          	and	a4,a3,a4
   1cd84:	0107979b          	slliw	a5,a5,0x10
   1cd88:	4107d79b          	sraiw	a5,a5,0x10
   1cd8c:	0ae42623          	sw	a4,172(s0)
   1cd90:	fdf7f793          	andi	a5,a5,-33
   1cd94:	0107979b          	slliw	a5,a5,0x10
   1cd98:	4107d79b          	sraiw	a5,a5,0x10
   1cd9c:	03079713          	slli	a4,a5,0x30
   1cda0:	03075713          	srli	a4,a4,0x30
   1cda4:	00f41823          	sh	a5,16(s0)
   1cda8:	00477693          	andi	a3,a4,4
   1cdac:	00069e63          	bnez	a3,1cdc8 <_ungetc_r+0xa0>
   1cdb0:	01077693          	andi	a3,a4,16
   1cdb4:	06068c63          	beqz	a3,1ce2c <_ungetc_r+0x104>
   1cdb8:	00877713          	andi	a4,a4,8
   1cdbc:	0e071463          	bnez	a4,1cea4 <_ungetc_r+0x17c>
   1cdc0:	0047e793          	ori	a5,a5,4
   1cdc4:	00f41823          	sh	a5,16(s0)
   1cdc8:	05843783          	ld	a5,88(s0)
   1cdcc:	0ff9f913          	andi	s2,s3,255
   1cdd0:	06078663          	beqz	a5,1ce3c <_ungetc_r+0x114>
   1cdd4:	00842703          	lw	a4,8(s0)
   1cdd8:	06042783          	lw	a5,96(s0)
   1cddc:	04f75063          	ble	a5,a4,1ce1c <_ungetc_r+0xf4>
   1cde0:	00043783          	ld	a5,0(s0)
   1cde4:	00090513          	mv	a0,s2
   1cde8:	fff78713          	addi	a4,a5,-1
   1cdec:	00e43023          	sd	a4,0(s0)
   1cdf0:	ff378fa3          	sb	s3,-1(a5)
   1cdf4:	00842783          	lw	a5,8(s0)
   1cdf8:	0017879b          	addiw	a5,a5,1
   1cdfc:	00f42423          	sw	a5,8(s0)
   1ce00:	02813083          	ld	ra,40(sp)
   1ce04:	02013403          	ld	s0,32(sp)
   1ce08:	01813483          	ld	s1,24(sp)
   1ce0c:	01013903          	ld	s2,16(sp)
   1ce10:	00813983          	ld	s3,8(sp)
   1ce14:	03010113          	addi	sp,sp,48
   1ce18:	00008067          	ret
   1ce1c:	00040593          	mv	a1,s0
   1ce20:	00048513          	mv	a0,s1
   1ce24:	e15ff0ef          	jal	1cc38 <__submore>
   1ce28:	fa050ce3          	beqz	a0,1cde0 <_ungetc_r+0xb8>
   1ce2c:	fff00513          	li	a0,-1
   1ce30:	fd1ff06f          	j	1ce00 <_ungetc_r+0xd8>
   1ce34:	a7df90ef          	jal	168b0 <__sinit>
   1ce38:	f29ff06f          	j	1cd60 <_ungetc_r+0x38>
   1ce3c:	01843703          	ld	a4,24(s0)
   1ce40:	00043783          	ld	a5,0(s0)
   1ce44:	00070863          	beqz	a4,1ce54 <_ungetc_r+0x12c>
   1ce48:	00f77663          	bleu	a5,a4,1ce54 <_ungetc_r+0x12c>
   1ce4c:	fff7c703          	lbu	a4,-1(a5)
   1ce50:	08e90063          	beq	s2,a4,1ced0 <_ungetc_r+0x1a8>
   1ce54:	07340b23          	sb	s3,118(s0)
   1ce58:	00842603          	lw	a2,8(s0)
   1ce5c:	02813083          	ld	ra,40(sp)
   1ce60:	06f43423          	sd	a5,104(s0)
   1ce64:	00300793          	li	a5,3
   1ce68:	07440693          	addi	a3,s0,116
   1ce6c:	07640713          	addi	a4,s0,118
   1ce70:	06f42023          	sw	a5,96(s0)
   1ce74:	00100793          	li	a5,1
   1ce78:	00090513          	mv	a0,s2
   1ce7c:	06c42823          	sw	a2,112(s0)
   1ce80:	04d43c23          	sd	a3,88(s0)
   1ce84:	00e43023          	sd	a4,0(s0)
   1ce88:	00f42423          	sw	a5,8(s0)
   1ce8c:	01813483          	ld	s1,24(sp)
   1ce90:	02013403          	ld	s0,32(sp)
   1ce94:	01013903          	ld	s2,16(sp)
   1ce98:	00813983          	ld	s3,8(sp)
   1ce9c:	03010113          	addi	sp,sp,48
   1cea0:	00008067          	ret
   1cea4:	00040593          	mv	a1,s0
   1cea8:	00048513          	mv	a0,s1
   1ceac:	e58f90ef          	jal	16504 <_fflush_r>
   1ceb0:	f6051ee3          	bnez	a0,1ce2c <_ungetc_r+0x104>
   1ceb4:	01045783          	lhu	a5,16(s0)
   1ceb8:	00042623          	sw	zero,12(s0)
   1cebc:	02042423          	sw	zero,40(s0)
   1cec0:	ff77f793          	andi	a5,a5,-9
   1cec4:	0107979b          	slliw	a5,a5,0x10
   1cec8:	4107d79b          	sraiw	a5,a5,0x10
   1cecc:	ef5ff06f          	j	1cdc0 <_ungetc_r+0x98>
   1ced0:	00842703          	lw	a4,8(s0)
   1ced4:	fff78793          	addi	a5,a5,-1
   1ced8:	00f43023          	sd	a5,0(s0)
   1cedc:	0017079b          	addiw	a5,a4,1
   1cee0:	00f42423          	sw	a5,8(s0)
   1cee4:	00090513          	mv	a0,s2
   1cee8:	f19ff06f          	j	1ce00 <_ungetc_r+0xd8>
   1ceec:	fff00513          	li	a0,-1
   1cef0:	00008067          	ret

000000000001cef4 <ungetc>:
   1cef4:	00058613          	mv	a2,a1
   1cef8:	00050593          	mv	a1,a0
   1cefc:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   1cf00:	e29ff06f          	j	1cd28 <_ungetc_r>

000000000001cf04 <__sprint_r.part.0>:
   1cf04:	0ac5a783          	lw	a5,172(a1)
   1cf08:	fb010113          	addi	sp,sp,-80
   1cf0c:	01613823          	sd	s6,16(sp)
   1cf10:	04113423          	sd	ra,72(sp)
   1cf14:	04813023          	sd	s0,64(sp)
   1cf18:	02913c23          	sd	s1,56(sp)
   1cf1c:	03213823          	sd	s2,48(sp)
   1cf20:	03313423          	sd	s3,40(sp)
   1cf24:	03413023          	sd	s4,32(sp)
   1cf28:	01513c23          	sd	s5,24(sp)
   1cf2c:	01713423          	sd	s7,8(sp)
   1cf30:	03279713          	slli	a4,a5,0x32
   1cf34:	00060b13          	mv	s6,a2
   1cf38:	0a075863          	bgez	a4,1cfe8 <__sprint_r.part.0+0xe4>
   1cf3c:	01063783          	ld	a5,16(a2)
   1cf40:	00058a13          	mv	s4,a1
   1cf44:	00050a93          	mv	s5,a0
   1cf48:	00063b83          	ld	s7,0(a2)
   1cf4c:	fff00993          	li	s3,-1
   1cf50:	08078863          	beqz	a5,1cfe0 <__sprint_r.part.0+0xdc>
   1cf54:	008bb903          	ld	s2,8(s7)
   1cf58:	000bb483          	ld	s1,0(s7)
   1cf5c:	00000413          	li	s0,0
   1cf60:	00295913          	srli	s2,s2,0x2
   1cf64:	0009091b          	sext.w	s2,s2
   1cf68:	01204863          	bgtz	s2,1cf78 <__sprint_r.part.0+0x74>
   1cf6c:	0600006f          	j	1cfcc <__sprint_r.part.0+0xc8>
   1cf70:	00448493          	addi	s1,s1,4
   1cf74:	04890a63          	beq	s2,s0,1cfc8 <__sprint_r.part.0+0xc4>
   1cf78:	0004a583          	lw	a1,0(s1)
   1cf7c:	000a0613          	mv	a2,s4
   1cf80:	000a8513          	mv	a0,s5
   1cf84:	524010ef          	jal	1e4a8 <_fputwc_r>
   1cf88:	0014041b          	addiw	s0,s0,1
   1cf8c:	ff3512e3          	bne	a0,s3,1cf70 <__sprint_r.part.0+0x6c>
   1cf90:	00098513          	mv	a0,s3
   1cf94:	04813083          	ld	ra,72(sp)
   1cf98:	000b3823          	sd	zero,16(s6)
   1cf9c:	000b2423          	sw	zero,8(s6)
   1cfa0:	04013403          	ld	s0,64(sp)
   1cfa4:	03813483          	ld	s1,56(sp)
   1cfa8:	03013903          	ld	s2,48(sp)
   1cfac:	02813983          	ld	s3,40(sp)
   1cfb0:	02013a03          	ld	s4,32(sp)
   1cfb4:	01813a83          	ld	s5,24(sp)
   1cfb8:	01013b03          	ld	s6,16(sp)
   1cfbc:	00813b83          	ld	s7,8(sp)
   1cfc0:	05010113          	addi	sp,sp,80
   1cfc4:	00008067          	ret
   1cfc8:	010b3783          	ld	a5,16(s6)
   1cfcc:	00291913          	slli	s2,s2,0x2
   1cfd0:	412787b3          	sub	a5,a5,s2
   1cfd4:	00fb3823          	sd	a5,16(s6)
   1cfd8:	010b8b93          	addi	s7,s7,16
   1cfdc:	f6079ce3          	bnez	a5,1cf54 <__sprint_r.part.0+0x50>
   1cfe0:	00000513          	li	a0,0
   1cfe4:	fb1ff06f          	j	1cf94 <__sprint_r.part.0+0x90>
   1cfe8:	f9df90ef          	jal	16f84 <__sfvwrite_r>
   1cfec:	fa9ff06f          	j	1cf94 <__sprint_r.part.0+0x90>

000000000001cff0 <__sprint_r>:
   1cff0:	01063703          	ld	a4,16(a2)
   1cff4:	00070463          	beqz	a4,1cffc <__sprint_r+0xc>
   1cff8:	f0dff06f          	j	1cf04 <__sprint_r.part.0>
   1cffc:	00062423          	sw	zero,8(a2)
   1d000:	00000513          	li	a0,0
   1d004:	00008067          	ret

000000000001d008 <_vfiprintf_r>:
   1d008:	e6010113          	addi	sp,sp,-416
   1d00c:	17513423          	sd	s5,360(sp)
   1d010:	17613023          	sd	s6,352(sp)
   1d014:	15a13023          	sd	s10,320(sp)
   1d018:	18113c23          	sd	ra,408(sp)
   1d01c:	18813823          	sd	s0,400(sp)
   1d020:	18913423          	sd	s1,392(sp)
   1d024:	19213023          	sd	s2,384(sp)
   1d028:	17313c23          	sd	s3,376(sp)
   1d02c:	17413823          	sd	s4,368(sp)
   1d030:	15713c23          	sd	s7,344(sp)
   1d034:	15813823          	sd	s8,336(sp)
   1d038:	15913423          	sd	s9,328(sp)
   1d03c:	13b13c23          	sd	s11,312(sp)
   1d040:	00d13423          	sd	a3,8(sp)
   1d044:	00050a93          	mv	s5,a0
   1d048:	00058d13          	mv	s10,a1
   1d04c:	00060b13          	mv	s6,a2
   1d050:	00050663          	beqz	a0,1d05c <_vfiprintf_r+0x54>
   1d054:	05052783          	lw	a5,80(a0)
   1d058:	1e078c63          	beqz	a5,1d250 <_vfiprintf_r+0x248>
   1d05c:	010d1683          	lh	a3,16(s10)
   1d060:	03069793          	slli	a5,a3,0x30
   1d064:	0307d793          	srli	a5,a5,0x30
   1d068:	03279713          	slli	a4,a5,0x32
   1d06c:	02074a63          	bltz	a4,1d0a0 <_vfiprintf_r+0x98>
   1d070:	000027b7          	lui	a5,0x2
   1d074:	0acd2603          	lw	a2,172(s10)
   1d078:	00f6e7b3          	or	a5,a3,a5
   1d07c:	0107979b          	slliw	a5,a5,0x10
   1d080:	ffffe737          	lui	a4,0xffffe
   1d084:	4107d79b          	sraiw	a5,a5,0x10
   1d088:	fff7071b          	addiw	a4,a4,-1
   1d08c:	00e67733          	and	a4,a2,a4
   1d090:	00fd1823          	sh	a5,16(s10)
   1d094:	03079793          	slli	a5,a5,0x30
   1d098:	0aed2623          	sw	a4,172(s10)
   1d09c:	0307d793          	srli	a5,a5,0x30
   1d0a0:	0087f713          	andi	a4,a5,8
   1d0a4:	12070a63          	beqz	a4,1d1d8 <_vfiprintf_r+0x1d0>
   1d0a8:	018d3703          	ld	a4,24(s10)
   1d0ac:	12070663          	beqz	a4,1d1d8 <_vfiprintf_r+0x1d0>
   1d0b0:	01a7f793          	andi	a5,a5,26
   1d0b4:	00a00713          	li	a4,10
   1d0b8:	14e78063          	beq	a5,a4,1d1f8 <_vfiprintf_r+0x1f0>
   1d0bc:	0b010c93          	addi	s9,sp,176
   1d0c0:	00021c37          	lui	s8,0x21
   1d0c4:	0af10793          	addi	a5,sp,175
   1d0c8:	230c0713          	addi	a4,s8,560 # 21230 <zeroes.4179+0x10>
   1d0cc:	40fc87b3          	sub	a5,s9,a5
   1d0d0:	000218b7          	lui	a7,0x21
   1d0d4:	07913823          	sd	s9,112(sp)
   1d0d8:	08013023          	sd	zero,128(sp)
   1d0dc:	06012c23          	sw	zero,120(sp)
   1d0e0:	000c8413          	mv	s0,s9
   1d0e4:	00013c23          	sd	zero,24(sp)
   1d0e8:	04012c23          	sw	zero,88(sp)
   1d0ec:	00e13823          	sd	a4,16(sp)
   1d0f0:	39888c13          	addi	s8,a7,920 # 21398 <blanks.4136>
   1d0f4:	04f12e23          	sw	a5,92(sp)
   1d0f8:	000b4783          	lbu	a5,0(s6)
   1d0fc:	4e078ee3          	beqz	a5,1ddf8 <_vfiprintf_r+0xdf0>
   1d100:	02500713          	li	a4,37
   1d104:	000b0493          	mv	s1,s6
   1d108:	00e79663          	bne	a5,a4,1d114 <_vfiprintf_r+0x10c>
   1d10c:	0580006f          	j	1d164 <_vfiprintf_r+0x15c>
   1d110:	00e78863          	beq	a5,a4,1d120 <_vfiprintf_r+0x118>
   1d114:	00148493          	addi	s1,s1,1
   1d118:	0004c783          	lbu	a5,0(s1)
   1d11c:	fe079ae3          	bnez	a5,1d110 <_vfiprintf_r+0x108>
   1d120:	4164893b          	subw	s2,s1,s6
   1d124:	04090063          	beqz	s2,1d164 <_vfiprintf_r+0x15c>
   1d128:	08013703          	ld	a4,128(sp)
   1d12c:	07812783          	lw	a5,120(sp)
   1d130:	00090613          	mv	a2,s2
   1d134:	00e60733          	add	a4,a2,a4
   1d138:	0017879b          	addiw	a5,a5,1
   1d13c:	00c43423          	sd	a2,8(s0)
   1d140:	01643023          	sd	s6,0(s0)
   1d144:	08e13023          	sd	a4,128(sp)
   1d148:	06f12c23          	sw	a5,120(sp)
   1d14c:	00700613          	li	a2,7
   1d150:	01040413          	addi	s0,s0,16
   1d154:	06f64463          	blt	a2,a5,1d1bc <_vfiprintf_r+0x1b4>
   1d158:	05812783          	lw	a5,88(sp)
   1d15c:	012787bb          	addw	a5,a5,s2
   1d160:	04f12c23          	sw	a5,88(sp)
   1d164:	0004c783          	lbu	a5,0(s1)
   1d168:	580786e3          	beqz	a5,1def4 <_vfiprintf_r+0xeec>
   1d16c:	00148813          	addi	a6,s1,1
   1d170:	060103a3          	sb	zero,103(sp)
   1d174:	00000513          	li	a0,0
   1d178:	00000e93          	li	t4,0
   1d17c:	fff00493          	li	s1,-1
   1d180:	00000913          	li	s2,0
   1d184:	00000313          	li	t1,0
   1d188:	05800613          	li	a2,88
   1d18c:	00900593          	li	a1,9
   1d190:	02a00f13          	li	t5,42
   1d194:	00084703          	lbu	a4,0(a6)
   1d198:	00180b13          	addi	s6,a6,1
   1d19c:	fe07079b          	addiw	a5,a4,-32
   1d1a0:	66f66263          	bltu	a2,a5,1d804 <_vfiprintf_r+0x7fc>
   1d1a4:	01013683          	ld	a3,16(sp)
   1d1a8:	02079793          	slli	a5,a5,0x20
   1d1ac:	01e7d793          	srli	a5,a5,0x1e
   1d1b0:	00d787b3          	add	a5,a5,a3
   1d1b4:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   1d1b8:	00078067          	jr	a5
   1d1bc:	2e071ee3          	bnez	a4,1dcb8 <_vfiprintf_r+0xcb0>
   1d1c0:	06012c23          	sw	zero,120(sp)
   1d1c4:	000c8413          	mv	s0,s9
   1d1c8:	f91ff06f          	j	1d158 <_vfiprintf_r+0x150>
   1d1cc:	01036313          	ori	t1,t1,16
   1d1d0:	000b0813          	mv	a6,s6
   1d1d4:	fc1ff06f          	j	1d194 <_vfiprintf_r+0x18c>
   1d1d8:	000d0593          	mv	a1,s10
   1d1dc:	000a8513          	mv	a0,s5
   1d1e0:	9cdf70ef          	jal	14bac <__swsetup_r>
   1d1e4:	4e0512e3          	bnez	a0,1dec8 <_vfiprintf_r+0xec0>
   1d1e8:	010d5783          	lhu	a5,16(s10)
   1d1ec:	00a00713          	li	a4,10
   1d1f0:	01a7f793          	andi	a5,a5,26
   1d1f4:	ece794e3          	bne	a5,a4,1d0bc <_vfiprintf_r+0xb4>
   1d1f8:	012d1783          	lh	a5,18(s10)
   1d1fc:	ec07c0e3          	bltz	a5,1d0bc <_vfiprintf_r+0xb4>
   1d200:	00813683          	ld	a3,8(sp)
   1d204:	000b0613          	mv	a2,s6
   1d208:	000d0593          	mv	a1,s10
   1d20c:	000a8513          	mv	a0,s5
   1d210:	6a9000ef          	jal	1e0b8 <__sbprintf>
   1d214:	19813083          	ld	ra,408(sp)
   1d218:	19013403          	ld	s0,400(sp)
   1d21c:	18813483          	ld	s1,392(sp)
   1d220:	18013903          	ld	s2,384(sp)
   1d224:	17813983          	ld	s3,376(sp)
   1d228:	17013a03          	ld	s4,368(sp)
   1d22c:	16813a83          	ld	s5,360(sp)
   1d230:	16013b03          	ld	s6,352(sp)
   1d234:	15813b83          	ld	s7,344(sp)
   1d238:	15013c03          	ld	s8,336(sp)
   1d23c:	14813c83          	ld	s9,328(sp)
   1d240:	14013d03          	ld	s10,320(sp)
   1d244:	13813d83          	ld	s11,312(sp)
   1d248:	1a010113          	addi	sp,sp,416
   1d24c:	00008067          	ret
   1d250:	e60f90ef          	jal	168b0 <__sinit>
   1d254:	e09ff06f          	j	1d05c <_vfiprintf_r+0x54>
   1d258:	00813783          	ld	a5,8(sp)
   1d25c:	0007a903          	lw	s2,0(a5)
   1d260:	00878793          	addi	a5,a5,8
   1d264:	00f13423          	sd	a5,8(sp)
   1d268:	f60954e3          	bgez	s2,1d1d0 <_vfiprintf_r+0x1c8>
   1d26c:	4120093b          	negw	s2,s2
   1d270:	00436313          	ori	t1,t1,4
   1d274:	000b0813          	mv	a6,s6
   1d278:	f1dff06f          	j	1d194 <_vfiprintf_r+0x18c>
   1d27c:	03000793          	li	a5,48
   1d280:	06f10423          	sb	a5,104(sp)
   1d284:	07800793          	li	a5,120
   1d288:	06f104a3          	sb	a5,105(sp)
   1d28c:	00813783          	ld	a5,8(sp)
   1d290:	060103a3          	sb	zero,103(sp)
   1d294:	00236613          	ori	a2,t1,2
   1d298:	00878713          	addi	a4,a5,8
   1d29c:	0007b783          	ld	a5,0(a5)
   1d2a0:	2e04cce3          	bltz	s1,1dd98 <_vfiprintf_r+0xd90>
   1d2a4:	f7f37313          	andi	t1,t1,-129
   1d2a8:	00e13423          	sd	a4,8(sp)
   1d2ac:	00236313          	ori	t1,t1,2
   1d2b0:	32079ae3          	bnez	a5,1dde4 <_vfiprintf_r+0xddc>
   1d2b4:	000227b7          	lui	a5,0x22
   1d2b8:	cd878793          	addi	a5,a5,-808 # 21cd8 <zeroes.4123+0x6a8>
   1d2bc:	00f13c23          	sd	a5,24(sp)
   1d2c0:	00000593          	li	a1,0
   1d2c4:	200498e3          	bnez	s1,1dcd4 <_vfiprintf_r+0xccc>
   1d2c8:	00000493          	li	s1,0
   1d2cc:	00000a13          	li	s4,0
   1d2d0:	000c8b93          	mv	s7,s9
   1d2d4:	00048993          	mv	s3,s1
   1d2d8:	0144d463          	ble	s4,s1,1d2e0 <_vfiprintf_r+0x2d8>
   1d2dc:	000a0993          	mv	s3,s4
   1d2e0:	00b035b3          	snez	a1,a1
   1d2e4:	00b989bb          	addw	s3,s3,a1
   1d2e8:	00237393          	andi	t2,t1,2
   1d2ec:	00038463          	beqz	t2,1d2f4 <_vfiprintf_r+0x2ec>
   1d2f0:	0029899b          	addiw	s3,s3,2
   1d2f4:	08437293          	andi	t0,t1,132
   1d2f8:	58029463          	bnez	t0,1d880 <_vfiprintf_r+0x878>
   1d2fc:	41390dbb          	subw	s11,s2,s3
   1d300:	59b05063          	blez	s11,1d880 <_vfiprintf_r+0x878>
   1d304:	01000793          	li	a5,16
   1d308:	45b7dee3          	ble	s11,a5,1df64 <_vfiprintf_r+0xf5c>
   1d30c:	01000e93          	li	t4,16
   1d310:	08013783          	ld	a5,128(sp)
   1d314:	07812503          	lw	a0,120(sp)
   1d318:	05813823          	sd	s8,80(sp)
   1d31c:	00700f13          	li	t5,7
   1d320:	000e8f93          	mv	t6,t4
   1d324:	0180006f          	j	1d33c <_vfiprintf_r+0x334>
   1d328:	0025061b          	addiw	a2,a0,2
   1d32c:	01040413          	addi	s0,s0,16
   1d330:	00058513          	mv	a0,a1
   1d334:	ff0d8d9b          	addiw	s11,s11,-16
   1d338:	03bfdc63          	ble	s11,t6,1d370 <_vfiprintf_r+0x368>
   1d33c:	01078793          	addi	a5,a5,16
   1d340:	0015059b          	addiw	a1,a0,1
   1d344:	01843023          	sd	s8,0(s0)
   1d348:	01d43423          	sd	t4,8(s0)
   1d34c:	08f13023          	sd	a5,128(sp)
   1d350:	06b12c23          	sw	a1,120(sp)
   1d354:	fcbf5ae3          	ble	a1,t5,1d328 <_vfiprintf_r+0x320>
   1d358:	4c079863          	bnez	a5,1d828 <_vfiprintf_r+0x820>
   1d35c:	ff0d8d9b          	addiw	s11,s11,-16
   1d360:	00000513          	li	a0,0
   1d364:	00100613          	li	a2,1
   1d368:	000c8413          	mv	s0,s9
   1d36c:	fdbfc8e3          	blt	t6,s11,1d33c <_vfiprintf_r+0x334>
   1d370:	05013703          	ld	a4,80(sp)
   1d374:	00fd87b3          	add	a5,s11,a5
   1d378:	01b43423          	sd	s11,8(s0)
   1d37c:	00e43023          	sd	a4,0(s0)
   1d380:	08f13023          	sd	a5,128(sp)
   1d384:	06c12c23          	sw	a2,120(sp)
   1d388:	00700593          	li	a1,7
   1d38c:	7ac5cc63          	blt	a1,a2,1db44 <_vfiprintf_r+0xb3c>
   1d390:	06714503          	lbu	a0,103(sp)
   1d394:	01040413          	addi	s0,s0,16
   1d398:	0016059b          	addiw	a1,a2,1
   1d39c:	4e051c63          	bnez	a0,1d894 <_vfiprintf_r+0x88c>
   1d3a0:	52038663          	beqz	t2,1d8cc <_vfiprintf_r+0x8c4>
   1d3a4:	06810613          	addi	a2,sp,104
   1d3a8:	00278793          	addi	a5,a5,2
   1d3ac:	00c43023          	sd	a2,0(s0)
   1d3b0:	00200613          	li	a2,2
   1d3b4:	00c43423          	sd	a2,8(s0)
   1d3b8:	08f13023          	sd	a5,128(sp)
   1d3bc:	06b12c23          	sw	a1,120(sp)
   1d3c0:	00700613          	li	a2,7
   1d3c4:	7cb65863          	ble	a1,a2,1db94 <_vfiprintf_r+0xb8c>
   1d3c8:	10079ae3          	bnez	a5,1dcdc <_vfiprintf_r+0xcd4>
   1d3cc:	08000513          	li	a0,128
   1d3d0:	00100593          	li	a1,1
   1d3d4:	00000613          	li	a2,0
   1d3d8:	000c8413          	mv	s0,s9
   1d3dc:	4ea29c63          	bne	t0,a0,1d8d4 <_vfiprintf_r+0x8cc>
   1d3e0:	41390ebb          	subw	t4,s2,s3
   1d3e4:	4fd05863          	blez	t4,1d8d4 <_vfiprintf_r+0x8cc>
   1d3e8:	01000513          	li	a0,16
   1d3ec:	3fd55ce3          	ble	t4,a0,1dfe4 <_vfiprintf_r+0xfdc>
   1d3f0:	01000f13          	li	t5,16
   1d3f4:	00021737          	lui	a4,0x21
   1d3f8:	3a870d93          	addi	s11,a4,936 # 213a8 <zeroes.4137>
   1d3fc:	00700f93          	li	t6,7
   1d400:	000f0293          	mv	t0,t5
   1d404:	0180006f          	j	1d41c <_vfiprintf_r+0x414>
   1d408:	0026051b          	addiw	a0,a2,2
   1d40c:	01040413          	addi	s0,s0,16
   1d410:	00058613          	mv	a2,a1
   1d414:	ff0e8e9b          	addiw	t4,t4,-16
   1d418:	03d2dc63          	ble	t4,t0,1d450 <_vfiprintf_r+0x448>
   1d41c:	01078793          	addi	a5,a5,16
   1d420:	0016059b          	addiw	a1,a2,1
   1d424:	01b43023          	sd	s11,0(s0)
   1d428:	01e43423          	sd	t5,8(s0)
   1d42c:	08f13023          	sd	a5,128(sp)
   1d430:	06b12c23          	sw	a1,120(sp)
   1d434:	fcbfdae3          	ble	a1,t6,1d408 <_vfiprintf_r+0x400>
   1d438:	6a079e63          	bnez	a5,1daf4 <_vfiprintf_r+0xaec>
   1d43c:	ff0e8e9b          	addiw	t4,t4,-16
   1d440:	00100513          	li	a0,1
   1d444:	00000613          	li	a2,0
   1d448:	000c8413          	mv	s0,s9
   1d44c:	fdd2c8e3          	blt	t0,t4,1d41c <_vfiprintf_r+0x414>
   1d450:	01d787b3          	add	a5,a5,t4
   1d454:	01b43023          	sd	s11,0(s0)
   1d458:	01d43423          	sd	t4,8(s0)
   1d45c:	08f13023          	sd	a5,128(sp)
   1d460:	06a12c23          	sw	a0,120(sp)
   1d464:	00700613          	li	a2,7
   1d468:	0ea646e3          	blt	a2,a0,1dd54 <_vfiprintf_r+0xd4c>
   1d46c:	414484bb          	subw	s1,s1,s4
   1d470:	01040413          	addi	s0,s0,16
   1d474:	0015059b          	addiw	a1,a0,1
   1d478:	00050613          	mv	a2,a0
   1d47c:	46904063          	bgtz	s1,1d8dc <_vfiprintf_r+0x8d4>
   1d480:	00fa07b3          	add	a5,s4,a5
   1d484:	01743023          	sd	s7,0(s0)
   1d488:	01443423          	sd	s4,8(s0)
   1d48c:	08f13023          	sd	a5,128(sp)
   1d490:	06b12c23          	sw	a1,120(sp)
   1d494:	00700713          	li	a4,7
   1d498:	4eb75a63          	ble	a1,a4,1d98c <_vfiprintf_r+0x984>
   1d49c:	7a079463          	bnez	a5,1dc44 <_vfiprintf_r+0xc3c>
   1d4a0:	06012c23          	sw	zero,120(sp)
   1d4a4:	00437313          	andi	t1,t1,4
   1d4a8:	00030663          	beqz	t1,1d4b4 <_vfiprintf_r+0x4ac>
   1d4ac:	413904bb          	subw	s1,s2,s3
   1d4b0:	229040e3          	bgtz	s1,1ded0 <_vfiprintf_r+0xec8>
   1d4b4:	01395463          	ble	s3,s2,1d4bc <_vfiprintf_r+0x4b4>
   1d4b8:	00098913          	mv	s2,s3
   1d4bc:	05812783          	lw	a5,88(sp)
   1d4c0:	012787bb          	addw	a5,a5,s2
   1d4c4:	04f12c23          	sw	a5,88(sp)
   1d4c8:	06012c23          	sw	zero,120(sp)
   1d4cc:	000c8413          	mv	s0,s9
   1d4d0:	c29ff06f          	j	1d0f8 <_vfiprintf_r+0xf0>
   1d4d4:	00100513          	li	a0,1
   1d4d8:	02b00e93          	li	t4,43
   1d4dc:	000b0813          	mv	a6,s6
   1d4e0:	cb5ff06f          	j	1d194 <_vfiprintf_r+0x18c>
   1d4e4:	08036313          	ori	t1,t1,128
   1d4e8:	000b0813          	mv	a6,s6
   1d4ec:	ca9ff06f          	j	1d194 <_vfiprintf_r+0x18c>
   1d4f0:	00000913          	li	s2,0
   1d4f4:	fd07079b          	addiw	a5,a4,-48
   1d4f8:	001b0b13          	addi	s6,s6,1
   1d4fc:	fffb4703          	lbu	a4,-1(s6)
   1d500:	00191f9b          	slliw	t6,s2,0x1
   1d504:	0039191b          	slliw	s2,s2,0x3
   1d508:	012f893b          	addw	s2,t6,s2
   1d50c:	0127893b          	addw	s2,a5,s2
   1d510:	fd07079b          	addiw	a5,a4,-48
   1d514:	fef5f2e3          	bleu	a5,a1,1d4f8 <_vfiprintf_r+0x4f0>
   1d518:	c85ff06f          	j	1d19c <_vfiprintf_r+0x194>
   1d51c:	360518e3          	bnez	a0,1e08c <_vfiprintf_r+0x1084>
   1d520:	01036313          	ori	t1,t1,16
   1d524:	01037793          	andi	a5,t1,16
   1d528:	74078263          	beqz	a5,1dc6c <_vfiprintf_r+0xc64>
   1d52c:	00813703          	ld	a4,8(sp)
   1d530:	00073783          	ld	a5,0(a4)
   1d534:	00870713          	addi	a4,a4,8
   1d538:	00e13423          	sd	a4,8(sp)
   1d53c:	0e07c6e3          	bltz	a5,1de28 <_vfiprintf_r+0xe20>
   1d540:	06714583          	lbu	a1,103(sp)
   1d544:	6e04c063          	bltz	s1,1dc24 <_vfiprintf_r+0xc1c>
   1d548:	f7f37313          	andi	t1,t1,-129
   1d54c:	10078c63          	beqz	a5,1d664 <_vfiprintf_r+0x65c>
   1d550:	00900613          	li	a2,9
   1d554:	000c8b93          	mv	s7,s9
   1d558:	00a00513          	li	a0,10
   1d55c:	10f67863          	bleu	a5,a2,1d66c <_vfiprintf_r+0x664>
   1d560:	02a7f633          	remu	a2,a5,a0
   1d564:	fffb8b93          	addi	s7,s7,-1
   1d568:	02a7d7b3          	divu	a5,a5,a0
   1d56c:	0306061b          	addiw	a2,a2,48
   1d570:	00cb8023          	sb	a2,0(s7)
   1d574:	fe0796e3          	bnez	a5,1d560 <_vfiprintf_r+0x558>
   1d578:	417c8a3b          	subw	s4,s9,s7
   1d57c:	d59ff06f          	j	1d2d4 <_vfiprintf_r+0x2cc>
   1d580:	300512e3          	bnez	a0,1e084 <_vfiprintf_r+0x107c>
   1d584:	01036313          	ori	t1,t1,16
   1d588:	01037793          	andi	a5,t1,16
   1d58c:	6e078e63          	beqz	a5,1dc88 <_vfiprintf_r+0xc80>
   1d590:	00813783          	ld	a5,8(sp)
   1d594:	060103a3          	sb	zero,103(sp)
   1d598:	00878713          	addi	a4,a5,8
   1d59c:	0007b783          	ld	a5,0(a5)
   1d5a0:	7004c263          	bltz	s1,1dca4 <_vfiprintf_r+0xc9c>
   1d5a4:	00e13423          	sd	a4,8(sp)
   1d5a8:	f7f37313          	andi	t1,t1,-129
   1d5ac:	70079263          	bnez	a5,1dcb0 <_vfiprintf_r+0xca8>
   1d5b0:	00000593          	li	a1,0
   1d5b4:	00000793          	li	a5,0
   1d5b8:	2a0482e3          	beqz	s1,1e05c <_vfiprintf_r+0x1054>
   1d5bc:	000c8b93          	mv	s7,s9
   1d5c0:	0077f613          	andi	a2,a5,7
   1d5c4:	fffb8b93          	addi	s7,s7,-1
   1d5c8:	0306061b          	addiw	a2,a2,48
   1d5cc:	00cb8023          	sb	a2,0(s7)
   1d5d0:	0037d793          	srli	a5,a5,0x3
   1d5d4:	fe0796e3          	bnez	a5,1d5c0 <_vfiprintf_r+0x5b8>
   1d5d8:	00137793          	andi	a5,t1,1
   1d5dc:	f8078ee3          	beqz	a5,1d578 <_vfiprintf_r+0x570>
   1d5e0:	03000793          	li	a5,48
   1d5e4:	f8f60ae3          	beq	a2,a5,1d578 <_vfiprintf_r+0x570>
   1d5e8:	fffb8613          	addi	a2,s7,-1
   1d5ec:	40cc8a33          	sub	s4,s9,a2
   1d5f0:	fefb8fa3          	sb	a5,-1(s7)
   1d5f4:	000a0a1b          	sext.w	s4,s4
   1d5f8:	00060b93          	mv	s7,a2
   1d5fc:	cd9ff06f          	j	1d2d4 <_vfiprintf_r+0x2cc>
   1d600:	28051ee3          	bnez	a0,1e09c <_vfiprintf_r+0x1094>
   1d604:	01037793          	andi	a5,t1,16
   1d608:	040786e3          	beqz	a5,1de54 <_vfiprintf_r+0xe4c>
   1d60c:	00813683          	ld	a3,8(sp)
   1d610:	05812703          	lw	a4,88(sp)
   1d614:	0006b783          	ld	a5,0(a3)
   1d618:	00868693          	addi	a3,a3,8
   1d61c:	00d13423          	sd	a3,8(sp)
   1d620:	00e7b023          	sd	a4,0(a5)
   1d624:	ad5ff06f          	j	1d0f8 <_vfiprintf_r+0xf0>
   1d628:	260516e3          	bnez	a0,1e094 <_vfiprintf_r+0x108c>
   1d62c:	01036313          	ori	t1,t1,16
   1d630:	01037793          	andi	a5,t1,16
   1d634:	5c079a63          	bnez	a5,1dc08 <_vfiprintf_r+0xc00>
   1d638:	04037793          	andi	a5,t1,64
   1d63c:	060103a3          	sb	zero,103(sp)
   1d640:	7c078063          	beqz	a5,1de00 <_vfiprintf_r+0xdf8>
   1d644:	00813783          	ld	a5,8(sp)
   1d648:	00878713          	addi	a4,a5,8
   1d64c:	0007d783          	lhu	a5,0(a5)
   1d650:	5c04c663          	bltz	s1,1dc1c <_vfiprintf_r+0xc14>
   1d654:	00e13423          	sd	a4,8(sp)
   1d658:	f7f37313          	andi	t1,t1,-129
   1d65c:	00000593          	li	a1,0
   1d660:	ee0798e3          	bnez	a5,1d550 <_vfiprintf_r+0x548>
   1d664:	c60482e3          	beqz	s1,1d2c8 <_vfiprintf_r+0x2c0>
   1d668:	00000793          	li	a5,0
   1d66c:	0307879b          	addiw	a5,a5,48
   1d670:	0af107a3          	sb	a5,175(sp)
   1d674:	05c12a03          	lw	s4,92(sp)
   1d678:	0af10b93          	addi	s7,sp,175
   1d67c:	c59ff06f          	j	1d2d4 <_vfiprintf_r+0x2cc>
   1d680:	b40e98e3          	bnez	t4,1d1d0 <_vfiprintf_r+0x1c8>
   1d684:	00100513          	li	a0,1
   1d688:	02000e93          	li	t4,32
   1d68c:	000b0813          	mv	a6,s6
   1d690:	b05ff06f          	j	1d194 <_vfiprintf_r+0x18c>
   1d694:	00136313          	ori	t1,t1,1
   1d698:	000b0813          	mv	a6,s6
   1d69c:	af9ff06f          	j	1d194 <_vfiprintf_r+0x18c>
   1d6a0:	00813783          	ld	a5,8(sp)
   1d6a4:	060103a3          	sb	zero,103(sp)
   1d6a8:	0007bb83          	ld	s7,0(a5)
   1d6ac:	00878d93          	addi	s11,a5,8
   1d6b0:	0e0b84e3          	beqz	s7,1df98 <_vfiprintf_r+0xf90>
   1d6b4:	0404cee3          	bltz	s1,1df10 <_vfiprintf_r+0xf08>
   1d6b8:	00048613          	mv	a2,s1
   1d6bc:	00000593          	li	a1,0
   1d6c0:	000b8513          	mv	a0,s7
   1d6c4:	00613423          	sd	t1,8(sp)
   1d6c8:	be0fa0ef          	jal	17aa8 <memchr>
   1d6cc:	00813303          	ld	t1,8(sp)
   1d6d0:	120502e3          	beqz	a0,1dff4 <_vfiprintf_r+0xfec>
   1d6d4:	41750a3b          	subw	s4,a0,s7
   1d6d8:	06714583          	lbu	a1,103(sp)
   1d6dc:	01b13423          	sd	s11,8(sp)
   1d6e0:	00000493          	li	s1,0
   1d6e4:	bf1ff06f          	j	1d2d4 <_vfiprintf_r+0x2cc>
   1d6e8:	f40504e3          	beqz	a0,1d630 <_vfiprintf_r+0x628>
   1d6ec:	07d103a3          	sb	t4,103(sp)
   1d6f0:	f41ff06f          	j	1d630 <_vfiprintf_r+0x628>
   1d6f4:	00813703          	ld	a4,8(sp)
   1d6f8:	00100993          	li	s3,1
   1d6fc:	060103a3          	sb	zero,103(sp)
   1d700:	00072783          	lw	a5,0(a4)
   1d704:	00098a13          	mv	s4,s3
   1d708:	08810b93          	addi	s7,sp,136
   1d70c:	08f10423          	sb	a5,136(sp)
   1d710:	00870793          	addi	a5,a4,8
   1d714:	00f13423          	sd	a5,8(sp)
   1d718:	00000493          	li	s1,0
   1d71c:	bcdff06f          	j	1d2e8 <_vfiprintf_r+0x2e0>
   1d720:	e00502e3          	beqz	a0,1d524 <_vfiprintf_r+0x51c>
   1d724:	07d103a3          	sb	t4,103(sp)
   1d728:	dfdff06f          	j	1d524 <_vfiprintf_r+0x51c>
   1d72c:	120510e3          	bnez	a0,1e04c <_vfiprintf_r+0x1044>
   1d730:	000227b7          	lui	a5,0x22
   1d734:	cc078793          	addi	a5,a5,-832 # 21cc0 <zeroes.4123+0x690>
   1d738:	00f13c23          	sd	a5,24(sp)
   1d73c:	01037793          	andi	a5,t1,16
   1d740:	06078063          	beqz	a5,1d7a0 <_vfiprintf_r+0x798>
   1d744:	00813683          	ld	a3,8(sp)
   1d748:	0006b783          	ld	a5,0(a3)
   1d74c:	00868693          	addi	a3,a3,8
   1d750:	00d13423          	sd	a3,8(sp)
   1d754:	00137613          	andi	a2,t1,1
   1d758:	46060863          	beqz	a2,1dbc8 <_vfiprintf_r+0xbc0>
   1d75c:	66079063          	bnez	a5,1ddbc <_vfiprintf_r+0xdb4>
   1d760:	060103a3          	sb	zero,103(sp)
   1d764:	6404c663          	bltz	s1,1ddb0 <_vfiprintf_r+0xda8>
   1d768:	f7f37313          	andi	t1,t1,-129
   1d76c:	b55ff06f          	j	1d2c0 <_vfiprintf_r+0x2b8>
   1d770:	e0050ce3          	beqz	a0,1d588 <_vfiprintf_r+0x580>
   1d774:	07d103a3          	sb	t4,103(sp)
   1d778:	e11ff06f          	j	1d588 <_vfiprintf_r+0x580>
   1d77c:	04036313          	ori	t1,t1,64
   1d780:	000b0813          	mv	a6,s6
   1d784:	a11ff06f          	j	1d194 <_vfiprintf_r+0x18c>
   1d788:	0a051ee3          	bnez	a0,1e044 <_vfiprintf_r+0x103c>
   1d78c:	000227b7          	lui	a5,0x22
   1d790:	cd878793          	addi	a5,a5,-808 # 21cd8 <zeroes.4123+0x6a8>
   1d794:	00f13c23          	sd	a5,24(sp)
   1d798:	01037793          	andi	a5,t1,16
   1d79c:	fa0794e3          	bnez	a5,1d744 <_vfiprintf_r+0x73c>
   1d7a0:	04037793          	andi	a5,t1,64
   1d7a4:	00813683          	ld	a3,8(sp)
   1d7a8:	68078e63          	beqz	a5,1de44 <_vfiprintf_r+0xe3c>
   1d7ac:	0006d783          	lhu	a5,0(a3)
   1d7b0:	00868693          	addi	a3,a3,8
   1d7b4:	00d13423          	sd	a3,8(sp)
   1d7b8:	f9dff06f          	j	1d754 <_vfiprintf_r+0x74c>
   1d7bc:	000b4703          	lbu	a4,0(s6)
   1d7c0:	001b0813          	addi	a6,s6,1
   1d7c4:	05e70ee3          	beq	a4,t5,1e020 <_vfiprintf_r+0x1018>
   1d7c8:	fd07079b          	addiw	a5,a4,-48
   1d7cc:	00000493          	li	s1,0
   1d7d0:	00080b13          	mv	s6,a6
   1d7d4:	9cf5e4e3          	bltu	a1,a5,1d19c <_vfiprintf_r+0x194>
   1d7d8:	001b0b13          	addi	s6,s6,1
   1d7dc:	fffb4703          	lbu	a4,-1(s6)
   1d7e0:	00149f9b          	slliw	t6,s1,0x1
   1d7e4:	0034949b          	slliw	s1,s1,0x3
   1d7e8:	009f84bb          	addw	s1,t6,s1
   1d7ec:	00f484bb          	addw	s1,s1,a5
   1d7f0:	fd07079b          	addiw	a5,a4,-48
   1d7f4:	fef5f2e3          	bleu	a5,a1,1d7d8 <_vfiprintf_r+0x7d0>
   1d7f8:	9a04d2e3          	bgez	s1,1d19c <_vfiprintf_r+0x194>
   1d7fc:	fff00493          	li	s1,-1
   1d800:	99dff06f          	j	1d19c <_vfiprintf_r+0x194>
   1d804:	040518e3          	bnez	a0,1e054 <_vfiprintf_r+0x104c>
   1d808:	6e070663          	beqz	a4,1def4 <_vfiprintf_r+0xeec>
   1d80c:	00100993          	li	s3,1
   1d810:	08e10423          	sb	a4,136(sp)
   1d814:	060103a3          	sb	zero,103(sp)
   1d818:	00098a13          	mv	s4,s3
   1d81c:	08810b93          	addi	s7,sp,136
   1d820:	00000493          	li	s1,0
   1d824:	ac5ff06f          	j	1d2e8 <_vfiprintf_r+0x2e0>
   1d828:	07010613          	addi	a2,sp,112
   1d82c:	000d0593          	mv	a1,s10
   1d830:	000a8513          	mv	a0,s5
   1d834:	05f13423          	sd	t6,72(sp)
   1d838:	05e13023          	sd	t5,64(sp)
   1d83c:	03d13c23          	sd	t4,56(sp)
   1d840:	02513823          	sd	t0,48(sp)
   1d844:	02713423          	sd	t2,40(sp)
   1d848:	02613023          	sd	t1,32(sp)
   1d84c:	eb8ff0ef          	jal	1cf04 <__sprint_r.part.0>
   1d850:	22051063          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1d854:	07812503          	lw	a0,120(sp)
   1d858:	08013783          	ld	a5,128(sp)
   1d85c:	000c8413          	mv	s0,s9
   1d860:	0015061b          	addiw	a2,a0,1
   1d864:	04813f83          	ld	t6,72(sp)
   1d868:	04013f03          	ld	t5,64(sp)
   1d86c:	03813e83          	ld	t4,56(sp)
   1d870:	03013283          	ld	t0,48(sp)
   1d874:	02813383          	ld	t2,40(sp)
   1d878:	02013303          	ld	t1,32(sp)
   1d87c:	ab9ff06f          	j	1d334 <_vfiprintf_r+0x32c>
   1d880:	07812603          	lw	a2,120(sp)
   1d884:	08013783          	ld	a5,128(sp)
   1d888:	0016059b          	addiw	a1,a2,1
   1d88c:	06714503          	lbu	a0,103(sp)
   1d890:	b00508e3          	beqz	a0,1d3a0 <_vfiprintf_r+0x398>
   1d894:	00100513          	li	a0,1
   1d898:	06710613          	addi	a2,sp,103
   1d89c:	00a787b3          	add	a5,a5,a0
   1d8a0:	00c43023          	sd	a2,0(s0)
   1d8a4:	00a43423          	sd	a0,8(s0)
   1d8a8:	08f13023          	sd	a5,128(sp)
   1d8ac:	06b12c23          	sw	a1,120(sp)
   1d8b0:	00700613          	li	a2,7
   1d8b4:	2ab65a63          	ble	a1,a2,1db68 <_vfiprintf_r+0xb60>
   1d8b8:	44079e63          	bnez	a5,1dd14 <_vfiprintf_r+0xd0c>
   1d8bc:	2c039063          	bnez	t2,1db7c <_vfiprintf_r+0xb74>
   1d8c0:	00000613          	li	a2,0
   1d8c4:	00050593          	mv	a1,a0
   1d8c8:	000c8413          	mv	s0,s9
   1d8cc:	08000513          	li	a0,128
   1d8d0:	b0a288e3          	beq	t0,a0,1d3e0 <_vfiprintf_r+0x3d8>
   1d8d4:	414484bb          	subw	s1,s1,s4
   1d8d8:	ba9054e3          	blez	s1,1d480 <_vfiprintf_r+0x478>
   1d8dc:	00021737          	lui	a4,0x21
   1d8e0:	01000513          	li	a0,16
   1d8e4:	3a870d93          	addi	s11,a4,936 # 213a8 <zeroes.4137>
   1d8e8:	06955263          	ble	s1,a0,1d94c <_vfiprintf_r+0x944>
   1d8ec:	01000e93          	li	t4,16
   1d8f0:	00021737          	lui	a4,0x21
   1d8f4:	3a870d93          	addi	s11,a4,936 # 213a8 <zeroes.4137>
   1d8f8:	00700f13          	li	t5,7
   1d8fc:	000e8f93          	mv	t6,t4
   1d900:	0180006f          	j	1d918 <_vfiprintf_r+0x910>
   1d904:	0026059b          	addiw	a1,a2,2
   1d908:	01040413          	addi	s0,s0,16
   1d90c:	00050613          	mv	a2,a0
   1d910:	ff04849b          	addiw	s1,s1,-16
   1d914:	029fdc63          	ble	s1,t6,1d94c <_vfiprintf_r+0x944>
   1d918:	01078793          	addi	a5,a5,16
   1d91c:	0016051b          	addiw	a0,a2,1
   1d920:	01b43023          	sd	s11,0(s0)
   1d924:	01d43423          	sd	t4,8(s0)
   1d928:	08f13023          	sd	a5,128(sp)
   1d92c:	06a12c23          	sw	a0,120(sp)
   1d930:	fcaf5ae3          	ble	a0,t5,1d904 <_vfiprintf_r+0x8fc>
   1d934:	14079863          	bnez	a5,1da84 <_vfiprintf_r+0xa7c>
   1d938:	ff04849b          	addiw	s1,s1,-16
   1d93c:	00100593          	li	a1,1
   1d940:	00000613          	li	a2,0
   1d944:	000c8413          	mv	s0,s9
   1d948:	fc9fc8e3          	blt	t6,s1,1d918 <_vfiprintf_r+0x910>
   1d94c:	009787b3          	add	a5,a5,s1
   1d950:	01b43023          	sd	s11,0(s0)
   1d954:	00943423          	sd	s1,8(s0)
   1d958:	08f13023          	sd	a5,128(sp)
   1d95c:	06b12c23          	sw	a1,120(sp)
   1d960:	00700613          	li	a2,7
   1d964:	24b64063          	blt	a2,a1,1dba4 <_vfiprintf_r+0xb9c>
   1d968:	01040413          	addi	s0,s0,16
   1d96c:	0015859b          	addiw	a1,a1,1
   1d970:	00fa07b3          	add	a5,s4,a5
   1d974:	01743023          	sd	s7,0(s0)
   1d978:	01443423          	sd	s4,8(s0)
   1d97c:	08f13023          	sd	a5,128(sp)
   1d980:	06b12c23          	sw	a1,120(sp)
   1d984:	00700713          	li	a4,7
   1d988:	b0b74ae3          	blt	a4,a1,1d49c <_vfiprintf_r+0x494>
   1d98c:	01040413          	addi	s0,s0,16
   1d990:	00437313          	andi	t1,t1,4
   1d994:	0a030863          	beqz	t1,1da44 <_vfiprintf_r+0xa3c>
   1d998:	413904bb          	subw	s1,s2,s3
   1d99c:	0a905463          	blez	s1,1da44 <_vfiprintf_r+0xa3c>
   1d9a0:	01000713          	li	a4,16
   1d9a4:	62975863          	ble	s1,a4,1dfd4 <_vfiprintf_r+0xfcc>
   1d9a8:	01000a13          	li	s4,16
   1d9ac:	07812603          	lw	a2,120(sp)
   1d9b0:	05813823          	sd	s8,80(sp)
   1d9b4:	00700d93          	li	s11,7
   1d9b8:	000a0b93          	mv	s7,s4
   1d9bc:	0180006f          	j	1d9d4 <_vfiprintf_r+0x9cc>
   1d9c0:	0026059b          	addiw	a1,a2,2
   1d9c4:	01040413          	addi	s0,s0,16
   1d9c8:	00070613          	mv	a2,a4
   1d9cc:	ff04849b          	addiw	s1,s1,-16
   1d9d0:	029bdc63          	ble	s1,s7,1da08 <_vfiprintf_r+0xa00>
   1d9d4:	01078793          	addi	a5,a5,16
   1d9d8:	0016071b          	addiw	a4,a2,1
   1d9dc:	01843023          	sd	s8,0(s0)
   1d9e0:	01443423          	sd	s4,8(s0)
   1d9e4:	08f13023          	sd	a5,128(sp)
   1d9e8:	06e12c23          	sw	a4,120(sp)
   1d9ec:	fceddae3          	ble	a4,s11,1d9c0 <_vfiprintf_r+0x9b8>
   1d9f0:	0c079e63          	bnez	a5,1dacc <_vfiprintf_r+0xac4>
   1d9f4:	ff04849b          	addiw	s1,s1,-16
   1d9f8:	00100593          	li	a1,1
   1d9fc:	00000613          	li	a2,0
   1da00:	000c8413          	mv	s0,s9
   1da04:	fc9bc8e3          	blt	s7,s1,1d9d4 <_vfiprintf_r+0x9cc>
   1da08:	05013703          	ld	a4,80(sp)
   1da0c:	009787b3          	add	a5,a5,s1
   1da10:	00943423          	sd	s1,8(s0)
   1da14:	00e43023          	sd	a4,0(s0)
   1da18:	08f13023          	sd	a5,128(sp)
   1da1c:	06b12c23          	sw	a1,120(sp)
   1da20:	00700713          	li	a4,7
   1da24:	02b75063          	ble	a1,a4,1da44 <_vfiprintf_r+0xa3c>
   1da28:	a80786e3          	beqz	a5,1d4b4 <_vfiprintf_r+0x4ac>
   1da2c:	07010613          	addi	a2,sp,112
   1da30:	000d0593          	mv	a1,s10
   1da34:	000a8513          	mv	a0,s5
   1da38:	cccff0ef          	jal	1cf04 <__sprint_r.part.0>
   1da3c:	02051a63          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1da40:	08013783          	ld	a5,128(sp)
   1da44:	01395463          	ble	s3,s2,1da4c <_vfiprintf_r+0xa44>
   1da48:	00098913          	mv	s2,s3
   1da4c:	05812703          	lw	a4,88(sp)
   1da50:	0127073b          	addw	a4,a4,s2
   1da54:	04e12c23          	sw	a4,88(sp)
   1da58:	a60788e3          	beqz	a5,1d4c8 <_vfiprintf_r+0x4c0>
   1da5c:	07010613          	addi	a2,sp,112
   1da60:	000d0593          	mv	a1,s10
   1da64:	000a8513          	mv	a0,s5
   1da68:	c9cff0ef          	jal	1cf04 <__sprint_r.part.0>
   1da6c:	a4050ee3          	beqz	a0,1d4c8 <_vfiprintf_r+0x4c0>
   1da70:	010d5783          	lhu	a5,16(s10)
   1da74:	0407f793          	andi	a5,a5,64
   1da78:	44079863          	bnez	a5,1dec8 <_vfiprintf_r+0xec0>
   1da7c:	05812503          	lw	a0,88(sp)
   1da80:	f94ff06f          	j	1d214 <_vfiprintf_r+0x20c>
   1da84:	07010613          	addi	a2,sp,112
   1da88:	000d0593          	mv	a1,s10
   1da8c:	000a8513          	mv	a0,s5
   1da90:	03f13c23          	sd	t6,56(sp)
   1da94:	03e13823          	sd	t5,48(sp)
   1da98:	03d13423          	sd	t4,40(sp)
   1da9c:	02613023          	sd	t1,32(sp)
   1daa0:	c64ff0ef          	jal	1cf04 <__sprint_r.part.0>
   1daa4:	fc0516e3          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1daa8:	07812603          	lw	a2,120(sp)
   1daac:	08013783          	ld	a5,128(sp)
   1dab0:	000c8413          	mv	s0,s9
   1dab4:	0016059b          	addiw	a1,a2,1
   1dab8:	03813f83          	ld	t6,56(sp)
   1dabc:	03013f03          	ld	t5,48(sp)
   1dac0:	02813e83          	ld	t4,40(sp)
   1dac4:	02013303          	ld	t1,32(sp)
   1dac8:	e49ff06f          	j	1d910 <_vfiprintf_r+0x908>
   1dacc:	07010613          	addi	a2,sp,112
   1dad0:	000d0593          	mv	a1,s10
   1dad4:	000a8513          	mv	a0,s5
   1dad8:	c2cff0ef          	jal	1cf04 <__sprint_r.part.0>
   1dadc:	f8051ae3          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1dae0:	07812603          	lw	a2,120(sp)
   1dae4:	08013783          	ld	a5,128(sp)
   1dae8:	000c8413          	mv	s0,s9
   1daec:	0016059b          	addiw	a1,a2,1
   1daf0:	eddff06f          	j	1d9cc <_vfiprintf_r+0x9c4>
   1daf4:	07010613          	addi	a2,sp,112
   1daf8:	000d0593          	mv	a1,s10
   1dafc:	000a8513          	mv	a0,s5
   1db00:	04513023          	sd	t0,64(sp)
   1db04:	03f13c23          	sd	t6,56(sp)
   1db08:	03e13823          	sd	t5,48(sp)
   1db0c:	03d13423          	sd	t4,40(sp)
   1db10:	02613023          	sd	t1,32(sp)
   1db14:	bf0ff0ef          	jal	1cf04 <__sprint_r.part.0>
   1db18:	f4051ce3          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1db1c:	07812603          	lw	a2,120(sp)
   1db20:	08013783          	ld	a5,128(sp)
   1db24:	000c8413          	mv	s0,s9
   1db28:	0016051b          	addiw	a0,a2,1
   1db2c:	04013283          	ld	t0,64(sp)
   1db30:	03813f83          	ld	t6,56(sp)
   1db34:	03013f03          	ld	t5,48(sp)
   1db38:	02813e83          	ld	t4,40(sp)
   1db3c:	02013303          	ld	t1,32(sp)
   1db40:	8d5ff06f          	j	1d414 <_vfiprintf_r+0x40c>
   1db44:	34079263          	bnez	a5,1de88 <_vfiprintf_r+0xe80>
   1db48:	06714603          	lbu	a2,103(sp)
   1db4c:	02060663          	beqz	a2,1db78 <_vfiprintf_r+0xb70>
   1db50:	00100793          	li	a5,1
   1db54:	06710613          	addi	a2,sp,103
   1db58:	0ac13823          	sd	a2,176(sp)
   1db5c:	0af13c23          	sd	a5,184(sp)
   1db60:	00078593          	mv	a1,a5
   1db64:	000c8413          	mv	s0,s9
   1db68:	00058613          	mv	a2,a1
   1db6c:	01040413          	addi	s0,s0,16
   1db70:	0015859b          	addiw	a1,a1,1
   1db74:	82dff06f          	j	1d3a0 <_vfiprintf_r+0x398>
   1db78:	36038063          	beqz	t2,1ded8 <_vfiprintf_r+0xed0>
   1db7c:	00200793          	li	a5,2
   1db80:	06810613          	addi	a2,sp,104
   1db84:	0ac13823          	sd	a2,176(sp)
   1db88:	0af13c23          	sd	a5,184(sp)
   1db8c:	00100593          	li	a1,1
   1db90:	000c8413          	mv	s0,s9
   1db94:	00058613          	mv	a2,a1
   1db98:	01040413          	addi	s0,s0,16
   1db9c:	0015859b          	addiw	a1,a1,1
   1dba0:	d2dff06f          	j	1d8cc <_vfiprintf_r+0x8c4>
   1dba4:	1c079263          	bnez	a5,1dd68 <_vfiprintf_r+0xd60>
   1dba8:	00100713          	li	a4,1
   1dbac:	000a0793          	mv	a5,s4
   1dbb0:	0b713823          	sd	s7,176(sp)
   1dbb4:	0b413c23          	sd	s4,184(sp)
   1dbb8:	09413023          	sd	s4,128(sp)
   1dbbc:	06e12c23          	sw	a4,120(sp)
   1dbc0:	000c8413          	mv	s0,s9
   1dbc4:	dc9ff06f          	j	1d98c <_vfiprintf_r+0x984>
   1dbc8:	060103a3          	sb	zero,103(sp)
   1dbcc:	1e04c063          	bltz	s1,1ddac <_vfiprintf_r+0xda4>
   1dbd0:	f7f37313          	andi	t1,t1,-129
   1dbd4:	ee078663          	beqz	a5,1d2c0 <_vfiprintf_r+0x2b8>
   1dbd8:	00000593          	li	a1,0
   1dbdc:	000c8b93          	mv	s7,s9
   1dbe0:	01813703          	ld	a4,24(sp)
   1dbe4:	00f7f613          	andi	a2,a5,15
   1dbe8:	fffb8b93          	addi	s7,s7,-1
   1dbec:	00c70633          	add	a2,a4,a2
   1dbf0:	00064603          	lbu	a2,0(a2)
   1dbf4:	0047d793          	srli	a5,a5,0x4
   1dbf8:	00cb8023          	sb	a2,0(s7)
   1dbfc:	fe0792e3          	bnez	a5,1dbe0 <_vfiprintf_r+0xbd8>
   1dc00:	417c8a3b          	subw	s4,s9,s7
   1dc04:	ed0ff06f          	j	1d2d4 <_vfiprintf_r+0x2cc>
   1dc08:	00813783          	ld	a5,8(sp)
   1dc0c:	060103a3          	sb	zero,103(sp)
   1dc10:	00878713          	addi	a4,a5,8
   1dc14:	0007b783          	ld	a5,0(a5)
   1dc18:	a204dee3          	bgez	s1,1d654 <_vfiprintf_r+0x64c>
   1dc1c:	00e13423          	sd	a4,8(sp)
   1dc20:	00000593          	li	a1,0
   1dc24:	920796e3          	bnez	a5,1d550 <_vfiprintf_r+0x548>
   1dc28:	00100793          	li	a5,1
   1dc2c:	00100713          	li	a4,1
   1dc30:	a2e78ce3          	beq	a5,a4,1d668 <_vfiprintf_r+0x660>
   1dc34:	00200713          	li	a4,2
   1dc38:	08e78e63          	beq	a5,a4,1dcd4 <_vfiprintf_r+0xccc>
   1dc3c:	00000793          	li	a5,0
   1dc40:	97dff06f          	j	1d5bc <_vfiprintf_r+0x5b4>
   1dc44:	07010613          	addi	a2,sp,112
   1dc48:	000d0593          	mv	a1,s10
   1dc4c:	000a8513          	mv	a0,s5
   1dc50:	02613023          	sd	t1,32(sp)
   1dc54:	ab0ff0ef          	jal	1cf04 <__sprint_r.part.0>
   1dc58:	e0051ce3          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1dc5c:	08013783          	ld	a5,128(sp)
   1dc60:	000c8413          	mv	s0,s9
   1dc64:	02013303          	ld	t1,32(sp)
   1dc68:	d29ff06f          	j	1d990 <_vfiprintf_r+0x988>
   1dc6c:	04037793          	andi	a5,t1,64
   1dc70:	00813703          	ld	a4,8(sp)
   1dc74:	20078263          	beqz	a5,1de78 <_vfiprintf_r+0xe70>
   1dc78:	00071783          	lh	a5,0(a4)
   1dc7c:	00870713          	addi	a4,a4,8
   1dc80:	00e13423          	sd	a4,8(sp)
   1dc84:	8b9ff06f          	j	1d53c <_vfiprintf_r+0x534>
   1dc88:	04037793          	andi	a5,t1,64
   1dc8c:	060103a3          	sb	zero,103(sp)
   1dc90:	18078263          	beqz	a5,1de14 <_vfiprintf_r+0xe0c>
   1dc94:	00813783          	ld	a5,8(sp)
   1dc98:	00878713          	addi	a4,a5,8
   1dc9c:	0007d783          	lhu	a5,0(a5)
   1dca0:	9004d2e3          	bgez	s1,1d5a4 <_vfiprintf_r+0x59c>
   1dca4:	00e13423          	sd	a4,8(sp)
   1dca8:	00000593          	li	a1,0
   1dcac:	f80780e3          	beqz	a5,1dc2c <_vfiprintf_r+0xc24>
   1dcb0:	00000593          	li	a1,0
   1dcb4:	909ff06f          	j	1d5bc <_vfiprintf_r+0x5b4>
   1dcb8:	07010613          	addi	a2,sp,112
   1dcbc:	000d0593          	mv	a1,s10
   1dcc0:	000a8513          	mv	a0,s5
   1dcc4:	a40ff0ef          	jal	1cf04 <__sprint_r.part.0>
   1dcc8:	da0514e3          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1dccc:	000c8413          	mv	s0,s9
   1dcd0:	c88ff06f          	j	1d158 <_vfiprintf_r+0x150>
   1dcd4:	00000793          	li	a5,0
   1dcd8:	f05ff06f          	j	1dbdc <_vfiprintf_r+0xbd4>
   1dcdc:	07010613          	addi	a2,sp,112
   1dce0:	000d0593          	mv	a1,s10
   1dce4:	000a8513          	mv	a0,s5
   1dce8:	02513423          	sd	t0,40(sp)
   1dcec:	02613023          	sd	t1,32(sp)
   1dcf0:	a14ff0ef          	jal	1cf04 <__sprint_r.part.0>
   1dcf4:	d6051ee3          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1dcf8:	07812603          	lw	a2,120(sp)
   1dcfc:	08013783          	ld	a5,128(sp)
   1dd00:	000c8413          	mv	s0,s9
   1dd04:	0016059b          	addiw	a1,a2,1
   1dd08:	02813283          	ld	t0,40(sp)
   1dd0c:	02013303          	ld	t1,32(sp)
   1dd10:	bbdff06f          	j	1d8cc <_vfiprintf_r+0x8c4>
   1dd14:	07010613          	addi	a2,sp,112
   1dd18:	000d0593          	mv	a1,s10
   1dd1c:	000a8513          	mv	a0,s5
   1dd20:	02513823          	sd	t0,48(sp)
   1dd24:	02713423          	sd	t2,40(sp)
   1dd28:	02613023          	sd	t1,32(sp)
   1dd2c:	9d8ff0ef          	jal	1cf04 <__sprint_r.part.0>
   1dd30:	d40510e3          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1dd34:	07812603          	lw	a2,120(sp)
   1dd38:	08013783          	ld	a5,128(sp)
   1dd3c:	000c8413          	mv	s0,s9
   1dd40:	0016059b          	addiw	a1,a2,1
   1dd44:	03013283          	ld	t0,48(sp)
   1dd48:	02813383          	ld	t2,40(sp)
   1dd4c:	02013303          	ld	t1,32(sp)
   1dd50:	e50ff06f          	j	1d3a0 <_vfiprintf_r+0x398>
   1dd54:	1e079063          	bnez	a5,1df34 <_vfiprintf_r+0xf2c>
   1dd58:	00100593          	li	a1,1
   1dd5c:	00000613          	li	a2,0
   1dd60:	000c8413          	mv	s0,s9
   1dd64:	b71ff06f          	j	1d8d4 <_vfiprintf_r+0x8cc>
   1dd68:	07010613          	addi	a2,sp,112
   1dd6c:	000d0593          	mv	a1,s10
   1dd70:	000a8513          	mv	a0,s5
   1dd74:	02613023          	sd	t1,32(sp)
   1dd78:	98cff0ef          	jal	1cf04 <__sprint_r.part.0>
   1dd7c:	ce051ae3          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1dd80:	07812583          	lw	a1,120(sp)
   1dd84:	08013783          	ld	a5,128(sp)
   1dd88:	000c8413          	mv	s0,s9
   1dd8c:	0015859b          	addiw	a1,a1,1
   1dd90:	02013303          	ld	t1,32(sp)
   1dd94:	eecff06f          	j	1d480 <_vfiprintf_r+0x478>
   1dd98:	00e13423          	sd	a4,8(sp)
   1dd9c:	00022737          	lui	a4,0x22
   1dda0:	cd870713          	addi	a4,a4,-808 # 21cd8 <zeroes.4123+0x6a8>
   1dda4:	00060313          	mv	t1,a2
   1dda8:	00e13c23          	sd	a4,24(sp)
   1ddac:	e20796e3          	bnez	a5,1dbd8 <_vfiprintf_r+0xbd0>
   1ddb0:	00000593          	li	a1,0
   1ddb4:	00200793          	li	a5,2
   1ddb8:	e75ff06f          	j	1dc2c <_vfiprintf_r+0xc24>
   1ddbc:	03000613          	li	a2,48
   1ddc0:	06e104a3          	sb	a4,105(sp)
   1ddc4:	06c10423          	sb	a2,104(sp)
   1ddc8:	060103a3          	sb	zero,103(sp)
   1ddcc:	00236713          	ori	a4,t1,2
   1ddd0:	1a04c463          	bltz	s1,1df78 <_vfiprintf_r+0xf70>
   1ddd4:	f7f37313          	andi	t1,t1,-129
   1ddd8:	00236313          	ori	t1,t1,2
   1dddc:	00000593          	li	a1,0
   1dde0:	dfdff06f          	j	1dbdc <_vfiprintf_r+0xbd4>
   1dde4:	00022737          	lui	a4,0x22
   1dde8:	cd870713          	addi	a4,a4,-808 # 21cd8 <zeroes.4123+0x6a8>
   1ddec:	00000593          	li	a1,0
   1ddf0:	00e13c23          	sd	a4,24(sp)
   1ddf4:	de9ff06f          	j	1dbdc <_vfiprintf_r+0xbd4>
   1ddf8:	000b0493          	mv	s1,s6
   1ddfc:	b68ff06f          	j	1d164 <_vfiprintf_r+0x15c>
   1de00:	00813783          	ld	a5,8(sp)
   1de04:	00878713          	addi	a4,a5,8
   1de08:	0007e783          	lwu	a5,0(a5)
   1de0c:	8404d4e3          	bgez	s1,1d654 <_vfiprintf_r+0x64c>
   1de10:	e0dff06f          	j	1dc1c <_vfiprintf_r+0xc14>
   1de14:	00813783          	ld	a5,8(sp)
   1de18:	00878713          	addi	a4,a5,8
   1de1c:	0007e783          	lwu	a5,0(a5)
   1de20:	f804d263          	bgez	s1,1d5a4 <_vfiprintf_r+0x59c>
   1de24:	e81ff06f          	j	1dca4 <_vfiprintf_r+0xc9c>
   1de28:	02d00713          	li	a4,45
   1de2c:	06e103a3          	sb	a4,103(sp)
   1de30:	40f007b3          	neg	a5,a5
   1de34:	1804c863          	bltz	s1,1dfc4 <_vfiprintf_r+0xfbc>
   1de38:	f7f37313          	andi	t1,t1,-129
   1de3c:	02d00593          	li	a1,45
   1de40:	f10ff06f          	j	1d550 <_vfiprintf_r+0x548>
   1de44:	0006e783          	lwu	a5,0(a3)
   1de48:	00868693          	addi	a3,a3,8
   1de4c:	00d13423          	sd	a3,8(sp)
   1de50:	905ff06f          	j	1d754 <_vfiprintf_r+0x74c>
   1de54:	00813703          	ld	a4,8(sp)
   1de58:	04037313          	andi	t1,t1,64
   1de5c:	00073783          	ld	a5,0(a4)
   1de60:	00870713          	addi	a4,a4,8
   1de64:	00e13423          	sd	a4,8(sp)
   1de68:	08030063          	beqz	t1,1dee8 <_vfiprintf_r+0xee0>
   1de6c:	05815703          	lhu	a4,88(sp)
   1de70:	00e79023          	sh	a4,0(a5)
   1de74:	a84ff06f          	j	1d0f8 <_vfiprintf_r+0xf0>
   1de78:	00072783          	lw	a5,0(a4)
   1de7c:	00870713          	addi	a4,a4,8
   1de80:	00e13423          	sd	a4,8(sp)
   1de84:	eb8ff06f          	j	1d53c <_vfiprintf_r+0x534>
   1de88:	07010613          	addi	a2,sp,112
   1de8c:	000d0593          	mv	a1,s10
   1de90:	000a8513          	mv	a0,s5
   1de94:	02513823          	sd	t0,48(sp)
   1de98:	02713423          	sd	t2,40(sp)
   1de9c:	02613023          	sd	t1,32(sp)
   1dea0:	864ff0ef          	jal	1cf04 <__sprint_r.part.0>
   1dea4:	bc0516e3          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1dea8:	07812603          	lw	a2,120(sp)
   1deac:	08013783          	ld	a5,128(sp)
   1deb0:	000c8413          	mv	s0,s9
   1deb4:	0016059b          	addiw	a1,a2,1
   1deb8:	03013283          	ld	t0,48(sp)
   1debc:	02813383          	ld	t2,40(sp)
   1dec0:	02013303          	ld	t1,32(sp)
   1dec4:	9c9ff06f          	j	1d88c <_vfiprintf_r+0x884>
   1dec8:	fff00513          	li	a0,-1
   1decc:	b48ff06f          	j	1d214 <_vfiprintf_r+0x20c>
   1ded0:	000c8413          	mv	s0,s9
   1ded4:	acdff06f          	j	1d9a0 <_vfiprintf_r+0x998>
   1ded8:	00000613          	li	a2,0
   1dedc:	00100593          	li	a1,1
   1dee0:	000c8413          	mv	s0,s9
   1dee4:	9e9ff06f          	j	1d8cc <_vfiprintf_r+0x8c4>
   1dee8:	05812703          	lw	a4,88(sp)
   1deec:	00e7a023          	sw	a4,0(a5)
   1def0:	a08ff06f          	j	1d0f8 <_vfiprintf_r+0xf0>
   1def4:	08013783          	ld	a5,128(sp)
   1def8:	b6078ce3          	beqz	a5,1da70 <_vfiprintf_r+0xa68>
   1defc:	07010613          	addi	a2,sp,112
   1df00:	000d0593          	mv	a1,s10
   1df04:	000a8513          	mv	a0,s5
   1df08:	ffdfe0ef          	jal	1cf04 <__sprint_r.part.0>
   1df0c:	b65ff06f          	j	1da70 <_vfiprintf_r+0xa68>
   1df10:	000b8513          	mv	a0,s7
   1df14:	02613023          	sd	t1,32(sp)
   1df18:	b39f30ef          	jal	11a50 <strlen>
   1df1c:	00050a1b          	sext.w	s4,a0
   1df20:	06714583          	lbu	a1,103(sp)
   1df24:	01b13423          	sd	s11,8(sp)
   1df28:	00000493          	li	s1,0
   1df2c:	02013303          	ld	t1,32(sp)
   1df30:	ba4ff06f          	j	1d2d4 <_vfiprintf_r+0x2cc>
   1df34:	07010613          	addi	a2,sp,112
   1df38:	000d0593          	mv	a1,s10
   1df3c:	000a8513          	mv	a0,s5
   1df40:	02613023          	sd	t1,32(sp)
   1df44:	fc1fe0ef          	jal	1cf04 <__sprint_r.part.0>
   1df48:	b20514e3          	bnez	a0,1da70 <_vfiprintf_r+0xa68>
   1df4c:	07812603          	lw	a2,120(sp)
   1df50:	08013783          	ld	a5,128(sp)
   1df54:	000c8413          	mv	s0,s9
   1df58:	0016059b          	addiw	a1,a2,1
   1df5c:	02013303          	ld	t1,32(sp)
   1df60:	975ff06f          	j	1d8d4 <_vfiprintf_r+0x8cc>
   1df64:	07812603          	lw	a2,120(sp)
   1df68:	08013783          	ld	a5,128(sp)
   1df6c:	05813823          	sd	s8,80(sp)
   1df70:	0016061b          	addiw	a2,a2,1
   1df74:	bfcff06f          	j	1d370 <_vfiprintf_r+0x368>
   1df78:	00000593          	li	a1,0
   1df7c:	00200613          	li	a2,2
   1df80:	00100513          	li	a0,1
   1df84:	08a60263          	beq	a2,a0,1e008 <_vfiprintf_r+0x1000>
   1df88:	00200513          	li	a0,2
   1df8c:	08a61263          	bne	a2,a0,1e010 <_vfiprintf_r+0x1008>
   1df90:	00070313          	mv	t1,a4
   1df94:	c49ff06f          	j	1dbdc <_vfiprintf_r+0xbd4>
   1df98:	00600793          	li	a5,6
   1df9c:	0097f463          	bleu	s1,a5,1dfa4 <_vfiprintf_r+0xf9c>
   1dfa0:	00078493          	mv	s1,a5
   1dfa4:	00048a13          	mv	s4,s1
   1dfa8:	00048993          	mv	s3,s1
   1dfac:	0604c663          	bltz	s1,1e018 <_vfiprintf_r+0x1010>
   1dfb0:	00022737          	lui	a4,0x22
   1dfb4:	01b13423          	sd	s11,8(sp)
   1dfb8:	cf070b93          	addi	s7,a4,-784 # 21cf0 <zeroes.4123+0x6c0>
   1dfbc:	00000493          	li	s1,0
   1dfc0:	b28ff06f          	j	1d2e8 <_vfiprintf_r+0x2e0>
   1dfc4:	00030713          	mv	a4,t1
   1dfc8:	02d00593          	li	a1,45
   1dfcc:	00100613          	li	a2,1
   1dfd0:	fb1ff06f          	j	1df80 <_vfiprintf_r+0xf78>
   1dfd4:	07812583          	lw	a1,120(sp)
   1dfd8:	05813823          	sd	s8,80(sp)
   1dfdc:	0015859b          	addiw	a1,a1,1
   1dfe0:	a29ff06f          	j	1da08 <_vfiprintf_r+0xa00>
   1dfe4:	00021737          	lui	a4,0x21
   1dfe8:	00058513          	mv	a0,a1
   1dfec:	3a870d93          	addi	s11,a4,936 # 213a8 <zeroes.4137>
   1dff0:	c60ff06f          	j	1d450 <_vfiprintf_r+0x448>
   1dff4:	00048a13          	mv	s4,s1
   1dff8:	06714583          	lbu	a1,103(sp)
   1dffc:	01b13423          	sd	s11,8(sp)
   1e000:	00000493          	li	s1,0
   1e004:	ad0ff06f          	j	1d2d4 <_vfiprintf_r+0x2cc>
   1e008:	00070313          	mv	t1,a4
   1e00c:	d44ff06f          	j	1d550 <_vfiprintf_r+0x548>
   1e010:	00070313          	mv	t1,a4
   1e014:	da8ff06f          	j	1d5bc <_vfiprintf_r+0x5b4>
   1e018:	00000993          	li	s3,0
   1e01c:	f95ff06f          	j	1dfb0 <_vfiprintf_r+0xfa8>
   1e020:	00813783          	ld	a5,8(sp)
   1e024:	00080b13          	mv	s6,a6
   1e028:	0007a483          	lw	s1,0(a5)
   1e02c:	00878b93          	addi	s7,a5,8
   1e030:	01713423          	sd	s7,8(sp)
   1e034:	9804de63          	bgez	s1,1d1d0 <_vfiprintf_r+0x1c8>
   1e038:	fff00493          	li	s1,-1
   1e03c:	000b0813          	mv	a6,s6
   1e040:	954ff06f          	j	1d194 <_vfiprintf_r+0x18c>
   1e044:	07d103a3          	sb	t4,103(sp)
   1e048:	f44ff06f          	j	1d78c <_vfiprintf_r+0x784>
   1e04c:	07d103a3          	sb	t4,103(sp)
   1e050:	ee0ff06f          	j	1d730 <_vfiprintf_r+0x728>
   1e054:	07d103a3          	sb	t4,103(sp)
   1e058:	fb0ff06f          	j	1d808 <_vfiprintf_r+0x800>
   1e05c:	00137793          	andi	a5,t1,1
   1e060:	00078c63          	beqz	a5,1e078 <_vfiprintf_r+0x1070>
   1e064:	03000793          	li	a5,48
   1e068:	0af107a3          	sb	a5,175(sp)
   1e06c:	05c12a03          	lw	s4,92(sp)
   1e070:	0af10b93          	addi	s7,sp,175
   1e074:	a60ff06f          	j	1d2d4 <_vfiprintf_r+0x2cc>
   1e078:	00000a13          	li	s4,0
   1e07c:	000c8b93          	mv	s7,s9
   1e080:	a54ff06f          	j	1d2d4 <_vfiprintf_r+0x2cc>
   1e084:	07d103a3          	sb	t4,103(sp)
   1e088:	cfcff06f          	j	1d584 <_vfiprintf_r+0x57c>
   1e08c:	07d103a3          	sb	t4,103(sp)
   1e090:	c90ff06f          	j	1d520 <_vfiprintf_r+0x518>
   1e094:	07d103a3          	sb	t4,103(sp)
   1e098:	d94ff06f          	j	1d62c <_vfiprintf_r+0x624>
   1e09c:	07d103a3          	sb	t4,103(sp)
   1e0a0:	d64ff06f          	j	1d604 <_vfiprintf_r+0x5fc>

000000000001e0a4 <vfiprintf>:
   1e0a4:	00060693          	mv	a3,a2
   1e0a8:	00058613          	mv	a2,a1
   1e0ac:	00050593          	mv	a1,a0
   1e0b0:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   1e0b4:	f55fe06f          	j	1d008 <_vfiprintf_r>

000000000001e0b8 <__sbprintf>:
   1e0b8:	0105d783          	lhu	a5,16(a1)
   1e0bc:	0ac5ae03          	lw	t3,172(a1)
   1e0c0:	0125d303          	lhu	t1,18(a1)
   1e0c4:	0305b883          	ld	a7,48(a1)
   1e0c8:	0405b803          	ld	a6,64(a1)
   1e0cc:	b3010113          	addi	sp,sp,-1232
   1e0d0:	ffd7f793          	andi	a5,a5,-3
   1e0d4:	40000713          	li	a4,1024
   1e0d8:	4c813023          	sd	s0,1216(sp)
   1e0dc:	00f11823          	sh	a5,16(sp)
   1e0e0:	00058413          	mv	s0,a1
   1e0e4:	0b010793          	addi	a5,sp,176
   1e0e8:	00010593          	mv	a1,sp
   1e0ec:	4a913c23          	sd	s1,1208(sp)
   1e0f0:	4b213823          	sd	s2,1200(sp)
   1e0f4:	4c113423          	sd	ra,1224(sp)
   1e0f8:	00050913          	mv	s2,a0
   1e0fc:	0bc12623          	sw	t3,172(sp)
   1e100:	00611923          	sh	t1,18(sp)
   1e104:	03113823          	sd	a7,48(sp)
   1e108:	05013023          	sd	a6,64(sp)
   1e10c:	00f13023          	sd	a5,0(sp)
   1e110:	00f13c23          	sd	a5,24(sp)
   1e114:	00e12623          	sw	a4,12(sp)
   1e118:	02e12023          	sw	a4,32(sp)
   1e11c:	02012423          	sw	zero,40(sp)
   1e120:	ee9fe0ef          	jal	1d008 <_vfiprintf_r>
   1e124:	00050493          	mv	s1,a0
   1e128:	00054a63          	bltz	a0,1e13c <__sbprintf+0x84>
   1e12c:	00010593          	mv	a1,sp
   1e130:	00090513          	mv	a0,s2
   1e134:	bd0f80ef          	jal	16504 <_fflush_r>
   1e138:	02051c63          	bnez	a0,1e170 <__sbprintf+0xb8>
   1e13c:	01015783          	lhu	a5,16(sp)
   1e140:	0407f793          	andi	a5,a5,64
   1e144:	00078863          	beqz	a5,1e154 <__sbprintf+0x9c>
   1e148:	01045783          	lhu	a5,16(s0)
   1e14c:	0407e793          	ori	a5,a5,64
   1e150:	00f41823          	sh	a5,16(s0)
   1e154:	4c813083          	ld	ra,1224(sp)
   1e158:	00048513          	mv	a0,s1
   1e15c:	4c013403          	ld	s0,1216(sp)
   1e160:	4b813483          	ld	s1,1208(sp)
   1e164:	4b013903          	ld	s2,1200(sp)
   1e168:	4d010113          	addi	sp,sp,1232
   1e16c:	00008067          	ret
   1e170:	fff00493          	li	s1,-1
   1e174:	fc9ff06f          	j	1e13c <__sbprintf+0x84>

000000000001e178 <_calloc_r>:
   1e178:	02c585b3          	mul	a1,a1,a2
   1e17c:	ff010113          	addi	sp,sp,-16
   1e180:	00113423          	sd	ra,8(sp)
   1e184:	00813023          	sd	s0,0(sp)
   1e188:	ba5f20ef          	jal	10d2c <_malloc_r>
   1e18c:	08050c63          	beqz	a0,1e224 <_calloc_r+0xac>
   1e190:	ff853603          	ld	a2,-8(a0)
   1e194:	04800713          	li	a4,72
   1e198:	00050413          	mv	s0,a0
   1e19c:	ffc67613          	andi	a2,a2,-4
   1e1a0:	ff860613          	addi	a2,a2,-8
   1e1a4:	04c76e63          	bltu	a4,a2,1e200 <_calloc_r+0x88>
   1e1a8:	02700693          	li	a3,39
   1e1ac:	00050793          	mv	a5,a0
   1e1b0:	02c6f863          	bleu	a2,a3,1e1e0 <_calloc_r+0x68>
   1e1b4:	00053023          	sd	zero,0(a0)
   1e1b8:	00053423          	sd	zero,8(a0)
   1e1bc:	03700793          	li	a5,55
   1e1c0:	04c7fe63          	bleu	a2,a5,1e21c <_calloc_r+0xa4>
   1e1c4:	00053823          	sd	zero,16(a0)
   1e1c8:	00053c23          	sd	zero,24(a0)
   1e1cc:	02050793          	addi	a5,a0,32
   1e1d0:	00e61863          	bne	a2,a4,1e1e0 <_calloc_r+0x68>
   1e1d4:	02053023          	sd	zero,32(a0)
   1e1d8:	03050793          	addi	a5,a0,48
   1e1dc:	02053423          	sd	zero,40(a0)
   1e1e0:	0007b023          	sd	zero,0(a5)
   1e1e4:	0007b423          	sd	zero,8(a5)
   1e1e8:	0007b823          	sd	zero,16(a5)
   1e1ec:	00040513          	mv	a0,s0
   1e1f0:	00813083          	ld	ra,8(sp)
   1e1f4:	00013403          	ld	s0,0(sp)
   1e1f8:	01010113          	addi	sp,sp,16
   1e1fc:	00008067          	ret
   1e200:	00000593          	li	a1,0
   1e204:	aadf90ef          	jal	17cb0 <memset>
   1e208:	00813083          	ld	ra,8(sp)
   1e20c:	00040513          	mv	a0,s0
   1e210:	00013403          	ld	s0,0(sp)
   1e214:	01010113          	addi	sp,sp,16
   1e218:	00008067          	ret
   1e21c:	01050793          	addi	a5,a0,16
   1e220:	fc1ff06f          	j	1e1e0 <_calloc_r+0x68>
   1e224:	00000513          	li	a0,0
   1e228:	fc9ff06f          	j	1e1f0 <_calloc_r+0x78>

000000000001e22c <_fclose_r>:
   1e22c:	0e058e63          	beqz	a1,1e328 <_fclose_r+0xfc>
   1e230:	fe010113          	addi	sp,sp,-32
   1e234:	00813823          	sd	s0,16(sp)
   1e238:	00913423          	sd	s1,8(sp)
   1e23c:	00113c23          	sd	ra,24(sp)
   1e240:	01213023          	sd	s2,0(sp)
   1e244:	00050493          	mv	s1,a0
   1e248:	00058413          	mv	s0,a1
   1e24c:	00050663          	beqz	a0,1e258 <_fclose_r+0x2c>
   1e250:	05052783          	lw	a5,80(a0)
   1e254:	0a078a63          	beqz	a5,1e308 <_fclose_r+0xdc>
   1e258:	01041783          	lh	a5,16(s0)
   1e25c:	00000513          	li	a0,0
   1e260:	00079e63          	bnez	a5,1e27c <_fclose_r+0x50>
   1e264:	01813083          	ld	ra,24(sp)
   1e268:	01013403          	ld	s0,16(sp)
   1e26c:	00813483          	ld	s1,8(sp)
   1e270:	00013903          	ld	s2,0(sp)
   1e274:	02010113          	addi	sp,sp,32
   1e278:	00008067          	ret
   1e27c:	00040593          	mv	a1,s0
   1e280:	00048513          	mv	a0,s1
   1e284:	814f80ef          	jal	16298 <__sflush_r>
   1e288:	05043783          	ld	a5,80(s0)
   1e28c:	00050913          	mv	s2,a0
   1e290:	00078a63          	beqz	a5,1e2a4 <_fclose_r+0x78>
   1e294:	03043583          	ld	a1,48(s0)
   1e298:	00048513          	mv	a0,s1
   1e29c:	000780e7          	jalr	a5
   1e2a0:	06054863          	bltz	a0,1e310 <_fclose_r+0xe4>
   1e2a4:	01045783          	lhu	a5,16(s0)
   1e2a8:	0807f793          	andi	a5,a5,128
   1e2ac:	06079663          	bnez	a5,1e318 <_fclose_r+0xec>
   1e2b0:	05843583          	ld	a1,88(s0)
   1e2b4:	00058c63          	beqz	a1,1e2cc <_fclose_r+0xa0>
   1e2b8:	07440793          	addi	a5,s0,116
   1e2bc:	00f58663          	beq	a1,a5,1e2c8 <_fclose_r+0x9c>
   1e2c0:	00048513          	mv	a0,s1
   1e2c4:	9b1f80ef          	jal	16c74 <_free_r>
   1e2c8:	04043c23          	sd	zero,88(s0)
   1e2cc:	07843583          	ld	a1,120(s0)
   1e2d0:	00058863          	beqz	a1,1e2e0 <_fclose_r+0xb4>
   1e2d4:	00048513          	mv	a0,s1
   1e2d8:	99df80ef          	jal	16c74 <_free_r>
   1e2dc:	06043c23          	sd	zero,120(s0)
   1e2e0:	de0f80ef          	jal	168c0 <__sfp_lock_acquire>
   1e2e4:	00041823          	sh	zero,16(s0)
   1e2e8:	ddcf80ef          	jal	168c4 <__sfp_lock_release>
   1e2ec:	01813083          	ld	ra,24(sp)
   1e2f0:	00090513          	mv	a0,s2
   1e2f4:	01013403          	ld	s0,16(sp)
   1e2f8:	00813483          	ld	s1,8(sp)
   1e2fc:	00013903          	ld	s2,0(sp)
   1e300:	02010113          	addi	sp,sp,32
   1e304:	00008067          	ret
   1e308:	da8f80ef          	jal	168b0 <__sinit>
   1e30c:	f4dff06f          	j	1e258 <_fclose_r+0x2c>
   1e310:	fff00913          	li	s2,-1
   1e314:	f91ff06f          	j	1e2a4 <_fclose_r+0x78>
   1e318:	01843583          	ld	a1,24(s0)
   1e31c:	00048513          	mv	a0,s1
   1e320:	955f80ef          	jal	16c74 <_free_r>
   1e324:	f8dff06f          	j	1e2b0 <_fclose_r+0x84>
   1e328:	00000513          	li	a0,0
   1e32c:	00008067          	ret

000000000001e330 <fclose>:
   1e330:	00050593          	mv	a1,a0
   1e334:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   1e338:	ef5ff06f          	j	1e22c <_fclose_r>

000000000001e33c <__fputwc>:
   1e33c:	fb010113          	addi	sp,sp,-80
   1e340:	04813023          	sd	s0,64(sp)
   1e344:	03413023          	sd	s4,32(sp)
   1e348:	01513c23          	sd	s5,24(sp)
   1e34c:	04113423          	sd	ra,72(sp)
   1e350:	02913c23          	sd	s1,56(sp)
   1e354:	03213823          	sd	s2,48(sp)
   1e358:	03313423          	sd	s3,40(sp)
   1e35c:	01613823          	sd	s6,16(sp)
   1e360:	00050a93          	mv	s5,a0
   1e364:	00058a13          	mv	s4,a1
   1e368:	00060413          	mv	s0,a2
   1e36c:	af0f90ef          	jal	1765c <__locale_mb_cur_max>
   1e370:	00100793          	li	a5,1
   1e374:	10f50663          	beq	a0,a5,1e480 <__fputwc+0x144>
   1e378:	00810493          	addi	s1,sp,8
   1e37c:	0a440693          	addi	a3,s0,164
   1e380:	000a0613          	mv	a2,s4
   1e384:	00048593          	mv	a1,s1
   1e388:	000a8513          	mv	a0,s5
   1e38c:	565010ef          	jal	200f0 <_wcrtomb_r>
   1e390:	fff00793          	li	a5,-1
   1e394:	00050993          	mv	s3,a0
   1e398:	08f50e63          	beq	a0,a5,1e434 <__fputwc+0xf8>
   1e39c:	10050263          	beqz	a0,1e4a0 <__fputwc+0x164>
   1e3a0:	00814583          	lbu	a1,8(sp)
   1e3a4:	00c42783          	lw	a5,12(s0)
   1e3a8:	00000913          	li	s2,0
   1e3ac:	00a00b13          	li	s6,10
   1e3b0:	fff7879b          	addiw	a5,a5,-1
   1e3b4:	00f42623          	sw	a5,12(s0)
   1e3b8:	0207cc63          	bltz	a5,1e3f0 <__fputwc+0xb4>
   1e3bc:	00043783          	ld	a5,0(s0)
   1e3c0:	00b78023          	sb	a1,0(a5)
   1e3c4:	00043783          	ld	a5,0(s0)
   1e3c8:	00178793          	addi	a5,a5,1
   1e3cc:	00f43023          	sd	a5,0(s0)
   1e3d0:	00190913          	addi	s2,s2,1
   1e3d4:	00148493          	addi	s1,s1,1
   1e3d8:	0d397463          	bleu	s3,s2,1e4a0 <__fputwc+0x164>
   1e3dc:	00c42783          	lw	a5,12(s0)
   1e3e0:	0004c583          	lbu	a1,0(s1)
   1e3e4:	fff7879b          	addiw	a5,a5,-1
   1e3e8:	00f42623          	sw	a5,12(s0)
   1e3ec:	fc07d8e3          	bgez	a5,1e3bc <__fputwc+0x80>
   1e3f0:	02842703          	lw	a4,40(s0)
   1e3f4:	06e7ca63          	blt	a5,a4,1e468 <__fputwc+0x12c>
   1e3f8:	00043783          	ld	a5,0(s0)
   1e3fc:	00b78023          	sb	a1,0(a5)
   1e400:	00043783          	ld	a5,0(s0)
   1e404:	0007c703          	lbu	a4,0(a5)
   1e408:	00178793          	addi	a5,a5,1
   1e40c:	fd6710e3          	bne	a4,s6,1e3cc <__fputwc+0x90>
   1e410:	00040613          	mv	a2,s0
   1e414:	000b0593          	mv	a1,s6
   1e418:	000a8513          	mv	a0,s5
   1e41c:	e08f60ef          	jal	14a24 <__swbuf_r>
   1e420:	0015051b          	addiw	a0,a0,1
   1e424:	00153513          	seqz	a0,a0
   1e428:	fa0504e3          	beqz	a0,1e3d0 <__fputwc+0x94>
   1e42c:	fff00513          	li	a0,-1
   1e430:	0100006f          	j	1e440 <__fputwc+0x104>
   1e434:	01045783          	lhu	a5,16(s0)
   1e438:	0407e793          	ori	a5,a5,64
   1e43c:	00f41823          	sh	a5,16(s0)
   1e440:	04813083          	ld	ra,72(sp)
   1e444:	04013403          	ld	s0,64(sp)
   1e448:	03813483          	ld	s1,56(sp)
   1e44c:	03013903          	ld	s2,48(sp)
   1e450:	02813983          	ld	s3,40(sp)
   1e454:	02013a03          	ld	s4,32(sp)
   1e458:	01813a83          	ld	s5,24(sp)
   1e45c:	01013b03          	ld	s6,16(sp)
   1e460:	05010113          	addi	sp,sp,80
   1e464:	00008067          	ret
   1e468:	00040613          	mv	a2,s0
   1e46c:	000a8513          	mv	a0,s5
   1e470:	db4f60ef          	jal	14a24 <__swbuf_r>
   1e474:	0015051b          	addiw	a0,a0,1
   1e478:	00153513          	seqz	a0,a0
   1e47c:	fadff06f          	j	1e428 <__fputwc+0xec>
   1e480:	fffa079b          	addiw	a5,s4,-1
   1e484:	0fe00713          	li	a4,254
   1e488:	eef768e3          	bltu	a4,a5,1e378 <__fputwc+0x3c>
   1e48c:	0ffa7593          	andi	a1,s4,255
   1e490:	00b10423          	sb	a1,8(sp)
   1e494:	00100993          	li	s3,1
   1e498:	00810493          	addi	s1,sp,8
   1e49c:	f09ff06f          	j	1e3a4 <__fputwc+0x68>
   1e4a0:	000a0513          	mv	a0,s4
   1e4a4:	f9dff06f          	j	1e440 <__fputwc+0x104>

000000000001e4a8 <_fputwc_r>:
   1e4a8:	01061783          	lh	a5,16(a2)
   1e4ac:	00002737          	lui	a4,0x2
   1e4b0:	03279693          	slli	a3,a5,0x32
   1e4b4:	0006cc63          	bltz	a3,1e4cc <_fputwc_r+0x24>
   1e4b8:	0ac62683          	lw	a3,172(a2)
   1e4bc:	00e7e7b3          	or	a5,a5,a4
   1e4c0:	00f61823          	sh	a5,16(a2)
   1e4c4:	00e6e733          	or	a4,a3,a4
   1e4c8:	0ae62623          	sw	a4,172(a2)
   1e4cc:	e71ff06f          	j	1e33c <__fputwc>

000000000001e4d0 <fputwc>:
   1e4d0:	fd010113          	addi	sp,sp,-48
   1e4d4:	02813023          	sd	s0,32(sp)
   1e4d8:	8101b403          	ld	s0,-2032(gp) # 24400 <_impure_ptr>
   1e4dc:	00913c23          	sd	s1,24(sp)
   1e4e0:	02113423          	sd	ra,40(sp)
   1e4e4:	00050493          	mv	s1,a0
   1e4e8:	00058613          	mv	a2,a1
   1e4ec:	00040663          	beqz	s0,1e4f8 <fputwc+0x28>
   1e4f0:	05042783          	lw	a5,80(s0)
   1e4f4:	04078263          	beqz	a5,1e538 <fputwc+0x68>
   1e4f8:	01061783          	lh	a5,16(a2)
   1e4fc:	00002737          	lui	a4,0x2
   1e500:	03279693          	slli	a3,a5,0x32
   1e504:	0006cc63          	bltz	a3,1e51c <fputwc+0x4c>
   1e508:	0ac62683          	lw	a3,172(a2)
   1e50c:	00e7e7b3          	or	a5,a5,a4
   1e510:	00f61823          	sh	a5,16(a2)
   1e514:	00e6e733          	or	a4,a3,a4
   1e518:	0ae62623          	sw	a4,172(a2)
   1e51c:	00048593          	mv	a1,s1
   1e520:	00040513          	mv	a0,s0
   1e524:	02813083          	ld	ra,40(sp)
   1e528:	02013403          	ld	s0,32(sp)
   1e52c:	01813483          	ld	s1,24(sp)
   1e530:	03010113          	addi	sp,sp,48
   1e534:	e09ff06f          	j	1e33c <__fputwc>
   1e538:	00040513          	mv	a0,s0
   1e53c:	00b13423          	sd	a1,8(sp)
   1e540:	b70f80ef          	jal	168b0 <__sinit>
   1e544:	00813603          	ld	a2,8(sp)
   1e548:	fb1ff06f          	j	1e4f8 <fputwc+0x28>

000000000001e54c <rshift>:
   1e54c:	01452703          	lw	a4,20(a0)
   1e550:	4055d69b          	sraiw	a3,a1,0x5
   1e554:	01850893          	addi	a7,a0,24
   1e558:	08e6d863          	ble	a4,a3,1e5e8 <rshift+0x9c>
   1e55c:	00068613          	mv	a2,a3
   1e560:	00271713          	slli	a4,a4,0x2
   1e564:	00261613          	slli	a2,a2,0x2
   1e568:	01f5f593          	andi	a1,a1,31
   1e56c:	00e88733          	add	a4,a7,a4
   1e570:	00c88633          	add	a2,a7,a2
   1e574:	08058063          	beqz	a1,1e5f4 <rshift+0xa8>
   1e578:	00062783          	lw	a5,0(a2)
   1e57c:	02000e13          	li	t3,32
   1e580:	00460693          	addi	a3,a2,4
   1e584:	40be0e3b          	subw	t3,t3,a1
   1e588:	00b7d7bb          	srlw	a5,a5,a1
   1e58c:	0ae6f663          	bleu	a4,a3,1e638 <rshift+0xec>
   1e590:	00088313          	mv	t1,a7
   1e594:	0006a803          	lw	a6,0(a3)
   1e598:	00430313          	addi	t1,t1,4
   1e59c:	00468693          	addi	a3,a3,4
   1e5a0:	01c8183b          	sllw	a6,a6,t3
   1e5a4:	00f867b3          	or	a5,a6,a5
   1e5a8:	fef32e23          	sw	a5,-4(t1)
   1e5ac:	ffc6a783          	lw	a5,-4(a3)
   1e5b0:	00b7d7bb          	srlw	a5,a5,a1
   1e5b4:	fee6e0e3          	bltu	a3,a4,1e594 <rshift+0x48>
   1e5b8:	40c70733          	sub	a4,a4,a2
   1e5bc:	ffb70713          	addi	a4,a4,-5 # 1ffb <_ftext-0xe005>
   1e5c0:	ffc77713          	andi	a4,a4,-4
   1e5c4:	00470713          	addi	a4,a4,4
   1e5c8:	00e88733          	add	a4,a7,a4
   1e5cc:	00f72023          	sw	a5,0(a4)
   1e5d0:	00078463          	beqz	a5,1e5d8 <rshift+0x8c>
   1e5d4:	00470713          	addi	a4,a4,4
   1e5d8:	411707b3          	sub	a5,a4,a7
   1e5dc:	4027d793          	srai	a5,a5,0x2
   1e5e0:	0007879b          	sext.w	a5,a5
   1e5e4:	0480006f          	j	1e62c <rshift+0xe0>
   1e5e8:	00052a23          	sw	zero,20(a0)
   1e5ec:	00052c23          	sw	zero,24(a0)
   1e5f0:	00008067          	ret
   1e5f4:	00088793          	mv	a5,a7
   1e5f8:	00060693          	mv	a3,a2
   1e5fc:	fee676e3          	bleu	a4,a2,1e5e8 <rshift+0x9c>
   1e600:	00468693          	addi	a3,a3,4
   1e604:	ffc6a583          	lw	a1,-4(a3)
   1e608:	00478793          	addi	a5,a5,4
   1e60c:	feb7ae23          	sw	a1,-4(a5)
   1e610:	fee6e8e3          	bltu	a3,a4,1e600 <rshift+0xb4>
   1e614:	fff64793          	not	a5,a2
   1e618:	00e787b3          	add	a5,a5,a4
   1e61c:	ffc7f793          	andi	a5,a5,-4
   1e620:	00478793          	addi	a5,a5,4
   1e624:	4027d793          	srai	a5,a5,0x2
   1e628:	0007879b          	sext.w	a5,a5
   1e62c:	00f52a23          	sw	a5,20(a0)
   1e630:	fa078ee3          	beqz	a5,1e5ec <rshift+0xa0>
   1e634:	00008067          	ret
   1e638:	00088713          	mv	a4,a7
   1e63c:	f91ff06f          	j	1e5cc <rshift+0x80>

000000000001e640 <__gethex>:
   1e640:	f4010113          	addi	sp,sp,-192
   1e644:	00d13c23          	sd	a3,24(sp)
   1e648:	00e13423          	sd	a4,8(sp)
   1e64c:	02f12223          	sw	a5,36(sp)
   1e650:	0a113c23          	sd	ra,184(sp)
   1e654:	0a913423          	sd	s1,168(sp)
   1e658:	0b213023          	sd	s2,160(sp)
   1e65c:	09313c23          	sd	s3,152(sp)
   1e660:	00058913          	mv	s2,a1
   1e664:	09413823          	sd	s4,144(sp)
   1e668:	07713c23          	sd	s7,120(sp)
   1e66c:	00060993          	mv	s3,a2
   1e670:	0a813823          	sd	s0,176(sp)
   1e674:	09513423          	sd	s5,136(sp)
   1e678:	09613023          	sd	s6,128(sp)
   1e67c:	07813823          	sd	s8,112(sp)
   1e680:	07913423          	sd	s9,104(sp)
   1e684:	07a13023          	sd	s10,96(sp)
   1e688:	05b13c23          	sd	s11,88(sp)
   1e68c:	00050a13          	mv	s4,a0
   1e690:	fe9f80ef          	jal	17678 <_localeconv_r>
   1e694:	00053483          	ld	s1,0(a0)
   1e698:	00048513          	mv	a0,s1
   1e69c:	bb4f30ef          	jal	11a50 <strlen>
   1e6a0:	00093783          	ld	a5,0(s2)
   1e6a4:	00a486b3          	add	a3,s1,a0
   1e6a8:	fff6c683          	lbu	a3,-1(a3)
   1e6ac:	0027c703          	lbu	a4,2(a5)
   1e6b0:	00050b93          	mv	s7,a0
   1e6b4:	00d13823          	sd	a3,16(sp)
   1e6b8:	03000693          	li	a3,48
   1e6bc:	5cd71063          	bne	a4,a3,1ec7c <__gethex+0x63c>
   1e6c0:	00378793          	addi	a5,a5,3
   1e6c4:	00000b13          	li	s6,0
   1e6c8:	00070613          	mv	a2,a4
   1e6cc:	00078d93          	mv	s11,a5
   1e6d0:	00178793          	addi	a5,a5,1
   1e6d4:	fff7c703          	lbu	a4,-1(a5)
   1e6d8:	001b0b1b          	addiw	s6,s6,1
   1e6dc:	fec708e3          	beq	a4,a2,1e6cc <__gethex+0x8c>
   1e6e0:	000218b7          	lui	a7,0x21
   1e6e4:	3b888a93          	addi	s5,a7,952 # 213b8 <__hexdig>
   1e6e8:	00ea8733          	add	a4,s5,a4
   1e6ec:	00074783          	lbu	a5,0(a4)
   1e6f0:	1e078e63          	beqz	a5,1e8ec <__gethex+0x2ac>
   1e6f4:	000dc783          	lbu	a5,0(s11)
   1e6f8:	00000413          	li	s0,0
   1e6fc:	00000c93          	li	s9,0
   1e700:	00fa87b3          	add	a5,s5,a5
   1e704:	0007c783          	lbu	a5,0(a5)
   1e708:	000d8c13          	mv	s8,s11
   1e70c:	00078c63          	beqz	a5,1e724 <__gethex+0xe4>
   1e710:	001c0c13          	addi	s8,s8,1
   1e714:	000c4783          	lbu	a5,0(s8)
   1e718:	00fa87b3          	add	a5,s5,a5
   1e71c:	0007c783          	lbu	a5,0(a5)
   1e720:	fe0798e3          	bnez	a5,1e710 <__gethex+0xd0>
   1e724:	000b8613          	mv	a2,s7
   1e728:	00048593          	mv	a1,s1
   1e72c:	000c0513          	mv	a0,s8
   1e730:	101000ef          	jal	1f030 <strncmp>
   1e734:	1a050663          	beqz	a0,1e8e0 <__gethex+0x2a0>
   1e738:	000c4783          	lbu	a5,0(s8)
   1e73c:	500c8a63          	beqz	s9,1ec50 <__gethex+0x610>
   1e740:	419c0cbb          	subw	s9,s8,s9
   1e744:	002c9c9b          	slliw	s9,s9,0x2
   1e748:	41900cbb          	negw	s9,s9
   1e74c:	05000713          	li	a4,80
   1e750:	20e78e63          	beq	a5,a4,1e96c <__gethex+0x32c>
   1e754:	07000713          	li	a4,112
   1e758:	000c0d13          	mv	s10,s8
   1e75c:	20e78863          	beq	a5,a4,1e96c <__gethex+0x32c>
   1e760:	01893023          	sd	s8,0(s2)
   1e764:	1a041c63          	bnez	s0,1e91c <__gethex+0x2dc>
   1e768:	41bd07b3          	sub	a5,s10,s11
   1e76c:	fff7879b          	addiw	a5,a5,-1
   1e770:	00700713          	li	a4,7
   1e774:	00000593          	li	a1,0
   1e778:	00f75863          	ble	a5,a4,1e788 <__gethex+0x148>
   1e77c:	4017d79b          	sraiw	a5,a5,0x1
   1e780:	0015859b          	addiw	a1,a1,1
   1e784:	fef74ce3          	blt	a4,a5,1e77c <__gethex+0x13c>
   1e788:	000a0513          	mv	a0,s4
   1e78c:	e00f90ef          	jal	17d8c <_Balloc>
   1e790:	01850913          	addi	s2,a0,24
   1e794:	00050b13          	mv	s6,a0
   1e798:	00090313          	mv	t1,s2
   1e79c:	00000793          	li	a5,0
   1e7a0:	05adf863          	bleu	s10,s11,1e7f0 <__gethex+0x1b0>
   1e7a4:	01012403          	lw	s0,16(sp)
   1e7a8:	00100f13          	li	t5,1
   1e7ac:	00000c13          	li	s8,0
   1e7b0:	417f0f33          	sub	t5,t5,s7
   1e7b4:	02000e13          	li	t3,32
   1e7b8:	fffd4703          	lbu	a4,-1(s10)
   1e7bc:	fffd0f93          	addi	t6,s10,-1
   1e7c0:	0a870c63          	beq	a4,s0,1e878 <__gethex+0x238>
   1e7c4:	11cc0263          	beq	s8,t3,1e8c8 <__gethex+0x288>
   1e7c8:	000c0613          	mv	a2,s8
   1e7cc:	004c0c1b          	addiw	s8,s8,4
   1e7d0:	fffd4683          	lbu	a3,-1(s10)
   1e7d4:	000f8d13          	mv	s10,t6
   1e7d8:	00da86b3          	add	a3,s5,a3
   1e7dc:	0006c703          	lbu	a4,0(a3)
   1e7e0:	00f77713          	andi	a4,a4,15
   1e7e4:	00c7173b          	sllw	a4,a4,a2
   1e7e8:	00e7e7b3          	or	a5,a5,a4
   1e7ec:	fdade6e3          	bltu	s11,s10,1e7b8 <__gethex+0x178>
   1e7f0:	00430713          	addi	a4,t1,4
   1e7f4:	41270733          	sub	a4,a4,s2
   1e7f8:	40275713          	srai	a4,a4,0x2
   1e7fc:	0007071b          	sext.w	a4,a4
   1e800:	00f32023          	sw	a5,0(t1)
   1e804:	00eb2a23          	sw	a4,20(s6)
   1e808:	00078513          	mv	a0,a5
   1e80c:	0057141b          	slliw	s0,a4,0x5
   1e810:	889f90ef          	jal	18098 <__hi0bits>
   1e814:	0009a483          	lw	s1,0(s3)
   1e818:	40a4053b          	subw	a0,s0,a0
   1e81c:	3ca4c663          	blt	s1,a0,1ebe8 <__gethex+0x5a8>
   1e820:	00000c13          	li	s8,0
   1e824:	42954a63          	blt	a0,s1,1ec58 <__gethex+0x618>
   1e828:	0089a783          	lw	a5,8(s3)
   1e82c:	2f97ce63          	blt	a5,s9,1eb28 <__gethex+0x4e8>
   1e830:	0049a783          	lw	a5,4(s3)
   1e834:	36fcd863          	ble	a5,s9,1eba4 <__gethex+0x564>
   1e838:	41978cbb          	subw	s9,a5,s9
   1e83c:	1c9ccc63          	blt	s9,s1,1ea14 <__gethex+0x3d4>
   1e840:	00c9a703          	lw	a4,12(s3)
   1e844:	00200693          	li	a3,2
   1e848:	4ad70a63          	beq	a4,a3,1ecfc <__gethex+0x6bc>
   1e84c:	00300693          	li	a3,3
   1e850:	46d70c63          	beq	a4,a3,1ecc8 <__gethex+0x688>
   1e854:	00100693          	li	a3,1
   1e858:	4ad70863          	beq	a4,a3,1ed08 <__gethex+0x6c8>
   1e85c:	000a0513          	mv	a0,s4
   1e860:	000b0593          	mv	a1,s6
   1e864:	dd4f90ef          	jal	17e38 <_Bfree>
   1e868:	00813783          	ld	a5,8(sp)
   1e86c:	05000513          	li	a0,80
   1e870:	0007b023          	sd	zero,0(a5)
   1e874:	0b40006f          	j	1e928 <__gethex+0x2e8>
   1e878:	01ef8733          	add	a4,t6,t5
   1e87c:	f5b764e3          	bltu	a4,s11,1e7c4 <__gethex+0x184>
   1e880:	00070513          	mv	a0,a4
   1e884:	000b8613          	mv	a2,s7
   1e888:	00048593          	mv	a1,s1
   1e88c:	05c13023          	sd	t3,64(sp)
   1e890:	03e13c23          	sd	t5,56(sp)
   1e894:	02f13823          	sd	a5,48(sp)
   1e898:	02613423          	sd	t1,40(sp)
   1e89c:	00e13823          	sd	a4,16(sp)
   1e8a0:	05f13423          	sd	t6,72(sp)
   1e8a4:	78c000ef          	jal	1f030 <strncmp>
   1e8a8:	01013703          	ld	a4,16(sp)
   1e8ac:	02813303          	ld	t1,40(sp)
   1e8b0:	03013783          	ld	a5,48(sp)
   1e8b4:	03813f03          	ld	t5,56(sp)
   1e8b8:	04013e03          	ld	t3,64(sp)
   1e8bc:	28050463          	beqz	a0,1eb44 <__gethex+0x504>
   1e8c0:	04813f83          	ld	t6,72(sp)
   1e8c4:	f1cc12e3          	bne	s8,t3,1e7c8 <__gethex+0x188>
   1e8c8:	00f32023          	sw	a5,0(t1)
   1e8cc:	00400c13          	li	s8,4
   1e8d0:	00430313          	addi	t1,t1,4
   1e8d4:	00000793          	li	a5,0
   1e8d8:	00000613          	li	a2,0
   1e8dc:	ef5ff06f          	j	1e7d0 <__gethex+0x190>
   1e8e0:	3a0c8863          	beqz	s9,1ec90 <__gethex+0x650>
   1e8e4:	000c4783          	lbu	a5,0(s8)
   1e8e8:	e59ff06f          	j	1e740 <__gethex+0x100>
   1e8ec:	000b8613          	mv	a2,s7
   1e8f0:	00048593          	mv	a1,s1
   1e8f4:	000d8513          	mv	a0,s11
   1e8f8:	738000ef          	jal	1f030 <strncmp>
   1e8fc:	26050063          	beqz	a0,1eb5c <__gethex+0x51c>
   1e900:	000dc783          	lbu	a5,0(s11)
   1e904:	000d8c13          	mv	s8,s11
   1e908:	05000713          	li	a4,80
   1e90c:	04e78c63          	beq	a5,a4,1e964 <__gethex+0x324>
   1e910:	07000713          	li	a4,112
   1e914:	04e78863          	beq	a5,a4,1e964 <__gethex+0x324>
   1e918:	01893023          	sd	s8,0(s2)
   1e91c:	001b3513          	seqz	a0,s6
   1e920:	40a0053b          	negw	a0,a0
   1e924:	00657513          	andi	a0,a0,6
   1e928:	0b813083          	ld	ra,184(sp)
   1e92c:	0b013403          	ld	s0,176(sp)
   1e930:	0a813483          	ld	s1,168(sp)
   1e934:	0a013903          	ld	s2,160(sp)
   1e938:	09813983          	ld	s3,152(sp)
   1e93c:	09013a03          	ld	s4,144(sp)
   1e940:	08813a83          	ld	s5,136(sp)
   1e944:	08013b03          	ld	s6,128(sp)
   1e948:	07813b83          	ld	s7,120(sp)
   1e94c:	07013c03          	ld	s8,112(sp)
   1e950:	06813c83          	ld	s9,104(sp)
   1e954:	06013d03          	ld	s10,96(sp)
   1e958:	05813d83          	ld	s11,88(sp)
   1e95c:	0c010113          	addi	sp,sp,192
   1e960:	00008067          	ret
   1e964:	00000c93          	li	s9,0
   1e968:	00100413          	li	s0,1
   1e96c:	001c4783          	lbu	a5,1(s8)
   1e970:	02b00713          	li	a4,43
   1e974:	26e78663          	beq	a5,a4,1ebe0 <__gethex+0x5a0>
   1e978:	02d00713          	li	a4,45
   1e97c:	00100593          	li	a1,1
   1e980:	1ce79863          	bne	a5,a4,1eb50 <__gethex+0x510>
   1e984:	002c4783          	lbu	a5,2(s8)
   1e988:	002c0513          	addi	a0,s8,2
   1e98c:	00fa87b3          	add	a5,s5,a5
   1e990:	0007c783          	lbu	a5,0(a5)
   1e994:	01800e13          	li	t3,24
   1e998:	000c0d13          	mv	s10,s8
   1e99c:	fff7871b          	addiw	a4,a5,-1
   1e9a0:	0ff77713          	andi	a4,a4,255
   1e9a4:	daee6ee3          	bltu	t3,a4,1e760 <__gethex+0x120>
   1e9a8:	00154703          	lbu	a4,1(a0)
   1e9ac:	ff07879b          	addiw	a5,a5,-16
   1e9b0:	00150513          	addi	a0,a0,1
   1e9b4:	00ea8733          	add	a4,s5,a4
   1e9b8:	00074e83          	lbu	t4,0(a4)
   1e9bc:	fffe871b          	addiw	a4,t4,-1
   1e9c0:	0ff77713          	andi	a4,a4,255
   1e9c4:	02ee6c63          	bltu	t3,a4,1e9fc <__gethex+0x3bc>
   1e9c8:	00150513          	addi	a0,a0,1
   1e9cc:	00054603          	lbu	a2,0(a0)
   1e9d0:	0017971b          	slliw	a4,a5,0x1
   1e9d4:	0037979b          	slliw	a5,a5,0x3
   1e9d8:	00ca8633          	add	a2,s5,a2
   1e9dc:	00064603          	lbu	a2,0(a2)
   1e9e0:	00f707bb          	addw	a5,a4,a5
   1e9e4:	01d787bb          	addw	a5,a5,t4
   1e9e8:	fff6071b          	addiw	a4,a2,-1
   1e9ec:	0ff77713          	andi	a4,a4,255
   1e9f0:	ff07879b          	addiw	a5,a5,-16
   1e9f4:	00060e93          	mv	t4,a2
   1e9f8:	fcee78e3          	bleu	a4,t3,1e9c8 <__gethex+0x388>
   1e9fc:	00058463          	beqz	a1,1ea04 <__gethex+0x3c4>
   1ea00:	40f007bb          	negw	a5,a5
   1ea04:	000c0d13          	mv	s10,s8
   1ea08:	00fc8cbb          	addw	s9,s9,a5
   1ea0c:	00050c13          	mv	s8,a0
   1ea10:	d51ff06f          	j	1e760 <__gethex+0x120>
   1ea14:	fffc841b          	addiw	s0,s9,-1
   1ea18:	2a0c1463          	bnez	s8,1ecc0 <__gethex+0x680>
   1ea1c:	00040a63          	beqz	s0,1ea30 <__gethex+0x3f0>
   1ea20:	00040593          	mv	a1,s0
   1ea24:	000b0513          	mv	a0,s6
   1ea28:	b44fa0ef          	jal	18d6c <__any_on>
   1ea2c:	00050c13          	mv	s8,a0
   1ea30:	4054579b          	sraiw	a5,s0,0x5
   1ea34:	00279793          	slli	a5,a5,0x2
   1ea38:	00f907b3          	add	a5,s2,a5
   1ea3c:	0007a783          	lw	a5,0(a5)
   1ea40:	00100713          	li	a4,1
   1ea44:	0087173b          	sllw	a4,a4,s0
   1ea48:	00f777b3          	and	a5,a4,a5
   1ea4c:	00078463          	beqz	a5,1ea54 <__gethex+0x414>
   1ea50:	002c6c13          	ori	s8,s8,2
   1ea54:	000c8593          	mv	a1,s9
   1ea58:	000b0513          	mv	a0,s6
   1ea5c:	af1ff0ef          	jal	1e54c <rshift>
   1ea60:	419484bb          	subw	s1,s1,s9
   1ea64:	0049ac83          	lw	s9,4(s3)
   1ea68:	00200413          	li	s0,2
   1ea6c:	140c0e63          	beqz	s8,1ebc8 <__gethex+0x588>
   1ea70:	00c9a783          	lw	a5,12(s3)
   1ea74:	00200713          	li	a4,2
   1ea78:	12e78a63          	beq	a5,a4,1ebac <__gethex+0x56c>
   1ea7c:	00300713          	li	a4,3
   1ea80:	12e78e63          	beq	a5,a4,1ebbc <__gethex+0x57c>
   1ea84:	00100713          	li	a4,1
   1ea88:	12e79e63          	bne	a5,a4,1ebc4 <__gethex+0x584>
   1ea8c:	002c7793          	andi	a5,s8,2
   1ea90:	12078a63          	beqz	a5,1ebc4 <__gethex+0x584>
   1ea94:	00092783          	lw	a5,0(s2)
   1ea98:	00fc67b3          	or	a5,s8,a5
   1ea9c:	00e7f7b3          	and	a5,a5,a4
   1eaa0:	12078263          	beqz	a5,1ebc4 <__gethex+0x584>
   1eaa4:	014b2c03          	lw	s8,20(s6)
   1eaa8:	00090793          	mv	a5,s2
   1eaac:	fff00693          	li	a3,-1
   1eab0:	002c1b93          	slli	s7,s8,0x2
   1eab4:	01790633          	add	a2,s2,s7
   1eab8:	0100006f          	j	1eac8 <__gethex+0x488>
   1eabc:	00478793          	addi	a5,a5,4
   1eac0:	fe07ae23          	sw	zero,-4(a5)
   1eac4:	26c7f263          	bleu	a2,a5,1ed28 <__gethex+0x6e8>
   1eac8:	0007a703          	lw	a4,0(a5)
   1eacc:	fed708e3          	beq	a4,a3,1eabc <__gethex+0x47c>
   1ead0:	0017071b          	addiw	a4,a4,1
   1ead4:	00e7a023          	sw	a4,0(a5)
   1ead8:	00200793          	li	a5,2
   1eadc:	26f40c63          	beq	s0,a5,1ed54 <__gethex+0x714>
   1eae0:	014b2783          	lw	a5,20(s6)
   1eae4:	02fc4463          	blt	s8,a5,1eb0c <__gethex+0x4cc>
   1eae8:	01f4f493          	andi	s1,s1,31
   1eaec:	02100413          	li	s0,33
   1eaf0:	0c048c63          	beqz	s1,1ebc8 <__gethex+0x588>
   1eaf4:	01790933          	add	s2,s2,s7
   1eaf8:	ffc92503          	lw	a0,-4(s2)
   1eafc:	d9cf90ef          	jal	18098 <__hi0bits>
   1eb00:	02000793          	li	a5,32
   1eb04:	409784bb          	subw	s1,a5,s1
   1eb08:	0c955063          	ble	s1,a0,1ebc8 <__gethex+0x588>
   1eb0c:	00100593          	li	a1,1
   1eb10:	000b0513          	mv	a0,s6
   1eb14:	a39ff0ef          	jal	1e54c <rshift>
   1eb18:	0089a783          	lw	a5,8(s3)
   1eb1c:	001c8c9b          	addiw	s9,s9,1
   1eb20:	02100413          	li	s0,33
   1eb24:	0b97d263          	ble	s9,a5,1ebc8 <__gethex+0x588>
   1eb28:	000a0513          	mv	a0,s4
   1eb2c:	000b0593          	mv	a1,s6
   1eb30:	b08f90ef          	jal	17e38 <_Bfree>
   1eb34:	00813783          	ld	a5,8(sp)
   1eb38:	0a300513          	li	a0,163
   1eb3c:	0007b023          	sd	zero,0(a5)
   1eb40:	de9ff06f          	j	1e928 <__gethex+0x2e8>
   1eb44:	00070d13          	mv	s10,a4
   1eb48:	c7ade8e3          	bltu	s11,s10,1e7b8 <__gethex+0x178>
   1eb4c:	ca5ff06f          	j	1e7f0 <__gethex+0x1b0>
   1eb50:	001c0513          	addi	a0,s8,1
   1eb54:	00000593          	li	a1,0
   1eb58:	e35ff06f          	j	1e98c <__gethex+0x34c>
   1eb5c:	017d8c33          	add	s8,s11,s7
   1eb60:	000c4703          	lbu	a4,0(s8)
   1eb64:	00ea87b3          	add	a5,s5,a4
   1eb68:	0007c783          	lbu	a5,0(a5)
   1eb6c:	10078e63          	beqz	a5,1ec88 <__gethex+0x648>
   1eb70:	03000693          	li	a3,48
   1eb74:	000c0d93          	mv	s11,s8
   1eb78:	00d71e63          	bne	a4,a3,1eb94 <__gethex+0x554>
   1eb7c:	00070793          	mv	a5,a4
   1eb80:	001d8d93          	addi	s11,s11,1
   1eb84:	000dc703          	lbu	a4,0(s11)
   1eb88:	fef70ce3          	beq	a4,a5,1eb80 <__gethex+0x540>
   1eb8c:	00ea87b3          	add	a5,s5,a4
   1eb90:	0007c783          	lbu	a5,0(a5)
   1eb94:	0017b413          	seqz	s0,a5
   1eb98:	000c0c93          	mv	s9,s8
   1eb9c:	00100b13          	li	s6,1
   1eba0:	b69ff06f          	j	1e708 <__gethex+0xc8>
   1eba4:	00100413          	li	s0,1
   1eba8:	ec5ff06f          	j	1ea6c <__gethex+0x42c>
   1ebac:	02412703          	lw	a4,36(sp)
   1ebb0:	00100793          	li	a5,1
   1ebb4:	40e787bb          	subw	a5,a5,a4
   1ebb8:	02f12223          	sw	a5,36(sp)
   1ebbc:	02412783          	lw	a5,36(sp)
   1ebc0:	ee0792e3          	bnez	a5,1eaa4 <__gethex+0x464>
   1ebc4:	01046413          	ori	s0,s0,16
   1ebc8:	00813783          	ld	a5,8(sp)
   1ebcc:	00040513          	mv	a0,s0
   1ebd0:	0167b023          	sd	s6,0(a5)
   1ebd4:	01813783          	ld	a5,24(sp)
   1ebd8:	0197a023          	sw	s9,0(a5)
   1ebdc:	d4dff06f          	j	1e928 <__gethex+0x2e8>
   1ebe0:	00000593          	li	a1,0
   1ebe4:	da1ff06f          	j	1e984 <__gethex+0x344>
   1ebe8:	4095043b          	subw	s0,a0,s1
   1ebec:	00040593          	mv	a1,s0
   1ebf0:	000b0513          	mv	a0,s6
   1ebf4:	978fa0ef          	jal	18d6c <__any_on>
   1ebf8:	00000c13          	li	s8,0
   1ebfc:	04050063          	beqz	a0,1ec3c <__gethex+0x5fc>
   1ec00:	fff4071b          	addiw	a4,s0,-1
   1ec04:	4057579b          	sraiw	a5,a4,0x5
   1ec08:	00279793          	slli	a5,a5,0x2
   1ec0c:	00f907b3          	add	a5,s2,a5
   1ec10:	0007a783          	lw	a5,0(a5)
   1ec14:	00100c13          	li	s8,1
   1ec18:	00ec16bb          	sllw	a3,s8,a4
   1ec1c:	00f6f7b3          	and	a5,a3,a5
   1ec20:	00078e63          	beqz	a5,1ec3c <__gethex+0x5fc>
   1ec24:	0cec5863          	ble	a4,s8,1ecf4 <__gethex+0x6b4>
   1ec28:	ffe4059b          	addiw	a1,s0,-2
   1ec2c:	000b0513          	mv	a0,s6
   1ec30:	93cfa0ef          	jal	18d6c <__any_on>
   1ec34:	0c050063          	beqz	a0,1ecf4 <__gethex+0x6b4>
   1ec38:	00300c13          	li	s8,3
   1ec3c:	00040593          	mv	a1,s0
   1ec40:	000b0513          	mv	a0,s6
   1ec44:	909ff0ef          	jal	1e54c <rshift>
   1ec48:	008c8cbb          	addw	s9,s9,s0
   1ec4c:	bddff06f          	j	1e828 <__gethex+0x1e8>
   1ec50:	00000c93          	li	s9,0
   1ec54:	af9ff06f          	j	1e74c <__gethex+0x10c>
   1ec58:	40a4843b          	subw	s0,s1,a0
   1ec5c:	000b0593          	mv	a1,s6
   1ec60:	00040613          	mv	a2,s0
   1ec64:	000a0513          	mv	a0,s4
   1ec68:	8bdf90ef          	jal	18524 <__lshift>
   1ec6c:	00050b13          	mv	s6,a0
   1ec70:	408c8cbb          	subw	s9,s9,s0
   1ec74:	01850913          	addi	s2,a0,24
   1ec78:	bb1ff06f          	j	1e828 <__gethex+0x1e8>
   1ec7c:	00278d93          	addi	s11,a5,2
   1ec80:	00000b13          	li	s6,0
   1ec84:	a5dff06f          	j	1e6e0 <__gethex+0xa0>
   1ec88:	00070793          	mv	a5,a4
   1ec8c:	c7dff06f          	j	1e908 <__gethex+0x2c8>
   1ec90:	017c0cb3          	add	s9,s8,s7
   1ec94:	000cc783          	lbu	a5,0(s9)
   1ec98:	000c8c13          	mv	s8,s9
   1ec9c:	00fa8733          	add	a4,s5,a5
   1eca0:	00074703          	lbu	a4,0(a4)
   1eca4:	a8070ee3          	beqz	a4,1e740 <__gethex+0x100>
   1eca8:	001c0c13          	addi	s8,s8,1
   1ecac:	000c4783          	lbu	a5,0(s8)
   1ecb0:	00fa8733          	add	a4,s5,a5
   1ecb4:	00074703          	lbu	a4,0(a4)
   1ecb8:	fe0718e3          	bnez	a4,1eca8 <__gethex+0x668>
   1ecbc:	a85ff06f          	j	1e740 <__gethex+0x100>
   1ecc0:	00100c13          	li	s8,1
   1ecc4:	d6dff06f          	j	1ea30 <__gethex+0x3f0>
   1ecc8:	02412703          	lw	a4,36(sp)
   1eccc:	b80708e3          	beqz	a4,1e85c <__gethex+0x21c>
   1ecd0:	01813703          	ld	a4,24(sp)
   1ecd4:	06200513          	li	a0,98
   1ecd8:	00f72023          	sw	a5,0(a4)
   1ecdc:	00100793          	li	a5,1
   1ece0:	00fb2a23          	sw	a5,20(s6)
   1ece4:	00f92023          	sw	a5,0(s2)
   1ece8:	00813783          	ld	a5,8(sp)
   1ecec:	0167b023          	sd	s6,0(a5)
   1ecf0:	c39ff06f          	j	1e928 <__gethex+0x2e8>
   1ecf4:	00200c13          	li	s8,2
   1ecf8:	f45ff06f          	j	1ec3c <__gethex+0x5fc>
   1ecfc:	02412703          	lw	a4,36(sp)
   1ed00:	fc0708e3          	beqz	a4,1ecd0 <__gethex+0x690>
   1ed04:	b59ff06f          	j	1e85c <__gethex+0x21c>
   1ed08:	b5949ae3          	bne	s1,s9,1e85c <__gethex+0x21c>
   1ed0c:	fc9752e3          	ble	s1,a4,1ecd0 <__gethex+0x690>
   1ed10:	fff4859b          	addiw	a1,s1,-1
   1ed14:	000b0513          	mv	a0,s6
   1ed18:	854fa0ef          	jal	18d6c <__any_on>
   1ed1c:	b40500e3          	beqz	a0,1e85c <__gethex+0x21c>
   1ed20:	0049a783          	lw	a5,4(s3)
   1ed24:	fadff06f          	j	1ecd0 <__gethex+0x690>
   1ed28:	014b2703          	lw	a4,20(s6)
   1ed2c:	00cb2783          	lw	a5,12(s6)
   1ed30:	04f75c63          	ble	a5,a4,1ed88 <__gethex+0x748>
   1ed34:	00470793          	addi	a5,a4,4
   1ed38:	00279793          	slli	a5,a5,0x2
   1ed3c:	0017071b          	addiw	a4,a4,1
   1ed40:	00eb2a23          	sw	a4,20(s6)
   1ed44:	00fb07b3          	add	a5,s6,a5
   1ed48:	00100713          	li	a4,1
   1ed4c:	00e7a423          	sw	a4,8(a5)
   1ed50:	d89ff06f          	j	1ead8 <__gethex+0x498>
   1ed54:	0009a783          	lw	a5,0(s3)
   1ed58:	02200413          	li	s0,34
   1ed5c:	fff7879b          	addiw	a5,a5,-1
   1ed60:	e6f494e3          	bne	s1,a5,1ebc8 <__gethex+0x588>
   1ed64:	4054d79b          	sraiw	a5,s1,0x5
   1ed68:	00279793          	slli	a5,a5,0x2
   1ed6c:	00f90933          	add	s2,s2,a5
   1ed70:	00092503          	lw	a0,0(s2)
   1ed74:	02200793          	li	a5,34
   1ed78:	0095553b          	srlw	a0,a0,s1
   1ed7c:	00157413          	andi	s0,a0,1
   1ed80:	4087843b          	subw	s0,a5,s0
   1ed84:	e45ff06f          	j	1ebc8 <__gethex+0x588>
   1ed88:	008b2583          	lw	a1,8(s6)
   1ed8c:	000a0513          	mv	a0,s4
   1ed90:	0015859b          	addiw	a1,a1,1
   1ed94:	ff9f80ef          	jal	17d8c <_Balloc>
   1ed98:	014b2603          	lw	a2,20(s6)
   1ed9c:	00050d13          	mv	s10,a0
   1eda0:	010b0593          	addi	a1,s6,16
   1eda4:	00260613          	addi	a2,a2,2
   1eda8:	00261613          	slli	a2,a2,0x2
   1edac:	01050513          	addi	a0,a0,16
   1edb0:	eecf20ef          	jal	1149c <memcpy>
   1edb4:	000b0593          	mv	a1,s6
   1edb8:	000a0513          	mv	a0,s4
   1edbc:	87cf90ef          	jal	17e38 <_Bfree>
   1edc0:	014d2703          	lw	a4,20(s10)
   1edc4:	018d0913          	addi	s2,s10,24
   1edc8:	000d0b13          	mv	s6,s10
   1edcc:	f69ff06f          	j	1ed34 <__gethex+0x6f4>

000000000001edd0 <__hexnan>:
   1edd0:	fd010113          	addi	sp,sp,-48
   1edd4:	01213c23          	sd	s2,24(sp)
   1edd8:	0005a903          	lw	s2,0(a1)
   1eddc:	02913023          	sd	s1,32(sp)
   1ede0:	02813423          	sd	s0,40(sp)
   1ede4:	4059549b          	sraiw	s1,s2,0x5
   1ede8:	00249493          	slli	s1,s1,0x2
   1edec:	01313823          	sd	s3,16(sp)
   1edf0:	01413423          	sd	s4,8(sp)
   1edf4:	01f97913          	andi	s2,s2,31
   1edf8:	009604b3          	add	s1,a2,s1
   1edfc:	00090463          	beqz	s2,1ee04 <__hexnan+0x34>
   1ee00:	00448493          	addi	s1,s1,4
   1ee04:	00053683          	ld	a3,0(a0)
   1ee08:	ffc48313          	addi	t1,s1,-4
   1ee0c:	00021fb7          	lui	t6,0x21
   1ee10:	fe04ae23          	sw	zero,-4(s1)
   1ee14:	00030f13          	mv	t5,t1
   1ee18:	00030593          	mv	a1,t1
   1ee1c:	00000813          	li	a6,0
   1ee20:	00000293          	li	t0,0
   1ee24:	00000e93          	li	t4,0
   1ee28:	3b8f8f93          	addi	t6,t6,952 # 213b8 <__hexdig>
   1ee2c:	00800413          	li	s0,8
   1ee30:	02000393          	li	t2,32
   1ee34:	00700993          	li	s3,7
   1ee38:	00168693          	addi	a3,a3,1
   1ee3c:	0006c703          	lbu	a4,0(a3)
   1ee40:	08070263          	beqz	a4,1eec4 <__hexnan+0xf4>
   1ee44:	02071793          	slli	a5,a4,0x20
   1ee48:	0207d793          	srli	a5,a5,0x20
   1ee4c:	01f787b3          	add	a5,a5,t6
   1ee50:	0007c783          	lbu	a5,0(a5)
   1ee54:	0e079263          	bnez	a5,1ef38 <__hexnan+0x168>
   1ee58:	10e3ea63          	bltu	t2,a4,1ef6c <__hexnan+0x19c>
   1ee5c:	fdd2dee3          	ble	t4,t0,1ee38 <__hexnan+0x68>
   1ee60:	03e5fe63          	bleu	t5,a1,1ee9c <__hexnan+0xcc>
   1ee64:	0309cc63          	blt	s3,a6,1ee9c <__hexnan+0xcc>
   1ee68:	4104083b          	subw	a6,s0,a6
   1ee6c:	0005a883          	lw	a7,0(a1)
   1ee70:	0028181b          	slliw	a6,a6,0x2
   1ee74:	41038a3b          	subw	s4,t2,a6
   1ee78:	00058793          	mv	a5,a1
   1ee7c:	0047ae03          	lw	t3,4(a5)
   1ee80:	00478793          	addi	a5,a5,4
   1ee84:	014e173b          	sllw	a4,t3,s4
   1ee88:	01176733          	or	a4,a4,a7
   1ee8c:	010e58bb          	srlw	a7,t3,a6
   1ee90:	fee7ae23          	sw	a4,-4(a5)
   1ee94:	0117a023          	sw	a7,0(a5)
   1ee98:	ffe7e2e3          	bltu	a5,t5,1ee7c <__hexnan+0xac>
   1ee9c:	00800813          	li	a6,8
   1eea0:	f8b67ce3          	bleu	a1,a2,1ee38 <__hexnan+0x68>
   1eea4:	fe05ae23          	sw	zero,-4(a1)
   1eea8:	00168693          	addi	a3,a3,1
   1eeac:	0006c703          	lbu	a4,0(a3)
   1eeb0:	ffc58f13          	addi	t5,a1,-4
   1eeb4:	000e8293          	mv	t0,t4
   1eeb8:	000f0593          	mv	a1,t5
   1eebc:	00000813          	li	a6,0
   1eec0:	f80712e3          	bnez	a4,1ee44 <__hexnan+0x74>
   1eec4:	0a0e8863          	beqz	t4,1ef74 <__hexnan+0x1a4>
   1eec8:	01e5f663          	bleu	t5,a1,1eed4 <__hexnan+0x104>
   1eecc:	00700793          	li	a5,7
   1eed0:	1307d063          	ble	a6,a5,1eff0 <__hexnan+0x220>
   1eed4:	0cb67063          	bleu	a1,a2,1ef94 <__hexnan+0x1c4>
   1eed8:	00060793          	mv	a5,a2
   1eedc:	00458593          	addi	a1,a1,4
   1eee0:	ffc5a703          	lw	a4,-4(a1)
   1eee4:	00478793          	addi	a5,a5,4
   1eee8:	fee7ae23          	sw	a4,-4(a5)
   1eeec:	feb378e3          	bleu	a1,t1,1eedc <__hexnan+0x10c>
   1eef0:	00478793          	addi	a5,a5,4
   1eef4:	fe07ae23          	sw	zero,-4(a5)
   1eef8:	fef37ce3          	bleu	a5,t1,1eef0 <__hexnan+0x120>
   1eefc:	ffc4a783          	lw	a5,-4(s1)
   1ef00:	00500513          	li	a0,5
   1ef04:	06079a63          	bnez	a5,1ef78 <__hexnan+0x1a8>
   1ef08:	0a660863          	beq	a2,t1,1efb8 <__hexnan+0x1e8>
   1ef0c:	ffc30313          	addi	t1,t1,-4
   1ef10:	00032783          	lw	a5,0(t1)
   1ef14:	fe078ae3          	beqz	a5,1ef08 <__hexnan+0x138>
   1ef18:	00500513          	li	a0,5
   1ef1c:	02813403          	ld	s0,40(sp)
   1ef20:	02013483          	ld	s1,32(sp)
   1ef24:	01813903          	ld	s2,24(sp)
   1ef28:	01013983          	ld	s3,16(sp)
   1ef2c:	00813a03          	ld	s4,8(sp)
   1ef30:	03010113          	addi	sp,sp,48
   1ef34:	00008067          	ret
   1ef38:	0018081b          	addiw	a6,a6,1
   1ef3c:	001e8e9b          	addiw	t4,t4,1
   1ef40:	01045a63          	ble	a6,s0,1ef54 <__hexnan+0x184>
   1ef44:	eeb67ae3          	bleu	a1,a2,1ee38 <__hexnan+0x68>
   1ef48:	fe05ae23          	sw	zero,-4(a1)
   1ef4c:	00100813          	li	a6,1
   1ef50:	ffc58593          	addi	a1,a1,-4
   1ef54:	0005a703          	lw	a4,0(a1)
   1ef58:	00f7f793          	andi	a5,a5,15
   1ef5c:	0047171b          	slliw	a4,a4,0x4
   1ef60:	00f767b3          	or	a5,a4,a5
   1ef64:	00f5a023          	sw	a5,0(a1)
   1ef68:	ed1ff06f          	j	1ee38 <__hexnan+0x68>
   1ef6c:	02900793          	li	a5,41
   1ef70:	06f70863          	beq	a4,a5,1efe0 <__hexnan+0x210>
   1ef74:	00400513          	li	a0,4
   1ef78:	02813403          	ld	s0,40(sp)
   1ef7c:	02013483          	ld	s1,32(sp)
   1ef80:	01813903          	ld	s2,24(sp)
   1ef84:	01013983          	ld	s3,16(sp)
   1ef88:	00813a03          	ld	s4,8(sp)
   1ef8c:	03010113          	addi	sp,sp,48
   1ef90:	00008067          	ret
   1ef94:	ffc4a783          	lw	a5,-4(s1)
   1ef98:	f60904e3          	beqz	s2,1ef00 <__hexnan+0x130>
   1ef9c:	02000713          	li	a4,32
   1efa0:	4127093b          	subw	s2,a4,s2
   1efa4:	fff00713          	li	a4,-1
   1efa8:	0127573b          	srlw	a4,a4,s2
   1efac:	00f777b3          	and	a5,a4,a5
   1efb0:	fef4ae23          	sw	a5,-4(s1)
   1efb4:	f4dff06f          	j	1ef00 <__hexnan+0x130>
   1efb8:	00100793          	li	a5,1
   1efbc:	00500513          	li	a0,5
   1efc0:	02813403          	ld	s0,40(sp)
   1efc4:	02013483          	ld	s1,32(sp)
   1efc8:	01813903          	ld	s2,24(sp)
   1efcc:	01013983          	ld	s3,16(sp)
   1efd0:	00813a03          	ld	s4,8(sp)
   1efd4:	00f32023          	sw	a5,0(t1)
   1efd8:	03010113          	addi	sp,sp,48
   1efdc:	00008067          	ret
   1efe0:	00168693          	addi	a3,a3,1
   1efe4:	00d53023          	sd	a3,0(a0)
   1efe8:	ee0e90e3          	bnez	t4,1eec8 <__hexnan+0xf8>
   1efec:	f89ff06f          	j	1ef74 <__hexnan+0x1a4>
   1eff0:	00800793          	li	a5,8
   1eff4:	4107883b          	subw	a6,a5,a6
   1eff8:	0005a683          	lw	a3,0(a1)
   1effc:	0028181b          	slliw	a6,a6,0x2
   1f000:	02000893          	li	a7,32
   1f004:	410888bb          	subw	a7,a7,a6
   1f008:	00058793          	mv	a5,a1
   1f00c:	0047a503          	lw	a0,4(a5)
   1f010:	00478793          	addi	a5,a5,4
   1f014:	0115173b          	sllw	a4,a0,a7
   1f018:	00d76733          	or	a4,a4,a3
   1f01c:	010556bb          	srlw	a3,a0,a6
   1f020:	fee7ae23          	sw	a4,-4(a5)
   1f024:	00d7a023          	sw	a3,0(a5)
   1f028:	ffe7e2e3          	bltu	a5,t5,1f00c <__hexnan+0x23c>
   1f02c:	ea9ff06f          	j	1eed4 <__hexnan+0x104>

000000000001f030 <strncmp>:
   1f030:	0c060263          	beqz	a2,1f0f4 <strncmp+0xc4>
   1f034:	00b567b3          	or	a5,a0,a1
   1f038:	0077f793          	andi	a5,a5,7
   1f03c:	06079e63          	bnez	a5,1f0b8 <strncmp+0x88>
   1f040:	00700893          	li	a7,7
   1f044:	06c8fa63          	bleu	a2,a7,1f0b8 <strncmp+0x88>
   1f048:	00053783          	ld	a5,0(a0)
   1f04c:	0005b703          	ld	a4,0(a1)
   1f050:	06e79463          	bne	a5,a4,1f0b8 <strncmp+0x88>
   1f054:	ff860613          	addi	a2,a2,-8
   1f058:	08060e63          	beqz	a2,1f0f4 <strncmp+0xc4>
   1f05c:	00024737          	lui	a4,0x24
   1f060:	49873e03          	ld	t3,1176(a4) # 24498 <mask+0x50>
   1f064:	00024737          	lui	a4,0x24
   1f068:	4a073303          	ld	t1,1184(a4) # 244a0 <mask+0x58>
   1f06c:	fff7c713          	not	a4,a5
   1f070:	01c787b3          	add	a5,a5,t3
   1f074:	00f777b3          	and	a5,a4,a5
   1f078:	0067f7b3          	and	a5,a5,t1
   1f07c:	02078863          	beqz	a5,1f0ac <strncmp+0x7c>
   1f080:	0740006f          	j	1f0f4 <strncmp+0xc4>
   1f084:	00053703          	ld	a4,0(a0)
   1f088:	0005b683          	ld	a3,0(a1)
   1f08c:	01c70833          	add	a6,a4,t3
   1f090:	fff74793          	not	a5,a4
   1f094:	00f877b3          	and	a5,a6,a5
   1f098:	0067f7b3          	and	a5,a5,t1
   1f09c:	00d71e63          	bne	a4,a3,1f0b8 <strncmp+0x88>
   1f0a0:	ff860613          	addi	a2,a2,-8
   1f0a4:	04060863          	beqz	a2,1f0f4 <strncmp+0xc4>
   1f0a8:	04079663          	bnez	a5,1f0f4 <strncmp+0xc4>
   1f0ac:	00850513          	addi	a0,a0,8
   1f0b0:	00858593          	addi	a1,a1,8
   1f0b4:	fcc8e8e3          	bltu	a7,a2,1f084 <strncmp+0x54>
   1f0b8:	00054703          	lbu	a4,0(a0)
   1f0bc:	0005c783          	lbu	a5,0(a1)
   1f0c0:	fff60613          	addi	a2,a2,-1
   1f0c4:	02e79c63          	bne	a5,a4,1f0fc <strncmp+0xcc>
   1f0c8:	02060663          	beqz	a2,1f0f4 <strncmp+0xc4>
   1f0cc:	02078463          	beqz	a5,1f0f4 <strncmp+0xc4>
   1f0d0:	00150513          	addi	a0,a0,1
   1f0d4:	00158593          	addi	a1,a1,1
   1f0d8:	00054783          	lbu	a5,0(a0)
   1f0dc:	0005c703          	lbu	a4,0(a1)
   1f0e0:	fff60613          	addi	a2,a2,-1
   1f0e4:	fee782e3          	beq	a5,a4,1f0c8 <strncmp+0x98>
   1f0e8:	00070513          	mv	a0,a4
   1f0ec:	40a7853b          	subw	a0,a5,a0
   1f0f0:	00008067          	ret
   1f0f4:	00000513          	li	a0,0
   1f0f8:	00008067          	ret
   1f0fc:	00078513          	mv	a0,a5
   1f100:	00070793          	mv	a5,a4
   1f104:	fe9ff06f          	j	1f0ec <strncmp+0xbc>

000000000001f108 <__ssprint_r>:
   1f108:	01063783          	ld	a5,16(a2)
   1f10c:	fa010113          	addi	sp,sp,-96
   1f110:	03413823          	sd	s4,48(sp)
   1f114:	04113c23          	sd	ra,88(sp)
   1f118:	04813823          	sd	s0,80(sp)
   1f11c:	04913423          	sd	s1,72(sp)
   1f120:	05213023          	sd	s2,64(sp)
   1f124:	03313c23          	sd	s3,56(sp)
   1f128:	03513423          	sd	s5,40(sp)
   1f12c:	03613023          	sd	s6,32(sp)
   1f130:	01713c23          	sd	s7,24(sp)
   1f134:	01813823          	sd	s8,16(sp)
   1f138:	01913423          	sd	s9,8(sp)
   1f13c:	01a13023          	sd	s10,0(sp)
   1f140:	00060a13          	mv	s4,a2
   1f144:	06078a63          	beqz	a5,1f1b8 <__ssprint_r+0xb0>
   1f148:	00050a93          	mv	s5,a0
   1f14c:	00063b83          	ld	s7,0(a2)
   1f150:	0005b503          	ld	a0,0(a1)
   1f154:	00c5a403          	lw	s0,12(a1)
   1f158:	00058993          	mv	s3,a1
   1f15c:	00000c13          	li	s8,0
   1f160:	00000493          	li	s1,0
   1f164:	08048a63          	beqz	s1,1f1f8 <__ssprint_r+0xf0>
   1f168:	00040b13          	mv	s6,s0
   1f16c:	0884fe63          	bleu	s0,s1,1f208 <__ssprint_r+0x100>
   1f170:	0004841b          	sext.w	s0,s1
   1f174:	00040913          	mv	s2,s0
   1f178:	00090b13          	mv	s6,s2
   1f17c:	000c0593          	mv	a1,s8
   1f180:	000b0613          	mv	a2,s6
   1f184:	a0df80ef          	jal	17b90 <memmove>
   1f188:	00c9a703          	lw	a4,12(s3)
   1f18c:	0009b503          	ld	a0,0(s3)
   1f190:	010a3783          	ld	a5,16(s4)
   1f194:	4087043b          	subw	s0,a4,s0
   1f198:	01650533          	add	a0,a0,s6
   1f19c:	0089a623          	sw	s0,12(s3)
   1f1a0:	00a9b023          	sd	a0,0(s3)
   1f1a4:	412787b3          	sub	a5,a5,s2
   1f1a8:	00fa3823          	sd	a5,16(s4)
   1f1ac:	012c0c33          	add	s8,s8,s2
   1f1b0:	412484b3          	sub	s1,s1,s2
   1f1b4:	fa0798e3          	bnez	a5,1f164 <__ssprint_r+0x5c>
   1f1b8:	000a2423          	sw	zero,8(s4)
   1f1bc:	00000513          	li	a0,0
   1f1c0:	05813083          	ld	ra,88(sp)
   1f1c4:	05013403          	ld	s0,80(sp)
   1f1c8:	04813483          	ld	s1,72(sp)
   1f1cc:	04013903          	ld	s2,64(sp)
   1f1d0:	03813983          	ld	s3,56(sp)
   1f1d4:	03013a03          	ld	s4,48(sp)
   1f1d8:	02813a83          	ld	s5,40(sp)
   1f1dc:	02013b03          	ld	s6,32(sp)
   1f1e0:	01813b83          	ld	s7,24(sp)
   1f1e4:	01013c03          	ld	s8,16(sp)
   1f1e8:	00813c83          	ld	s9,8(sp)
   1f1ec:	00013d03          	ld	s10,0(sp)
   1f1f0:	06010113          	addi	sp,sp,96
   1f1f4:	00008067          	ret
   1f1f8:	000bbc03          	ld	s8,0(s7)
   1f1fc:	008bb483          	ld	s1,8(s7)
   1f200:	010b8b93          	addi	s7,s7,16
   1f204:	f61ff06f          	j	1f164 <__ssprint_r+0x5c>
   1f208:	0109d703          	lhu	a4,16(s3)
   1f20c:	0004891b          	sext.w	s2,s1
   1f210:	48077793          	andi	a5,a4,1152
   1f214:	f60784e3          	beqz	a5,1f17c <__ssprint_r+0x74>
   1f218:	0209ab03          	lw	s6,32(s3)
   1f21c:	0189b583          	ld	a1,24(s3)
   1f220:	00148693          	addi	a3,s1,1
   1f224:	001b179b          	slliw	a5,s6,0x1
   1f228:	01678b3b          	addw	s6,a5,s6
   1f22c:	01fb579b          	srliw	a5,s6,0x1f
   1f230:	40b50533          	sub	a0,a0,a1
   1f234:	01678b3b          	addw	s6,a5,s6
   1f238:	00050c9b          	sext.w	s9,a0
   1f23c:	401b5b1b          	sraiw	s6,s6,0x1
   1f240:	000c8913          	mv	s2,s9
   1f244:	000b0613          	mv	a2,s6
   1f248:	012687b3          	add	a5,a3,s2
   1f24c:	00f67863          	bleu	a5,a2,1f25c <__ssprint_r+0x154>
   1f250:	00148b1b          	addiw	s6,s1,1
   1f254:	019b0b3b          	addw	s6,s6,s9
   1f258:	000b0613          	mv	a2,s6
   1f25c:	40077713          	andi	a4,a4,1024
   1f260:	06070063          	beqz	a4,1f2c0 <__ssprint_r+0x1b8>
   1f264:	00060593          	mv	a1,a2
   1f268:	000a8513          	mv	a0,s5
   1f26c:	ac1f10ef          	jal	10d2c <_malloc_r>
   1f270:	00050d13          	mv	s10,a0
   1f274:	06050463          	beqz	a0,1f2dc <__ssprint_r+0x1d4>
   1f278:	0189b583          	ld	a1,24(s3)
   1f27c:	00090613          	mv	a2,s2
   1f280:	a1cf20ef          	jal	1149c <memcpy>
   1f284:	0109d783          	lhu	a5,16(s3)
   1f288:	b7f7f793          	andi	a5,a5,-1153
   1f28c:	0807e793          	ori	a5,a5,128
   1f290:	00f99823          	sh	a5,16(s3)
   1f294:	0004841b          	sext.w	s0,s1
   1f298:	012d0533          	add	a0,s10,s2
   1f29c:	419b0cbb          	subw	s9,s6,s9
   1f2a0:	0369a023          	sw	s6,32(s3)
   1f2a4:	01a9bc23          	sd	s10,24(s3)
   1f2a8:	00a9b023          	sd	a0,0(s3)
   1f2ac:	0199a623          	sw	s9,12(s3)
   1f2b0:	00040913          	mv	s2,s0
   1f2b4:	00040b13          	mv	s6,s0
   1f2b8:	ed24f2e3          	bleu	s2,s1,1f17c <__ssprint_r+0x74>
   1f2bc:	ebdff06f          	j	1f178 <__ssprint_r+0x70>
   1f2c0:	000a8513          	mv	a0,s5
   1f2c4:	b2df90ef          	jal	18df0 <_realloc_r>
   1f2c8:	00050d13          	mv	s10,a0
   1f2cc:	fc0514e3          	bnez	a0,1f294 <__ssprint_r+0x18c>
   1f2d0:	0189b583          	ld	a1,24(s3)
   1f2d4:	000a8513          	mv	a0,s5
   1f2d8:	99df70ef          	jal	16c74 <_free_r>
   1f2dc:	00c00793          	li	a5,12
   1f2e0:	00faa023          	sw	a5,0(s5)
   1f2e4:	0109d783          	lhu	a5,16(s3)
   1f2e8:	fff00513          	li	a0,-1
   1f2ec:	0407e793          	ori	a5,a5,64
   1f2f0:	00f99823          	sh	a5,16(s3)
   1f2f4:	000a3823          	sd	zero,16(s4)
   1f2f8:	000a2423          	sw	zero,8(s4)
   1f2fc:	ec5ff06f          	j	1f1c0 <__ssprint_r+0xb8>

000000000001f300 <_svfiprintf_r>:
   1f300:	0105d783          	lhu	a5,16(a1)
   1f304:	e7010113          	addi	sp,sp,-400
   1f308:	16913c23          	sd	s1,376(sp)
   1f30c:	15613823          	sd	s6,336(sp)
   1f310:	15713423          	sd	s7,328(sp)
   1f314:	18113423          	sd	ra,392(sp)
   1f318:	18813023          	sd	s0,384(sp)
   1f31c:	17213823          	sd	s2,368(sp)
   1f320:	17313423          	sd	s3,360(sp)
   1f324:	17413023          	sd	s4,352(sp)
   1f328:	15513c23          	sd	s5,344(sp)
   1f32c:	15813023          	sd	s8,320(sp)
   1f330:	13913c23          	sd	s9,312(sp)
   1f334:	13a13823          	sd	s10,304(sp)
   1f338:	13b13423          	sd	s11,296(sp)
   1f33c:	0807f793          	andi	a5,a5,128
   1f340:	02d13023          	sd	a3,32(sp)
   1f344:	00058b13          	mv	s6,a1
   1f348:	00050b93          	mv	s7,a0
   1f34c:	00060493          	mv	s1,a2
   1f350:	00078663          	beqz	a5,1f35c <_svfiprintf_r+0x5c>
   1f354:	0185b783          	ld	a5,24(a1)
   1f358:	440786e3          	beqz	a5,1ffa4 <_svfiprintf_r+0xca4>
   1f35c:	0a010993          	addi	s3,sp,160
   1f360:	09f10793          	addi	a5,sp,159
   1f364:	000216b7          	lui	a3,0x21
   1f368:	40f98733          	sub	a4,s3,a5
   1f36c:	4b868693          	addi	a3,a3,1208 # 214b8 <__hexdig+0x100>
   1f370:	00021937          	lui	s2,0x21
   1f374:	07313023          	sd	s3,96(sp)
   1f378:	06013823          	sd	zero,112(sp)
   1f37c:	06012423          	sw	zero,104(sp)
   1f380:	00098793          	mv	a5,s3
   1f384:	02013823          	sd	zero,48(sp)
   1f388:	00012e23          	sw	zero,28(sp)
   1f38c:	02d13423          	sd	a3,40(sp)
   1f390:	62090913          	addi	s2,s2,1568 # 21620 <blanks.4122>
   1f394:	04e12623          	sw	a4,76(sp)
   1f398:	0004c703          	lbu	a4,0(s1)
   1f39c:	080704e3          	beqz	a4,1fc24 <_svfiprintf_r+0x924>
   1f3a0:	02500693          	li	a3,37
   1f3a4:	00048413          	mv	s0,s1
   1f3a8:	00d71663          	bne	a4,a3,1f3b4 <_svfiprintf_r+0xb4>
   1f3ac:	0580006f          	j	1f404 <_svfiprintf_r+0x104>
   1f3b0:	00d70863          	beq	a4,a3,1f3c0 <_svfiprintf_r+0xc0>
   1f3b4:	00140413          	addi	s0,s0,1
   1f3b8:	00044703          	lbu	a4,0(s0)
   1f3bc:	fe071ae3          	bnez	a4,1f3b0 <_svfiprintf_r+0xb0>
   1f3c0:	40940a3b          	subw	s4,s0,s1
   1f3c4:	040a0063          	beqz	s4,1f404 <_svfiprintf_r+0x104>
   1f3c8:	07013683          	ld	a3,112(sp)
   1f3cc:	06812703          	lw	a4,104(sp)
   1f3d0:	000a0613          	mv	a2,s4
   1f3d4:	00c686b3          	add	a3,a3,a2
   1f3d8:	0017071b          	addiw	a4,a4,1
   1f3dc:	0097b023          	sd	s1,0(a5)
   1f3e0:	00c7b423          	sd	a2,8(a5)
   1f3e4:	06d13823          	sd	a3,112(sp)
   1f3e8:	06e12423          	sw	a4,104(sp)
   1f3ec:	00700693          	li	a3,7
   1f3f0:	01078793          	addi	a5,a5,16
   1f3f4:	1ae6c4e3          	blt	a3,a4,1fd9c <_svfiprintf_r+0xa9c>
   1f3f8:	01c12703          	lw	a4,28(sp)
   1f3fc:	0147073b          	addw	a4,a4,s4
   1f400:	00e12e23          	sw	a4,28(sp)
   1f404:	00044703          	lbu	a4,0(s0)
   1f408:	020702e3          	beqz	a4,1fc2c <_svfiprintf_r+0x92c>
   1f40c:	00140493          	addi	s1,s0,1
   1f410:	04010ba3          	sb	zero,87(sp)
   1f414:	00000513          	li	a0,0
   1f418:	00000813          	li	a6,0
   1f41c:	fff00413          	li	s0,-1
   1f420:	00012a23          	sw	zero,20(sp)
   1f424:	00000a93          	li	s5,0
   1f428:	05800613          	li	a2,88
   1f42c:	00900593          	li	a1,9
   1f430:	02a00893          	li	a7,42
   1f434:	0004c683          	lbu	a3,0(s1)
   1f438:	00148493          	addi	s1,s1,1
   1f43c:	fe06871b          	addiw	a4,a3,-32
   1f440:	1ee66263          	bltu	a2,a4,1f624 <_svfiprintf_r+0x324>
   1f444:	02813303          	ld	t1,40(sp)
   1f448:	02071713          	slli	a4,a4,0x20
   1f44c:	01e75713          	srli	a4,a4,0x1e
   1f450:	00670733          	add	a4,a4,t1
   1f454:	00072703          	lw	a4,0(a4)
   1f458:	00070067          	jr	a4
   1f45c:	010aea93          	ori	s5,s5,16
   1f460:	fd5ff06f          	j	1f434 <_svfiprintf_r+0x134>
   1f464:	02013703          	ld	a4,32(sp)
   1f468:	00072683          	lw	a3,0(a4)
   1f46c:	00870713          	addi	a4,a4,8
   1f470:	02e13023          	sd	a4,32(sp)
   1f474:	00d12a23          	sw	a3,20(sp)
   1f478:	fa06dee3          	bgez	a3,1f434 <_svfiprintf_r+0x134>
   1f47c:	40d0073b          	negw	a4,a3
   1f480:	00e12a23          	sw	a4,20(sp)
   1f484:	004aea93          	ori	s5,s5,4
   1f488:	fadff06f          	j	1f434 <_svfiprintf_r+0x134>
   1f48c:	03000713          	li	a4,48
   1f490:	04e10c23          	sb	a4,88(sp)
   1f494:	07800713          	li	a4,120
   1f498:	04e10ca3          	sb	a4,89(sp)
   1f49c:	02013703          	ld	a4,32(sp)
   1f4a0:	04010ba3          	sb	zero,87(sp)
   1f4a4:	002ae613          	ori	a2,s5,2
   1f4a8:	00870693          	addi	a3,a4,8
   1f4ac:	00073703          	ld	a4,0(a4)
   1f4b0:	280442e3          	bltz	s0,1ff34 <_svfiprintf_r+0xc34>
   1f4b4:	f7fafa93          	andi	s5,s5,-129
   1f4b8:	02d13023          	sd	a3,32(sp)
   1f4bc:	002aea93          	ori	s5,s5,2
   1f4c0:	1c070ee3          	beqz	a4,1fe9c <_svfiprintf_r+0xb9c>
   1f4c4:	000226b7          	lui	a3,0x22
   1f4c8:	cd868693          	addi	a3,a3,-808 # 21cd8 <zeroes.4123+0x6a8>
   1f4cc:	00000613          	li	a2,0
   1f4d0:	02d13823          	sd	a3,48(sp)
   1f4d4:	00098d13          	mv	s10,s3
   1f4d8:	03013583          	ld	a1,48(sp)
   1f4dc:	00f77693          	andi	a3,a4,15
   1f4e0:	fffd0d13          	addi	s10,s10,-1
   1f4e4:	00d586b3          	add	a3,a1,a3
   1f4e8:	0006c683          	lbu	a3,0(a3)
   1f4ec:	00475713          	srli	a4,a4,0x4
   1f4f0:	00dd0023          	sb	a3,0(s10)
   1f4f4:	fe0712e3          	bnez	a4,1f4d8 <_svfiprintf_r+0x1d8>
   1f4f8:	41a98c33          	sub	s8,s3,s10
   1f4fc:	01812c23          	sw	s8,24(sp)
   1f500:	0d00006f          	j	1f5d0 <_svfiprintf_r+0x2d0>
   1f504:	00100513          	li	a0,1
   1f508:	02b00813          	li	a6,43
   1f50c:	f29ff06f          	j	1f434 <_svfiprintf_r+0x134>
   1f510:	380514e3          	bnez	a0,20098 <_svfiprintf_r+0xd98>
   1f514:	010af713          	andi	a4,s5,16
   1f518:	44070863          	beqz	a4,1f968 <_svfiprintf_r+0x668>
   1f51c:	02013703          	ld	a4,32(sp)
   1f520:	04010ba3          	sb	zero,87(sp)
   1f524:	00870693          	addi	a3,a4,8
   1f528:	00073703          	ld	a4,0(a4)
   1f52c:	44044c63          	bltz	s0,1f984 <_svfiprintf_r+0x684>
   1f530:	02d13023          	sd	a3,32(sp)
   1f534:	f7fafa93          	andi	s5,s5,-129
   1f538:	10070ee3          	beqz	a4,1fe54 <_svfiprintf_r+0xb54>
   1f53c:	00000613          	li	a2,0
   1f540:	00098d13          	mv	s10,s3
   1f544:	00777693          	andi	a3,a4,7
   1f548:	fffd0d13          	addi	s10,s10,-1
   1f54c:	0306869b          	addiw	a3,a3,48
   1f550:	00dd0023          	sb	a3,0(s10)
   1f554:	00375713          	srli	a4,a4,0x3
   1f558:	fe0716e3          	bnez	a4,1f544 <_svfiprintf_r+0x244>
   1f55c:	001af713          	andi	a4,s5,1
   1f560:	f8070ce3          	beqz	a4,1f4f8 <_svfiprintf_r+0x1f8>
   1f564:	03000713          	li	a4,48
   1f568:	f8e688e3          	beq	a3,a4,1f4f8 <_svfiprintf_r+0x1f8>
   1f56c:	fffd0693          	addi	a3,s10,-1
   1f570:	40d98c33          	sub	s8,s3,a3
   1f574:	feed0fa3          	sb	a4,-1(s10)
   1f578:	01812c23          	sw	s8,24(sp)
   1f57c:	00068d13          	mv	s10,a3
   1f580:	0500006f          	j	1f5d0 <_svfiprintf_r+0x2d0>
   1f584:	001aea93          	ori	s5,s5,1
   1f588:	eadff06f          	j	1f434 <_svfiprintf_r+0x134>
   1f58c:	34051ee3          	bnez	a0,200e8 <_svfiprintf_r+0xde8>
   1f590:	010aea93          	ori	s5,s5,16
   1f594:	010af713          	andi	a4,s5,16
   1f598:	080702e3          	beqz	a4,1fe1c <_svfiprintf_r+0xb1c>
   1f59c:	02013683          	ld	a3,32(sp)
   1f5a0:	0006b703          	ld	a4,0(a3)
   1f5a4:	00868693          	addi	a3,a3,8
   1f5a8:	02d13023          	sd	a3,32(sp)
   1f5ac:	080746e3          	bltz	a4,1fe38 <_svfiprintf_r+0xb38>
   1f5b0:	05714603          	lbu	a2,87(sp)
   1f5b4:	38044c63          	bltz	s0,1f94c <_svfiprintf_r+0x64c>
   1f5b8:	f7fafa93          	andi	s5,s5,-129
   1f5bc:	22071a63          	bnez	a4,1f7f0 <_svfiprintf_r+0x4f0>
   1f5c0:	14041ce3          	bnez	s0,1ff18 <_svfiprintf_r+0xc18>
   1f5c4:	00000413          	li	s0,0
   1f5c8:	00012c23          	sw	zero,24(sp)
   1f5cc:	00098d13          	mv	s10,s3
   1f5d0:	01812703          	lw	a4,24(sp)
   1f5d4:	00040c93          	mv	s9,s0
   1f5d8:	00e45463          	ble	a4,s0,1f5e0 <_svfiprintf_r+0x2e0>
   1f5dc:	00070c93          	mv	s9,a4
   1f5e0:	00c03633          	snez	a2,a2
   1f5e4:	00cc8cbb          	addw	s9,s9,a2
   1f5e8:	05c0006f          	j	1f644 <_svfiprintf_r+0x344>
   1f5ec:	00012a23          	sw	zero,20(sp)
   1f5f0:	fd06871b          	addiw	a4,a3,-48
   1f5f4:	01412e03          	lw	t3,20(sp)
   1f5f8:	00148493          	addi	s1,s1,1
   1f5fc:	fff4c683          	lbu	a3,-1(s1)
   1f600:	001e131b          	slliw	t1,t3,0x1
   1f604:	003e1a1b          	slliw	s4,t3,0x3
   1f608:	01430a3b          	addw	s4,t1,s4
   1f60c:	0147073b          	addw	a4,a4,s4
   1f610:	00e12a23          	sw	a4,20(sp)
   1f614:	fd06871b          	addiw	a4,a3,-48
   1f618:	fce5fee3          	bleu	a4,a1,1f5f4 <_svfiprintf_r+0x2f4>
   1f61c:	fe06871b          	addiw	a4,a3,-32
   1f620:	e2e672e3          	bleu	a4,a2,1f444 <_svfiprintf_r+0x144>
   1f624:	260516e3          	bnez	a0,20090 <_svfiprintf_r+0xd90>
   1f628:	60068263          	beqz	a3,1fc2c <_svfiprintf_r+0x92c>
   1f62c:	00100c93          	li	s9,1
   1f630:	06d10c23          	sb	a3,120(sp)
   1f634:	04010ba3          	sb	zero,87(sp)
   1f638:	01912c23          	sw	s9,24(sp)
   1f63c:	07810d13          	addi	s10,sp,120
   1f640:	00000413          	li	s0,0
   1f644:	002af713          	andi	a4,s5,2
   1f648:	02e12c23          	sw	a4,56(sp)
   1f64c:	00070463          	beqz	a4,1f654 <_svfiprintf_r+0x354>
   1f650:	002c8c9b          	addiw	s9,s9,2
   1f654:	084af713          	andi	a4,s5,132
   1f658:	04e12423          	sw	a4,72(sp)
   1f65c:	38071463          	bnez	a4,1f9e4 <_svfiprintf_r+0x6e4>
   1f660:	01412703          	lw	a4,20(sp)
   1f664:	41970dbb          	subw	s11,a4,s9
   1f668:	37b05e63          	blez	s11,1f9e4 <_svfiprintf_r+0x6e4>
   1f66c:	01000713          	li	a4,16
   1f670:	07013683          	ld	a3,112(sp)
   1f674:	19b752e3          	ble	s11,a4,1fff8 <_svfiprintf_r+0xcf8>
   1f678:	01000c13          	li	s8,16
   1f67c:	06812703          	lw	a4,104(sp)
   1f680:	05213023          	sd	s2,64(sp)
   1f684:	00700e13          	li	t3,7
   1f688:	000c0a13          	mv	s4,s8
   1f68c:	00c0006f          	j	1f698 <_svfiprintf_r+0x398>
   1f690:	ff0d8d9b          	addiw	s11,s11,-16
   1f694:	05ba5a63          	ble	s11,s4,1f6e8 <_svfiprintf_r+0x3e8>
   1f698:	01068693          	addi	a3,a3,16
   1f69c:	0017071b          	addiw	a4,a4,1
   1f6a0:	0127b023          	sd	s2,0(a5)
   1f6a4:	0187b423          	sd	s8,8(a5)
   1f6a8:	06d13823          	sd	a3,112(sp)
   1f6ac:	06e12423          	sw	a4,104(sp)
   1f6b0:	01078793          	addi	a5,a5,16
   1f6b4:	fcee5ee3          	ble	a4,t3,1f690 <_svfiprintf_r+0x390>
   1f6b8:	06010613          	addi	a2,sp,96
   1f6bc:	000b0593          	mv	a1,s6
   1f6c0:	000b8513          	mv	a0,s7
   1f6c4:	01c13423          	sd	t3,8(sp)
   1f6c8:	a41ff0ef          	jal	1f108 <__ssprint_r>
   1f6cc:	56051c63          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1f6d0:	ff0d8d9b          	addiw	s11,s11,-16
   1f6d4:	07013683          	ld	a3,112(sp)
   1f6d8:	06812703          	lw	a4,104(sp)
   1f6dc:	00098793          	mv	a5,s3
   1f6e0:	00813e03          	ld	t3,8(sp)
   1f6e4:	fbba4ae3          	blt	s4,s11,1f698 <_svfiprintf_r+0x398>
   1f6e8:	04013603          	ld	a2,64(sp)
   1f6ec:	00dd86b3          	add	a3,s11,a3
   1f6f0:	0017071b          	addiw	a4,a4,1
   1f6f4:	00c7b023          	sd	a2,0(a5)
   1f6f8:	01b7b423          	sd	s11,8(a5)
   1f6fc:	06d13823          	sd	a3,112(sp)
   1f700:	06e12423          	sw	a4,104(sp)
   1f704:	00700613          	li	a2,7
   1f708:	01078793          	addi	a5,a5,16
   1f70c:	2ee65063          	ble	a4,a2,1f9ec <_svfiprintf_r+0x6ec>
   1f710:	06010613          	addi	a2,sp,96
   1f714:	000b0593          	mv	a1,s6
   1f718:	000b8513          	mv	a0,s7
   1f71c:	9edff0ef          	jal	1f108 <__ssprint_r>
   1f720:	52051263          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1f724:	07013683          	ld	a3,112(sp)
   1f728:	06812703          	lw	a4,104(sp)
   1f72c:	00098793          	mv	a5,s3
   1f730:	2bc0006f          	j	1f9ec <_svfiprintf_r+0x6ec>
   1f734:	080aea93          	ori	s5,s5,128
   1f738:	cfdff06f          	j	1f434 <_svfiprintf_r+0x134>
   1f73c:	0004c683          	lbu	a3,0(s1)
   1f740:	00148493          	addi	s1,s1,1
   1f744:	131688e3          	beq	a3,a7,20074 <_svfiprintf_r+0xd74>
   1f748:	fd06871b          	addiw	a4,a3,-48
   1f74c:	00000413          	li	s0,0
   1f750:	cee5e6e3          	bltu	a1,a4,1f43c <_svfiprintf_r+0x13c>
   1f754:	00148493          	addi	s1,s1,1
   1f758:	fff4c683          	lbu	a3,-1(s1)
   1f75c:	0014131b          	slliw	t1,s0,0x1
   1f760:	0034141b          	slliw	s0,s0,0x3
   1f764:	0083043b          	addw	s0,t1,s0
   1f768:	00e4043b          	addw	s0,s0,a4
   1f76c:	fd06871b          	addiw	a4,a3,-48
   1f770:	fee5f2e3          	bleu	a4,a1,1f754 <_svfiprintf_r+0x454>
   1f774:	cc0454e3          	bgez	s0,1f43c <_svfiprintf_r+0x13c>
   1f778:	fff00413          	li	s0,-1
   1f77c:	cc1ff06f          	j	1f43c <_svfiprintf_r+0x13c>
   1f780:	140514e3          	bnez	a0,200c8 <_svfiprintf_r+0xdc8>
   1f784:	010af713          	andi	a4,s5,16
   1f788:	76071a63          	bnez	a4,1fefc <_svfiprintf_r+0xbfc>
   1f78c:	02013683          	ld	a3,32(sp)
   1f790:	040afa93          	andi	s5,s5,64
   1f794:	0006b703          	ld	a4,0(a3)
   1f798:	00868693          	addi	a3,a3,8
   1f79c:	02d13023          	sd	a3,32(sp)
   1f7a0:	7c0a8c63          	beqz	s5,1ff78 <_svfiprintf_r+0xc78>
   1f7a4:	01c15683          	lhu	a3,28(sp)
   1f7a8:	00d71023          	sh	a3,0(a4)
   1f7ac:	bedff06f          	j	1f398 <_svfiprintf_r+0x98>
   1f7b0:	c80812e3          	bnez	a6,1f434 <_svfiprintf_r+0x134>
   1f7b4:	00100513          	li	a0,1
   1f7b8:	02000813          	li	a6,32
   1f7bc:	c79ff06f          	j	1f434 <_svfiprintf_r+0x134>
   1f7c0:	100518e3          	bnez	a0,200d0 <_svfiprintf_r+0xdd0>
   1f7c4:	010af713          	andi	a4,s5,16
   1f7c8:	16070063          	beqz	a4,1f928 <_svfiprintf_r+0x628>
   1f7cc:	02013703          	ld	a4,32(sp)
   1f7d0:	04010ba3          	sb	zero,87(sp)
   1f7d4:	00870693          	addi	a3,a4,8
   1f7d8:	00073703          	ld	a4,0(a4)
   1f7dc:	16044463          	bltz	s0,1f944 <_svfiprintf_r+0x644>
   1f7e0:	02d13023          	sd	a3,32(sp)
   1f7e4:	f7fafa93          	andi	s5,s5,-129
   1f7e8:	00000613          	li	a2,0
   1f7ec:	dc070ae3          	beqz	a4,1f5c0 <_svfiprintf_r+0x2c0>
   1f7f0:	00900693          	li	a3,9
   1f7f4:	00098d13          	mv	s10,s3
   1f7f8:	00a00593          	li	a1,10
   1f7fc:	72e6f063          	bleu	a4,a3,1ff1c <_svfiprintf_r+0xc1c>
   1f800:	02b776b3          	remu	a3,a4,a1
   1f804:	fffd0d13          	addi	s10,s10,-1
   1f808:	02b75733          	divu	a4,a4,a1
   1f80c:	0306869b          	addiw	a3,a3,48
   1f810:	00dd0023          	sb	a3,0(s10)
   1f814:	ce0702e3          	beqz	a4,1f4f8 <_svfiprintf_r+0x1f8>
   1f818:	02b776b3          	remu	a3,a4,a1
   1f81c:	fffd0d13          	addi	s10,s10,-1
   1f820:	02b75733          	divu	a4,a4,a1
   1f824:	0306869b          	addiw	a3,a3,48
   1f828:	00dd0023          	sb	a3,0(s10)
   1f82c:	fc071ae3          	bnez	a4,1f800 <_svfiprintf_r+0x500>
   1f830:	cc9ff06f          	j	1f4f8 <_svfiprintf_r+0x1f8>
   1f834:	02013703          	ld	a4,32(sp)
   1f838:	04010ba3          	sb	zero,87(sp)
   1f83c:	00073d03          	ld	s10,0(a4)
   1f840:	00870d93          	addi	s11,a4,8
   1f844:	780d0063          	beqz	s10,1ffc4 <_svfiprintf_r+0xcc4>
   1f848:	00f13423          	sd	a5,8(sp)
   1f84c:	72044c63          	bltz	s0,1ff84 <_svfiprintf_r+0xc84>
   1f850:	00040613          	mv	a2,s0
   1f854:	00000593          	li	a1,0
   1f858:	000d0513          	mv	a0,s10
   1f85c:	a4cf80ef          	jal	17aa8 <memchr>
   1f860:	00813783          	ld	a5,8(sp)
   1f864:	7e050a63          	beqz	a0,20058 <_svfiprintf_r+0xd58>
   1f868:	41a50533          	sub	a0,a0,s10
   1f86c:	00a12c23          	sw	a0,24(sp)
   1f870:	05714603          	lbu	a2,87(sp)
   1f874:	03b13023          	sd	s11,32(sp)
   1f878:	00000413          	li	s0,0
   1f87c:	d55ff06f          	j	1f5d0 <_svfiprintf_r+0x2d0>
   1f880:	02013683          	ld	a3,32(sp)
   1f884:	00100c93          	li	s9,1
   1f888:	04010ba3          	sb	zero,87(sp)
   1f88c:	0006a703          	lw	a4,0(a3)
   1f890:	01912c23          	sw	s9,24(sp)
   1f894:	07810d13          	addi	s10,sp,120
   1f898:	06e10c23          	sb	a4,120(sp)
   1f89c:	00868713          	addi	a4,a3,8
   1f8a0:	02e13023          	sd	a4,32(sp)
   1f8a4:	d9dff06f          	j	1f640 <_svfiprintf_r+0x340>
   1f8a8:	020518e3          	bnez	a0,200d8 <_svfiprintf_r+0xdd8>
   1f8ac:	00022737          	lui	a4,0x22
   1f8b0:	cc070713          	addi	a4,a4,-832 # 21cc0 <zeroes.4123+0x690>
   1f8b4:	02e13823          	sd	a4,48(sp)
   1f8b8:	010af713          	andi	a4,s5,16
   1f8bc:	0e070863          	beqz	a4,1f9ac <_svfiprintf_r+0x6ac>
   1f8c0:	02013603          	ld	a2,32(sp)
   1f8c4:	00063703          	ld	a4,0(a2)
   1f8c8:	00860613          	addi	a2,a2,8
   1f8cc:	02c13023          	sd	a2,32(sp)
   1f8d0:	001af613          	andi	a2,s5,1
   1f8d4:	0e060c63          	beqz	a2,1f9cc <_svfiprintf_r+0x6cc>
   1f8d8:	52070463          	beqz	a4,1fe00 <_svfiprintf_r+0xb00>
   1f8dc:	03000613          	li	a2,48
   1f8e0:	04d10ca3          	sb	a3,89(sp)
   1f8e4:	04c10c23          	sb	a2,88(sp)
   1f8e8:	04010ba3          	sb	zero,87(sp)
   1f8ec:	002ae693          	ori	a3,s5,2
   1f8f0:	74044063          	bltz	s0,20030 <_svfiprintf_r+0xd30>
   1f8f4:	f7fafa93          	andi	s5,s5,-129
   1f8f8:	002aea93          	ori	s5,s5,2
   1f8fc:	00000613          	li	a2,0
   1f900:	bd5ff06f          	j	1f4d4 <_svfiprintf_r+0x1d4>
   1f904:	040aea93          	ori	s5,s5,64
   1f908:	b2dff06f          	j	1f434 <_svfiprintf_r+0x134>
   1f90c:	c80504e3          	beqz	a0,1f594 <_svfiprintf_r+0x294>
   1f910:	05010ba3          	sb	a6,87(sp)
   1f914:	c81ff06f          	j	1f594 <_svfiprintf_r+0x294>
   1f918:	78051463          	bnez	a0,200a0 <_svfiprintf_r+0xda0>
   1f91c:	010aea93          	ori	s5,s5,16
   1f920:	010af713          	andi	a4,s5,16
   1f924:	ea0714e3          	bnez	a4,1f7cc <_svfiprintf_r+0x4cc>
   1f928:	040af713          	andi	a4,s5,64
   1f92c:	04010ba3          	sb	zero,87(sp)
   1f930:	58070c63          	beqz	a4,1fec8 <_svfiprintf_r+0xbc8>
   1f934:	02013703          	ld	a4,32(sp)
   1f938:	00870693          	addi	a3,a4,8
   1f93c:	00075703          	lhu	a4,0(a4)
   1f940:	ea0450e3          	bgez	s0,1f7e0 <_svfiprintf_r+0x4e0>
   1f944:	02d13023          	sd	a3,32(sp)
   1f948:	00000613          	li	a2,0
   1f94c:	ea0712e3          	bnez	a4,1f7f0 <_svfiprintf_r+0x4f0>
   1f950:	00100713          	li	a4,1
   1f954:	6000006f          	j	1ff54 <_svfiprintf_r+0xc54>
   1f958:	74051a63          	bnez	a0,200ac <_svfiprintf_r+0xdac>
   1f95c:	010aea93          	ori	s5,s5,16
   1f960:	010af713          	andi	a4,s5,16
   1f964:	ba071ce3          	bnez	a4,1f51c <_svfiprintf_r+0x21c>
   1f968:	040af713          	andi	a4,s5,64
   1f96c:	04010ba3          	sb	zero,87(sp)
   1f970:	54070263          	beqz	a4,1feb4 <_svfiprintf_r+0xbb4>
   1f974:	02013703          	ld	a4,32(sp)
   1f978:	00870693          	addi	a3,a4,8
   1f97c:	00075703          	lhu	a4,0(a4)
   1f980:	ba0458e3          	bgez	s0,1f530 <_svfiprintf_r+0x230>
   1f984:	02d13023          	sd	a3,32(sp)
   1f988:	00000613          	li	a2,0
   1f98c:	ba071ae3          	bnez	a4,1f540 <_svfiprintf_r+0x240>
   1f990:	5c40006f          	j	1ff54 <_svfiprintf_r+0xc54>
   1f994:	74051663          	bnez	a0,200e0 <_svfiprintf_r+0xde0>
   1f998:	00022737          	lui	a4,0x22
   1f99c:	cd870713          	addi	a4,a4,-808 # 21cd8 <zeroes.4123+0x6a8>
   1f9a0:	02e13823          	sd	a4,48(sp)
   1f9a4:	010af713          	andi	a4,s5,16
   1f9a8:	f0071ce3          	bnez	a4,1f8c0 <_svfiprintf_r+0x5c0>
   1f9ac:	040af713          	andi	a4,s5,64
   1f9b0:	02013603          	ld	a2,32(sp)
   1f9b4:	52070463          	beqz	a4,1fedc <_svfiprintf_r+0xbdc>
   1f9b8:	00065703          	lhu	a4,0(a2)
   1f9bc:	00860613          	addi	a2,a2,8
   1f9c0:	02c13023          	sd	a2,32(sp)
   1f9c4:	001af613          	andi	a2,s5,1
   1f9c8:	f00618e3          	bnez	a2,1f8d8 <_svfiprintf_r+0x5d8>
   1f9cc:	04010ba3          	sb	zero,87(sp)
   1f9d0:	56044c63          	bltz	s0,1ff48 <_svfiprintf_r+0xc48>
   1f9d4:	f7fafa93          	andi	s5,s5,-129
   1f9d8:	42070a63          	beqz	a4,1fe0c <_svfiprintf_r+0xb0c>
   1f9dc:	00000613          	li	a2,0
   1f9e0:	af5ff06f          	j	1f4d4 <_svfiprintf_r+0x1d4>
   1f9e4:	07013683          	ld	a3,112(sp)
   1f9e8:	06812703          	lw	a4,104(sp)
   1f9ec:	05714603          	lbu	a2,87(sp)
   1f9f0:	02060863          	beqz	a2,1fa20 <_svfiprintf_r+0x720>
   1f9f4:	05710613          	addi	a2,sp,87
   1f9f8:	00c7b023          	sd	a2,0(a5)
   1f9fc:	00168693          	addi	a3,a3,1
   1fa00:	00100613          	li	a2,1
   1fa04:	0017071b          	addiw	a4,a4,1
   1fa08:	00c7b423          	sd	a2,8(a5)
   1fa0c:	06d13823          	sd	a3,112(sp)
   1fa10:	06e12423          	sw	a4,104(sp)
   1fa14:	00700613          	li	a2,7
   1fa18:	01078793          	addi	a5,a5,16
   1fa1c:	38e64e63          	blt	a2,a4,1fdb8 <_svfiprintf_r+0xab8>
   1fa20:	03812603          	lw	a2,56(sp)
   1fa24:	02060863          	beqz	a2,1fa54 <_svfiprintf_r+0x754>
   1fa28:	05810613          	addi	a2,sp,88
   1fa2c:	00c7b023          	sd	a2,0(a5)
   1fa30:	00268693          	addi	a3,a3,2
   1fa34:	00200613          	li	a2,2
   1fa38:	0017071b          	addiw	a4,a4,1
   1fa3c:	00c7b423          	sd	a2,8(a5)
   1fa40:	06d13823          	sd	a3,112(sp)
   1fa44:	06e12423          	sw	a4,104(sp)
   1fa48:	00700613          	li	a2,7
   1fa4c:	01078793          	addi	a5,a5,16
   1fa50:	38e64663          	blt	a2,a4,1fddc <_svfiprintf_r+0xadc>
   1fa54:	04812583          	lw	a1,72(sp)
   1fa58:	08000613          	li	a2,128
   1fa5c:	22c58a63          	beq	a1,a2,1fc90 <_svfiprintf_r+0x990>
   1fa60:	01812603          	lw	a2,24(sp)
   1fa64:	40c4043b          	subw	s0,s0,a2
   1fa68:	0c805063          	blez	s0,1fb28 <_svfiprintf_r+0x828>
   1fa6c:	01000613          	li	a2,16
   1fa70:	4e865e63          	ble	s0,a2,1ff6c <_svfiprintf_r+0xc6c>
   1fa74:	01000a13          	li	s4,16
   1fa78:	00021637          	lui	a2,0x21
   1fa7c:	63060d93          	addi	s11,a2,1584 # 21630 <zeroes.4123>
   1fa80:	00700e13          	li	t3,7
   1fa84:	000a0c13          	mv	s8,s4
   1fa88:	00c0006f          	j	1fa94 <_svfiprintf_r+0x794>
   1fa8c:	ff04041b          	addiw	s0,s0,-16
   1fa90:	048c5a63          	ble	s0,s8,1fae4 <_svfiprintf_r+0x7e4>
   1fa94:	01068693          	addi	a3,a3,16
   1fa98:	0017071b          	addiw	a4,a4,1
   1fa9c:	01b7b023          	sd	s11,0(a5)
   1faa0:	0147b423          	sd	s4,8(a5)
   1faa4:	06d13823          	sd	a3,112(sp)
   1faa8:	06e12423          	sw	a4,104(sp)
   1faac:	01078793          	addi	a5,a5,16
   1fab0:	fcee5ee3          	ble	a4,t3,1fa8c <_svfiprintf_r+0x78c>
   1fab4:	06010613          	addi	a2,sp,96
   1fab8:	000b0593          	mv	a1,s6
   1fabc:	000b8513          	mv	a0,s7
   1fac0:	01c13423          	sd	t3,8(sp)
   1fac4:	e44ff0ef          	jal	1f108 <__ssprint_r>
   1fac8:	16051e63          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1facc:	ff04041b          	addiw	s0,s0,-16
   1fad0:	07013683          	ld	a3,112(sp)
   1fad4:	06812703          	lw	a4,104(sp)
   1fad8:	00098793          	mv	a5,s3
   1fadc:	00813e03          	ld	t3,8(sp)
   1fae0:	fa8c4ae3          	blt	s8,s0,1fa94 <_svfiprintf_r+0x794>
   1fae4:	008686b3          	add	a3,a3,s0
   1fae8:	0017071b          	addiw	a4,a4,1
   1faec:	01b7b023          	sd	s11,0(a5)
   1faf0:	0087b423          	sd	s0,8(a5)
   1faf4:	06d13823          	sd	a3,112(sp)
   1faf8:	06e12423          	sw	a4,104(sp)
   1fafc:	00700613          	li	a2,7
   1fb00:	01078793          	addi	a5,a5,16
   1fb04:	02e65263          	ble	a4,a2,1fb28 <_svfiprintf_r+0x828>
   1fb08:	06010613          	addi	a2,sp,96
   1fb0c:	000b0593          	mv	a1,s6
   1fb10:	000b8513          	mv	a0,s7
   1fb14:	df4ff0ef          	jal	1f108 <__ssprint_r>
   1fb18:	12051663          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1fb1c:	07013683          	ld	a3,112(sp)
   1fb20:	06812703          	lw	a4,104(sp)
   1fb24:	00098793          	mv	a5,s3
   1fb28:	01812c03          	lw	s8,24(sp)
   1fb2c:	0017071b          	addiw	a4,a4,1
   1fb30:	01a7b023          	sd	s10,0(a5)
   1fb34:	00dc06b3          	add	a3,s8,a3
   1fb38:	0187b423          	sd	s8,8(a5)
   1fb3c:	06d13823          	sd	a3,112(sp)
   1fb40:	06e12423          	sw	a4,104(sp)
   1fb44:	00700613          	li	a2,7
   1fb48:	01078793          	addi	a5,a5,16
   1fb4c:	20e64c63          	blt	a2,a4,1fd64 <_svfiprintf_r+0xa64>
   1fb50:	004afa93          	andi	s5,s5,4
   1fb54:	0a0a8263          	beqz	s5,1fbf8 <_svfiprintf_r+0x8f8>
   1fb58:	01412703          	lw	a4,20(sp)
   1fb5c:	4197043b          	subw	s0,a4,s9
   1fb60:	08805c63          	blez	s0,1fbf8 <_svfiprintf_r+0x8f8>
   1fb64:	01000713          	li	a4,16
   1fb68:	4c875c63          	ble	s0,a4,20040 <_svfiprintf_r+0xd40>
   1fb6c:	01000a93          	li	s5,16
   1fb70:	06812703          	lw	a4,104(sp)
   1fb74:	05213023          	sd	s2,64(sp)
   1fb78:	00700c13          	li	s8,7
   1fb7c:	000a8d13          	mv	s10,s5
   1fb80:	00c0006f          	j	1fb8c <_svfiprintf_r+0x88c>
   1fb84:	ff04041b          	addiw	s0,s0,-16
   1fb88:	048d5663          	ble	s0,s10,1fbd4 <_svfiprintf_r+0x8d4>
   1fb8c:	01068693          	addi	a3,a3,16
   1fb90:	0017071b          	addiw	a4,a4,1
   1fb94:	0127b023          	sd	s2,0(a5)
   1fb98:	0157b423          	sd	s5,8(a5)
   1fb9c:	06d13823          	sd	a3,112(sp)
   1fba0:	06e12423          	sw	a4,104(sp)
   1fba4:	01078793          	addi	a5,a5,16
   1fba8:	fcec5ee3          	ble	a4,s8,1fb84 <_svfiprintf_r+0x884>
   1fbac:	06010613          	addi	a2,sp,96
   1fbb0:	000b0593          	mv	a1,s6
   1fbb4:	000b8513          	mv	a0,s7
   1fbb8:	d50ff0ef          	jal	1f108 <__ssprint_r>
   1fbbc:	08051463          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1fbc0:	ff04041b          	addiw	s0,s0,-16
   1fbc4:	07013683          	ld	a3,112(sp)
   1fbc8:	06812703          	lw	a4,104(sp)
   1fbcc:	00098793          	mv	a5,s3
   1fbd0:	fa8d4ee3          	blt	s10,s0,1fb8c <_svfiprintf_r+0x88c>
   1fbd4:	04013603          	ld	a2,64(sp)
   1fbd8:	008686b3          	add	a3,a3,s0
   1fbdc:	0017071b          	addiw	a4,a4,1
   1fbe0:	00c7b023          	sd	a2,0(a5)
   1fbe4:	0087b423          	sd	s0,8(a5)
   1fbe8:	06d13823          	sd	a3,112(sp)
   1fbec:	06e12423          	sw	a4,104(sp)
   1fbf0:	00700793          	li	a5,7
   1fbf4:	28e7c663          	blt	a5,a4,1fe80 <_svfiprintf_r+0xb80>
   1fbf8:	01412a03          	lw	s4,20(sp)
   1fbfc:	019a5463          	ble	s9,s4,1fc04 <_svfiprintf_r+0x904>
   1fc00:	000c8a13          	mv	s4,s9
   1fc04:	01c12783          	lw	a5,28(sp)
   1fc08:	014787bb          	addw	a5,a5,s4
   1fc0c:	00f12e23          	sw	a5,28(sp)
   1fc10:	16069a63          	bnez	a3,1fd84 <_svfiprintf_r+0xa84>
   1fc14:	0004c703          	lbu	a4,0(s1)
   1fc18:	06012423          	sw	zero,104(sp)
   1fc1c:	00098793          	mv	a5,s3
   1fc20:	f8071063          	bnez	a4,1f3a0 <_svfiprintf_r+0xa0>
   1fc24:	00048413          	mv	s0,s1
   1fc28:	fdcff06f          	j	1f404 <_svfiprintf_r+0x104>
   1fc2c:	07013783          	ld	a5,112(sp)
   1fc30:	00078a63          	beqz	a5,1fc44 <_svfiprintf_r+0x944>
   1fc34:	06010613          	addi	a2,sp,96
   1fc38:	000b0593          	mv	a1,s6
   1fc3c:	000b8513          	mv	a0,s7
   1fc40:	cc8ff0ef          	jal	1f108 <__ssprint_r>
   1fc44:	010b5783          	lhu	a5,16(s6)
   1fc48:	01c12503          	lw	a0,28(sp)
   1fc4c:	0407f793          	andi	a5,a5,64
   1fc50:	3a079a63          	bnez	a5,20004 <_svfiprintf_r+0xd04>
   1fc54:	18813083          	ld	ra,392(sp)
   1fc58:	18013403          	ld	s0,384(sp)
   1fc5c:	17813483          	ld	s1,376(sp)
   1fc60:	17013903          	ld	s2,368(sp)
   1fc64:	16813983          	ld	s3,360(sp)
   1fc68:	16013a03          	ld	s4,352(sp)
   1fc6c:	15813a83          	ld	s5,344(sp)
   1fc70:	15013b03          	ld	s6,336(sp)
   1fc74:	14813b83          	ld	s7,328(sp)
   1fc78:	14013c03          	ld	s8,320(sp)
   1fc7c:	13813c83          	ld	s9,312(sp)
   1fc80:	13013d03          	ld	s10,304(sp)
   1fc84:	12813d83          	ld	s11,296(sp)
   1fc88:	19010113          	addi	sp,sp,400
   1fc8c:	00008067          	ret
   1fc90:	01412603          	lw	a2,20(sp)
   1fc94:	41960a3b          	subw	s4,a2,s9
   1fc98:	dd4054e3          	blez	s4,1fa60 <_svfiprintf_r+0x760>
   1fc9c:	01000613          	li	a2,16
   1fca0:	3b465663          	ble	s4,a2,2004c <_svfiprintf_r+0xd4c>
   1fca4:	01000e13          	li	t3,16
   1fca8:	00021637          	lui	a2,0x21
   1fcac:	63060d93          	addi	s11,a2,1584 # 21630 <zeroes.4123>
   1fcb0:	00700e93          	li	t4,7
   1fcb4:	000e0c13          	mv	s8,t3
   1fcb8:	00c0006f          	j	1fcc4 <_svfiprintf_r+0x9c4>
   1fcbc:	ff0a0a1b          	addiw	s4,s4,-16
   1fcc0:	054c5e63          	ble	s4,s8,1fd1c <_svfiprintf_r+0xa1c>
   1fcc4:	01068693          	addi	a3,a3,16
   1fcc8:	0017071b          	addiw	a4,a4,1
   1fccc:	01b7b023          	sd	s11,0(a5)
   1fcd0:	01c7b423          	sd	t3,8(a5)
   1fcd4:	06d13823          	sd	a3,112(sp)
   1fcd8:	06e12423          	sw	a4,104(sp)
   1fcdc:	01078793          	addi	a5,a5,16
   1fce0:	fceedee3          	ble	a4,t4,1fcbc <_svfiprintf_r+0x9bc>
   1fce4:	06010613          	addi	a2,sp,96
   1fce8:	000b0593          	mv	a1,s6
   1fcec:	000b8513          	mv	a0,s7
   1fcf0:	03d13c23          	sd	t4,56(sp)
   1fcf4:	01c13423          	sd	t3,8(sp)
   1fcf8:	c10ff0ef          	jal	1f108 <__ssprint_r>
   1fcfc:	f40514e3          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1fd00:	ff0a0a1b          	addiw	s4,s4,-16
   1fd04:	07013683          	ld	a3,112(sp)
   1fd08:	06812703          	lw	a4,104(sp)
   1fd0c:	00098793          	mv	a5,s3
   1fd10:	03813e83          	ld	t4,56(sp)
   1fd14:	00813e03          	ld	t3,8(sp)
   1fd18:	fb4c46e3          	blt	s8,s4,1fcc4 <_svfiprintf_r+0x9c4>
   1fd1c:	014686b3          	add	a3,a3,s4
   1fd20:	0017071b          	addiw	a4,a4,1
   1fd24:	01b7b023          	sd	s11,0(a5)
   1fd28:	0147b423          	sd	s4,8(a5)
   1fd2c:	06d13823          	sd	a3,112(sp)
   1fd30:	06e12423          	sw	a4,104(sp)
   1fd34:	00700613          	li	a2,7
   1fd38:	01078793          	addi	a5,a5,16
   1fd3c:	d2e652e3          	ble	a4,a2,1fa60 <_svfiprintf_r+0x760>
   1fd40:	06010613          	addi	a2,sp,96
   1fd44:	000b0593          	mv	a1,s6
   1fd48:	000b8513          	mv	a0,s7
   1fd4c:	bbcff0ef          	jal	1f108 <__ssprint_r>
   1fd50:	ee051ae3          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1fd54:	07013683          	ld	a3,112(sp)
   1fd58:	06812703          	lw	a4,104(sp)
   1fd5c:	00098793          	mv	a5,s3
   1fd60:	d01ff06f          	j	1fa60 <_svfiprintf_r+0x760>
   1fd64:	06010613          	addi	a2,sp,96
   1fd68:	000b0593          	mv	a1,s6
   1fd6c:	000b8513          	mv	a0,s7
   1fd70:	b98ff0ef          	jal	1f108 <__ssprint_r>
   1fd74:	ec0518e3          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1fd78:	07013683          	ld	a3,112(sp)
   1fd7c:	00098793          	mv	a5,s3
   1fd80:	dd1ff06f          	j	1fb50 <_svfiprintf_r+0x850>
   1fd84:	06010613          	addi	a2,sp,96
   1fd88:	000b0593          	mv	a1,s6
   1fd8c:	000b8513          	mv	a0,s7
   1fd90:	b78ff0ef          	jal	1f108 <__ssprint_r>
   1fd94:	e80500e3          	beqz	a0,1fc14 <_svfiprintf_r+0x914>
   1fd98:	eadff06f          	j	1fc44 <_svfiprintf_r+0x944>
   1fd9c:	06010613          	addi	a2,sp,96
   1fda0:	000b0593          	mv	a1,s6
   1fda4:	000b8513          	mv	a0,s7
   1fda8:	b60ff0ef          	jal	1f108 <__ssprint_r>
   1fdac:	e8051ce3          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1fdb0:	00098793          	mv	a5,s3
   1fdb4:	e44ff06f          	j	1f3f8 <_svfiprintf_r+0xf8>
   1fdb8:	06010613          	addi	a2,sp,96
   1fdbc:	000b0593          	mv	a1,s6
   1fdc0:	000b8513          	mv	a0,s7
   1fdc4:	b44ff0ef          	jal	1f108 <__ssprint_r>
   1fdc8:	e6051ee3          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1fdcc:	07013683          	ld	a3,112(sp)
   1fdd0:	06812703          	lw	a4,104(sp)
   1fdd4:	00098793          	mv	a5,s3
   1fdd8:	c49ff06f          	j	1fa20 <_svfiprintf_r+0x720>
   1fddc:	06010613          	addi	a2,sp,96
   1fde0:	000b0593          	mv	a1,s6
   1fde4:	000b8513          	mv	a0,s7
   1fde8:	b20ff0ef          	jal	1f108 <__ssprint_r>
   1fdec:	e4051ce3          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1fdf0:	07013683          	ld	a3,112(sp)
   1fdf4:	06812703          	lw	a4,104(sp)
   1fdf8:	00098793          	mv	a5,s3
   1fdfc:	c59ff06f          	j	1fa54 <_svfiprintf_r+0x754>
   1fe00:	04010ba3          	sb	zero,87(sp)
   1fe04:	22044263          	bltz	s0,20028 <_svfiprintf_r+0xd28>
   1fe08:	f7fafa93          	andi	s5,s5,-129
   1fe0c:	00000613          	li	a2,0
   1fe10:	fa040a63          	beqz	s0,1f5c4 <_svfiprintf_r+0x2c4>
   1fe14:	00000713          	li	a4,0
   1fe18:	ebcff06f          	j	1f4d4 <_svfiprintf_r+0x1d4>
   1fe1c:	040af713          	andi	a4,s5,64
   1fe20:	02013683          	ld	a3,32(sp)
   1fe24:	0c070463          	beqz	a4,1feec <_svfiprintf_r+0xbec>
   1fe28:	00069703          	lh	a4,0(a3)
   1fe2c:	00868693          	addi	a3,a3,8
   1fe30:	02d13023          	sd	a3,32(sp)
   1fe34:	f6075e63          	bgez	a4,1f5b0 <_svfiprintf_r+0x2b0>
   1fe38:	02d00693          	li	a3,45
   1fe3c:	04d10ba3          	sb	a3,87(sp)
   1fe40:	40e00733          	neg	a4,a4
   1fe44:	1c044463          	bltz	s0,2000c <_svfiprintf_r+0xd0c>
   1fe48:	f7fafa93          	andi	s5,s5,-129
   1fe4c:	02d00613          	li	a2,45
   1fe50:	9a1ff06f          	j	1f7f0 <_svfiprintf_r+0x4f0>
   1fe54:	00000613          	li	a2,0
   1fe58:	00000713          	li	a4,0
   1fe5c:	ee041263          	bnez	s0,1f540 <_svfiprintf_r+0x240>
   1fe60:	001af713          	andi	a4,s5,1
   1fe64:	18070463          	beqz	a4,1ffec <_svfiprintf_r+0xcec>
   1fe68:	03000713          	li	a4,48
   1fe6c:	08e10fa3          	sb	a4,159(sp)
   1fe70:	04c12703          	lw	a4,76(sp)
   1fe74:	09f10d13          	addi	s10,sp,159
   1fe78:	00e12c23          	sw	a4,24(sp)
   1fe7c:	f54ff06f          	j	1f5d0 <_svfiprintf_r+0x2d0>
   1fe80:	06010613          	addi	a2,sp,96
   1fe84:	000b0593          	mv	a1,s6
   1fe88:	000b8513          	mv	a0,s7
   1fe8c:	a7cff0ef          	jal	1f108 <__ssprint_r>
   1fe90:	da051ae3          	bnez	a0,1fc44 <_svfiprintf_r+0x944>
   1fe94:	07013683          	ld	a3,112(sp)
   1fe98:	d61ff06f          	j	1fbf8 <_svfiprintf_r+0x8f8>
   1fe9c:	00022737          	lui	a4,0x22
   1fea0:	cd870713          	addi	a4,a4,-808 # 21cd8 <zeroes.4123+0x6a8>
   1fea4:	02e13823          	sd	a4,48(sp)
   1fea8:	00000613          	li	a2,0
   1feac:	f60414e3          	bnez	s0,1fe14 <_svfiprintf_r+0xb14>
   1feb0:	f14ff06f          	j	1f5c4 <_svfiprintf_r+0x2c4>
   1feb4:	02013703          	ld	a4,32(sp)
   1feb8:	00870693          	addi	a3,a4,8
   1febc:	00076703          	lwu	a4,0(a4)
   1fec0:	e6045863          	bgez	s0,1f530 <_svfiprintf_r+0x230>
   1fec4:	ac1ff06f          	j	1f984 <_svfiprintf_r+0x684>
   1fec8:	02013703          	ld	a4,32(sp)
   1fecc:	00870693          	addi	a3,a4,8
   1fed0:	00076703          	lwu	a4,0(a4)
   1fed4:	900456e3          	bgez	s0,1f7e0 <_svfiprintf_r+0x4e0>
   1fed8:	a6dff06f          	j	1f944 <_svfiprintf_r+0x644>
   1fedc:	00066703          	lwu	a4,0(a2)
   1fee0:	00860613          	addi	a2,a2,8
   1fee4:	02c13023          	sd	a2,32(sp)
   1fee8:	9e9ff06f          	j	1f8d0 <_svfiprintf_r+0x5d0>
   1feec:	0006a703          	lw	a4,0(a3)
   1fef0:	00868693          	addi	a3,a3,8
   1fef4:	02d13023          	sd	a3,32(sp)
   1fef8:	eb4ff06f          	j	1f5ac <_svfiprintf_r+0x2ac>
   1fefc:	02013603          	ld	a2,32(sp)
   1ff00:	01c12683          	lw	a3,28(sp)
   1ff04:	00063703          	ld	a4,0(a2)
   1ff08:	00860613          	addi	a2,a2,8
   1ff0c:	02c13023          	sd	a2,32(sp)
   1ff10:	00d73023          	sd	a3,0(a4)
   1ff14:	c84ff06f          	j	1f398 <_svfiprintf_r+0x98>
   1ff18:	00000713          	li	a4,0
   1ff1c:	0307071b          	addiw	a4,a4,48
   1ff20:	08e10fa3          	sb	a4,159(sp)
   1ff24:	04c12703          	lw	a4,76(sp)
   1ff28:	09f10d13          	addi	s10,sp,159
   1ff2c:	00e12c23          	sw	a4,24(sp)
   1ff30:	ea0ff06f          	j	1f5d0 <_svfiprintf_r+0x2d0>
   1ff34:	02d13023          	sd	a3,32(sp)
   1ff38:	000226b7          	lui	a3,0x22
   1ff3c:	cd868693          	addi	a3,a3,-808 # 21cd8 <zeroes.4123+0x6a8>
   1ff40:	00060a93          	mv	s5,a2
   1ff44:	02d13823          	sd	a3,48(sp)
   1ff48:	00000613          	li	a2,0
   1ff4c:	d8071463          	bnez	a4,1f4d4 <_svfiprintf_r+0x1d4>
   1ff50:	00200713          	li	a4,2
   1ff54:	00100693          	li	a3,1
   1ff58:	fcd700e3          	beq	a4,a3,1ff18 <_svfiprintf_r+0xc18>
   1ff5c:	00200693          	li	a3,2
   1ff60:	ead70ae3          	beq	a4,a3,1fe14 <_svfiprintf_r+0xb14>
   1ff64:	00000713          	li	a4,0
   1ff68:	dd8ff06f          	j	1f540 <_svfiprintf_r+0x240>
   1ff6c:	00021637          	lui	a2,0x21
   1ff70:	63060d93          	addi	s11,a2,1584 # 21630 <zeroes.4123>
   1ff74:	b71ff06f          	j	1fae4 <_svfiprintf_r+0x7e4>
   1ff78:	01c12683          	lw	a3,28(sp)
   1ff7c:	00d72023          	sw	a3,0(a4)
   1ff80:	c18ff06f          	j	1f398 <_svfiprintf_r+0x98>
   1ff84:	000d0513          	mv	a0,s10
   1ff88:	ac9f10ef          	jal	11a50 <strlen>
   1ff8c:	00a12c23          	sw	a0,24(sp)
   1ff90:	05714603          	lbu	a2,87(sp)
   1ff94:	03b13023          	sd	s11,32(sp)
   1ff98:	00000413          	li	s0,0
   1ff9c:	00813783          	ld	a5,8(sp)
   1ffa0:	e30ff06f          	j	1f5d0 <_svfiprintf_r+0x2d0>
   1ffa4:	04000593          	li	a1,64
   1ffa8:	d85f00ef          	jal	10d2c <_malloc_r>
   1ffac:	00ab3023          	sd	a0,0(s6)
   1ffb0:	00ab3c23          	sd	a0,24(s6)
   1ffb4:	10050263          	beqz	a0,200b8 <_svfiprintf_r+0xdb8>
   1ffb8:	04000793          	li	a5,64
   1ffbc:	02fb2023          	sw	a5,32(s6)
   1ffc0:	b9cff06f          	j	1f35c <_svfiprintf_r+0x5c>
   1ffc4:	00600713          	li	a4,6
   1ffc8:	00877463          	bleu	s0,a4,1ffd0 <_svfiprintf_r+0xcd0>
   1ffcc:	00070413          	mv	s0,a4
   1ffd0:	00812c23          	sw	s0,24(sp)
   1ffd4:	00040c93          	mv	s9,s0
   1ffd8:	08044a63          	bltz	s0,2006c <_svfiprintf_r+0xd6c>
   1ffdc:	000228b7          	lui	a7,0x22
   1ffe0:	03b13023          	sd	s11,32(sp)
   1ffe4:	cf088d13          	addi	s10,a7,-784 # 21cf0 <zeroes.4123+0x6c0>
   1ffe8:	e58ff06f          	j	1f640 <_svfiprintf_r+0x340>
   1ffec:	00012c23          	sw	zero,24(sp)
   1fff0:	00098d13          	mv	s10,s3
   1fff4:	ddcff06f          	j	1f5d0 <_svfiprintf_r+0x2d0>
   1fff8:	06812703          	lw	a4,104(sp)
   1fffc:	05213023          	sd	s2,64(sp)
   20000:	ee8ff06f          	j	1f6e8 <_svfiprintf_r+0x3e8>
   20004:	fff00513          	li	a0,-1
   20008:	c4dff06f          	j	1fc54 <_svfiprintf_r+0x954>
   2000c:	02d00613          	li	a2,45
   20010:	00100693          	li	a3,1
   20014:	00100593          	li	a1,1
   20018:	fcb68c63          	beq	a3,a1,1f7f0 <_svfiprintf_r+0x4f0>
   2001c:	00200593          	li	a1,2
   20020:	cab68a63          	beq	a3,a1,1f4d4 <_svfiprintf_r+0x1d4>
   20024:	d1cff06f          	j	1f540 <_svfiprintf_r+0x240>
   20028:	00000613          	li	a2,0
   2002c:	f25ff06f          	j	1ff50 <_svfiprintf_r+0xc50>
   20030:	00068a93          	mv	s5,a3
   20034:	00000613          	li	a2,0
   20038:	00200693          	li	a3,2
   2003c:	fd9ff06f          	j	20014 <_svfiprintf_r+0xd14>
   20040:	06812703          	lw	a4,104(sp)
   20044:	05213023          	sd	s2,64(sp)
   20048:	b8dff06f          	j	1fbd4 <_svfiprintf_r+0x8d4>
   2004c:	00021637          	lui	a2,0x21
   20050:	63060d93          	addi	s11,a2,1584 # 21630 <zeroes.4123>
   20054:	cc9ff06f          	j	1fd1c <_svfiprintf_r+0xa1c>
   20058:	00812c23          	sw	s0,24(sp)
   2005c:	05714603          	lbu	a2,87(sp)
   20060:	03b13023          	sd	s11,32(sp)
   20064:	00000413          	li	s0,0
   20068:	d68ff06f          	j	1f5d0 <_svfiprintf_r+0x2d0>
   2006c:	00000c93          	li	s9,0
   20070:	f6dff06f          	j	1ffdc <_svfiprintf_r+0xcdc>
   20074:	02013703          	ld	a4,32(sp)
   20078:	00072403          	lw	s0,0(a4)
   2007c:	00870d93          	addi	s11,a4,8
   20080:	03b13023          	sd	s11,32(sp)
   20084:	ba045863          	bgez	s0,1f434 <_svfiprintf_r+0x134>
   20088:	fff00413          	li	s0,-1
   2008c:	ba8ff06f          	j	1f434 <_svfiprintf_r+0x134>
   20090:	05010ba3          	sb	a6,87(sp)
   20094:	d94ff06f          	j	1f628 <_svfiprintf_r+0x328>
   20098:	05010ba3          	sb	a6,87(sp)
   2009c:	c78ff06f          	j	1f514 <_svfiprintf_r+0x214>
   200a0:	05010ba3          	sb	a6,87(sp)
   200a4:	010aea93          	ori	s5,s5,16
   200a8:	879ff06f          	j	1f920 <_svfiprintf_r+0x620>
   200ac:	05010ba3          	sb	a6,87(sp)
   200b0:	010aea93          	ori	s5,s5,16
   200b4:	8adff06f          	j	1f960 <_svfiprintf_r+0x660>
   200b8:	00c00793          	li	a5,12
   200bc:	00fba023          	sw	a5,0(s7)
   200c0:	fff00513          	li	a0,-1
   200c4:	b91ff06f          	j	1fc54 <_svfiprintf_r+0x954>
   200c8:	05010ba3          	sb	a6,87(sp)
   200cc:	eb8ff06f          	j	1f784 <_svfiprintf_r+0x484>
   200d0:	05010ba3          	sb	a6,87(sp)
   200d4:	ef0ff06f          	j	1f7c4 <_svfiprintf_r+0x4c4>
   200d8:	05010ba3          	sb	a6,87(sp)
   200dc:	fd0ff06f          	j	1f8ac <_svfiprintf_r+0x5ac>
   200e0:	05010ba3          	sb	a6,87(sp)
   200e4:	8b5ff06f          	j	1f998 <_svfiprintf_r+0x698>
   200e8:	05010ba3          	sb	a6,87(sp)
   200ec:	ca4ff06f          	j	1f590 <_svfiprintf_r+0x290>

00000000000200f0 <_wcrtomb_r>:
   200f0:	fc010113          	addi	sp,sp,-64
   200f4:	02913423          	sd	s1,40(sp)
   200f8:	03213023          	sd	s2,32(sp)
   200fc:	02113c23          	sd	ra,56(sp)
   20100:	02813823          	sd	s0,48(sp)
   20104:	01313c23          	sd	s3,24(sp)
   20108:	01413823          	sd	s4,16(sp)
   2010c:	00050493          	mv	s1,a0
   20110:	00068913          	mv	s2,a3
   20114:	06058663          	beqz	a1,20180 <_wcrtomb_r+0x90>
   20118:	8401ba03          	ld	s4,-1984(gp) # 24430 <__wctomb>
   2011c:	00058413          	mv	s0,a1
   20120:	00060993          	mv	s3,a2
   20124:	d2cf70ef          	jal	17650 <__locale_charset>
   20128:	00050693          	mv	a3,a0
   2012c:	00090713          	mv	a4,s2
   20130:	00098613          	mv	a2,s3
   20134:	00040593          	mv	a1,s0
   20138:	00048513          	mv	a0,s1
   2013c:	000a00e7          	jalr	s4
   20140:	00050793          	mv	a5,a0
   20144:	fff00713          	li	a4,-1
   20148:	00078513          	mv	a0,a5
   2014c:	00e79a63          	bne	a5,a4,20160 <_wcrtomb_r+0x70>
   20150:	00092023          	sw	zero,0(s2)
   20154:	08a00793          	li	a5,138
   20158:	00f4a023          	sw	a5,0(s1)
   2015c:	fff00513          	li	a0,-1
   20160:	03813083          	ld	ra,56(sp)
   20164:	03013403          	ld	s0,48(sp)
   20168:	02813483          	ld	s1,40(sp)
   2016c:	02013903          	ld	s2,32(sp)
   20170:	01813983          	ld	s3,24(sp)
   20174:	01013a03          	ld	s4,16(sp)
   20178:	04010113          	addi	sp,sp,64
   2017c:	00008067          	ret
   20180:	8401b403          	ld	s0,-1984(gp) # 24430 <__wctomb>
   20184:	cccf70ef          	jal	17650 <__locale_charset>
   20188:	00050693          	mv	a3,a0
   2018c:	00090713          	mv	a4,s2
   20190:	00000613          	li	a2,0
   20194:	00010593          	mv	a1,sp
   20198:	00048513          	mv	a0,s1
   2019c:	000400e7          	jalr	s0
   201a0:	00050793          	mv	a5,a0
   201a4:	fa1ff06f          	j	20144 <_wcrtomb_r+0x54>

00000000000201a8 <wcrtomb>:
   201a8:	fc010113          	addi	sp,sp,-64
   201ac:	02913423          	sd	s1,40(sp)
   201b0:	03213023          	sd	s2,32(sp)
   201b4:	02113c23          	sd	ra,56(sp)
   201b8:	02813823          	sd	s0,48(sp)
   201bc:	01313c23          	sd	s3,24(sp)
   201c0:	01413823          	sd	s4,16(sp)
   201c4:	00060913          	mv	s2,a2
   201c8:	8101b483          	ld	s1,-2032(gp) # 24400 <_impure_ptr>
   201cc:	06050663          	beqz	a0,20238 <wcrtomb+0x90>
   201d0:	8401ba03          	ld	s4,-1984(gp) # 24430 <__wctomb>
   201d4:	00058993          	mv	s3,a1
   201d8:	00050413          	mv	s0,a0
   201dc:	c74f70ef          	jal	17650 <__locale_charset>
   201e0:	00050693          	mv	a3,a0
   201e4:	00090713          	mv	a4,s2
   201e8:	00098613          	mv	a2,s3
   201ec:	00040593          	mv	a1,s0
   201f0:	00048513          	mv	a0,s1
   201f4:	000a00e7          	jalr	s4
   201f8:	00050793          	mv	a5,a0
   201fc:	fff00713          	li	a4,-1
   20200:	00078513          	mv	a0,a5
   20204:	00e79a63          	bne	a5,a4,20218 <wcrtomb+0x70>
   20208:	00092023          	sw	zero,0(s2)
   2020c:	08a00793          	li	a5,138
   20210:	00f4a023          	sw	a5,0(s1)
   20214:	fff00513          	li	a0,-1
   20218:	03813083          	ld	ra,56(sp)
   2021c:	03013403          	ld	s0,48(sp)
   20220:	02813483          	ld	s1,40(sp)
   20224:	02013903          	ld	s2,32(sp)
   20228:	01813983          	ld	s3,24(sp)
   2022c:	01013a03          	ld	s4,16(sp)
   20230:	04010113          	addi	sp,sp,64
   20234:	00008067          	ret
   20238:	8401b403          	ld	s0,-1984(gp) # 24430 <__wctomb>
   2023c:	c14f70ef          	jal	17650 <__locale_charset>
   20240:	00050693          	mv	a3,a0
   20244:	00090713          	mv	a4,s2
   20248:	00000613          	li	a2,0
   2024c:	00010593          	mv	a1,sp
   20250:	00048513          	mv	a0,s1
   20254:	000400e7          	jalr	s0
   20258:	00050793          	mv	a5,a0
   2025c:	fa1ff06f          	j	201fc <wcrtomb+0x54>

0000000000020260 <__ascii_wctomb>:
   20260:	00058c63          	beqz	a1,20278 <__ascii_wctomb+0x18>
   20264:	0ff00793          	li	a5,255
   20268:	00c7ec63          	bltu	a5,a2,20280 <__ascii_wctomb+0x20>
   2026c:	00c58023          	sb	a2,0(a1)
   20270:	00100513          	li	a0,1
   20274:	00008067          	ret
   20278:	00000513          	li	a0,0
   2027c:	00008067          	ret
   20280:	08a00793          	li	a5,138
   20284:	00f52023          	sw	a5,0(a0)
   20288:	fff00513          	li	a0,-1
   2028c:	00008067          	ret

0000000000020290 <_wctomb_r>:
   20290:	fd010113          	addi	sp,sp,-48
   20294:	02813023          	sd	s0,32(sp)
   20298:	8401b403          	ld	s0,-1984(gp) # 24430 <__wctomb>
   2029c:	02113423          	sd	ra,40(sp)
   202a0:	00913c23          	sd	s1,24(sp)
   202a4:	01213823          	sd	s2,16(sp)
   202a8:	01313423          	sd	s3,8(sp)
   202ac:	01413023          	sd	s4,0(sp)
   202b0:	00050493          	mv	s1,a0
   202b4:	00068a13          	mv	s4,a3
   202b8:	00058913          	mv	s2,a1
   202bc:	00060993          	mv	s3,a2
   202c0:	b90f70ef          	jal	17650 <__locale_charset>
   202c4:	000a0713          	mv	a4,s4
   202c8:	00050693          	mv	a3,a0
   202cc:	00098613          	mv	a2,s3
   202d0:	00090593          	mv	a1,s2
   202d4:	00048513          	mv	a0,s1
   202d8:	00040313          	mv	t1,s0
   202dc:	02813083          	ld	ra,40(sp)
   202e0:	02013403          	ld	s0,32(sp)
   202e4:	01813483          	ld	s1,24(sp)
   202e8:	01013903          	ld	s2,16(sp)
   202ec:	00813983          	ld	s3,8(sp)
   202f0:	00013a03          	ld	s4,0(sp)
   202f4:	03010113          	addi	sp,sp,48
   202f8:	00030067          	jr	t1

00000000000202fc <__syscall_error>:
   202fc:	ff010113          	addi	sp,sp,-16
   20300:	00113423          	sd	ra,8(sp)
   20304:	00813023          	sd	s0,0(sp)
   20308:	00050413          	mv	s0,a0
   2030c:	3c4000ef          	jal	206d0 <__errno>
   20310:	00813083          	ld	ra,8(sp)
   20314:	408007bb          	negw	a5,s0
   20318:	00f52023          	sw	a5,0(a0)
   2031c:	00013403          	ld	s0,0(sp)
   20320:	fff00513          	li	a0,-1
   20324:	01010113          	addi	sp,sp,16
   20328:	00008067          	ret

000000000002032c <open>:
   2032c:	00000693          	li	a3,0
   20330:	40000893          	li	a7,1024
   20334:	00000073          	ecall
   20338:	fc0542e3          	bltz	a0,202fc <__syscall_error>
   2033c:	0005051b          	sext.w	a0,a0
   20340:	00008067          	ret

0000000000020344 <openat>:
   20344:	03800893          	li	a7,56
   20348:	00000073          	ecall
   2034c:	fa0548e3          	bltz	a0,202fc <__syscall_error>
   20350:	0005051b          	sext.w	a0,a0
   20354:	00008067          	ret

0000000000020358 <lseek>:
   20358:	00000693          	li	a3,0
   2035c:	03e00893          	li	a7,62
   20360:	00000073          	ecall
   20364:	f8054ce3          	bltz	a0,202fc <__syscall_error>
   20368:	00008067          	ret

000000000002036c <read>:
   2036c:	00000693          	li	a3,0
   20370:	03f00893          	li	a7,63
   20374:	00000073          	ecall
   20378:	f80542e3          	bltz	a0,202fc <__syscall_error>
   2037c:	00008067          	ret

0000000000020380 <write>:
   20380:	00000693          	li	a3,0
   20384:	04000893          	li	a7,64
   20388:	00000073          	ecall
   2038c:	f60548e3          	bltz	a0,202fc <__syscall_error>
   20390:	00008067          	ret

0000000000020394 <fstat>:
   20394:	00000613          	li	a2,0
   20398:	00000693          	li	a3,0
   2039c:	05000893          	li	a7,80
   203a0:	00000073          	ecall
   203a4:	f4054ce3          	bltz	a0,202fc <__syscall_error>
   203a8:	0005051b          	sext.w	a0,a0
   203ac:	00008067          	ret

00000000000203b0 <stat>:
   203b0:	00000613          	li	a2,0
   203b4:	00000693          	li	a3,0
   203b8:	40e00893          	li	a7,1038
   203bc:	00000073          	ecall
   203c0:	f2054ee3          	bltz	a0,202fc <__syscall_error>
   203c4:	0005051b          	sext.w	a0,a0
   203c8:	00008067          	ret

00000000000203cc <lstat>:
   203cc:	00000613          	li	a2,0
   203d0:	00000693          	li	a3,0
   203d4:	40f00893          	li	a7,1039
   203d8:	00000073          	ecall
   203dc:	f20540e3          	bltz	a0,202fc <__syscall_error>
   203e0:	0005051b          	sext.w	a0,a0
   203e4:	00008067          	ret

00000000000203e8 <fstatat>:
   203e8:	04f00893          	li	a7,79
   203ec:	00000073          	ecall
   203f0:	f00546e3          	bltz	a0,202fc <__syscall_error>
   203f4:	0005051b          	sext.w	a0,a0
   203f8:	00008067          	ret

00000000000203fc <access>:
   203fc:	00000613          	li	a2,0
   20400:	00000693          	li	a3,0
   20404:	40900893          	li	a7,1033
   20408:	00000073          	ecall
   2040c:	ee0548e3          	bltz	a0,202fc <__syscall_error>
   20410:	0005051b          	sext.w	a0,a0
   20414:	00008067          	ret

0000000000020418 <faccessat>:
   20418:	03000893          	li	a7,48
   2041c:	00000073          	ecall
   20420:	ec054ee3          	bltz	a0,202fc <__syscall_error>
   20424:	0005051b          	sext.w	a0,a0
   20428:	00008067          	ret

000000000002042c <close>:
   2042c:	00000593          	li	a1,0
   20430:	00000613          	li	a2,0
   20434:	00000693          	li	a3,0
   20438:	03900893          	li	a7,57
   2043c:	00000073          	ecall
   20440:	ea054ee3          	bltz	a0,202fc <__syscall_error>
   20444:	0005051b          	sext.w	a0,a0
   20448:	00008067          	ret

000000000002044c <link>:
   2044c:	00000613          	li	a2,0
   20450:	00000693          	li	a3,0
   20454:	40100893          	li	a7,1025
   20458:	00000073          	ecall
   2045c:	ea0540e3          	bltz	a0,202fc <__syscall_error>
   20460:	0005051b          	sext.w	a0,a0
   20464:	00008067          	ret

0000000000020468 <unlink>:
   20468:	00000593          	li	a1,0
   2046c:	00000613          	li	a2,0
   20470:	00000693          	li	a3,0
   20474:	40200893          	li	a7,1026
   20478:	00000073          	ecall
   2047c:	e80540e3          	bltz	a0,202fc <__syscall_error>
   20480:	0005051b          	sext.w	a0,a0
   20484:	00008067          	ret

0000000000020488 <execve>:
   20488:	ff010113          	addi	sp,sp,-16
   2048c:	00113423          	sd	ra,8(sp)
   20490:	240000ef          	jal	206d0 <__errno>
   20494:	00813083          	ld	ra,8(sp)
   20498:	00c00793          	li	a5,12
   2049c:	00f52023          	sw	a5,0(a0)
   204a0:	01010113          	addi	sp,sp,16
   204a4:	fff00513          	li	a0,-1
   204a8:	00008067          	ret

00000000000204ac <fork>:
   204ac:	ff010113          	addi	sp,sp,-16
   204b0:	00113423          	sd	ra,8(sp)
   204b4:	21c000ef          	jal	206d0 <__errno>
   204b8:	00813083          	ld	ra,8(sp)
   204bc:	00b00793          	li	a5,11
   204c0:	00f52023          	sw	a5,0(a0)
   204c4:	01010113          	addi	sp,sp,16
   204c8:	fff00513          	li	a0,-1
   204cc:	00008067          	ret

00000000000204d0 <getpid>:
   204d0:	00100513          	li	a0,1
   204d4:	00008067          	ret

00000000000204d8 <kill>:
   204d8:	ff010113          	addi	sp,sp,-16
   204dc:	00113423          	sd	ra,8(sp)
   204e0:	1f0000ef          	jal	206d0 <__errno>
   204e4:	00813083          	ld	ra,8(sp)
   204e8:	01600793          	li	a5,22
   204ec:	00f52023          	sw	a5,0(a0)
   204f0:	01010113          	addi	sp,sp,16
   204f4:	fff00513          	li	a0,-1
   204f8:	00008067          	ret

00000000000204fc <wait>:
   204fc:	ff010113          	addi	sp,sp,-16
   20500:	00113423          	sd	ra,8(sp)
   20504:	1cc000ef          	jal	206d0 <__errno>
   20508:	00813083          	ld	ra,8(sp)
   2050c:	00a00793          	li	a5,10
   20510:	00f52023          	sw	a5,0(a0)
   20514:	01010113          	addi	sp,sp,16
   20518:	fff00513          	li	a0,-1
   2051c:	00008067          	ret

0000000000020520 <isatty>:
   20520:	f8010113          	addi	sp,sp,-128
   20524:	00010593          	mv	a1,sp
   20528:	00000613          	li	a2,0
   2052c:	00000693          	li	a3,0
   20530:	05000893          	li	a7,80
   20534:	00000073          	ecall
   20538:	dc0542e3          	bltz	a0,202fc <__syscall_error>
   2053c:	fff00793          	li	a5,-1
   20540:	0005051b          	sext.w	a0,a0
   20544:	00f50863          	beq	a0,a5,20554 <isatty+0x34>
   20548:	01012503          	lw	a0,16(sp)
   2054c:	40d5551b          	sraiw	a0,a0,0xd
   20550:	00157513          	andi	a0,a0,1
   20554:	08010113          	addi	sp,sp,128
   20558:	00008067          	ret

000000000002055c <times>:
   2055c:	99018313          	addi	t1,gp,-1648 # 24580 <t0.2343>
   20560:	00033703          	ld	a4,0(t1)
   20564:	ff010113          	addi	sp,sp,-16
   20568:	00050813          	mv	a6,a0
   2056c:	02071063          	bnez	a4,2058c <times+0x30>
   20570:	99018513          	addi	a0,gp,-1648 # 24580 <t0.2343>
   20574:	00000593          	li	a1,0
   20578:	00000613          	li	a2,0
   2057c:	00000693          	li	a3,0
   20580:	0a900893          	li	a7,169
   20584:	00000073          	ecall
   20588:	d6054ae3          	bltz	a0,202fc <__syscall_error>
   2058c:	00010513          	mv	a0,sp
   20590:	00000593          	li	a1,0
   20594:	00000613          	li	a2,0
   20598:	00000693          	li	a3,0
   2059c:	0a900893          	li	a7,169
   205a0:	00000073          	ecall
   205a4:	d4054ce3          	bltz	a0,202fc <__syscall_error>
   205a8:	00033703          	ld	a4,0(t1)
   205ac:	00013783          	ld	a5,0(sp)
   205b0:	fff00513          	li	a0,-1
   205b4:	00083823          	sd	zero,16(a6)
   205b8:	40e786b3          	sub	a3,a5,a4
   205bc:	000f47b7          	lui	a5,0xf4
   205c0:	24078793          	addi	a5,a5,576 # f4240 <_end+0xcd478>
   205c4:	02f68733          	mul	a4,a3,a5
   205c8:	00833683          	ld	a3,8(t1)
   205cc:	00813783          	ld	a5,8(sp)
   205d0:	00083c23          	sd	zero,24(a6)
   205d4:	00083423          	sd	zero,8(a6)
   205d8:	40d787b3          	sub	a5,a5,a3
   205dc:	01010113          	addi	sp,sp,16
   205e0:	00f707b3          	add	a5,a4,a5
   205e4:	00f83023          	sd	a5,0(a6)
   205e8:	00008067          	ret

00000000000205ec <gettimeofday>:
   205ec:	00000593          	li	a1,0
   205f0:	00000613          	li	a2,0
   205f4:	00000693          	li	a3,0
   205f8:	0a900893          	li	a7,169
   205fc:	00000073          	ecall
   20600:	ce054ee3          	bltz	a0,202fc <__syscall_error>
   20604:	0005051b          	sext.w	a0,a0
   20608:	00008067          	ret

000000000002060c <ftime>:
   2060c:	00051423          	sh	zero,8(a0)
   20610:	00053023          	sd	zero,0(a0)
   20614:	00000513          	li	a0,0
   20618:	00008067          	ret

000000000002061c <utime>:
   2061c:	fff00513          	li	a0,-1
   20620:	00008067          	ret

0000000000020624 <chown>:
   20624:	fff00513          	li	a0,-1
   20628:	00008067          	ret

000000000002062c <chmod>:
   2062c:	fff00513          	li	a0,-1
   20630:	00008067          	ret

0000000000020634 <chdir>:
   20634:	fff00513          	li	a0,-1
   20638:	00008067          	ret

000000000002063c <getcwd>:
   2063c:	00000513          	li	a0,0
   20640:	00008067          	ret

0000000000020644 <sysconf>:
   20644:	00200793          	li	a5,2
   20648:	00f51863          	bne	a0,a5,20658 <sysconf+0x14>
   2064c:	000f4537          	lui	a0,0xf4
   20650:	24050513          	addi	a0,a0,576 # f4240 <_end+0xcd478>
   20654:	00008067          	ret
   20658:	fff00513          	li	a0,-1
   2065c:	00008067          	ret

0000000000020660 <sbrk>:
   20660:	9281b703          	ld	a4,-1752(gp) # 24518 <heap_end.2381>
   20664:	00050793          	mv	a5,a0
   20668:	00071863          	bnez	a4,20678 <sbrk+0x18>
   2066c:	00027737          	lui	a4,0x27
   20670:	dc870713          	addi	a4,a4,-568 # 26dc8 <_end>
   20674:	92e1b423          	sd	a4,-1752(gp) # 24518 <heap_end.2381>
   20678:	00e78533          	add	a0,a5,a4
   2067c:	00000593          	li	a1,0
   20680:	00000613          	li	a2,0
   20684:	00000693          	li	a3,0
   20688:	0d600893          	li	a7,214
   2068c:	00000073          	ecall
   20690:	c60546e3          	bltz	a0,202fc <__syscall_error>
   20694:	9281b683          	ld	a3,-1752(gp) # 24518 <heap_end.2381>
   20698:	fff00713          	li	a4,-1
   2069c:	00d787b3          	add	a5,a5,a3
   206a0:	00f51663          	bne	a0,a5,206ac <sbrk+0x4c>
   206a4:	92a1b423          	sd	a0,-1752(gp) # 24518 <heap_end.2381>
   206a8:	00068713          	mv	a4,a3
   206ac:	00070513          	mv	a0,a4
   206b0:	00008067          	ret

00000000000206b4 <_exit>:
   206b4:	00000593          	li	a1,0
   206b8:	00000613          	li	a2,0
   206bc:	00000693          	li	a3,0
   206c0:	05d00893          	li	a7,93
   206c4:	00000073          	ecall
   206c8:	c2054ae3          	bltz	a0,202fc <__syscall_error>
   206cc:	0000006f          	j	206cc <_exit+0x18>

00000000000206d0 <__errno>:
   206d0:	8101b503          	ld	a0,-2032(gp) # 24400 <_impure_ptr>
   206d4:	00008067          	ret

00000000000206d8 <sulp>:
   206d8:	f2050553          	fmv.d.x	fa0,a0
   206dc:	fe010113          	addi	sp,sp,-32
   206e0:	00913423          	sd	s1,8(sp)
   206e4:	00058493          	mv	s1,a1
   206e8:	00813823          	sd	s0,16(sp)
   206ec:	00113c23          	sd	ra,24(sp)
   206f0:	00050413          	mv	s0,a0
   206f4:	a00f80ef          	jal	188f4 <__ulp>
   206f8:	02048a63          	beqz	s1,2072c <sulp+0x54>
   206fc:	42045413          	srai	s0,s0,0x20
   20700:	02141413          	slli	s0,s0,0x21
   20704:	03545413          	srli	s0,s0,0x35
   20708:	06b00793          	li	a5,107
   2070c:	408787bb          	subw	a5,a5,s0
   20710:	00f05e63          	blez	a5,2072c <sulp+0x54>
   20714:	0147979b          	slliw	a5,a5,0x14
   20718:	3ff00737          	lui	a4,0x3ff00
   2071c:	00e787bb          	addw	a5,a5,a4
   20720:	02079793          	slli	a5,a5,0x20
   20724:	f20787d3          	fmv.d.x	fa5,a5
   20728:	12f57553          	fmul.d	fa0,fa0,fa5
   2072c:	01813083          	ld	ra,24(sp)
   20730:	01013403          	ld	s0,16(sp)
   20734:	00813483          	ld	s1,8(sp)
   20738:	02010113          	addi	sp,sp,32
   2073c:	00008067          	ret
