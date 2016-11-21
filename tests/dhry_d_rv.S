
dhry_d_rv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	00015197          	auipc	gp,0x15
   10004:	1d018193          	addi	gp,gp,464 # 251d0 <_gp>
   10008:	00015297          	auipc	t0,0x15
   1000c:	ab028293          	addi	t0,t0,-1360 # 24ab8 <Reg>
   10010:	00017317          	auipc	t1,0x17
   10014:	36830313          	addi	t1,t1,872 # 27378 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00001517          	auipc	a0,0x1
   10028:	14850513          	addi	a0,a0,328 # 1116c <__libc_fini_array>
   1002c:	0fc010ef          	jal	11128 <atexit>
   10030:	198010ef          	jal	111c8 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	0f80106f          	j	1113c <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	00025537          	lui	a0,0x25
   10050:	000257b7          	lui	a5,0x25
   10054:	9c850713          	addi	a4,a0,-1592 # 249c8 <__TMC_END__>
   10058:	9cf78793          	addi	a5,a5,-1585 # 249cf <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	9c850513          	addi	a0,a0,-1592
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	00025537          	lui	a0,0x25
   10084:	000257b7          	lui	a5,0x25
   10088:	9c850593          	addi	a1,a0,-1592 # 249c8 <__TMC_END__>
   1008c:	9c878793          	addi	a5,a5,-1592 # 249c8 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	9c850513          	addi	a0,a0,-1592
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	9201c783          	lbu	a5,-1760(gp) # 24af0 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00022537          	lui	a0,0x22
   100e8:	32050513          	addi	a0,a0,800 # 22320 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	92f18023          	sb	a5,-1760(gp) # 24af0 <_bss_start>
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
   10124:	92818593          	addi	a1,gp,-1752 # 24af8 <object.3092>
   10128:	32050513          	addi	a0,a0,800 # 22320 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	000247b7          	lui	a5,0x24
   10138:	9c878513          	addi	a0,a5,-1592 # 239c8 <__JCR_END__>
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

0000000000010164 <main>:
   10164:	f8010113          	addi	sp,sp,-128
   10168:	06113c23          	sd	ra,120(sp)
   1016c:	06813823          	sd	s0,112(sp)
   10170:	08010413          	addi	s0,sp,128
   10174:	03800513          	li	a0,56
   10178:	0f0010ef          	jal	11268 <malloc>
   1017c:	00050713          	mv	a4,a0
   10180:	000277b7          	lui	a5,0x27
   10184:	28e7b823          	sd	a4,656(a5) # 27290 <Next_Ptr_Glob>
   10188:	03800513          	li	a0,56
   1018c:	0dc010ef          	jal	11268 <malloc>
   10190:	00050713          	mv	a4,a0
   10194:	000277b7          	lui	a5,0x27
   10198:	2ae7b023          	sd	a4,672(a5) # 272a0 <Ptr_Glob>
   1019c:	000277b7          	lui	a5,0x27
   101a0:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   101a4:	00027737          	lui	a4,0x27
   101a8:	29073703          	ld	a4,656(a4) # 27290 <Next_Ptr_Glob>
   101ac:	00e7b023          	sd	a4,0(a5)
   101b0:	000277b7          	lui	a5,0x27
   101b4:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   101b8:	0007a423          	sw	zero,8(a5)
   101bc:	000277b7          	lui	a5,0x27
   101c0:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   101c4:	00200713          	li	a4,2
   101c8:	00e7a623          	sw	a4,12(a5)
   101cc:	000277b7          	lui	a5,0x27
   101d0:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   101d4:	02800713          	li	a4,40
   101d8:	00e7a823          	sw	a4,16(a5)
   101dc:	000277b7          	lui	a5,0x27
   101e0:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   101e4:	01478713          	addi	a4,a5,20
   101e8:	000217b7          	lui	a5,0x21
   101ec:	00070693          	mv	a3,a4
   101f0:	ce878793          	addi	a5,a5,-792 # 20ce8 <sulp+0x6c>
   101f4:	01f00713          	li	a4,31
   101f8:	00070613          	mv	a2,a4
   101fc:	00078593          	mv	a1,a5
   10200:	00068513          	mv	a0,a3
   10204:	7ec010ef          	jal	119f0 <memcpy>
   10208:	000217b7          	lui	a5,0x21
   1020c:	d087b703          	ld	a4,-760(a5) # 20d08 <sulp+0x8c>
   10210:	fae43823          	sd	a4,-80(s0)
   10214:	d0878713          	addi	a4,a5,-760
   10218:	00873703          	ld	a4,8(a4)
   1021c:	fae43c23          	sd	a4,-72(s0)
   10220:	d0878713          	addi	a4,a5,-760
   10224:	01073703          	ld	a4,16(a4)
   10228:	fce43023          	sd	a4,-64(s0)
   1022c:	d0878713          	addi	a4,a5,-760
   10230:	01872703          	lw	a4,24(a4)
   10234:	fce42423          	sw	a4,-56(s0)
   10238:	d0878713          	addi	a4,a5,-760
   1023c:	01c75703          	lhu	a4,28(a4)
   10240:	fce41623          	sh	a4,-52(s0)
   10244:	d0878793          	addi	a5,a5,-760
   10248:	01e7c783          	lbu	a5,30(a5)
   1024c:	fcf40723          	sb	a5,-50(s0)
   10250:	9a818793          	addi	a5,gp,-1624 # 24b78 <Arr_2_Glob>
   10254:	00a00713          	li	a4,10
   10258:	64e7ae23          	sw	a4,1628(a5)
   1025c:	00a00513          	li	a0,10
   10260:	155010ef          	jal	11bb4 <putchar>
   10264:	000217b7          	lui	a5,0x21
   10268:	d2878513          	addi	a0,a5,-728 # 20d28 <sulp+0xac>
   1026c:	36d010ef          	jal	11dd8 <puts>
   10270:	00a00513          	li	a0,10
   10274:	141010ef          	jal	11bb4 <putchar>
   10278:	8e81a783          	lw	a5,-1816(gp) # 24ab8 <Reg>
   1027c:	00078e63          	beqz	a5,10298 <main+0x134>
   10280:	000217b7          	lui	a5,0x21
   10284:	d5878513          	addi	a0,a5,-680 # 20d58 <sulp+0xdc>
   10288:	351010ef          	jal	11dd8 <puts>
   1028c:	00a00513          	li	a0,10
   10290:	125010ef          	jal	11bb4 <putchar>
   10294:	0180006f          	j	102ac <main+0x148>
   10298:	000217b7          	lui	a5,0x21
   1029c:	d8878513          	addi	a0,a5,-632 # 20d88 <sulp+0x10c>
   102a0:	339010ef          	jal	11dd8 <puts>
   102a4:	00a00513          	li	a0,10
   102a8:	10d010ef          	jal	11bb4 <putchar>
   102ac:	000217b7          	lui	a5,0x21
   102b0:	db878513          	addi	a0,a5,-584 # 20db8 <sulp+0x13c>
   102b4:	0a9010ef          	jal	11b5c <printf>
   102b8:	f8c40793          	addi	a5,s0,-116
   102bc:	00078593          	mv	a1,a5
   102c0:	000217b7          	lui	a5,0x21
   102c4:	df078513          	addi	a0,a5,-528 # 20df0 <sulp+0x174>
   102c8:	31d010ef          	jal	11de4 <scanf>
   102cc:	f8c42783          	lw	a5,-116(s0)
   102d0:	fef42023          	sw	a5,-32(s0)
   102d4:	00a00513          	li	a0,10
   102d8:	0dd010ef          	jal	11bb4 <putchar>
   102dc:	fe042583          	lw	a1,-32(s0)
   102e0:	000217b7          	lui	a5,0x21
   102e4:	df878513          	addi	a0,a5,-520 # 20df8 <sulp+0x17c>
   102e8:	075010ef          	jal	11b5c <printf>
   102ec:	00000513          	li	a0,0
   102f0:	585010ef          	jal	12074 <time>
   102f4:	00050713          	mv	a4,a0
   102f8:	9ae1b023          	sd	a4,-1632(gp) # 24b70 <Begin_Time>
   102fc:	00100793          	li	a5,1
   10300:	fef42223          	sw	a5,-28(s0)
   10304:	2240006f          	j	10528 <main+0x3c4>
   10308:	191000ef          	jal	10c98 <Proc_5>
   1030c:	131000ef          	jal	10c3c <Proc_4>
   10310:	00200793          	li	a5,2
   10314:	fcf42e23          	sw	a5,-36(s0)
   10318:	00300793          	li	a5,3
   1031c:	fef42623          	sw	a5,-20(s0)
   10320:	000217b7          	lui	a5,0x21
   10324:	e287b703          	ld	a4,-472(a5) # 20e28 <sulp+0x1ac>
   10328:	f8e43823          	sd	a4,-112(s0)
   1032c:	e2878713          	addi	a4,a5,-472
   10330:	00873703          	ld	a4,8(a4)
   10334:	f8e43c23          	sd	a4,-104(s0)
   10338:	e2878713          	addi	a4,a5,-472
   1033c:	01073703          	ld	a4,16(a4)
   10340:	fae43023          	sd	a4,-96(s0)
   10344:	e2878713          	addi	a4,a5,-472
   10348:	01872703          	lw	a4,24(a4)
   1034c:	fae42423          	sw	a4,-88(s0)
   10350:	e2878713          	addi	a4,a5,-472
   10354:	01c75703          	lhu	a4,28(a4)
   10358:	fae41623          	sh	a4,-84(s0)
   1035c:	e2878793          	addi	a5,a5,-472
   10360:	01e7c783          	lbu	a5,30(a5)
   10364:	faf40723          	sb	a5,-82(s0)
   10368:	00100793          	li	a5,1
   1036c:	fcf42a23          	sw	a5,-44(s0)
   10370:	f9040713          	addi	a4,s0,-112
   10374:	fb040793          	addi	a5,s0,-80
   10378:	00070593          	mv	a1,a4
   1037c:	00078513          	mv	a0,a5
   10380:	469000ef          	jal	10fe8 <Func_2>
   10384:	00050793          	mv	a5,a0
   10388:	0017b793          	seqz	a5,a5
   1038c:	0ff7f793          	andi	a5,a5,255
   10390:	00078713          	mv	a4,a5
   10394:	000277b7          	lui	a5,0x27
   10398:	36e7a823          	sw	a4,880(a5) # 27370 <Bool_Glob>
   1039c:	0440006f          	j	103e0 <main+0x27c>
   103a0:	fdc42703          	lw	a4,-36(s0)
   103a4:	00070793          	mv	a5,a4
   103a8:	0027979b          	slliw	a5,a5,0x2
   103ac:	00e7873b          	addw	a4,a5,a4
   103b0:	fec42783          	lw	a5,-20(s0)
   103b4:	40f707bb          	subw	a5,a4,a5
   103b8:	fcf42c23          	sw	a5,-40(s0)
   103bc:	fdc42783          	lw	a5,-36(s0)
   103c0:	fd840713          	addi	a4,s0,-40
   103c4:	00070613          	mv	a2,a4
   103c8:	fec42583          	lw	a1,-20(s0)
   103cc:	00078513          	mv	a0,a5
   103d0:	1d9000ef          	jal	10da8 <Proc_7>
   103d4:	fdc42783          	lw	a5,-36(s0)
   103d8:	0017879b          	addiw	a5,a5,1
   103dc:	fcf42e23          	sw	a5,-36(s0)
   103e0:	fdc42703          	lw	a4,-36(s0)
   103e4:	fec42783          	lw	a5,-20(s0)
   103e8:	faf74ce3          	blt	a4,a5,103a0 <main+0x23c>
   103ec:	fdc42783          	lw	a5,-36(s0)
   103f0:	fd842703          	lw	a4,-40(s0)
   103f4:	00070693          	mv	a3,a4
   103f8:	00078613          	mv	a2,a5
   103fc:	9a818593          	addi	a1,gp,-1624 # 24b78 <Arr_2_Glob>
   10400:	000277b7          	lui	a5,0x27
   10404:	2a878513          	addi	a0,a5,680 # 272a8 <Arr_1_Glob>
   10408:	1ed000ef          	jal	10df4 <Proc_8>
   1040c:	000277b7          	lui	a5,0x27
   10410:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   10414:	00078513          	mv	a0,a5
   10418:	5d8000ef          	jal	109f0 <Proc_1>
   1041c:	04100793          	li	a5,65
   10420:	fef405a3          	sb	a5,-21(s0)
   10424:	0980006f          	j	104bc <main+0x358>
   10428:	feb44783          	lbu	a5,-21(s0)
   1042c:	04300593          	li	a1,67
   10430:	00078513          	mv	a0,a5
   10434:	355000ef          	jal	10f88 <Func_1>
   10438:	00050713          	mv	a4,a0
   1043c:	fd442783          	lw	a5,-44(s0)
   10440:	06f71863          	bne	a4,a5,104b0 <main+0x34c>
   10444:	fd440793          	addi	a5,s0,-44
   10448:	00078593          	mv	a1,a5
   1044c:	00000513          	li	a0,0
   10450:	07d000ef          	jal	10ccc <Proc_6>
   10454:	000217b7          	lui	a5,0x21
   10458:	e487b703          	ld	a4,-440(a5) # 20e48 <sulp+0x1cc>
   1045c:	f8e43823          	sd	a4,-112(s0)
   10460:	e4878713          	addi	a4,a5,-440
   10464:	00873703          	ld	a4,8(a4)
   10468:	f8e43c23          	sd	a4,-104(s0)
   1046c:	e4878713          	addi	a4,a5,-440
   10470:	01073703          	ld	a4,16(a4)
   10474:	fae43023          	sd	a4,-96(s0)
   10478:	e4878713          	addi	a4,a5,-440
   1047c:	01872703          	lw	a4,24(a4)
   10480:	fae42423          	sw	a4,-88(s0)
   10484:	e4878713          	addi	a4,a5,-440
   10488:	01c75703          	lhu	a4,28(a4)
   1048c:	fae41623          	sh	a4,-84(s0)
   10490:	e4878793          	addi	a5,a5,-440
   10494:	01e7c783          	lbu	a5,30(a5)
   10498:	faf40723          	sb	a5,-82(s0)
   1049c:	fe442783          	lw	a5,-28(s0)
   104a0:	fef42623          	sw	a5,-20(s0)
   104a4:	000277b7          	lui	a5,0x27
   104a8:	fe442703          	lw	a4,-28(s0)
   104ac:	28e7ac23          	sw	a4,664(a5) # 27298 <Int_Glob>
   104b0:	feb44783          	lbu	a5,-21(s0)
   104b4:	0017879b          	addiw	a5,a5,1
   104b8:	fef405a3          	sb	a5,-21(s0)
   104bc:	000277b7          	lui	a5,0x27
   104c0:	29d7c703          	lbu	a4,669(a5) # 2729d <Ch_2_Glob>
   104c4:	feb44783          	lbu	a5,-21(s0)
   104c8:	f6f770e3          	bleu	a5,a4,10428 <main+0x2c4>
   104cc:	fdc42783          	lw	a5,-36(s0)
   104d0:	fec42703          	lw	a4,-20(s0)
   104d4:	02f707bb          	mulw	a5,a4,a5
   104d8:	fef42623          	sw	a5,-20(s0)
   104dc:	fd842783          	lw	a5,-40(s0)
   104e0:	fec42703          	lw	a4,-20(s0)
   104e4:	02f747bb          	divw	a5,a4,a5
   104e8:	fcf42e23          	sw	a5,-36(s0)
   104ec:	fd842783          	lw	a5,-40(s0)
   104f0:	fec42703          	lw	a4,-20(s0)
   104f4:	40f7073b          	subw	a4,a4,a5
   104f8:	00070793          	mv	a5,a4
   104fc:	0037979b          	slliw	a5,a5,0x3
   10500:	40e7873b          	subw	a4,a5,a4
   10504:	fdc42783          	lw	a5,-36(s0)
   10508:	40f707bb          	subw	a5,a4,a5
   1050c:	fef42623          	sw	a5,-20(s0)
   10510:	fdc40793          	addi	a5,s0,-36
   10514:	00078513          	mv	a0,a5
   10518:	640000ef          	jal	10b58 <Proc_2>
   1051c:	fe442783          	lw	a5,-28(s0)
   10520:	0017879b          	addiw	a5,a5,1
   10524:	fef42223          	sw	a5,-28(s0)
   10528:	fe442703          	lw	a4,-28(s0)
   1052c:	fe042783          	lw	a5,-32(s0)
   10530:	dce7dce3          	ble	a4,a5,10308 <main+0x1a4>
   10534:	00000513          	li	a0,0
   10538:	33d010ef          	jal	12074 <time>
   1053c:	00050713          	mv	a4,a0
   10540:	000277b7          	lui	a5,0x27
   10544:	28e7b423          	sd	a4,648(a5) # 27288 <End_Time>
   10548:	000217b7          	lui	a5,0x21
   1054c:	e6878513          	addi	a0,a5,-408 # 20e68 <sulp+0x1ec>
   10550:	089010ef          	jal	11dd8 <puts>
   10554:	00a00513          	li	a0,10
   10558:	65c010ef          	jal	11bb4 <putchar>
   1055c:	000217b7          	lui	a5,0x21
   10560:	e7878513          	addi	a0,a5,-392 # 20e78 <sulp+0x1fc>
   10564:	075010ef          	jal	11dd8 <puts>
   10568:	00a00513          	li	a0,10
   1056c:	648010ef          	jal	11bb4 <putchar>
   10570:	000277b7          	lui	a5,0x27
   10574:	2987a783          	lw	a5,664(a5) # 27298 <Int_Glob>
   10578:	00078593          	mv	a1,a5
   1057c:	000217b7          	lui	a5,0x21
   10580:	eb078513          	addi	a0,a5,-336 # 20eb0 <sulp+0x234>
   10584:	5d8010ef          	jal	11b5c <printf>
   10588:	00500593          	li	a1,5
   1058c:	000217b7          	lui	a5,0x21
   10590:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   10594:	5c8010ef          	jal	11b5c <printf>
   10598:	000277b7          	lui	a5,0x27
   1059c:	3707a783          	lw	a5,880(a5) # 27370 <Bool_Glob>
   105a0:	00078593          	mv	a1,a5
   105a4:	000217b7          	lui	a5,0x21
   105a8:	ef078513          	addi	a0,a5,-272 # 20ef0 <sulp+0x274>
   105ac:	5b0010ef          	jal	11b5c <printf>
   105b0:	00100593          	li	a1,1
   105b4:	000217b7          	lui	a5,0x21
   105b8:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   105bc:	5a0010ef          	jal	11b5c <printf>
   105c0:	000277b7          	lui	a5,0x27
   105c4:	29c7c783          	lbu	a5,668(a5) # 2729c <Ch_1_Glob>
   105c8:	00078593          	mv	a1,a5
   105cc:	000217b7          	lui	a5,0x21
   105d0:	f1078513          	addi	a0,a5,-240 # 20f10 <sulp+0x294>
   105d4:	588010ef          	jal	11b5c <printf>
   105d8:	04100593          	li	a1,65
   105dc:	000217b7          	lui	a5,0x21
   105e0:	f3078513          	addi	a0,a5,-208 # 20f30 <sulp+0x2b4>
   105e4:	578010ef          	jal	11b5c <printf>
   105e8:	000277b7          	lui	a5,0x27
   105ec:	29d7c783          	lbu	a5,669(a5) # 2729d <Ch_2_Glob>
   105f0:	00078593          	mv	a1,a5
   105f4:	000217b7          	lui	a5,0x21
   105f8:	f5078513          	addi	a0,a5,-176 # 20f50 <sulp+0x2d4>
   105fc:	560010ef          	jal	11b5c <printf>
   10600:	04200593          	li	a1,66
   10604:	000217b7          	lui	a5,0x21
   10608:	f3078513          	addi	a0,a5,-208 # 20f30 <sulp+0x2b4>
   1060c:	550010ef          	jal	11b5c <printf>
   10610:	000277b7          	lui	a5,0x27
   10614:	2a878793          	addi	a5,a5,680 # 272a8 <Arr_1_Glob>
   10618:	0207a783          	lw	a5,32(a5)
   1061c:	00078593          	mv	a1,a5
   10620:	000217b7          	lui	a5,0x21
   10624:	f7078513          	addi	a0,a5,-144 # 20f70 <sulp+0x2f4>
   10628:	534010ef          	jal	11b5c <printf>
   1062c:	00700593          	li	a1,7
   10630:	000217b7          	lui	a5,0x21
   10634:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   10638:	524010ef          	jal	11b5c <printf>
   1063c:	9a818793          	addi	a5,gp,-1624 # 24b78 <Arr_2_Glob>
   10640:	65c7a783          	lw	a5,1628(a5)
   10644:	00078593          	mv	a1,a5
   10648:	000217b7          	lui	a5,0x21
   1064c:	f9078513          	addi	a0,a5,-112 # 20f90 <sulp+0x314>
   10650:	50c010ef          	jal	11b5c <printf>
   10654:	000217b7          	lui	a5,0x21
   10658:	fb078513          	addi	a0,a5,-80 # 20fb0 <sulp+0x334>
   1065c:	77c010ef          	jal	11dd8 <puts>
   10660:	000217b7          	lui	a5,0x21
   10664:	fe078513          	addi	a0,a5,-32 # 20fe0 <sulp+0x364>
   10668:	770010ef          	jal	11dd8 <puts>
   1066c:	000277b7          	lui	a5,0x27
   10670:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   10674:	0007b783          	ld	a5,0(a5)
   10678:	0007879b          	sext.w	a5,a5
   1067c:	00078593          	mv	a1,a5
   10680:	000217b7          	lui	a5,0x21
   10684:	ff078513          	addi	a0,a5,-16 # 20ff0 <sulp+0x374>
   10688:	4d4010ef          	jal	11b5c <printf>
   1068c:	000217b7          	lui	a5,0x21
   10690:	01078513          	addi	a0,a5,16 # 21010 <sulp+0x394>
   10694:	744010ef          	jal	11dd8 <puts>
   10698:	000277b7          	lui	a5,0x27
   1069c:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   106a0:	0087a783          	lw	a5,8(a5)
   106a4:	00078593          	mv	a1,a5
   106a8:	000217b7          	lui	a5,0x21
   106ac:	04078513          	addi	a0,a5,64 # 21040 <sulp+0x3c4>
   106b0:	4ac010ef          	jal	11b5c <printf>
   106b4:	00000593          	li	a1,0
   106b8:	000217b7          	lui	a5,0x21
   106bc:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   106c0:	49c010ef          	jal	11b5c <printf>
   106c4:	000277b7          	lui	a5,0x27
   106c8:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   106cc:	00c7a783          	lw	a5,12(a5)
   106d0:	00078593          	mv	a1,a5
   106d4:	000217b7          	lui	a5,0x21
   106d8:	06078513          	addi	a0,a5,96 # 21060 <sulp+0x3e4>
   106dc:	480010ef          	jal	11b5c <printf>
   106e0:	00200593          	li	a1,2
   106e4:	000217b7          	lui	a5,0x21
   106e8:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   106ec:	470010ef          	jal	11b5c <printf>
   106f0:	000277b7          	lui	a5,0x27
   106f4:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   106f8:	0107a783          	lw	a5,16(a5)
   106fc:	00078593          	mv	a1,a5
   10700:	000217b7          	lui	a5,0x21
   10704:	08078513          	addi	a0,a5,128 # 21080 <sulp+0x404>
   10708:	454010ef          	jal	11b5c <printf>
   1070c:	01100593          	li	a1,17
   10710:	000217b7          	lui	a5,0x21
   10714:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   10718:	444010ef          	jal	11b5c <printf>
   1071c:	000277b7          	lui	a5,0x27
   10720:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   10724:	01478793          	addi	a5,a5,20
   10728:	00078593          	mv	a1,a5
   1072c:	000217b7          	lui	a5,0x21
   10730:	0a078513          	addi	a0,a5,160 # 210a0 <sulp+0x424>
   10734:	428010ef          	jal	11b5c <printf>
   10738:	000217b7          	lui	a5,0x21
   1073c:	0c078513          	addi	a0,a5,192 # 210c0 <sulp+0x444>
   10740:	698010ef          	jal	11dd8 <puts>
   10744:	000217b7          	lui	a5,0x21
   10748:	0f878513          	addi	a0,a5,248 # 210f8 <sulp+0x47c>
   1074c:	68c010ef          	jal	11dd8 <puts>
   10750:	000277b7          	lui	a5,0x27
   10754:	2907b783          	ld	a5,656(a5) # 27290 <Next_Ptr_Glob>
   10758:	0007b783          	ld	a5,0(a5)
   1075c:	0007879b          	sext.w	a5,a5
   10760:	00078593          	mv	a1,a5
   10764:	000217b7          	lui	a5,0x21
   10768:	ff078513          	addi	a0,a5,-16 # 20ff0 <sulp+0x374>
   1076c:	3f0010ef          	jal	11b5c <printf>
   10770:	000217b7          	lui	a5,0x21
   10774:	10878513          	addi	a0,a5,264 # 21108 <sulp+0x48c>
   10778:	660010ef          	jal	11dd8 <puts>
   1077c:	000277b7          	lui	a5,0x27
   10780:	2907b783          	ld	a5,656(a5) # 27290 <Next_Ptr_Glob>
   10784:	0087a783          	lw	a5,8(a5)
   10788:	00078593          	mv	a1,a5
   1078c:	000217b7          	lui	a5,0x21
   10790:	04078513          	addi	a0,a5,64 # 21040 <sulp+0x3c4>
   10794:	3c8010ef          	jal	11b5c <printf>
   10798:	00000593          	li	a1,0
   1079c:	000217b7          	lui	a5,0x21
   107a0:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   107a4:	3b8010ef          	jal	11b5c <printf>
   107a8:	000277b7          	lui	a5,0x27
   107ac:	2907b783          	ld	a5,656(a5) # 27290 <Next_Ptr_Glob>
   107b0:	00c7a783          	lw	a5,12(a5)
   107b4:	00078593          	mv	a1,a5
   107b8:	000217b7          	lui	a5,0x21
   107bc:	06078513          	addi	a0,a5,96 # 21060 <sulp+0x3e4>
   107c0:	39c010ef          	jal	11b5c <printf>
   107c4:	00100593          	li	a1,1
   107c8:	000217b7          	lui	a5,0x21
   107cc:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   107d0:	38c010ef          	jal	11b5c <printf>
   107d4:	000277b7          	lui	a5,0x27
   107d8:	2907b783          	ld	a5,656(a5) # 27290 <Next_Ptr_Glob>
   107dc:	0107a783          	lw	a5,16(a5)
   107e0:	00078593          	mv	a1,a5
   107e4:	000217b7          	lui	a5,0x21
   107e8:	08078513          	addi	a0,a5,128 # 21080 <sulp+0x404>
   107ec:	370010ef          	jal	11b5c <printf>
   107f0:	01200593          	li	a1,18
   107f4:	000217b7          	lui	a5,0x21
   107f8:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   107fc:	360010ef          	jal	11b5c <printf>
   10800:	000277b7          	lui	a5,0x27
   10804:	2907b783          	ld	a5,656(a5) # 27290 <Next_Ptr_Glob>
   10808:	01478793          	addi	a5,a5,20
   1080c:	00078593          	mv	a1,a5
   10810:	000217b7          	lui	a5,0x21
   10814:	0a078513          	addi	a0,a5,160 # 210a0 <sulp+0x424>
   10818:	344010ef          	jal	11b5c <printf>
   1081c:	000217b7          	lui	a5,0x21
   10820:	0c078513          	addi	a0,a5,192 # 210c0 <sulp+0x444>
   10824:	5b4010ef          	jal	11dd8 <puts>
   10828:	fdc42783          	lw	a5,-36(s0)
   1082c:	00078593          	mv	a1,a5
   10830:	000217b7          	lui	a5,0x21
   10834:	14878513          	addi	a0,a5,328 # 21148 <sulp+0x4cc>
   10838:	324010ef          	jal	11b5c <printf>
   1083c:	00500593          	li	a1,5
   10840:	000217b7          	lui	a5,0x21
   10844:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   10848:	314010ef          	jal	11b5c <printf>
   1084c:	fec42583          	lw	a1,-20(s0)
   10850:	000217b7          	lui	a5,0x21
   10854:	16878513          	addi	a0,a5,360 # 21168 <sulp+0x4ec>
   10858:	304010ef          	jal	11b5c <printf>
   1085c:	00d00593          	li	a1,13
   10860:	000217b7          	lui	a5,0x21
   10864:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   10868:	2f4010ef          	jal	11b5c <printf>
   1086c:	fd842783          	lw	a5,-40(s0)
   10870:	00078593          	mv	a1,a5
   10874:	000217b7          	lui	a5,0x21
   10878:	18878513          	addi	a0,a5,392 # 21188 <sulp+0x50c>
   1087c:	2e0010ef          	jal	11b5c <printf>
   10880:	00700593          	li	a1,7
   10884:	000217b7          	lui	a5,0x21
   10888:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   1088c:	2d0010ef          	jal	11b5c <printf>
   10890:	fd442783          	lw	a5,-44(s0)
   10894:	00078593          	mv	a1,a5
   10898:	000217b7          	lui	a5,0x21
   1089c:	1a878513          	addi	a0,a5,424 # 211a8 <sulp+0x52c>
   108a0:	2bc010ef          	jal	11b5c <printf>
   108a4:	00100593          	li	a1,1
   108a8:	000217b7          	lui	a5,0x21
   108ac:	ed078513          	addi	a0,a5,-304 # 20ed0 <sulp+0x254>
   108b0:	2ac010ef          	jal	11b5c <printf>
   108b4:	fb040793          	addi	a5,s0,-80
   108b8:	00078593          	mv	a1,a5
   108bc:	000217b7          	lui	a5,0x21
   108c0:	1c878513          	addi	a0,a5,456 # 211c8 <sulp+0x54c>
   108c4:	298010ef          	jal	11b5c <printf>
   108c8:	000217b7          	lui	a5,0x21
   108cc:	1e878513          	addi	a0,a5,488 # 211e8 <sulp+0x56c>
   108d0:	508010ef          	jal	11dd8 <puts>
   108d4:	f9040793          	addi	a5,s0,-112
   108d8:	00078593          	mv	a1,a5
   108dc:	000217b7          	lui	a5,0x21
   108e0:	22078513          	addi	a0,a5,544 # 21220 <sulp+0x5a4>
   108e4:	278010ef          	jal	11b5c <printf>
   108e8:	000217b7          	lui	a5,0x21
   108ec:	24078513          	addi	a0,a5,576 # 21240 <sulp+0x5c4>
   108f0:	4e8010ef          	jal	11dd8 <puts>
   108f4:	00a00513          	li	a0,10
   108f8:	2bc010ef          	jal	11bb4 <putchar>
   108fc:	000277b7          	lui	a5,0x27
   10900:	2887b703          	ld	a4,648(a5) # 27288 <End_Time>
   10904:	9a01b783          	ld	a5,-1632(gp) # 24b70 <Begin_Time>
   10908:	40f70733          	sub	a4,a4,a5
   1090c:	98e1bc23          	sd	a4,-1640(gp) # 24b68 <User_Time>
   10910:	9981b703          	ld	a4,-1640(gp) # 24b68 <User_Time>
   10914:	00100793          	li	a5,1
   10918:	02e7c463          	blt	a5,a4,10940 <main+0x7dc>
   1091c:	000217b7          	lui	a5,0x21
   10920:	27878513          	addi	a0,a5,632 # 21278 <sulp+0x5fc>
   10924:	4b4010ef          	jal	11dd8 <puts>
   10928:	000217b7          	lui	a5,0x21
   1092c:	2b078513          	addi	a0,a5,688 # 212b0 <sulp+0x634>
   10930:	4a8010ef          	jal	11dd8 <puts>
   10934:	00a00513          	li	a0,10
   10938:	27c010ef          	jal	11bb4 <putchar>
   1093c:	09c0006f          	j	109d8 <main+0x874>
   10940:	9981b783          	ld	a5,-1640(gp) # 24b68 <User_Time>
   10944:	d027f7d3          	fcvt.s.l	fa5,a5
   10948:	42078753          	fcvt.d.s	fa4,fa5
   1094c:	000217b7          	lui	a5,0x21
   10950:	3387b787          	fld	fa5,824(a5) # 21338 <sulp+0x6bc>
   10954:	12f77753          	fmul.d	fa4,fa4,fa5
   10958:	fe042783          	lw	a5,-32(s0)
   1095c:	d007f7d3          	fcvt.s.w	fa5,a5
   10960:	420787d3          	fcvt.d.s	fa5,fa5
   10964:	1af777d3          	fdiv.d	fa5,fa4,fa5
   10968:	4017f7d3          	fcvt.s.d	fa5,fa5
   1096c:	98f1a827          	fsw	fa5,-1648(gp) # 24b60 <Microseconds>
   10970:	fe042783          	lw	a5,-32(s0)
   10974:	d007f753          	fcvt.s.w	fa4,a5
   10978:	9981b783          	ld	a5,-1640(gp) # 24b68 <User_Time>
   1097c:	d027f7d3          	fcvt.s.l	fa5,a5
   10980:	18f777d3          	fdiv.s	fa5,fa4,fa5
   10984:	98f1aa27          	fsw	fa5,-1644(gp) # 24b64 <Dhrystones_Per_Second>
   10988:	000217b7          	lui	a5,0x21
   1098c:	2d078513          	addi	a0,a5,720 # 212d0 <sulp+0x654>
   10990:	1cc010ef          	jal	11b5c <printf>
   10994:	9901a787          	flw	fa5,-1648(gp) # 24b60 <Microseconds>
   10998:	420787d3          	fcvt.d.s	fa5,fa5
   1099c:	e20785d3          	fmv.x.d	a1,fa5
   109a0:	000217b7          	lui	a5,0x21
   109a4:	30078513          	addi	a0,a5,768 # 21300 <sulp+0x684>
   109a8:	1b4010ef          	jal	11b5c <printf>
   109ac:	000217b7          	lui	a5,0x21
   109b0:	30878513          	addi	a0,a5,776 # 21308 <sulp+0x68c>
   109b4:	1a8010ef          	jal	11b5c <printf>
   109b8:	9941a787          	flw	fa5,-1644(gp) # 24b64 <Dhrystones_Per_Second>
   109bc:	420787d3          	fcvt.d.s	fa5,fa5
   109c0:	e20785d3          	fmv.x.d	a1,fa5
   109c4:	000217b7          	lui	a5,0x21
   109c8:	30078513          	addi	a0,a5,768 # 21300 <sulp+0x684>
   109cc:	190010ef          	jal	11b5c <printf>
   109d0:	00a00513          	li	a0,10
   109d4:	1e0010ef          	jal	11bb4 <putchar>
   109d8:	00000793          	li	a5,0
   109dc:	00078513          	mv	a0,a5
   109e0:	07813083          	ld	ra,120(sp)
   109e4:	07013403          	ld	s0,112(sp)
   109e8:	08010113          	addi	sp,sp,128
   109ec:	00008067          	ret

00000000000109f0 <Proc_1>:
   109f0:	fd010113          	addi	sp,sp,-48
   109f4:	02113423          	sd	ra,40(sp)
   109f8:	02813023          	sd	s0,32(sp)
   109fc:	03010413          	addi	s0,sp,48
   10a00:	fca43c23          	sd	a0,-40(s0)
   10a04:	fd843783          	ld	a5,-40(s0)
   10a08:	0007b783          	ld	a5,0(a5)
   10a0c:	fef43423          	sd	a5,-24(s0)
   10a10:	fd843783          	ld	a5,-40(s0)
   10a14:	0007b783          	ld	a5,0(a5)
   10a18:	00027737          	lui	a4,0x27
   10a1c:	2a073703          	ld	a4,672(a4) # 272a0 <Ptr_Glob>
   10a20:	00073683          	ld	a3,0(a4)
   10a24:	00d7b023          	sd	a3,0(a5)
   10a28:	00873683          	ld	a3,8(a4)
   10a2c:	00d7b423          	sd	a3,8(a5)
   10a30:	01073683          	ld	a3,16(a4)
   10a34:	00d7b823          	sd	a3,16(a5)
   10a38:	01873683          	ld	a3,24(a4)
   10a3c:	00d7bc23          	sd	a3,24(a5)
   10a40:	02073683          	ld	a3,32(a4)
   10a44:	02d7b023          	sd	a3,32(a5)
   10a48:	02873683          	ld	a3,40(a4)
   10a4c:	02d7b423          	sd	a3,40(a5)
   10a50:	03073703          	ld	a4,48(a4)
   10a54:	02e7b823          	sd	a4,48(a5)
   10a58:	fd843783          	ld	a5,-40(s0)
   10a5c:	00500713          	li	a4,5
   10a60:	00e7a823          	sw	a4,16(a5)
   10a64:	fd843783          	ld	a5,-40(s0)
   10a68:	0107a703          	lw	a4,16(a5)
   10a6c:	fe843783          	ld	a5,-24(s0)
   10a70:	00e7a823          	sw	a4,16(a5)
   10a74:	fd843783          	ld	a5,-40(s0)
   10a78:	0007b703          	ld	a4,0(a5)
   10a7c:	fe843783          	ld	a5,-24(s0)
   10a80:	00e7b023          	sd	a4,0(a5)
   10a84:	fe843783          	ld	a5,-24(s0)
   10a88:	00078513          	mv	a0,a5
   10a8c:	140000ef          	jal	10bcc <Proc_3>
   10a90:	fe843783          	ld	a5,-24(s0)
   10a94:	0087a783          	lw	a5,8(a5)
   10a98:	06079263          	bnez	a5,10afc <Proc_1+0x10c>
   10a9c:	fe843783          	ld	a5,-24(s0)
   10aa0:	00600713          	li	a4,6
   10aa4:	00e7a823          	sw	a4,16(a5)
   10aa8:	fd843783          	ld	a5,-40(s0)
   10aac:	00c7a703          	lw	a4,12(a5)
   10ab0:	fe843783          	ld	a5,-24(s0)
   10ab4:	00c78793          	addi	a5,a5,12
   10ab8:	00078593          	mv	a1,a5
   10abc:	00070513          	mv	a0,a4
   10ac0:	20c000ef          	jal	10ccc <Proc_6>
   10ac4:	000277b7          	lui	a5,0x27
   10ac8:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   10acc:	0007b703          	ld	a4,0(a5)
   10ad0:	fe843783          	ld	a5,-24(s0)
   10ad4:	00e7b023          	sd	a4,0(a5)
   10ad8:	fe843783          	ld	a5,-24(s0)
   10adc:	0107a703          	lw	a4,16(a5)
   10ae0:	fe843783          	ld	a5,-24(s0)
   10ae4:	01078793          	addi	a5,a5,16
   10ae8:	00078613          	mv	a2,a5
   10aec:	00a00593          	li	a1,10
   10af0:	00070513          	mv	a0,a4
   10af4:	2b4000ef          	jal	10da8 <Proc_7>
   10af8:	0480006f          	j	10b40 <Proc_1+0x150>
   10afc:	fd843783          	ld	a5,-40(s0)
   10b00:	0007b703          	ld	a4,0(a5)
   10b04:	fd843783          	ld	a5,-40(s0)
   10b08:	00073683          	ld	a3,0(a4)
   10b0c:	00d7b023          	sd	a3,0(a5)
   10b10:	00873683          	ld	a3,8(a4)
   10b14:	00d7b423          	sd	a3,8(a5)
   10b18:	01073683          	ld	a3,16(a4)
   10b1c:	00d7b823          	sd	a3,16(a5)
   10b20:	01873683          	ld	a3,24(a4)
   10b24:	00d7bc23          	sd	a3,24(a5)
   10b28:	02073683          	ld	a3,32(a4)
   10b2c:	02d7b023          	sd	a3,32(a5)
   10b30:	02873683          	ld	a3,40(a4)
   10b34:	02d7b423          	sd	a3,40(a5)
   10b38:	03073703          	ld	a4,48(a4)
   10b3c:	02e7b823          	sd	a4,48(a5)
   10b40:	00000013          	nop
   10b44:	00078513          	mv	a0,a5
   10b48:	02813083          	ld	ra,40(sp)
   10b4c:	02013403          	ld	s0,32(sp)
   10b50:	03010113          	addi	sp,sp,48
   10b54:	00008067          	ret

0000000000010b58 <Proc_2>:
   10b58:	fd010113          	addi	sp,sp,-48
   10b5c:	02813423          	sd	s0,40(sp)
   10b60:	03010413          	addi	s0,sp,48
   10b64:	fca43c23          	sd	a0,-40(s0)
   10b68:	fd843783          	ld	a5,-40(s0)
   10b6c:	0007a783          	lw	a5,0(a5)
   10b70:	00a7879b          	addiw	a5,a5,10
   10b74:	fef42623          	sw	a5,-20(s0)
   10b78:	000277b7          	lui	a5,0x27
   10b7c:	29c7c703          	lbu	a4,668(a5) # 2729c <Ch_1_Glob>
   10b80:	04100793          	li	a5,65
   10b84:	02f71663          	bne	a4,a5,10bb0 <Proc_2+0x58>
   10b88:	fec42783          	lw	a5,-20(s0)
   10b8c:	fff7879b          	addiw	a5,a5,-1
   10b90:	fef42623          	sw	a5,-20(s0)
   10b94:	000277b7          	lui	a5,0x27
   10b98:	2987a783          	lw	a5,664(a5) # 27298 <Int_Glob>
   10b9c:	fec42703          	lw	a4,-20(s0)
   10ba0:	40f7073b          	subw	a4,a4,a5
   10ba4:	fd843783          	ld	a5,-40(s0)
   10ba8:	00e7a023          	sw	a4,0(a5)
   10bac:	fe042423          	sw	zero,-24(s0)
   10bb0:	fe842783          	lw	a5,-24(s0)
   10bb4:	fc0792e3          	bnez	a5,10b78 <Proc_2+0x20>
   10bb8:	00000013          	nop
   10bbc:	00078513          	mv	a0,a5
   10bc0:	02813403          	ld	s0,40(sp)
   10bc4:	03010113          	addi	sp,sp,48
   10bc8:	00008067          	ret

0000000000010bcc <Proc_3>:
   10bcc:	fe010113          	addi	sp,sp,-32
   10bd0:	00113c23          	sd	ra,24(sp)
   10bd4:	00813823          	sd	s0,16(sp)
   10bd8:	02010413          	addi	s0,sp,32
   10bdc:	fea43423          	sd	a0,-24(s0)
   10be0:	000277b7          	lui	a5,0x27
   10be4:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   10be8:	00078c63          	beqz	a5,10c00 <Proc_3+0x34>
   10bec:	000277b7          	lui	a5,0x27
   10bf0:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   10bf4:	0007b703          	ld	a4,0(a5)
   10bf8:	fe843783          	ld	a5,-24(s0)
   10bfc:	00e7b023          	sd	a4,0(a5)
   10c00:	000277b7          	lui	a5,0x27
   10c04:	2987a703          	lw	a4,664(a5) # 27298 <Int_Glob>
   10c08:	000277b7          	lui	a5,0x27
   10c0c:	2a07b783          	ld	a5,672(a5) # 272a0 <Ptr_Glob>
   10c10:	01078793          	addi	a5,a5,16
   10c14:	00078613          	mv	a2,a5
   10c18:	00070593          	mv	a1,a4
   10c1c:	00a00513          	li	a0,10
   10c20:	188000ef          	jal	10da8 <Proc_7>
   10c24:	00000013          	nop
   10c28:	00078513          	mv	a0,a5
   10c2c:	01813083          	ld	ra,24(sp)
   10c30:	01013403          	ld	s0,16(sp)
   10c34:	02010113          	addi	sp,sp,32
   10c38:	00008067          	ret

0000000000010c3c <Proc_4>:
   10c3c:	fe010113          	addi	sp,sp,-32
   10c40:	00813c23          	sd	s0,24(sp)
   10c44:	02010413          	addi	s0,sp,32
   10c48:	000277b7          	lui	a5,0x27
   10c4c:	29c7c783          	lbu	a5,668(a5) # 2729c <Ch_1_Glob>
   10c50:	fbf7879b          	addiw	a5,a5,-65
   10c54:	0017b793          	seqz	a5,a5
   10c58:	0ff7f793          	andi	a5,a5,255
   10c5c:	fef42623          	sw	a5,-20(s0)
   10c60:	000277b7          	lui	a5,0x27
   10c64:	3707a703          	lw	a4,880(a5) # 27370 <Bool_Glob>
   10c68:	fec42783          	lw	a5,-20(s0)
   10c6c:	00f76733          	or	a4,a4,a5
   10c70:	000277b7          	lui	a5,0x27
   10c74:	36e7a823          	sw	a4,880(a5) # 27370 <Bool_Glob>
   10c78:	000277b7          	lui	a5,0x27
   10c7c:	04200713          	li	a4,66
   10c80:	28e78ea3          	sb	a4,669(a5) # 2729d <Ch_2_Glob>
   10c84:	00000013          	nop
   10c88:	00078513          	mv	a0,a5
   10c8c:	01813403          	ld	s0,24(sp)
   10c90:	02010113          	addi	sp,sp,32
   10c94:	00008067          	ret

0000000000010c98 <Proc_5>:
   10c98:	ff010113          	addi	sp,sp,-16
   10c9c:	00813423          	sd	s0,8(sp)
   10ca0:	01010413          	addi	s0,sp,16
   10ca4:	000277b7          	lui	a5,0x27
   10ca8:	04100713          	li	a4,65
   10cac:	28e78e23          	sb	a4,668(a5) # 2729c <Ch_1_Glob>
   10cb0:	000277b7          	lui	a5,0x27
   10cb4:	3607a823          	sw	zero,880(a5) # 27370 <Bool_Glob>
   10cb8:	00000013          	nop
   10cbc:	00078513          	mv	a0,a5
   10cc0:	00813403          	ld	s0,8(sp)
   10cc4:	01010113          	addi	sp,sp,16
   10cc8:	00008067          	ret

0000000000010ccc <Proc_6>:
   10ccc:	fe010113          	addi	sp,sp,-32
   10cd0:	00113c23          	sd	ra,24(sp)
   10cd4:	00813823          	sd	s0,16(sp)
   10cd8:	02010413          	addi	s0,sp,32
   10cdc:	fea42623          	sw	a0,-20(s0)
   10ce0:	feb43023          	sd	a1,-32(s0)
   10ce4:	fe043783          	ld	a5,-32(s0)
   10ce8:	fec42703          	lw	a4,-20(s0)
   10cec:	00e7a023          	sw	a4,0(a5)
   10cf0:	fec42503          	lw	a0,-20(s0)
   10cf4:	3f4000ef          	jal	110e8 <Func_3>
   10cf8:	00050793          	mv	a5,a0
   10cfc:	00079863          	bnez	a5,10d0c <Proc_6+0x40>
   10d00:	fe043783          	ld	a5,-32(s0)
   10d04:	00300713          	li	a4,3
   10d08:	00e7a023          	sw	a4,0(a5)
   10d0c:	fec42703          	lw	a4,-20(s0)
   10d10:	00400793          	li	a5,4
   10d14:	06e7ee63          	bltu	a5,a4,10d90 <Proc_6+0xc4>
   10d18:	fec46783          	lwu	a5,-20(s0)
   10d1c:	00279713          	slli	a4,a5,0x2
   10d20:	000217b7          	lui	a5,0x21
   10d24:	34078793          	addi	a5,a5,832 # 21340 <sulp+0x6c4>
   10d28:	00f707b3          	add	a5,a4,a5
   10d2c:	0007a783          	lw	a5,0(a5)
   10d30:	00078067          	jr	a5
   10d34:	fe043783          	ld	a5,-32(s0)
   10d38:	0007a023          	sw	zero,0(a5)
   10d3c:	0540006f          	j	10d90 <Proc_6+0xc4>
   10d40:	000277b7          	lui	a5,0x27
   10d44:	2987a703          	lw	a4,664(a5) # 27298 <Int_Glob>
   10d48:	06400793          	li	a5,100
   10d4c:	00e7d863          	ble	a4,a5,10d5c <Proc_6+0x90>
   10d50:	fe043783          	ld	a5,-32(s0)
   10d54:	0007a023          	sw	zero,0(a5)
   10d58:	0380006f          	j	10d90 <Proc_6+0xc4>
   10d5c:	fe043783          	ld	a5,-32(s0)
   10d60:	00300713          	li	a4,3
   10d64:	00e7a023          	sw	a4,0(a5)
   10d68:	0280006f          	j	10d90 <Proc_6+0xc4>
   10d6c:	fe043783          	ld	a5,-32(s0)
   10d70:	00100713          	li	a4,1
   10d74:	00e7a023          	sw	a4,0(a5)
   10d78:	0180006f          	j	10d90 <Proc_6+0xc4>
   10d7c:	fe043783          	ld	a5,-32(s0)
   10d80:	00200713          	li	a4,2
   10d84:	00e7a023          	sw	a4,0(a5)
   10d88:	0080006f          	j	10d90 <Proc_6+0xc4>
   10d8c:	00000013          	nop
   10d90:	00000013          	nop
   10d94:	00078513          	mv	a0,a5
   10d98:	01813083          	ld	ra,24(sp)
   10d9c:	01013403          	ld	s0,16(sp)
   10da0:	02010113          	addi	sp,sp,32
   10da4:	00008067          	ret

0000000000010da8 <Proc_7>:
   10da8:	fd010113          	addi	sp,sp,-48
   10dac:	02813423          	sd	s0,40(sp)
   10db0:	03010413          	addi	s0,sp,48
   10db4:	fca42e23          	sw	a0,-36(s0)
   10db8:	fcb42c23          	sw	a1,-40(s0)
   10dbc:	fcc43823          	sd	a2,-48(s0)
   10dc0:	fdc42783          	lw	a5,-36(s0)
   10dc4:	0027879b          	addiw	a5,a5,2
   10dc8:	fef42623          	sw	a5,-20(s0)
   10dcc:	fd842703          	lw	a4,-40(s0)
   10dd0:	fec42783          	lw	a5,-20(s0)
   10dd4:	00f7073b          	addw	a4,a4,a5
   10dd8:	fd043783          	ld	a5,-48(s0)
   10ddc:	00e7a023          	sw	a4,0(a5)
   10de0:	00000013          	nop
   10de4:	00078513          	mv	a0,a5
   10de8:	02813403          	ld	s0,40(sp)
   10dec:	03010113          	addi	sp,sp,48
   10df0:	00008067          	ret

0000000000010df4 <Proc_8>:
   10df4:	fc010113          	addi	sp,sp,-64
   10df8:	02813c23          	sd	s0,56(sp)
   10dfc:	04010413          	addi	s0,sp,64
   10e00:	fca43c23          	sd	a0,-40(s0)
   10e04:	fcb43823          	sd	a1,-48(s0)
   10e08:	fcc42623          	sw	a2,-52(s0)
   10e0c:	fcd42423          	sw	a3,-56(s0)
   10e10:	fcc42783          	lw	a5,-52(s0)
   10e14:	0057879b          	addiw	a5,a5,5
   10e18:	fef42423          	sw	a5,-24(s0)
   10e1c:	fe842783          	lw	a5,-24(s0)
   10e20:	00279793          	slli	a5,a5,0x2
   10e24:	fd843703          	ld	a4,-40(s0)
   10e28:	00f707b3          	add	a5,a4,a5
   10e2c:	fc842703          	lw	a4,-56(s0)
   10e30:	00e7a023          	sw	a4,0(a5)
   10e34:	fe842783          	lw	a5,-24(s0)
   10e38:	00178793          	addi	a5,a5,1
   10e3c:	00279793          	slli	a5,a5,0x2
   10e40:	fd843703          	ld	a4,-40(s0)
   10e44:	00f707b3          	add	a5,a4,a5
   10e48:	fe842703          	lw	a4,-24(s0)
   10e4c:	00271713          	slli	a4,a4,0x2
   10e50:	fd843683          	ld	a3,-40(s0)
   10e54:	00e68733          	add	a4,a3,a4
   10e58:	00072703          	lw	a4,0(a4)
   10e5c:	00e7a023          	sw	a4,0(a5)
   10e60:	fe842783          	lw	a5,-24(s0)
   10e64:	01e78793          	addi	a5,a5,30
   10e68:	00279793          	slli	a5,a5,0x2
   10e6c:	fd843703          	ld	a4,-40(s0)
   10e70:	00f707b3          	add	a5,a4,a5
   10e74:	fe842703          	lw	a4,-24(s0)
   10e78:	00e7a023          	sw	a4,0(a5)
   10e7c:	fe842783          	lw	a5,-24(s0)
   10e80:	fef42623          	sw	a5,-20(s0)
   10e84:	0380006f          	j	10ebc <Proc_8+0xc8>
   10e88:	fe842703          	lw	a4,-24(s0)
   10e8c:	0c800793          	li	a5,200
   10e90:	02f707b3          	mul	a5,a4,a5
   10e94:	fd043703          	ld	a4,-48(s0)
   10e98:	00f70733          	add	a4,a4,a5
   10e9c:	fec42783          	lw	a5,-20(s0)
   10ea0:	00279793          	slli	a5,a5,0x2
   10ea4:	00f707b3          	add	a5,a4,a5
   10ea8:	fe842703          	lw	a4,-24(s0)
   10eac:	00e7a023          	sw	a4,0(a5)
   10eb0:	fec42783          	lw	a5,-20(s0)
   10eb4:	0017879b          	addiw	a5,a5,1
   10eb8:	fef42623          	sw	a5,-20(s0)
   10ebc:	fe842783          	lw	a5,-24(s0)
   10ec0:	0017871b          	addiw	a4,a5,1
   10ec4:	fec42783          	lw	a5,-20(s0)
   10ec8:	fcf750e3          	ble	a5,a4,10e88 <Proc_8+0x94>
   10ecc:	fe842703          	lw	a4,-24(s0)
   10ed0:	0c800793          	li	a5,200
   10ed4:	02f707b3          	mul	a5,a4,a5
   10ed8:	fd043703          	ld	a4,-48(s0)
   10edc:	00f706b3          	add	a3,a4,a5
   10ee0:	fe842783          	lw	a5,-24(s0)
   10ee4:	fff7861b          	addiw	a2,a5,-1
   10ee8:	fe842703          	lw	a4,-24(s0)
   10eec:	0c800793          	li	a5,200
   10ef0:	02f707b3          	mul	a5,a4,a5
   10ef4:	fd043703          	ld	a4,-48(s0)
   10ef8:	00f70733          	add	a4,a4,a5
   10efc:	fe842783          	lw	a5,-24(s0)
   10f00:	fff7879b          	addiw	a5,a5,-1
   10f04:	00279793          	slli	a5,a5,0x2
   10f08:	00f707b3          	add	a5,a4,a5
   10f0c:	0007a783          	lw	a5,0(a5)
   10f10:	0017871b          	addiw	a4,a5,1
   10f14:	00060793          	mv	a5,a2
   10f18:	00279793          	slli	a5,a5,0x2
   10f1c:	00f687b3          	add	a5,a3,a5
   10f20:	00e7a023          	sw	a4,0(a5)
   10f24:	fe842703          	lw	a4,-24(s0)
   10f28:	0c800793          	li	a5,200
   10f2c:	02f70733          	mul	a4,a4,a5
   10f30:	000017b7          	lui	a5,0x1
   10f34:	fa078793          	addi	a5,a5,-96 # fa0 <_ftext-0xf060>
   10f38:	00f707b3          	add	a5,a4,a5
   10f3c:	fd043703          	ld	a4,-48(s0)
   10f40:	00f706b3          	add	a3,a4,a5
   10f44:	fe842783          	lw	a5,-24(s0)
   10f48:	00279793          	slli	a5,a5,0x2
   10f4c:	fd843703          	ld	a4,-40(s0)
   10f50:	00f707b3          	add	a5,a4,a5
   10f54:	0007a703          	lw	a4,0(a5)
   10f58:	fe842783          	lw	a5,-24(s0)
   10f5c:	00279793          	slli	a5,a5,0x2
   10f60:	00f687b3          	add	a5,a3,a5
   10f64:	00e7a023          	sw	a4,0(a5)
   10f68:	000277b7          	lui	a5,0x27
   10f6c:	00500713          	li	a4,5
   10f70:	28e7ac23          	sw	a4,664(a5) # 27298 <Int_Glob>
   10f74:	00000013          	nop
   10f78:	00078513          	mv	a0,a5
   10f7c:	03813403          	ld	s0,56(sp)
   10f80:	04010113          	addi	sp,sp,64
   10f84:	00008067          	ret

0000000000010f88 <Func_1>:
   10f88:	fd010113          	addi	sp,sp,-48
   10f8c:	02813423          	sd	s0,40(sp)
   10f90:	03010413          	addi	s0,sp,48
   10f94:	00050713          	mv	a4,a0
   10f98:	00058793          	mv	a5,a1
   10f9c:	fce40e23          	sb	a4,-36(s0)
   10fa0:	fcf40c23          	sb	a5,-40(s0)
   10fa4:	fdc44783          	lbu	a5,-36(s0)
   10fa8:	fef407a3          	sb	a5,-17(s0)
   10fac:	fef44783          	lbu	a5,-17(s0)
   10fb0:	fef40723          	sb	a5,-18(s0)
   10fb4:	fee44703          	lbu	a4,-18(s0)
   10fb8:	fd844783          	lbu	a5,-40(s0)
   10fbc:	00f70663          	beq	a4,a5,10fc8 <Func_1+0x40>
   10fc0:	00000793          	li	a5,0
   10fc4:	0140006f          	j	10fd8 <Func_1+0x50>
   10fc8:	000277b7          	lui	a5,0x27
   10fcc:	fef44703          	lbu	a4,-17(s0)
   10fd0:	28e78e23          	sb	a4,668(a5) # 2729c <Ch_1_Glob>
   10fd4:	00100793          	li	a5,1
   10fd8:	00078513          	mv	a0,a5
   10fdc:	02813403          	ld	s0,40(sp)
   10fe0:	03010113          	addi	sp,sp,48
   10fe4:	00008067          	ret

0000000000010fe8 <Func_2>:
   10fe8:	fd010113          	addi	sp,sp,-48
   10fec:	02113423          	sd	ra,40(sp)
   10ff0:	02813023          	sd	s0,32(sp)
   10ff4:	03010413          	addi	s0,sp,48
   10ff8:	fca43c23          	sd	a0,-40(s0)
   10ffc:	fcb43823          	sd	a1,-48(s0)
   11000:	00200793          	li	a5,2
   11004:	fef42623          	sw	a5,-20(s0)
   11008:	0540006f          	j	1105c <Func_2+0x74>
   1100c:	fec42783          	lw	a5,-20(s0)
   11010:	fd843703          	ld	a4,-40(s0)
   11014:	00f707b3          	add	a5,a4,a5
   11018:	0007c783          	lbu	a5,0(a5)
   1101c:	00078693          	mv	a3,a5
   11020:	fec42783          	lw	a5,-20(s0)
   11024:	00178793          	addi	a5,a5,1
   11028:	fd043703          	ld	a4,-48(s0)
   1102c:	00f707b3          	add	a5,a4,a5
   11030:	0007c783          	lbu	a5,0(a5)
   11034:	00078593          	mv	a1,a5
   11038:	00068513          	mv	a0,a3
   1103c:	f4dff0ef          	jal	10f88 <Func_1>
   11040:	00050793          	mv	a5,a0
   11044:	00079c63          	bnez	a5,1105c <Func_2+0x74>
   11048:	04100793          	li	a5,65
   1104c:	fef405a3          	sb	a5,-21(s0)
   11050:	fec42783          	lw	a5,-20(s0)
   11054:	0017879b          	addiw	a5,a5,1
   11058:	fef42623          	sw	a5,-20(s0)
   1105c:	fec42703          	lw	a4,-20(s0)
   11060:	00200793          	li	a5,2
   11064:	fae7d4e3          	ble	a4,a5,1100c <Func_2+0x24>
   11068:	feb44703          	lbu	a4,-21(s0)
   1106c:	05600793          	li	a5,86
   11070:	00e7fc63          	bleu	a4,a5,11088 <Func_2+0xa0>
   11074:	feb44703          	lbu	a4,-21(s0)
   11078:	05900793          	li	a5,89
   1107c:	00e7e663          	bltu	a5,a4,11088 <Func_2+0xa0>
   11080:	00700793          	li	a5,7
   11084:	fef42623          	sw	a5,-20(s0)
   11088:	feb44703          	lbu	a4,-21(s0)
   1108c:	05200793          	li	a5,82
   11090:	00f71663          	bne	a4,a5,1109c <Func_2+0xb4>
   11094:	00100793          	li	a5,1
   11098:	03c0006f          	j	110d4 <Func_2+0xec>
   1109c:	fd043583          	ld	a1,-48(s0)
   110a0:	fd843503          	ld	a0,-40(s0)
   110a4:	5d5000ef          	jal	11e78 <strcmp>
   110a8:	00050793          	mv	a5,a0
   110ac:	02f05263          	blez	a5,110d0 <Func_2+0xe8>
   110b0:	fec42783          	lw	a5,-20(s0)
   110b4:	0077879b          	addiw	a5,a5,7
   110b8:	fef42623          	sw	a5,-20(s0)
   110bc:	000277b7          	lui	a5,0x27
   110c0:	fec42703          	lw	a4,-20(s0)
   110c4:	28e7ac23          	sw	a4,664(a5) # 27298 <Int_Glob>
   110c8:	00100793          	li	a5,1
   110cc:	0080006f          	j	110d4 <Func_2+0xec>
   110d0:	00000793          	li	a5,0
   110d4:	00078513          	mv	a0,a5
   110d8:	02813083          	ld	ra,40(sp)
   110dc:	02013403          	ld	s0,32(sp)
   110e0:	03010113          	addi	sp,sp,48
   110e4:	00008067          	ret

00000000000110e8 <Func_3>:
   110e8:	fd010113          	addi	sp,sp,-48
   110ec:	02813423          	sd	s0,40(sp)
   110f0:	03010413          	addi	s0,sp,48
   110f4:	fca42e23          	sw	a0,-36(s0)
   110f8:	fdc42783          	lw	a5,-36(s0)
   110fc:	fef42623          	sw	a5,-20(s0)
   11100:	fec42703          	lw	a4,-20(s0)
   11104:	00200793          	li	a5,2
   11108:	00f71663          	bne	a4,a5,11114 <Func_3+0x2c>
   1110c:	00100793          	li	a5,1
   11110:	0080006f          	j	11118 <Func_3+0x30>
   11114:	00000793          	li	a5,0
   11118:	00078513          	mv	a0,a5
   1111c:	02813403          	ld	s0,40(sp)
   11120:	03010113          	addi	sp,sp,48
   11124:	00008067          	ret

0000000000011128 <atexit>:
   11128:	00050593          	mv	a1,a0
   1112c:	00000693          	li	a3,0
   11130:	00000613          	li	a2,0
   11134:	00000513          	li	a0,0
   11138:	17c0406f          	j	152b4 <__register_exitproc>

000000000001113c <exit>:
   1113c:	ff010113          	addi	sp,sp,-16
   11140:	00000593          	li	a1,0
   11144:	00813023          	sd	s0,0(sp)
   11148:	00113423          	sd	ra,8(sp)
   1114c:	00050413          	mv	s0,a0
   11150:	274040ef          	jal	153c4 <__call_exitprocs>
   11154:	8081b503          	ld	a0,-2040(gp) # 249d8 <_global_impure_ptr>
   11158:	05853783          	ld	a5,88(a0)
   1115c:	00078463          	beqz	a5,11164 <exit+0x28>
   11160:	000780e7          	jalr	a5
   11164:	00040513          	mv	a0,s0
   11168:	2f10f0ef          	jal	20c58 <_exit>

000000000001116c <__libc_fini_array>:
   1116c:	fe010113          	addi	sp,sp,-32
   11170:	00813823          	sd	s0,16(sp)
   11174:	00913423          	sd	s1,8(sp)
   11178:	00022437          	lui	s0,0x22
   1117c:	000224b7          	lui	s1,0x22
   11180:	31848493          	addi	s1,s1,792 # 22318 <__init_array_end>
   11184:	32040413          	addi	s0,s0,800 # 22320 <__fini_array_end>
   11188:	40940433          	sub	s0,s0,s1
   1118c:	ff840793          	addi	a5,s0,-8
   11190:	00113c23          	sd	ra,24(sp)
   11194:	40345413          	srai	s0,s0,0x3
   11198:	009784b3          	add	s1,a5,s1
   1119c:	00040c63          	beqz	s0,111b4 <__libc_fini_array+0x48>
   111a0:	0004b783          	ld	a5,0(s1)
   111a4:	fff40413          	addi	s0,s0,-1
   111a8:	ff848493          	addi	s1,s1,-8
   111ac:	000780e7          	jalr	a5
   111b0:	fe0418e3          	bnez	s0,111a0 <__libc_fini_array+0x34>
   111b4:	01813083          	ld	ra,24(sp)
   111b8:	01013403          	ld	s0,16(sp)
   111bc:	00813483          	ld	s1,8(sp)
   111c0:	02010113          	addi	sp,sp,32
   111c4:	e85fe06f          	j	10048 <_fini>

00000000000111c8 <__libc_init_array>:
   111c8:	fe010113          	addi	sp,sp,-32
   111cc:	00813823          	sd	s0,16(sp)
   111d0:	000227b7          	lui	a5,0x22
   111d4:	00022437          	lui	s0,0x22
   111d8:	01213023          	sd	s2,0(sp)
   111dc:	31078793          	addi	a5,a5,784 # 22310 <_etext>
   111e0:	31040913          	addi	s2,s0,784 # 22310 <_etext>
   111e4:	41278933          	sub	s2,a5,s2
   111e8:	00913423          	sd	s1,8(sp)
   111ec:	00113c23          	sd	ra,24(sp)
   111f0:	40395913          	srai	s2,s2,0x3
   111f4:	31040413          	addi	s0,s0,784
   111f8:	00000493          	li	s1,0
   111fc:	00090c63          	beqz	s2,11214 <__libc_init_array+0x4c>
   11200:	00043783          	ld	a5,0(s0)
   11204:	00148493          	addi	s1,s1,1
   11208:	00840413          	addi	s0,s0,8
   1120c:	000780e7          	jalr	a5
   11210:	fe9918e3          	bne	s2,s1,11200 <__libc_init_array+0x38>
   11214:	e35fe0ef          	jal	10048 <_fini>
   11218:	00022437          	lui	s0,0x22
   1121c:	000227b7          	lui	a5,0x22
   11220:	31040913          	addi	s2,s0,784 # 22310 <_etext>
   11224:	31878793          	addi	a5,a5,792 # 22318 <__init_array_end>
   11228:	41278933          	sub	s2,a5,s2
   1122c:	40395913          	srai	s2,s2,0x3
   11230:	31040413          	addi	s0,s0,784
   11234:	00000493          	li	s1,0
   11238:	00090c63          	beqz	s2,11250 <__libc_init_array+0x88>
   1123c:	00043783          	ld	a5,0(s0)
   11240:	00148493          	addi	s1,s1,1
   11244:	00840413          	addi	s0,s0,8
   11248:	000780e7          	jalr	a5
   1124c:	fe9918e3          	bne	s2,s1,1123c <__libc_init_array+0x74>
   11250:	01813083          	ld	ra,24(sp)
   11254:	01013403          	ld	s0,16(sp)
   11258:	00813483          	ld	s1,8(sp)
   1125c:	00013903          	ld	s2,0(sp)
   11260:	02010113          	addi	sp,sp,32
   11264:	00008067          	ret

0000000000011268 <malloc>:
   11268:	00050593          	mv	a1,a0
   1126c:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   11270:	0100006f          	j	11280 <_malloc_r>

0000000000011274 <free>:
   11274:	00050593          	mv	a1,a0
   11278:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   1127c:	79d0506f          	j	17218 <_free_r>

0000000000011280 <_malloc_r>:
   11280:	fa010113          	addi	sp,sp,-96
   11284:	04913423          	sd	s1,72(sp)
   11288:	03313c23          	sd	s3,56(sp)
   1128c:	04113c23          	sd	ra,88(sp)
   11290:	04813823          	sd	s0,80(sp)
   11294:	05213023          	sd	s2,64(sp)
   11298:	03413823          	sd	s4,48(sp)
   1129c:	03513423          	sd	s5,40(sp)
   112a0:	03613023          	sd	s6,32(sp)
   112a4:	01713c23          	sd	s7,24(sp)
   112a8:	01813823          	sd	s8,16(sp)
   112ac:	01913423          	sd	s9,8(sp)
   112b0:	01758493          	addi	s1,a1,23
   112b4:	02e00793          	li	a5,46
   112b8:	00050993          	mv	s3,a0
   112bc:	1c97fa63          	bleu	s1,a5,11490 <_malloc_r+0x210>
   112c0:	800007b7          	lui	a5,0x80000
   112c4:	ff04f493          	andi	s1,s1,-16
   112c8:	fff7c793          	not	a5,a5
   112cc:	2497ee63          	bltu	a5,s1,11528 <_malloc_r+0x2a8>
   112d0:	24b4ec63          	bltu	s1,a1,11528 <_malloc_r+0x2a8>
   112d4:	03d000ef          	jal	11b10 <__malloc_lock>
   112d8:	1f700793          	li	a5,503
   112dc:	7097f063          	bleu	s1,a5,119dc <_malloc_r+0x75c>
   112e0:	0094d793          	srli	a5,s1,0x9
   112e4:	08000693          	li	a3,128
   112e8:	04000513          	li	a0,64
   112ec:	03f00593          	li	a1,63
   112f0:	24079463          	bnez	a5,11538 <_malloc_r+0x2b8>
   112f4:	00024937          	lui	s2,0x24
   112f8:	11890913          	addi	s2,s2,280 # 24118 <__malloc_av_>
   112fc:	00369693          	slli	a3,a3,0x3
   11300:	00d906b3          	add	a3,s2,a3
   11304:	0086b403          	ld	s0,8(a3)
   11308:	ff068693          	addi	a3,a3,-16
   1130c:	24868663          	beq	a3,s0,11558 <_malloc_r+0x2d8>
   11310:	00843783          	ld	a5,8(s0)
   11314:	01f00613          	li	a2,31
   11318:	ffc7f793          	andi	a5,a5,-4
   1131c:	40978733          	sub	a4,a5,s1
   11320:	02e64063          	blt	a2,a4,11340 <_malloc_r+0xc0>
   11324:	22075e63          	bgez	a4,11560 <_malloc_r+0x2e0>
   11328:	01843403          	ld	s0,24(s0)
   1132c:	22868663          	beq	a3,s0,11558 <_malloc_r+0x2d8>
   11330:	00843783          	ld	a5,8(s0)
   11334:	ffc7f793          	andi	a5,a5,-4
   11338:	40978733          	sub	a4,a5,s1
   1133c:	fee654e3          	ble	a4,a2,11324 <_malloc_r+0xa4>
   11340:	00058693          	mv	a3,a1
   11344:	02093403          	ld	s0,32(s2)
   11348:	01090813          	addi	a6,s2,16
   1134c:	47040a63          	beq	s0,a6,117c0 <_malloc_r+0x540>
   11350:	00843783          	ld	a5,8(s0)
   11354:	01f00613          	li	a2,31
   11358:	ffc7f793          	andi	a5,a5,-4
   1135c:	40978733          	sub	a4,a5,s1
   11360:	44e64a63          	blt	a2,a4,117b4 <_malloc_r+0x534>
   11364:	03093423          	sd	a6,40(s2)
   11368:	03093023          	sd	a6,32(s2)
   1136c:	20075063          	bgez	a4,1156c <_malloc_r+0x2ec>
   11370:	1ff00713          	li	a4,511
   11374:	3cf76c63          	bltu	a4,a5,1174c <_malloc_r+0x4cc>
   11378:	0037d793          	srli	a5,a5,0x3
   1137c:	0007879b          	sext.w	a5,a5
   11380:	0017861b          	addiw	a2,a5,1
   11384:	0016161b          	slliw	a2,a2,0x1
   11388:	00361613          	slli	a2,a2,0x3
   1138c:	00893703          	ld	a4,8(s2)
   11390:	00c90633          	add	a2,s2,a2
   11394:	00063503          	ld	a0,0(a2)
   11398:	4027d79b          	sraiw	a5,a5,0x2
   1139c:	00100593          	li	a1,1
   113a0:	00f597b3          	sll	a5,a1,a5
   113a4:	00e7e7b3          	or	a5,a5,a4
   113a8:	ff060713          	addi	a4,a2,-16
   113ac:	00e43c23          	sd	a4,24(s0)
   113b0:	00a43823          	sd	a0,16(s0)
   113b4:	00f93423          	sd	a5,8(s2)
   113b8:	00863023          	sd	s0,0(a2)
   113bc:	00853c23          	sd	s0,24(a0)
   113c0:	4026d61b          	sraiw	a2,a3,0x2
   113c4:	00100713          	li	a4,1
   113c8:	00c71633          	sll	a2,a4,a2
   113cc:	1cc7e063          	bltu	a5,a2,1158c <_malloc_r+0x30c>
   113d0:	00f67733          	and	a4,a2,a5
   113d4:	02071463          	bnez	a4,113fc <_malloc_r+0x17c>
   113d8:	00161613          	slli	a2,a2,0x1
   113dc:	ffc6f693          	andi	a3,a3,-4
   113e0:	00f67733          	and	a4,a2,a5
   113e4:	0046869b          	addiw	a3,a3,4
   113e8:	00071a63          	bnez	a4,113fc <_malloc_r+0x17c>
   113ec:	00161613          	slli	a2,a2,0x1
   113f0:	00f67733          	and	a4,a2,a5
   113f4:	0046869b          	addiw	a3,a3,4
   113f8:	fe070ae3          	beqz	a4,113ec <_malloc_r+0x16c>
   113fc:	01f00513          	li	a0,31
   11400:	0016889b          	addiw	a7,a3,1
   11404:	0018989b          	slliw	a7,a7,0x1
   11408:	00389893          	slli	a7,a7,0x3
   1140c:	011908b3          	add	a7,s2,a7
   11410:	ff088893          	addi	a7,a7,-16
   11414:	00088593          	mv	a1,a7
   11418:	00068313          	mv	t1,a3
   1141c:	0185b403          	ld	s0,24(a1)
   11420:	00859a63          	bne	a1,s0,11434 <_malloc_r+0x1b4>
   11424:	3a40006f          	j	117c8 <_malloc_r+0x548>
   11428:	3c075263          	bgez	a4,117ec <_malloc_r+0x56c>
   1142c:	01843403          	ld	s0,24(s0)
   11430:	38858c63          	beq	a1,s0,117c8 <_malloc_r+0x548>
   11434:	00843783          	ld	a5,8(s0)
   11438:	ffc7f793          	andi	a5,a5,-4
   1143c:	40978733          	sub	a4,a5,s1
   11440:	fee554e3          	ble	a4,a0,11428 <_malloc_r+0x1a8>
   11444:	01843783          	ld	a5,24(s0)
   11448:	01043683          	ld	a3,16(s0)
   1144c:	0014e613          	ori	a2,s1,1
   11450:	00c43423          	sd	a2,8(s0)
   11454:	00f6bc23          	sd	a5,24(a3)
   11458:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_end+0xffffffff7ffd8c98>
   1145c:	009404b3          	add	s1,s0,s1
   11460:	02993423          	sd	s1,40(s2)
   11464:	02993023          	sd	s1,32(s2)
   11468:	00176793          	ori	a5,a4,1
   1146c:	0104bc23          	sd	a6,24(s1)
   11470:	0104b823          	sd	a6,16(s1)
   11474:	00f4b423          	sd	a5,8(s1)
   11478:	00e484b3          	add	s1,s1,a4
   1147c:	00098513          	mv	a0,s3
   11480:	00e4b023          	sd	a4,0(s1)
   11484:	690000ef          	jal	11b14 <__malloc_unlock>
   11488:	01040513          	addi	a0,s0,16
   1148c:	0680006f          	j	114f4 <_malloc_r+0x274>
   11490:	02000493          	li	s1,32
   11494:	08b4ea63          	bltu	s1,a1,11528 <_malloc_r+0x2a8>
   11498:	678000ef          	jal	11b10 <__malloc_lock>
   1149c:	00a00793          	li	a5,10
   114a0:	00400693          	li	a3,4
   114a4:	00024937          	lui	s2,0x24
   114a8:	11890913          	addi	s2,s2,280 # 24118 <__malloc_av_>
   114ac:	00379793          	slli	a5,a5,0x3
   114b0:	00f907b3          	add	a5,s2,a5
   114b4:	0087b403          	ld	s0,8(a5)
   114b8:	ff078713          	addi	a4,a5,-16
   114bc:	32e40063          	beq	s0,a4,117dc <_malloc_r+0x55c>
   114c0:	00843783          	ld	a5,8(s0)
   114c4:	01843683          	ld	a3,24(s0)
   114c8:	01043603          	ld	a2,16(s0)
   114cc:	ffc7f793          	andi	a5,a5,-4
   114d0:	00f407b3          	add	a5,s0,a5
   114d4:	0087b703          	ld	a4,8(a5)
   114d8:	00d63c23          	sd	a3,24(a2)
   114dc:	00c6b823          	sd	a2,16(a3)
   114e0:	00176713          	ori	a4,a4,1
   114e4:	00098513          	mv	a0,s3
   114e8:	00e7b423          	sd	a4,8(a5)
   114ec:	628000ef          	jal	11b14 <__malloc_unlock>
   114f0:	01040513          	addi	a0,s0,16
   114f4:	05813083          	ld	ra,88(sp)
   114f8:	05013403          	ld	s0,80(sp)
   114fc:	04813483          	ld	s1,72(sp)
   11500:	04013903          	ld	s2,64(sp)
   11504:	03813983          	ld	s3,56(sp)
   11508:	03013a03          	ld	s4,48(sp)
   1150c:	02813a83          	ld	s5,40(sp)
   11510:	02013b03          	ld	s6,32(sp)
   11514:	01813b83          	ld	s7,24(sp)
   11518:	01013c03          	ld	s8,16(sp)
   1151c:	00813c83          	ld	s9,8(sp)
   11520:	06010113          	addi	sp,sp,96
   11524:	00008067          	ret
   11528:	00c00793          	li	a5,12
   1152c:	00f9a023          	sw	a5,0(s3)
   11530:	00000513          	li	a0,0
   11534:	fc1ff06f          	j	114f4 <_malloc_r+0x274>
   11538:	00400713          	li	a4,4
   1153c:	1ef76463          	bltu	a4,a5,11724 <_malloc_r+0x4a4>
   11540:	0064d593          	srli	a1,s1,0x6
   11544:	0005859b          	sext.w	a1,a1
   11548:	0395851b          	addiw	a0,a1,57
   1154c:	0015169b          	slliw	a3,a0,0x1
   11550:	0385859b          	addiw	a1,a1,56
   11554:	da1ff06f          	j	112f4 <_malloc_r+0x74>
   11558:	00050693          	mv	a3,a0
   1155c:	de9ff06f          	j	11344 <_malloc_r+0xc4>
   11560:	01843683          	ld	a3,24(s0)
   11564:	01043603          	ld	a2,16(s0)
   11568:	f69ff06f          	j	114d0 <_malloc_r+0x250>
   1156c:	00f407b3          	add	a5,s0,a5
   11570:	0087b703          	ld	a4,8(a5)
   11574:	00098513          	mv	a0,s3
   11578:	00176713          	ori	a4,a4,1
   1157c:	00e7b423          	sd	a4,8(a5)
   11580:	594000ef          	jal	11b14 <__malloc_unlock>
   11584:	01040513          	addi	a0,s0,16
   11588:	f6dff06f          	j	114f4 <_malloc_r+0x274>
   1158c:	01093403          	ld	s0,16(s2)
   11590:	00843703          	ld	a4,8(s0)
   11594:	ffc77b93          	andi	s7,a4,-4
   11598:	009be863          	bltu	s7,s1,115a8 <_malloc_r+0x328>
   1159c:	409b87b3          	sub	a5,s7,s1
   115a0:	01f00713          	li	a4,31
   115a4:	14f74c63          	blt	a4,a5,116fc <_malloc_r+0x47c>
   115a8:	9001b783          	ld	a5,-1792(gp) # 24ad0 <__malloc_top_pad>
   115ac:	8181b683          	ld	a3,-2024(gp) # 249e8 <__malloc_sbrk_base>
   115b0:	fff00713          	li	a4,-1
   115b4:	00f487b3          	add	a5,s1,a5
   115b8:	01740a33          	add	s4,s0,s7
   115bc:	02078b13          	addi	s6,a5,32
   115c0:	00e68c63          	beq	a3,a4,115d8 <_malloc_r+0x358>
   115c4:	00001b37          	lui	s6,0x1
   115c8:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   115cc:	01678b33          	add	s6,a5,s6
   115d0:	fffff7b7          	lui	a5,0xfffff
   115d4:	00fb7b33          	and	s6,s6,a5
   115d8:	000b0513          	mv	a0,s6
   115dc:	6280f0ef          	jal	20c04 <sbrk>
   115e0:	fff00793          	li	a5,-1
   115e4:	00050a93          	mv	s5,a0
   115e8:	26f50263          	beq	a0,a5,1184c <_malloc_r+0x5cc>
   115ec:	25456e63          	bltu	a0,s4,11848 <_malloc_r+0x5c8>
   115f0:	95818c13          	addi	s8,gp,-1704 # 24b28 <__malloc_current_mallinfo>
   115f4:	000c2783          	lw	a5,0(s8)
   115f8:	00fb07bb          	addw	a5,s6,a5
   115fc:	00fc2023          	sw	a5,0(s8)
   11600:	355a0463          	beq	s4,s5,11948 <_malloc_r+0x6c8>
   11604:	8181b683          	ld	a3,-2024(gp) # 249e8 <__malloc_sbrk_base>
   11608:	fff00713          	li	a4,-1
   1160c:	36e68263          	beq	a3,a4,11970 <_malloc_r+0x6f0>
   11610:	414a8a33          	sub	s4,s5,s4
   11614:	00fa07bb          	addw	a5,s4,a5
   11618:	00fc2023          	sw	a5,0(s8)
   1161c:	00faf713          	andi	a4,s5,15
   11620:	000017b7          	lui	a5,0x1
   11624:	00070a63          	beqz	a4,11638 <_malloc_r+0x3b8>
   11628:	40ea8ab3          	sub	s5,s5,a4
   1162c:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   11630:	010a8a93          	addi	s5,s5,16
   11634:	40ea07b3          	sub	a5,s4,a4
   11638:	00001a37          	lui	s4,0x1
   1163c:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   11640:	016a8b33          	add	s6,s5,s6
   11644:	014b7b33          	and	s6,s6,s4
   11648:	41678a33          	sub	s4,a5,s6
   1164c:	000a0513          	mv	a0,s4
   11650:	5b40f0ef          	jal	20c04 <sbrk>
   11654:	fff00793          	li	a5,-1
   11658:	30f50663          	beq	a0,a5,11964 <_malloc_r+0x6e4>
   1165c:	41550733          	sub	a4,a0,s5
   11660:	01470733          	add	a4,a4,s4
   11664:	00176713          	ori	a4,a4,1
   11668:	000a0a1b          	sext.w	s4,s4
   1166c:	000c2783          	lw	a5,0(s8)
   11670:	01593823          	sd	s5,16(s2)
   11674:	00eab423          	sd	a4,8(s5)
   11678:	00fa07bb          	addw	a5,s4,a5
   1167c:	00fc2023          	sw	a5,0(s8)
   11680:	03240c63          	beq	s0,s2,116b8 <_malloc_r+0x438>
   11684:	01f00613          	li	a2,31
   11688:	27767463          	bleu	s7,a2,118f0 <_malloc_r+0x670>
   1168c:	00843683          	ld	a3,8(s0)
   11690:	fe8b8713          	addi	a4,s7,-24
   11694:	ff077713          	andi	a4,a4,-16
   11698:	0016f693          	andi	a3,a3,1
   1169c:	00e6e6b3          	or	a3,a3,a4
   116a0:	00d43423          	sd	a3,8(s0)
   116a4:	00900593          	li	a1,9
   116a8:	00e406b3          	add	a3,s0,a4
   116ac:	00b6b423          	sd	a1,8(a3)
   116b0:	00b6b823          	sd	a1,16(a3)
   116b4:	2ce66263          	bltu	a2,a4,11978 <_malloc_r+0x6f8>
   116b8:	8f81b683          	ld	a3,-1800(gp) # 24ac8 <__malloc_max_sbrked_mem>
   116bc:	00f6f463          	bleu	a5,a3,116c4 <_malloc_r+0x444>
   116c0:	8ef1bc23          	sd	a5,-1800(gp) # 24ac8 <__malloc_max_sbrked_mem>
   116c4:	8f01b683          	ld	a3,-1808(gp) # 24ac0 <__malloc_max_total_mem>
   116c8:	01093403          	ld	s0,16(s2)
   116cc:	00f6f463          	bleu	a5,a3,116d4 <_malloc_r+0x454>
   116d0:	8ef1b823          	sd	a5,-1808(gp) # 24ac0 <__malloc_max_total_mem>
   116d4:	00843703          	ld	a4,8(s0)
   116d8:	ffc77713          	andi	a4,a4,-4
   116dc:	409707b3          	sub	a5,a4,s1
   116e0:	00976663          	bltu	a4,s1,116ec <_malloc_r+0x46c>
   116e4:	01f00713          	li	a4,31
   116e8:	00f74a63          	blt	a4,a5,116fc <_malloc_r+0x47c>
   116ec:	00098513          	mv	a0,s3
   116f0:	424000ef          	jal	11b14 <__malloc_unlock>
   116f4:	00000513          	li	a0,0
   116f8:	dfdff06f          	j	114f4 <_malloc_r+0x274>
   116fc:	0014e713          	ori	a4,s1,1
   11700:	00e43423          	sd	a4,8(s0)
   11704:	009404b3          	add	s1,s0,s1
   11708:	00993823          	sd	s1,16(s2)
   1170c:	0017e793          	ori	a5,a5,1
   11710:	00098513          	mv	a0,s3
   11714:	00f4b423          	sd	a5,8(s1)
   11718:	3fc000ef          	jal	11b14 <__malloc_unlock>
   1171c:	01040513          	addi	a0,s0,16
   11720:	dd5ff06f          	j	114f4 <_malloc_r+0x274>
   11724:	01400713          	li	a4,20
   11728:	0ef77a63          	bleu	a5,a4,1181c <_malloc_r+0x59c>
   1172c:	05400713          	li	a4,84
   11730:	18f76063          	bltu	a4,a5,118b0 <_malloc_r+0x630>
   11734:	00c4d593          	srli	a1,s1,0xc
   11738:	0005859b          	sext.w	a1,a1
   1173c:	06f5851b          	addiw	a0,a1,111
   11740:	0015169b          	slliw	a3,a0,0x1
   11744:	06e5859b          	addiw	a1,a1,110
   11748:	badff06f          	j	112f4 <_malloc_r+0x74>
   1174c:	0097d713          	srli	a4,a5,0x9
   11750:	00400613          	li	a2,4
   11754:	0ce67e63          	bleu	a4,a2,11830 <_malloc_r+0x5b0>
   11758:	01400613          	li	a2,20
   1175c:	1ce66663          	bltu	a2,a4,11928 <_malloc_r+0x6a8>
   11760:	0007071b          	sext.w	a4,a4
   11764:	05c7059b          	addiw	a1,a4,92
   11768:	05b7061b          	addiw	a2,a4,91
   1176c:	0015959b          	slliw	a1,a1,0x1
   11770:	00359593          	slli	a1,a1,0x3
   11774:	00b905b3          	add	a1,s2,a1
   11778:	0005b703          	ld	a4,0(a1)
   1177c:	ff058593          	addi	a1,a1,-16
   11780:	14e58863          	beq	a1,a4,118d0 <_malloc_r+0x650>
   11784:	00873603          	ld	a2,8(a4)
   11788:	ffc67613          	andi	a2,a2,-4
   1178c:	00c7f663          	bleu	a2,a5,11798 <_malloc_r+0x518>
   11790:	01073703          	ld	a4,16(a4)
   11794:	fee598e3          	bne	a1,a4,11784 <_malloc_r+0x504>
   11798:	01873583          	ld	a1,24(a4)
   1179c:	00893783          	ld	a5,8(s2)
   117a0:	00b43c23          	sd	a1,24(s0)
   117a4:	00e43823          	sd	a4,16(s0)
   117a8:	0085b823          	sd	s0,16(a1)
   117ac:	00873c23          	sd	s0,24(a4)
   117b0:	c11ff06f          	j	113c0 <_malloc_r+0x140>
   117b4:	0014e793          	ori	a5,s1,1
   117b8:	00f43423          	sd	a5,8(s0)
   117bc:	ca1ff06f          	j	1145c <_malloc_r+0x1dc>
   117c0:	00893783          	ld	a5,8(s2)
   117c4:	bfdff06f          	j	113c0 <_malloc_r+0x140>
   117c8:	0013031b          	addiw	t1,t1,1
   117cc:	00337793          	andi	a5,t1,3
   117d0:	01058593          	addi	a1,a1,16
   117d4:	c40794e3          	bnez	a5,1141c <_malloc_r+0x19c>
   117d8:	0900006f          	j	11868 <_malloc_r+0x5e8>
   117dc:	0187b403          	ld	s0,24(a5)
   117e0:	0026869b          	addiw	a3,a3,2
   117e4:	b68780e3          	beq	a5,s0,11344 <_malloc_r+0xc4>
   117e8:	cd9ff06f          	j	114c0 <_malloc_r+0x240>
   117ec:	00f407b3          	add	a5,s0,a5
   117f0:	0087b703          	ld	a4,8(a5)
   117f4:	01843683          	ld	a3,24(s0)
   117f8:	01043603          	ld	a2,16(s0)
   117fc:	00176713          	ori	a4,a4,1
   11800:	00e7b423          	sd	a4,8(a5)
   11804:	00d63c23          	sd	a3,24(a2)
   11808:	00098513          	mv	a0,s3
   1180c:	00c6b823          	sd	a2,16(a3)
   11810:	304000ef          	jal	11b14 <__malloc_unlock>
   11814:	01040513          	addi	a0,s0,16
   11818:	cddff06f          	j	114f4 <_malloc_r+0x274>
   1181c:	0007879b          	sext.w	a5,a5
   11820:	05c7851b          	addiw	a0,a5,92
   11824:	05b7859b          	addiw	a1,a5,91
   11828:	0015169b          	slliw	a3,a0,0x1
   1182c:	ac9ff06f          	j	112f4 <_malloc_r+0x74>
   11830:	0067d713          	srli	a4,a5,0x6
   11834:	0007071b          	sext.w	a4,a4
   11838:	0397059b          	addiw	a1,a4,57
   1183c:	0387061b          	addiw	a2,a4,56
   11840:	0015959b          	slliw	a1,a1,0x1
   11844:	f2dff06f          	j	11770 <_malloc_r+0x4f0>
   11848:	db2404e3          	beq	s0,s2,115f0 <_malloc_r+0x370>
   1184c:	01093403          	ld	s0,16(s2)
   11850:	00843703          	ld	a4,8(s0)
   11854:	ffc77713          	andi	a4,a4,-4
   11858:	e85ff06f          	j	116dc <_malloc_r+0x45c>
   1185c:	0108b783          	ld	a5,16(a7)
   11860:	fff6869b          	addiw	a3,a3,-1
   11864:	16f89863          	bne	a7,a5,119d4 <_malloc_r+0x754>
   11868:	0036f793          	andi	a5,a3,3
   1186c:	ff088893          	addi	a7,a7,-16
   11870:	fe0796e3          	bnez	a5,1185c <_malloc_r+0x5dc>
   11874:	00893783          	ld	a5,8(s2)
   11878:	fff64713          	not	a4,a2
   1187c:	00f777b3          	and	a5,a4,a5
   11880:	00f93423          	sd	a5,8(s2)
   11884:	00161613          	slli	a2,a2,0x1
   11888:	d0c7e2e3          	bltu	a5,a2,1158c <_malloc_r+0x30c>
   1188c:	d00600e3          	beqz	a2,1158c <_malloc_r+0x30c>
   11890:	00f67733          	and	a4,a2,a5
   11894:	00030693          	mv	a3,t1
   11898:	b60714e3          	bnez	a4,11400 <_malloc_r+0x180>
   1189c:	00161613          	slli	a2,a2,0x1
   118a0:	00f67733          	and	a4,a2,a5
   118a4:	0046869b          	addiw	a3,a3,4
   118a8:	fe070ae3          	beqz	a4,1189c <_malloc_r+0x61c>
   118ac:	b55ff06f          	j	11400 <_malloc_r+0x180>
   118b0:	15400713          	li	a4,340
   118b4:	04f76463          	bltu	a4,a5,118fc <_malloc_r+0x67c>
   118b8:	00f4d593          	srli	a1,s1,0xf
   118bc:	0005859b          	sext.w	a1,a1
   118c0:	0785851b          	addiw	a0,a1,120
   118c4:	0015169b          	slliw	a3,a0,0x1
   118c8:	0775859b          	addiw	a1,a1,119
   118cc:	a29ff06f          	j	112f4 <_malloc_r+0x74>
   118d0:	00893783          	ld	a5,8(s2)
   118d4:	4026571b          	sraiw	a4,a2,0x2
   118d8:	00100613          	li	a2,1
   118dc:	00e61733          	sll	a4,a2,a4
   118e0:	00f767b3          	or	a5,a4,a5
   118e4:	00f93423          	sd	a5,8(s2)
   118e8:	00058713          	mv	a4,a1
   118ec:	eb5ff06f          	j	117a0 <_malloc_r+0x520>
   118f0:	00100793          	li	a5,1
   118f4:	00fab423          	sd	a5,8(s5)
   118f8:	df5ff06f          	j	116ec <_malloc_r+0x46c>
   118fc:	55400713          	li	a4,1364
   11900:	0fe00693          	li	a3,254
   11904:	07f00513          	li	a0,127
   11908:	07e00593          	li	a1,126
   1190c:	9ef764e3          	bltu	a4,a5,112f4 <_malloc_r+0x74>
   11910:	0124d593          	srli	a1,s1,0x12
   11914:	0005859b          	sext.w	a1,a1
   11918:	07d5851b          	addiw	a0,a1,125
   1191c:	0015169b          	slliw	a3,a0,0x1
   11920:	07c5859b          	addiw	a1,a1,124
   11924:	9d1ff06f          	j	112f4 <_malloc_r+0x74>
   11928:	05400613          	li	a2,84
   1192c:	06e66063          	bltu	a2,a4,1198c <_malloc_r+0x70c>
   11930:	00c7d713          	srli	a4,a5,0xc
   11934:	0007071b          	sext.w	a4,a4
   11938:	06f7059b          	addiw	a1,a4,111
   1193c:	06e7061b          	addiw	a2,a4,110
   11940:	0015959b          	slliw	a1,a1,0x1
   11944:	e2dff06f          	j	11770 <_malloc_r+0x4f0>
   11948:	034a1713          	slli	a4,s4,0x34
   1194c:	ca071ce3          	bnez	a4,11604 <_malloc_r+0x384>
   11950:	01093683          	ld	a3,16(s2)
   11954:	016b8733          	add	a4,s7,s6
   11958:	00176713          	ori	a4,a4,1
   1195c:	00e6b423          	sd	a4,8(a3)
   11960:	d59ff06f          	j	116b8 <_malloc_r+0x438>
   11964:	00100713          	li	a4,1
   11968:	00000a13          	li	s4,0
   1196c:	d01ff06f          	j	1166c <_malloc_r+0x3ec>
   11970:	8151bc23          	sd	s5,-2024(gp) # 249e8 <__malloc_sbrk_base>
   11974:	ca9ff06f          	j	1161c <_malloc_r+0x39c>
   11978:	01040593          	addi	a1,s0,16
   1197c:	00098513          	mv	a0,s3
   11980:	099050ef          	jal	17218 <_free_r>
   11984:	000c2783          	lw	a5,0(s8)
   11988:	d31ff06f          	j	116b8 <_malloc_r+0x438>
   1198c:	15400613          	li	a2,340
   11990:	00e66e63          	bltu	a2,a4,119ac <_malloc_r+0x72c>
   11994:	00f7d713          	srli	a4,a5,0xf
   11998:	0007071b          	sext.w	a4,a4
   1199c:	0787059b          	addiw	a1,a4,120
   119a0:	0777061b          	addiw	a2,a4,119
   119a4:	0015959b          	slliw	a1,a1,0x1
   119a8:	dc9ff06f          	j	11770 <_malloc_r+0x4f0>
   119ac:	55400513          	li	a0,1364
   119b0:	0fe00593          	li	a1,254
   119b4:	07e00613          	li	a2,126
   119b8:	dae56ce3          	bltu	a0,a4,11770 <_malloc_r+0x4f0>
   119bc:	0127d713          	srli	a4,a5,0x12
   119c0:	0007071b          	sext.w	a4,a4
   119c4:	07d7059b          	addiw	a1,a4,125
   119c8:	07c7061b          	addiw	a2,a4,124
   119cc:	0015959b          	slliw	a1,a1,0x1
   119d0:	da1ff06f          	j	11770 <_malloc_r+0x4f0>
   119d4:	00893783          	ld	a5,8(s2)
   119d8:	eadff06f          	j	11884 <_malloc_r+0x604>
   119dc:	0034d693          	srli	a3,s1,0x3
   119e0:	0006869b          	sext.w	a3,a3
   119e4:	0016879b          	addiw	a5,a3,1
   119e8:	0017979b          	slliw	a5,a5,0x1
   119ec:	ab9ff06f          	j	114a4 <_malloc_r+0x224>

00000000000119f0 <memcpy>:
   119f0:	00a5c7b3          	xor	a5,a1,a0
   119f4:	0077f793          	andi	a5,a5,7
   119f8:	00c508b3          	add	a7,a0,a2
   119fc:	0e079263          	bnez	a5,11ae0 <memcpy+0xf0>
   11a00:	00700793          	li	a5,7
   11a04:	0ec7fe63          	bleu	a2,a5,11b00 <memcpy+0x110>
   11a08:	00757793          	andi	a5,a0,7
   11a0c:	04079a63          	bnez	a5,11a60 <memcpy+0x70>
   11a10:	ff88f813          	andi	a6,a7,-8
   11a14:	fc080793          	addi	a5,a6,-64
   11a18:	00050713          	mv	a4,a0
   11a1c:	06f56663          	bltu	a0,a5,11a88 <memcpy+0x98>
   11a20:	00058693          	mv	a3,a1
   11a24:	00070793          	mv	a5,a4
   11a28:	03077863          	bleu	a6,a4,11a58 <memcpy+0x68>
   11a2c:	0006b603          	ld	a2,0(a3)
   11a30:	00878793          	addi	a5,a5,8
   11a34:	00868693          	addi	a3,a3,8
   11a38:	fec7bc23          	sd	a2,-8(a5)
   11a3c:	ff07e8e3          	bltu	a5,a6,11a2c <memcpy+0x3c>
   11a40:	fff74793          	not	a5,a4
   11a44:	01078833          	add	a6,a5,a6
   11a48:	ff887813          	andi	a6,a6,-8
   11a4c:	00880813          	addi	a6,a6,8
   11a50:	01070733          	add	a4,a4,a6
   11a54:	010585b3          	add	a1,a1,a6
   11a58:	09176863          	bltu	a4,a7,11ae8 <memcpy+0xf8>
   11a5c:	00008067          	ret
   11a60:	00050713          	mv	a4,a0
   11a64:	0005c683          	lbu	a3,0(a1)
   11a68:	00170713          	addi	a4,a4,1
   11a6c:	00777793          	andi	a5,a4,7
   11a70:	fed70fa3          	sb	a3,-1(a4)
   11a74:	00158593          	addi	a1,a1,1
   11a78:	fe0796e3          	bnez	a5,11a64 <memcpy+0x74>
   11a7c:	ff88f813          	andi	a6,a7,-8
   11a80:	fc080793          	addi	a5,a6,-64
   11a84:	f8f77ee3          	bleu	a5,a4,11a20 <memcpy+0x30>
   11a88:	0005b383          	ld	t2,0(a1)
   11a8c:	0085b283          	ld	t0,8(a1)
   11a90:	0105bf83          	ld	t6,16(a1)
   11a94:	0185bf03          	ld	t5,24(a1)
   11a98:	0205be83          	ld	t4,32(a1)
   11a9c:	0285be03          	ld	t3,40(a1)
   11aa0:	0305b303          	ld	t1,48(a1)
   11aa4:	0385b603          	ld	a2,56(a1)
   11aa8:	04858593          	addi	a1,a1,72
   11aac:	04870713          	addi	a4,a4,72
   11ab0:	ff85b683          	ld	a3,-8(a1)
   11ab4:	fa773c23          	sd	t2,-72(a4)
   11ab8:	fc573023          	sd	t0,-64(a4)
   11abc:	fdf73423          	sd	t6,-56(a4)
   11ac0:	fde73823          	sd	t5,-48(a4)
   11ac4:	fdd73c23          	sd	t4,-40(a4)
   11ac8:	ffc73023          	sd	t3,-32(a4)
   11acc:	fe673423          	sd	t1,-24(a4)
   11ad0:	fec73823          	sd	a2,-16(a4)
   11ad4:	fed73c23          	sd	a3,-8(a4)
   11ad8:	faf768e3          	bltu	a4,a5,11a88 <memcpy+0x98>
   11adc:	f45ff06f          	j	11a20 <memcpy+0x30>
   11ae0:	00050713          	mv	a4,a0
   11ae4:	03157463          	bleu	a7,a0,11b0c <memcpy+0x11c>
   11ae8:	0005c783          	lbu	a5,0(a1)
   11aec:	00170713          	addi	a4,a4,1
   11af0:	00158593          	addi	a1,a1,1
   11af4:	fef70fa3          	sb	a5,-1(a4)
   11af8:	ff1768e3          	bltu	a4,a7,11ae8 <memcpy+0xf8>
   11afc:	00008067          	ret
   11b00:	00050713          	mv	a4,a0
   11b04:	ff1562e3          	bltu	a0,a7,11ae8 <memcpy+0xf8>
   11b08:	f55ff06f          	j	11a5c <memcpy+0x6c>
   11b0c:	00008067          	ret

0000000000011b10 <__malloc_lock>:
   11b10:	00008067          	ret

0000000000011b14 <__malloc_unlock>:
   11b14:	00008067          	ret

0000000000011b18 <_printf_r>:
   11b18:	fb010113          	addi	sp,sp,-80
   11b1c:	02c13023          	sd	a2,32(sp)
   11b20:	02d13423          	sd	a3,40(sp)
   11b24:	02f13c23          	sd	a5,56(sp)
   11b28:	02e13823          	sd	a4,48(sp)
   11b2c:	05013023          	sd	a6,64(sp)
   11b30:	05113423          	sd	a7,72(sp)
   11b34:	00058613          	mv	a2,a1
   11b38:	01053583          	ld	a1,16(a0)
   11b3c:	02010793          	addi	a5,sp,32
   11b40:	00078693          	mv	a3,a5
   11b44:	00113c23          	sd	ra,24(sp)
   11b48:	00f13423          	sd	a5,8(sp)
   11b4c:	578000ef          	jal	120c4 <_vfprintf_r>
   11b50:	01813083          	ld	ra,24(sp)
   11b54:	05010113          	addi	sp,sp,80
   11b58:	00008067          	ret

0000000000011b5c <printf>:
   11b5c:	8101b303          	ld	t1,-2032(gp) # 249e0 <_impure_ptr>
   11b60:	fa010113          	addi	sp,sp,-96
   11b64:	02c13823          	sd	a2,48(sp)
   11b68:	02d13c23          	sd	a3,56(sp)
   11b6c:	04f13423          	sd	a5,72(sp)
   11b70:	02b13423          	sd	a1,40(sp)
   11b74:	04e13023          	sd	a4,64(sp)
   11b78:	05013823          	sd	a6,80(sp)
   11b7c:	05113c23          	sd	a7,88(sp)
   11b80:	01033583          	ld	a1,16(t1)
   11b84:	02810793          	addi	a5,sp,40
   11b88:	00050613          	mv	a2,a0
   11b8c:	00078693          	mv	a3,a5
   11b90:	00030513          	mv	a0,t1
   11b94:	00113c23          	sd	ra,24(sp)
   11b98:	00f13423          	sd	a5,8(sp)
   11b9c:	528000ef          	jal	120c4 <_vfprintf_r>
   11ba0:	01813083          	ld	ra,24(sp)
   11ba4:	06010113          	addi	sp,sp,96
   11ba8:	00008067          	ret

0000000000011bac <_putchar_r>:
   11bac:	01053603          	ld	a2,16(a0)
   11bb0:	0180006f          	j	11bc8 <_putc_r>

0000000000011bb4 <putchar>:
   11bb4:	8101b783          	ld	a5,-2032(gp) # 249e0 <_impure_ptr>
   11bb8:	00050593          	mv	a1,a0
   11bbc:	0107b603          	ld	a2,16(a5)
   11bc0:	00078513          	mv	a0,a5
   11bc4:	0040006f          	j	11bc8 <_putc_r>

0000000000011bc8 <_putc_r>:
   11bc8:	fe010113          	addi	sp,sp,-32
   11bcc:	00813823          	sd	s0,16(sp)
   11bd0:	00113c23          	sd	ra,24(sp)
   11bd4:	00050413          	mv	s0,a0
   11bd8:	00050663          	beqz	a0,11be4 <_putc_r+0x1c>
   11bdc:	05052783          	lw	a5,80(a0)
   11be0:	06078863          	beqz	a5,11c50 <_putc_r+0x88>
   11be4:	00c62783          	lw	a5,12(a2)
   11be8:	fff7879b          	addiw	a5,a5,-1
   11bec:	00f62623          	sw	a5,12(a2)
   11bf0:	0207c663          	bltz	a5,11c1c <_putc_r+0x54>
   11bf4:	00063783          	ld	a5,0(a2)
   11bf8:	00b78023          	sb	a1,0(a5)
   11bfc:	00063783          	ld	a5,0(a2)
   11c00:	01813083          	ld	ra,24(sp)
   11c04:	00178713          	addi	a4,a5,1
   11c08:	00e63023          	sd	a4,0(a2)
   11c0c:	0007c503          	lbu	a0,0(a5)
   11c10:	01013403          	ld	s0,16(sp)
   11c14:	02010113          	addi	sp,sp,32
   11c18:	00008067          	ret
   11c1c:	02862703          	lw	a4,40(a2)
   11c20:	00e7ce63          	blt	a5,a4,11c3c <_putc_r+0x74>
   11c24:	00063783          	ld	a5,0(a2)
   11c28:	00a00713          	li	a4,10
   11c2c:	00b78023          	sb	a1,0(a5)
   11c30:	00063783          	ld	a5,0(a2)
   11c34:	0007c583          	lbu	a1,0(a5)
   11c38:	fce594e3          	bne	a1,a4,11c00 <_putc_r+0x38>
   11c3c:	00040513          	mv	a0,s0
   11c40:	01813083          	ld	ra,24(sp)
   11c44:	01013403          	ld	s0,16(sp)
   11c48:	02010113          	addi	sp,sp,32
   11c4c:	37c0306f          	j	14fc8 <__swbuf_r>
   11c50:	00c13423          	sd	a2,8(sp)
   11c54:	00b13023          	sd	a1,0(sp)
   11c58:	1fc050ef          	jal	16e54 <__sinit>
   11c5c:	00813603          	ld	a2,8(sp)
   11c60:	00013583          	ld	a1,0(sp)
   11c64:	f81ff06f          	j	11be4 <_putc_r+0x1c>

0000000000011c68 <putc>:
   11c68:	fd010113          	addi	sp,sp,-48
   11c6c:	02813023          	sd	s0,32(sp)
   11c70:	8101b403          	ld	s0,-2032(gp) # 249e0 <_impure_ptr>
   11c74:	00913c23          	sd	s1,24(sp)
   11c78:	02113423          	sd	ra,40(sp)
   11c7c:	00050493          	mv	s1,a0
   11c80:	00040663          	beqz	s0,11c8c <putc+0x24>
   11c84:	05042783          	lw	a5,80(s0)
   11c88:	06078663          	beqz	a5,11cf4 <putc+0x8c>
   11c8c:	00c5a783          	lw	a5,12(a1)
   11c90:	fff7879b          	addiw	a5,a5,-1
   11c94:	00f5a623          	sw	a5,12(a1)
   11c98:	0207c863          	bltz	a5,11cc8 <putc+0x60>
   11c9c:	0005b783          	ld	a5,0(a1)
   11ca0:	00978023          	sb	s1,0(a5)
   11ca4:	0005b783          	ld	a5,0(a1)
   11ca8:	02813083          	ld	ra,40(sp)
   11cac:	00178713          	addi	a4,a5,1
   11cb0:	00e5b023          	sd	a4,0(a1)
   11cb4:	0007c503          	lbu	a0,0(a5)
   11cb8:	02013403          	ld	s0,32(sp)
   11cbc:	01813483          	ld	s1,24(sp)
   11cc0:	03010113          	addi	sp,sp,48
   11cc4:	00008067          	ret
   11cc8:	0285a703          	lw	a4,40(a1)
   11ccc:	02e7ce63          	blt	a5,a4,11d08 <putc+0xa0>
   11cd0:	0005b783          	ld	a5,0(a1)
   11cd4:	00a00693          	li	a3,10
   11cd8:	00978023          	sb	s1,0(a5)
   11cdc:	0005b783          	ld	a5,0(a1)
   11ce0:	0007c703          	lbu	a4,0(a5)
   11ce4:	fcd712e3          	bne	a4,a3,11ca8 <putc+0x40>
   11ce8:	00058613          	mv	a2,a1
   11cec:	00070593          	mv	a1,a4
   11cf0:	0200006f          	j	11d10 <putc+0xa8>
   11cf4:	00040513          	mv	a0,s0
   11cf8:	00b13423          	sd	a1,8(sp)
   11cfc:	158050ef          	jal	16e54 <__sinit>
   11d00:	00813583          	ld	a1,8(sp)
   11d04:	f89ff06f          	j	11c8c <putc+0x24>
   11d08:	00058613          	mv	a2,a1
   11d0c:	00048593          	mv	a1,s1
   11d10:	00040513          	mv	a0,s0
   11d14:	02813083          	ld	ra,40(sp)
   11d18:	02013403          	ld	s0,32(sp)
   11d1c:	01813483          	ld	s1,24(sp)
   11d20:	03010113          	addi	sp,sp,48
   11d24:	2a40306f          	j	14fc8 <__swbuf_r>

0000000000011d28 <_puts_r>:
   11d28:	fa010113          	addi	sp,sp,-96
   11d2c:	04813823          	sd	s0,80(sp)
   11d30:	00050413          	mv	s0,a0
   11d34:	00058513          	mv	a0,a1
   11d38:	04913423          	sd	s1,72(sp)
   11d3c:	04113c23          	sd	ra,88(sp)
   11d40:	00058493          	mv	s1,a1
   11d44:	260000ef          	jal	11fa4 <strlen>
   11d48:	01043583          	ld	a1,16(s0)
   11d4c:	00022737          	lui	a4,0x22
   11d50:	26070713          	addi	a4,a4,608 # 22260 <zeroes.4123+0x18>
   11d54:	01059683          	lh	a3,16(a1)
   11d58:	02e13823          	sd	a4,48(sp)
   11d5c:	00100713          	li	a4,1
   11d60:	02e13c23          	sd	a4,56(sp)
   11d64:	02010713          	addi	a4,sp,32
   11d68:	00150613          	addi	a2,a0,1
   11d6c:	00e13423          	sd	a4,8(sp)
   11d70:	00200713          	li	a4,2
   11d74:	02913023          	sd	s1,32(sp)
   11d78:	02a13423          	sd	a0,40(sp)
   11d7c:	00c13c23          	sd	a2,24(sp)
   11d80:	00e12823          	sw	a4,16(sp)
   11d84:	03269793          	slli	a5,a3,0x32
   11d88:	0207c263          	bltz	a5,11dac <_puts_r+0x84>
   11d8c:	0ac5a783          	lw	a5,172(a1)
   11d90:	ffffe737          	lui	a4,0xffffe
   11d94:	00002637          	lui	a2,0x2
   11d98:	fff7071b          	addiw	a4,a4,-1
   11d9c:	00c6e6b3          	or	a3,a3,a2
   11da0:	00e7f733          	and	a4,a5,a4
   11da4:	00d59823          	sh	a3,16(a1)
   11da8:	0ae5a623          	sw	a4,172(a1)
   11dac:	00810613          	addi	a2,sp,8
   11db0:	00040513          	mv	a0,s0
   11db4:	774050ef          	jal	17528 <__sfvwrite_r>
   11db8:	05813083          	ld	ra,88(sp)
   11dbc:	00a03533          	snez	a0,a0
   11dc0:	40a0053b          	negw	a0,a0
   11dc4:	00a56513          	ori	a0,a0,10
   11dc8:	05013403          	ld	s0,80(sp)
   11dcc:	04813483          	ld	s1,72(sp)
   11dd0:	06010113          	addi	sp,sp,96
   11dd4:	00008067          	ret

0000000000011dd8 <puts>:
   11dd8:	00050593          	mv	a1,a0
   11ddc:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   11de0:	f49ff06f          	j	11d28 <_puts_r>

0000000000011de4 <scanf>:
   11de4:	8101b303          	ld	t1,-2032(gp) # 249e0 <_impure_ptr>
   11de8:	fa010113          	addi	sp,sp,-96
   11dec:	02c13823          	sd	a2,48(sp)
   11df0:	02d13c23          	sd	a3,56(sp)
   11df4:	04f13423          	sd	a5,72(sp)
   11df8:	02b13423          	sd	a1,40(sp)
   11dfc:	04e13023          	sd	a4,64(sp)
   11e00:	05013823          	sd	a6,80(sp)
   11e04:	05113c23          	sd	a7,88(sp)
   11e08:	00833583          	ld	a1,8(t1)
   11e0c:	02810793          	addi	a5,sp,40
   11e10:	00050613          	mv	a2,a0
   11e14:	00078693          	mv	a3,a5
   11e18:	00030513          	mv	a0,t1
   11e1c:	00113c23          	sd	ra,24(sp)
   11e20:	00f13423          	sd	a5,8(sp)
   11e24:	158030ef          	jal	14f7c <_vfscanf_r>
   11e28:	01813083          	ld	ra,24(sp)
   11e2c:	06010113          	addi	sp,sp,96
   11e30:	00008067          	ret

0000000000011e34 <_scanf_r>:
   11e34:	fb010113          	addi	sp,sp,-80
   11e38:	02c13023          	sd	a2,32(sp)
   11e3c:	02d13423          	sd	a3,40(sp)
   11e40:	02f13c23          	sd	a5,56(sp)
   11e44:	02e13823          	sd	a4,48(sp)
   11e48:	05013023          	sd	a6,64(sp)
   11e4c:	05113423          	sd	a7,72(sp)
   11e50:	00058613          	mv	a2,a1
   11e54:	00853583          	ld	a1,8(a0)
   11e58:	02010793          	addi	a5,sp,32
   11e5c:	00078693          	mv	a3,a5
   11e60:	00113c23          	sd	ra,24(sp)
   11e64:	00f13423          	sd	a5,8(sp)
   11e68:	114030ef          	jal	14f7c <_vfscanf_r>
   11e6c:	01813083          	ld	ra,24(sp)
   11e70:	05010113          	addi	sp,sp,80
   11e74:	00008067          	ret

0000000000011e78 <strcmp>:
   11e78:	00b56733          	or	a4,a0,a1
   11e7c:	fff00393          	li	t2,-1
   11e80:	00777713          	andi	a4,a4,7
   11e84:	0c071c63          	bnez	a4,11f5c <strcmp+0xe4>
   11e88:	00013e17          	auipc	t3,0x13
   11e8c:	b90e3e03          	ld	t3,-1136(t3) # 24a18 <mask>
   11e90:	00053603          	ld	a2,0(a0)
   11e94:	0005b683          	ld	a3,0(a1)
   11e98:	01c672b3          	and	t0,a2,t3
   11e9c:	01c66333          	or	t1,a2,t3
   11ea0:	01c282b3          	add	t0,t0,t3
   11ea4:	0062e2b3          	or	t0,t0,t1
   11ea8:	0c729e63          	bne	t0,t2,11f84 <strcmp+0x10c>
   11eac:	04d61663          	bne	a2,a3,11ef8 <strcmp+0x80>
   11eb0:	00853603          	ld	a2,8(a0)
   11eb4:	0085b683          	ld	a3,8(a1)
   11eb8:	01c672b3          	and	t0,a2,t3
   11ebc:	01c66333          	or	t1,a2,t3
   11ec0:	01c282b3          	add	t0,t0,t3
   11ec4:	0062e2b3          	or	t0,t0,t1
   11ec8:	0a729a63          	bne	t0,t2,11f7c <strcmp+0x104>
   11ecc:	02d61663          	bne	a2,a3,11ef8 <strcmp+0x80>
   11ed0:	01053603          	ld	a2,16(a0)
   11ed4:	0105b683          	ld	a3,16(a1)
   11ed8:	01c672b3          	and	t0,a2,t3
   11edc:	01c66333          	or	t1,a2,t3
   11ee0:	01c282b3          	add	t0,t0,t3
   11ee4:	0062e2b3          	or	t0,t0,t1
   11ee8:	0a729463          	bne	t0,t2,11f90 <strcmp+0x118>
   11eec:	01850513          	addi	a0,a0,24
   11ef0:	01858593          	addi	a1,a1,24
   11ef4:	f8d60ee3          	beq	a2,a3,11e90 <strcmp+0x18>
   11ef8:	03061713          	slli	a4,a2,0x30
   11efc:	03069793          	slli	a5,a3,0x30
   11f00:	02f71a63          	bne	a4,a5,11f34 <strcmp+0xbc>
   11f04:	02061713          	slli	a4,a2,0x20
   11f08:	02069793          	slli	a5,a3,0x20
   11f0c:	02f71463          	bne	a4,a5,11f34 <strcmp+0xbc>
   11f10:	01061713          	slli	a4,a2,0x10
   11f14:	01069793          	slli	a5,a3,0x10
   11f18:	00f71e63          	bne	a4,a5,11f34 <strcmp+0xbc>
   11f1c:	03065713          	srli	a4,a2,0x30
   11f20:	0306d793          	srli	a5,a3,0x30
   11f24:	40f70533          	sub	a0,a4,a5
   11f28:	0ff57593          	andi	a1,a0,255
   11f2c:	02059063          	bnez	a1,11f4c <strcmp+0xd4>
   11f30:	00008067          	ret
   11f34:	03075713          	srli	a4,a4,0x30
   11f38:	0307d793          	srli	a5,a5,0x30
   11f3c:	40f70533          	sub	a0,a4,a5
   11f40:	0ff57593          	andi	a1,a0,255
   11f44:	00059463          	bnez	a1,11f4c <strcmp+0xd4>
   11f48:	00008067          	ret
   11f4c:	0ff77713          	andi	a4,a4,255
   11f50:	0ff7f793          	andi	a5,a5,255
   11f54:	40f70533          	sub	a0,a4,a5
   11f58:	00008067          	ret
   11f5c:	00054603          	lbu	a2,0(a0)
   11f60:	0005c683          	lbu	a3,0(a1)
   11f64:	00150513          	addi	a0,a0,1
   11f68:	00158593          	addi	a1,a1,1
   11f6c:	00d61463          	bne	a2,a3,11f74 <strcmp+0xfc>
   11f70:	fe0616e3          	bnez	a2,11f5c <strcmp+0xe4>
   11f74:	40d60533          	sub	a0,a2,a3
   11f78:	00008067          	ret
   11f7c:	00850513          	addi	a0,a0,8
   11f80:	00858593          	addi	a1,a1,8
   11f84:	fcd61ce3          	bne	a2,a3,11f5c <strcmp+0xe4>
   11f88:	00000513          	li	a0,0
   11f8c:	00008067          	ret
   11f90:	01050513          	addi	a0,a0,16
   11f94:	01058593          	addi	a1,a1,16
   11f98:	fcd612e3          	bne	a2,a3,11f5c <strcmp+0xe4>
   11f9c:	00000513          	li	a0,0
   11fa0:	00008067          	ret

0000000000011fa4 <strlen>:
   11fa4:	00757793          	andi	a5,a0,7
   11fa8:	00050593          	mv	a1,a0
   11fac:	06079a63          	bnez	a5,12020 <strlen+0x7c>
   11fb0:	000257b7          	lui	a5,0x25
   11fb4:	a187b683          	ld	a3,-1512(a5) # 24a18 <mask>
   11fb8:	fff00613          	li	a2,-1
   11fbc:	00850513          	addi	a0,a0,8
   11fc0:	ff853783          	ld	a5,-8(a0)
   11fc4:	00d7f733          	and	a4,a5,a3
   11fc8:	00d70733          	add	a4,a4,a3
   11fcc:	00d7e7b3          	or	a5,a5,a3
   11fd0:	00f767b3          	or	a5,a4,a5
   11fd4:	fec784e3          	beq	a5,a2,11fbc <strlen+0x18>
   11fd8:	ff854783          	lbu	a5,-8(a0)
   11fdc:	40b505b3          	sub	a1,a0,a1
   11fe0:	06078263          	beqz	a5,12044 <strlen+0xa0>
   11fe4:	ff954783          	lbu	a5,-7(a0)
   11fe8:	04078a63          	beqz	a5,1203c <strlen+0x98>
   11fec:	ffa54783          	lbu	a5,-6(a0)
   11ff0:	06078263          	beqz	a5,12054 <strlen+0xb0>
   11ff4:	ffb54783          	lbu	a5,-5(a0)
   11ff8:	04078a63          	beqz	a5,1204c <strlen+0xa8>
   11ffc:	ffc54783          	lbu	a5,-4(a0)
   12000:	ffd54703          	lbu	a4,-3(a0)
   12004:	ffe54683          	lbu	a3,-2(a0)
   12008:	04078a63          	beqz	a5,1205c <strlen+0xb8>
   1200c:	04070c63          	beqz	a4,12064 <strlen+0xc0>
   12010:	fff58513          	addi	a0,a1,-1
   12014:	04068c63          	beqz	a3,1206c <strlen+0xc8>
   12018:	00008067          	ret
   1201c:	f8070ae3          	beqz	a4,11fb0 <strlen+0xc>
   12020:	00054783          	lbu	a5,0(a0)
   12024:	00150513          	addi	a0,a0,1
   12028:	00757713          	andi	a4,a0,7
   1202c:	fe0798e3          	bnez	a5,1201c <strlen+0x78>
   12030:	40b50533          	sub	a0,a0,a1
   12034:	fff50513          	addi	a0,a0,-1
   12038:	00008067          	ret
   1203c:	ff958513          	addi	a0,a1,-7
   12040:	00008067          	ret
   12044:	ff858513          	addi	a0,a1,-8
   12048:	00008067          	ret
   1204c:	ffb58513          	addi	a0,a1,-5
   12050:	00008067          	ret
   12054:	ffa58513          	addi	a0,a1,-6
   12058:	00008067          	ret
   1205c:	ffc58513          	addi	a0,a1,-4
   12060:	00008067          	ret
   12064:	ffd58513          	addi	a0,a1,-3
   12068:	00008067          	ret
   1206c:	ffe58513          	addi	a0,a1,-2
   12070:	00008067          	ret

0000000000012074 <time>:
   12074:	fe010113          	addi	sp,sp,-32
   12078:	00813823          	sd	s0,16(sp)
   1207c:	00000593          	li	a1,0
   12080:	00050413          	mv	s0,a0
   12084:	00010513          	mv	a0,sp
   12088:	00113c23          	sd	ra,24(sp)
   1208c:	3050e0ef          	jal	20b90 <gettimeofday>
   12090:	02054063          	bltz	a0,120b0 <time+0x3c>
   12094:	00013503          	ld	a0,0(sp)
   12098:	00040463          	beqz	s0,120a0 <time+0x2c>
   1209c:	00a43023          	sd	a0,0(s0)
   120a0:	01813083          	ld	ra,24(sp)
   120a4:	01013403          	ld	s0,16(sp)
   120a8:	02010113          	addi	sp,sp,32
   120ac:	00008067          	ret
   120b0:	01813083          	ld	ra,24(sp)
   120b4:	fff00513          	li	a0,-1
   120b8:	01013403          	ld	s0,16(sp)
   120bc:	02010113          	addi	sp,sp,32
   120c0:	00008067          	ret

00000000000120c4 <_vfprintf_r>:
   120c4:	e1010113          	addi	sp,sp,-496
   120c8:	1e113423          	sd	ra,488(sp)
   120cc:	1d313423          	sd	s3,456(sp)
   120d0:	1d413023          	sd	s4,448(sp)
   120d4:	1b713423          	sd	s7,424(sp)
   120d8:	00058a13          	mv	s4,a1
   120dc:	00060993          	mv	s3,a2
   120e0:	02d13423          	sd	a3,40(sp)
   120e4:	1e813023          	sd	s0,480(sp)
   120e8:	1c913c23          	sd	s1,472(sp)
   120ec:	1d213823          	sd	s2,464(sp)
   120f0:	1b513c23          	sd	s5,440(sp)
   120f4:	1b613823          	sd	s6,432(sp)
   120f8:	1b813023          	sd	s8,416(sp)
   120fc:	19913c23          	sd	s9,408(sp)
   12100:	19a13823          	sd	s10,400(sp)
   12104:	19b13423          	sd	s11,392(sp)
   12108:	16813c27          	fsd	fs0,376(sp)
   1210c:	00050b93          	mv	s7,a0
   12110:	30d050ef          	jal	17c1c <_localeconv_r>
   12114:	00053783          	ld	a5,0(a0)
   12118:	00078513          	mv	a0,a5
   1211c:	06f13023          	sd	a5,96(sp)
   12120:	e85ff0ef          	jal	11fa4 <strlen>
   12124:	06a13423          	sd	a0,104(sp)
   12128:	000b8663          	beqz	s7,12134 <_vfprintf_r+0x70>
   1212c:	050ba783          	lw	a5,80(s7)
   12130:	2e078c63          	beqz	a5,12428 <_vfprintf_r+0x364>
   12134:	010a1683          	lh	a3,16(s4)
   12138:	03069793          	slli	a5,a3,0x30
   1213c:	0307d793          	srli	a5,a5,0x30
   12140:	03279713          	slli	a4,a5,0x32
   12144:	02074a63          	bltz	a4,12178 <_vfprintf_r+0xb4>
   12148:	000027b7          	lui	a5,0x2
   1214c:	0aca2603          	lw	a2,172(s4)
   12150:	00f6e7b3          	or	a5,a3,a5
   12154:	0107979b          	slliw	a5,a5,0x10
   12158:	ffffe737          	lui	a4,0xffffe
   1215c:	4107d79b          	sraiw	a5,a5,0x10
   12160:	fff7071b          	addiw	a4,a4,-1
   12164:	00e67733          	and	a4,a2,a4
   12168:	00fa1823          	sh	a5,16(s4)
   1216c:	03079793          	slli	a5,a5,0x30
   12170:	0aea2623          	sw	a4,172(s4)
   12174:	0307d793          	srli	a5,a5,0x30
   12178:	0087f713          	andi	a4,a5,8
   1217c:	1e070063          	beqz	a4,1235c <_vfprintf_r+0x298>
   12180:	018a3703          	ld	a4,24(s4)
   12184:	1c070c63          	beqz	a4,1235c <_vfprintf_r+0x298>
   12188:	01a7f793          	andi	a5,a5,26
   1218c:	00a00713          	li	a4,10
   12190:	1ee78863          	beq	a5,a4,12380 <_vfprintf_r+0x2bc>
   12194:	000217b7          	lui	a5,0x21
   12198:	35878793          	addi	a5,a5,856 # 21358 <sulp+0x6dc>
   1219c:	0f010b13          	addi	s6,sp,240
   121a0:	02f13823          	sd	a5,48(sp)
   121a4:	0ef10793          	addi	a5,sp,239
   121a8:	00021ab7          	lui	s5,0x21
   121ac:	000214b7          	lui	s1,0x21
   121b0:	40fb07b3          	sub	a5,s6,a5
   121b4:	04013c23          	sd	zero,88(sp)
   121b8:	0b613823          	sd	s6,176(sp)
   121bc:	0c013023          	sd	zero,192(sp)
   121c0:	0a012c23          	sw	zero,184(sp)
   121c4:	06012823          	sw	zero,112(sp)
   121c8:	000b0893          	mv	a7,s6
   121cc:	02013c23          	sd	zero,56(sp)
   121d0:	06012a23          	sw	zero,116(sp)
   121d4:	00012e23          	sw	zero,28(sp)
   121d8:	4c0a8a93          	addi	s5,s5,1216 # 214c0 <blanks.4193>
   121dc:	4d048493          	addi	s1,s1,1232 # 214d0 <zeroes.4194>
   121e0:	06f13c23          	sd	a5,120(sp)
   121e4:	0009c783          	lbu	a5,0(s3)
   121e8:	0e0782e3          	beqz	a5,12acc <_vfprintf_r+0xa08>
   121ec:	02500713          	li	a4,37
   121f0:	00098413          	mv	s0,s3
   121f4:	00e79663          	bne	a5,a4,12200 <_vfprintf_r+0x13c>
   121f8:	0580006f          	j	12250 <_vfprintf_r+0x18c>
   121fc:	00e78863          	beq	a5,a4,1220c <_vfprintf_r+0x148>
   12200:	00140413          	addi	s0,s0,1
   12204:	00044783          	lbu	a5,0(s0)
   12208:	fe079ae3          	bnez	a5,121fc <_vfprintf_r+0x138>
   1220c:	4134093b          	subw	s2,s0,s3
   12210:	04090063          	beqz	s2,12250 <_vfprintf_r+0x18c>
   12214:	0c013703          	ld	a4,192(sp)
   12218:	0b812783          	lw	a5,184(sp)
   1221c:	00090693          	mv	a3,s2
   12220:	00d70733          	add	a4,a4,a3
   12224:	0017879b          	addiw	a5,a5,1
   12228:	0138b023          	sd	s3,0(a7)
   1222c:	00d8b423          	sd	a3,8(a7)
   12230:	0ce13023          	sd	a4,192(sp)
   12234:	0af12c23          	sw	a5,184(sp)
   12238:	00700713          	li	a4,7
   1223c:	01088893          	addi	a7,a7,16
   12240:	16f74063          	blt	a4,a5,123a0 <_vfprintf_r+0x2dc>
   12244:	01c12783          	lw	a5,28(sp)
   12248:	012787bb          	addw	a5,a5,s2
   1224c:	00f12e23          	sw	a5,28(sp)
   12250:	00044783          	lbu	a5,0(s0)
   12254:	16078463          	beqz	a5,123bc <_vfprintf_r+0x2f8>
   12258:	00140993          	addi	s3,s0,1
   1225c:	080107a3          	sb	zero,143(sp)
   12260:	00000613          	li	a2,0
   12264:	00000593          	li	a1,0
   12268:	fff00413          	li	s0,-1
   1226c:	00012c23          	sw	zero,24(sp)
   12270:	00000c13          	li	s8,0
   12274:	05800713          	li	a4,88
   12278:	00900693          	li	a3,9
   1227c:	02a00513          	li	a0,42
   12280:	0009cd03          	lbu	s10,0(s3)
   12284:	00198993          	addi	s3,s3,1
   12288:	fe0d079b          	addiw	a5,s10,-32
   1228c:	1cf762e3          	bltu	a4,a5,12c50 <_vfprintf_r+0xb8c>
   12290:	03013803          	ld	a6,48(sp)
   12294:	02079793          	slli	a5,a5,0x20
   12298:	01e7d793          	srli	a5,a5,0x1e
   1229c:	010787b3          	add	a5,a5,a6
   122a0:	0007a783          	lw	a5,0(a5)
   122a4:	00078067          	jr	a5
   122a8:	010c6c13          	ori	s8,s8,16
   122ac:	fd5ff06f          	j	12280 <_vfprintf_r+0x1bc>
   122b0:	02813783          	ld	a5,40(sp)
   122b4:	0007a803          	lw	a6,0(a5)
   122b8:	00878793          	addi	a5,a5,8
   122bc:	02f13423          	sd	a5,40(sp)
   122c0:	01012c23          	sw	a6,24(sp)
   122c4:	fa085ee3          	bgez	a6,12280 <_vfprintf_r+0x1bc>
   122c8:	410007bb          	negw	a5,a6
   122cc:	00f12c23          	sw	a5,24(sp)
   122d0:	004c6c13          	ori	s8,s8,4
   122d4:	fadff06f          	j	12280 <_vfprintf_r+0x1bc>
   122d8:	03000793          	li	a5,48
   122dc:	08f10823          	sb	a5,144(sp)
   122e0:	07800793          	li	a5,120
   122e4:	08f108a3          	sb	a5,145(sp)
   122e8:	02813783          	ld	a5,40(sp)
   122ec:	080107a3          	sb	zero,143(sp)
   122f0:	002c6693          	ori	a3,s8,2
   122f4:	00878713          	addi	a4,a5,8
   122f8:	0007b783          	ld	a5,0(a5)
   122fc:	180444e3          	bltz	s0,12c84 <_vfprintf_r+0xbc0>
   12300:	f7fc7c13          	andi	s8,s8,-129
   12304:	02e13423          	sd	a4,40(sp)
   12308:	002c6c13          	ori	s8,s8,2
   1230c:	120796e3          	bnez	a5,12c38 <_vfprintf_r+0xb74>
   12310:	000227b7          	lui	a5,0x22
   12314:	2a078793          	addi	a5,a5,672 # 222a0 <zeroes.4123+0x58>
   12318:	02f13c23          	sd	a5,56(sp)
   1231c:	07800d13          	li	s10,120
   12320:	00000613          	li	a2,0
   12324:	7e040463          	beqz	s0,12b0c <_vfprintf_r+0xa48>
   12328:	00000793          	li	a5,0
   1232c:	000b0913          	mv	s2,s6
   12330:	03813683          	ld	a3,56(sp)
   12334:	00f7f713          	andi	a4,a5,15
   12338:	fff90913          	addi	s2,s2,-1
   1233c:	00e68733          	add	a4,a3,a4
   12340:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_end+0xfffffffffffd6c88>
   12344:	0047d793          	srli	a5,a5,0x4
   12348:	00e90023          	sb	a4,0(s2)
   1234c:	fe0792e3          	bnez	a5,12330 <_vfprintf_r+0x26c>
   12350:	412b07b3          	sub	a5,s6,s2
   12354:	02f12023          	sw	a5,32(sp)
   12358:	1680006f          	j	124c0 <_vfprintf_r+0x3fc>
   1235c:	000a0593          	mv	a1,s4
   12360:	000b8513          	mv	a0,s7
   12364:	5ed020ef          	jal	15150 <__swsetup_r>
   12368:	00050463          	beqz	a0,12370 <_vfprintf_r+0x2ac>
   1236c:	3940106f          	j	13700 <_vfprintf_r+0x163c>
   12370:	010a5783          	lhu	a5,16(s4)
   12374:	00a00713          	li	a4,10
   12378:	01a7f793          	andi	a5,a5,26
   1237c:	e0e79ce3          	bne	a5,a4,12194 <_vfprintf_r+0xd0>
   12380:	012a1783          	lh	a5,18(s4)
   12384:	e007c8e3          	bltz	a5,12194 <_vfprintf_r+0xd0>
   12388:	02813683          	ld	a3,40(sp)
   1238c:	00098613          	mv	a2,s3
   12390:	000a0593          	mv	a1,s4
   12394:	000b8513          	mv	a0,s7
   12398:	1c9010ef          	jal	13d60 <__sbprintf>
   1239c:	04c0006f          	j	123e8 <_vfprintf_r+0x324>
   123a0:	0b010613          	addi	a2,sp,176
   123a4:	000a0593          	mv	a1,s4
   123a8:	000b8513          	mv	a0,s7
   123ac:	1e80b0ef          	jal	1d594 <__sprint_r>
   123b0:	02051263          	bnez	a0,123d4 <_vfprintf_r+0x310>
   123b4:	000b0893          	mv	a7,s6
   123b8:	e8dff06f          	j	12244 <_vfprintf_r+0x180>
   123bc:	0c013783          	ld	a5,192(sp)
   123c0:	00078a63          	beqz	a5,123d4 <_vfprintf_r+0x310>
   123c4:	0b010613          	addi	a2,sp,176
   123c8:	000a0593          	mv	a1,s4
   123cc:	000b8513          	mv	a0,s7
   123d0:	1c40b0ef          	jal	1d594 <__sprint_r>
   123d4:	010a5783          	lhu	a5,16(s4)
   123d8:	0407f793          	andi	a5,a5,64
   123dc:	00078463          	beqz	a5,123e4 <_vfprintf_r+0x320>
   123e0:	3200106f          	j	13700 <_vfprintf_r+0x163c>
   123e4:	01c12503          	lw	a0,28(sp)
   123e8:	1e813083          	ld	ra,488(sp)
   123ec:	1e013403          	ld	s0,480(sp)
   123f0:	1d813483          	ld	s1,472(sp)
   123f4:	1d013903          	ld	s2,464(sp)
   123f8:	1c813983          	ld	s3,456(sp)
   123fc:	1c013a03          	ld	s4,448(sp)
   12400:	1b813a83          	ld	s5,440(sp)
   12404:	1b013b03          	ld	s6,432(sp)
   12408:	1a813b83          	ld	s7,424(sp)
   1240c:	1a013c03          	ld	s8,416(sp)
   12410:	19813c83          	ld	s9,408(sp)
   12414:	19013d03          	ld	s10,400(sp)
   12418:	18813d83          	ld	s11,392(sp)
   1241c:	17813407          	fld	fs0,376(sp)
   12420:	1f010113          	addi	sp,sp,496
   12424:	00008067          	ret
   12428:	000b8513          	mv	a0,s7
   1242c:	229040ef          	jal	16e54 <__sinit>
   12430:	d05ff06f          	j	12134 <_vfprintf_r+0x70>
   12434:	00100613          	li	a2,1
   12438:	02b00593          	li	a1,43
   1243c:	e45ff06f          	j	12280 <_vfprintf_r+0x1bc>
   12440:	00060463          	beqz	a2,12448 <_vfprintf_r+0x384>
   12444:	0d90106f          	j	13d1c <_vfprintf_r+0x1c58>
   12448:	010c7793          	andi	a5,s8,16
   1244c:	22078263          	beqz	a5,12670 <_vfprintf_r+0x5ac>
   12450:	02813783          	ld	a5,40(sp)
   12454:	080107a3          	sb	zero,143(sp)
   12458:	00878713          	addi	a4,a5,8
   1245c:	0007b783          	ld	a5,0(a5)
   12460:	22044663          	bltz	s0,1268c <_vfprintf_r+0x5c8>
   12464:	02e13423          	sd	a4,40(sp)
   12468:	f7fc7c13          	andi	s8,s8,-129
   1246c:	22079663          	bnez	a5,12698 <_vfprintf_r+0x5d4>
   12470:	00000613          	li	a2,0
   12474:	00000793          	li	a5,0
   12478:	00041463          	bnez	s0,12480 <_vfprintf_r+0x3bc>
   1247c:	3680106f          	j	137e4 <_vfprintf_r+0x1720>
   12480:	000b0913          	mv	s2,s6
   12484:	0077f713          	andi	a4,a5,7
   12488:	fff90913          	addi	s2,s2,-1
   1248c:	0307071b          	addiw	a4,a4,48
   12490:	00e90023          	sb	a4,0(s2)
   12494:	0037d793          	srli	a5,a5,0x3
   12498:	fe0796e3          	bnez	a5,12484 <_vfprintf_r+0x3c0>
   1249c:	001c7793          	andi	a5,s8,1
   124a0:	ea0788e3          	beqz	a5,12350 <_vfprintf_r+0x28c>
   124a4:	03000793          	li	a5,48
   124a8:	eaf704e3          	beq	a4,a5,12350 <_vfprintf_r+0x28c>
   124ac:	fff90713          	addi	a4,s2,-1
   124b0:	40eb06b3          	sub	a3,s6,a4
   124b4:	fef90fa3          	sb	a5,-1(s2)
   124b8:	02d12023          	sw	a3,32(sp)
   124bc:	00070913          	mv	s2,a4
   124c0:	02012783          	lw	a5,32(sp)
   124c4:	00078d93          	mv	s11,a5
   124c8:	0087d463          	ble	s0,a5,124d0 <_vfprintf_r+0x40c>
   124cc:	00040d93          	mv	s11,s0
   124d0:	01b12423          	sw	s11,8(sp)
   124d4:	04012623          	sw	zero,76(sp)
   124d8:	2a060263          	beqz	a2,1277c <_vfprintf_r+0x6b8>
   124dc:	00812783          	lw	a5,8(sp)
   124e0:	0017879b          	addiw	a5,a5,1
   124e4:	00f12423          	sw	a5,8(sp)
   124e8:	2940006f          	j	1277c <_vfprintf_r+0x6b8>
   124ec:	0009cd03          	lbu	s10,0(s3)
   124f0:	00198993          	addi	s3,s3,1
   124f4:	00ad1463          	bne	s10,a0,124fc <_vfprintf_r+0x438>
   124f8:	75c0106f          	j	13c54 <_vfprintf_r+0x1b90>
   124fc:	fd0d079b          	addiw	a5,s10,-48
   12500:	00000413          	li	s0,0
   12504:	d8f6e2e3          	bltu	a3,a5,12288 <_vfprintf_r+0x1c4>
   12508:	00198993          	addi	s3,s3,1
   1250c:	fff9cd03          	lbu	s10,-1(s3)
   12510:	0014181b          	slliw	a6,s0,0x1
   12514:	0034141b          	slliw	s0,s0,0x3
   12518:	0088043b          	addw	s0,a6,s0
   1251c:	00f4043b          	addw	s0,s0,a5
   12520:	fd0d079b          	addiw	a5,s10,-48
   12524:	fef6f2e3          	bleu	a5,a3,12508 <_vfprintf_r+0x444>
   12528:	d60450e3          	bgez	s0,12288 <_vfprintf_r+0x1c4>
   1252c:	fff00413          	li	s0,-1
   12530:	d59ff06f          	j	12288 <_vfprintf_r+0x1c4>
   12534:	080c6c13          	ori	s8,s8,128
   12538:	d49ff06f          	j	12280 <_vfprintf_r+0x1bc>
   1253c:	d40592e3          	bnez	a1,12280 <_vfprintf_r+0x1bc>
   12540:	00100613          	li	a2,1
   12544:	02000593          	li	a1,32
   12548:	d39ff06f          	j	12280 <_vfprintf_r+0x1bc>
   1254c:	001c6c13          	ori	s8,s8,1
   12550:	d31ff06f          	j	12280 <_vfprintf_r+0x1bc>
   12554:	02813783          	ld	a5,40(sp)
   12558:	080107a3          	sb	zero,143(sp)
   1255c:	0007b903          	ld	s2,0(a5)
   12560:	00878c93          	addi	s9,a5,8
   12564:	00091463          	bnez	s2,1256c <_vfprintf_r+0x4a8>
   12568:	39c0106f          	j	13904 <_vfprintf_r+0x1840>
   1256c:	01113023          	sd	a7,0(sp)
   12570:	00045463          	bgez	s0,12578 <_vfprintf_r+0x4b4>
   12574:	3240106f          	j	13898 <_vfprintf_r+0x17d4>
   12578:	00040613          	mv	a2,s0
   1257c:	00000593          	li	a1,0
   12580:	00090513          	mv	a0,s2
   12584:	2c9050ef          	jal	1804c <memchr>
   12588:	00013883          	ld	a7,0(sp)
   1258c:	00051463          	bnez	a0,12594 <_vfprintf_r+0x4d0>
   12590:	4c00106f          	j	13a50 <_vfprintf_r+0x198c>
   12594:	412507bb          	subw	a5,a0,s2
   12598:	02f12023          	sw	a5,32(sp)
   1259c:	00078d93          	mv	s11,a5
   125a0:	0007d463          	bgez	a5,125a8 <_vfprintf_r+0x4e4>
   125a4:	3140106f          	j	138b8 <_vfprintf_r+0x17f4>
   125a8:	08f14603          	lbu	a2,143(sp)
   125ac:	01b12423          	sw	s11,8(sp)
   125b0:	03913423          	sd	s9,40(sp)
   125b4:	00000413          	li	s0,0
   125b8:	04012623          	sw	zero,76(sp)
   125bc:	f1dff06f          	j	124d8 <_vfprintf_r+0x414>
   125c0:	00060463          	beqz	a2,125c8 <_vfprintf_r+0x504>
   125c4:	7800106f          	j	13d44 <_vfprintf_r+0x1c80>
   125c8:	010c7793          	andi	a5,s8,16
   125cc:	0e078463          	beqz	a5,126b4 <_vfprintf_r+0x5f0>
   125d0:	02813783          	ld	a5,40(sp)
   125d4:	080107a3          	sb	zero,143(sp)
   125d8:	00878713          	addi	a4,a5,8
   125dc:	0007b783          	ld	a5,0(a5)
   125e0:	0e044863          	bltz	s0,126d0 <_vfprintf_r+0x60c>
   125e4:	02e13423          	sd	a4,40(sp)
   125e8:	f7fc7c13          	andi	s8,s8,-129
   125ec:	00000613          	li	a2,0
   125f0:	50078c63          	beqz	a5,12b08 <_vfprintf_r+0xa44>
   125f4:	00900713          	li	a4,9
   125f8:	000b0913          	mv	s2,s6
   125fc:	00a00693          	li	a3,10
   12600:	40f770e3          	bleu	a5,a4,13200 <_vfprintf_r+0x113c>
   12604:	02d7f733          	remu	a4,a5,a3
   12608:	fff90913          	addi	s2,s2,-1
   1260c:	02d7d7b3          	divu	a5,a5,a3
   12610:	0307071b          	addiw	a4,a4,48
   12614:	00e90023          	sb	a4,0(s2)
   12618:	fe0796e3          	bnez	a5,12604 <_vfprintf_r+0x540>
   1261c:	412b07b3          	sub	a5,s6,s2
   12620:	02f12023          	sw	a5,32(sp)
   12624:	e9dff06f          	j	124c0 <_vfprintf_r+0x3fc>
   12628:	00012c23          	sw	zero,24(sp)
   1262c:	fd0d079b          	addiw	a5,s10,-48
   12630:	01812303          	lw	t1,24(sp)
   12634:	00198993          	addi	s3,s3,1
   12638:	fff9cd03          	lbu	s10,-1(s3)
   1263c:	0013181b          	slliw	a6,t1,0x1
   12640:	00331c9b          	slliw	s9,t1,0x3
   12644:	01980cbb          	addw	s9,a6,s9
   12648:	019787bb          	addw	a5,a5,s9
   1264c:	00f12c23          	sw	a5,24(sp)
   12650:	fd0d079b          	addiw	a5,s10,-48
   12654:	fcf6fee3          	bleu	a5,a3,12630 <_vfprintf_r+0x56c>
   12658:	c31ff06f          	j	12288 <_vfprintf_r+0x1c4>
   1265c:	00060463          	beqz	a2,12664 <_vfprintf_r+0x5a0>
   12660:	6d80106f          	j	13d38 <_vfprintf_r+0x1c74>
   12664:	010c6c13          	ori	s8,s8,16
   12668:	010c7793          	andi	a5,s8,16
   1266c:	de0792e3          	bnez	a5,12450 <_vfprintf_r+0x38c>
   12670:	040c7793          	andi	a5,s8,64
   12674:	080107a3          	sb	zero,143(sp)
   12678:	580780e3          	beqz	a5,133f8 <_vfprintf_r+0x1334>
   1267c:	02813783          	ld	a5,40(sp)
   12680:	00878713          	addi	a4,a5,8
   12684:	0007d783          	lhu	a5,0(a5)
   12688:	dc045ee3          	bgez	s0,12464 <_vfprintf_r+0x3a0>
   1268c:	02e13423          	sd	a4,40(sp)
   12690:	00000613          	li	a2,0
   12694:	60078a63          	beqz	a5,12ca8 <_vfprintf_r+0xbe4>
   12698:	00000613          	li	a2,0
   1269c:	de5ff06f          	j	12480 <_vfprintf_r+0x3bc>
   126a0:	00060463          	beqz	a2,126a8 <_vfprintf_r+0x5e4>
   126a4:	6880106f          	j	13d2c <_vfprintf_r+0x1c68>
   126a8:	010c6c13          	ori	s8,s8,16
   126ac:	010c7793          	andi	a5,s8,16
   126b0:	f20790e3          	bnez	a5,125d0 <_vfprintf_r+0x50c>
   126b4:	040c7793          	andi	a5,s8,64
   126b8:	080107a3          	sb	zero,143(sp)
   126bc:	500780e3          	beqz	a5,133bc <_vfprintf_r+0x12f8>
   126c0:	02813783          	ld	a5,40(sp)
   126c4:	00878713          	addi	a4,a5,8
   126c8:	0007d783          	lhu	a5,0(a5)
   126cc:	f0045ce3          	bgez	s0,125e4 <_vfprintf_r+0x520>
   126d0:	02e13423          	sd	a4,40(sp)
   126d4:	00000613          	li	a2,0
   126d8:	f0079ee3          	bnez	a5,125f4 <_vfprintf_r+0x530>
   126dc:	00100793          	li	a5,1
   126e0:	5c80006f          	j	12ca8 <_vfprintf_r+0xbe4>
   126e4:	00060463          	beqz	a2,126ec <_vfprintf_r+0x628>
   126e8:	63c0106f          	j	13d24 <_vfprintf_r+0x1c60>
   126ec:	000227b7          	lui	a5,0x22
   126f0:	28878793          	addi	a5,a5,648 # 22288 <zeroes.4123+0x40>
   126f4:	02f13c23          	sd	a5,56(sp)
   126f8:	010c7793          	andi	a5,s8,16
   126fc:	4c078263          	beqz	a5,12bc0 <_vfprintf_r+0xafc>
   12700:	02813703          	ld	a4,40(sp)
   12704:	00073783          	ld	a5,0(a4)
   12708:	00870713          	addi	a4,a4,8
   1270c:	02e13423          	sd	a4,40(sp)
   12710:	001c7713          	andi	a4,s8,1
   12714:	120706e3          	beqz	a4,13040 <_vfprintf_r+0xf7c>
   12718:	6a078ee3          	beqz	a5,135d4 <_vfprintf_r+0x1510>
   1271c:	03000713          	li	a4,48
   12720:	08e10823          	sb	a4,144(sp)
   12724:	09a108a3          	sb	s10,145(sp)
   12728:	080107a3          	sb	zero,143(sp)
   1272c:	002c6713          	ori	a4,s8,2
   12730:	00045463          	bgez	s0,12738 <_vfprintf_r+0x674>
   12734:	2140106f          	j	13948 <_vfprintf_r+0x1884>
   12738:	f7fc7c13          	andi	s8,s8,-129
   1273c:	002c6c13          	ori	s8,s8,2
   12740:	00000613          	li	a2,0
   12744:	be9ff06f          	j	1232c <_vfprintf_r+0x268>
   12748:	02813703          	ld	a4,40(sp)
   1274c:	00100693          	li	a3,1
   12750:	00d12423          	sw	a3,8(sp)
   12754:	00072783          	lw	a5,0(a4)
   12758:	080107a3          	sb	zero,143(sp)
   1275c:	00000613          	li	a2,0
   12760:	0cf10423          	sb	a5,200(sp)
   12764:	00870793          	addi	a5,a4,8
   12768:	02f13423          	sd	a5,40(sp)
   1276c:	02d12023          	sw	a3,32(sp)
   12770:	00000413          	li	s0,0
   12774:	04012623          	sw	zero,76(sp)
   12778:	0c810913          	addi	s2,sp,200
   1277c:	002c7793          	andi	a5,s8,2
   12780:	04f12023          	sw	a5,64(sp)
   12784:	00078863          	beqz	a5,12794 <_vfprintf_r+0x6d0>
   12788:	00812783          	lw	a5,8(sp)
   1278c:	0027879b          	addiw	a5,a5,2
   12790:	00f12423          	sw	a5,8(sp)
   12794:	084c7793          	andi	a5,s8,132
   12798:	04f12423          	sw	a5,72(sp)
   1279c:	52079263          	bnez	a5,12cc0 <_vfprintf_r+0xbfc>
   127a0:	01812783          	lw	a5,24(sp)
   127a4:	00812703          	lw	a4,8(sp)
   127a8:	40e78cbb          	subw	s9,a5,a4
   127ac:	51905a63          	blez	s9,12cc0 <_vfprintf_r+0xbfc>
   127b0:	01000793          	li	a5,16
   127b4:	0197c463          	blt	a5,s9,127bc <_vfprintf_r+0x6f8>
   127b8:	1080106f          	j	138c0 <_vfprintf_r+0x17fc>
   127bc:	01000813          	li	a6,16
   127c0:	0c013783          	ld	a5,192(sp)
   127c4:	0b812703          	lw	a4,184(sp)
   127c8:	05513823          	sd	s5,80(sp)
   127cc:	00700313          	li	t1,7
   127d0:	00080d93          	mv	s11,a6
   127d4:	00c0006f          	j	127e0 <_vfprintf_r+0x71c>
   127d8:	ff0c8c9b          	addiw	s9,s9,-16
   127dc:	059dde63          	ble	s9,s11,12838 <_vfprintf_r+0x774>
   127e0:	01078793          	addi	a5,a5,16
   127e4:	0017071b          	addiw	a4,a4,1
   127e8:	0158b023          	sd	s5,0(a7)
   127ec:	0108b423          	sd	a6,8(a7)
   127f0:	0cf13023          	sd	a5,192(sp)
   127f4:	0ae12c23          	sw	a4,184(sp)
   127f8:	01088893          	addi	a7,a7,16
   127fc:	fce35ee3          	ble	a4,t1,127d8 <_vfprintf_r+0x714>
   12800:	0b010613          	addi	a2,sp,176
   12804:	000a0593          	mv	a1,s4
   12808:	000b8513          	mv	a0,s7
   1280c:	00613823          	sd	t1,16(sp)
   12810:	01013023          	sd	a6,0(sp)
   12814:	5810a0ef          	jal	1d594 <__sprint_r>
   12818:	ba051ee3          	bnez	a0,123d4 <_vfprintf_r+0x310>
   1281c:	ff0c8c9b          	addiw	s9,s9,-16
   12820:	0c013783          	ld	a5,192(sp)
   12824:	0b812703          	lw	a4,184(sp)
   12828:	000b0893          	mv	a7,s6
   1282c:	01013303          	ld	t1,16(sp)
   12830:	00013803          	ld	a6,0(sp)
   12834:	fb9dc6e3          	blt	s11,s9,127e0 <_vfprintf_r+0x71c>
   12838:	05013603          	ld	a2,80(sp)
   1283c:	00fc87b3          	add	a5,s9,a5
   12840:	0017071b          	addiw	a4,a4,1
   12844:	00c8b023          	sd	a2,0(a7)
   12848:	0198b423          	sd	s9,8(a7)
   1284c:	0cf13023          	sd	a5,192(sp)
   12850:	0ae12c23          	sw	a4,184(sp)
   12854:	00700693          	li	a3,7
   12858:	0ce6cae3          	blt	a3,a4,1312c <_vfprintf_r+0x1068>
   1285c:	08f14603          	lbu	a2,143(sp)
   12860:	01088893          	addi	a7,a7,16
   12864:	02060a63          	beqz	a2,12898 <_vfprintf_r+0x7d4>
   12868:	0b812703          	lw	a4,184(sp)
   1286c:	08f10693          	addi	a3,sp,143
   12870:	00d8b023          	sd	a3,0(a7)
   12874:	00178793          	addi	a5,a5,1
   12878:	00100693          	li	a3,1
   1287c:	0017071b          	addiw	a4,a4,1
   12880:	00d8b423          	sd	a3,8(a7)
   12884:	0cf13023          	sd	a5,192(sp)
   12888:	0ae12c23          	sw	a4,184(sp)
   1288c:	00700693          	li	a3,7
   12890:	01088893          	addi	a7,a7,16
   12894:	76e6c663          	blt	a3,a4,13000 <_vfprintf_r+0xf3c>
   12898:	04012703          	lw	a4,64(sp)
   1289c:	02070a63          	beqz	a4,128d0 <_vfprintf_r+0x80c>
   128a0:	0b812703          	lw	a4,184(sp)
   128a4:	09010693          	addi	a3,sp,144
   128a8:	00d8b023          	sd	a3,0(a7)
   128ac:	00278793          	addi	a5,a5,2
   128b0:	00200693          	li	a3,2
   128b4:	0017071b          	addiw	a4,a4,1
   128b8:	00d8b423          	sd	a3,8(a7)
   128bc:	0cf13023          	sd	a5,192(sp)
   128c0:	0ae12c23          	sw	a4,184(sp)
   128c4:	00700693          	li	a3,7
   128c8:	01088893          	addi	a7,a7,16
   128cc:	74e6ca63          	blt	a3,a4,13020 <_vfprintf_r+0xf5c>
   128d0:	04812683          	lw	a3,72(sp)
   128d4:	08000713          	li	a4,128
   128d8:	5ee68663          	beq	a3,a4,12ec4 <_vfprintf_r+0xe00>
   128dc:	02012703          	lw	a4,32(sp)
   128e0:	40e4043b          	subw	s0,s0,a4
   128e4:	0c805063          	blez	s0,129a4 <_vfprintf_r+0x8e0>
   128e8:	01000713          	li	a4,16
   128ec:	4e875ce3          	ble	s0,a4,135e4 <_vfprintf_r+0x1520>
   128f0:	01000c93          	li	s9,16
   128f4:	0b812703          	lw	a4,184(sp)
   128f8:	00913823          	sd	s1,16(sp)
   128fc:	00700813          	li	a6,7
   12900:	000c8d93          	mv	s11,s9
   12904:	00c0006f          	j	12910 <_vfprintf_r+0x84c>
   12908:	ff04041b          	addiw	s0,s0,-16
   1290c:	048dda63          	ble	s0,s11,12960 <_vfprintf_r+0x89c>
   12910:	01078793          	addi	a5,a5,16
   12914:	0017071b          	addiw	a4,a4,1
   12918:	0098b023          	sd	s1,0(a7)
   1291c:	0198b423          	sd	s9,8(a7)
   12920:	0cf13023          	sd	a5,192(sp)
   12924:	0ae12c23          	sw	a4,184(sp)
   12928:	01088893          	addi	a7,a7,16
   1292c:	fce85ee3          	ble	a4,a6,12908 <_vfprintf_r+0x844>
   12930:	0b010613          	addi	a2,sp,176
   12934:	000a0593          	mv	a1,s4
   12938:	000b8513          	mv	a0,s7
   1293c:	01013023          	sd	a6,0(sp)
   12940:	4550a0ef          	jal	1d594 <__sprint_r>
   12944:	a80518e3          	bnez	a0,123d4 <_vfprintf_r+0x310>
   12948:	ff04041b          	addiw	s0,s0,-16
   1294c:	0c013783          	ld	a5,192(sp)
   12950:	0b812703          	lw	a4,184(sp)
   12954:	000b0893          	mv	a7,s6
   12958:	00013803          	ld	a6,0(sp)
   1295c:	fa8dcae3          	blt	s11,s0,12910 <_vfprintf_r+0x84c>
   12960:	01013683          	ld	a3,16(sp)
   12964:	008787b3          	add	a5,a5,s0
   12968:	0017071b          	addiw	a4,a4,1
   1296c:	00d8b023          	sd	a3,0(a7)
   12970:	0088b423          	sd	s0,8(a7)
   12974:	0cf13023          	sd	a5,192(sp)
   12978:	0ae12c23          	sw	a4,184(sp)
   1297c:	00700693          	li	a3,7
   12980:	01088893          	addi	a7,a7,16
   12984:	02e6d063          	ble	a4,a3,129a4 <_vfprintf_r+0x8e0>
   12988:	0b010613          	addi	a2,sp,176
   1298c:	000a0593          	mv	a1,s4
   12990:	000b8513          	mv	a0,s7
   12994:	4010a0ef          	jal	1d594 <__sprint_r>
   12998:	a2051ee3          	bnez	a0,123d4 <_vfprintf_r+0x310>
   1299c:	0c013783          	ld	a5,192(sp)
   129a0:	000b0893          	mv	a7,s6
   129a4:	100c7713          	andi	a4,s8,256
   129a8:	40071663          	bnez	a4,12db4 <_vfprintf_r+0xcf0>
   129ac:	02012703          	lw	a4,32(sp)
   129b0:	0b812683          	lw	a3,184(sp)
   129b4:	0128b023          	sd	s2,0(a7)
   129b8:	00e787b3          	add	a5,a5,a4
   129bc:	0016869b          	addiw	a3,a3,1
   129c0:	00e8b423          	sd	a4,8(a7)
   129c4:	0cf13023          	sd	a5,192(sp)
   129c8:	0ad12c23          	sw	a3,184(sp)
   129cc:	00700713          	li	a4,7
   129d0:	3cd74263          	blt	a4,a3,12d94 <_vfprintf_r+0xcd0>
   129d4:	01088893          	addi	a7,a7,16
   129d8:	004c7c13          	andi	s8,s8,4
   129dc:	0c0c0063          	beqz	s8,12a9c <_vfprintf_r+0x9d8>
   129e0:	01812703          	lw	a4,24(sp)
   129e4:	00812683          	lw	a3,8(sp)
   129e8:	40d7043b          	subw	s0,a4,a3
   129ec:	0a805863          	blez	s0,12a9c <_vfprintf_r+0x9d8>
   129f0:	01000713          	li	a4,16
   129f4:	748754e3          	ble	s0,a4,1393c <_vfprintf_r+0x1878>
   129f8:	01000913          	li	s2,16
   129fc:	0b812703          	lw	a4,184(sp)
   12a00:	05513823          	sd	s5,80(sp)
   12a04:	00700c13          	li	s8,7
   12a08:	00090d13          	mv	s10,s2
   12a0c:	00c0006f          	j	12a18 <_vfprintf_r+0x954>
   12a10:	ff04041b          	addiw	s0,s0,-16
   12a14:	048d5663          	ble	s0,s10,12a60 <_vfprintf_r+0x99c>
   12a18:	01078793          	addi	a5,a5,16
   12a1c:	0017071b          	addiw	a4,a4,1
   12a20:	0158b023          	sd	s5,0(a7)
   12a24:	0128b423          	sd	s2,8(a7)
   12a28:	0cf13023          	sd	a5,192(sp)
   12a2c:	0ae12c23          	sw	a4,184(sp)
   12a30:	01088893          	addi	a7,a7,16
   12a34:	fcec5ee3          	ble	a4,s8,12a10 <_vfprintf_r+0x94c>
   12a38:	0b010613          	addi	a2,sp,176
   12a3c:	000a0593          	mv	a1,s4
   12a40:	000b8513          	mv	a0,s7
   12a44:	3510a0ef          	jal	1d594 <__sprint_r>
   12a48:	980516e3          	bnez	a0,123d4 <_vfprintf_r+0x310>
   12a4c:	ff04041b          	addiw	s0,s0,-16
   12a50:	0c013783          	ld	a5,192(sp)
   12a54:	0b812703          	lw	a4,184(sp)
   12a58:	000b0893          	mv	a7,s6
   12a5c:	fa8d4ee3          	blt	s10,s0,12a18 <_vfprintf_r+0x954>
   12a60:	05013683          	ld	a3,80(sp)
   12a64:	008787b3          	add	a5,a5,s0
   12a68:	0017071b          	addiw	a4,a4,1
   12a6c:	00d8b023          	sd	a3,0(a7)
   12a70:	0088b423          	sd	s0,8(a7)
   12a74:	0cf13023          	sd	a5,192(sp)
   12a78:	0ae12c23          	sw	a4,184(sp)
   12a7c:	00700693          	li	a3,7
   12a80:	00e6de63          	ble	a4,a3,12a9c <_vfprintf_r+0x9d8>
   12a84:	0b010613          	addi	a2,sp,176
   12a88:	000a0593          	mv	a1,s4
   12a8c:	000b8513          	mv	a0,s7
   12a90:	3050a0ef          	jal	1d594 <__sprint_r>
   12a94:	940510e3          	bnez	a0,123d4 <_vfprintf_r+0x310>
   12a98:	0c013783          	ld	a5,192(sp)
   12a9c:	01812c83          	lw	s9,24(sp)
   12aa0:	00812703          	lw	a4,8(sp)
   12aa4:	00ecd463          	ble	a4,s9,12aac <_vfprintf_r+0x9e8>
   12aa8:	00070c93          	mv	s9,a4
   12aac:	01c12703          	lw	a4,28(sp)
   12ab0:	0197073b          	addw	a4,a4,s9
   12ab4:	00e12e23          	sw	a4,28(sp)
   12ab8:	52079863          	bnez	a5,12fe8 <_vfprintf_r+0xf24>
   12abc:	0009c783          	lbu	a5,0(s3)
   12ac0:	0a012c23          	sw	zero,184(sp)
   12ac4:	000b0893          	mv	a7,s6
   12ac8:	f2079263          	bnez	a5,121ec <_vfprintf_r+0x128>
   12acc:	00098413          	mv	s0,s3
   12ad0:	f80ff06f          	j	12250 <_vfprintf_r+0x18c>
   12ad4:	00060463          	beqz	a2,12adc <_vfprintf_r+0xa18>
   12ad8:	22c0106f          	j	13d04 <_vfprintf_r+0x1c40>
   12adc:	010c7793          	andi	a5,s8,16
   12ae0:	12078e63          	beqz	a5,12c1c <_vfprintf_r+0xb58>
   12ae4:	02813703          	ld	a4,40(sp)
   12ae8:	00073783          	ld	a5,0(a4)
   12aec:	00870713          	addi	a4,a4,8
   12af0:	02e13423          	sd	a4,40(sp)
   12af4:	1407c0e3          	bltz	a5,13434 <_vfprintf_r+0x1370>
   12af8:	08f14603          	lbu	a2,143(sp)
   12afc:	bc044ee3          	bltz	s0,126d8 <_vfprintf_r+0x614>
   12b00:	f7fc7c13          	andi	s8,s8,-129
   12b04:	ae0798e3          	bnez	a5,125f4 <_vfprintf_r+0x530>
   12b08:	6e041a63          	bnez	s0,131fc <_vfprintf_r+0x1138>
   12b0c:	00000413          	li	s0,0
   12b10:	02012023          	sw	zero,32(sp)
   12b14:	000b0913          	mv	s2,s6
   12b18:	9a9ff06f          	j	124c0 <_vfprintf_r+0x3fc>
   12b1c:	040c6c13          	ori	s8,s8,64
   12b20:	f60ff06f          	j	12280 <_vfprintf_r+0x1bc>
   12b24:	00060463          	beqz	a2,12b2c <_vfprintf_r+0xa68>
   12b28:	1d40106f          	j	13cfc <_vfprintf_r+0x1c38>
   12b2c:	02813783          	ld	a5,40(sp)
   12b30:	00100913          	li	s2,1
   12b34:	0007b787          	fld	fa5,0(a5)
   12b38:	00878793          	addi	a5,a5,8
   12b3c:	01113023          	sd	a7,0(sp)
   12b40:	04f13c27          	fsd	fa5,88(sp)
   12b44:	05813c83          	ld	s9,88(sp)
   12b48:	02f13423          	sd	a5,40(sp)
   12b4c:	f20c8553          	fmv.d.x	fa0,s9
   12b50:	0e8070ef          	jal	19c38 <__fpclassifyd>
   12b54:	00013883          	ld	a7,0(sp)
   12b58:	0f251ce3          	bne	a0,s2,13450 <_vfprintf_r+0x138c>
   12b5c:	f20007d3          	fmv.d.x	fa5,zero
   12b60:	f20c8753          	fmv.d.x	fa4,s9
   12b64:	a2f717d3          	flt.d	a5,fa4,fa5
   12b68:	600792e3          	bnez	a5,1396c <_vfprintf_r+0x18a8>
   12b6c:	08f14603          	lbu	a2,143(sp)
   12b70:	04700793          	li	a5,71
   12b74:	3da7d8e3          	ble	s10,a5,13744 <_vfprintf_r+0x1680>
   12b78:	00022937          	lui	s2,0x22
   12b7c:	27090913          	addi	s2,s2,624 # 22270 <zeroes.4123+0x28>
   12b80:	00300793          	li	a5,3
   12b84:	00f12423          	sw	a5,8(sp)
   12b88:	f7fc7c13          	andi	s8,s8,-129
   12b8c:	02f12023          	sw	a5,32(sp)
   12b90:	00000413          	li	s0,0
   12b94:	04012623          	sw	zero,76(sp)
   12b98:	941ff06f          	j	124d8 <_vfprintf_r+0x414>
   12b9c:	008c6c13          	ori	s8,s8,8
   12ba0:	ee0ff06f          	j	12280 <_vfprintf_r+0x1bc>
   12ba4:	00060463          	beqz	a2,12bac <_vfprintf_r+0xae8>
   12ba8:	1280106f          	j	13cd0 <_vfprintf_r+0x1c0c>
   12bac:	000227b7          	lui	a5,0x22
   12bb0:	2a078793          	addi	a5,a5,672 # 222a0 <zeroes.4123+0x58>
   12bb4:	02f13c23          	sd	a5,56(sp)
   12bb8:	010c7793          	andi	a5,s8,16
   12bbc:	b40792e3          	bnez	a5,12700 <_vfprintf_r+0x63c>
   12bc0:	040c7793          	andi	a5,s8,64
   12bc4:	02813703          	ld	a4,40(sp)
   12bc8:	1c0784e3          	beqz	a5,13590 <_vfprintf_r+0x14cc>
   12bcc:	00075783          	lhu	a5,0(a4)
   12bd0:	00870713          	addi	a4,a4,8
   12bd4:	02e13423          	sd	a4,40(sp)
   12bd8:	b39ff06f          	j	12710 <_vfprintf_r+0x64c>
   12bdc:	00060463          	beqz	a2,12be4 <_vfprintf_r+0xb20>
   12be0:	10c0106f          	j	13cec <_vfprintf_r+0x1c28>
   12be4:	010c7793          	andi	a5,s8,16
   12be8:	1a078ce3          	beqz	a5,135a0 <_vfprintf_r+0x14dc>
   12bec:	02813683          	ld	a3,40(sp)
   12bf0:	01c12703          	lw	a4,28(sp)
   12bf4:	0006b783          	ld	a5,0(a3)
   12bf8:	00868693          	addi	a3,a3,8
   12bfc:	02d13423          	sd	a3,40(sp)
   12c00:	00e7b023          	sd	a4,0(a5)
   12c04:	de0ff06f          	j	121e4 <_vfprintf_r+0x120>
   12c08:	00060463          	beqz	a2,12c10 <_vfprintf_r+0xb4c>
   12c0c:	0d40106f          	j	13ce0 <_vfprintf_r+0x1c1c>
   12c10:	010c6c13          	ori	s8,s8,16
   12c14:	010c7793          	andi	a5,s8,16
   12c18:	ec0796e3          	bnez	a5,12ae4 <_vfprintf_r+0xa20>
   12c1c:	040c7793          	andi	a5,s8,64
   12c20:	02813703          	ld	a4,40(sp)
   12c24:	1a0780e3          	beqz	a5,135c4 <_vfprintf_r+0x1500>
   12c28:	00071783          	lh	a5,0(a4)
   12c2c:	00870713          	addi	a4,a4,8
   12c30:	02e13423          	sd	a4,40(sp)
   12c34:	ec1ff06f          	j	12af4 <_vfprintf_r+0xa30>
   12c38:	00022737          	lui	a4,0x22
   12c3c:	2a070713          	addi	a4,a4,672 # 222a0 <zeroes.4123+0x58>
   12c40:	00000613          	li	a2,0
   12c44:	02e13c23          	sd	a4,56(sp)
   12c48:	07800d13          	li	s10,120
   12c4c:	ee0ff06f          	j	1232c <_vfprintf_r+0x268>
   12c50:	00060463          	beqz	a2,12c58 <_vfprintf_r+0xb94>
   12c54:	0c00106f          	j	13d14 <_vfprintf_r+0x1c50>
   12c58:	f60d0263          	beqz	s10,123bc <_vfprintf_r+0x2f8>
   12c5c:	00100793          	li	a5,1
   12c60:	00f12423          	sw	a5,8(sp)
   12c64:	0da10423          	sb	s10,200(sp)
   12c68:	080107a3          	sb	zero,143(sp)
   12c6c:	00000613          	li	a2,0
   12c70:	02f12023          	sw	a5,32(sp)
   12c74:	00000413          	li	s0,0
   12c78:	04012623          	sw	zero,76(sp)
   12c7c:	0c810913          	addi	s2,sp,200
   12c80:	afdff06f          	j	1277c <_vfprintf_r+0x6b8>
   12c84:	02e13423          	sd	a4,40(sp)
   12c88:	00022737          	lui	a4,0x22
   12c8c:	2a070713          	addi	a4,a4,672 # 222a0 <zeroes.4123+0x58>
   12c90:	00068c13          	mv	s8,a3
   12c94:	02e13c23          	sd	a4,56(sp)
   12c98:	07800d13          	li	s10,120
   12c9c:	3a079a63          	bnez	a5,13050 <_vfprintf_r+0xf8c>
   12ca0:	00000613          	li	a2,0
   12ca4:	00200793          	li	a5,2
   12ca8:	00100713          	li	a4,1
   12cac:	54e78863          	beq	a5,a4,131fc <_vfprintf_r+0x1138>
   12cb0:	00200713          	li	a4,2
   12cb4:	e6e78a63          	beq	a5,a4,12328 <_vfprintf_r+0x264>
   12cb8:	00000793          	li	a5,0
   12cbc:	fc4ff06f          	j	12480 <_vfprintf_r+0x3bc>
   12cc0:	0c013783          	ld	a5,192(sp)
   12cc4:	ba1ff06f          	j	12864 <_vfprintf_r+0x7a0>
   12cc8:	07012683          	lw	a3,112(sp)
   12ccc:	00100713          	li	a4,1
   12cd0:	00178793          	addi	a5,a5,1
   12cd4:	6cd75663          	ble	a3,a4,133a0 <_vfprintf_r+0x12dc>
   12cd8:	0b812703          	lw	a4,184(sp)
   12cdc:	00100693          	li	a3,1
   12ce0:	00d8b423          	sd	a3,8(a7)
   12ce4:	0017071b          	addiw	a4,a4,1
   12ce8:	0128b023          	sd	s2,0(a7)
   12cec:	0cf13023          	sd	a5,192(sp)
   12cf0:	0ae12c23          	sw	a4,184(sp)
   12cf4:	00700693          	li	a3,7
   12cf8:	01088893          	addi	a7,a7,16
   12cfc:	6ce6ca63          	blt	a3,a4,133d0 <_vfprintf_r+0x130c>
   12d00:	06813683          	ld	a3,104(sp)
   12d04:	06013603          	ld	a2,96(sp)
   12d08:	0017071b          	addiw	a4,a4,1
   12d0c:	00f687b3          	add	a5,a3,a5
   12d10:	00d8b423          	sd	a3,8(a7)
   12d14:	00c8b023          	sd	a2,0(a7)
   12d18:	0cf13023          	sd	a5,192(sp)
   12d1c:	0ae12c23          	sw	a4,184(sp)
   12d20:	00700693          	li	a3,7
   12d24:	01088893          	addi	a7,a7,16
   12d28:	6ee6c263          	blt	a3,a4,1340c <_vfprintf_r+0x1348>
   12d2c:	f20007d3          	fmv.d.x	fa5,zero
   12d30:	05813707          	fld	fa4,88(sp)
   12d34:	a2f726d3          	feq.d	a3,fa4,fa5
   12d38:	40069c63          	bnez	a3,13150 <_vfprintf_r+0x108c>
   12d3c:	07012683          	lw	a3,112(sp)
   12d40:	00190913          	addi	s2,s2,1
   12d44:	0017071b          	addiw	a4,a4,1
   12d48:	fff6869b          	addiw	a3,a3,-1
   12d4c:	00d787b3          	add	a5,a5,a3
   12d50:	0128b023          	sd	s2,0(a7)
   12d54:	00d8b423          	sd	a3,8(a7)
   12d58:	0cf13023          	sd	a5,192(sp)
   12d5c:	0ae12c23          	sw	a4,184(sp)
   12d60:	00700693          	li	a3,7
   12d64:	26e6c063          	blt	a3,a4,12fc4 <_vfprintf_r+0xf00>
   12d68:	01088893          	addi	a7,a7,16
   12d6c:	07412683          	lw	a3,116(sp)
   12d70:	0a010613          	addi	a2,sp,160
   12d74:	0017071b          	addiw	a4,a4,1
   12d78:	00f687b3          	add	a5,a3,a5
   12d7c:	00c8b023          	sd	a2,0(a7)
   12d80:	00d8b423          	sd	a3,8(a7)
   12d84:	0cf13023          	sd	a5,192(sp)
   12d88:	0ae12c23          	sw	a4,184(sp)
   12d8c:	00700693          	li	a3,7
   12d90:	c4e6d2e3          	ble	a4,a3,129d4 <_vfprintf_r+0x910>
   12d94:	0b010613          	addi	a2,sp,176
   12d98:	000a0593          	mv	a1,s4
   12d9c:	000b8513          	mv	a0,s7
   12da0:	7f40a0ef          	jal	1d594 <__sprint_r>
   12da4:	e2051863          	bnez	a0,123d4 <_vfprintf_r+0x310>
   12da8:	0c013783          	ld	a5,192(sp)
   12dac:	000b0893          	mv	a7,s6
   12db0:	c29ff06f          	j	129d8 <_vfprintf_r+0x914>
   12db4:	06500713          	li	a4,101
   12db8:	f1a758e3          	ble	s10,a4,12cc8 <_vfprintf_r+0xc04>
   12dbc:	f20007d3          	fmv.d.x	fa5,zero
   12dc0:	05813707          	fld	fa4,88(sp)
   12dc4:	a2f72753          	feq.d	a4,fa4,fa5
   12dc8:	28070863          	beqz	a4,13058 <_vfprintf_r+0xf94>
   12dcc:	0b812703          	lw	a4,184(sp)
   12dd0:	000226b7          	lui	a3,0x22
   12dd4:	2c068693          	addi	a3,a3,704 # 222c0 <zeroes.4123+0x78>
   12dd8:	00d8b023          	sd	a3,0(a7)
   12ddc:	00178793          	addi	a5,a5,1
   12de0:	00100693          	li	a3,1
   12de4:	0017071b          	addiw	a4,a4,1
   12de8:	00d8b423          	sd	a3,8(a7)
   12dec:	0cf13023          	sd	a5,192(sp)
   12df0:	0ae12c23          	sw	a4,184(sp)
   12df4:	00700693          	li	a3,7
   12df8:	01088893          	addi	a7,a7,16
   12dfc:	7ee6ca63          	blt	a3,a4,135f0 <_vfprintf_r+0x152c>
   12e00:	09812703          	lw	a4,152(sp)
   12e04:	07012683          	lw	a3,112(sp)
   12e08:	00d74663          	blt	a4,a3,12e14 <_vfprintf_r+0xd50>
   12e0c:	001c7713          	andi	a4,s8,1
   12e10:	bc0704e3          	beqz	a4,129d8 <_vfprintf_r+0x914>
   12e14:	06013703          	ld	a4,96(sp)
   12e18:	06813683          	ld	a3,104(sp)
   12e1c:	01088893          	addi	a7,a7,16
   12e20:	fee8b823          	sd	a4,-16(a7)
   12e24:	0b812703          	lw	a4,184(sp)
   12e28:	00d787b3          	add	a5,a5,a3
   12e2c:	fed8bc23          	sd	a3,-8(a7)
   12e30:	0017071b          	addiw	a4,a4,1
   12e34:	0cf13023          	sd	a5,192(sp)
   12e38:	0ae12c23          	sw	a4,184(sp)
   12e3c:	00700693          	li	a3,7
   12e40:	1ce6c8e3          	blt	a3,a4,13810 <_vfprintf_r+0x174c>
   12e44:	07012703          	lw	a4,112(sp)
   12e48:	fff7041b          	addiw	s0,a4,-1
   12e4c:	b88056e3          	blez	s0,129d8 <_vfprintf_r+0x914>
   12e50:	01000713          	li	a4,16
   12e54:	36875c63          	ble	s0,a4,131cc <_vfprintf_r+0x1108>
   12e58:	01000913          	li	s2,16
   12e5c:	0b812703          	lw	a4,184(sp)
   12e60:	00913823          	sd	s1,16(sp)
   12e64:	00700d13          	li	s10,7
   12e68:	00090693          	mv	a3,s2
   12e6c:	00c0006f          	j	12e78 <_vfprintf_r+0xdb4>
   12e70:	ff04041b          	addiw	s0,s0,-16
   12e74:	3686d063          	ble	s0,a3,131d4 <_vfprintf_r+0x1110>
   12e78:	01078793          	addi	a5,a5,16
   12e7c:	0017071b          	addiw	a4,a4,1
   12e80:	0098b023          	sd	s1,0(a7)
   12e84:	0128b423          	sd	s2,8(a7)
   12e88:	0cf13023          	sd	a5,192(sp)
   12e8c:	0ae12c23          	sw	a4,184(sp)
   12e90:	01088893          	addi	a7,a7,16
   12e94:	fced5ee3          	ble	a4,s10,12e70 <_vfprintf_r+0xdac>
   12e98:	0b010613          	addi	a2,sp,176
   12e9c:	000a0593          	mv	a1,s4
   12ea0:	000b8513          	mv	a0,s7
   12ea4:	00d13023          	sd	a3,0(sp)
   12ea8:	6ec0a0ef          	jal	1d594 <__sprint_r>
   12eac:	d2051463          	bnez	a0,123d4 <_vfprintf_r+0x310>
   12eb0:	0c013783          	ld	a5,192(sp)
   12eb4:	0b812703          	lw	a4,184(sp)
   12eb8:	000b0893          	mv	a7,s6
   12ebc:	00013683          	ld	a3,0(sp)
   12ec0:	fb1ff06f          	j	12e70 <_vfprintf_r+0xdac>
   12ec4:	01812703          	lw	a4,24(sp)
   12ec8:	00812683          	lw	a3,8(sp)
   12ecc:	40d70cbb          	subw	s9,a4,a3
   12ed0:	a19056e3          	blez	s9,128dc <_vfprintf_r+0x818>
   12ed4:	01000713          	li	a4,16
   12ed8:	2f975ee3          	ble	s9,a4,139d4 <_vfprintf_r+0x1910>
   12edc:	01000813          	li	a6,16
   12ee0:	0b812703          	lw	a4,184(sp)
   12ee4:	00913823          	sd	s1,16(sp)
   12ee8:	00700313          	li	t1,7
   12eec:	00080d93          	mv	s11,a6
   12ef0:	00c0006f          	j	12efc <_vfprintf_r+0xe38>
   12ef4:	ff0c8c9b          	addiw	s9,s9,-16
   12ef8:	059dde63          	ble	s9,s11,12f54 <_vfprintf_r+0xe90>
   12efc:	01078793          	addi	a5,a5,16
   12f00:	0017071b          	addiw	a4,a4,1
   12f04:	0098b023          	sd	s1,0(a7)
   12f08:	0108b423          	sd	a6,8(a7)
   12f0c:	0cf13023          	sd	a5,192(sp)
   12f10:	0ae12c23          	sw	a4,184(sp)
   12f14:	01088893          	addi	a7,a7,16
   12f18:	fce35ee3          	ble	a4,t1,12ef4 <_vfprintf_r+0xe30>
   12f1c:	0b010613          	addi	a2,sp,176
   12f20:	000a0593          	mv	a1,s4
   12f24:	000b8513          	mv	a0,s7
   12f28:	04613023          	sd	t1,64(sp)
   12f2c:	01013023          	sd	a6,0(sp)
   12f30:	6640a0ef          	jal	1d594 <__sprint_r>
   12f34:	ca051063          	bnez	a0,123d4 <_vfprintf_r+0x310>
   12f38:	ff0c8c9b          	addiw	s9,s9,-16
   12f3c:	0c013783          	ld	a5,192(sp)
   12f40:	0b812703          	lw	a4,184(sp)
   12f44:	000b0893          	mv	a7,s6
   12f48:	04013303          	ld	t1,64(sp)
   12f4c:	00013803          	ld	a6,0(sp)
   12f50:	fb9dc6e3          	blt	s11,s9,12efc <_vfprintf_r+0xe38>
   12f54:	01013603          	ld	a2,16(sp)
   12f58:	019787b3          	add	a5,a5,s9
   12f5c:	0017071b          	addiw	a4,a4,1
   12f60:	00c8b023          	sd	a2,0(a7)
   12f64:	0198b423          	sd	s9,8(a7)
   12f68:	0cf13023          	sd	a5,192(sp)
   12f6c:	0ae12c23          	sw	a4,184(sp)
   12f70:	00700693          	li	a3,7
   12f74:	01088893          	addi	a7,a7,16
   12f78:	96e6d2e3          	ble	a4,a3,128dc <_vfprintf_r+0x818>
   12f7c:	0b010613          	addi	a2,sp,176
   12f80:	000a0593          	mv	a1,s4
   12f84:	000b8513          	mv	a0,s7
   12f88:	60c0a0ef          	jal	1d594 <__sprint_r>
   12f8c:	c4051463          	bnez	a0,123d4 <_vfprintf_r+0x310>
   12f90:	0c013783          	ld	a5,192(sp)
   12f94:	000b0893          	mv	a7,s6
   12f98:	945ff06f          	j	128dc <_vfprintf_r+0x818>
   12f9c:	00913823          	sd	s1,16(sp)
   12fa0:	01013683          	ld	a3,16(sp)
   12fa4:	008787b3          	add	a5,a5,s0
   12fa8:	0017071b          	addiw	a4,a4,1
   12fac:	00d8b023          	sd	a3,0(a7)
   12fb0:	0088b423          	sd	s0,8(a7)
   12fb4:	0cf13023          	sd	a5,192(sp)
   12fb8:	0ae12c23          	sw	a4,184(sp)
   12fbc:	00700693          	li	a3,7
   12fc0:	dae6d4e3          	ble	a4,a3,12d68 <_vfprintf_r+0xca4>
   12fc4:	0b010613          	addi	a2,sp,176
   12fc8:	000a0593          	mv	a1,s4
   12fcc:	000b8513          	mv	a0,s7
   12fd0:	5c40a0ef          	jal	1d594 <__sprint_r>
   12fd4:	c0051063          	bnez	a0,123d4 <_vfprintf_r+0x310>
   12fd8:	0c013783          	ld	a5,192(sp)
   12fdc:	0b812703          	lw	a4,184(sp)
   12fe0:	000b0893          	mv	a7,s6
   12fe4:	d89ff06f          	j	12d6c <_vfprintf_r+0xca8>
   12fe8:	0b010613          	addi	a2,sp,176
   12fec:	000a0593          	mv	a1,s4
   12ff0:	000b8513          	mv	a0,s7
   12ff4:	5a00a0ef          	jal	1d594 <__sprint_r>
   12ff8:	ac0502e3          	beqz	a0,12abc <_vfprintf_r+0x9f8>
   12ffc:	bd8ff06f          	j	123d4 <_vfprintf_r+0x310>
   13000:	0b010613          	addi	a2,sp,176
   13004:	000a0593          	mv	a1,s4
   13008:	000b8513          	mv	a0,s7
   1300c:	5880a0ef          	jal	1d594 <__sprint_r>
   13010:	bc051263          	bnez	a0,123d4 <_vfprintf_r+0x310>
   13014:	0c013783          	ld	a5,192(sp)
   13018:	000b0893          	mv	a7,s6
   1301c:	87dff06f          	j	12898 <_vfprintf_r+0x7d4>
   13020:	0b010613          	addi	a2,sp,176
   13024:	000a0593          	mv	a1,s4
   13028:	000b8513          	mv	a0,s7
   1302c:	5680a0ef          	jal	1d594 <__sprint_r>
   13030:	ba051263          	bnez	a0,123d4 <_vfprintf_r+0x310>
   13034:	0c013783          	ld	a5,192(sp)
   13038:	000b0893          	mv	a7,s6
   1303c:	895ff06f          	j	128d0 <_vfprintf_r+0x80c>
   13040:	080107a3          	sb	zero,143(sp)
   13044:	c4044ce3          	bltz	s0,12c9c <_vfprintf_r+0xbd8>
   13048:	f7fc7c13          	andi	s8,s8,-129
   1304c:	ac078a63          	beqz	a5,12320 <_vfprintf_r+0x25c>
   13050:	00000613          	li	a2,0
   13054:	ad8ff06f          	j	1232c <_vfprintf_r+0x268>
   13058:	09812403          	lw	s0,152(sp)
   1305c:	5a805c63          	blez	s0,13614 <_vfprintf_r+0x1550>
   13060:	04c12703          	lw	a4,76(sp)
   13064:	07012683          	lw	a3,112(sp)
   13068:	00070413          	mv	s0,a4
   1306c:	00e6d463          	ble	a4,a3,13074 <_vfprintf_r+0xfb0>
   13070:	00068413          	mv	s0,a3
   13074:	02805663          	blez	s0,130a0 <_vfprintf_r+0xfdc>
   13078:	0b812703          	lw	a4,184(sp)
   1307c:	008787b3          	add	a5,a5,s0
   13080:	0128b023          	sd	s2,0(a7)
   13084:	0017071b          	addiw	a4,a4,1
   13088:	0088b423          	sd	s0,8(a7)
   1308c:	0cf13023          	sd	a5,192(sp)
   13090:	0ae12c23          	sw	a4,184(sp)
   13094:	00700693          	li	a3,7
   13098:	01088893          	addi	a7,a7,16
   1309c:	6ae6ca63          	blt	a3,a4,13750 <_vfprintf_r+0x168c>
   130a0:	020448e3          	bltz	s0,138d0 <_vfprintf_r+0x180c>
   130a4:	04c12703          	lw	a4,76(sp)
   130a8:	4087043b          	subw	s0,a4,s0
   130ac:	1a805c63          	blez	s0,13264 <_vfprintf_r+0x11a0>
   130b0:	01000713          	li	a4,16
   130b4:	16875263          	ble	s0,a4,13218 <_vfprintf_r+0x1154>
   130b8:	01000d13          	li	s10,16
   130bc:	0b812703          	lw	a4,184(sp)
   130c0:	00913823          	sd	s1,16(sp)
   130c4:	00700693          	li	a3,7
   130c8:	000d0813          	mv	a6,s10
   130cc:	00c0006f          	j	130d8 <_vfprintf_r+0x1014>
   130d0:	ff04041b          	addiw	s0,s0,-16
   130d4:	14885663          	ble	s0,a6,13220 <_vfprintf_r+0x115c>
   130d8:	01078793          	addi	a5,a5,16
   130dc:	0017071b          	addiw	a4,a4,1
   130e0:	0098b023          	sd	s1,0(a7)
   130e4:	01a8b423          	sd	s10,8(a7)
   130e8:	0cf13023          	sd	a5,192(sp)
   130ec:	0ae12c23          	sw	a4,184(sp)
   130f0:	01088893          	addi	a7,a7,16
   130f4:	fce6dee3          	ble	a4,a3,130d0 <_vfprintf_r+0x100c>
   130f8:	0b010613          	addi	a2,sp,176
   130fc:	000a0593          	mv	a1,s4
   13100:	000b8513          	mv	a0,s7
   13104:	03013023          	sd	a6,32(sp)
   13108:	00d13023          	sd	a3,0(sp)
   1310c:	4880a0ef          	jal	1d594 <__sprint_r>
   13110:	ac051263          	bnez	a0,123d4 <_vfprintf_r+0x310>
   13114:	0c013783          	ld	a5,192(sp)
   13118:	0b812703          	lw	a4,184(sp)
   1311c:	000b0893          	mv	a7,s6
   13120:	02013803          	ld	a6,32(sp)
   13124:	00013683          	ld	a3,0(sp)
   13128:	fa9ff06f          	j	130d0 <_vfprintf_r+0x100c>
   1312c:	0b010613          	addi	a2,sp,176
   13130:	000a0593          	mv	a1,s4
   13134:	000b8513          	mv	a0,s7
   13138:	45c0a0ef          	jal	1d594 <__sprint_r>
   1313c:	a8051c63          	bnez	a0,123d4 <_vfprintf_r+0x310>
   13140:	08f14603          	lbu	a2,143(sp)
   13144:	0c013783          	ld	a5,192(sp)
   13148:	000b0893          	mv	a7,s6
   1314c:	f18ff06f          	j	12864 <_vfprintf_r+0x7a0>
   13150:	07012683          	lw	a3,112(sp)
   13154:	fff6841b          	addiw	s0,a3,-1
   13158:	c0805ae3          	blez	s0,12d6c <_vfprintf_r+0xca8>
   1315c:	01000693          	li	a3,16
   13160:	e286dee3          	ble	s0,a3,12f9c <_vfprintf_r+0xed8>
   13164:	01000913          	li	s2,16
   13168:	00913823          	sd	s1,16(sp)
   1316c:	00700d13          	li	s10,7
   13170:	00090693          	mv	a3,s2
   13174:	00c0006f          	j	13180 <_vfprintf_r+0x10bc>
   13178:	ff04041b          	addiw	s0,s0,-16
   1317c:	e286d2e3          	ble	s0,a3,12fa0 <_vfprintf_r+0xedc>
   13180:	01078793          	addi	a5,a5,16
   13184:	0017071b          	addiw	a4,a4,1
   13188:	0098b023          	sd	s1,0(a7)
   1318c:	0128b423          	sd	s2,8(a7)
   13190:	0cf13023          	sd	a5,192(sp)
   13194:	0ae12c23          	sw	a4,184(sp)
   13198:	01088893          	addi	a7,a7,16
   1319c:	fced5ee3          	ble	a4,s10,13178 <_vfprintf_r+0x10b4>
   131a0:	0b010613          	addi	a2,sp,176
   131a4:	000a0593          	mv	a1,s4
   131a8:	000b8513          	mv	a0,s7
   131ac:	00d13023          	sd	a3,0(sp)
   131b0:	3e40a0ef          	jal	1d594 <__sprint_r>
   131b4:	a2051063          	bnez	a0,123d4 <_vfprintf_r+0x310>
   131b8:	0c013783          	ld	a5,192(sp)
   131bc:	0b812703          	lw	a4,184(sp)
   131c0:	000b0893          	mv	a7,s6
   131c4:	00013683          	ld	a3,0(sp)
   131c8:	fb1ff06f          	j	13178 <_vfprintf_r+0x10b4>
   131cc:	0b812703          	lw	a4,184(sp)
   131d0:	00913823          	sd	s1,16(sp)
   131d4:	01013683          	ld	a3,16(sp)
   131d8:	008787b3          	add	a5,a5,s0
   131dc:	0088b423          	sd	s0,8(a7)
   131e0:	00d8b023          	sd	a3,0(a7)
   131e4:	0017071b          	addiw	a4,a4,1
   131e8:	0cf13023          	sd	a5,192(sp)
   131ec:	0ae12c23          	sw	a4,184(sp)
   131f0:	00700693          	li	a3,7
   131f4:	fee6d063          	ble	a4,a3,129d4 <_vfprintf_r+0x910>
   131f8:	b9dff06f          	j	12d94 <_vfprintf_r+0xcd0>
   131fc:	00000793          	li	a5,0
   13200:	0307879b          	addiw	a5,a5,48
   13204:	0ef107a3          	sb	a5,239(sp)
   13208:	07813783          	ld	a5,120(sp)
   1320c:	0ef10913          	addi	s2,sp,239
   13210:	02f12023          	sw	a5,32(sp)
   13214:	aacff06f          	j	124c0 <_vfprintf_r+0x3fc>
   13218:	0b812703          	lw	a4,184(sp)
   1321c:	00913823          	sd	s1,16(sp)
   13220:	01013683          	ld	a3,16(sp)
   13224:	008787b3          	add	a5,a5,s0
   13228:	0017071b          	addiw	a4,a4,1
   1322c:	00d8b023          	sd	a3,0(a7)
   13230:	0088b423          	sd	s0,8(a7)
   13234:	0cf13023          	sd	a5,192(sp)
   13238:	0ae12c23          	sw	a4,184(sp)
   1323c:	00700693          	li	a3,7
   13240:	01088893          	addi	a7,a7,16
   13244:	02e6d063          	ble	a4,a3,13264 <_vfprintf_r+0x11a0>
   13248:	0b010613          	addi	a2,sp,176
   1324c:	000a0593          	mv	a1,s4
   13250:	000b8513          	mv	a0,s7
   13254:	3400a0ef          	jal	1d594 <__sprint_r>
   13258:	96051e63          	bnez	a0,123d4 <_vfprintf_r+0x310>
   1325c:	0c013783          	ld	a5,192(sp)
   13260:	000b0893          	mv	a7,s6
   13264:	04c12d03          	lw	s10,76(sp)
   13268:	09812703          	lw	a4,152(sp)
   1326c:	07012683          	lw	a3,112(sp)
   13270:	01a90d33          	add	s10,s2,s10
   13274:	0cd74a63          	blt	a4,a3,13348 <_vfprintf_r+0x1284>
   13278:	001c7693          	andi	a3,s8,1
   1327c:	0c069663          	bnez	a3,13348 <_vfprintf_r+0x1284>
   13280:	07012683          	lw	a3,112(sp)
   13284:	00d90433          	add	s0,s2,a3
   13288:	41a40433          	sub	s0,s0,s10
   1328c:	40e6873b          	subw	a4,a3,a4
   13290:	0004041b          	sext.w	s0,s0
   13294:	00875463          	ble	s0,a4,1329c <_vfprintf_r+0x11d8>
   13298:	00070413          	mv	s0,a4
   1329c:	02805663          	blez	s0,132c8 <_vfprintf_r+0x1204>
   132a0:	0b812683          	lw	a3,184(sp)
   132a4:	008787b3          	add	a5,a5,s0
   132a8:	01a8b023          	sd	s10,0(a7)
   132ac:	0016869b          	addiw	a3,a3,1
   132b0:	0088b423          	sd	s0,8(a7)
   132b4:	0cf13023          	sd	a5,192(sp)
   132b8:	0ad12c23          	sw	a3,184(sp)
   132bc:	00700613          	li	a2,7
   132c0:	01088893          	addi	a7,a7,16
   132c4:	4cd64263          	blt	a2,a3,13788 <_vfprintf_r+0x16c4>
   132c8:	60044863          	bltz	s0,138d8 <_vfprintf_r+0x1814>
   132cc:	4087043b          	subw	s0,a4,s0
   132d0:	f0805463          	blez	s0,129d8 <_vfprintf_r+0x914>
   132d4:	01000713          	li	a4,16
   132d8:	ee875ae3          	ble	s0,a4,131cc <_vfprintf_r+0x1108>
   132dc:	01000913          	li	s2,16
   132e0:	0b812703          	lw	a4,184(sp)
   132e4:	00913823          	sd	s1,16(sp)
   132e8:	00700d13          	li	s10,7
   132ec:	00090693          	mv	a3,s2
   132f0:	00c0006f          	j	132fc <_vfprintf_r+0x1238>
   132f4:	ff04041b          	addiw	s0,s0,-16
   132f8:	ec86dee3          	ble	s0,a3,131d4 <_vfprintf_r+0x1110>
   132fc:	01078793          	addi	a5,a5,16
   13300:	0017071b          	addiw	a4,a4,1
   13304:	0098b023          	sd	s1,0(a7)
   13308:	0128b423          	sd	s2,8(a7)
   1330c:	0cf13023          	sd	a5,192(sp)
   13310:	0ae12c23          	sw	a4,184(sp)
   13314:	01088893          	addi	a7,a7,16
   13318:	fced5ee3          	ble	a4,s10,132f4 <_vfprintf_r+0x1230>
   1331c:	0b010613          	addi	a2,sp,176
   13320:	000a0593          	mv	a1,s4
   13324:	000b8513          	mv	a0,s7
   13328:	00d13023          	sd	a3,0(sp)
   1332c:	2680a0ef          	jal	1d594 <__sprint_r>
   13330:	8a051263          	bnez	a0,123d4 <_vfprintf_r+0x310>
   13334:	0c013783          	ld	a5,192(sp)
   13338:	0b812703          	lw	a4,184(sp)
   1333c:	000b0893          	mv	a7,s6
   13340:	00013683          	ld	a3,0(sp)
   13344:	fb1ff06f          	j	132f4 <_vfprintf_r+0x1230>
   13348:	06013683          	ld	a3,96(sp)
   1334c:	06813603          	ld	a2,104(sp)
   13350:	01088893          	addi	a7,a7,16
   13354:	fed8b823          	sd	a3,-16(a7)
   13358:	0b812683          	lw	a3,184(sp)
   1335c:	00c787b3          	add	a5,a5,a2
   13360:	fec8bc23          	sd	a2,-8(a7)
   13364:	0016869b          	addiw	a3,a3,1
   13368:	0cf13023          	sd	a5,192(sp)
   1336c:	0ad12c23          	sw	a3,184(sp)
   13370:	00700613          	li	a2,7
   13374:	f0d656e3          	ble	a3,a2,13280 <_vfprintf_r+0x11bc>
   13378:	0b010613          	addi	a2,sp,176
   1337c:	000a0593          	mv	a1,s4
   13380:	000b8513          	mv	a0,s7
   13384:	2100a0ef          	jal	1d594 <__sprint_r>
   13388:	00050463          	beqz	a0,13390 <_vfprintf_r+0x12cc>
   1338c:	848ff06f          	j	123d4 <_vfprintf_r+0x310>
   13390:	09812703          	lw	a4,152(sp)
   13394:	0c013783          	ld	a5,192(sp)
   13398:	000b0893          	mv	a7,s6
   1339c:	ee5ff06f          	j	13280 <_vfprintf_r+0x11bc>
   133a0:	00ec7733          	and	a4,s8,a4
   133a4:	92071ae3          	bnez	a4,12cd8 <_vfprintf_r+0xc14>
   133a8:	0b812703          	lw	a4,184(sp)
   133ac:	0128b023          	sd	s2,0(a7)
   133b0:	00100693          	li	a3,1
   133b4:	0017071b          	addiw	a4,a4,1
   133b8:	99dff06f          	j	12d54 <_vfprintf_r+0xc90>
   133bc:	02813783          	ld	a5,40(sp)
   133c0:	00878713          	addi	a4,a5,8
   133c4:	0007e783          	lwu	a5,0(a5)
   133c8:	a0045e63          	bgez	s0,125e4 <_vfprintf_r+0x520>
   133cc:	b04ff06f          	j	126d0 <_vfprintf_r+0x60c>
   133d0:	0b010613          	addi	a2,sp,176
   133d4:	000a0593          	mv	a1,s4
   133d8:	000b8513          	mv	a0,s7
   133dc:	1b80a0ef          	jal	1d594 <__sprint_r>
   133e0:	00050463          	beqz	a0,133e8 <_vfprintf_r+0x1324>
   133e4:	ff1fe06f          	j	123d4 <_vfprintf_r+0x310>
   133e8:	0c013783          	ld	a5,192(sp)
   133ec:	0b812703          	lw	a4,184(sp)
   133f0:	000b0893          	mv	a7,s6
   133f4:	90dff06f          	j	12d00 <_vfprintf_r+0xc3c>
   133f8:	02813783          	ld	a5,40(sp)
   133fc:	00878713          	addi	a4,a5,8
   13400:	0007e783          	lwu	a5,0(a5)
   13404:	86045063          	bgez	s0,12464 <_vfprintf_r+0x3a0>
   13408:	a84ff06f          	j	1268c <_vfprintf_r+0x5c8>
   1340c:	0b010613          	addi	a2,sp,176
   13410:	000a0593          	mv	a1,s4
   13414:	000b8513          	mv	a0,s7
   13418:	17c0a0ef          	jal	1d594 <__sprint_r>
   1341c:	00050463          	beqz	a0,13424 <_vfprintf_r+0x1360>
   13420:	fb5fe06f          	j	123d4 <_vfprintf_r+0x310>
   13424:	0c013783          	ld	a5,192(sp)
   13428:	0b812703          	lw	a4,184(sp)
   1342c:	000b0893          	mv	a7,s6
   13430:	8fdff06f          	j	12d2c <_vfprintf_r+0xc68>
   13434:	02d00713          	li	a4,45
   13438:	08e107a3          	sb	a4,143(sp)
   1343c:	40f007b3          	neg	a5,a5
   13440:	4a044063          	bltz	s0,138e0 <_vfprintf_r+0x181c>
   13444:	f7fc7c13          	andi	s8,s8,-129
   13448:	02d00613          	li	a2,45
   1344c:	9a8ff06f          	j	125f4 <_vfprintf_r+0x530>
   13450:	05813507          	fld	fa0,88(sp)
   13454:	01113023          	sd	a7,0(sp)
   13458:	7e0060ef          	jal	19c38 <__fpclassifyd>
   1345c:	00013883          	ld	a7,0(sp)
   13460:	2a050463          	beqz	a0,13708 <_vfprintf_r+0x1644>
   13464:	fff00793          	li	a5,-1
   13468:	fdfd7d93          	andi	s11,s10,-33
   1346c:	62f40c63          	beq	s0,a5,13aa4 <_vfprintf_r+0x19e0>
   13470:	04700793          	li	a5,71
   13474:	62fd8263          	beq	s11,a5,13a98 <_vfprintf_r+0x19d4>
   13478:	05813703          	ld	a4,88(sp)
   1347c:	100c6693          	ori	a3,s8,256
   13480:	00d12023          	sw	a3,0(sp)
   13484:	42075793          	srai	a5,a4,0x20
   13488:	f2070453          	fmv.d.x	fs0,a4
   1348c:	00000c93          	li	s9,0
   13490:	6607c663          	bltz	a5,13afc <_vfprintf_r+0x1a38>
   13494:	06600793          	li	a5,102
   13498:	60fd0a63          	beq	s10,a5,13aac <_vfprintf_r+0x19e8>
   1349c:	04600793          	li	a5,70
   134a0:	72fd0863          	beq	s10,a5,13bd0 <_vfprintf_r+0x1b0c>
   134a4:	fbbd859b          	addiw	a1,s11,-69
   134a8:	0015b593          	seqz	a1,a1
   134ac:	228405d3          	fmv.d	fa1,fs0
   134b0:	00b405bb          	addw	a1,s0,a1
   134b4:	09c10793          	addi	a5,sp,156
   134b8:	00058693          	mv	a3,a1
   134bc:	0a810813          	addi	a6,sp,168
   134c0:	09810713          	addi	a4,sp,152
   134c4:	00200613          	li	a2,2
   134c8:	000b8513          	mv	a0,s7
   134cc:	01113823          	sd	a7,16(sp)
   134d0:	00b13423          	sd	a1,8(sp)
   134d4:	26c020ef          	jal	15740 <_dtoa_r>
   134d8:	06700793          	li	a5,103
   134dc:	00050913          	mv	s2,a0
   134e0:	00813583          	ld	a1,8(sp)
   134e4:	01013883          	ld	a7,16(sp)
   134e8:	46fd0863          	beq	s10,a5,13958 <_vfprintf_r+0x1894>
   134ec:	04700793          	li	a5,71
   134f0:	00b50733          	add	a4,a0,a1
   134f4:	48fd0a63          	beq	s10,a5,13988 <_vfprintf_r+0x18c4>
   134f8:	f20007d3          	fmv.d.x	fa5,zero
   134fc:	00070793          	mv	a5,a4
   13500:	a2f426d3          	feq.d	a3,fs0,fa5
   13504:	02069263          	bnez	a3,13528 <_vfprintf_r+0x1464>
   13508:	0a813783          	ld	a5,168(sp)
   1350c:	00e7fe63          	bleu	a4,a5,13528 <_vfprintf_r+0x1464>
   13510:	03000613          	li	a2,48
   13514:	00178693          	addi	a3,a5,1
   13518:	0ad13423          	sd	a3,168(sp)
   1351c:	00c78023          	sb	a2,0(a5)
   13520:	0a813783          	ld	a5,168(sp)
   13524:	fee7e8e3          	bltu	a5,a4,13514 <_vfprintf_r+0x1450>
   13528:	412787b3          	sub	a5,a5,s2
   1352c:	06f12823          	sw	a5,112(sp)
   13530:	04700793          	li	a5,71
   13534:	46fd8663          	beq	s11,a5,139a0 <_vfprintf_r+0x18dc>
   13538:	06500793          	li	a5,101
   1353c:	7ba7dc63          	ble	s10,a5,13cf4 <_vfprintf_r+0x1c30>
   13540:	06600793          	li	a5,102
   13544:	60fd0263          	beq	s10,a5,13b48 <_vfprintf_r+0x1a84>
   13548:	09812783          	lw	a5,152(sp)
   1354c:	04f12623          	sw	a5,76(sp)
   13550:	04c12703          	lw	a4,76(sp)
   13554:	07012683          	lw	a3,112(sp)
   13558:	00070793          	mv	a5,a4
   1355c:	5ad74663          	blt	a4,a3,13b08 <_vfprintf_r+0x1a44>
   13560:	001c7c13          	andi	s8,s8,1
   13564:	5c0c1463          	bnez	s8,13b2c <_vfprintf_r+0x1a68>
   13568:	76074863          	bltz	a4,13cd8 <_vfprintf_r+0x1c14>
   1356c:	04c12703          	lw	a4,76(sp)
   13570:	06700d13          	li	s10,103
   13574:	02e12023          	sw	a4,32(sp)
   13578:	440c9063          	bnez	s9,139b8 <_vfprintf_r+0x18f4>
   1357c:	08f14603          	lbu	a2,143(sp)
   13580:	00f12423          	sw	a5,8(sp)
   13584:	00012c03          	lw	s8,0(sp)
   13588:	00000413          	li	s0,0
   1358c:	f4dfe06f          	j	124d8 <_vfprintf_r+0x414>
   13590:	00076783          	lwu	a5,0(a4)
   13594:	00870713          	addi	a4,a4,8
   13598:	02e13423          	sd	a4,40(sp)
   1359c:	974ff06f          	j	12710 <_vfprintf_r+0x64c>
   135a0:	02813703          	ld	a4,40(sp)
   135a4:	040c7c13          	andi	s8,s8,64
   135a8:	00073783          	ld	a5,0(a4)
   135ac:	00870713          	addi	a4,a4,8
   135b0:	02e13423          	sd	a4,40(sp)
   135b4:	180c0263          	beqz	s8,13738 <_vfprintf_r+0x1674>
   135b8:	01c15703          	lhu	a4,28(sp)
   135bc:	00e79023          	sh	a4,0(a5)
   135c0:	c25fe06f          	j	121e4 <_vfprintf_r+0x120>
   135c4:	00072783          	lw	a5,0(a4)
   135c8:	00870713          	addi	a4,a4,8
   135cc:	02e13423          	sd	a4,40(sp)
   135d0:	d24ff06f          	j	12af4 <_vfprintf_r+0xa30>
   135d4:	080107a3          	sb	zero,143(sp)
   135d8:	ec044463          	bltz	s0,12ca0 <_vfprintf_r+0xbdc>
   135dc:	f7fc7c13          	andi	s8,s8,-129
   135e0:	d41fe06f          	j	12320 <_vfprintf_r+0x25c>
   135e4:	0b812703          	lw	a4,184(sp)
   135e8:	00913823          	sd	s1,16(sp)
   135ec:	b74ff06f          	j	12960 <_vfprintf_r+0x89c>
   135f0:	0b010613          	addi	a2,sp,176
   135f4:	000a0593          	mv	a1,s4
   135f8:	000b8513          	mv	a0,s7
   135fc:	799090ef          	jal	1d594 <__sprint_r>
   13600:	00050463          	beqz	a0,13608 <_vfprintf_r+0x1544>
   13604:	dd1fe06f          	j	123d4 <_vfprintf_r+0x310>
   13608:	0c013783          	ld	a5,192(sp)
   1360c:	000b0893          	mv	a7,s6
   13610:	ff0ff06f          	j	12e00 <_vfprintf_r+0xd3c>
   13614:	0b812703          	lw	a4,184(sp)
   13618:	000226b7          	lui	a3,0x22
   1361c:	2c068693          	addi	a3,a3,704 # 222c0 <zeroes.4123+0x78>
   13620:	00d8b023          	sd	a3,0(a7)
   13624:	00178793          	addi	a5,a5,1
   13628:	00100693          	li	a3,1
   1362c:	0017071b          	addiw	a4,a4,1
   13630:	00d8b423          	sd	a3,8(a7)
   13634:	0cf13023          	sd	a5,192(sp)
   13638:	0ae12c23          	sw	a4,184(sp)
   1363c:	00700693          	li	a3,7
   13640:	01088893          	addi	a7,a7,16
   13644:	16e6ca63          	blt	a3,a4,137b8 <_vfprintf_r+0x16f4>
   13648:	12040663          	beqz	s0,13774 <_vfprintf_r+0x16b0>
   1364c:	06013703          	ld	a4,96(sp)
   13650:	06813683          	ld	a3,104(sp)
   13654:	01088893          	addi	a7,a7,16
   13658:	fee8b823          	sd	a4,-16(a7)
   1365c:	0b812703          	lw	a4,184(sp)
   13660:	00f687b3          	add	a5,a3,a5
   13664:	fed8bc23          	sd	a3,-8(a7)
   13668:	0017071b          	addiw	a4,a4,1
   1366c:	0cf13023          	sd	a5,192(sp)
   13670:	0ae12c23          	sw	a4,184(sp)
   13674:	00700693          	li	a3,7
   13678:	3ee6ca63          	blt	a3,a4,13a6c <_vfprintf_r+0x19a8>
   1367c:	4080043b          	negw	s0,s0
   13680:	20805263          	blez	s0,13884 <_vfprintf_r+0x17c0>
   13684:	01000693          	li	a3,16
   13688:	1a86d663          	ble	s0,a3,13834 <_vfprintf_r+0x1770>
   1368c:	01000d13          	li	s10,16
   13690:	00913823          	sd	s1,16(sp)
   13694:	00700813          	li	a6,7
   13698:	000d0693          	mv	a3,s10
   1369c:	00c0006f          	j	136a8 <_vfprintf_r+0x15e4>
   136a0:	ff04041b          	addiw	s0,s0,-16
   136a4:	1886da63          	ble	s0,a3,13838 <_vfprintf_r+0x1774>
   136a8:	01078793          	addi	a5,a5,16
   136ac:	0017071b          	addiw	a4,a4,1
   136b0:	0098b023          	sd	s1,0(a7)
   136b4:	01a8b423          	sd	s10,8(a7)
   136b8:	0cf13023          	sd	a5,192(sp)
   136bc:	0ae12c23          	sw	a4,184(sp)
   136c0:	01088893          	addi	a7,a7,16
   136c4:	fce85ee3          	ble	a4,a6,136a0 <_vfprintf_r+0x15dc>
   136c8:	0b010613          	addi	a2,sp,176
   136cc:	000a0593          	mv	a1,s4
   136d0:	000b8513          	mv	a0,s7
   136d4:	02d13023          	sd	a3,32(sp)
   136d8:	01013023          	sd	a6,0(sp)
   136dc:	6b9090ef          	jal	1d594 <__sprint_r>
   136e0:	00050463          	beqz	a0,136e8 <_vfprintf_r+0x1624>
   136e4:	cf1fe06f          	j	123d4 <_vfprintf_r+0x310>
   136e8:	0c013783          	ld	a5,192(sp)
   136ec:	0b812703          	lw	a4,184(sp)
   136f0:	000b0893          	mv	a7,s6
   136f4:	02013683          	ld	a3,32(sp)
   136f8:	00013803          	ld	a6,0(sp)
   136fc:	fa5ff06f          	j	136a0 <_vfprintf_r+0x15dc>
   13700:	fff00513          	li	a0,-1
   13704:	ce5fe06f          	j	123e8 <_vfprintf_r+0x324>
   13708:	04700793          	li	a5,71
   1370c:	27a7c863          	blt	a5,s10,1397c <_vfprintf_r+0x18b8>
   13710:	00022937          	lui	s2,0x22
   13714:	27890913          	addi	s2,s2,632 # 22278 <zeroes.4123+0x30>
   13718:	00300793          	li	a5,3
   1371c:	00f12423          	sw	a5,8(sp)
   13720:	f7fc7c13          	andi	s8,s8,-129
   13724:	08f14603          	lbu	a2,143(sp)
   13728:	02f12023          	sw	a5,32(sp)
   1372c:	00000413          	li	s0,0
   13730:	04012623          	sw	zero,76(sp)
   13734:	da5fe06f          	j	124d8 <_vfprintf_r+0x414>
   13738:	01c12703          	lw	a4,28(sp)
   1373c:	00e7a023          	sw	a4,0(a5)
   13740:	aa5fe06f          	j	121e4 <_vfprintf_r+0x120>
   13744:	00022937          	lui	s2,0x22
   13748:	26890913          	addi	s2,s2,616 # 22268 <zeroes.4123+0x20>
   1374c:	c34ff06f          	j	12b80 <_vfprintf_r+0xabc>
   13750:	0b010613          	addi	a2,sp,176
   13754:	000a0593          	mv	a1,s4
   13758:	000b8513          	mv	a0,s7
   1375c:	639090ef          	jal	1d594 <__sprint_r>
   13760:	00050463          	beqz	a0,13768 <_vfprintf_r+0x16a4>
   13764:	c71fe06f          	j	123d4 <_vfprintf_r+0x310>
   13768:	0c013783          	ld	a5,192(sp)
   1376c:	000b0893          	mv	a7,s6
   13770:	931ff06f          	j	130a0 <_vfprintf_r+0xfdc>
   13774:	07012703          	lw	a4,112(sp)
   13778:	ec071ae3          	bnez	a4,1364c <_vfprintf_r+0x1588>
   1377c:	001c7713          	andi	a4,s8,1
   13780:	a4070c63          	beqz	a4,129d8 <_vfprintf_r+0x914>
   13784:	ec9ff06f          	j	1364c <_vfprintf_r+0x1588>
   13788:	0b010613          	addi	a2,sp,176
   1378c:	000a0593          	mv	a1,s4
   13790:	000b8513          	mv	a0,s7
   13794:	601090ef          	jal	1d594 <__sprint_r>
   13798:	00050463          	beqz	a0,137a0 <_vfprintf_r+0x16dc>
   1379c:	c39fe06f          	j	123d4 <_vfprintf_r+0x310>
   137a0:	09812703          	lw	a4,152(sp)
   137a4:	07012683          	lw	a3,112(sp)
   137a8:	0c013783          	ld	a5,192(sp)
   137ac:	000b0893          	mv	a7,s6
   137b0:	40e6873b          	subw	a4,a3,a4
   137b4:	b15ff06f          	j	132c8 <_vfprintf_r+0x1204>
   137b8:	0b010613          	addi	a2,sp,176
   137bc:	000a0593          	mv	a1,s4
   137c0:	000b8513          	mv	a0,s7
   137c4:	5d1090ef          	jal	1d594 <__sprint_r>
   137c8:	00050463          	beqz	a0,137d0 <_vfprintf_r+0x170c>
   137cc:	c09fe06f          	j	123d4 <_vfprintf_r+0x310>
   137d0:	09812403          	lw	s0,152(sp)
   137d4:	0c013783          	ld	a5,192(sp)
   137d8:	000b0893          	mv	a7,s6
   137dc:	e60418e3          	bnez	s0,1364c <_vfprintf_r+0x1588>
   137e0:	f95ff06f          	j	13774 <_vfprintf_r+0x16b0>
   137e4:	001c7793          	andi	a5,s8,1
   137e8:	00078e63          	beqz	a5,13804 <_vfprintf_r+0x1740>
   137ec:	03000793          	li	a5,48
   137f0:	0ef107a3          	sb	a5,239(sp)
   137f4:	07813783          	ld	a5,120(sp)
   137f8:	0ef10913          	addi	s2,sp,239
   137fc:	02f12023          	sw	a5,32(sp)
   13800:	cc1fe06f          	j	124c0 <_vfprintf_r+0x3fc>
   13804:	02012023          	sw	zero,32(sp)
   13808:	000b0913          	mv	s2,s6
   1380c:	cb5fe06f          	j	124c0 <_vfprintf_r+0x3fc>
   13810:	0b010613          	addi	a2,sp,176
   13814:	000a0593          	mv	a1,s4
   13818:	000b8513          	mv	a0,s7
   1381c:	579090ef          	jal	1d594 <__sprint_r>
   13820:	00050463          	beqz	a0,13828 <_vfprintf_r+0x1764>
   13824:	bb1fe06f          	j	123d4 <_vfprintf_r+0x310>
   13828:	0c013783          	ld	a5,192(sp)
   1382c:	000b0893          	mv	a7,s6
   13830:	e14ff06f          	j	12e44 <_vfprintf_r+0xd80>
   13834:	00913823          	sd	s1,16(sp)
   13838:	01013683          	ld	a3,16(sp)
   1383c:	008787b3          	add	a5,a5,s0
   13840:	0017071b          	addiw	a4,a4,1
   13844:	00d8b023          	sd	a3,0(a7)
   13848:	0088b423          	sd	s0,8(a7)
   1384c:	0cf13023          	sd	a5,192(sp)
   13850:	0ae12c23          	sw	a4,184(sp)
   13854:	00700693          	li	a3,7
   13858:	01088893          	addi	a7,a7,16
   1385c:	02e6d463          	ble	a4,a3,13884 <_vfprintf_r+0x17c0>
   13860:	0b010613          	addi	a2,sp,176
   13864:	000a0593          	mv	a1,s4
   13868:	000b8513          	mv	a0,s7
   1386c:	529090ef          	jal	1d594 <__sprint_r>
   13870:	00050463          	beqz	a0,13878 <_vfprintf_r+0x17b4>
   13874:	b61fe06f          	j	123d4 <_vfprintf_r+0x310>
   13878:	0c013783          	ld	a5,192(sp)
   1387c:	0b812703          	lw	a4,184(sp)
   13880:	000b0893          	mv	a7,s6
   13884:	07012683          	lw	a3,112(sp)
   13888:	0017071b          	addiw	a4,a4,1
   1388c:	0128b023          	sd	s2,0(a7)
   13890:	00f687b3          	add	a5,a3,a5
   13894:	cecff06f          	j	12d80 <_vfprintf_r+0xcbc>
   13898:	00090513          	mv	a0,s2
   1389c:	f08fe0ef          	jal	11fa4 <strlen>
   138a0:	0005079b          	sext.w	a5,a0
   138a4:	02f12023          	sw	a5,32(sp)
   138a8:	00078d93          	mv	s11,a5
   138ac:	00013883          	ld	a7,0(sp)
   138b0:	0007c463          	bltz	a5,138b8 <_vfprintf_r+0x17f4>
   138b4:	cf5fe06f          	j	125a8 <_vfprintf_r+0x4e4>
   138b8:	00000d93          	li	s11,0
   138bc:	cedfe06f          	j	125a8 <_vfprintf_r+0x4e4>
   138c0:	0c013783          	ld	a5,192(sp)
   138c4:	0b812703          	lw	a4,184(sp)
   138c8:	05513823          	sd	s5,80(sp)
   138cc:	f6dfe06f          	j	12838 <_vfprintf_r+0x774>
   138d0:	00000413          	li	s0,0
   138d4:	fd0ff06f          	j	130a4 <_vfprintf_r+0xfe0>
   138d8:	00000413          	li	s0,0
   138dc:	9f1ff06f          	j	132cc <_vfprintf_r+0x1208>
   138e0:	02d00613          	li	a2,45
   138e4:	00100713          	li	a4,1
   138e8:	00100693          	li	a3,1
   138ec:	00d71463          	bne	a4,a3,138f4 <_vfprintf_r+0x1830>
   138f0:	d05fe06f          	j	125f4 <_vfprintf_r+0x530>
   138f4:	00200693          	li	a3,2
   138f8:	00d71463          	bne	a4,a3,13900 <_vfprintf_r+0x183c>
   138fc:	a31fe06f          	j	1232c <_vfprintf_r+0x268>
   13900:	b81fe06f          	j	12480 <_vfprintf_r+0x3bc>
   13904:	00600713          	li	a4,6
   13908:	00877463          	bleu	s0,a4,13910 <_vfprintf_r+0x184c>
   1390c:	00070413          	mv	s0,a4
   13910:	02812023          	sw	s0,32(sp)
   13914:	00040d93          	mv	s11,s0
   13918:	32044a63          	bltz	s0,13c4c <_vfprintf_r+0x1b88>
   1391c:	00022937          	lui	s2,0x22
   13920:	01b12423          	sw	s11,8(sp)
   13924:	03913423          	sd	s9,40(sp)
   13928:	00000613          	li	a2,0
   1392c:	00000413          	li	s0,0
   13930:	04012623          	sw	zero,76(sp)
   13934:	2b890913          	addi	s2,s2,696 # 222b8 <zeroes.4123+0x70>
   13938:	e45fe06f          	j	1277c <_vfprintf_r+0x6b8>
   1393c:	0b812703          	lw	a4,184(sp)
   13940:	05513823          	sd	s5,80(sp)
   13944:	91cff06f          	j	12a60 <_vfprintf_r+0x99c>
   13948:	00070c13          	mv	s8,a4
   1394c:	00000613          	li	a2,0
   13950:	00200713          	li	a4,2
   13954:	f95ff06f          	j	138e8 <_vfprintf_r+0x1824>
   13958:	001c7793          	andi	a5,s8,1
   1395c:	00b50733          	add	a4,a0,a1
   13960:	b8079ce3          	bnez	a5,134f8 <_vfprintf_r+0x1434>
   13964:	0a813783          	ld	a5,168(sp)
   13968:	bc1ff06f          	j	13528 <_vfprintf_r+0x1464>
   1396c:	02d00793          	li	a5,45
   13970:	08f107a3          	sb	a5,143(sp)
   13974:	02d00613          	li	a2,45
   13978:	9f8ff06f          	j	12b70 <_vfprintf_r+0xaac>
   1397c:	00022937          	lui	s2,0x22
   13980:	28090913          	addi	s2,s2,640 # 22280 <zeroes.4123+0x38>
   13984:	d95ff06f          	j	13718 <_vfprintf_r+0x1654>
   13988:	001c7793          	andi	a5,s8,1
   1398c:	26079a63          	bnez	a5,13c00 <_vfprintf_r+0x1b3c>
   13990:	0a813783          	ld	a5,168(sp)
   13994:	412787b3          	sub	a5,a5,s2
   13998:	06f12823          	sw	a5,112(sp)
   1399c:	35ad9c63          	bne	s11,s10,13cf4 <_vfprintf_r+0x1c30>
   139a0:	09812783          	lw	a5,152(sp)
   139a4:	ffd00713          	li	a4,-3
   139a8:	02e7cc63          	blt	a5,a4,139e0 <_vfprintf_r+0x191c>
   139ac:	02f44a63          	blt	s0,a5,139e0 <_vfprintf_r+0x191c>
   139b0:	04f12623          	sw	a5,76(sp)
   139b4:	b9dff06f          	j	13550 <_vfprintf_r+0x148c>
   139b8:	02d00713          	li	a4,45
   139bc:	08e107a3          	sb	a4,143(sp)
   139c0:	00f12423          	sw	a5,8(sp)
   139c4:	00012c03          	lw	s8,0(sp)
   139c8:	02d00613          	li	a2,45
   139cc:	00000413          	li	s0,0
   139d0:	b0dfe06f          	j	124dc <_vfprintf_r+0x418>
   139d4:	0b812703          	lw	a4,184(sp)
   139d8:	00913823          	sd	s1,16(sp)
   139dc:	d78ff06f          	j	12f54 <_vfprintf_r+0xe90>
   139e0:	ffed0d1b          	addiw	s10,s10,-2
   139e4:	fff7879b          	addiw	a5,a5,-1
   139e8:	08f12c23          	sw	a5,152(sp)
   139ec:	0ba10023          	sb	s10,160(sp)
   139f0:	2c07c863          	bltz	a5,13cc0 <_vfprintf_r+0x1bfc>
   139f4:	02b00713          	li	a4,43
   139f8:	0ae100a3          	sb	a4,161(sp)
   139fc:	00900613          	li	a2,9
   13a00:	16f64463          	blt	a2,a5,13b68 <_vfprintf_r+0x1aa4>
   13a04:	0307879b          	addiw	a5,a5,48
   13a08:	03000713          	li	a4,48
   13a0c:	0af101a3          	sb	a5,163(sp)
   13a10:	0ae10123          	sb	a4,162(sp)
   13a14:	0a410793          	addi	a5,sp,164
   13a18:	0a010713          	addi	a4,sp,160
   13a1c:	40e787bb          	subw	a5,a5,a4
   13a20:	07012703          	lw	a4,112(sp)
   13a24:	06f12a23          	sw	a5,116(sp)
   13a28:	00e787bb          	addw	a5,a5,a4
   13a2c:	02f12023          	sw	a5,32(sp)
   13a30:	00100793          	li	a5,1
   13a34:	26e7d263          	ble	a4,a5,13c98 <_vfprintf_r+0x1bd4>
   13a38:	02012783          	lw	a5,32(sp)
   13a3c:	0017879b          	addiw	a5,a5,1
   13a40:	02f12023          	sw	a5,32(sp)
   13a44:	2607c463          	bltz	a5,13cac <_vfprintf_r+0x1be8>
   13a48:	04012623          	sw	zero,76(sp)
   13a4c:	b2dff06f          	j	13578 <_vfprintf_r+0x14b4>
   13a50:	00812423          	sw	s0,8(sp)
   13a54:	02812023          	sw	s0,32(sp)
   13a58:	08f14603          	lbu	a2,143(sp)
   13a5c:	03913423          	sd	s9,40(sp)
   13a60:	00000413          	li	s0,0
   13a64:	04012623          	sw	zero,76(sp)
   13a68:	a71fe06f          	j	124d8 <_vfprintf_r+0x414>
   13a6c:	0b010613          	addi	a2,sp,176
   13a70:	000a0593          	mv	a1,s4
   13a74:	000b8513          	mv	a0,s7
   13a78:	31d090ef          	jal	1d594 <__sprint_r>
   13a7c:	00050463          	beqz	a0,13a84 <_vfprintf_r+0x19c0>
   13a80:	955fe06f          	j	123d4 <_vfprintf_r+0x310>
   13a84:	09812403          	lw	s0,152(sp)
   13a88:	0c013783          	ld	a5,192(sp)
   13a8c:	0b812703          	lw	a4,184(sp)
   13a90:	000b0893          	mv	a7,s6
   13a94:	be9ff06f          	j	1367c <_vfprintf_r+0x15b8>
   13a98:	9e0410e3          	bnez	s0,13478 <_vfprintf_r+0x13b4>
   13a9c:	00090413          	mv	s0,s2
   13aa0:	9d9ff06f          	j	13478 <_vfprintf_r+0x13b4>
   13aa4:	00600413          	li	s0,6
   13aa8:	9d1ff06f          	j	13478 <_vfprintf_r+0x13b4>
   13aac:	228405d3          	fmv.d	fa1,fs0
   13ab0:	09810713          	addi	a4,sp,152
   13ab4:	0a810813          	addi	a6,sp,168
   13ab8:	09c10793          	addi	a5,sp,156
   13abc:	00040693          	mv	a3,s0
   13ac0:	00300613          	li	a2,3
   13ac4:	000b8513          	mv	a0,s7
   13ac8:	01113423          	sd	a7,8(sp)
   13acc:	475010ef          	jal	15740 <_dtoa_r>
   13ad0:	00813883          	ld	a7,8(sp)
   13ad4:	00040713          	mv	a4,s0
   13ad8:	00050913          	mv	s2,a0
   13adc:	00e50733          	add	a4,a0,a4
   13ae0:	00040593          	mv	a1,s0
   13ae4:	00094683          	lbu	a3,0(s2)
   13ae8:	03000793          	li	a5,48
   13aec:	14f68063          	beq	a3,a5,13c2c <_vfprintf_r+0x1b68>
   13af0:	09812583          	lw	a1,152(sp)
   13af4:	00b70733          	add	a4,a4,a1
   13af8:	a01ff06f          	j	134f8 <_vfprintf_r+0x1434>
   13afc:	22841453          	fneg.d	fs0,fs0
   13b00:	02d00c93          	li	s9,45
   13b04:	991ff06f          	j	13494 <_vfprintf_r+0x13d0>
   13b08:	04c12703          	lw	a4,76(sp)
   13b0c:	00100793          	li	a5,1
   13b10:	1ae05263          	blez	a4,13cb4 <_vfprintf_r+0x1bf0>
   13b14:	07012703          	lw	a4,112(sp)
   13b18:	00e787bb          	addw	a5,a5,a4
   13b1c:	02f12023          	sw	a5,32(sp)
   13b20:	0007ce63          	bltz	a5,13b3c <_vfprintf_r+0x1a78>
   13b24:	06700d13          	li	s10,103
   13b28:	a51ff06f          	j	13578 <_vfprintf_r+0x14b4>
   13b2c:	04c12783          	lw	a5,76(sp)
   13b30:	0017879b          	addiw	a5,a5,1
   13b34:	02f12023          	sw	a5,32(sp)
   13b38:	fe07d6e3          	bgez	a5,13b24 <_vfprintf_r+0x1a60>
   13b3c:	00000793          	li	a5,0
   13b40:	06700d13          	li	s10,103
   13b44:	a35ff06f          	j	13578 <_vfprintf_r+0x14b4>
   13b48:	09812783          	lw	a5,152(sp)
   13b4c:	04f12623          	sw	a5,76(sp)
   13b50:	12f05263          	blez	a5,13c74 <_vfprintf_r+0x1bb0>
   13b54:	0a041e63          	bnez	s0,13c10 <_vfprintf_r+0x1b4c>
   13b58:	001c7c13          	andi	s8,s8,1
   13b5c:	0a0c1a63          	bnez	s8,13c10 <_vfprintf_r+0x1b4c>
   13b60:	02f12023          	sw	a5,32(sp)
   13b64:	a15ff06f          	j	13578 <_vfprintf_r+0x14b4>
   13b68:	0af10593          	addi	a1,sp,175
   13b6c:	00058713          	mv	a4,a1
   13b70:	00a00513          	li	a0,10
   13b74:	02a7e6bb          	remw	a3,a5,a0
   13b78:	fff70713          	addi	a4,a4,-1
   13b7c:	02a7c7bb          	divw	a5,a5,a0
   13b80:	0306869b          	addiw	a3,a3,48
   13b84:	00d70023          	sb	a3,0(a4)
   13b88:	fef646e3          	blt	a2,a5,13b74 <_vfprintf_r+0x1ab0>
   13b8c:	0307879b          	addiw	a5,a5,48
   13b90:	0ff7f793          	andi	a5,a5,255
   13b94:	fff70693          	addi	a3,a4,-1
   13b98:	fef70fa3          	sb	a5,-1(a4)
   13b9c:	16b6f863          	bleu	a1,a3,13d0c <_vfprintf_r+0x1c48>
   13ba0:	0a210613          	addi	a2,sp,162
   13ba4:	0080006f          	j	13bac <_vfprintf_r+0x1ae8>
   13ba8:	0006c783          	lbu	a5,0(a3)
   13bac:	00160613          	addi	a2,a2,1 # 2001 <_ftext-0xdfff>
   13bb0:	00168693          	addi	a3,a3,1
   13bb4:	fef60fa3          	sb	a5,-1(a2)
   13bb8:	feb698e3          	bne	a3,a1,13ba8 <_vfprintf_r+0x1ae4>
   13bbc:	0b010793          	addi	a5,sp,176
   13bc0:	40e787b3          	sub	a5,a5,a4
   13bc4:	0a210713          	addi	a4,sp,162
   13bc8:	00f707b3          	add	a5,a4,a5
   13bcc:	e4dff06f          	j	13a18 <_vfprintf_r+0x1954>
   13bd0:	228405d3          	fmv.d	fa1,fs0
   13bd4:	0a810813          	addi	a6,sp,168
   13bd8:	09c10793          	addi	a5,sp,156
   13bdc:	09810713          	addi	a4,sp,152
   13be0:	00040693          	mv	a3,s0
   13be4:	00300613          	li	a2,3
   13be8:	000b8513          	mv	a0,s7
   13bec:	01113423          	sd	a7,8(sp)
   13bf0:	351010ef          	jal	15740 <_dtoa_r>
   13bf4:	00813883          	ld	a7,8(sp)
   13bf8:	00050913          	mv	s2,a0
   13bfc:	00040593          	mv	a1,s0
   13c00:	04600793          	li	a5,70
   13c04:	00b90733          	add	a4,s2,a1
   13c08:	ecfd0ee3          	beq	s10,a5,13ae4 <_vfprintf_r+0x1a20>
   13c0c:	8edff06f          	j	134f8 <_vfprintf_r+0x1434>
   13c10:	04c12783          	lw	a5,76(sp)
   13c14:	0014041b          	addiw	s0,s0,1
   13c18:	008787bb          	addw	a5,a5,s0
   13c1c:	02f12023          	sw	a5,32(sp)
   13c20:	9407dce3          	bgez	a5,13578 <_vfprintf_r+0x14b4>
   13c24:	00000793          	li	a5,0
   13c28:	951ff06f          	j	13578 <_vfprintf_r+0x14b4>
   13c2c:	f20007d3          	fmv.d.x	fa5,zero
   13c30:	a2f427d3          	feq.d	a5,fs0,fa5
   13c34:	ea079ee3          	bnez	a5,13af0 <_vfprintf_r+0x1a2c>
   13c38:	00100793          	li	a5,1
   13c3c:	40b785bb          	subw	a1,a5,a1
   13c40:	08b12c23          	sw	a1,152(sp)
   13c44:	00b70733          	add	a4,a4,a1
   13c48:	8b1ff06f          	j	134f8 <_vfprintf_r+0x1434>
   13c4c:	00000d93          	li	s11,0
   13c50:	ccdff06f          	j	1391c <_vfprintf_r+0x1858>
   13c54:	02813783          	ld	a5,40(sp)
   13c58:	0007a403          	lw	s0,0(a5)
   13c5c:	00878793          	addi	a5,a5,8
   13c60:	02f13423          	sd	a5,40(sp)
   13c64:	00044463          	bltz	s0,13c6c <_vfprintf_r+0x1ba8>
   13c68:	e18fe06f          	j	12280 <_vfprintf_r+0x1bc>
   13c6c:	fff00413          	li	s0,-1
   13c70:	e10fe06f          	j	12280 <_vfprintf_r+0x1bc>
   13c74:	00041a63          	bnez	s0,13c88 <_vfprintf_r+0x1bc4>
   13c78:	00100793          	li	a5,1
   13c7c:	00fc7c33          	and	s8,s8,a5
   13c80:	02f12023          	sw	a5,32(sp)
   13c84:	8e0c0ae3          	beqz	s8,13578 <_vfprintf_r+0x14b4>
   13c88:	0024079b          	addiw	a5,s0,2
   13c8c:	02f12023          	sw	a5,32(sp)
   13c90:	8e07d4e3          	bgez	a5,13578 <_vfprintf_r+0x14b4>
   13c94:	f91ff06f          	j	13c24 <_vfprintf_r+0x1b60>
   13c98:	00fc7c33          	and	s8,s8,a5
   13c9c:	d80c1ee3          	bnez	s8,13a38 <_vfprintf_r+0x1974>
   13ca0:	02012703          	lw	a4,32(sp)
   13ca4:	00070793          	mv	a5,a4
   13ca8:	da0750e3          	bgez	a4,13a48 <_vfprintf_r+0x1984>
   13cac:	00000793          	li	a5,0
   13cb0:	d99ff06f          	j	13a48 <_vfprintf_r+0x1984>
   13cb4:	00200793          	li	a5,2
   13cb8:	40e787bb          	subw	a5,a5,a4
   13cbc:	e59ff06f          	j	13b14 <_vfprintf_r+0x1a50>
   13cc0:	02d00713          	li	a4,45
   13cc4:	40f007bb          	negw	a5,a5
   13cc8:	0ae100a3          	sb	a4,161(sp)
   13ccc:	d31ff06f          	j	139fc <_vfprintf_r+0x1938>
   13cd0:	08b107a3          	sb	a1,143(sp)
   13cd4:	ed9fe06f          	j	12bac <_vfprintf_r+0xae8>
   13cd8:	00000793          	li	a5,0
   13cdc:	891ff06f          	j	1356c <_vfprintf_r+0x14a8>
   13ce0:	08b107a3          	sb	a1,143(sp)
   13ce4:	010c6c13          	ori	s8,s8,16
   13ce8:	f2dfe06f          	j	12c14 <_vfprintf_r+0xb50>
   13cec:	08b107a3          	sb	a1,143(sp)
   13cf0:	ef5fe06f          	j	12be4 <_vfprintf_r+0xb20>
   13cf4:	09812783          	lw	a5,152(sp)
   13cf8:	cedff06f          	j	139e4 <_vfprintf_r+0x1920>
   13cfc:	08b107a3          	sb	a1,143(sp)
   13d00:	e2dfe06f          	j	12b2c <_vfprintf_r+0xa68>
   13d04:	08b107a3          	sb	a1,143(sp)
   13d08:	dd5fe06f          	j	12adc <_vfprintf_r+0xa18>
   13d0c:	0a210793          	addi	a5,sp,162
   13d10:	d09ff06f          	j	13a18 <_vfprintf_r+0x1954>
   13d14:	08b107a3          	sb	a1,143(sp)
   13d18:	f41fe06f          	j	12c58 <_vfprintf_r+0xb94>
   13d1c:	08b107a3          	sb	a1,143(sp)
   13d20:	f28fe06f          	j	12448 <_vfprintf_r+0x384>
   13d24:	08b107a3          	sb	a1,143(sp)
   13d28:	9c5fe06f          	j	126ec <_vfprintf_r+0x628>
   13d2c:	08b107a3          	sb	a1,143(sp)
   13d30:	010c6c13          	ori	s8,s8,16
   13d34:	979fe06f          	j	126ac <_vfprintf_r+0x5e8>
   13d38:	08b107a3          	sb	a1,143(sp)
   13d3c:	010c6c13          	ori	s8,s8,16
   13d40:	929fe06f          	j	12668 <_vfprintf_r+0x5a4>
   13d44:	08b107a3          	sb	a1,143(sp)
   13d48:	881fe06f          	j	125c8 <_vfprintf_r+0x504>

0000000000013d4c <vfprintf>:
   13d4c:	00060693          	mv	a3,a2
   13d50:	00058613          	mv	a2,a1
   13d54:	00050593          	mv	a1,a0
   13d58:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   13d5c:	b68fe06f          	j	120c4 <_vfprintf_r>

0000000000013d60 <__sbprintf>:
   13d60:	0105d783          	lhu	a5,16(a1)
   13d64:	0ac5ae03          	lw	t3,172(a1)
   13d68:	0125d303          	lhu	t1,18(a1)
   13d6c:	0305b883          	ld	a7,48(a1)
   13d70:	0405b803          	ld	a6,64(a1)
   13d74:	b3010113          	addi	sp,sp,-1232
   13d78:	ffd7f793          	andi	a5,a5,-3
   13d7c:	40000713          	li	a4,1024
   13d80:	4c813023          	sd	s0,1216(sp)
   13d84:	00f11823          	sh	a5,16(sp)
   13d88:	00058413          	mv	s0,a1
   13d8c:	0b010793          	addi	a5,sp,176
   13d90:	00010593          	mv	a1,sp
   13d94:	4a913c23          	sd	s1,1208(sp)
   13d98:	4b213823          	sd	s2,1200(sp)
   13d9c:	4c113423          	sd	ra,1224(sp)
   13da0:	00050913          	mv	s2,a0
   13da4:	0bc12623          	sw	t3,172(sp)
   13da8:	00611923          	sh	t1,18(sp)
   13dac:	03113823          	sd	a7,48(sp)
   13db0:	05013023          	sd	a6,64(sp)
   13db4:	00f13023          	sd	a5,0(sp)
   13db8:	00f13c23          	sd	a5,24(sp)
   13dbc:	00e12623          	sw	a4,12(sp)
   13dc0:	02e12023          	sw	a4,32(sp)
   13dc4:	02012423          	sw	zero,40(sp)
   13dc8:	afcfe0ef          	jal	120c4 <_vfprintf_r>
   13dcc:	00050493          	mv	s1,a0
   13dd0:	00054a63          	bltz	a0,13de4 <__sbprintf+0x84>
   13dd4:	00010593          	mv	a1,sp
   13dd8:	00090513          	mv	a0,s2
   13ddc:	4cd020ef          	jal	16aa8 <_fflush_r>
   13de0:	02051c63          	bnez	a0,13e18 <__sbprintf+0xb8>
   13de4:	01015783          	lhu	a5,16(sp)
   13de8:	0407f793          	andi	a5,a5,64
   13dec:	00078863          	beqz	a5,13dfc <__sbprintf+0x9c>
   13df0:	01045783          	lhu	a5,16(s0)
   13df4:	0407e793          	ori	a5,a5,64
   13df8:	00f41823          	sh	a5,16(s0)
   13dfc:	4c813083          	ld	ra,1224(sp)
   13e00:	00048513          	mv	a0,s1
   13e04:	4c013403          	ld	s0,1216(sp)
   13e08:	4b813483          	ld	s1,1208(sp)
   13e0c:	4b013903          	ld	s2,1200(sp)
   13e10:	4d010113          	addi	sp,sp,1232
   13e14:	00008067          	ret
   13e18:	fff00493          	li	s1,-1
   13e1c:	fc9ff06f          	j	13de4 <__sbprintf+0x84>

0000000000013e20 <__svfscanf_r>:
   13e20:	cb010113          	addi	sp,sp,-848
   13e24:	31813023          	sd	s8,768(sp)
   13e28:	00058c13          	mv	s8,a1
   13e2c:	01059583          	lh	a1,16(a1)
   13e30:	34813023          	sd	s0,832(sp)
   13e34:	32913c23          	sd	s1,824(sp)
   13e38:	31613823          	sd	s6,784(sp)
   13e3c:	34113423          	sd	ra,840(sp)
   13e40:	33213823          	sd	s2,816(sp)
   13e44:	33313423          	sd	s3,808(sp)
   13e48:	33413023          	sd	s4,800(sp)
   13e4c:	31513c23          	sd	s5,792(sp)
   13e50:	31713423          	sd	s7,776(sp)
   13e54:	2f913c23          	sd	s9,760(sp)
   13e58:	2fa13823          	sd	s10,752(sp)
   13e5c:	2fb13423          	sd	s11,744(sp)
   13e60:	2c813c27          	fsd	fs0,728(sp)
   13e64:	03259793          	slli	a5,a1,0x32
   13e68:	00050493          	mv	s1,a0
   13e6c:	00060413          	mv	s0,a2
   13e70:	00068b13          	mv	s6,a3
   13e74:	0207c263          	bltz	a5,13e98 <__svfscanf_r+0x78>
   13e78:	0acc2603          	lw	a2,172(s8)
   13e7c:	ffffe737          	lui	a4,0xffffe
   13e80:	000026b7          	lui	a3,0x2
   13e84:	fff7071b          	addiw	a4,a4,-1
   13e88:	00d5e5b3          	or	a1,a1,a3
   13e8c:	00e67733          	and	a4,a2,a4
   13e90:	00bc1823          	sh	a1,16(s8)
   13e94:	0aec2623          	sw	a4,172(s8)
   13e98:	000227b7          	lui	a5,0x22
   13e9c:	80078793          	addi	a5,a5,-2048 # 21800 <zeroes.4194+0x330>
   13ea0:	fffff737          	lui	a4,0xfffff
   13ea4:	000219b7          	lui	s3,0x21
   13ea8:	00f13c23          	sd	a5,24(sp)
   13eac:	47f7079b          	addiw	a5,a4,1151
   13eb0:	02013423          	sd	zero,40(sp)
   13eb4:	00012823          	sw	zero,16(sp)
   13eb8:	00000b93          	li	s7,0
   13ebc:	00012a23          	sw	zero,20(sp)
   13ec0:	4e098993          	addi	s3,s3,1248 # 214e0 <zeroes.4194+0x10>
   13ec4:	04f12423          	sw	a5,72(sp)
   13ec8:	00044703          	lbu	a4,0(s0)
   13ecc:	00140413          	addi	s0,s0,1
   13ed0:	06e12223          	sw	a4,100(sp)
   13ed4:	00070693          	mv	a3,a4
   13ed8:	06070e63          	beqz	a4,13f54 <__svfscanf_r+0x134>
   13edc:	8281b503          	ld	a0,-2008(gp) # 249f8 <__ctype_ptr__>
   13ee0:	00e50733          	add	a4,a0,a4
   13ee4:	00174703          	lbu	a4,1(a4) # fffffffffffff001 <_end+0xfffffffffffd7c89>
   13ee8:	00877713          	andi	a4,a4,8
   13eec:	06070863          	beqz	a4,13f5c <__svfscanf_r+0x13c>
   13ef0:	008c2703          	lw	a4,8(s8)
   13ef4:	02e05e63          	blez	a4,13f30 <__svfscanf_r+0x110>
   13ef8:	000c3683          	ld	a3,0(s8)
   13efc:	8281b703          	ld	a4,-2008(gp) # 249f8 <__ctype_ptr__>
   13f00:	0006c603          	lbu	a2,0(a3) # 2000 <_ftext-0xe000>
   13f04:	00c70733          	add	a4,a4,a2
   13f08:	00174703          	lbu	a4,1(a4)
   13f0c:	00877713          	andi	a4,a4,8
   13f10:	fa070ce3          	beqz	a4,13ec8 <__svfscanf_r+0xa8>
   13f14:	008c2703          	lw	a4,8(s8)
   13f18:	00168693          	addi	a3,a3,1
   13f1c:	00dc3023          	sd	a3,0(s8)
   13f20:	fff7071b          	addiw	a4,a4,-1
   13f24:	00ec2423          	sw	a4,8(s8)
   13f28:	001b8b9b          	addiw	s7,s7,1
   13f2c:	fce046e3          	bgtz	a4,13ef8 <__svfscanf_r+0xd8>
   13f30:	000c0593          	mv	a1,s8
   13f34:	00048513          	mv	a0,s1
   13f38:	1f5050ef          	jal	1992c <__srefill_r>
   13f3c:	fa050ee3          	beqz	a0,13ef8 <__svfscanf_r+0xd8>
   13f40:	00044703          	lbu	a4,0(s0)
   13f44:	00140413          	addi	s0,s0,1
   13f48:	06e12223          	sw	a4,100(sp)
   13f4c:	00070693          	mv	a3,a4
   13f50:	f80716e3          	bnez	a4,13edc <__svfscanf_r+0xbc>
   13f54:	01412503          	lw	a0,20(sp)
   13f58:	06c0006f          	j	13fc4 <__svfscanf_r+0x1a4>
   13f5c:	02500713          	li	a4,37
   13f60:	02e69663          	bne	a3,a4,13f8c <__svfscanf_r+0x16c>
   13f64:	00000a93          	li	s5,0
   13f68:	00000913          	li	s2,0
   13f6c:	07800613          	li	a2,120
   13f70:	00140413          	addi	s0,s0,1
   13f74:	fff44683          	lbu	a3,-1(s0)
   13f78:	1ad66a63          	bltu	a2,a3,1412c <__svfscanf_r+0x30c>
   13f7c:	00269713          	slli	a4,a3,0x2
   13f80:	01370733          	add	a4,a4,s3
   13f84:	00072703          	lw	a4,0(a4)
   13f88:	00070067          	jr	a4
   13f8c:	008c2703          	lw	a4,8(s8)
   13f90:	58e05a63          	blez	a4,14524 <__svfscanf_r+0x704>
   13f94:	000c3703          	ld	a4,0(s8)
   13f98:	fff44683          	lbu	a3,-1(s0)
   13f9c:	00074603          	lbu	a2,0(a4)
   13fa0:	fad61ae3          	bne	a2,a3,13f54 <__svfscanf_r+0x134>
   13fa4:	008c2683          	lw	a3,8(s8)
   13fa8:	00170713          	addi	a4,a4,1
   13fac:	00ec3023          	sd	a4,0(s8)
   13fb0:	fff6871b          	addiw	a4,a3,-1
   13fb4:	00ec2423          	sw	a4,8(s8)
   13fb8:	001b8b9b          	addiw	s7,s7,1
   13fbc:	f0dff06f          	j	13ec8 <__svfscanf_r+0xa8>
   13fc0:	fff00513          	li	a0,-1
   13fc4:	34813083          	ld	ra,840(sp)
   13fc8:	34013403          	ld	s0,832(sp)
   13fcc:	33813483          	ld	s1,824(sp)
   13fd0:	33013903          	ld	s2,816(sp)
   13fd4:	32813983          	ld	s3,808(sp)
   13fd8:	32013a03          	ld	s4,800(sp)
   13fdc:	31813a83          	ld	s5,792(sp)
   13fe0:	31013b03          	ld	s6,784(sp)
   13fe4:	30813b83          	ld	s7,776(sp)
   13fe8:	30013c03          	ld	s8,768(sp)
   13fec:	2f813c83          	ld	s9,760(sp)
   13ff0:	2f013d03          	ld	s10,752(sp)
   13ff4:	2e813d83          	ld	s11,744(sp)
   13ff8:	2d813407          	fld	fs0,728(sp)
   13ffc:	35010113          	addi	sp,sp,848
   14000:	00008067          	ret
   14004:	008c2703          	lw	a4,8(s8)
   14008:	0001ba37          	lui	s4,0x1b
   1400c:	3e0a0793          	addi	a5,s4,992 # 1b3e0 <_strtoul_r>
   14010:	02f13423          	sd	a5,40(sp)
   14014:	00a00793          	li	a5,10
   14018:	00f12823          	sw	a5,16(sp)
   1401c:	00300c93          	li	s9,3
   14020:	02e05e63          	blez	a4,1405c <__svfscanf_r+0x23c>
   14024:	000c3683          	ld	a3,0(s8)
   14028:	00c0006f          	j	14034 <__svfscanf_r+0x214>
   1402c:	00168693          	addi	a3,a3,1
   14030:	00dc3023          	sd	a3,0(s8)
   14034:	0006c603          	lbu	a2,0(a3)
   14038:	00c50733          	add	a4,a0,a2
   1403c:	00174703          	lbu	a4,1(a4)
   14040:	00877593          	andi	a1,a4,8
   14044:	58058063          	beqz	a1,145c4 <__svfscanf_r+0x7a4>
   14048:	008c2703          	lw	a4,8(s8)
   1404c:	001b8b9b          	addiw	s7,s7,1
   14050:	fff7071b          	addiw	a4,a4,-1
   14054:	00ec2423          	sw	a4,8(s8)
   14058:	fce04ae3          	bgtz	a4,1402c <__svfscanf_r+0x20c>
   1405c:	000c0593          	mv	a1,s8
   14060:	00048513          	mv	a0,s1
   14064:	0c9050ef          	jal	1992c <__srefill_r>
   14068:	04051863          	bnez	a0,140b8 <__svfscanf_r+0x298>
   1406c:	8281b503          	ld	a0,-2008(gp) # 249f8 <__ctype_ptr__>
   14070:	fb5ff06f          	j	14024 <__svfscanf_r+0x204>
   14074:	008c2703          	lw	a4,8(s8)
   14078:	00200c93          	li	s9,2
   1407c:	fae044e3          	bgtz	a4,14024 <__svfscanf_r+0x204>
   14080:	fddff06f          	j	1405c <__svfscanf_r+0x23c>
   14084:	008c2703          	lw	a4,8(s8)
   14088:	220aea93          	ori	s5,s5,544
   1408c:	0001ba37          	lui	s4,0x1b
   14090:	3e0a0793          	addi	a5,s4,992 # 1b3e0 <_strtoul_r>
   14094:	02f13423          	sd	a5,40(sp)
   14098:	01000793          	li	a5,16
   1409c:	00f12823          	sw	a5,16(sp)
   140a0:	00300c93          	li	s9,3
   140a4:	f8e040e3          	bgtz	a4,14024 <__svfscanf_r+0x204>
   140a8:	000c0593          	mv	a1,s8
   140ac:	00048513          	mv	a0,s1
   140b0:	07d050ef          	jal	1992c <__srefill_r>
   140b4:	fa050ce3          	beqz	a0,1406c <__svfscanf_r+0x24c>
   140b8:	01412703          	lw	a4,20(sp)
   140bc:	fff00513          	li	a0,-1
   140c0:	f00702e3          	beqz	a4,13fc4 <__svfscanf_r+0x1a4>
   140c4:	010c5783          	lhu	a5,16(s8)
   140c8:	0407f793          	andi	a5,a5,64
   140cc:	ee079ce3          	bnez	a5,13fc4 <__svfscanf_r+0x1a4>
   140d0:	00070513          	mv	a0,a4
   140d4:	ef1ff06f          	j	13fc4 <__svfscanf_r+0x1a4>
   140d8:	008c2703          	lw	a4,8(s8)
   140dc:	4ce05863          	blez	a4,145ac <__svfscanf_r+0x78c>
   140e0:	0001ba37          	lui	s4,0x1b
   140e4:	3e0a0793          	addi	a5,s4,992 # 1b3e0 <_strtoul_r>
   140e8:	02f13423          	sd	a5,40(sp)
   140ec:	00800793          	li	a5,8
   140f0:	00f12823          	sw	a5,16(sp)
   140f4:	00300c93          	li	s9,3
   140f8:	f2dff06f          	j	14024 <__svfscanf_r+0x204>
   140fc:	010af713          	andi	a4,s5,16
   14100:	dc0714e3          	bnez	a4,13ec8 <__svfscanf_r+0xa8>
   14104:	004af713          	andi	a4,s5,4
   14108:	42070e63          	beqz	a4,14544 <__svfscanf_r+0x724>
   1410c:	000b3703          	ld	a4,0(s6)
   14110:	008b0b13          	addi	s6,s6,8
   14114:	01771023          	sh	s7,0(a4)
   14118:	db1ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   1411c:	00140413          	addi	s0,s0,1
   14120:	fff44683          	lbu	a3,-1(s0)
   14124:	001aea93          	ori	s5,s5,1
   14128:	e4d67ae3          	bleu	a3,a2,13f7c <__svfscanf_r+0x15c>
   1412c:	00d506b3          	add	a3,a0,a3
   14130:	0016c703          	lbu	a4,1(a3)
   14134:	00100693          	li	a3,1
   14138:	00377713          	andi	a4,a4,3
   1413c:	3ed70e63          	beq	a4,a3,14538 <__svfscanf_r+0x718>
   14140:	008c2703          	lw	a4,8(s8)
   14144:	1440006f          	j	14288 <__svfscanf_r+0x468>
   14148:	004aea93          	ori	s5,s5,4
   1414c:	e25ff06f          	j	13f70 <__svfscanf_r+0x150>
   14150:	008c2703          	lw	a4,8(s8)
   14154:	40e05463          	blez	a4,1455c <__svfscanf_r+0x73c>
   14158:	0001ba37          	lui	s4,0x1b
   1415c:	1f0a0793          	addi	a5,s4,496 # 1b1f0 <_strtol_r>
   14160:	02f13423          	sd	a5,40(sp)
   14164:	00a00793          	li	a5,10
   14168:	00f12823          	sw	a5,16(sp)
   1416c:	00300c93          	li	s9,3
   14170:	eb5ff06f          	j	14024 <__svfscanf_r+0x204>
   14174:	008c2703          	lw	a4,8(s8)
   14178:	34e05663          	blez	a4,144c4 <__svfscanf_r+0x6a4>
   1417c:	00091463          	bnez	s2,14184 <__svfscanf_r+0x364>
   14180:	00100913          	li	s2,1
   14184:	001af713          	andi	a4,s5,1
   14188:	22071063          	bnez	a4,143a8 <__svfscanf_r+0x588>
   1418c:	010afa93          	andi	s5,s5,16
   14190:	360a8063          	beqz	s5,144f0 <__svfscanf_r+0x6d0>
   14194:	00000a93          	li	s5,0
   14198:	0280006f          	j	141c0 <__svfscanf_r+0x3a0>
   1419c:	000c3683          	ld	a3,0(s8)
   141a0:	000c0593          	mv	a1,s8
   141a4:	00048513          	mv	a0,s1
   141a8:	00e686b3          	add	a3,a3,a4
   141ac:	00dc3023          	sd	a3,0(s8)
   141b0:	00ea8ab3          	add	s5,s5,a4
   141b4:	40e90933          	sub	s2,s2,a4
   141b8:	774050ef          	jal	1992c <__srefill_r>
   141bc:	30051e63          	bnez	a0,144d8 <__svfscanf_r+0x6b8>
   141c0:	008c2703          	lw	a4,8(s8)
   141c4:	0009069b          	sext.w	a3,s2
   141c8:	fcd74ae3          	blt	a4,a3,1419c <__svfscanf_r+0x37c>
   141cc:	000c3603          	ld	a2,0(s8)
   141d0:	40d7073b          	subw	a4,a4,a3
   141d4:	012a8ab3          	add	s5,s5,s2
   141d8:	01260333          	add	t1,a2,s2
   141dc:	00ec2423          	sw	a4,8(s8)
   141e0:	006c3023          	sd	t1,0(s8)
   141e4:	017a8bbb          	addw	s7,s5,s7
   141e8:	ce1ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   141ec:	00040593          	mv	a1,s0
   141f0:	07010513          	addi	a0,sp,112
   141f4:	181050ef          	jal	19b74 <__sccl>
   141f8:	008c2703          	lw	a4,8(s8)
   141fc:	00050413          	mv	s0,a0
   14200:	38e05063          	blez	a4,14580 <__svfscanf_r+0x760>
   14204:	000c3683          	ld	a3,0(s8)
   14208:	0006c703          	lbu	a4,0(a3)
   1420c:	10090263          	beqz	s2,14310 <__svfscanf_r+0x4f0>
   14210:	010afa93          	andi	s5,s5,16
   14214:	100a8463          	beqz	s5,1431c <__svfscanf_r+0x4fc>
   14218:	00000a93          	li	s5,0
   1421c:	0080006f          	j	14224 <__svfscanf_r+0x404>
   14220:	0006c703          	lbu	a4,0(a3)
   14224:	2d010793          	addi	a5,sp,720
   14228:	00e78733          	add	a4,a5,a4
   1422c:	da074703          	lbu	a4,-608(a4)
   14230:	2a070a63          	beqz	a4,144e4 <__svfscanf_r+0x6c4>
   14234:	008c2703          	lw	a4,8(s8)
   14238:	00168693          	addi	a3,a3,1
   1423c:	00dc3023          	sd	a3,0(s8)
   14240:	fff7071b          	addiw	a4,a4,-1
   14244:	00ec2423          	sw	a4,8(s8)
   14248:	fff90913          	addi	s2,s2,-1
   1424c:	001a8a9b          	addiw	s5,s5,1
   14250:	14090863          	beqz	s2,143a0 <__svfscanf_r+0x580>
   14254:	fce046e3          	bgtz	a4,14220 <__svfscanf_r+0x400>
   14258:	000c0593          	mv	a1,s8
   1425c:	00048513          	mv	a0,s1
   14260:	6cc050ef          	jal	1992c <__srefill_r>
   14264:	12051e63          	bnez	a0,143a0 <__svfscanf_r+0x580>
   14268:	000c3683          	ld	a3,0(s8)
   1426c:	fb5ff06f          	j	14220 <__svfscanf_r+0x400>
   14270:	008c2703          	lw	a4,8(s8)
   14274:	00400c93          	li	s9,4
   14278:	dae046e3          	bgtz	a4,14024 <__svfscanf_r+0x204>
   1427c:	de1ff06f          	j	1405c <__svfscanf_r+0x23c>
   14280:	008c2703          	lw	a4,8(s8)
   14284:	001aea93          	ori	s5,s5,1
   14288:	0001ba37          	lui	s4,0x1b
   1428c:	1f0a0793          	addi	a5,s4,496 # 1b1f0 <_strtol_r>
   14290:	d81ff06f          	j	14010 <__svfscanf_r+0x1f0>
   14294:	0001ba37          	lui	s4,0x1b
   14298:	3e0a0793          	addi	a5,s4,992 # 1b3e0 <_strtoul_r>
   1429c:	008c2703          	lw	a4,8(s8)
   142a0:	02f13423          	sd	a5,40(sp)
   142a4:	00800793          	li	a5,8
   142a8:	00f12823          	sw	a5,16(sp)
   142ac:	001aea93          	ori	s5,s5,1
   142b0:	00300c93          	li	s9,3
   142b4:	d6e048e3          	bgtz	a4,14024 <__svfscanf_r+0x204>
   142b8:	da5ff06f          	j	1405c <__svfscanf_r+0x23c>
   142bc:	002aea93          	ori	s5,s5,2
   142c0:	cb1ff06f          	j	13f70 <__svfscanf_r+0x150>
   142c4:	008c2703          	lw	a4,8(s8)
   142c8:	200aea93          	ori	s5,s5,512
   142cc:	dc1ff06f          	j	1408c <__svfscanf_r+0x26c>
   142d0:	00191713          	slli	a4,s2,0x1
   142d4:	00391313          	slli	t1,s2,0x3
   142d8:	00670333          	add	t1,a4,t1
   142dc:	fd068693          	addi	a3,a3,-48
   142e0:	00668933          	add	s2,a3,t1
   142e4:	c8dff06f          	j	13f70 <__svfscanf_r+0x150>
   142e8:	010aea93          	ori	s5,s5,16
   142ec:	c85ff06f          	j	13f70 <__svfscanf_r+0x150>
   142f0:	008c2703          	lw	a4,8(s8)
   142f4:	2ae05063          	blez	a4,14594 <__svfscanf_r+0x774>
   142f8:	0001ba37          	lui	s4,0x1b
   142fc:	1f0a0793          	addi	a5,s4,496 # 1b1f0 <_strtol_r>
   14300:	02f13423          	sd	a5,40(sp)
   14304:	00012823          	sw	zero,16(sp)
   14308:	00300c93          	li	s9,3
   1430c:	d19ff06f          	j	14024 <__svfscanf_r+0x204>
   14310:	010afa93          	andi	s5,s5,16
   14314:	fff00913          	li	s2,-1
   14318:	f00a90e3          	bnez	s5,14218 <__svfscanf_r+0x3f8>
   1431c:	000b3a83          	ld	s5,0(s6)
   14320:	008b0b13          	addi	s6,s6,8
   14324:	012a8d33          	add	s10,s5,s2
   14328:	000a8c93          	mv	s9,s5
   1432c:	00c0006f          	j	14338 <__svfscanf_r+0x518>
   14330:	000c3683          	ld	a3,0(s8)
   14334:	0006c703          	lbu	a4,0(a3)
   14338:	2d010793          	addi	a5,sp,720
   1433c:	00e78733          	add	a4,a5,a4
   14340:	da074703          	lbu	a4,-608(a4)
   14344:	04070263          	beqz	a4,14388 <__svfscanf_r+0x568>
   14348:	008c2703          	lw	a4,8(s8)
   1434c:	00168613          	addi	a2,a3,1
   14350:	00cc3023          	sd	a2,0(s8)
   14354:	fff7071b          	addiw	a4,a4,-1
   14358:	00ec2423          	sw	a4,8(s8)
   1435c:	0006c703          	lbu	a4,0(a3)
   14360:	001c8c93          	addi	s9,s9,1
   14364:	feec8fa3          	sb	a4,-1(s9)
   14368:	03ac8063          	beq	s9,s10,14388 <__svfscanf_r+0x568>
   1436c:	008c2703          	lw	a4,8(s8)
   14370:	fce040e3          	bgtz	a4,14330 <__svfscanf_r+0x510>
   14374:	000c0593          	mv	a1,s8
   14378:	00048513          	mv	a0,s1
   1437c:	5b0050ef          	jal	1992c <__srefill_r>
   14380:	fa0508e3          	beqz	a0,14330 <__svfscanf_r+0x510>
   14384:	d39a8ae3          	beq	s5,s9,140b8 <__svfscanf_r+0x298>
   14388:	415c8abb          	subw	s5,s9,s5
   1438c:	bc0a84e3          	beqz	s5,13f54 <__svfscanf_r+0x134>
   14390:	01412783          	lw	a5,20(sp)
   14394:	000c8023          	sb	zero,0(s9)
   14398:	0017879b          	addiw	a5,a5,1
   1439c:	00f12a23          	sw	a5,20(sp)
   143a0:	015b8bbb          	addw	s7,s7,s5
   143a4:	b25ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   143a8:	010af793          	andi	a5,s5,16
   143ac:	06810c93          	addi	s9,sp,104
   143b0:	00800613          	li	a2,8
   143b4:	00000593          	li	a1,0
   143b8:	000c8513          	mv	a0,s9
   143bc:	00078a13          	mv	s4,a5
   143c0:	00f12423          	sw	a5,8(sp)
   143c4:	00000a93          	li	s5,0
   143c8:	68d030ef          	jal	18254 <memset>
   143cc:	0e0a0663          	beqz	s4,144b8 <__svfscanf_r+0x698>
   143d0:	00000a13          	li	s4,0
   143d4:	fff00d13          	li	s10,-1
   143d8:	029030ef          	jal	17c00 <__locale_mb_cur_max>
   143dc:	cd450ee3          	beq	a0,s4,140b8 <__svfscanf_r+0x298>
   143e0:	000c3683          	ld	a3,0(s8)
   143e4:	008c2603          	lw	a2,8(s8)
   143e8:	001a0d9b          	addiw	s11,s4,1
   143ec:	0006ce83          	lbu	t4,0(a3)
   143f0:	fff6061b          	addiw	a2,a2,-1
   143f4:	00168693          	addi	a3,a3,1
   143f8:	2d010793          	addi	a5,sp,720
   143fc:	014788b3          	add	a7,a5,s4
   14400:	00cc2423          	sw	a2,8(s8)
   14404:	00dc3023          	sd	a3,0(s8)
   14408:	000c8713          	mv	a4,s9
   1440c:	000d8693          	mv	a3,s11
   14410:	17010613          	addi	a2,sp,368
   14414:	000a8593          	mv	a1,s5
   14418:	00048513          	mv	a0,s1
   1441c:	ebd88023          	sb	t4,-352(a7)
   14420:	1d1030ef          	jal	17df0 <_mbrtowc_r>
   14424:	c9a50ae3          	beq	a0,s10,140b8 <__svfscanf_r+0x298>
   14428:	04051263          	bnez	a0,1446c <__svfscanf_r+0x64c>
   1442c:	00812783          	lw	a5,8(sp)
   14430:	06079463          	bnez	a5,14498 <__svfscanf_r+0x678>
   14434:	000aa023          	sw	zero,0(s5)
   14438:	01bb8bbb          	addw	s7,s7,s11
   1443c:	fff90913          	addi	s2,s2,-1
   14440:	004a8a93          	addi	s5,s5,4
   14444:	008c2683          	lw	a3,8(s8)
   14448:	00000a13          	li	s4,0
   1444c:	02d05a63          	blez	a3,14480 <__svfscanf_r+0x660>
   14450:	f80914e3          	bnez	s2,143d8 <__svfscanf_r+0x5b8>
   14454:	00812783          	lw	a5,8(sp)
   14458:	0017ba93          	seqz	s5,a5
   1445c:	01412783          	lw	a5,20(sp)
   14460:	015787bb          	addw	a5,a5,s5
   14464:	00f12a23          	sw	a5,20(sp)
   14468:	a61ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   1446c:	ffe00793          	li	a5,-2
   14470:	02f51a63          	bne	a0,a5,144a4 <__svfscanf_r+0x684>
   14474:	008c2703          	lw	a4,8(s8)
   14478:	000d8a13          	mv	s4,s11
   1447c:	f4e04ee3          	bgtz	a4,143d8 <__svfscanf_r+0x5b8>
   14480:	000c0593          	mv	a1,s8
   14484:	00048513          	mv	a0,s1
   14488:	4a4050ef          	jal	1992c <__srefill_r>
   1448c:	fc0502e3          	beqz	a0,14450 <__svfscanf_r+0x630>
   14490:	fc0a02e3          	beqz	s4,14454 <__svfscanf_r+0x634>
   14494:	c25ff06f          	j	140b8 <__svfscanf_r+0x298>
   14498:	01bb8bbb          	addw	s7,s7,s11
   1449c:	fff90913          	addi	s2,s2,-1
   144a0:	fa5ff06f          	j	14444 <__svfscanf_r+0x624>
   144a4:	00812783          	lw	a5,8(sp)
   144a8:	01bb8bbb          	addw	s7,s7,s11
   144ac:	fff90913          	addi	s2,s2,-1
   144b0:	f80788e3          	beqz	a5,14440 <__svfscanf_r+0x620>
   144b4:	f91ff06f          	j	14444 <__svfscanf_r+0x624>
   144b8:	000b3a83          	ld	s5,0(s6)
   144bc:	008b0b13          	addi	s6,s6,8
   144c0:	f11ff06f          	j	143d0 <__svfscanf_r+0x5b0>
   144c4:	000c0593          	mv	a1,s8
   144c8:	00048513          	mv	a0,s1
   144cc:	460050ef          	jal	1992c <__srefill_r>
   144d0:	ca0506e3          	beqz	a0,1417c <__svfscanf_r+0x35c>
   144d4:	be5ff06f          	j	140b8 <__svfscanf_r+0x298>
   144d8:	be0a80e3          	beqz	s5,140b8 <__svfscanf_r+0x298>
   144dc:	017a8bbb          	addw	s7,s5,s7
   144e0:	9e9ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   144e4:	a60a88e3          	beqz	s5,13f54 <__svfscanf_r+0x134>
   144e8:	015b8bbb          	addw	s7,s7,s5
   144ec:	9ddff06f          	j	13ec8 <__svfscanf_r+0xa8>
   144f0:	000b3583          	ld	a1,0(s6)
   144f4:	000c0713          	mv	a4,s8
   144f8:	00090693          	mv	a3,s2
   144fc:	00100613          	li	a2,1
   14500:	00048513          	mv	a0,s1
   14504:	191020ef          	jal	16e94 <_fread_r>
   14508:	008b0b13          	addi	s6,s6,8
   1450c:	ba0506e3          	beqz	a0,140b8 <__svfscanf_r+0x298>
   14510:	01412783          	lw	a5,20(sp)
   14514:	01750bbb          	addw	s7,a0,s7
   14518:	0017879b          	addiw	a5,a5,1
   1451c:	00f12a23          	sw	a5,20(sp)
   14520:	9a9ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   14524:	000c0593          	mv	a1,s8
   14528:	00048513          	mv	a0,s1
   1452c:	400050ef          	jal	1992c <__srefill_r>
   14530:	a60502e3          	beqz	a0,13f94 <__svfscanf_r+0x174>
   14534:	b85ff06f          	j	140b8 <__svfscanf_r+0x298>
   14538:	008c2703          	lw	a4,8(s8)
   1453c:	00daeab3          	or	s5,s5,a3
   14540:	d49ff06f          	j	14288 <__svfscanf_r+0x468>
   14544:	001afa93          	andi	s5,s5,1
   14548:	000b3703          	ld	a4,0(s6)
   1454c:	020a8463          	beqz	s5,14574 <__svfscanf_r+0x754>
   14550:	008b0b13          	addi	s6,s6,8
   14554:	01773023          	sd	s7,0(a4)
   14558:	971ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   1455c:	000c0593          	mv	a1,s8
   14560:	00048513          	mv	a0,s1
   14564:	3c8050ef          	jal	1992c <__srefill_r>
   14568:	b40518e3          	bnez	a0,140b8 <__svfscanf_r+0x298>
   1456c:	8281b503          	ld	a0,-2008(gp) # 249f8 <__ctype_ptr__>
   14570:	be9ff06f          	j	14158 <__svfscanf_r+0x338>
   14574:	008b0b13          	addi	s6,s6,8
   14578:	01772023          	sw	s7,0(a4)
   1457c:	94dff06f          	j	13ec8 <__svfscanf_r+0xa8>
   14580:	000c0593          	mv	a1,s8
   14584:	00048513          	mv	a0,s1
   14588:	3a4050ef          	jal	1992c <__srefill_r>
   1458c:	c6050ce3          	beqz	a0,14204 <__svfscanf_r+0x3e4>
   14590:	b29ff06f          	j	140b8 <__svfscanf_r+0x298>
   14594:	000c0593          	mv	a1,s8
   14598:	00048513          	mv	a0,s1
   1459c:	390050ef          	jal	1992c <__srefill_r>
   145a0:	b0051ce3          	bnez	a0,140b8 <__svfscanf_r+0x298>
   145a4:	8281b503          	ld	a0,-2008(gp) # 249f8 <__ctype_ptr__>
   145a8:	d51ff06f          	j	142f8 <__svfscanf_r+0x4d8>
   145ac:	000c0593          	mv	a1,s8
   145b0:	00048513          	mv	a0,s1
   145b4:	378050ef          	jal	1992c <__srefill_r>
   145b8:	b00510e3          	bnez	a0,140b8 <__svfscanf_r+0x298>
   145bc:	8281b503          	ld	a0,-2008(gp) # 249f8 <__ctype_ptr__>
   145c0:	b21ff06f          	j	140e0 <__svfscanf_r+0x2c0>
   145c4:	00300593          	li	a1,3
   145c8:	3ebc8e63          	beq	s9,a1,149c4 <__svfscanf_r+0xba4>
   145cc:	00400613          	li	a2,4
   145d0:	38cc9063          	bne	s9,a2,14950 <__svfscanf_r+0xb30>
   145d4:	00048513          	mv	a0,s1
   145d8:	644030ef          	jal	17c1c <_localeconv_r>
   145dc:	00053783          	ld	a5,0(a0)
   145e0:	fff90713          	addi	a4,s2,-1
   145e4:	04012623          	sw	zero,76(sp)
   145e8:	04f13023          	sd	a5,64(sp)
   145ec:	15c00693          	li	a3,348
   145f0:	00e6f863          	bleu	a4,a3,14600 <__svfscanf_r+0x7e0>
   145f4:	ea39079b          	addiw	a5,s2,-349
   145f8:	04f12623          	sw	a5,76(sp)
   145fc:	15d00913          	li	s2,349
   14600:	17010793          	addi	a5,sp,368
   14604:	00021637          	lui	a2,0x21
   14608:	780aea13          	ori	s4,s5,1920
   1460c:	02f13823          	sd	a5,48(sp)
   14610:	00000c93          	li	s9,0
   14614:	00000d13          	li	s10,0
   14618:	04013c23          	sd	zero,88(sp)
   1461c:	04013823          	sd	zero,80(sp)
   14620:	00000a93          	li	s5,0
   14624:	02013c23          	sd	zero,56(sp)
   14628:	00078d93          	mv	s11,a5
   1462c:	04e00e93          	li	t4,78
   14630:	6c460613          	addi	a2,a2,1732 # 216c4 <zeroes.4194+0x1f4>
   14634:	000c3583          	ld	a1,0(s8)
   14638:	0005c503          	lbu	a0,0(a1)
   1463c:	fd55071b          	addiw	a4,a0,-43
   14640:	0ff77f93          	andi	t6,a4,255
   14644:	2dfee463          	bltu	t4,t6,1490c <__svfscanf_r+0xaec>
   14648:	0ff77713          	andi	a4,a4,255
   1464c:	00271713          	slli	a4,a4,0x2
   14650:	00c70733          	add	a4,a4,a2
   14654:	00072703          	lw	a4,0(a4)
   14658:	00070067          	jr	a4
   1465c:	019d073b          	addw	a4,s10,s9
   14660:	02071a63          	bnez	a4,14694 <__svfscanf_r+0x874>
   14664:	e7fa7a13          	andi	s4,s4,-385
   14668:	00ad8023          	sb	a0,0(s11)
   1466c:	001d8d93          	addi	s11,s11,1
   14670:	008c2703          	lw	a4,8(s8)
   14674:	fff90913          	addi	s2,s2,-1
   14678:	001b8b9b          	addiw	s7,s7,1
   1467c:	fff7071b          	addiw	a4,a4,-1
   14680:	00ec2423          	sw	a4,8(s8)
   14684:	04e05c63          	blez	a4,146dc <__svfscanf_r+0x8bc>
   14688:	00158593          	addi	a1,a1,1
   1468c:	00bc3023          	sd	a1,0(s8)
   14690:	fa0912e3          	bnez	s2,14634 <__svfscanf_r+0x814>
   14694:	0e0a8263          	beqz	s5,14778 <__svfscanf_r+0x958>
   14698:	effa7a13          	andi	s4,s4,-257
   1469c:	0dc0006f          	j	14778 <__svfscanf_r+0x958>
   146a0:	100a7713          	andi	a4,s4,256
   146a4:	fa070ce3          	beqz	a4,1465c <__svfscanf_r+0x83c>
   146a8:	04c12783          	lw	a5,76(sp)
   146ac:	f7fa7a13          	andi	s4,s4,-129
   146b0:	001a8a93          	addi	s5,s5,1
   146b4:	fa078ee3          	beqz	a5,14670 <__svfscanf_r+0x850>
   146b8:	008c2703          	lw	a4,8(s8)
   146bc:	fff7879b          	addiw	a5,a5,-1
   146c0:	00190913          	addi	s2,s2,1
   146c4:	fff7071b          	addiw	a4,a4,-1
   146c8:	04f12623          	sw	a5,76(sp)
   146cc:	00ec2423          	sw	a4,8(s8)
   146d0:	fff90913          	addi	s2,s2,-1
   146d4:	001b8b9b          	addiw	s7,s7,1
   146d8:	fae048e3          	bgtz	a4,14688 <__svfscanf_r+0x868>
   146dc:	000c0593          	mv	a1,s8
   146e0:	00048513          	mv	a0,s1
   146e4:	02c13023          	sd	a2,32(sp)
   146e8:	01d13423          	sd	t4,8(sp)
   146ec:	240050ef          	jal	1992c <__srefill_r>
   146f0:	00813e83          	ld	t4,8(sp)
   146f4:	02013603          	ld	a2,32(sp)
   146f8:	f8051ee3          	bnez	a0,14694 <__svfscanf_r+0x874>
   146fc:	f2091ce3          	bnez	s2,14634 <__svfscanf_r+0x814>
   14700:	f95ff06f          	j	14694 <__svfscanf_r+0x874>
   14704:	00700793          	li	a5,7
   14708:	f8fc96e3          	bne	s9,a5,14694 <__svfscanf_r+0x874>
   1470c:	00800c93          	li	s9,8
   14710:	f59ff06f          	j	14668 <__svfscanf_r+0x848>
   14714:	080a7713          	andi	a4,s4,128
   14718:	f6070ee3          	beqz	a4,14694 <__svfscanf_r+0x874>
   1471c:	f7fa7a13          	andi	s4,s4,-129
   14720:	f49ff06f          	j	14668 <__svfscanf_r+0x848>
   14724:	00600793          	li	a5,6
   14728:	f6fc96e3          	bne	s9,a5,14694 <__svfscanf_r+0x874>
   1472c:	00700c93          	li	s9,7
   14730:	f39ff06f          	j	14668 <__svfscanf_r+0x848>
   14734:	1e0d1c63          	bnez	s10,1492c <__svfscanf_r+0xb0c>
   14738:	000a9863          	bnez	s5,14748 <__svfscanf_r+0x928>
   1473c:	700a7713          	andi	a4,s4,1792
   14740:	70000793          	li	a5,1792
   14744:	56f70863          	beq	a4,a5,14cb4 <__svfscanf_r+0xe94>
   14748:	00100713          	li	a4,1
   1474c:	00ec8663          	beq	s9,a4,14758 <__svfscanf_r+0x938>
   14750:	00400713          	li	a4,4
   14754:	f4ec90e3          	bne	s9,a4,14694 <__svfscanf_r+0x874>
   14758:	001c8e1b          	addiw	t3,s9,1
   1475c:	0ffe7c93          	andi	s9,t3,255
   14760:	f09ff06f          	j	14668 <__svfscanf_r+0x848>
   14764:	1c0c9c63          	bnez	s9,1493c <__svfscanf_r+0xb1c>
   14768:	f20a98e3          	bnez	s5,14698 <__svfscanf_r+0x878>
   1476c:	700a7713          	andi	a4,s4,1792
   14770:	70000793          	li	a5,1792
   14774:	54f70663          	beq	a4,a5,14cc0 <__svfscanf_r+0xea0>
   14778:	fffd0f1b          	addiw	t5,s10,-1
   1477c:	00100713          	li	a4,1
   14780:	6fe77c63          	bleu	t5,a4,14e78 <__svfscanf_r+0x1058>
   14784:	fffc871b          	addiw	a4,s9,-1
   14788:	00600613          	li	a2,6
   1478c:	06e66063          	bltu	a2,a4,147ec <__svfscanf_r+0x9cc>
   14790:	00200793          	li	a5,2
   14794:	7397fa63          	bleu	s9,a5,14ec8 <__svfscanf_r+0x10a8>
   14798:	00300613          	li	a2,3
   1479c:	0ff77713          	andi	a4,a4,255
   147a0:	000d8d13          	mv	s10,s11
   147a4:	00078913          	mv	s2,a5
   147a8:	04cc8263          	beq	s9,a2,147ec <__svfscanf_r+0x9cc>
   147ac:	fffd0d13          	addi	s10,s10,-1
   147b0:	000d4583          	lbu	a1,0(s10)
   147b4:	000c0613          	mv	a2,s8
   147b8:	00048513          	mv	a0,s1
   147bc:	00e13423          	sd	a4,8(sp)
   147c0:	30d080ef          	jal	1d2cc <_ungetc_r>
   147c4:	00813703          	ld	a4,8(sp)
   147c8:	fff7071b          	addiw	a4,a4,-1
   147cc:	0ff77713          	andi	a4,a4,255
   147d0:	fd271ee3          	bne	a4,s2,147ac <__svfscanf_r+0x98c>
   147d4:	ffcc871b          	addiw	a4,s9,-4
   147d8:	0ff77713          	andi	a4,a4,255
   147dc:	fff74613          	not	a2,a4
   147e0:	fffb881b          	addiw	a6,s7,-1
   147e4:	00cd8db3          	add	s11,s11,a2
   147e8:	40e80bbb          	subw	s7,a6,a4
   147ec:	100a7713          	andi	a4,s4,256
   147f0:	04070e63          	beqz	a4,1484c <__svfscanf_r+0xa2c>
   147f4:	400a7713          	andi	a4,s4,1024
   147f8:	6a071463          	bnez	a4,14ea0 <__svfscanf_r+0x1080>
   147fc:	fffdc583          	lbu	a1,-1(s11)
   14800:	06500613          	li	a2,101
   14804:	fffd8d13          	addi	s10,s11,-1
   14808:	fffb871b          	addiw	a4,s7,-1
   1480c:	02c58263          	beq	a1,a2,14830 <__svfscanf_r+0xa10>
   14810:	04500613          	li	a2,69
   14814:	00c58e63          	beq	a1,a2,14830 <__svfscanf_r+0xa10>
   14818:	000c0613          	mv	a2,s8
   1481c:	00048513          	mv	a0,s1
   14820:	2ad080ef          	jal	1d2cc <_ungetc_r>
   14824:	ffedc583          	lbu	a1,-2(s11)
   14828:	ffed8d13          	addi	s10,s11,-2
   1482c:	ffeb871b          	addiw	a4,s7,-2
   14830:	000c0613          	mv	a2,s8
   14834:	00048513          	mv	a0,s1
   14838:	00e13423          	sd	a4,8(sp)
   1483c:	291080ef          	jal	1d2cc <_ungetc_r>
   14840:	00813703          	ld	a4,8(sp)
   14844:	000d0d93          	mv	s11,s10
   14848:	00070b93          	mv	s7,a4
   1484c:	010a7713          	andi	a4,s4,16
   14850:	e6071c63          	bnez	a4,13ec8 <__svfscanf_r+0xa8>
   14854:	000d8023          	sb	zero,0(s11)
   14858:	600a7713          	andi	a4,s4,1536
   1485c:	40000613          	li	a2,1024
   14860:	48c70e63          	beq	a4,a2,14cfc <__svfscanf_r+0xedc>
   14864:	05013783          	ld	a5,80(sp)
   14868:	4c079263          	bnez	a5,14d2c <__svfscanf_r+0xf0c>
   1486c:	03013583          	ld	a1,48(sp)
   14870:	00000613          	li	a2,0
   14874:	00048513          	mv	a0,s1
   14878:	674050ef          	jal	19eec <_strtod_r>
   1487c:	001a7713          	andi	a4,s4,1
   14880:	22a50453          	fmv.d	fs0,fa0
   14884:	00071663          	bnez	a4,14890 <__svfscanf_r+0xa70>
   14888:	002a7893          	andi	a7,s4,2
   1488c:	4c088e63          	beqz	a7,14d68 <__svfscanf_r+0xf48>
   14890:	000b3703          	ld	a4,0(s6)
   14894:	008b0b13          	addi	s6,s6,8
   14898:	00873027          	fsd	fs0,0(a4)
   1489c:	01412783          	lw	a5,20(sp)
   148a0:	0017879b          	addiw	a5,a5,1
   148a4:	00f12a23          	sw	a5,20(sp)
   148a8:	e20ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   148ac:	00200793          	li	a5,2
   148b0:	defc92e3          	bne	s9,a5,14694 <__svfscanf_r+0x874>
   148b4:	00300c93          	li	s9,3
   148b8:	db1ff06f          	j	14668 <__svfscanf_r+0x848>
   148bc:	500a7713          	andi	a4,s4,1280
   148c0:	40000793          	li	a5,1024
   148c4:	00f70863          	beq	a4,a5,148d4 <__svfscanf_r+0xab4>
   148c8:	00fa7733          	and	a4,s4,a5
   148cc:	dc0704e3          	beqz	a4,14694 <__svfscanf_r+0x874>
   148d0:	ea0a84e3          	beqz	s5,14778 <__svfscanf_r+0x958>
   148d4:	200a7713          	andi	a4,s4,512
   148d8:	00071a63          	bnez	a4,148ec <__svfscanf_r+0xacc>
   148dc:	03813783          	ld	a5,56(sp)
   148e0:	05b13c23          	sd	s11,88(sp)
   148e4:	40fa87b3          	sub	a5,s5,a5
   148e8:	04f13823          	sd	a5,80(sp)
   148ec:	87fa7a93          	andi	s5,s4,-1921
   148f0:	180aea13          	ori	s4,s5,384
   148f4:	00000a93          	li	s5,0
   148f8:	d71ff06f          	j	14668 <__svfscanf_r+0x848>
   148fc:	00100713          	li	a4,1
   14900:	d8ed1ae3          	bne	s10,a4,14694 <__svfscanf_r+0x874>
   14904:	00200d13          	li	s10,2
   14908:	d61ff06f          	j	14668 <__svfscanf_r+0x848>
   1490c:	04013783          	ld	a5,64(sp)
   14910:	0007c703          	lbu	a4,0(a5)
   14914:	d8a710e3          	bne	a4,a0,14694 <__svfscanf_r+0x874>
   14918:	200a7713          	andi	a4,s4,512
   1491c:	d6070ce3          	beqz	a4,14694 <__svfscanf_r+0x874>
   14920:	d7fa7a13          	andi	s4,s4,-641
   14924:	03513c23          	sd	s5,56(sp)
   14928:	d41ff06f          	j	14668 <__svfscanf_r+0x848>
   1492c:	00200793          	li	a5,2
   14930:	e0fd1ce3          	bne	s10,a5,14748 <__svfscanf_r+0x928>
   14934:	00300d13          	li	s10,3
   14938:	d31ff06f          	j	14668 <__svfscanf_r+0x848>
   1493c:	ffdc871b          	addiw	a4,s9,-3
   14940:	0fd77713          	andi	a4,a4,253
   14944:	e0070ae3          	beqz	a4,14758 <__svfscanf_r+0x938>
   14948:	e20a88e3          	beqz	s5,14778 <__svfscanf_r+0x958>
   1494c:	d4dff06f          	j	14698 <__svfscanf_r+0x878>
   14950:	00091463          	bnez	s2,14958 <__svfscanf_r+0xb38>
   14954:	fff00913          	li	s2,-1
   14958:	001af613          	andi	a2,s5,1
   1495c:	2c061863          	bnez	a2,14c2c <__svfscanf_r+0xe0c>
   14960:	010afa93          	andi	s5,s5,16
   14964:	1e0a8e63          	beqz	s5,14b60 <__svfscanf_r+0xd40>
   14968:	00000a93          	li	s5,0
   1496c:	0100006f          	j	1497c <__svfscanf_r+0xb5c>
   14970:	0006c703          	lbu	a4,0(a3)
   14974:	00e50733          	add	a4,a0,a4
   14978:	00174703          	lbu	a4,1(a4)
   1497c:	00877713          	andi	a4,a4,8
   14980:	a20710e3          	bnez	a4,143a0 <__svfscanf_r+0x580>
   14984:	008c2703          	lw	a4,8(s8)
   14988:	00168693          	addi	a3,a3,1
   1498c:	00dc3023          	sd	a3,0(s8)
   14990:	fff7071b          	addiw	a4,a4,-1
   14994:	00ec2423          	sw	a4,8(s8)
   14998:	fff90913          	addi	s2,s2,-1
   1499c:	001a8a9b          	addiw	s5,s5,1
   149a0:	a00900e3          	beqz	s2,143a0 <__svfscanf_r+0x580>
   149a4:	fce046e3          	bgtz	a4,14970 <__svfscanf_r+0xb50>
   149a8:	000c0593          	mv	a1,s8
   149ac:	00048513          	mv	a0,s1
   149b0:	77d040ef          	jal	1992c <__srefill_r>
   149b4:	9e0516e3          	bnez	a0,143a0 <__svfscanf_r+0x580>
   149b8:	8281b503          	ld	a0,-2008(gp) # 249f8 <__ctype_ptr__>
   149bc:	000c3683          	ld	a3,0(s8)
   149c0:	fb1ff06f          	j	14970 <__svfscanf_r+0xb50>
   149c4:	fff90713          	addi	a4,s2,-1
   149c8:	15c00593          	li	a1,348
   149cc:	00000e13          	li	t3,0
   149d0:	00e5f663          	bleu	a4,a1,149dc <__svfscanf_r+0xbbc>
   149d4:	ea390e1b          	addiw	t3,s2,-349
   149d8:	15d00913          	li	s2,349
   149dc:	17010793          	addi	a5,sp,368
   149e0:	00001737          	lui	a4,0x1
   149e4:	02f13823          	sd	a5,48(sp)
   149e8:	d807071b          	addiw	a4,a4,-640
   149ec:	00078d13          	mv	s10,a5
   149f0:	00022db7          	lui	s11,0x22
   149f4:	000017b7          	lui	a5,0x1
   149f8:	00eaeab3          	or	s5,s5,a4
   149fc:	00000a13          	li	s4,0
   14a00:	938d8d93          	addi	s11,s11,-1736 # 21938 <basefix.4147>
   14a04:	80078c9b          	addiw	s9,a5,-2048
   14a08:	fd56071b          	addiw	a4,a2,-43
   14a0c:	0ff77513          	andi	a0,a4,255
   14a10:	04d00593          	li	a1,77
   14a14:	0aa5e063          	bltu	a1,a0,14ab4 <__svfscanf_r+0xc94>
   14a18:	01813783          	ld	a5,24(sp)
   14a1c:	0ff77713          	andi	a4,a4,255
   14a20:	00271713          	slli	a4,a4,0x2
   14a24:	00f70733          	add	a4,a4,a5
   14a28:	00072703          	lw	a4,0(a4) # 1000 <_ftext-0xf000>
   14a2c:	00070067          	jr	a4
   14a30:	600af713          	andi	a4,s5,1536
   14a34:	20000593          	li	a1,512
   14a38:	06b71e63          	bne	a4,a1,14ab4 <__svfscanf_r+0xc94>
   14a3c:	dffafa93          	andi	s5,s5,-513
   14a40:	01000793          	li	a5,16
   14a44:	500aea93          	ori	s5,s5,1280
   14a48:	00f12823          	sw	a5,16(sp)
   14a4c:	00cd0023          	sb	a2,0(s10)
   14a50:	001d0d13          	addi	s10,s10,1
   14a54:	008c2703          	lw	a4,8(s8)
   14a58:	fff7071b          	addiw	a4,a4,-1
   14a5c:	00ec2423          	sw	a4,8(s8)
   14a60:	0ee05263          	blez	a4,14b44 <__svfscanf_r+0xd24>
   14a64:	00168693          	addi	a3,a3,1
   14a68:	00dc3023          	sd	a3,0(s8)
   14a6c:	fff90913          	addi	s2,s2,-1
   14a70:	04090263          	beqz	s2,14ab4 <__svfscanf_r+0xc94>
   14a74:	000c3683          	ld	a3,0(s8)
   14a78:	0006c603          	lbu	a2,0(a3)
   14a7c:	f8dff06f          	j	14a08 <__svfscanf_r+0xbe8>
   14a80:	01012783          	lw	a5,16(sp)
   14a84:	00a00713          	li	a4,10
   14a88:	02f75663          	ble	a5,a4,14ab4 <__svfscanf_r+0xc94>
   14a8c:	04812783          	lw	a5,72(sp)
   14a90:	00fafab3          	and	s5,s5,a5
   14a94:	fb9ff06f          	j	14a4c <__svfscanf_r+0xc2c>
   14a98:	01012703          	lw	a4,16(sp)
   14a9c:	00171713          	slli	a4,a4,0x1
   14aa0:	00ed8733          	add	a4,s11,a4
   14aa4:	00071783          	lh	a5,0(a4)
   14aa8:	00800713          	li	a4,8
   14aac:	00f12823          	sw	a5,16(sp)
   14ab0:	fcf74ee3          	blt	a4,a5,14a8c <__svfscanf_r+0xc6c>
   14ab4:	100af713          	andi	a4,s5,256
   14ab8:	00070a63          	beqz	a4,14acc <__svfscanf_r+0xcac>
   14abc:	03013783          	ld	a5,48(sp)
   14ac0:	21a7e663          	bltu	a5,s10,14ccc <__svfscanf_r+0xeac>
   14ac4:	03013783          	ld	a5,48(sp)
   14ac8:	c8fd0663          	beq	s10,a5,13f54 <__svfscanf_r+0x134>
   14acc:	010af713          	andi	a4,s5,16
   14ad0:	10070e63          	beqz	a4,14bec <__svfscanf_r+0xdcc>
   14ad4:	03013783          	ld	a5,48(sp)
   14ad8:	017a083b          	addw	a6,s4,s7
   14adc:	40fd0cb3          	sub	s9,s10,a5
   14ae0:	010c8bbb          	addw	s7,s9,a6
   14ae4:	be4ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   14ae8:	01012703          	lw	a4,16(sp)
   14aec:	00171713          	slli	a4,a4,0x1
   14af0:	00ed8733          	add	a4,s11,a4
   14af4:	00071783          	lh	a5,0(a4)
   14af8:	00f12823          	sw	a5,16(sp)
   14afc:	04812783          	lw	a5,72(sp)
   14b00:	00fafab3          	and	s5,s5,a5
   14b04:	f49ff06f          	j	14a4c <__svfscanf_r+0xc2c>
   14b08:	019af733          	and	a4,s5,s9
   14b0c:	f40700e3          	beqz	a4,14a4c <__svfscanf_r+0xc2c>
   14b10:	01012783          	lw	a5,16(sp)
   14b14:	00079863          	bnez	a5,14b24 <__svfscanf_r+0xd04>
   14b18:	00800793          	li	a5,8
   14b1c:	200aea93          	ori	s5,s5,512
   14b20:	00f12823          	sw	a5,16(sp)
   14b24:	400af713          	andi	a4,s5,1024
   14b28:	16070a63          	beqz	a4,14c9c <__svfscanf_r+0xe7c>
   14b2c:	a7fafa93          	andi	s5,s5,-1409
   14b30:	f1dff06f          	j	14a4c <__svfscanf_r+0xc2c>
   14b34:	080af713          	andi	a4,s5,128
   14b38:	f6070ee3          	beqz	a4,14ab4 <__svfscanf_r+0xc94>
   14b3c:	f7fafa93          	andi	s5,s5,-129
   14b40:	f0dff06f          	j	14a4c <__svfscanf_r+0xc2c>
   14b44:	000c0593          	mv	a1,s8
   14b48:	00048513          	mv	a0,s1
   14b4c:	01c13423          	sd	t3,8(sp)
   14b50:	5dd040ef          	jal	1992c <__srefill_r>
   14b54:	00813e03          	ld	t3,8(sp)
   14b58:	f0050ae3          	beqz	a0,14a6c <__svfscanf_r+0xc4c>
   14b5c:	f59ff06f          	j	14ab4 <__svfscanf_r+0xc94>
   14b60:	000b3c83          	ld	s9,0(s6)
   14b64:	008b0b13          	addi	s6,s6,8
   14b68:	012c8d33          	add	s10,s9,s2
   14b6c:	000c8a93          	mv	s5,s9
   14b70:	0180006f          	j	14b88 <__svfscanf_r+0xd68>
   14b74:	000c3683          	ld	a3,0(s8)
   14b78:	8281b703          	ld	a4,-2008(gp) # 249f8 <__ctype_ptr__>
   14b7c:	0006c603          	lbu	a2,0(a3)
   14b80:	00c70733          	add	a4,a4,a2
   14b84:	00174703          	lbu	a4,1(a4)
   14b88:	00877713          	andi	a4,a4,8
   14b8c:	04071063          	bnez	a4,14bcc <__svfscanf_r+0xdac>
   14b90:	008c2703          	lw	a4,8(s8)
   14b94:	00168613          	addi	a2,a3,1
   14b98:	00cc3023          	sd	a2,0(s8)
   14b9c:	fff7071b          	addiw	a4,a4,-1
   14ba0:	00ec2423          	sw	a4,8(s8)
   14ba4:	0006c703          	lbu	a4,0(a3)
   14ba8:	001a8a93          	addi	s5,s5,1
   14bac:	feea8fa3          	sb	a4,-1(s5)
   14bb0:	035d0063          	beq	s10,s5,14bd0 <__svfscanf_r+0xdb0>
   14bb4:	008c2703          	lw	a4,8(s8)
   14bb8:	fae04ee3          	bgtz	a4,14b74 <__svfscanf_r+0xd54>
   14bbc:	000c0593          	mv	a1,s8
   14bc0:	00048513          	mv	a0,s1
   14bc4:	569040ef          	jal	1992c <__srefill_r>
   14bc8:	fa0506e3          	beqz	a0,14b74 <__svfscanf_r+0xd54>
   14bcc:	000a8d13          	mv	s10,s5
   14bd0:	01412783          	lw	a5,20(sp)
   14bd4:	419d0cb3          	sub	s9,s10,s9
   14bd8:	000d0023          	sb	zero,0(s10)
   14bdc:	0017879b          	addiw	a5,a5,1
   14be0:	017c8bbb          	addw	s7,s9,s7
   14be4:	00f12a23          	sw	a5,20(sp)
   14be8:	ae0ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   14bec:	01012683          	lw	a3,16(sp)
   14bf0:	03013583          	ld	a1,48(sp)
   14bf4:	02813783          	ld	a5,40(sp)
   14bf8:	00000613          	li	a2,0
   14bfc:	00048513          	mv	a0,s1
   14c00:	000d0023          	sb	zero,0(s10)
   14c04:	000780e7          	jalr	a5
   14c08:	020af713          	andi	a4,s5,32
   14c0c:	0c070c63          	beqz	a4,14ce4 <__svfscanf_r+0xec4>
   14c10:	000b3703          	ld	a4,0(s6)
   14c14:	008b0b13          	addi	s6,s6,8
   14c18:	00a73023          	sd	a0,0(a4)
   14c1c:	01412783          	lw	a5,20(sp)
   14c20:	0017879b          	addiw	a5,a5,1
   14c24:	00f12a23          	sw	a5,20(sp)
   14c28:	eadff06f          	j	14ad4 <__svfscanf_r+0xcb4>
   14c2c:	010af793          	andi	a5,s5,16
   14c30:	06810c93          	addi	s9,sp,104
   14c34:	00800613          	li	a2,8
   14c38:	00000593          	li	a1,0
   14c3c:	000c8513          	mv	a0,s9
   14c40:	00078a13          	mv	s4,a5
   14c44:	00f12423          	sw	a5,8(sp)
   14c48:	06410a93          	addi	s5,sp,100
   14c4c:	608030ef          	jal	18254 <memset>
   14c50:	000a1663          	bnez	s4,14c5c <__svfscanf_r+0xe3c>
   14c54:	000b3a83          	ld	s5,0(s6)
   14c58:	008b0b13          	addi	s6,s6,8
   14c5c:	00000a13          	li	s4,0
   14c60:	000c3603          	ld	a2,0(s8)
   14c64:	8281b683          	ld	a3,-2008(gp) # 249f8 <__ctype_ptr__>
   14c68:	00064603          	lbu	a2,0(a2)
   14c6c:	00c686b3          	add	a3,a3,a2
   14c70:	0016c683          	lbu	a3,1(a3)
   14c74:	0086f693          	andi	a3,a3,8
   14c78:	00069463          	bnez	a3,14c80 <__svfscanf_r+0xe60>
   14c7c:	10091663          	bnez	s2,14d88 <__svfscanf_r+0xf68>
   14c80:	00812783          	lw	a5,8(sp)
   14c84:	a4079263          	bnez	a5,13ec8 <__svfscanf_r+0xa8>
   14c88:	01412783          	lw	a5,20(sp)
   14c8c:	000aa023          	sw	zero,0(s5)
   14c90:	0017879b          	addiw	a5,a5,1
   14c94:	00f12a23          	sw	a5,20(sp)
   14c98:	a30ff06f          	j	13ec8 <__svfscanf_r+0xa8>
   14c9c:	c7fafa93          	andi	s5,s5,-897
   14ca0:	000e0663          	beqz	t3,14cac <__svfscanf_r+0xe8c>
   14ca4:	fffe0e1b          	addiw	t3,t3,-1
   14ca8:	00190913          	addi	s2,s2,1
   14cac:	001a0a1b          	addiw	s4,s4,1
   14cb0:	da5ff06f          	j	14a54 <__svfscanf_r+0xc34>
   14cb4:	87fa7a13          	andi	s4,s4,-1921
   14cb8:	00100d13          	li	s10,1
   14cbc:	9adff06f          	j	14668 <__svfscanf_r+0x848>
   14cc0:	87fa7a13          	andi	s4,s4,-1921
   14cc4:	00100c93          	li	s9,1
   14cc8:	9a1ff06f          	j	14668 <__svfscanf_r+0x848>
   14ccc:	fffd4583          	lbu	a1,-1(s10)
   14cd0:	000c0613          	mv	a2,s8
   14cd4:	00048513          	mv	a0,s1
   14cd8:	fffd0d13          	addi	s10,s10,-1
   14cdc:	5f0080ef          	jal	1d2cc <_ungetc_r>
   14ce0:	de5ff06f          	j	14ac4 <__svfscanf_r+0xca4>
   14ce4:	004af713          	andi	a4,s5,4
   14ce8:	06070463          	beqz	a4,14d50 <__svfscanf_r+0xf30>
   14cec:	000b3703          	ld	a4,0(s6)
   14cf0:	008b0b13          	addi	s6,s6,8
   14cf4:	00a71023          	sh	a0,0(a4)
   14cf8:	f25ff06f          	j	14c1c <__svfscanf_r+0xdfc>
   14cfc:	03813783          	ld	a5,56(sp)
   14d00:	40fa8ab3          	sub	s5,s5,a5
   14d04:	41500633          	neg	a2,s5
   14d08:	b60a82e3          	beqz	s5,1486c <__svfscanf_r+0xa4c>
   14d0c:	2b910713          	addi	a4,sp,697
   14d10:	00ede463          	bltu	s11,a4,14d18 <__svfscanf_r+0xef8>
   14d14:	2b810d93          	addi	s11,sp,696
   14d18:	000225b7          	lui	a1,0x22
   14d1c:	2c858593          	addi	a1,a1,712 # 222c8 <zeroes.4123+0x80>
   14d20:	000d8513          	mv	a0,s11
   14d24:	7fd040ef          	jal	19d20 <sprintf>
   14d28:	b45ff06f          	j	1486c <__svfscanf_r+0xa4c>
   14d2c:	05813d83          	ld	s11,88(sp)
   14d30:	00000613          	li	a2,0
   14d34:	00a00693          	li	a3,10
   14d38:	001d8593          	addi	a1,s11,1
   14d3c:	00048513          	mv	a0,s1
   14d40:	4b0060ef          	jal	1b1f0 <_strtol_r>
   14d44:	05013783          	ld	a5,80(sp)
   14d48:	40f50633          	sub	a2,a0,a5
   14d4c:	fc1ff06f          	j	14d0c <__svfscanf_r+0xeec>
   14d50:	001afa93          	andi	s5,s5,1
   14d54:	000b3703          	ld	a4,0(s6)
   14d58:	008b0b13          	addi	s6,s6,8
   14d5c:	0c0a8063          	beqz	s5,14e1c <__svfscanf_r+0xffc>
   14d60:	00a73023          	sd	a0,0(a4)
   14d64:	eb9ff06f          	j	14c1c <__svfscanf_r+0xdfc>
   14d68:	008b0a93          	addi	s5,s6,8
   14d6c:	000b3c83          	ld	s9,0(s6)
   14d70:	6c9040ef          	jal	19c38 <__fpclassifyd>
   14d74:	18050063          	beqz	a0,14ef4 <__svfscanf_r+0x10d4>
   14d78:	40147453          	fcvt.s.d	fs0,fs0
   14d7c:	000a8b13          	mv	s6,s5
   14d80:	008ca027          	fsw	fs0,0(s9)
   14d84:	b19ff06f          	j	1489c <__svfscanf_r+0xa7c>
   14d88:	679020ef          	jal	17c00 <__locale_mb_cur_max>
   14d8c:	b2aa0663          	beq	s4,a0,140b8 <__svfscanf_r+0x298>
   14d90:	000c3683          	ld	a3,0(s8)
   14d94:	008c2603          	lw	a2,8(s8)
   14d98:	2d010793          	addi	a5,sp,720
   14d9c:	0006cf03          	lbu	t5,0(a3)
   14da0:	fff6061b          	addiw	a2,a2,-1
   14da4:	00168693          	addi	a3,a3,1
   14da8:	001a0d1b          	addiw	s10,s4,1
   14dac:	01478eb3          	add	t4,a5,s4
   14db0:	00cc2423          	sw	a2,8(s8)
   14db4:	00dc3023          	sd	a3,0(s8)
   14db8:	000c8713          	mv	a4,s9
   14dbc:	000d0693          	mv	a3,s10
   14dc0:	17010613          	addi	a2,sp,368
   14dc4:	000a8593          	mv	a1,s5
   14dc8:	00048513          	mv	a0,s1
   14dcc:	ebee8023          	sb	t5,-352(t4)
   14dd0:	020030ef          	jal	17df0 <_mbrtowc_r>
   14dd4:	fff00793          	li	a5,-1
   14dd8:	aef50063          	beq	a0,a5,140b8 <__svfscanf_r+0x298>
   14ddc:	04051463          	bnez	a0,14e24 <__svfscanf_r+0x1004>
   14de0:	000aa023          	sw	zero,0(s5)
   14de4:	00000513          	li	a0,0
   14de8:	565020ef          	jal	17b4c <iswspace>
   14dec:	06050263          	beqz	a0,14e50 <__svfscanf_r+0x1030>
   14df0:	e80d08e3          	beqz	s10,14c80 <__svfscanf_r+0xe60>
   14df4:	fffd0d1b          	addiw	s10,s10,-1
   14df8:	000d0713          	mv	a4,s10
   14dfc:	2d010793          	addi	a5,sp,720
   14e00:	00e78733          	add	a4,a5,a4
   14e04:	ea074583          	lbu	a1,-352(a4)
   14e08:	000c0613          	mv	a2,s8
   14e0c:	00048513          	mv	a0,s1
   14e10:	4bc080ef          	jal	1d2cc <_ungetc_r>
   14e14:	fe0d10e3          	bnez	s10,14df4 <__svfscanf_r+0xfd4>
   14e18:	e69ff06f          	j	14c80 <__svfscanf_r+0xe60>
   14e1c:	00a72023          	sw	a0,0(a4)
   14e20:	dfdff06f          	j	14c1c <__svfscanf_r+0xdfc>
   14e24:	ffe00793          	li	a5,-2
   14e28:	000d0a13          	mv	s4,s10
   14e2c:	04f51263          	bne	a0,a5,14e70 <__svfscanf_r+0x1050>
   14e30:	008c2683          	lw	a3,8(s8)
   14e34:	e2d046e3          	bgtz	a3,14c60 <__svfscanf_r+0xe40>
   14e38:	000c0593          	mv	a1,s8
   14e3c:	00048513          	mv	a0,s1
   14e40:	2ed040ef          	jal	1992c <__srefill_r>
   14e44:	e0050ee3          	beqz	a0,14c60 <__svfscanf_r+0xe40>
   14e48:	a60a1863          	bnez	s4,140b8 <__svfscanf_r+0x298>
   14e4c:	e35ff06f          	j	14c80 <__svfscanf_r+0xe60>
   14e50:	00812783          	lw	a5,8(sp)
   14e54:	01ab8bbb          	addw	s7,s7,s10
   14e58:	fff90913          	addi	s2,s2,-1
   14e5c:	00000a13          	li	s4,0
   14e60:	fc0798e3          	bnez	a5,14e30 <__svfscanf_r+0x1010>
   14e64:	004a8a93          	addi	s5,s5,4
   14e68:	00078a13          	mv	s4,a5
   14e6c:	fc5ff06f          	j	14e30 <__svfscanf_r+0x1010>
   14e70:	000aa503          	lw	a0,0(s5)
   14e74:	f75ff06f          	j	14de8 <__svfscanf_r+0xfc8>
   14e78:	03013783          	ld	a5,48(sp)
   14e7c:	8db7fc63          	bleu	s11,a5,13f54 <__svfscanf_r+0x134>
   14e80:	fffd8d93          	addi	s11,s11,-1
   14e84:	000dc583          	lbu	a1,0(s11)
   14e88:	000c0613          	mv	a2,s8
   14e8c:	00048513          	mv	a0,s1
   14e90:	43c080ef          	jal	1d2cc <_ungetc_r>
   14e94:	03013783          	ld	a5,48(sp)
   14e98:	fefd94e3          	bne	s11,a5,14e80 <__svfscanf_r+0x1060>
   14e9c:	8b8ff06f          	j	13f54 <__svfscanf_r+0x134>
   14ea0:	03013783          	ld	a5,48(sp)
   14ea4:	8bb7f863          	bleu	s11,a5,13f54 <__svfscanf_r+0x134>
   14ea8:	fffd8d93          	addi	s11,s11,-1
   14eac:	000dc583          	lbu	a1,0(s11)
   14eb0:	000c0613          	mv	a2,s8
   14eb4:	00048513          	mv	a0,s1
   14eb8:	414080ef          	jal	1d2cc <_ungetc_r>
   14ebc:	03013783          	ld	a5,48(sp)
   14ec0:	fefd94e3          	bne	s11,a5,14ea8 <__svfscanf_r+0x1088>
   14ec4:	890ff06f          	j	13f54 <__svfscanf_r+0x134>
   14ec8:	03013783          	ld	a5,48(sp)
   14ecc:	01b7e463          	bltu	a5,s11,14ed4 <__svfscanf_r+0x10b4>
   14ed0:	884ff06f          	j	13f54 <__svfscanf_r+0x134>
   14ed4:	fffd8d93          	addi	s11,s11,-1
   14ed8:	000dc583          	lbu	a1,0(s11)
   14edc:	000c0613          	mv	a2,s8
   14ee0:	00048513          	mv	a0,s1
   14ee4:	3e8080ef          	jal	1d2cc <_ungetc_r>
   14ee8:	03013783          	ld	a5,48(sp)
   14eec:	fefd94e3          	bne	s11,a5,14ed4 <__svfscanf_r+0x10b4>
   14ef0:	864ff06f          	j	13f54 <__svfscanf_r+0x134>
   14ef4:	00000513          	li	a0,0
   14ef8:	535040ef          	jal	19c2c <nanf>
   14efc:	00aca027          	fsw	fa0,0(s9)
   14f00:	000a8b13          	mv	s6,s5
   14f04:	999ff06f          	j	1489c <__svfscanf_r+0xa7c>

0000000000014f08 <vfscanf>:
   14f08:	fd010113          	addi	sp,sp,-48
   14f0c:	02813023          	sd	s0,32(sp)
   14f10:	8101b403          	ld	s0,-2032(gp) # 249e0 <_impure_ptr>
   14f14:	00913c23          	sd	s1,24(sp)
   14f18:	02113423          	sd	ra,40(sp)
   14f1c:	00050493          	mv	s1,a0
   14f20:	00060693          	mv	a3,a2
   14f24:	02040263          	beqz	s0,14f48 <vfscanf+0x40>
   14f28:	05042783          	lw	a5,80(s0)
   14f2c:	00079e63          	bnez	a5,14f48 <vfscanf+0x40>
   14f30:	00040513          	mv	a0,s0
   14f34:	00b13023          	sd	a1,0(sp)
   14f38:	00c13423          	sd	a2,8(sp)
   14f3c:	719010ef          	jal	16e54 <__sinit>
   14f40:	00813683          	ld	a3,8(sp)
   14f44:	00013583          	ld	a1,0(sp)
   14f48:	00058613          	mv	a2,a1
   14f4c:	00040513          	mv	a0,s0
   14f50:	00048593          	mv	a1,s1
   14f54:	02813083          	ld	ra,40(sp)
   14f58:	02013403          	ld	s0,32(sp)
   14f5c:	01813483          	ld	s1,24(sp)
   14f60:	03010113          	addi	sp,sp,48
   14f64:	ebdfe06f          	j	13e20 <__svfscanf_r>

0000000000014f68 <__svfscanf>:
   14f68:	00060693          	mv	a3,a2
   14f6c:	00058613          	mv	a2,a1
   14f70:	00050593          	mv	a1,a0
   14f74:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   14f78:	ea9fe06f          	j	13e20 <__svfscanf_r>

0000000000014f7c <_vfscanf_r>:
   14f7c:	fd010113          	addi	sp,sp,-48
   14f80:	02813023          	sd	s0,32(sp)
   14f84:	02113423          	sd	ra,40(sp)
   14f88:	00050413          	mv	s0,a0
   14f8c:	02050463          	beqz	a0,14fb4 <_vfscanf_r+0x38>
   14f90:	05052783          	lw	a5,80(a0)
   14f94:	02079063          	bnez	a5,14fb4 <_vfscanf_r+0x38>
   14f98:	00d13c23          	sd	a3,24(sp)
   14f9c:	00c13823          	sd	a2,16(sp)
   14fa0:	00b13423          	sd	a1,8(sp)
   14fa4:	6b1010ef          	jal	16e54 <__sinit>
   14fa8:	01813683          	ld	a3,24(sp)
   14fac:	01013603          	ld	a2,16(sp)
   14fb0:	00813583          	ld	a1,8(sp)
   14fb4:	00040513          	mv	a0,s0
   14fb8:	02813083          	ld	ra,40(sp)
   14fbc:	02013403          	ld	s0,32(sp)
   14fc0:	03010113          	addi	sp,sp,48
   14fc4:	e5dfe06f          	j	13e20 <__svfscanf_r>

0000000000014fc8 <__swbuf_r>:
   14fc8:	fd010113          	addi	sp,sp,-48
   14fcc:	02813023          	sd	s0,32(sp)
   14fd0:	00913c23          	sd	s1,24(sp)
   14fd4:	01313423          	sd	s3,8(sp)
   14fd8:	02113423          	sd	ra,40(sp)
   14fdc:	01213823          	sd	s2,16(sp)
   14fe0:	00050493          	mv	s1,a0
   14fe4:	00058993          	mv	s3,a1
   14fe8:	00060413          	mv	s0,a2
   14fec:	00050663          	beqz	a0,14ff8 <__swbuf_r+0x30>
   14ff0:	05052783          	lw	a5,80(a0)
   14ff4:	12078e63          	beqz	a5,15130 <__swbuf_r+0x168>
   14ff8:	01041683          	lh	a3,16(s0)
   14ffc:	02842783          	lw	a5,40(s0)
   15000:	03069713          	slli	a4,a3,0x30
   15004:	03075713          	srli	a4,a4,0x30
   15008:	00f42623          	sw	a5,12(s0)
   1500c:	00877793          	andi	a5,a4,8
   15010:	0e078e63          	beqz	a5,1510c <__swbuf_r+0x144>
   15014:	01843783          	ld	a5,24(s0)
   15018:	0e078a63          	beqz	a5,1510c <__swbuf_r+0x144>
   1501c:	03271613          	slli	a2,a4,0x32
   15020:	0ff9f913          	andi	s2,s3,255
   15024:	06065663          	bgez	a2,15090 <__swbuf_r+0xc8>
   15028:	00043703          	ld	a4,0(s0)
   1502c:	02042683          	lw	a3,32(s0)
   15030:	40f707bb          	subw	a5,a4,a5
   15034:	08d7d663          	ble	a3,a5,150c0 <__swbuf_r+0xf8>
   15038:	0017879b          	addiw	a5,a5,1
   1503c:	00c42683          	lw	a3,12(s0)
   15040:	00170613          	addi	a2,a4,1
   15044:	00c43023          	sd	a2,0(s0)
   15048:	fff6869b          	addiw	a3,a3,-1
   1504c:	00d42623          	sw	a3,12(s0)
   15050:	01370023          	sb	s3,0(a4)
   15054:	02042703          	lw	a4,32(s0)
   15058:	08f70263          	beq	a4,a5,150dc <__swbuf_r+0x114>
   1505c:	01045783          	lhu	a5,16(s0)
   15060:	00090513          	mv	a0,s2
   15064:	0017f793          	andi	a5,a5,1
   15068:	00078663          	beqz	a5,15074 <__swbuf_r+0xac>
   1506c:	00a00793          	li	a5,10
   15070:	06f90663          	beq	s2,a5,150dc <__swbuf_r+0x114>
   15074:	02813083          	ld	ra,40(sp)
   15078:	02013403          	ld	s0,32(sp)
   1507c:	01813483          	ld	s1,24(sp)
   15080:	01013903          	ld	s2,16(sp)
   15084:	00813983          	ld	s3,8(sp)
   15088:	03010113          	addi	sp,sp,48
   1508c:	00008067          	ret
   15090:	0ac42583          	lw	a1,172(s0)
   15094:	ffffe737          	lui	a4,0xffffe
   15098:	fff7071b          	addiw	a4,a4,-1
   1509c:	00e5f733          	and	a4,a1,a4
   150a0:	00002637          	lui	a2,0x2
   150a4:	00c6e6b3          	or	a3,a3,a2
   150a8:	0ae42623          	sw	a4,172(s0)
   150ac:	00043703          	ld	a4,0(s0)
   150b0:	00d41823          	sh	a3,16(s0)
   150b4:	02042683          	lw	a3,32(s0)
   150b8:	40f707bb          	subw	a5,a4,a5
   150bc:	f6d7cee3          	blt	a5,a3,15038 <__swbuf_r+0x70>
   150c0:	00040593          	mv	a1,s0
   150c4:	00048513          	mv	a0,s1
   150c8:	1e1010ef          	jal	16aa8 <_fflush_r>
   150cc:	06051663          	bnez	a0,15138 <__swbuf_r+0x170>
   150d0:	00043703          	ld	a4,0(s0)
   150d4:	00100793          	li	a5,1
   150d8:	f65ff06f          	j	1503c <__swbuf_r+0x74>
   150dc:	00040593          	mv	a1,s0
   150e0:	00048513          	mv	a0,s1
   150e4:	1c5010ef          	jal	16aa8 <_fflush_r>
   150e8:	04051863          	bnez	a0,15138 <__swbuf_r+0x170>
   150ec:	02813083          	ld	ra,40(sp)
   150f0:	00090513          	mv	a0,s2
   150f4:	02013403          	ld	s0,32(sp)
   150f8:	01813483          	ld	s1,24(sp)
   150fc:	01013903          	ld	s2,16(sp)
   15100:	00813983          	ld	s3,8(sp)
   15104:	03010113          	addi	sp,sp,48
   15108:	00008067          	ret
   1510c:	00040593          	mv	a1,s0
   15110:	00048513          	mv	a0,s1
   15114:	03c000ef          	jal	15150 <__swsetup_r>
   15118:	02051063          	bnez	a0,15138 <__swbuf_r+0x170>
   1511c:	01041683          	lh	a3,16(s0)
   15120:	01843783          	ld	a5,24(s0)
   15124:	03069713          	slli	a4,a3,0x30
   15128:	03075713          	srli	a4,a4,0x30
   1512c:	ef1ff06f          	j	1501c <__swbuf_r+0x54>
   15130:	525010ef          	jal	16e54 <__sinit>
   15134:	ec5ff06f          	j	14ff8 <__swbuf_r+0x30>
   15138:	fff00513          	li	a0,-1
   1513c:	f39ff06f          	j	15074 <__swbuf_r+0xac>

0000000000015140 <__swbuf>:
   15140:	00058613          	mv	a2,a1
   15144:	00050593          	mv	a1,a0
   15148:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   1514c:	e7dff06f          	j	14fc8 <__swbuf_r>

0000000000015150 <__swsetup_r>:
   15150:	8101b783          	ld	a5,-2032(gp) # 249e0 <_impure_ptr>
   15154:	fe010113          	addi	sp,sp,-32
   15158:	00813823          	sd	s0,16(sp)
   1515c:	00913423          	sd	s1,8(sp)
   15160:	00113c23          	sd	ra,24(sp)
   15164:	00050493          	mv	s1,a0
   15168:	00058413          	mv	s0,a1
   1516c:	00078663          	beqz	a5,15178 <__swsetup_r+0x28>
   15170:	0507a703          	lw	a4,80(a5) # 1050 <_ftext-0xefb0>
   15174:	0e070063          	beqz	a4,15254 <__swsetup_r+0x104>
   15178:	01041703          	lh	a4,16(s0)
   1517c:	03071793          	slli	a5,a4,0x30
   15180:	0307d793          	srli	a5,a5,0x30
   15184:	0087f693          	andi	a3,a5,8
   15188:	04068263          	beqz	a3,151cc <__swsetup_r+0x7c>
   1518c:	01843683          	ld	a3,24(s0)
   15190:	06068663          	beqz	a3,151fc <__swsetup_r+0xac>
   15194:	0017f713          	andi	a4,a5,1
   15198:	08071463          	bnez	a4,15220 <__swsetup_r+0xd0>
   1519c:	0027f793          	andi	a5,a5,2
   151a0:	00000713          	li	a4,0
   151a4:	00079463          	bnez	a5,151ac <__swsetup_r+0x5c>
   151a8:	02042703          	lw	a4,32(s0)
   151ac:	00e42623          	sw	a4,12(s0)
   151b0:	00000513          	li	a0,0
   151b4:	08068263          	beqz	a3,15238 <__swsetup_r+0xe8>
   151b8:	01813083          	ld	ra,24(sp)
   151bc:	01013403          	ld	s0,16(sp)
   151c0:	00813483          	ld	s1,8(sp)
   151c4:	02010113          	addi	sp,sp,32
   151c8:	00008067          	ret
   151cc:	0107f693          	andi	a3,a5,16
   151d0:	0c068663          	beqz	a3,1529c <__swsetup_r+0x14c>
   151d4:	0047f793          	andi	a5,a5,4
   151d8:	08079463          	bnez	a5,15260 <__swsetup_r+0x110>
   151dc:	01843683          	ld	a3,24(s0)
   151e0:	00876793          	ori	a5,a4,8
   151e4:	0107979b          	slliw	a5,a5,0x10
   151e8:	4107d79b          	sraiw	a5,a5,0x10
   151ec:	00f41823          	sh	a5,16(s0)
   151f0:	03079793          	slli	a5,a5,0x30
   151f4:	0307d793          	srli	a5,a5,0x30
   151f8:	f8069ee3          	bnez	a3,15194 <__swsetup_r+0x44>
   151fc:	2807f713          	andi	a4,a5,640
   15200:	20000613          	li	a2,512
   15204:	f8c708e3          	beq	a4,a2,15194 <__swsetup_r+0x44>
   15208:	00040593          	mv	a1,s0
   1520c:	00048513          	mv	a0,s1
   15210:	235020ef          	jal	17c44 <__smakebuf_r>
   15214:	01045783          	lhu	a5,16(s0)
   15218:	01843683          	ld	a3,24(s0)
   1521c:	f79ff06f          	j	15194 <__swsetup_r+0x44>
   15220:	02042783          	lw	a5,32(s0)
   15224:	00042623          	sw	zero,12(s0)
   15228:	00000513          	li	a0,0
   1522c:	40f007bb          	negw	a5,a5
   15230:	02f42423          	sw	a5,40(s0)
   15234:	f80692e3          	bnez	a3,151b8 <__swsetup_r+0x68>
   15238:	01041783          	lh	a5,16(s0)
   1523c:	0807f713          	andi	a4,a5,128
   15240:	f6070ce3          	beqz	a4,151b8 <__swsetup_r+0x68>
   15244:	0407e793          	ori	a5,a5,64
   15248:	00f41823          	sh	a5,16(s0)
   1524c:	fff00513          	li	a0,-1
   15250:	f69ff06f          	j	151b8 <__swsetup_r+0x68>
   15254:	00078513          	mv	a0,a5
   15258:	3fd010ef          	jal	16e54 <__sinit>
   1525c:	f1dff06f          	j	15178 <__swsetup_r+0x28>
   15260:	05843583          	ld	a1,88(s0)
   15264:	00058e63          	beqz	a1,15280 <__swsetup_r+0x130>
   15268:	07440793          	addi	a5,s0,116
   1526c:	00f58863          	beq	a1,a5,1527c <__swsetup_r+0x12c>
   15270:	00048513          	mv	a0,s1
   15274:	7a5010ef          	jal	17218 <_free_r>
   15278:	01041703          	lh	a4,16(s0)
   1527c:	04043c23          	sd	zero,88(s0)
   15280:	01843683          	ld	a3,24(s0)
   15284:	fdb77713          	andi	a4,a4,-37
   15288:	0107171b          	slliw	a4,a4,0x10
   1528c:	4107571b          	sraiw	a4,a4,0x10
   15290:	00042423          	sw	zero,8(s0)
   15294:	00d43023          	sd	a3,0(s0)
   15298:	f49ff06f          	j	151e0 <__swsetup_r+0x90>
   1529c:	00900793          	li	a5,9
   152a0:	00f4a023          	sw	a5,0(s1)
   152a4:	04076713          	ori	a4,a4,64
   152a8:	00e41823          	sh	a4,16(s0)
   152ac:	fff00513          	li	a0,-1
   152b0:	f09ff06f          	j	151b8 <__swsetup_r+0x68>

00000000000152b4 <__register_exitproc>:
   152b4:	fd010113          	addi	sp,sp,-48
   152b8:	02813023          	sd	s0,32(sp)
   152bc:	8081b403          	ld	s0,-2040(gp) # 249d8 <_global_impure_ptr>
   152c0:	00913c23          	sd	s1,24(sp)
   152c4:	00050493          	mv	s1,a0
   152c8:	1f843503          	ld	a0,504(s0)
   152cc:	01213823          	sd	s2,16(sp)
   152d0:	01313423          	sd	s3,8(sp)
   152d4:	01413023          	sd	s4,0(sp)
   152d8:	02113423          	sd	ra,40(sp)
   152dc:	00058913          	mv	s2,a1
   152e0:	00060a13          	mv	s4,a2
   152e4:	00068993          	mv	s3,a3
   152e8:	0c050463          	beqz	a0,153b0 <__register_exitproc+0xfc>
   152ec:	00852703          	lw	a4,8(a0)
   152f0:	01f00793          	li	a5,31
   152f4:	0017059b          	addiw	a1,a4,1
   152f8:	02e7de63          	ble	a4,a5,15334 <__register_exitproc+0x80>
   152fc:	000117b7          	lui	a5,0x11
   15300:	26878793          	addi	a5,a5,616 # 11268 <malloc>
   15304:	0a078c63          	beqz	a5,153bc <__register_exitproc+0x108>
   15308:	31800513          	li	a0,792
   1530c:	f5dfb0ef          	jal	11268 <malloc>
   15310:	0a050663          	beqz	a0,153bc <__register_exitproc+0x108>
   15314:	1f843783          	ld	a5,504(s0)
   15318:	00052423          	sw	zero,8(a0)
   1531c:	00100593          	li	a1,1
   15320:	00f53023          	sd	a5,0(a0)
   15324:	1ea43c23          	sd	a0,504(s0)
   15328:	30052823          	sw	zero,784(a0)
   1532c:	30052a23          	sw	zero,788(a0)
   15330:	00000713          	li	a4,0
   15334:	00070793          	mv	a5,a4
   15338:	02049e63          	bnez	s1,15374 <__register_exitproc+0xc0>
   1533c:	00278793          	addi	a5,a5,2
   15340:	00379793          	slli	a5,a5,0x3
   15344:	00b52423          	sw	a1,8(a0)
   15348:	00f50533          	add	a0,a0,a5
   1534c:	01253023          	sd	s2,0(a0)
   15350:	00000513          	li	a0,0
   15354:	02813083          	ld	ra,40(sp)
   15358:	02013403          	ld	s0,32(sp)
   1535c:	01813483          	ld	s1,24(sp)
   15360:	01013903          	ld	s2,16(sp)
   15364:	00813983          	ld	s3,8(sp)
   15368:	00013a03          	ld	s4,0(sp)
   1536c:	03010113          	addi	sp,sp,48
   15370:	00008067          	ret
   15374:	00371813          	slli	a6,a4,0x3
   15378:	01050833          	add	a6,a0,a6
   1537c:	11483823          	sd	s4,272(a6)
   15380:	31052883          	lw	a7,784(a0)
   15384:	00100613          	li	a2,1
   15388:	00e6173b          	sllw	a4,a2,a4
   1538c:	00e8e633          	or	a2,a7,a4
   15390:	30c52823          	sw	a2,784(a0)
   15394:	21383823          	sd	s3,528(a6)
   15398:	00200693          	li	a3,2
   1539c:	fad490e3          	bne	s1,a3,1533c <__register_exitproc+0x88>
   153a0:	31452683          	lw	a3,788(a0)
   153a4:	00e6e733          	or	a4,a3,a4
   153a8:	30e52a23          	sw	a4,788(a0)
   153ac:	f91ff06f          	j	1533c <__register_exitproc+0x88>
   153b0:	20040513          	addi	a0,s0,512
   153b4:	1ea43c23          	sd	a0,504(s0)
   153b8:	f35ff06f          	j	152ec <__register_exitproc+0x38>
   153bc:	fff00513          	li	a0,-1
   153c0:	f95ff06f          	j	15354 <__register_exitproc+0xa0>

00000000000153c4 <__call_exitprocs>:
   153c4:	fa010113          	addi	sp,sp,-96
   153c8:	03413823          	sd	s4,48(sp)
   153cc:	8081ba03          	ld	s4,-2040(gp) # 249d8 <_global_impure_ptr>
   153d0:	03313c23          	sd	s3,56(sp)
   153d4:	000119b7          	lui	s3,0x11
   153d8:	04913423          	sd	s1,72(sp)
   153dc:	05213023          	sd	s2,64(sp)
   153e0:	03513423          	sd	s5,40(sp)
   153e4:	01713c23          	sd	s7,24(sp)
   153e8:	01813823          	sd	s8,16(sp)
   153ec:	04113c23          	sd	ra,88(sp)
   153f0:	04813823          	sd	s0,80(sp)
   153f4:	03613023          	sd	s6,32(sp)
   153f8:	01913423          	sd	s9,8(sp)
   153fc:	01a13023          	sd	s10,0(sp)
   15400:	00050913          	mv	s2,a0
   15404:	00058b93          	mv	s7,a1
   15408:	1f8a0a93          	addi	s5,s4,504
   1540c:	00100493          	li	s1,1
   15410:	fff00c13          	li	s8,-1
   15414:	27498993          	addi	s3,s3,628 # 11274 <free>
   15418:	1f8a3b03          	ld	s6,504(s4)
   1541c:	0c0b0463          	beqz	s6,154e4 <__call_exitprocs+0x120>
   15420:	000a8d13          	mv	s10,s5
   15424:	008b2403          	lw	s0,8(s6)
   15428:	fff4041b          	addiw	s0,s0,-1
   1542c:	02045263          	bgez	s0,15450 <__call_exitprocs+0x8c>
   15430:	08c0006f          	j	154bc <__call_exitprocs+0xf8>
   15434:	02040793          	addi	a5,s0,32
   15438:	00379793          	slli	a5,a5,0x3
   1543c:	00fb07b3          	add	a5,s6,a5
   15440:	1107b783          	ld	a5,272(a5)
   15444:	00fb8a63          	beq	s7,a5,15458 <__call_exitprocs+0x94>
   15448:	fff4041b          	addiw	s0,s0,-1
   1544c:	07840863          	beq	s0,s8,154bc <__call_exitprocs+0xf8>
   15450:	00040713          	mv	a4,s0
   15454:	fe0b90e3          	bnez	s7,15434 <__call_exitprocs+0x70>
   15458:	008b2783          	lw	a5,8(s6)
   1545c:	00371713          	slli	a4,a4,0x3
   15460:	00eb0733          	add	a4,s6,a4
   15464:	fff7879b          	addiw	a5,a5,-1
   15468:	01073683          	ld	a3,16(a4) # ffffffffffffe010 <_end+0xfffffffffffd6c98>
   1546c:	0a878c63          	beq	a5,s0,15524 <__call_exitprocs+0x160>
   15470:	00073823          	sd	zero,16(a4)
   15474:	fc068ae3          	beqz	a3,15448 <__call_exitprocs+0x84>
   15478:	310b2783          	lw	a5,784(s6)
   1547c:	0084963b          	sllw	a2,s1,s0
   15480:	008b2c83          	lw	s9,8(s6)
   15484:	00f677b3          	and	a5,a2,a5
   15488:	08078a63          	beqz	a5,1551c <__call_exitprocs+0x158>
   1548c:	314b2783          	lw	a5,788(s6)
   15490:	00f67633          	and	a2,a2,a5
   15494:	08061c63          	bnez	a2,1552c <__call_exitprocs+0x168>
   15498:	11073583          	ld	a1,272(a4)
   1549c:	00090513          	mv	a0,s2
   154a0:	000680e7          	jalr	a3
   154a4:	008b2783          	lw	a5,8(s6)
   154a8:	f79798e3          	bne	a5,s9,15418 <__call_exitprocs+0x54>
   154ac:	000d3783          	ld	a5,0(s10)
   154b0:	f76794e3          	bne	a5,s6,15418 <__call_exitprocs+0x54>
   154b4:	fff4041b          	addiw	s0,s0,-1
   154b8:	f9841ce3          	bne	s0,s8,15450 <__call_exitprocs+0x8c>
   154bc:	02098463          	beqz	s3,154e4 <__call_exitprocs+0x120>
   154c0:	008b2783          	lw	a5,8(s6)
   154c4:	06079a63          	bnez	a5,15538 <__call_exitprocs+0x174>
   154c8:	000b3783          	ld	a5,0(s6)
   154cc:	08078063          	beqz	a5,1554c <__call_exitprocs+0x188>
   154d0:	000b0513          	mv	a0,s6
   154d4:	00fd3023          	sd	a5,0(s10)
   154d8:	d9dfb0ef          	jal	11274 <free>
   154dc:	000d3b03          	ld	s6,0(s10)
   154e0:	f40b12e3          	bnez	s6,15424 <__call_exitprocs+0x60>
   154e4:	05813083          	ld	ra,88(sp)
   154e8:	05013403          	ld	s0,80(sp)
   154ec:	04813483          	ld	s1,72(sp)
   154f0:	04013903          	ld	s2,64(sp)
   154f4:	03813983          	ld	s3,56(sp)
   154f8:	03013a03          	ld	s4,48(sp)
   154fc:	02813a83          	ld	s5,40(sp)
   15500:	02013b03          	ld	s6,32(sp)
   15504:	01813b83          	ld	s7,24(sp)
   15508:	01013c03          	ld	s8,16(sp)
   1550c:	00813c83          	ld	s9,8(sp)
   15510:	00013d03          	ld	s10,0(sp)
   15514:	06010113          	addi	sp,sp,96
   15518:	00008067          	ret
   1551c:	000680e7          	jalr	a3
   15520:	f85ff06f          	j	154a4 <__call_exitprocs+0xe0>
   15524:	008b2423          	sw	s0,8(s6)
   15528:	f4dff06f          	j	15474 <__call_exitprocs+0xb0>
   1552c:	11073503          	ld	a0,272(a4)
   15530:	000680e7          	jalr	a3
   15534:	f71ff06f          	j	154a4 <__call_exitprocs+0xe0>
   15538:	000b3783          	ld	a5,0(s6)
   1553c:	000b0d13          	mv	s10,s6
   15540:	00078b13          	mv	s6,a5
   15544:	ee0b10e3          	bnez	s6,15424 <__call_exitprocs+0x60>
   15548:	f9dff06f          	j	154e4 <__call_exitprocs+0x120>
   1554c:	00000793          	li	a5,0
   15550:	fedff06f          	j	1553c <__call_exitprocs+0x178>

0000000000015554 <quorem>:
   15554:	fc010113          	addi	sp,sp,-64
   15558:	03213023          	sd	s2,32(sp)
   1555c:	01452783          	lw	a5,20(a0)
   15560:	0145a903          	lw	s2,20(a1)
   15564:	02113c23          	sd	ra,56(sp)
   15568:	02813823          	sd	s0,48(sp)
   1556c:	02913423          	sd	s1,40(sp)
   15570:	01313c23          	sd	s3,24(sp)
   15574:	01413823          	sd	s4,16(sp)
   15578:	01513423          	sd	s5,8(sp)
   1557c:	1b27ce63          	blt	a5,s2,15738 <quorem+0x1e4>
   15580:	fff9091b          	addiw	s2,s2,-1
   15584:	00090f13          	mv	t5,s2
   15588:	002f1f13          	slli	t5,t5,0x2
   1558c:	01858413          	addi	s0,a1,24
   15590:	01e409b3          	add	s3,s0,t5
   15594:	01850a13          	addi	s4,a0,24
   15598:	01ea0f33          	add	t5,s4,t5
   1559c:	0009a783          	lw	a5,0(s3)
   155a0:	000f2483          	lw	s1,0(t5)
   155a4:	0017879b          	addiw	a5,a5,1
   155a8:	02f4d4bb          	divuw	s1,s1,a5
   155ac:	0a048e63          	beqz	s1,15668 <quorem+0x114>
   155b0:	00010337          	lui	t1,0x10
   155b4:	00040e93          	mv	t4,s0
   155b8:	000a0e13          	mv	t3,s4
   155bc:	00000613          	li	a2,0
   155c0:	00000713          	li	a4,0
   155c4:	fff3031b          	addiw	t1,t1,-1
   155c8:	004e8e93          	addi	t4,t4,4
   155cc:	ffcea803          	lw	a6,-4(t4)
   155d0:	000e2683          	lw	a3,0(t3)
   155d4:	004e0e13          	addi	t3,t3,4
   155d8:	006878b3          	and	a7,a6,t1
   155dc:	029888bb          	mulw	a7,a7,s1
   155e0:	0108581b          	srliw	a6,a6,0x10
   155e4:	0066f7b3          	and	a5,a3,t1
   155e8:	0106d69b          	srliw	a3,a3,0x10
   155ec:	0298083b          	mulw	a6,a6,s1
   155f0:	00c888bb          	addw	a7,a7,a2
   155f4:	0108d61b          	srliw	a2,a7,0x10
   155f8:	0068f8b3          	and	a7,a7,t1
   155fc:	4117073b          	subw	a4,a4,a7
   15600:	00f707bb          	addw	a5,a4,a5
   15604:	4107d71b          	sraiw	a4,a5,0x10
   15608:	0067f7b3          	and	a5,a5,t1
   1560c:	00c8063b          	addw	a2,a6,a2
   15610:	00667833          	and	a6,a2,t1
   15614:	410686bb          	subw	a3,a3,a6
   15618:	00e6873b          	addw	a4,a3,a4
   1561c:	0107169b          	slliw	a3,a4,0x10
   15620:	00f6e6b3          	or	a3,a3,a5
   15624:	fede2e23          	sw	a3,-4(t3)
   15628:	0106561b          	srliw	a2,a2,0x10
   1562c:	4107571b          	sraiw	a4,a4,0x10
   15630:	f9d9fce3          	bleu	t4,s3,155c8 <quorem+0x74>
   15634:	000f2783          	lw	a5,0(t5)
   15638:	02079863          	bnez	a5,15668 <quorem+0x114>
   1563c:	ffcf0793          	addi	a5,t5,-4
   15640:	02fa7263          	bleu	a5,s4,15664 <quorem+0x110>
   15644:	ffcf2703          	lw	a4,-4(t5)
   15648:	00070863          	beqz	a4,15658 <quorem+0x104>
   1564c:	0180006f          	j	15664 <quorem+0x110>
   15650:	0007a703          	lw	a4,0(a5)
   15654:	00071863          	bnez	a4,15664 <quorem+0x110>
   15658:	ffc78793          	addi	a5,a5,-4
   1565c:	fff9091b          	addiw	s2,s2,-1
   15660:	fefa68e3          	bltu	s4,a5,15650 <quorem+0xfc>
   15664:	01252a23          	sw	s2,20(a0)
   15668:	00050a93          	mv	s5,a0
   1566c:	5bc030ef          	jal	18c28 <__mcmp>
   15670:	0a054063          	bltz	a0,15710 <quorem+0x1bc>
   15674:	000105b7          	lui	a1,0x10
   15678:	0014849b          	addiw	s1,s1,1
   1567c:	000a0613          	mv	a2,s4
   15680:	00000793          	li	a5,0
   15684:	fff5859b          	addiw	a1,a1,-1
   15688:	00440413          	addi	s0,s0,4
   1568c:	ffc42683          	lw	a3,-4(s0)
   15690:	00062703          	lw	a4,0(a2) # 2000 <_ftext-0xe000>
   15694:	00460613          	addi	a2,a2,4
   15698:	00b6f833          	and	a6,a3,a1
   1569c:	410787bb          	subw	a5,a5,a6
   156a0:	00b77833          	and	a6,a4,a1
   156a4:	010787bb          	addw	a5,a5,a6
   156a8:	0106d69b          	srliw	a3,a3,0x10
   156ac:	0107571b          	srliw	a4,a4,0x10
   156b0:	40d7073b          	subw	a4,a4,a3
   156b4:	4107d69b          	sraiw	a3,a5,0x10
   156b8:	00d706bb          	addw	a3,a4,a3
   156bc:	0106981b          	slliw	a6,a3,0x10
   156c0:	00b7f733          	and	a4,a5,a1
   156c4:	00e86733          	or	a4,a6,a4
   156c8:	fee62e23          	sw	a4,-4(a2)
   156cc:	4106d79b          	sraiw	a5,a3,0x10
   156d0:	fa89fce3          	bleu	s0,s3,15688 <quorem+0x134>
   156d4:	00291713          	slli	a4,s2,0x2
   156d8:	00ea0733          	add	a4,s4,a4
   156dc:	00072783          	lw	a5,0(a4)
   156e0:	02079863          	bnez	a5,15710 <quorem+0x1bc>
   156e4:	ffc70793          	addi	a5,a4,-4
   156e8:	02fa7263          	bleu	a5,s4,1570c <quorem+0x1b8>
   156ec:	ffc72703          	lw	a4,-4(a4)
   156f0:	00070863          	beqz	a4,15700 <quorem+0x1ac>
   156f4:	0180006f          	j	1570c <quorem+0x1b8>
   156f8:	0007a703          	lw	a4,0(a5)
   156fc:	00071863          	bnez	a4,1570c <quorem+0x1b8>
   15700:	ffc78793          	addi	a5,a5,-4
   15704:	fff9091b          	addiw	s2,s2,-1
   15708:	fefa68e3          	bltu	s4,a5,156f8 <quorem+0x1a4>
   1570c:	012aaa23          	sw	s2,20(s5)
   15710:	00048513          	mv	a0,s1
   15714:	03813083          	ld	ra,56(sp)
   15718:	03013403          	ld	s0,48(sp)
   1571c:	02813483          	ld	s1,40(sp)
   15720:	02013903          	ld	s2,32(sp)
   15724:	01813983          	ld	s3,24(sp)
   15728:	01013a03          	ld	s4,16(sp)
   1572c:	00813a83          	ld	s5,8(sp)
   15730:	04010113          	addi	sp,sp,64
   15734:	00008067          	ret
   15738:	00000513          	li	a0,0
   1573c:	fd9ff06f          	j	15714 <quorem+0x1c0>

0000000000015740 <_dtoa_r>:
   15740:	e20585d3          	fmv.x.d	a1,fa1
   15744:	06053883          	ld	a7,96(a0)
   15748:	f3010113          	addi	sp,sp,-208
   1574c:	0c813023          	sd	s0,192(sp)
   15750:	0a913c23          	sd	s1,184(sp)
   15754:	0b313423          	sd	s3,168(sp)
   15758:	09613823          	sd	s6,144(sp)
   1575c:	07913c23          	sd	s9,120(sp)
   15760:	07a13823          	sd	s10,112(sp)
   15764:	0c113423          	sd	ra,200(sp)
   15768:	0b213823          	sd	s2,176(sp)
   1576c:	0b413023          	sd	s4,160(sp)
   15770:	09513c23          	sd	s5,152(sp)
   15774:	09713423          	sd	s7,136(sp)
   15778:	09813023          	sd	s8,128(sp)
   1577c:	07b13423          	sd	s11,104(sp)
   15780:	00e13023          	sd	a4,0(sp)
   15784:	00050413          	mv	s0,a0
   15788:	00060993          	mv	s3,a2
   1578c:	00068c93          	mv	s9,a3
   15790:	00078493          	mv	s1,a5
   15794:	00080b13          	mv	s6,a6
   15798:	00058d13          	mv	s10,a1
   1579c:	02088263          	beqz	a7,157c0 <_dtoa_r+0x80>
   157a0:	06852603          	lw	a2,104(a0)
   157a4:	00100693          	li	a3,1
   157a8:	00088593          	mv	a1,a7
   157ac:	00c696bb          	sllw	a3,a3,a2
   157b0:	00c8a423          	sw	a2,8(a7)
   157b4:	00d8a623          	sw	a3,12(a7)
   157b8:	425020ef          	jal	183dc <_Bfree>
   157bc:	06043023          	sd	zero,96(s0)
   157c0:	420d5913          	srai	s2,s10,0x20
   157c4:	0c094063          	bltz	s2,15884 <_dtoa_r+0x144>
   157c8:	0004a023          	sw	zero,0(s1)
   157cc:	7ff007b7          	lui	a5,0x7ff00
   157d0:	00f976b3          	and	a3,s2,a5
   157d4:	06f68a63          	beq	a3,a5,15848 <_dtoa_r+0x108>
   157d8:	f20007d3          	fmv.d.x	fa5,zero
   157dc:	f20d0753          	fmv.d.x	fa4,s10
   157e0:	a2f727d3          	feq.d	a5,fa4,fa5
   157e4:	0c078463          	beqz	a5,158ac <_dtoa_r+0x16c>
   157e8:	00013703          	ld	a4,0(sp)
   157ec:	00100793          	li	a5,1
   157f0:	00f72023          	sw	a5,0(a4)
   157f4:	480b0a63          	beqz	s6,15c88 <_dtoa_r+0x548>
   157f8:	000227b7          	lui	a5,0x22
   157fc:	2c178793          	addi	a5,a5,705 # 222c1 <zeroes.4123+0x79>
   15800:	00022537          	lui	a0,0x22
   15804:	00fb3023          	sd	a5,0(s6)
   15808:	2c050513          	addi	a0,a0,704 # 222c0 <zeroes.4123+0x78>
   1580c:	0c813083          	ld	ra,200(sp)
   15810:	0c013403          	ld	s0,192(sp)
   15814:	0b813483          	ld	s1,184(sp)
   15818:	0b013903          	ld	s2,176(sp)
   1581c:	0a813983          	ld	s3,168(sp)
   15820:	0a013a03          	ld	s4,160(sp)
   15824:	09813a83          	ld	s5,152(sp)
   15828:	09013b03          	ld	s6,144(sp)
   1582c:	08813b83          	ld	s7,136(sp)
   15830:	08013c03          	ld	s8,128(sp)
   15834:	07813c83          	ld	s9,120(sp)
   15838:	07013d03          	ld	s10,112(sp)
   1583c:	06813d83          	ld	s11,104(sp)
   15840:	0d010113          	addi	sp,sp,208
   15844:	00008067          	ret
   15848:	00013703          	ld	a4,0(sp)
   1584c:	000027b7          	lui	a5,0x2
   15850:	70f7879b          	addiw	a5,a5,1807
   15854:	00f72023          	sw	a5,0(a4)
   15858:	00cd1793          	slli	a5,s10,0xc
   1585c:	3e079863          	bnez	a5,15c4c <_dtoa_r+0x50c>
   15860:	00022537          	lui	a0,0x22
   15864:	2d050513          	addi	a0,a0,720 # 222d0 <zeroes.4123+0x88>
   15868:	fa0b02e3          	beqz	s6,1580c <_dtoa_r+0xcc>
   1586c:	00354703          	lbu	a4,3(a0)
   15870:	00350793          	addi	a5,a0,3
   15874:	00070463          	beqz	a4,1587c <_dtoa_r+0x13c>
   15878:	00850793          	addi	a5,a0,8
   1587c:	00fb3023          	sd	a5,0(s6)
   15880:	f8dff06f          	j	1580c <_dtoa_r+0xcc>
   15884:	800007b7          	lui	a5,0x80000
   15888:	fff7c793          	not	a5,a5
   1588c:	020d1713          	slli	a4,s10,0x20
   15890:	00f97933          	and	s2,s2,a5
   15894:	02091793          	slli	a5,s2,0x20
   15898:	02075713          	srli	a4,a4,0x20
   1589c:	00100693          	li	a3,1
   158a0:	00d4a023          	sw	a3,0(s1)
   158a4:	00f76d33          	or	s10,a4,a5
   158a8:	f25ff06f          	j	157cc <_dtoa_r+0x8c>
   158ac:	f20d05d3          	fmv.d.x	fa1,s10
   158b0:	05810693          	addi	a3,sp,88
   158b4:	05c10613          	addi	a2,sp,92
   158b8:	00040513          	mv	a0,s0
   158bc:	7ac030ef          	jal	19068 <__d2b>
   158c0:	02a13023          	sd	a0,32(sp)
   158c4:	0149581b          	srliw	a6,s2,0x14
   158c8:	38081863          	bnez	a6,15c58 <_dtoa_r+0x518>
   158cc:	05812603          	lw	a2,88(sp)
   158d0:	05c12803          	lw	a6,92(sp)
   158d4:	02000793          	li	a5,32
   158d8:	0106083b          	addw	a6,a2,a6
   158dc:	4328069b          	addiw	a3,a6,1074
   158e0:	6ad7de63          	ble	a3,a5,15f9c <_dtoa_r+0x85c>
   158e4:	04000593          	li	a1,64
   158e8:	4128049b          	addiw	s1,a6,1042
   158ec:	000d079b          	sext.w	a5,s10
   158f0:	40d585bb          	subw	a1,a1,a3
   158f4:	0097d7bb          	srlw	a5,a5,s1
   158f8:	00b914bb          	sllw	s1,s2,a1
   158fc:	0097e4b3          	or	s1,a5,s1
   15900:	d21487d3          	fcvt.d.wu	fa5,s1
   15904:	fe1006b7          	lui	a3,0xfe100
   15908:	fff8081b          	addiw	a6,a6,-1
   1590c:	e20784d3          	fmv.x.d	s1,fa5
   15910:	00100913          	li	s2,1
   15914:	4204d793          	srai	a5,s1,0x20
   15918:	00d787bb          	addw	a5,a5,a3
   1591c:	02049493          	slli	s1,s1,0x20
   15920:	02079793          	slli	a5,a5,0x20
   15924:	0204d493          	srli	s1,s1,0x20
   15928:	00f4e4b3          	or	s1,s1,a5
   1592c:	000257b7          	lui	a5,0x25
   15930:	a207b787          	fld	fa5,-1504(a5) # 24a20 <mask+0x8>
   15934:	f2048753          	fmv.d.x	fa4,s1
   15938:	000257b7          	lui	a5,0x25
   1593c:	0af77653          	fsub.d	fa2,fa4,fa5
   15940:	a307b787          	fld	fa5,-1488(a5) # 24a30 <mask+0x18>
   15944:	000257b7          	lui	a5,0x25
   15948:	a287b687          	fld	fa3,-1496(a5) # 24a28 <mask+0x10>
   1594c:	000257b7          	lui	a5,0x25
   15950:	d2080753          	fcvt.d.w	fa4,a6
   15954:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   15958:	a387b687          	fld	fa3,-1480(a5) # 24a38 <mask+0x20>
   1595c:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   15960:	f2000753          	fmv.d.x	fa4,zero
   15964:	a2e797d3          	flt.d	a5,fa5,fa4
   15968:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   1596c:	5e079e63          	bnez	a5,15f68 <_dtoa_r+0x828>
   15970:	00100793          	li	a5,1
   15974:	02f12823          	sw	a5,48(sp)
   15978:	01600793          	li	a5,22
   1597c:	0377e663          	bltu	a5,s7,159a8 <_dtoa_r+0x268>
   15980:	000227b7          	lui	a5,0x22
   15984:	003b9693          	slli	a3,s7,0x3
   15988:	a7878793          	addi	a5,a5,-1416 # 21a78 <__mprec_tens>
   1598c:	00f687b3          	add	a5,a3,a5
   15990:	0007b787          	fld	fa5,0(a5)
   15994:	f20d0753          	fmv.d.x	fa4,s10
   15998:	a2f717d3          	flt.d	a5,fa4,fa5
   1599c:	60078863          	beqz	a5,15fac <_dtoa_r+0x86c>
   159a0:	fffb8b9b          	addiw	s7,s7,-1
   159a4:	02012823          	sw	zero,48(sp)
   159a8:	4106083b          	subw	a6,a2,a6
   159ac:	fff80d9b          	addiw	s11,a6,-1
   159b0:	00000813          	li	a6,0
   159b4:	2e0dc063          	bltz	s11,15c94 <_dtoa_r+0x554>
   159b8:	5c0bc263          	bltz	s7,15f7c <_dtoa_r+0x83c>
   159bc:	017d8dbb          	addw	s11,s11,s7
   159c0:	03712423          	sw	s7,40(sp)
   159c4:	00000c13          	li	s8,0
   159c8:	00900793          	li	a5,9
   159cc:	2d37ea63          	bltu	a5,s3,15ca0 <_dtoa_r+0x560>
   159d0:	00500793          	li	a5,5
   159d4:	00100a13          	li	s4,1
   159d8:	0137d663          	ble	s3,a5,159e4 <_dtoa_r+0x2a4>
   159dc:	ffc9899b          	addiw	s3,s3,-4
   159e0:	00000a13          	li	s4,0
   159e4:	00300793          	li	a5,3
   159e8:	2af982e3          	beq	s3,a5,1648c <_dtoa_r+0xd4c>
   159ec:	1f37dce3          	ble	s3,a5,163e4 <_dtoa_r+0xca4>
   159f0:	00400793          	li	a5,4
   159f4:	0cf98ae3          	beq	s3,a5,162c8 <_dtoa_r+0xb88>
   159f8:	00100793          	li	a5,1
   159fc:	00f12823          	sw	a5,16(sp)
   15a00:	00500793          	li	a5,5
   15a04:	1ef996e3          	bne	s3,a5,163f0 <_dtoa_r+0xcb0>
   15a08:	019b87bb          	addw	a5,s7,s9
   15a0c:	00178a9b          	addiw	s5,a5,1
   15a10:	02f12a23          	sw	a5,52(sp)
   15a14:	000a8513          	mv	a0,s5
   15a18:	000a8493          	mv	s1,s5
   15a1c:	1b505ee3          	blez	s5,163d8 <_dtoa_r+0xc98>
   15a20:	06042423          	sw	zero,104(s0)
   15a24:	01f00793          	li	a5,31
   15a28:	00000593          	li	a1,0
   15a2c:	02a7f463          	bleu	a0,a5,15a54 <_dtoa_r+0x314>
   15a30:	00100613          	li	a2,1
   15a34:	00400693          	li	a3,4
   15a38:	0016969b          	slliw	a3,a3,0x1
   15a3c:	00068793          	mv	a5,a3
   15a40:	01c78793          	addi	a5,a5,28
   15a44:	00060593          	mv	a1,a2
   15a48:	0016061b          	addiw	a2,a2,1
   15a4c:	fef576e3          	bleu	a5,a0,15a38 <_dtoa_r+0x2f8>
   15a50:	06b42423          	sw	a1,104(s0)
   15a54:	00040513          	mv	a0,s0
   15a58:	03013c23          	sd	a6,56(sp)
   15a5c:	0d5020ef          	jal	18330 <_Balloc>
   15a60:	00a13423          	sd	a0,8(sp)
   15a64:	06a43023          	sd	a0,96(s0)
   15a68:	00e00793          	li	a5,14
   15a6c:	03813803          	ld	a6,56(sp)
   15a70:	2697e463          	bltu	a5,s1,15cd8 <_dtoa_r+0x598>
   15a74:	260a0263          	beqz	s4,15cd8 <_dtoa_r+0x598>
   15a78:	03a13c23          	sd	s10,56(sp)
   15a7c:	317054e3          	blez	s7,16584 <_dtoa_r+0xe44>
   15a80:	00fbf713          	andi	a4,s7,15
   15a84:	00371693          	slli	a3,a4,0x3
   15a88:	00022737          	lui	a4,0x22
   15a8c:	404bd79b          	sraiw	a5,s7,0x4
   15a90:	a7870713          	addi	a4,a4,-1416 # 21a78 <__mprec_tens>
   15a94:	00e68733          	add	a4,a3,a4
   15a98:	0107f693          	andi	a3,a5,16
   15a9c:	00073687          	fld	fa3,0(a4)
   15aa0:	f20d07d3          	fmv.d.x	fa5,s10
   15aa4:	00200713          	li	a4,2
   15aa8:	00068c63          	beqz	a3,15ac0 <_dtoa_r+0x380>
   15aac:	00022737          	lui	a4,0x22
   15ab0:	b8873707          	fld	fa4,-1144(a4) # 21b88 <__mprec_bigtens+0x20>
   15ab4:	00f7f793          	andi	a5,a5,15
   15ab8:	00300713          	li	a4,3
   15abc:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   15ac0:	02078663          	beqz	a5,15aec <_dtoa_r+0x3ac>
   15ac4:	000226b7          	lui	a3,0x22
   15ac8:	b6868693          	addi	a3,a3,-1176 # 21b68 <__mprec_bigtens>
   15acc:	0017f613          	andi	a2,a5,1
   15ad0:	4017d79b          	sraiw	a5,a5,0x1
   15ad4:	00060863          	beqz	a2,15ae4 <_dtoa_r+0x3a4>
   15ad8:	0006b707          	fld	fa4,0(a3)
   15adc:	0017071b          	addiw	a4,a4,1
   15ae0:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   15ae4:	00868693          	addi	a3,a3,8
   15ae8:	fe0792e3          	bnez	a5,15acc <_dtoa_r+0x38c>
   15aec:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   15af0:	03012783          	lw	a5,48(sp)
   15af4:	00078a63          	beqz	a5,15b08 <_dtoa_r+0x3c8>
   15af8:	000257b7          	lui	a5,0x25
   15afc:	a407b707          	fld	fa4,-1472(a5) # 24a40 <mask+0x28>
   15b00:	a2e797d3          	flt.d	a5,fa5,fa4
   15b04:	440790e3          	bnez	a5,16744 <_dtoa_r+0x1004>
   15b08:	000257b7          	lui	a5,0x25
   15b0c:	d20706d3          	fcvt.d.w	fa3,a4
   15b10:	a507b707          	fld	fa4,-1456(a5) # 24a50 <mask+0x38>
   15b14:	fcc006b7          	lui	a3,0xfcc00
   15b18:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   15b1c:	e2070753          	fmv.x.d	a4,fa4
   15b20:	42075793          	srai	a5,a4,0x20
   15b24:	00d787bb          	addw	a5,a5,a3
   15b28:	02071713          	slli	a4,a4,0x20
   15b2c:	02079793          	slli	a5,a5,0x20
   15b30:	02075713          	srli	a4,a4,0x20
   15b34:	00f76733          	or	a4,a4,a5
   15b38:	180a86e3          	beqz	s5,164c4 <_dtoa_r+0xd84>
   15b3c:	000b8693          	mv	a3,s7
   15b40:	000a8613          	mv	a2,s5
   15b44:	01012783          	lw	a5,16(sp)
   15b48:	300782e3          	beqz	a5,1664c <_dtoa_r+0xf0c>
   15b4c:	fff6079b          	addiw	a5,a2,-1
   15b50:	000225b7          	lui	a1,0x22
   15b54:	a7858593          	addi	a1,a1,-1416 # 21a78 <__mprec_tens>
   15b58:	00379793          	slli	a5,a5,0x3
   15b5c:	00b787b3          	add	a5,a5,a1
   15b60:	000255b7          	lui	a1,0x25
   15b64:	0007b687          	fld	fa3,0(a5)
   15b68:	a605b707          	fld	fa4,-1440(a1) # 24a60 <mask+0x48>
   15b6c:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   15b70:	00813503          	ld	a0,8(sp)
   15b74:	1ad77753          	fdiv.d	fa4,fa4,fa3
   15b78:	d20786d3          	fcvt.d.w	fa3,a5
   15b7c:	0307879b          	addiw	a5,a5,48
   15b80:	0ff7f793          	andi	a5,a5,255
   15b84:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   15b88:	f20706d3          	fmv.d.x	fa3,a4
   15b8c:	00f50023          	sb	a5,0(a0)
   15b90:	00150493          	addi	s1,a0,1
   15b94:	0ad77753          	fsub.d	fa4,fa4,fa3
   15b98:	a2e79753          	flt.d	a4,fa5,fa4
   15b9c:	08071063          	bnez	a4,15c1c <_dtoa_r+0x4dc>
   15ba0:	00025737          	lui	a4,0x25
   15ba4:	a4073587          	fld	fa1,-1472(a4) # 24a40 <mask+0x28>
   15ba8:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   15bac:	a2e69753          	flt.d	a4,fa3,fa4
   15bb0:	40071ae3          	bnez	a4,167c4 <_dtoa_r+0x1084>
   15bb4:	00100793          	li	a5,1
   15bb8:	1ac7d4e3          	ble	a2,a5,16560 <_dtoa_r+0xe20>
   15bbc:	000257b7          	lui	a5,0x25
   15bc0:	ffe6061b          	addiw	a2,a2,-2
   15bc4:	02061613          	slli	a2,a2,0x20
   15bc8:	a487b607          	fld	fa2,-1464(a5) # 24a48 <mask+0x30>
   15bcc:	00813783          	ld	a5,8(sp)
   15bd0:	02065613          	srli	a2,a2,0x20
   15bd4:	00260613          	addi	a2,a2,2
   15bd8:	00c78633          	add	a2,a5,a2
   15bdc:	0140006f          	j	15bf0 <_dtoa_r+0x4b0>
   15be0:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   15be4:	a2e69753          	flt.d	a4,fa3,fa4
   15be8:	3c071ee3          	bnez	a4,167c4 <_dtoa_r+0x1084>
   15bec:	16960ae3          	beq	a2,s1,16560 <_dtoa_r+0xe20>
   15bf0:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   15bf4:	12c77753          	fmul.d	fa4,fa4,fa2
   15bf8:	00148493          	addi	s1,s1,1
   15bfc:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   15c00:	d20786d3          	fcvt.d.w	fa3,a5
   15c04:	0307879b          	addiw	a5,a5,48
   15c08:	0ff7f793          	andi	a5,a5,255
   15c0c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   15c10:	fef48fa3          	sb	a5,-1(s1)
   15c14:	a2e79753          	flt.d	a4,fa5,fa4
   15c18:	fc0704e3          	beqz	a4,15be0 <_dtoa_r+0x4a0>
   15c1c:	00068b93          	mv	s7,a3
   15c20:	02013583          	ld	a1,32(sp)
   15c24:	00040513          	mv	a0,s0
   15c28:	001b8b9b          	addiw	s7,s7,1
   15c2c:	7b0020ef          	jal	183dc <_Bfree>
   15c30:	00013783          	ld	a5,0(sp)
   15c34:	00048023          	sb	zero,0(s1)
   15c38:	0177a023          	sw	s7,0(a5)
   15c3c:	0c0b0ce3          	beqz	s6,16514 <_dtoa_r+0xdd4>
   15c40:	009b3023          	sd	s1,0(s6)
   15c44:	00813503          	ld	a0,8(sp)
   15c48:	bc5ff06f          	j	1580c <_dtoa_r+0xcc>
   15c4c:	00022537          	lui	a0,0x22
   15c50:	2e050513          	addi	a0,a0,736 # 222e0 <zeroes.4123+0x98>
   15c54:	c15ff06f          	j	15868 <_dtoa_r+0x128>
   15c58:	00cd1793          	slli	a5,s10,0xc
   15c5c:	02c7d693          	srli	a3,a5,0x2c
   15c60:	3ff007b7          	lui	a5,0x3ff00
   15c64:	00f6e7b3          	or	a5,a3,a5
   15c68:	020d1493          	slli	s1,s10,0x20
   15c6c:	02079793          	slli	a5,a5,0x20
   15c70:	0204d493          	srli	s1,s1,0x20
   15c74:	00f4e4b3          	or	s1,s1,a5
   15c78:	c018081b          	addiw	a6,a6,-1023
   15c7c:	05812603          	lw	a2,88(sp)
   15c80:	00000913          	li	s2,0
   15c84:	ca9ff06f          	j	1592c <_dtoa_r+0x1ec>
   15c88:	00022537          	lui	a0,0x22
   15c8c:	2c050513          	addi	a0,a0,704 # 222c0 <zeroes.4123+0x78>
   15c90:	b7dff06f          	j	1580c <_dtoa_r+0xcc>
   15c94:	41b0083b          	negw	a6,s11
   15c98:	00000d93          	li	s11,0
   15c9c:	d1dff06f          	j	159b8 <_dtoa_r+0x278>
   15ca0:	06042423          	sw	zero,104(s0)
   15ca4:	00000593          	li	a1,0
   15ca8:	00040513          	mv	a0,s0
   15cac:	03013c23          	sd	a6,56(sp)
   15cb0:	680020ef          	jal	18330 <_Balloc>
   15cb4:	03813803          	ld	a6,56(sp)
   15cb8:	fff00a93          	li	s5,-1
   15cbc:	00100793          	li	a5,1
   15cc0:	00a13423          	sd	a0,8(sp)
   15cc4:	06a43023          	sd	a0,96(s0)
   15cc8:	03512a23          	sw	s5,52(sp)
   15ccc:	00000993          	li	s3,0
   15cd0:	00000c93          	li	s9,0
   15cd4:	00f12823          	sw	a5,16(sp)
   15cd8:	05c12783          	lw	a5,92(sp)
   15cdc:	0e07ca63          	bltz	a5,15dd0 <_dtoa_r+0x690>
   15ce0:	00e00693          	li	a3,14
   15ce4:	0f76c663          	blt	a3,s7,15dd0 <_dtoa_r+0x690>
   15ce8:	000227b7          	lui	a5,0x22
   15cec:	003b9693          	slli	a3,s7,0x3
   15cf0:	a7878793          	addi	a5,a5,-1416 # 21a78 <__mprec_tens>
   15cf4:	00f687b3          	add	a5,a3,a5
   15cf8:	0007b687          	fld	fa3,0(a5)
   15cfc:	5e0cc663          	bltz	s9,162e8 <_dtoa_r+0xba8>
   15d00:	f20d0653          	fmv.d.x	fa2,s10
   15d04:	00813703          	ld	a4,8(sp)
   15d08:	22d69553          	fneg.d	fa0,fa3
   15d0c:	1ad67753          	fdiv.d	fa4,fa2,fa3
   15d10:	00170493          	addi	s1,a4,1
   15d14:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   15d18:	d20787d3          	fcvt.d.w	fa5,a5
   15d1c:	0307869b          	addiw	a3,a5,48
   15d20:	00d70023          	sb	a3,0(a4)
   15d24:	00100713          	li	a4,1
   15d28:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   15d2c:	2aea88e3          	beq	s5,a4,167dc <_dtoa_r+0x109c>
   15d30:	000257b7          	lui	a5,0x25
   15d34:	a487b587          	fld	fa1,-1464(a5) # 24a48 <mask+0x30>
   15d38:	f2000653          	fmv.d.x	fa2,zero
   15d3c:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   15d40:	a2c7a7d3          	feq.d	a5,fa5,fa2
   15d44:	ec079ee3          	bnez	a5,15c20 <_dtoa_r+0x4e0>
   15d48:	ffea869b          	addiw	a3,s5,-2
   15d4c:	02069693          	slli	a3,a3,0x20
   15d50:	00813783          	ld	a5,8(sp)
   15d54:	0206d693          	srli	a3,a3,0x20
   15d58:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_end+0xfffffffffcbd8c8a>
   15d5c:	00d786b3          	add	a3,a5,a3
   15d60:	0100006f          	j	15d70 <_dtoa_r+0x630>
   15d64:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   15d68:	a2c7a7d3          	feq.d	a5,fa5,fa2
   15d6c:	ea079ae3          	bnez	a5,15c20 <_dtoa_r+0x4e0>
   15d70:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   15d74:	00148493          	addi	s1,s1,1
   15d78:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   15d7c:	d2078753          	fcvt.d.w	fa4,a5
   15d80:	0307871b          	addiw	a4,a5,48
   15d84:	fee48fa3          	sb	a4,-1(s1)
   15d88:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   15d8c:	fcd49ce3          	bne	s1,a3,15d64 <_dtoa_r+0x624>
   15d90:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   15d94:	a2f69753          	flt.d	a4,fa3,fa5
   15d98:	7c070863          	beqz	a4,16568 <_dtoa_r+0xe28>
   15d9c:	fff6c783          	lbu	a5,-1(a3)
   15da0:	00068493          	mv	s1,a3
   15da4:	03900693          	li	a3,57
   15da8:	0140006f          	j	15dbc <_dtoa_r+0x67c>
   15dac:	00813783          	ld	a5,8(sp)
   15db0:	02f70ce3          	beq	a4,a5,165e8 <_dtoa_r+0xea8>
   15db4:	fff74783          	lbu	a5,-1(a4)
   15db8:	00070493          	mv	s1,a4
   15dbc:	fff48713          	addi	a4,s1,-1
   15dc0:	fed786e3          	beq	a5,a3,15dac <_dtoa_r+0x66c>
   15dc4:	0017879b          	addiw	a5,a5,1
   15dc8:	00f70023          	sb	a5,0(a4)
   15dcc:	e55ff06f          	j	15c20 <_dtoa_r+0x4e0>
   15dd0:	01012703          	lw	a4,16(sp)
   15dd4:	1a070c63          	beqz	a4,15f8c <_dtoa_r+0x84c>
   15dd8:	00100693          	li	a3,1
   15ddc:	5536d863          	ble	s3,a3,1632c <_dtoa_r+0xbec>
   15de0:	fffa869b          	addiw	a3,s5,-1
   15de4:	72dc4c63          	blt	s8,a3,1651c <_dtoa_r+0xddc>
   15de8:	40dc06bb          	subw	a3,s8,a3
   15dec:	00080493          	mv	s1,a6
   15df0:	000a8793          	mv	a5,s5
   15df4:	120ac2e3          	bltz	s5,16718 <_dtoa_r+0xfd8>
   15df8:	00f8083b          	addw	a6,a6,a5
   15dfc:	00100593          	li	a1,1
   15e00:	00040513          	mv	a0,s0
   15e04:	04d13423          	sd	a3,72(sp)
   15e08:	05013023          	sd	a6,64(sp)
   15e0c:	03013c23          	sd	a6,56(sp)
   15e10:	00fd8dbb          	addw	s11,s11,a5
   15e14:	155020ef          	jal	18768 <__i2b>
   15e18:	04013803          	ld	a6,64(sp)
   15e1c:	04813683          	ld	a3,72(sp)
   15e20:	00050a13          	mv	s4,a0
   15e24:	00048e63          	beqz	s1,15e40 <_dtoa_r+0x700>
   15e28:	01b05c63          	blez	s11,15e40 <_dtoa_r+0x700>
   15e2c:	00048793          	mv	a5,s1
   15e30:	489dc463          	blt	s11,s1,162b8 <_dtoa_r+0xb78>
   15e34:	40f8083b          	subw	a6,a6,a5
   15e38:	40f484bb          	subw	s1,s1,a5
   15e3c:	40fd8dbb          	subw	s11,s11,a5
   15e40:	02013903          	ld	s2,32(sp)
   15e44:	07805e63          	blez	s8,15ec0 <_dtoa_r+0x780>
   15e48:	01012783          	lw	a5,16(sp)
   15e4c:	6a078463          	beqz	a5,164f4 <_dtoa_r+0xdb4>
   15e50:	04068a63          	beqz	a3,15ea4 <_dtoa_r+0x764>
   15e54:	00068613          	mv	a2,a3
   15e58:	000a0593          	mv	a1,s4
   15e5c:	00040513          	mv	a0,s0
   15e60:	05013023          	sd	a6,64(sp)
   15e64:	02d13c23          	sd	a3,56(sp)
   15e68:	329020ef          	jal	18990 <__pow5mult>
   15e6c:	02013603          	ld	a2,32(sp)
   15e70:	00050593          	mv	a1,a0
   15e74:	00050a13          	mv	s4,a0
   15e78:	00040513          	mv	a0,s0
   15e7c:	121020ef          	jal	1879c <__multiply>
   15e80:	03813683          	ld	a3,56(sp)
   15e84:	02013583          	ld	a1,32(sp)
   15e88:	00050913          	mv	s2,a0
   15e8c:	00040513          	mv	a0,s0
   15e90:	40dc0c3b          	subw	s8,s8,a3
   15e94:	548020ef          	jal	183dc <_Bfree>
   15e98:	04013803          	ld	a6,64(sp)
   15e9c:	020c0263          	beqz	s8,15ec0 <_dtoa_r+0x780>
   15ea0:	03213023          	sd	s2,32(sp)
   15ea4:	02013583          	ld	a1,32(sp)
   15ea8:	000c0613          	mv	a2,s8
   15eac:	00040513          	mv	a0,s0
   15eb0:	03013c23          	sd	a6,56(sp)
   15eb4:	2dd020ef          	jal	18990 <__pow5mult>
   15eb8:	03813803          	ld	a6,56(sp)
   15ebc:	00050913          	mv	s2,a0
   15ec0:	00100593          	li	a1,1
   15ec4:	00040513          	mv	a0,s0
   15ec8:	03013023          	sd	a6,32(sp)
   15ecc:	09d020ef          	jal	18768 <__i2b>
   15ed0:	02812783          	lw	a5,40(sp)
   15ed4:	00050c13          	mv	s8,a0
   15ed8:	02013803          	ld	a6,32(sp)
   15edc:	0c078c63          	beqz	a5,15fb4 <_dtoa_r+0x874>
   15ee0:	00078613          	mv	a2,a5
   15ee4:	00050593          	mv	a1,a0
   15ee8:	00040513          	mv	a0,s0
   15eec:	2a5020ef          	jal	18990 <__pow5mult>
   15ef0:	00100793          	li	a5,1
   15ef4:	00050c13          	mv	s8,a0
   15ef8:	02013803          	ld	a6,32(sp)
   15efc:	3d37c263          	blt	a5,s3,162c0 <_dtoa_r+0xb80>
   15f00:	00cd1793          	slli	a5,s10,0xc
   15f04:	3a079e63          	bnez	a5,162c0 <_dtoa_r+0xb80>
   15f08:	420d5693          	srai	a3,s10,0x20
   15f0c:	7ff007b7          	lui	a5,0x7ff00
   15f10:	00f6f7b3          	and	a5,a3,a5
   15f14:	02012023          	sw	zero,32(sp)
   15f18:	00078a63          	beqz	a5,15f2c <_dtoa_r+0x7ec>
   15f1c:	00100793          	li	a5,1
   15f20:	0018081b          	addiw	a6,a6,1
   15f24:	001d8d9b          	addiw	s11,s11,1
   15f28:	02f12023          	sw	a5,32(sp)
   15f2c:	02812783          	lw	a5,40(sp)
   15f30:	00100513          	li	a0,1
   15f34:	08078863          	beqz	a5,15fc4 <_dtoa_r+0x884>
   15f38:	014c2783          	lw	a5,20(s8)
   15f3c:	03013423          	sd	a6,40(sp)
   15f40:	fff7879b          	addiw	a5,a5,-1
   15f44:	00478793          	addi	a5,a5,4 # 7ff00004 <_end+0x7fed8c8c>
   15f48:	00279793          	slli	a5,a5,0x2
   15f4c:	00fc07b3          	add	a5,s8,a5
   15f50:	0087a503          	lw	a0,8(a5)
   15f54:	6e8020ef          	jal	1863c <__hi0bits>
   15f58:	02000793          	li	a5,32
   15f5c:	40a7853b          	subw	a0,a5,a0
   15f60:	02813803          	ld	a6,40(sp)
   15f64:	0600006f          	j	15fc4 <_dtoa_r+0x884>
   15f68:	d20b8753          	fcvt.d.w	fa4,s7
   15f6c:	a2e7a7d3          	feq.d	a5,fa5,fa4
   15f70:	0017b793          	seqz	a5,a5
   15f74:	40fb8bbb          	subw	s7,s7,a5
   15f78:	9f9ff06f          	j	15970 <_dtoa_r+0x230>
   15f7c:	4178083b          	subw	a6,a6,s7
   15f80:	41700c3b          	negw	s8,s7
   15f84:	02012423          	sw	zero,40(sp)
   15f88:	a41ff06f          	j	159c8 <_dtoa_r+0x288>
   15f8c:	000c0693          	mv	a3,s8
   15f90:	00080493          	mv	s1,a6
   15f94:	00000a13          	li	s4,0
   15f98:	e8dff06f          	j	15e24 <_dtoa_r+0x6e4>
   15f9c:	000d049b          	sext.w	s1,s10
   15fa0:	40d787bb          	subw	a5,a5,a3
   15fa4:	00f494bb          	sllw	s1,s1,a5
   15fa8:	959ff06f          	j	15900 <_dtoa_r+0x1c0>
   15fac:	02012823          	sw	zero,48(sp)
   15fb0:	9f9ff06f          	j	159a8 <_dtoa_r+0x268>
   15fb4:	00100793          	li	a5,1
   15fb8:	0737d4e3          	ble	s3,a5,16820 <_dtoa_r+0x10e0>
   15fbc:	02012023          	sw	zero,32(sp)
   15fc0:	00078513          	mv	a0,a5
   15fc4:	01b507bb          	addw	a5,a0,s11
   15fc8:	01f7f793          	andi	a5,a5,31
   15fcc:	1a078663          	beqz	a5,16178 <_dtoa_r+0xa38>
   15fd0:	02000693          	li	a3,32
   15fd4:	40f686bb          	subw	a3,a3,a5
   15fd8:	00400613          	li	a2,4
   15fdc:	04d658e3          	ble	a3,a2,1682c <_dtoa_r+0x10ec>
   15fe0:	01c00693          	li	a3,28
   15fe4:	40f687bb          	subw	a5,a3,a5
   15fe8:	00f8083b          	addw	a6,a6,a5
   15fec:	00f484bb          	addw	s1,s1,a5
   15ff0:	00fd8dbb          	addw	s11,s11,a5
   15ff4:	01005c63          	blez	a6,1600c <_dtoa_r+0x8cc>
   15ff8:	00090593          	mv	a1,s2
   15ffc:	00080613          	mv	a2,a6
   16000:	00040513          	mv	a0,s0
   16004:	2c5020ef          	jal	18ac8 <__lshift>
   16008:	00050913          	mv	s2,a0
   1600c:	01b05c63          	blez	s11,16024 <_dtoa_r+0x8e4>
   16010:	000c0593          	mv	a1,s8
   16014:	000d8613          	mv	a2,s11
   16018:	00040513          	mv	a0,s0
   1601c:	2ad020ef          	jal	18ac8 <__lshift>
   16020:	00050c13          	mv	s8,a0
   16024:	03012783          	lw	a5,48(sp)
   16028:	22079663          	bnez	a5,16254 <_dtoa_r+0xb14>
   1602c:	3f505e63          	blez	s5,16428 <_dtoa_r+0xce8>
   16030:	01012783          	lw	a5,16(sp)
   16034:	14078c63          	beqz	a5,1618c <_dtoa_r+0xa4c>
   16038:	00905c63          	blez	s1,16050 <_dtoa_r+0x910>
   1603c:	000a0593          	mv	a1,s4
   16040:	00048613          	mv	a2,s1
   16044:	00040513          	mv	a0,s0
   16048:	281020ef          	jal	18ac8 <__lshift>
   1604c:	00050a13          	mv	s4,a0
   16050:	02012783          	lw	a5,32(sp)
   16054:	000a0d93          	mv	s11,s4
   16058:	5a079463          	bnez	a5,16600 <_dtoa_r+0xec0>
   1605c:	fffa849b          	addiw	s1,s5,-1
   16060:	00813783          	ld	a5,8(sp)
   16064:	02049493          	slli	s1,s1,0x20
   16068:	0204d493          	srli	s1,s1,0x20
   1606c:	00148493          	addi	s1,s1,1
   16070:	009784b3          	add	s1,a5,s1
   16074:	00078c93          	mv	s9,a5
   16078:	001d7793          	andi	a5,s10,1
   1607c:	00f13823          	sd	a5,16(sp)
   16080:	000c0593          	mv	a1,s8
   16084:	00090513          	mv	a0,s2
   16088:	cccff0ef          	jal	15554 <quorem>
   1608c:	00050d13          	mv	s10,a0
   16090:	02a12823          	sw	a0,48(sp)
   16094:	000a0593          	mv	a1,s4
   16098:	00090513          	mv	a0,s2
   1609c:	38d020ef          	jal	18c28 <__mcmp>
   160a0:	00050a93          	mv	s5,a0
   160a4:	000d8613          	mv	a2,s11
   160a8:	000c0593          	mv	a1,s8
   160ac:	00040513          	mv	a0,s0
   160b0:	3d9020ef          	jal	18c88 <__mdiff>
   160b4:	01052683          	lw	a3,16(a0)
   160b8:	00050793          	mv	a5,a0
   160bc:	030d0d1b          	addiw	s10,s10,48
   160c0:	00100713          	li	a4,1
   160c4:	00069e63          	bnez	a3,160e0 <_dtoa_r+0x9a0>
   160c8:	00050593          	mv	a1,a0
   160cc:	02a13023          	sd	a0,32(sp)
   160d0:	00090513          	mv	a0,s2
   160d4:	355020ef          	jal	18c28 <__mcmp>
   160d8:	02013783          	ld	a5,32(sp)
   160dc:	00050713          	mv	a4,a0
   160e0:	00078593          	mv	a1,a5
   160e4:	00040513          	mv	a0,s0
   160e8:	02e13023          	sd	a4,32(sp)
   160ec:	2f0020ef          	jal	183dc <_Bfree>
   160f0:	02013703          	ld	a4,32(sp)
   160f4:	013767b3          	or	a5,a4,s3
   160f8:	00079663          	bnez	a5,16104 <_dtoa_r+0x9c4>
   160fc:	01012783          	lw	a5,16(sp)
   16100:	24078063          	beqz	a5,16340 <_dtoa_r+0xc00>
   16104:	260ac463          	bltz	s5,1636c <_dtoa_r+0xc2c>
   16108:	013aeab3          	or	s5,s5,s3
   1610c:	000a9663          	bnez	s5,16118 <_dtoa_r+0x9d8>
   16110:	01012783          	lw	a5,16(sp)
   16114:	24078c63          	beqz	a5,1636c <_dtoa_r+0xc2c>
   16118:	5ee04263          	bgtz	a4,166fc <_dtoa_r+0xfbc>
   1611c:	001c8c93          	addi	s9,s9,1
   16120:	ffac8fa3          	sb	s10,-1(s9)
   16124:	5f948463          	beq	s1,s9,1670c <_dtoa_r+0xfcc>
   16128:	00090593          	mv	a1,s2
   1612c:	00000693          	li	a3,0
   16130:	00a00613          	li	a2,10
   16134:	00040513          	mv	a0,s0
   16138:	2c8020ef          	jal	18400 <__multadd>
   1613c:	00050913          	mv	s2,a0
   16140:	00000693          	li	a3,0
   16144:	00a00613          	li	a2,10
   16148:	000a0593          	mv	a1,s4
   1614c:	00040513          	mv	a0,s0
   16150:	27ba0463          	beq	s4,s11,163b8 <_dtoa_r+0xc78>
   16154:	2ac020ef          	jal	18400 <__multadd>
   16158:	000d8593          	mv	a1,s11
   1615c:	00050a13          	mv	s4,a0
   16160:	00000693          	li	a3,0
   16164:	00a00613          	li	a2,10
   16168:	00040513          	mv	a0,s0
   1616c:	294020ef          	jal	18400 <__multadd>
   16170:	00050d93          	mv	s11,a0
   16174:	f0dff06f          	j	16080 <_dtoa_r+0x940>
   16178:	01c00793          	li	a5,28
   1617c:	00f8083b          	addw	a6,a6,a5
   16180:	00f484bb          	addw	s1,s1,a5
   16184:	00fd8dbb          	addw	s11,s11,a5
   16188:	e6dff06f          	j	15ff4 <_dtoa_r+0x8b4>
   1618c:	00813483          	ld	s1,8(sp)
   16190:	00100993          	li	s3,1
   16194:	0100006f          	j	161a4 <_dtoa_r+0xa64>
   16198:	268020ef          	jal	18400 <__multadd>
   1619c:	00050913          	mv	s2,a0
   161a0:	0019899b          	addiw	s3,s3,1
   161a4:	000c0593          	mv	a1,s8
   161a8:	00090513          	mv	a0,s2
   161ac:	ba8ff0ef          	jal	15554 <quorem>
   161b0:	03050d1b          	addiw	s10,a0,48
   161b4:	00148493          	addi	s1,s1,1
   161b8:	ffa48fa3          	sb	s10,-1(s1)
   161bc:	00000693          	li	a3,0
   161c0:	00a00613          	li	a2,10
   161c4:	00090593          	mv	a1,s2
   161c8:	00040513          	mv	a0,s0
   161cc:	fd59c6e3          	blt	s3,s5,16198 <_dtoa_r+0xa58>
   161d0:	00000993          	li	s3,0
   161d4:	00090593          	mv	a1,s2
   161d8:	00100613          	li	a2,1
   161dc:	00040513          	mv	a0,s0
   161e0:	0e9020ef          	jal	18ac8 <__lshift>
   161e4:	000c0593          	mv	a1,s8
   161e8:	02a13023          	sd	a0,32(sp)
   161ec:	23d020ef          	jal	18c28 <__mcmp>
   161f0:	34a05463          	blez	a0,16538 <_dtoa_r+0xdf8>
   161f4:	fff4c703          	lbu	a4,-1(s1)
   161f8:	03900693          	li	a3,57
   161fc:	0140006f          	j	16210 <_dtoa_r+0xad0>
   16200:	00813703          	ld	a4,8(sp)
   16204:	26e78a63          	beq	a5,a4,16478 <_dtoa_r+0xd38>
   16208:	fff7c703          	lbu	a4,-1(a5)
   1620c:	00078493          	mv	s1,a5
   16210:	fff48793          	addi	a5,s1,-1
   16214:	fed706e3          	beq	a4,a3,16200 <_dtoa_r+0xac0>
   16218:	0017071b          	addiw	a4,a4,1
   1621c:	00e78023          	sb	a4,0(a5)
   16220:	000c0593          	mv	a1,s8
   16224:	00040513          	mv	a0,s0
   16228:	1b4020ef          	jal	183dc <_Bfree>
   1622c:	9e0a0ae3          	beqz	s4,15c20 <_dtoa_r+0x4e0>
   16230:	00098a63          	beqz	s3,16244 <_dtoa_r+0xb04>
   16234:	01498863          	beq	s3,s4,16244 <_dtoa_r+0xb04>
   16238:	00098593          	mv	a1,s3
   1623c:	00040513          	mv	a0,s0
   16240:	19c020ef          	jal	183dc <_Bfree>
   16244:	000a0593          	mv	a1,s4
   16248:	00040513          	mv	a0,s0
   1624c:	190020ef          	jal	183dc <_Bfree>
   16250:	9d1ff06f          	j	15c20 <_dtoa_r+0x4e0>
   16254:	000c0593          	mv	a1,s8
   16258:	00090513          	mv	a0,s2
   1625c:	1cd020ef          	jal	18c28 <__mcmp>
   16260:	dc0556e3          	bgez	a0,1602c <_dtoa_r+0x8ec>
   16264:	00090593          	mv	a1,s2
   16268:	00000693          	li	a3,0
   1626c:	00a00613          	li	a2,10
   16270:	00040513          	mv	a0,s0
   16274:	18c020ef          	jal	18400 <__multadd>
   16278:	01012783          	lw	a5,16(sp)
   1627c:	00050913          	mv	s2,a0
   16280:	fffb8b9b          	addiw	s7,s7,-1
   16284:	56079063          	bnez	a5,167e4 <_dtoa_r+0x10a4>
   16288:	03412783          	lw	a5,52(sp)
   1628c:	00078a93          	mv	s5,a5
   16290:	eef04ee3          	bgtz	a5,1618c <_dtoa_r+0xa4c>
   16294:	00200793          	li	a5,2
   16298:	5937c063          	blt	a5,s3,16818 <_dtoa_r+0x10d8>
   1629c:	000c0593          	mv	a1,s8
   162a0:	ab4ff0ef          	jal	15554 <quorem>
   162a4:	00813783          	ld	a5,8(sp)
   162a8:	03050d1b          	addiw	s10,a0,48
   162ac:	00178493          	addi	s1,a5,1
   162b0:	ffa48fa3          	sb	s10,-1(s1)
   162b4:	f1dff06f          	j	161d0 <_dtoa_r+0xa90>
   162b8:	000d8793          	mv	a5,s11
   162bc:	b79ff06f          	j	15e34 <_dtoa_r+0x6f4>
   162c0:	02012023          	sw	zero,32(sp)
   162c4:	c75ff06f          	j	15f38 <_dtoa_r+0x7f8>
   162c8:	00100793          	li	a5,1
   162cc:	00f12823          	sw	a5,16(sp)
   162d0:	0f905c63          	blez	s9,163c8 <_dtoa_r+0xc88>
   162d4:	000c8513          	mv	a0,s9
   162d8:	000c8493          	mv	s1,s9
   162dc:	03912a23          	sw	s9,52(sp)
   162e0:	000c8a93          	mv	s5,s9
   162e4:	f3cff06f          	j	15a20 <_dtoa_r+0x2e0>
   162e8:	a1504ce3          	bgtz	s5,15d00 <_dtoa_r+0x5c0>
   162ec:	1e0a9e63          	bnez	s5,164e8 <_dtoa_r+0xda8>
   162f0:	000257b7          	lui	a5,0x25
   162f4:	a587b787          	fld	fa5,-1448(a5) # 24a58 <mask+0x40>
   162f8:	00000c13          	li	s8,0
   162fc:	00000a13          	li	s4,0
   16300:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   16304:	f20d07d3          	fmv.d.x	fa5,s10
   16308:	a2d78753          	fle.d	a4,fa5,fa3
   1630c:	14070a63          	beqz	a4,16460 <_dtoa_r+0xd20>
   16310:	00813483          	ld	s1,8(sp)
   16314:	fffccb93          	not	s7,s9
   16318:	000c0593          	mv	a1,s8
   1631c:	00040513          	mv	a0,s0
   16320:	0bc020ef          	jal	183dc <_Bfree>
   16324:	8e0a0ee3          	beqz	s4,15c20 <_dtoa_r+0x4e0>
   16328:	f1dff06f          	j	16244 <_dtoa_r+0xb04>
   1632c:	3e090c63          	beqz	s2,16724 <_dtoa_r+0xfe4>
   16330:	4337879b          	addiw	a5,a5,1075
   16334:	000c0693          	mv	a3,s8
   16338:	00080493          	mv	s1,a6
   1633c:	abdff06f          	j	15df8 <_dtoa_r+0x6b8>
   16340:	03900793          	li	a5,57
   16344:	04fd0a63          	beq	s10,a5,16398 <_dtoa_r+0xc58>
   16348:	01505663          	blez	s5,16354 <_dtoa_r+0xc14>
   1634c:	03012783          	lw	a5,48(sp)
   16350:	03178d1b          	addiw	s10,a5,49
   16354:	000a0993          	mv	s3,s4
   16358:	001c8493          	addi	s1,s9,1
   1635c:	01ac8023          	sb	s10,0(s9)
   16360:	000d8a13          	mv	s4,s11
   16364:	03213023          	sd	s2,32(sp)
   16368:	eb9ff06f          	j	16220 <_dtoa_r+0xae0>
   1636c:	fee054e3          	blez	a4,16354 <_dtoa_r+0xc14>
   16370:	00090593          	mv	a1,s2
   16374:	00100613          	li	a2,1
   16378:	00040513          	mv	a0,s0
   1637c:	74c020ef          	jal	18ac8 <__lshift>
   16380:	000c0593          	mv	a1,s8
   16384:	00050913          	mv	s2,a0
   16388:	0a1020ef          	jal	18c28 <__mcmp>
   1638c:	44a05063          	blez	a0,167cc <_dtoa_r+0x108c>
   16390:	03900793          	li	a5,57
   16394:	fafd1ce3          	bne	s10,a5,1634c <_dtoa_r+0xc0c>
   16398:	03900793          	li	a5,57
   1639c:	000a0993          	mv	s3,s4
   163a0:	001c8493          	addi	s1,s9,1
   163a4:	00fc8023          	sb	a5,0(s9)
   163a8:	000d8a13          	mv	s4,s11
   163ac:	03213023          	sd	s2,32(sp)
   163b0:	03900713          	li	a4,57
   163b4:	e45ff06f          	j	161f8 <_dtoa_r+0xab8>
   163b8:	048020ef          	jal	18400 <__multadd>
   163bc:	00050a13          	mv	s4,a0
   163c0:	00050d93          	mv	s11,a0
   163c4:	cbdff06f          	j	16080 <_dtoa_r+0x940>
   163c8:	00100493          	li	s1,1
   163cc:	02912a23          	sw	s1,52(sp)
   163d0:	00048a93          	mv	s5,s1
   163d4:	00048c93          	mv	s9,s1
   163d8:	06042423          	sw	zero,104(s0)
   163dc:	00000593          	li	a1,0
   163e0:	e74ff06f          	j	15a54 <_dtoa_r+0x314>
   163e4:	00012823          	sw	zero,16(sp)
   163e8:	00200793          	li	a5,2
   163ec:	eef982e3          	beq	s3,a5,162d0 <_dtoa_r+0xb90>
   163f0:	06042423          	sw	zero,104(s0)
   163f4:	00000593          	li	a1,0
   163f8:	00040513          	mv	a0,s0
   163fc:	03013c23          	sd	a6,56(sp)
   16400:	731010ef          	jal	18330 <_Balloc>
   16404:	fff00a93          	li	s5,-1
   16408:	00100793          	li	a5,1
   1640c:	00a13423          	sd	a0,8(sp)
   16410:	06a43023          	sd	a0,96(s0)
   16414:	03512a23          	sw	s5,52(sp)
   16418:	00000c93          	li	s9,0
   1641c:	00f12823          	sw	a5,16(sp)
   16420:	03813803          	ld	a6,56(sp)
   16424:	8b5ff06f          	j	15cd8 <_dtoa_r+0x598>
   16428:	00200793          	li	a5,2
   1642c:	c137d2e3          	ble	s3,a5,16030 <_dtoa_r+0x8f0>
   16430:	300a9663          	bnez	s5,1673c <_dtoa_r+0xffc>
   16434:	000c0593          	mv	a1,s8
   16438:	00000693          	li	a3,0
   1643c:	00500613          	li	a2,5
   16440:	00040513          	mv	a0,s0
   16444:	7bd010ef          	jal	18400 <__multadd>
   16448:	00050593          	mv	a1,a0
   1644c:	00050c13          	mv	s8,a0
   16450:	00090513          	mv	a0,s2
   16454:	7d4020ef          	jal	18c28 <__mcmp>
   16458:	03213023          	sd	s2,32(sp)
   1645c:	eaa05ae3          	blez	a0,16310 <_dtoa_r+0xbd0>
   16460:	00813703          	ld	a4,8(sp)
   16464:	03100793          	li	a5,49
   16468:	001b8b9b          	addiw	s7,s7,1
   1646c:	00170493          	addi	s1,a4,1
   16470:	00f70023          	sb	a5,0(a4)
   16474:	ea5ff06f          	j	16318 <_dtoa_r+0xbd8>
   16478:	00813703          	ld	a4,8(sp)
   1647c:	03100793          	li	a5,49
   16480:	001b8b9b          	addiw	s7,s7,1
   16484:	00f70023          	sb	a5,0(a4)
   16488:	d99ff06f          	j	16220 <_dtoa_r+0xae0>
   1648c:	00012823          	sw	zero,16(sp)
   16490:	d78ff06f          	j	15a08 <_dtoa_r+0x2c8>
   16494:	000257b7          	lui	a5,0x25
   16498:	d20706d3          	fcvt.d.w	fa3,a4
   1649c:	a507b707          	fld	fa4,-1456(a5) # 24a50 <mask+0x38>
   164a0:	fcc006b7          	lui	a3,0xfcc00
   164a4:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   164a8:	e2070753          	fmv.x.d	a4,fa4
   164ac:	42075793          	srai	a5,a4,0x20
   164b0:	00d787bb          	addw	a5,a5,a3
   164b4:	02071713          	slli	a4,a4,0x20
   164b8:	02079793          	slli	a5,a5,0x20
   164bc:	02075713          	srli	a4,a4,0x20
   164c0:	00f76733          	or	a4,a4,a5
   164c4:	000257b7          	lui	a5,0x25
   164c8:	a587b707          	fld	fa4,-1448(a5) # 24a58 <mask+0x40>
   164cc:	f20706d3          	fmv.d.x	fa3,a4
   164d0:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   164d4:	a2f697d3          	flt.d	a5,fa3,fa5
   164d8:	16079463          	bnez	a5,16640 <_dtoa_r+0xf00>
   164dc:	22d69753          	fneg.d	fa4,fa3
   164e0:	a2e797d3          	flt.d	a5,fa5,fa4
   164e4:	06078e63          	beqz	a5,16560 <_dtoa_r+0xe20>
   164e8:	00000c13          	li	s8,0
   164ec:	00000a13          	li	s4,0
   164f0:	e21ff06f          	j	16310 <_dtoa_r+0xbd0>
   164f4:	00090593          	mv	a1,s2
   164f8:	000c0613          	mv	a2,s8
   164fc:	00040513          	mv	a0,s0
   16500:	03013023          	sd	a6,32(sp)
   16504:	48c020ef          	jal	18990 <__pow5mult>
   16508:	00050913          	mv	s2,a0
   1650c:	02013803          	ld	a6,32(sp)
   16510:	9b1ff06f          	j	15ec0 <_dtoa_r+0x780>
   16514:	00813503          	ld	a0,8(sp)
   16518:	af4ff06f          	j	1580c <_dtoa_r+0xcc>
   1651c:	02812783          	lw	a5,40(sp)
   16520:	41868c3b          	subw	s8,a3,s8
   16524:	018787bb          	addw	a5,a5,s8
   16528:	02f12423          	sw	a5,40(sp)
   1652c:	00068c13          	mv	s8,a3
   16530:	00000693          	li	a3,0
   16534:	8b9ff06f          	j	15dec <_dtoa_r+0x6ac>
   16538:	00051663          	bnez	a0,16544 <_dtoa_r+0xe04>
   1653c:	001d7d13          	andi	s10,s10,1
   16540:	ca0d1ae3          	bnez	s10,161f4 <_dtoa_r+0xab4>
   16544:	03000693          	li	a3,48
   16548:	0080006f          	j	16550 <_dtoa_r+0xe10>
   1654c:	00070493          	mv	s1,a4
   16550:	fff4c783          	lbu	a5,-1(s1)
   16554:	fff48713          	addi	a4,s1,-1
   16558:	fed78ae3          	beq	a5,a3,1654c <_dtoa_r+0xe0c>
   1655c:	cc5ff06f          	j	16220 <_dtoa_r+0xae0>
   16560:	03813d03          	ld	s10,56(sp)
   16564:	f74ff06f          	j	15cd8 <_dtoa_r+0x598>
   16568:	a2f6a753          	feq.d	a4,fa3,fa5
   1656c:	00068493          	mv	s1,a3
   16570:	ea070863          	beqz	a4,15c20 <_dtoa_r+0x4e0>
   16574:	0017f793          	andi	a5,a5,1
   16578:	ea078463          	beqz	a5,15c20 <_dtoa_r+0x4e0>
   1657c:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_end+0xfffffffffcbd8c87>
   16580:	825ff06f          	j	15da4 <_dtoa_r+0x664>
   16584:	417007bb          	negw	a5,s7
   16588:	03813787          	fld	fa5,56(sp)
   1658c:	00200713          	li	a4,2
   16590:	d6078063          	beqz	a5,15af0 <_dtoa_r+0x3b0>
   16594:	00f7f693          	andi	a3,a5,15
   16598:	00022637          	lui	a2,0x22
   1659c:	00369693          	slli	a3,a3,0x3
   165a0:	a7860613          	addi	a2,a2,-1416 # 21a78 <__mprec_tens>
   165a4:	00c686b3          	add	a3,a3,a2
   165a8:	0006b787          	fld	fa5,0(a3)
   165ac:	03813707          	fld	fa4,56(sp)
   165b0:	4047d79b          	sraiw	a5,a5,0x4
   165b4:	12f777d3          	fmul.d	fa5,fa4,fa5
   165b8:	d2078c63          	beqz	a5,15af0 <_dtoa_r+0x3b0>
   165bc:	000226b7          	lui	a3,0x22
   165c0:	b6868693          	addi	a3,a3,-1176 # 21b68 <__mprec_bigtens>
   165c4:	0017f613          	andi	a2,a5,1
   165c8:	4017d79b          	sraiw	a5,a5,0x1
   165cc:	00060863          	beqz	a2,165dc <_dtoa_r+0xe9c>
   165d0:	0006b707          	fld	fa4,0(a3)
   165d4:	0017071b          	addiw	a4,a4,1
   165d8:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   165dc:	00868693          	addi	a3,a3,8
   165e0:	fe0792e3          	bnez	a5,165c4 <_dtoa_r+0xe84>
   165e4:	d0cff06f          	j	15af0 <_dtoa_r+0x3b0>
   165e8:	00813683          	ld	a3,8(sp)
   165ec:	03000793          	li	a5,48
   165f0:	001b8b9b          	addiw	s7,s7,1
   165f4:	00f68023          	sb	a5,0(a3)
   165f8:	fff4c783          	lbu	a5,-1(s1)
   165fc:	fc8ff06f          	j	15dc4 <_dtoa_r+0x684>
   16600:	008a2583          	lw	a1,8(s4)
   16604:	00040513          	mv	a0,s0
   16608:	529010ef          	jal	18330 <_Balloc>
   1660c:	014a2603          	lw	a2,20(s4)
   16610:	00050493          	mv	s1,a0
   16614:	010a0593          	addi	a1,s4,16
   16618:	00260613          	addi	a2,a2,2
   1661c:	00261613          	slli	a2,a2,0x2
   16620:	01050513          	addi	a0,a0,16
   16624:	bccfb0ef          	jal	119f0 <memcpy>
   16628:	00100613          	li	a2,1
   1662c:	00048593          	mv	a1,s1
   16630:	00040513          	mv	a0,s0
   16634:	494020ef          	jal	18ac8 <__lshift>
   16638:	00050d93          	mv	s11,a0
   1663c:	a21ff06f          	j	1605c <_dtoa_r+0x91c>
   16640:	00000c13          	li	s8,0
   16644:	00000a13          	li	s4,0
   16648:	e19ff06f          	j	16460 <_dtoa_r+0xd20>
   1664c:	fff6079b          	addiw	a5,a2,-1
   16650:	00022537          	lui	a0,0x22
   16654:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   16658:	00379793          	slli	a5,a5,0x3
   1665c:	a7850513          	addi	a0,a0,-1416 # 21a78 <__mprec_tens>
   16660:	00a787b3          	add	a5,a5,a0
   16664:	0007b707          	fld	fa4,0(a5)
   16668:	00813783          	ld	a5,8(sp)
   1666c:	d20586d3          	fcvt.d.w	fa3,a1
   16670:	f2070653          	fmv.d.x	fa2,a4
   16674:	0305859b          	addiw	a1,a1,48
   16678:	00b78023          	sb	a1,0(a5)
   1667c:	00178493          	addi	s1,a5,1
   16680:	00100793          	li	a5,1
   16684:	12c77653          	fmul.d	fa2,fa4,fa2
   16688:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   1668c:	04f60863          	beq	a2,a5,166dc <_dtoa_r+0xf9c>
   16690:	ffe6061b          	addiw	a2,a2,-2
   16694:	000257b7          	lui	a5,0x25
   16698:	02061593          	slli	a1,a2,0x20
   1669c:	a487b687          	fld	fa3,-1464(a5) # 24a48 <mask+0x30>
   166a0:	00813783          	ld	a5,8(sp)
   166a4:	0205d593          	srli	a1,a1,0x20
   166a8:	00258513          	addi	a0,a1,2
   166ac:	00a78533          	add	a0,a5,a0
   166b0:	00048613          	mv	a2,s1
   166b4:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   166b8:	00160613          	addi	a2,a2,1
   166bc:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   166c0:	d2078753          	fcvt.d.w	fa4,a5
   166c4:	0307879b          	addiw	a5,a5,48
   166c8:	fef60fa3          	sb	a5,-1(a2)
   166cc:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   166d0:	fea612e3          	bne	a2,a0,166b4 <_dtoa_r+0xf74>
   166d4:	00158593          	addi	a1,a1,1
   166d8:	00b484b3          	add	s1,s1,a1
   166dc:	000257b7          	lui	a5,0x25
   166e0:	a607b707          	fld	fa4,-1440(a5) # 24a60 <mask+0x48>
   166e4:	02e676d3          	fadd.d	fa3,fa2,fa4
   166e8:	a2f697d3          	flt.d	a5,fa3,fa5
   166ec:	0a078663          	beqz	a5,16798 <_dtoa_r+0x1058>
   166f0:	fff4c783          	lbu	a5,-1(s1)
   166f4:	00068b93          	mv	s7,a3
   166f8:	eacff06f          	j	15da4 <_dtoa_r+0x664>
   166fc:	03900793          	li	a5,57
   16700:	c8fd0ce3          	beq	s10,a5,16398 <_dtoa_r+0xc58>
   16704:	001d0d1b          	addiw	s10,s10,1
   16708:	c4dff06f          	j	16354 <_dtoa_r+0xc14>
   1670c:	000a0993          	mv	s3,s4
   16710:	000d8a13          	mv	s4,s11
   16714:	ac1ff06f          	j	161d4 <_dtoa_r+0xa94>
   16718:	415804bb          	subw	s1,a6,s5
   1671c:	00000793          	li	a5,0
   16720:	ed8ff06f          	j	15df8 <_dtoa_r+0x6b8>
   16724:	05812603          	lw	a2,88(sp)
   16728:	03600793          	li	a5,54
   1672c:	000c0693          	mv	a3,s8
   16730:	40c787bb          	subw	a5,a5,a2
   16734:	00080493          	mv	s1,a6
   16738:	ec0ff06f          	j	15df8 <_dtoa_r+0x6b8>
   1673c:	03213023          	sd	s2,32(sp)
   16740:	bd1ff06f          	j	16310 <_dtoa_r+0xbd0>
   16744:	d40a88e3          	beqz	s5,16494 <_dtoa_r+0xd54>
   16748:	03412603          	lw	a2,52(sp)
   1674c:	e0c05ae3          	blez	a2,16560 <_dtoa_r+0xe20>
   16750:	000257b7          	lui	a5,0x25
   16754:	a487b707          	fld	fa4,-1464(a5) # 24a48 <mask+0x30>
   16758:	0017071b          	addiw	a4,a4,1
   1675c:	000257b7          	lui	a5,0x25
   16760:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   16764:	d20706d3          	fcvt.d.w	fa3,a4
   16768:	a507b707          	fld	fa4,-1456(a5) # 24a50 <mask+0x38>
   1676c:	fcc005b7          	lui	a1,0xfcc00
   16770:	fffb869b          	addiw	a3,s7,-1
   16774:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   16778:	e2070753          	fmv.x.d	a4,fa4
   1677c:	42075793          	srai	a5,a4,0x20
   16780:	00b787bb          	addw	a5,a5,a1
   16784:	02071713          	slli	a4,a4,0x20
   16788:	02079793          	slli	a5,a5,0x20
   1678c:	02075713          	srli	a4,a4,0x20
   16790:	00f76733          	or	a4,a4,a5
   16794:	bb0ff06f          	j	15b44 <_dtoa_r+0x404>
   16798:	0ac77753          	fsub.d	fa4,fa4,fa2
   1679c:	03000613          	li	a2,48
   167a0:	a2e797d3          	flt.d	a5,fa5,fa4
   167a4:	00079663          	bnez	a5,167b0 <_dtoa_r+0x1070>
   167a8:	db9ff06f          	j	16560 <_dtoa_r+0xe20>
   167ac:	00070493          	mv	s1,a4
   167b0:	fff4c783          	lbu	a5,-1(s1)
   167b4:	fff48713          	addi	a4,s1,-1
   167b8:	fec78ae3          	beq	a5,a2,167ac <_dtoa_r+0x106c>
   167bc:	00068b93          	mv	s7,a3
   167c0:	c60ff06f          	j	15c20 <_dtoa_r+0x4e0>
   167c4:	00068b93          	mv	s7,a3
   167c8:	ddcff06f          	j	15da4 <_dtoa_r+0x664>
   167cc:	b80514e3          	bnez	a0,16354 <_dtoa_r+0xc14>
   167d0:	001d7793          	andi	a5,s10,1
   167d4:	b80780e3          	beqz	a5,16354 <_dtoa_r+0xc14>
   167d8:	bb9ff06f          	j	16390 <_dtoa_r+0xc50>
   167dc:	00048693          	mv	a3,s1
   167e0:	db0ff06f          	j	15d90 <_dtoa_r+0x650>
   167e4:	000a0593          	mv	a1,s4
   167e8:	00000693          	li	a3,0
   167ec:	00a00613          	li	a2,10
   167f0:	00040513          	mv	a0,s0
   167f4:	40d010ef          	jal	18400 <__multadd>
   167f8:	03412783          	lw	a5,52(sp)
   167fc:	00050a13          	mv	s4,a0
   16800:	00078a93          	mv	s5,a5
   16804:	82f04ae3          	bgtz	a5,16038 <_dtoa_r+0x8f8>
   16808:	00200793          	li	a5,2
   1680c:	0137c663          	blt	a5,s3,16818 <_dtoa_r+0x10d8>
   16810:	03412a83          	lw	s5,52(sp)
   16814:	825ff06f          	j	16038 <_dtoa_r+0x8f8>
   16818:	03412a83          	lw	s5,52(sp)
   1681c:	c15ff06f          	j	16430 <_dtoa_r+0xcf0>
   16820:	00cd1713          	slli	a4,s10,0xc
   16824:	ee070263          	beqz	a4,15f08 <_dtoa_r+0x7c8>
   16828:	f94ff06f          	j	15fbc <_dtoa_r+0x87c>
   1682c:	fcc68463          	beq	a3,a2,15ff4 <_dtoa_r+0x8b4>
   16830:	03c00693          	li	a3,60
   16834:	40f687bb          	subw	a5,a3,a5
   16838:	945ff06f          	j	1617c <_dtoa_r+0xa3c>

000000000001683c <__sflush_r>:
   1683c:	01059683          	lh	a3,16(a1) # fffffffffcc00010 <_end+0xfffffffffcbd8c98>
   16840:	fd010113          	addi	sp,sp,-48
   16844:	00913c23          	sd	s1,24(sp)
   16848:	03069713          	slli	a4,a3,0x30
   1684c:	03075713          	srli	a4,a4,0x30
   16850:	01313423          	sd	s3,8(sp)
   16854:	02113423          	sd	ra,40(sp)
   16858:	02813023          	sd	s0,32(sp)
   1685c:	01213823          	sd	s2,16(sp)
   16860:	00877793          	andi	a5,a4,8
   16864:	00058493          	mv	s1,a1
   16868:	00050993          	mv	s3,a0
   1686c:	0e079863          	bnez	a5,1695c <__sflush_r+0x120>
   16870:	000017b7          	lui	a5,0x1
   16874:	8007879b          	addiw	a5,a5,-2048
   16878:	00f6e7b3          	or	a5,a3,a5
   1687c:	0107979b          	slliw	a5,a5,0x10
   16880:	0085a703          	lw	a4,8(a1)
   16884:	4107d79b          	sraiw	a5,a5,0x10
   16888:	00f59823          	sh	a5,16(a1)
   1688c:	1ae05863          	blez	a4,16a3c <__sflush_r+0x200>
   16890:	0484b703          	ld	a4,72(s1)
   16894:	0a070463          	beqz	a4,1693c <__sflush_r+0x100>
   16898:	03079793          	slli	a5,a5,0x30
   1689c:	0307d793          	srli	a5,a5,0x30
   168a0:	0009a403          	lw	s0,0(s3)
   168a4:	03379693          	slli	a3,a5,0x33
   168a8:	0009a023          	sw	zero,0(s3)
   168ac:	1806de63          	bgez	a3,16a48 <__sflush_r+0x20c>
   168b0:	0904b603          	ld	a2,144(s1)
   168b4:	0047f793          	andi	a5,a5,4
   168b8:	00078e63          	beqz	a5,168d4 <__sflush_r+0x98>
   168bc:	0084a683          	lw	a3,8(s1)
   168c0:	0584b783          	ld	a5,88(s1)
   168c4:	40d60633          	sub	a2,a2,a3
   168c8:	00078663          	beqz	a5,168d4 <__sflush_r+0x98>
   168cc:	0704a783          	lw	a5,112(s1)
   168d0:	40f60633          	sub	a2,a2,a5
   168d4:	0304b583          	ld	a1,48(s1)
   168d8:	00000693          	li	a3,0
   168dc:	00098513          	mv	a0,s3
   168e0:	000700e7          	jalr	a4
   168e4:	fff00793          	li	a5,-1
   168e8:	0ef50c63          	beq	a0,a5,169e0 <__sflush_r+0x1a4>
   168ec:	0104d683          	lhu	a3,16(s1)
   168f0:	fffff7b7          	lui	a5,0xfffff
   168f4:	7ff7879b          	addiw	a5,a5,2047
   168f8:	0184b703          	ld	a4,24(s1)
   168fc:	00f6f7b3          	and	a5,a3,a5
   16900:	0107979b          	slliw	a5,a5,0x10
   16904:	4107d79b          	sraiw	a5,a5,0x10
   16908:	00e4b023          	sd	a4,0(s1)
   1690c:	00f49823          	sh	a5,16(s1)
   16910:	0004a423          	sw	zero,8(s1)
   16914:	03379713          	slli	a4,a5,0x33
   16918:	10074e63          	bltz	a4,16a34 <__sflush_r+0x1f8>
   1691c:	0584b583          	ld	a1,88(s1)
   16920:	0089a023          	sw	s0,0(s3)
   16924:	00058c63          	beqz	a1,1693c <__sflush_r+0x100>
   16928:	07448793          	addi	a5,s1,116
   1692c:	00f58663          	beq	a1,a5,16938 <__sflush_r+0xfc>
   16930:	00098513          	mv	a0,s3
   16934:	0e5000ef          	jal	17218 <_free_r>
   16938:	0404bc23          	sd	zero,88(s1)
   1693c:	00000513          	li	a0,0
   16940:	02813083          	ld	ra,40(sp)
   16944:	02013403          	ld	s0,32(sp)
   16948:	01813483          	ld	s1,24(sp)
   1694c:	01013903          	ld	s2,16(sp)
   16950:	00813983          	ld	s3,8(sp)
   16954:	03010113          	addi	sp,sp,48
   16958:	00008067          	ret
   1695c:	0185b903          	ld	s2,24(a1)
   16960:	fc090ee3          	beqz	s2,1693c <__sflush_r+0x100>
   16964:	0005b403          	ld	s0,0(a1)
   16968:	00377713          	andi	a4,a4,3
   1696c:	0125b023          	sd	s2,0(a1)
   16970:	4124043b          	subw	s0,s0,s2
   16974:	00000793          	li	a5,0
   16978:	00071463          	bnez	a4,16980 <__sflush_r+0x144>
   1697c:	0205a783          	lw	a5,32(a1)
   16980:	00f4a623          	sw	a5,12(s1)
   16984:	00804863          	bgtz	s0,16994 <__sflush_r+0x158>
   16988:	fb5ff06f          	j	1693c <__sflush_r+0x100>
   1698c:	00a90933          	add	s2,s2,a0
   16990:	fa8056e3          	blez	s0,1693c <__sflush_r+0x100>
   16994:	0404b783          	ld	a5,64(s1)
   16998:	0304b583          	ld	a1,48(s1)
   1699c:	00040693          	mv	a3,s0
   169a0:	00090613          	mv	a2,s2
   169a4:	00098513          	mv	a0,s3
   169a8:	000780e7          	jalr	a5
   169ac:	40a4043b          	subw	s0,s0,a0
   169b0:	fca04ee3          	bgtz	a0,1698c <__sflush_r+0x150>
   169b4:	0104d783          	lhu	a5,16(s1)
   169b8:	02813083          	ld	ra,40(sp)
   169bc:	fff00513          	li	a0,-1
   169c0:	0407e793          	ori	a5,a5,64
   169c4:	00f49823          	sh	a5,16(s1)
   169c8:	02013403          	ld	s0,32(sp)
   169cc:	01813483          	ld	s1,24(sp)
   169d0:	01013903          	ld	s2,16(sp)
   169d4:	00813983          	ld	s3,8(sp)
   169d8:	03010113          	addi	sp,sp,48
   169dc:	00008067          	ret
   169e0:	0009a703          	lw	a4,0(s3)
   169e4:	01d00793          	li	a5,29
   169e8:	fce7e6e3          	bltu	a5,a4,169b4 <__sflush_r+0x178>
   169ec:	204007b7          	lui	a5,0x20400
   169f0:	00178793          	addi	a5,a5,1 # 20400001 <_end+0x203d8c89>
   169f4:	00e7d7b3          	srl	a5,a5,a4
   169f8:	0017f793          	andi	a5,a5,1
   169fc:	fa078ce3          	beqz	a5,169b4 <__sflush_r+0x178>
   16a00:	0104d603          	lhu	a2,16(s1)
   16a04:	fffff7b7          	lui	a5,0xfffff
   16a08:	7ff7879b          	addiw	a5,a5,2047
   16a0c:	0184b683          	ld	a3,24(s1)
   16a10:	00f677b3          	and	a5,a2,a5
   16a14:	0107979b          	slliw	a5,a5,0x10
   16a18:	4107d79b          	sraiw	a5,a5,0x10
   16a1c:	00d4b023          	sd	a3,0(s1)
   16a20:	00f49823          	sh	a5,16(s1)
   16a24:	0004a423          	sw	zero,8(s1)
   16a28:	03379693          	slli	a3,a5,0x33
   16a2c:	ee06d8e3          	bgez	a3,1691c <__sflush_r+0xe0>
   16a30:	ee0716e3          	bnez	a4,1691c <__sflush_r+0xe0>
   16a34:	08a4b823          	sd	a0,144(s1)
   16a38:	ee5ff06f          	j	1691c <__sflush_r+0xe0>
   16a3c:	0705a703          	lw	a4,112(a1)
   16a40:	e4e048e3          	bgtz	a4,16890 <__sflush_r+0x54>
   16a44:	ef9ff06f          	j	1693c <__sflush_r+0x100>
   16a48:	0304b583          	ld	a1,48(s1)
   16a4c:	00000613          	li	a2,0
   16a50:	00100693          	li	a3,1
   16a54:	00098513          	mv	a0,s3
   16a58:	000700e7          	jalr	a4
   16a5c:	fff00793          	li	a5,-1
   16a60:	00050613          	mv	a2,a0
   16a64:	00f50863          	beq	a0,a5,16a74 <__sflush_r+0x238>
   16a68:	0104d783          	lhu	a5,16(s1)
   16a6c:	0484b703          	ld	a4,72(s1)
   16a70:	e45ff06f          	j	168b4 <__sflush_r+0x78>
   16a74:	0009a783          	lw	a5,0(s3)
   16a78:	fe0788e3          	beqz	a5,16a68 <__sflush_r+0x22c>
   16a7c:	01d00713          	li	a4,29
   16a80:	00e78663          	beq	a5,a4,16a8c <__sflush_r+0x250>
   16a84:	01600713          	li	a4,22
   16a88:	00e79863          	bne	a5,a4,16a98 <__sflush_r+0x25c>
   16a8c:	0089a023          	sw	s0,0(s3)
   16a90:	00000513          	li	a0,0
   16a94:	eadff06f          	j	16940 <__sflush_r+0x104>
   16a98:	0104d783          	lhu	a5,16(s1)
   16a9c:	0407e793          	ori	a5,a5,64
   16aa0:	00f49823          	sh	a5,16(s1)
   16aa4:	e9dff06f          	j	16940 <__sflush_r+0x104>

0000000000016aa8 <_fflush_r>:
   16aa8:	fe010113          	addi	sp,sp,-32
   16aac:	00813823          	sd	s0,16(sp)
   16ab0:	00113c23          	sd	ra,24(sp)
   16ab4:	00050413          	mv	s0,a0
   16ab8:	00050663          	beqz	a0,16ac4 <_fflush_r+0x1c>
   16abc:	05052783          	lw	a5,80(a0)
   16ac0:	02078a63          	beqz	a5,16af4 <_fflush_r+0x4c>
   16ac4:	01059783          	lh	a5,16(a1)
   16ac8:	00079c63          	bnez	a5,16ae0 <_fflush_r+0x38>
   16acc:	01813083          	ld	ra,24(sp)
   16ad0:	00000513          	li	a0,0
   16ad4:	01013403          	ld	s0,16(sp)
   16ad8:	02010113          	addi	sp,sp,32
   16adc:	00008067          	ret
   16ae0:	00040513          	mv	a0,s0
   16ae4:	01813083          	ld	ra,24(sp)
   16ae8:	01013403          	ld	s0,16(sp)
   16aec:	02010113          	addi	sp,sp,32
   16af0:	d4dff06f          	j	1683c <__sflush_r>
   16af4:	00b13423          	sd	a1,8(sp)
   16af8:	35c000ef          	jal	16e54 <__sinit>
   16afc:	00813583          	ld	a1,8(sp)
   16b00:	fc5ff06f          	j	16ac4 <_fflush_r+0x1c>

0000000000016b04 <fflush>:
   16b04:	00050593          	mv	a1,a0
   16b08:	00050663          	beqz	a0,16b14 <fflush+0x10>
   16b0c:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   16b10:	f99ff06f          	j	16aa8 <_fflush_r>
   16b14:	8081b503          	ld	a0,-2040(gp) # 249d8 <_global_impure_ptr>
   16b18:	000175b7          	lui	a1,0x17
   16b1c:	aa858593          	addi	a1,a1,-1368 # 16aa8 <_fflush_r>
   16b20:	76d0006f          	j	17a8c <_fwalk_reent>

0000000000016b24 <__fp_unlock>:
   16b24:	00000513          	li	a0,0
   16b28:	00008067          	ret

0000000000016b2c <_cleanup_r>:
   16b2c:	0001e5b7          	lui	a1,0x1e
   16b30:	7d058593          	addi	a1,a1,2000 # 1e7d0 <_fclose_r>
   16b34:	7590006f          	j	17a8c <_fwalk_reent>

0000000000016b38 <__sinit.part.1>:
   16b38:	fc010113          	addi	sp,sp,-64
   16b3c:	000177b7          	lui	a5,0x17
   16b40:	02113c23          	sd	ra,56(sp)
   16b44:	02813823          	sd	s0,48(sp)
   16b48:	02913423          	sd	s1,40(sp)
   16b4c:	00853403          	ld	s0,8(a0)
   16b50:	03213023          	sd	s2,32(sp)
   16b54:	01313c23          	sd	s3,24(sp)
   16b58:	01413823          	sd	s4,16(sp)
   16b5c:	01513423          	sd	s5,8(sp)
   16b60:	01613023          	sd	s6,0(sp)
   16b64:	b2c78793          	addi	a5,a5,-1236 # 16b2c <_cleanup_r>
   16b68:	04f53c23          	sd	a5,88(a0)
   16b6c:	53850713          	addi	a4,a0,1336
   16b70:	00300793          	li	a5,3
   16b74:	52e53823          	sd	a4,1328(a0)
   16b78:	52f52423          	sw	a5,1320(a0)
   16b7c:	52053023          	sd	zero,1312(a0)
   16b80:	00400793          	li	a5,4
   16b84:	00050913          	mv	s2,a0
   16b88:	00f41823          	sh	a5,16(s0)
   16b8c:	00800613          	li	a2,8
   16b90:	00000593          	li	a1,0
   16b94:	00043023          	sd	zero,0(s0)
   16b98:	00042423          	sw	zero,8(s0)
   16b9c:	00042623          	sw	zero,12(s0)
   16ba0:	0a042623          	sw	zero,172(s0)
   16ba4:	00041923          	sh	zero,18(s0)
   16ba8:	00043c23          	sd	zero,24(s0)
   16bac:	02042023          	sw	zero,32(s0)
   16bb0:	02042423          	sw	zero,40(s0)
   16bb4:	0a440513          	addi	a0,s0,164
   16bb8:	69c010ef          	jal	18254 <memset>
   16bbc:	0001ab37          	lui	s6,0x1a
   16bc0:	01093483          	ld	s1,16(s2)
   16bc4:	0001aab7          	lui	s5,0x1a
   16bc8:	0001aa37          	lui	s4,0x1a
   16bcc:	0001a9b7          	lui	s3,0x1a
   16bd0:	d9cb0b13          	addi	s6,s6,-612 # 19d9c <__sread>
   16bd4:	e08a8a93          	addi	s5,s5,-504 # 19e08 <__swrite>
   16bd8:	e78a0a13          	addi	s4,s4,-392 # 19e78 <__sseek>
   16bdc:	ee498993          	addi	s3,s3,-284 # 19ee4 <__sclose>
   16be0:	03643c23          	sd	s6,56(s0)
   16be4:	05543023          	sd	s5,64(s0)
   16be8:	05443423          	sd	s4,72(s0)
   16bec:	05343823          	sd	s3,80(s0)
   16bf0:	02843823          	sd	s0,48(s0)
   16bf4:	00900793          	li	a5,9
   16bf8:	00f49823          	sh	a5,16(s1)
   16bfc:	00100793          	li	a5,1
   16c00:	00f49923          	sh	a5,18(s1)
   16c04:	00800613          	li	a2,8
   16c08:	00000593          	li	a1,0
   16c0c:	0004b023          	sd	zero,0(s1)
   16c10:	0004a423          	sw	zero,8(s1)
   16c14:	0004a623          	sw	zero,12(s1)
   16c18:	0a04a623          	sw	zero,172(s1)
   16c1c:	0004bc23          	sd	zero,24(s1)
   16c20:	0204a023          	sw	zero,32(s1)
   16c24:	0204a423          	sw	zero,40(s1)
   16c28:	0a448513          	addi	a0,s1,164
   16c2c:	628010ef          	jal	18254 <memset>
   16c30:	01893403          	ld	s0,24(s2)
   16c34:	01200793          	li	a5,18
   16c38:	0364bc23          	sd	s6,56(s1)
   16c3c:	0554b023          	sd	s5,64(s1)
   16c40:	0544b423          	sd	s4,72(s1)
   16c44:	0534b823          	sd	s3,80(s1)
   16c48:	0294b823          	sd	s1,48(s1)
   16c4c:	00f41823          	sh	a5,16(s0)
   16c50:	00200793          	li	a5,2
   16c54:	00f41923          	sh	a5,18(s0)
   16c58:	00043023          	sd	zero,0(s0)
   16c5c:	00042423          	sw	zero,8(s0)
   16c60:	00042623          	sw	zero,12(s0)
   16c64:	0a042623          	sw	zero,172(s0)
   16c68:	00043c23          	sd	zero,24(s0)
   16c6c:	02042023          	sw	zero,32(s0)
   16c70:	02042423          	sw	zero,40(s0)
   16c74:	0a440513          	addi	a0,s0,164
   16c78:	00800613          	li	a2,8
   16c7c:	00000593          	li	a1,0
   16c80:	5d4010ef          	jal	18254 <memset>
   16c84:	03813083          	ld	ra,56(sp)
   16c88:	03643c23          	sd	s6,56(s0)
   16c8c:	05543023          	sd	s5,64(s0)
   16c90:	05443423          	sd	s4,72(s0)
   16c94:	05343823          	sd	s3,80(s0)
   16c98:	02843823          	sd	s0,48(s0)
   16c9c:	00100793          	li	a5,1
   16ca0:	04f92823          	sw	a5,80(s2)
   16ca4:	03013403          	ld	s0,48(sp)
   16ca8:	02813483          	ld	s1,40(sp)
   16cac:	02013903          	ld	s2,32(sp)
   16cb0:	01813983          	ld	s3,24(sp)
   16cb4:	01013a03          	ld	s4,16(sp)
   16cb8:	00813a83          	ld	s5,8(sp)
   16cbc:	00013b03          	ld	s6,0(sp)
   16cc0:	04010113          	addi	sp,sp,64
   16cc4:	00008067          	ret

0000000000016cc8 <__fp_lock>:
   16cc8:	00000513          	li	a0,0
   16ccc:	00008067          	ret

0000000000016cd0 <__sfmoreglue>:
   16cd0:	fe010113          	addi	sp,sp,-32
   16cd4:	fff5879b          	addiw	a5,a1,-1
   16cd8:	00913423          	sd	s1,8(sp)
   16cdc:	0b000493          	li	s1,176
   16ce0:	029784b3          	mul	s1,a5,s1
   16ce4:	01213023          	sd	s2,0(sp)
   16ce8:	00058913          	mv	s2,a1
   16cec:	00813823          	sd	s0,16(sp)
   16cf0:	00113c23          	sd	ra,24(sp)
   16cf4:	0c848593          	addi	a1,s1,200
   16cf8:	d88fa0ef          	jal	11280 <_malloc_r>
   16cfc:	00050413          	mv	s0,a0
   16d00:	02050063          	beqz	a0,16d20 <__sfmoreglue+0x50>
   16d04:	01850513          	addi	a0,a0,24
   16d08:	00043023          	sd	zero,0(s0)
   16d0c:	01242423          	sw	s2,8(s0)
   16d10:	00a43823          	sd	a0,16(s0)
   16d14:	0b048613          	addi	a2,s1,176
   16d18:	00000593          	li	a1,0
   16d1c:	538010ef          	jal	18254 <memset>
   16d20:	01813083          	ld	ra,24(sp)
   16d24:	00040513          	mv	a0,s0
   16d28:	00813483          	ld	s1,8(sp)
   16d2c:	01013403          	ld	s0,16(sp)
   16d30:	00013903          	ld	s2,0(sp)
   16d34:	02010113          	addi	sp,sp,32
   16d38:	00008067          	ret

0000000000016d3c <__sfp>:
   16d3c:	fd010113          	addi	sp,sp,-48
   16d40:	01213823          	sd	s2,16(sp)
   16d44:	8081b903          	ld	s2,-2040(gp) # 249d8 <_global_impure_ptr>
   16d48:	01313423          	sd	s3,8(sp)
   16d4c:	02113423          	sd	ra,40(sp)
   16d50:	05092783          	lw	a5,80(s2)
   16d54:	02813023          	sd	s0,32(sp)
   16d58:	00913c23          	sd	s1,24(sp)
   16d5c:	00050993          	mv	s3,a0
   16d60:	00079663          	bnez	a5,16d6c <__sfp+0x30>
   16d64:	00090513          	mv	a0,s2
   16d68:	dd1ff0ef          	jal	16b38 <__sinit.part.1>
   16d6c:	52090913          	addi	s2,s2,1312
   16d70:	fff00493          	li	s1,-1
   16d74:	00892783          	lw	a5,8(s2)
   16d78:	01093403          	ld	s0,16(s2)
   16d7c:	fff7879b          	addiw	a5,a5,-1
   16d80:	0007da63          	bgez	a5,16d94 <__sfp+0x58>
   16d84:	0840006f          	j	16e08 <__sfp+0xcc>
   16d88:	fff7879b          	addiw	a5,a5,-1
   16d8c:	0b040413          	addi	s0,s0,176
   16d90:	06978c63          	beq	a5,s1,16e08 <__sfp+0xcc>
   16d94:	01041703          	lh	a4,16(s0)
   16d98:	fe0718e3          	bnez	a4,16d88 <__sfp+0x4c>
   16d9c:	fff00793          	li	a5,-1
   16da0:	00f41923          	sh	a5,18(s0)
   16da4:	00100793          	li	a5,1
   16da8:	00f41823          	sh	a5,16(s0)
   16dac:	0a042623          	sw	zero,172(s0)
   16db0:	00043023          	sd	zero,0(s0)
   16db4:	00042623          	sw	zero,12(s0)
   16db8:	00042423          	sw	zero,8(s0)
   16dbc:	00043c23          	sd	zero,24(s0)
   16dc0:	02042023          	sw	zero,32(s0)
   16dc4:	02042423          	sw	zero,40(s0)
   16dc8:	00800613          	li	a2,8
   16dcc:	00000593          	li	a1,0
   16dd0:	0a440513          	addi	a0,s0,164
   16dd4:	480010ef          	jal	18254 <memset>
   16dd8:	00040513          	mv	a0,s0
   16ddc:	04043c23          	sd	zero,88(s0)
   16de0:	06042023          	sw	zero,96(s0)
   16de4:	06043c23          	sd	zero,120(s0)
   16de8:	08042023          	sw	zero,128(s0)
   16dec:	02813083          	ld	ra,40(sp)
   16df0:	02013403          	ld	s0,32(sp)
   16df4:	01813483          	ld	s1,24(sp)
   16df8:	01013903          	ld	s2,16(sp)
   16dfc:	00813983          	ld	s3,8(sp)
   16e00:	03010113          	addi	sp,sp,48
   16e04:	00008067          	ret
   16e08:	00093783          	ld	a5,0(s2)
   16e0c:	00078663          	beqz	a5,16e18 <__sfp+0xdc>
   16e10:	00078913          	mv	s2,a5
   16e14:	f61ff06f          	j	16d74 <__sfp+0x38>
   16e18:	00400593          	li	a1,4
   16e1c:	00098513          	mv	a0,s3
   16e20:	eb1ff0ef          	jal	16cd0 <__sfmoreglue>
   16e24:	00a93023          	sd	a0,0(s2)
   16e28:	00050663          	beqz	a0,16e34 <__sfp+0xf8>
   16e2c:	00050913          	mv	s2,a0
   16e30:	f45ff06f          	j	16d74 <__sfp+0x38>
   16e34:	00c00793          	li	a5,12
   16e38:	00f9a023          	sw	a5,0(s3)
   16e3c:	00000513          	li	a0,0
   16e40:	fadff06f          	j	16dec <__sfp+0xb0>

0000000000016e44 <_cleanup>:
   16e44:	8081b503          	ld	a0,-2040(gp) # 249d8 <_global_impure_ptr>
   16e48:	0001e5b7          	lui	a1,0x1e
   16e4c:	7d058593          	addi	a1,a1,2000 # 1e7d0 <_fclose_r>
   16e50:	43d0006f          	j	17a8c <_fwalk_reent>

0000000000016e54 <__sinit>:
   16e54:	05052783          	lw	a5,80(a0)
   16e58:	00078463          	beqz	a5,16e60 <__sinit+0xc>
   16e5c:	00008067          	ret
   16e60:	cd9ff06f          	j	16b38 <__sinit.part.1>

0000000000016e64 <__sfp_lock_acquire>:
   16e64:	00008067          	ret

0000000000016e68 <__sfp_lock_release>:
   16e68:	00008067          	ret

0000000000016e6c <__sinit_lock_acquire>:
   16e6c:	00008067          	ret

0000000000016e70 <__sinit_lock_release>:
   16e70:	00008067          	ret

0000000000016e74 <__fp_lock_all>:
   16e74:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   16e78:	000175b7          	lui	a1,0x17
   16e7c:	cc858593          	addi	a1,a1,-824 # 16cc8 <__fp_lock>
   16e80:	35d0006f          	j	179dc <_fwalk>

0000000000016e84 <__fp_unlock_all>:
   16e84:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   16e88:	000175b7          	lui	a1,0x17
   16e8c:	b2458593          	addi	a1,a1,-1244 # 16b24 <__fp_unlock>
   16e90:	34d0006f          	j	179dc <_fwalk>

0000000000016e94 <_fread_r>:
   16e94:	fa010113          	addi	sp,sp,-96
   16e98:	03613023          	sd	s6,32(sp)
   16e9c:	02c68b33          	mul	s6,a3,a2
   16ea0:	04113c23          	sd	ra,88(sp)
   16ea4:	04813823          	sd	s0,80(sp)
   16ea8:	04913423          	sd	s1,72(sp)
   16eac:	05213023          	sd	s2,64(sp)
   16eb0:	03313c23          	sd	s3,56(sp)
   16eb4:	03413823          	sd	s4,48(sp)
   16eb8:	03513423          	sd	s5,40(sp)
   16ebc:	01713c23          	sd	s7,24(sp)
   16ec0:	01813823          	sd	s8,16(sp)
   16ec4:	01913423          	sd	s9,8(sp)
   16ec8:	01a13023          	sd	s10,0(sp)
   16ecc:	1c0b0863          	beqz	s6,1709c <_fread_r+0x208>
   16ed0:	00060b93          	mv	s7,a2
   16ed4:	00068a93          	mv	s5,a3
   16ed8:	00050a13          	mv	s4,a0
   16edc:	00058913          	mv	s2,a1
   16ee0:	00070413          	mv	s0,a4
   16ee4:	00050663          	beqz	a0,16ef0 <_fread_r+0x5c>
   16ee8:	05052783          	lw	a5,80(a0)
   16eec:	1c078a63          	beqz	a5,170c0 <_fread_r+0x22c>
   16ef0:	01041683          	lh	a3,16(s0)
   16ef4:	03069793          	slli	a5,a3,0x30
   16ef8:	0307d793          	srli	a5,a5,0x30
   16efc:	03279713          	slli	a4,a5,0x32
   16f00:	02074a63          	bltz	a4,16f34 <_fread_r+0xa0>
   16f04:	000027b7          	lui	a5,0x2
   16f08:	0ac42603          	lw	a2,172(s0)
   16f0c:	00f6e7b3          	or	a5,a3,a5
   16f10:	0107979b          	slliw	a5,a5,0x10
   16f14:	ffffe737          	lui	a4,0xffffe
   16f18:	4107d79b          	sraiw	a5,a5,0x10
   16f1c:	fff7071b          	addiw	a4,a4,-1
   16f20:	00e67733          	and	a4,a2,a4
   16f24:	00f41823          	sh	a5,16(s0)
   16f28:	03079793          	slli	a5,a5,0x30
   16f2c:	0ae42623          	sw	a4,172(s0)
   16f30:	0307d793          	srli	a5,a5,0x30
   16f34:	00842483          	lw	s1,8(s0)
   16f38:	00048713          	mv	a4,s1
   16f3c:	1604c463          	bltz	s1,170a4 <_fread_r+0x210>
   16f40:	0027f793          	andi	a5,a5,2
   16f44:	000b0993          	mv	s3,s6
   16f48:	0e078463          	beqz	a5,17030 <_fread_r+0x19c>
   16f4c:	000b0493          	mv	s1,s6
   16f50:	01677463          	bleu	s6,a4,16f58 <_fread_r+0xc4>
   16f54:	00070493          	mv	s1,a4
   16f58:	00043583          	ld	a1,0(s0)
   16f5c:	00048613          	mv	a2,s1
   16f60:	00090513          	mv	a0,s2
   16f64:	a8dfa0ef          	jal	119f0 <memcpy>
   16f68:	00842703          	lw	a4,8(s0)
   16f6c:	00043c03          	ld	s8,0(s0)
   16f70:	0004879b          	sext.w	a5,s1
   16f74:	05843583          	ld	a1,88(s0)
   16f78:	009c0c33          	add	s8,s8,s1
   16f7c:	40f707bb          	subw	a5,a4,a5
   16f80:	01843023          	sd	s8,0(s0)
   16f84:	00f42423          	sw	a5,8(s0)
   16f88:	409b09b3          	sub	s3,s6,s1
   16f8c:	14058863          	beqz	a1,170dc <_fread_r+0x248>
   16f90:	14098863          	beqz	s3,170e0 <_fread_r+0x24c>
   16f94:	07440793          	addi	a5,s0,116
   16f98:	00f58863          	beq	a1,a5,16fa8 <_fread_r+0x114>
   16f9c:	000a0513          	mv	a0,s4
   16fa0:	278000ef          	jal	17218 <_free_r>
   16fa4:	00043c03          	ld	s8,0(s0)
   16fa8:	04043c23          	sd	zero,88(s0)
   16fac:	01843d03          	ld	s10,24(s0)
   16fb0:	02042c83          	lw	s9,32(s0)
   16fb4:	00990933          	add	s2,s2,s1
   16fb8:	0080006f          	j	16fc0 <_fread_r+0x12c>
   16fbc:	12098263          	beqz	s3,170e0 <_fread_r+0x24c>
   16fc0:	01243c23          	sd	s2,24(s0)
   16fc4:	03342023          	sw	s3,32(s0)
   16fc8:	01243023          	sd	s2,0(s0)
   16fcc:	00040593          	mv	a1,s0
   16fd0:	000a0513          	mv	a0,s4
   16fd4:	159020ef          	jal	1992c <__srefill_r>
   16fd8:	00842783          	lw	a5,8(s0)
   16fdc:	01a43c23          	sd	s10,24(s0)
   16fe0:	03942023          	sw	s9,32(s0)
   16fe4:	01843023          	sd	s8,0(s0)
   16fe8:	00042423          	sw	zero,8(s0)
   16fec:	40f989b3          	sub	s3,s3,a5
   16ff0:	00f90933          	add	s2,s2,a5
   16ff4:	fc0504e3          	beqz	a0,16fbc <_fread_r+0x128>
   16ff8:	413b09b3          	sub	s3,s6,s3
   16ffc:	0379d533          	divu	a0,s3,s7
   17000:	0640006f          	j	17064 <_fread_r+0x1d0>
   17004:	9edfa0ef          	jal	119f0 <memcpy>
   17008:	00043783          	ld	a5,0(s0)
   1700c:	00990933          	add	s2,s2,s1
   17010:	409989b3          	sub	s3,s3,s1
   17014:	009784b3          	add	s1,a5,s1
   17018:	00040593          	mv	a1,s0
   1701c:	000a0513          	mv	a0,s4
   17020:	00943023          	sd	s1,0(s0)
   17024:	109020ef          	jal	1992c <__srefill_r>
   17028:	fc0518e3          	bnez	a0,16ff8 <_fread_r+0x164>
   1702c:	00842483          	lw	s1,8(s0)
   17030:	00048613          	mv	a2,s1
   17034:	00090513          	mv	a0,s2
   17038:	00043583          	ld	a1,0(s0)
   1703c:	fd34e4e3          	bltu	s1,s3,17004 <_fread_r+0x170>
   17040:	00098613          	mv	a2,s3
   17044:	9adfa0ef          	jal	119f0 <memcpy>
   17048:	00842703          	lw	a4,8(s0)
   1704c:	00043783          	ld	a5,0(s0)
   17050:	000a8513          	mv	a0,s5
   17054:	4137073b          	subw	a4,a4,s3
   17058:	013789b3          	add	s3,a5,s3
   1705c:	00e42423          	sw	a4,8(s0)
   17060:	01343023          	sd	s3,0(s0)
   17064:	05813083          	ld	ra,88(sp)
   17068:	05013403          	ld	s0,80(sp)
   1706c:	04813483          	ld	s1,72(sp)
   17070:	04013903          	ld	s2,64(sp)
   17074:	03813983          	ld	s3,56(sp)
   17078:	03013a03          	ld	s4,48(sp)
   1707c:	02813a83          	ld	s5,40(sp)
   17080:	02013b03          	ld	s6,32(sp)
   17084:	01813b83          	ld	s7,24(sp)
   17088:	01013c03          	ld	s8,16(sp)
   1708c:	00813c83          	ld	s9,8(sp)
   17090:	00013d03          	ld	s10,0(sp)
   17094:	06010113          	addi	sp,sp,96
   17098:	00008067          	ret
   1709c:	00000513          	li	a0,0
   170a0:	fc5ff06f          	j	17064 <_fread_r+0x1d0>
   170a4:	00042423          	sw	zero,8(s0)
   170a8:	0027f793          	andi	a5,a5,2
   170ac:	00000713          	li	a4,0
   170b0:	00000493          	li	s1,0
   170b4:	000b0993          	mv	s3,s6
   170b8:	f6078ce3          	beqz	a5,17030 <_fread_r+0x19c>
   170bc:	e91ff06f          	j	16f4c <_fread_r+0xb8>
   170c0:	d95ff0ef          	jal	16e54 <__sinit>
   170c4:	01041683          	lh	a3,16(s0)
   170c8:	03069793          	slli	a5,a3,0x30
   170cc:	0307d793          	srli	a5,a5,0x30
   170d0:	03279713          	slli	a4,a5,0x32
   170d4:	e60740e3          	bltz	a4,16f34 <_fread_r+0xa0>
   170d8:	e2dff06f          	j	16f04 <_fread_r+0x70>
   170dc:	ec0998e3          	bnez	s3,16fac <_fread_r+0x118>
   170e0:	000a8513          	mv	a0,s5
   170e4:	f81ff06f          	j	17064 <_fread_r+0x1d0>

00000000000170e8 <fread>:
   170e8:	00068713          	mv	a4,a3
   170ec:	00060693          	mv	a3,a2
   170f0:	00058613          	mv	a2,a1
   170f4:	00050593          	mv	a1,a0
   170f8:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   170fc:	d99ff06f          	j	16e94 <_fread_r>

0000000000017100 <_malloc_trim_r>:
   17100:	fd010113          	addi	sp,sp,-48
   17104:	01213823          	sd	s2,16(sp)
   17108:	00024937          	lui	s2,0x24
   1710c:	02813023          	sd	s0,32(sp)
   17110:	00913c23          	sd	s1,24(sp)
   17114:	00058413          	mv	s0,a1
   17118:	01313423          	sd	s3,8(sp)
   1711c:	02113423          	sd	ra,40(sp)
   17120:	00050993          	mv	s3,a0
   17124:	11890913          	addi	s2,s2,280 # 24118 <__malloc_av_>
   17128:	9e9fa0ef          	jal	11b10 <__malloc_lock>
   1712c:	01093703          	ld	a4,16(s2)
   17130:	000017b7          	lui	a5,0x1
   17134:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   17138:	00873483          	ld	s1,8(a4) # ffffffffffffe008 <_end+0xfffffffffffd6c90>
   1713c:	ffc4f493          	andi	s1,s1,-4
   17140:	40848433          	sub	s0,s1,s0
   17144:	00b40433          	add	s0,s0,a1
   17148:	00c45413          	srli	s0,s0,0xc
   1714c:	fff40413          	addi	s0,s0,-1
   17150:	00c41413          	slli	s0,s0,0xc
   17154:	00f44c63          	blt	s0,a5,1716c <_malloc_trim_r+0x6c>
   17158:	00000513          	li	a0,0
   1715c:	2a9090ef          	jal	20c04 <sbrk>
   17160:	01093783          	ld	a5,16(s2)
   17164:	009787b3          	add	a5,a5,s1
   17168:	02f50663          	beq	a0,a5,17194 <_malloc_trim_r+0x94>
   1716c:	00098513          	mv	a0,s3
   17170:	9a5fa0ef          	jal	11b14 <__malloc_unlock>
   17174:	02813083          	ld	ra,40(sp)
   17178:	00000513          	li	a0,0
   1717c:	02013403          	ld	s0,32(sp)
   17180:	01813483          	ld	s1,24(sp)
   17184:	01013903          	ld	s2,16(sp)
   17188:	00813983          	ld	s3,8(sp)
   1718c:	03010113          	addi	sp,sp,48
   17190:	00008067          	ret
   17194:	40800533          	neg	a0,s0
   17198:	26d090ef          	jal	20c04 <sbrk>
   1719c:	fff00793          	li	a5,-1
   171a0:	04f50463          	beq	a0,a5,171e8 <_malloc_trim_r+0xe8>
   171a4:	9581a783          	lw	a5,-1704(gp) # 24b28 <__malloc_current_mallinfo>
   171a8:	01093683          	ld	a3,16(s2)
   171ac:	408484b3          	sub	s1,s1,s0
   171b0:	0014e493          	ori	s1,s1,1
   171b4:	4087843b          	subw	s0,a5,s0
   171b8:	00098513          	mv	a0,s3
   171bc:	0096b423          	sd	s1,8(a3)
   171c0:	9481ac23          	sw	s0,-1704(gp) # 24b28 <__malloc_current_mallinfo>
   171c4:	951fa0ef          	jal	11b14 <__malloc_unlock>
   171c8:	02813083          	ld	ra,40(sp)
   171cc:	00100513          	li	a0,1
   171d0:	02013403          	ld	s0,32(sp)
   171d4:	01813483          	ld	s1,24(sp)
   171d8:	01013903          	ld	s2,16(sp)
   171dc:	00813983          	ld	s3,8(sp)
   171e0:	03010113          	addi	sp,sp,48
   171e4:	00008067          	ret
   171e8:	00000513          	li	a0,0
   171ec:	219090ef          	jal	20c04 <sbrk>
   171f0:	01093703          	ld	a4,16(s2)
   171f4:	01f00693          	li	a3,31
   171f8:	40e507b3          	sub	a5,a0,a4
   171fc:	f6f6d8e3          	ble	a5,a3,1716c <_malloc_trim_r+0x6c>
   17200:	8181b683          	ld	a3,-2024(gp) # 249e8 <__malloc_sbrk_base>
   17204:	0017e793          	ori	a5,a5,1
   17208:	00f73423          	sd	a5,8(a4)
   1720c:	40d50533          	sub	a0,a0,a3
   17210:	94a1ac23          	sw	a0,-1704(gp) # 24b28 <__malloc_current_mallinfo>
   17214:	f59ff06f          	j	1716c <_malloc_trim_r+0x6c>

0000000000017218 <_free_r>:
   17218:	10058263          	beqz	a1,1731c <_free_r+0x104>
   1721c:	fe010113          	addi	sp,sp,-32
   17220:	00813823          	sd	s0,16(sp)
   17224:	00913423          	sd	s1,8(sp)
   17228:	00058413          	mv	s0,a1
   1722c:	00050493          	mv	s1,a0
   17230:	00113c23          	sd	ra,24(sp)
   17234:	8ddfa0ef          	jal	11b10 <__malloc_lock>
   17238:	ff843503          	ld	a0,-8(s0)
   1723c:	ff040693          	addi	a3,s0,-16
   17240:	000245b7          	lui	a1,0x24
   17244:	ffe57793          	andi	a5,a0,-2
   17248:	00f68633          	add	a2,a3,a5
   1724c:	11858593          	addi	a1,a1,280 # 24118 <__malloc_av_>
   17250:	00863703          	ld	a4,8(a2)
   17254:	0105b803          	ld	a6,16(a1)
   17258:	ffc77713          	andi	a4,a4,-4
   1725c:	17060663          	beq	a2,a6,173c8 <_free_r+0x1b0>
   17260:	00e63423          	sd	a4,8(a2)
   17264:	00157513          	andi	a0,a0,1
   17268:	02051663          	bnez	a0,17294 <_free_r+0x7c>
   1726c:	ff043503          	ld	a0,-16(s0)
   17270:	40a686b3          	sub	a3,a3,a0
   17274:	0106b803          	ld	a6,16(a3)
   17278:	00a787b3          	add	a5,a5,a0
   1727c:	00024537          	lui	a0,0x24
   17280:	12850513          	addi	a0,a0,296 # 24128 <__malloc_av_+0x10>
   17284:	18a80863          	beq	a6,a0,17414 <_free_r+0x1fc>
   17288:	0186b503          	ld	a0,24(a3)
   1728c:	00a83c23          	sd	a0,24(a6)
   17290:	01053823          	sd	a6,16(a0)
   17294:	00e60533          	add	a0,a2,a4
   17298:	00853503          	ld	a0,8(a0)
   1729c:	00157513          	andi	a0,a0,1
   172a0:	0e050a63          	beqz	a0,17394 <_free_r+0x17c>
   172a4:	0017e713          	ori	a4,a5,1
   172a8:	00e6b423          	sd	a4,8(a3)
   172ac:	00f68733          	add	a4,a3,a5
   172b0:	00f73023          	sd	a5,0(a4)
   172b4:	1ff00713          	li	a4,511
   172b8:	06f76463          	bltu	a4,a5,17320 <_free_r+0x108>
   172bc:	0037d793          	srli	a5,a5,0x3
   172c0:	0007879b          	sext.w	a5,a5
   172c4:	0017871b          	addiw	a4,a5,1
   172c8:	0017171b          	slliw	a4,a4,0x1
   172cc:	00371713          	slli	a4,a4,0x3
   172d0:	0085b603          	ld	a2,8(a1)
   172d4:	00e58733          	add	a4,a1,a4
   172d8:	00073803          	ld	a6,0(a4)
   172dc:	4027d79b          	sraiw	a5,a5,0x2
   172e0:	00100513          	li	a0,1
   172e4:	00f517b3          	sll	a5,a0,a5
   172e8:	00c7e7b3          	or	a5,a5,a2
   172ec:	ff070613          	addi	a2,a4,-16
   172f0:	00c6bc23          	sd	a2,24(a3)
   172f4:	0106b823          	sd	a6,16(a3)
   172f8:	00f5b423          	sd	a5,8(a1)
   172fc:	00d73023          	sd	a3,0(a4)
   17300:	00d83c23          	sd	a3,24(a6)
   17304:	00048513          	mv	a0,s1
   17308:	01813083          	ld	ra,24(sp)
   1730c:	01013403          	ld	s0,16(sp)
   17310:	00813483          	ld	s1,8(sp)
   17314:	02010113          	addi	sp,sp,32
   17318:	ffcfa06f          	j	11b14 <__malloc_unlock>
   1731c:	00008067          	ret
   17320:	0097d713          	srli	a4,a5,0x9
   17324:	00400613          	li	a2,4
   17328:	12e66263          	bltu	a2,a4,1744c <_free_r+0x234>
   1732c:	0067d713          	srli	a4,a5,0x6
   17330:	0007071b          	sext.w	a4,a4
   17334:	0397051b          	addiw	a0,a4,57
   17338:	0387061b          	addiw	a2,a4,56
   1733c:	0015151b          	slliw	a0,a0,0x1
   17340:	00351513          	slli	a0,a0,0x3
   17344:	00a58533          	add	a0,a1,a0
   17348:	00053703          	ld	a4,0(a0)
   1734c:	ff050513          	addi	a0,a0,-16
   17350:	10e50c63          	beq	a0,a4,17468 <_free_r+0x250>
   17354:	00873603          	ld	a2,8(a4)
   17358:	ffc67613          	andi	a2,a2,-4
   1735c:	00c7f663          	bleu	a2,a5,17368 <_free_r+0x150>
   17360:	01073703          	ld	a4,16(a4)
   17364:	fee518e3          	bne	a0,a4,17354 <_free_r+0x13c>
   17368:	01873503          	ld	a0,24(a4)
   1736c:	00a6bc23          	sd	a0,24(a3)
   17370:	00e6b823          	sd	a4,16(a3)
   17374:	00d53823          	sd	a3,16(a0)
   17378:	01813083          	ld	ra,24(sp)
   1737c:	00048513          	mv	a0,s1
   17380:	01013403          	ld	s0,16(sp)
   17384:	00813483          	ld	s1,8(sp)
   17388:	00d73c23          	sd	a3,24(a4)
   1738c:	02010113          	addi	sp,sp,32
   17390:	f84fa06f          	j	11b14 <__malloc_unlock>
   17394:	01063503          	ld	a0,16(a2)
   17398:	00e787b3          	add	a5,a5,a4
   1739c:	00024737          	lui	a4,0x24
   173a0:	12870713          	addi	a4,a4,296 # 24128 <__malloc_av_+0x10>
   173a4:	0ee50263          	beq	a0,a4,17488 <_free_r+0x270>
   173a8:	01863803          	ld	a6,24(a2)
   173ac:	0017e613          	ori	a2,a5,1
   173b0:	00f68733          	add	a4,a3,a5
   173b4:	01053c23          	sd	a6,24(a0)
   173b8:	00a83823          	sd	a0,16(a6)
   173bc:	00c6b423          	sd	a2,8(a3)
   173c0:	00f73023          	sd	a5,0(a4)
   173c4:	ef1ff06f          	j	172b4 <_free_r+0x9c>
   173c8:	00157513          	andi	a0,a0,1
   173cc:	00e787b3          	add	a5,a5,a4
   173d0:	02051063          	bnez	a0,173f0 <_free_r+0x1d8>
   173d4:	ff043503          	ld	a0,-16(s0)
   173d8:	40a686b3          	sub	a3,a3,a0
   173dc:	0186b703          	ld	a4,24(a3)
   173e0:	0106b603          	ld	a2,16(a3)
   173e4:	00a787b3          	add	a5,a5,a0
   173e8:	00e63c23          	sd	a4,24(a2)
   173ec:	00c73823          	sd	a2,16(a4)
   173f0:	0017e613          	ori	a2,a5,1
   173f4:	8201b703          	ld	a4,-2016(gp) # 249f0 <__malloc_trim_threshold>
   173f8:	00c6b423          	sd	a2,8(a3)
   173fc:	00d5b823          	sd	a3,16(a1)
   17400:	f0e7e2e3          	bltu	a5,a4,17304 <_free_r+0xec>
   17404:	9001b583          	ld	a1,-1792(gp) # 24ad0 <__malloc_top_pad>
   17408:	00048513          	mv	a0,s1
   1740c:	cf5ff0ef          	jal	17100 <_malloc_trim_r>
   17410:	ef5ff06f          	j	17304 <_free_r+0xec>
   17414:	00e605b3          	add	a1,a2,a4
   17418:	0085b583          	ld	a1,8(a1)
   1741c:	0015f593          	andi	a1,a1,1
   17420:	0e059a63          	bnez	a1,17514 <_free_r+0x2fc>
   17424:	01063583          	ld	a1,16(a2)
   17428:	01863603          	ld	a2,24(a2)
   1742c:	00f707b3          	add	a5,a4,a5
   17430:	0017e713          	ori	a4,a5,1
   17434:	00c5bc23          	sd	a2,24(a1)
   17438:	00b63823          	sd	a1,16(a2)
   1743c:	00e6b423          	sd	a4,8(a3)
   17440:	00f686b3          	add	a3,a3,a5
   17444:	00f6b023          	sd	a5,0(a3)
   17448:	ebdff06f          	j	17304 <_free_r+0xec>
   1744c:	01400613          	li	a2,20
   17450:	04e66e63          	bltu	a2,a4,174ac <_free_r+0x294>
   17454:	0007071b          	sext.w	a4,a4
   17458:	05c7051b          	addiw	a0,a4,92
   1745c:	05b7061b          	addiw	a2,a4,91
   17460:	0015151b          	slliw	a0,a0,0x1
   17464:	eddff06f          	j	17340 <_free_r+0x128>
   17468:	0085b783          	ld	a5,8(a1)
   1746c:	4026571b          	sraiw	a4,a2,0x2
   17470:	00100613          	li	a2,1
   17474:	00e61733          	sll	a4,a2,a4
   17478:	00f767b3          	or	a5,a4,a5
   1747c:	00f5b423          	sd	a5,8(a1)
   17480:	00050713          	mv	a4,a0
   17484:	ee9ff06f          	j	1736c <_free_r+0x154>
   17488:	02d5b423          	sd	a3,40(a1)
   1748c:	02d5b023          	sd	a3,32(a1)
   17490:	0017e713          	ori	a4,a5,1
   17494:	00a6bc23          	sd	a0,24(a3)
   17498:	00a6b823          	sd	a0,16(a3)
   1749c:	00e6b423          	sd	a4,8(a3)
   174a0:	00f686b3          	add	a3,a3,a5
   174a4:	00f6b023          	sd	a5,0(a3)
   174a8:	e5dff06f          	j	17304 <_free_r+0xec>
   174ac:	05400613          	li	a2,84
   174b0:	00e66e63          	bltu	a2,a4,174cc <_free_r+0x2b4>
   174b4:	00c7d713          	srli	a4,a5,0xc
   174b8:	0007071b          	sext.w	a4,a4
   174bc:	06f7051b          	addiw	a0,a4,111
   174c0:	06e7061b          	addiw	a2,a4,110
   174c4:	0015151b          	slliw	a0,a0,0x1
   174c8:	e79ff06f          	j	17340 <_free_r+0x128>
   174cc:	15400613          	li	a2,340
   174d0:	00e66e63          	bltu	a2,a4,174ec <_free_r+0x2d4>
   174d4:	00f7d713          	srli	a4,a5,0xf
   174d8:	0007071b          	sext.w	a4,a4
   174dc:	0787051b          	addiw	a0,a4,120
   174e0:	0777061b          	addiw	a2,a4,119
   174e4:	0015151b          	slliw	a0,a0,0x1
   174e8:	e59ff06f          	j	17340 <_free_r+0x128>
   174ec:	55400813          	li	a6,1364
   174f0:	0fe00513          	li	a0,254
   174f4:	07e00613          	li	a2,126
   174f8:	e4e864e3          	bltu	a6,a4,17340 <_free_r+0x128>
   174fc:	0127d713          	srli	a4,a5,0x12
   17500:	0007071b          	sext.w	a4,a4
   17504:	07d7051b          	addiw	a0,a4,125
   17508:	07c7061b          	addiw	a2,a4,124
   1750c:	0015151b          	slliw	a0,a0,0x1
   17510:	e31ff06f          	j	17340 <_free_r+0x128>
   17514:	0017e713          	ori	a4,a5,1
   17518:	00e6b423          	sd	a4,8(a3)
   1751c:	00f686b3          	add	a3,a3,a5
   17520:	00f6b023          	sd	a5,0(a3)
   17524:	de1ff06f          	j	17304 <_free_r+0xec>

0000000000017528 <__sfvwrite_r>:
   17528:	01063783          	ld	a5,16(a2)
   1752c:	26078a63          	beqz	a5,177a0 <__sfvwrite_r+0x278>
   17530:	0105d703          	lhu	a4,16(a1)
   17534:	f9010113          	addi	sp,sp,-112
   17538:	06813023          	sd	s0,96(sp)
   1753c:	03513c23          	sd	s5,56(sp)
   17540:	03613823          	sd	s6,48(sp)
   17544:	06113423          	sd	ra,104(sp)
   17548:	04913c23          	sd	s1,88(sp)
   1754c:	05213823          	sd	s2,80(sp)
   17550:	05313423          	sd	s3,72(sp)
   17554:	05413023          	sd	s4,64(sp)
   17558:	03713423          	sd	s7,40(sp)
   1755c:	03813023          	sd	s8,32(sp)
   17560:	01913c23          	sd	s9,24(sp)
   17564:	01a13823          	sd	s10,16(sp)
   17568:	01b13423          	sd	s11,8(sp)
   1756c:	00877793          	andi	a5,a4,8
   17570:	00058413          	mv	s0,a1
   17574:	00050b13          	mv	s6,a0
   17578:	00060a93          	mv	s5,a2
   1757c:	0a078863          	beqz	a5,1762c <__sfvwrite_r+0x104>
   17580:	0185b783          	ld	a5,24(a1)
   17584:	0a078463          	beqz	a5,1762c <__sfvwrite_r+0x104>
   17588:	00277793          	andi	a5,a4,2
   1758c:	000ab483          	ld	s1,0(s5)
   17590:	0c078063          	beqz	a5,17650 <__sfvwrite_r+0x128>
   17594:	80000a37          	lui	s4,0x80000
   17598:	00000993          	li	s3,0
   1759c:	00000913          	li	s2,0
   175a0:	c00a4a13          	xori	s4,s4,-1024
   175a4:	00098613          	mv	a2,s3
   175a8:	000b0513          	mv	a0,s6
   175ac:	1e090263          	beqz	s2,17790 <__sfvwrite_r+0x268>
   175b0:	00090693          	mv	a3,s2
   175b4:	012a7463          	bleu	s2,s4,175bc <__sfvwrite_r+0x94>
   175b8:	000a0693          	mv	a3,s4
   175bc:	04043783          	ld	a5,64(s0)
   175c0:	03043583          	ld	a1,48(s0)
   175c4:	0006869b          	sext.w	a3,a3
   175c8:	000780e7          	jalr	a5
   175cc:	22a05063          	blez	a0,177ec <__sfvwrite_r+0x2c4>
   175d0:	010ab783          	ld	a5,16(s5)
   175d4:	00a989b3          	add	s3,s3,a0
   175d8:	40a90933          	sub	s2,s2,a0
   175dc:	40a78533          	sub	a0,a5,a0
   175e0:	00aab823          	sd	a0,16(s5)
   175e4:	fc0510e3          	bnez	a0,175a4 <__sfvwrite_r+0x7c>
   175e8:	00000793          	li	a5,0
   175ec:	06813083          	ld	ra,104(sp)
   175f0:	00078513          	mv	a0,a5
   175f4:	06013403          	ld	s0,96(sp)
   175f8:	05813483          	ld	s1,88(sp)
   175fc:	05013903          	ld	s2,80(sp)
   17600:	04813983          	ld	s3,72(sp)
   17604:	04013a03          	ld	s4,64(sp)
   17608:	03813a83          	ld	s5,56(sp)
   1760c:	03013b03          	ld	s6,48(sp)
   17610:	02813b83          	ld	s7,40(sp)
   17614:	02013c03          	ld	s8,32(sp)
   17618:	01813c83          	ld	s9,24(sp)
   1761c:	01013d03          	ld	s10,16(sp)
   17620:	00813d83          	ld	s11,8(sp)
   17624:	07010113          	addi	sp,sp,112
   17628:	00008067          	ret
   1762c:	00040593          	mv	a1,s0
   17630:	000b0513          	mv	a0,s6
   17634:	b1dfd0ef          	jal	15150 <__swsetup_r>
   17638:	fff00793          	li	a5,-1
   1763c:	fa0518e3          	bnez	a0,175ec <__sfvwrite_r+0xc4>
   17640:	01045703          	lhu	a4,16(s0)
   17644:	000ab483          	ld	s1,0(s5)
   17648:	00277793          	andi	a5,a4,2
   1764c:	f40794e3          	bnez	a5,17594 <__sfvwrite_r+0x6c>
   17650:	00177793          	andi	a5,a4,1
   17654:	1a079663          	bnez	a5,17800 <__sfvwrite_r+0x2d8>
   17658:	80000bb7          	lui	s7,0x80000
   1765c:	ffebcc13          	xori	s8,s7,-2
   17660:	00000c93          	li	s9,0
   17664:	00000913          	li	s2,0
   17668:	fffbcb93          	not	s7,s7
   1766c:	10090a63          	beqz	s2,17780 <__sfvwrite_r+0x258>
   17670:	00c42983          	lw	s3,12(s0)
   17674:	20077793          	andi	a5,a4,512
   17678:	00098a13          	mv	s4,s3
   1767c:	26078863          	beqz	a5,178ec <__sfvwrite_r+0x3c4>
   17680:	2b396a63          	bltu	s2,s3,17934 <__sfvwrite_r+0x40c>
   17684:	48077793          	andi	a5,a4,1152
   17688:	2a078663          	beqz	a5,17934 <__sfvwrite_r+0x40c>
   1768c:	02042a03          	lw	s4,32(s0)
   17690:	01843583          	ld	a1,24(s0)
   17694:	00043d03          	ld	s10,0(s0)
   17698:	001a179b          	slliw	a5,s4,0x1
   1769c:	01478a3b          	addw	s4,a5,s4
   176a0:	01fa579b          	srliw	a5,s4,0x1f
   176a4:	40bd0d3b          	subw	s10,s10,a1
   176a8:	01478a3b          	addw	s4,a5,s4
   176ac:	000d0993          	mv	s3,s10
   176b0:	401a5a1b          	sraiw	s4,s4,0x1
   176b4:	00198793          	addi	a5,s3,1
   176b8:	000a0613          	mv	a2,s4
   176bc:	012787b3          	add	a5,a5,s2
   176c0:	00f67863          	bleu	a5,a2,176d0 <__sfvwrite_r+0x1a8>
   176c4:	001d0a1b          	addiw	s4,s10,1
   176c8:	01490a3b          	addw	s4,s2,s4
   176cc:	000a0613          	mv	a2,s4
   176d0:	40077713          	andi	a4,a4,1024
   176d4:	2a070a63          	beqz	a4,17988 <__sfvwrite_r+0x460>
   176d8:	00060593          	mv	a1,a2
   176dc:	000b0513          	mv	a0,s6
   176e0:	ba1f90ef          	jal	11280 <_malloc_r>
   176e4:	00050d93          	mv	s11,a0
   176e8:	2e050263          	beqz	a0,179cc <__sfvwrite_r+0x4a4>
   176ec:	01843583          	ld	a1,24(s0)
   176f0:	00098613          	mv	a2,s3
   176f4:	afcfa0ef          	jal	119f0 <memcpy>
   176f8:	01045783          	lhu	a5,16(s0)
   176fc:	b7f7f793          	andi	a5,a5,-1153
   17700:	0807e793          	ori	a5,a5,128
   17704:	00f41823          	sh	a5,16(s0)
   17708:	41aa0d3b          	subw	s10,s4,s10
   1770c:	013d8533          	add	a0,s11,s3
   17710:	03442023          	sw	s4,32(s0)
   17714:	01b43c23          	sd	s11,24(s0)
   17718:	00a43023          	sd	a0,0(s0)
   1771c:	00090a13          	mv	s4,s2
   17720:	01a42623          	sw	s10,12(s0)
   17724:	000a0d13          	mv	s10,s4
   17728:	00090993          	mv	s3,s2
   1772c:	01497863          	bleu	s4,s2,1773c <__sfvwrite_r+0x214>
   17730:	00090d13          	mv	s10,s2
   17734:	00090993          	mv	s3,s2
   17738:	00090a13          	mv	s4,s2
   1773c:	000d0613          	mv	a2,s10
   17740:	000c8593          	mv	a1,s9
   17744:	1f1000ef          	jal	18134 <memmove>
   17748:	00c42783          	lw	a5,12(s0)
   1774c:	00043603          	ld	a2,0(s0)
   17750:	41478a3b          	subw	s4,a5,s4
   17754:	01a60633          	add	a2,a2,s10
   17758:	01442623          	sw	s4,12(s0)
   1775c:	00c43023          	sd	a2,0(s0)
   17760:	010ab503          	ld	a0,16(s5)
   17764:	013c8cb3          	add	s9,s9,s3
   17768:	41390933          	sub	s2,s2,s3
   1776c:	413509b3          	sub	s3,a0,s3
   17770:	013ab823          	sd	s3,16(s5)
   17774:	e6098ae3          	beqz	s3,175e8 <__sfvwrite_r+0xc0>
   17778:	01045703          	lhu	a4,16(s0)
   1777c:	ee091ae3          	bnez	s2,17670 <__sfvwrite_r+0x148>
   17780:	0004bc83          	ld	s9,0(s1)
   17784:	0084b903          	ld	s2,8(s1)
   17788:	01048493          	addi	s1,s1,16
   1778c:	ee1ff06f          	j	1766c <__sfvwrite_r+0x144>
   17790:	0004b983          	ld	s3,0(s1)
   17794:	0084b903          	ld	s2,8(s1)
   17798:	01048493          	addi	s1,s1,16
   1779c:	e09ff06f          	j	175a4 <__sfvwrite_r+0x7c>
   177a0:	00000793          	li	a5,0
   177a4:	00078513          	mv	a0,a5
   177a8:	00008067          	ret
   177ac:	01397463          	bleu	s3,s2,177b4 <__sfvwrite_r+0x28c>
   177b0:	00090993          	mv	s3,s2
   177b4:	00098613          	mv	a2,s3
   177b8:	000c8593          	mv	a1,s9
   177bc:	179000ef          	jal	18134 <memmove>
   177c0:	00c42783          	lw	a5,12(s0)
   177c4:	00043703          	ld	a4,0(s0)
   177c8:	413787bb          	subw	a5,a5,s3
   177cc:	01370733          	add	a4,a4,s3
   177d0:	00f42623          	sw	a5,12(s0)
   177d4:	00e43023          	sd	a4,0(s0)
   177d8:	f80794e3          	bnez	a5,17760 <__sfvwrite_r+0x238>
   177dc:	00040593          	mv	a1,s0
   177e0:	000b0513          	mv	a0,s6
   177e4:	ac4ff0ef          	jal	16aa8 <_fflush_r>
   177e8:	f6050ce3          	beqz	a0,17760 <__sfvwrite_r+0x238>
   177ec:	01041783          	lh	a5,16(s0)
   177f0:	0407e793          	ori	a5,a5,64
   177f4:	00f41823          	sh	a5,16(s0)
   177f8:	fff00793          	li	a5,-1
   177fc:	df1ff06f          	j	175ec <__sfvwrite_r+0xc4>
   17800:	00000a13          	li	s4,0
   17804:	00000c13          	li	s8,0
   17808:	00000d13          	li	s10,0
   1780c:	00000913          	li	s2,0
   17810:	06090e63          	beqz	s2,1788c <__sfvwrite_r+0x364>
   17814:	140c0863          	beqz	s8,17964 <__sfvwrite_r+0x43c>
   17818:	000a0993          	mv	s3,s4
   1781c:	01497463          	bleu	s4,s2,17824 <__sfvwrite_r+0x2fc>
   17820:	00090993          	mv	s3,s2
   17824:	00043503          	ld	a0,0(s0)
   17828:	01843783          	ld	a5,24(s0)
   1782c:	00098b93          	mv	s7,s3
   17830:	02042683          	lw	a3,32(s0)
   17834:	00a7fa63          	bleu	a0,a5,17848 <__sfvwrite_r+0x320>
   17838:	00c42c83          	lw	s9,12(s0)
   1783c:	01968cbb          	addw	s9,a3,s9
   17840:	000c8d93          	mv	s11,s9
   17844:	053dce63          	blt	s11,s3,178a0 <__sfvwrite_r+0x378>
   17848:	0ed9ca63          	blt	s3,a3,1793c <__sfvwrite_r+0x414>
   1784c:	04043783          	ld	a5,64(s0)
   17850:	03043583          	ld	a1,48(s0)
   17854:	000d0613          	mv	a2,s10
   17858:	000b0513          	mv	a0,s6
   1785c:	000780e7          	jalr	a5
   17860:	00050b93          	mv	s7,a0
   17864:	f8a054e3          	blez	a0,177ec <__sfvwrite_r+0x2c4>
   17868:	417a0a3b          	subw	s4,s4,s7
   1786c:	060a0463          	beqz	s4,178d4 <__sfvwrite_r+0x3ac>
   17870:	010ab783          	ld	a5,16(s5)
   17874:	017d0d33          	add	s10,s10,s7
   17878:	41790933          	sub	s2,s2,s7
   1787c:	41778bb3          	sub	s7,a5,s7
   17880:	017ab823          	sd	s7,16(s5)
   17884:	d60b82e3          	beqz	s7,175e8 <__sfvwrite_r+0xc0>
   17888:	f80916e3          	bnez	s2,17814 <__sfvwrite_r+0x2ec>
   1788c:	0004bd03          	ld	s10,0(s1)
   17890:	0084b903          	ld	s2,8(s1)
   17894:	00000c13          	li	s8,0
   17898:	01048493          	addi	s1,s1,16
   1789c:	f75ff06f          	j	17810 <__sfvwrite_r+0x2e8>
   178a0:	000d0593          	mv	a1,s10
   178a4:	000c8613          	mv	a2,s9
   178a8:	08d000ef          	jal	18134 <memmove>
   178ac:	00043783          	ld	a5,0(s0)
   178b0:	00040593          	mv	a1,s0
   178b4:	000b0513          	mv	a0,s6
   178b8:	01b78db3          	add	s11,a5,s11
   178bc:	01b43023          	sd	s11,0(s0)
   178c0:	9e8ff0ef          	jal	16aa8 <_fflush_r>
   178c4:	f20514e3          	bnez	a0,177ec <__sfvwrite_r+0x2c4>
   178c8:	000c8b93          	mv	s7,s9
   178cc:	417a0a3b          	subw	s4,s4,s7
   178d0:	fa0a10e3          	bnez	s4,17870 <__sfvwrite_r+0x348>
   178d4:	00040593          	mv	a1,s0
   178d8:	000b0513          	mv	a0,s6
   178dc:	9ccff0ef          	jal	16aa8 <_fflush_r>
   178e0:	f00516e3          	bnez	a0,177ec <__sfvwrite_r+0x2c4>
   178e4:	00000c13          	li	s8,0
   178e8:	f89ff06f          	j	17870 <__sfvwrite_r+0x348>
   178ec:	00043503          	ld	a0,0(s0)
   178f0:	01843783          	ld	a5,24(s0)
   178f4:	eaa7ece3          	bltu	a5,a0,177ac <__sfvwrite_r+0x284>
   178f8:	02042783          	lw	a5,32(s0)
   178fc:	eaf968e3          	bltu	s2,a5,177ac <__sfvwrite_r+0x284>
   17900:	000b8693          	mv	a3,s7
   17904:	012c6463          	bltu	s8,s2,1790c <__sfvwrite_r+0x3e4>
   17908:	0009069b          	sext.w	a3,s2
   1790c:	02f6c6bb          	divw	a3,a3,a5
   17910:	04043703          	ld	a4,64(s0)
   17914:	03043583          	ld	a1,48(s0)
   17918:	000c8613          	mv	a2,s9
   1791c:	000b0513          	mv	a0,s6
   17920:	02f686bb          	mulw	a3,a3,a5
   17924:	000700e7          	jalr	a4
   17928:	eca052e3          	blez	a0,177ec <__sfvwrite_r+0x2c4>
   1792c:	00050993          	mv	s3,a0
   17930:	e31ff06f          	j	17760 <__sfvwrite_r+0x238>
   17934:	00043503          	ld	a0,0(s0)
   17938:	dedff06f          	j	17724 <__sfvwrite_r+0x1fc>
   1793c:	00098613          	mv	a2,s3
   17940:	000d0593          	mv	a1,s10
   17944:	7f0000ef          	jal	18134 <memmove>
   17948:	00c42703          	lw	a4,12(s0)
   1794c:	00043783          	ld	a5,0(s0)
   17950:	4137073b          	subw	a4,a4,s3
   17954:	013789b3          	add	s3,a5,s3
   17958:	00e42623          	sw	a4,12(s0)
   1795c:	01343023          	sd	s3,0(s0)
   17960:	f09ff06f          	j	17868 <__sfvwrite_r+0x340>
   17964:	00090613          	mv	a2,s2
   17968:	00a00593          	li	a1,10
   1796c:	000d0513          	mv	a0,s10
   17970:	6dc000ef          	jal	1804c <memchr>
   17974:	04050663          	beqz	a0,179c0 <__sfvwrite_r+0x498>
   17978:	00150a13          	addi	s4,a0,1
   1797c:	41aa0a3b          	subw	s4,s4,s10
   17980:	00100c13          	li	s8,1
   17984:	e95ff06f          	j	17818 <__sfvwrite_r+0x2f0>
   17988:	000b0513          	mv	a0,s6
   1798c:	209010ef          	jal	19394 <_realloc_r>
   17990:	00050d93          	mv	s11,a0
   17994:	d6051ae3          	bnez	a0,17708 <__sfvwrite_r+0x1e0>
   17998:	01843583          	ld	a1,24(s0)
   1799c:	000b0513          	mv	a0,s6
   179a0:	879ff0ef          	jal	17218 <_free_r>
   179a4:	01045783          	lhu	a5,16(s0)
   179a8:	00c00713          	li	a4,12
   179ac:	00eb2023          	sw	a4,0(s6)
   179b0:	f7f7f793          	andi	a5,a5,-129
   179b4:	0107979b          	slliw	a5,a5,0x10
   179b8:	4107d79b          	sraiw	a5,a5,0x10
   179bc:	e35ff06f          	j	177f0 <__sfvwrite_r+0x2c8>
   179c0:	00190a1b          	addiw	s4,s2,1
   179c4:	00100c13          	li	s8,1
   179c8:	e51ff06f          	j	17818 <__sfvwrite_r+0x2f0>
   179cc:	00c00793          	li	a5,12
   179d0:	00fb2023          	sw	a5,0(s6)
   179d4:	01041783          	lh	a5,16(s0)
   179d8:	e19ff06f          	j	177f0 <__sfvwrite_r+0x2c8>

00000000000179dc <_fwalk>:
   179dc:	fc010113          	addi	sp,sp,-64
   179e0:	01513423          	sd	s5,8(sp)
   179e4:	02113c23          	sd	ra,56(sp)
   179e8:	02813823          	sd	s0,48(sp)
   179ec:	02913423          	sd	s1,40(sp)
   179f0:	03213023          	sd	s2,32(sp)
   179f4:	01313c23          	sd	s3,24(sp)
   179f8:	01413823          	sd	s4,16(sp)
   179fc:	01613023          	sd	s6,0(sp)
   17a00:	52050a93          	addi	s5,a0,1312
   17a04:	080a8063          	beqz	s5,17a84 <_fwalk+0xa8>
   17a08:	00058b13          	mv	s6,a1
   17a0c:	00000a13          	li	s4,0
   17a10:	00100993          	li	s3,1
   17a14:	fff00913          	li	s2,-1
   17a18:	008aa483          	lw	s1,8(s5)
   17a1c:	010ab403          	ld	s0,16(s5)
   17a20:	fff4849b          	addiw	s1,s1,-1
   17a24:	0204c663          	bltz	s1,17a50 <_fwalk+0x74>
   17a28:	01045783          	lhu	a5,16(s0)
   17a2c:	fff4849b          	addiw	s1,s1,-1
   17a30:	00f9fc63          	bleu	a5,s3,17a48 <_fwalk+0x6c>
   17a34:	01241783          	lh	a5,18(s0)
   17a38:	00040513          	mv	a0,s0
   17a3c:	01278663          	beq	a5,s2,17a48 <_fwalk+0x6c>
   17a40:	000b00e7          	jalr	s6
   17a44:	00aa6a33          	or	s4,s4,a0
   17a48:	0b040413          	addi	s0,s0,176
   17a4c:	fd249ee3          	bne	s1,s2,17a28 <_fwalk+0x4c>
   17a50:	000aba83          	ld	s5,0(s5)
   17a54:	fc0a92e3          	bnez	s5,17a18 <_fwalk+0x3c>
   17a58:	03813083          	ld	ra,56(sp)
   17a5c:	000a0513          	mv	a0,s4
   17a60:	03013403          	ld	s0,48(sp)
   17a64:	02813483          	ld	s1,40(sp)
   17a68:	02013903          	ld	s2,32(sp)
   17a6c:	01813983          	ld	s3,24(sp)
   17a70:	01013a03          	ld	s4,16(sp)
   17a74:	00813a83          	ld	s5,8(sp)
   17a78:	00013b03          	ld	s6,0(sp)
   17a7c:	04010113          	addi	sp,sp,64
   17a80:	00008067          	ret
   17a84:	00000a13          	li	s4,0
   17a88:	fd1ff06f          	j	17a58 <_fwalk+0x7c>

0000000000017a8c <_fwalk_reent>:
   17a8c:	fb010113          	addi	sp,sp,-80
   17a90:	01613823          	sd	s6,16(sp)
   17a94:	04113423          	sd	ra,72(sp)
   17a98:	04813023          	sd	s0,64(sp)
   17a9c:	02913c23          	sd	s1,56(sp)
   17aa0:	03213823          	sd	s2,48(sp)
   17aa4:	03313423          	sd	s3,40(sp)
   17aa8:	03413023          	sd	s4,32(sp)
   17aac:	01513c23          	sd	s5,24(sp)
   17ab0:	01713423          	sd	s7,8(sp)
   17ab4:	52050b13          	addi	s6,a0,1312
   17ab8:	080b0663          	beqz	s6,17b44 <_fwalk_reent+0xb8>
   17abc:	00058b93          	mv	s7,a1
   17ac0:	00050a93          	mv	s5,a0
   17ac4:	00000a13          	li	s4,0
   17ac8:	00100993          	li	s3,1
   17acc:	fff00913          	li	s2,-1
   17ad0:	008b2483          	lw	s1,8(s6)
   17ad4:	010b3403          	ld	s0,16(s6)
   17ad8:	fff4849b          	addiw	s1,s1,-1
   17adc:	0204c863          	bltz	s1,17b0c <_fwalk_reent+0x80>
   17ae0:	01045783          	lhu	a5,16(s0)
   17ae4:	fff4849b          	addiw	s1,s1,-1
   17ae8:	00f9fe63          	bleu	a5,s3,17b04 <_fwalk_reent+0x78>
   17aec:	01241783          	lh	a5,18(s0)
   17af0:	00040593          	mv	a1,s0
   17af4:	000a8513          	mv	a0,s5
   17af8:	01278663          	beq	a5,s2,17b04 <_fwalk_reent+0x78>
   17afc:	000b80e7          	jalr	s7
   17b00:	00aa6a33          	or	s4,s4,a0
   17b04:	0b040413          	addi	s0,s0,176
   17b08:	fd249ce3          	bne	s1,s2,17ae0 <_fwalk_reent+0x54>
   17b0c:	000b3b03          	ld	s6,0(s6)
   17b10:	fc0b10e3          	bnez	s6,17ad0 <_fwalk_reent+0x44>
   17b14:	04813083          	ld	ra,72(sp)
   17b18:	000a0513          	mv	a0,s4
   17b1c:	04013403          	ld	s0,64(sp)
   17b20:	03813483          	ld	s1,56(sp)
   17b24:	03013903          	ld	s2,48(sp)
   17b28:	02813983          	ld	s3,40(sp)
   17b2c:	02013a03          	ld	s4,32(sp)
   17b30:	01813a83          	ld	s5,24(sp)
   17b34:	01013b03          	ld	s6,16(sp)
   17b38:	00813b83          	ld	s7,8(sp)
   17b3c:	05010113          	addi	sp,sp,80
   17b40:	00008067          	ret
   17b44:	00000a13          	li	s4,0
   17b48:	fcdff06f          	j	17b14 <_fwalk_reent+0x88>

0000000000017b4c <iswspace>:
   17b4c:	0ff00793          	li	a5,255
   17b50:	02a7e263          	bltu	a5,a0,17b74 <iswspace+0x28>
   17b54:	8281b783          	ld	a5,-2008(gp) # 249f8 <__ctype_ptr__>
   17b58:	02051513          	slli	a0,a0,0x20
   17b5c:	02055513          	srli	a0,a0,0x20
   17b60:	00a78533          	add	a0,a5,a0
   17b64:	00154503          	lbu	a0,1(a0)
   17b68:	00857513          	andi	a0,a0,8
   17b6c:	0ff57513          	andi	a0,a0,255
   17b70:	00008067          	ret
   17b74:	00000513          	li	a0,0
   17b78:	00008067          	ret

0000000000017b7c <_setlocale_r>:
   17b7c:	fe010113          	addi	sp,sp,-32
   17b80:	00913423          	sd	s1,8(sp)
   17b84:	00113c23          	sd	ra,24(sp)
   17b88:	00813823          	sd	s0,16(sp)
   17b8c:	000224b7          	lui	s1,0x22
   17b90:	02060063          	beqz	a2,17bb0 <_setlocale_r+0x34>
   17b94:	000225b7          	lui	a1,0x22
   17b98:	2e858593          	addi	a1,a1,744 # 222e8 <zeroes.4123+0xa0>
   17b9c:	00060513          	mv	a0,a2
   17ba0:	00060413          	mv	s0,a2
   17ba4:	ad4fa0ef          	jal	11e78 <strcmp>
   17ba8:	000224b7          	lui	s1,0x22
   17bac:	00051e63          	bnez	a0,17bc8 <_setlocale_r+0x4c>
   17bb0:	25848513          	addi	a0,s1,600 # 22258 <zeroes.4123+0x10>
   17bb4:	01813083          	ld	ra,24(sp)
   17bb8:	01013403          	ld	s0,16(sp)
   17bbc:	00813483          	ld	s1,8(sp)
   17bc0:	02010113          	addi	sp,sp,32
   17bc4:	00008067          	ret
   17bc8:	25848593          	addi	a1,s1,600
   17bcc:	00040513          	mv	a0,s0
   17bd0:	aa8fa0ef          	jal	11e78 <strcmp>
   17bd4:	fc050ee3          	beqz	a0,17bb0 <_setlocale_r+0x34>
   17bd8:	000225b7          	lui	a1,0x22
   17bdc:	29858593          	addi	a1,a1,664 # 22298 <zeroes.4123+0x50>
   17be0:	00040513          	mv	a0,s0
   17be4:	a94fa0ef          	jal	11e78 <strcmp>
   17be8:	fc0504e3          	beqz	a0,17bb0 <_setlocale_r+0x34>
   17bec:	00000513          	li	a0,0
   17bf0:	fc5ff06f          	j	17bb4 <_setlocale_r+0x38>

0000000000017bf4 <__locale_charset>:
   17bf4:	00025537          	lui	a0,0x25
   17bf8:	92850513          	addi	a0,a0,-1752 # 24928 <lc_ctype_charset>
   17bfc:	00008067          	ret

0000000000017c00 <__locale_mb_cur_max>:
   17c00:	8301a503          	lw	a0,-2000(gp) # 24a00 <__mb_cur_max>
   17c04:	00008067          	ret

0000000000017c08 <__locale_msgcharset>:
   17c08:	00025537          	lui	a0,0x25
   17c0c:	94850513          	addi	a0,a0,-1720 # 24948 <lc_message_charset>
   17c10:	00008067          	ret

0000000000017c14 <__locale_cjk_lang>:
   17c14:	00000513          	li	a0,0
   17c18:	00008067          	ret

0000000000017c1c <_localeconv_r>:
   17c1c:	00025537          	lui	a0,0x25
   17c20:	96850513          	addi	a0,a0,-1688 # 24968 <lconv>
   17c24:	00008067          	ret

0000000000017c28 <setlocale>:
   17c28:	00058613          	mv	a2,a1
   17c2c:	00050593          	mv	a1,a0
   17c30:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   17c34:	f49ff06f          	j	17b7c <_setlocale_r>

0000000000017c38 <localeconv>:
   17c38:	00025537          	lui	a0,0x25
   17c3c:	96850513          	addi	a0,a0,-1688 # 24968 <lconv>
   17c40:	00008067          	ret

0000000000017c44 <__smakebuf_r>:
   17c44:	01059783          	lh	a5,16(a1)
   17c48:	f5010113          	addi	sp,sp,-176
   17c4c:	08913c23          	sd	s1,152(sp)
   17c50:	03079493          	slli	s1,a5,0x30
   17c54:	0304d493          	srli	s1,s1,0x30
   17c58:	0a113423          	sd	ra,168(sp)
   17c5c:	0a813023          	sd	s0,160(sp)
   17c60:	09213823          	sd	s2,144(sp)
   17c64:	09313423          	sd	s3,136(sp)
   17c68:	0024f713          	andi	a4,s1,2
   17c6c:	0e071063          	bnez	a4,17d4c <__smakebuf_r+0x108>
   17c70:	00050913          	mv	s2,a0
   17c74:	01259503          	lh	a0,18(a1)
   17c78:	00058413          	mv	s0,a1
   17c7c:	04054c63          	bltz	a0,17cd4 <__smakebuf_r+0x90>
   17c80:	00010593          	mv	a1,sp
   17c84:	4b5080ef          	jal	20938 <fstat>
   17c88:	04054063          	bltz	a0,17cc8 <__smakebuf_r+0x84>
   17c8c:	01012703          	lw	a4,16(sp)
   17c90:	0000f7b7          	lui	a5,0xf
   17c94:	ffffe9b7          	lui	s3,0xffffe
   17c98:	00f777b3          	and	a5,a4,a5
   17c9c:	013789bb          	addw	s3,a5,s3
   17ca0:	00008737          	lui	a4,0x8
   17ca4:	0019b993          	seqz	s3,s3
   17ca8:	0ce78a63          	beq	a5,a4,17d7c <__smakebuf_r+0x138>
   17cac:	01045703          	lhu	a4,16(s0)
   17cb0:	000017b7          	lui	a5,0x1
   17cb4:	8007879b          	addiw	a5,a5,-2048
   17cb8:	00f767b3          	or	a5,a4,a5
   17cbc:	00f41823          	sh	a5,16(s0)
   17cc0:	40000493          	li	s1,1024
   17cc4:	0340006f          	j	17cf8 <__smakebuf_r+0xb4>
   17cc8:	01041783          	lh	a5,16(s0)
   17ccc:	03079493          	slli	s1,a5,0x30
   17cd0:	0304d493          	srli	s1,s1,0x30
   17cd4:	03849493          	slli	s1,s1,0x38
   17cd8:	00001737          	lui	a4,0x1
   17cdc:	43f4d493          	srai	s1,s1,0x3f
   17ce0:	8007071b          	addiw	a4,a4,-2048
   17ce4:	c404f493          	andi	s1,s1,-960
   17ce8:	00e7e7b3          	or	a5,a5,a4
   17cec:	40048493          	addi	s1,s1,1024
   17cf0:	00f41823          	sh	a5,16(s0)
   17cf4:	00000993          	li	s3,0
   17cf8:	00048593          	mv	a1,s1
   17cfc:	00090513          	mv	a0,s2
   17d00:	d80f90ef          	jal	11280 <_malloc_r>
   17d04:	0c050063          	beqz	a0,17dc4 <__smakebuf_r+0x180>
   17d08:	01045783          	lhu	a5,16(s0)
   17d0c:	00017737          	lui	a4,0x17
   17d10:	b2c70713          	addi	a4,a4,-1236 # 16b2c <_cleanup_r>
   17d14:	04e93c23          	sd	a4,88(s2)
   17d18:	0807e793          	ori	a5,a5,128
   17d1c:	00f41823          	sh	a5,16(s0)
   17d20:	00a43023          	sd	a0,0(s0)
   17d24:	00a43c23          	sd	a0,24(s0)
   17d28:	02942023          	sw	s1,32(s0)
   17d2c:	06099e63          	bnez	s3,17da8 <__smakebuf_r+0x164>
   17d30:	0a813083          	ld	ra,168(sp)
   17d34:	0a013403          	ld	s0,160(sp)
   17d38:	09813483          	ld	s1,152(sp)
   17d3c:	09013903          	ld	s2,144(sp)
   17d40:	08813983          	ld	s3,136(sp)
   17d44:	0b010113          	addi	sp,sp,176
   17d48:	00008067          	ret
   17d4c:	0a813083          	ld	ra,168(sp)
   17d50:	07758793          	addi	a5,a1,119
   17d54:	00f5b023          	sd	a5,0(a1)
   17d58:	00f5bc23          	sd	a5,24(a1)
   17d5c:	00100793          	li	a5,1
   17d60:	0a013403          	ld	s0,160(sp)
   17d64:	09813483          	ld	s1,152(sp)
   17d68:	09013903          	ld	s2,144(sp)
   17d6c:	08813983          	ld	s3,136(sp)
   17d70:	02f5a023          	sw	a5,32(a1)
   17d74:	0b010113          	addi	sp,sp,176
   17d78:	00008067          	ret
   17d7c:	04843703          	ld	a4,72(s0)
   17d80:	0001a7b7          	lui	a5,0x1a
   17d84:	e7878793          	addi	a5,a5,-392 # 19e78 <__sseek>
   17d88:	f2f712e3          	bne	a4,a5,17cac <__smakebuf_r+0x68>
   17d8c:	01045783          	lhu	a5,16(s0)
   17d90:	40000713          	li	a4,1024
   17d94:	08e42423          	sw	a4,136(s0)
   17d98:	00e7e7b3          	or	a5,a5,a4
   17d9c:	00f41823          	sh	a5,16(s0)
   17da0:	40000493          	li	s1,1024
   17da4:	f55ff06f          	j	17cf8 <__smakebuf_r+0xb4>
   17da8:	01241503          	lh	a0,18(s0)
   17dac:	519080ef          	jal	20ac4 <isatty>
   17db0:	f80500e3          	beqz	a0,17d30 <__smakebuf_r+0xec>
   17db4:	01045783          	lhu	a5,16(s0)
   17db8:	0017e793          	ori	a5,a5,1
   17dbc:	00f41823          	sh	a5,16(s0)
   17dc0:	f71ff06f          	j	17d30 <__smakebuf_r+0xec>
   17dc4:	01041783          	lh	a5,16(s0)
   17dc8:	2007f713          	andi	a4,a5,512
   17dcc:	f60712e3          	bnez	a4,17d30 <__smakebuf_r+0xec>
   17dd0:	0027e793          	ori	a5,a5,2
   17dd4:	07740713          	addi	a4,s0,119
   17dd8:	00f41823          	sh	a5,16(s0)
   17ddc:	00100793          	li	a5,1
   17de0:	00e43023          	sd	a4,0(s0)
   17de4:	00e43c23          	sd	a4,24(s0)
   17de8:	02f42023          	sw	a5,32(s0)
   17dec:	f45ff06f          	j	17d30 <__smakebuf_r+0xec>

0000000000017df0 <_mbrtowc_r>:
   17df0:	fc010113          	addi	sp,sp,-64
   17df4:	02913423          	sd	s1,40(sp)
   17df8:	03213023          	sd	s2,32(sp)
   17dfc:	02113c23          	sd	ra,56(sp)
   17e00:	02813823          	sd	s0,48(sp)
   17e04:	01313c23          	sd	s3,24(sp)
   17e08:	01413823          	sd	s4,16(sp)
   17e0c:	01513423          	sd	s5,8(sp)
   17e10:	00050493          	mv	s1,a0
   17e14:	00070913          	mv	s2,a4
   17e18:	06060c63          	beqz	a2,17e90 <_mbrtowc_r+0xa0>
   17e1c:	8381ba83          	ld	s5,-1992(gp) # 24a08 <__mbtowc>
   17e20:	00060413          	mv	s0,a2
   17e24:	00058993          	mv	s3,a1
   17e28:	00068a13          	mv	s4,a3
   17e2c:	dc9ff0ef          	jal	17bf4 <__locale_charset>
   17e30:	00090793          	mv	a5,s2
   17e34:	00050713          	mv	a4,a0
   17e38:	000a0693          	mv	a3,s4
   17e3c:	00040613          	mv	a2,s0
   17e40:	00098593          	mv	a1,s3
   17e44:	00048513          	mv	a0,s1
   17e48:	000a80e7          	jalr	s5
   17e4c:	00050793          	mv	a5,a0
   17e50:	fff00713          	li	a4,-1
   17e54:	00078513          	mv	a0,a5
   17e58:	00e79a63          	bne	a5,a4,17e6c <_mbrtowc_r+0x7c>
   17e5c:	00092023          	sw	zero,0(s2)
   17e60:	08a00793          	li	a5,138
   17e64:	00f4a023          	sw	a5,0(s1)
   17e68:	fff00513          	li	a0,-1
   17e6c:	03813083          	ld	ra,56(sp)
   17e70:	03013403          	ld	s0,48(sp)
   17e74:	02813483          	ld	s1,40(sp)
   17e78:	02013903          	ld	s2,32(sp)
   17e7c:	01813983          	ld	s3,24(sp)
   17e80:	01013a03          	ld	s4,16(sp)
   17e84:	00813a83          	ld	s5,8(sp)
   17e88:	04010113          	addi	sp,sp,64
   17e8c:	00008067          	ret
   17e90:	8381b403          	ld	s0,-1992(gp) # 24a08 <__mbtowc>
   17e94:	d61ff0ef          	jal	17bf4 <__locale_charset>
   17e98:	00022637          	lui	a2,0x22
   17e9c:	00090793          	mv	a5,s2
   17ea0:	00050713          	mv	a4,a0
   17ea4:	00100693          	li	a3,1
   17ea8:	29860613          	addi	a2,a2,664 # 22298 <zeroes.4123+0x50>
   17eac:	00000593          	li	a1,0
   17eb0:	00048513          	mv	a0,s1
   17eb4:	000400e7          	jalr	s0
   17eb8:	00050793          	mv	a5,a0
   17ebc:	f95ff06f          	j	17e50 <_mbrtowc_r+0x60>

0000000000017ec0 <mbrtowc>:
   17ec0:	fc010113          	addi	sp,sp,-64
   17ec4:	02913423          	sd	s1,40(sp)
   17ec8:	03213023          	sd	s2,32(sp)
   17ecc:	02113c23          	sd	ra,56(sp)
   17ed0:	02813823          	sd	s0,48(sp)
   17ed4:	01313c23          	sd	s3,24(sp)
   17ed8:	01413823          	sd	s4,16(sp)
   17edc:	01513423          	sd	s5,8(sp)
   17ee0:	00068913          	mv	s2,a3
   17ee4:	8101b483          	ld	s1,-2032(gp) # 249e0 <_impure_ptr>
   17ee8:	06058c63          	beqz	a1,17f60 <mbrtowc+0xa0>
   17eec:	8381ba83          	ld	s5,-1992(gp) # 24a08 <__mbtowc>
   17ef0:	00058413          	mv	s0,a1
   17ef4:	00060a13          	mv	s4,a2
   17ef8:	00050993          	mv	s3,a0
   17efc:	cf9ff0ef          	jal	17bf4 <__locale_charset>
   17f00:	00090793          	mv	a5,s2
   17f04:	00050713          	mv	a4,a0
   17f08:	000a0693          	mv	a3,s4
   17f0c:	00040613          	mv	a2,s0
   17f10:	00098593          	mv	a1,s3
   17f14:	00048513          	mv	a0,s1
   17f18:	000a80e7          	jalr	s5
   17f1c:	00050793          	mv	a5,a0
   17f20:	fff00713          	li	a4,-1
   17f24:	00078513          	mv	a0,a5
   17f28:	00e79a63          	bne	a5,a4,17f3c <mbrtowc+0x7c>
   17f2c:	00092023          	sw	zero,0(s2)
   17f30:	08a00793          	li	a5,138
   17f34:	00f4a023          	sw	a5,0(s1)
   17f38:	fff00513          	li	a0,-1
   17f3c:	03813083          	ld	ra,56(sp)
   17f40:	03013403          	ld	s0,48(sp)
   17f44:	02813483          	ld	s1,40(sp)
   17f48:	02013903          	ld	s2,32(sp)
   17f4c:	01813983          	ld	s3,24(sp)
   17f50:	01013a03          	ld	s4,16(sp)
   17f54:	00813a83          	ld	s5,8(sp)
   17f58:	04010113          	addi	sp,sp,64
   17f5c:	00008067          	ret
   17f60:	8381b403          	ld	s0,-1992(gp) # 24a08 <__mbtowc>
   17f64:	c91ff0ef          	jal	17bf4 <__locale_charset>
   17f68:	00022637          	lui	a2,0x22
   17f6c:	00090793          	mv	a5,s2
   17f70:	00050713          	mv	a4,a0
   17f74:	00100693          	li	a3,1
   17f78:	29860613          	addi	a2,a2,664 # 22298 <zeroes.4123+0x50>
   17f7c:	00000593          	li	a1,0
   17f80:	00048513          	mv	a0,s1
   17f84:	000400e7          	jalr	s0
   17f88:	00050793          	mv	a5,a0
   17f8c:	f95ff06f          	j	17f20 <mbrtowc+0x60>

0000000000017f90 <__ascii_mbtowc>:
   17f90:	ff010113          	addi	sp,sp,-16
   17f94:	02058463          	beqz	a1,17fbc <__ascii_mbtowc+0x2c>
   17f98:	02060663          	beqz	a2,17fc4 <__ascii_mbtowc+0x34>
   17f9c:	ffe00513          	li	a0,-2
   17fa0:	00068a63          	beqz	a3,17fb4 <__ascii_mbtowc+0x24>
   17fa4:	00064783          	lbu	a5,0(a2)
   17fa8:	00f5a023          	sw	a5,0(a1)
   17fac:	00064503          	lbu	a0,0(a2)
   17fb0:	00a03533          	snez	a0,a0
   17fb4:	01010113          	addi	sp,sp,16
   17fb8:	00008067          	ret
   17fbc:	00c10593          	addi	a1,sp,12
   17fc0:	fc061ee3          	bnez	a2,17f9c <__ascii_mbtowc+0xc>
   17fc4:	00000513          	li	a0,0
   17fc8:	01010113          	addi	sp,sp,16
   17fcc:	00008067          	ret

0000000000017fd0 <_mbtowc_r>:
   17fd0:	fc010113          	addi	sp,sp,-64
   17fd4:	02813823          	sd	s0,48(sp)
   17fd8:	8381b403          	ld	s0,-1992(gp) # 24a08 <__mbtowc>
   17fdc:	02113c23          	sd	ra,56(sp)
   17fe0:	02913423          	sd	s1,40(sp)
   17fe4:	03213023          	sd	s2,32(sp)
   17fe8:	01313c23          	sd	s3,24(sp)
   17fec:	01413823          	sd	s4,16(sp)
   17ff0:	01513423          	sd	s5,8(sp)
   17ff4:	00050493          	mv	s1,a0
   17ff8:	00070a93          	mv	s5,a4
   17ffc:	00058913          	mv	s2,a1
   18000:	00060993          	mv	s3,a2
   18004:	00068a13          	mv	s4,a3
   18008:	bedff0ef          	jal	17bf4 <__locale_charset>
   1800c:	000a8793          	mv	a5,s5
   18010:	00050713          	mv	a4,a0
   18014:	000a0693          	mv	a3,s4
   18018:	00098613          	mv	a2,s3
   1801c:	00090593          	mv	a1,s2
   18020:	00048513          	mv	a0,s1
   18024:	00040313          	mv	t1,s0
   18028:	03813083          	ld	ra,56(sp)
   1802c:	03013403          	ld	s0,48(sp)
   18030:	02813483          	ld	s1,40(sp)
   18034:	02013903          	ld	s2,32(sp)
   18038:	01813983          	ld	s3,24(sp)
   1803c:	01013a03          	ld	s4,16(sp)
   18040:	00813a83          	ld	s5,8(sp)
   18044:	04010113          	addi	sp,sp,64
   18048:	00030067          	jr	t1

000000000001804c <memchr>:
   1804c:	00757793          	andi	a5,a0,7
   18050:	0ff5f813          	andi	a6,a1,255
   18054:	0c078c63          	beqz	a5,1812c <memchr+0xe0>
   18058:	fff60793          	addi	a5,a2,-1
   1805c:	06060463          	beqz	a2,180c4 <memchr+0x78>
   18060:	00054703          	lbu	a4,0(a0)
   18064:	07070263          	beq	a4,a6,180c8 <memchr+0x7c>
   18068:	00080693          	mv	a3,a6
   1806c:	0140006f          	j	18080 <memchr+0x34>
   18070:	04078a63          	beqz	a5,180c4 <memchr+0x78>
   18074:	00054703          	lbu	a4,0(a0)
   18078:	fff78793          	addi	a5,a5,-1
   1807c:	04d70663          	beq	a4,a3,180c8 <memchr+0x7c>
   18080:	00150513          	addi	a0,a0,1
   18084:	00757713          	andi	a4,a0,7
   18088:	fe0714e3          	bnez	a4,18070 <memchr+0x24>
   1808c:	00700693          	li	a3,7
   18090:	02f6ee63          	bltu	a3,a5,180cc <memchr+0x80>
   18094:	02078863          	beqz	a5,180c4 <memchr+0x78>
   18098:	00054703          	lbu	a4,0(a0)
   1809c:	03070663          	beq	a4,a6,180c8 <memchr+0x7c>
   180a0:	00150713          	addi	a4,a0,1
   180a4:	00f507b3          	add	a5,a0,a5
   180a8:	00080613          	mv	a2,a6
   180ac:	0100006f          	j	180bc <memchr+0x70>
   180b0:	00170713          	addi	a4,a4,1
   180b4:	fff74683          	lbu	a3,-1(a4)
   180b8:	00c68863          	beq	a3,a2,180c8 <memchr+0x7c>
   180bc:	00070513          	mv	a0,a4
   180c0:	fee798e3          	bne	a5,a4,180b0 <memchr+0x64>
   180c4:	00000513          	li	a0,0
   180c8:	00008067          	ret
   180cc:	0ff5f593          	andi	a1,a1,255
   180d0:	0085971b          	slliw	a4,a1,0x8
   180d4:	00b765b3          	or	a1,a4,a1
   180d8:	00058713          	mv	a4,a1
   180dc:	01071613          	slli	a2,a4,0x10
   180e0:	00c76733          	or	a4,a4,a2
   180e4:	00025637          	lui	a2,0x25
   180e8:	a6863303          	ld	t1,-1432(a2) # 24a68 <mask+0x50>
   180ec:	00025637          	lui	a2,0x25
   180f0:	a7063883          	ld	a7,-1424(a2) # 24a70 <mask+0x58>
   180f4:	02071613          	slli	a2,a4,0x20
   180f8:	00e66633          	or	a2,a2,a4
   180fc:	00068593          	mv	a1,a3
   18100:	00053703          	ld	a4,0(a0)
   18104:	00e64733          	xor	a4,a2,a4
   18108:	006706b3          	add	a3,a4,t1
   1810c:	fff74713          	not	a4,a4
   18110:	00e6f733          	and	a4,a3,a4
   18114:	01177733          	and	a4,a4,a7
   18118:	f80710e3          	bnez	a4,18098 <memchr+0x4c>
   1811c:	ff878793          	addi	a5,a5,-8
   18120:	00850513          	addi	a0,a0,8
   18124:	fcf5eee3          	bltu	a1,a5,18100 <memchr+0xb4>
   18128:	f6dff06f          	j	18094 <memchr+0x48>
   1812c:	00060793          	mv	a5,a2
   18130:	f5dff06f          	j	1808c <memchr+0x40>

0000000000018134 <memmove>:
   18134:	02a5f863          	bleu	a0,a1,18164 <memmove+0x30>
   18138:	00c58733          	add	a4,a1,a2
   1813c:	02e57463          	bleu	a4,a0,18164 <memmove+0x30>
   18140:	00c507b3          	add	a5,a0,a2
   18144:	40c785b3          	sub	a1,a5,a2
   18148:	0e060263          	beqz	a2,1822c <memmove+0xf8>
   1814c:	fff70713          	addi	a4,a4,-1
   18150:	00074683          	lbu	a3,0(a4)
   18154:	fff78793          	addi	a5,a5,-1
   18158:	00d78023          	sb	a3,0(a5)
   1815c:	fef598e3          	bne	a1,a5,1814c <memmove+0x18>
   18160:	00008067          	ret
   18164:	01f00893          	li	a7,31
   18168:	0cc8f463          	bleu	a2,a7,18230 <memmove+0xfc>
   1816c:	00a5e7b3          	or	a5,a1,a0
   18170:	0077f793          	andi	a5,a5,7
   18174:	0c079463          	bnez	a5,1823c <memmove+0x108>
   18178:	00058713          	mv	a4,a1
   1817c:	00050793          	mv	a5,a0
   18180:	00060693          	mv	a3,a2
   18184:	00073803          	ld	a6,0(a4)
   18188:	02078793          	addi	a5,a5,32
   1818c:	02070713          	addi	a4,a4,32
   18190:	ff07b023          	sd	a6,-32(a5)
   18194:	fe873803          	ld	a6,-24(a4)
   18198:	fe068693          	addi	a3,a3,-32
   1819c:	ff07b423          	sd	a6,-24(a5)
   181a0:	ff073803          	ld	a6,-16(a4)
   181a4:	ff07b823          	sd	a6,-16(a5)
   181a8:	ff873803          	ld	a6,-8(a4)
   181ac:	ff07bc23          	sd	a6,-8(a5)
   181b0:	fcd8eae3          	bltu	a7,a3,18184 <memmove+0x50>
   181b4:	fe060713          	addi	a4,a2,-32
   181b8:	fe077713          	andi	a4,a4,-32
   181bc:	02070713          	addi	a4,a4,32
   181c0:	01f67e13          	andi	t3,a2,31
   181c4:	00700313          	li	t1,7
   181c8:	00e507b3          	add	a5,a0,a4
   181cc:	00e585b3          	add	a1,a1,a4
   181d0:	07c37c63          	bleu	t3,t1,18248 <memmove+0x114>
   181d4:	00058813          	mv	a6,a1
   181d8:	00078693          	mv	a3,a5
   181dc:	000e0713          	mv	a4,t3
   181e0:	00880813          	addi	a6,a6,8
   181e4:	ff883883          	ld	a7,-8(a6)
   181e8:	00868693          	addi	a3,a3,8
   181ec:	ff870713          	addi	a4,a4,-8
   181f0:	ff16bc23          	sd	a7,-8(a3)
   181f4:	fee366e3          	bltu	t1,a4,181e0 <memmove+0xac>
   181f8:	ff8e0713          	addi	a4,t3,-8
   181fc:	ff877713          	andi	a4,a4,-8
   18200:	00870713          	addi	a4,a4,8
   18204:	00767613          	andi	a2,a2,7
   18208:	00e787b3          	add	a5,a5,a4
   1820c:	00e585b3          	add	a1,a1,a4
   18210:	02060a63          	beqz	a2,18244 <memmove+0x110>
   18214:	00c78633          	add	a2,a5,a2
   18218:	00158593          	addi	a1,a1,1
   1821c:	fff5c703          	lbu	a4,-1(a1)
   18220:	00178793          	addi	a5,a5,1
   18224:	fee78fa3          	sb	a4,-1(a5)
   18228:	fec798e3          	bne	a5,a2,18218 <memmove+0xe4>
   1822c:	00008067          	ret
   18230:	00050793          	mv	a5,a0
   18234:	fe0610e3          	bnez	a2,18214 <memmove+0xe0>
   18238:	00c0006f          	j	18244 <memmove+0x110>
   1823c:	00050793          	mv	a5,a0
   18240:	fd5ff06f          	j	18214 <memmove+0xe0>
   18244:	00008067          	ret
   18248:	000e0613          	mv	a2,t3
   1824c:	fc0614e3          	bnez	a2,18214 <memmove+0xe0>
   18250:	ff5ff06f          	j	18244 <memmove+0x110>

0000000000018254 <memset>:
   18254:	00f00813          	li	a6,15
   18258:	00050713          	mv	a4,a0
   1825c:	02c87a63          	bleu	a2,a6,18290 <memset+0x3c>
   18260:	00f77793          	andi	a5,a4,15
   18264:	0a079063          	bnez	a5,18304 <memset+0xb0>
   18268:	06059e63          	bnez	a1,182e4 <memset+0x90>
   1826c:	ff067693          	andi	a3,a2,-16
   18270:	00f67613          	andi	a2,a2,15
   18274:	00e686b3          	add	a3,a3,a4
   18278:	00b73023          	sd	a1,0(a4)
   1827c:	00b73423          	sd	a1,8(a4)
   18280:	01070713          	addi	a4,a4,16
   18284:	fed76ae3          	bltu	a4,a3,18278 <memset+0x24>
   18288:	00061463          	bnez	a2,18290 <memset+0x3c>
   1828c:	00008067          	ret
   18290:	40c806b3          	sub	a3,a6,a2
   18294:	00269693          	slli	a3,a3,0x2
   18298:	00000297          	auipc	t0,0x0
   1829c:	005686b3          	add	a3,a3,t0
   182a0:	00c68067          	jr	a3,12
   182a4:	00b70723          	sb	a1,14(a4)
   182a8:	00b706a3          	sb	a1,13(a4)
   182ac:	00b70623          	sb	a1,12(a4)
   182b0:	00b705a3          	sb	a1,11(a4)
   182b4:	00b70523          	sb	a1,10(a4)
   182b8:	00b704a3          	sb	a1,9(a4)
   182bc:	00b70423          	sb	a1,8(a4)
   182c0:	00b703a3          	sb	a1,7(a4)
   182c4:	00b70323          	sb	a1,6(a4)
   182c8:	00b702a3          	sb	a1,5(a4)
   182cc:	00b70223          	sb	a1,4(a4)
   182d0:	00b701a3          	sb	a1,3(a4)
   182d4:	00b70123          	sb	a1,2(a4)
   182d8:	00b700a3          	sb	a1,1(a4)
   182dc:	00b70023          	sb	a1,0(a4)
   182e0:	00008067          	ret
   182e4:	0ff5f593          	andi	a1,a1,255
   182e8:	00859693          	slli	a3,a1,0x8
   182ec:	00d5e5b3          	or	a1,a1,a3
   182f0:	01059693          	slli	a3,a1,0x10
   182f4:	00d5e5b3          	or	a1,a1,a3
   182f8:	02059693          	slli	a3,a1,0x20
   182fc:	00d5e5b3          	or	a1,a1,a3
   18300:	f6dff06f          	j	1826c <memset+0x18>
   18304:	00279693          	slli	a3,a5,0x2
   18308:	00000297          	auipc	t0,0x0
   1830c:	005686b3          	add	a3,a3,t0
   18310:	00008293          	mv	t0,ra
   18314:	f98680e7          	jalr	a3,-104
   18318:	00028093          	mv	ra,t0
   1831c:	ff078793          	addi	a5,a5,-16
   18320:	40f70733          	sub	a4,a4,a5
   18324:	00f60633          	add	a2,a2,a5
   18328:	f6c874e3          	bleu	a2,a6,18290 <memset+0x3c>
   1832c:	f3dff06f          	j	18268 <memset+0x14>

0000000000018330 <_Balloc>:
   18330:	07853783          	ld	a5,120(a0)
   18334:	fe010113          	addi	sp,sp,-32
   18338:	00813823          	sd	s0,16(sp)
   1833c:	00913423          	sd	s1,8(sp)
   18340:	00113c23          	sd	ra,24(sp)
   18344:	01213023          	sd	s2,0(sp)
   18348:	00050413          	mv	s0,a0
   1834c:	00058493          	mv	s1,a1
   18350:	02078e63          	beqz	a5,1838c <_Balloc+0x5c>
   18354:	00349513          	slli	a0,s1,0x3
   18358:	00a787b3          	add	a5,a5,a0
   1835c:	0007b503          	ld	a0,0(a5)
   18360:	04050663          	beqz	a0,183ac <_Balloc+0x7c>
   18364:	00053703          	ld	a4,0(a0)
   18368:	00e7b023          	sd	a4,0(a5)
   1836c:	00052a23          	sw	zero,20(a0)
   18370:	00052823          	sw	zero,16(a0)
   18374:	01813083          	ld	ra,24(sp)
   18378:	01013403          	ld	s0,16(sp)
   1837c:	00813483          	ld	s1,8(sp)
   18380:	00013903          	ld	s2,0(sp)
   18384:	02010113          	addi	sp,sp,32
   18388:	00008067          	ret
   1838c:	04100613          	li	a2,65
   18390:	00800593          	li	a1,8
   18394:	388060ef          	jal	1e71c <_calloc_r>
   18398:	06a43c23          	sd	a0,120(s0)
   1839c:	00050793          	mv	a5,a0
   183a0:	fa051ae3          	bnez	a0,18354 <_Balloc+0x24>
   183a4:	00000513          	li	a0,0
   183a8:	fcdff06f          	j	18374 <_Balloc+0x44>
   183ac:	00100913          	li	s2,1
   183b0:	0099193b          	sllw	s2,s2,s1
   183b4:	fff9061b          	addiw	a2,s2,-1
   183b8:	00860613          	addi	a2,a2,8
   183bc:	00261613          	slli	a2,a2,0x2
   183c0:	00100593          	li	a1,1
   183c4:	00040513          	mv	a0,s0
   183c8:	354060ef          	jal	1e71c <_calloc_r>
   183cc:	fc050ce3          	beqz	a0,183a4 <_Balloc+0x74>
   183d0:	00952423          	sw	s1,8(a0)
   183d4:	01252623          	sw	s2,12(a0)
   183d8:	f95ff06f          	j	1836c <_Balloc+0x3c>

00000000000183dc <_Bfree>:
   183dc:	02058063          	beqz	a1,183fc <_Bfree+0x20>
   183e0:	0085a783          	lw	a5,8(a1)
   183e4:	07853703          	ld	a4,120(a0)
   183e8:	00379793          	slli	a5,a5,0x3
   183ec:	00f707b3          	add	a5,a4,a5
   183f0:	0007b703          	ld	a4,0(a5)
   183f4:	00e5b023          	sd	a4,0(a1)
   183f8:	00b7b023          	sd	a1,0(a5)
   183fc:	00008067          	ret

0000000000018400 <__multadd>:
   18400:	fc010113          	addi	sp,sp,-64
   18404:	00010837          	lui	a6,0x10
   18408:	02813823          	sd	s0,48(sp)
   1840c:	02913423          	sd	s1,40(sp)
   18410:	03213023          	sd	s2,32(sp)
   18414:	00058493          	mv	s1,a1
   18418:	0145a403          	lw	s0,20(a1)
   1841c:	00050913          	mv	s2,a0
   18420:	02113c23          	sd	ra,56(sp)
   18424:	01313c23          	sd	s3,24(sp)
   18428:	01858593          	addi	a1,a1,24
   1842c:	00000513          	li	a0,0
   18430:	fff8081b          	addiw	a6,a6,-1
   18434:	0005a783          	lw	a5,0(a1)
   18438:	00458593          	addi	a1,a1,4
   1843c:	0015051b          	addiw	a0,a0,1
   18440:	0107f733          	and	a4,a5,a6
   18444:	02c7073b          	mulw	a4,a4,a2
   18448:	0107d79b          	srliw	a5,a5,0x10
   1844c:	02c787bb          	mulw	a5,a5,a2
   18450:	00d7073b          	addw	a4,a4,a3
   18454:	0107569b          	srliw	a3,a4,0x10
   18458:	01077733          	and	a4,a4,a6
   1845c:	00d786bb          	addw	a3,a5,a3
   18460:	0106979b          	slliw	a5,a3,0x10
   18464:	00e7873b          	addw	a4,a5,a4
   18468:	fee5ae23          	sw	a4,-4(a1)
   1846c:	0106d69b          	srliw	a3,a3,0x10
   18470:	fc8542e3          	blt	a0,s0,18434 <__multadd+0x34>
   18474:	02068263          	beqz	a3,18498 <__multadd+0x98>
   18478:	00c4a783          	lw	a5,12(s1)
   1847c:	02f45e63          	ble	a5,s0,184b8 <__multadd+0xb8>
   18480:	00440793          	addi	a5,s0,4
   18484:	00279793          	slli	a5,a5,0x2
   18488:	00f487b3          	add	a5,s1,a5
   1848c:	00d7a423          	sw	a3,8(a5)
   18490:	0014041b          	addiw	s0,s0,1
   18494:	0084aa23          	sw	s0,20(s1)
   18498:	03813083          	ld	ra,56(sp)
   1849c:	00048513          	mv	a0,s1
   184a0:	03013403          	ld	s0,48(sp)
   184a4:	02813483          	ld	s1,40(sp)
   184a8:	02013903          	ld	s2,32(sp)
   184ac:	01813983          	ld	s3,24(sp)
   184b0:	04010113          	addi	sp,sp,64
   184b4:	00008067          	ret
   184b8:	0084a583          	lw	a1,8(s1)
   184bc:	00090513          	mv	a0,s2
   184c0:	00d13423          	sd	a3,8(sp)
   184c4:	0015859b          	addiw	a1,a1,1
   184c8:	e69ff0ef          	jal	18330 <_Balloc>
   184cc:	0144a603          	lw	a2,20(s1)
   184d0:	00050993          	mv	s3,a0
   184d4:	01048593          	addi	a1,s1,16
   184d8:	00260613          	addi	a2,a2,2
   184dc:	01050513          	addi	a0,a0,16
   184e0:	00261613          	slli	a2,a2,0x2
   184e4:	d0cf90ef          	jal	119f0 <memcpy>
   184e8:	0084a703          	lw	a4,8(s1)
   184ec:	07893783          	ld	a5,120(s2)
   184f0:	00813683          	ld	a3,8(sp)
   184f4:	00371713          	slli	a4,a4,0x3
   184f8:	00e787b3          	add	a5,a5,a4
   184fc:	0007b703          	ld	a4,0(a5)
   18500:	00e4b023          	sd	a4,0(s1)
   18504:	0097b023          	sd	s1,0(a5)
   18508:	00098493          	mv	s1,s3
   1850c:	f75ff06f          	j	18480 <__multadd+0x80>

0000000000018510 <__s2b>:
   18510:	fc010113          	addi	sp,sp,-64
   18514:	0086879b          	addiw	a5,a3,8
   18518:	03213023          	sd	s2,32(sp)
   1851c:	00068913          	mv	s2,a3
   18520:	00900693          	li	a3,9
   18524:	02d7c6bb          	divw	a3,a5,a3
   18528:	02813823          	sd	s0,48(sp)
   1852c:	02913423          	sd	s1,40(sp)
   18530:	01313c23          	sd	s3,24(sp)
   18534:	01413823          	sd	s4,16(sp)
   18538:	02113c23          	sd	ra,56(sp)
   1853c:	01513423          	sd	s5,8(sp)
   18540:	01613023          	sd	s6,0(sp)
   18544:	00100793          	li	a5,1
   18548:	00058413          	mv	s0,a1
   1854c:	00050993          	mv	s3,a0
   18550:	00060a13          	mv	s4,a2
   18554:	00070493          	mv	s1,a4
   18558:	00000593          	li	a1,0
   1855c:	00d7d863          	ble	a3,a5,1856c <__s2b+0x5c>
   18560:	0017979b          	slliw	a5,a5,0x1
   18564:	0015859b          	addiw	a1,a1,1
   18568:	fed7cce3          	blt	a5,a3,18560 <__s2b+0x50>
   1856c:	00098513          	mv	a0,s3
   18570:	dc1ff0ef          	jal	18330 <_Balloc>
   18574:	00100793          	li	a5,1
   18578:	00f52a23          	sw	a5,20(a0)
   1857c:	00952c23          	sw	s1,24(a0)
   18580:	00900793          	li	a5,9
   18584:	0b47d663          	ble	s4,a5,18630 <__s2b+0x120>
   18588:	ff6a0b1b          	addiw	s6,s4,-10
   1858c:	020b1b13          	slli	s6,s6,0x20
   18590:	020b5b13          	srli	s6,s6,0x20
   18594:	00940a93          	addi	s5,s0,9
   18598:	00ab0793          	addi	a5,s6,10
   1859c:	00f40433          	add	s0,s0,a5
   185a0:	000a8493          	mv	s1,s5
   185a4:	00148493          	addi	s1,s1,1
   185a8:	fff4c683          	lbu	a3,-1(s1)
   185ac:	00050593          	mv	a1,a0
   185b0:	00a00613          	li	a2,10
   185b4:	fd06869b          	addiw	a3,a3,-48
   185b8:	00098513          	mv	a0,s3
   185bc:	e45ff0ef          	jal	18400 <__multadd>
   185c0:	fe8492e3          	bne	s1,s0,185a4 <__s2b+0x94>
   185c4:	016a8433          	add	s0,s5,s6
   185c8:	00240413          	addi	s0,s0,2
   185cc:	032a5e63          	ble	s2,s4,18608 <__s2b+0xf8>
   185d0:	fff9091b          	addiw	s2,s2,-1
   185d4:	414904bb          	subw	s1,s2,s4
   185d8:	02049493          	slli	s1,s1,0x20
   185dc:	0204d493          	srli	s1,s1,0x20
   185e0:	00148493          	addi	s1,s1,1
   185e4:	009404b3          	add	s1,s0,s1
   185e8:	00140413          	addi	s0,s0,1
   185ec:	fff44683          	lbu	a3,-1(s0)
   185f0:	00050593          	mv	a1,a0
   185f4:	00a00613          	li	a2,10
   185f8:	fd06869b          	addiw	a3,a3,-48
   185fc:	00098513          	mv	a0,s3
   18600:	e01ff0ef          	jal	18400 <__multadd>
   18604:	fe9412e3          	bne	s0,s1,185e8 <__s2b+0xd8>
   18608:	03813083          	ld	ra,56(sp)
   1860c:	03013403          	ld	s0,48(sp)
   18610:	02813483          	ld	s1,40(sp)
   18614:	02013903          	ld	s2,32(sp)
   18618:	01813983          	ld	s3,24(sp)
   1861c:	01013a03          	ld	s4,16(sp)
   18620:	00813a83          	ld	s5,8(sp)
   18624:	00013b03          	ld	s6,0(sp)
   18628:	04010113          	addi	sp,sp,64
   1862c:	00008067          	ret
   18630:	00a40413          	addi	s0,s0,10
   18634:	00078a13          	mv	s4,a5
   18638:	f95ff06f          	j	185cc <__s2b+0xbc>

000000000001863c <__hi0bits>:
   1863c:	ffff06b7          	lui	a3,0xffff0
   18640:	00d576b3          	and	a3,a0,a3
   18644:	00050793          	mv	a5,a0
   18648:	00000713          	li	a4,0
   1864c:	00069663          	bnez	a3,18658 <__hi0bits+0x1c>
   18650:	0105179b          	slliw	a5,a0,0x10
   18654:	01000713          	li	a4,16
   18658:	ff0006b7          	lui	a3,0xff000
   1865c:	00d7f6b3          	and	a3,a5,a3
   18660:	00069663          	bnez	a3,1866c <__hi0bits+0x30>
   18664:	0087071b          	addiw	a4,a4,8
   18668:	0087979b          	slliw	a5,a5,0x8
   1866c:	f00006b7          	lui	a3,0xf0000
   18670:	00d7f6b3          	and	a3,a5,a3
   18674:	00069663          	bnez	a3,18680 <__hi0bits+0x44>
   18678:	0047071b          	addiw	a4,a4,4
   1867c:	0047979b          	slliw	a5,a5,0x4
   18680:	c00006b7          	lui	a3,0xc0000
   18684:	00d7f6b3          	and	a3,a5,a3
   18688:	00069663          	bnez	a3,18694 <__hi0bits+0x58>
   1868c:	0027071b          	addiw	a4,a4,2
   18690:	0027979b          	slliw	a5,a5,0x2
   18694:	0007ce63          	bltz	a5,186b0 <__hi0bits+0x74>
   18698:	02179693          	slli	a3,a5,0x21
   1869c:	02000513          	li	a0,32
   186a0:	0006c463          	bltz	a3,186a8 <__hi0bits+0x6c>
   186a4:	00008067          	ret
   186a8:	0017051b          	addiw	a0,a4,1
   186ac:	00008067          	ret
   186b0:	00070513          	mv	a0,a4
   186b4:	00008067          	ret

00000000000186b8 <__lo0bits>:
   186b8:	00052783          	lw	a5,0(a0)
   186bc:	00050693          	mv	a3,a0
   186c0:	0077f713          	andi	a4,a5,7
   186c4:	02070463          	beqz	a4,186ec <__lo0bits+0x34>
   186c8:	0017f713          	andi	a4,a5,1
   186cc:	00000513          	li	a0,0
   186d0:	08071263          	bnez	a4,18754 <__lo0bits+0x9c>
   186d4:	0027f713          	andi	a4,a5,2
   186d8:	08071063          	bnez	a4,18758 <__lo0bits+0xa0>
   186dc:	0027d79b          	srliw	a5,a5,0x2
   186e0:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_end+0xffffffffbffd8c88>
   186e4:	00200513          	li	a0,2
   186e8:	00008067          	ret
   186ec:	0107961b          	slliw	a2,a5,0x10
   186f0:	0106561b          	srliw	a2,a2,0x10
   186f4:	00000713          	li	a4,0
   186f8:	00061663          	bnez	a2,18704 <__lo0bits+0x4c>
   186fc:	0107d79b          	srliw	a5,a5,0x10
   18700:	01000713          	li	a4,16
   18704:	0ff7f613          	andi	a2,a5,255
   18708:	00061663          	bnez	a2,18714 <__lo0bits+0x5c>
   1870c:	0087071b          	addiw	a4,a4,8
   18710:	0087d79b          	srliw	a5,a5,0x8
   18714:	00f7f613          	andi	a2,a5,15
   18718:	00061663          	bnez	a2,18724 <__lo0bits+0x6c>
   1871c:	0047071b          	addiw	a4,a4,4
   18720:	0047d79b          	srliw	a5,a5,0x4
   18724:	0037f613          	andi	a2,a5,3
   18728:	00061663          	bnez	a2,18734 <__lo0bits+0x7c>
   1872c:	0027071b          	addiw	a4,a4,2
   18730:	0027d79b          	srliw	a5,a5,0x2
   18734:	0017f613          	andi	a2,a5,1
   18738:	00061a63          	bnez	a2,1874c <__lo0bits+0x94>
   1873c:	0017d79b          	srliw	a5,a5,0x1
   18740:	02000513          	li	a0,32
   18744:	00078863          	beqz	a5,18754 <__lo0bits+0x9c>
   18748:	0017071b          	addiw	a4,a4,1
   1874c:	00f6a023          	sw	a5,0(a3)
   18750:	00070513          	mv	a0,a4
   18754:	00008067          	ret
   18758:	0017d79b          	srliw	a5,a5,0x1
   1875c:	00f6a023          	sw	a5,0(a3)
   18760:	00100513          	li	a0,1
   18764:	00008067          	ret

0000000000018768 <__i2b>:
   18768:	ff010113          	addi	sp,sp,-16
   1876c:	00813023          	sd	s0,0(sp)
   18770:	00058413          	mv	s0,a1
   18774:	00100593          	li	a1,1
   18778:	00113423          	sd	ra,8(sp)
   1877c:	bb5ff0ef          	jal	18330 <_Balloc>
   18780:	00813083          	ld	ra,8(sp)
   18784:	00100713          	li	a4,1
   18788:	00852c23          	sw	s0,24(a0)
   1878c:	00e52a23          	sw	a4,20(a0)
   18790:	00013403          	ld	s0,0(sp)
   18794:	01010113          	addi	sp,sp,16
   18798:	00008067          	ret

000000000001879c <__multiply>:
   1879c:	fd010113          	addi	sp,sp,-48
   187a0:	01313423          	sd	s3,8(sp)
   187a4:	01413023          	sd	s4,0(sp)
   187a8:	0145a983          	lw	s3,20(a1)
   187ac:	01462a03          	lw	s4,20(a2)
   187b0:	00913c23          	sd	s1,24(sp)
   187b4:	01213823          	sd	s2,16(sp)
   187b8:	02113423          	sd	ra,40(sp)
   187bc:	02813023          	sd	s0,32(sp)
   187c0:	00058913          	mv	s2,a1
   187c4:	00060493          	mv	s1,a2
   187c8:	0149dc63          	ble	s4,s3,187e0 <__multiply+0x44>
   187cc:	00098713          	mv	a4,s3
   187d0:	00060913          	mv	s2,a2
   187d4:	000a0993          	mv	s3,s4
   187d8:	00058493          	mv	s1,a1
   187dc:	00070a13          	mv	s4,a4
   187e0:	00c92783          	lw	a5,12(s2)
   187e4:	00892583          	lw	a1,8(s2)
   187e8:	0149843b          	addw	s0,s3,s4
   187ec:	0087a7b3          	slt	a5,a5,s0
   187f0:	00f585bb          	addw	a1,a1,a5
   187f4:	b3dff0ef          	jal	18330 <_Balloc>
   187f8:	00040893          	mv	a7,s0
   187fc:	01850313          	addi	t1,a0,24
   18800:	00289893          	slli	a7,a7,0x2
   18804:	011308b3          	add	a7,t1,a7
   18808:	00030793          	mv	a5,t1
   1880c:	01137863          	bleu	a7,t1,1881c <__multiply+0x80>
   18810:	0007a023          	sw	zero,0(a5)
   18814:	00478793          	addi	a5,a5,4
   18818:	ff17ece3          	bltu	a5,a7,18810 <__multiply+0x74>
   1881c:	01848613          	addi	a2,s1,24
   18820:	002a1e13          	slli	t3,s4,0x2
   18824:	01890e93          	addi	t4,s2,24
   18828:	00299813          	slli	a6,s3,0x2
   1882c:	000105b7          	lui	a1,0x10
   18830:	01c60e33          	add	t3,a2,t3
   18834:	010e8833          	add	a6,t4,a6
   18838:	fff5859b          	addiw	a1,a1,-1
   1883c:	11c67463          	bleu	t3,a2,18944 <__multiply+0x1a8>
   18840:	00062383          	lw	t2,0(a2)
   18844:	00b3f4b3          	and	s1,t2,a1
   18848:	06048a63          	beqz	s1,188bc <__multiply+0x120>
   1884c:	00030293          	mv	t0,t1
   18850:	000e8f93          	mv	t6,t4
   18854:	00000793          	li	a5,0
   18858:	0080006f          	j	18860 <__multiply+0xc4>
   1885c:	00038293          	mv	t0,t2
   18860:	000fa683          	lw	a3,0(t6)
   18864:	0002af03          	lw	t5,0(t0) # 18308 <memset+0xb4>
   18868:	00428393          	addi	t2,t0,4
   1886c:	00b6f733          	and	a4,a3,a1
   18870:	0297073b          	mulw	a4,a4,s1
   18874:	0106d69b          	srliw	a3,a3,0x10
   18878:	00bf7933          	and	s2,t5,a1
   1887c:	010f5f1b          	srliw	t5,t5,0x10
   18880:	004f8f93          	addi	t6,t6,4
   18884:	029686bb          	mulw	a3,a3,s1
   18888:	0127073b          	addw	a4,a4,s2
   1888c:	00f707bb          	addw	a5,a4,a5
   18890:	0107d71b          	srliw	a4,a5,0x10
   18894:	00b7f7b3          	and	a5,a5,a1
   18898:	01e686bb          	addw	a3,a3,t5
   1889c:	00e6873b          	addw	a4,a3,a4
   188a0:	0107169b          	slliw	a3,a4,0x10
   188a4:	00f6e7b3          	or	a5,a3,a5
   188a8:	fef3ae23          	sw	a5,-4(t2)
   188ac:	0107579b          	srliw	a5,a4,0x10
   188b0:	fb0fe6e3          	bltu	t6,a6,1885c <__multiply+0xc0>
   188b4:	00f2a223          	sw	a5,4(t0)
   188b8:	00062383          	lw	t2,0(a2)
   188bc:	0103d39b          	srliw	t2,t2,0x10
   188c0:	06038c63          	beqz	t2,18938 <__multiply+0x19c>
   188c4:	00032783          	lw	a5,0(t1) # 10000 <_ftext>
   188c8:	00030293          	mv	t0,t1
   188cc:	000e8f93          	mv	t6,t4
   188d0:	00078f13          	mv	t5,a5
   188d4:	00000693          	li	a3,0
   188d8:	0080006f          	j	188e0 <__multiply+0x144>
   188dc:	00048293          	mv	t0,s1
   188e0:	000fa703          	lw	a4,0(t6)
   188e4:	010f5f1b          	srliw	t5,t5,0x10
   188e8:	00b7f7b3          	and	a5,a5,a1
   188ec:	00b77733          	and	a4,a4,a1
   188f0:	0277073b          	mulw	a4,a4,t2
   188f4:	00428493          	addi	s1,t0,4
   188f8:	004f8f93          	addi	t6,t6,4
   188fc:	01e7073b          	addw	a4,a4,t5
   18900:	00d706bb          	addw	a3,a4,a3
   18904:	0106971b          	slliw	a4,a3,0x10
   18908:	00f767b3          	or	a5,a4,a5
   1890c:	fef4ae23          	sw	a5,-4(s1)
   18910:	ffefd703          	lhu	a4,-2(t6)
   18914:	0042af03          	lw	t5,4(t0)
   18918:	0106d69b          	srliw	a3,a3,0x10
   1891c:	0277073b          	mulw	a4,a4,t2
   18920:	00bf77b3          	and	a5,t5,a1
   18924:	00f707bb          	addw	a5,a4,a5
   18928:	00d787bb          	addw	a5,a5,a3
   1892c:	0107d69b          	srliw	a3,a5,0x10
   18930:	fb0fe6e3          	bltu	t6,a6,188dc <__multiply+0x140>
   18934:	00f2a223          	sw	a5,4(t0)
   18938:	00460613          	addi	a2,a2,4
   1893c:	00430313          	addi	t1,t1,4
   18940:	f1c660e3          	bltu	a2,t3,18840 <__multiply+0xa4>
   18944:	02805463          	blez	s0,1896c <__multiply+0x1d0>
   18948:	ffc8a783          	lw	a5,-4(a7)
   1894c:	ffc88893          	addi	a7,a7,-4
   18950:	00078863          	beqz	a5,18960 <__multiply+0x1c4>
   18954:	0180006f          	j	1896c <__multiply+0x1d0>
   18958:	0008a783          	lw	a5,0(a7)
   1895c:	00079863          	bnez	a5,1896c <__multiply+0x1d0>
   18960:	fff4041b          	addiw	s0,s0,-1
   18964:	ffc88893          	addi	a7,a7,-4
   18968:	fe0418e3          	bnez	s0,18958 <__multiply+0x1bc>
   1896c:	02813083          	ld	ra,40(sp)
   18970:	00852a23          	sw	s0,20(a0)
   18974:	01813483          	ld	s1,24(sp)
   18978:	02013403          	ld	s0,32(sp)
   1897c:	01013903          	ld	s2,16(sp)
   18980:	00813983          	ld	s3,8(sp)
   18984:	00013a03          	ld	s4,0(sp)
   18988:	03010113          	addi	sp,sp,48
   1898c:	00008067          	ret

0000000000018990 <__pow5mult>:
   18990:	fd010113          	addi	sp,sp,-48
   18994:	02813023          	sd	s0,32(sp)
   18998:	01213823          	sd	s2,16(sp)
   1899c:	01313423          	sd	s3,8(sp)
   189a0:	02113423          	sd	ra,40(sp)
   189a4:	00913c23          	sd	s1,24(sp)
   189a8:	00367793          	andi	a5,a2,3
   189ac:	00060413          	mv	s0,a2
   189b0:	00050993          	mv	s3,a0
   189b4:	00058913          	mv	s2,a1
   189b8:	0a079e63          	bnez	a5,18a74 <__pow5mult+0xe4>
   189bc:	4024541b          	sraiw	s0,s0,0x2
   189c0:	06040663          	beqz	s0,18a2c <__pow5mult+0x9c>
   189c4:	0709b483          	ld	s1,112(s3) # ffffffffffffe070 <_end+0xfffffffffffd6cf8>
   189c8:	0c048a63          	beqz	s1,18a9c <__pow5mult+0x10c>
   189cc:	00147793          	andi	a5,s0,1
   189d0:	02079063          	bnez	a5,189f0 <__pow5mult+0x60>
   189d4:	4014541b          	sraiw	s0,s0,0x1
   189d8:	04040a63          	beqz	s0,18a2c <__pow5mult+0x9c>
   189dc:	0004b503          	ld	a0,0(s1)
   189e0:	06050663          	beqz	a0,18a4c <__pow5mult+0xbc>
   189e4:	00050493          	mv	s1,a0
   189e8:	00147793          	andi	a5,s0,1
   189ec:	fe0784e3          	beqz	a5,189d4 <__pow5mult+0x44>
   189f0:	00048613          	mv	a2,s1
   189f4:	00090593          	mv	a1,s2
   189f8:	00098513          	mv	a0,s3
   189fc:	da1ff0ef          	jal	1879c <__multiply>
   18a00:	06090663          	beqz	s2,18a6c <__pow5mult+0xdc>
   18a04:	00892783          	lw	a5,8(s2)
   18a08:	0789b703          	ld	a4,120(s3)
   18a0c:	4014541b          	sraiw	s0,s0,0x1
   18a10:	00379793          	slli	a5,a5,0x3
   18a14:	00f707b3          	add	a5,a4,a5
   18a18:	0007b703          	ld	a4,0(a5)
   18a1c:	00e93023          	sd	a4,0(s2)
   18a20:	0127b023          	sd	s2,0(a5)
   18a24:	00050913          	mv	s2,a0
   18a28:	fa041ae3          	bnez	s0,189dc <__pow5mult+0x4c>
   18a2c:	02813083          	ld	ra,40(sp)
   18a30:	00090513          	mv	a0,s2
   18a34:	02013403          	ld	s0,32(sp)
   18a38:	01813483          	ld	s1,24(sp)
   18a3c:	01013903          	ld	s2,16(sp)
   18a40:	00813983          	ld	s3,8(sp)
   18a44:	03010113          	addi	sp,sp,48
   18a48:	00008067          	ret
   18a4c:	00048613          	mv	a2,s1
   18a50:	00048593          	mv	a1,s1
   18a54:	00098513          	mv	a0,s3
   18a58:	d45ff0ef          	jal	1879c <__multiply>
   18a5c:	00a4b023          	sd	a0,0(s1)
   18a60:	00053023          	sd	zero,0(a0)
   18a64:	00050493          	mv	s1,a0
   18a68:	f81ff06f          	j	189e8 <__pow5mult+0x58>
   18a6c:	00050913          	mv	s2,a0
   18a70:	f65ff06f          	j	189d4 <__pow5mult+0x44>
   18a74:	fff7879b          	addiw	a5,a5,-1
   18a78:	00022737          	lui	a4,0x22
   18a7c:	a6870713          	addi	a4,a4,-1432 # 21a68 <p05.2568>
   18a80:	00279793          	slli	a5,a5,0x2
   18a84:	00f707b3          	add	a5,a4,a5
   18a88:	0007a603          	lw	a2,0(a5)
   18a8c:	00000693          	li	a3,0
   18a90:	971ff0ef          	jal	18400 <__multadd>
   18a94:	00050913          	mv	s2,a0
   18a98:	f25ff06f          	j	189bc <__pow5mult+0x2c>
   18a9c:	00100593          	li	a1,1
   18aa0:	00098513          	mv	a0,s3
   18aa4:	88dff0ef          	jal	18330 <_Balloc>
   18aa8:	27100793          	li	a5,625
   18aac:	00f52c23          	sw	a5,24(a0)
   18ab0:	00100793          	li	a5,1
   18ab4:	00f52a23          	sw	a5,20(a0)
   18ab8:	06a9b823          	sd	a0,112(s3)
   18abc:	00050493          	mv	s1,a0
   18ac0:	00053023          	sd	zero,0(a0)
   18ac4:	f09ff06f          	j	189cc <__pow5mult+0x3c>

0000000000018ac8 <__lshift>:
   18ac8:	fc010113          	addi	sp,sp,-64
   18acc:	01513423          	sd	s5,8(sp)
   18ad0:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   18ad4:	02813823          	sd	s0,48(sp)
   18ad8:	00c5a783          	lw	a5,12(a1)
   18adc:	4056541b          	sraiw	s0,a2,0x5
   18ae0:	01540abb          	addw	s5,s0,s5
   18ae4:	02913423          	sd	s1,40(sp)
   18ae8:	03213023          	sd	s2,32(sp)
   18aec:	01313c23          	sd	s3,24(sp)
   18af0:	01413823          	sd	s4,16(sp)
   18af4:	02113c23          	sd	ra,56(sp)
   18af8:	001a849b          	addiw	s1,s5,1
   18afc:	00058913          	mv	s2,a1
   18b00:	00060993          	mv	s3,a2
   18b04:	00050a13          	mv	s4,a0
   18b08:	0085a583          	lw	a1,8(a1)
   18b0c:	0097d863          	ble	s1,a5,18b1c <__lshift+0x54>
   18b10:	0017979b          	slliw	a5,a5,0x1
   18b14:	0015859b          	addiw	a1,a1,1
   18b18:	fe97cce3          	blt	a5,s1,18b10 <__lshift+0x48>
   18b1c:	000a0513          	mv	a0,s4
   18b20:	811ff0ef          	jal	18330 <_Balloc>
   18b24:	01850793          	addi	a5,a0,24
   18b28:	0e805c63          	blez	s0,18c20 <__lshift+0x158>
   18b2c:	fff4071b          	addiw	a4,s0,-1
   18b30:	02071713          	slli	a4,a4,0x20
   18b34:	02075713          	srli	a4,a4,0x20
   18b38:	00170713          	addi	a4,a4,1
   18b3c:	00271713          	slli	a4,a4,0x2
   18b40:	00e78733          	add	a4,a5,a4
   18b44:	00478793          	addi	a5,a5,4
   18b48:	fe07ae23          	sw	zero,-4(a5)
   18b4c:	fee79ce3          	bne	a5,a4,18b44 <__lshift+0x7c>
   18b50:	01492883          	lw	a7,20(s2)
   18b54:	01890793          	addi	a5,s2,24
   18b58:	01f9f613          	andi	a2,s3,31
   18b5c:	00289893          	slli	a7,a7,0x2
   18b60:	011788b3          	add	a7,a5,a7
   18b64:	08060863          	beqz	a2,18bf4 <__lshift+0x12c>
   18b68:	02000313          	li	t1,32
   18b6c:	40c3033b          	subw	t1,t1,a2
   18b70:	00000693          	li	a3,0
   18b74:	0080006f          	j	18b7c <__lshift+0xb4>
   18b78:	00080713          	mv	a4,a6
   18b7c:	0007a583          	lw	a1,0(a5)
   18b80:	00470813          	addi	a6,a4,4
   18b84:	00478793          	addi	a5,a5,4
   18b88:	00c595bb          	sllw	a1,a1,a2
   18b8c:	00d5e6b3          	or	a3,a1,a3
   18b90:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   18b94:	ffc7a683          	lw	a3,-4(a5)
   18b98:	0066d6bb          	srlw	a3,a3,t1
   18b9c:	fd17eee3          	bltu	a5,a7,18b78 <__lshift+0xb0>
   18ba0:	00d72223          	sw	a3,4(a4)
   18ba4:	00068463          	beqz	a3,18bac <__lshift+0xe4>
   18ba8:	002a849b          	addiw	s1,s5,2
   18bac:	00892783          	lw	a5,8(s2)
   18bb0:	078a3703          	ld	a4,120(s4) # ffffffff80000078 <_end+0xffffffff7ffd8d00>
   18bb4:	fff4849b          	addiw	s1,s1,-1
   18bb8:	00379793          	slli	a5,a5,0x3
   18bbc:	00f707b3          	add	a5,a4,a5
   18bc0:	0007b703          	ld	a4,0(a5)
   18bc4:	03813083          	ld	ra,56(sp)
   18bc8:	00952a23          	sw	s1,20(a0)
   18bcc:	00e93023          	sd	a4,0(s2)
   18bd0:	0127b023          	sd	s2,0(a5)
   18bd4:	03013403          	ld	s0,48(sp)
   18bd8:	02813483          	ld	s1,40(sp)
   18bdc:	02013903          	ld	s2,32(sp)
   18be0:	01813983          	ld	s3,24(sp)
   18be4:	01013a03          	ld	s4,16(sp)
   18be8:	00813a83          	ld	s5,8(sp)
   18bec:	04010113          	addi	sp,sp,64
   18bf0:	00008067          	ret
   18bf4:	00478793          	addi	a5,a5,4
   18bf8:	ffc7a683          	lw	a3,-4(a5)
   18bfc:	00470713          	addi	a4,a4,4
   18c00:	fed72e23          	sw	a3,-4(a4)
   18c04:	fb17f4e3          	bleu	a7,a5,18bac <__lshift+0xe4>
   18c08:	00478793          	addi	a5,a5,4
   18c0c:	ffc7a683          	lw	a3,-4(a5)
   18c10:	00470713          	addi	a4,a4,4
   18c14:	fed72e23          	sw	a3,-4(a4)
   18c18:	fd17eee3          	bltu	a5,a7,18bf4 <__lshift+0x12c>
   18c1c:	f91ff06f          	j	18bac <__lshift+0xe4>
   18c20:	00078713          	mv	a4,a5
   18c24:	f2dff06f          	j	18b50 <__lshift+0x88>

0000000000018c28 <__mcmp>:
   18c28:	01452783          	lw	a5,20(a0)
   18c2c:	0145a703          	lw	a4,20(a1)
   18c30:	40e787bb          	subw	a5,a5,a4
   18c34:	04079263          	bnez	a5,18c78 <__mcmp+0x50>
   18c38:	00271713          	slli	a4,a4,0x2
   18c3c:	01850513          	addi	a0,a0,24
   18c40:	01858593          	addi	a1,a1,24
   18c44:	00e507b3          	add	a5,a0,a4
   18c48:	00e585b3          	add	a1,a1,a4
   18c4c:	0080006f          	j	18c54 <__mcmp+0x2c>
   18c50:	02f57863          	bleu	a5,a0,18c80 <__mcmp+0x58>
   18c54:	ffc78793          	addi	a5,a5,-4
   18c58:	ffc58593          	addi	a1,a1,-4
   18c5c:	0007a703          	lw	a4,0(a5)
   18c60:	0005a683          	lw	a3,0(a1)
   18c64:	fed706e3          	beq	a4,a3,18c50 <__mcmp+0x28>
   18c68:	00d737b3          	sltu	a5,a4,a3
   18c6c:	40f007bb          	negw	a5,a5
   18c70:	0017e513          	ori	a0,a5,1
   18c74:	00008067          	ret
   18c78:	00078513          	mv	a0,a5
   18c7c:	00008067          	ret
   18c80:	00000513          	li	a0,0
   18c84:	00008067          	ret

0000000000018c88 <__mdiff>:
   18c88:	0145a703          	lw	a4,20(a1)
   18c8c:	01462783          	lw	a5,20(a2)
   18c90:	fd010113          	addi	sp,sp,-48
   18c94:	01213823          	sd	s2,16(sp)
   18c98:	01313423          	sd	s3,8(sp)
   18c9c:	02113423          	sd	ra,40(sp)
   18ca0:	02813023          	sd	s0,32(sp)
   18ca4:	00913c23          	sd	s1,24(sp)
   18ca8:	01413023          	sd	s4,0(sp)
   18cac:	40f7073b          	subw	a4,a4,a5
   18cb0:	00058913          	mv	s2,a1
   18cb4:	00060993          	mv	s3,a2
   18cb8:	04071863          	bnez	a4,18d08 <__mdiff+0x80>
   18cbc:	00279713          	slli	a4,a5,0x2
   18cc0:	01858813          	addi	a6,a1,24
   18cc4:	01860413          	addi	s0,a2,24
   18cc8:	00e807b3          	add	a5,a6,a4
   18ccc:	00e40733          	add	a4,s0,a4
   18cd0:	0080006f          	j	18cd8 <__mdiff+0x50>
   18cd4:	16f87263          	bleu	a5,a6,18e38 <__mdiff+0x1b0>
   18cd8:	ffc78793          	addi	a5,a5,-4
   18cdc:	ffc70713          	addi	a4,a4,-4
   18ce0:	0007a583          	lw	a1,0(a5)
   18ce4:	00072683          	lw	a3,0(a4)
   18ce8:	fed586e3          	beq	a1,a3,18cd4 <__mdiff+0x4c>
   18cec:	18d5f063          	bleu	a3,a1,18e6c <__mdiff+0x1e4>
   18cf0:	00090793          	mv	a5,s2
   18cf4:	00080493          	mv	s1,a6
   18cf8:	00098913          	mv	s2,s3
   18cfc:	00100a13          	li	s4,1
   18d00:	00078993          	mv	s3,a5
   18d04:	0140006f          	j	18d18 <__mdiff+0x90>
   18d08:	16074a63          	bltz	a4,18e7c <__mdiff+0x1f4>
   18d0c:	01860493          	addi	s1,a2,24
   18d10:	01858413          	addi	s0,a1,24
   18d14:	00000a13          	li	s4,0
   18d18:	00892583          	lw	a1,8(s2)
   18d1c:	e14ff0ef          	jal	18330 <_Balloc>
   18d20:	01492e03          	lw	t3,20(s2)
   18d24:	0149af03          	lw	t5,20(s3)
   18d28:	00010337          	lui	t1,0x10
   18d2c:	002e1e93          	slli	t4,t3,0x2
   18d30:	002f1f13          	slli	t5,t5,0x2
   18d34:	01452823          	sw	s4,16(a0)
   18d38:	01d40eb3          	add	t4,s0,t4
   18d3c:	01e48f33          	add	t5,s1,t5
   18d40:	01850813          	addi	a6,a0,24
   18d44:	00000693          	li	a3,0
   18d48:	fff3031b          	addiw	t1,t1,-1
   18d4c:	00042583          	lw	a1,0(s0)
   18d50:	0004a883          	lw	a7,0(s1)
   18d54:	00480813          	addi	a6,a6,4
   18d58:	0065f633          	and	a2,a1,t1
   18d5c:	00d606bb          	addw	a3,a2,a3
   18d60:	0068f733          	and	a4,a7,t1
   18d64:	40e6873b          	subw	a4,a3,a4
   18d68:	0105d59b          	srliw	a1,a1,0x10
   18d6c:	0108d69b          	srliw	a3,a7,0x10
   18d70:	40d585bb          	subw	a1,a1,a3
   18d74:	4107569b          	sraiw	a3,a4,0x10
   18d78:	00d586bb          	addw	a3,a1,a3
   18d7c:	0106979b          	slliw	a5,a3,0x10
   18d80:	00677733          	and	a4,a4,t1
   18d84:	00e7e7b3          	or	a5,a5,a4
   18d88:	00448493          	addi	s1,s1,4
   18d8c:	fef82e23          	sw	a5,-4(a6)
   18d90:	00440413          	addi	s0,s0,4
   18d94:	4106d69b          	sraiw	a3,a3,0x10
   18d98:	fbe4eae3          	bltu	s1,t5,18d4c <__mdiff+0xc4>
   18d9c:	07d47063          	bleu	t4,s0,18dfc <__mdiff+0x174>
   18da0:	00010f37          	lui	t5,0x10
   18da4:	00080313          	mv	t1,a6
   18da8:	00040893          	mv	a7,s0
   18dac:	ffff0f1b          	addiw	t5,t5,-1
   18db0:	0008a583          	lw	a1,0(a7)
   18db4:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   18db8:	00488893          	addi	a7,a7,4
   18dbc:	01e5f633          	and	a2,a1,t5
   18dc0:	00d606bb          	addw	a3,a2,a3
   18dc4:	4106d71b          	sraiw	a4,a3,0x10
   18dc8:	0105d59b          	srliw	a1,a1,0x10
   18dcc:	00e5873b          	addw	a4,a1,a4
   18dd0:	01e6f6b3          	and	a3,a3,t5
   18dd4:	0107179b          	slliw	a5,a4,0x10
   18dd8:	00d7e7b3          	or	a5,a5,a3
   18ddc:	fef32e23          	sw	a5,-4(t1)
   18de0:	4107569b          	sraiw	a3,a4,0x10
   18de4:	fdd8e6e3          	bltu	a7,t4,18db0 <__mdiff+0x128>
   18de8:	fff44413          	not	s0,s0
   18dec:	01d40eb3          	add	t4,s0,t4
   18df0:	ffcefe93          	andi	t4,t4,-4
   18df4:	004e8e93          	addi	t4,t4,4
   18df8:	01d80833          	add	a6,a6,t4
   18dfc:	ffc80813          	addi	a6,a6,-4
   18e00:	00079a63          	bnez	a5,18e14 <__mdiff+0x18c>
   18e04:	ffc80813          	addi	a6,a6,-4
   18e08:	00082783          	lw	a5,0(a6)
   18e0c:	fffe0e1b          	addiw	t3,t3,-1
   18e10:	fe078ae3          	beqz	a5,18e04 <__mdiff+0x17c>
   18e14:	02813083          	ld	ra,40(sp)
   18e18:	02013403          	ld	s0,32(sp)
   18e1c:	01813483          	ld	s1,24(sp)
   18e20:	01013903          	ld	s2,16(sp)
   18e24:	00813983          	ld	s3,8(sp)
   18e28:	00013a03          	ld	s4,0(sp)
   18e2c:	01c52a23          	sw	t3,20(a0)
   18e30:	03010113          	addi	sp,sp,48
   18e34:	00008067          	ret
   18e38:	00000593          	li	a1,0
   18e3c:	cf4ff0ef          	jal	18330 <_Balloc>
   18e40:	02813083          	ld	ra,40(sp)
   18e44:	00100793          	li	a5,1
   18e48:	02013403          	ld	s0,32(sp)
   18e4c:	01813483          	ld	s1,24(sp)
   18e50:	01013903          	ld	s2,16(sp)
   18e54:	00813983          	ld	s3,8(sp)
   18e58:	00013a03          	ld	s4,0(sp)
   18e5c:	00f52a23          	sw	a5,20(a0)
   18e60:	00052c23          	sw	zero,24(a0)
   18e64:	03010113          	addi	sp,sp,48
   18e68:	00008067          	ret
   18e6c:	00040493          	mv	s1,s0
   18e70:	00000a13          	li	s4,0
   18e74:	00080413          	mv	s0,a6
   18e78:	ea1ff06f          	j	18d18 <__mdiff+0x90>
   18e7c:	00090793          	mv	a5,s2
   18e80:	01890493          	addi	s1,s2,24
   18e84:	01898413          	addi	s0,s3,24
   18e88:	00098913          	mv	s2,s3
   18e8c:	00100a13          	li	s4,1
   18e90:	00078993          	mv	s3,a5
   18e94:	e85ff06f          	j	18d18 <__mdiff+0x90>

0000000000018e98 <__ulp>:
   18e98:	e20507d3          	fmv.x.d	a5,fa0
   18e9c:	7ff00737          	lui	a4,0x7ff00
   18ea0:	4207d793          	srai	a5,a5,0x20
   18ea4:	00e7f7b3          	and	a5,a5,a4
   18ea8:	fcc00737          	lui	a4,0xfcc00
   18eac:	00e787bb          	addw	a5,a5,a4
   18eb0:	00f05863          	blez	a5,18ec0 <__ulp+0x28>
   18eb4:	02079793          	slli	a5,a5,0x20
   18eb8:	f2078553          	fmv.d.x	fa0,a5
   18ebc:	00008067          	ret
   18ec0:	40f007bb          	negw	a5,a5
   18ec4:	4147d79b          	sraiw	a5,a5,0x14
   18ec8:	01300713          	li	a4,19
   18ecc:	04f75063          	ble	a5,a4,18f0c <__ulp+0x74>
   18ed0:	fec7869b          	addiw	a3,a5,-20
   18ed4:	01e00613          	li	a2,30
   18ed8:	00000793          	li	a5,0
   18edc:	00100713          	li	a4,1
   18ee0:	00d64663          	blt	a2,a3,18eec <__ulp+0x54>
   18ee4:	fff6c693          	not	a3,a3
   18ee8:	00d7173b          	sllw	a4,a4,a3
   18eec:	fff00693          	li	a3,-1
   18ef0:	02069693          	slli	a3,a3,0x20
   18ef4:	02071713          	slli	a4,a4,0x20
   18ef8:	02075713          	srli	a4,a4,0x20
   18efc:	00d7f7b3          	and	a5,a5,a3
   18f00:	00e7e7b3          	or	a5,a5,a4
   18f04:	f2078553          	fmv.d.x	fa0,a5
   18f08:	00008067          	ret
   18f0c:	00080737          	lui	a4,0x80
   18f10:	40f757bb          	sraw	a5,a4,a5
   18f14:	fa1ff06f          	j	18eb4 <__ulp+0x1c>

0000000000018f18 <__b2d>:
   18f18:	fd010113          	addi	sp,sp,-48
   18f1c:	02813023          	sd	s0,32(sp)
   18f20:	01452403          	lw	s0,20(a0)
   18f24:	00913c23          	sd	s1,24(sp)
   18f28:	01850493          	addi	s1,a0,24
   18f2c:	00241413          	slli	s0,s0,0x2
   18f30:	00848433          	add	s0,s1,s0
   18f34:	01213823          	sd	s2,16(sp)
   18f38:	ffc42903          	lw	s2,-4(s0)
   18f3c:	01313423          	sd	s3,8(sp)
   18f40:	01413023          	sd	s4,0(sp)
   18f44:	00090513          	mv	a0,s2
   18f48:	00058a13          	mv	s4,a1
   18f4c:	02113423          	sd	ra,40(sp)
   18f50:	eecff0ef          	jal	1863c <__hi0bits>
   18f54:	02000793          	li	a5,32
   18f58:	40a7873b          	subw	a4,a5,a0
   18f5c:	00ea2023          	sw	a4,0(s4)
   18f60:	00a00713          	li	a4,10
   18f64:	ffc40993          	addi	s3,s0,-4
   18f68:	06a74a63          	blt	a4,a0,18fdc <__b2d+0xc4>
   18f6c:	00b00693          	li	a3,11
   18f70:	40a686bb          	subw	a3,a3,a0
   18f74:	3ff00737          	lui	a4,0x3ff00
   18f78:	00d957bb          	srlw	a5,s2,a3
   18f7c:	00e7e7b3          	or	a5,a5,a4
   18f80:	02079793          	slli	a5,a5,0x20
   18f84:	00000713          	li	a4,0
   18f88:	0134f663          	bleu	s3,s1,18f94 <__b2d+0x7c>
   18f8c:	ff842703          	lw	a4,-8(s0)
   18f90:	00d7573b          	srlw	a4,a4,a3
   18f94:	0155051b          	addiw	a0,a0,21
   18f98:	00a9153b          	sllw	a0,s2,a0
   18f9c:	00e56533          	or	a0,a0,a4
   18fa0:	fff00713          	li	a4,-1
   18fa4:	02051513          	slli	a0,a0,0x20
   18fa8:	02071713          	slli	a4,a4,0x20
   18fac:	02055513          	srli	a0,a0,0x20
   18fb0:	00e7f7b3          	and	a5,a5,a4
   18fb4:	00a7e7b3          	or	a5,a5,a0
   18fb8:	02813083          	ld	ra,40(sp)
   18fbc:	f2078553          	fmv.d.x	fa0,a5
   18fc0:	02013403          	ld	s0,32(sp)
   18fc4:	01813483          	ld	s1,24(sp)
   18fc8:	01013903          	ld	s2,16(sp)
   18fcc:	00813983          	ld	s3,8(sp)
   18fd0:	00013a03          	ld	s4,0(sp)
   18fd4:	03010113          	addi	sp,sp,48
   18fd8:	00008067          	ret
   18fdc:	ff55051b          	addiw	a0,a0,-11
   18fe0:	0534f263          	bleu	s3,s1,19024 <__b2d+0x10c>
   18fe4:	ff842683          	lw	a3,-8(s0)
   18fe8:	04050263          	beqz	a0,1902c <__b2d+0x114>
   18fec:	40a7863b          	subw	a2,a5,a0
   18ff0:	00a917bb          	sllw	a5,s2,a0
   18ff4:	3ff00937          	lui	s2,0x3ff00
   18ff8:	00c6d73b          	srlw	a4,a3,a2
   18ffc:	0127e7b3          	or	a5,a5,s2
   19000:	00e7e7b3          	or	a5,a5,a4
   19004:	ff840713          	addi	a4,s0,-8
   19008:	02079793          	slli	a5,a5,0x20
   1900c:	04e4fa63          	bleu	a4,s1,19060 <__b2d+0x148>
   19010:	ff442703          	lw	a4,-12(s0)
   19014:	00a6953b          	sllw	a0,a3,a0
   19018:	00c756bb          	srlw	a3,a4,a2
   1901c:	00a6e533          	or	a0,a3,a0
   19020:	f81ff06f          	j	18fa0 <__b2d+0x88>
   19024:	00000693          	li	a3,0
   19028:	02051063          	bnez	a0,19048 <__b2d+0x130>
   1902c:	3ff00737          	lui	a4,0x3ff00
   19030:	00e967b3          	or	a5,s2,a4
   19034:	02069693          	slli	a3,a3,0x20
   19038:	0206d693          	srli	a3,a3,0x20
   1903c:	02079793          	slli	a5,a5,0x20
   19040:	00d7e7b3          	or	a5,a5,a3
   19044:	f75ff06f          	j	18fb8 <__b2d+0xa0>
   19048:	00a917bb          	sllw	a5,s2,a0
   1904c:	3ff00737          	lui	a4,0x3ff00
   19050:	00e7e7b3          	or	a5,a5,a4
   19054:	02079793          	slli	a5,a5,0x20
   19058:	00000513          	li	a0,0
   1905c:	f45ff06f          	j	18fa0 <__b2d+0x88>
   19060:	00a6953b          	sllw	a0,a3,a0
   19064:	f3dff06f          	j	18fa0 <__b2d+0x88>

0000000000019068 <__d2b>:
   19068:	fc010113          	addi	sp,sp,-64
   1906c:	02813823          	sd	s0,48(sp)
   19070:	e2058453          	fmv.x.d	s0,fa1
   19074:	00100593          	li	a1,1
   19078:	02913423          	sd	s1,40(sp)
   1907c:	03213023          	sd	s2,32(sp)
   19080:	01313c23          	sd	s3,24(sp)
   19084:	01413823          	sd	s4,16(sp)
   19088:	00068993          	mv	s3,a3
   1908c:	02113c23          	sd	ra,56(sp)
   19090:	00060a13          	mv	s4,a2
   19094:	a9cff0ef          	jal	18330 <_Balloc>
   19098:	42045793          	srai	a5,s0,0x20
   1909c:	02179493          	slli	s1,a5,0x21
   190a0:	001006b7          	lui	a3,0x100
   190a4:	fff6871b          	addiw	a4,a3,-1
   190a8:	0354d493          	srli	s1,s1,0x35
   190ac:	00050913          	mv	s2,a0
   190b0:	00e7f7b3          	and	a5,a5,a4
   190b4:	00048463          	beqz	s1,190bc <__d2b+0x54>
   190b8:	00d7e7b3          	or	a5,a5,a3
   190bc:	00f12623          	sw	a5,12(sp)
   190c0:	0004041b          	sext.w	s0,s0
   190c4:	08040063          	beqz	s0,19144 <__d2b+0xdc>
   190c8:	00810513          	addi	a0,sp,8
   190cc:	00812423          	sw	s0,8(sp)
   190d0:	de8ff0ef          	jal	186b8 <__lo0bits>
   190d4:	00c12783          	lw	a5,12(sp)
   190d8:	0a051463          	bnez	a0,19180 <__d2b+0x118>
   190dc:	00812703          	lw	a4,8(sp)
   190e0:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_end+0x3fed8ca0>
   190e4:	0017b413          	seqz	s0,a5
   190e8:	00200713          	li	a4,2
   190ec:	4087043b          	subw	s0,a4,s0
   190f0:	00f92e23          	sw	a5,28(s2)
   190f4:	00892a23          	sw	s0,20(s2)
   190f8:	06049663          	bnez	s1,19164 <__d2b+0xfc>
   190fc:	bce5051b          	addiw	a0,a0,-1074
   19100:	00241793          	slli	a5,s0,0x2
   19104:	00aa2023          	sw	a0,0(s4)
   19108:	00f907b3          	add	a5,s2,a5
   1910c:	0147a503          	lw	a0,20(a5)
   19110:	0054141b          	slliw	s0,s0,0x5
   19114:	d28ff0ef          	jal	1863c <__hi0bits>
   19118:	40a4053b          	subw	a0,s0,a0
   1911c:	00a9a023          	sw	a0,0(s3)
   19120:	03813083          	ld	ra,56(sp)
   19124:	00090513          	mv	a0,s2
   19128:	03013403          	ld	s0,48(sp)
   1912c:	02813483          	ld	s1,40(sp)
   19130:	02013903          	ld	s2,32(sp)
   19134:	01813983          	ld	s3,24(sp)
   19138:	01013a03          	ld	s4,16(sp)
   1913c:	04010113          	addi	sp,sp,64
   19140:	00008067          	ret
   19144:	00c10513          	addi	a0,sp,12
   19148:	d70ff0ef          	jal	186b8 <__lo0bits>
   1914c:	00c12783          	lw	a5,12(sp)
   19150:	00100413          	li	s0,1
   19154:	00892a23          	sw	s0,20(s2)
   19158:	00f92c23          	sw	a5,24(s2)
   1915c:	0205051b          	addiw	a0,a0,32
   19160:	f8048ee3          	beqz	s1,190fc <__d2b+0x94>
   19164:	bcd4849b          	addiw	s1,s1,-1075
   19168:	00a484bb          	addw	s1,s1,a0
   1916c:	03500793          	li	a5,53
   19170:	009a2023          	sw	s1,0(s4)
   19174:	40a7853b          	subw	a0,a5,a0
   19178:	00a9a023          	sw	a0,0(s3)
   1917c:	fa5ff06f          	j	19120 <__d2b+0xb8>
   19180:	02000713          	li	a4,32
   19184:	00812683          	lw	a3,8(sp)
   19188:	40a7073b          	subw	a4,a4,a0
   1918c:	00e7973b          	sllw	a4,a5,a4
   19190:	00d76733          	or	a4,a4,a3
   19194:	00a7d7bb          	srlw	a5,a5,a0
   19198:	00e92c23          	sw	a4,24(s2)
   1919c:	00f12623          	sw	a5,12(sp)
   191a0:	f45ff06f          	j	190e4 <__d2b+0x7c>

00000000000191a4 <__ratio>:
   191a4:	fd010113          	addi	sp,sp,-48
   191a8:	00913c23          	sd	s1,24(sp)
   191ac:	00058493          	mv	s1,a1
   191b0:	00810593          	addi	a1,sp,8
   191b4:	02113423          	sd	ra,40(sp)
   191b8:	02813023          	sd	s0,32(sp)
   191bc:	01213823          	sd	s2,16(sp)
   191c0:	00050913          	mv	s2,a0
   191c4:	d55ff0ef          	jal	18f18 <__b2d>
   191c8:	00c10593          	addi	a1,sp,12
   191cc:	00048513          	mv	a0,s1
   191d0:	e2050453          	fmv.x.d	s0,fa0
   191d4:	d45ff0ef          	jal	18f18 <__b2d>
   191d8:	01492703          	lw	a4,20(s2)
   191dc:	0144a783          	lw	a5,20(s1)
   191e0:	00c12603          	lw	a2,12(sp)
   191e4:	e20506d3          	fmv.x.d	a3,fa0
   191e8:	40f707bb          	subw	a5,a4,a5
   191ec:	0057971b          	slliw	a4,a5,0x5
   191f0:	00812783          	lw	a5,8(sp)
   191f4:	40c787bb          	subw	a5,a5,a2
   191f8:	00f707bb          	addw	a5,a4,a5
   191fc:	04f05463          	blez	a5,19244 <__ratio+0xa0>
   19200:	00040713          	mv	a4,s0
   19204:	0147979b          	slliw	a5,a5,0x14
   19208:	42045413          	srai	s0,s0,0x20
   1920c:	00f407bb          	addw	a5,s0,a5
   19210:	02071413          	slli	s0,a4,0x20
   19214:	02079793          	slli	a5,a5,0x20
   19218:	02045413          	srli	s0,s0,0x20
   1921c:	00f46433          	or	s0,s0,a5
   19220:	f20407d3          	fmv.d.x	fa5,s0
   19224:	f2068753          	fmv.d.x	fa4,a3
   19228:	02813083          	ld	ra,40(sp)
   1922c:	02013403          	ld	s0,32(sp)
   19230:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   19234:	01813483          	ld	s1,24(sp)
   19238:	01013903          	ld	s2,16(sp)
   1923c:	03010113          	addi	sp,sp,48
   19240:	00008067          	ret
   19244:	00068613          	mv	a2,a3
   19248:	0147979b          	slliw	a5,a5,0x14
   1924c:	4206d693          	srai	a3,a3,0x20
   19250:	40f687bb          	subw	a5,a3,a5
   19254:	02061693          	slli	a3,a2,0x20
   19258:	02079793          	slli	a5,a5,0x20
   1925c:	0206d693          	srli	a3,a3,0x20
   19260:	00f6e6b3          	or	a3,a3,a5
   19264:	fbdff06f          	j	19220 <__ratio+0x7c>

0000000000019268 <_mprec_log10>:
   19268:	01700793          	li	a5,23
   1926c:	02a7d263          	ble	a0,a5,19290 <_mprec_log10+0x28>
   19270:	000257b7          	lui	a5,0x25
   19274:	a407b507          	fld	fa0,-1472(a5) # 24a40 <mask+0x28>
   19278:	000257b7          	lui	a5,0x25
   1927c:	a487b787          	fld	fa5,-1464(a5) # 24a48 <mask+0x30>
   19280:	fff5051b          	addiw	a0,a0,-1
   19284:	12f57553          	fmul.d	fa0,fa0,fa5
   19288:	fe051ce3          	bnez	a0,19280 <_mprec_log10+0x18>
   1928c:	00008067          	ret
   19290:	000227b7          	lui	a5,0x22
   19294:	a6878793          	addi	a5,a5,-1432 # 21a68 <p05.2568>
   19298:	00351513          	slli	a0,a0,0x3
   1929c:	00a78533          	add	a0,a5,a0
   192a0:	01053507          	fld	fa0,16(a0)
   192a4:	00008067          	ret

00000000000192a8 <__copybits>:
   192a8:	01462703          	lw	a4,20(a2)
   192ac:	fff5859b          	addiw	a1,a1,-1
   192b0:	4055d81b          	sraiw	a6,a1,0x5
   192b4:	00180813          	addi	a6,a6,1
   192b8:	01860793          	addi	a5,a2,24
   192bc:	00271713          	slli	a4,a4,0x2
   192c0:	00281813          	slli	a6,a6,0x2
   192c4:	00e786b3          	add	a3,a5,a4
   192c8:	01050833          	add	a6,a0,a6
   192cc:	02d7f863          	bleu	a3,a5,192fc <__copybits+0x54>
   192d0:	00050713          	mv	a4,a0
   192d4:	00478793          	addi	a5,a5,4
   192d8:	ffc7a583          	lw	a1,-4(a5)
   192dc:	00470713          	addi	a4,a4,4 # 3ff00004 <_end+0x3fed8c8c>
   192e0:	feb72e23          	sw	a1,-4(a4)
   192e4:	fed7e8e3          	bltu	a5,a3,192d4 <__copybits+0x2c>
   192e8:	40c687b3          	sub	a5,a3,a2
   192ec:	fe778793          	addi	a5,a5,-25
   192f0:	ffc7f793          	andi	a5,a5,-4
   192f4:	00478793          	addi	a5,a5,4
   192f8:	00f50533          	add	a0,a0,a5
   192fc:	01057863          	bleu	a6,a0,1930c <__copybits+0x64>
   19300:	00450513          	addi	a0,a0,4
   19304:	fe052e23          	sw	zero,-4(a0)
   19308:	ff056ce3          	bltu	a0,a6,19300 <__copybits+0x58>
   1930c:	00008067          	ret

0000000000019310 <__any_on>:
   19310:	01452783          	lw	a5,20(a0)
   19314:	4055d71b          	sraiw	a4,a1,0x5
   19318:	01850693          	addi	a3,a0,24
   1931c:	04e7c463          	blt	a5,a4,19364 <__any_on+0x54>
   19320:	04f75063          	ble	a5,a4,19360 <__any_on+0x50>
   19324:	00070793          	mv	a5,a4
   19328:	00279793          	slli	a5,a5,0x2
   1932c:	01f5f593          	andi	a1,a1,31
   19330:	00f687b3          	add	a5,a3,a5
   19334:	04059063          	bnez	a1,19374 <__any_on+0x64>
   19338:	04f6fa63          	bleu	a5,a3,1938c <__any_on+0x7c>
   1933c:	ffc7a503          	lw	a0,-4(a5)
   19340:	ffc78793          	addi	a5,a5,-4
   19344:	00051a63          	bnez	a0,19358 <__any_on+0x48>
   19348:	02f6f463          	bleu	a5,a3,19370 <__any_on+0x60>
   1934c:	ffc78793          	addi	a5,a5,-4
   19350:	0007a703          	lw	a4,0(a5)
   19354:	fe070ae3          	beqz	a4,19348 <__any_on+0x38>
   19358:	00100513          	li	a0,1
   1935c:	00008067          	ret
   19360:	00070793          	mv	a5,a4
   19364:	00279793          	slli	a5,a5,0x2
   19368:	00f687b3          	add	a5,a3,a5
   1936c:	fcdff06f          	j	19338 <__any_on+0x28>
   19370:	00008067          	ret
   19374:	0007a603          	lw	a2,0(a5)
   19378:	00100513          	li	a0,1
   1937c:	00b6573b          	srlw	a4,a2,a1
   19380:	00b715bb          	sllw	a1,a4,a1
   19384:	fab60ae3          	beq	a2,a1,19338 <__any_on+0x28>
   19388:	00008067          	ret
   1938c:	00000513          	li	a0,0
   19390:	00008067          	ret

0000000000019394 <_realloc_r>:
   19394:	fb010113          	addi	sp,sp,-80
   19398:	02913c23          	sd	s1,56(sp)
   1939c:	04113423          	sd	ra,72(sp)
   193a0:	04813023          	sd	s0,64(sp)
   193a4:	03213823          	sd	s2,48(sp)
   193a8:	03313423          	sd	s3,40(sp)
   193ac:	03413023          	sd	s4,32(sp)
   193b0:	01513c23          	sd	s5,24(sp)
   193b4:	01613823          	sd	s6,16(sp)
   193b8:	01713423          	sd	s7,8(sp)
   193bc:	01813023          	sd	s8,0(sp)
   193c0:	00060493          	mv	s1,a2
   193c4:	1c058a63          	beqz	a1,19598 <_realloc_r+0x204>
   193c8:	00058993          	mv	s3,a1
   193cc:	00050913          	mv	s2,a0
   193d0:	f40f80ef          	jal	11b10 <__malloc_lock>
   193d4:	ff89b783          	ld	a5,-8(s3)
   193d8:	01748413          	addi	s0,s1,23
   193dc:	02e00713          	li	a4,46
   193e0:	ff098a93          	addi	s5,s3,-16
   193e4:	ffc7fa13          	andi	s4,a5,-4
   193e8:	0c877463          	bleu	s0,a4,194b0 <_realloc_r+0x11c>
   193ec:	80000737          	lui	a4,0x80000
   193f0:	ff047413          	andi	s0,s0,-16
   193f4:	fff74713          	not	a4,a4
   193f8:	14876a63          	bltu	a4,s0,1954c <_realloc_r+0x1b8>
   193fc:	14946863          	bltu	s0,s1,1954c <_realloc_r+0x1b8>
   19400:	0a8a5c63          	ble	s0,s4,194b8 <_realloc_r+0x124>
   19404:	00024b37          	lui	s6,0x24
   19408:	118b0b13          	addi	s6,s6,280 # 24118 <__malloc_av_>
   1940c:	010b3703          	ld	a4,16(s6)
   19410:	014a86b3          	add	a3,s5,s4
   19414:	2ee68e63          	beq	a3,a4,19710 <_realloc_r+0x37c>
   19418:	0086b703          	ld	a4,8(a3) # 100008 <_end+0xd8c90>
   1941c:	ffe77613          	andi	a2,a4,-2
   19420:	00c68633          	add	a2,a3,a2
   19424:	00863603          	ld	a2,8(a2)
   19428:	00167613          	andi	a2,a2,1
   1942c:	0e060c63          	beqz	a2,19524 <_realloc_r+0x190>
   19430:	0017f793          	andi	a5,a5,1
   19434:	26078063          	beqz	a5,19694 <_realloc_r+0x300>
   19438:	00048593          	mv	a1,s1
   1943c:	00090513          	mv	a0,s2
   19440:	e41f70ef          	jal	11280 <_malloc_r>
   19444:	00050493          	mv	s1,a0
   19448:	48050e63          	beqz	a0,198e4 <_realloc_r+0x550>
   1944c:	ff89b783          	ld	a5,-8(s3)
   19450:	ff050713          	addi	a4,a0,-16
   19454:	ffe7f793          	andi	a5,a5,-2
   19458:	00fa87b3          	add	a5,s5,a5
   1945c:	40f70e63          	beq	a4,a5,19878 <_realloc_r+0x4e4>
   19460:	ff8a0613          	addi	a2,s4,-8
   19464:	04800793          	li	a5,72
   19468:	3ec7e263          	bltu	a5,a2,1984c <_realloc_r+0x4b8>
   1946c:	02700713          	li	a4,39
   19470:	36c76663          	bltu	a4,a2,197dc <_realloc_r+0x448>
   19474:	00050793          	mv	a5,a0
   19478:	00098713          	mv	a4,s3
   1947c:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_end+0xffffffff7ffd8c88>
   19480:	00d7b023          	sd	a3,0(a5)
   19484:	00873683          	ld	a3,8(a4)
   19488:	00d7b423          	sd	a3,8(a5)
   1948c:	01073703          	ld	a4,16(a4)
   19490:	00e7b823          	sd	a4,16(a5)
   19494:	00098593          	mv	a1,s3
   19498:	00090513          	mv	a0,s2
   1949c:	d7dfd0ef          	jal	17218 <_free_r>
   194a0:	00090513          	mv	a0,s2
   194a4:	e70f80ef          	jal	11b14 <__malloc_unlock>
   194a8:	00048513          	mv	a0,s1
   194ac:	0480006f          	j	194f4 <_realloc_r+0x160>
   194b0:	02000413          	li	s0,32
   194b4:	f49ff06f          	j	193fc <_realloc_r+0x68>
   194b8:	00098493          	mv	s1,s3
   194bc:	408a07b3          	sub	a5,s4,s0
   194c0:	01f00713          	li	a4,31
   194c4:	08f76c63          	bltu	a4,a5,1955c <_realloc_r+0x1c8>
   194c8:	008ab783          	ld	a5,8(s5)
   194cc:	014a8733          	add	a4,s5,s4
   194d0:	0017f793          	andi	a5,a5,1
   194d4:	0147e633          	or	a2,a5,s4
   194d8:	00cab423          	sd	a2,8(s5)
   194dc:	00873783          	ld	a5,8(a4)
   194e0:	0017e793          	ori	a5,a5,1
   194e4:	00f73423          	sd	a5,8(a4)
   194e8:	00090513          	mv	a0,s2
   194ec:	e28f80ef          	jal	11b14 <__malloc_unlock>
   194f0:	00048513          	mv	a0,s1
   194f4:	04813083          	ld	ra,72(sp)
   194f8:	04013403          	ld	s0,64(sp)
   194fc:	03813483          	ld	s1,56(sp)
   19500:	03013903          	ld	s2,48(sp)
   19504:	02813983          	ld	s3,40(sp)
   19508:	02013a03          	ld	s4,32(sp)
   1950c:	01813a83          	ld	s5,24(sp)
   19510:	01013b03          	ld	s6,16(sp)
   19514:	00813b83          	ld	s7,8(sp)
   19518:	00013c03          	ld	s8,0(sp)
   1951c:	05010113          	addi	sp,sp,80
   19520:	00008067          	ret
   19524:	ffc77713          	andi	a4,a4,-4
   19528:	01470733          	add	a4,a4,s4
   1952c:	0a874063          	blt	a4,s0,195cc <_realloc_r+0x238>
   19530:	0186b783          	ld	a5,24(a3)
   19534:	0106b683          	ld	a3,16(a3)
   19538:	00098493          	mv	s1,s3
   1953c:	00070a13          	mv	s4,a4
   19540:	00f6bc23          	sd	a5,24(a3)
   19544:	00d7b823          	sd	a3,16(a5)
   19548:	f75ff06f          	j	194bc <_realloc_r+0x128>
   1954c:	00c00793          	li	a5,12
   19550:	00f92023          	sw	a5,0(s2)
   19554:	00000513          	li	a0,0
   19558:	f9dff06f          	j	194f4 <_realloc_r+0x160>
   1955c:	008ab703          	ld	a4,8(s5)
   19560:	008a85b3          	add	a1,s5,s0
   19564:	0017e693          	ori	a3,a5,1
   19568:	00177713          	andi	a4,a4,1
   1956c:	00876433          	or	s0,a4,s0
   19570:	008ab423          	sd	s0,8(s5)
   19574:	00d5b423          	sd	a3,8(a1)
   19578:	00f587b3          	add	a5,a1,a5
   1957c:	0087b703          	ld	a4,8(a5)
   19580:	01058593          	addi	a1,a1,16
   19584:	00090513          	mv	a0,s2
   19588:	00176713          	ori	a4,a4,1
   1958c:	00e7b423          	sd	a4,8(a5)
   19590:	c89fd0ef          	jal	17218 <_free_r>
   19594:	f55ff06f          	j	194e8 <_realloc_r+0x154>
   19598:	04813083          	ld	ra,72(sp)
   1959c:	04013403          	ld	s0,64(sp)
   195a0:	03813483          	ld	s1,56(sp)
   195a4:	03013903          	ld	s2,48(sp)
   195a8:	02813983          	ld	s3,40(sp)
   195ac:	02013a03          	ld	s4,32(sp)
   195b0:	01813a83          	ld	s5,24(sp)
   195b4:	01013b03          	ld	s6,16(sp)
   195b8:	00813b83          	ld	s7,8(sp)
   195bc:	00013c03          	ld	s8,0(sp)
   195c0:	00060593          	mv	a1,a2
   195c4:	05010113          	addi	sp,sp,80
   195c8:	cb9f706f          	j	11280 <_malloc_r>
   195cc:	0017f793          	andi	a5,a5,1
   195d0:	e60794e3          	bnez	a5,19438 <_realloc_r+0xa4>
   195d4:	ff09bb83          	ld	s7,-16(s3)
   195d8:	417a8bb3          	sub	s7,s5,s7
   195dc:	008bb783          	ld	a5,8(s7) # ffffffff80000008 <_end+0xffffffff7ffd8c90>
   195e0:	ffc7f793          	andi	a5,a5,-4
   195e4:	00f70b33          	add	s6,a4,a5
   195e8:	0a8b4e63          	blt	s6,s0,196a4 <_realloc_r+0x310>
   195ec:	0186b783          	ld	a5,24(a3)
   195f0:	0106b703          	ld	a4,16(a3)
   195f4:	ff8a0613          	addi	a2,s4,-8
   195f8:	010b8493          	addi	s1,s7,16
   195fc:	00f73c23          	sd	a5,24(a4)
   19600:	00e7b823          	sd	a4,16(a5)
   19604:	010bb703          	ld	a4,16(s7)
   19608:	018bb783          	ld	a5,24(s7)
   1960c:	00f73c23          	sd	a5,24(a4)
   19610:	00e7b823          	sd	a4,16(a5)
   19614:	04800793          	li	a5,72
   19618:	1ec7e463          	bltu	a5,a2,19800 <_realloc_r+0x46c>
   1961c:	02700713          	li	a4,39
   19620:	00048793          	mv	a5,s1
   19624:	04c77663          	bleu	a2,a4,19670 <_realloc_r+0x2dc>
   19628:	0009b783          	ld	a5,0(s3)
   1962c:	00fbb823          	sd	a5,16(s7)
   19630:	0089b783          	ld	a5,8(s3)
   19634:	00fbbc23          	sd	a5,24(s7)
   19638:	03700793          	li	a5,55
   1963c:	24c7f863          	bleu	a2,a5,1988c <_realloc_r+0x4f8>
   19640:	0109b783          	ld	a5,16(s3)
   19644:	02fbb023          	sd	a5,32(s7)
   19648:	0189b783          	ld	a5,24(s3)
   1964c:	02fbb423          	sd	a5,40(s7)
   19650:	04800793          	li	a5,72
   19654:	0af61863          	bne	a2,a5,19704 <_realloc_r+0x370>
   19658:	0209b703          	ld	a4,32(s3)
   1965c:	040b8793          	addi	a5,s7,64
   19660:	03098993          	addi	s3,s3,48
   19664:	02ebb823          	sd	a4,48(s7)
   19668:	ff89b703          	ld	a4,-8(s3)
   1966c:	02ebbc23          	sd	a4,56(s7)
   19670:	0009b703          	ld	a4,0(s3)
   19674:	000b0a13          	mv	s4,s6
   19678:	000b8a93          	mv	s5,s7
   1967c:	00e7b023          	sd	a4,0(a5)
   19680:	0089b703          	ld	a4,8(s3)
   19684:	00e7b423          	sd	a4,8(a5)
   19688:	0109b703          	ld	a4,16(s3)
   1968c:	00e7b823          	sd	a4,16(a5)
   19690:	e2dff06f          	j	194bc <_realloc_r+0x128>
   19694:	ff09bb83          	ld	s7,-16(s3)
   19698:	417a8bb3          	sub	s7,s5,s7
   1969c:	008bb783          	ld	a5,8(s7)
   196a0:	ffc7f793          	andi	a5,a5,-4
   196a4:	00fa0b33          	add	s6,s4,a5
   196a8:	d88b48e3          	blt	s6,s0,19438 <_realloc_r+0xa4>
   196ac:	018bb783          	ld	a5,24(s7)
   196b0:	010bb703          	ld	a4,16(s7)
   196b4:	ff8a0613          	addi	a2,s4,-8
   196b8:	04800693          	li	a3,72
   196bc:	00f73c23          	sd	a5,24(a4)
   196c0:	00e7b823          	sd	a4,16(a5)
   196c4:	010b8493          	addi	s1,s7,16
   196c8:	12c6ec63          	bltu	a3,a2,19800 <_realloc_r+0x46c>
   196cc:	02700713          	li	a4,39
   196d0:	00048793          	mv	a5,s1
   196d4:	f8c77ee3          	bleu	a2,a4,19670 <_realloc_r+0x2dc>
   196d8:	0009b783          	ld	a5,0(s3)
   196dc:	00fbb823          	sd	a5,16(s7)
   196e0:	0089b783          	ld	a5,8(s3)
   196e4:	00fbbc23          	sd	a5,24(s7)
   196e8:	03700793          	li	a5,55
   196ec:	1ac7f063          	bleu	a2,a5,1988c <_realloc_r+0x4f8>
   196f0:	0109b783          	ld	a5,16(s3)
   196f4:	02fbb023          	sd	a5,32(s7)
   196f8:	0189b783          	ld	a5,24(s3)
   196fc:	02fbb423          	sd	a5,40(s7)
   19700:	f4d60ce3          	beq	a2,a3,19658 <_realloc_r+0x2c4>
   19704:	030b8793          	addi	a5,s7,48
   19708:	02098993          	addi	s3,s3,32
   1970c:	f65ff06f          	j	19670 <_realloc_r+0x2dc>
   19710:	0086b703          	ld	a4,8(a3)
   19714:	02040693          	addi	a3,s0,32
   19718:	ffc77713          	andi	a4,a4,-4
   1971c:	01470733          	add	a4,a4,s4
   19720:	0ed75c63          	ble	a3,a4,19818 <_realloc_r+0x484>
   19724:	0017f793          	andi	a5,a5,1
   19728:	d00798e3          	bnez	a5,19438 <_realloc_r+0xa4>
   1972c:	ff09bb83          	ld	s7,-16(s3)
   19730:	417a8bb3          	sub	s7,s5,s7
   19734:	008bb783          	ld	a5,8(s7)
   19738:	ffc7f793          	andi	a5,a5,-4
   1973c:	00e78c33          	add	s8,a5,a4
   19740:	f6dc42e3          	blt	s8,a3,196a4 <_realloc_r+0x310>
   19744:	018bb783          	ld	a5,24(s7)
   19748:	010bb703          	ld	a4,16(s7)
   1974c:	ff8a0613          	addi	a2,s4,-8
   19750:	04800693          	li	a3,72
   19754:	00f73c23          	sd	a5,24(a4)
   19758:	00e7b823          	sd	a4,16(a5)
   1975c:	010b8493          	addi	s1,s7,16
   19760:	14c6ea63          	bltu	a3,a2,198b4 <_realloc_r+0x520>
   19764:	02700713          	li	a4,39
   19768:	00048793          	mv	a5,s1
   1976c:	02c77263          	bleu	a2,a4,19790 <_realloc_r+0x3fc>
   19770:	0009b783          	ld	a5,0(s3)
   19774:	00fbb823          	sd	a5,16(s7)
   19778:	0089b783          	ld	a5,8(s3)
   1977c:	00fbbc23          	sd	a5,24(s7)
   19780:	03700793          	li	a5,55
   19784:	14c7e063          	bltu	a5,a2,198c4 <_realloc_r+0x530>
   19788:	020b8793          	addi	a5,s7,32
   1978c:	01098993          	addi	s3,s3,16
   19790:	0009b703          	ld	a4,0(s3)
   19794:	00e7b023          	sd	a4,0(a5)
   19798:	0089b703          	ld	a4,8(s3)
   1979c:	00e7b423          	sd	a4,8(a5)
   197a0:	0109b703          	ld	a4,16(s3)
   197a4:	00e7b823          	sd	a4,16(a5)
   197a8:	008b8733          	add	a4,s7,s0
   197ac:	408c07b3          	sub	a5,s8,s0
   197b0:	00eb3823          	sd	a4,16(s6)
   197b4:	0017e793          	ori	a5,a5,1
   197b8:	00f73423          	sd	a5,8(a4)
   197bc:	008bb783          	ld	a5,8(s7)
   197c0:	00090513          	mv	a0,s2
   197c4:	0017f793          	andi	a5,a5,1
   197c8:	0087e433          	or	s0,a5,s0
   197cc:	008bb423          	sd	s0,8(s7)
   197d0:	b44f80ef          	jal	11b14 <__malloc_unlock>
   197d4:	00048513          	mv	a0,s1
   197d8:	d1dff06f          	j	194f4 <_realloc_r+0x160>
   197dc:	0009b703          	ld	a4,0(s3)
   197e0:	00e53023          	sd	a4,0(a0)
   197e4:	0089b703          	ld	a4,8(s3)
   197e8:	00e53423          	sd	a4,8(a0)
   197ec:	03700713          	li	a4,55
   197f0:	06c76463          	bltu	a4,a2,19858 <_realloc_r+0x4c4>
   197f4:	01050793          	addi	a5,a0,16
   197f8:	01098713          	addi	a4,s3,16
   197fc:	c81ff06f          	j	1947c <_realloc_r+0xe8>
   19800:	00098593          	mv	a1,s3
   19804:	00048513          	mv	a0,s1
   19808:	92dfe0ef          	jal	18134 <memmove>
   1980c:	000b0a13          	mv	s4,s6
   19810:	000b8a93          	mv	s5,s7
   19814:	ca9ff06f          	j	194bc <_realloc_r+0x128>
   19818:	008a8ab3          	add	s5,s5,s0
   1981c:	408707b3          	sub	a5,a4,s0
   19820:	015b3823          	sd	s5,16(s6)
   19824:	0017e793          	ori	a5,a5,1
   19828:	00fab423          	sd	a5,8(s5)
   1982c:	ff89b783          	ld	a5,-8(s3)
   19830:	00090513          	mv	a0,s2
   19834:	0017f793          	andi	a5,a5,1
   19838:	0087e433          	or	s0,a5,s0
   1983c:	fe89bc23          	sd	s0,-8(s3)
   19840:	ad4f80ef          	jal	11b14 <__malloc_unlock>
   19844:	00098513          	mv	a0,s3
   19848:	cadff06f          	j	194f4 <_realloc_r+0x160>
   1984c:	00098593          	mv	a1,s3
   19850:	8e5fe0ef          	jal	18134 <memmove>
   19854:	c41ff06f          	j	19494 <_realloc_r+0x100>
   19858:	0109b703          	ld	a4,16(s3)
   1985c:	00e53823          	sd	a4,16(a0)
   19860:	0189b703          	ld	a4,24(s3)
   19864:	00e53c23          	sd	a4,24(a0)
   19868:	02f60863          	beq	a2,a5,19898 <_realloc_r+0x504>
   1986c:	02050793          	addi	a5,a0,32
   19870:	02098713          	addi	a4,s3,32
   19874:	c09ff06f          	j	1947c <_realloc_r+0xe8>
   19878:	ff853783          	ld	a5,-8(a0)
   1987c:	00098493          	mv	s1,s3
   19880:	ffc7f793          	andi	a5,a5,-4
   19884:	00fa0a33          	add	s4,s4,a5
   19888:	c35ff06f          	j	194bc <_realloc_r+0x128>
   1988c:	020b8793          	addi	a5,s7,32
   19890:	01098993          	addi	s3,s3,16
   19894:	dddff06f          	j	19670 <_realloc_r+0x2dc>
   19898:	0209b683          	ld	a3,32(s3)
   1989c:	03050793          	addi	a5,a0,48
   198a0:	03098713          	addi	a4,s3,48
   198a4:	02d53023          	sd	a3,32(a0)
   198a8:	0289b683          	ld	a3,40(s3)
   198ac:	02d53423          	sd	a3,40(a0)
   198b0:	bcdff06f          	j	1947c <_realloc_r+0xe8>
   198b4:	00098593          	mv	a1,s3
   198b8:	00048513          	mv	a0,s1
   198bc:	879fe0ef          	jal	18134 <memmove>
   198c0:	ee9ff06f          	j	197a8 <_realloc_r+0x414>
   198c4:	0109b783          	ld	a5,16(s3)
   198c8:	02fbb023          	sd	a5,32(s7)
   198cc:	0189b783          	ld	a5,24(s3)
   198d0:	02fbb423          	sd	a5,40(s7)
   198d4:	02d60063          	beq	a2,a3,198f4 <_realloc_r+0x560>
   198d8:	030b8793          	addi	a5,s7,48
   198dc:	02098993          	addi	s3,s3,32
   198e0:	eb1ff06f          	j	19790 <_realloc_r+0x3fc>
   198e4:	00090513          	mv	a0,s2
   198e8:	a2cf80ef          	jal	11b14 <__malloc_unlock>
   198ec:	00000513          	li	a0,0
   198f0:	c05ff06f          	j	194f4 <_realloc_r+0x160>
   198f4:	0209b703          	ld	a4,32(s3)
   198f8:	040b8793          	addi	a5,s7,64
   198fc:	03098993          	addi	s3,s3,48
   19900:	02ebb823          	sd	a4,48(s7)
   19904:	ff89b703          	ld	a4,-8(s3)
   19908:	02ebbc23          	sd	a4,56(s7)
   1990c:	e85ff06f          	j	19790 <_realloc_r+0x3fc>

0000000000019910 <lflush>:
   19910:	01055783          	lhu	a5,16(a0)
   19914:	00900713          	li	a4,9
   19918:	0097f793          	andi	a5,a5,9
   1991c:	00e78663          	beq	a5,a4,19928 <lflush+0x18>
   19920:	00000513          	li	a0,0
   19924:	00008067          	ret
   19928:	9dcfd06f          	j	16b04 <fflush>

000000000001992c <__srefill_r>:
   1992c:	fd010113          	addi	sp,sp,-48
   19930:	02813023          	sd	s0,32(sp)
   19934:	00913c23          	sd	s1,24(sp)
   19938:	02113423          	sd	ra,40(sp)
   1993c:	01213823          	sd	s2,16(sp)
   19940:	01313423          	sd	s3,8(sp)
   19944:	00050493          	mv	s1,a0
   19948:	00058413          	mv	s0,a1
   1994c:	00050663          	beqz	a0,19958 <__srefill_r+0x2c>
   19950:	05052783          	lw	a5,80(a0)
   19954:	12078a63          	beqz	a5,19a88 <__srefill_r+0x15c>
   19958:	01041783          	lh	a5,16(s0)
   1995c:	03079713          	slli	a4,a5,0x30
   19960:	03075713          	srli	a4,a4,0x30
   19964:	03271693          	slli	a3,a4,0x32
   19968:	0206ca63          	bltz	a3,1999c <__srefill_r+0x70>
   1996c:	0ac42683          	lw	a3,172(s0)
   19970:	00002737          	lui	a4,0x2
   19974:	00e7e7b3          	or	a5,a5,a4
   19978:	ffffe737          	lui	a4,0xffffe
   1997c:	0107979b          	slliw	a5,a5,0x10
   19980:	fff7071b          	addiw	a4,a4,-1
   19984:	4107d79b          	sraiw	a5,a5,0x10
   19988:	00e6f733          	and	a4,a3,a4
   1998c:	0ae42623          	sw	a4,172(s0)
   19990:	03079713          	slli	a4,a5,0x30
   19994:	00f41823          	sh	a5,16(s0)
   19998:	03075713          	srli	a4,a4,0x30
   1999c:	00042423          	sw	zero,8(s0)
   199a0:	02077693          	andi	a3,a4,32
   199a4:	1a069c63          	bnez	a3,19b5c <__srefill_r+0x230>
   199a8:	00477693          	andi	a3,a4,4
   199ac:	08068863          	beqz	a3,19a3c <__srefill_r+0x110>
   199b0:	05843583          	ld	a1,88(s0)
   199b4:	02058263          	beqz	a1,199d8 <__srefill_r+0xac>
   199b8:	07440793          	addi	a5,s0,116
   199bc:	00f58663          	beq	a1,a5,199c8 <__srefill_r+0x9c>
   199c0:	00048513          	mv	a0,s1
   199c4:	855fd0ef          	jal	17218 <_free_r>
   199c8:	07042783          	lw	a5,112(s0)
   199cc:	04043c23          	sd	zero,88(s0)
   199d0:	00f42423          	sw	a5,8(s0)
   199d4:	12079263          	bnez	a5,19af8 <__srefill_r+0x1cc>
   199d8:	01843783          	ld	a5,24(s0)
   199dc:	18078463          	beqz	a5,19b64 <__srefill_r+0x238>
   199e0:	01041983          	lh	s3,16(s0)
   199e4:	03099913          	slli	s2,s3,0x30
   199e8:	03095913          	srli	s2,s2,0x30
   199ec:	00397793          	andi	a5,s2,3
   199f0:	0a079063          	bnez	a5,19a90 <__srefill_r+0x164>
   199f4:	01843603          	ld	a2,24(s0)
   199f8:	03843783          	ld	a5,56(s0)
   199fc:	02042683          	lw	a3,32(s0)
   19a00:	03043583          	ld	a1,48(s0)
   19a04:	00c43023          	sd	a2,0(s0)
   19a08:	00048513          	mv	a0,s1
   19a0c:	000780e7          	jalr	a5
   19a10:	0005079b          	sext.w	a5,a0
   19a14:	00f42423          	sw	a5,8(s0)
   19a18:	00000513          	li	a0,0
   19a1c:	02f05e63          	blez	a5,19a58 <__srefill_r+0x12c>
   19a20:	02813083          	ld	ra,40(sp)
   19a24:	02013403          	ld	s0,32(sp)
   19a28:	01813483          	ld	s1,24(sp)
   19a2c:	01013903          	ld	s2,16(sp)
   19a30:	00813983          	ld	s3,8(sp)
   19a34:	03010113          	addi	sp,sp,48
   19a38:	00008067          	ret
   19a3c:	01077693          	andi	a3,a4,16
   19a40:	10068663          	beqz	a3,19b4c <__srefill_r+0x220>
   19a44:	00877713          	andi	a4,a4,8
   19a48:	0c071c63          	bnez	a4,19b20 <__srefill_r+0x1f4>
   19a4c:	0047e793          	ori	a5,a5,4
   19a50:	00f41823          	sh	a5,16(s0)
   19a54:	f85ff06f          	j	199d8 <__srefill_r+0xac>
   19a58:	06079863          	bnez	a5,19ac8 <__srefill_r+0x19c>
   19a5c:	01045783          	lhu	a5,16(s0)
   19a60:	02813083          	ld	ra,40(sp)
   19a64:	fff00513          	li	a0,-1
   19a68:	0207e793          	ori	a5,a5,32
   19a6c:	00f41823          	sh	a5,16(s0)
   19a70:	01813483          	ld	s1,24(sp)
   19a74:	02013403          	ld	s0,32(sp)
   19a78:	01013903          	ld	s2,16(sp)
   19a7c:	00813983          	ld	s3,8(sp)
   19a80:	03010113          	addi	sp,sp,48
   19a84:	00008067          	ret
   19a88:	bccfd0ef          	jal	16e54 <__sinit>
   19a8c:	ecdff06f          	j	19958 <__srefill_r+0x2c>
   19a90:	8081b503          	ld	a0,-2040(gp) # 249d8 <_global_impure_ptr>
   19a94:	0001a5b7          	lui	a1,0x1a
   19a98:	00100793          	li	a5,1
   19a9c:	00f41823          	sh	a5,16(s0)
   19aa0:	91058593          	addi	a1,a1,-1776 # 19910 <lflush>
   19aa4:	f39fd0ef          	jal	179dc <_fwalk>
   19aa8:	00997913          	andi	s2,s2,9
   19aac:	01341823          	sh	s3,16(s0)
   19ab0:	00900793          	li	a5,9
   19ab4:	f4f910e3          	bne	s2,a5,199f4 <__srefill_r+0xc8>
   19ab8:	00040593          	mv	a1,s0
   19abc:	00048513          	mv	a0,s1
   19ac0:	d7dfc0ef          	jal	1683c <__sflush_r>
   19ac4:	f31ff06f          	j	199f4 <__srefill_r+0xc8>
   19ac8:	01045783          	lhu	a5,16(s0)
   19acc:	02813083          	ld	ra,40(sp)
   19ad0:	00042423          	sw	zero,8(s0)
   19ad4:	0407e793          	ori	a5,a5,64
   19ad8:	fff00513          	li	a0,-1
   19adc:	00f41823          	sh	a5,16(s0)
   19ae0:	01813483          	ld	s1,24(sp)
   19ae4:	02013403          	ld	s0,32(sp)
   19ae8:	01013903          	ld	s2,16(sp)
   19aec:	00813983          	ld	s3,8(sp)
   19af0:	03010113          	addi	sp,sp,48
   19af4:	00008067          	ret
   19af8:	06843783          	ld	a5,104(s0)
   19afc:	02813083          	ld	ra,40(sp)
   19b00:	00000513          	li	a0,0
   19b04:	00f43023          	sd	a5,0(s0)
   19b08:	01813483          	ld	s1,24(sp)
   19b0c:	02013403          	ld	s0,32(sp)
   19b10:	01013903          	ld	s2,16(sp)
   19b14:	00813983          	ld	s3,8(sp)
   19b18:	03010113          	addi	sp,sp,48
   19b1c:	00008067          	ret
   19b20:	00040593          	mv	a1,s0
   19b24:	00048513          	mv	a0,s1
   19b28:	f81fc0ef          	jal	16aa8 <_fflush_r>
   19b2c:	02051863          	bnez	a0,19b5c <__srefill_r+0x230>
   19b30:	01045783          	lhu	a5,16(s0)
   19b34:	00042623          	sw	zero,12(s0)
   19b38:	02042423          	sw	zero,40(s0)
   19b3c:	ff77f793          	andi	a5,a5,-9
   19b40:	0107979b          	slliw	a5,a5,0x10
   19b44:	4107d79b          	sraiw	a5,a5,0x10
   19b48:	f05ff06f          	j	19a4c <__srefill_r+0x120>
   19b4c:	00900713          	li	a4,9
   19b50:	00e4a023          	sw	a4,0(s1)
   19b54:	0407e793          	ori	a5,a5,64
   19b58:	00f41823          	sh	a5,16(s0)
   19b5c:	fff00513          	li	a0,-1
   19b60:	ec1ff06f          	j	19a20 <__srefill_r+0xf4>
   19b64:	00040593          	mv	a1,s0
   19b68:	00048513          	mv	a0,s1
   19b6c:	8d8fe0ef          	jal	17c44 <__smakebuf_r>
   19b70:	e71ff06f          	j	199e0 <__srefill_r+0xb4>

0000000000019b74 <__sccl>:
   19b74:	0005c603          	lbu	a2,0(a1)
   19b78:	05e00793          	li	a5,94
   19b7c:	08f60e63          	beq	a2,a5,19c18 <__sccl+0xa4>
   19b80:	00158593          	addi	a1,a1,1
   19b84:	00000713          	li	a4,0
   19b88:	00000813          	li	a6,0
   19b8c:	00050793          	mv	a5,a0
   19b90:	10050693          	addi	a3,a0,256
   19b94:	00e78023          	sb	a4,0(a5)
   19b98:	00178793          	addi	a5,a5,1
   19b9c:	fed79ce3          	bne	a5,a3,19b94 <__sccl+0x20>
   19ba0:	00183713          	seqz	a4,a6
   19ba4:	02d00313          	li	t1,45
   19ba8:	05d00893          	li	a7,93
   19bac:	02060a63          	beqz	a2,19be0 <__sccl+0x6c>
   19bb0:	00c507b3          	add	a5,a0,a2
   19bb4:	00e78023          	sb	a4,0(a5)
   19bb8:	0005c783          	lbu	a5,0(a1)
   19bbc:	00158813          	addi	a6,a1,1
   19bc0:	02678863          	beq	a5,t1,19bf0 <__sccl+0x7c>
   19bc4:	03178263          	beq	a5,a7,19be8 <__sccl+0x74>
   19bc8:	00078863          	beqz	a5,19bd8 <__sccl+0x64>
   19bcc:	00078613          	mv	a2,a5
   19bd0:	00080593          	mv	a1,a6
   19bd4:	fddff06f          	j	19bb0 <__sccl+0x3c>
   19bd8:	00058513          	mv	a0,a1
   19bdc:	00008067          	ret
   19be0:	fff58513          	addi	a0,a1,-1
   19be4:	00008067          	ret
   19be8:	00080513          	mv	a0,a6
   19bec:	00008067          	ret
   19bf0:	0015c683          	lbu	a3,1(a1)
   19bf4:	fd168ce3          	beq	a3,a7,19bcc <__sccl+0x58>
   19bf8:	fcc6cae3          	blt	a3,a2,19bcc <__sccl+0x58>
   19bfc:	00258593          	addi	a1,a1,2
   19c00:	00c507b3          	add	a5,a0,a2
   19c04:	00e780a3          	sb	a4,1(a5)
   19c08:	0016061b          	addiw	a2,a2,1
   19c0c:	00178793          	addi	a5,a5,1
   19c10:	fed64ae3          	blt	a2,a3,19c04 <__sccl+0x90>
   19c14:	fa5ff06f          	j	19bb8 <__sccl+0x44>
   19c18:	00100713          	li	a4,1
   19c1c:	0015c603          	lbu	a2,1(a1)
   19c20:	00070813          	mv	a6,a4
   19c24:	00258593          	addi	a1,a1,2
   19c28:	f65ff06f          	j	19b8c <__sccl+0x18>

0000000000019c2c <nanf>:
   19c2c:	000257b7          	lui	a5,0x25
   19c30:	a787a507          	flw	fa0,-1416(a5) # 24a78 <mask+0x60>
   19c34:	00008067          	ret

0000000000019c38 <__fpclassifyd>:
   19c38:	e20507d3          	fmv.x.d	a5,fa0
   19c3c:	00200513          	li	a0,2
   19c40:	4207d713          	srai	a4,a5,0x20
   19c44:	0007879b          	sext.w	a5,a5
   19c48:	00f766b3          	or	a3,a4,a5
   19c4c:	00069463          	bnez	a3,19c54 <__fpclassifyd+0x1c>
   19c50:	00008067          	ret
   19c54:	800006b7          	lui	a3,0x80000
   19c58:	04d70863          	beq	a4,a3,19ca8 <__fpclassifyd+0x70>
   19c5c:	fff006b7          	lui	a3,0xfff00
   19c60:	00d706bb          	addw	a3,a4,a3
   19c64:	7fe00637          	lui	a2,0x7fe00
   19c68:	00400513          	li	a0,4
   19c6c:	fec6e2e3          	bltu	a3,a2,19c50 <__fpclassifyd+0x18>
   19c70:	7ff006b7          	lui	a3,0x7ff00
   19c74:	00d706bb          	addw	a3,a4,a3
   19c78:	fcc6ece3          	bltu	a3,a2,19c50 <__fpclassifyd+0x18>
   19c7c:	800006b7          	lui	a3,0x80000
   19c80:	fff6c693          	not	a3,a3
   19c84:	00d77733          	and	a4,a4,a3
   19c88:	001006b7          	lui	a3,0x100
   19c8c:	00300513          	li	a0,3
   19c90:	fcd760e3          	bltu	a4,a3,19c50 <__fpclassifyd+0x18>
   19c94:	7ff006b7          	lui	a3,0x7ff00
   19c98:	00000513          	li	a0,0
   19c9c:	fad71ae3          	bne	a4,a3,19c50 <__fpclassifyd+0x18>
   19ca0:	0017b513          	seqz	a0,a5
   19ca4:	00008067          	ret
   19ca8:	fc079ae3          	bnez	a5,19c7c <__fpclassifyd+0x44>
   19cac:	00008067          	ret

0000000000019cb0 <_sprintf_r>:
   19cb0:	f0010113          	addi	sp,sp,-256
   19cb4:	0d810e13          	addi	t3,sp,216
   19cb8:	0ef13423          	sd	a5,232(sp)
   19cbc:	80000337          	lui	t1,0x80000
   19cc0:	20800793          	li	a5,520
   19cc4:	00058e93          	mv	t4,a1
   19cc8:	fff34313          	not	t1,t1
   19ccc:	0cd13c23          	sd	a3,216(sp)
   19cd0:	02f11023          	sh	a5,32(sp)
   19cd4:	01010593          	addi	a1,sp,16
   19cd8:	fff00793          	li	a5,-1
   19cdc:	000e0693          	mv	a3,t3
   19ce0:	0c113423          	sd	ra,200(sp)
   19ce4:	02f11123          	sh	a5,34(sp)
   19ce8:	0ee13023          	sd	a4,224(sp)
   19cec:	0f013823          	sd	a6,240(sp)
   19cf0:	0f113c23          	sd	a7,248(sp)
   19cf4:	01d13823          	sd	t4,16(sp)
   19cf8:	03d13423          	sd	t4,40(sp)
   19cfc:	00612e23          	sw	t1,28(sp)
   19d00:	02612823          	sw	t1,48(sp)
   19d04:	01c13423          	sd	t3,8(sp)
   19d08:	0d5010ef          	jal	1b5dc <_svfprintf_r>
   19d0c:	01013783          	ld	a5,16(sp)
   19d10:	00078023          	sb	zero,0(a5)
   19d14:	0c813083          	ld	ra,200(sp)
   19d18:	10010113          	addi	sp,sp,256
   19d1c:	00008067          	ret

0000000000019d20 <sprintf>:
   19d20:	00050e93          	mv	t4,a0
   19d24:	f0010113          	addi	sp,sp,-256
   19d28:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   19d2c:	0d010e13          	addi	t3,sp,208
   19d30:	0ef13423          	sd	a5,232(sp)
   19d34:	80000337          	lui	t1,0x80000
   19d38:	20800793          	li	a5,520
   19d3c:	fff34313          	not	t1,t1
   19d40:	0cc13823          	sd	a2,208(sp)
   19d44:	0cd13c23          	sd	a3,216(sp)
   19d48:	02f11023          	sh	a5,32(sp)
   19d4c:	00058613          	mv	a2,a1
   19d50:	fff00793          	li	a5,-1
   19d54:	01010593          	addi	a1,sp,16
   19d58:	000e0693          	mv	a3,t3
   19d5c:	0c113423          	sd	ra,200(sp)
   19d60:	02f11123          	sh	a5,34(sp)
   19d64:	0ee13023          	sd	a4,224(sp)
   19d68:	0f013823          	sd	a6,240(sp)
   19d6c:	0f113c23          	sd	a7,248(sp)
   19d70:	01d13823          	sd	t4,16(sp)
   19d74:	03d13423          	sd	t4,40(sp)
   19d78:	00612e23          	sw	t1,28(sp)
   19d7c:	02612823          	sw	t1,48(sp)
   19d80:	01c13423          	sd	t3,8(sp)
   19d84:	059010ef          	jal	1b5dc <_svfprintf_r>
   19d88:	01013783          	ld	a5,16(sp)
   19d8c:	00078023          	sb	zero,0(a5)
   19d90:	0c813083          	ld	ra,200(sp)
   19d94:	10010113          	addi	sp,sp,256
   19d98:	00008067          	ret

0000000000019d9c <__sread>:
   19d9c:	01259503          	lh	a0,18(a1)
   19da0:	ff010113          	addi	sp,sp,-16
   19da4:	00813023          	sd	s0,0(sp)
   19da8:	00058413          	mv	s0,a1
   19dac:	00060593          	mv	a1,a2
   19db0:	00068613          	mv	a2,a3
   19db4:	00113423          	sd	ra,8(sp)
   19db8:	359060ef          	jal	20910 <read>
   19dbc:	02054063          	bltz	a0,19ddc <__sread+0x40>
   19dc0:	09043783          	ld	a5,144(s0)
   19dc4:	00813083          	ld	ra,8(sp)
   19dc8:	00a787b3          	add	a5,a5,a0
   19dcc:	08f43823          	sd	a5,144(s0)
   19dd0:	00013403          	ld	s0,0(sp)
   19dd4:	01010113          	addi	sp,sp,16
   19dd8:	00008067          	ret
   19ddc:	01045703          	lhu	a4,16(s0)
   19de0:	fffff7b7          	lui	a5,0xfffff
   19de4:	00813083          	ld	ra,8(sp)
   19de8:	fff7879b          	addiw	a5,a5,-1
   19dec:	00f777b3          	and	a5,a4,a5
   19df0:	00f41823          	sh	a5,16(s0)
   19df4:	00013403          	ld	s0,0(sp)
   19df8:	01010113          	addi	sp,sp,16
   19dfc:	00008067          	ret

0000000000019e00 <__seofread>:
   19e00:	00000513          	li	a0,0
   19e04:	00008067          	ret

0000000000019e08 <__swrite>:
   19e08:	01059703          	lh	a4,16(a1)
   19e0c:	fd010113          	addi	sp,sp,-48
   19e10:	02813023          	sd	s0,32(sp)
   19e14:	00913c23          	sd	s1,24(sp)
   19e18:	02113423          	sd	ra,40(sp)
   19e1c:	10077793          	andi	a5,a4,256
   19e20:	00058413          	mv	s0,a1
   19e24:	00060493          	mv	s1,a2
   19e28:	02078063          	beqz	a5,19e48 <__swrite+0x40>
   19e2c:	01259503          	lh	a0,18(a1)
   19e30:	00200613          	li	a2,2
   19e34:	00000593          	li	a1,0
   19e38:	00d13423          	sd	a3,8(sp)
   19e3c:	2c1060ef          	jal	208fc <lseek>
   19e40:	01041703          	lh	a4,16(s0)
   19e44:	00813683          	ld	a3,8(sp)
   19e48:	fffff7b7          	lui	a5,0xfffff
   19e4c:	fff7879b          	addiw	a5,a5,-1
   19e50:	00f777b3          	and	a5,a4,a5
   19e54:	01241503          	lh	a0,18(s0)
   19e58:	00f41823          	sh	a5,16(s0)
   19e5c:	00048593          	mv	a1,s1
   19e60:	02813083          	ld	ra,40(sp)
   19e64:	02013403          	ld	s0,32(sp)
   19e68:	01813483          	ld	s1,24(sp)
   19e6c:	00068613          	mv	a2,a3
   19e70:	03010113          	addi	sp,sp,48
   19e74:	2b10606f          	j	20924 <write>

0000000000019e78 <__sseek>:
   19e78:	01259503          	lh	a0,18(a1)
   19e7c:	ff010113          	addi	sp,sp,-16
   19e80:	00813023          	sd	s0,0(sp)
   19e84:	00058413          	mv	s0,a1
   19e88:	00060593          	mv	a1,a2
   19e8c:	00068613          	mv	a2,a3
   19e90:	00113423          	sd	ra,8(sp)
   19e94:	269060ef          	jal	208fc <lseek>
   19e98:	fff00793          	li	a5,-1
   19e9c:	01045703          	lhu	a4,16(s0)
   19ea0:	02f50263          	beq	a0,a5,19ec4 <__sseek+0x4c>
   19ea4:	00813083          	ld	ra,8(sp)
   19ea8:	000017b7          	lui	a5,0x1
   19eac:	00f767b3          	or	a5,a4,a5
   19eb0:	08a43823          	sd	a0,144(s0)
   19eb4:	00f41823          	sh	a5,16(s0)
   19eb8:	00013403          	ld	s0,0(sp)
   19ebc:	01010113          	addi	sp,sp,16
   19ec0:	00008067          	ret
   19ec4:	fffff7b7          	lui	a5,0xfffff
   19ec8:	00813083          	ld	ra,8(sp)
   19ecc:	fff7879b          	addiw	a5,a5,-1
   19ed0:	00f777b3          	and	a5,a4,a5
   19ed4:	00f41823          	sh	a5,16(s0)
   19ed8:	00013403          	ld	s0,0(sp)
   19edc:	01010113          	addi	sp,sp,16
   19ee0:	00008067          	ret

0000000000019ee4 <__sclose>:
   19ee4:	01259503          	lh	a0,18(a1)
   19ee8:	2e90606f          	j	209d0 <close>

0000000000019eec <_strtod_r>:
   19eec:	f0010113          	addi	sp,sp,-256
   19ef0:	0e813823          	sd	s0,240(sp)
   19ef4:	0f213023          	sd	s2,224(sp)
   19ef8:	0d313c23          	sd	s3,216(sp)
   19efc:	0b713c23          	sd	s7,184(sp)
   19f00:	0b913423          	sd	s9,168(sp)
   19f04:	0e113c23          	sd	ra,248(sp)
   19f08:	0e913423          	sd	s1,232(sp)
   19f0c:	0d413823          	sd	s4,208(sp)
   19f10:	0d513423          	sd	s5,200(sp)
   19f14:	0d613023          	sd	s6,192(sp)
   19f18:	0b813823          	sd	s8,176(sp)
   19f1c:	0ba13023          	sd	s10,160(sp)
   19f20:	09b13c23          	sd	s11,152(sp)
   19f24:	08813427          	fsd	fs0,136(sp)
   19f28:	08913027          	fsd	fs1,128(sp)
   19f2c:	07213c27          	fsd	fs2,120(sp)
   19f30:	07313827          	fsd	fs3,112(sp)
   19f34:	07413427          	fsd	fs4,104(sp)
   19f38:	07513027          	fsd	fs5,96(sp)
   19f3c:	05613c27          	fsd	fs6,88(sp)
   19f40:	05713827          	fsd	fs7,80(sp)
   19f44:	04013023          	sd	zero,64(sp)
   19f48:	02b13c23          	sd	a1,56(sp)
   19f4c:	00058b93          	mv	s7,a1
   19f50:	000bc783          	lbu	a5,0(s7)
   19f54:	00060993          	mv	s3,a2
   19f58:	000226b7          	lui	a3,0x22
   19f5c:	02d00613          	li	a2,45
   19f60:	00058c93          	mv	s9,a1
   19f64:	00050413          	mv	s0,a0
   19f68:	00000913          	li	s2,0
   19f6c:	b9068693          	addi	a3,a3,-1136 # 21b90 <__mprec_bigtens+0x28>
   19f70:	28f66e63          	bltu	a2,a5,1a20c <_strtod_r+0x320>
   19f74:	00279713          	slli	a4,a5,0x2
   19f78:	00d70733          	add	a4,a4,a3
   19f7c:	00072703          	lw	a4,0(a4) # ffffffffffffe000 <_end+0xfffffffffffd6c88>
   19f80:	00070067          	jr	a4
   19f84:	00000a93          	li	s5,0
   19f88:	001b8713          	addi	a4,s7,1
   19f8c:	02e13c23          	sd	a4,56(sp)
   19f90:	001bc783          	lbu	a5,1(s7)
   19f94:	1c078e63          	beqz	a5,1a170 <_strtod_r+0x284>
   19f98:	00070b93          	mv	s7,a4
   19f9c:	03000713          	li	a4,48
   19fa0:	000b8a13          	mv	s4,s7
   19fa4:	00000b13          	li	s6,0
   19fa8:	26e78c63          	beq	a5,a4,1a220 <_strtod_r+0x334>
   19fac:	fd07871b          	addiw	a4,a5,-48
   19fb0:	0ff77713          	andi	a4,a4,255
   19fb4:	00900513          	li	a0,9
   19fb8:	40e566e3          	bltu	a0,a4,1abc4 <_strtod_r+0xcd8>
   19fbc:	001a0593          	addi	a1,s4,1
   19fc0:	00000d93          	li	s11,0
   19fc4:	00000d13          	li	s10,0
   19fc8:	00000c13          	li	s8,0
   19fcc:	00800813          	li	a6,8
   19fd0:	29884663          	blt	a6,s8,1a25c <_strtod_r+0x370>
   19fd4:	001d161b          	slliw	a2,s10,0x1
   19fd8:	003d171b          	slliw	a4,s10,0x3
   19fdc:	00e6073b          	addw	a4,a2,a4
   19fe0:	00f7073b          	addw	a4,a4,a5
   19fe4:	fd070d1b          	addiw	s10,a4,-48
   19fe8:	02b13c23          	sd	a1,56(sp)
   19fec:	0005c783          	lbu	a5,0(a1)
   19ff0:	00058913          	mv	s2,a1
   19ff4:	001c0c1b          	addiw	s8,s8,1
   19ff8:	fd07869b          	addiw	a3,a5,-48
   19ffc:	0ff6f693          	andi	a3,a3,255
   1a000:	00158593          	addi	a1,a1,1
   1a004:	fcd576e3          	bleu	a3,a0,19fd0 <_strtod_r+0xe4>
   1a008:	00078493          	mv	s1,a5
   1a00c:	00040513          	mv	a0,s0
   1a010:	c0dfd0ef          	jal	17c1c <_localeconv_r>
   1a014:	00053b83          	ld	s7,0(a0)
   1a018:	00040513          	mv	a0,s0
   1a01c:	c01fd0ef          	jal	17c1c <_localeconv_r>
   1a020:	00053503          	ld	a0,0(a0)
   1a024:	f81f70ef          	jal	11fa4 <strlen>
   1a028:	00050613          	mv	a2,a0
   1a02c:	000b8593          	mv	a1,s7
   1a030:	00090513          	mv	a0,s2
   1a034:	5a0050ef          	jal	1f5d4 <strncmp>
   1a038:	32050e63          	beqz	a0,1a374 <_strtod_r+0x488>
   1a03c:	000c0693          	mv	a3,s8
   1a040:	00000613          	li	a2,0
   1a044:	00000593          	li	a1,0
   1a048:	00000513          	li	a0,0
   1a04c:	fdf4f793          	andi	a5,s1,-33
   1a050:	04500713          	li	a4,69
   1a054:	00000b93          	li	s7,0
   1a058:	10e79463          	bne	a5,a4,1a160 <_strtod_r+0x274>
   1a05c:	00c6e7b3          	or	a5,a3,a2
   1a060:	0167e7b3          	or	a5,a5,s6
   1a064:	10078663          	beqz	a5,1a170 <_strtod_r+0x284>
   1a068:	03813c83          	ld	s9,56(sp)
   1a06c:	02b00713          	li	a4,43
   1a070:	001c8793          	addi	a5,s9,1
   1a074:	02f13c23          	sd	a5,56(sp)
   1a078:	001cc783          	lbu	a5,1(s9)
   1a07c:	22e780e3          	beq	a5,a4,1aa9c <_strtod_r+0xbb0>
   1a080:	02d00713          	li	a4,45
   1a084:	04e78ce3          	beq	a5,a4,1a8dc <_strtod_r+0x9f0>
   1a088:	00078493          	mv	s1,a5
   1a08c:	00000893          	li	a7,0
   1a090:	fd04879b          	addiw	a5,s1,-48
   1a094:	00900813          	li	a6,9
   1a098:	00048713          	mv	a4,s1
   1a09c:	12f860e3          	bltu	a6,a5,1a9bc <_strtod_r+0xad0>
   1a0a0:	03000793          	li	a5,48
   1a0a4:	02f49263          	bne	s1,a5,1a0c8 <_strtod_r+0x1dc>
   1a0a8:	03813783          	ld	a5,56(sp)
   1a0ac:	00048813          	mv	a6,s1
   1a0b0:	00178793          	addi	a5,a5,1 # fffffffffffff001 <_end+0xfffffffffffd7c89>
   1a0b4:	02f13c23          	sd	a5,56(sp)
   1a0b8:	0007c703          	lbu	a4,0(a5)
   1a0bc:	00178793          	addi	a5,a5,1
   1a0c0:	00070493          	mv	s1,a4
   1a0c4:	ff0708e3          	beq	a4,a6,1a0b4 <_strtod_r+0x1c8>
   1a0c8:	fcf7071b          	addiw	a4,a4,-49
   1a0cc:	00800793          	li	a5,8
   1a0d0:	00000b93          	li	s7,0
   1a0d4:	08e7e663          	bltu	a5,a4,1a160 <_strtod_r+0x274>
   1a0d8:	03813f03          	ld	t5,56(sp)
   1a0dc:	fd04879b          	addiw	a5,s1,-48
   1a0e0:	00900e93          	li	t4,9
   1a0e4:	001f0e13          	addi	t3,t5,1 # 10001 <_ftext+0x1>
   1a0e8:	03c13c23          	sd	t3,56(sp)
   1a0ec:	001f4483          	lbu	s1,1(t5)
   1a0f0:	fd04871b          	addiw	a4,s1,-48
   1a0f4:	0ff77713          	andi	a4,a4,255
   1a0f8:	02eeee63          	bltu	t4,a4,1a134 <_strtod_r+0x248>
   1a0fc:	002f0313          	addi	t1,t5,2
   1a100:	02613c23          	sd	t1,56(sp)
   1a104:	00034803          	lbu	a6,0(t1) # ffffffff80000000 <_end+0xffffffff7ffd8c88>
   1a108:	0017971b          	slliw	a4,a5,0x1
   1a10c:	0037979b          	slliw	a5,a5,0x3
   1a110:	00f707bb          	addw	a5,a4,a5
   1a114:	fd08071b          	addiw	a4,a6,-48
   1a118:	009787bb          	addw	a5,a5,s1
   1a11c:	0ff77713          	andi	a4,a4,255
   1a120:	00030e13          	mv	t3,t1
   1a124:	fd07879b          	addiw	a5,a5,-48
   1a128:	00080493          	mv	s1,a6
   1a12c:	00130313          	addi	t1,t1,1
   1a130:	fceef8e3          	bleu	a4,t4,1a100 <_strtod_r+0x214>
   1a134:	00005737          	lui	a4,0x5
   1a138:	41ee0e33          	sub	t3,t3,t5
   1a13c:	00800813          	li	a6,8
   1a140:	e1f70b9b          	addiw	s7,a4,-481
   1a144:	01c84a63          	blt	a6,t3,1a158 <_strtod_r+0x26c>
   1a148:	e1f7071b          	addiw	a4,a4,-481
   1a14c:	00078b93          	mv	s7,a5
   1a150:	00f75463          	ble	a5,a4,1a158 <_strtod_r+0x26c>
   1a154:	00070b93          	mv	s7,a4
   1a158:	00088463          	beqz	a7,1a160 <_strtod_r+0x274>
   1a15c:	41700bbb          	negw	s7,s7
   1a160:	10069a63          	bnez	a3,1a274 <_strtod_r+0x388>
   1a164:	01666b33          	or	s6,a2,s6
   1a168:	200b1263          	bnez	s6,1a36c <_strtod_r+0x480>
   1a16c:	70050a63          	beqz	a0,1a880 <_strtod_r+0x994>
   1a170:	00000493          	li	s1,0
   1a174:	00000a93          	li	s5,0
   1a178:	00098663          	beqz	s3,1a184 <_strtod_r+0x298>
   1a17c:	0199b023          	sd	s9,0(s3)
   1a180:	060a9263          	bnez	s5,1a1e4 <_strtod_r+0x2f8>
   1a184:	0f813083          	ld	ra,248(sp)
   1a188:	f2048553          	fmv.d.x	fa0,s1
   1a18c:	0f013403          	ld	s0,240(sp)
   1a190:	0e813483          	ld	s1,232(sp)
   1a194:	0e013903          	ld	s2,224(sp)
   1a198:	0d813983          	ld	s3,216(sp)
   1a19c:	0d013a03          	ld	s4,208(sp)
   1a1a0:	0c813a83          	ld	s5,200(sp)
   1a1a4:	0c013b03          	ld	s6,192(sp)
   1a1a8:	0b813b83          	ld	s7,184(sp)
   1a1ac:	0b013c03          	ld	s8,176(sp)
   1a1b0:	0a813c83          	ld	s9,168(sp)
   1a1b4:	0a013d03          	ld	s10,160(sp)
   1a1b8:	09813d83          	ld	s11,152(sp)
   1a1bc:	08813407          	fld	fs0,136(sp)
   1a1c0:	08013487          	fld	fs1,128(sp)
   1a1c4:	07813907          	fld	fs2,120(sp)
   1a1c8:	07013987          	fld	fs3,112(sp)
   1a1cc:	06813a07          	fld	fs4,104(sp)
   1a1d0:	06013a87          	fld	fs5,96(sp)
   1a1d4:	05813b07          	fld	fs6,88(sp)
   1a1d8:	05013b87          	fld	fs7,80(sp)
   1a1dc:	10010113          	addi	sp,sp,256
   1a1e0:	00008067          	ret
   1a1e4:	f20487d3          	fmv.d.x	fa5,s1
   1a1e8:	22f797d3          	fneg.d	fa5,fa5
   1a1ec:	e20784d3          	fmv.x.d	s1,fa5
   1a1f0:	f95ff06f          	j	1a184 <_strtod_r+0x298>
   1a1f4:	00100a93          	li	s5,1
   1a1f8:	d91ff06f          	j	19f88 <_strtod_r+0x9c>
   1a1fc:	001b8b93          	addi	s7,s7,1
   1a200:	03713c23          	sd	s7,56(sp)
   1a204:	000bc783          	lbu	a5,0(s7)
   1a208:	d6f676e3          	bleu	a5,a2,19f74 <_strtod_r+0x88>
   1a20c:	03000713          	li	a4,48
   1a210:	00000a93          	li	s5,0
   1a214:	000b8a13          	mv	s4,s7
   1a218:	00000b13          	li	s6,0
   1a21c:	d8e798e3          	bne	a5,a4,19fac <_strtod_r+0xc0>
   1a220:	001bc703          	lbu	a4,1(s7)
   1a224:	05800693          	li	a3,88
   1a228:	7ad70063          	beq	a4,a3,1a9c8 <_strtod_r+0xadc>
   1a22c:	07800693          	li	a3,120
   1a230:	78d70c63          	beq	a4,a3,1a9c8 <_strtod_r+0xadc>
   1a234:	001b8713          	addi	a4,s7,1
   1a238:	00070a13          	mv	s4,a4
   1a23c:	02e13c23          	sd	a4,56(sp)
   1a240:	00170713          	addi	a4,a4,1 # 5001 <_ftext-0xafff>
   1a244:	fff74483          	lbu	s1,-1(a4)
   1a248:	fef488e3          	beq	s1,a5,1a238 <_strtod_r+0x34c>
   1a24c:	12048063          	beqz	s1,1a36c <_strtod_r+0x480>
   1a250:	00048793          	mv	a5,s1
   1a254:	00100b13          	li	s6,1
   1a258:	d55ff06f          	j	19fac <_strtod_r+0xc0>
   1a25c:	001d961b          	slliw	a2,s11,0x1
   1a260:	003d969b          	slliw	a3,s11,0x3
   1a264:	00d606bb          	addw	a3,a2,a3
   1a268:	00f687bb          	addw	a5,a3,a5
   1a26c:	fd078d9b          	addiw	s11,a5,-48
   1a270:	d79ff06f          	j	19fe8 <_strtod_r+0xfc>
   1a274:	40bb8bbb          	subw	s7,s7,a1
   1a278:	000c1463          	bnez	s8,1a280 <_strtod_r+0x394>
   1a27c:	00068c13          	mv	s8,a3
   1a280:	01000793          	li	a5,16
   1a284:	00068713          	mv	a4,a3
   1a288:	00d7d463          	ble	a3,a5,1a290 <_strtod_r+0x3a4>
   1a28c:	00078713          	mv	a4,a5
   1a290:	d21d07d3          	fcvt.d.wu	fa5,s10
   1a294:	00900793          	li	a5,9
   1a298:	e20785d3          	fmv.x.d	a1,fa5
   1a29c:	00058913          	mv	s2,a1
   1a2a0:	02e7d663          	ble	a4,a5,1a2cc <_strtod_r+0x3e0>
   1a2a4:	ff77079b          	addiw	a5,a4,-9
   1a2a8:	00022637          	lui	a2,0x22
   1a2ac:	00379793          	slli	a5,a5,0x3
   1a2b0:	a7860613          	addi	a2,a2,-1416 # 21a78 <__mprec_tens>
   1a2b4:	00c78633          	add	a2,a5,a2
   1a2b8:	d21d87d3          	fcvt.d.wu	fa5,s11
   1a2bc:	00063707          	fld	fa4,0(a2)
   1a2c0:	f20586d3          	fmv.d.x	fa3,a1
   1a2c4:	7ae6f7c3          	fmadd.d	fa5,fa3,fa4,fa5
   1a2c8:	e2078953          	fmv.x.d	s2,fa5
   1a2cc:	00f00793          	li	a5,15
   1a2d0:	10d7c663          	blt	a5,a3,1a3dc <_strtod_r+0x4f0>
   1a2d4:	080b8863          	beqz	s7,1a364 <_strtod_r+0x478>
   1a2d8:	357054e3          	blez	s7,1ae20 <_strtod_r+0xf34>
   1a2dc:	01600613          	li	a2,22
   1a2e0:	29764ce3          	blt	a2,s7,1ad78 <_strtod_r+0xe8c>
   1a2e4:	00022737          	lui	a4,0x22
   1a2e8:	003b9793          	slli	a5,s7,0x3
   1a2ec:	a7870713          	addi	a4,a4,-1416 # 21a78 <__mprec_tens>
   1a2f0:	00e787b3          	add	a5,a5,a4
   1a2f4:	0007b787          	fld	fa5,0(a5)
   1a2f8:	f2090753          	fmv.d.x	fa4,s2
   1a2fc:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1a300:	e20784d3          	fmv.x.d	s1,fa5
   1a304:	e6098ee3          	beqz	s3,1a180 <_strtod_r+0x294>
   1a308:	03813c83          	ld	s9,56(sp)
   1a30c:	0199b023          	sd	s9,0(s3)
   1a310:	e71ff06f          	j	1a180 <_strtod_r+0x294>
   1a314:	00022737          	lui	a4,0x22
   1a318:	02d13c23          	sd	a3,56(sp)
   1a31c:	00068613          	mv	a2,a3
   1a320:	30070713          	addi	a4,a4,768 # 22300 <zeroes.4123+0xb8>
   1a324:	01900893          	li	a7,25
   1a328:	00170713          	addi	a4,a4,1
   1a32c:	fff74503          	lbu	a0,-1(a4)
   1a330:	00160613          	addi	a2,a2,1
   1a334:	480500e3          	beqz	a0,1afb4 <_strtod_r+0x10c8>
   1a338:	00064583          	lbu	a1,0(a2)
   1a33c:	fbf5879b          	addiw	a5,a1,-65
   1a340:	0ff7f793          	andi	a5,a5,255
   1a344:	00058813          	mv	a6,a1
   1a348:	00f8e463          	bltu	a7,a5,1a350 <_strtod_r+0x464>
   1a34c:	0205881b          	addiw	a6,a1,32
   1a350:	fca80ce3          	beq	a6,a0,1a328 <_strtod_r+0x43c>
   1a354:	00168693          	addi	a3,a3,1
   1a358:	02d13c23          	sd	a3,56(sp)
   1a35c:	7ff00913          	li	s2,2047
   1a360:	03491913          	slli	s2,s2,0x34
   1a364:	00090493          	mv	s1,s2
   1a368:	f9dff06f          	j	1a304 <_strtod_r+0x418>
   1a36c:	00000493          	li	s1,0
   1a370:	f95ff06f          	j	1a304 <_strtod_r+0x418>
   1a374:	00040513          	mv	a0,s0
   1a378:	8a5fd0ef          	jal	17c1c <_localeconv_r>
   1a37c:	00053503          	ld	a0,0(a0)
   1a380:	c25f70ef          	jal	11fa4 <strlen>
   1a384:	03813783          	ld	a5,56(sp)
   1a388:	00a78533          	add	a0,a5,a0
   1a38c:	02a13c23          	sd	a0,56(sp)
   1a390:	00054483          	lbu	s1,0(a0)
   1a394:	4a0c1863          	bnez	s8,1a844 <_strtod_r+0x958>
   1a398:	03000793          	li	a5,48
   1a39c:	2ef494e3          	bne	s1,a5,1ae84 <_strtod_r+0xf98>
   1a3a0:	00150793          	addi	a5,a0,1
   1a3a4:	00000613          	li	a2,0
   1a3a8:	00048713          	mv	a4,s1
   1a3ac:	02f13c23          	sd	a5,56(sp)
   1a3b0:	0007c483          	lbu	s1,0(a5)
   1a3b4:	0016061b          	addiw	a2,a2,1
   1a3b8:	00178793          	addi	a5,a5,1
   1a3bc:	fee488e3          	beq	s1,a4,1a3ac <_strtod_r+0x4c0>
   1a3c0:	fcf4879b          	addiw	a5,s1,-49
   1a3c4:	00800713          	li	a4,8
   1a3c8:	16f778e3          	bleu	a5,a4,1ad38 <_strtod_r+0xe4c>
   1a3cc:	00000693          	li	a3,0
   1a3d0:	00000593          	li	a1,0
   1a3d4:	00100513          	li	a0,1
   1a3d8:	c75ff06f          	j	1a04c <_strtod_r+0x160>
   1a3dc:	40e6873b          	subw	a4,a3,a4
   1a3e0:	0177073b          	addw	a4,a4,s7
   1a3e4:	70e05a63          	blez	a4,1aaf8 <_strtod_r+0xc0c>
   1a3e8:	00f77793          	andi	a5,a4,15
   1a3ec:	02078263          	beqz	a5,1a410 <_strtod_r+0x524>
   1a3f0:	00022637          	lui	a2,0x22
   1a3f4:	00379793          	slli	a5,a5,0x3
   1a3f8:	a7860613          	addi	a2,a2,-1416 # 21a78 <__mprec_tens>
   1a3fc:	00c787b3          	add	a5,a5,a2
   1a400:	f2090753          	fmv.d.x	fa4,s2
   1a404:	0007b787          	fld	fa5,0(a5)
   1a408:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1a40c:	e2078953          	fmv.x.d	s2,fa5
   1a410:	ff077793          	andi	a5,a4,-16
   1a414:	0c078863          	beqz	a5,1a4e4 <_strtod_r+0x5f8>
   1a418:	13400713          	li	a4,308
   1a41c:	4cf74a63          	blt	a4,a5,1a8f0 <_strtod_r+0xa04>
   1a420:	4047d79b          	sraiw	a5,a5,0x4
   1a424:	00100513          	li	a0,1
   1a428:	3af55ce3          	ble	a5,a0,1afe0 <_strtod_r+0x10f4>
   1a42c:	00022737          	lui	a4,0x22
   1a430:	b6870313          	addi	t1,a4,-1176 # 21b68 <__mprec_bigtens>
   1a434:	00090813          	mv	a6,s2
   1a438:	b6870713          	addi	a4,a4,-1176
   1a43c:	00000893          	li	a7,0
   1a440:	00000613          	li	a2,0
   1a444:	0017f593          	andi	a1,a5,1
   1a448:	00058c63          	beqz	a1,1a460 <_strtod_r+0x574>
   1a44c:	f2080753          	fmv.d.x	fa4,a6
   1a450:	00073787          	fld	fa5,0(a4)
   1a454:	00100893          	li	a7,1
   1a458:	12f777d3          	fmul.d	fa5,fa4,fa5
   1a45c:	e2078853          	fmv.x.d	a6,fa5
   1a460:	4017d79b          	sraiw	a5,a5,0x1
   1a464:	0016061b          	addiw	a2,a2,1
   1a468:	00870713          	addi	a4,a4,8
   1a46c:	fca79ce3          	bne	a5,a0,1a444 <_strtod_r+0x558>
   1a470:	500890e3          	bnez	a7,1b170 <_strtod_r+0x1284>
   1a474:	00361793          	slli	a5,a2,0x3
   1a478:	42095713          	srai	a4,s2,0x20
   1a47c:	00f30633          	add	a2,t1,a5
   1a480:	fcb007b7          	lui	a5,0xfcb00
   1a484:	00f707bb          	addw	a5,a4,a5
   1a488:	fff00713          	li	a4,-1
   1a48c:	02075713          	srli	a4,a4,0x20
   1a490:	02079793          	slli	a5,a5,0x20
   1a494:	00e97933          	and	s2,s2,a4
   1a498:	00f96933          	or	s2,s2,a5
   1a49c:	00063787          	fld	fa5,0(a2)
   1a4a0:	f2090753          	fmv.d.x	fa4,s2
   1a4a4:	7ff007b7          	lui	a5,0x7ff00
   1a4a8:	7ca005b7          	lui	a1,0x7ca00
   1a4ac:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1a4b0:	e2078953          	fmv.x.d	s2,fa5
   1a4b4:	42095613          	srai	a2,s2,0x20
   1a4b8:	00f677b3          	and	a5,a2,a5
   1a4bc:	42f5ea63          	bltu	a1,a5,1a8f0 <_strtod_r+0xa04>
   1a4c0:	7c9005b7          	lui	a1,0x7c900
   1a4c4:	2cf5f4e3          	bleu	a5,a1,1af8c <_strtod_r+0x10a0>
   1a4c8:	7ff007b7          	lui	a5,0x7ff00
   1a4cc:	02091913          	slli	s2,s2,0x20
   1a4d0:	fff78793          	addi	a5,a5,-1 # 7fefffff <_end+0x7fed8c87>
   1a4d4:	02095913          	srli	s2,s2,0x20
   1a4d8:	02079793          	slli	a5,a5,0x20
   1a4dc:	00f96933          	or	s2,s2,a5
   1a4e0:	00e96933          	or	s2,s2,a4
   1a4e4:	00000c93          	li	s9,0
   1a4e8:	000d0713          	mv	a4,s10
   1a4ec:	000c0613          	mv	a2,s8
   1a4f0:	000a0593          	mv	a1,s4
   1a4f4:	00040513          	mv	a0,s0
   1a4f8:	818fe0ef          	jal	18510 <__s2b>
   1a4fc:	00050d13          	mv	s10,a0
   1a500:	3e050863          	beqz	a0,1a8f0 <_strtod_r+0xa04>
   1a504:	417007bb          	negw	a5,s7
   1a508:	41fbdd9b          	sraiw	s11,s7,0x1f
   1a50c:	00fdf7b3          	and	a5,s11,a5
   1a510:	01712423          	sw	s7,8(sp)
   1a514:	00f12623          	sw	a5,12(sp)
   1a518:	100bc0e3          	bltz	s7,1ae18 <_strtod_r+0xf2c>
   1a51c:	000257b7          	lui	a5,0x25
   1a520:	a607b907          	fld	fs2,-1440(a5) # 24a60 <mask+0x48>
   1a524:	000257b7          	lui	a5,0x25
   1a528:	a887b487          	fld	fs1,-1400(a5) # 24a88 <mask+0x70>
   1a52c:	000257b7          	lui	a5,0x25
   1a530:	a407b987          	fld	fs3,-1472(a5) # 24a40 <mask+0x28>
   1a534:	000257b7          	lui	a5,0x25
   1a538:	a807bb07          	fld	fs6,-1408(a5) # 24a80 <mask+0x68>
   1a53c:	000257b7          	lui	a5,0x25
   1a540:	23290ad3          	fmv.d	fs5,fs2
   1a544:	a987ba07          	fld	fs4,-1384(a5) # 24a98 <mask+0x80>
   1a548:	00000c13          	li	s8,0
   1a54c:	00000a13          	li	s4,0
   1a550:	008d2583          	lw	a1,8(s10)
   1a554:	00040513          	mv	a0,s0
   1a558:	dd9fd0ef          	jal	18330 <_Balloc>
   1a55c:	00050b13          	mv	s6,a0
   1a560:	3a050263          	beqz	a0,1a904 <_strtod_r+0xa18>
   1a564:	014d2603          	lw	a2,20(s10)
   1a568:	010d0593          	addi	a1,s10,16
   1a56c:	01050513          	addi	a0,a0,16
   1a570:	00260613          	addi	a2,a2,2
   1a574:	00261613          	slli	a2,a2,0x2
   1a578:	c78f70ef          	jal	119f0 <memcpy>
   1a57c:	f20905d3          	fmv.d.x	fa1,s2
   1a580:	04810693          	addi	a3,sp,72
   1a584:	03410613          	addi	a2,sp,52
   1a588:	00040513          	mv	a0,s0
   1a58c:	addfe0ef          	jal	19068 <__d2b>
   1a590:	04a13023          	sd	a0,64(sp)
   1a594:	00090493          	mv	s1,s2
   1a598:	36050863          	beqz	a0,1a908 <_strtod_r+0xa1c>
   1a59c:	00100593          	li	a1,1
   1a5a0:	00040513          	mv	a0,s0
   1a5a4:	9c4fe0ef          	jal	18768 <__i2b>
   1a5a8:	00050a13          	mv	s4,a0
   1a5ac:	34050c63          	beqz	a0,1a904 <_strtod_r+0xa18>
   1a5b0:	03412703          	lw	a4,52(sp)
   1a5b4:	3a074e63          	bltz	a4,1a970 <_strtod_r+0xa84>
   1a5b8:	00c12783          	lw	a5,12(sp)
   1a5bc:	00812583          	lw	a1,8(sp)
   1a5c0:	00e78dbb          	addw	s11,a5,a4
   1a5c4:	04812503          	lw	a0,72(sp)
   1a5c8:	4197073b          	subw	a4,a4,s9
   1a5cc:	00100693          	li	a3,1
   1a5d0:	00a7073b          	addw	a4,a4,a0
   1a5d4:	03600793          	li	a5,54
   1a5d8:	fff7071b          	addiw	a4,a4,-1
   1a5dc:	c0200613          	li	a2,-1022
   1a5e0:	00012c23          	sw	zero,24(sp)
   1a5e4:	00d12823          	sw	a3,16(sp)
   1a5e8:	40a787bb          	subw	a5,a5,a0
   1a5ec:	00c75e63          	ble	a2,a4,1a608 <_strtod_r+0x71c>
   1a5f0:	40e6063b          	subw	a2,a2,a4
   1a5f4:	01f00513          	li	a0,31
   1a5f8:	40c787bb          	subw	a5,a5,a2
   1a5fc:	38c54263          	blt	a0,a2,1a980 <_strtod_r+0xa94>
   1a600:	00c6973b          	sllw	a4,a3,a2
   1a604:	00e12823          	sw	a4,16(sp)
   1a608:	00f5873b          	addw	a4,a1,a5
   1a60c:	00fd87bb          	addw	a5,s11,a5
   1a610:	00ec8bbb          	addw	s7,s9,a4
   1a614:	000d8593          	mv	a1,s11
   1a618:	01b7d463          	ble	s11,a5,1a620 <_strtod_r+0x734>
   1a61c:	00078593          	mv	a1,a5
   1a620:	000b8613          	mv	a2,s7
   1a624:	0175d463          	ble	s7,a1,1a62c <_strtod_r+0x740>
   1a628:	00058613          	mv	a2,a1
   1a62c:	00c05863          	blez	a2,1a63c <_strtod_r+0x750>
   1a630:	40c787bb          	subw	a5,a5,a2
   1a634:	40cb8bbb          	subw	s7,s7,a2
   1a638:	40cd8dbb          	subw	s11,s11,a2
   1a63c:	00c12703          	lw	a4,12(sp)
   1a640:	06070063          	beqz	a4,1a6a0 <_strtod_r+0x7b4>
   1a644:	000a0593          	mv	a1,s4
   1a648:	00070613          	mv	a2,a4
   1a64c:	00040513          	mv	a0,s0
   1a650:	02f13023          	sd	a5,32(sp)
   1a654:	b3cfe0ef          	jal	18990 <__pow5mult>
   1a658:	00050a13          	mv	s4,a0
   1a65c:	02013783          	ld	a5,32(sp)
   1a660:	2a050263          	beqz	a0,1a904 <_strtod_r+0xa18>
   1a664:	04013603          	ld	a2,64(sp)
   1a668:	00050593          	mv	a1,a0
   1a66c:	00040513          	mv	a0,s0
   1a670:	02f13023          	sd	a5,32(sp)
   1a674:	928fe0ef          	jal	1879c <__multiply>
   1a678:	02013783          	ld	a5,32(sp)
   1a67c:	28050463          	beqz	a0,1a904 <_strtod_r+0xa18>
   1a680:	04013583          	ld	a1,64(sp)
   1a684:	02a13423          	sd	a0,40(sp)
   1a688:	00040513          	mv	a0,s0
   1a68c:	02f13023          	sd	a5,32(sp)
   1a690:	d4dfd0ef          	jal	183dc <_Bfree>
   1a694:	02813603          	ld	a2,40(sp)
   1a698:	02013783          	ld	a5,32(sp)
   1a69c:	04c13023          	sd	a2,64(sp)
   1a6a0:	00f05e63          	blez	a5,1a6bc <_strtod_r+0x7d0>
   1a6a4:	04013583          	ld	a1,64(sp)
   1a6a8:	00078613          	mv	a2,a5
   1a6ac:	00040513          	mv	a0,s0
   1a6b0:	c18fe0ef          	jal	18ac8 <__lshift>
   1a6b4:	04a13023          	sd	a0,64(sp)
   1a6b8:	24050863          	beqz	a0,1a908 <_strtod_r+0xa1c>
   1a6bc:	00812783          	lw	a5,8(sp)
   1a6c0:	00078e63          	beqz	a5,1a6dc <_strtod_r+0x7f0>
   1a6c4:	00812603          	lw	a2,8(sp)
   1a6c8:	000b0593          	mv	a1,s6
   1a6cc:	00040513          	mv	a0,s0
   1a6d0:	ac0fe0ef          	jal	18990 <__pow5mult>
   1a6d4:	00050b13          	mv	s6,a0
   1a6d8:	22050663          	beqz	a0,1a904 <_strtod_r+0xa18>
   1a6dc:	01705e63          	blez	s7,1a6f8 <_strtod_r+0x80c>
   1a6e0:	000b0593          	mv	a1,s6
   1a6e4:	000b8613          	mv	a2,s7
   1a6e8:	00040513          	mv	a0,s0
   1a6ec:	bdcfe0ef          	jal	18ac8 <__lshift>
   1a6f0:	00050b13          	mv	s6,a0
   1a6f4:	20050863          	beqz	a0,1a904 <_strtod_r+0xa18>
   1a6f8:	01b05e63          	blez	s11,1a714 <_strtod_r+0x828>
   1a6fc:	000a0593          	mv	a1,s4
   1a700:	000d8613          	mv	a2,s11
   1a704:	00040513          	mv	a0,s0
   1a708:	bc0fe0ef          	jal	18ac8 <__lshift>
   1a70c:	00050a13          	mv	s4,a0
   1a710:	1e050a63          	beqz	a0,1a904 <_strtod_r+0xa18>
   1a714:	04013583          	ld	a1,64(sp)
   1a718:	000b0613          	mv	a2,s6
   1a71c:	00040513          	mv	a0,s0
   1a720:	d68fe0ef          	jal	18c88 <__mdiff>
   1a724:	00050c13          	mv	s8,a0
   1a728:	1c050e63          	beqz	a0,1a904 <_strtod_r+0xa18>
   1a72c:	01052783          	lw	a5,16(a0)
   1a730:	000a0593          	mv	a1,s4
   1a734:	00052823          	sw	zero,16(a0)
   1a738:	00078b93          	mv	s7,a5
   1a73c:	cecfe0ef          	jal	18c28 <__mcmp>
   1a740:	7c054063          	bltz	a0,1af00 <_strtod_r+0x1014>
   1a744:	74050463          	beqz	a0,1ae8c <_strtod_r+0xfa0>
   1a748:	000a0593          	mv	a1,s4
   1a74c:	000c0513          	mv	a0,s8
   1a750:	a55fe0ef          	jal	191a4 <__ratio>
   1a754:	a29507d3          	fle.d	a5,fa0,fs1
   1a758:	20078063          	beqz	a5,1a958 <_strtod_r+0xa6c>
   1a75c:	220b8e63          	beqz	s7,1a998 <_strtod_r+0xaac>
   1a760:	00025737          	lui	a4,0x25
   1a764:	a4073407          	fld	fs0,-1472(a4) # 24a40 <mask+0x28>
   1a768:	3ff00793          	li	a5,1023
   1a76c:	03479793          	slli	a5,a5,0x34
   1a770:	42095713          	srai	a4,s2,0x20
   1a774:	7ff006b7          	lui	a3,0x7ff00
   1a778:	00d77633          	and	a2,a4,a3
   1a77c:	7fe005b7          	lui	a1,0x7fe00
   1a780:	28b60863          	beq	a2,a1,1aa10 <_strtod_r+0xb24>
   1a784:	040c8c63          	beqz	s9,1a7dc <_strtod_r+0x8f0>
   1a788:	06a00737          	lui	a4,0x6a00
   1a78c:	04c76863          	bltu	a4,a2,1a7dc <_strtod_r+0x8f0>
   1a790:	00025737          	lui	a4,0x25
   1a794:	a9073787          	fld	fa5,-1392(a4) # 24a90 <mask+0x78>
   1a798:	a2f40753          	fle.d	a4,fs0,fa5
   1a79c:	02070063          	beqz	a4,1a7bc <_strtod_r+0x8d0>
   1a7a0:	c21417d3          	fcvt.wu.d	a5,fs0,rtz
   1a7a4:	62078063          	beqz	a5,1adc4 <_strtod_r+0xed8>
   1a7a8:	d2178453          	fcvt.d.wu	fs0,a5
   1a7ac:	e20407d3          	fmv.x.d	a5,fs0
   1a7b0:	000b9663          	bnez	s7,1a7bc <_strtod_r+0x8d0>
   1a7b4:	228417d3          	fneg.d	fa5,fs0
   1a7b8:	e20787d3          	fmv.x.d	a5,fa5
   1a7bc:	4207d713          	srai	a4,a5,0x20
   1a7c0:	06b006b7          	lui	a3,0x6b00
   1a7c4:	00d7073b          	addw	a4,a4,a3
   1a7c8:	40c7073b          	subw	a4,a4,a2
   1a7cc:	02079793          	slli	a5,a5,0x20
   1a7d0:	02071713          	slli	a4,a4,0x20
   1a7d4:	0207d793          	srli	a5,a5,0x20
   1a7d8:	00e7e7b3          	or	a5,a5,a4
   1a7dc:	f2048553          	fmv.d.x	fa0,s1
   1a7e0:	00c13823          	sd	a2,16(sp)
   1a7e4:	f2078bd3          	fmv.d.x	fs7,a5
   1a7e8:	eb0fe0ef          	jal	18e98 <__ulp>
   1a7ec:	f20487d3          	fmv.d.x	fa5,s1
   1a7f0:	01013603          	ld	a2,16(sp)
   1a7f4:	7aabf7c3          	fmadd.d	fa5,fs7,fa0,fa5
   1a7f8:	e2078953          	fmv.x.d	s2,fa5
   1a7fc:	42095713          	srai	a4,s2,0x20
   1a800:	000c9863          	bnez	s9,1a810 <_strtod_r+0x924>
   1a804:	7ff007b7          	lui	a5,0x7ff00
   1a808:	00f777b3          	and	a5,a4,a5
   1a80c:	28f60c63          	beq	a2,a5,1aaa4 <_strtod_r+0xbb8>
   1a810:	04013583          	ld	a1,64(sp)
   1a814:	00040513          	mv	a0,s0
   1a818:	bc5fd0ef          	jal	183dc <_Bfree>
   1a81c:	000b0593          	mv	a1,s6
   1a820:	00040513          	mv	a0,s0
   1a824:	bb9fd0ef          	jal	183dc <_Bfree>
   1a828:	000a0593          	mv	a1,s4
   1a82c:	00040513          	mv	a0,s0
   1a830:	badfd0ef          	jal	183dc <_Bfree>
   1a834:	000c0593          	mv	a1,s8
   1a838:	00040513          	mv	a0,s0
   1a83c:	ba1fd0ef          	jal	183dc <_Bfree>
   1a840:	d11ff06f          	j	1a550 <_strtod_r+0x664>
   1a844:	000c0693          	mv	a3,s8
   1a848:	00000613          	li	a2,0
   1a84c:	00000593          	li	a1,0
   1a850:	fd04851b          	addiw	a0,s1,-48
   1a854:	00900793          	li	a5,9
   1a858:	b6a7eee3          	bltu	a5,a0,1a3d4 <_strtod_r+0x4e8>
   1a85c:	0016071b          	addiw	a4,a2,1
   1a860:	00050493          	mv	s1,a0
   1a864:	46051863          	bnez	a0,1acd4 <_strtod_r+0xde8>
   1a868:	03813803          	ld	a6,56(sp)
   1a86c:	00070613          	mv	a2,a4
   1a870:	00180793          	addi	a5,a6,1
   1a874:	02f13c23          	sd	a5,56(sp)
   1a878:	00184483          	lbu	s1,1(a6)
   1a87c:	fd5ff06f          	j	1a850 <_strtod_r+0x964>
   1a880:	04e00793          	li	a5,78
   1a884:	00f48c63          	beq	s1,a5,1a89c <_strtod_r+0x9b0>
   1a888:	5497d463          	ble	s1,a5,1add0 <_strtod_r+0xee4>
   1a88c:	06900793          	li	a5,105
   1a890:	54f48463          	beq	s1,a5,1add8 <_strtod_r+0xeec>
   1a894:	06e00793          	li	a5,110
   1a898:	8cf49ce3          	bne	s1,a5,1a170 <_strtod_r+0x284>
   1a89c:	03813603          	ld	a2,56(sp)
   1a8a0:	00022737          	lui	a4,0x22
   1a8a4:	30870713          	addi	a4,a4,776 # 22308 <zeroes.4123+0xc0>
   1a8a8:	01900813          	li	a6,25
   1a8ac:	00170713          	addi	a4,a4,1
   1a8b0:	fff74583          	lbu	a1,-1(a4)
   1a8b4:	5a058663          	beqz	a1,1ae60 <_strtod_r+0xf74>
   1a8b8:	00160613          	addi	a2,a2,1
   1a8bc:	00064683          	lbu	a3,0(a2)
   1a8c0:	fbf6879b          	addiw	a5,a3,-65
   1a8c4:	0ff7f793          	andi	a5,a5,255
   1a8c8:	00068513          	mv	a0,a3
   1a8cc:	00f86463          	bltu	a6,a5,1a8d4 <_strtod_r+0x9e8>
   1a8d0:	0206851b          	addiw	a0,a3,32
   1a8d4:	fcb50ce3          	beq	a0,a1,1a8ac <_strtod_r+0x9c0>
   1a8d8:	899ff06f          	j	1a170 <_strtod_r+0x284>
   1a8dc:	00100893          	li	a7,1
   1a8e0:	002c8793          	addi	a5,s9,2
   1a8e4:	02f13c23          	sd	a5,56(sp)
   1a8e8:	002cc483          	lbu	s1,2(s9)
   1a8ec:	fa4ff06f          	j	1a090 <_strtod_r+0x1a4>
   1a8f0:	02200793          	li	a5,34
   1a8f4:	7ff00493          	li	s1,2047
   1a8f8:	00f42023          	sw	a5,0(s0)
   1a8fc:	03449493          	slli	s1,s1,0x34
   1a900:	a05ff06f          	j	1a304 <_strtod_r+0x418>
   1a904:	04013503          	ld	a0,64(sp)
   1a908:	02200793          	li	a5,34
   1a90c:	7ff00493          	li	s1,2047
   1a910:	00f42023          	sw	a5,0(s0)
   1a914:	03449493          	slli	s1,s1,0x34
   1a918:	00050593          	mv	a1,a0
   1a91c:	00040513          	mv	a0,s0
   1a920:	abdfd0ef          	jal	183dc <_Bfree>
   1a924:	000b0593          	mv	a1,s6
   1a928:	00040513          	mv	a0,s0
   1a92c:	ab1fd0ef          	jal	183dc <_Bfree>
   1a930:	000a0593          	mv	a1,s4
   1a934:	00040513          	mv	a0,s0
   1a938:	aa5fd0ef          	jal	183dc <_Bfree>
   1a93c:	000d0593          	mv	a1,s10
   1a940:	00040513          	mv	a0,s0
   1a944:	a99fd0ef          	jal	183dc <_Bfree>
   1a948:	000c0593          	mv	a1,s8
   1a94c:	00040513          	mv	a0,s0
   1a950:	a8dfd0ef          	jal	183dc <_Bfree>
   1a954:	9b1ff06f          	j	1a304 <_strtod_r+0x418>
   1a958:	13257453          	fmul.d	fs0,fa0,fs2
   1a95c:	e20407d3          	fmv.x.d	a5,fs0
   1a960:	e00b98e3          	bnez	s7,1a770 <_strtod_r+0x884>
   1a964:	228417d3          	fneg.d	fa5,fs0
   1a968:	e20787d3          	fmv.x.d	a5,fa5
   1a96c:	e05ff06f          	j	1a770 <_strtod_r+0x884>
   1a970:	00812783          	lw	a5,8(sp)
   1a974:	00c12d83          	lw	s11,12(sp)
   1a978:	40e785bb          	subw	a1,a5,a4
   1a97c:	c49ff06f          	j	1a5c4 <_strtod_r+0x6d8>
   1a980:	01012683          	lw	a3,16(sp)
   1a984:	be200613          	li	a2,-1054
   1a988:	40e6073b          	subw	a4,a2,a4
   1a98c:	00e6973b          	sllw	a4,a3,a4
   1a990:	00e12c23          	sw	a4,24(sp)
   1a994:	c75ff06f          	j	1a608 <_strtod_r+0x71c>
   1a998:	00c91793          	slli	a5,s2,0xc
   1a99c:	12078e63          	beqz	a5,1aad8 <_strtod_r+0xbec>
   1a9a0:	00100793          	li	a5,1
   1a9a4:	5cf90a63          	beq	s2,a5,1af78 <_strtod_r+0x108c>
   1a9a8:	bff00793          	li	a5,-1025
   1a9ac:	00025737          	lui	a4,0x25
   1a9b0:	03479793          	slli	a5,a5,0x34
   1a9b4:	a4073407          	fld	fs0,-1472(a4) # 24a40 <mask+0x28>
   1a9b8:	db9ff06f          	j	1a770 <_strtod_r+0x884>
   1a9bc:	03913c23          	sd	s9,56(sp)
   1a9c0:	00000b93          	li	s7,0
   1a9c4:	f9cff06f          	j	1a160 <_strtod_r+0x274>
   1a9c8:	00022637          	lui	a2,0x22
   1a9cc:	000a8793          	mv	a5,s5
   1a9d0:	04010713          	addi	a4,sp,64
   1a9d4:	03410693          	addi	a3,sp,52
   1a9d8:	c6860613          	addi	a2,a2,-920 # 21c68 <fpi.2617>
   1a9dc:	03810593          	addi	a1,sp,56
   1a9e0:	00040513          	mv	a0,s0
   1a9e4:	200040ef          	jal	1ebe4 <__gethex>
   1a9e8:	00757a13          	andi	s4,a0,7
   1a9ec:	00050b13          	mv	s6,a0
   1a9f0:	00000493          	li	s1,0
   1a9f4:	900a08e3          	beqz	s4,1a304 <_strtod_r+0x418>
   1a9f8:	00600793          	li	a5,6
   1a9fc:	1efa1e63          	bne	s4,a5,1abf8 <_strtod_r+0xd0c>
   1aa00:	001b8713          	addi	a4,s7,1
   1aa04:	02e13c23          	sd	a4,56(sp)
   1aa08:	00000a93          	li	s5,0
   1aa0c:	8f9ff06f          	j	1a304 <_strtod_r+0x418>
   1aa10:	fcb005b7          	lui	a1,0xfcb00
   1aa14:	00b7073b          	addw	a4,a4,a1
   1aa18:	fff00593          	li	a1,-1
   1aa1c:	0205d593          	srli	a1,a1,0x20
   1aa20:	02071713          	slli	a4,a4,0x20
   1aa24:	00b97933          	and	s2,s2,a1
   1aa28:	00e96933          	or	s2,s2,a4
   1aa2c:	f2090553          	fmv.d.x	fa0,s2
   1aa30:	f2078bd3          	fmv.d.x	fs7,a5
   1aa34:	00d13c23          	sd	a3,24(sp)
   1aa38:	00c13823          	sd	a2,16(sp)
   1aa3c:	02b13023          	sd	a1,32(sp)
   1aa40:	c58fe0ef          	jal	18e98 <__ulp>
   1aa44:	f20907d3          	fmv.d.x	fa5,s2
   1aa48:	01813683          	ld	a3,24(sp)
   1aa4c:	7ca00737          	lui	a4,0x7ca00
   1aa50:	7aabf7c3          	fmadd.d	fa5,fs7,fa0,fa5
   1aa54:	01013603          	ld	a2,16(sp)
   1aa58:	e2078953          	fmv.x.d	s2,fa5
   1aa5c:	42095793          	srai	a5,s2,0x20
   1aa60:	00d7f6b3          	and	a3,a5,a3
   1aa64:	16e6ec63          	bltu	a3,a4,1abdc <_strtod_r+0xcf0>
   1aa68:	7ff00793          	li	a5,2047
   1aa6c:	03479793          	slli	a5,a5,0x34
   1aa70:	fff78793          	addi	a5,a5,-1 # 7fefffff <_end+0x7fed8c87>
   1aa74:	02013583          	ld	a1,32(sp)
   1aa78:	e8f486e3          	beq	s1,a5,1a904 <_strtod_r+0xa18>
   1aa7c:	7ff007b7          	lui	a5,0x7ff00
   1aa80:	02091913          	slli	s2,s2,0x20
   1aa84:	fff78793          	addi	a5,a5,-1 # 7fefffff <_end+0x7fed8c87>
   1aa88:	02095913          	srli	s2,s2,0x20
   1aa8c:	02079793          	slli	a5,a5,0x20
   1aa90:	00f96933          	or	s2,s2,a5
   1aa94:	00b96933          	or	s2,s2,a1
   1aa98:	d79ff06f          	j	1a810 <_strtod_r+0x924>
   1aa9c:	00000893          	li	a7,0
   1aaa0:	e41ff06f          	j	1a8e0 <_strtod_r+0x9f4>
   1aaa4:	c20417d3          	fcvt.w.d	a5,fs0,rtz
   1aaa8:	d2078553          	fcvt.d.w	fa0,a5
   1aaac:	0aa47553          	fsub.d	fa0,fs0,fa0
   1aab0:	0e0b9c63          	bnez	s7,1aba8 <_strtod_r+0xcbc>
   1aab4:	00c91793          	slli	a5,s2,0xc
   1aab8:	0e079863          	bnez	a5,1aba8 <_strtod_r+0xcbc>
   1aabc:	000257b7          	lui	a5,0x25
   1aac0:	aa87b787          	fld	fa5,-1368(a5) # 24aa8 <mask+0x90>
   1aac4:	a2f517d3          	flt.d	a5,fa0,fa5
   1aac8:	d40784e3          	beqz	a5,1a810 <_strtod_r+0x924>
   1aacc:	04013503          	ld	a0,64(sp)
   1aad0:	00090493          	mv	s1,s2
   1aad4:	e45ff06f          	j	1a918 <_strtod_r+0xa2c>
   1aad8:	a33517d3          	flt.d	a5,fa0,fs3
   1aadc:	36079c63          	bnez	a5,1ae54 <_strtod_r+0xf68>
   1aae0:	000257b7          	lui	a5,0x25
   1aae4:	a607b407          	fld	fs0,-1440(a5) # 24a60 <mask+0x48>
   1aae8:	12857453          	fmul.d	fs0,fa0,fs0
   1aaec:	228417d3          	fneg.d	fa5,fs0
   1aaf0:	e20787d3          	fmv.x.d	a5,fa5
   1aaf4:	c7dff06f          	j	1a770 <_strtod_r+0x884>
   1aaf8:	9e0706e3          	beqz	a4,1a4e4 <_strtod_r+0x5f8>
   1aafc:	40e007bb          	negw	a5,a4
   1ab00:	00f7f713          	andi	a4,a5,15
   1ab04:	02070263          	beqz	a4,1ab28 <_strtod_r+0xc3c>
   1ab08:	00022637          	lui	a2,0x22
   1ab0c:	00371713          	slli	a4,a4,0x3
   1ab10:	a7860613          	addi	a2,a2,-1416 # 21a78 <__mprec_tens>
   1ab14:	00c70733          	add	a4,a4,a2
   1ab18:	f2090753          	fmv.d.x	fa4,s2
   1ab1c:	00073787          	fld	fa5,0(a4) # 7ca00000 <_end+0x7c9d8c88>
   1ab20:	1af777d3          	fdiv.d	fa5,fa4,fa5
   1ab24:	e2078953          	fmv.x.d	s2,fa5
   1ab28:	4047d79b          	sraiw	a5,a5,0x4
   1ab2c:	9a078ce3          	beqz	a5,1a4e4 <_strtod_r+0x5f8>
   1ab30:	01f00713          	li	a4,31
   1ab34:	06f74263          	blt	a4,a5,1ab98 <_strtod_r+0xcac>
   1ab38:	0107f713          	andi	a4,a5,16
   1ab3c:	54070a63          	beqz	a4,1b090 <_strtod_r+0x11a4>
   1ab40:	06a00c93          	li	s9,106
   1ab44:	50f05663          	blez	a5,1b050 <_strtod_r+0x1164>
   1ab48:	00022737          	lui	a4,0x22
   1ab4c:	00090593          	mv	a1,s2
   1ab50:	c9870713          	addi	a4,a4,-872 # 21c98 <tinytens>
   1ab54:	00000513          	li	a0,0
   1ab58:	0017f613          	andi	a2,a5,1
   1ab5c:	00060c63          	beqz	a2,1ab74 <_strtod_r+0xc88>
   1ab60:	f2058753          	fmv.d.x	fa4,a1
   1ab64:	00073787          	fld	fa5,0(a4)
   1ab68:	00100513          	li	a0,1
   1ab6c:	12f777d3          	fmul.d	fa5,fa4,fa5
   1ab70:	e20785d3          	fmv.x.d	a1,fa5
   1ab74:	4017d79b          	sraiw	a5,a5,0x1
   1ab78:	00870713          	addi	a4,a4,8
   1ab7c:	fc079ee3          	bnez	a5,1ab58 <_strtod_r+0xc6c>
   1ab80:	60051463          	bnez	a0,1b188 <_strtod_r+0x129c>
   1ab84:	4c0c9663          	bnez	s9,1b050 <_strtod_r+0x1164>
   1ab88:	f20007d3          	fmv.d.x	fa5,zero
   1ab8c:	f2090753          	fmv.d.x	fa4,s2
   1ab90:	a2f727d3          	feq.d	a5,fa4,fa5
   1ab94:	94078ae3          	beqz	a5,1a4e8 <_strtod_r+0x5fc>
   1ab98:	02200793          	li	a5,34
   1ab9c:	00f42023          	sw	a5,0(s0)
   1aba0:	00000493          	li	s1,0
   1aba4:	f60ff06f          	j	1a304 <_strtod_r+0x418>
   1aba8:	a34517d3          	flt.d	a5,fa0,fs4
   1abac:	f20790e3          	bnez	a5,1aacc <_strtod_r+0xbe0>
   1abb0:	000257b7          	lui	a5,0x25
   1abb4:	aa07b787          	fld	fa5,-1376(a5) # 24aa0 <mask+0x88>
   1abb8:	a2a797d3          	flt.d	a5,fa5,fa0
   1abbc:	c4078ae3          	beqz	a5,1a810 <_strtod_r+0x924>
   1abc0:	f0dff06f          	j	1aacc <_strtod_r+0xbe0>
   1abc4:	00078493          	mv	s1,a5
   1abc8:	000a0913          	mv	s2,s4
   1abcc:	00000d93          	li	s11,0
   1abd0:	00000d13          	li	s10,0
   1abd4:	00000c13          	li	s8,0
   1abd8:	c34ff06f          	j	1a00c <_strtod_r+0x120>
   1abdc:	03500737          	lui	a4,0x3500
   1abe0:	00e7873b          	addw	a4,a5,a4
   1abe4:	02091913          	slli	s2,s2,0x20
   1abe8:	02071793          	slli	a5,a4,0x20
   1abec:	02095913          	srli	s2,s2,0x20
   1abf0:	00f96933          	or	s2,s2,a5
   1abf4:	c0dff06f          	j	1a800 <_strtod_r+0x914>
   1abf8:	04013603          	ld	a2,64(sp)
   1abfc:	00060e63          	beqz	a2,1ac18 <_strtod_r+0xd2c>
   1ac00:	03500593          	li	a1,53
   1ac04:	04810513          	addi	a0,sp,72
   1ac08:	ea0fe0ef          	jal	192a8 <__copybits>
   1ac0c:	04013583          	ld	a1,64(sp)
   1ac10:	00040513          	mv	a0,s0
   1ac14:	fc8fd0ef          	jal	183dc <_Bfree>
   1ac18:	00600793          	li	a5,6
   1ac1c:	0347e463          	bltu	a5,s4,1ac44 <_strtod_r+0xd58>
   1ac20:	020a1793          	slli	a5,s4,0x20
   1ac24:	00022737          	lui	a4,0x22
   1ac28:	01e7d793          	srli	a5,a5,0x1e
   1ac2c:	c4870713          	addi	a4,a4,-952 # 21c48 <__mprec_bigtens+0xe0>
   1ac30:	00e787b3          	add	a5,a5,a4
   1ac34:	0007a783          	lw	a5,0(a5)
   1ac38:	00078067          	jr	a5
   1ac3c:	7ff00913          	li	s2,2047
   1ac40:	03491913          	slli	s2,s2,0x34
   1ac44:	008b7b13          	andi	s6,s6,8
   1ac48:	f00b0e63          	beqz	s6,1a364 <_strtod_r+0x478>
   1ac4c:	42095713          	srai	a4,s2,0x20
   1ac50:	800007b7          	lui	a5,0x80000
   1ac54:	00f767b3          	or	a5,a4,a5
   1ac58:	02091493          	slli	s1,s2,0x20
   1ac5c:	02079793          	slli	a5,a5,0x20
   1ac60:	0204d493          	srli	s1,s1,0x20
   1ac64:	00f4e4b3          	or	s1,s1,a5
   1ac68:	e9cff06f          	j	1a304 <_strtod_r+0x418>
   1ac6c:	04c16783          	lwu	a5,76(sp)
   1ac70:	04816903          	lwu	s2,72(sp)
   1ac74:	02079793          	slli	a5,a5,0x20
   1ac78:	00f96933          	or	s2,s2,a5
   1ac7c:	fc9ff06f          	j	1ac44 <_strtod_r+0xd58>
   1ac80:	03412783          	lw	a5,52(sp)
   1ac84:	04c12683          	lw	a3,76(sp)
   1ac88:	fff00737          	lui	a4,0xfff00
   1ac8c:	4337879b          	addiw	a5,a5,1075
   1ac90:	fff7071b          	addiw	a4,a4,-1
   1ac94:	00e6f733          	and	a4,a3,a4
   1ac98:	0147979b          	slliw	a5,a5,0x14
   1ac9c:	04816903          	lwu	s2,72(sp)
   1aca0:	00f767b3          	or	a5,a4,a5
   1aca4:	02079793          	slli	a5,a5,0x20
   1aca8:	00f96933          	or	s2,s2,a5
   1acac:	f99ff06f          	j	1ac44 <_strtod_r+0xd58>
   1acb0:	800007b7          	lui	a5,0x80000
   1acb4:	fff7c793          	not	a5,a5
   1acb8:	fff00913          	li	s2,-1
   1acbc:	02079793          	slli	a5,a5,0x20
   1acc0:	02095913          	srli	s2,s2,0x20
   1acc4:	0127e933          	or	s2,a5,s2
   1acc8:	f7dff06f          	j	1ac44 <_strtod_r+0xd58>
   1accc:	00000913          	li	s2,0
   1acd0:	f75ff06f          	j	1ac44 <_strtod_r+0xd58>
   1acd4:	00100793          	li	a5,1
   1acd8:	00e585bb          	addw	a1,a1,a4
   1acdc:	00d6063b          	addw	a2,a2,a3
   1ace0:	00800813          	li	a6,8
   1ace4:	01000313          	li	t1,16
   1ace8:	48f70863          	beq	a4,a5,1b178 <_strtod_r+0x128c>
   1acec:	0016869b          	addiw	a3,a3,1
   1acf0:	fff6871b          	addiw	a4,a3,-1
   1acf4:	06e86863          	bltu	a6,a4,1ad64 <_strtod_r+0xe78>
   1acf8:	001d189b          	slliw	a7,s10,0x1
   1acfc:	003d171b          	slliw	a4,s10,0x3
   1ad00:	00e88d3b          	addw	s10,a7,a4
   1ad04:	fec694e3          	bne	a3,a2,1acec <_strtod_r+0xe00>
   1ad08:	03813803          	ld	a6,56(sp)
   1ad0c:	0016869b          	addiw	a3,a3,1
   1ad10:	00800713          	li	a4,8
   1ad14:	02c75c63          	ble	a2,a4,1ad4c <_strtod_r+0xe60>
   1ad18:	01000793          	li	a5,16
   1ad1c:	00000613          	li	a2,0
   1ad20:	b4d7c8e3          	blt	a5,a3,1a870 <_strtod_r+0x984>
   1ad24:	001d971b          	slliw	a4,s11,0x1
   1ad28:	003d979b          	slliw	a5,s11,0x3
   1ad2c:	00f707bb          	addw	a5,a4,a5
   1ad30:	00f50dbb          	addw	s11,a0,a5
   1ad34:	b3dff06f          	j	1a870 <_strtod_r+0x984>
   1ad38:	03813a03          	ld	s4,56(sp)
   1ad3c:	fd04849b          	addiw	s1,s1,-48
   1ad40:	0016059b          	addiw	a1,a2,1
   1ad44:	000a0813          	mv	a6,s4
   1ad48:	00100693          	li	a3,1
   1ad4c:	001d161b          	slliw	a2,s10,0x1
   1ad50:	003d171b          	slliw	a4,s10,0x3
   1ad54:	00e6073b          	addw	a4,a2,a4
   1ad58:	00e48d3b          	addw	s10,s1,a4
   1ad5c:	00000613          	li	a2,0
   1ad60:	b11ff06f          	j	1a870 <_strtod_r+0x984>
   1ad64:	fad340e3          	blt	t1,a3,1ad04 <_strtod_r+0xe18>
   1ad68:	001d971b          	slliw	a4,s11,0x1
   1ad6c:	003d979b          	slliw	a5,s11,0x3
   1ad70:	00f70dbb          	addw	s11,a4,a5
   1ad74:	f91ff06f          	j	1ad04 <_strtod_r+0xe18>
   1ad78:	02500613          	li	a2,37
   1ad7c:	40d6063b          	subw	a2,a2,a3
   1ad80:	e5764e63          	blt	a2,s7,1a3dc <_strtod_r+0x4f0>
   1ad84:	40d787bb          	subw	a5,a5,a3
   1ad88:	00078713          	mv	a4,a5
   1ad8c:	000226b7          	lui	a3,0x22
   1ad90:	a7868693          	addi	a3,a3,-1416 # 21a78 <__mprec_tens>
   1ad94:	00371713          	slli	a4,a4,0x3
   1ad98:	00d70733          	add	a4,a4,a3
   1ad9c:	00073787          	fld	fa5,0(a4) # fffffffffff00000 <_end+0xffffffffffed8c88>
   1ada0:	f2090753          	fmv.d.x	fa4,s2
   1ada4:	40fb87bb          	subw	a5,s7,a5
   1ada8:	00379793          	slli	a5,a5,0x3
   1adac:	12e7f753          	fmul.d	fa4,fa5,fa4
   1adb0:	00d787b3          	add	a5,a5,a3
   1adb4:	0007b787          	fld	fa5,0(a5) # ffffffff80000000 <_end+0xffffffff7ffd8c88>
   1adb8:	12f777d3          	fmul.d	fa5,fa4,fa5
   1adbc:	e20784d3          	fmv.x.d	s1,fa5
   1adc0:	d44ff06f          	j	1a304 <_strtod_r+0x418>
   1adc4:	000257b7          	lui	a5,0x25
   1adc8:	a407b407          	fld	fs0,-1472(a5) # 24a40 <mask+0x28>
   1adcc:	9e1ff06f          	j	1a7ac <_strtod_r+0x8c0>
   1add0:	04900793          	li	a5,73
   1add4:	b8f49e63          	bne	s1,a5,1a170 <_strtod_r+0x284>
   1add8:	03813683          	ld	a3,56(sp)
   1addc:	00022737          	lui	a4,0x22
   1ade0:	2f870713          	addi	a4,a4,760 # 222f8 <zeroes.4123+0xb0>
   1ade4:	01900813          	li	a6,25
   1ade8:	00170713          	addi	a4,a4,1
   1adec:	fff74583          	lbu	a1,-1(a4)
   1adf0:	d2058263          	beqz	a1,1a314 <_strtod_r+0x428>
   1adf4:	00168693          	addi	a3,a3,1
   1adf8:	0006c603          	lbu	a2,0(a3)
   1adfc:	fbf6079b          	addiw	a5,a2,-65
   1ae00:	0ff7f793          	andi	a5,a5,255
   1ae04:	00060513          	mv	a0,a2
   1ae08:	00f86463          	bltu	a6,a5,1ae10 <_strtod_r+0xf24>
   1ae0c:	0206051b          	addiw	a0,a2,32
   1ae10:	fcb50ce3          	beq	a0,a1,1ade8 <_strtod_r+0xefc>
   1ae14:	b5cff06f          	j	1a170 <_strtod_r+0x284>
   1ae18:	00012423          	sw	zero,8(sp)
   1ae1c:	f00ff06f          	j	1a51c <_strtod_r+0x630>
   1ae20:	fea00793          	li	a5,-22
   1ae24:	dafbcc63          	blt	s7,a5,1a3dc <_strtod_r+0x4f0>
   1ae28:	41700bbb          	negw	s7,s7
   1ae2c:	000b8793          	mv	a5,s7
   1ae30:	00022737          	lui	a4,0x22
   1ae34:	00379793          	slli	a5,a5,0x3
   1ae38:	a7870713          	addi	a4,a4,-1416 # 21a78 <__mprec_tens>
   1ae3c:	00e787b3          	add	a5,a5,a4
   1ae40:	0007b787          	fld	fa5,0(a5)
   1ae44:	f2090753          	fmv.d.x	fa4,s2
   1ae48:	1af777d3          	fdiv.d	fa5,fa4,fa5
   1ae4c:	e20784d3          	fmv.x.d	s1,fa5
   1ae50:	cb4ff06f          	j	1a304 <_strtod_r+0x418>
   1ae54:	e20b07d3          	fmv.x.d	a5,fs6
   1ae58:	235a8453          	fmv.d	fs0,fs5
   1ae5c:	915ff06f          	j	1a770 <_strtod_r+0x884>
   1ae60:	00160793          	addi	a5,a2,1
   1ae64:	02f13c23          	sd	a5,56(sp)
   1ae68:	00164703          	lbu	a4,1(a2)
   1ae6c:	02800793          	li	a5,40
   1ae70:	18f70063          	beq	a4,a5,1aff0 <_strtod_r+0x1104>
   1ae74:	fff00913          	li	s2,-1
   1ae78:	03391913          	slli	s2,s2,0x33
   1ae7c:	00090493          	mv	s1,s2
   1ae80:	c84ff06f          	j	1a304 <_strtod_r+0x418>
   1ae84:	00000613          	li	a2,0
   1ae88:	d38ff06f          	j	1a3c0 <_strtod_r+0x4d4>
   1ae8c:	120b8863          	beqz	s7,1afbc <_strtod_r+0x10d0>
   1ae90:	42095693          	srai	a3,s2,0x20
   1ae94:	fff6c793          	not	a5,a3
   1ae98:	02c79713          	slli	a4,a5,0x2c
   1ae9c:	26070063          	beqz	a4,1b0fc <_strtod_r+0x1210>
   1aea0:	01812703          	lw	a4,24(sp)
   1aea4:	12070463          	beqz	a4,1afcc <_strtod_r+0x10e0>
   1aea8:	42095793          	srai	a5,s2,0x20
   1aeac:	00e7f7b3          	and	a5,a5,a4
   1aeb0:	02078063          	beqz	a5,1aed0 <_strtod_r+0xfe4>
   1aeb4:	000c8593          	mv	a1,s9
   1aeb8:	00090513          	mv	a0,s2
   1aebc:	160b8863          	beqz	s7,1b02c <_strtod_r+0x1140>
   1aec0:	5bd050ef          	jal	20c7c <sulp>
   1aec4:	f20487d3          	fmv.d.x	fa5,s1
   1aec8:	02a7f7d3          	fadd.d	fa5,fa5,fa0
   1aecc:	e20784d3          	fmv.x.d	s1,fa5
   1aed0:	0c0c8e63          	beqz	s9,1afac <_strtod_r+0x10c0>
   1aed4:	39500793          	li	a5,917
   1aed8:	03479793          	slli	a5,a5,0x34
   1aedc:	f20487d3          	fmv.d.x	fa5,s1
   1aee0:	f2078753          	fmv.d.x	fa4,a5
   1aee4:	04013503          	ld	a0,64(sp)
   1aee8:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   1aeec:	e20784d3          	fmv.x.d	s1,fa5
   1aef0:	a20494e3          	bnez	s1,1a918 <_strtod_r+0xa2c>
   1aef4:	02200793          	li	a5,34
   1aef8:	00f42023          	sw	a5,0(s0)
   1aefc:	a1dff06f          	j	1a918 <_strtod_r+0xa2c>
   1af00:	fc0b98e3          	bnez	s7,1aed0 <_strtod_r+0xfe4>
   1af04:	00c91793          	slli	a5,s2,0xc
   1af08:	fc0794e3          	bnez	a5,1aed0 <_strtod_r+0xfe4>
   1af0c:	02095913          	srli	s2,s2,0x20
   1af10:	0009071b          	sext.w	a4,s2
   1af14:	7ff007b7          	lui	a5,0x7ff00
   1af18:	00f777b3          	and	a5,a4,a5
   1af1c:	06b00737          	lui	a4,0x6b00
   1af20:	faf778e3          	bleu	a5,a4,1aed0 <_strtod_r+0xfe4>
   1af24:	018c2783          	lw	a5,24(s8)
   1af28:	00079863          	bnez	a5,1af38 <_strtod_r+0x104c>
   1af2c:	014c2703          	lw	a4,20(s8)
   1af30:	00100793          	li	a5,1
   1af34:	f8e7dee3          	ble	a4,a5,1aed0 <_strtod_r+0xfe4>
   1af38:	000c0593          	mv	a1,s8
   1af3c:	00100613          	li	a2,1
   1af40:	00040513          	mv	a0,s0
   1af44:	b85fd0ef          	jal	18ac8 <__lshift>
   1af48:	000a0593          	mv	a1,s4
   1af4c:	00050c13          	mv	s8,a0
   1af50:	cd9fd0ef          	jal	18c28 <__mcmp>
   1af54:	f6a05ee3          	blez	a0,1aed0 <_strtod_r+0xfe4>
   1af58:	140c8263          	beqz	s9,1b09c <_strtod_r+0x11b0>
   1af5c:	0009071b          	sext.w	a4,s2
   1af60:	7ff007b7          	lui	a5,0x7ff00
   1af64:	00f777b3          	and	a5,a4,a5
   1af68:	06b00737          	lui	a4,0x6b00
   1af6c:	12f74863          	blt	a4,a5,1b09c <_strtod_r+0x11b0>
   1af70:	03700737          	lui	a4,0x3700
   1af74:	f6f740e3          	blt	a4,a5,1aed4 <_strtod_r+0xfe8>
   1af78:	02200793          	li	a5,34
   1af7c:	00f42023          	sw	a5,0(s0)
   1af80:	04013503          	ld	a0,64(sp)
   1af84:	00000493          	li	s1,0
   1af88:	991ff06f          	j	1a918 <_strtod_r+0xa2c>
   1af8c:	035007b7          	lui	a5,0x3500
   1af90:	00f607bb          	addw	a5,a2,a5
   1af94:	02091913          	slli	s2,s2,0x20
   1af98:	02079793          	slli	a5,a5,0x20
   1af9c:	02095913          	srli	s2,s2,0x20
   1afa0:	00f96933          	or	s2,s2,a5
   1afa4:	00000c93          	li	s9,0
   1afa8:	d40ff06f          	j	1a4e8 <_strtod_r+0x5fc>
   1afac:	04013503          	ld	a0,64(sp)
   1afb0:	969ff06f          	j	1a918 <_strtod_r+0xa2c>
   1afb4:	02c13c23          	sd	a2,56(sp)
   1afb8:	ba4ff06f          	j	1a35c <_strtod_r+0x470>
   1afbc:	00c91793          	slli	a5,s2,0xc
   1afc0:	ee0790e3          	bnez	a5,1aea0 <_strtod_r+0xfb4>
   1afc4:	02095913          	srli	s2,s2,0x20
   1afc8:	f91ff06f          	j	1af58 <_strtod_r+0x106c>
   1afcc:	01012703          	lw	a4,16(sp)
   1afd0:	0009079b          	sext.w	a5,s2
   1afd4:	00e7f7b3          	and	a5,a5,a4
   1afd8:	ee078ce3          	beqz	a5,1aed0 <_strtod_r+0xfe4>
   1afdc:	ed9ff06f          	j	1aeb4 <_strtod_r+0xfc8>
   1afe0:	00022337          	lui	t1,0x22
   1afe4:	00000613          	li	a2,0
   1afe8:	b6830313          	addi	t1,t1,-1176 # 21b68 <__mprec_bigtens>
   1afec:	c88ff06f          	j	1a474 <_strtod_r+0x588>
   1aff0:	000225b7          	lui	a1,0x22
   1aff4:	04810613          	addi	a2,sp,72
   1aff8:	c8058593          	addi	a1,a1,-896 # 21c80 <fpinan.2653>
   1affc:	03810513          	addi	a0,sp,56
   1b000:	374040ef          	jal	1f374 <__hexnan>
   1b004:	00500793          	li	a5,5
   1b008:	e6f516e3          	bne	a0,a5,1ae74 <_strtod_r+0xf88>
   1b00c:	04c12703          	lw	a4,76(sp)
   1b010:	04816903          	lwu	s2,72(sp)
   1b014:	7ff007b7          	lui	a5,0x7ff00
   1b018:	00f767b3          	or	a5,a4,a5
   1b01c:	02079793          	slli	a5,a5,0x20
   1b020:	0127e933          	or	s2,a5,s2
   1b024:	00090493          	mv	s1,s2
   1b028:	adcff06f          	j	1a304 <_strtod_r+0x418>
   1b02c:	451050ef          	jal	20c7c <sulp>
   1b030:	f20487d3          	fmv.d.x	fa5,s1
   1b034:	0aa7f7d3          	fsub.d	fa5,fa5,fa0
   1b038:	e20784d3          	fmv.x.d	s1,fa5
   1b03c:	f20007d3          	fmv.d.x	fa5,zero
   1b040:	f2048753          	fmv.d.x	fa4,s1
   1b044:	a2f727d3          	feq.d	a5,fa4,fa5
   1b048:	f20798e3          	bnez	a5,1af78 <_strtod_r+0x108c>
   1b04c:	e85ff06f          	j	1aed0 <_strtod_r+0xfe4>
   1b050:	42095613          	srai	a2,s2,0x20
   1b054:	02161793          	slli	a5,a2,0x21
   1b058:	0357d713          	srli	a4,a5,0x35
   1b05c:	06b00793          	li	a5,107
   1b060:	40e787bb          	subw	a5,a5,a4
   1b064:	b2f052e3          	blez	a5,1ab88 <_strtod_r+0xc9c>
   1b068:	01f00713          	li	a4,31
   1b06c:	06f75263          	ble	a5,a4,1b0d0 <_strtod_r+0x11e4>
   1b070:	fff00713          	li	a4,-1
   1b074:	02071593          	slli	a1,a4,0x20
   1b078:	00b97933          	and	s2,s2,a1
   1b07c:	03400593          	li	a1,52
   1b080:	0cf5da63          	ble	a5,a1,1b154 <_strtod_r+0x1268>
   1b084:	03700913          	li	s2,55
   1b088:	03491913          	slli	s2,s2,0x34
   1b08c:	afdff06f          	j	1ab88 <_strtod_r+0xc9c>
   1b090:	00000c93          	li	s9,0
   1b094:	aaf04ae3          	bgtz	a5,1ab48 <_strtod_r+0xc5c>
   1b098:	af1ff06f          	j	1ab88 <_strtod_r+0xc9c>
   1b09c:	7ff00737          	lui	a4,0x7ff00
   1b0a0:	0009091b          	sext.w	s2,s2
   1b0a4:	fff007b7          	lui	a5,0xfff00
   1b0a8:	00e97933          	and	s2,s2,a4
   1b0ac:	00f9073b          	addw	a4,s2,a5
   1b0b0:	001007b7          	lui	a5,0x100
   1b0b4:	fff7879b          	addiw	a5,a5,-1
   1b0b8:	00f767b3          	or	a5,a4,a5
   1b0bc:	fff00493          	li	s1,-1
   1b0c0:	02079793          	slli	a5,a5,0x20
   1b0c4:	0204d493          	srli	s1,s1,0x20
   1b0c8:	00f4e4b3          	or	s1,s1,a5
   1b0cc:	e05ff06f          	j	1aed0 <_strtod_r+0xfe4>
   1b0d0:	fff00713          	li	a4,-1
   1b0d4:	0009061b          	sext.w	a2,s2
   1b0d8:	00f717bb          	sllw	a5,a4,a5
   1b0dc:	00f677b3          	and	a5,a2,a5
   1b0e0:	fff00713          	li	a4,-1
   1b0e4:	02079793          	slli	a5,a5,0x20
   1b0e8:	02071713          	slli	a4,a4,0x20
   1b0ec:	0207d793          	srli	a5,a5,0x20
   1b0f0:	00e97933          	and	s2,s2,a4
   1b0f4:	00f96933          	or	s2,s2,a5
   1b0f8:	a91ff06f          	j	1ab88 <_strtod_r+0xc9c>
   1b0fc:	0009059b          	sext.w	a1,s2
   1b100:	fff00713          	li	a4,-1
   1b104:	020c8263          	beqz	s9,1b128 <_strtod_r+0x123c>
   1b108:	7ff007b7          	lui	a5,0x7ff00
   1b10c:	00f6f7b3          	and	a5,a3,a5
   1b110:	06a00637          	lui	a2,0x6a00
   1b114:	00f66a63          	bltu	a2,a5,1b128 <_strtod_r+0x123c>
   1b118:	0147d79b          	srliw	a5,a5,0x14
   1b11c:	06b00613          	li	a2,107
   1b120:	40f607bb          	subw	a5,a2,a5
   1b124:	00f7173b          	sllw	a4,a4,a5
   1b128:	d6b71ce3          	bne	a4,a1,1aea0 <_strtod_r+0xfb4>
   1b12c:	7ff00713          	li	a4,2047
   1b130:	03471713          	slli	a4,a4,0x34
   1b134:	fff70713          	addi	a4,a4,-1 # 7fefffff <_end+0x7fed8c87>
   1b138:	fce90663          	beq	s2,a4,1a904 <_strtod_r+0xa18>
   1b13c:	7ff007b7          	lui	a5,0x7ff00
   1b140:	00f6f7b3          	and	a5,a3,a5
   1b144:	001004b7          	lui	s1,0x100
   1b148:	009784bb          	addw	s1,a5,s1
   1b14c:	02049493          	slli	s1,s1,0x20
   1b150:	d81ff06f          	j	1aed0 <_strtod_r+0xfe4>
   1b154:	00f717bb          	sllw	a5,a4,a5
   1b158:	00c7f7b3          	and	a5,a5,a2
   1b15c:	02075713          	srli	a4,a4,0x20
   1b160:	02079793          	slli	a5,a5,0x20
   1b164:	00e97933          	and	s2,s2,a4
   1b168:	00f96933          	or	s2,s2,a5
   1b16c:	a1dff06f          	j	1ab88 <_strtod_r+0xc9c>
   1b170:	00080913          	mv	s2,a6
   1b174:	b00ff06f          	j	1a474 <_strtod_r+0x588>
   1b178:	00068613          	mv	a2,a3
   1b17c:	03813803          	ld	a6,56(sp)
   1b180:	00f686bb          	addw	a3,a3,a5
   1b184:	b8dff06f          	j	1ad10 <_strtod_r+0xe24>
   1b188:	00058913          	mv	s2,a1
   1b18c:	9f9ff06f          	j	1ab84 <_strtod_r+0xc98>

000000000001b190 <strtod>:
   1b190:	00058613          	mv	a2,a1
   1b194:	00050593          	mv	a1,a0
   1b198:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   1b19c:	d51fe06f          	j	19eec <_strtod_r>

000000000001b1a0 <strtof>:
   1b1a0:	00058613          	mv	a2,a1
   1b1a4:	00050593          	mv	a1,a0
   1b1a8:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   1b1ac:	fe010113          	addi	sp,sp,-32
   1b1b0:	00813427          	fsd	fs0,8(sp)
   1b1b4:	00113c23          	sd	ra,24(sp)
   1b1b8:	d35fe0ef          	jal	19eec <_strtod_r>
   1b1bc:	22a50453          	fmv.d	fs0,fa0
   1b1c0:	a79fe0ef          	jal	19c38 <__fpclassifyd>
   1b1c4:	00050c63          	beqz	a0,1b1dc <strtof+0x3c>
   1b1c8:	01813083          	ld	ra,24(sp)
   1b1cc:	40147553          	fcvt.s.d	fa0,fs0
   1b1d0:	00813407          	fld	fs0,8(sp)
   1b1d4:	02010113          	addi	sp,sp,32
   1b1d8:	00008067          	ret
   1b1dc:	01813083          	ld	ra,24(sp)
   1b1e0:	00813407          	fld	fs0,8(sp)
   1b1e4:	00000513          	li	a0,0
   1b1e8:	02010113          	addi	sp,sp,32
   1b1ec:	a41fe06f          	j	19c2c <nanf>

000000000001b1f0 <_strtol_r>:
   1b1f0:	8281be83          	ld	t4,-2008(gp) # 249f8 <__ctype_ptr__>
   1b1f4:	00058313          	mv	t1,a1
   1b1f8:	0080006f          	j	1b200 <_strtol_r+0x10>
   1b1fc:	00080313          	mv	t1,a6
   1b200:	00130813          	addi	a6,t1,1
   1b204:	fff84783          	lbu	a5,-1(a6)
   1b208:	00fe8733          	add	a4,t4,a5
   1b20c:	00174703          	lbu	a4,1(a4)
   1b210:	00877713          	andi	a4,a4,8
   1b214:	fe0714e3          	bnez	a4,1b1fc <_strtol_r+0xc>
   1b218:	ff010113          	addi	sp,sp,-16
   1b21c:	00078893          	mv	a7,a5
   1b220:	00813423          	sd	s0,8(sp)
   1b224:	00913023          	sd	s1,0(sp)
   1b228:	02d00793          	li	a5,45
   1b22c:	14f88063          	beq	a7,a5,1b36c <_strtol_r+0x17c>
   1b230:	02b00793          	li	a5,43
   1b234:	00000393          	li	t2,0
   1b238:	12f88463          	beq	a7,a5,1b360 <_strtol_r+0x170>
   1b23c:	0e068263          	beqz	a3,1b320 <_strtol_r+0x130>
   1b240:	01000793          	li	a5,16
   1b244:	00068413          	mv	s0,a3
   1b248:	14f68863          	beq	a3,a5,1b398 <_strtol_r+0x1a8>
   1b24c:	fff00793          	li	a5,-1
   1b250:	0017df13          	srli	t5,a5,0x1
   1b254:	00038463          	beqz	t2,1b25c <_strtol_r+0x6c>
   1b258:	03f79f13          	slli	t5,a5,0x3f
   1b25c:	028f74b3          	remu	s1,t5,s0
   1b260:	011e8733          	add	a4,t4,a7
   1b264:	00174783          	lbu	a5,1(a4)
   1b268:	00000e13          	li	t3,0
   1b26c:	00000313          	li	t1,0
   1b270:	0047f713          	andi	a4,a5,4
   1b274:	00100293          	li	t0,1
   1b278:	fff00f93          	li	t6,-1
   1b27c:	028f5f33          	divu	t5,t5,s0
   1b280:	0004849b          	sext.w	s1,s1
   1b284:	04070063          	beqz	a4,1b2c4 <_strtol_r+0xd4>
   1b288:	fd08879b          	addiw	a5,a7,-48
   1b28c:	04d7de63          	ble	a3,a5,1b2e8 <_strtol_r+0xf8>
   1b290:	01fe0e63          	beq	t3,t6,1b2ac <_strtol_r+0xbc>
   1b294:	fff00e13          	li	t3,-1
   1b298:	006f6a63          	bltu	t5,t1,1b2ac <_strtol_r+0xbc>
   1b29c:	07e30e63          	beq	t1,t5,1b318 <_strtol_r+0x128>
   1b2a0:	00100e13          	li	t3,1
   1b2a4:	02830333          	mul	t1,t1,s0
   1b2a8:	00678333          	add	t1,a5,t1
   1b2ac:	00180813          	addi	a6,a6,1
   1b2b0:	fff84883          	lbu	a7,-1(a6)
   1b2b4:	011e8733          	add	a4,t4,a7
   1b2b8:	00174783          	lbu	a5,1(a4)
   1b2bc:	0047f713          	andi	a4,a5,4
   1b2c0:	fc0714e3          	bnez	a4,1b288 <_strtol_r+0x98>
   1b2c4:	0037f713          	andi	a4,a5,3
   1b2c8:	02070063          	beqz	a4,1b2e8 <_strtol_r+0xf8>
   1b2cc:	40e2873b          	subw	a4,t0,a4
   1b2d0:	00e03733          	snez	a4,a4
   1b2d4:	40e0073b          	negw	a4,a4
   1b2d8:	02077713          	andi	a4,a4,32
   1b2dc:	0377071b          	addiw	a4,a4,55
   1b2e0:	40e887bb          	subw	a5,a7,a4
   1b2e4:	fad7c6e3          	blt	a5,a3,1b290 <_strtol_r+0xa0>
   1b2e8:	fff00793          	li	a5,-1
   1b2ec:	04fe0863          	beq	t3,a5,1b33c <_strtol_r+0x14c>
   1b2f0:	04039263          	bnez	t2,1b334 <_strtol_r+0x144>
   1b2f4:	00030793          	mv	a5,t1
   1b2f8:	00060663          	beqz	a2,1b304 <_strtol_r+0x114>
   1b2fc:	040e1e63          	bnez	t3,1b358 <_strtol_r+0x168>
   1b300:	00b63023          	sd	a1,0(a2) # 6a00000 <_end+0x69d8c88>
   1b304:	00078513          	mv	a0,a5
   1b308:	00813403          	ld	s0,8(sp)
   1b30c:	00013483          	ld	s1,0(sp)
   1b310:	01010113          	addi	sp,sp,16
   1b314:	00008067          	ret
   1b318:	f8f4cae3          	blt	s1,a5,1b2ac <_strtol_r+0xbc>
   1b31c:	f85ff06f          	j	1b2a0 <_strtol_r+0xb0>
   1b320:	03000793          	li	a5,48
   1b324:	04f88c63          	beq	a7,a5,1b37c <_strtol_r+0x18c>
   1b328:	00a00413          	li	s0,10
   1b32c:	00040693          	mv	a3,s0
   1b330:	f1dff06f          	j	1b24c <_strtol_r+0x5c>
   1b334:	40600333          	neg	t1,t1
   1b338:	fbdff06f          	j	1b2f4 <_strtol_r+0x104>
   1b33c:	fff00713          	li	a4,-1
   1b340:	00175793          	srli	a5,a4,0x1
   1b344:	00038463          	beqz	t2,1b34c <_strtol_r+0x15c>
   1b348:	03f71793          	slli	a5,a4,0x3f
   1b34c:	02200713          	li	a4,34
   1b350:	00e52023          	sw	a4,0(a0)
   1b354:	fa0608e3          	beqz	a2,1b304 <_strtol_r+0x114>
   1b358:	fff80593          	addi	a1,a6,-1
   1b35c:	fa5ff06f          	j	1b300 <_strtol_r+0x110>
   1b360:	00134883          	lbu	a7,1(t1)
   1b364:	00230813          	addi	a6,t1,2
   1b368:	ed5ff06f          	j	1b23c <_strtol_r+0x4c>
   1b36c:	00230813          	addi	a6,t1,2
   1b370:	00134883          	lbu	a7,1(t1)
   1b374:	00100393          	li	t2,1
   1b378:	ec5ff06f          	j	1b23c <_strtol_r+0x4c>
   1b37c:	00084783          	lbu	a5,0(a6)
   1b380:	05800713          	li	a4,88
   1b384:	0df7f793          	andi	a5,a5,223
   1b388:	02e78463          	beq	a5,a4,1b3b0 <_strtol_r+0x1c0>
   1b38c:	00800413          	li	s0,8
   1b390:	00040693          	mv	a3,s0
   1b394:	eb9ff06f          	j	1b24c <_strtol_r+0x5c>
   1b398:	03000793          	li	a5,48
   1b39c:	02f89463          	bne	a7,a5,1b3c4 <_strtol_r+0x1d4>
   1b3a0:	00084783          	lbu	a5,0(a6)
   1b3a4:	05800713          	li	a4,88
   1b3a8:	0df7f793          	andi	a5,a5,223
   1b3ac:	00e79c63          	bne	a5,a4,1b3c4 <_strtol_r+0x1d4>
   1b3b0:	01000413          	li	s0,16
   1b3b4:	00184883          	lbu	a7,1(a6)
   1b3b8:	00040693          	mv	a3,s0
   1b3bc:	00280813          	addi	a6,a6,2
   1b3c0:	e8dff06f          	j	1b24c <_strtol_r+0x5c>
   1b3c4:	01000413          	li	s0,16
   1b3c8:	e85ff06f          	j	1b24c <_strtol_r+0x5c>

000000000001b3cc <strtol>:
   1b3cc:	00060693          	mv	a3,a2
   1b3d0:	00058613          	mv	a2,a1
   1b3d4:	00050593          	mv	a1,a0
   1b3d8:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   1b3dc:	e15ff06f          	j	1b1f0 <_strtol_r>

000000000001b3e0 <_strtoul_r>:
   1b3e0:	00050f13          	mv	t5,a0
   1b3e4:	8281be03          	ld	t3,-2008(gp) # 249f8 <__ctype_ptr__>
   1b3e8:	00058313          	mv	t1,a1
   1b3ec:	0080006f          	j	1b3f4 <_strtoul_r+0x14>
   1b3f0:	00080313          	mv	t1,a6
   1b3f4:	00130813          	addi	a6,t1,1
   1b3f8:	fff84783          	lbu	a5,-1(a6)
   1b3fc:	00fe0733          	add	a4,t3,a5
   1b400:	00174703          	lbu	a4,1(a4)
   1b404:	00877713          	andi	a4,a4,8
   1b408:	fe0714e3          	bnez	a4,1b3f0 <_strtoul_r+0x10>
   1b40c:	ff010113          	addi	sp,sp,-16
   1b410:	00078893          	mv	a7,a5
   1b414:	00813423          	sd	s0,8(sp)
   1b418:	00913023          	sd	s1,0(sp)
   1b41c:	02d00793          	li	a5,45
   1b420:	12f88263          	beq	a7,a5,1b544 <_strtoul_r+0x164>
   1b424:	02b00793          	li	a5,43
   1b428:	00000f93          	li	t6,0
   1b42c:	0ef88663          	beq	a7,a5,1b518 <_strtoul_r+0x138>
   1b430:	02068263          	beqz	a3,1b454 <_strtoul_r+0x74>
   1b434:	01000793          	li	a5,16
   1b438:	14f68263          	beq	a3,a5,1b57c <_strtoul_r+0x19c>
   1b43c:	fff00e93          	li	t4,-1
   1b440:	02def3b3          	remu	t2,t4,a3
   1b444:	00068293          	mv	t0,a3
   1b448:	02dedeb3          	divu	t4,t4,a3
   1b44c:	0003839b          	sext.w	t2,t2
   1b450:	0200006f          	j	1b470 <_strtoul_r+0x90>
   1b454:	03000793          	li	a5,48
   1b458:	0ef88e63          	beq	a7,a5,1b554 <_strtoul_r+0x174>
   1b45c:	000257b7          	lui	a5,0x25
   1b460:	ab07be83          	ld	t4,-1360(a5) # 24ab0 <mask+0x98>
   1b464:	00a00293          	li	t0,10
   1b468:	00500393          	li	t2,5
   1b46c:	00028693          	mv	a3,t0
   1b470:	011e0733          	add	a4,t3,a7
   1b474:	00174783          	lbu	a5,1(a4)
   1b478:	00000313          	li	t1,0
   1b47c:	00000513          	li	a0,0
   1b480:	0047f713          	andi	a4,a5,4
   1b484:	00100493          	li	s1,1
   1b488:	fff00413          	li	s0,-1
   1b48c:	04070063          	beqz	a4,1b4cc <_strtoul_r+0xec>
   1b490:	fd08879b          	addiw	a5,a7,-48
   1b494:	04d7de63          	ble	a3,a5,1b4f0 <_strtoul_r+0x110>
   1b498:	00830e63          	beq	t1,s0,1b4b4 <_strtoul_r+0xd4>
   1b49c:	fff00313          	li	t1,-1
   1b4a0:	00aeea63          	bltu	t4,a0,1b4b4 <_strtoul_r+0xd4>
   1b4a4:	09d50063          	beq	a0,t4,1b524 <_strtoul_r+0x144>
   1b4a8:	02550733          	mul	a4,a0,t0
   1b4ac:	00100313          	li	t1,1
   1b4b0:	00e78533          	add	a0,a5,a4
   1b4b4:	00180813          	addi	a6,a6,1
   1b4b8:	fff84883          	lbu	a7,-1(a6)
   1b4bc:	011e0733          	add	a4,t3,a7
   1b4c0:	00174783          	lbu	a5,1(a4)
   1b4c4:	0047f713          	andi	a4,a5,4
   1b4c8:	fc0714e3          	bnez	a4,1b490 <_strtoul_r+0xb0>
   1b4cc:	0037f713          	andi	a4,a5,3
   1b4d0:	02070063          	beqz	a4,1b4f0 <_strtoul_r+0x110>
   1b4d4:	40e4873b          	subw	a4,s1,a4
   1b4d8:	00e03733          	snez	a4,a4
   1b4dc:	40e0073b          	negw	a4,a4
   1b4e0:	02077713          	andi	a4,a4,32
   1b4e4:	0377071b          	addiw	a4,a4,55
   1b4e8:	40e887bb          	subw	a5,a7,a4
   1b4ec:	fad7c6e3          	blt	a5,a3,1b498 <_strtoul_r+0xb8>
   1b4f0:	02034e63          	bltz	t1,1b52c <_strtoul_r+0x14c>
   1b4f4:	000f8463          	beqz	t6,1b4fc <_strtoul_r+0x11c>
   1b4f8:	40a00533          	neg	a0,a0
   1b4fc:	00060663          	beqz	a2,1b508 <_strtoul_r+0x128>
   1b500:	02031e63          	bnez	t1,1b53c <_strtoul_r+0x15c>
   1b504:	00b63023          	sd	a1,0(a2)
   1b508:	00813403          	ld	s0,8(sp)
   1b50c:	00013483          	ld	s1,0(sp)
   1b510:	01010113          	addi	sp,sp,16
   1b514:	00008067          	ret
   1b518:	00134883          	lbu	a7,1(t1)
   1b51c:	00230813          	addi	a6,t1,2
   1b520:	f11ff06f          	j	1b430 <_strtoul_r+0x50>
   1b524:	f8f3c8e3          	blt	t2,a5,1b4b4 <_strtoul_r+0xd4>
   1b528:	f81ff06f          	j	1b4a8 <_strtoul_r+0xc8>
   1b52c:	02200793          	li	a5,34
   1b530:	00ff2023          	sw	a5,0(t5)
   1b534:	fff00513          	li	a0,-1
   1b538:	fc0608e3          	beqz	a2,1b508 <_strtoul_r+0x128>
   1b53c:	fff80593          	addi	a1,a6,-1
   1b540:	fc5ff06f          	j	1b504 <_strtoul_r+0x124>
   1b544:	00230813          	addi	a6,t1,2
   1b548:	00134883          	lbu	a7,1(t1)
   1b54c:	00100f93          	li	t6,1
   1b550:	ee1ff06f          	j	1b430 <_strtoul_r+0x50>
   1b554:	00084783          	lbu	a5,0(a6)
   1b558:	05800713          	li	a4,88
   1b55c:	0df7f793          	andi	a5,a5,223
   1b560:	02e78a63          	beq	a5,a4,1b594 <_strtoul_r+0x1b4>
   1b564:	00800293          	li	t0,8
   1b568:	fff00e93          	li	t4,-1
   1b56c:	00700393          	li	t2,7
   1b570:	003ede93          	srli	t4,t4,0x3
   1b574:	00028693          	mv	a3,t0
   1b578:	ef9ff06f          	j	1b470 <_strtoul_r+0x90>
   1b57c:	03000793          	li	a5,48
   1b580:	02f89a63          	bne	a7,a5,1b5b4 <_strtoul_r+0x1d4>
   1b584:	00084783          	lbu	a5,0(a6)
   1b588:	05800713          	li	a4,88
   1b58c:	0df7f793          	andi	a5,a5,223
   1b590:	02e79263          	bne	a5,a4,1b5b4 <_strtoul_r+0x1d4>
   1b594:	01000293          	li	t0,16
   1b598:	fff00e93          	li	t4,-1
   1b59c:	00184883          	lbu	a7,1(a6)
   1b5a0:	00f00393          	li	t2,15
   1b5a4:	00280813          	addi	a6,a6,2
   1b5a8:	004ede93          	srli	t4,t4,0x4
   1b5ac:	00028693          	mv	a3,t0
   1b5b0:	ec1ff06f          	j	1b470 <_strtoul_r+0x90>
   1b5b4:	fff00e93          	li	t4,-1
   1b5b8:	00f00393          	li	t2,15
   1b5bc:	004ede93          	srli	t4,t4,0x4
   1b5c0:	01000293          	li	t0,16
   1b5c4:	eadff06f          	j	1b470 <_strtoul_r+0x90>

000000000001b5c8 <strtoul>:
   1b5c8:	00060693          	mv	a3,a2
   1b5cc:	00058613          	mv	a2,a1
   1b5d0:	00050593          	mv	a1,a0
   1b5d4:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   1b5d8:	e09ff06f          	j	1b3e0 <_strtoul_r>

000000000001b5dc <_svfprintf_r>:
   1b5dc:	e1010113          	addi	sp,sp,-496
   1b5e0:	1e113423          	sd	ra,488(sp)
   1b5e4:	1d313423          	sd	s3,456(sp)
   1b5e8:	1b713423          	sd	s7,424(sp)
   1b5ec:	1b813023          	sd	s8,416(sp)
   1b5f0:	00058b93          	mv	s7,a1
   1b5f4:	00060993          	mv	s3,a2
   1b5f8:	02d13423          	sd	a3,40(sp)
   1b5fc:	1e813023          	sd	s0,480(sp)
   1b600:	1c913c23          	sd	s1,472(sp)
   1b604:	1d213823          	sd	s2,464(sp)
   1b608:	1d413023          	sd	s4,448(sp)
   1b60c:	1b513c23          	sd	s5,440(sp)
   1b610:	1b613823          	sd	s6,432(sp)
   1b614:	19913c23          	sd	s9,408(sp)
   1b618:	19a13823          	sd	s10,400(sp)
   1b61c:	19b13423          	sd	s11,392(sp)
   1b620:	16813c27          	fsd	fs0,376(sp)
   1b624:	00050c13          	mv	s8,a0
   1b628:	df4fc0ef          	jal	17c1c <_localeconv_r>
   1b62c:	00053783          	ld	a5,0(a0)
   1b630:	00078513          	mv	a0,a5
   1b634:	06f13023          	sd	a5,96(sp)
   1b638:	96df60ef          	jal	11fa4 <strlen>
   1b63c:	010bd783          	lhu	a5,16(s7)
   1b640:	06a13423          	sd	a0,104(sp)
   1b644:	0807f793          	andi	a5,a5,128
   1b648:	00078863          	beqz	a5,1b658 <_svfprintf_r+0x7c>
   1b64c:	018bb783          	ld	a5,24(s7)
   1b650:	00079463          	bnez	a5,1b658 <_svfprintf_r+0x7c>
   1b654:	5b00106f          	j	1cc04 <_svfprintf_r+0x1628>
   1b658:	000227b7          	lui	a5,0x22
   1b65c:	cc078793          	addi	a5,a5,-832 # 21cc0 <tinytens+0x28>
   1b660:	0f010a93          	addi	s5,sp,240
   1b664:	02f13823          	sd	a5,48(sp)
   1b668:	0ef10793          	addi	a5,sp,239
   1b66c:	00022a37          	lui	s4,0x22
   1b670:	000224b7          	lui	s1,0x22
   1b674:	40fa87b3          	sub	a5,s5,a5
   1b678:	04013c23          	sd	zero,88(sp)
   1b67c:	0b513823          	sd	s5,176(sp)
   1b680:	0c013023          	sd	zero,192(sp)
   1b684:	0a012c23          	sw	zero,184(sp)
   1b688:	06012823          	sw	zero,112(sp)
   1b68c:	000a8893          	mv	a7,s5
   1b690:	02013c23          	sd	zero,56(sp)
   1b694:	06012a23          	sw	zero,116(sp)
   1b698:	00012e23          	sw	zero,28(sp)
   1b69c:	e28a0a13          	addi	s4,s4,-472 # 21e28 <blanks.4178>
   1b6a0:	e3848493          	addi	s1,s1,-456 # 21e38 <zeroes.4179>
   1b6a4:	06f13c23          	sd	a5,120(sp)
   1b6a8:	0009c783          	lbu	a5,0(s3)
   1b6ac:	000780e3          	beqz	a5,1beac <_svfprintf_r+0x8d0>
   1b6b0:	02500713          	li	a4,37
   1b6b4:	00098413          	mv	s0,s3
   1b6b8:	00e79663          	bne	a5,a4,1b6c4 <_svfprintf_r+0xe8>
   1b6bc:	0580006f          	j	1b714 <_svfprintf_r+0x138>
   1b6c0:	00e78863          	beq	a5,a4,1b6d0 <_svfprintf_r+0xf4>
   1b6c4:	00140413          	addi	s0,s0,1
   1b6c8:	00044783          	lbu	a5,0(s0)
   1b6cc:	fe079ae3          	bnez	a5,1b6c0 <_svfprintf_r+0xe4>
   1b6d0:	4134093b          	subw	s2,s0,s3
   1b6d4:	04090063          	beqz	s2,1b714 <_svfprintf_r+0x138>
   1b6d8:	0c013703          	ld	a4,192(sp)
   1b6dc:	0b812783          	lw	a5,184(sp)
   1b6e0:	00090693          	mv	a3,s2
   1b6e4:	00d70733          	add	a4,a4,a3
   1b6e8:	0017879b          	addiw	a5,a5,1
   1b6ec:	0138b023          	sd	s3,0(a7)
   1b6f0:	00d8b423          	sd	a3,8(a7)
   1b6f4:	0ce13023          	sd	a4,192(sp)
   1b6f8:	0af12c23          	sw	a5,184(sp)
   1b6fc:	00700713          	li	a4,7
   1b700:	01088893          	addi	a7,a7,16
   1b704:	14f74263          	blt	a4,a5,1b848 <_svfprintf_r+0x26c>
   1b708:	01c12783          	lw	a5,28(sp)
   1b70c:	012787bb          	addw	a5,a5,s2
   1b710:	00f12e23          	sw	a5,28(sp)
   1b714:	00044783          	lbu	a5,0(s0)
   1b718:	14078663          	beqz	a5,1b864 <_svfprintf_r+0x288>
   1b71c:	00140993          	addi	s3,s0,1
   1b720:	080107a3          	sb	zero,143(sp)
   1b724:	00000613          	li	a2,0
   1b728:	00000593          	li	a1,0
   1b72c:	fff00413          	li	s0,-1
   1b730:	00012c23          	sw	zero,24(sp)
   1b734:	00000b13          	li	s6,0
   1b738:	05800713          	li	a4,88
   1b73c:	00900693          	li	a3,9
   1b740:	02a00513          	li	a0,42
   1b744:	0009cd03          	lbu	s10,0(s3)
   1b748:	00198993          	addi	s3,s3,1
   1b74c:	fe0d079b          	addiw	a5,s10,-32
   1b750:	14f766e3          	bltu	a4,a5,1c09c <_svfprintf_r+0xac0>
   1b754:	03013803          	ld	a6,48(sp)
   1b758:	02079793          	slli	a5,a5,0x20
   1b75c:	01e7d793          	srli	a5,a5,0x1e
   1b760:	010787b3          	add	a5,a5,a6
   1b764:	0007a783          	lw	a5,0(a5)
   1b768:	00078067          	jr	a5
   1b76c:	010b6b13          	ori	s6,s6,16
   1b770:	fd5ff06f          	j	1b744 <_svfprintf_r+0x168>
   1b774:	02813783          	ld	a5,40(sp)
   1b778:	0007a803          	lw	a6,0(a5)
   1b77c:	00878793          	addi	a5,a5,8
   1b780:	02f13423          	sd	a5,40(sp)
   1b784:	01012c23          	sw	a6,24(sp)
   1b788:	fa085ee3          	bgez	a6,1b744 <_svfprintf_r+0x168>
   1b78c:	410007bb          	negw	a5,a6
   1b790:	00f12c23          	sw	a5,24(sp)
   1b794:	004b6b13          	ori	s6,s6,4
   1b798:	fadff06f          	j	1b744 <_svfprintf_r+0x168>
   1b79c:	03000793          	li	a5,48
   1b7a0:	08f10823          	sb	a5,144(sp)
   1b7a4:	07800793          	li	a5,120
   1b7a8:	08f108a3          	sb	a5,145(sp)
   1b7ac:	02813783          	ld	a5,40(sp)
   1b7b0:	080107a3          	sb	zero,143(sp)
   1b7b4:	002b6693          	ori	a3,s6,2
   1b7b8:	00878713          	addi	a4,a5,8
   1b7bc:	0007b783          	ld	a5,0(a5)
   1b7c0:	100448e3          	bltz	s0,1c0d0 <_svfprintf_r+0xaf4>
   1b7c4:	f7fb7b13          	andi	s6,s6,-129
   1b7c8:	02e13423          	sd	a4,40(sp)
   1b7cc:	002b6b13          	ori	s6,s6,2
   1b7d0:	0a079ae3          	bnez	a5,1c084 <_svfprintf_r+0xaa8>
   1b7d4:	000227b7          	lui	a5,0x22
   1b7d8:	2a078793          	addi	a5,a5,672 # 222a0 <zeroes.4123+0x58>
   1b7dc:	02f13c23          	sd	a5,56(sp)
   1b7e0:	07800d13          	li	s10,120
   1b7e4:	00000613          	li	a2,0
   1b7e8:	00000793          	li	a5,0
   1b7ec:	70040063          	beqz	s0,1beec <_svfprintf_r+0x910>
   1b7f0:	000a8913          	mv	s2,s5
   1b7f4:	03813683          	ld	a3,56(sp)
   1b7f8:	00f7f713          	andi	a4,a5,15
   1b7fc:	fff90913          	addi	s2,s2,-1
   1b800:	00e68733          	add	a4,a3,a4
   1b804:	00074703          	lbu	a4,0(a4)
   1b808:	0047d793          	srli	a5,a5,0x4
   1b80c:	00e90023          	sb	a4,0(s2)
   1b810:	fe0792e3          	bnez	a5,1b7f4 <_svfprintf_r+0x218>
   1b814:	412a87b3          	sub	a5,s5,s2
   1b818:	02f12023          	sw	a5,32(sp)
   1b81c:	02012783          	lw	a5,32(sp)
   1b820:	00078d93          	mv	s11,a5
   1b824:	0087d463          	ble	s0,a5,1b82c <_svfprintf_r+0x250>
   1b828:	00040d93          	mv	s11,s0
   1b82c:	01b12423          	sw	s11,8(sp)
   1b830:	04012623          	sw	zero,76(sp)
   1b834:	32060263          	beqz	a2,1bb58 <_svfprintf_r+0x57c>
   1b838:	00812783          	lw	a5,8(sp)
   1b83c:	0017879b          	addiw	a5,a5,1
   1b840:	00f12423          	sw	a5,8(sp)
   1b844:	3140006f          	j	1bb58 <_svfprintf_r+0x57c>
   1b848:	0b010613          	addi	a2,sp,176
   1b84c:	000b8593          	mv	a1,s7
   1b850:	000c0513          	mv	a0,s8
   1b854:	659030ef          	jal	1f6ac <__ssprint_r>
   1b858:	02051263          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1b85c:	000a8893          	mv	a7,s5
   1b860:	ea9ff06f          	j	1b708 <_svfprintf_r+0x12c>
   1b864:	0c013783          	ld	a5,192(sp)
   1b868:	00078a63          	beqz	a5,1b87c <_svfprintf_r+0x2a0>
   1b86c:	0b010613          	addi	a2,sp,176
   1b870:	000b8593          	mv	a1,s7
   1b874:	000c0513          	mv	a0,s8
   1b878:	635030ef          	jal	1f6ac <__ssprint_r>
   1b87c:	010bd783          	lhu	a5,16(s7)
   1b880:	01c12503          	lw	a0,28(sp)
   1b884:	0407f793          	andi	a5,a5,64
   1b888:	00078463          	beqz	a5,1b890 <_svfprintf_r+0x2b4>
   1b88c:	4f80106f          	j	1cd84 <_svfprintf_r+0x17a8>
   1b890:	1e813083          	ld	ra,488(sp)
   1b894:	1e013403          	ld	s0,480(sp)
   1b898:	1d813483          	ld	s1,472(sp)
   1b89c:	1d013903          	ld	s2,464(sp)
   1b8a0:	1c813983          	ld	s3,456(sp)
   1b8a4:	1c013a03          	ld	s4,448(sp)
   1b8a8:	1b813a83          	ld	s5,440(sp)
   1b8ac:	1b013b03          	ld	s6,432(sp)
   1b8b0:	1a813b83          	ld	s7,424(sp)
   1b8b4:	1a013c03          	ld	s8,416(sp)
   1b8b8:	19813c83          	ld	s9,408(sp)
   1b8bc:	19013d03          	ld	s10,400(sp)
   1b8c0:	18813d83          	ld	s11,392(sp)
   1b8c4:	17813407          	fld	fs0,376(sp)
   1b8c8:	1f010113          	addi	sp,sp,496
   1b8cc:	00008067          	ret
   1b8d0:	00100613          	li	a2,1
   1b8d4:	02b00593          	li	a1,43
   1b8d8:	e6dff06f          	j	1b744 <_svfprintf_r+0x168>
   1b8dc:	00060463          	beqz	a2,1b8e4 <_svfprintf_r+0x308>
   1b8e0:	0990106f          	j	1d178 <_svfprintf_r+0x1b9c>
   1b8e4:	010b7793          	andi	a5,s6,16
   1b8e8:	16078863          	beqz	a5,1ba58 <_svfprintf_r+0x47c>
   1b8ec:	02813783          	ld	a5,40(sp)
   1b8f0:	080107a3          	sb	zero,143(sp)
   1b8f4:	00878713          	addi	a4,a5,8
   1b8f8:	0007b783          	ld	a5,0(a5)
   1b8fc:	16044c63          	bltz	s0,1ba74 <_svfprintf_r+0x498>
   1b900:	02e13423          	sd	a4,40(sp)
   1b904:	f7fb7b13          	andi	s6,s6,-129
   1b908:	3a0794e3          	bnez	a5,1c4b0 <_svfprintf_r+0xed4>
   1b90c:	00000613          	li	a2,0
   1b910:	00000793          	li	a5,0
   1b914:	00041463          	bnez	s0,1b91c <_svfprintf_r+0x340>
   1b918:	3780106f          	j	1cc90 <_svfprintf_r+0x16b4>
   1b91c:	000a8913          	mv	s2,s5
   1b920:	0077f713          	andi	a4,a5,7
   1b924:	fff90913          	addi	s2,s2,-1
   1b928:	0307071b          	addiw	a4,a4,48
   1b92c:	00e90023          	sb	a4,0(s2)
   1b930:	0037d793          	srli	a5,a5,0x3
   1b934:	fe0796e3          	bnez	a5,1b920 <_svfprintf_r+0x344>
   1b938:	001b7793          	andi	a5,s6,1
   1b93c:	ec078ce3          	beqz	a5,1b814 <_svfprintf_r+0x238>
   1b940:	03000793          	li	a5,48
   1b944:	ecf708e3          	beq	a4,a5,1b814 <_svfprintf_r+0x238>
   1b948:	fff90713          	addi	a4,s2,-1
   1b94c:	40ea86b3          	sub	a3,s5,a4
   1b950:	fef90fa3          	sb	a5,-1(s2)
   1b954:	02d12023          	sw	a3,32(sp)
   1b958:	00070913          	mv	s2,a4
   1b95c:	ec1ff06f          	j	1b81c <_svfprintf_r+0x240>
   1b960:	00060463          	beqz	a2,1b968 <_svfprintf_r+0x38c>
   1b964:	0710106f          	j	1d1d4 <_svfprintf_r+0x1bf8>
   1b968:	000227b7          	lui	a5,0x22
   1b96c:	2a078793          	addi	a5,a5,672 # 222a0 <zeroes.4123+0x58>
   1b970:	02f13c23          	sd	a5,56(sp)
   1b974:	010b7793          	andi	a5,s6,16
   1b978:	18078863          	beqz	a5,1bb08 <_svfprintf_r+0x52c>
   1b97c:	02813703          	ld	a4,40(sp)
   1b980:	00073783          	ld	a5,0(a4)
   1b984:	00870713          	addi	a4,a4,8
   1b988:	02e13423          	sd	a4,40(sp)
   1b98c:	001b7713          	andi	a4,s6,1
   1b990:	300704e3          	beqz	a4,1c498 <_svfprintf_r+0xebc>
   1b994:	00079463          	bnez	a5,1b99c <_svfprintf_r+0x3c0>
   1b998:	7b10006f          	j	1c948 <_svfprintf_r+0x136c>
   1b99c:	03000713          	li	a4,48
   1b9a0:	08e10823          	sb	a4,144(sp)
   1b9a4:	09a108a3          	sb	s10,145(sp)
   1b9a8:	080107a3          	sb	zero,143(sp)
   1b9ac:	002b6713          	ori	a4,s6,2
   1b9b0:	00045463          	bgez	s0,1b9b8 <_svfprintf_r+0x3dc>
   1b9b4:	4840106f          	j	1ce38 <_svfprintf_r+0x185c>
   1b9b8:	f7fb7b13          	andi	s6,s6,-129
   1b9bc:	002b6b13          	ori	s6,s6,2
   1b9c0:	00000613          	li	a2,0
   1b9c4:	e2dff06f          	j	1b7f0 <_svfprintf_r+0x214>
   1b9c8:	00060463          	beqz	a2,1b9d0 <_svfprintf_r+0x3f4>
   1b9cc:	7980106f          	j	1d164 <_svfprintf_r+0x1b88>
   1b9d0:	010b7793          	andi	a5,s6,16
   1b9d4:	720788e3          	beqz	a5,1c904 <_svfprintf_r+0x1328>
   1b9d8:	02813683          	ld	a3,40(sp)
   1b9dc:	01c12703          	lw	a4,28(sp)
   1b9e0:	0006b783          	ld	a5,0(a3)
   1b9e4:	00868693          	addi	a3,a3,8
   1b9e8:	02d13423          	sd	a3,40(sp)
   1b9ec:	00e7b023          	sd	a4,0(a5)
   1b9f0:	cb9ff06f          	j	1b6a8 <_svfprintf_r+0xcc>
   1b9f4:	0009cd03          	lbu	s10,0(s3)
   1b9f8:	00198993          	addi	s3,s3,1
   1b9fc:	00ad1463          	bne	s10,a0,1ba04 <_svfprintf_r+0x428>
   1ba00:	6f80106f          	j	1d0f8 <_svfprintf_r+0x1b1c>
   1ba04:	fd0d079b          	addiw	a5,s10,-48
   1ba08:	00000413          	li	s0,0
   1ba0c:	d4f6e0e3          	bltu	a3,a5,1b74c <_svfprintf_r+0x170>
   1ba10:	00198993          	addi	s3,s3,1
   1ba14:	fff9cd03          	lbu	s10,-1(s3)
   1ba18:	0014181b          	slliw	a6,s0,0x1
   1ba1c:	0034141b          	slliw	s0,s0,0x3
   1ba20:	0088043b          	addw	s0,a6,s0
   1ba24:	00f4043b          	addw	s0,s0,a5
   1ba28:	fd0d079b          	addiw	a5,s10,-48
   1ba2c:	fef6f2e3          	bleu	a5,a3,1ba10 <_svfprintf_r+0x434>
   1ba30:	d0045ee3          	bgez	s0,1b74c <_svfprintf_r+0x170>
   1ba34:	fff00413          	li	s0,-1
   1ba38:	d15ff06f          	j	1b74c <_svfprintf_r+0x170>
   1ba3c:	080b6b13          	ori	s6,s6,128
   1ba40:	d05ff06f          	j	1b744 <_svfprintf_r+0x168>
   1ba44:	00060463          	beqz	a2,1ba4c <_svfprintf_r+0x470>
   1ba48:	7240106f          	j	1d16c <_svfprintf_r+0x1b90>
   1ba4c:	010b6b13          	ori	s6,s6,16
   1ba50:	010b7793          	andi	a5,s6,16
   1ba54:	e8079ce3          	bnez	a5,1b8ec <_svfprintf_r+0x310>
   1ba58:	040b7793          	andi	a5,s6,64
   1ba5c:	080107a3          	sb	zero,143(sp)
   1ba60:	600784e3          	beqz	a5,1c868 <_svfprintf_r+0x128c>
   1ba64:	02813783          	ld	a5,40(sp)
   1ba68:	00878713          	addi	a4,a5,8
   1ba6c:	0007d783          	lhu	a5,0(a5)
   1ba70:	e80458e3          	bgez	s0,1b900 <_svfprintf_r+0x324>
   1ba74:	02e13423          	sd	a4,40(sp)
   1ba78:	22079ce3          	bnez	a5,1c4b0 <_svfprintf_r+0xed4>
   1ba7c:	00000613          	li	a2,0
   1ba80:	00000713          	li	a4,0
   1ba84:	6700006f          	j	1c0f4 <_svfprintf_r+0xb18>
   1ba88:	00060463          	beqz	a2,1ba90 <_svfprintf_r+0x4b4>
   1ba8c:	7040106f          	j	1d190 <_svfprintf_r+0x1bb4>
   1ba90:	010b6b13          	ori	s6,s6,16
   1ba94:	010b7793          	andi	a5,s6,16
   1ba98:	38078ae3          	beqz	a5,1c62c <_svfprintf_r+0x1050>
   1ba9c:	02813783          	ld	a5,40(sp)
   1baa0:	080107a3          	sb	zero,143(sp)
   1baa4:	00878713          	addi	a4,a5,8
   1baa8:	0007b783          	ld	a5,0(a5)
   1baac:	38044ee3          	bltz	s0,1c648 <_svfprintf_r+0x106c>
   1bab0:	02e13423          	sd	a4,40(sp)
   1bab4:	f7fb7b13          	andi	s6,s6,-129
   1bab8:	00000613          	li	a2,0
   1babc:	42078663          	beqz	a5,1bee8 <_svfprintf_r+0x90c>
   1bac0:	00900713          	li	a4,9
   1bac4:	000a8913          	mv	s2,s5
   1bac8:	00a00693          	li	a3,10
   1bacc:	62f77a63          	bleu	a5,a4,1c100 <_svfprintf_r+0xb24>
   1bad0:	02d7f733          	remu	a4,a5,a3
   1bad4:	fff90913          	addi	s2,s2,-1
   1bad8:	02d7d7b3          	divu	a5,a5,a3
   1badc:	0307071b          	addiw	a4,a4,48
   1bae0:	00e90023          	sb	a4,0(s2)
   1bae4:	fe0796e3          	bnez	a5,1bad0 <_svfprintf_r+0x4f4>
   1bae8:	d2dff06f          	j	1b814 <_svfprintf_r+0x238>
   1baec:	00060463          	beqz	a2,1baf4 <_svfprintf_r+0x518>
   1baf0:	6980106f          	j	1d188 <_svfprintf_r+0x1bac>
   1baf4:	000227b7          	lui	a5,0x22
   1baf8:	28878793          	addi	a5,a5,648 # 22288 <zeroes.4123+0x40>
   1bafc:	02f13c23          	sd	a5,56(sp)
   1bb00:	010b7793          	andi	a5,s6,16
   1bb04:	e6079ce3          	bnez	a5,1b97c <_svfprintf_r+0x3a0>
   1bb08:	040b7793          	andi	a5,s6,64
   1bb0c:	02813703          	ld	a4,40(sp)
   1bb10:	620784e3          	beqz	a5,1c938 <_svfprintf_r+0x135c>
   1bb14:	00075783          	lhu	a5,0(a4)
   1bb18:	00870713          	addi	a4,a4,8
   1bb1c:	02e13423          	sd	a4,40(sp)
   1bb20:	e6dff06f          	j	1b98c <_svfprintf_r+0x3b0>
   1bb24:	02813703          	ld	a4,40(sp)
   1bb28:	00100693          	li	a3,1
   1bb2c:	00d12423          	sw	a3,8(sp)
   1bb30:	00072783          	lw	a5,0(a4)
   1bb34:	080107a3          	sb	zero,143(sp)
   1bb38:	00000613          	li	a2,0
   1bb3c:	0cf10423          	sb	a5,200(sp)
   1bb40:	00870793          	addi	a5,a4,8
   1bb44:	02f13423          	sd	a5,40(sp)
   1bb48:	02d12023          	sw	a3,32(sp)
   1bb4c:	00000413          	li	s0,0
   1bb50:	04012623          	sw	zero,76(sp)
   1bb54:	0c810913          	addi	s2,sp,200
   1bb58:	002b7793          	andi	a5,s6,2
   1bb5c:	04f12023          	sw	a5,64(sp)
   1bb60:	00078863          	beqz	a5,1bb70 <_svfprintf_r+0x594>
   1bb64:	00812783          	lw	a5,8(sp)
   1bb68:	0027879b          	addiw	a5,a5,2
   1bb6c:	00f12423          	sw	a5,8(sp)
   1bb70:	084b7793          	andi	a5,s6,132
   1bb74:	04f12423          	sw	a5,72(sp)
   1bb78:	5a079063          	bnez	a5,1c118 <_svfprintf_r+0xb3c>
   1bb7c:	01812783          	lw	a5,24(sp)
   1bb80:	00812703          	lw	a4,8(sp)
   1bb84:	40e78cbb          	subw	s9,a5,a4
   1bb88:	59905863          	blez	s9,1c118 <_svfprintf_r+0xb3c>
   1bb8c:	01000793          	li	a5,16
   1bb90:	0197c463          	blt	a5,s9,1bb98 <_svfprintf_r+0x5bc>
   1bb94:	1f80106f          	j	1cd8c <_svfprintf_r+0x17b0>
   1bb98:	01000813          	li	a6,16
   1bb9c:	0c013783          	ld	a5,192(sp)
   1bba0:	0b812703          	lw	a4,184(sp)
   1bba4:	05413823          	sd	s4,80(sp)
   1bba8:	00700313          	li	t1,7
   1bbac:	00080d93          	mv	s11,a6
   1bbb0:	00c0006f          	j	1bbbc <_svfprintf_r+0x5e0>
   1bbb4:	ff0c8c9b          	addiw	s9,s9,-16
   1bbb8:	059dde63          	ble	s9,s11,1bc14 <_svfprintf_r+0x638>
   1bbbc:	01078793          	addi	a5,a5,16
   1bbc0:	0017071b          	addiw	a4,a4,1
   1bbc4:	0148b023          	sd	s4,0(a7)
   1bbc8:	0108b423          	sd	a6,8(a7)
   1bbcc:	0cf13023          	sd	a5,192(sp)
   1bbd0:	0ae12c23          	sw	a4,184(sp)
   1bbd4:	01088893          	addi	a7,a7,16
   1bbd8:	fce35ee3          	ble	a4,t1,1bbb4 <_svfprintf_r+0x5d8>
   1bbdc:	0b010613          	addi	a2,sp,176
   1bbe0:	000b8593          	mv	a1,s7
   1bbe4:	000c0513          	mv	a0,s8
   1bbe8:	00613823          	sd	t1,16(sp)
   1bbec:	01013023          	sd	a6,0(sp)
   1bbf0:	2bd030ef          	jal	1f6ac <__ssprint_r>
   1bbf4:	c80514e3          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1bbf8:	ff0c8c9b          	addiw	s9,s9,-16
   1bbfc:	0c013783          	ld	a5,192(sp)
   1bc00:	0b812703          	lw	a4,184(sp)
   1bc04:	000a8893          	mv	a7,s5
   1bc08:	01013303          	ld	t1,16(sp)
   1bc0c:	00013803          	ld	a6,0(sp)
   1bc10:	fb9dc6e3          	blt	s11,s9,1bbbc <_svfprintf_r+0x5e0>
   1bc14:	05013603          	ld	a2,80(sp)
   1bc18:	00fc87b3          	add	a5,s9,a5
   1bc1c:	0017071b          	addiw	a4,a4,1
   1bc20:	00c8b023          	sd	a2,0(a7)
   1bc24:	0198b423          	sd	s9,8(a7)
   1bc28:	0cf13023          	sd	a5,192(sp)
   1bc2c:	0ae12c23          	sw	a4,184(sp)
   1bc30:	00700693          	li	a3,7
   1bc34:	14e6cce3          	blt	a3,a4,1c58c <_svfprintf_r+0xfb0>
   1bc38:	08f14603          	lbu	a2,143(sp)
   1bc3c:	01088893          	addi	a7,a7,16
   1bc40:	02060a63          	beqz	a2,1bc74 <_svfprintf_r+0x698>
   1bc44:	0b812703          	lw	a4,184(sp)
   1bc48:	08f10693          	addi	a3,sp,143
   1bc4c:	00d8b023          	sd	a3,0(a7)
   1bc50:	00178793          	addi	a5,a5,1
   1bc54:	00100693          	li	a3,1
   1bc58:	0017071b          	addiw	a4,a4,1
   1bc5c:	00d8b423          	sd	a3,8(a7)
   1bc60:	0cf13023          	sd	a5,192(sp)
   1bc64:	0ae12c23          	sw	a4,184(sp)
   1bc68:	00700693          	li	a3,7
   1bc6c:	01088893          	addi	a7,a7,16
   1bc70:	7ee6c463          	blt	a3,a4,1c458 <_svfprintf_r+0xe7c>
   1bc74:	04012703          	lw	a4,64(sp)
   1bc78:	02070a63          	beqz	a4,1bcac <_svfprintf_r+0x6d0>
   1bc7c:	0b812703          	lw	a4,184(sp)
   1bc80:	09010693          	addi	a3,sp,144
   1bc84:	00d8b023          	sd	a3,0(a7)
   1bc88:	00278793          	addi	a5,a5,2
   1bc8c:	00200693          	li	a3,2
   1bc90:	0017071b          	addiw	a4,a4,1
   1bc94:	00d8b423          	sd	a3,8(a7)
   1bc98:	0cf13023          	sd	a5,192(sp)
   1bc9c:	0ae12c23          	sw	a4,184(sp)
   1bca0:	00700693          	li	a3,7
   1bca4:	01088893          	addi	a7,a7,16
   1bca8:	7ce6c863          	blt	a3,a4,1c478 <_svfprintf_r+0xe9c>
   1bcac:	04812683          	lw	a3,72(sp)
   1bcb0:	08000713          	li	a4,128
   1bcb4:	66e68463          	beq	a3,a4,1c31c <_svfprintf_r+0xd40>
   1bcb8:	02012703          	lw	a4,32(sp)
   1bcbc:	40e4043b          	subw	s0,s0,a4
   1bcc0:	0c805063          	blez	s0,1bd80 <_svfprintf_r+0x7a4>
   1bcc4:	01000713          	li	a4,16
   1bcc8:	488758e3          	ble	s0,a4,1c958 <_svfprintf_r+0x137c>
   1bccc:	01000c93          	li	s9,16
   1bcd0:	0b812703          	lw	a4,184(sp)
   1bcd4:	00913823          	sd	s1,16(sp)
   1bcd8:	00700813          	li	a6,7
   1bcdc:	000c8d93          	mv	s11,s9
   1bce0:	00c0006f          	j	1bcec <_svfprintf_r+0x710>
   1bce4:	ff04041b          	addiw	s0,s0,-16
   1bce8:	048dda63          	ble	s0,s11,1bd3c <_svfprintf_r+0x760>
   1bcec:	01078793          	addi	a5,a5,16
   1bcf0:	0017071b          	addiw	a4,a4,1
   1bcf4:	0098b023          	sd	s1,0(a7)
   1bcf8:	0198b423          	sd	s9,8(a7)
   1bcfc:	0cf13023          	sd	a5,192(sp)
   1bd00:	0ae12c23          	sw	a4,184(sp)
   1bd04:	01088893          	addi	a7,a7,16
   1bd08:	fce85ee3          	ble	a4,a6,1bce4 <_svfprintf_r+0x708>
   1bd0c:	0b010613          	addi	a2,sp,176
   1bd10:	000b8593          	mv	a1,s7
   1bd14:	000c0513          	mv	a0,s8
   1bd18:	01013023          	sd	a6,0(sp)
   1bd1c:	191030ef          	jal	1f6ac <__ssprint_r>
   1bd20:	b4051ee3          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1bd24:	ff04041b          	addiw	s0,s0,-16
   1bd28:	0c013783          	ld	a5,192(sp)
   1bd2c:	0b812703          	lw	a4,184(sp)
   1bd30:	000a8893          	mv	a7,s5
   1bd34:	00013803          	ld	a6,0(sp)
   1bd38:	fa8dcae3          	blt	s11,s0,1bcec <_svfprintf_r+0x710>
   1bd3c:	01013683          	ld	a3,16(sp)
   1bd40:	008787b3          	add	a5,a5,s0
   1bd44:	0017071b          	addiw	a4,a4,1
   1bd48:	00d8b023          	sd	a3,0(a7)
   1bd4c:	0088b423          	sd	s0,8(a7)
   1bd50:	0cf13023          	sd	a5,192(sp)
   1bd54:	0ae12c23          	sw	a4,184(sp)
   1bd58:	00700693          	li	a3,7
   1bd5c:	01088893          	addi	a7,a7,16
   1bd60:	02e6d063          	ble	a4,a3,1bd80 <_svfprintf_r+0x7a4>
   1bd64:	0b010613          	addi	a2,sp,176
   1bd68:	000b8593          	mv	a1,s7
   1bd6c:	000c0513          	mv	a0,s8
   1bd70:	13d030ef          	jal	1f6ac <__ssprint_r>
   1bd74:	b00514e3          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1bd78:	0c013783          	ld	a5,192(sp)
   1bd7c:	000a8893          	mv	a7,s5
   1bd80:	100b7713          	andi	a4,s6,256
   1bd84:	48071463          	bnez	a4,1c20c <_svfprintf_r+0xc30>
   1bd88:	02012703          	lw	a4,32(sp)
   1bd8c:	0b812683          	lw	a3,184(sp)
   1bd90:	0128b023          	sd	s2,0(a7)
   1bd94:	00e787b3          	add	a5,a5,a4
   1bd98:	0016869b          	addiw	a3,a3,1
   1bd9c:	00e8b423          	sd	a4,8(a7)
   1bda0:	0cf13023          	sd	a5,192(sp)
   1bda4:	0ad12c23          	sw	a3,184(sp)
   1bda8:	00700713          	li	a4,7
   1bdac:	44d74063          	blt	a4,a3,1c1ec <_svfprintf_r+0xc10>
   1bdb0:	01088893          	addi	a7,a7,16
   1bdb4:	004b7b13          	andi	s6,s6,4
   1bdb8:	0c0b0263          	beqz	s6,1be7c <_svfprintf_r+0x8a0>
   1bdbc:	01812703          	lw	a4,24(sp)
   1bdc0:	00812683          	lw	a3,8(sp)
   1bdc4:	40d7043b          	subw	s0,a4,a3
   1bdc8:	0a805a63          	blez	s0,1be7c <_svfprintf_r+0x8a0>
   1bdcc:	01000713          	li	a4,16
   1bdd0:	00874463          	blt	a4,s0,1bdd8 <_svfprintf_r+0x7fc>
   1bdd4:	02c0106f          	j	1ce00 <_svfprintf_r+0x1824>
   1bdd8:	01000913          	li	s2,16
   1bddc:	0b812703          	lw	a4,184(sp)
   1bde0:	05413823          	sd	s4,80(sp)
   1bde4:	00700b13          	li	s6,7
   1bde8:	00090d13          	mv	s10,s2
   1bdec:	00c0006f          	j	1bdf8 <_svfprintf_r+0x81c>
   1bdf0:	ff04041b          	addiw	s0,s0,-16
   1bdf4:	048d5663          	ble	s0,s10,1be40 <_svfprintf_r+0x864>
   1bdf8:	01078793          	addi	a5,a5,16
   1bdfc:	0017071b          	addiw	a4,a4,1
   1be00:	0148b023          	sd	s4,0(a7)
   1be04:	0128b423          	sd	s2,8(a7)
   1be08:	0cf13023          	sd	a5,192(sp)
   1be0c:	0ae12c23          	sw	a4,184(sp)
   1be10:	01088893          	addi	a7,a7,16
   1be14:	fceb5ee3          	ble	a4,s6,1bdf0 <_svfprintf_r+0x814>
   1be18:	0b010613          	addi	a2,sp,176
   1be1c:	000b8593          	mv	a1,s7
   1be20:	000c0513          	mv	a0,s8
   1be24:	089030ef          	jal	1f6ac <__ssprint_r>
   1be28:	a4051ae3          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1be2c:	ff04041b          	addiw	s0,s0,-16
   1be30:	0c013783          	ld	a5,192(sp)
   1be34:	0b812703          	lw	a4,184(sp)
   1be38:	000a8893          	mv	a7,s5
   1be3c:	fa8d4ee3          	blt	s10,s0,1bdf8 <_svfprintf_r+0x81c>
   1be40:	05013683          	ld	a3,80(sp)
   1be44:	008787b3          	add	a5,a5,s0
   1be48:	0017071b          	addiw	a4,a4,1
   1be4c:	00d8b023          	sd	a3,0(a7)
   1be50:	0088b423          	sd	s0,8(a7)
   1be54:	0cf13023          	sd	a5,192(sp)
   1be58:	0ae12c23          	sw	a4,184(sp)
   1be5c:	00700693          	li	a3,7
   1be60:	00e6de63          	ble	a4,a3,1be7c <_svfprintf_r+0x8a0>
   1be64:	0b010613          	addi	a2,sp,176
   1be68:	000b8593          	mv	a1,s7
   1be6c:	000c0513          	mv	a0,s8
   1be70:	03d030ef          	jal	1f6ac <__ssprint_r>
   1be74:	a00514e3          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1be78:	0c013783          	ld	a5,192(sp)
   1be7c:	01812c83          	lw	s9,24(sp)
   1be80:	00812703          	lw	a4,8(sp)
   1be84:	00ecd463          	ble	a4,s9,1be8c <_svfprintf_r+0x8b0>
   1be88:	00070c93          	mv	s9,a4
   1be8c:	01c12703          	lw	a4,28(sp)
   1be90:	0197073b          	addw	a4,a4,s9
   1be94:	00e12e23          	sw	a4,28(sp)
   1be98:	5a079463          	bnez	a5,1c440 <_svfprintf_r+0xe64>
   1be9c:	0009c783          	lbu	a5,0(s3)
   1bea0:	0a012c23          	sw	zero,184(sp)
   1bea4:	000a8893          	mv	a7,s5
   1bea8:	800794e3          	bnez	a5,1b6b0 <_svfprintf_r+0xd4>
   1beac:	00098413          	mv	s0,s3
   1beb0:	865ff06f          	j	1b714 <_svfprintf_r+0x138>
   1beb4:	00060463          	beqz	a2,1bebc <_svfprintf_r+0x8e0>
   1beb8:	2f00106f          	j	1d1a8 <_svfprintf_r+0x1bcc>
   1bebc:	010b7793          	andi	a5,s6,16
   1bec0:	0e078e63          	beqz	a5,1bfbc <_svfprintf_r+0x9e0>
   1bec4:	02813703          	ld	a4,40(sp)
   1bec8:	00073783          	ld	a5,0(a4)
   1becc:	00870713          	addi	a4,a4,8
   1bed0:	02e13423          	sd	a4,40(sp)
   1bed4:	1007c263          	bltz	a5,1bfd8 <_svfprintf_r+0x9fc>
   1bed8:	08f14603          	lbu	a2,143(sp)
   1bedc:	76044a63          	bltz	s0,1c650 <_svfprintf_r+0x1074>
   1bee0:	f7fb7b13          	andi	s6,s6,-129
   1bee4:	bc079ee3          	bnez	a5,1bac0 <_svfprintf_r+0x4e4>
   1bee8:	1a041ee3          	bnez	s0,1c8a4 <_svfprintf_r+0x12c8>
   1beec:	00000413          	li	s0,0
   1bef0:	02012023          	sw	zero,32(sp)
   1bef4:	000a8913          	mv	s2,s5
   1bef8:	925ff06f          	j	1b81c <_svfprintf_r+0x240>
   1befc:	040b6b13          	ori	s6,s6,64
   1bf00:	845ff06f          	j	1b744 <_svfprintf_r+0x168>
   1bf04:	001b6b13          	ori	s6,s6,1
   1bf08:	83dff06f          	j	1b744 <_svfprintf_r+0x168>
   1bf0c:	b80604e3          	beqz	a2,1ba94 <_svfprintf_r+0x4b8>
   1bf10:	08b107a3          	sb	a1,143(sp)
   1bf14:	b81ff06f          	j	1ba94 <_svfprintf_r+0x4b8>
   1bf18:	820596e3          	bnez	a1,1b744 <_svfprintf_r+0x168>
   1bf1c:	00100613          	li	a2,1
   1bf20:	02000593          	li	a1,32
   1bf24:	821ff06f          	j	1b744 <_svfprintf_r+0x168>
   1bf28:	00060463          	beqz	a2,1bf30 <_svfprintf_r+0x954>
   1bf2c:	2540106f          	j	1d180 <_svfprintf_r+0x1ba4>
   1bf30:	02813783          	ld	a5,40(sp)
   1bf34:	00100913          	li	s2,1
   1bf38:	0007b787          	fld	fa5,0(a5)
   1bf3c:	00878793          	addi	a5,a5,8
   1bf40:	01113023          	sd	a7,0(sp)
   1bf44:	04f13c27          	fsd	fa5,88(sp)
   1bf48:	05813c83          	ld	s9,88(sp)
   1bf4c:	02f13423          	sd	a5,40(sp)
   1bf50:	f20c8553          	fmv.d.x	fa0,s9
   1bf54:	ce5fd0ef          	jal	19c38 <__fpclassifyd>
   1bf58:	00013883          	ld	a7,0(sp)
   1bf5c:	172512e3          	bne	a0,s2,1c8c0 <_svfprintf_r+0x12e4>
   1bf60:	f20007d3          	fmv.d.x	fa5,zero
   1bf64:	f20c8753          	fmv.d.x	fa4,s9
   1bf68:	a2f717d3          	flt.d	a5,fa4,fa5
   1bf6c:	6a0794e3          	bnez	a5,1ce14 <_svfprintf_r+0x1838>
   1bf70:	08f14603          	lbu	a2,143(sp)
   1bf74:	04700793          	li	a5,71
   1bf78:	45a7dee3          	ble	s10,a5,1cbd4 <_svfprintf_r+0x15f8>
   1bf7c:	00022937          	lui	s2,0x22
   1bf80:	27090913          	addi	s2,s2,624 # 22270 <zeroes.4123+0x28>
   1bf84:	00300793          	li	a5,3
   1bf88:	00f12423          	sw	a5,8(sp)
   1bf8c:	f7fb7b13          	andi	s6,s6,-129
   1bf90:	02f12023          	sw	a5,32(sp)
   1bf94:	00000413          	li	s0,0
   1bf98:	04012623          	sw	zero,76(sp)
   1bf9c:	899ff06f          	j	1b834 <_svfprintf_r+0x258>
   1bfa0:	008b6b13          	ori	s6,s6,8
   1bfa4:	fa0ff06f          	j	1b744 <_svfprintf_r+0x168>
   1bfa8:	00060463          	beqz	a2,1bfb0 <_svfprintf_r+0x9d4>
   1bfac:	21c0106f          	j	1d1c8 <_svfprintf_r+0x1bec>
   1bfb0:	010b6b13          	ori	s6,s6,16
   1bfb4:	010b7793          	andi	a5,s6,16
   1bfb8:	f00796e3          	bnez	a5,1bec4 <_svfprintf_r+0x8e8>
   1bfbc:	040b7793          	andi	a5,s6,64
   1bfc0:	02813703          	ld	a4,40(sp)
   1bfc4:	160782e3          	beqz	a5,1c928 <_svfprintf_r+0x134c>
   1bfc8:	00071783          	lh	a5,0(a4)
   1bfcc:	00870713          	addi	a4,a4,8
   1bfd0:	02e13423          	sd	a4,40(sp)
   1bfd4:	f007d2e3          	bgez	a5,1bed8 <_svfprintf_r+0x8fc>
   1bfd8:	02d00713          	li	a4,45
   1bfdc:	08e107a3          	sb	a4,143(sp)
   1bfe0:	40f007b3          	neg	a5,a5
   1bfe4:	5c0440e3          	bltz	s0,1cda4 <_svfprintf_r+0x17c8>
   1bfe8:	f7fb7b13          	andi	s6,s6,-129
   1bfec:	02d00613          	li	a2,45
   1bff0:	ad1ff06f          	j	1bac0 <_svfprintf_r+0x4e4>
   1bff4:	02813783          	ld	a5,40(sp)
   1bff8:	080107a3          	sb	zero,143(sp)
   1bffc:	0007b903          	ld	s2,0(a5)
   1c000:	00878c93          	addi	s9,a5,8
   1c004:	5c0902e3          	beqz	s2,1cdc8 <_svfprintf_r+0x17ec>
   1c008:	01113023          	sd	a7,0(sp)
   1c00c:	54044ae3          	bltz	s0,1cd60 <_svfprintf_r+0x1784>
   1c010:	00040613          	mv	a2,s0
   1c014:	00000593          	li	a1,0
   1c018:	00090513          	mv	a0,s2
   1c01c:	830fc0ef          	jal	1804c <memchr>
   1c020:	00013883          	ld	a7,0(sp)
   1c024:	660502e3          	beqz	a0,1ce88 <_svfprintf_r+0x18ac>
   1c028:	412507bb          	subw	a5,a0,s2
   1c02c:	02f12023          	sw	a5,32(sp)
   1c030:	00078d93          	mv	s11,a5
   1c034:	5407c4e3          	bltz	a5,1cd7c <_svfprintf_r+0x17a0>
   1c038:	08f14603          	lbu	a2,143(sp)
   1c03c:	01b12423          	sw	s11,8(sp)
   1c040:	03913423          	sd	s9,40(sp)
   1c044:	00000413          	li	s0,0
   1c048:	04012623          	sw	zero,76(sp)
   1c04c:	fe8ff06f          	j	1b834 <_svfprintf_r+0x258>
   1c050:	00012c23          	sw	zero,24(sp)
   1c054:	fd0d079b          	addiw	a5,s10,-48
   1c058:	01812303          	lw	t1,24(sp)
   1c05c:	00198993          	addi	s3,s3,1
   1c060:	fff9cd03          	lbu	s10,-1(s3)
   1c064:	0013181b          	slliw	a6,t1,0x1
   1c068:	00331c9b          	slliw	s9,t1,0x3
   1c06c:	01980cbb          	addw	s9,a6,s9
   1c070:	019787bb          	addw	a5,a5,s9
   1c074:	00f12c23          	sw	a5,24(sp)
   1c078:	fd0d079b          	addiw	a5,s10,-48
   1c07c:	fcf6fee3          	bleu	a5,a3,1c058 <_svfprintf_r+0xa7c>
   1c080:	eccff06f          	j	1b74c <_svfprintf_r+0x170>
   1c084:	00022737          	lui	a4,0x22
   1c088:	2a070713          	addi	a4,a4,672 # 222a0 <zeroes.4123+0x58>
   1c08c:	00000613          	li	a2,0
   1c090:	02e13c23          	sd	a4,56(sp)
   1c094:	07800d13          	li	s10,120
   1c098:	f58ff06f          	j	1b7f0 <_svfprintf_r+0x214>
   1c09c:	00060463          	beqz	a2,1c0a4 <_svfprintf_r+0xac8>
   1c0a0:	1100106f          	j	1d1b0 <_svfprintf_r+0x1bd4>
   1c0a4:	fc0d0063          	beqz	s10,1b864 <_svfprintf_r+0x288>
   1c0a8:	00100793          	li	a5,1
   1c0ac:	00f12423          	sw	a5,8(sp)
   1c0b0:	0da10423          	sb	s10,200(sp)
   1c0b4:	080107a3          	sb	zero,143(sp)
   1c0b8:	00000613          	li	a2,0
   1c0bc:	02f12023          	sw	a5,32(sp)
   1c0c0:	00000413          	li	s0,0
   1c0c4:	04012623          	sw	zero,76(sp)
   1c0c8:	0c810913          	addi	s2,sp,200
   1c0cc:	a8dff06f          	j	1bb58 <_svfprintf_r+0x57c>
   1c0d0:	02e13423          	sd	a4,40(sp)
   1c0d4:	00022737          	lui	a4,0x22
   1c0d8:	2a070713          	addi	a4,a4,672 # 222a0 <zeroes.4123+0x58>
   1c0dc:	00068b13          	mv	s6,a3
   1c0e0:	02e13c23          	sd	a4,56(sp)
   1c0e4:	07800d13          	li	s10,120
   1c0e8:	3c079063          	bnez	a5,1c4a8 <_svfprintf_r+0xecc>
   1c0ec:	00000613          	li	a2,0
   1c0f0:	00200713          	li	a4,2
   1c0f4:	00100693          	li	a3,1
   1c0f8:	00000793          	li	a5,0
   1c0fc:	4ad71ee3          	bne	a4,a3,1cdb8 <_svfprintf_r+0x17dc>
   1c100:	0307879b          	addiw	a5,a5,48
   1c104:	0ef107a3          	sb	a5,239(sp)
   1c108:	07813783          	ld	a5,120(sp)
   1c10c:	0ef10913          	addi	s2,sp,239
   1c110:	02f12023          	sw	a5,32(sp)
   1c114:	f08ff06f          	j	1b81c <_svfprintf_r+0x240>
   1c118:	0c013783          	ld	a5,192(sp)
   1c11c:	b25ff06f          	j	1bc40 <_svfprintf_r+0x664>
   1c120:	07012683          	lw	a3,112(sp)
   1c124:	00100713          	li	a4,1
   1c128:	00178793          	addi	a5,a5,1
   1c12c:	6ed75263          	ble	a3,a4,1c810 <_svfprintf_r+0x1234>
   1c130:	0b812703          	lw	a4,184(sp)
   1c134:	00100693          	li	a3,1
   1c138:	00d8b423          	sd	a3,8(a7)
   1c13c:	0017071b          	addiw	a4,a4,1
   1c140:	0128b023          	sd	s2,0(a7)
   1c144:	0cf13023          	sd	a5,192(sp)
   1c148:	0ae12c23          	sw	a4,184(sp)
   1c14c:	00700693          	li	a3,7
   1c150:	01088893          	addi	a7,a7,16
   1c154:	6ee6c663          	blt	a3,a4,1c840 <_svfprintf_r+0x1264>
   1c158:	06813683          	ld	a3,104(sp)
   1c15c:	06013603          	ld	a2,96(sp)
   1c160:	0017071b          	addiw	a4,a4,1
   1c164:	00f687b3          	add	a5,a3,a5
   1c168:	00d8b423          	sd	a3,8(a7)
   1c16c:	00c8b023          	sd	a2,0(a7)
   1c170:	0cf13023          	sd	a5,192(sp)
   1c174:	0ae12c23          	sw	a4,184(sp)
   1c178:	00700693          	li	a3,7
   1c17c:	01088893          	addi	a7,a7,16
   1c180:	6ee6ce63          	blt	a3,a4,1c87c <_svfprintf_r+0x12a0>
   1c184:	f20007d3          	fmv.d.x	fa5,zero
   1c188:	05813707          	fld	fa4,88(sp)
   1c18c:	a2f726d3          	feq.d	a3,fa4,fa5
   1c190:	42069063          	bnez	a3,1c5b0 <_svfprintf_r+0xfd4>
   1c194:	07012683          	lw	a3,112(sp)
   1c198:	00190913          	addi	s2,s2,1
   1c19c:	0017071b          	addiw	a4,a4,1
   1c1a0:	fff6869b          	addiw	a3,a3,-1
   1c1a4:	00d787b3          	add	a5,a5,a3
   1c1a8:	0128b023          	sd	s2,0(a7)
   1c1ac:	00d8b423          	sd	a3,8(a7)
   1c1b0:	0cf13023          	sd	a5,192(sp)
   1c1b4:	0ae12c23          	sw	a4,184(sp)
   1c1b8:	00700693          	li	a3,7
   1c1bc:	26e6c063          	blt	a3,a4,1c41c <_svfprintf_r+0xe40>
   1c1c0:	01088893          	addi	a7,a7,16
   1c1c4:	07412683          	lw	a3,116(sp)
   1c1c8:	0a010613          	addi	a2,sp,160
   1c1cc:	0017071b          	addiw	a4,a4,1
   1c1d0:	00f687b3          	add	a5,a3,a5
   1c1d4:	00c8b023          	sd	a2,0(a7)
   1c1d8:	00d8b423          	sd	a3,8(a7)
   1c1dc:	0cf13023          	sd	a5,192(sp)
   1c1e0:	0ae12c23          	sw	a4,184(sp)
   1c1e4:	00700693          	li	a3,7
   1c1e8:	bce6d4e3          	ble	a4,a3,1bdb0 <_svfprintf_r+0x7d4>
   1c1ec:	0b010613          	addi	a2,sp,176
   1c1f0:	000b8593          	mv	a1,s7
   1c1f4:	000c0513          	mv	a0,s8
   1c1f8:	4b4030ef          	jal	1f6ac <__ssprint_r>
   1c1fc:	e8051063          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c200:	0c013783          	ld	a5,192(sp)
   1c204:	000a8893          	mv	a7,s5
   1c208:	badff06f          	j	1bdb4 <_svfprintf_r+0x7d8>
   1c20c:	06500713          	li	a4,101
   1c210:	f1a758e3          	ble	s10,a4,1c120 <_svfprintf_r+0xb44>
   1c214:	f20007d3          	fmv.d.x	fa5,zero
   1c218:	05813707          	fld	fa4,88(sp)
   1c21c:	a2f72753          	feq.d	a4,fa4,fa5
   1c220:	28070c63          	beqz	a4,1c4b8 <_svfprintf_r+0xedc>
   1c224:	0b812703          	lw	a4,184(sp)
   1c228:	000226b7          	lui	a3,0x22
   1c22c:	2c068693          	addi	a3,a3,704 # 222c0 <zeroes.4123+0x78>
   1c230:	00d8b023          	sd	a3,0(a7)
   1c234:	00178793          	addi	a5,a5,1
   1c238:	00100693          	li	a3,1
   1c23c:	0017071b          	addiw	a4,a4,1
   1c240:	00d8b423          	sd	a3,8(a7)
   1c244:	0cf13023          	sd	a5,192(sp)
   1c248:	0ae12c23          	sw	a4,184(sp)
   1c24c:	00700693          	li	a3,7
   1c250:	01088893          	addi	a7,a7,16
   1c254:	70e6c863          	blt	a3,a4,1c964 <_svfprintf_r+0x1388>
   1c258:	09812703          	lw	a4,152(sp)
   1c25c:	07012683          	lw	a3,112(sp)
   1c260:	00d74663          	blt	a4,a3,1c26c <_svfprintf_r+0xc90>
   1c264:	001b7713          	andi	a4,s6,1
   1c268:	b40706e3          	beqz	a4,1bdb4 <_svfprintf_r+0x7d8>
   1c26c:	06013703          	ld	a4,96(sp)
   1c270:	06813683          	ld	a3,104(sp)
   1c274:	01088893          	addi	a7,a7,16
   1c278:	fee8b823          	sd	a4,-16(a7)
   1c27c:	0b812703          	lw	a4,184(sp)
   1c280:	00d787b3          	add	a5,a5,a3
   1c284:	fed8bc23          	sd	a3,-8(a7)
   1c288:	0017071b          	addiw	a4,a4,1
   1c28c:	0cf13023          	sd	a5,192(sp)
   1c290:	0ae12c23          	sw	a4,184(sp)
   1c294:	00700693          	li	a3,7
   1c298:	7ee6c663          	blt	a3,a4,1ca84 <_svfprintf_r+0x14a8>
   1c29c:	07012703          	lw	a4,112(sp)
   1c2a0:	fff7041b          	addiw	s0,a4,-1
   1c2a4:	b08058e3          	blez	s0,1bdb4 <_svfprintf_r+0x7d8>
   1c2a8:	01000713          	li	a4,16
   1c2ac:	3a875863          	ble	s0,a4,1c65c <_svfprintf_r+0x1080>
   1c2b0:	01000913          	li	s2,16
   1c2b4:	0b812703          	lw	a4,184(sp)
   1c2b8:	00913823          	sd	s1,16(sp)
   1c2bc:	00700d13          	li	s10,7
   1c2c0:	00090693          	mv	a3,s2
   1c2c4:	00c0006f          	j	1c2d0 <_svfprintf_r+0xcf4>
   1c2c8:	ff04041b          	addiw	s0,s0,-16
   1c2cc:	3886dc63          	ble	s0,a3,1c664 <_svfprintf_r+0x1088>
   1c2d0:	01078793          	addi	a5,a5,16
   1c2d4:	0017071b          	addiw	a4,a4,1
   1c2d8:	0098b023          	sd	s1,0(a7)
   1c2dc:	0128b423          	sd	s2,8(a7)
   1c2e0:	0cf13023          	sd	a5,192(sp)
   1c2e4:	0ae12c23          	sw	a4,184(sp)
   1c2e8:	01088893          	addi	a7,a7,16
   1c2ec:	fced5ee3          	ble	a4,s10,1c2c8 <_svfprintf_r+0xcec>
   1c2f0:	0b010613          	addi	a2,sp,176
   1c2f4:	000b8593          	mv	a1,s7
   1c2f8:	000c0513          	mv	a0,s8
   1c2fc:	00d13023          	sd	a3,0(sp)
   1c300:	3ac030ef          	jal	1f6ac <__ssprint_r>
   1c304:	d6051c63          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c308:	0c013783          	ld	a5,192(sp)
   1c30c:	0b812703          	lw	a4,184(sp)
   1c310:	000a8893          	mv	a7,s5
   1c314:	00013683          	ld	a3,0(sp)
   1c318:	fb1ff06f          	j	1c2c8 <_svfprintf_r+0xcec>
   1c31c:	01812703          	lw	a4,24(sp)
   1c320:	00812683          	lw	a3,8(sp)
   1c324:	40d70cbb          	subw	s9,a4,a3
   1c328:	999058e3          	blez	s9,1bcb8 <_svfprintf_r+0x6dc>
   1c32c:	01000713          	li	a4,16
   1c330:	359756e3          	ble	s9,a4,1ce7c <_svfprintf_r+0x18a0>
   1c334:	01000813          	li	a6,16
   1c338:	0b812703          	lw	a4,184(sp)
   1c33c:	00913823          	sd	s1,16(sp)
   1c340:	00700313          	li	t1,7
   1c344:	00080d93          	mv	s11,a6
   1c348:	00c0006f          	j	1c354 <_svfprintf_r+0xd78>
   1c34c:	ff0c8c9b          	addiw	s9,s9,-16
   1c350:	059dde63          	ble	s9,s11,1c3ac <_svfprintf_r+0xdd0>
   1c354:	01078793          	addi	a5,a5,16
   1c358:	0017071b          	addiw	a4,a4,1
   1c35c:	0098b023          	sd	s1,0(a7)
   1c360:	0108b423          	sd	a6,8(a7)
   1c364:	0cf13023          	sd	a5,192(sp)
   1c368:	0ae12c23          	sw	a4,184(sp)
   1c36c:	01088893          	addi	a7,a7,16
   1c370:	fce35ee3          	ble	a4,t1,1c34c <_svfprintf_r+0xd70>
   1c374:	0b010613          	addi	a2,sp,176
   1c378:	000b8593          	mv	a1,s7
   1c37c:	000c0513          	mv	a0,s8
   1c380:	04613023          	sd	t1,64(sp)
   1c384:	01013023          	sd	a6,0(sp)
   1c388:	324030ef          	jal	1f6ac <__ssprint_r>
   1c38c:	ce051863          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c390:	ff0c8c9b          	addiw	s9,s9,-16
   1c394:	0c013783          	ld	a5,192(sp)
   1c398:	0b812703          	lw	a4,184(sp)
   1c39c:	000a8893          	mv	a7,s5
   1c3a0:	04013303          	ld	t1,64(sp)
   1c3a4:	00013803          	ld	a6,0(sp)
   1c3a8:	fb9dc6e3          	blt	s11,s9,1c354 <_svfprintf_r+0xd78>
   1c3ac:	01013603          	ld	a2,16(sp)
   1c3b0:	019787b3          	add	a5,a5,s9
   1c3b4:	0017071b          	addiw	a4,a4,1
   1c3b8:	00c8b023          	sd	a2,0(a7)
   1c3bc:	0198b423          	sd	s9,8(a7)
   1c3c0:	0cf13023          	sd	a5,192(sp)
   1c3c4:	0ae12c23          	sw	a4,184(sp)
   1c3c8:	00700693          	li	a3,7
   1c3cc:	01088893          	addi	a7,a7,16
   1c3d0:	8ee6d4e3          	ble	a4,a3,1bcb8 <_svfprintf_r+0x6dc>
   1c3d4:	0b010613          	addi	a2,sp,176
   1c3d8:	000b8593          	mv	a1,s7
   1c3dc:	000c0513          	mv	a0,s8
   1c3e0:	2cc030ef          	jal	1f6ac <__ssprint_r>
   1c3e4:	c8051c63          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c3e8:	0c013783          	ld	a5,192(sp)
   1c3ec:	000a8893          	mv	a7,s5
   1c3f0:	8c9ff06f          	j	1bcb8 <_svfprintf_r+0x6dc>
   1c3f4:	00913823          	sd	s1,16(sp)
   1c3f8:	01013683          	ld	a3,16(sp)
   1c3fc:	008787b3          	add	a5,a5,s0
   1c400:	0017071b          	addiw	a4,a4,1
   1c404:	00d8b023          	sd	a3,0(a7)
   1c408:	0088b423          	sd	s0,8(a7)
   1c40c:	0cf13023          	sd	a5,192(sp)
   1c410:	0ae12c23          	sw	a4,184(sp)
   1c414:	00700693          	li	a3,7
   1c418:	dae6d4e3          	ble	a4,a3,1c1c0 <_svfprintf_r+0xbe4>
   1c41c:	0b010613          	addi	a2,sp,176
   1c420:	000b8593          	mv	a1,s7
   1c424:	000c0513          	mv	a0,s8
   1c428:	284030ef          	jal	1f6ac <__ssprint_r>
   1c42c:	c4051863          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c430:	0c013783          	ld	a5,192(sp)
   1c434:	0b812703          	lw	a4,184(sp)
   1c438:	000a8893          	mv	a7,s5
   1c43c:	d89ff06f          	j	1c1c4 <_svfprintf_r+0xbe8>
   1c440:	0b010613          	addi	a2,sp,176
   1c444:	000b8593          	mv	a1,s7
   1c448:	000c0513          	mv	a0,s8
   1c44c:	260030ef          	jal	1f6ac <__ssprint_r>
   1c450:	a40506e3          	beqz	a0,1be9c <_svfprintf_r+0x8c0>
   1c454:	c28ff06f          	j	1b87c <_svfprintf_r+0x2a0>
   1c458:	0b010613          	addi	a2,sp,176
   1c45c:	000b8593          	mv	a1,s7
   1c460:	000c0513          	mv	a0,s8
   1c464:	248030ef          	jal	1f6ac <__ssprint_r>
   1c468:	c0051a63          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c46c:	0c013783          	ld	a5,192(sp)
   1c470:	000a8893          	mv	a7,s5
   1c474:	801ff06f          	j	1bc74 <_svfprintf_r+0x698>
   1c478:	0b010613          	addi	a2,sp,176
   1c47c:	000b8593          	mv	a1,s7
   1c480:	000c0513          	mv	a0,s8
   1c484:	228030ef          	jal	1f6ac <__ssprint_r>
   1c488:	be051a63          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c48c:	0c013783          	ld	a5,192(sp)
   1c490:	000a8893          	mv	a7,s5
   1c494:	819ff06f          	j	1bcac <_svfprintf_r+0x6d0>
   1c498:	080107a3          	sb	zero,143(sp)
   1c49c:	c40446e3          	bltz	s0,1c0e8 <_svfprintf_r+0xb0c>
   1c4a0:	f7fb7b13          	andi	s6,s6,-129
   1c4a4:	b4078063          	beqz	a5,1b7e4 <_svfprintf_r+0x208>
   1c4a8:	00000613          	li	a2,0
   1c4ac:	b44ff06f          	j	1b7f0 <_svfprintf_r+0x214>
   1c4b0:	00000613          	li	a2,0
   1c4b4:	c68ff06f          	j	1b91c <_svfprintf_r+0x340>
   1c4b8:	09812403          	lw	s0,152(sp)
   1c4bc:	4c805663          	blez	s0,1c988 <_svfprintf_r+0x13ac>
   1c4c0:	04c12703          	lw	a4,76(sp)
   1c4c4:	07012683          	lw	a3,112(sp)
   1c4c8:	00070413          	mv	s0,a4
   1c4cc:	00e6d463          	ble	a4,a3,1c4d4 <_svfprintf_r+0xef8>
   1c4d0:	00068413          	mv	s0,a3
   1c4d4:	02805663          	blez	s0,1c500 <_svfprintf_r+0xf24>
   1c4d8:	0b812703          	lw	a4,184(sp)
   1c4dc:	008787b3          	add	a5,a5,s0
   1c4e0:	0128b023          	sd	s2,0(a7)
   1c4e4:	0017071b          	addiw	a4,a4,1
   1c4e8:	0088b423          	sd	s0,8(a7)
   1c4ec:	0cf13023          	sd	a5,192(sp)
   1c4f0:	0ae12c23          	sw	a4,184(sp)
   1c4f4:	00700693          	li	a3,7
   1c4f8:	01088893          	addi	a7,a7,16
   1c4fc:	6ee6c263          	blt	a3,a4,1cbe0 <_svfprintf_r+0x1604>
   1c500:	08044ee3          	bltz	s0,1cd9c <_svfprintf_r+0x17c0>
   1c504:	04c12703          	lw	a4,76(sp)
   1c508:	4087043b          	subw	s0,a4,s0
   1c50c:	1c805663          	blez	s0,1c6d8 <_svfprintf_r+0x10fc>
   1c510:	01000713          	li	a4,16
   1c514:	16875c63          	ble	s0,a4,1c68c <_svfprintf_r+0x10b0>
   1c518:	01000d13          	li	s10,16
   1c51c:	0b812703          	lw	a4,184(sp)
   1c520:	00913823          	sd	s1,16(sp)
   1c524:	00700693          	li	a3,7
   1c528:	000d0813          	mv	a6,s10
   1c52c:	00c0006f          	j	1c538 <_svfprintf_r+0xf5c>
   1c530:	ff04041b          	addiw	s0,s0,-16
   1c534:	16885063          	ble	s0,a6,1c694 <_svfprintf_r+0x10b8>
   1c538:	01078793          	addi	a5,a5,16
   1c53c:	0017071b          	addiw	a4,a4,1
   1c540:	0098b023          	sd	s1,0(a7)
   1c544:	01a8b423          	sd	s10,8(a7)
   1c548:	0cf13023          	sd	a5,192(sp)
   1c54c:	0ae12c23          	sw	a4,184(sp)
   1c550:	01088893          	addi	a7,a7,16
   1c554:	fce6dee3          	ble	a4,a3,1c530 <_svfprintf_r+0xf54>
   1c558:	0b010613          	addi	a2,sp,176
   1c55c:	000b8593          	mv	a1,s7
   1c560:	000c0513          	mv	a0,s8
   1c564:	03013023          	sd	a6,32(sp)
   1c568:	00d13023          	sd	a3,0(sp)
   1c56c:	140030ef          	jal	1f6ac <__ssprint_r>
   1c570:	b0051663          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c574:	0c013783          	ld	a5,192(sp)
   1c578:	0b812703          	lw	a4,184(sp)
   1c57c:	000a8893          	mv	a7,s5
   1c580:	02013803          	ld	a6,32(sp)
   1c584:	00013683          	ld	a3,0(sp)
   1c588:	fa9ff06f          	j	1c530 <_svfprintf_r+0xf54>
   1c58c:	0b010613          	addi	a2,sp,176
   1c590:	000b8593          	mv	a1,s7
   1c594:	000c0513          	mv	a0,s8
   1c598:	114030ef          	jal	1f6ac <__ssprint_r>
   1c59c:	ae051063          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c5a0:	08f14603          	lbu	a2,143(sp)
   1c5a4:	0c013783          	ld	a5,192(sp)
   1c5a8:	000a8893          	mv	a7,s5
   1c5ac:	e94ff06f          	j	1bc40 <_svfprintf_r+0x664>
   1c5b0:	07012683          	lw	a3,112(sp)
   1c5b4:	fff6841b          	addiw	s0,a3,-1
   1c5b8:	c08056e3          	blez	s0,1c1c4 <_svfprintf_r+0xbe8>
   1c5bc:	01000693          	li	a3,16
   1c5c0:	e286dae3          	ble	s0,a3,1c3f4 <_svfprintf_r+0xe18>
   1c5c4:	01000913          	li	s2,16
   1c5c8:	00913823          	sd	s1,16(sp)
   1c5cc:	00700d13          	li	s10,7
   1c5d0:	00090693          	mv	a3,s2
   1c5d4:	00c0006f          	j	1c5e0 <_svfprintf_r+0x1004>
   1c5d8:	ff04041b          	addiw	s0,s0,-16
   1c5dc:	e086dee3          	ble	s0,a3,1c3f8 <_svfprintf_r+0xe1c>
   1c5e0:	01078793          	addi	a5,a5,16
   1c5e4:	0017071b          	addiw	a4,a4,1
   1c5e8:	0098b023          	sd	s1,0(a7)
   1c5ec:	0128b423          	sd	s2,8(a7)
   1c5f0:	0cf13023          	sd	a5,192(sp)
   1c5f4:	0ae12c23          	sw	a4,184(sp)
   1c5f8:	01088893          	addi	a7,a7,16
   1c5fc:	fced5ee3          	ble	a4,s10,1c5d8 <_svfprintf_r+0xffc>
   1c600:	0b010613          	addi	a2,sp,176
   1c604:	000b8593          	mv	a1,s7
   1c608:	000c0513          	mv	a0,s8
   1c60c:	00d13023          	sd	a3,0(sp)
   1c610:	09c030ef          	jal	1f6ac <__ssprint_r>
   1c614:	a6051463          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c618:	0c013783          	ld	a5,192(sp)
   1c61c:	0b812703          	lw	a4,184(sp)
   1c620:	000a8893          	mv	a7,s5
   1c624:	00013683          	ld	a3,0(sp)
   1c628:	fb1ff06f          	j	1c5d8 <_svfprintf_r+0xffc>
   1c62c:	040b7793          	andi	a5,s6,64
   1c630:	080107a3          	sb	zero,143(sp)
   1c634:	1e078c63          	beqz	a5,1c82c <_svfprintf_r+0x1250>
   1c638:	02813783          	ld	a5,40(sp)
   1c63c:	00878713          	addi	a4,a5,8
   1c640:	0007d783          	lhu	a5,0(a5)
   1c644:	c6045663          	bgez	s0,1bab0 <_svfprintf_r+0x4d4>
   1c648:	02e13423          	sd	a4,40(sp)
   1c64c:	00000613          	li	a2,0
   1c650:	00100713          	li	a4,1
   1c654:	aa0780e3          	beqz	a5,1c0f4 <_svfprintf_r+0xb18>
   1c658:	c68ff06f          	j	1bac0 <_svfprintf_r+0x4e4>
   1c65c:	0b812703          	lw	a4,184(sp)
   1c660:	00913823          	sd	s1,16(sp)
   1c664:	01013683          	ld	a3,16(sp)
   1c668:	008787b3          	add	a5,a5,s0
   1c66c:	0088b423          	sd	s0,8(a7)
   1c670:	00d8b023          	sd	a3,0(a7)
   1c674:	0017071b          	addiw	a4,a4,1
   1c678:	0cf13023          	sd	a5,192(sp)
   1c67c:	0ae12c23          	sw	a4,184(sp)
   1c680:	00700693          	li	a3,7
   1c684:	f2e6d663          	ble	a4,a3,1bdb0 <_svfprintf_r+0x7d4>
   1c688:	b65ff06f          	j	1c1ec <_svfprintf_r+0xc10>
   1c68c:	0b812703          	lw	a4,184(sp)
   1c690:	00913823          	sd	s1,16(sp)
   1c694:	01013683          	ld	a3,16(sp)
   1c698:	008787b3          	add	a5,a5,s0
   1c69c:	0017071b          	addiw	a4,a4,1
   1c6a0:	00d8b023          	sd	a3,0(a7)
   1c6a4:	0088b423          	sd	s0,8(a7)
   1c6a8:	0cf13023          	sd	a5,192(sp)
   1c6ac:	0ae12c23          	sw	a4,184(sp)
   1c6b0:	00700693          	li	a3,7
   1c6b4:	01088893          	addi	a7,a7,16
   1c6b8:	02e6d063          	ble	a4,a3,1c6d8 <_svfprintf_r+0x10fc>
   1c6bc:	0b010613          	addi	a2,sp,176
   1c6c0:	000b8593          	mv	a1,s7
   1c6c4:	000c0513          	mv	a0,s8
   1c6c8:	7e5020ef          	jal	1f6ac <__ssprint_r>
   1c6cc:	9a051863          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c6d0:	0c013783          	ld	a5,192(sp)
   1c6d4:	000a8893          	mv	a7,s5
   1c6d8:	04c12d03          	lw	s10,76(sp)
   1c6dc:	09812703          	lw	a4,152(sp)
   1c6e0:	07012683          	lw	a3,112(sp)
   1c6e4:	01a90d33          	add	s10,s2,s10
   1c6e8:	0cd74a63          	blt	a4,a3,1c7bc <_svfprintf_r+0x11e0>
   1c6ec:	001b7693          	andi	a3,s6,1
   1c6f0:	0c069663          	bnez	a3,1c7bc <_svfprintf_r+0x11e0>
   1c6f4:	07012683          	lw	a3,112(sp)
   1c6f8:	00d90433          	add	s0,s2,a3
   1c6fc:	41a40433          	sub	s0,s0,s10
   1c700:	40e6873b          	subw	a4,a3,a4
   1c704:	0004041b          	sext.w	s0,s0
   1c708:	00875463          	ble	s0,a4,1c710 <_svfprintf_r+0x1134>
   1c70c:	00070413          	mv	s0,a4
   1c710:	02805663          	blez	s0,1c73c <_svfprintf_r+0x1160>
   1c714:	0b812683          	lw	a3,184(sp)
   1c718:	008787b3          	add	a5,a5,s0
   1c71c:	01a8b023          	sd	s10,0(a7)
   1c720:	0016869b          	addiw	a3,a3,1
   1c724:	0088b423          	sd	s0,8(a7)
   1c728:	0cf13023          	sd	a5,192(sp)
   1c72c:	0ad12c23          	sw	a3,184(sp)
   1c730:	00700613          	li	a2,7
   1c734:	01088893          	addi	a7,a7,16
   1c738:	4ed64863          	blt	a2,a3,1cc28 <_svfprintf_r+0x164c>
   1c73c:	6c044863          	bltz	s0,1ce0c <_svfprintf_r+0x1830>
   1c740:	4087043b          	subw	s0,a4,s0
   1c744:	e6805863          	blez	s0,1bdb4 <_svfprintf_r+0x7d8>
   1c748:	01000713          	li	a4,16
   1c74c:	f08758e3          	ble	s0,a4,1c65c <_svfprintf_r+0x1080>
   1c750:	01000913          	li	s2,16
   1c754:	0b812703          	lw	a4,184(sp)
   1c758:	00913823          	sd	s1,16(sp)
   1c75c:	00700d13          	li	s10,7
   1c760:	00090693          	mv	a3,s2
   1c764:	00c0006f          	j	1c770 <_svfprintf_r+0x1194>
   1c768:	ff04041b          	addiw	s0,s0,-16
   1c76c:	ee86dce3          	ble	s0,a3,1c664 <_svfprintf_r+0x1088>
   1c770:	01078793          	addi	a5,a5,16
   1c774:	0017071b          	addiw	a4,a4,1
   1c778:	0098b023          	sd	s1,0(a7)
   1c77c:	0128b423          	sd	s2,8(a7)
   1c780:	0cf13023          	sd	a5,192(sp)
   1c784:	0ae12c23          	sw	a4,184(sp)
   1c788:	01088893          	addi	a7,a7,16
   1c78c:	fced5ee3          	ble	a4,s10,1c768 <_svfprintf_r+0x118c>
   1c790:	0b010613          	addi	a2,sp,176
   1c794:	000b8593          	mv	a1,s7
   1c798:	000c0513          	mv	a0,s8
   1c79c:	00d13023          	sd	a3,0(sp)
   1c7a0:	70d020ef          	jal	1f6ac <__ssprint_r>
   1c7a4:	8c051c63          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c7a8:	0c013783          	ld	a5,192(sp)
   1c7ac:	0b812703          	lw	a4,184(sp)
   1c7b0:	000a8893          	mv	a7,s5
   1c7b4:	00013683          	ld	a3,0(sp)
   1c7b8:	fb1ff06f          	j	1c768 <_svfprintf_r+0x118c>
   1c7bc:	06013683          	ld	a3,96(sp)
   1c7c0:	06813603          	ld	a2,104(sp)
   1c7c4:	01088893          	addi	a7,a7,16
   1c7c8:	fed8b823          	sd	a3,-16(a7)
   1c7cc:	0b812683          	lw	a3,184(sp)
   1c7d0:	00c787b3          	add	a5,a5,a2
   1c7d4:	fec8bc23          	sd	a2,-8(a7)
   1c7d8:	0016869b          	addiw	a3,a3,1
   1c7dc:	0cf13023          	sd	a5,192(sp)
   1c7e0:	0ad12c23          	sw	a3,184(sp)
   1c7e4:	00700613          	li	a2,7
   1c7e8:	f0d656e3          	ble	a3,a2,1c6f4 <_svfprintf_r+0x1118>
   1c7ec:	0b010613          	addi	a2,sp,176
   1c7f0:	000b8593          	mv	a1,s7
   1c7f4:	000c0513          	mv	a0,s8
   1c7f8:	6b5020ef          	jal	1f6ac <__ssprint_r>
   1c7fc:	88051063          	bnez	a0,1b87c <_svfprintf_r+0x2a0>
   1c800:	09812703          	lw	a4,152(sp)
   1c804:	0c013783          	ld	a5,192(sp)
   1c808:	000a8893          	mv	a7,s5
   1c80c:	ee9ff06f          	j	1c6f4 <_svfprintf_r+0x1118>
   1c810:	00eb7733          	and	a4,s6,a4
   1c814:	90071ee3          	bnez	a4,1c130 <_svfprintf_r+0xb54>
   1c818:	0b812703          	lw	a4,184(sp)
   1c81c:	0128b023          	sd	s2,0(a7)
   1c820:	00100693          	li	a3,1
   1c824:	0017071b          	addiw	a4,a4,1
   1c828:	985ff06f          	j	1c1ac <_svfprintf_r+0xbd0>
   1c82c:	02813783          	ld	a5,40(sp)
   1c830:	00878713          	addi	a4,a5,8
   1c834:	0007e783          	lwu	a5,0(a5)
   1c838:	a6045c63          	bgez	s0,1bab0 <_svfprintf_r+0x4d4>
   1c83c:	e0dff06f          	j	1c648 <_svfprintf_r+0x106c>
   1c840:	0b010613          	addi	a2,sp,176
   1c844:	000b8593          	mv	a1,s7
   1c848:	000c0513          	mv	a0,s8
   1c84c:	661020ef          	jal	1f6ac <__ssprint_r>
   1c850:	00050463          	beqz	a0,1c858 <_svfprintf_r+0x127c>
   1c854:	828ff06f          	j	1b87c <_svfprintf_r+0x2a0>
   1c858:	0c013783          	ld	a5,192(sp)
   1c85c:	0b812703          	lw	a4,184(sp)
   1c860:	000a8893          	mv	a7,s5
   1c864:	8f5ff06f          	j	1c158 <_svfprintf_r+0xb7c>
   1c868:	02813783          	ld	a5,40(sp)
   1c86c:	00878713          	addi	a4,a5,8
   1c870:	0007e783          	lwu	a5,0(a5)
   1c874:	88045663          	bgez	s0,1b900 <_svfprintf_r+0x324>
   1c878:	9fcff06f          	j	1ba74 <_svfprintf_r+0x498>
   1c87c:	0b010613          	addi	a2,sp,176
   1c880:	000b8593          	mv	a1,s7
   1c884:	000c0513          	mv	a0,s8
   1c888:	625020ef          	jal	1f6ac <__ssprint_r>
   1c88c:	00050463          	beqz	a0,1c894 <_svfprintf_r+0x12b8>
   1c890:	fedfe06f          	j	1b87c <_svfprintf_r+0x2a0>
   1c894:	0c013783          	ld	a5,192(sp)
   1c898:	0b812703          	lw	a4,184(sp)
   1c89c:	000a8893          	mv	a7,s5
   1c8a0:	8e5ff06f          	j	1c184 <_svfprintf_r+0xba8>
   1c8a4:	00000793          	li	a5,0
   1c8a8:	0307879b          	addiw	a5,a5,48
   1c8ac:	0ef107a3          	sb	a5,239(sp)
   1c8b0:	07813783          	ld	a5,120(sp)
   1c8b4:	0ef10913          	addi	s2,sp,239
   1c8b8:	02f12023          	sw	a5,32(sp)
   1c8bc:	f61fe06f          	j	1b81c <_svfprintf_r+0x240>
   1c8c0:	05813507          	fld	fa0,88(sp)
   1c8c4:	01113023          	sd	a7,0(sp)
   1c8c8:	b70fd0ef          	jal	19c38 <__fpclassifyd>
   1c8cc:	00013883          	ld	a7,0(sp)
   1c8d0:	1c051c63          	bnez	a0,1caa8 <_svfprintf_r+0x14cc>
   1c8d4:	04700793          	li	a5,71
   1c8d8:	39a7d063          	ble	s10,a5,1cc58 <_svfprintf_r+0x167c>
   1c8dc:	00022937          	lui	s2,0x22
   1c8e0:	28090913          	addi	s2,s2,640 # 22280 <zeroes.4123+0x38>
   1c8e4:	00300793          	li	a5,3
   1c8e8:	00f12423          	sw	a5,8(sp)
   1c8ec:	f7fb7b13          	andi	s6,s6,-129
   1c8f0:	08f14603          	lbu	a2,143(sp)
   1c8f4:	02f12023          	sw	a5,32(sp)
   1c8f8:	00000413          	li	s0,0
   1c8fc:	04012623          	sw	zero,76(sp)
   1c900:	f35fe06f          	j	1b834 <_svfprintf_r+0x258>
   1c904:	02813703          	ld	a4,40(sp)
   1c908:	040b7b13          	andi	s6,s6,64
   1c90c:	00073783          	ld	a5,0(a4)
   1c910:	00870713          	addi	a4,a4,8
   1c914:	02e13423          	sd	a4,40(sp)
   1c918:	420b0e63          	beqz	s6,1cd54 <_svfprintf_r+0x1778>
   1c91c:	01c15703          	lhu	a4,28(sp)
   1c920:	00e79023          	sh	a4,0(a5)
   1c924:	d85fe06f          	j	1b6a8 <_svfprintf_r+0xcc>
   1c928:	00072783          	lw	a5,0(a4)
   1c92c:	00870713          	addi	a4,a4,8
   1c930:	02e13423          	sd	a4,40(sp)
   1c934:	da0ff06f          	j	1bed4 <_svfprintf_r+0x8f8>
   1c938:	00076783          	lwu	a5,0(a4)
   1c93c:	00870713          	addi	a4,a4,8
   1c940:	02e13423          	sd	a4,40(sp)
   1c944:	848ff06f          	j	1b98c <_svfprintf_r+0x3b0>
   1c948:	080107a3          	sb	zero,143(sp)
   1c94c:	fa044063          	bltz	s0,1c0ec <_svfprintf_r+0xb10>
   1c950:	f7fb7b13          	andi	s6,s6,-129
   1c954:	e91fe06f          	j	1b7e4 <_svfprintf_r+0x208>
   1c958:	0b812703          	lw	a4,184(sp)
   1c95c:	00913823          	sd	s1,16(sp)
   1c960:	bdcff06f          	j	1bd3c <_svfprintf_r+0x760>
   1c964:	0b010613          	addi	a2,sp,176
   1c968:	000b8593          	mv	a1,s7
   1c96c:	000c0513          	mv	a0,s8
   1c970:	53d020ef          	jal	1f6ac <__ssprint_r>
   1c974:	00050463          	beqz	a0,1c97c <_svfprintf_r+0x13a0>
   1c978:	f05fe06f          	j	1b87c <_svfprintf_r+0x2a0>
   1c97c:	0c013783          	ld	a5,192(sp)
   1c980:	000a8893          	mv	a7,s5
   1c984:	8d5ff06f          	j	1c258 <_svfprintf_r+0xc7c>
   1c988:	0b812703          	lw	a4,184(sp)
   1c98c:	000226b7          	lui	a3,0x22
   1c990:	2c068693          	addi	a3,a3,704 # 222c0 <zeroes.4123+0x78>
   1c994:	00d8b023          	sd	a3,0(a7)
   1c998:	00178793          	addi	a5,a5,1
   1c99c:	00100693          	li	a3,1
   1c9a0:	0017071b          	addiw	a4,a4,1
   1c9a4:	00d8b423          	sd	a3,8(a7)
   1c9a8:	0cf13023          	sd	a5,192(sp)
   1c9ac:	0ae12c23          	sw	a4,184(sp)
   1c9b0:	00700693          	li	a3,7
   1c9b4:	01088893          	addi	a7,a7,16
   1c9b8:	2ae6c663          	blt	a3,a4,1cc64 <_svfprintf_r+0x1688>
   1c9bc:	00041a63          	bnez	s0,1c9d0 <_svfprintf_r+0x13f4>
   1c9c0:	07012703          	lw	a4,112(sp)
   1c9c4:	00071663          	bnez	a4,1c9d0 <_svfprintf_r+0x13f4>
   1c9c8:	001b7713          	andi	a4,s6,1
   1c9cc:	be070463          	beqz	a4,1bdb4 <_svfprintf_r+0x7d8>
   1c9d0:	06013703          	ld	a4,96(sp)
   1c9d4:	06813683          	ld	a3,104(sp)
   1c9d8:	01088893          	addi	a7,a7,16
   1c9dc:	fee8b823          	sd	a4,-16(a7)
   1c9e0:	0b812703          	lw	a4,184(sp)
   1c9e4:	00f687b3          	add	a5,a3,a5
   1c9e8:	fed8bc23          	sd	a3,-8(a7)
   1c9ec:	0017071b          	addiw	a4,a4,1
   1c9f0:	0cf13023          	sd	a5,192(sp)
   1c9f4:	0ae12c23          	sw	a4,184(sp)
   1c9f8:	00700693          	li	a3,7
   1c9fc:	30e6cc63          	blt	a3,a4,1cd14 <_svfprintf_r+0x1738>
   1ca00:	4080043b          	negw	s0,s0
   1ca04:	2e805e63          	blez	s0,1cd00 <_svfprintf_r+0x1724>
   1ca08:	01000693          	li	a3,16
   1ca0c:	2a86d263          	ble	s0,a3,1ccb0 <_svfprintf_r+0x16d4>
   1ca10:	01000d13          	li	s10,16
   1ca14:	00913823          	sd	s1,16(sp)
   1ca18:	00700813          	li	a6,7
   1ca1c:	000d0693          	mv	a3,s10
   1ca20:	00c0006f          	j	1ca2c <_svfprintf_r+0x1450>
   1ca24:	ff04041b          	addiw	s0,s0,-16
   1ca28:	2886d663          	ble	s0,a3,1ccb4 <_svfprintf_r+0x16d8>
   1ca2c:	01078793          	addi	a5,a5,16
   1ca30:	0017071b          	addiw	a4,a4,1
   1ca34:	0098b023          	sd	s1,0(a7)
   1ca38:	01a8b423          	sd	s10,8(a7)
   1ca3c:	0cf13023          	sd	a5,192(sp)
   1ca40:	0ae12c23          	sw	a4,184(sp)
   1ca44:	01088893          	addi	a7,a7,16
   1ca48:	fce85ee3          	ble	a4,a6,1ca24 <_svfprintf_r+0x1448>
   1ca4c:	0b010613          	addi	a2,sp,176
   1ca50:	000b8593          	mv	a1,s7
   1ca54:	000c0513          	mv	a0,s8
   1ca58:	02d13023          	sd	a3,32(sp)
   1ca5c:	01013023          	sd	a6,0(sp)
   1ca60:	44d020ef          	jal	1f6ac <__ssprint_r>
   1ca64:	00050463          	beqz	a0,1ca6c <_svfprintf_r+0x1490>
   1ca68:	e15fe06f          	j	1b87c <_svfprintf_r+0x2a0>
   1ca6c:	0c013783          	ld	a5,192(sp)
   1ca70:	0b812703          	lw	a4,184(sp)
   1ca74:	000a8893          	mv	a7,s5
   1ca78:	02013683          	ld	a3,32(sp)
   1ca7c:	00013803          	ld	a6,0(sp)
   1ca80:	fa5ff06f          	j	1ca24 <_svfprintf_r+0x1448>
   1ca84:	0b010613          	addi	a2,sp,176
   1ca88:	000b8593          	mv	a1,s7
   1ca8c:	000c0513          	mv	a0,s8
   1ca90:	41d020ef          	jal	1f6ac <__ssprint_r>
   1ca94:	00050463          	beqz	a0,1ca9c <_svfprintf_r+0x14c0>
   1ca98:	de5fe06f          	j	1b87c <_svfprintf_r+0x2a0>
   1ca9c:	0c013783          	ld	a5,192(sp)
   1caa0:	000a8893          	mv	a7,s5
   1caa4:	ff8ff06f          	j	1c29c <_svfprintf_r+0xcc0>
   1caa8:	fff00793          	li	a5,-1
   1caac:	fdfd7d93          	andi	s11,s10,-33
   1cab0:	28f40863          	beq	s0,a5,1cd40 <_svfprintf_r+0x1764>
   1cab4:	04700793          	li	a5,71
   1cab8:	44fd8e63          	beq	s11,a5,1cf14 <_svfprintf_r+0x1938>
   1cabc:	05813703          	ld	a4,88(sp)
   1cac0:	100b6693          	ori	a3,s6,256
   1cac4:	00d12023          	sw	a3,0(sp)
   1cac8:	42075793          	srai	a5,a4,0x20
   1cacc:	f2070453          	fmv.d.x	fs0,a4
   1cad0:	00000c93          	li	s9,0
   1cad4:	4407c663          	bltz	a5,1cf20 <_svfprintf_r+0x1944>
   1cad8:	06600793          	li	a5,102
   1cadc:	48fd0863          	beq	s10,a5,1cf6c <_svfprintf_r+0x1990>
   1cae0:	04600793          	li	a5,70
   1cae4:	4cfd0c63          	beq	s10,a5,1cfbc <_svfprintf_r+0x19e0>
   1cae8:	fbbd859b          	addiw	a1,s11,-69
   1caec:	0015b593          	seqz	a1,a1
   1caf0:	228405d3          	fmv.d	fa1,fs0
   1caf4:	00b405bb          	addw	a1,s0,a1
   1caf8:	09c10793          	addi	a5,sp,156
   1cafc:	00058693          	mv	a3,a1
   1cb00:	0a810813          	addi	a6,sp,168
   1cb04:	09810713          	addi	a4,sp,152
   1cb08:	00200613          	li	a2,2
   1cb0c:	000c0513          	mv	a0,s8
   1cb10:	01113823          	sd	a7,16(sp)
   1cb14:	00b13423          	sd	a1,8(sp)
   1cb18:	c29f80ef          	jal	15740 <_dtoa_r>
   1cb1c:	06700793          	li	a5,103
   1cb20:	00050913          	mv	s2,a0
   1cb24:	00813583          	ld	a1,8(sp)
   1cb28:	01013883          	ld	a7,16(sp)
   1cb2c:	2efd0c63          	beq	s10,a5,1ce24 <_svfprintf_r+0x1848>
   1cb30:	04700793          	li	a5,71
   1cb34:	00b50733          	add	a4,a0,a1
   1cb38:	60fd0663          	beq	s10,a5,1d144 <_svfprintf_r+0x1b68>
   1cb3c:	f20007d3          	fmv.d.x	fa5,zero
   1cb40:	00070793          	mv	a5,a4
   1cb44:	a2f426d3          	feq.d	a3,fs0,fa5
   1cb48:	02069263          	bnez	a3,1cb6c <_svfprintf_r+0x1590>
   1cb4c:	0a813783          	ld	a5,168(sp)
   1cb50:	00e7fe63          	bleu	a4,a5,1cb6c <_svfprintf_r+0x1590>
   1cb54:	03000613          	li	a2,48
   1cb58:	00178693          	addi	a3,a5,1
   1cb5c:	0ad13423          	sd	a3,168(sp)
   1cb60:	00c78023          	sb	a2,0(a5)
   1cb64:	0a813783          	ld	a5,168(sp)
   1cb68:	fee7e8e3          	bltu	a5,a4,1cb58 <_svfprintf_r+0x157c>
   1cb6c:	412787b3          	sub	a5,a5,s2
   1cb70:	06f12823          	sw	a5,112(sp)
   1cb74:	04700793          	li	a5,71
   1cb78:	2efd8663          	beq	s11,a5,1ce64 <_svfprintf_r+0x1888>
   1cb7c:	06500793          	li	a5,101
   1cb80:	5da7de63          	ble	s10,a5,1d15c <_svfprintf_r+0x1b80>
   1cb84:	06600793          	li	a5,102
   1cb88:	46fd0a63          	beq	s10,a5,1cffc <_svfprintf_r+0x1a20>
   1cb8c:	09812783          	lw	a5,152(sp)
   1cb90:	04f12623          	sw	a5,76(sp)
   1cb94:	04c12703          	lw	a4,76(sp)
   1cb98:	07012683          	lw	a3,112(sp)
   1cb9c:	00070793          	mv	a5,a4
   1cba0:	38d74663          	blt	a4,a3,1cf2c <_svfprintf_r+0x1950>
   1cba4:	001b7b13          	andi	s6,s6,1
   1cba8:	3a0b1463          	bnez	s6,1cf50 <_svfprintf_r+0x1974>
   1cbac:	60074a63          	bltz	a4,1d1c0 <_svfprintf_r+0x1be4>
   1cbb0:	04c12703          	lw	a4,76(sp)
   1cbb4:	06700d13          	li	s10,103
   1cbb8:	02e12023          	sw	a4,32(sp)
   1cbbc:	280c9663          	bnez	s9,1ce48 <_svfprintf_r+0x186c>
   1cbc0:	08f14603          	lbu	a2,143(sp)
   1cbc4:	00f12423          	sw	a5,8(sp)
   1cbc8:	00012b03          	lw	s6,0(sp)
   1cbcc:	00000413          	li	s0,0
   1cbd0:	c65fe06f          	j	1b834 <_svfprintf_r+0x258>
   1cbd4:	00022937          	lui	s2,0x22
   1cbd8:	26890913          	addi	s2,s2,616 # 22268 <zeroes.4123+0x20>
   1cbdc:	ba8ff06f          	j	1bf84 <_svfprintf_r+0x9a8>
   1cbe0:	0b010613          	addi	a2,sp,176
   1cbe4:	000b8593          	mv	a1,s7
   1cbe8:	000c0513          	mv	a0,s8
   1cbec:	2c1020ef          	jal	1f6ac <__ssprint_r>
   1cbf0:	00050463          	beqz	a0,1cbf8 <_svfprintf_r+0x161c>
   1cbf4:	c89fe06f          	j	1b87c <_svfprintf_r+0x2a0>
   1cbf8:	0c013783          	ld	a5,192(sp)
   1cbfc:	000a8893          	mv	a7,s5
   1cc00:	901ff06f          	j	1c500 <_svfprintf_r+0xf24>
   1cc04:	04000593          	li	a1,64
   1cc08:	000c0513          	mv	a0,s8
   1cc0c:	e74f40ef          	jal	11280 <_malloc_r>
   1cc10:	00abb023          	sd	a0,0(s7)
   1cc14:	00abbc23          	sd	a0,24(s7)
   1cc18:	58050063          	beqz	a0,1d198 <_svfprintf_r+0x1bbc>
   1cc1c:	04000793          	li	a5,64
   1cc20:	02fba023          	sw	a5,32(s7)
   1cc24:	a35fe06f          	j	1b658 <_svfprintf_r+0x7c>
   1cc28:	0b010613          	addi	a2,sp,176
   1cc2c:	000b8593          	mv	a1,s7
   1cc30:	000c0513          	mv	a0,s8
   1cc34:	279020ef          	jal	1f6ac <__ssprint_r>
   1cc38:	00050463          	beqz	a0,1cc40 <_svfprintf_r+0x1664>
   1cc3c:	c41fe06f          	j	1b87c <_svfprintf_r+0x2a0>
   1cc40:	09812703          	lw	a4,152(sp)
   1cc44:	07012683          	lw	a3,112(sp)
   1cc48:	0c013783          	ld	a5,192(sp)
   1cc4c:	000a8893          	mv	a7,s5
   1cc50:	40e6873b          	subw	a4,a3,a4
   1cc54:	ae9ff06f          	j	1c73c <_svfprintf_r+0x1160>
   1cc58:	00022937          	lui	s2,0x22
   1cc5c:	27890913          	addi	s2,s2,632 # 22278 <zeroes.4123+0x30>
   1cc60:	c85ff06f          	j	1c8e4 <_svfprintf_r+0x1308>
   1cc64:	0b010613          	addi	a2,sp,176
   1cc68:	000b8593          	mv	a1,s7
   1cc6c:	000c0513          	mv	a0,s8
   1cc70:	23d020ef          	jal	1f6ac <__ssprint_r>
   1cc74:	00050463          	beqz	a0,1cc7c <_svfprintf_r+0x16a0>
   1cc78:	c05fe06f          	j	1b87c <_svfprintf_r+0x2a0>
   1cc7c:	09812403          	lw	s0,152(sp)
   1cc80:	0c013783          	ld	a5,192(sp)
   1cc84:	000a8893          	mv	a7,s5
   1cc88:	d40414e3          	bnez	s0,1c9d0 <_svfprintf_r+0x13f4>
   1cc8c:	d35ff06f          	j	1c9c0 <_svfprintf_r+0x13e4>
   1cc90:	001b7793          	andi	a5,s6,1
   1cc94:	0a078a63          	beqz	a5,1cd48 <_svfprintf_r+0x176c>
   1cc98:	03000793          	li	a5,48
   1cc9c:	0ef107a3          	sb	a5,239(sp)
   1cca0:	07813783          	ld	a5,120(sp)
   1cca4:	0ef10913          	addi	s2,sp,239
   1cca8:	02f12023          	sw	a5,32(sp)
   1ccac:	b71fe06f          	j	1b81c <_svfprintf_r+0x240>
   1ccb0:	00913823          	sd	s1,16(sp)
   1ccb4:	01013683          	ld	a3,16(sp)
   1ccb8:	008787b3          	add	a5,a5,s0
   1ccbc:	0017071b          	addiw	a4,a4,1
   1ccc0:	00d8b023          	sd	a3,0(a7)
   1ccc4:	0088b423          	sd	s0,8(a7)
   1ccc8:	0cf13023          	sd	a5,192(sp)
   1cccc:	0ae12c23          	sw	a4,184(sp)
   1ccd0:	00700693          	li	a3,7
   1ccd4:	01088893          	addi	a7,a7,16
   1ccd8:	02e6d463          	ble	a4,a3,1cd00 <_svfprintf_r+0x1724>
   1ccdc:	0b010613          	addi	a2,sp,176
   1cce0:	000b8593          	mv	a1,s7
   1cce4:	000c0513          	mv	a0,s8
   1cce8:	1c5020ef          	jal	1f6ac <__ssprint_r>
   1ccec:	00050463          	beqz	a0,1ccf4 <_svfprintf_r+0x1718>
   1ccf0:	b8dfe06f          	j	1b87c <_svfprintf_r+0x2a0>
   1ccf4:	0c013783          	ld	a5,192(sp)
   1ccf8:	0b812703          	lw	a4,184(sp)
   1ccfc:	000a8893          	mv	a7,s5
   1cd00:	07012683          	lw	a3,112(sp)
   1cd04:	0017071b          	addiw	a4,a4,1
   1cd08:	0128b023          	sd	s2,0(a7)
   1cd0c:	00f687b3          	add	a5,a3,a5
   1cd10:	cc8ff06f          	j	1c1d8 <_svfprintf_r+0xbfc>
   1cd14:	0b010613          	addi	a2,sp,176
   1cd18:	000b8593          	mv	a1,s7
   1cd1c:	000c0513          	mv	a0,s8
   1cd20:	18d020ef          	jal	1f6ac <__ssprint_r>
   1cd24:	00050463          	beqz	a0,1cd2c <_svfprintf_r+0x1750>
   1cd28:	b55fe06f          	j	1b87c <_svfprintf_r+0x2a0>
   1cd2c:	09812403          	lw	s0,152(sp)
   1cd30:	0c013783          	ld	a5,192(sp)
   1cd34:	0b812703          	lw	a4,184(sp)
   1cd38:	000a8893          	mv	a7,s5
   1cd3c:	cc5ff06f          	j	1ca00 <_svfprintf_r+0x1424>
   1cd40:	00600413          	li	s0,6
   1cd44:	d79ff06f          	j	1cabc <_svfprintf_r+0x14e0>
   1cd48:	02012023          	sw	zero,32(sp)
   1cd4c:	000a8913          	mv	s2,s5
   1cd50:	acdfe06f          	j	1b81c <_svfprintf_r+0x240>
   1cd54:	01c12703          	lw	a4,28(sp)
   1cd58:	00e7a023          	sw	a4,0(a5)
   1cd5c:	94dfe06f          	j	1b6a8 <_svfprintf_r+0xcc>
   1cd60:	00090513          	mv	a0,s2
   1cd64:	a40f50ef          	jal	11fa4 <strlen>
   1cd68:	0005079b          	sext.w	a5,a0
   1cd6c:	02f12023          	sw	a5,32(sp)
   1cd70:	00078d93          	mv	s11,a5
   1cd74:	00013883          	ld	a7,0(sp)
   1cd78:	ac07d063          	bgez	a5,1c038 <_svfprintf_r+0xa5c>
   1cd7c:	00000d93          	li	s11,0
   1cd80:	ab8ff06f          	j	1c038 <_svfprintf_r+0xa5c>
   1cd84:	fff00513          	li	a0,-1
   1cd88:	b09fe06f          	j	1b890 <_svfprintf_r+0x2b4>
   1cd8c:	0c013783          	ld	a5,192(sp)
   1cd90:	0b812703          	lw	a4,184(sp)
   1cd94:	05413823          	sd	s4,80(sp)
   1cd98:	e7dfe06f          	j	1bc14 <_svfprintf_r+0x638>
   1cd9c:	00000413          	li	s0,0
   1cda0:	f64ff06f          	j	1c504 <_svfprintf_r+0xf28>
   1cda4:	02d00613          	li	a2,45
   1cda8:	00100713          	li	a4,1
   1cdac:	00100693          	li	a3,1
   1cdb0:	00d71463          	bne	a4,a3,1cdb8 <_svfprintf_r+0x17dc>
   1cdb4:	d0dfe06f          	j	1bac0 <_svfprintf_r+0x4e4>
   1cdb8:	00200693          	li	a3,2
   1cdbc:	00d70463          	beq	a4,a3,1cdc4 <_svfprintf_r+0x17e8>
   1cdc0:	b5dfe06f          	j	1b91c <_svfprintf_r+0x340>
   1cdc4:	a2dfe06f          	j	1b7f0 <_svfprintf_r+0x214>
   1cdc8:	00600713          	li	a4,6
   1cdcc:	00877463          	bleu	s0,a4,1cdd4 <_svfprintf_r+0x17f8>
   1cdd0:	00070413          	mv	s0,a4
   1cdd4:	02812023          	sw	s0,32(sp)
   1cdd8:	00040d93          	mv	s11,s0
   1cddc:	2c044463          	bltz	s0,1d0a4 <_svfprintf_r+0x1ac8>
   1cde0:	00022937          	lui	s2,0x22
   1cde4:	01b12423          	sw	s11,8(sp)
   1cde8:	03913423          	sd	s9,40(sp)
   1cdec:	00000613          	li	a2,0
   1cdf0:	00000413          	li	s0,0
   1cdf4:	04012623          	sw	zero,76(sp)
   1cdf8:	2b890913          	addi	s2,s2,696 # 222b8 <zeroes.4123+0x70>
   1cdfc:	d5dfe06f          	j	1bb58 <_svfprintf_r+0x57c>
   1ce00:	0b812703          	lw	a4,184(sp)
   1ce04:	05413823          	sd	s4,80(sp)
   1ce08:	838ff06f          	j	1be40 <_svfprintf_r+0x864>
   1ce0c:	00000413          	li	s0,0
   1ce10:	931ff06f          	j	1c740 <_svfprintf_r+0x1164>
   1ce14:	02d00793          	li	a5,45
   1ce18:	08f107a3          	sb	a5,143(sp)
   1ce1c:	02d00613          	li	a2,45
   1ce20:	954ff06f          	j	1bf74 <_svfprintf_r+0x998>
   1ce24:	001b7793          	andi	a5,s6,1
   1ce28:	00b50733          	add	a4,a0,a1
   1ce2c:	d00798e3          	bnez	a5,1cb3c <_svfprintf_r+0x1560>
   1ce30:	0a813783          	ld	a5,168(sp)
   1ce34:	d39ff06f          	j	1cb6c <_svfprintf_r+0x1590>
   1ce38:	00070b13          	mv	s6,a4
   1ce3c:	00000613          	li	a2,0
   1ce40:	00200713          	li	a4,2
   1ce44:	f69ff06f          	j	1cdac <_svfprintf_r+0x17d0>
   1ce48:	02d00713          	li	a4,45
   1ce4c:	08e107a3          	sb	a4,143(sp)
   1ce50:	00f12423          	sw	a5,8(sp)
   1ce54:	00012b03          	lw	s6,0(sp)
   1ce58:	02d00613          	li	a2,45
   1ce5c:	00000413          	li	s0,0
   1ce60:	9d9fe06f          	j	1b838 <_svfprintf_r+0x25c>
   1ce64:	09812783          	lw	a5,152(sp)
   1ce68:	ffd00713          	li	a4,-3
   1ce6c:	02e7cc63          	blt	a5,a4,1cea4 <_svfprintf_r+0x18c8>
   1ce70:	02f44a63          	blt	s0,a5,1cea4 <_svfprintf_r+0x18c8>
   1ce74:	04f12623          	sw	a5,76(sp)
   1ce78:	d1dff06f          	j	1cb94 <_svfprintf_r+0x15b8>
   1ce7c:	0b812703          	lw	a4,184(sp)
   1ce80:	00913823          	sd	s1,16(sp)
   1ce84:	d28ff06f          	j	1c3ac <_svfprintf_r+0xdd0>
   1ce88:	00812423          	sw	s0,8(sp)
   1ce8c:	02812023          	sw	s0,32(sp)
   1ce90:	08f14603          	lbu	a2,143(sp)
   1ce94:	03913423          	sd	s9,40(sp)
   1ce98:	00000413          	li	s0,0
   1ce9c:	04012623          	sw	zero,76(sp)
   1cea0:	995fe06f          	j	1b834 <_svfprintf_r+0x258>
   1cea4:	ffed0d1b          	addiw	s10,s10,-2
   1cea8:	fff7879b          	addiw	a5,a5,-1
   1ceac:	08f12c23          	sw	a5,152(sp)
   1ceb0:	0ba10023          	sb	s10,160(sp)
   1ceb4:	2607c263          	bltz	a5,1d118 <_svfprintf_r+0x1b3c>
   1ceb8:	02b00713          	li	a4,43
   1cebc:	0ae100a3          	sb	a4,161(sp)
   1cec0:	00900613          	li	a2,9
   1cec4:	14f64c63          	blt	a2,a5,1d01c <_svfprintf_r+0x1a40>
   1cec8:	0307879b          	addiw	a5,a5,48
   1cecc:	03000713          	li	a4,48
   1ced0:	0af101a3          	sb	a5,163(sp)
   1ced4:	0ae10123          	sb	a4,162(sp)
   1ced8:	0a410793          	addi	a5,sp,164
   1cedc:	0a010713          	addi	a4,sp,160
   1cee0:	40e787bb          	subw	a5,a5,a4
   1cee4:	07012703          	lw	a4,112(sp)
   1cee8:	06f12a23          	sw	a5,116(sp)
   1ceec:	00e787bb          	addw	a5,a5,a4
   1cef0:	02f12023          	sw	a5,32(sp)
   1cef4:	00100793          	li	a5,1
   1cef8:	22e7d863          	ble	a4,a5,1d128 <_svfprintf_r+0x1b4c>
   1cefc:	02012783          	lw	a5,32(sp)
   1cf00:	0017879b          	addiw	a5,a5,1
   1cf04:	02f12023          	sw	a5,32(sp)
   1cf08:	2207ca63          	bltz	a5,1d13c <_svfprintf_r+0x1b60>
   1cf0c:	04012623          	sw	zero,76(sp)
   1cf10:	cadff06f          	j	1cbbc <_svfprintf_r+0x15e0>
   1cf14:	ba0414e3          	bnez	s0,1cabc <_svfprintf_r+0x14e0>
   1cf18:	00090413          	mv	s0,s2
   1cf1c:	ba1ff06f          	j	1cabc <_svfprintf_r+0x14e0>
   1cf20:	22841453          	fneg.d	fs0,fs0
   1cf24:	02d00c93          	li	s9,45
   1cf28:	bb1ff06f          	j	1cad8 <_svfprintf_r+0x14fc>
   1cf2c:	04c12703          	lw	a4,76(sp)
   1cf30:	00100793          	li	a5,1
   1cf34:	1ae05c63          	blez	a4,1d0ec <_svfprintf_r+0x1b10>
   1cf38:	07012703          	lw	a4,112(sp)
   1cf3c:	00e787bb          	addw	a5,a5,a4
   1cf40:	02f12023          	sw	a5,32(sp)
   1cf44:	0007ce63          	bltz	a5,1cf60 <_svfprintf_r+0x1984>
   1cf48:	06700d13          	li	s10,103
   1cf4c:	c71ff06f          	j	1cbbc <_svfprintf_r+0x15e0>
   1cf50:	04c12783          	lw	a5,76(sp)
   1cf54:	0017879b          	addiw	a5,a5,1
   1cf58:	02f12023          	sw	a5,32(sp)
   1cf5c:	fe07d6e3          	bgez	a5,1cf48 <_svfprintf_r+0x196c>
   1cf60:	00000793          	li	a5,0
   1cf64:	06700d13          	li	s10,103
   1cf68:	c55ff06f          	j	1cbbc <_svfprintf_r+0x15e0>
   1cf6c:	228405d3          	fmv.d	fa1,fs0
   1cf70:	09810713          	addi	a4,sp,152
   1cf74:	0a810813          	addi	a6,sp,168
   1cf78:	09c10793          	addi	a5,sp,156
   1cf7c:	00040693          	mv	a3,s0
   1cf80:	00300613          	li	a2,3
   1cf84:	000c0513          	mv	a0,s8
   1cf88:	01113423          	sd	a7,8(sp)
   1cf8c:	fb4f80ef          	jal	15740 <_dtoa_r>
   1cf90:	00813883          	ld	a7,8(sp)
   1cf94:	00040713          	mv	a4,s0
   1cf98:	00050913          	mv	s2,a0
   1cf9c:	00e50733          	add	a4,a0,a4
   1cfa0:	00040593          	mv	a1,s0
   1cfa4:	00094683          	lbu	a3,0(s2)
   1cfa8:	03000793          	li	a5,48
   1cfac:	0cf68c63          	beq	a3,a5,1d084 <_svfprintf_r+0x1aa8>
   1cfb0:	09812583          	lw	a1,152(sp)
   1cfb4:	00b70733          	add	a4,a4,a1
   1cfb8:	b85ff06f          	j	1cb3c <_svfprintf_r+0x1560>
   1cfbc:	228405d3          	fmv.d	fa1,fs0
   1cfc0:	0a810813          	addi	a6,sp,168
   1cfc4:	09c10793          	addi	a5,sp,156
   1cfc8:	09810713          	addi	a4,sp,152
   1cfcc:	00040693          	mv	a3,s0
   1cfd0:	00300613          	li	a2,3
   1cfd4:	000c0513          	mv	a0,s8
   1cfd8:	01113423          	sd	a7,8(sp)
   1cfdc:	f64f80ef          	jal	15740 <_dtoa_r>
   1cfe0:	00813883          	ld	a7,8(sp)
   1cfe4:	00050913          	mv	s2,a0
   1cfe8:	00040593          	mv	a1,s0
   1cfec:	04600793          	li	a5,70
   1cff0:	00b90733          	add	a4,s2,a1
   1cff4:	fafd08e3          	beq	s10,a5,1cfa4 <_svfprintf_r+0x19c8>
   1cff8:	b45ff06f          	j	1cb3c <_svfprintf_r+0x1560>
   1cffc:	09812783          	lw	a5,152(sp)
   1d000:	04f12623          	sw	a5,76(sp)
   1d004:	0cf05263          	blez	a5,1d0c8 <_svfprintf_r+0x1aec>
   1d008:	0a041263          	bnez	s0,1d0ac <_svfprintf_r+0x1ad0>
   1d00c:	001b7b13          	andi	s6,s6,1
   1d010:	080b1e63          	bnez	s6,1d0ac <_svfprintf_r+0x1ad0>
   1d014:	02f12023          	sw	a5,32(sp)
   1d018:	ba5ff06f          	j	1cbbc <_svfprintf_r+0x15e0>
   1d01c:	0af10593          	addi	a1,sp,175
   1d020:	00058713          	mv	a4,a1
   1d024:	00a00513          	li	a0,10
   1d028:	02a7e6bb          	remw	a3,a5,a0
   1d02c:	fff70713          	addi	a4,a4,-1
   1d030:	02a7c7bb          	divw	a5,a5,a0
   1d034:	0306869b          	addiw	a3,a3,48
   1d038:	00d70023          	sb	a3,0(a4)
   1d03c:	fef646e3          	blt	a2,a5,1d028 <_svfprintf_r+0x1a4c>
   1d040:	0307879b          	addiw	a5,a5,48
   1d044:	0ff7f793          	andi	a5,a5,255
   1d048:	fff70693          	addi	a3,a4,-1
   1d04c:	fef70fa3          	sb	a5,-1(a4)
   1d050:	16b6f463          	bleu	a1,a3,1d1b8 <_svfprintf_r+0x1bdc>
   1d054:	0a210613          	addi	a2,sp,162
   1d058:	0080006f          	j	1d060 <_svfprintf_r+0x1a84>
   1d05c:	0006c783          	lbu	a5,0(a3)
   1d060:	00160613          	addi	a2,a2,1
   1d064:	00168693          	addi	a3,a3,1
   1d068:	fef60fa3          	sb	a5,-1(a2)
   1d06c:	feb698e3          	bne	a3,a1,1d05c <_svfprintf_r+0x1a80>
   1d070:	0b010793          	addi	a5,sp,176
   1d074:	40e787b3          	sub	a5,a5,a4
   1d078:	0a210713          	addi	a4,sp,162
   1d07c:	00f707b3          	add	a5,a4,a5
   1d080:	e5dff06f          	j	1cedc <_svfprintf_r+0x1900>
   1d084:	f20007d3          	fmv.d.x	fa5,zero
   1d088:	a2f427d3          	feq.d	a5,fs0,fa5
   1d08c:	f20792e3          	bnez	a5,1cfb0 <_svfprintf_r+0x19d4>
   1d090:	00100793          	li	a5,1
   1d094:	40b785bb          	subw	a1,a5,a1
   1d098:	08b12c23          	sw	a1,152(sp)
   1d09c:	00b70733          	add	a4,a4,a1
   1d0a0:	a9dff06f          	j	1cb3c <_svfprintf_r+0x1560>
   1d0a4:	00000d93          	li	s11,0
   1d0a8:	d39ff06f          	j	1cde0 <_svfprintf_r+0x1804>
   1d0ac:	04c12783          	lw	a5,76(sp)
   1d0b0:	0014041b          	addiw	s0,s0,1
   1d0b4:	008787bb          	addw	a5,a5,s0
   1d0b8:	02f12023          	sw	a5,32(sp)
   1d0bc:	b007d0e3          	bgez	a5,1cbbc <_svfprintf_r+0x15e0>
   1d0c0:	00000793          	li	a5,0
   1d0c4:	af9ff06f          	j	1cbbc <_svfprintf_r+0x15e0>
   1d0c8:	00041a63          	bnez	s0,1d0dc <_svfprintf_r+0x1b00>
   1d0cc:	00100793          	li	a5,1
   1d0d0:	00fb7b33          	and	s6,s6,a5
   1d0d4:	02f12023          	sw	a5,32(sp)
   1d0d8:	ae0b02e3          	beqz	s6,1cbbc <_svfprintf_r+0x15e0>
   1d0dc:	0024079b          	addiw	a5,s0,2
   1d0e0:	02f12023          	sw	a5,32(sp)
   1d0e4:	ac07dce3          	bgez	a5,1cbbc <_svfprintf_r+0x15e0>
   1d0e8:	fd9ff06f          	j	1d0c0 <_svfprintf_r+0x1ae4>
   1d0ec:	00200793          	li	a5,2
   1d0f0:	40e787bb          	subw	a5,a5,a4
   1d0f4:	e45ff06f          	j	1cf38 <_svfprintf_r+0x195c>
   1d0f8:	02813783          	ld	a5,40(sp)
   1d0fc:	0007a403          	lw	s0,0(a5)
   1d100:	00878793          	addi	a5,a5,8
   1d104:	02f13423          	sd	a5,40(sp)
   1d108:	00044463          	bltz	s0,1d110 <_svfprintf_r+0x1b34>
   1d10c:	e38fe06f          	j	1b744 <_svfprintf_r+0x168>
   1d110:	fff00413          	li	s0,-1
   1d114:	e30fe06f          	j	1b744 <_svfprintf_r+0x168>
   1d118:	02d00713          	li	a4,45
   1d11c:	40f007bb          	negw	a5,a5
   1d120:	0ae100a3          	sb	a4,161(sp)
   1d124:	d9dff06f          	j	1cec0 <_svfprintf_r+0x18e4>
   1d128:	00fb7b33          	and	s6,s6,a5
   1d12c:	dc0b18e3          	bnez	s6,1cefc <_svfprintf_r+0x1920>
   1d130:	02012703          	lw	a4,32(sp)
   1d134:	00070793          	mv	a5,a4
   1d138:	dc075ae3          	bgez	a4,1cf0c <_svfprintf_r+0x1930>
   1d13c:	00000793          	li	a5,0
   1d140:	dcdff06f          	j	1cf0c <_svfprintf_r+0x1930>
   1d144:	001b7793          	andi	a5,s6,1
   1d148:	ea0792e3          	bnez	a5,1cfec <_svfprintf_r+0x1a10>
   1d14c:	0a813783          	ld	a5,168(sp)
   1d150:	412787b3          	sub	a5,a5,s2
   1d154:	06f12823          	sw	a5,112(sp)
   1d158:	d1ad86e3          	beq	s11,s10,1ce64 <_svfprintf_r+0x1888>
   1d15c:	09812783          	lw	a5,152(sp)
   1d160:	d49ff06f          	j	1cea8 <_svfprintf_r+0x18cc>
   1d164:	08b107a3          	sb	a1,143(sp)
   1d168:	869fe06f          	j	1b9d0 <_svfprintf_r+0x3f4>
   1d16c:	08b107a3          	sb	a1,143(sp)
   1d170:	010b6b13          	ori	s6,s6,16
   1d174:	8ddfe06f          	j	1ba50 <_svfprintf_r+0x474>
   1d178:	08b107a3          	sb	a1,143(sp)
   1d17c:	f68fe06f          	j	1b8e4 <_svfprintf_r+0x308>
   1d180:	08b107a3          	sb	a1,143(sp)
   1d184:	dadfe06f          	j	1bf30 <_svfprintf_r+0x954>
   1d188:	08b107a3          	sb	a1,143(sp)
   1d18c:	969fe06f          	j	1baf4 <_svfprintf_r+0x518>
   1d190:	08b107a3          	sb	a1,143(sp)
   1d194:	8fdfe06f          	j	1ba90 <_svfprintf_r+0x4b4>
   1d198:	00c00793          	li	a5,12
   1d19c:	00fc2023          	sw	a5,0(s8)
   1d1a0:	fff00513          	li	a0,-1
   1d1a4:	eecfe06f          	j	1b890 <_svfprintf_r+0x2b4>
   1d1a8:	08b107a3          	sb	a1,143(sp)
   1d1ac:	d11fe06f          	j	1bebc <_svfprintf_r+0x8e0>
   1d1b0:	08b107a3          	sb	a1,143(sp)
   1d1b4:	ef1fe06f          	j	1c0a4 <_svfprintf_r+0xac8>
   1d1b8:	0a210793          	addi	a5,sp,162
   1d1bc:	d21ff06f          	j	1cedc <_svfprintf_r+0x1900>
   1d1c0:	00000793          	li	a5,0
   1d1c4:	9edff06f          	j	1cbb0 <_svfprintf_r+0x15d4>
   1d1c8:	08b107a3          	sb	a1,143(sp)
   1d1cc:	010b6b13          	ori	s6,s6,16
   1d1d0:	de5fe06f          	j	1bfb4 <_svfprintf_r+0x9d8>
   1d1d4:	08b107a3          	sb	a1,143(sp)
   1d1d8:	f90fe06f          	j	1b968 <_svfprintf_r+0x38c>

000000000001d1dc <__submore>:
   1d1dc:	fd010113          	addi	sp,sp,-48
   1d1e0:	02813023          	sd	s0,32(sp)
   1d1e4:	00058413          	mv	s0,a1
   1d1e8:	0585b583          	ld	a1,88(a1)
   1d1ec:	02113423          	sd	ra,40(sp)
   1d1f0:	00913c23          	sd	s1,24(sp)
   1d1f4:	01213823          	sd	s2,16(sp)
   1d1f8:	01313423          	sd	s3,8(sp)
   1d1fc:	01413023          	sd	s4,0(sp)
   1d200:	07440793          	addi	a5,s0,116
   1d204:	06f58063          	beq	a1,a5,1d264 <__submore+0x88>
   1d208:	06042983          	lw	s3,96(s0)
   1d20c:	00199a1b          	slliw	s4,s3,0x1
   1d210:	000a0613          	mv	a2,s4
   1d214:	980fc0ef          	jal	19394 <_realloc_r>
   1d218:	00050493          	mv	s1,a0
   1d21c:	0a050463          	beqz	a0,1d2c4 <__submore+0xe8>
   1d220:	01350933          	add	s2,a0,s3
   1d224:	00050593          	mv	a1,a0
   1d228:	00098613          	mv	a2,s3
   1d22c:	00090513          	mv	a0,s2
   1d230:	fc0f40ef          	jal	119f0 <memcpy>
   1d234:	00000513          	li	a0,0
   1d238:	01243023          	sd	s2,0(s0)
   1d23c:	04943c23          	sd	s1,88(s0)
   1d240:	07442023          	sw	s4,96(s0)
   1d244:	02813083          	ld	ra,40(sp)
   1d248:	02013403          	ld	s0,32(sp)
   1d24c:	01813483          	ld	s1,24(sp)
   1d250:	01013903          	ld	s2,16(sp)
   1d254:	00813983          	ld	s3,8(sp)
   1d258:	00013a03          	ld	s4,0(sp)
   1d25c:	03010113          	addi	sp,sp,48
   1d260:	00008067          	ret
   1d264:	40000593          	li	a1,1024
   1d268:	818f40ef          	jal	11280 <_malloc_r>
   1d26c:	00050793          	mv	a5,a0
   1d270:	04050a63          	beqz	a0,1d2c4 <__submore+0xe8>
   1d274:	07644703          	lbu	a4,118(s0)
   1d278:	40000693          	li	a3,1024
   1d27c:	04a43c23          	sd	a0,88(s0)
   1d280:	06d42023          	sw	a3,96(s0)
   1d284:	3ee50fa3          	sb	a4,1023(a0)
   1d288:	07544683          	lbu	a3,117(s0)
   1d28c:	3fd50713          	addi	a4,a0,1021
   1d290:	00000513          	li	a0,0
   1d294:	3ed78f23          	sb	a3,1022(a5)
   1d298:	07444683          	lbu	a3,116(s0)
   1d29c:	3ed78ea3          	sb	a3,1021(a5)
   1d2a0:	02813083          	ld	ra,40(sp)
   1d2a4:	00e43023          	sd	a4,0(s0)
   1d2a8:	01813483          	ld	s1,24(sp)
   1d2ac:	02013403          	ld	s0,32(sp)
   1d2b0:	01013903          	ld	s2,16(sp)
   1d2b4:	00813983          	ld	s3,8(sp)
   1d2b8:	00013a03          	ld	s4,0(sp)
   1d2bc:	03010113          	addi	sp,sp,48
   1d2c0:	00008067          	ret
   1d2c4:	fff00513          	li	a0,-1
   1d2c8:	f7dff06f          	j	1d244 <__submore+0x68>

000000000001d2cc <_ungetc_r>:
   1d2cc:	fff00793          	li	a5,-1
   1d2d0:	1cf58063          	beq	a1,a5,1d490 <_ungetc_r+0x1c4>
   1d2d4:	fd010113          	addi	sp,sp,-48
   1d2d8:	02813023          	sd	s0,32(sp)
   1d2dc:	00913c23          	sd	s1,24(sp)
   1d2e0:	01313423          	sd	s3,8(sp)
   1d2e4:	02113423          	sd	ra,40(sp)
   1d2e8:	01213823          	sd	s2,16(sp)
   1d2ec:	00050493          	mv	s1,a0
   1d2f0:	00060413          	mv	s0,a2
   1d2f4:	00058993          	mv	s3,a1
   1d2f8:	00050663          	beqz	a0,1d304 <_ungetc_r+0x38>
   1d2fc:	05052783          	lw	a5,80(a0)
   1d300:	0c078c63          	beqz	a5,1d3d8 <_ungetc_r+0x10c>
   1d304:	01041783          	lh	a5,16(s0)
   1d308:	03279713          	slli	a4,a5,0x32
   1d30c:	02074463          	bltz	a4,1d334 <_ungetc_r+0x68>
   1d310:	0ac42683          	lw	a3,172(s0)
   1d314:	00002737          	lui	a4,0x2
   1d318:	00e7e7b3          	or	a5,a5,a4
   1d31c:	ffffe737          	lui	a4,0xffffe
   1d320:	fff7071b          	addiw	a4,a4,-1
   1d324:	00e6f733          	and	a4,a3,a4
   1d328:	0107979b          	slliw	a5,a5,0x10
   1d32c:	4107d79b          	sraiw	a5,a5,0x10
   1d330:	0ae42623          	sw	a4,172(s0)
   1d334:	fdf7f793          	andi	a5,a5,-33
   1d338:	0107979b          	slliw	a5,a5,0x10
   1d33c:	4107d79b          	sraiw	a5,a5,0x10
   1d340:	03079713          	slli	a4,a5,0x30
   1d344:	03075713          	srli	a4,a4,0x30
   1d348:	00f41823          	sh	a5,16(s0)
   1d34c:	00477693          	andi	a3,a4,4
   1d350:	00069e63          	bnez	a3,1d36c <_ungetc_r+0xa0>
   1d354:	01077693          	andi	a3,a4,16
   1d358:	06068c63          	beqz	a3,1d3d0 <_ungetc_r+0x104>
   1d35c:	00877713          	andi	a4,a4,8
   1d360:	0e071463          	bnez	a4,1d448 <_ungetc_r+0x17c>
   1d364:	0047e793          	ori	a5,a5,4
   1d368:	00f41823          	sh	a5,16(s0)
   1d36c:	05843783          	ld	a5,88(s0)
   1d370:	0ff9f913          	andi	s2,s3,255
   1d374:	06078663          	beqz	a5,1d3e0 <_ungetc_r+0x114>
   1d378:	00842703          	lw	a4,8(s0)
   1d37c:	06042783          	lw	a5,96(s0)
   1d380:	04f75063          	ble	a5,a4,1d3c0 <_ungetc_r+0xf4>
   1d384:	00043783          	ld	a5,0(s0)
   1d388:	00090513          	mv	a0,s2
   1d38c:	fff78713          	addi	a4,a5,-1
   1d390:	00e43023          	sd	a4,0(s0)
   1d394:	ff378fa3          	sb	s3,-1(a5)
   1d398:	00842783          	lw	a5,8(s0)
   1d39c:	0017879b          	addiw	a5,a5,1
   1d3a0:	00f42423          	sw	a5,8(s0)
   1d3a4:	02813083          	ld	ra,40(sp)
   1d3a8:	02013403          	ld	s0,32(sp)
   1d3ac:	01813483          	ld	s1,24(sp)
   1d3b0:	01013903          	ld	s2,16(sp)
   1d3b4:	00813983          	ld	s3,8(sp)
   1d3b8:	03010113          	addi	sp,sp,48
   1d3bc:	00008067          	ret
   1d3c0:	00040593          	mv	a1,s0
   1d3c4:	00048513          	mv	a0,s1
   1d3c8:	e15ff0ef          	jal	1d1dc <__submore>
   1d3cc:	fa050ce3          	beqz	a0,1d384 <_ungetc_r+0xb8>
   1d3d0:	fff00513          	li	a0,-1
   1d3d4:	fd1ff06f          	j	1d3a4 <_ungetc_r+0xd8>
   1d3d8:	a7df90ef          	jal	16e54 <__sinit>
   1d3dc:	f29ff06f          	j	1d304 <_ungetc_r+0x38>
   1d3e0:	01843703          	ld	a4,24(s0)
   1d3e4:	00043783          	ld	a5,0(s0)
   1d3e8:	00070863          	beqz	a4,1d3f8 <_ungetc_r+0x12c>
   1d3ec:	00f77663          	bleu	a5,a4,1d3f8 <_ungetc_r+0x12c>
   1d3f0:	fff7c703          	lbu	a4,-1(a5)
   1d3f4:	08e90063          	beq	s2,a4,1d474 <_ungetc_r+0x1a8>
   1d3f8:	07340b23          	sb	s3,118(s0)
   1d3fc:	00842603          	lw	a2,8(s0)
   1d400:	02813083          	ld	ra,40(sp)
   1d404:	06f43423          	sd	a5,104(s0)
   1d408:	00300793          	li	a5,3
   1d40c:	07440693          	addi	a3,s0,116
   1d410:	07640713          	addi	a4,s0,118
   1d414:	06f42023          	sw	a5,96(s0)
   1d418:	00100793          	li	a5,1
   1d41c:	00090513          	mv	a0,s2
   1d420:	06c42823          	sw	a2,112(s0)
   1d424:	04d43c23          	sd	a3,88(s0)
   1d428:	00e43023          	sd	a4,0(s0)
   1d42c:	00f42423          	sw	a5,8(s0)
   1d430:	01813483          	ld	s1,24(sp)
   1d434:	02013403          	ld	s0,32(sp)
   1d438:	01013903          	ld	s2,16(sp)
   1d43c:	00813983          	ld	s3,8(sp)
   1d440:	03010113          	addi	sp,sp,48
   1d444:	00008067          	ret
   1d448:	00040593          	mv	a1,s0
   1d44c:	00048513          	mv	a0,s1
   1d450:	e58f90ef          	jal	16aa8 <_fflush_r>
   1d454:	f6051ee3          	bnez	a0,1d3d0 <_ungetc_r+0x104>
   1d458:	01045783          	lhu	a5,16(s0)
   1d45c:	00042623          	sw	zero,12(s0)
   1d460:	02042423          	sw	zero,40(s0)
   1d464:	ff77f793          	andi	a5,a5,-9
   1d468:	0107979b          	slliw	a5,a5,0x10
   1d46c:	4107d79b          	sraiw	a5,a5,0x10
   1d470:	ef5ff06f          	j	1d364 <_ungetc_r+0x98>
   1d474:	00842703          	lw	a4,8(s0)
   1d478:	fff78793          	addi	a5,a5,-1
   1d47c:	00f43023          	sd	a5,0(s0)
   1d480:	0017079b          	addiw	a5,a4,1
   1d484:	00f42423          	sw	a5,8(s0)
   1d488:	00090513          	mv	a0,s2
   1d48c:	f19ff06f          	j	1d3a4 <_ungetc_r+0xd8>
   1d490:	fff00513          	li	a0,-1
   1d494:	00008067          	ret

000000000001d498 <ungetc>:
   1d498:	00058613          	mv	a2,a1
   1d49c:	00050593          	mv	a1,a0
   1d4a0:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   1d4a4:	e29ff06f          	j	1d2cc <_ungetc_r>

000000000001d4a8 <__sprint_r.part.0>:
   1d4a8:	0ac5a783          	lw	a5,172(a1)
   1d4ac:	fb010113          	addi	sp,sp,-80
   1d4b0:	01613823          	sd	s6,16(sp)
   1d4b4:	04113423          	sd	ra,72(sp)
   1d4b8:	04813023          	sd	s0,64(sp)
   1d4bc:	02913c23          	sd	s1,56(sp)
   1d4c0:	03213823          	sd	s2,48(sp)
   1d4c4:	03313423          	sd	s3,40(sp)
   1d4c8:	03413023          	sd	s4,32(sp)
   1d4cc:	01513c23          	sd	s5,24(sp)
   1d4d0:	01713423          	sd	s7,8(sp)
   1d4d4:	03279713          	slli	a4,a5,0x32
   1d4d8:	00060b13          	mv	s6,a2
   1d4dc:	0a075863          	bgez	a4,1d58c <__sprint_r.part.0+0xe4>
   1d4e0:	01063783          	ld	a5,16(a2)
   1d4e4:	00058a13          	mv	s4,a1
   1d4e8:	00050a93          	mv	s5,a0
   1d4ec:	00063b83          	ld	s7,0(a2)
   1d4f0:	fff00993          	li	s3,-1
   1d4f4:	08078863          	beqz	a5,1d584 <__sprint_r.part.0+0xdc>
   1d4f8:	008bb903          	ld	s2,8(s7)
   1d4fc:	000bb483          	ld	s1,0(s7)
   1d500:	00000413          	li	s0,0
   1d504:	00295913          	srli	s2,s2,0x2
   1d508:	0009091b          	sext.w	s2,s2
   1d50c:	01204863          	bgtz	s2,1d51c <__sprint_r.part.0+0x74>
   1d510:	0600006f          	j	1d570 <__sprint_r.part.0+0xc8>
   1d514:	00448493          	addi	s1,s1,4
   1d518:	04890a63          	beq	s2,s0,1d56c <__sprint_r.part.0+0xc4>
   1d51c:	0004a583          	lw	a1,0(s1)
   1d520:	000a0613          	mv	a2,s4
   1d524:	000a8513          	mv	a0,s5
   1d528:	524010ef          	jal	1ea4c <_fputwc_r>
   1d52c:	0014041b          	addiw	s0,s0,1
   1d530:	ff3512e3          	bne	a0,s3,1d514 <__sprint_r.part.0+0x6c>
   1d534:	00098513          	mv	a0,s3
   1d538:	04813083          	ld	ra,72(sp)
   1d53c:	000b3823          	sd	zero,16(s6)
   1d540:	000b2423          	sw	zero,8(s6)
   1d544:	04013403          	ld	s0,64(sp)
   1d548:	03813483          	ld	s1,56(sp)
   1d54c:	03013903          	ld	s2,48(sp)
   1d550:	02813983          	ld	s3,40(sp)
   1d554:	02013a03          	ld	s4,32(sp)
   1d558:	01813a83          	ld	s5,24(sp)
   1d55c:	01013b03          	ld	s6,16(sp)
   1d560:	00813b83          	ld	s7,8(sp)
   1d564:	05010113          	addi	sp,sp,80
   1d568:	00008067          	ret
   1d56c:	010b3783          	ld	a5,16(s6)
   1d570:	00291913          	slli	s2,s2,0x2
   1d574:	412787b3          	sub	a5,a5,s2
   1d578:	00fb3823          	sd	a5,16(s6)
   1d57c:	010b8b93          	addi	s7,s7,16
   1d580:	f6079ce3          	bnez	a5,1d4f8 <__sprint_r.part.0+0x50>
   1d584:	00000513          	li	a0,0
   1d588:	fb1ff06f          	j	1d538 <__sprint_r.part.0+0x90>
   1d58c:	f9df90ef          	jal	17528 <__sfvwrite_r>
   1d590:	fa9ff06f          	j	1d538 <__sprint_r.part.0+0x90>

000000000001d594 <__sprint_r>:
   1d594:	01063703          	ld	a4,16(a2)
   1d598:	00070463          	beqz	a4,1d5a0 <__sprint_r+0xc>
   1d59c:	f0dff06f          	j	1d4a8 <__sprint_r.part.0>
   1d5a0:	00062423          	sw	zero,8(a2)
   1d5a4:	00000513          	li	a0,0
   1d5a8:	00008067          	ret

000000000001d5ac <_vfiprintf_r>:
   1d5ac:	e6010113          	addi	sp,sp,-416
   1d5b0:	17513423          	sd	s5,360(sp)
   1d5b4:	17613023          	sd	s6,352(sp)
   1d5b8:	15a13023          	sd	s10,320(sp)
   1d5bc:	18113c23          	sd	ra,408(sp)
   1d5c0:	18813823          	sd	s0,400(sp)
   1d5c4:	18913423          	sd	s1,392(sp)
   1d5c8:	19213023          	sd	s2,384(sp)
   1d5cc:	17313c23          	sd	s3,376(sp)
   1d5d0:	17413823          	sd	s4,368(sp)
   1d5d4:	15713c23          	sd	s7,344(sp)
   1d5d8:	15813823          	sd	s8,336(sp)
   1d5dc:	15913423          	sd	s9,328(sp)
   1d5e0:	13b13c23          	sd	s11,312(sp)
   1d5e4:	00d13423          	sd	a3,8(sp)
   1d5e8:	00050a93          	mv	s5,a0
   1d5ec:	00058d13          	mv	s10,a1
   1d5f0:	00060b13          	mv	s6,a2
   1d5f4:	00050663          	beqz	a0,1d600 <_vfiprintf_r+0x54>
   1d5f8:	05052783          	lw	a5,80(a0)
   1d5fc:	1e078c63          	beqz	a5,1d7f4 <_vfiprintf_r+0x248>
   1d600:	010d1683          	lh	a3,16(s10)
   1d604:	03069793          	slli	a5,a3,0x30
   1d608:	0307d793          	srli	a5,a5,0x30
   1d60c:	03279713          	slli	a4,a5,0x32
   1d610:	02074a63          	bltz	a4,1d644 <_vfiprintf_r+0x98>
   1d614:	000027b7          	lui	a5,0x2
   1d618:	0acd2603          	lw	a2,172(s10)
   1d61c:	00f6e7b3          	or	a5,a3,a5
   1d620:	0107979b          	slliw	a5,a5,0x10
   1d624:	ffffe737          	lui	a4,0xffffe
   1d628:	4107d79b          	sraiw	a5,a5,0x10
   1d62c:	fff7071b          	addiw	a4,a4,-1
   1d630:	00e67733          	and	a4,a2,a4
   1d634:	00fd1823          	sh	a5,16(s10)
   1d638:	03079793          	slli	a5,a5,0x30
   1d63c:	0aed2623          	sw	a4,172(s10)
   1d640:	0307d793          	srli	a5,a5,0x30
   1d644:	0087f713          	andi	a4,a5,8
   1d648:	12070a63          	beqz	a4,1d77c <_vfiprintf_r+0x1d0>
   1d64c:	018d3703          	ld	a4,24(s10)
   1d650:	12070663          	beqz	a4,1d77c <_vfiprintf_r+0x1d0>
   1d654:	01a7f793          	andi	a5,a5,26
   1d658:	00a00713          	li	a4,10
   1d65c:	14e78063          	beq	a5,a4,1d79c <_vfiprintf_r+0x1f0>
   1d660:	0b010c93          	addi	s9,sp,176
   1d664:	00022c37          	lui	s8,0x22
   1d668:	0af10793          	addi	a5,sp,175
   1d66c:	e48c0713          	addi	a4,s8,-440 # 21e48 <zeroes.4179+0x10>
   1d670:	40fc87b3          	sub	a5,s9,a5
   1d674:	000228b7          	lui	a7,0x22
   1d678:	07913823          	sd	s9,112(sp)
   1d67c:	08013023          	sd	zero,128(sp)
   1d680:	06012c23          	sw	zero,120(sp)
   1d684:	000c8413          	mv	s0,s9
   1d688:	00013c23          	sd	zero,24(sp)
   1d68c:	04012c23          	sw	zero,88(sp)
   1d690:	00e13823          	sd	a4,16(sp)
   1d694:	fb088c13          	addi	s8,a7,-80 # 21fb0 <blanks.4136>
   1d698:	04f12e23          	sw	a5,92(sp)
   1d69c:	000b4783          	lbu	a5,0(s6)
   1d6a0:	4e078ee3          	beqz	a5,1e39c <_vfiprintf_r+0xdf0>
   1d6a4:	02500713          	li	a4,37
   1d6a8:	000b0493          	mv	s1,s6
   1d6ac:	00e79663          	bne	a5,a4,1d6b8 <_vfiprintf_r+0x10c>
   1d6b0:	0580006f          	j	1d708 <_vfiprintf_r+0x15c>
   1d6b4:	00e78863          	beq	a5,a4,1d6c4 <_vfiprintf_r+0x118>
   1d6b8:	00148493          	addi	s1,s1,1
   1d6bc:	0004c783          	lbu	a5,0(s1)
   1d6c0:	fe079ae3          	bnez	a5,1d6b4 <_vfiprintf_r+0x108>
   1d6c4:	4164893b          	subw	s2,s1,s6
   1d6c8:	04090063          	beqz	s2,1d708 <_vfiprintf_r+0x15c>
   1d6cc:	08013703          	ld	a4,128(sp)
   1d6d0:	07812783          	lw	a5,120(sp)
   1d6d4:	00090613          	mv	a2,s2
   1d6d8:	00e60733          	add	a4,a2,a4
   1d6dc:	0017879b          	addiw	a5,a5,1
   1d6e0:	00c43423          	sd	a2,8(s0)
   1d6e4:	01643023          	sd	s6,0(s0)
   1d6e8:	08e13023          	sd	a4,128(sp)
   1d6ec:	06f12c23          	sw	a5,120(sp)
   1d6f0:	00700613          	li	a2,7
   1d6f4:	01040413          	addi	s0,s0,16
   1d6f8:	06f64463          	blt	a2,a5,1d760 <_vfiprintf_r+0x1b4>
   1d6fc:	05812783          	lw	a5,88(sp)
   1d700:	012787bb          	addw	a5,a5,s2
   1d704:	04f12c23          	sw	a5,88(sp)
   1d708:	0004c783          	lbu	a5,0(s1)
   1d70c:	580786e3          	beqz	a5,1e498 <_vfiprintf_r+0xeec>
   1d710:	00148813          	addi	a6,s1,1
   1d714:	060103a3          	sb	zero,103(sp)
   1d718:	00000513          	li	a0,0
   1d71c:	00000e93          	li	t4,0
   1d720:	fff00493          	li	s1,-1
   1d724:	00000913          	li	s2,0
   1d728:	00000313          	li	t1,0
   1d72c:	05800613          	li	a2,88
   1d730:	00900593          	li	a1,9
   1d734:	02a00f13          	li	t5,42
   1d738:	00084703          	lbu	a4,0(a6)
   1d73c:	00180b13          	addi	s6,a6,1
   1d740:	fe07079b          	addiw	a5,a4,-32
   1d744:	66f66263          	bltu	a2,a5,1dda8 <_vfiprintf_r+0x7fc>
   1d748:	01013683          	ld	a3,16(sp)
   1d74c:	02079793          	slli	a5,a5,0x20
   1d750:	01e7d793          	srli	a5,a5,0x1e
   1d754:	00d787b3          	add	a5,a5,a3
   1d758:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   1d75c:	00078067          	jr	a5
   1d760:	2e071ee3          	bnez	a4,1e25c <_vfiprintf_r+0xcb0>
   1d764:	06012c23          	sw	zero,120(sp)
   1d768:	000c8413          	mv	s0,s9
   1d76c:	f91ff06f          	j	1d6fc <_vfiprintf_r+0x150>
   1d770:	01036313          	ori	t1,t1,16
   1d774:	000b0813          	mv	a6,s6
   1d778:	fc1ff06f          	j	1d738 <_vfiprintf_r+0x18c>
   1d77c:	000d0593          	mv	a1,s10
   1d780:	000a8513          	mv	a0,s5
   1d784:	9cdf70ef          	jal	15150 <__swsetup_r>
   1d788:	4e0512e3          	bnez	a0,1e46c <_vfiprintf_r+0xec0>
   1d78c:	010d5783          	lhu	a5,16(s10)
   1d790:	00a00713          	li	a4,10
   1d794:	01a7f793          	andi	a5,a5,26
   1d798:	ece794e3          	bne	a5,a4,1d660 <_vfiprintf_r+0xb4>
   1d79c:	012d1783          	lh	a5,18(s10)
   1d7a0:	ec07c0e3          	bltz	a5,1d660 <_vfiprintf_r+0xb4>
   1d7a4:	00813683          	ld	a3,8(sp)
   1d7a8:	000b0613          	mv	a2,s6
   1d7ac:	000d0593          	mv	a1,s10
   1d7b0:	000a8513          	mv	a0,s5
   1d7b4:	6a9000ef          	jal	1e65c <__sbprintf>
   1d7b8:	19813083          	ld	ra,408(sp)
   1d7bc:	19013403          	ld	s0,400(sp)
   1d7c0:	18813483          	ld	s1,392(sp)
   1d7c4:	18013903          	ld	s2,384(sp)
   1d7c8:	17813983          	ld	s3,376(sp)
   1d7cc:	17013a03          	ld	s4,368(sp)
   1d7d0:	16813a83          	ld	s5,360(sp)
   1d7d4:	16013b03          	ld	s6,352(sp)
   1d7d8:	15813b83          	ld	s7,344(sp)
   1d7dc:	15013c03          	ld	s8,336(sp)
   1d7e0:	14813c83          	ld	s9,328(sp)
   1d7e4:	14013d03          	ld	s10,320(sp)
   1d7e8:	13813d83          	ld	s11,312(sp)
   1d7ec:	1a010113          	addi	sp,sp,416
   1d7f0:	00008067          	ret
   1d7f4:	e60f90ef          	jal	16e54 <__sinit>
   1d7f8:	e09ff06f          	j	1d600 <_vfiprintf_r+0x54>
   1d7fc:	00813783          	ld	a5,8(sp)
   1d800:	0007a903          	lw	s2,0(a5)
   1d804:	00878793          	addi	a5,a5,8
   1d808:	00f13423          	sd	a5,8(sp)
   1d80c:	f60954e3          	bgez	s2,1d774 <_vfiprintf_r+0x1c8>
   1d810:	4120093b          	negw	s2,s2
   1d814:	00436313          	ori	t1,t1,4
   1d818:	000b0813          	mv	a6,s6
   1d81c:	f1dff06f          	j	1d738 <_vfiprintf_r+0x18c>
   1d820:	03000793          	li	a5,48
   1d824:	06f10423          	sb	a5,104(sp)
   1d828:	07800793          	li	a5,120
   1d82c:	06f104a3          	sb	a5,105(sp)
   1d830:	00813783          	ld	a5,8(sp)
   1d834:	060103a3          	sb	zero,103(sp)
   1d838:	00236613          	ori	a2,t1,2
   1d83c:	00878713          	addi	a4,a5,8
   1d840:	0007b783          	ld	a5,0(a5)
   1d844:	2e04cce3          	bltz	s1,1e33c <_vfiprintf_r+0xd90>
   1d848:	f7f37313          	andi	t1,t1,-129
   1d84c:	00e13423          	sd	a4,8(sp)
   1d850:	00236313          	ori	t1,t1,2
   1d854:	32079ae3          	bnez	a5,1e388 <_vfiprintf_r+0xddc>
   1d858:	000227b7          	lui	a5,0x22
   1d85c:	2a078793          	addi	a5,a5,672 # 222a0 <zeroes.4123+0x58>
   1d860:	00f13c23          	sd	a5,24(sp)
   1d864:	00000593          	li	a1,0
   1d868:	200498e3          	bnez	s1,1e278 <_vfiprintf_r+0xccc>
   1d86c:	00000493          	li	s1,0
   1d870:	00000a13          	li	s4,0
   1d874:	000c8b93          	mv	s7,s9
   1d878:	00048993          	mv	s3,s1
   1d87c:	0144d463          	ble	s4,s1,1d884 <_vfiprintf_r+0x2d8>
   1d880:	000a0993          	mv	s3,s4
   1d884:	00b035b3          	snez	a1,a1
   1d888:	00b989bb          	addw	s3,s3,a1
   1d88c:	00237393          	andi	t2,t1,2
   1d890:	00038463          	beqz	t2,1d898 <_vfiprintf_r+0x2ec>
   1d894:	0029899b          	addiw	s3,s3,2
   1d898:	08437293          	andi	t0,t1,132
   1d89c:	58029463          	bnez	t0,1de24 <_vfiprintf_r+0x878>
   1d8a0:	41390dbb          	subw	s11,s2,s3
   1d8a4:	59b05063          	blez	s11,1de24 <_vfiprintf_r+0x878>
   1d8a8:	01000793          	li	a5,16
   1d8ac:	45b7dee3          	ble	s11,a5,1e508 <_vfiprintf_r+0xf5c>
   1d8b0:	01000e93          	li	t4,16
   1d8b4:	08013783          	ld	a5,128(sp)
   1d8b8:	07812503          	lw	a0,120(sp)
   1d8bc:	05813823          	sd	s8,80(sp)
   1d8c0:	00700f13          	li	t5,7
   1d8c4:	000e8f93          	mv	t6,t4
   1d8c8:	0180006f          	j	1d8e0 <_vfiprintf_r+0x334>
   1d8cc:	0025061b          	addiw	a2,a0,2
   1d8d0:	01040413          	addi	s0,s0,16
   1d8d4:	00058513          	mv	a0,a1
   1d8d8:	ff0d8d9b          	addiw	s11,s11,-16
   1d8dc:	03bfdc63          	ble	s11,t6,1d914 <_vfiprintf_r+0x368>
   1d8e0:	01078793          	addi	a5,a5,16
   1d8e4:	0015059b          	addiw	a1,a0,1
   1d8e8:	01843023          	sd	s8,0(s0)
   1d8ec:	01d43423          	sd	t4,8(s0)
   1d8f0:	08f13023          	sd	a5,128(sp)
   1d8f4:	06b12c23          	sw	a1,120(sp)
   1d8f8:	fcbf5ae3          	ble	a1,t5,1d8cc <_vfiprintf_r+0x320>
   1d8fc:	4c079863          	bnez	a5,1ddcc <_vfiprintf_r+0x820>
   1d900:	ff0d8d9b          	addiw	s11,s11,-16
   1d904:	00000513          	li	a0,0
   1d908:	00100613          	li	a2,1
   1d90c:	000c8413          	mv	s0,s9
   1d910:	fdbfc8e3          	blt	t6,s11,1d8e0 <_vfiprintf_r+0x334>
   1d914:	05013703          	ld	a4,80(sp)
   1d918:	00fd87b3          	add	a5,s11,a5
   1d91c:	01b43423          	sd	s11,8(s0)
   1d920:	00e43023          	sd	a4,0(s0)
   1d924:	08f13023          	sd	a5,128(sp)
   1d928:	06c12c23          	sw	a2,120(sp)
   1d92c:	00700593          	li	a1,7
   1d930:	7ac5cc63          	blt	a1,a2,1e0e8 <_vfiprintf_r+0xb3c>
   1d934:	06714503          	lbu	a0,103(sp)
   1d938:	01040413          	addi	s0,s0,16
   1d93c:	0016059b          	addiw	a1,a2,1
   1d940:	4e051c63          	bnez	a0,1de38 <_vfiprintf_r+0x88c>
   1d944:	52038663          	beqz	t2,1de70 <_vfiprintf_r+0x8c4>
   1d948:	06810613          	addi	a2,sp,104
   1d94c:	00278793          	addi	a5,a5,2
   1d950:	00c43023          	sd	a2,0(s0)
   1d954:	00200613          	li	a2,2
   1d958:	00c43423          	sd	a2,8(s0)
   1d95c:	08f13023          	sd	a5,128(sp)
   1d960:	06b12c23          	sw	a1,120(sp)
   1d964:	00700613          	li	a2,7
   1d968:	7cb65863          	ble	a1,a2,1e138 <_vfiprintf_r+0xb8c>
   1d96c:	10079ae3          	bnez	a5,1e280 <_vfiprintf_r+0xcd4>
   1d970:	08000513          	li	a0,128
   1d974:	00100593          	li	a1,1
   1d978:	00000613          	li	a2,0
   1d97c:	000c8413          	mv	s0,s9
   1d980:	4ea29c63          	bne	t0,a0,1de78 <_vfiprintf_r+0x8cc>
   1d984:	41390ebb          	subw	t4,s2,s3
   1d988:	4fd05863          	blez	t4,1de78 <_vfiprintf_r+0x8cc>
   1d98c:	01000513          	li	a0,16
   1d990:	3fd55ce3          	ble	t4,a0,1e588 <_vfiprintf_r+0xfdc>
   1d994:	01000f13          	li	t5,16
   1d998:	00022737          	lui	a4,0x22
   1d99c:	fc070d93          	addi	s11,a4,-64 # 21fc0 <zeroes.4137>
   1d9a0:	00700f93          	li	t6,7
   1d9a4:	000f0293          	mv	t0,t5
   1d9a8:	0180006f          	j	1d9c0 <_vfiprintf_r+0x414>
   1d9ac:	0026051b          	addiw	a0,a2,2
   1d9b0:	01040413          	addi	s0,s0,16
   1d9b4:	00058613          	mv	a2,a1
   1d9b8:	ff0e8e9b          	addiw	t4,t4,-16
   1d9bc:	03d2dc63          	ble	t4,t0,1d9f4 <_vfiprintf_r+0x448>
   1d9c0:	01078793          	addi	a5,a5,16
   1d9c4:	0016059b          	addiw	a1,a2,1
   1d9c8:	01b43023          	sd	s11,0(s0)
   1d9cc:	01e43423          	sd	t5,8(s0)
   1d9d0:	08f13023          	sd	a5,128(sp)
   1d9d4:	06b12c23          	sw	a1,120(sp)
   1d9d8:	fcbfdae3          	ble	a1,t6,1d9ac <_vfiprintf_r+0x400>
   1d9dc:	6a079e63          	bnez	a5,1e098 <_vfiprintf_r+0xaec>
   1d9e0:	ff0e8e9b          	addiw	t4,t4,-16
   1d9e4:	00100513          	li	a0,1
   1d9e8:	00000613          	li	a2,0
   1d9ec:	000c8413          	mv	s0,s9
   1d9f0:	fdd2c8e3          	blt	t0,t4,1d9c0 <_vfiprintf_r+0x414>
   1d9f4:	01d787b3          	add	a5,a5,t4
   1d9f8:	01b43023          	sd	s11,0(s0)
   1d9fc:	01d43423          	sd	t4,8(s0)
   1da00:	08f13023          	sd	a5,128(sp)
   1da04:	06a12c23          	sw	a0,120(sp)
   1da08:	00700613          	li	a2,7
   1da0c:	0ea646e3          	blt	a2,a0,1e2f8 <_vfiprintf_r+0xd4c>
   1da10:	414484bb          	subw	s1,s1,s4
   1da14:	01040413          	addi	s0,s0,16
   1da18:	0015059b          	addiw	a1,a0,1
   1da1c:	00050613          	mv	a2,a0
   1da20:	46904063          	bgtz	s1,1de80 <_vfiprintf_r+0x8d4>
   1da24:	00fa07b3          	add	a5,s4,a5
   1da28:	01743023          	sd	s7,0(s0)
   1da2c:	01443423          	sd	s4,8(s0)
   1da30:	08f13023          	sd	a5,128(sp)
   1da34:	06b12c23          	sw	a1,120(sp)
   1da38:	00700713          	li	a4,7
   1da3c:	4eb75a63          	ble	a1,a4,1df30 <_vfiprintf_r+0x984>
   1da40:	7a079463          	bnez	a5,1e1e8 <_vfiprintf_r+0xc3c>
   1da44:	06012c23          	sw	zero,120(sp)
   1da48:	00437313          	andi	t1,t1,4
   1da4c:	00030663          	beqz	t1,1da58 <_vfiprintf_r+0x4ac>
   1da50:	413904bb          	subw	s1,s2,s3
   1da54:	229040e3          	bgtz	s1,1e474 <_vfiprintf_r+0xec8>
   1da58:	01395463          	ble	s3,s2,1da60 <_vfiprintf_r+0x4b4>
   1da5c:	00098913          	mv	s2,s3
   1da60:	05812783          	lw	a5,88(sp)
   1da64:	012787bb          	addw	a5,a5,s2
   1da68:	04f12c23          	sw	a5,88(sp)
   1da6c:	06012c23          	sw	zero,120(sp)
   1da70:	000c8413          	mv	s0,s9
   1da74:	c29ff06f          	j	1d69c <_vfiprintf_r+0xf0>
   1da78:	00100513          	li	a0,1
   1da7c:	02b00e93          	li	t4,43
   1da80:	000b0813          	mv	a6,s6
   1da84:	cb5ff06f          	j	1d738 <_vfiprintf_r+0x18c>
   1da88:	08036313          	ori	t1,t1,128
   1da8c:	000b0813          	mv	a6,s6
   1da90:	ca9ff06f          	j	1d738 <_vfiprintf_r+0x18c>
   1da94:	00000913          	li	s2,0
   1da98:	fd07079b          	addiw	a5,a4,-48
   1da9c:	001b0b13          	addi	s6,s6,1
   1daa0:	fffb4703          	lbu	a4,-1(s6)
   1daa4:	00191f9b          	slliw	t6,s2,0x1
   1daa8:	0039191b          	slliw	s2,s2,0x3
   1daac:	012f893b          	addw	s2,t6,s2
   1dab0:	0127893b          	addw	s2,a5,s2
   1dab4:	fd07079b          	addiw	a5,a4,-48
   1dab8:	fef5f2e3          	bleu	a5,a1,1da9c <_vfiprintf_r+0x4f0>
   1dabc:	c85ff06f          	j	1d740 <_vfiprintf_r+0x194>
   1dac0:	360518e3          	bnez	a0,1e630 <_vfiprintf_r+0x1084>
   1dac4:	01036313          	ori	t1,t1,16
   1dac8:	01037793          	andi	a5,t1,16
   1dacc:	74078263          	beqz	a5,1e210 <_vfiprintf_r+0xc64>
   1dad0:	00813703          	ld	a4,8(sp)
   1dad4:	00073783          	ld	a5,0(a4)
   1dad8:	00870713          	addi	a4,a4,8
   1dadc:	00e13423          	sd	a4,8(sp)
   1dae0:	0e07c6e3          	bltz	a5,1e3cc <_vfiprintf_r+0xe20>
   1dae4:	06714583          	lbu	a1,103(sp)
   1dae8:	6e04c063          	bltz	s1,1e1c8 <_vfiprintf_r+0xc1c>
   1daec:	f7f37313          	andi	t1,t1,-129
   1daf0:	10078c63          	beqz	a5,1dc08 <_vfiprintf_r+0x65c>
   1daf4:	00900613          	li	a2,9
   1daf8:	000c8b93          	mv	s7,s9
   1dafc:	00a00513          	li	a0,10
   1db00:	10f67863          	bleu	a5,a2,1dc10 <_vfiprintf_r+0x664>
   1db04:	02a7f633          	remu	a2,a5,a0
   1db08:	fffb8b93          	addi	s7,s7,-1
   1db0c:	02a7d7b3          	divu	a5,a5,a0
   1db10:	0306061b          	addiw	a2,a2,48
   1db14:	00cb8023          	sb	a2,0(s7)
   1db18:	fe0796e3          	bnez	a5,1db04 <_vfiprintf_r+0x558>
   1db1c:	417c8a3b          	subw	s4,s9,s7
   1db20:	d59ff06f          	j	1d878 <_vfiprintf_r+0x2cc>
   1db24:	300512e3          	bnez	a0,1e628 <_vfiprintf_r+0x107c>
   1db28:	01036313          	ori	t1,t1,16
   1db2c:	01037793          	andi	a5,t1,16
   1db30:	6e078e63          	beqz	a5,1e22c <_vfiprintf_r+0xc80>
   1db34:	00813783          	ld	a5,8(sp)
   1db38:	060103a3          	sb	zero,103(sp)
   1db3c:	00878713          	addi	a4,a5,8
   1db40:	0007b783          	ld	a5,0(a5)
   1db44:	7004c263          	bltz	s1,1e248 <_vfiprintf_r+0xc9c>
   1db48:	00e13423          	sd	a4,8(sp)
   1db4c:	f7f37313          	andi	t1,t1,-129
   1db50:	70079263          	bnez	a5,1e254 <_vfiprintf_r+0xca8>
   1db54:	00000593          	li	a1,0
   1db58:	00000793          	li	a5,0
   1db5c:	2a0482e3          	beqz	s1,1e600 <_vfiprintf_r+0x1054>
   1db60:	000c8b93          	mv	s7,s9
   1db64:	0077f613          	andi	a2,a5,7
   1db68:	fffb8b93          	addi	s7,s7,-1
   1db6c:	0306061b          	addiw	a2,a2,48
   1db70:	00cb8023          	sb	a2,0(s7)
   1db74:	0037d793          	srli	a5,a5,0x3
   1db78:	fe0796e3          	bnez	a5,1db64 <_vfiprintf_r+0x5b8>
   1db7c:	00137793          	andi	a5,t1,1
   1db80:	f8078ee3          	beqz	a5,1db1c <_vfiprintf_r+0x570>
   1db84:	03000793          	li	a5,48
   1db88:	f8f60ae3          	beq	a2,a5,1db1c <_vfiprintf_r+0x570>
   1db8c:	fffb8613          	addi	a2,s7,-1
   1db90:	40cc8a33          	sub	s4,s9,a2
   1db94:	fefb8fa3          	sb	a5,-1(s7)
   1db98:	000a0a1b          	sext.w	s4,s4
   1db9c:	00060b93          	mv	s7,a2
   1dba0:	cd9ff06f          	j	1d878 <_vfiprintf_r+0x2cc>
   1dba4:	28051ee3          	bnez	a0,1e640 <_vfiprintf_r+0x1094>
   1dba8:	01037793          	andi	a5,t1,16
   1dbac:	040786e3          	beqz	a5,1e3f8 <_vfiprintf_r+0xe4c>
   1dbb0:	00813683          	ld	a3,8(sp)
   1dbb4:	05812703          	lw	a4,88(sp)
   1dbb8:	0006b783          	ld	a5,0(a3)
   1dbbc:	00868693          	addi	a3,a3,8
   1dbc0:	00d13423          	sd	a3,8(sp)
   1dbc4:	00e7b023          	sd	a4,0(a5)
   1dbc8:	ad5ff06f          	j	1d69c <_vfiprintf_r+0xf0>
   1dbcc:	260516e3          	bnez	a0,1e638 <_vfiprintf_r+0x108c>
   1dbd0:	01036313          	ori	t1,t1,16
   1dbd4:	01037793          	andi	a5,t1,16
   1dbd8:	5c079a63          	bnez	a5,1e1ac <_vfiprintf_r+0xc00>
   1dbdc:	04037793          	andi	a5,t1,64
   1dbe0:	060103a3          	sb	zero,103(sp)
   1dbe4:	7c078063          	beqz	a5,1e3a4 <_vfiprintf_r+0xdf8>
   1dbe8:	00813783          	ld	a5,8(sp)
   1dbec:	00878713          	addi	a4,a5,8
   1dbf0:	0007d783          	lhu	a5,0(a5)
   1dbf4:	5c04c663          	bltz	s1,1e1c0 <_vfiprintf_r+0xc14>
   1dbf8:	00e13423          	sd	a4,8(sp)
   1dbfc:	f7f37313          	andi	t1,t1,-129
   1dc00:	00000593          	li	a1,0
   1dc04:	ee0798e3          	bnez	a5,1daf4 <_vfiprintf_r+0x548>
   1dc08:	c60482e3          	beqz	s1,1d86c <_vfiprintf_r+0x2c0>
   1dc0c:	00000793          	li	a5,0
   1dc10:	0307879b          	addiw	a5,a5,48
   1dc14:	0af107a3          	sb	a5,175(sp)
   1dc18:	05c12a03          	lw	s4,92(sp)
   1dc1c:	0af10b93          	addi	s7,sp,175
   1dc20:	c59ff06f          	j	1d878 <_vfiprintf_r+0x2cc>
   1dc24:	b40e98e3          	bnez	t4,1d774 <_vfiprintf_r+0x1c8>
   1dc28:	00100513          	li	a0,1
   1dc2c:	02000e93          	li	t4,32
   1dc30:	000b0813          	mv	a6,s6
   1dc34:	b05ff06f          	j	1d738 <_vfiprintf_r+0x18c>
   1dc38:	00136313          	ori	t1,t1,1
   1dc3c:	000b0813          	mv	a6,s6
   1dc40:	af9ff06f          	j	1d738 <_vfiprintf_r+0x18c>
   1dc44:	00813783          	ld	a5,8(sp)
   1dc48:	060103a3          	sb	zero,103(sp)
   1dc4c:	0007bb83          	ld	s7,0(a5)
   1dc50:	00878d93          	addi	s11,a5,8
   1dc54:	0e0b84e3          	beqz	s7,1e53c <_vfiprintf_r+0xf90>
   1dc58:	0404cee3          	bltz	s1,1e4b4 <_vfiprintf_r+0xf08>
   1dc5c:	00048613          	mv	a2,s1
   1dc60:	00000593          	li	a1,0
   1dc64:	000b8513          	mv	a0,s7
   1dc68:	00613423          	sd	t1,8(sp)
   1dc6c:	be0fa0ef          	jal	1804c <memchr>
   1dc70:	00813303          	ld	t1,8(sp)
   1dc74:	120502e3          	beqz	a0,1e598 <_vfiprintf_r+0xfec>
   1dc78:	41750a3b          	subw	s4,a0,s7
   1dc7c:	06714583          	lbu	a1,103(sp)
   1dc80:	01b13423          	sd	s11,8(sp)
   1dc84:	00000493          	li	s1,0
   1dc88:	bf1ff06f          	j	1d878 <_vfiprintf_r+0x2cc>
   1dc8c:	f40504e3          	beqz	a0,1dbd4 <_vfiprintf_r+0x628>
   1dc90:	07d103a3          	sb	t4,103(sp)
   1dc94:	f41ff06f          	j	1dbd4 <_vfiprintf_r+0x628>
   1dc98:	00813703          	ld	a4,8(sp)
   1dc9c:	00100993          	li	s3,1
   1dca0:	060103a3          	sb	zero,103(sp)
   1dca4:	00072783          	lw	a5,0(a4)
   1dca8:	00098a13          	mv	s4,s3
   1dcac:	08810b93          	addi	s7,sp,136
   1dcb0:	08f10423          	sb	a5,136(sp)
   1dcb4:	00870793          	addi	a5,a4,8
   1dcb8:	00f13423          	sd	a5,8(sp)
   1dcbc:	00000493          	li	s1,0
   1dcc0:	bcdff06f          	j	1d88c <_vfiprintf_r+0x2e0>
   1dcc4:	e00502e3          	beqz	a0,1dac8 <_vfiprintf_r+0x51c>
   1dcc8:	07d103a3          	sb	t4,103(sp)
   1dccc:	dfdff06f          	j	1dac8 <_vfiprintf_r+0x51c>
   1dcd0:	120510e3          	bnez	a0,1e5f0 <_vfiprintf_r+0x1044>
   1dcd4:	000227b7          	lui	a5,0x22
   1dcd8:	28878793          	addi	a5,a5,648 # 22288 <zeroes.4123+0x40>
   1dcdc:	00f13c23          	sd	a5,24(sp)
   1dce0:	01037793          	andi	a5,t1,16
   1dce4:	06078063          	beqz	a5,1dd44 <_vfiprintf_r+0x798>
   1dce8:	00813683          	ld	a3,8(sp)
   1dcec:	0006b783          	ld	a5,0(a3)
   1dcf0:	00868693          	addi	a3,a3,8
   1dcf4:	00d13423          	sd	a3,8(sp)
   1dcf8:	00137613          	andi	a2,t1,1
   1dcfc:	46060863          	beqz	a2,1e16c <_vfiprintf_r+0xbc0>
   1dd00:	66079063          	bnez	a5,1e360 <_vfiprintf_r+0xdb4>
   1dd04:	060103a3          	sb	zero,103(sp)
   1dd08:	6404c663          	bltz	s1,1e354 <_vfiprintf_r+0xda8>
   1dd0c:	f7f37313          	andi	t1,t1,-129
   1dd10:	b55ff06f          	j	1d864 <_vfiprintf_r+0x2b8>
   1dd14:	e0050ce3          	beqz	a0,1db2c <_vfiprintf_r+0x580>
   1dd18:	07d103a3          	sb	t4,103(sp)
   1dd1c:	e11ff06f          	j	1db2c <_vfiprintf_r+0x580>
   1dd20:	04036313          	ori	t1,t1,64
   1dd24:	000b0813          	mv	a6,s6
   1dd28:	a11ff06f          	j	1d738 <_vfiprintf_r+0x18c>
   1dd2c:	0a051ee3          	bnez	a0,1e5e8 <_vfiprintf_r+0x103c>
   1dd30:	000227b7          	lui	a5,0x22
   1dd34:	2a078793          	addi	a5,a5,672 # 222a0 <zeroes.4123+0x58>
   1dd38:	00f13c23          	sd	a5,24(sp)
   1dd3c:	01037793          	andi	a5,t1,16
   1dd40:	fa0794e3          	bnez	a5,1dce8 <_vfiprintf_r+0x73c>
   1dd44:	04037793          	andi	a5,t1,64
   1dd48:	00813683          	ld	a3,8(sp)
   1dd4c:	68078e63          	beqz	a5,1e3e8 <_vfiprintf_r+0xe3c>
   1dd50:	0006d783          	lhu	a5,0(a3)
   1dd54:	00868693          	addi	a3,a3,8
   1dd58:	00d13423          	sd	a3,8(sp)
   1dd5c:	f9dff06f          	j	1dcf8 <_vfiprintf_r+0x74c>
   1dd60:	000b4703          	lbu	a4,0(s6)
   1dd64:	001b0813          	addi	a6,s6,1
   1dd68:	05e70ee3          	beq	a4,t5,1e5c4 <_vfiprintf_r+0x1018>
   1dd6c:	fd07079b          	addiw	a5,a4,-48
   1dd70:	00000493          	li	s1,0
   1dd74:	00080b13          	mv	s6,a6
   1dd78:	9cf5e4e3          	bltu	a1,a5,1d740 <_vfiprintf_r+0x194>
   1dd7c:	001b0b13          	addi	s6,s6,1
   1dd80:	fffb4703          	lbu	a4,-1(s6)
   1dd84:	00149f9b          	slliw	t6,s1,0x1
   1dd88:	0034949b          	slliw	s1,s1,0x3
   1dd8c:	009f84bb          	addw	s1,t6,s1
   1dd90:	00f484bb          	addw	s1,s1,a5
   1dd94:	fd07079b          	addiw	a5,a4,-48
   1dd98:	fef5f2e3          	bleu	a5,a1,1dd7c <_vfiprintf_r+0x7d0>
   1dd9c:	9a04d2e3          	bgez	s1,1d740 <_vfiprintf_r+0x194>
   1dda0:	fff00493          	li	s1,-1
   1dda4:	99dff06f          	j	1d740 <_vfiprintf_r+0x194>
   1dda8:	040518e3          	bnez	a0,1e5f8 <_vfiprintf_r+0x104c>
   1ddac:	6e070663          	beqz	a4,1e498 <_vfiprintf_r+0xeec>
   1ddb0:	00100993          	li	s3,1
   1ddb4:	08e10423          	sb	a4,136(sp)
   1ddb8:	060103a3          	sb	zero,103(sp)
   1ddbc:	00098a13          	mv	s4,s3
   1ddc0:	08810b93          	addi	s7,sp,136
   1ddc4:	00000493          	li	s1,0
   1ddc8:	ac5ff06f          	j	1d88c <_vfiprintf_r+0x2e0>
   1ddcc:	07010613          	addi	a2,sp,112
   1ddd0:	000d0593          	mv	a1,s10
   1ddd4:	000a8513          	mv	a0,s5
   1ddd8:	05f13423          	sd	t6,72(sp)
   1dddc:	05e13023          	sd	t5,64(sp)
   1dde0:	03d13c23          	sd	t4,56(sp)
   1dde4:	02513823          	sd	t0,48(sp)
   1dde8:	02713423          	sd	t2,40(sp)
   1ddec:	02613023          	sd	t1,32(sp)
   1ddf0:	eb8ff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1ddf4:	22051063          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1ddf8:	07812503          	lw	a0,120(sp)
   1ddfc:	08013783          	ld	a5,128(sp)
   1de00:	000c8413          	mv	s0,s9
   1de04:	0015061b          	addiw	a2,a0,1
   1de08:	04813f83          	ld	t6,72(sp)
   1de0c:	04013f03          	ld	t5,64(sp)
   1de10:	03813e83          	ld	t4,56(sp)
   1de14:	03013283          	ld	t0,48(sp)
   1de18:	02813383          	ld	t2,40(sp)
   1de1c:	02013303          	ld	t1,32(sp)
   1de20:	ab9ff06f          	j	1d8d8 <_vfiprintf_r+0x32c>
   1de24:	07812603          	lw	a2,120(sp)
   1de28:	08013783          	ld	a5,128(sp)
   1de2c:	0016059b          	addiw	a1,a2,1
   1de30:	06714503          	lbu	a0,103(sp)
   1de34:	b00508e3          	beqz	a0,1d944 <_vfiprintf_r+0x398>
   1de38:	00100513          	li	a0,1
   1de3c:	06710613          	addi	a2,sp,103
   1de40:	00a787b3          	add	a5,a5,a0
   1de44:	00c43023          	sd	a2,0(s0)
   1de48:	00a43423          	sd	a0,8(s0)
   1de4c:	08f13023          	sd	a5,128(sp)
   1de50:	06b12c23          	sw	a1,120(sp)
   1de54:	00700613          	li	a2,7
   1de58:	2ab65a63          	ble	a1,a2,1e10c <_vfiprintf_r+0xb60>
   1de5c:	44079e63          	bnez	a5,1e2b8 <_vfiprintf_r+0xd0c>
   1de60:	2c039063          	bnez	t2,1e120 <_vfiprintf_r+0xb74>
   1de64:	00000613          	li	a2,0
   1de68:	00050593          	mv	a1,a0
   1de6c:	000c8413          	mv	s0,s9
   1de70:	08000513          	li	a0,128
   1de74:	b0a288e3          	beq	t0,a0,1d984 <_vfiprintf_r+0x3d8>
   1de78:	414484bb          	subw	s1,s1,s4
   1de7c:	ba9054e3          	blez	s1,1da24 <_vfiprintf_r+0x478>
   1de80:	00022737          	lui	a4,0x22
   1de84:	01000513          	li	a0,16
   1de88:	fc070d93          	addi	s11,a4,-64 # 21fc0 <zeroes.4137>
   1de8c:	06955263          	ble	s1,a0,1def0 <_vfiprintf_r+0x944>
   1de90:	01000e93          	li	t4,16
   1de94:	00022737          	lui	a4,0x22
   1de98:	fc070d93          	addi	s11,a4,-64 # 21fc0 <zeroes.4137>
   1de9c:	00700f13          	li	t5,7
   1dea0:	000e8f93          	mv	t6,t4
   1dea4:	0180006f          	j	1debc <_vfiprintf_r+0x910>
   1dea8:	0026059b          	addiw	a1,a2,2
   1deac:	01040413          	addi	s0,s0,16
   1deb0:	00050613          	mv	a2,a0
   1deb4:	ff04849b          	addiw	s1,s1,-16
   1deb8:	029fdc63          	ble	s1,t6,1def0 <_vfiprintf_r+0x944>
   1debc:	01078793          	addi	a5,a5,16
   1dec0:	0016051b          	addiw	a0,a2,1
   1dec4:	01b43023          	sd	s11,0(s0)
   1dec8:	01d43423          	sd	t4,8(s0)
   1decc:	08f13023          	sd	a5,128(sp)
   1ded0:	06a12c23          	sw	a0,120(sp)
   1ded4:	fcaf5ae3          	ble	a0,t5,1dea8 <_vfiprintf_r+0x8fc>
   1ded8:	14079863          	bnez	a5,1e028 <_vfiprintf_r+0xa7c>
   1dedc:	ff04849b          	addiw	s1,s1,-16
   1dee0:	00100593          	li	a1,1
   1dee4:	00000613          	li	a2,0
   1dee8:	000c8413          	mv	s0,s9
   1deec:	fc9fc8e3          	blt	t6,s1,1debc <_vfiprintf_r+0x910>
   1def0:	009787b3          	add	a5,a5,s1
   1def4:	01b43023          	sd	s11,0(s0)
   1def8:	00943423          	sd	s1,8(s0)
   1defc:	08f13023          	sd	a5,128(sp)
   1df00:	06b12c23          	sw	a1,120(sp)
   1df04:	00700613          	li	a2,7
   1df08:	24b64063          	blt	a2,a1,1e148 <_vfiprintf_r+0xb9c>
   1df0c:	01040413          	addi	s0,s0,16
   1df10:	0015859b          	addiw	a1,a1,1
   1df14:	00fa07b3          	add	a5,s4,a5
   1df18:	01743023          	sd	s7,0(s0)
   1df1c:	01443423          	sd	s4,8(s0)
   1df20:	08f13023          	sd	a5,128(sp)
   1df24:	06b12c23          	sw	a1,120(sp)
   1df28:	00700713          	li	a4,7
   1df2c:	b0b74ae3          	blt	a4,a1,1da40 <_vfiprintf_r+0x494>
   1df30:	01040413          	addi	s0,s0,16
   1df34:	00437313          	andi	t1,t1,4
   1df38:	0a030863          	beqz	t1,1dfe8 <_vfiprintf_r+0xa3c>
   1df3c:	413904bb          	subw	s1,s2,s3
   1df40:	0a905463          	blez	s1,1dfe8 <_vfiprintf_r+0xa3c>
   1df44:	01000713          	li	a4,16
   1df48:	62975863          	ble	s1,a4,1e578 <_vfiprintf_r+0xfcc>
   1df4c:	01000a13          	li	s4,16
   1df50:	07812603          	lw	a2,120(sp)
   1df54:	05813823          	sd	s8,80(sp)
   1df58:	00700d93          	li	s11,7
   1df5c:	000a0b93          	mv	s7,s4
   1df60:	0180006f          	j	1df78 <_vfiprintf_r+0x9cc>
   1df64:	0026059b          	addiw	a1,a2,2
   1df68:	01040413          	addi	s0,s0,16
   1df6c:	00070613          	mv	a2,a4
   1df70:	ff04849b          	addiw	s1,s1,-16
   1df74:	029bdc63          	ble	s1,s7,1dfac <_vfiprintf_r+0xa00>
   1df78:	01078793          	addi	a5,a5,16
   1df7c:	0016071b          	addiw	a4,a2,1
   1df80:	01843023          	sd	s8,0(s0)
   1df84:	01443423          	sd	s4,8(s0)
   1df88:	08f13023          	sd	a5,128(sp)
   1df8c:	06e12c23          	sw	a4,120(sp)
   1df90:	fceddae3          	ble	a4,s11,1df64 <_vfiprintf_r+0x9b8>
   1df94:	0c079e63          	bnez	a5,1e070 <_vfiprintf_r+0xac4>
   1df98:	ff04849b          	addiw	s1,s1,-16
   1df9c:	00100593          	li	a1,1
   1dfa0:	00000613          	li	a2,0
   1dfa4:	000c8413          	mv	s0,s9
   1dfa8:	fc9bc8e3          	blt	s7,s1,1df78 <_vfiprintf_r+0x9cc>
   1dfac:	05013703          	ld	a4,80(sp)
   1dfb0:	009787b3          	add	a5,a5,s1
   1dfb4:	00943423          	sd	s1,8(s0)
   1dfb8:	00e43023          	sd	a4,0(s0)
   1dfbc:	08f13023          	sd	a5,128(sp)
   1dfc0:	06b12c23          	sw	a1,120(sp)
   1dfc4:	00700713          	li	a4,7
   1dfc8:	02b75063          	ble	a1,a4,1dfe8 <_vfiprintf_r+0xa3c>
   1dfcc:	a80786e3          	beqz	a5,1da58 <_vfiprintf_r+0x4ac>
   1dfd0:	07010613          	addi	a2,sp,112
   1dfd4:	000d0593          	mv	a1,s10
   1dfd8:	000a8513          	mv	a0,s5
   1dfdc:	cccff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1dfe0:	02051a63          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1dfe4:	08013783          	ld	a5,128(sp)
   1dfe8:	01395463          	ble	s3,s2,1dff0 <_vfiprintf_r+0xa44>
   1dfec:	00098913          	mv	s2,s3
   1dff0:	05812703          	lw	a4,88(sp)
   1dff4:	0127073b          	addw	a4,a4,s2
   1dff8:	04e12c23          	sw	a4,88(sp)
   1dffc:	a60788e3          	beqz	a5,1da6c <_vfiprintf_r+0x4c0>
   1e000:	07010613          	addi	a2,sp,112
   1e004:	000d0593          	mv	a1,s10
   1e008:	000a8513          	mv	a0,s5
   1e00c:	c9cff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e010:	a4050ee3          	beqz	a0,1da6c <_vfiprintf_r+0x4c0>
   1e014:	010d5783          	lhu	a5,16(s10)
   1e018:	0407f793          	andi	a5,a5,64
   1e01c:	44079863          	bnez	a5,1e46c <_vfiprintf_r+0xec0>
   1e020:	05812503          	lw	a0,88(sp)
   1e024:	f94ff06f          	j	1d7b8 <_vfiprintf_r+0x20c>
   1e028:	07010613          	addi	a2,sp,112
   1e02c:	000d0593          	mv	a1,s10
   1e030:	000a8513          	mv	a0,s5
   1e034:	03f13c23          	sd	t6,56(sp)
   1e038:	03e13823          	sd	t5,48(sp)
   1e03c:	03d13423          	sd	t4,40(sp)
   1e040:	02613023          	sd	t1,32(sp)
   1e044:	c64ff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e048:	fc0516e3          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1e04c:	07812603          	lw	a2,120(sp)
   1e050:	08013783          	ld	a5,128(sp)
   1e054:	000c8413          	mv	s0,s9
   1e058:	0016059b          	addiw	a1,a2,1
   1e05c:	03813f83          	ld	t6,56(sp)
   1e060:	03013f03          	ld	t5,48(sp)
   1e064:	02813e83          	ld	t4,40(sp)
   1e068:	02013303          	ld	t1,32(sp)
   1e06c:	e49ff06f          	j	1deb4 <_vfiprintf_r+0x908>
   1e070:	07010613          	addi	a2,sp,112
   1e074:	000d0593          	mv	a1,s10
   1e078:	000a8513          	mv	a0,s5
   1e07c:	c2cff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e080:	f8051ae3          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1e084:	07812603          	lw	a2,120(sp)
   1e088:	08013783          	ld	a5,128(sp)
   1e08c:	000c8413          	mv	s0,s9
   1e090:	0016059b          	addiw	a1,a2,1
   1e094:	eddff06f          	j	1df70 <_vfiprintf_r+0x9c4>
   1e098:	07010613          	addi	a2,sp,112
   1e09c:	000d0593          	mv	a1,s10
   1e0a0:	000a8513          	mv	a0,s5
   1e0a4:	04513023          	sd	t0,64(sp)
   1e0a8:	03f13c23          	sd	t6,56(sp)
   1e0ac:	03e13823          	sd	t5,48(sp)
   1e0b0:	03d13423          	sd	t4,40(sp)
   1e0b4:	02613023          	sd	t1,32(sp)
   1e0b8:	bf0ff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e0bc:	f4051ce3          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1e0c0:	07812603          	lw	a2,120(sp)
   1e0c4:	08013783          	ld	a5,128(sp)
   1e0c8:	000c8413          	mv	s0,s9
   1e0cc:	0016051b          	addiw	a0,a2,1
   1e0d0:	04013283          	ld	t0,64(sp)
   1e0d4:	03813f83          	ld	t6,56(sp)
   1e0d8:	03013f03          	ld	t5,48(sp)
   1e0dc:	02813e83          	ld	t4,40(sp)
   1e0e0:	02013303          	ld	t1,32(sp)
   1e0e4:	8d5ff06f          	j	1d9b8 <_vfiprintf_r+0x40c>
   1e0e8:	34079263          	bnez	a5,1e42c <_vfiprintf_r+0xe80>
   1e0ec:	06714603          	lbu	a2,103(sp)
   1e0f0:	02060663          	beqz	a2,1e11c <_vfiprintf_r+0xb70>
   1e0f4:	00100793          	li	a5,1
   1e0f8:	06710613          	addi	a2,sp,103
   1e0fc:	0ac13823          	sd	a2,176(sp)
   1e100:	0af13c23          	sd	a5,184(sp)
   1e104:	00078593          	mv	a1,a5
   1e108:	000c8413          	mv	s0,s9
   1e10c:	00058613          	mv	a2,a1
   1e110:	01040413          	addi	s0,s0,16
   1e114:	0015859b          	addiw	a1,a1,1
   1e118:	82dff06f          	j	1d944 <_vfiprintf_r+0x398>
   1e11c:	36038063          	beqz	t2,1e47c <_vfiprintf_r+0xed0>
   1e120:	00200793          	li	a5,2
   1e124:	06810613          	addi	a2,sp,104
   1e128:	0ac13823          	sd	a2,176(sp)
   1e12c:	0af13c23          	sd	a5,184(sp)
   1e130:	00100593          	li	a1,1
   1e134:	000c8413          	mv	s0,s9
   1e138:	00058613          	mv	a2,a1
   1e13c:	01040413          	addi	s0,s0,16
   1e140:	0015859b          	addiw	a1,a1,1
   1e144:	d2dff06f          	j	1de70 <_vfiprintf_r+0x8c4>
   1e148:	1c079263          	bnez	a5,1e30c <_vfiprintf_r+0xd60>
   1e14c:	00100713          	li	a4,1
   1e150:	000a0793          	mv	a5,s4
   1e154:	0b713823          	sd	s7,176(sp)
   1e158:	0b413c23          	sd	s4,184(sp)
   1e15c:	09413023          	sd	s4,128(sp)
   1e160:	06e12c23          	sw	a4,120(sp)
   1e164:	000c8413          	mv	s0,s9
   1e168:	dc9ff06f          	j	1df30 <_vfiprintf_r+0x984>
   1e16c:	060103a3          	sb	zero,103(sp)
   1e170:	1e04c063          	bltz	s1,1e350 <_vfiprintf_r+0xda4>
   1e174:	f7f37313          	andi	t1,t1,-129
   1e178:	ee078663          	beqz	a5,1d864 <_vfiprintf_r+0x2b8>
   1e17c:	00000593          	li	a1,0
   1e180:	000c8b93          	mv	s7,s9
   1e184:	01813703          	ld	a4,24(sp)
   1e188:	00f7f613          	andi	a2,a5,15
   1e18c:	fffb8b93          	addi	s7,s7,-1
   1e190:	00c70633          	add	a2,a4,a2
   1e194:	00064603          	lbu	a2,0(a2)
   1e198:	0047d793          	srli	a5,a5,0x4
   1e19c:	00cb8023          	sb	a2,0(s7)
   1e1a0:	fe0792e3          	bnez	a5,1e184 <_vfiprintf_r+0xbd8>
   1e1a4:	417c8a3b          	subw	s4,s9,s7
   1e1a8:	ed0ff06f          	j	1d878 <_vfiprintf_r+0x2cc>
   1e1ac:	00813783          	ld	a5,8(sp)
   1e1b0:	060103a3          	sb	zero,103(sp)
   1e1b4:	00878713          	addi	a4,a5,8
   1e1b8:	0007b783          	ld	a5,0(a5)
   1e1bc:	a204dee3          	bgez	s1,1dbf8 <_vfiprintf_r+0x64c>
   1e1c0:	00e13423          	sd	a4,8(sp)
   1e1c4:	00000593          	li	a1,0
   1e1c8:	920796e3          	bnez	a5,1daf4 <_vfiprintf_r+0x548>
   1e1cc:	00100793          	li	a5,1
   1e1d0:	00100713          	li	a4,1
   1e1d4:	a2e78ce3          	beq	a5,a4,1dc0c <_vfiprintf_r+0x660>
   1e1d8:	00200713          	li	a4,2
   1e1dc:	08e78e63          	beq	a5,a4,1e278 <_vfiprintf_r+0xccc>
   1e1e0:	00000793          	li	a5,0
   1e1e4:	97dff06f          	j	1db60 <_vfiprintf_r+0x5b4>
   1e1e8:	07010613          	addi	a2,sp,112
   1e1ec:	000d0593          	mv	a1,s10
   1e1f0:	000a8513          	mv	a0,s5
   1e1f4:	02613023          	sd	t1,32(sp)
   1e1f8:	ab0ff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e1fc:	e0051ce3          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1e200:	08013783          	ld	a5,128(sp)
   1e204:	000c8413          	mv	s0,s9
   1e208:	02013303          	ld	t1,32(sp)
   1e20c:	d29ff06f          	j	1df34 <_vfiprintf_r+0x988>
   1e210:	04037793          	andi	a5,t1,64
   1e214:	00813703          	ld	a4,8(sp)
   1e218:	20078263          	beqz	a5,1e41c <_vfiprintf_r+0xe70>
   1e21c:	00071783          	lh	a5,0(a4)
   1e220:	00870713          	addi	a4,a4,8
   1e224:	00e13423          	sd	a4,8(sp)
   1e228:	8b9ff06f          	j	1dae0 <_vfiprintf_r+0x534>
   1e22c:	04037793          	andi	a5,t1,64
   1e230:	060103a3          	sb	zero,103(sp)
   1e234:	18078263          	beqz	a5,1e3b8 <_vfiprintf_r+0xe0c>
   1e238:	00813783          	ld	a5,8(sp)
   1e23c:	00878713          	addi	a4,a5,8
   1e240:	0007d783          	lhu	a5,0(a5)
   1e244:	9004d2e3          	bgez	s1,1db48 <_vfiprintf_r+0x59c>
   1e248:	00e13423          	sd	a4,8(sp)
   1e24c:	00000593          	li	a1,0
   1e250:	f80780e3          	beqz	a5,1e1d0 <_vfiprintf_r+0xc24>
   1e254:	00000593          	li	a1,0
   1e258:	909ff06f          	j	1db60 <_vfiprintf_r+0x5b4>
   1e25c:	07010613          	addi	a2,sp,112
   1e260:	000d0593          	mv	a1,s10
   1e264:	000a8513          	mv	a0,s5
   1e268:	a40ff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e26c:	da0514e3          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1e270:	000c8413          	mv	s0,s9
   1e274:	c88ff06f          	j	1d6fc <_vfiprintf_r+0x150>
   1e278:	00000793          	li	a5,0
   1e27c:	f05ff06f          	j	1e180 <_vfiprintf_r+0xbd4>
   1e280:	07010613          	addi	a2,sp,112
   1e284:	000d0593          	mv	a1,s10
   1e288:	000a8513          	mv	a0,s5
   1e28c:	02513423          	sd	t0,40(sp)
   1e290:	02613023          	sd	t1,32(sp)
   1e294:	a14ff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e298:	d6051ee3          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1e29c:	07812603          	lw	a2,120(sp)
   1e2a0:	08013783          	ld	a5,128(sp)
   1e2a4:	000c8413          	mv	s0,s9
   1e2a8:	0016059b          	addiw	a1,a2,1
   1e2ac:	02813283          	ld	t0,40(sp)
   1e2b0:	02013303          	ld	t1,32(sp)
   1e2b4:	bbdff06f          	j	1de70 <_vfiprintf_r+0x8c4>
   1e2b8:	07010613          	addi	a2,sp,112
   1e2bc:	000d0593          	mv	a1,s10
   1e2c0:	000a8513          	mv	a0,s5
   1e2c4:	02513823          	sd	t0,48(sp)
   1e2c8:	02713423          	sd	t2,40(sp)
   1e2cc:	02613023          	sd	t1,32(sp)
   1e2d0:	9d8ff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e2d4:	d40510e3          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1e2d8:	07812603          	lw	a2,120(sp)
   1e2dc:	08013783          	ld	a5,128(sp)
   1e2e0:	000c8413          	mv	s0,s9
   1e2e4:	0016059b          	addiw	a1,a2,1
   1e2e8:	03013283          	ld	t0,48(sp)
   1e2ec:	02813383          	ld	t2,40(sp)
   1e2f0:	02013303          	ld	t1,32(sp)
   1e2f4:	e50ff06f          	j	1d944 <_vfiprintf_r+0x398>
   1e2f8:	1e079063          	bnez	a5,1e4d8 <_vfiprintf_r+0xf2c>
   1e2fc:	00100593          	li	a1,1
   1e300:	00000613          	li	a2,0
   1e304:	000c8413          	mv	s0,s9
   1e308:	b71ff06f          	j	1de78 <_vfiprintf_r+0x8cc>
   1e30c:	07010613          	addi	a2,sp,112
   1e310:	000d0593          	mv	a1,s10
   1e314:	000a8513          	mv	a0,s5
   1e318:	02613023          	sd	t1,32(sp)
   1e31c:	98cff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e320:	ce051ae3          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1e324:	07812583          	lw	a1,120(sp)
   1e328:	08013783          	ld	a5,128(sp)
   1e32c:	000c8413          	mv	s0,s9
   1e330:	0015859b          	addiw	a1,a1,1
   1e334:	02013303          	ld	t1,32(sp)
   1e338:	eecff06f          	j	1da24 <_vfiprintf_r+0x478>
   1e33c:	00e13423          	sd	a4,8(sp)
   1e340:	00022737          	lui	a4,0x22
   1e344:	2a070713          	addi	a4,a4,672 # 222a0 <zeroes.4123+0x58>
   1e348:	00060313          	mv	t1,a2
   1e34c:	00e13c23          	sd	a4,24(sp)
   1e350:	e20796e3          	bnez	a5,1e17c <_vfiprintf_r+0xbd0>
   1e354:	00000593          	li	a1,0
   1e358:	00200793          	li	a5,2
   1e35c:	e75ff06f          	j	1e1d0 <_vfiprintf_r+0xc24>
   1e360:	03000613          	li	a2,48
   1e364:	06e104a3          	sb	a4,105(sp)
   1e368:	06c10423          	sb	a2,104(sp)
   1e36c:	060103a3          	sb	zero,103(sp)
   1e370:	00236713          	ori	a4,t1,2
   1e374:	1a04c463          	bltz	s1,1e51c <_vfiprintf_r+0xf70>
   1e378:	f7f37313          	andi	t1,t1,-129
   1e37c:	00236313          	ori	t1,t1,2
   1e380:	00000593          	li	a1,0
   1e384:	dfdff06f          	j	1e180 <_vfiprintf_r+0xbd4>
   1e388:	00022737          	lui	a4,0x22
   1e38c:	2a070713          	addi	a4,a4,672 # 222a0 <zeroes.4123+0x58>
   1e390:	00000593          	li	a1,0
   1e394:	00e13c23          	sd	a4,24(sp)
   1e398:	de9ff06f          	j	1e180 <_vfiprintf_r+0xbd4>
   1e39c:	000b0493          	mv	s1,s6
   1e3a0:	b68ff06f          	j	1d708 <_vfiprintf_r+0x15c>
   1e3a4:	00813783          	ld	a5,8(sp)
   1e3a8:	00878713          	addi	a4,a5,8
   1e3ac:	0007e783          	lwu	a5,0(a5)
   1e3b0:	8404d4e3          	bgez	s1,1dbf8 <_vfiprintf_r+0x64c>
   1e3b4:	e0dff06f          	j	1e1c0 <_vfiprintf_r+0xc14>
   1e3b8:	00813783          	ld	a5,8(sp)
   1e3bc:	00878713          	addi	a4,a5,8
   1e3c0:	0007e783          	lwu	a5,0(a5)
   1e3c4:	f804d263          	bgez	s1,1db48 <_vfiprintf_r+0x59c>
   1e3c8:	e81ff06f          	j	1e248 <_vfiprintf_r+0xc9c>
   1e3cc:	02d00713          	li	a4,45
   1e3d0:	06e103a3          	sb	a4,103(sp)
   1e3d4:	40f007b3          	neg	a5,a5
   1e3d8:	1804c863          	bltz	s1,1e568 <_vfiprintf_r+0xfbc>
   1e3dc:	f7f37313          	andi	t1,t1,-129
   1e3e0:	02d00593          	li	a1,45
   1e3e4:	f10ff06f          	j	1daf4 <_vfiprintf_r+0x548>
   1e3e8:	0006e783          	lwu	a5,0(a3)
   1e3ec:	00868693          	addi	a3,a3,8
   1e3f0:	00d13423          	sd	a3,8(sp)
   1e3f4:	905ff06f          	j	1dcf8 <_vfiprintf_r+0x74c>
   1e3f8:	00813703          	ld	a4,8(sp)
   1e3fc:	04037313          	andi	t1,t1,64
   1e400:	00073783          	ld	a5,0(a4)
   1e404:	00870713          	addi	a4,a4,8
   1e408:	00e13423          	sd	a4,8(sp)
   1e40c:	08030063          	beqz	t1,1e48c <_vfiprintf_r+0xee0>
   1e410:	05815703          	lhu	a4,88(sp)
   1e414:	00e79023          	sh	a4,0(a5)
   1e418:	a84ff06f          	j	1d69c <_vfiprintf_r+0xf0>
   1e41c:	00072783          	lw	a5,0(a4)
   1e420:	00870713          	addi	a4,a4,8
   1e424:	00e13423          	sd	a4,8(sp)
   1e428:	eb8ff06f          	j	1dae0 <_vfiprintf_r+0x534>
   1e42c:	07010613          	addi	a2,sp,112
   1e430:	000d0593          	mv	a1,s10
   1e434:	000a8513          	mv	a0,s5
   1e438:	02513823          	sd	t0,48(sp)
   1e43c:	02713423          	sd	t2,40(sp)
   1e440:	02613023          	sd	t1,32(sp)
   1e444:	864ff0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e448:	bc0516e3          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1e44c:	07812603          	lw	a2,120(sp)
   1e450:	08013783          	ld	a5,128(sp)
   1e454:	000c8413          	mv	s0,s9
   1e458:	0016059b          	addiw	a1,a2,1
   1e45c:	03013283          	ld	t0,48(sp)
   1e460:	02813383          	ld	t2,40(sp)
   1e464:	02013303          	ld	t1,32(sp)
   1e468:	9c9ff06f          	j	1de30 <_vfiprintf_r+0x884>
   1e46c:	fff00513          	li	a0,-1
   1e470:	b48ff06f          	j	1d7b8 <_vfiprintf_r+0x20c>
   1e474:	000c8413          	mv	s0,s9
   1e478:	acdff06f          	j	1df44 <_vfiprintf_r+0x998>
   1e47c:	00000613          	li	a2,0
   1e480:	00100593          	li	a1,1
   1e484:	000c8413          	mv	s0,s9
   1e488:	9e9ff06f          	j	1de70 <_vfiprintf_r+0x8c4>
   1e48c:	05812703          	lw	a4,88(sp)
   1e490:	00e7a023          	sw	a4,0(a5)
   1e494:	a08ff06f          	j	1d69c <_vfiprintf_r+0xf0>
   1e498:	08013783          	ld	a5,128(sp)
   1e49c:	b6078ce3          	beqz	a5,1e014 <_vfiprintf_r+0xa68>
   1e4a0:	07010613          	addi	a2,sp,112
   1e4a4:	000d0593          	mv	a1,s10
   1e4a8:	000a8513          	mv	a0,s5
   1e4ac:	ffdfe0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e4b0:	b65ff06f          	j	1e014 <_vfiprintf_r+0xa68>
   1e4b4:	000b8513          	mv	a0,s7
   1e4b8:	02613023          	sd	t1,32(sp)
   1e4bc:	ae9f30ef          	jal	11fa4 <strlen>
   1e4c0:	00050a1b          	sext.w	s4,a0
   1e4c4:	06714583          	lbu	a1,103(sp)
   1e4c8:	01b13423          	sd	s11,8(sp)
   1e4cc:	00000493          	li	s1,0
   1e4d0:	02013303          	ld	t1,32(sp)
   1e4d4:	ba4ff06f          	j	1d878 <_vfiprintf_r+0x2cc>
   1e4d8:	07010613          	addi	a2,sp,112
   1e4dc:	000d0593          	mv	a1,s10
   1e4e0:	000a8513          	mv	a0,s5
   1e4e4:	02613023          	sd	t1,32(sp)
   1e4e8:	fc1fe0ef          	jal	1d4a8 <__sprint_r.part.0>
   1e4ec:	b20514e3          	bnez	a0,1e014 <_vfiprintf_r+0xa68>
   1e4f0:	07812603          	lw	a2,120(sp)
   1e4f4:	08013783          	ld	a5,128(sp)
   1e4f8:	000c8413          	mv	s0,s9
   1e4fc:	0016059b          	addiw	a1,a2,1
   1e500:	02013303          	ld	t1,32(sp)
   1e504:	975ff06f          	j	1de78 <_vfiprintf_r+0x8cc>
   1e508:	07812603          	lw	a2,120(sp)
   1e50c:	08013783          	ld	a5,128(sp)
   1e510:	05813823          	sd	s8,80(sp)
   1e514:	0016061b          	addiw	a2,a2,1
   1e518:	bfcff06f          	j	1d914 <_vfiprintf_r+0x368>
   1e51c:	00000593          	li	a1,0
   1e520:	00200613          	li	a2,2
   1e524:	00100513          	li	a0,1
   1e528:	08a60263          	beq	a2,a0,1e5ac <_vfiprintf_r+0x1000>
   1e52c:	00200513          	li	a0,2
   1e530:	08a61263          	bne	a2,a0,1e5b4 <_vfiprintf_r+0x1008>
   1e534:	00070313          	mv	t1,a4
   1e538:	c49ff06f          	j	1e180 <_vfiprintf_r+0xbd4>
   1e53c:	00600793          	li	a5,6
   1e540:	0097f463          	bleu	s1,a5,1e548 <_vfiprintf_r+0xf9c>
   1e544:	00078493          	mv	s1,a5
   1e548:	00048a13          	mv	s4,s1
   1e54c:	00048993          	mv	s3,s1
   1e550:	0604c663          	bltz	s1,1e5bc <_vfiprintf_r+0x1010>
   1e554:	00022737          	lui	a4,0x22
   1e558:	01b13423          	sd	s11,8(sp)
   1e55c:	2b870b93          	addi	s7,a4,696 # 222b8 <zeroes.4123+0x70>
   1e560:	00000493          	li	s1,0
   1e564:	b28ff06f          	j	1d88c <_vfiprintf_r+0x2e0>
   1e568:	00030713          	mv	a4,t1
   1e56c:	02d00593          	li	a1,45
   1e570:	00100613          	li	a2,1
   1e574:	fb1ff06f          	j	1e524 <_vfiprintf_r+0xf78>
   1e578:	07812583          	lw	a1,120(sp)
   1e57c:	05813823          	sd	s8,80(sp)
   1e580:	0015859b          	addiw	a1,a1,1
   1e584:	a29ff06f          	j	1dfac <_vfiprintf_r+0xa00>
   1e588:	00022737          	lui	a4,0x22
   1e58c:	00058513          	mv	a0,a1
   1e590:	fc070d93          	addi	s11,a4,-64 # 21fc0 <zeroes.4137>
   1e594:	c60ff06f          	j	1d9f4 <_vfiprintf_r+0x448>
   1e598:	00048a13          	mv	s4,s1
   1e59c:	06714583          	lbu	a1,103(sp)
   1e5a0:	01b13423          	sd	s11,8(sp)
   1e5a4:	00000493          	li	s1,0
   1e5a8:	ad0ff06f          	j	1d878 <_vfiprintf_r+0x2cc>
   1e5ac:	00070313          	mv	t1,a4
   1e5b0:	d44ff06f          	j	1daf4 <_vfiprintf_r+0x548>
   1e5b4:	00070313          	mv	t1,a4
   1e5b8:	da8ff06f          	j	1db60 <_vfiprintf_r+0x5b4>
   1e5bc:	00000993          	li	s3,0
   1e5c0:	f95ff06f          	j	1e554 <_vfiprintf_r+0xfa8>
   1e5c4:	00813783          	ld	a5,8(sp)
   1e5c8:	00080b13          	mv	s6,a6
   1e5cc:	0007a483          	lw	s1,0(a5)
   1e5d0:	00878b93          	addi	s7,a5,8
   1e5d4:	01713423          	sd	s7,8(sp)
   1e5d8:	9804de63          	bgez	s1,1d774 <_vfiprintf_r+0x1c8>
   1e5dc:	fff00493          	li	s1,-1
   1e5e0:	000b0813          	mv	a6,s6
   1e5e4:	954ff06f          	j	1d738 <_vfiprintf_r+0x18c>
   1e5e8:	07d103a3          	sb	t4,103(sp)
   1e5ec:	f44ff06f          	j	1dd30 <_vfiprintf_r+0x784>
   1e5f0:	07d103a3          	sb	t4,103(sp)
   1e5f4:	ee0ff06f          	j	1dcd4 <_vfiprintf_r+0x728>
   1e5f8:	07d103a3          	sb	t4,103(sp)
   1e5fc:	fb0ff06f          	j	1ddac <_vfiprintf_r+0x800>
   1e600:	00137793          	andi	a5,t1,1
   1e604:	00078c63          	beqz	a5,1e61c <_vfiprintf_r+0x1070>
   1e608:	03000793          	li	a5,48
   1e60c:	0af107a3          	sb	a5,175(sp)
   1e610:	05c12a03          	lw	s4,92(sp)
   1e614:	0af10b93          	addi	s7,sp,175
   1e618:	a60ff06f          	j	1d878 <_vfiprintf_r+0x2cc>
   1e61c:	00000a13          	li	s4,0
   1e620:	000c8b93          	mv	s7,s9
   1e624:	a54ff06f          	j	1d878 <_vfiprintf_r+0x2cc>
   1e628:	07d103a3          	sb	t4,103(sp)
   1e62c:	cfcff06f          	j	1db28 <_vfiprintf_r+0x57c>
   1e630:	07d103a3          	sb	t4,103(sp)
   1e634:	c90ff06f          	j	1dac4 <_vfiprintf_r+0x518>
   1e638:	07d103a3          	sb	t4,103(sp)
   1e63c:	d94ff06f          	j	1dbd0 <_vfiprintf_r+0x624>
   1e640:	07d103a3          	sb	t4,103(sp)
   1e644:	d64ff06f          	j	1dba8 <_vfiprintf_r+0x5fc>

000000000001e648 <vfiprintf>:
   1e648:	00060693          	mv	a3,a2
   1e64c:	00058613          	mv	a2,a1
   1e650:	00050593          	mv	a1,a0
   1e654:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   1e658:	f55fe06f          	j	1d5ac <_vfiprintf_r>

000000000001e65c <__sbprintf>:
   1e65c:	0105d783          	lhu	a5,16(a1)
   1e660:	0ac5ae03          	lw	t3,172(a1)
   1e664:	0125d303          	lhu	t1,18(a1)
   1e668:	0305b883          	ld	a7,48(a1)
   1e66c:	0405b803          	ld	a6,64(a1)
   1e670:	b3010113          	addi	sp,sp,-1232
   1e674:	ffd7f793          	andi	a5,a5,-3
   1e678:	40000713          	li	a4,1024
   1e67c:	4c813023          	sd	s0,1216(sp)
   1e680:	00f11823          	sh	a5,16(sp)
   1e684:	00058413          	mv	s0,a1
   1e688:	0b010793          	addi	a5,sp,176
   1e68c:	00010593          	mv	a1,sp
   1e690:	4a913c23          	sd	s1,1208(sp)
   1e694:	4b213823          	sd	s2,1200(sp)
   1e698:	4c113423          	sd	ra,1224(sp)
   1e69c:	00050913          	mv	s2,a0
   1e6a0:	0bc12623          	sw	t3,172(sp)
   1e6a4:	00611923          	sh	t1,18(sp)
   1e6a8:	03113823          	sd	a7,48(sp)
   1e6ac:	05013023          	sd	a6,64(sp)
   1e6b0:	00f13023          	sd	a5,0(sp)
   1e6b4:	00f13c23          	sd	a5,24(sp)
   1e6b8:	00e12623          	sw	a4,12(sp)
   1e6bc:	02e12023          	sw	a4,32(sp)
   1e6c0:	02012423          	sw	zero,40(sp)
   1e6c4:	ee9fe0ef          	jal	1d5ac <_vfiprintf_r>
   1e6c8:	00050493          	mv	s1,a0
   1e6cc:	00054a63          	bltz	a0,1e6e0 <__sbprintf+0x84>
   1e6d0:	00010593          	mv	a1,sp
   1e6d4:	00090513          	mv	a0,s2
   1e6d8:	bd0f80ef          	jal	16aa8 <_fflush_r>
   1e6dc:	02051c63          	bnez	a0,1e714 <__sbprintf+0xb8>
   1e6e0:	01015783          	lhu	a5,16(sp)
   1e6e4:	0407f793          	andi	a5,a5,64
   1e6e8:	00078863          	beqz	a5,1e6f8 <__sbprintf+0x9c>
   1e6ec:	01045783          	lhu	a5,16(s0)
   1e6f0:	0407e793          	ori	a5,a5,64
   1e6f4:	00f41823          	sh	a5,16(s0)
   1e6f8:	4c813083          	ld	ra,1224(sp)
   1e6fc:	00048513          	mv	a0,s1
   1e700:	4c013403          	ld	s0,1216(sp)
   1e704:	4b813483          	ld	s1,1208(sp)
   1e708:	4b013903          	ld	s2,1200(sp)
   1e70c:	4d010113          	addi	sp,sp,1232
   1e710:	00008067          	ret
   1e714:	fff00493          	li	s1,-1
   1e718:	fc9ff06f          	j	1e6e0 <__sbprintf+0x84>

000000000001e71c <_calloc_r>:
   1e71c:	02c585b3          	mul	a1,a1,a2
   1e720:	ff010113          	addi	sp,sp,-16
   1e724:	00113423          	sd	ra,8(sp)
   1e728:	00813023          	sd	s0,0(sp)
   1e72c:	b55f20ef          	jal	11280 <_malloc_r>
   1e730:	08050c63          	beqz	a0,1e7c8 <_calloc_r+0xac>
   1e734:	ff853603          	ld	a2,-8(a0)
   1e738:	04800713          	li	a4,72
   1e73c:	00050413          	mv	s0,a0
   1e740:	ffc67613          	andi	a2,a2,-4
   1e744:	ff860613          	addi	a2,a2,-8
   1e748:	04c76e63          	bltu	a4,a2,1e7a4 <_calloc_r+0x88>
   1e74c:	02700693          	li	a3,39
   1e750:	00050793          	mv	a5,a0
   1e754:	02c6f863          	bleu	a2,a3,1e784 <_calloc_r+0x68>
   1e758:	00053023          	sd	zero,0(a0)
   1e75c:	00053423          	sd	zero,8(a0)
   1e760:	03700793          	li	a5,55
   1e764:	04c7fe63          	bleu	a2,a5,1e7c0 <_calloc_r+0xa4>
   1e768:	00053823          	sd	zero,16(a0)
   1e76c:	00053c23          	sd	zero,24(a0)
   1e770:	02050793          	addi	a5,a0,32
   1e774:	00e61863          	bne	a2,a4,1e784 <_calloc_r+0x68>
   1e778:	02053023          	sd	zero,32(a0)
   1e77c:	03050793          	addi	a5,a0,48
   1e780:	02053423          	sd	zero,40(a0)
   1e784:	0007b023          	sd	zero,0(a5)
   1e788:	0007b423          	sd	zero,8(a5)
   1e78c:	0007b823          	sd	zero,16(a5)
   1e790:	00040513          	mv	a0,s0
   1e794:	00813083          	ld	ra,8(sp)
   1e798:	00013403          	ld	s0,0(sp)
   1e79c:	01010113          	addi	sp,sp,16
   1e7a0:	00008067          	ret
   1e7a4:	00000593          	li	a1,0
   1e7a8:	aadf90ef          	jal	18254 <memset>
   1e7ac:	00813083          	ld	ra,8(sp)
   1e7b0:	00040513          	mv	a0,s0
   1e7b4:	00013403          	ld	s0,0(sp)
   1e7b8:	01010113          	addi	sp,sp,16
   1e7bc:	00008067          	ret
   1e7c0:	01050793          	addi	a5,a0,16
   1e7c4:	fc1ff06f          	j	1e784 <_calloc_r+0x68>
   1e7c8:	00000513          	li	a0,0
   1e7cc:	fc9ff06f          	j	1e794 <_calloc_r+0x78>

000000000001e7d0 <_fclose_r>:
   1e7d0:	0e058e63          	beqz	a1,1e8cc <_fclose_r+0xfc>
   1e7d4:	fe010113          	addi	sp,sp,-32
   1e7d8:	00813823          	sd	s0,16(sp)
   1e7dc:	00913423          	sd	s1,8(sp)
   1e7e0:	00113c23          	sd	ra,24(sp)
   1e7e4:	01213023          	sd	s2,0(sp)
   1e7e8:	00050493          	mv	s1,a0
   1e7ec:	00058413          	mv	s0,a1
   1e7f0:	00050663          	beqz	a0,1e7fc <_fclose_r+0x2c>
   1e7f4:	05052783          	lw	a5,80(a0)
   1e7f8:	0a078a63          	beqz	a5,1e8ac <_fclose_r+0xdc>
   1e7fc:	01041783          	lh	a5,16(s0)
   1e800:	00000513          	li	a0,0
   1e804:	00079e63          	bnez	a5,1e820 <_fclose_r+0x50>
   1e808:	01813083          	ld	ra,24(sp)
   1e80c:	01013403          	ld	s0,16(sp)
   1e810:	00813483          	ld	s1,8(sp)
   1e814:	00013903          	ld	s2,0(sp)
   1e818:	02010113          	addi	sp,sp,32
   1e81c:	00008067          	ret
   1e820:	00040593          	mv	a1,s0
   1e824:	00048513          	mv	a0,s1
   1e828:	814f80ef          	jal	1683c <__sflush_r>
   1e82c:	05043783          	ld	a5,80(s0)
   1e830:	00050913          	mv	s2,a0
   1e834:	00078a63          	beqz	a5,1e848 <_fclose_r+0x78>
   1e838:	03043583          	ld	a1,48(s0)
   1e83c:	00048513          	mv	a0,s1
   1e840:	000780e7          	jalr	a5
   1e844:	06054863          	bltz	a0,1e8b4 <_fclose_r+0xe4>
   1e848:	01045783          	lhu	a5,16(s0)
   1e84c:	0807f793          	andi	a5,a5,128
   1e850:	06079663          	bnez	a5,1e8bc <_fclose_r+0xec>
   1e854:	05843583          	ld	a1,88(s0)
   1e858:	00058c63          	beqz	a1,1e870 <_fclose_r+0xa0>
   1e85c:	07440793          	addi	a5,s0,116
   1e860:	00f58663          	beq	a1,a5,1e86c <_fclose_r+0x9c>
   1e864:	00048513          	mv	a0,s1
   1e868:	9b1f80ef          	jal	17218 <_free_r>
   1e86c:	04043c23          	sd	zero,88(s0)
   1e870:	07843583          	ld	a1,120(s0)
   1e874:	00058863          	beqz	a1,1e884 <_fclose_r+0xb4>
   1e878:	00048513          	mv	a0,s1
   1e87c:	99df80ef          	jal	17218 <_free_r>
   1e880:	06043c23          	sd	zero,120(s0)
   1e884:	de0f80ef          	jal	16e64 <__sfp_lock_acquire>
   1e888:	00041823          	sh	zero,16(s0)
   1e88c:	ddcf80ef          	jal	16e68 <__sfp_lock_release>
   1e890:	01813083          	ld	ra,24(sp)
   1e894:	00090513          	mv	a0,s2
   1e898:	01013403          	ld	s0,16(sp)
   1e89c:	00813483          	ld	s1,8(sp)
   1e8a0:	00013903          	ld	s2,0(sp)
   1e8a4:	02010113          	addi	sp,sp,32
   1e8a8:	00008067          	ret
   1e8ac:	da8f80ef          	jal	16e54 <__sinit>
   1e8b0:	f4dff06f          	j	1e7fc <_fclose_r+0x2c>
   1e8b4:	fff00913          	li	s2,-1
   1e8b8:	f91ff06f          	j	1e848 <_fclose_r+0x78>
   1e8bc:	01843583          	ld	a1,24(s0)
   1e8c0:	00048513          	mv	a0,s1
   1e8c4:	955f80ef          	jal	17218 <_free_r>
   1e8c8:	f8dff06f          	j	1e854 <_fclose_r+0x84>
   1e8cc:	00000513          	li	a0,0
   1e8d0:	00008067          	ret

000000000001e8d4 <fclose>:
   1e8d4:	00050593          	mv	a1,a0
   1e8d8:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   1e8dc:	ef5ff06f          	j	1e7d0 <_fclose_r>

000000000001e8e0 <__fputwc>:
   1e8e0:	fb010113          	addi	sp,sp,-80
   1e8e4:	04813023          	sd	s0,64(sp)
   1e8e8:	03413023          	sd	s4,32(sp)
   1e8ec:	01513c23          	sd	s5,24(sp)
   1e8f0:	04113423          	sd	ra,72(sp)
   1e8f4:	02913c23          	sd	s1,56(sp)
   1e8f8:	03213823          	sd	s2,48(sp)
   1e8fc:	03313423          	sd	s3,40(sp)
   1e900:	01613823          	sd	s6,16(sp)
   1e904:	00050a93          	mv	s5,a0
   1e908:	00058a13          	mv	s4,a1
   1e90c:	00060413          	mv	s0,a2
   1e910:	af0f90ef          	jal	17c00 <__locale_mb_cur_max>
   1e914:	00100793          	li	a5,1
   1e918:	10f50663          	beq	a0,a5,1ea24 <__fputwc+0x144>
   1e91c:	00810493          	addi	s1,sp,8
   1e920:	0a440693          	addi	a3,s0,164
   1e924:	000a0613          	mv	a2,s4
   1e928:	00048593          	mv	a1,s1
   1e92c:	000a8513          	mv	a0,s5
   1e930:	565010ef          	jal	20694 <_wcrtomb_r>
   1e934:	fff00793          	li	a5,-1
   1e938:	00050993          	mv	s3,a0
   1e93c:	08f50e63          	beq	a0,a5,1e9d8 <__fputwc+0xf8>
   1e940:	10050263          	beqz	a0,1ea44 <__fputwc+0x164>
   1e944:	00814583          	lbu	a1,8(sp)
   1e948:	00c42783          	lw	a5,12(s0)
   1e94c:	00000913          	li	s2,0
   1e950:	00a00b13          	li	s6,10
   1e954:	fff7879b          	addiw	a5,a5,-1
   1e958:	00f42623          	sw	a5,12(s0)
   1e95c:	0207cc63          	bltz	a5,1e994 <__fputwc+0xb4>
   1e960:	00043783          	ld	a5,0(s0)
   1e964:	00b78023          	sb	a1,0(a5)
   1e968:	00043783          	ld	a5,0(s0)
   1e96c:	00178793          	addi	a5,a5,1
   1e970:	00f43023          	sd	a5,0(s0)
   1e974:	00190913          	addi	s2,s2,1
   1e978:	00148493          	addi	s1,s1,1
   1e97c:	0d397463          	bleu	s3,s2,1ea44 <__fputwc+0x164>
   1e980:	00c42783          	lw	a5,12(s0)
   1e984:	0004c583          	lbu	a1,0(s1)
   1e988:	fff7879b          	addiw	a5,a5,-1
   1e98c:	00f42623          	sw	a5,12(s0)
   1e990:	fc07d8e3          	bgez	a5,1e960 <__fputwc+0x80>
   1e994:	02842703          	lw	a4,40(s0)
   1e998:	06e7ca63          	blt	a5,a4,1ea0c <__fputwc+0x12c>
   1e99c:	00043783          	ld	a5,0(s0)
   1e9a0:	00b78023          	sb	a1,0(a5)
   1e9a4:	00043783          	ld	a5,0(s0)
   1e9a8:	0007c703          	lbu	a4,0(a5)
   1e9ac:	00178793          	addi	a5,a5,1
   1e9b0:	fd6710e3          	bne	a4,s6,1e970 <__fputwc+0x90>
   1e9b4:	00040613          	mv	a2,s0
   1e9b8:	000b0593          	mv	a1,s6
   1e9bc:	000a8513          	mv	a0,s5
   1e9c0:	e08f60ef          	jal	14fc8 <__swbuf_r>
   1e9c4:	0015051b          	addiw	a0,a0,1
   1e9c8:	00153513          	seqz	a0,a0
   1e9cc:	fa0504e3          	beqz	a0,1e974 <__fputwc+0x94>
   1e9d0:	fff00513          	li	a0,-1
   1e9d4:	0100006f          	j	1e9e4 <__fputwc+0x104>
   1e9d8:	01045783          	lhu	a5,16(s0)
   1e9dc:	0407e793          	ori	a5,a5,64
   1e9e0:	00f41823          	sh	a5,16(s0)
   1e9e4:	04813083          	ld	ra,72(sp)
   1e9e8:	04013403          	ld	s0,64(sp)
   1e9ec:	03813483          	ld	s1,56(sp)
   1e9f0:	03013903          	ld	s2,48(sp)
   1e9f4:	02813983          	ld	s3,40(sp)
   1e9f8:	02013a03          	ld	s4,32(sp)
   1e9fc:	01813a83          	ld	s5,24(sp)
   1ea00:	01013b03          	ld	s6,16(sp)
   1ea04:	05010113          	addi	sp,sp,80
   1ea08:	00008067          	ret
   1ea0c:	00040613          	mv	a2,s0
   1ea10:	000a8513          	mv	a0,s5
   1ea14:	db4f60ef          	jal	14fc8 <__swbuf_r>
   1ea18:	0015051b          	addiw	a0,a0,1
   1ea1c:	00153513          	seqz	a0,a0
   1ea20:	fadff06f          	j	1e9cc <__fputwc+0xec>
   1ea24:	fffa079b          	addiw	a5,s4,-1
   1ea28:	0fe00713          	li	a4,254
   1ea2c:	eef768e3          	bltu	a4,a5,1e91c <__fputwc+0x3c>
   1ea30:	0ffa7593          	andi	a1,s4,255
   1ea34:	00b10423          	sb	a1,8(sp)
   1ea38:	00100993          	li	s3,1
   1ea3c:	00810493          	addi	s1,sp,8
   1ea40:	f09ff06f          	j	1e948 <__fputwc+0x68>
   1ea44:	000a0513          	mv	a0,s4
   1ea48:	f9dff06f          	j	1e9e4 <__fputwc+0x104>

000000000001ea4c <_fputwc_r>:
   1ea4c:	01061783          	lh	a5,16(a2)
   1ea50:	00002737          	lui	a4,0x2
   1ea54:	03279693          	slli	a3,a5,0x32
   1ea58:	0006cc63          	bltz	a3,1ea70 <_fputwc_r+0x24>
   1ea5c:	0ac62683          	lw	a3,172(a2)
   1ea60:	00e7e7b3          	or	a5,a5,a4
   1ea64:	00f61823          	sh	a5,16(a2)
   1ea68:	00e6e733          	or	a4,a3,a4
   1ea6c:	0ae62623          	sw	a4,172(a2)
   1ea70:	e71ff06f          	j	1e8e0 <__fputwc>

000000000001ea74 <fputwc>:
   1ea74:	fd010113          	addi	sp,sp,-48
   1ea78:	02813023          	sd	s0,32(sp)
   1ea7c:	8101b403          	ld	s0,-2032(gp) # 249e0 <_impure_ptr>
   1ea80:	00913c23          	sd	s1,24(sp)
   1ea84:	02113423          	sd	ra,40(sp)
   1ea88:	00050493          	mv	s1,a0
   1ea8c:	00058613          	mv	a2,a1
   1ea90:	00040663          	beqz	s0,1ea9c <fputwc+0x28>
   1ea94:	05042783          	lw	a5,80(s0)
   1ea98:	04078263          	beqz	a5,1eadc <fputwc+0x68>
   1ea9c:	01061783          	lh	a5,16(a2)
   1eaa0:	00002737          	lui	a4,0x2
   1eaa4:	03279693          	slli	a3,a5,0x32
   1eaa8:	0006cc63          	bltz	a3,1eac0 <fputwc+0x4c>
   1eaac:	0ac62683          	lw	a3,172(a2)
   1eab0:	00e7e7b3          	or	a5,a5,a4
   1eab4:	00f61823          	sh	a5,16(a2)
   1eab8:	00e6e733          	or	a4,a3,a4
   1eabc:	0ae62623          	sw	a4,172(a2)
   1eac0:	00048593          	mv	a1,s1
   1eac4:	00040513          	mv	a0,s0
   1eac8:	02813083          	ld	ra,40(sp)
   1eacc:	02013403          	ld	s0,32(sp)
   1ead0:	01813483          	ld	s1,24(sp)
   1ead4:	03010113          	addi	sp,sp,48
   1ead8:	e09ff06f          	j	1e8e0 <__fputwc>
   1eadc:	00040513          	mv	a0,s0
   1eae0:	00b13423          	sd	a1,8(sp)
   1eae4:	b70f80ef          	jal	16e54 <__sinit>
   1eae8:	00813603          	ld	a2,8(sp)
   1eaec:	fb1ff06f          	j	1ea9c <fputwc+0x28>

000000000001eaf0 <rshift>:
   1eaf0:	01452703          	lw	a4,20(a0)
   1eaf4:	4055d69b          	sraiw	a3,a1,0x5
   1eaf8:	01850893          	addi	a7,a0,24
   1eafc:	08e6d863          	ble	a4,a3,1eb8c <rshift+0x9c>
   1eb00:	00068613          	mv	a2,a3
   1eb04:	00271713          	slli	a4,a4,0x2
   1eb08:	00261613          	slli	a2,a2,0x2
   1eb0c:	01f5f593          	andi	a1,a1,31
   1eb10:	00e88733          	add	a4,a7,a4
   1eb14:	00c88633          	add	a2,a7,a2
   1eb18:	08058063          	beqz	a1,1eb98 <rshift+0xa8>
   1eb1c:	00062783          	lw	a5,0(a2)
   1eb20:	02000e13          	li	t3,32
   1eb24:	00460693          	addi	a3,a2,4
   1eb28:	40be0e3b          	subw	t3,t3,a1
   1eb2c:	00b7d7bb          	srlw	a5,a5,a1
   1eb30:	0ae6f663          	bleu	a4,a3,1ebdc <rshift+0xec>
   1eb34:	00088313          	mv	t1,a7
   1eb38:	0006a803          	lw	a6,0(a3)
   1eb3c:	00430313          	addi	t1,t1,4
   1eb40:	00468693          	addi	a3,a3,4
   1eb44:	01c8183b          	sllw	a6,a6,t3
   1eb48:	00f867b3          	or	a5,a6,a5
   1eb4c:	fef32e23          	sw	a5,-4(t1)
   1eb50:	ffc6a783          	lw	a5,-4(a3)
   1eb54:	00b7d7bb          	srlw	a5,a5,a1
   1eb58:	fee6e0e3          	bltu	a3,a4,1eb38 <rshift+0x48>
   1eb5c:	40c70733          	sub	a4,a4,a2
   1eb60:	ffb70713          	addi	a4,a4,-5 # 1ffb <_ftext-0xe005>
   1eb64:	ffc77713          	andi	a4,a4,-4
   1eb68:	00470713          	addi	a4,a4,4
   1eb6c:	00e88733          	add	a4,a7,a4
   1eb70:	00f72023          	sw	a5,0(a4)
   1eb74:	00078463          	beqz	a5,1eb7c <rshift+0x8c>
   1eb78:	00470713          	addi	a4,a4,4
   1eb7c:	411707b3          	sub	a5,a4,a7
   1eb80:	4027d793          	srai	a5,a5,0x2
   1eb84:	0007879b          	sext.w	a5,a5
   1eb88:	0480006f          	j	1ebd0 <rshift+0xe0>
   1eb8c:	00052a23          	sw	zero,20(a0)
   1eb90:	00052c23          	sw	zero,24(a0)
   1eb94:	00008067          	ret
   1eb98:	00088793          	mv	a5,a7
   1eb9c:	00060693          	mv	a3,a2
   1eba0:	fee676e3          	bleu	a4,a2,1eb8c <rshift+0x9c>
   1eba4:	00468693          	addi	a3,a3,4
   1eba8:	ffc6a583          	lw	a1,-4(a3)
   1ebac:	00478793          	addi	a5,a5,4
   1ebb0:	feb7ae23          	sw	a1,-4(a5)
   1ebb4:	fee6e8e3          	bltu	a3,a4,1eba4 <rshift+0xb4>
   1ebb8:	fff64793          	not	a5,a2
   1ebbc:	00e787b3          	add	a5,a5,a4
   1ebc0:	ffc7f793          	andi	a5,a5,-4
   1ebc4:	00478793          	addi	a5,a5,4
   1ebc8:	4027d793          	srai	a5,a5,0x2
   1ebcc:	0007879b          	sext.w	a5,a5
   1ebd0:	00f52a23          	sw	a5,20(a0)
   1ebd4:	fa078ee3          	beqz	a5,1eb90 <rshift+0xa0>
   1ebd8:	00008067          	ret
   1ebdc:	00088713          	mv	a4,a7
   1ebe0:	f91ff06f          	j	1eb70 <rshift+0x80>

000000000001ebe4 <__gethex>:
   1ebe4:	f4010113          	addi	sp,sp,-192
   1ebe8:	00d13c23          	sd	a3,24(sp)
   1ebec:	00e13423          	sd	a4,8(sp)
   1ebf0:	02f12223          	sw	a5,36(sp)
   1ebf4:	0a113c23          	sd	ra,184(sp)
   1ebf8:	0a913423          	sd	s1,168(sp)
   1ebfc:	0b213023          	sd	s2,160(sp)
   1ec00:	09313c23          	sd	s3,152(sp)
   1ec04:	00058913          	mv	s2,a1
   1ec08:	09413823          	sd	s4,144(sp)
   1ec0c:	07713c23          	sd	s7,120(sp)
   1ec10:	00060993          	mv	s3,a2
   1ec14:	0a813823          	sd	s0,176(sp)
   1ec18:	09513423          	sd	s5,136(sp)
   1ec1c:	09613023          	sd	s6,128(sp)
   1ec20:	07813823          	sd	s8,112(sp)
   1ec24:	07913423          	sd	s9,104(sp)
   1ec28:	07a13023          	sd	s10,96(sp)
   1ec2c:	05b13c23          	sd	s11,88(sp)
   1ec30:	00050a13          	mv	s4,a0
   1ec34:	fe9f80ef          	jal	17c1c <_localeconv_r>
   1ec38:	00053483          	ld	s1,0(a0)
   1ec3c:	00048513          	mv	a0,s1
   1ec40:	b64f30ef          	jal	11fa4 <strlen>
   1ec44:	00093783          	ld	a5,0(s2)
   1ec48:	00a486b3          	add	a3,s1,a0
   1ec4c:	fff6c683          	lbu	a3,-1(a3)
   1ec50:	0027c703          	lbu	a4,2(a5)
   1ec54:	00050b93          	mv	s7,a0
   1ec58:	00d13823          	sd	a3,16(sp)
   1ec5c:	03000693          	li	a3,48
   1ec60:	5cd71063          	bne	a4,a3,1f220 <__gethex+0x63c>
   1ec64:	00378793          	addi	a5,a5,3
   1ec68:	00000b13          	li	s6,0
   1ec6c:	00070613          	mv	a2,a4
   1ec70:	00078d93          	mv	s11,a5
   1ec74:	00178793          	addi	a5,a5,1
   1ec78:	fff7c703          	lbu	a4,-1(a5)
   1ec7c:	001b0b1b          	addiw	s6,s6,1
   1ec80:	fec708e3          	beq	a4,a2,1ec70 <__gethex+0x8c>
   1ec84:	000228b7          	lui	a7,0x22
   1ec88:	fd088a93          	addi	s5,a7,-48 # 21fd0 <__hexdig>
   1ec8c:	00ea8733          	add	a4,s5,a4
   1ec90:	00074783          	lbu	a5,0(a4)
   1ec94:	1e078e63          	beqz	a5,1ee90 <__gethex+0x2ac>
   1ec98:	000dc783          	lbu	a5,0(s11)
   1ec9c:	00000413          	li	s0,0
   1eca0:	00000c93          	li	s9,0
   1eca4:	00fa87b3          	add	a5,s5,a5
   1eca8:	0007c783          	lbu	a5,0(a5)
   1ecac:	000d8c13          	mv	s8,s11
   1ecb0:	00078c63          	beqz	a5,1ecc8 <__gethex+0xe4>
   1ecb4:	001c0c13          	addi	s8,s8,1
   1ecb8:	000c4783          	lbu	a5,0(s8)
   1ecbc:	00fa87b3          	add	a5,s5,a5
   1ecc0:	0007c783          	lbu	a5,0(a5)
   1ecc4:	fe0798e3          	bnez	a5,1ecb4 <__gethex+0xd0>
   1ecc8:	000b8613          	mv	a2,s7
   1eccc:	00048593          	mv	a1,s1
   1ecd0:	000c0513          	mv	a0,s8
   1ecd4:	101000ef          	jal	1f5d4 <strncmp>
   1ecd8:	1a050663          	beqz	a0,1ee84 <__gethex+0x2a0>
   1ecdc:	000c4783          	lbu	a5,0(s8)
   1ece0:	500c8a63          	beqz	s9,1f1f4 <__gethex+0x610>
   1ece4:	419c0cbb          	subw	s9,s8,s9
   1ece8:	002c9c9b          	slliw	s9,s9,0x2
   1ecec:	41900cbb          	negw	s9,s9
   1ecf0:	05000713          	li	a4,80
   1ecf4:	20e78e63          	beq	a5,a4,1ef10 <__gethex+0x32c>
   1ecf8:	07000713          	li	a4,112
   1ecfc:	000c0d13          	mv	s10,s8
   1ed00:	20e78863          	beq	a5,a4,1ef10 <__gethex+0x32c>
   1ed04:	01893023          	sd	s8,0(s2)
   1ed08:	1a041c63          	bnez	s0,1eec0 <__gethex+0x2dc>
   1ed0c:	41bd07b3          	sub	a5,s10,s11
   1ed10:	fff7879b          	addiw	a5,a5,-1
   1ed14:	00700713          	li	a4,7
   1ed18:	00000593          	li	a1,0
   1ed1c:	00f75863          	ble	a5,a4,1ed2c <__gethex+0x148>
   1ed20:	4017d79b          	sraiw	a5,a5,0x1
   1ed24:	0015859b          	addiw	a1,a1,1
   1ed28:	fef74ce3          	blt	a4,a5,1ed20 <__gethex+0x13c>
   1ed2c:	000a0513          	mv	a0,s4
   1ed30:	e00f90ef          	jal	18330 <_Balloc>
   1ed34:	01850913          	addi	s2,a0,24
   1ed38:	00050b13          	mv	s6,a0
   1ed3c:	00090313          	mv	t1,s2
   1ed40:	00000793          	li	a5,0
   1ed44:	05adf863          	bleu	s10,s11,1ed94 <__gethex+0x1b0>
   1ed48:	01012403          	lw	s0,16(sp)
   1ed4c:	00100f13          	li	t5,1
   1ed50:	00000c13          	li	s8,0
   1ed54:	417f0f33          	sub	t5,t5,s7
   1ed58:	02000e13          	li	t3,32
   1ed5c:	fffd4703          	lbu	a4,-1(s10)
   1ed60:	fffd0f93          	addi	t6,s10,-1
   1ed64:	0a870c63          	beq	a4,s0,1ee1c <__gethex+0x238>
   1ed68:	11cc0263          	beq	s8,t3,1ee6c <__gethex+0x288>
   1ed6c:	000c0613          	mv	a2,s8
   1ed70:	004c0c1b          	addiw	s8,s8,4
   1ed74:	fffd4683          	lbu	a3,-1(s10)
   1ed78:	000f8d13          	mv	s10,t6
   1ed7c:	00da86b3          	add	a3,s5,a3
   1ed80:	0006c703          	lbu	a4,0(a3)
   1ed84:	00f77713          	andi	a4,a4,15
   1ed88:	00c7173b          	sllw	a4,a4,a2
   1ed8c:	00e7e7b3          	or	a5,a5,a4
   1ed90:	fdade6e3          	bltu	s11,s10,1ed5c <__gethex+0x178>
   1ed94:	00430713          	addi	a4,t1,4
   1ed98:	41270733          	sub	a4,a4,s2
   1ed9c:	40275713          	srai	a4,a4,0x2
   1eda0:	0007071b          	sext.w	a4,a4
   1eda4:	00f32023          	sw	a5,0(t1)
   1eda8:	00eb2a23          	sw	a4,20(s6)
   1edac:	00078513          	mv	a0,a5
   1edb0:	0057141b          	slliw	s0,a4,0x5
   1edb4:	889f90ef          	jal	1863c <__hi0bits>
   1edb8:	0009a483          	lw	s1,0(s3)
   1edbc:	40a4053b          	subw	a0,s0,a0
   1edc0:	3ca4c663          	blt	s1,a0,1f18c <__gethex+0x5a8>
   1edc4:	00000c13          	li	s8,0
   1edc8:	42954a63          	blt	a0,s1,1f1fc <__gethex+0x618>
   1edcc:	0089a783          	lw	a5,8(s3)
   1edd0:	2f97ce63          	blt	a5,s9,1f0cc <__gethex+0x4e8>
   1edd4:	0049a783          	lw	a5,4(s3)
   1edd8:	36fcd863          	ble	a5,s9,1f148 <__gethex+0x564>
   1eddc:	41978cbb          	subw	s9,a5,s9
   1ede0:	1c9ccc63          	blt	s9,s1,1efb8 <__gethex+0x3d4>
   1ede4:	00c9a703          	lw	a4,12(s3)
   1ede8:	00200693          	li	a3,2
   1edec:	4ad70a63          	beq	a4,a3,1f2a0 <__gethex+0x6bc>
   1edf0:	00300693          	li	a3,3
   1edf4:	46d70c63          	beq	a4,a3,1f26c <__gethex+0x688>
   1edf8:	00100693          	li	a3,1
   1edfc:	4ad70863          	beq	a4,a3,1f2ac <__gethex+0x6c8>
   1ee00:	000a0513          	mv	a0,s4
   1ee04:	000b0593          	mv	a1,s6
   1ee08:	dd4f90ef          	jal	183dc <_Bfree>
   1ee0c:	00813783          	ld	a5,8(sp)
   1ee10:	05000513          	li	a0,80
   1ee14:	0007b023          	sd	zero,0(a5)
   1ee18:	0b40006f          	j	1eecc <__gethex+0x2e8>
   1ee1c:	01ef8733          	add	a4,t6,t5
   1ee20:	f5b764e3          	bltu	a4,s11,1ed68 <__gethex+0x184>
   1ee24:	00070513          	mv	a0,a4
   1ee28:	000b8613          	mv	a2,s7
   1ee2c:	00048593          	mv	a1,s1
   1ee30:	05c13023          	sd	t3,64(sp)
   1ee34:	03e13c23          	sd	t5,56(sp)
   1ee38:	02f13823          	sd	a5,48(sp)
   1ee3c:	02613423          	sd	t1,40(sp)
   1ee40:	00e13823          	sd	a4,16(sp)
   1ee44:	05f13423          	sd	t6,72(sp)
   1ee48:	78c000ef          	jal	1f5d4 <strncmp>
   1ee4c:	01013703          	ld	a4,16(sp)
   1ee50:	02813303          	ld	t1,40(sp)
   1ee54:	03013783          	ld	a5,48(sp)
   1ee58:	03813f03          	ld	t5,56(sp)
   1ee5c:	04013e03          	ld	t3,64(sp)
   1ee60:	28050463          	beqz	a0,1f0e8 <__gethex+0x504>
   1ee64:	04813f83          	ld	t6,72(sp)
   1ee68:	f1cc12e3          	bne	s8,t3,1ed6c <__gethex+0x188>
   1ee6c:	00f32023          	sw	a5,0(t1)
   1ee70:	00400c13          	li	s8,4
   1ee74:	00430313          	addi	t1,t1,4
   1ee78:	00000793          	li	a5,0
   1ee7c:	00000613          	li	a2,0
   1ee80:	ef5ff06f          	j	1ed74 <__gethex+0x190>
   1ee84:	3a0c8863          	beqz	s9,1f234 <__gethex+0x650>
   1ee88:	000c4783          	lbu	a5,0(s8)
   1ee8c:	e59ff06f          	j	1ece4 <__gethex+0x100>
   1ee90:	000b8613          	mv	a2,s7
   1ee94:	00048593          	mv	a1,s1
   1ee98:	000d8513          	mv	a0,s11
   1ee9c:	738000ef          	jal	1f5d4 <strncmp>
   1eea0:	26050063          	beqz	a0,1f100 <__gethex+0x51c>
   1eea4:	000dc783          	lbu	a5,0(s11)
   1eea8:	000d8c13          	mv	s8,s11
   1eeac:	05000713          	li	a4,80
   1eeb0:	04e78c63          	beq	a5,a4,1ef08 <__gethex+0x324>
   1eeb4:	07000713          	li	a4,112
   1eeb8:	04e78863          	beq	a5,a4,1ef08 <__gethex+0x324>
   1eebc:	01893023          	sd	s8,0(s2)
   1eec0:	001b3513          	seqz	a0,s6
   1eec4:	40a0053b          	negw	a0,a0
   1eec8:	00657513          	andi	a0,a0,6
   1eecc:	0b813083          	ld	ra,184(sp)
   1eed0:	0b013403          	ld	s0,176(sp)
   1eed4:	0a813483          	ld	s1,168(sp)
   1eed8:	0a013903          	ld	s2,160(sp)
   1eedc:	09813983          	ld	s3,152(sp)
   1eee0:	09013a03          	ld	s4,144(sp)
   1eee4:	08813a83          	ld	s5,136(sp)
   1eee8:	08013b03          	ld	s6,128(sp)
   1eeec:	07813b83          	ld	s7,120(sp)
   1eef0:	07013c03          	ld	s8,112(sp)
   1eef4:	06813c83          	ld	s9,104(sp)
   1eef8:	06013d03          	ld	s10,96(sp)
   1eefc:	05813d83          	ld	s11,88(sp)
   1ef00:	0c010113          	addi	sp,sp,192
   1ef04:	00008067          	ret
   1ef08:	00000c93          	li	s9,0
   1ef0c:	00100413          	li	s0,1
   1ef10:	001c4783          	lbu	a5,1(s8)
   1ef14:	02b00713          	li	a4,43
   1ef18:	26e78663          	beq	a5,a4,1f184 <__gethex+0x5a0>
   1ef1c:	02d00713          	li	a4,45
   1ef20:	00100593          	li	a1,1
   1ef24:	1ce79863          	bne	a5,a4,1f0f4 <__gethex+0x510>
   1ef28:	002c4783          	lbu	a5,2(s8)
   1ef2c:	002c0513          	addi	a0,s8,2
   1ef30:	00fa87b3          	add	a5,s5,a5
   1ef34:	0007c783          	lbu	a5,0(a5)
   1ef38:	01800e13          	li	t3,24
   1ef3c:	000c0d13          	mv	s10,s8
   1ef40:	fff7871b          	addiw	a4,a5,-1
   1ef44:	0ff77713          	andi	a4,a4,255
   1ef48:	daee6ee3          	bltu	t3,a4,1ed04 <__gethex+0x120>
   1ef4c:	00154703          	lbu	a4,1(a0)
   1ef50:	ff07879b          	addiw	a5,a5,-16
   1ef54:	00150513          	addi	a0,a0,1
   1ef58:	00ea8733          	add	a4,s5,a4
   1ef5c:	00074e83          	lbu	t4,0(a4)
   1ef60:	fffe871b          	addiw	a4,t4,-1
   1ef64:	0ff77713          	andi	a4,a4,255
   1ef68:	02ee6c63          	bltu	t3,a4,1efa0 <__gethex+0x3bc>
   1ef6c:	00150513          	addi	a0,a0,1
   1ef70:	00054603          	lbu	a2,0(a0)
   1ef74:	0017971b          	slliw	a4,a5,0x1
   1ef78:	0037979b          	slliw	a5,a5,0x3
   1ef7c:	00ca8633          	add	a2,s5,a2
   1ef80:	00064603          	lbu	a2,0(a2)
   1ef84:	00f707bb          	addw	a5,a4,a5
   1ef88:	01d787bb          	addw	a5,a5,t4
   1ef8c:	fff6071b          	addiw	a4,a2,-1
   1ef90:	0ff77713          	andi	a4,a4,255
   1ef94:	ff07879b          	addiw	a5,a5,-16
   1ef98:	00060e93          	mv	t4,a2
   1ef9c:	fcee78e3          	bleu	a4,t3,1ef6c <__gethex+0x388>
   1efa0:	00058463          	beqz	a1,1efa8 <__gethex+0x3c4>
   1efa4:	40f007bb          	negw	a5,a5
   1efa8:	000c0d13          	mv	s10,s8
   1efac:	00fc8cbb          	addw	s9,s9,a5
   1efb0:	00050c13          	mv	s8,a0
   1efb4:	d51ff06f          	j	1ed04 <__gethex+0x120>
   1efb8:	fffc841b          	addiw	s0,s9,-1
   1efbc:	2a0c1463          	bnez	s8,1f264 <__gethex+0x680>
   1efc0:	00040a63          	beqz	s0,1efd4 <__gethex+0x3f0>
   1efc4:	00040593          	mv	a1,s0
   1efc8:	000b0513          	mv	a0,s6
   1efcc:	b44fa0ef          	jal	19310 <__any_on>
   1efd0:	00050c13          	mv	s8,a0
   1efd4:	4054579b          	sraiw	a5,s0,0x5
   1efd8:	00279793          	slli	a5,a5,0x2
   1efdc:	00f907b3          	add	a5,s2,a5
   1efe0:	0007a783          	lw	a5,0(a5)
   1efe4:	00100713          	li	a4,1
   1efe8:	0087173b          	sllw	a4,a4,s0
   1efec:	00f777b3          	and	a5,a4,a5
   1eff0:	00078463          	beqz	a5,1eff8 <__gethex+0x414>
   1eff4:	002c6c13          	ori	s8,s8,2
   1eff8:	000c8593          	mv	a1,s9
   1effc:	000b0513          	mv	a0,s6
   1f000:	af1ff0ef          	jal	1eaf0 <rshift>
   1f004:	419484bb          	subw	s1,s1,s9
   1f008:	0049ac83          	lw	s9,4(s3)
   1f00c:	00200413          	li	s0,2
   1f010:	140c0e63          	beqz	s8,1f16c <__gethex+0x588>
   1f014:	00c9a783          	lw	a5,12(s3)
   1f018:	00200713          	li	a4,2
   1f01c:	12e78a63          	beq	a5,a4,1f150 <__gethex+0x56c>
   1f020:	00300713          	li	a4,3
   1f024:	12e78e63          	beq	a5,a4,1f160 <__gethex+0x57c>
   1f028:	00100713          	li	a4,1
   1f02c:	12e79e63          	bne	a5,a4,1f168 <__gethex+0x584>
   1f030:	002c7793          	andi	a5,s8,2
   1f034:	12078a63          	beqz	a5,1f168 <__gethex+0x584>
   1f038:	00092783          	lw	a5,0(s2)
   1f03c:	00fc67b3          	or	a5,s8,a5
   1f040:	00e7f7b3          	and	a5,a5,a4
   1f044:	12078263          	beqz	a5,1f168 <__gethex+0x584>
   1f048:	014b2c03          	lw	s8,20(s6)
   1f04c:	00090793          	mv	a5,s2
   1f050:	fff00693          	li	a3,-1
   1f054:	002c1b93          	slli	s7,s8,0x2
   1f058:	01790633          	add	a2,s2,s7
   1f05c:	0100006f          	j	1f06c <__gethex+0x488>
   1f060:	00478793          	addi	a5,a5,4
   1f064:	fe07ae23          	sw	zero,-4(a5)
   1f068:	26c7f263          	bleu	a2,a5,1f2cc <__gethex+0x6e8>
   1f06c:	0007a703          	lw	a4,0(a5)
   1f070:	fed708e3          	beq	a4,a3,1f060 <__gethex+0x47c>
   1f074:	0017071b          	addiw	a4,a4,1
   1f078:	00e7a023          	sw	a4,0(a5)
   1f07c:	00200793          	li	a5,2
   1f080:	26f40c63          	beq	s0,a5,1f2f8 <__gethex+0x714>
   1f084:	014b2783          	lw	a5,20(s6)
   1f088:	02fc4463          	blt	s8,a5,1f0b0 <__gethex+0x4cc>
   1f08c:	01f4f493          	andi	s1,s1,31
   1f090:	02100413          	li	s0,33
   1f094:	0c048c63          	beqz	s1,1f16c <__gethex+0x588>
   1f098:	01790933          	add	s2,s2,s7
   1f09c:	ffc92503          	lw	a0,-4(s2)
   1f0a0:	d9cf90ef          	jal	1863c <__hi0bits>
   1f0a4:	02000793          	li	a5,32
   1f0a8:	409784bb          	subw	s1,a5,s1
   1f0ac:	0c955063          	ble	s1,a0,1f16c <__gethex+0x588>
   1f0b0:	00100593          	li	a1,1
   1f0b4:	000b0513          	mv	a0,s6
   1f0b8:	a39ff0ef          	jal	1eaf0 <rshift>
   1f0bc:	0089a783          	lw	a5,8(s3)
   1f0c0:	001c8c9b          	addiw	s9,s9,1
   1f0c4:	02100413          	li	s0,33
   1f0c8:	0b97d263          	ble	s9,a5,1f16c <__gethex+0x588>
   1f0cc:	000a0513          	mv	a0,s4
   1f0d0:	000b0593          	mv	a1,s6
   1f0d4:	b08f90ef          	jal	183dc <_Bfree>
   1f0d8:	00813783          	ld	a5,8(sp)
   1f0dc:	0a300513          	li	a0,163
   1f0e0:	0007b023          	sd	zero,0(a5)
   1f0e4:	de9ff06f          	j	1eecc <__gethex+0x2e8>
   1f0e8:	00070d13          	mv	s10,a4
   1f0ec:	c7ade8e3          	bltu	s11,s10,1ed5c <__gethex+0x178>
   1f0f0:	ca5ff06f          	j	1ed94 <__gethex+0x1b0>
   1f0f4:	001c0513          	addi	a0,s8,1
   1f0f8:	00000593          	li	a1,0
   1f0fc:	e35ff06f          	j	1ef30 <__gethex+0x34c>
   1f100:	017d8c33          	add	s8,s11,s7
   1f104:	000c4703          	lbu	a4,0(s8)
   1f108:	00ea87b3          	add	a5,s5,a4
   1f10c:	0007c783          	lbu	a5,0(a5)
   1f110:	10078e63          	beqz	a5,1f22c <__gethex+0x648>
   1f114:	03000693          	li	a3,48
   1f118:	000c0d93          	mv	s11,s8
   1f11c:	00d71e63          	bne	a4,a3,1f138 <__gethex+0x554>
   1f120:	00070793          	mv	a5,a4
   1f124:	001d8d93          	addi	s11,s11,1
   1f128:	000dc703          	lbu	a4,0(s11)
   1f12c:	fef70ce3          	beq	a4,a5,1f124 <__gethex+0x540>
   1f130:	00ea87b3          	add	a5,s5,a4
   1f134:	0007c783          	lbu	a5,0(a5)
   1f138:	0017b413          	seqz	s0,a5
   1f13c:	000c0c93          	mv	s9,s8
   1f140:	00100b13          	li	s6,1
   1f144:	b69ff06f          	j	1ecac <__gethex+0xc8>
   1f148:	00100413          	li	s0,1
   1f14c:	ec5ff06f          	j	1f010 <__gethex+0x42c>
   1f150:	02412703          	lw	a4,36(sp)
   1f154:	00100793          	li	a5,1
   1f158:	40e787bb          	subw	a5,a5,a4
   1f15c:	02f12223          	sw	a5,36(sp)
   1f160:	02412783          	lw	a5,36(sp)
   1f164:	ee0792e3          	bnez	a5,1f048 <__gethex+0x464>
   1f168:	01046413          	ori	s0,s0,16
   1f16c:	00813783          	ld	a5,8(sp)
   1f170:	00040513          	mv	a0,s0
   1f174:	0167b023          	sd	s6,0(a5)
   1f178:	01813783          	ld	a5,24(sp)
   1f17c:	0197a023          	sw	s9,0(a5)
   1f180:	d4dff06f          	j	1eecc <__gethex+0x2e8>
   1f184:	00000593          	li	a1,0
   1f188:	da1ff06f          	j	1ef28 <__gethex+0x344>
   1f18c:	4095043b          	subw	s0,a0,s1
   1f190:	00040593          	mv	a1,s0
   1f194:	000b0513          	mv	a0,s6
   1f198:	978fa0ef          	jal	19310 <__any_on>
   1f19c:	00000c13          	li	s8,0
   1f1a0:	04050063          	beqz	a0,1f1e0 <__gethex+0x5fc>
   1f1a4:	fff4071b          	addiw	a4,s0,-1
   1f1a8:	4057579b          	sraiw	a5,a4,0x5
   1f1ac:	00279793          	slli	a5,a5,0x2
   1f1b0:	00f907b3          	add	a5,s2,a5
   1f1b4:	0007a783          	lw	a5,0(a5)
   1f1b8:	00100c13          	li	s8,1
   1f1bc:	00ec16bb          	sllw	a3,s8,a4
   1f1c0:	00f6f7b3          	and	a5,a3,a5
   1f1c4:	00078e63          	beqz	a5,1f1e0 <__gethex+0x5fc>
   1f1c8:	0cec5863          	ble	a4,s8,1f298 <__gethex+0x6b4>
   1f1cc:	ffe4059b          	addiw	a1,s0,-2
   1f1d0:	000b0513          	mv	a0,s6
   1f1d4:	93cfa0ef          	jal	19310 <__any_on>
   1f1d8:	0c050063          	beqz	a0,1f298 <__gethex+0x6b4>
   1f1dc:	00300c13          	li	s8,3
   1f1e0:	00040593          	mv	a1,s0
   1f1e4:	000b0513          	mv	a0,s6
   1f1e8:	909ff0ef          	jal	1eaf0 <rshift>
   1f1ec:	008c8cbb          	addw	s9,s9,s0
   1f1f0:	bddff06f          	j	1edcc <__gethex+0x1e8>
   1f1f4:	00000c93          	li	s9,0
   1f1f8:	af9ff06f          	j	1ecf0 <__gethex+0x10c>
   1f1fc:	40a4843b          	subw	s0,s1,a0
   1f200:	000b0593          	mv	a1,s6
   1f204:	00040613          	mv	a2,s0
   1f208:	000a0513          	mv	a0,s4
   1f20c:	8bdf90ef          	jal	18ac8 <__lshift>
   1f210:	00050b13          	mv	s6,a0
   1f214:	408c8cbb          	subw	s9,s9,s0
   1f218:	01850913          	addi	s2,a0,24
   1f21c:	bb1ff06f          	j	1edcc <__gethex+0x1e8>
   1f220:	00278d93          	addi	s11,a5,2
   1f224:	00000b13          	li	s6,0
   1f228:	a5dff06f          	j	1ec84 <__gethex+0xa0>
   1f22c:	00070793          	mv	a5,a4
   1f230:	c7dff06f          	j	1eeac <__gethex+0x2c8>
   1f234:	017c0cb3          	add	s9,s8,s7
   1f238:	000cc783          	lbu	a5,0(s9)
   1f23c:	000c8c13          	mv	s8,s9
   1f240:	00fa8733          	add	a4,s5,a5
   1f244:	00074703          	lbu	a4,0(a4)
   1f248:	a8070ee3          	beqz	a4,1ece4 <__gethex+0x100>
   1f24c:	001c0c13          	addi	s8,s8,1
   1f250:	000c4783          	lbu	a5,0(s8)
   1f254:	00fa8733          	add	a4,s5,a5
   1f258:	00074703          	lbu	a4,0(a4)
   1f25c:	fe0718e3          	bnez	a4,1f24c <__gethex+0x668>
   1f260:	a85ff06f          	j	1ece4 <__gethex+0x100>
   1f264:	00100c13          	li	s8,1
   1f268:	d6dff06f          	j	1efd4 <__gethex+0x3f0>
   1f26c:	02412703          	lw	a4,36(sp)
   1f270:	b80708e3          	beqz	a4,1ee00 <__gethex+0x21c>
   1f274:	01813703          	ld	a4,24(sp)
   1f278:	06200513          	li	a0,98
   1f27c:	00f72023          	sw	a5,0(a4)
   1f280:	00100793          	li	a5,1
   1f284:	00fb2a23          	sw	a5,20(s6)
   1f288:	00f92023          	sw	a5,0(s2)
   1f28c:	00813783          	ld	a5,8(sp)
   1f290:	0167b023          	sd	s6,0(a5)
   1f294:	c39ff06f          	j	1eecc <__gethex+0x2e8>
   1f298:	00200c13          	li	s8,2
   1f29c:	f45ff06f          	j	1f1e0 <__gethex+0x5fc>
   1f2a0:	02412703          	lw	a4,36(sp)
   1f2a4:	fc0708e3          	beqz	a4,1f274 <__gethex+0x690>
   1f2a8:	b59ff06f          	j	1ee00 <__gethex+0x21c>
   1f2ac:	b5949ae3          	bne	s1,s9,1ee00 <__gethex+0x21c>
   1f2b0:	fc9752e3          	ble	s1,a4,1f274 <__gethex+0x690>
   1f2b4:	fff4859b          	addiw	a1,s1,-1
   1f2b8:	000b0513          	mv	a0,s6
   1f2bc:	854fa0ef          	jal	19310 <__any_on>
   1f2c0:	b40500e3          	beqz	a0,1ee00 <__gethex+0x21c>
   1f2c4:	0049a783          	lw	a5,4(s3)
   1f2c8:	fadff06f          	j	1f274 <__gethex+0x690>
   1f2cc:	014b2703          	lw	a4,20(s6)
   1f2d0:	00cb2783          	lw	a5,12(s6)
   1f2d4:	04f75c63          	ble	a5,a4,1f32c <__gethex+0x748>
   1f2d8:	00470793          	addi	a5,a4,4
   1f2dc:	00279793          	slli	a5,a5,0x2
   1f2e0:	0017071b          	addiw	a4,a4,1
   1f2e4:	00eb2a23          	sw	a4,20(s6)
   1f2e8:	00fb07b3          	add	a5,s6,a5
   1f2ec:	00100713          	li	a4,1
   1f2f0:	00e7a423          	sw	a4,8(a5)
   1f2f4:	d89ff06f          	j	1f07c <__gethex+0x498>
   1f2f8:	0009a783          	lw	a5,0(s3)
   1f2fc:	02200413          	li	s0,34
   1f300:	fff7879b          	addiw	a5,a5,-1
   1f304:	e6f494e3          	bne	s1,a5,1f16c <__gethex+0x588>
   1f308:	4054d79b          	sraiw	a5,s1,0x5
   1f30c:	00279793          	slli	a5,a5,0x2
   1f310:	00f90933          	add	s2,s2,a5
   1f314:	00092503          	lw	a0,0(s2)
   1f318:	02200793          	li	a5,34
   1f31c:	0095553b          	srlw	a0,a0,s1
   1f320:	00157413          	andi	s0,a0,1
   1f324:	4087843b          	subw	s0,a5,s0
   1f328:	e45ff06f          	j	1f16c <__gethex+0x588>
   1f32c:	008b2583          	lw	a1,8(s6)
   1f330:	000a0513          	mv	a0,s4
   1f334:	0015859b          	addiw	a1,a1,1
   1f338:	ff9f80ef          	jal	18330 <_Balloc>
   1f33c:	014b2603          	lw	a2,20(s6)
   1f340:	00050d13          	mv	s10,a0
   1f344:	010b0593          	addi	a1,s6,16
   1f348:	00260613          	addi	a2,a2,2
   1f34c:	00261613          	slli	a2,a2,0x2
   1f350:	01050513          	addi	a0,a0,16
   1f354:	e9cf20ef          	jal	119f0 <memcpy>
   1f358:	000b0593          	mv	a1,s6
   1f35c:	000a0513          	mv	a0,s4
   1f360:	87cf90ef          	jal	183dc <_Bfree>
   1f364:	014d2703          	lw	a4,20(s10)
   1f368:	018d0913          	addi	s2,s10,24
   1f36c:	000d0b13          	mv	s6,s10
   1f370:	f69ff06f          	j	1f2d8 <__gethex+0x6f4>

000000000001f374 <__hexnan>:
   1f374:	fd010113          	addi	sp,sp,-48
   1f378:	01213c23          	sd	s2,24(sp)
   1f37c:	0005a903          	lw	s2,0(a1)
   1f380:	02913023          	sd	s1,32(sp)
   1f384:	02813423          	sd	s0,40(sp)
   1f388:	4059549b          	sraiw	s1,s2,0x5
   1f38c:	00249493          	slli	s1,s1,0x2
   1f390:	01313823          	sd	s3,16(sp)
   1f394:	01413423          	sd	s4,8(sp)
   1f398:	01f97913          	andi	s2,s2,31
   1f39c:	009604b3          	add	s1,a2,s1
   1f3a0:	00090463          	beqz	s2,1f3a8 <__hexnan+0x34>
   1f3a4:	00448493          	addi	s1,s1,4
   1f3a8:	00053683          	ld	a3,0(a0)
   1f3ac:	ffc48313          	addi	t1,s1,-4
   1f3b0:	00022fb7          	lui	t6,0x22
   1f3b4:	fe04ae23          	sw	zero,-4(s1)
   1f3b8:	00030f13          	mv	t5,t1
   1f3bc:	00030593          	mv	a1,t1
   1f3c0:	00000813          	li	a6,0
   1f3c4:	00000293          	li	t0,0
   1f3c8:	00000e93          	li	t4,0
   1f3cc:	fd0f8f93          	addi	t6,t6,-48 # 21fd0 <__hexdig>
   1f3d0:	00800413          	li	s0,8
   1f3d4:	02000393          	li	t2,32
   1f3d8:	00700993          	li	s3,7
   1f3dc:	00168693          	addi	a3,a3,1
   1f3e0:	0006c703          	lbu	a4,0(a3)
   1f3e4:	08070263          	beqz	a4,1f468 <__hexnan+0xf4>
   1f3e8:	02071793          	slli	a5,a4,0x20
   1f3ec:	0207d793          	srli	a5,a5,0x20
   1f3f0:	01f787b3          	add	a5,a5,t6
   1f3f4:	0007c783          	lbu	a5,0(a5)
   1f3f8:	0e079263          	bnez	a5,1f4dc <__hexnan+0x168>
   1f3fc:	10e3ea63          	bltu	t2,a4,1f510 <__hexnan+0x19c>
   1f400:	fdd2dee3          	ble	t4,t0,1f3dc <__hexnan+0x68>
   1f404:	03e5fe63          	bleu	t5,a1,1f440 <__hexnan+0xcc>
   1f408:	0309cc63          	blt	s3,a6,1f440 <__hexnan+0xcc>
   1f40c:	4104083b          	subw	a6,s0,a6
   1f410:	0005a883          	lw	a7,0(a1)
   1f414:	0028181b          	slliw	a6,a6,0x2
   1f418:	41038a3b          	subw	s4,t2,a6
   1f41c:	00058793          	mv	a5,a1
   1f420:	0047ae03          	lw	t3,4(a5)
   1f424:	00478793          	addi	a5,a5,4
   1f428:	014e173b          	sllw	a4,t3,s4
   1f42c:	01176733          	or	a4,a4,a7
   1f430:	010e58bb          	srlw	a7,t3,a6
   1f434:	fee7ae23          	sw	a4,-4(a5)
   1f438:	0117a023          	sw	a7,0(a5)
   1f43c:	ffe7e2e3          	bltu	a5,t5,1f420 <__hexnan+0xac>
   1f440:	00800813          	li	a6,8
   1f444:	f8b67ce3          	bleu	a1,a2,1f3dc <__hexnan+0x68>
   1f448:	fe05ae23          	sw	zero,-4(a1)
   1f44c:	00168693          	addi	a3,a3,1
   1f450:	0006c703          	lbu	a4,0(a3)
   1f454:	ffc58f13          	addi	t5,a1,-4
   1f458:	000e8293          	mv	t0,t4
   1f45c:	000f0593          	mv	a1,t5
   1f460:	00000813          	li	a6,0
   1f464:	f80712e3          	bnez	a4,1f3e8 <__hexnan+0x74>
   1f468:	0a0e8863          	beqz	t4,1f518 <__hexnan+0x1a4>
   1f46c:	01e5f663          	bleu	t5,a1,1f478 <__hexnan+0x104>
   1f470:	00700793          	li	a5,7
   1f474:	1307d063          	ble	a6,a5,1f594 <__hexnan+0x220>
   1f478:	0cb67063          	bleu	a1,a2,1f538 <__hexnan+0x1c4>
   1f47c:	00060793          	mv	a5,a2
   1f480:	00458593          	addi	a1,a1,4
   1f484:	ffc5a703          	lw	a4,-4(a1)
   1f488:	00478793          	addi	a5,a5,4
   1f48c:	fee7ae23          	sw	a4,-4(a5)
   1f490:	feb378e3          	bleu	a1,t1,1f480 <__hexnan+0x10c>
   1f494:	00478793          	addi	a5,a5,4
   1f498:	fe07ae23          	sw	zero,-4(a5)
   1f49c:	fef37ce3          	bleu	a5,t1,1f494 <__hexnan+0x120>
   1f4a0:	ffc4a783          	lw	a5,-4(s1)
   1f4a4:	00500513          	li	a0,5
   1f4a8:	06079a63          	bnez	a5,1f51c <__hexnan+0x1a8>
   1f4ac:	0a660863          	beq	a2,t1,1f55c <__hexnan+0x1e8>
   1f4b0:	ffc30313          	addi	t1,t1,-4
   1f4b4:	00032783          	lw	a5,0(t1)
   1f4b8:	fe078ae3          	beqz	a5,1f4ac <__hexnan+0x138>
   1f4bc:	00500513          	li	a0,5
   1f4c0:	02813403          	ld	s0,40(sp)
   1f4c4:	02013483          	ld	s1,32(sp)
   1f4c8:	01813903          	ld	s2,24(sp)
   1f4cc:	01013983          	ld	s3,16(sp)
   1f4d0:	00813a03          	ld	s4,8(sp)
   1f4d4:	03010113          	addi	sp,sp,48
   1f4d8:	00008067          	ret
   1f4dc:	0018081b          	addiw	a6,a6,1
   1f4e0:	001e8e9b          	addiw	t4,t4,1
   1f4e4:	01045a63          	ble	a6,s0,1f4f8 <__hexnan+0x184>
   1f4e8:	eeb67ae3          	bleu	a1,a2,1f3dc <__hexnan+0x68>
   1f4ec:	fe05ae23          	sw	zero,-4(a1)
   1f4f0:	00100813          	li	a6,1
   1f4f4:	ffc58593          	addi	a1,a1,-4
   1f4f8:	0005a703          	lw	a4,0(a1)
   1f4fc:	00f7f793          	andi	a5,a5,15
   1f500:	0047171b          	slliw	a4,a4,0x4
   1f504:	00f767b3          	or	a5,a4,a5
   1f508:	00f5a023          	sw	a5,0(a1)
   1f50c:	ed1ff06f          	j	1f3dc <__hexnan+0x68>
   1f510:	02900793          	li	a5,41
   1f514:	06f70863          	beq	a4,a5,1f584 <__hexnan+0x210>
   1f518:	00400513          	li	a0,4
   1f51c:	02813403          	ld	s0,40(sp)
   1f520:	02013483          	ld	s1,32(sp)
   1f524:	01813903          	ld	s2,24(sp)
   1f528:	01013983          	ld	s3,16(sp)
   1f52c:	00813a03          	ld	s4,8(sp)
   1f530:	03010113          	addi	sp,sp,48
   1f534:	00008067          	ret
   1f538:	ffc4a783          	lw	a5,-4(s1)
   1f53c:	f60904e3          	beqz	s2,1f4a4 <__hexnan+0x130>
   1f540:	02000713          	li	a4,32
   1f544:	4127093b          	subw	s2,a4,s2
   1f548:	fff00713          	li	a4,-1
   1f54c:	0127573b          	srlw	a4,a4,s2
   1f550:	00f777b3          	and	a5,a4,a5
   1f554:	fef4ae23          	sw	a5,-4(s1)
   1f558:	f4dff06f          	j	1f4a4 <__hexnan+0x130>
   1f55c:	00100793          	li	a5,1
   1f560:	00500513          	li	a0,5
   1f564:	02813403          	ld	s0,40(sp)
   1f568:	02013483          	ld	s1,32(sp)
   1f56c:	01813903          	ld	s2,24(sp)
   1f570:	01013983          	ld	s3,16(sp)
   1f574:	00813a03          	ld	s4,8(sp)
   1f578:	00f32023          	sw	a5,0(t1)
   1f57c:	03010113          	addi	sp,sp,48
   1f580:	00008067          	ret
   1f584:	00168693          	addi	a3,a3,1
   1f588:	00d53023          	sd	a3,0(a0)
   1f58c:	ee0e90e3          	bnez	t4,1f46c <__hexnan+0xf8>
   1f590:	f89ff06f          	j	1f518 <__hexnan+0x1a4>
   1f594:	00800793          	li	a5,8
   1f598:	4107883b          	subw	a6,a5,a6
   1f59c:	0005a683          	lw	a3,0(a1)
   1f5a0:	0028181b          	slliw	a6,a6,0x2
   1f5a4:	02000893          	li	a7,32
   1f5a8:	410888bb          	subw	a7,a7,a6
   1f5ac:	00058793          	mv	a5,a1
   1f5b0:	0047a503          	lw	a0,4(a5)
   1f5b4:	00478793          	addi	a5,a5,4
   1f5b8:	0115173b          	sllw	a4,a0,a7
   1f5bc:	00d76733          	or	a4,a4,a3
   1f5c0:	010556bb          	srlw	a3,a0,a6
   1f5c4:	fee7ae23          	sw	a4,-4(a5)
   1f5c8:	00d7a023          	sw	a3,0(a5)
   1f5cc:	ffe7e2e3          	bltu	a5,t5,1f5b0 <__hexnan+0x23c>
   1f5d0:	ea9ff06f          	j	1f478 <__hexnan+0x104>

000000000001f5d4 <strncmp>:
   1f5d4:	0c060263          	beqz	a2,1f698 <strncmp+0xc4>
   1f5d8:	00b567b3          	or	a5,a0,a1
   1f5dc:	0077f793          	andi	a5,a5,7
   1f5e0:	06079e63          	bnez	a5,1f65c <strncmp+0x88>
   1f5e4:	00700893          	li	a7,7
   1f5e8:	06c8fa63          	bleu	a2,a7,1f65c <strncmp+0x88>
   1f5ec:	00053783          	ld	a5,0(a0)
   1f5f0:	0005b703          	ld	a4,0(a1)
   1f5f4:	06e79463          	bne	a5,a4,1f65c <strncmp+0x88>
   1f5f8:	ff860613          	addi	a2,a2,-8
   1f5fc:	08060e63          	beqz	a2,1f698 <strncmp+0xc4>
   1f600:	00025737          	lui	a4,0x25
   1f604:	a6873e03          	ld	t3,-1432(a4) # 24a68 <mask+0x50>
   1f608:	00025737          	lui	a4,0x25
   1f60c:	a7073303          	ld	t1,-1424(a4) # 24a70 <mask+0x58>
   1f610:	fff7c713          	not	a4,a5
   1f614:	01c787b3          	add	a5,a5,t3
   1f618:	00f777b3          	and	a5,a4,a5
   1f61c:	0067f7b3          	and	a5,a5,t1
   1f620:	02078863          	beqz	a5,1f650 <strncmp+0x7c>
   1f624:	0740006f          	j	1f698 <strncmp+0xc4>
   1f628:	00053703          	ld	a4,0(a0)
   1f62c:	0005b683          	ld	a3,0(a1)
   1f630:	01c70833          	add	a6,a4,t3
   1f634:	fff74793          	not	a5,a4
   1f638:	00f877b3          	and	a5,a6,a5
   1f63c:	0067f7b3          	and	a5,a5,t1
   1f640:	00d71e63          	bne	a4,a3,1f65c <strncmp+0x88>
   1f644:	ff860613          	addi	a2,a2,-8
   1f648:	04060863          	beqz	a2,1f698 <strncmp+0xc4>
   1f64c:	04079663          	bnez	a5,1f698 <strncmp+0xc4>
   1f650:	00850513          	addi	a0,a0,8
   1f654:	00858593          	addi	a1,a1,8
   1f658:	fcc8e8e3          	bltu	a7,a2,1f628 <strncmp+0x54>
   1f65c:	00054703          	lbu	a4,0(a0)
   1f660:	0005c783          	lbu	a5,0(a1)
   1f664:	fff60613          	addi	a2,a2,-1
   1f668:	02e79c63          	bne	a5,a4,1f6a0 <strncmp+0xcc>
   1f66c:	02060663          	beqz	a2,1f698 <strncmp+0xc4>
   1f670:	02078463          	beqz	a5,1f698 <strncmp+0xc4>
   1f674:	00150513          	addi	a0,a0,1
   1f678:	00158593          	addi	a1,a1,1
   1f67c:	00054783          	lbu	a5,0(a0)
   1f680:	0005c703          	lbu	a4,0(a1)
   1f684:	fff60613          	addi	a2,a2,-1
   1f688:	fee782e3          	beq	a5,a4,1f66c <strncmp+0x98>
   1f68c:	00070513          	mv	a0,a4
   1f690:	40a7853b          	subw	a0,a5,a0
   1f694:	00008067          	ret
   1f698:	00000513          	li	a0,0
   1f69c:	00008067          	ret
   1f6a0:	00078513          	mv	a0,a5
   1f6a4:	00070793          	mv	a5,a4
   1f6a8:	fe9ff06f          	j	1f690 <strncmp+0xbc>

000000000001f6ac <__ssprint_r>:
   1f6ac:	01063783          	ld	a5,16(a2)
   1f6b0:	fa010113          	addi	sp,sp,-96
   1f6b4:	03413823          	sd	s4,48(sp)
   1f6b8:	04113c23          	sd	ra,88(sp)
   1f6bc:	04813823          	sd	s0,80(sp)
   1f6c0:	04913423          	sd	s1,72(sp)
   1f6c4:	05213023          	sd	s2,64(sp)
   1f6c8:	03313c23          	sd	s3,56(sp)
   1f6cc:	03513423          	sd	s5,40(sp)
   1f6d0:	03613023          	sd	s6,32(sp)
   1f6d4:	01713c23          	sd	s7,24(sp)
   1f6d8:	01813823          	sd	s8,16(sp)
   1f6dc:	01913423          	sd	s9,8(sp)
   1f6e0:	01a13023          	sd	s10,0(sp)
   1f6e4:	00060a13          	mv	s4,a2
   1f6e8:	06078a63          	beqz	a5,1f75c <__ssprint_r+0xb0>
   1f6ec:	00050a93          	mv	s5,a0
   1f6f0:	00063b83          	ld	s7,0(a2)
   1f6f4:	0005b503          	ld	a0,0(a1)
   1f6f8:	00c5a403          	lw	s0,12(a1)
   1f6fc:	00058993          	mv	s3,a1
   1f700:	00000c13          	li	s8,0
   1f704:	00000493          	li	s1,0
   1f708:	08048a63          	beqz	s1,1f79c <__ssprint_r+0xf0>
   1f70c:	00040b13          	mv	s6,s0
   1f710:	0884fe63          	bleu	s0,s1,1f7ac <__ssprint_r+0x100>
   1f714:	0004841b          	sext.w	s0,s1
   1f718:	00040913          	mv	s2,s0
   1f71c:	00090b13          	mv	s6,s2
   1f720:	000c0593          	mv	a1,s8
   1f724:	000b0613          	mv	a2,s6
   1f728:	a0df80ef          	jal	18134 <memmove>
   1f72c:	00c9a703          	lw	a4,12(s3)
   1f730:	0009b503          	ld	a0,0(s3)
   1f734:	010a3783          	ld	a5,16(s4)
   1f738:	4087043b          	subw	s0,a4,s0
   1f73c:	01650533          	add	a0,a0,s6
   1f740:	0089a623          	sw	s0,12(s3)
   1f744:	00a9b023          	sd	a0,0(s3)
   1f748:	412787b3          	sub	a5,a5,s2
   1f74c:	00fa3823          	sd	a5,16(s4)
   1f750:	012c0c33          	add	s8,s8,s2
   1f754:	412484b3          	sub	s1,s1,s2
   1f758:	fa0798e3          	bnez	a5,1f708 <__ssprint_r+0x5c>
   1f75c:	000a2423          	sw	zero,8(s4)
   1f760:	00000513          	li	a0,0
   1f764:	05813083          	ld	ra,88(sp)
   1f768:	05013403          	ld	s0,80(sp)
   1f76c:	04813483          	ld	s1,72(sp)
   1f770:	04013903          	ld	s2,64(sp)
   1f774:	03813983          	ld	s3,56(sp)
   1f778:	03013a03          	ld	s4,48(sp)
   1f77c:	02813a83          	ld	s5,40(sp)
   1f780:	02013b03          	ld	s6,32(sp)
   1f784:	01813b83          	ld	s7,24(sp)
   1f788:	01013c03          	ld	s8,16(sp)
   1f78c:	00813c83          	ld	s9,8(sp)
   1f790:	00013d03          	ld	s10,0(sp)
   1f794:	06010113          	addi	sp,sp,96
   1f798:	00008067          	ret
   1f79c:	000bbc03          	ld	s8,0(s7)
   1f7a0:	008bb483          	ld	s1,8(s7)
   1f7a4:	010b8b93          	addi	s7,s7,16
   1f7a8:	f61ff06f          	j	1f708 <__ssprint_r+0x5c>
   1f7ac:	0109d703          	lhu	a4,16(s3)
   1f7b0:	0004891b          	sext.w	s2,s1
   1f7b4:	48077793          	andi	a5,a4,1152
   1f7b8:	f60784e3          	beqz	a5,1f720 <__ssprint_r+0x74>
   1f7bc:	0209ab03          	lw	s6,32(s3)
   1f7c0:	0189b583          	ld	a1,24(s3)
   1f7c4:	00148693          	addi	a3,s1,1
   1f7c8:	001b179b          	slliw	a5,s6,0x1
   1f7cc:	01678b3b          	addw	s6,a5,s6
   1f7d0:	01fb579b          	srliw	a5,s6,0x1f
   1f7d4:	40b50533          	sub	a0,a0,a1
   1f7d8:	01678b3b          	addw	s6,a5,s6
   1f7dc:	00050c9b          	sext.w	s9,a0
   1f7e0:	401b5b1b          	sraiw	s6,s6,0x1
   1f7e4:	000c8913          	mv	s2,s9
   1f7e8:	000b0613          	mv	a2,s6
   1f7ec:	012687b3          	add	a5,a3,s2
   1f7f0:	00f67863          	bleu	a5,a2,1f800 <__ssprint_r+0x154>
   1f7f4:	00148b1b          	addiw	s6,s1,1
   1f7f8:	019b0b3b          	addw	s6,s6,s9
   1f7fc:	000b0613          	mv	a2,s6
   1f800:	40077713          	andi	a4,a4,1024
   1f804:	06070063          	beqz	a4,1f864 <__ssprint_r+0x1b8>
   1f808:	00060593          	mv	a1,a2
   1f80c:	000a8513          	mv	a0,s5
   1f810:	a71f10ef          	jal	11280 <_malloc_r>
   1f814:	00050d13          	mv	s10,a0
   1f818:	06050463          	beqz	a0,1f880 <__ssprint_r+0x1d4>
   1f81c:	0189b583          	ld	a1,24(s3)
   1f820:	00090613          	mv	a2,s2
   1f824:	9ccf20ef          	jal	119f0 <memcpy>
   1f828:	0109d783          	lhu	a5,16(s3)
   1f82c:	b7f7f793          	andi	a5,a5,-1153
   1f830:	0807e793          	ori	a5,a5,128
   1f834:	00f99823          	sh	a5,16(s3)
   1f838:	0004841b          	sext.w	s0,s1
   1f83c:	012d0533          	add	a0,s10,s2
   1f840:	419b0cbb          	subw	s9,s6,s9
   1f844:	0369a023          	sw	s6,32(s3)
   1f848:	01a9bc23          	sd	s10,24(s3)
   1f84c:	00a9b023          	sd	a0,0(s3)
   1f850:	0199a623          	sw	s9,12(s3)
   1f854:	00040913          	mv	s2,s0
   1f858:	00040b13          	mv	s6,s0
   1f85c:	ed24f2e3          	bleu	s2,s1,1f720 <__ssprint_r+0x74>
   1f860:	ebdff06f          	j	1f71c <__ssprint_r+0x70>
   1f864:	000a8513          	mv	a0,s5
   1f868:	b2df90ef          	jal	19394 <_realloc_r>
   1f86c:	00050d13          	mv	s10,a0
   1f870:	fc0514e3          	bnez	a0,1f838 <__ssprint_r+0x18c>
   1f874:	0189b583          	ld	a1,24(s3)
   1f878:	000a8513          	mv	a0,s5
   1f87c:	99df70ef          	jal	17218 <_free_r>
   1f880:	00c00793          	li	a5,12
   1f884:	00faa023          	sw	a5,0(s5)
   1f888:	0109d783          	lhu	a5,16(s3)
   1f88c:	fff00513          	li	a0,-1
   1f890:	0407e793          	ori	a5,a5,64
   1f894:	00f99823          	sh	a5,16(s3)
   1f898:	000a3823          	sd	zero,16(s4)
   1f89c:	000a2423          	sw	zero,8(s4)
   1f8a0:	ec5ff06f          	j	1f764 <__ssprint_r+0xb8>

000000000001f8a4 <_svfiprintf_r>:
   1f8a4:	0105d783          	lhu	a5,16(a1)
   1f8a8:	e7010113          	addi	sp,sp,-400
   1f8ac:	16913c23          	sd	s1,376(sp)
   1f8b0:	15613823          	sd	s6,336(sp)
   1f8b4:	15713423          	sd	s7,328(sp)
   1f8b8:	18113423          	sd	ra,392(sp)
   1f8bc:	18813023          	sd	s0,384(sp)
   1f8c0:	17213823          	sd	s2,368(sp)
   1f8c4:	17313423          	sd	s3,360(sp)
   1f8c8:	17413023          	sd	s4,352(sp)
   1f8cc:	15513c23          	sd	s5,344(sp)
   1f8d0:	15813023          	sd	s8,320(sp)
   1f8d4:	13913c23          	sd	s9,312(sp)
   1f8d8:	13a13823          	sd	s10,304(sp)
   1f8dc:	13b13423          	sd	s11,296(sp)
   1f8e0:	0807f793          	andi	a5,a5,128
   1f8e4:	02d13023          	sd	a3,32(sp)
   1f8e8:	00058b13          	mv	s6,a1
   1f8ec:	00050b93          	mv	s7,a0
   1f8f0:	00060493          	mv	s1,a2
   1f8f4:	00078663          	beqz	a5,1f900 <_svfiprintf_r+0x5c>
   1f8f8:	0185b783          	ld	a5,24(a1)
   1f8fc:	440786e3          	beqz	a5,20548 <_svfiprintf_r+0xca4>
   1f900:	0a010993          	addi	s3,sp,160
   1f904:	09f10793          	addi	a5,sp,159
   1f908:	000226b7          	lui	a3,0x22
   1f90c:	40f98733          	sub	a4,s3,a5
   1f910:	0d068693          	addi	a3,a3,208 # 220d0 <__hexdig+0x100>
   1f914:	00022937          	lui	s2,0x22
   1f918:	07313023          	sd	s3,96(sp)
   1f91c:	06013823          	sd	zero,112(sp)
   1f920:	06012423          	sw	zero,104(sp)
   1f924:	00098793          	mv	a5,s3
   1f928:	02013823          	sd	zero,48(sp)
   1f92c:	00012e23          	sw	zero,28(sp)
   1f930:	02d13423          	sd	a3,40(sp)
   1f934:	23890913          	addi	s2,s2,568 # 22238 <blanks.4122>
   1f938:	04e12623          	sw	a4,76(sp)
   1f93c:	0004c703          	lbu	a4,0(s1)
   1f940:	080704e3          	beqz	a4,201c8 <_svfiprintf_r+0x924>
   1f944:	02500693          	li	a3,37
   1f948:	00048413          	mv	s0,s1
   1f94c:	00d71663          	bne	a4,a3,1f958 <_svfiprintf_r+0xb4>
   1f950:	0580006f          	j	1f9a8 <_svfiprintf_r+0x104>
   1f954:	00d70863          	beq	a4,a3,1f964 <_svfiprintf_r+0xc0>
   1f958:	00140413          	addi	s0,s0,1
   1f95c:	00044703          	lbu	a4,0(s0)
   1f960:	fe071ae3          	bnez	a4,1f954 <_svfiprintf_r+0xb0>
   1f964:	40940a3b          	subw	s4,s0,s1
   1f968:	040a0063          	beqz	s4,1f9a8 <_svfiprintf_r+0x104>
   1f96c:	07013683          	ld	a3,112(sp)
   1f970:	06812703          	lw	a4,104(sp)
   1f974:	000a0613          	mv	a2,s4
   1f978:	00c686b3          	add	a3,a3,a2
   1f97c:	0017071b          	addiw	a4,a4,1
   1f980:	0097b023          	sd	s1,0(a5)
   1f984:	00c7b423          	sd	a2,8(a5)
   1f988:	06d13823          	sd	a3,112(sp)
   1f98c:	06e12423          	sw	a4,104(sp)
   1f990:	00700693          	li	a3,7
   1f994:	01078793          	addi	a5,a5,16
   1f998:	1ae6c4e3          	blt	a3,a4,20340 <_svfiprintf_r+0xa9c>
   1f99c:	01c12703          	lw	a4,28(sp)
   1f9a0:	0147073b          	addw	a4,a4,s4
   1f9a4:	00e12e23          	sw	a4,28(sp)
   1f9a8:	00044703          	lbu	a4,0(s0)
   1f9ac:	020702e3          	beqz	a4,201d0 <_svfiprintf_r+0x92c>
   1f9b0:	00140493          	addi	s1,s0,1
   1f9b4:	04010ba3          	sb	zero,87(sp)
   1f9b8:	00000513          	li	a0,0
   1f9bc:	00000813          	li	a6,0
   1f9c0:	fff00413          	li	s0,-1
   1f9c4:	00012a23          	sw	zero,20(sp)
   1f9c8:	00000a93          	li	s5,0
   1f9cc:	05800613          	li	a2,88
   1f9d0:	00900593          	li	a1,9
   1f9d4:	02a00893          	li	a7,42
   1f9d8:	0004c683          	lbu	a3,0(s1)
   1f9dc:	00148493          	addi	s1,s1,1
   1f9e0:	fe06871b          	addiw	a4,a3,-32
   1f9e4:	1ee66263          	bltu	a2,a4,1fbc8 <_svfiprintf_r+0x324>
   1f9e8:	02813303          	ld	t1,40(sp)
   1f9ec:	02071713          	slli	a4,a4,0x20
   1f9f0:	01e75713          	srli	a4,a4,0x1e
   1f9f4:	00670733          	add	a4,a4,t1
   1f9f8:	00072703          	lw	a4,0(a4)
   1f9fc:	00070067          	jr	a4
   1fa00:	010aea93          	ori	s5,s5,16
   1fa04:	fd5ff06f          	j	1f9d8 <_svfiprintf_r+0x134>
   1fa08:	02013703          	ld	a4,32(sp)
   1fa0c:	00072683          	lw	a3,0(a4)
   1fa10:	00870713          	addi	a4,a4,8
   1fa14:	02e13023          	sd	a4,32(sp)
   1fa18:	00d12a23          	sw	a3,20(sp)
   1fa1c:	fa06dee3          	bgez	a3,1f9d8 <_svfiprintf_r+0x134>
   1fa20:	40d0073b          	negw	a4,a3
   1fa24:	00e12a23          	sw	a4,20(sp)
   1fa28:	004aea93          	ori	s5,s5,4
   1fa2c:	fadff06f          	j	1f9d8 <_svfiprintf_r+0x134>
   1fa30:	03000713          	li	a4,48
   1fa34:	04e10c23          	sb	a4,88(sp)
   1fa38:	07800713          	li	a4,120
   1fa3c:	04e10ca3          	sb	a4,89(sp)
   1fa40:	02013703          	ld	a4,32(sp)
   1fa44:	04010ba3          	sb	zero,87(sp)
   1fa48:	002ae613          	ori	a2,s5,2
   1fa4c:	00870693          	addi	a3,a4,8
   1fa50:	00073703          	ld	a4,0(a4)
   1fa54:	280442e3          	bltz	s0,204d8 <_svfiprintf_r+0xc34>
   1fa58:	f7fafa93          	andi	s5,s5,-129
   1fa5c:	02d13023          	sd	a3,32(sp)
   1fa60:	002aea93          	ori	s5,s5,2
   1fa64:	1c070ee3          	beqz	a4,20440 <_svfiprintf_r+0xb9c>
   1fa68:	000226b7          	lui	a3,0x22
   1fa6c:	2a068693          	addi	a3,a3,672 # 222a0 <zeroes.4123+0x58>
   1fa70:	00000613          	li	a2,0
   1fa74:	02d13823          	sd	a3,48(sp)
   1fa78:	00098d13          	mv	s10,s3
   1fa7c:	03013583          	ld	a1,48(sp)
   1fa80:	00f77693          	andi	a3,a4,15
   1fa84:	fffd0d13          	addi	s10,s10,-1
   1fa88:	00d586b3          	add	a3,a1,a3
   1fa8c:	0006c683          	lbu	a3,0(a3)
   1fa90:	00475713          	srli	a4,a4,0x4
   1fa94:	00dd0023          	sb	a3,0(s10)
   1fa98:	fe0712e3          	bnez	a4,1fa7c <_svfiprintf_r+0x1d8>
   1fa9c:	41a98c33          	sub	s8,s3,s10
   1faa0:	01812c23          	sw	s8,24(sp)
   1faa4:	0d00006f          	j	1fb74 <_svfiprintf_r+0x2d0>
   1faa8:	00100513          	li	a0,1
   1faac:	02b00813          	li	a6,43
   1fab0:	f29ff06f          	j	1f9d8 <_svfiprintf_r+0x134>
   1fab4:	380514e3          	bnez	a0,2063c <_svfiprintf_r+0xd98>
   1fab8:	010af713          	andi	a4,s5,16
   1fabc:	44070863          	beqz	a4,1ff0c <_svfiprintf_r+0x668>
   1fac0:	02013703          	ld	a4,32(sp)
   1fac4:	04010ba3          	sb	zero,87(sp)
   1fac8:	00870693          	addi	a3,a4,8
   1facc:	00073703          	ld	a4,0(a4)
   1fad0:	44044c63          	bltz	s0,1ff28 <_svfiprintf_r+0x684>
   1fad4:	02d13023          	sd	a3,32(sp)
   1fad8:	f7fafa93          	andi	s5,s5,-129
   1fadc:	10070ee3          	beqz	a4,203f8 <_svfiprintf_r+0xb54>
   1fae0:	00000613          	li	a2,0
   1fae4:	00098d13          	mv	s10,s3
   1fae8:	00777693          	andi	a3,a4,7
   1faec:	fffd0d13          	addi	s10,s10,-1
   1faf0:	0306869b          	addiw	a3,a3,48
   1faf4:	00dd0023          	sb	a3,0(s10)
   1faf8:	00375713          	srli	a4,a4,0x3
   1fafc:	fe0716e3          	bnez	a4,1fae8 <_svfiprintf_r+0x244>
   1fb00:	001af713          	andi	a4,s5,1
   1fb04:	f8070ce3          	beqz	a4,1fa9c <_svfiprintf_r+0x1f8>
   1fb08:	03000713          	li	a4,48
   1fb0c:	f8e688e3          	beq	a3,a4,1fa9c <_svfiprintf_r+0x1f8>
   1fb10:	fffd0693          	addi	a3,s10,-1
   1fb14:	40d98c33          	sub	s8,s3,a3
   1fb18:	feed0fa3          	sb	a4,-1(s10)
   1fb1c:	01812c23          	sw	s8,24(sp)
   1fb20:	00068d13          	mv	s10,a3
   1fb24:	0500006f          	j	1fb74 <_svfiprintf_r+0x2d0>
   1fb28:	001aea93          	ori	s5,s5,1
   1fb2c:	eadff06f          	j	1f9d8 <_svfiprintf_r+0x134>
   1fb30:	34051ee3          	bnez	a0,2068c <_svfiprintf_r+0xde8>
   1fb34:	010aea93          	ori	s5,s5,16
   1fb38:	010af713          	andi	a4,s5,16
   1fb3c:	080702e3          	beqz	a4,203c0 <_svfiprintf_r+0xb1c>
   1fb40:	02013683          	ld	a3,32(sp)
   1fb44:	0006b703          	ld	a4,0(a3)
   1fb48:	00868693          	addi	a3,a3,8
   1fb4c:	02d13023          	sd	a3,32(sp)
   1fb50:	080746e3          	bltz	a4,203dc <_svfiprintf_r+0xb38>
   1fb54:	05714603          	lbu	a2,87(sp)
   1fb58:	38044c63          	bltz	s0,1fef0 <_svfiprintf_r+0x64c>
   1fb5c:	f7fafa93          	andi	s5,s5,-129
   1fb60:	22071a63          	bnez	a4,1fd94 <_svfiprintf_r+0x4f0>
   1fb64:	14041ce3          	bnez	s0,204bc <_svfiprintf_r+0xc18>
   1fb68:	00000413          	li	s0,0
   1fb6c:	00012c23          	sw	zero,24(sp)
   1fb70:	00098d13          	mv	s10,s3
   1fb74:	01812703          	lw	a4,24(sp)
   1fb78:	00040c93          	mv	s9,s0
   1fb7c:	00e45463          	ble	a4,s0,1fb84 <_svfiprintf_r+0x2e0>
   1fb80:	00070c93          	mv	s9,a4
   1fb84:	00c03633          	snez	a2,a2
   1fb88:	00cc8cbb          	addw	s9,s9,a2
   1fb8c:	05c0006f          	j	1fbe8 <_svfiprintf_r+0x344>
   1fb90:	00012a23          	sw	zero,20(sp)
   1fb94:	fd06871b          	addiw	a4,a3,-48
   1fb98:	01412e03          	lw	t3,20(sp)
   1fb9c:	00148493          	addi	s1,s1,1
   1fba0:	fff4c683          	lbu	a3,-1(s1)
   1fba4:	001e131b          	slliw	t1,t3,0x1
   1fba8:	003e1a1b          	slliw	s4,t3,0x3
   1fbac:	01430a3b          	addw	s4,t1,s4
   1fbb0:	0147073b          	addw	a4,a4,s4
   1fbb4:	00e12a23          	sw	a4,20(sp)
   1fbb8:	fd06871b          	addiw	a4,a3,-48
   1fbbc:	fce5fee3          	bleu	a4,a1,1fb98 <_svfiprintf_r+0x2f4>
   1fbc0:	fe06871b          	addiw	a4,a3,-32
   1fbc4:	e2e672e3          	bleu	a4,a2,1f9e8 <_svfiprintf_r+0x144>
   1fbc8:	260516e3          	bnez	a0,20634 <_svfiprintf_r+0xd90>
   1fbcc:	60068263          	beqz	a3,201d0 <_svfiprintf_r+0x92c>
   1fbd0:	00100c93          	li	s9,1
   1fbd4:	06d10c23          	sb	a3,120(sp)
   1fbd8:	04010ba3          	sb	zero,87(sp)
   1fbdc:	01912c23          	sw	s9,24(sp)
   1fbe0:	07810d13          	addi	s10,sp,120
   1fbe4:	00000413          	li	s0,0
   1fbe8:	002af713          	andi	a4,s5,2
   1fbec:	02e12c23          	sw	a4,56(sp)
   1fbf0:	00070463          	beqz	a4,1fbf8 <_svfiprintf_r+0x354>
   1fbf4:	002c8c9b          	addiw	s9,s9,2
   1fbf8:	084af713          	andi	a4,s5,132
   1fbfc:	04e12423          	sw	a4,72(sp)
   1fc00:	38071463          	bnez	a4,1ff88 <_svfiprintf_r+0x6e4>
   1fc04:	01412703          	lw	a4,20(sp)
   1fc08:	41970dbb          	subw	s11,a4,s9
   1fc0c:	37b05e63          	blez	s11,1ff88 <_svfiprintf_r+0x6e4>
   1fc10:	01000713          	li	a4,16
   1fc14:	07013683          	ld	a3,112(sp)
   1fc18:	19b752e3          	ble	s11,a4,2059c <_svfiprintf_r+0xcf8>
   1fc1c:	01000c13          	li	s8,16
   1fc20:	06812703          	lw	a4,104(sp)
   1fc24:	05213023          	sd	s2,64(sp)
   1fc28:	00700e13          	li	t3,7
   1fc2c:	000c0a13          	mv	s4,s8
   1fc30:	00c0006f          	j	1fc3c <_svfiprintf_r+0x398>
   1fc34:	ff0d8d9b          	addiw	s11,s11,-16
   1fc38:	05ba5a63          	ble	s11,s4,1fc8c <_svfiprintf_r+0x3e8>
   1fc3c:	01068693          	addi	a3,a3,16
   1fc40:	0017071b          	addiw	a4,a4,1
   1fc44:	0127b023          	sd	s2,0(a5)
   1fc48:	0187b423          	sd	s8,8(a5)
   1fc4c:	06d13823          	sd	a3,112(sp)
   1fc50:	06e12423          	sw	a4,104(sp)
   1fc54:	01078793          	addi	a5,a5,16
   1fc58:	fcee5ee3          	ble	a4,t3,1fc34 <_svfiprintf_r+0x390>
   1fc5c:	06010613          	addi	a2,sp,96
   1fc60:	000b0593          	mv	a1,s6
   1fc64:	000b8513          	mv	a0,s7
   1fc68:	01c13423          	sd	t3,8(sp)
   1fc6c:	a41ff0ef          	jal	1f6ac <__ssprint_r>
   1fc70:	56051c63          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   1fc74:	ff0d8d9b          	addiw	s11,s11,-16
   1fc78:	07013683          	ld	a3,112(sp)
   1fc7c:	06812703          	lw	a4,104(sp)
   1fc80:	00098793          	mv	a5,s3
   1fc84:	00813e03          	ld	t3,8(sp)
   1fc88:	fbba4ae3          	blt	s4,s11,1fc3c <_svfiprintf_r+0x398>
   1fc8c:	04013603          	ld	a2,64(sp)
   1fc90:	00dd86b3          	add	a3,s11,a3
   1fc94:	0017071b          	addiw	a4,a4,1
   1fc98:	00c7b023          	sd	a2,0(a5)
   1fc9c:	01b7b423          	sd	s11,8(a5)
   1fca0:	06d13823          	sd	a3,112(sp)
   1fca4:	06e12423          	sw	a4,104(sp)
   1fca8:	00700613          	li	a2,7
   1fcac:	01078793          	addi	a5,a5,16
   1fcb0:	2ee65063          	ble	a4,a2,1ff90 <_svfiprintf_r+0x6ec>
   1fcb4:	06010613          	addi	a2,sp,96
   1fcb8:	000b0593          	mv	a1,s6
   1fcbc:	000b8513          	mv	a0,s7
   1fcc0:	9edff0ef          	jal	1f6ac <__ssprint_r>
   1fcc4:	52051263          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   1fcc8:	07013683          	ld	a3,112(sp)
   1fccc:	06812703          	lw	a4,104(sp)
   1fcd0:	00098793          	mv	a5,s3
   1fcd4:	2bc0006f          	j	1ff90 <_svfiprintf_r+0x6ec>
   1fcd8:	080aea93          	ori	s5,s5,128
   1fcdc:	cfdff06f          	j	1f9d8 <_svfiprintf_r+0x134>
   1fce0:	0004c683          	lbu	a3,0(s1)
   1fce4:	00148493          	addi	s1,s1,1
   1fce8:	131688e3          	beq	a3,a7,20618 <_svfiprintf_r+0xd74>
   1fcec:	fd06871b          	addiw	a4,a3,-48
   1fcf0:	00000413          	li	s0,0
   1fcf4:	cee5e6e3          	bltu	a1,a4,1f9e0 <_svfiprintf_r+0x13c>
   1fcf8:	00148493          	addi	s1,s1,1
   1fcfc:	fff4c683          	lbu	a3,-1(s1)
   1fd00:	0014131b          	slliw	t1,s0,0x1
   1fd04:	0034141b          	slliw	s0,s0,0x3
   1fd08:	0083043b          	addw	s0,t1,s0
   1fd0c:	00e4043b          	addw	s0,s0,a4
   1fd10:	fd06871b          	addiw	a4,a3,-48
   1fd14:	fee5f2e3          	bleu	a4,a1,1fcf8 <_svfiprintf_r+0x454>
   1fd18:	cc0454e3          	bgez	s0,1f9e0 <_svfiprintf_r+0x13c>
   1fd1c:	fff00413          	li	s0,-1
   1fd20:	cc1ff06f          	j	1f9e0 <_svfiprintf_r+0x13c>
   1fd24:	140514e3          	bnez	a0,2066c <_svfiprintf_r+0xdc8>
   1fd28:	010af713          	andi	a4,s5,16
   1fd2c:	76071a63          	bnez	a4,204a0 <_svfiprintf_r+0xbfc>
   1fd30:	02013683          	ld	a3,32(sp)
   1fd34:	040afa93          	andi	s5,s5,64
   1fd38:	0006b703          	ld	a4,0(a3)
   1fd3c:	00868693          	addi	a3,a3,8
   1fd40:	02d13023          	sd	a3,32(sp)
   1fd44:	7c0a8c63          	beqz	s5,2051c <_svfiprintf_r+0xc78>
   1fd48:	01c15683          	lhu	a3,28(sp)
   1fd4c:	00d71023          	sh	a3,0(a4)
   1fd50:	bedff06f          	j	1f93c <_svfiprintf_r+0x98>
   1fd54:	c80812e3          	bnez	a6,1f9d8 <_svfiprintf_r+0x134>
   1fd58:	00100513          	li	a0,1
   1fd5c:	02000813          	li	a6,32
   1fd60:	c79ff06f          	j	1f9d8 <_svfiprintf_r+0x134>
   1fd64:	100518e3          	bnez	a0,20674 <_svfiprintf_r+0xdd0>
   1fd68:	010af713          	andi	a4,s5,16
   1fd6c:	16070063          	beqz	a4,1fecc <_svfiprintf_r+0x628>
   1fd70:	02013703          	ld	a4,32(sp)
   1fd74:	04010ba3          	sb	zero,87(sp)
   1fd78:	00870693          	addi	a3,a4,8
   1fd7c:	00073703          	ld	a4,0(a4)
   1fd80:	16044463          	bltz	s0,1fee8 <_svfiprintf_r+0x644>
   1fd84:	02d13023          	sd	a3,32(sp)
   1fd88:	f7fafa93          	andi	s5,s5,-129
   1fd8c:	00000613          	li	a2,0
   1fd90:	dc070ae3          	beqz	a4,1fb64 <_svfiprintf_r+0x2c0>
   1fd94:	00900693          	li	a3,9
   1fd98:	00098d13          	mv	s10,s3
   1fd9c:	00a00593          	li	a1,10
   1fda0:	72e6f063          	bleu	a4,a3,204c0 <_svfiprintf_r+0xc1c>
   1fda4:	02b776b3          	remu	a3,a4,a1
   1fda8:	fffd0d13          	addi	s10,s10,-1
   1fdac:	02b75733          	divu	a4,a4,a1
   1fdb0:	0306869b          	addiw	a3,a3,48
   1fdb4:	00dd0023          	sb	a3,0(s10)
   1fdb8:	ce0702e3          	beqz	a4,1fa9c <_svfiprintf_r+0x1f8>
   1fdbc:	02b776b3          	remu	a3,a4,a1
   1fdc0:	fffd0d13          	addi	s10,s10,-1
   1fdc4:	02b75733          	divu	a4,a4,a1
   1fdc8:	0306869b          	addiw	a3,a3,48
   1fdcc:	00dd0023          	sb	a3,0(s10)
   1fdd0:	fc071ae3          	bnez	a4,1fda4 <_svfiprintf_r+0x500>
   1fdd4:	cc9ff06f          	j	1fa9c <_svfiprintf_r+0x1f8>
   1fdd8:	02013703          	ld	a4,32(sp)
   1fddc:	04010ba3          	sb	zero,87(sp)
   1fde0:	00073d03          	ld	s10,0(a4)
   1fde4:	00870d93          	addi	s11,a4,8
   1fde8:	780d0063          	beqz	s10,20568 <_svfiprintf_r+0xcc4>
   1fdec:	00f13423          	sd	a5,8(sp)
   1fdf0:	72044c63          	bltz	s0,20528 <_svfiprintf_r+0xc84>
   1fdf4:	00040613          	mv	a2,s0
   1fdf8:	00000593          	li	a1,0
   1fdfc:	000d0513          	mv	a0,s10
   1fe00:	a4cf80ef          	jal	1804c <memchr>
   1fe04:	00813783          	ld	a5,8(sp)
   1fe08:	7e050a63          	beqz	a0,205fc <_svfiprintf_r+0xd58>
   1fe0c:	41a50533          	sub	a0,a0,s10
   1fe10:	00a12c23          	sw	a0,24(sp)
   1fe14:	05714603          	lbu	a2,87(sp)
   1fe18:	03b13023          	sd	s11,32(sp)
   1fe1c:	00000413          	li	s0,0
   1fe20:	d55ff06f          	j	1fb74 <_svfiprintf_r+0x2d0>
   1fe24:	02013683          	ld	a3,32(sp)
   1fe28:	00100c93          	li	s9,1
   1fe2c:	04010ba3          	sb	zero,87(sp)
   1fe30:	0006a703          	lw	a4,0(a3)
   1fe34:	01912c23          	sw	s9,24(sp)
   1fe38:	07810d13          	addi	s10,sp,120
   1fe3c:	06e10c23          	sb	a4,120(sp)
   1fe40:	00868713          	addi	a4,a3,8
   1fe44:	02e13023          	sd	a4,32(sp)
   1fe48:	d9dff06f          	j	1fbe4 <_svfiprintf_r+0x340>
   1fe4c:	020518e3          	bnez	a0,2067c <_svfiprintf_r+0xdd8>
   1fe50:	00022737          	lui	a4,0x22
   1fe54:	28870713          	addi	a4,a4,648 # 22288 <zeroes.4123+0x40>
   1fe58:	02e13823          	sd	a4,48(sp)
   1fe5c:	010af713          	andi	a4,s5,16
   1fe60:	0e070863          	beqz	a4,1ff50 <_svfiprintf_r+0x6ac>
   1fe64:	02013603          	ld	a2,32(sp)
   1fe68:	00063703          	ld	a4,0(a2)
   1fe6c:	00860613          	addi	a2,a2,8
   1fe70:	02c13023          	sd	a2,32(sp)
   1fe74:	001af613          	andi	a2,s5,1
   1fe78:	0e060c63          	beqz	a2,1ff70 <_svfiprintf_r+0x6cc>
   1fe7c:	52070463          	beqz	a4,203a4 <_svfiprintf_r+0xb00>
   1fe80:	03000613          	li	a2,48
   1fe84:	04d10ca3          	sb	a3,89(sp)
   1fe88:	04c10c23          	sb	a2,88(sp)
   1fe8c:	04010ba3          	sb	zero,87(sp)
   1fe90:	002ae693          	ori	a3,s5,2
   1fe94:	74044063          	bltz	s0,205d4 <_svfiprintf_r+0xd30>
   1fe98:	f7fafa93          	andi	s5,s5,-129
   1fe9c:	002aea93          	ori	s5,s5,2
   1fea0:	00000613          	li	a2,0
   1fea4:	bd5ff06f          	j	1fa78 <_svfiprintf_r+0x1d4>
   1fea8:	040aea93          	ori	s5,s5,64
   1feac:	b2dff06f          	j	1f9d8 <_svfiprintf_r+0x134>
   1feb0:	c80504e3          	beqz	a0,1fb38 <_svfiprintf_r+0x294>
   1feb4:	05010ba3          	sb	a6,87(sp)
   1feb8:	c81ff06f          	j	1fb38 <_svfiprintf_r+0x294>
   1febc:	78051463          	bnez	a0,20644 <_svfiprintf_r+0xda0>
   1fec0:	010aea93          	ori	s5,s5,16
   1fec4:	010af713          	andi	a4,s5,16
   1fec8:	ea0714e3          	bnez	a4,1fd70 <_svfiprintf_r+0x4cc>
   1fecc:	040af713          	andi	a4,s5,64
   1fed0:	04010ba3          	sb	zero,87(sp)
   1fed4:	58070c63          	beqz	a4,2046c <_svfiprintf_r+0xbc8>
   1fed8:	02013703          	ld	a4,32(sp)
   1fedc:	00870693          	addi	a3,a4,8
   1fee0:	00075703          	lhu	a4,0(a4)
   1fee4:	ea0450e3          	bgez	s0,1fd84 <_svfiprintf_r+0x4e0>
   1fee8:	02d13023          	sd	a3,32(sp)
   1feec:	00000613          	li	a2,0
   1fef0:	ea0712e3          	bnez	a4,1fd94 <_svfiprintf_r+0x4f0>
   1fef4:	00100713          	li	a4,1
   1fef8:	6000006f          	j	204f8 <_svfiprintf_r+0xc54>
   1fefc:	74051a63          	bnez	a0,20650 <_svfiprintf_r+0xdac>
   1ff00:	010aea93          	ori	s5,s5,16
   1ff04:	010af713          	andi	a4,s5,16
   1ff08:	ba071ce3          	bnez	a4,1fac0 <_svfiprintf_r+0x21c>
   1ff0c:	040af713          	andi	a4,s5,64
   1ff10:	04010ba3          	sb	zero,87(sp)
   1ff14:	54070263          	beqz	a4,20458 <_svfiprintf_r+0xbb4>
   1ff18:	02013703          	ld	a4,32(sp)
   1ff1c:	00870693          	addi	a3,a4,8
   1ff20:	00075703          	lhu	a4,0(a4)
   1ff24:	ba0458e3          	bgez	s0,1fad4 <_svfiprintf_r+0x230>
   1ff28:	02d13023          	sd	a3,32(sp)
   1ff2c:	00000613          	li	a2,0
   1ff30:	ba071ae3          	bnez	a4,1fae4 <_svfiprintf_r+0x240>
   1ff34:	5c40006f          	j	204f8 <_svfiprintf_r+0xc54>
   1ff38:	74051663          	bnez	a0,20684 <_svfiprintf_r+0xde0>
   1ff3c:	00022737          	lui	a4,0x22
   1ff40:	2a070713          	addi	a4,a4,672 # 222a0 <zeroes.4123+0x58>
   1ff44:	02e13823          	sd	a4,48(sp)
   1ff48:	010af713          	andi	a4,s5,16
   1ff4c:	f0071ce3          	bnez	a4,1fe64 <_svfiprintf_r+0x5c0>
   1ff50:	040af713          	andi	a4,s5,64
   1ff54:	02013603          	ld	a2,32(sp)
   1ff58:	52070463          	beqz	a4,20480 <_svfiprintf_r+0xbdc>
   1ff5c:	00065703          	lhu	a4,0(a2)
   1ff60:	00860613          	addi	a2,a2,8
   1ff64:	02c13023          	sd	a2,32(sp)
   1ff68:	001af613          	andi	a2,s5,1
   1ff6c:	f00618e3          	bnez	a2,1fe7c <_svfiprintf_r+0x5d8>
   1ff70:	04010ba3          	sb	zero,87(sp)
   1ff74:	56044c63          	bltz	s0,204ec <_svfiprintf_r+0xc48>
   1ff78:	f7fafa93          	andi	s5,s5,-129
   1ff7c:	42070a63          	beqz	a4,203b0 <_svfiprintf_r+0xb0c>
   1ff80:	00000613          	li	a2,0
   1ff84:	af5ff06f          	j	1fa78 <_svfiprintf_r+0x1d4>
   1ff88:	07013683          	ld	a3,112(sp)
   1ff8c:	06812703          	lw	a4,104(sp)
   1ff90:	05714603          	lbu	a2,87(sp)
   1ff94:	02060863          	beqz	a2,1ffc4 <_svfiprintf_r+0x720>
   1ff98:	05710613          	addi	a2,sp,87
   1ff9c:	00c7b023          	sd	a2,0(a5)
   1ffa0:	00168693          	addi	a3,a3,1
   1ffa4:	00100613          	li	a2,1
   1ffa8:	0017071b          	addiw	a4,a4,1
   1ffac:	00c7b423          	sd	a2,8(a5)
   1ffb0:	06d13823          	sd	a3,112(sp)
   1ffb4:	06e12423          	sw	a4,104(sp)
   1ffb8:	00700613          	li	a2,7
   1ffbc:	01078793          	addi	a5,a5,16
   1ffc0:	38e64e63          	blt	a2,a4,2035c <_svfiprintf_r+0xab8>
   1ffc4:	03812603          	lw	a2,56(sp)
   1ffc8:	02060863          	beqz	a2,1fff8 <_svfiprintf_r+0x754>
   1ffcc:	05810613          	addi	a2,sp,88
   1ffd0:	00c7b023          	sd	a2,0(a5)
   1ffd4:	00268693          	addi	a3,a3,2
   1ffd8:	00200613          	li	a2,2
   1ffdc:	0017071b          	addiw	a4,a4,1
   1ffe0:	00c7b423          	sd	a2,8(a5)
   1ffe4:	06d13823          	sd	a3,112(sp)
   1ffe8:	06e12423          	sw	a4,104(sp)
   1ffec:	00700613          	li	a2,7
   1fff0:	01078793          	addi	a5,a5,16
   1fff4:	38e64663          	blt	a2,a4,20380 <_svfiprintf_r+0xadc>
   1fff8:	04812583          	lw	a1,72(sp)
   1fffc:	08000613          	li	a2,128
   20000:	22c58a63          	beq	a1,a2,20234 <_svfiprintf_r+0x990>
   20004:	01812603          	lw	a2,24(sp)
   20008:	40c4043b          	subw	s0,s0,a2
   2000c:	0c805063          	blez	s0,200cc <_svfiprintf_r+0x828>
   20010:	01000613          	li	a2,16
   20014:	4e865e63          	ble	s0,a2,20510 <_svfiprintf_r+0xc6c>
   20018:	01000a13          	li	s4,16
   2001c:	00022637          	lui	a2,0x22
   20020:	24860d93          	addi	s11,a2,584 # 22248 <zeroes.4123>
   20024:	00700e13          	li	t3,7
   20028:	000a0c13          	mv	s8,s4
   2002c:	00c0006f          	j	20038 <_svfiprintf_r+0x794>
   20030:	ff04041b          	addiw	s0,s0,-16
   20034:	048c5a63          	ble	s0,s8,20088 <_svfiprintf_r+0x7e4>
   20038:	01068693          	addi	a3,a3,16
   2003c:	0017071b          	addiw	a4,a4,1
   20040:	01b7b023          	sd	s11,0(a5)
   20044:	0147b423          	sd	s4,8(a5)
   20048:	06d13823          	sd	a3,112(sp)
   2004c:	06e12423          	sw	a4,104(sp)
   20050:	01078793          	addi	a5,a5,16
   20054:	fcee5ee3          	ble	a4,t3,20030 <_svfiprintf_r+0x78c>
   20058:	06010613          	addi	a2,sp,96
   2005c:	000b0593          	mv	a1,s6
   20060:	000b8513          	mv	a0,s7
   20064:	01c13423          	sd	t3,8(sp)
   20068:	e44ff0ef          	jal	1f6ac <__ssprint_r>
   2006c:	16051e63          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   20070:	ff04041b          	addiw	s0,s0,-16
   20074:	07013683          	ld	a3,112(sp)
   20078:	06812703          	lw	a4,104(sp)
   2007c:	00098793          	mv	a5,s3
   20080:	00813e03          	ld	t3,8(sp)
   20084:	fa8c4ae3          	blt	s8,s0,20038 <_svfiprintf_r+0x794>
   20088:	008686b3          	add	a3,a3,s0
   2008c:	0017071b          	addiw	a4,a4,1
   20090:	01b7b023          	sd	s11,0(a5)
   20094:	0087b423          	sd	s0,8(a5)
   20098:	06d13823          	sd	a3,112(sp)
   2009c:	06e12423          	sw	a4,104(sp)
   200a0:	00700613          	li	a2,7
   200a4:	01078793          	addi	a5,a5,16
   200a8:	02e65263          	ble	a4,a2,200cc <_svfiprintf_r+0x828>
   200ac:	06010613          	addi	a2,sp,96
   200b0:	000b0593          	mv	a1,s6
   200b4:	000b8513          	mv	a0,s7
   200b8:	df4ff0ef          	jal	1f6ac <__ssprint_r>
   200bc:	12051663          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   200c0:	07013683          	ld	a3,112(sp)
   200c4:	06812703          	lw	a4,104(sp)
   200c8:	00098793          	mv	a5,s3
   200cc:	01812c03          	lw	s8,24(sp)
   200d0:	0017071b          	addiw	a4,a4,1
   200d4:	01a7b023          	sd	s10,0(a5)
   200d8:	00dc06b3          	add	a3,s8,a3
   200dc:	0187b423          	sd	s8,8(a5)
   200e0:	06d13823          	sd	a3,112(sp)
   200e4:	06e12423          	sw	a4,104(sp)
   200e8:	00700613          	li	a2,7
   200ec:	01078793          	addi	a5,a5,16
   200f0:	20e64c63          	blt	a2,a4,20308 <_svfiprintf_r+0xa64>
   200f4:	004afa93          	andi	s5,s5,4
   200f8:	0a0a8263          	beqz	s5,2019c <_svfiprintf_r+0x8f8>
   200fc:	01412703          	lw	a4,20(sp)
   20100:	4197043b          	subw	s0,a4,s9
   20104:	08805c63          	blez	s0,2019c <_svfiprintf_r+0x8f8>
   20108:	01000713          	li	a4,16
   2010c:	4c875c63          	ble	s0,a4,205e4 <_svfiprintf_r+0xd40>
   20110:	01000a93          	li	s5,16
   20114:	06812703          	lw	a4,104(sp)
   20118:	05213023          	sd	s2,64(sp)
   2011c:	00700c13          	li	s8,7
   20120:	000a8d13          	mv	s10,s5
   20124:	00c0006f          	j	20130 <_svfiprintf_r+0x88c>
   20128:	ff04041b          	addiw	s0,s0,-16
   2012c:	048d5663          	ble	s0,s10,20178 <_svfiprintf_r+0x8d4>
   20130:	01068693          	addi	a3,a3,16
   20134:	0017071b          	addiw	a4,a4,1
   20138:	0127b023          	sd	s2,0(a5)
   2013c:	0157b423          	sd	s5,8(a5)
   20140:	06d13823          	sd	a3,112(sp)
   20144:	06e12423          	sw	a4,104(sp)
   20148:	01078793          	addi	a5,a5,16
   2014c:	fcec5ee3          	ble	a4,s8,20128 <_svfiprintf_r+0x884>
   20150:	06010613          	addi	a2,sp,96
   20154:	000b0593          	mv	a1,s6
   20158:	000b8513          	mv	a0,s7
   2015c:	d50ff0ef          	jal	1f6ac <__ssprint_r>
   20160:	08051463          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   20164:	ff04041b          	addiw	s0,s0,-16
   20168:	07013683          	ld	a3,112(sp)
   2016c:	06812703          	lw	a4,104(sp)
   20170:	00098793          	mv	a5,s3
   20174:	fa8d4ee3          	blt	s10,s0,20130 <_svfiprintf_r+0x88c>
   20178:	04013603          	ld	a2,64(sp)
   2017c:	008686b3          	add	a3,a3,s0
   20180:	0017071b          	addiw	a4,a4,1
   20184:	00c7b023          	sd	a2,0(a5)
   20188:	0087b423          	sd	s0,8(a5)
   2018c:	06d13823          	sd	a3,112(sp)
   20190:	06e12423          	sw	a4,104(sp)
   20194:	00700793          	li	a5,7
   20198:	28e7c663          	blt	a5,a4,20424 <_svfiprintf_r+0xb80>
   2019c:	01412a03          	lw	s4,20(sp)
   201a0:	019a5463          	ble	s9,s4,201a8 <_svfiprintf_r+0x904>
   201a4:	000c8a13          	mv	s4,s9
   201a8:	01c12783          	lw	a5,28(sp)
   201ac:	014787bb          	addw	a5,a5,s4
   201b0:	00f12e23          	sw	a5,28(sp)
   201b4:	16069a63          	bnez	a3,20328 <_svfiprintf_r+0xa84>
   201b8:	0004c703          	lbu	a4,0(s1)
   201bc:	06012423          	sw	zero,104(sp)
   201c0:	00098793          	mv	a5,s3
   201c4:	f8071063          	bnez	a4,1f944 <_svfiprintf_r+0xa0>
   201c8:	00048413          	mv	s0,s1
   201cc:	fdcff06f          	j	1f9a8 <_svfiprintf_r+0x104>
   201d0:	07013783          	ld	a5,112(sp)
   201d4:	00078a63          	beqz	a5,201e8 <_svfiprintf_r+0x944>
   201d8:	06010613          	addi	a2,sp,96
   201dc:	000b0593          	mv	a1,s6
   201e0:	000b8513          	mv	a0,s7
   201e4:	cc8ff0ef          	jal	1f6ac <__ssprint_r>
   201e8:	010b5783          	lhu	a5,16(s6)
   201ec:	01c12503          	lw	a0,28(sp)
   201f0:	0407f793          	andi	a5,a5,64
   201f4:	3a079a63          	bnez	a5,205a8 <_svfiprintf_r+0xd04>
   201f8:	18813083          	ld	ra,392(sp)
   201fc:	18013403          	ld	s0,384(sp)
   20200:	17813483          	ld	s1,376(sp)
   20204:	17013903          	ld	s2,368(sp)
   20208:	16813983          	ld	s3,360(sp)
   2020c:	16013a03          	ld	s4,352(sp)
   20210:	15813a83          	ld	s5,344(sp)
   20214:	15013b03          	ld	s6,336(sp)
   20218:	14813b83          	ld	s7,328(sp)
   2021c:	14013c03          	ld	s8,320(sp)
   20220:	13813c83          	ld	s9,312(sp)
   20224:	13013d03          	ld	s10,304(sp)
   20228:	12813d83          	ld	s11,296(sp)
   2022c:	19010113          	addi	sp,sp,400
   20230:	00008067          	ret
   20234:	01412603          	lw	a2,20(sp)
   20238:	41960a3b          	subw	s4,a2,s9
   2023c:	dd4054e3          	blez	s4,20004 <_svfiprintf_r+0x760>
   20240:	01000613          	li	a2,16
   20244:	3b465663          	ble	s4,a2,205f0 <_svfiprintf_r+0xd4c>
   20248:	01000e13          	li	t3,16
   2024c:	00022637          	lui	a2,0x22
   20250:	24860d93          	addi	s11,a2,584 # 22248 <zeroes.4123>
   20254:	00700e93          	li	t4,7
   20258:	000e0c13          	mv	s8,t3
   2025c:	00c0006f          	j	20268 <_svfiprintf_r+0x9c4>
   20260:	ff0a0a1b          	addiw	s4,s4,-16
   20264:	054c5e63          	ble	s4,s8,202c0 <_svfiprintf_r+0xa1c>
   20268:	01068693          	addi	a3,a3,16
   2026c:	0017071b          	addiw	a4,a4,1
   20270:	01b7b023          	sd	s11,0(a5)
   20274:	01c7b423          	sd	t3,8(a5)
   20278:	06d13823          	sd	a3,112(sp)
   2027c:	06e12423          	sw	a4,104(sp)
   20280:	01078793          	addi	a5,a5,16
   20284:	fceedee3          	ble	a4,t4,20260 <_svfiprintf_r+0x9bc>
   20288:	06010613          	addi	a2,sp,96
   2028c:	000b0593          	mv	a1,s6
   20290:	000b8513          	mv	a0,s7
   20294:	03d13c23          	sd	t4,56(sp)
   20298:	01c13423          	sd	t3,8(sp)
   2029c:	c10ff0ef          	jal	1f6ac <__ssprint_r>
   202a0:	f40514e3          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   202a4:	ff0a0a1b          	addiw	s4,s4,-16
   202a8:	07013683          	ld	a3,112(sp)
   202ac:	06812703          	lw	a4,104(sp)
   202b0:	00098793          	mv	a5,s3
   202b4:	03813e83          	ld	t4,56(sp)
   202b8:	00813e03          	ld	t3,8(sp)
   202bc:	fb4c46e3          	blt	s8,s4,20268 <_svfiprintf_r+0x9c4>
   202c0:	014686b3          	add	a3,a3,s4
   202c4:	0017071b          	addiw	a4,a4,1
   202c8:	01b7b023          	sd	s11,0(a5)
   202cc:	0147b423          	sd	s4,8(a5)
   202d0:	06d13823          	sd	a3,112(sp)
   202d4:	06e12423          	sw	a4,104(sp)
   202d8:	00700613          	li	a2,7
   202dc:	01078793          	addi	a5,a5,16
   202e0:	d2e652e3          	ble	a4,a2,20004 <_svfiprintf_r+0x760>
   202e4:	06010613          	addi	a2,sp,96
   202e8:	000b0593          	mv	a1,s6
   202ec:	000b8513          	mv	a0,s7
   202f0:	bbcff0ef          	jal	1f6ac <__ssprint_r>
   202f4:	ee051ae3          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   202f8:	07013683          	ld	a3,112(sp)
   202fc:	06812703          	lw	a4,104(sp)
   20300:	00098793          	mv	a5,s3
   20304:	d01ff06f          	j	20004 <_svfiprintf_r+0x760>
   20308:	06010613          	addi	a2,sp,96
   2030c:	000b0593          	mv	a1,s6
   20310:	000b8513          	mv	a0,s7
   20314:	b98ff0ef          	jal	1f6ac <__ssprint_r>
   20318:	ec0518e3          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   2031c:	07013683          	ld	a3,112(sp)
   20320:	00098793          	mv	a5,s3
   20324:	dd1ff06f          	j	200f4 <_svfiprintf_r+0x850>
   20328:	06010613          	addi	a2,sp,96
   2032c:	000b0593          	mv	a1,s6
   20330:	000b8513          	mv	a0,s7
   20334:	b78ff0ef          	jal	1f6ac <__ssprint_r>
   20338:	e80500e3          	beqz	a0,201b8 <_svfiprintf_r+0x914>
   2033c:	eadff06f          	j	201e8 <_svfiprintf_r+0x944>
   20340:	06010613          	addi	a2,sp,96
   20344:	000b0593          	mv	a1,s6
   20348:	000b8513          	mv	a0,s7
   2034c:	b60ff0ef          	jal	1f6ac <__ssprint_r>
   20350:	e8051ce3          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   20354:	00098793          	mv	a5,s3
   20358:	e44ff06f          	j	1f99c <_svfiprintf_r+0xf8>
   2035c:	06010613          	addi	a2,sp,96
   20360:	000b0593          	mv	a1,s6
   20364:	000b8513          	mv	a0,s7
   20368:	b44ff0ef          	jal	1f6ac <__ssprint_r>
   2036c:	e6051ee3          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   20370:	07013683          	ld	a3,112(sp)
   20374:	06812703          	lw	a4,104(sp)
   20378:	00098793          	mv	a5,s3
   2037c:	c49ff06f          	j	1ffc4 <_svfiprintf_r+0x720>
   20380:	06010613          	addi	a2,sp,96
   20384:	000b0593          	mv	a1,s6
   20388:	000b8513          	mv	a0,s7
   2038c:	b20ff0ef          	jal	1f6ac <__ssprint_r>
   20390:	e4051ce3          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   20394:	07013683          	ld	a3,112(sp)
   20398:	06812703          	lw	a4,104(sp)
   2039c:	00098793          	mv	a5,s3
   203a0:	c59ff06f          	j	1fff8 <_svfiprintf_r+0x754>
   203a4:	04010ba3          	sb	zero,87(sp)
   203a8:	22044263          	bltz	s0,205cc <_svfiprintf_r+0xd28>
   203ac:	f7fafa93          	andi	s5,s5,-129
   203b0:	00000613          	li	a2,0
   203b4:	fa040a63          	beqz	s0,1fb68 <_svfiprintf_r+0x2c4>
   203b8:	00000713          	li	a4,0
   203bc:	ebcff06f          	j	1fa78 <_svfiprintf_r+0x1d4>
   203c0:	040af713          	andi	a4,s5,64
   203c4:	02013683          	ld	a3,32(sp)
   203c8:	0c070463          	beqz	a4,20490 <_svfiprintf_r+0xbec>
   203cc:	00069703          	lh	a4,0(a3)
   203d0:	00868693          	addi	a3,a3,8
   203d4:	02d13023          	sd	a3,32(sp)
   203d8:	f6075e63          	bgez	a4,1fb54 <_svfiprintf_r+0x2b0>
   203dc:	02d00693          	li	a3,45
   203e0:	04d10ba3          	sb	a3,87(sp)
   203e4:	40e00733          	neg	a4,a4
   203e8:	1c044463          	bltz	s0,205b0 <_svfiprintf_r+0xd0c>
   203ec:	f7fafa93          	andi	s5,s5,-129
   203f0:	02d00613          	li	a2,45
   203f4:	9a1ff06f          	j	1fd94 <_svfiprintf_r+0x4f0>
   203f8:	00000613          	li	a2,0
   203fc:	00000713          	li	a4,0
   20400:	ee041263          	bnez	s0,1fae4 <_svfiprintf_r+0x240>
   20404:	001af713          	andi	a4,s5,1
   20408:	18070463          	beqz	a4,20590 <_svfiprintf_r+0xcec>
   2040c:	03000713          	li	a4,48
   20410:	08e10fa3          	sb	a4,159(sp)
   20414:	04c12703          	lw	a4,76(sp)
   20418:	09f10d13          	addi	s10,sp,159
   2041c:	00e12c23          	sw	a4,24(sp)
   20420:	f54ff06f          	j	1fb74 <_svfiprintf_r+0x2d0>
   20424:	06010613          	addi	a2,sp,96
   20428:	000b0593          	mv	a1,s6
   2042c:	000b8513          	mv	a0,s7
   20430:	a7cff0ef          	jal	1f6ac <__ssprint_r>
   20434:	da051ae3          	bnez	a0,201e8 <_svfiprintf_r+0x944>
   20438:	07013683          	ld	a3,112(sp)
   2043c:	d61ff06f          	j	2019c <_svfiprintf_r+0x8f8>
   20440:	00022737          	lui	a4,0x22
   20444:	2a070713          	addi	a4,a4,672 # 222a0 <zeroes.4123+0x58>
   20448:	02e13823          	sd	a4,48(sp)
   2044c:	00000613          	li	a2,0
   20450:	f60414e3          	bnez	s0,203b8 <_svfiprintf_r+0xb14>
   20454:	f14ff06f          	j	1fb68 <_svfiprintf_r+0x2c4>
   20458:	02013703          	ld	a4,32(sp)
   2045c:	00870693          	addi	a3,a4,8
   20460:	00076703          	lwu	a4,0(a4)
   20464:	e6045863          	bgez	s0,1fad4 <_svfiprintf_r+0x230>
   20468:	ac1ff06f          	j	1ff28 <_svfiprintf_r+0x684>
   2046c:	02013703          	ld	a4,32(sp)
   20470:	00870693          	addi	a3,a4,8
   20474:	00076703          	lwu	a4,0(a4)
   20478:	900456e3          	bgez	s0,1fd84 <_svfiprintf_r+0x4e0>
   2047c:	a6dff06f          	j	1fee8 <_svfiprintf_r+0x644>
   20480:	00066703          	lwu	a4,0(a2)
   20484:	00860613          	addi	a2,a2,8
   20488:	02c13023          	sd	a2,32(sp)
   2048c:	9e9ff06f          	j	1fe74 <_svfiprintf_r+0x5d0>
   20490:	0006a703          	lw	a4,0(a3)
   20494:	00868693          	addi	a3,a3,8
   20498:	02d13023          	sd	a3,32(sp)
   2049c:	eb4ff06f          	j	1fb50 <_svfiprintf_r+0x2ac>
   204a0:	02013603          	ld	a2,32(sp)
   204a4:	01c12683          	lw	a3,28(sp)
   204a8:	00063703          	ld	a4,0(a2)
   204ac:	00860613          	addi	a2,a2,8
   204b0:	02c13023          	sd	a2,32(sp)
   204b4:	00d73023          	sd	a3,0(a4)
   204b8:	c84ff06f          	j	1f93c <_svfiprintf_r+0x98>
   204bc:	00000713          	li	a4,0
   204c0:	0307071b          	addiw	a4,a4,48
   204c4:	08e10fa3          	sb	a4,159(sp)
   204c8:	04c12703          	lw	a4,76(sp)
   204cc:	09f10d13          	addi	s10,sp,159
   204d0:	00e12c23          	sw	a4,24(sp)
   204d4:	ea0ff06f          	j	1fb74 <_svfiprintf_r+0x2d0>
   204d8:	02d13023          	sd	a3,32(sp)
   204dc:	000226b7          	lui	a3,0x22
   204e0:	2a068693          	addi	a3,a3,672 # 222a0 <zeroes.4123+0x58>
   204e4:	00060a93          	mv	s5,a2
   204e8:	02d13823          	sd	a3,48(sp)
   204ec:	00000613          	li	a2,0
   204f0:	d8071463          	bnez	a4,1fa78 <_svfiprintf_r+0x1d4>
   204f4:	00200713          	li	a4,2
   204f8:	00100693          	li	a3,1
   204fc:	fcd700e3          	beq	a4,a3,204bc <_svfiprintf_r+0xc18>
   20500:	00200693          	li	a3,2
   20504:	ead70ae3          	beq	a4,a3,203b8 <_svfiprintf_r+0xb14>
   20508:	00000713          	li	a4,0
   2050c:	dd8ff06f          	j	1fae4 <_svfiprintf_r+0x240>
   20510:	00022637          	lui	a2,0x22
   20514:	24860d93          	addi	s11,a2,584 # 22248 <zeroes.4123>
   20518:	b71ff06f          	j	20088 <_svfiprintf_r+0x7e4>
   2051c:	01c12683          	lw	a3,28(sp)
   20520:	00d72023          	sw	a3,0(a4)
   20524:	c18ff06f          	j	1f93c <_svfiprintf_r+0x98>
   20528:	000d0513          	mv	a0,s10
   2052c:	a79f10ef          	jal	11fa4 <strlen>
   20530:	00a12c23          	sw	a0,24(sp)
   20534:	05714603          	lbu	a2,87(sp)
   20538:	03b13023          	sd	s11,32(sp)
   2053c:	00000413          	li	s0,0
   20540:	00813783          	ld	a5,8(sp)
   20544:	e30ff06f          	j	1fb74 <_svfiprintf_r+0x2d0>
   20548:	04000593          	li	a1,64
   2054c:	d35f00ef          	jal	11280 <_malloc_r>
   20550:	00ab3023          	sd	a0,0(s6)
   20554:	00ab3c23          	sd	a0,24(s6)
   20558:	10050263          	beqz	a0,2065c <_svfiprintf_r+0xdb8>
   2055c:	04000793          	li	a5,64
   20560:	02fb2023          	sw	a5,32(s6)
   20564:	b9cff06f          	j	1f900 <_svfiprintf_r+0x5c>
   20568:	00600713          	li	a4,6
   2056c:	00877463          	bleu	s0,a4,20574 <_svfiprintf_r+0xcd0>
   20570:	00070413          	mv	s0,a4
   20574:	00812c23          	sw	s0,24(sp)
   20578:	00040c93          	mv	s9,s0
   2057c:	08044a63          	bltz	s0,20610 <_svfiprintf_r+0xd6c>
   20580:	000228b7          	lui	a7,0x22
   20584:	03b13023          	sd	s11,32(sp)
   20588:	2b888d13          	addi	s10,a7,696 # 222b8 <zeroes.4123+0x70>
   2058c:	e58ff06f          	j	1fbe4 <_svfiprintf_r+0x340>
   20590:	00012c23          	sw	zero,24(sp)
   20594:	00098d13          	mv	s10,s3
   20598:	ddcff06f          	j	1fb74 <_svfiprintf_r+0x2d0>
   2059c:	06812703          	lw	a4,104(sp)
   205a0:	05213023          	sd	s2,64(sp)
   205a4:	ee8ff06f          	j	1fc8c <_svfiprintf_r+0x3e8>
   205a8:	fff00513          	li	a0,-1
   205ac:	c4dff06f          	j	201f8 <_svfiprintf_r+0x954>
   205b0:	02d00613          	li	a2,45
   205b4:	00100693          	li	a3,1
   205b8:	00100593          	li	a1,1
   205bc:	fcb68c63          	beq	a3,a1,1fd94 <_svfiprintf_r+0x4f0>
   205c0:	00200593          	li	a1,2
   205c4:	cab68a63          	beq	a3,a1,1fa78 <_svfiprintf_r+0x1d4>
   205c8:	d1cff06f          	j	1fae4 <_svfiprintf_r+0x240>
   205cc:	00000613          	li	a2,0
   205d0:	f25ff06f          	j	204f4 <_svfiprintf_r+0xc50>
   205d4:	00068a93          	mv	s5,a3
   205d8:	00000613          	li	a2,0
   205dc:	00200693          	li	a3,2
   205e0:	fd9ff06f          	j	205b8 <_svfiprintf_r+0xd14>
   205e4:	06812703          	lw	a4,104(sp)
   205e8:	05213023          	sd	s2,64(sp)
   205ec:	b8dff06f          	j	20178 <_svfiprintf_r+0x8d4>
   205f0:	00022637          	lui	a2,0x22
   205f4:	24860d93          	addi	s11,a2,584 # 22248 <zeroes.4123>
   205f8:	cc9ff06f          	j	202c0 <_svfiprintf_r+0xa1c>
   205fc:	00812c23          	sw	s0,24(sp)
   20600:	05714603          	lbu	a2,87(sp)
   20604:	03b13023          	sd	s11,32(sp)
   20608:	00000413          	li	s0,0
   2060c:	d68ff06f          	j	1fb74 <_svfiprintf_r+0x2d0>
   20610:	00000c93          	li	s9,0
   20614:	f6dff06f          	j	20580 <_svfiprintf_r+0xcdc>
   20618:	02013703          	ld	a4,32(sp)
   2061c:	00072403          	lw	s0,0(a4)
   20620:	00870d93          	addi	s11,a4,8
   20624:	03b13023          	sd	s11,32(sp)
   20628:	ba045863          	bgez	s0,1f9d8 <_svfiprintf_r+0x134>
   2062c:	fff00413          	li	s0,-1
   20630:	ba8ff06f          	j	1f9d8 <_svfiprintf_r+0x134>
   20634:	05010ba3          	sb	a6,87(sp)
   20638:	d94ff06f          	j	1fbcc <_svfiprintf_r+0x328>
   2063c:	05010ba3          	sb	a6,87(sp)
   20640:	c78ff06f          	j	1fab8 <_svfiprintf_r+0x214>
   20644:	05010ba3          	sb	a6,87(sp)
   20648:	010aea93          	ori	s5,s5,16
   2064c:	879ff06f          	j	1fec4 <_svfiprintf_r+0x620>
   20650:	05010ba3          	sb	a6,87(sp)
   20654:	010aea93          	ori	s5,s5,16
   20658:	8adff06f          	j	1ff04 <_svfiprintf_r+0x660>
   2065c:	00c00793          	li	a5,12
   20660:	00fba023          	sw	a5,0(s7)
   20664:	fff00513          	li	a0,-1
   20668:	b91ff06f          	j	201f8 <_svfiprintf_r+0x954>
   2066c:	05010ba3          	sb	a6,87(sp)
   20670:	eb8ff06f          	j	1fd28 <_svfiprintf_r+0x484>
   20674:	05010ba3          	sb	a6,87(sp)
   20678:	ef0ff06f          	j	1fd68 <_svfiprintf_r+0x4c4>
   2067c:	05010ba3          	sb	a6,87(sp)
   20680:	fd0ff06f          	j	1fe50 <_svfiprintf_r+0x5ac>
   20684:	05010ba3          	sb	a6,87(sp)
   20688:	8b5ff06f          	j	1ff3c <_svfiprintf_r+0x698>
   2068c:	05010ba3          	sb	a6,87(sp)
   20690:	ca4ff06f          	j	1fb34 <_svfiprintf_r+0x290>

0000000000020694 <_wcrtomb_r>:
   20694:	fc010113          	addi	sp,sp,-64
   20698:	02913423          	sd	s1,40(sp)
   2069c:	03213023          	sd	s2,32(sp)
   206a0:	02113c23          	sd	ra,56(sp)
   206a4:	02813823          	sd	s0,48(sp)
   206a8:	01313c23          	sd	s3,24(sp)
   206ac:	01413823          	sd	s4,16(sp)
   206b0:	00050493          	mv	s1,a0
   206b4:	00068913          	mv	s2,a3
   206b8:	06058663          	beqz	a1,20724 <_wcrtomb_r+0x90>
   206bc:	8401ba03          	ld	s4,-1984(gp) # 24a10 <__wctomb>
   206c0:	00058413          	mv	s0,a1
   206c4:	00060993          	mv	s3,a2
   206c8:	d2cf70ef          	jal	17bf4 <__locale_charset>
   206cc:	00050693          	mv	a3,a0
   206d0:	00090713          	mv	a4,s2
   206d4:	00098613          	mv	a2,s3
   206d8:	00040593          	mv	a1,s0
   206dc:	00048513          	mv	a0,s1
   206e0:	000a00e7          	jalr	s4
   206e4:	00050793          	mv	a5,a0
   206e8:	fff00713          	li	a4,-1
   206ec:	00078513          	mv	a0,a5
   206f0:	00e79a63          	bne	a5,a4,20704 <_wcrtomb_r+0x70>
   206f4:	00092023          	sw	zero,0(s2)
   206f8:	08a00793          	li	a5,138
   206fc:	00f4a023          	sw	a5,0(s1)
   20700:	fff00513          	li	a0,-1
   20704:	03813083          	ld	ra,56(sp)
   20708:	03013403          	ld	s0,48(sp)
   2070c:	02813483          	ld	s1,40(sp)
   20710:	02013903          	ld	s2,32(sp)
   20714:	01813983          	ld	s3,24(sp)
   20718:	01013a03          	ld	s4,16(sp)
   2071c:	04010113          	addi	sp,sp,64
   20720:	00008067          	ret
   20724:	8401b403          	ld	s0,-1984(gp) # 24a10 <__wctomb>
   20728:	cccf70ef          	jal	17bf4 <__locale_charset>
   2072c:	00050693          	mv	a3,a0
   20730:	00090713          	mv	a4,s2
   20734:	00000613          	li	a2,0
   20738:	00010593          	mv	a1,sp
   2073c:	00048513          	mv	a0,s1
   20740:	000400e7          	jalr	s0
   20744:	00050793          	mv	a5,a0
   20748:	fa1ff06f          	j	206e8 <_wcrtomb_r+0x54>

000000000002074c <wcrtomb>:
   2074c:	fc010113          	addi	sp,sp,-64
   20750:	02913423          	sd	s1,40(sp)
   20754:	03213023          	sd	s2,32(sp)
   20758:	02113c23          	sd	ra,56(sp)
   2075c:	02813823          	sd	s0,48(sp)
   20760:	01313c23          	sd	s3,24(sp)
   20764:	01413823          	sd	s4,16(sp)
   20768:	00060913          	mv	s2,a2
   2076c:	8101b483          	ld	s1,-2032(gp) # 249e0 <_impure_ptr>
   20770:	06050663          	beqz	a0,207dc <wcrtomb+0x90>
   20774:	8401ba03          	ld	s4,-1984(gp) # 24a10 <__wctomb>
   20778:	00058993          	mv	s3,a1
   2077c:	00050413          	mv	s0,a0
   20780:	c74f70ef          	jal	17bf4 <__locale_charset>
   20784:	00050693          	mv	a3,a0
   20788:	00090713          	mv	a4,s2
   2078c:	00098613          	mv	a2,s3
   20790:	00040593          	mv	a1,s0
   20794:	00048513          	mv	a0,s1
   20798:	000a00e7          	jalr	s4
   2079c:	00050793          	mv	a5,a0
   207a0:	fff00713          	li	a4,-1
   207a4:	00078513          	mv	a0,a5
   207a8:	00e79a63          	bne	a5,a4,207bc <wcrtomb+0x70>
   207ac:	00092023          	sw	zero,0(s2)
   207b0:	08a00793          	li	a5,138
   207b4:	00f4a023          	sw	a5,0(s1)
   207b8:	fff00513          	li	a0,-1
   207bc:	03813083          	ld	ra,56(sp)
   207c0:	03013403          	ld	s0,48(sp)
   207c4:	02813483          	ld	s1,40(sp)
   207c8:	02013903          	ld	s2,32(sp)
   207cc:	01813983          	ld	s3,24(sp)
   207d0:	01013a03          	ld	s4,16(sp)
   207d4:	04010113          	addi	sp,sp,64
   207d8:	00008067          	ret
   207dc:	8401b403          	ld	s0,-1984(gp) # 24a10 <__wctomb>
   207e0:	c14f70ef          	jal	17bf4 <__locale_charset>
   207e4:	00050693          	mv	a3,a0
   207e8:	00090713          	mv	a4,s2
   207ec:	00000613          	li	a2,0
   207f0:	00010593          	mv	a1,sp
   207f4:	00048513          	mv	a0,s1
   207f8:	000400e7          	jalr	s0
   207fc:	00050793          	mv	a5,a0
   20800:	fa1ff06f          	j	207a0 <wcrtomb+0x54>

0000000000020804 <__ascii_wctomb>:
   20804:	00058c63          	beqz	a1,2081c <__ascii_wctomb+0x18>
   20808:	0ff00793          	li	a5,255
   2080c:	00c7ec63          	bltu	a5,a2,20824 <__ascii_wctomb+0x20>
   20810:	00c58023          	sb	a2,0(a1)
   20814:	00100513          	li	a0,1
   20818:	00008067          	ret
   2081c:	00000513          	li	a0,0
   20820:	00008067          	ret
   20824:	08a00793          	li	a5,138
   20828:	00f52023          	sw	a5,0(a0)
   2082c:	fff00513          	li	a0,-1
   20830:	00008067          	ret

0000000000020834 <_wctomb_r>:
   20834:	fd010113          	addi	sp,sp,-48
   20838:	02813023          	sd	s0,32(sp)
   2083c:	8401b403          	ld	s0,-1984(gp) # 24a10 <__wctomb>
   20840:	02113423          	sd	ra,40(sp)
   20844:	00913c23          	sd	s1,24(sp)
   20848:	01213823          	sd	s2,16(sp)
   2084c:	01313423          	sd	s3,8(sp)
   20850:	01413023          	sd	s4,0(sp)
   20854:	00050493          	mv	s1,a0
   20858:	00068a13          	mv	s4,a3
   2085c:	00058913          	mv	s2,a1
   20860:	00060993          	mv	s3,a2
   20864:	b90f70ef          	jal	17bf4 <__locale_charset>
   20868:	000a0713          	mv	a4,s4
   2086c:	00050693          	mv	a3,a0
   20870:	00098613          	mv	a2,s3
   20874:	00090593          	mv	a1,s2
   20878:	00048513          	mv	a0,s1
   2087c:	00040313          	mv	t1,s0
   20880:	02813083          	ld	ra,40(sp)
   20884:	02013403          	ld	s0,32(sp)
   20888:	01813483          	ld	s1,24(sp)
   2088c:	01013903          	ld	s2,16(sp)
   20890:	00813983          	ld	s3,8(sp)
   20894:	00013a03          	ld	s4,0(sp)
   20898:	03010113          	addi	sp,sp,48
   2089c:	00030067          	jr	t1

00000000000208a0 <__syscall_error>:
   208a0:	ff010113          	addi	sp,sp,-16
   208a4:	00113423          	sd	ra,8(sp)
   208a8:	00813023          	sd	s0,0(sp)
   208ac:	00050413          	mv	s0,a0
   208b0:	3c4000ef          	jal	20c74 <__errno>
   208b4:	00813083          	ld	ra,8(sp)
   208b8:	408007bb          	negw	a5,s0
   208bc:	00f52023          	sw	a5,0(a0)
   208c0:	00013403          	ld	s0,0(sp)
   208c4:	fff00513          	li	a0,-1
   208c8:	01010113          	addi	sp,sp,16
   208cc:	00008067          	ret

00000000000208d0 <open>:
   208d0:	00000693          	li	a3,0
   208d4:	40000893          	li	a7,1024
   208d8:	00000073          	ecall
   208dc:	fc0542e3          	bltz	a0,208a0 <__syscall_error>
   208e0:	0005051b          	sext.w	a0,a0
   208e4:	00008067          	ret

00000000000208e8 <openat>:
   208e8:	03800893          	li	a7,56
   208ec:	00000073          	ecall
   208f0:	fa0548e3          	bltz	a0,208a0 <__syscall_error>
   208f4:	0005051b          	sext.w	a0,a0
   208f8:	00008067          	ret

00000000000208fc <lseek>:
   208fc:	00000693          	li	a3,0
   20900:	03e00893          	li	a7,62
   20904:	00000073          	ecall
   20908:	f8054ce3          	bltz	a0,208a0 <__syscall_error>
   2090c:	00008067          	ret

0000000000020910 <read>:
   20910:	00000693          	li	a3,0
   20914:	03f00893          	li	a7,63
   20918:	00000073          	ecall
   2091c:	f80542e3          	bltz	a0,208a0 <__syscall_error>
   20920:	00008067          	ret

0000000000020924 <write>:
   20924:	00000693          	li	a3,0
   20928:	04000893          	li	a7,64
   2092c:	00000073          	ecall
   20930:	f60548e3          	bltz	a0,208a0 <__syscall_error>
   20934:	00008067          	ret

0000000000020938 <fstat>:
   20938:	00000613          	li	a2,0
   2093c:	00000693          	li	a3,0
   20940:	05000893          	li	a7,80
   20944:	00000073          	ecall
   20948:	f4054ce3          	bltz	a0,208a0 <__syscall_error>
   2094c:	0005051b          	sext.w	a0,a0
   20950:	00008067          	ret

0000000000020954 <stat>:
   20954:	00000613          	li	a2,0
   20958:	00000693          	li	a3,0
   2095c:	40e00893          	li	a7,1038
   20960:	00000073          	ecall
   20964:	f2054ee3          	bltz	a0,208a0 <__syscall_error>
   20968:	0005051b          	sext.w	a0,a0
   2096c:	00008067          	ret

0000000000020970 <lstat>:
   20970:	00000613          	li	a2,0
   20974:	00000693          	li	a3,0
   20978:	40f00893          	li	a7,1039
   2097c:	00000073          	ecall
   20980:	f20540e3          	bltz	a0,208a0 <__syscall_error>
   20984:	0005051b          	sext.w	a0,a0
   20988:	00008067          	ret

000000000002098c <fstatat>:
   2098c:	04f00893          	li	a7,79
   20990:	00000073          	ecall
   20994:	f00546e3          	bltz	a0,208a0 <__syscall_error>
   20998:	0005051b          	sext.w	a0,a0
   2099c:	00008067          	ret

00000000000209a0 <access>:
   209a0:	00000613          	li	a2,0
   209a4:	00000693          	li	a3,0
   209a8:	40900893          	li	a7,1033
   209ac:	00000073          	ecall
   209b0:	ee0548e3          	bltz	a0,208a0 <__syscall_error>
   209b4:	0005051b          	sext.w	a0,a0
   209b8:	00008067          	ret

00000000000209bc <faccessat>:
   209bc:	03000893          	li	a7,48
   209c0:	00000073          	ecall
   209c4:	ec054ee3          	bltz	a0,208a0 <__syscall_error>
   209c8:	0005051b          	sext.w	a0,a0
   209cc:	00008067          	ret

00000000000209d0 <close>:
   209d0:	00000593          	li	a1,0
   209d4:	00000613          	li	a2,0
   209d8:	00000693          	li	a3,0
   209dc:	03900893          	li	a7,57
   209e0:	00000073          	ecall
   209e4:	ea054ee3          	bltz	a0,208a0 <__syscall_error>
   209e8:	0005051b          	sext.w	a0,a0
   209ec:	00008067          	ret

00000000000209f0 <link>:
   209f0:	00000613          	li	a2,0
   209f4:	00000693          	li	a3,0
   209f8:	40100893          	li	a7,1025
   209fc:	00000073          	ecall
   20a00:	ea0540e3          	bltz	a0,208a0 <__syscall_error>
   20a04:	0005051b          	sext.w	a0,a0
   20a08:	00008067          	ret

0000000000020a0c <unlink>:
   20a0c:	00000593          	li	a1,0
   20a10:	00000613          	li	a2,0
   20a14:	00000693          	li	a3,0
   20a18:	40200893          	li	a7,1026
   20a1c:	00000073          	ecall
   20a20:	e80540e3          	bltz	a0,208a0 <__syscall_error>
   20a24:	0005051b          	sext.w	a0,a0
   20a28:	00008067          	ret

0000000000020a2c <execve>:
   20a2c:	ff010113          	addi	sp,sp,-16
   20a30:	00113423          	sd	ra,8(sp)
   20a34:	240000ef          	jal	20c74 <__errno>
   20a38:	00813083          	ld	ra,8(sp)
   20a3c:	00c00793          	li	a5,12
   20a40:	00f52023          	sw	a5,0(a0)
   20a44:	01010113          	addi	sp,sp,16
   20a48:	fff00513          	li	a0,-1
   20a4c:	00008067          	ret

0000000000020a50 <fork>:
   20a50:	ff010113          	addi	sp,sp,-16
   20a54:	00113423          	sd	ra,8(sp)
   20a58:	21c000ef          	jal	20c74 <__errno>
   20a5c:	00813083          	ld	ra,8(sp)
   20a60:	00b00793          	li	a5,11
   20a64:	00f52023          	sw	a5,0(a0)
   20a68:	01010113          	addi	sp,sp,16
   20a6c:	fff00513          	li	a0,-1
   20a70:	00008067          	ret

0000000000020a74 <getpid>:
   20a74:	00100513          	li	a0,1
   20a78:	00008067          	ret

0000000000020a7c <kill>:
   20a7c:	ff010113          	addi	sp,sp,-16
   20a80:	00113423          	sd	ra,8(sp)
   20a84:	1f0000ef          	jal	20c74 <__errno>
   20a88:	00813083          	ld	ra,8(sp)
   20a8c:	01600793          	li	a5,22
   20a90:	00f52023          	sw	a5,0(a0)
   20a94:	01010113          	addi	sp,sp,16
   20a98:	fff00513          	li	a0,-1
   20a9c:	00008067          	ret

0000000000020aa0 <wait>:
   20aa0:	ff010113          	addi	sp,sp,-16
   20aa4:	00113423          	sd	ra,8(sp)
   20aa8:	1cc000ef          	jal	20c74 <__errno>
   20aac:	00813083          	ld	ra,8(sp)
   20ab0:	00a00793          	li	a5,10
   20ab4:	00f52023          	sw	a5,0(a0)
   20ab8:	01010113          	addi	sp,sp,16
   20abc:	fff00513          	li	a0,-1
   20ac0:	00008067          	ret

0000000000020ac4 <isatty>:
   20ac4:	f8010113          	addi	sp,sp,-128
   20ac8:	00010593          	mv	a1,sp
   20acc:	00000613          	li	a2,0
   20ad0:	00000693          	li	a3,0
   20ad4:	05000893          	li	a7,80
   20ad8:	00000073          	ecall
   20adc:	dc0542e3          	bltz	a0,208a0 <__syscall_error>
   20ae0:	fff00793          	li	a5,-1
   20ae4:	0005051b          	sext.w	a0,a0
   20ae8:	00f50863          	beq	a0,a5,20af8 <isatty+0x34>
   20aec:	01012503          	lw	a0,16(sp)
   20af0:	40d5551b          	sraiw	a0,a0,0xd
   20af4:	00157513          	andi	a0,a0,1
   20af8:	08010113          	addi	sp,sp,128
   20afc:	00008067          	ret

0000000000020b00 <times>:
   20b00:	98018313          	addi	t1,gp,-1664 # 24b50 <t0.2343>
   20b04:	00033703          	ld	a4,0(t1)
   20b08:	ff010113          	addi	sp,sp,-16
   20b0c:	00050813          	mv	a6,a0
   20b10:	02071063          	bnez	a4,20b30 <times+0x30>
   20b14:	98018513          	addi	a0,gp,-1664 # 24b50 <t0.2343>
   20b18:	00000593          	li	a1,0
   20b1c:	00000613          	li	a2,0
   20b20:	00000693          	li	a3,0
   20b24:	0a900893          	li	a7,169
   20b28:	00000073          	ecall
   20b2c:	d6054ae3          	bltz	a0,208a0 <__syscall_error>
   20b30:	00010513          	mv	a0,sp
   20b34:	00000593          	li	a1,0
   20b38:	00000613          	li	a2,0
   20b3c:	00000693          	li	a3,0
   20b40:	0a900893          	li	a7,169
   20b44:	00000073          	ecall
   20b48:	d4054ce3          	bltz	a0,208a0 <__syscall_error>
   20b4c:	00033703          	ld	a4,0(t1)
   20b50:	00013783          	ld	a5,0(sp)
   20b54:	fff00513          	li	a0,-1
   20b58:	00083823          	sd	zero,16(a6)
   20b5c:	40e786b3          	sub	a3,a5,a4
   20b60:	000f47b7          	lui	a5,0xf4
   20b64:	24078793          	addi	a5,a5,576 # f4240 <_end+0xccec8>
   20b68:	02f68733          	mul	a4,a3,a5
   20b6c:	00833683          	ld	a3,8(t1)
   20b70:	00813783          	ld	a5,8(sp)
   20b74:	00083c23          	sd	zero,24(a6)
   20b78:	00083423          	sd	zero,8(a6)
   20b7c:	40d787b3          	sub	a5,a5,a3
   20b80:	01010113          	addi	sp,sp,16
   20b84:	00f707b3          	add	a5,a4,a5
   20b88:	00f83023          	sd	a5,0(a6)
   20b8c:	00008067          	ret

0000000000020b90 <gettimeofday>:
   20b90:	00000593          	li	a1,0
   20b94:	00000613          	li	a2,0
   20b98:	00000693          	li	a3,0
   20b9c:	0a900893          	li	a7,169
   20ba0:	00000073          	ecall
   20ba4:	ce054ee3          	bltz	a0,208a0 <__syscall_error>
   20ba8:	0005051b          	sext.w	a0,a0
   20bac:	00008067          	ret

0000000000020bb0 <ftime>:
   20bb0:	00051423          	sh	zero,8(a0)
   20bb4:	00053023          	sd	zero,0(a0)
   20bb8:	00000513          	li	a0,0
   20bbc:	00008067          	ret

0000000000020bc0 <utime>:
   20bc0:	fff00513          	li	a0,-1
   20bc4:	00008067          	ret

0000000000020bc8 <chown>:
   20bc8:	fff00513          	li	a0,-1
   20bcc:	00008067          	ret

0000000000020bd0 <chmod>:
   20bd0:	fff00513          	li	a0,-1
   20bd4:	00008067          	ret

0000000000020bd8 <chdir>:
   20bd8:	fff00513          	li	a0,-1
   20bdc:	00008067          	ret

0000000000020be0 <getcwd>:
   20be0:	00000513          	li	a0,0
   20be4:	00008067          	ret

0000000000020be8 <sysconf>:
   20be8:	00200793          	li	a5,2
   20bec:	00f51863          	bne	a0,a5,20bfc <sysconf+0x14>
   20bf0:	000f4537          	lui	a0,0xf4
   20bf4:	24050513          	addi	a0,a0,576 # f4240 <_end+0xccec8>
   20bf8:	00008067          	ret
   20bfc:	fff00513          	li	a0,-1
   20c00:	00008067          	ret

0000000000020c04 <sbrk>:
   20c04:	9181b703          	ld	a4,-1768(gp) # 24ae8 <heap_end.2381>
   20c08:	00050793          	mv	a5,a0
   20c0c:	00071863          	bnez	a4,20c1c <sbrk+0x18>
   20c10:	00027737          	lui	a4,0x27
   20c14:	37870713          	addi	a4,a4,888 # 27378 <_end>
   20c18:	90e1bc23          	sd	a4,-1768(gp) # 24ae8 <heap_end.2381>
   20c1c:	00e78533          	add	a0,a5,a4
   20c20:	00000593          	li	a1,0
   20c24:	00000613          	li	a2,0
   20c28:	00000693          	li	a3,0
   20c2c:	0d600893          	li	a7,214
   20c30:	00000073          	ecall
   20c34:	c60546e3          	bltz	a0,208a0 <__syscall_error>
   20c38:	9181b683          	ld	a3,-1768(gp) # 24ae8 <heap_end.2381>
   20c3c:	fff00713          	li	a4,-1
   20c40:	00d787b3          	add	a5,a5,a3
   20c44:	00f51663          	bne	a0,a5,20c50 <sbrk+0x4c>
   20c48:	90a1bc23          	sd	a0,-1768(gp) # 24ae8 <heap_end.2381>
   20c4c:	00068713          	mv	a4,a3
   20c50:	00070513          	mv	a0,a4
   20c54:	00008067          	ret

0000000000020c58 <_exit>:
   20c58:	00000593          	li	a1,0
   20c5c:	00000613          	li	a2,0
   20c60:	00000693          	li	a3,0
   20c64:	05d00893          	li	a7,93
   20c68:	00000073          	ecall
   20c6c:	c2054ae3          	bltz	a0,208a0 <__syscall_error>
   20c70:	0000006f          	j	20c70 <_exit+0x18>

0000000000020c74 <__errno>:
   20c74:	8101b503          	ld	a0,-2032(gp) # 249e0 <_impure_ptr>
   20c78:	00008067          	ret

0000000000020c7c <sulp>:
   20c7c:	f2050553          	fmv.d.x	fa0,a0
   20c80:	fe010113          	addi	sp,sp,-32
   20c84:	00913423          	sd	s1,8(sp)
   20c88:	00058493          	mv	s1,a1
   20c8c:	00813823          	sd	s0,16(sp)
   20c90:	00113c23          	sd	ra,24(sp)
   20c94:	00050413          	mv	s0,a0
   20c98:	a00f80ef          	jal	18e98 <__ulp>
   20c9c:	02048a63          	beqz	s1,20cd0 <sulp+0x54>
   20ca0:	42045413          	srai	s0,s0,0x20
   20ca4:	02141413          	slli	s0,s0,0x21
   20ca8:	03545413          	srli	s0,s0,0x35
   20cac:	06b00793          	li	a5,107
   20cb0:	408787bb          	subw	a5,a5,s0
   20cb4:	00f05e63          	blez	a5,20cd0 <sulp+0x54>
   20cb8:	0147979b          	slliw	a5,a5,0x14
   20cbc:	3ff00737          	lui	a4,0x3ff00
   20cc0:	00e787bb          	addw	a5,a5,a4
   20cc4:	02079793          	slli	a5,a5,0x20
   20cc8:	f20787d3          	fmv.d.x	fa5,a5
   20ccc:	12f57553          	fmul.d	fa0,fa0,fa5
   20cd0:	01813083          	ld	ra,24(sp)
   20cd4:	01013403          	ld	s0,16(sp)
   20cd8:	00813483          	ld	s1,8(sp)
   20cdc:	02010113          	addi	sp,sp,32
   20ce0:	00008067          	ret
