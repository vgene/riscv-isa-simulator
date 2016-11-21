
sort_rv64:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	00002197          	auipc	gp,0x2
   10004:	dc018193          	addi	gp,gp,-576 # 11dc0 <_gp>
   10008:	00001297          	auipc	t0,0x1
   1000c:	5d028293          	addi	t0,t0,1488 # 115d8 <_fbss>
   10010:	00001317          	auipc	t1,0x1
   10014:	61830313          	addi	t1,t1,1560 # 11628 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	27050513          	addi	a0,a0,624 # 10294 <__libc_fini_array>
   1002c:	224000ef          	jal	10250 <atexit>
   10030:	2c0000ef          	jal	102f0 <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	114000ef          	jal	10154 <main>
   10044:	2200006f          	j	10264 <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	80018713          	addi	a4,gp,-2048 # 115c0 <_edata>
   10050:	80718793          	addi	a5,gp,-2041 # 115c7 <_edata+0x7>
   10054:	40e787b3          	sub	a5,a5,a4
   10058:	00e00713          	li	a4,14
   1005c:	00f77c63          	bleu	a5,a4,10074 <deregister_tm_clones+0x28>
   10060:	00000337          	lui	t1,0x0
   10064:	00030313          	mv	t1,t1
   10068:	00030663          	beqz	t1,10074 <deregister_tm_clones+0x28>
   1006c:	80018513          	addi	a0,gp,-2048 # 115c0 <_edata>
   10070:	00030067          	jr	t1
   10074:	00008067          	ret

0000000000010078 <register_tm_clones>:
   10078:	80018593          	addi	a1,gp,-2048 # 115c0 <_edata>
   1007c:	80018793          	addi	a5,gp,-2048 # 115c0 <_edata>
   10080:	40b787b3          	sub	a5,a5,a1
   10084:	4037d793          	srai	a5,a5,0x3
   10088:	03f7d593          	srli	a1,a5,0x3f
   1008c:	00f585b3          	add	a1,a1,a5
   10090:	4015d593          	srai	a1,a1,0x1
   10094:	00058c63          	beqz	a1,100ac <register_tm_clones+0x34>
   10098:	00000337          	lui	t1,0x0
   1009c:	00030313          	mv	t1,t1
   100a0:	00030663          	beqz	t1,100ac <register_tm_clones+0x34>
   100a4:	80018513          	addi	a0,gp,-2048 # 115c0 <_edata>
   100a8:	00030067          	jr	t1
   100ac:	00008067          	ret

00000000000100b0 <__do_global_dtors_aux>:
   100b0:	ff010113          	addi	sp,sp,-16
   100b4:	00813023          	sd	s0,0(sp)
   100b8:	8201c783          	lbu	a5,-2016(gp) # 115e0 <_bss_start>
   100bc:	00113423          	sd	ra,8(sp)
   100c0:	02079663          	bnez	a5,100ec <__do_global_dtors_aux+0x3c>
   100c4:	f89ff0ef          	jal	1004c <deregister_tm_clones>
   100c8:	000007b7          	lui	a5,0x0
   100cc:	00078793          	mv	a5,a5
   100d0:	00078a63          	beqz	a5,100e4 <__do_global_dtors_aux+0x34>
   100d4:	00011537          	lui	a0,0x11
   100d8:	a2850513          	addi	a0,a0,-1496 # 10a28 <__fini_array_end>
   100dc:	ffff0317          	auipc	t1,0xffff0
   100e0:	f24300e7          	jalr	t1,-220 # 0 <_ftext-0x10000>
   100e4:	00100793          	li	a5,1
   100e8:	82f18023          	sb	a5,-2016(gp) # 115e0 <_bss_start>
   100ec:	00813083          	ld	ra,8(sp)
   100f0:	00013403          	ld	s0,0(sp)
   100f4:	01010113          	addi	sp,sp,16
   100f8:	00008067          	ret

00000000000100fc <frame_dummy>:
   100fc:	ff010113          	addi	sp,sp,-16
   10100:	000007b7          	lui	a5,0x0
   10104:	00113423          	sd	ra,8(sp)
   10108:	00078793          	mv	a5,a5
   1010c:	00078c63          	beqz	a5,10124 <frame_dummy+0x28>
   10110:	00011537          	lui	a0,0x11
   10114:	82818593          	addi	a1,gp,-2008 # 115e8 <object.3092>
   10118:	a2850513          	addi	a0,a0,-1496 # 10a28 <__fini_array_end>
   1011c:	ffff0317          	auipc	t1,0xffff0
   10120:	ee4300e7          	jalr	t1,-284 # 0 <_ftext-0x10000>
   10124:	000117b7          	lui	a5,0x11
   10128:	e5878513          	addi	a0,a5,-424 # 10e58 <__JCR_END__>
   1012c:	00053783          	ld	a5,0(a0)
   10130:	00079863          	bnez	a5,10140 <frame_dummy+0x44>
   10134:	00813083          	ld	ra,8(sp)
   10138:	01010113          	addi	sp,sp,16
   1013c:	f3dff06f          	j	10078 <register_tm_clones>
   10140:	000007b7          	lui	a5,0x0
   10144:	00078793          	mv	a5,a5
   10148:	fe0786e3          	beqz	a5,10134 <frame_dummy+0x38>
   1014c:	000780e7          	jalr	a5
   10150:	fe5ff06f          	j	10134 <frame_dummy+0x38>

0000000000010154 <main>:
   10154:	fe010113          	addi	sp,sp,-32
   10158:	00813c23          	sd	s0,24(sp)
   1015c:	02010413          	addi	s0,sp,32
   10160:	fe042623          	sw	zero,-20(s0)
   10164:	0cc0006f          	j	10230 <main+0xdc>
   10168:	fe042423          	sw	zero,-24(s0)
   1016c:	0ac0006f          	j	10218 <main+0xc4>
   10170:	000117b7          	lui	a5,0x11
   10174:	fec42703          	lw	a4,-20(s0)
   10178:	00271713          	slli	a4,a4,0x2
   1017c:	e6078793          	addi	a5,a5,-416 # 10e60 <_fdata>
   10180:	00f707b3          	add	a5,a4,a5
   10184:	0007a703          	lw	a4,0(a5)
   10188:	000117b7          	lui	a5,0x11
   1018c:	fe842683          	lw	a3,-24(s0)
   10190:	00269693          	slli	a3,a3,0x2
   10194:	e6078793          	addi	a5,a5,-416 # 10e60 <_fdata>
   10198:	00f687b3          	add	a5,a3,a5
   1019c:	0007a783          	lw	a5,0(a5)
   101a0:	06f75663          	ble	a5,a4,1020c <main+0xb8>
   101a4:	000117b7          	lui	a5,0x11
   101a8:	fec42703          	lw	a4,-20(s0)
   101ac:	00271713          	slli	a4,a4,0x2
   101b0:	e6078793          	addi	a5,a5,-416 # 10e60 <_fdata>
   101b4:	00f707b3          	add	a5,a4,a5
   101b8:	0007a783          	lw	a5,0(a5)
   101bc:	fef42223          	sw	a5,-28(s0)
   101c0:	000117b7          	lui	a5,0x11
   101c4:	fe842703          	lw	a4,-24(s0)
   101c8:	00271713          	slli	a4,a4,0x2
   101cc:	e6078793          	addi	a5,a5,-416 # 10e60 <_fdata>
   101d0:	00f707b3          	add	a5,a4,a5
   101d4:	0007a703          	lw	a4,0(a5)
   101d8:	000117b7          	lui	a5,0x11
   101dc:	fec42683          	lw	a3,-20(s0)
   101e0:	00269693          	slli	a3,a3,0x2
   101e4:	e6078793          	addi	a5,a5,-416 # 10e60 <_fdata>
   101e8:	00f687b3          	add	a5,a3,a5
   101ec:	00e7a023          	sw	a4,0(a5)
   101f0:	000117b7          	lui	a5,0x11
   101f4:	fe842703          	lw	a4,-24(s0)
   101f8:	00271713          	slli	a4,a4,0x2
   101fc:	e6078793          	addi	a5,a5,-416 # 10e60 <_fdata>
   10200:	00f707b3          	add	a5,a4,a5
   10204:	fe442703          	lw	a4,-28(s0)
   10208:	00e7a023          	sw	a4,0(a5)
   1020c:	fe842783          	lw	a5,-24(s0)
   10210:	0017879b          	addiw	a5,a5,1
   10214:	fef42423          	sw	a5,-24(s0)
   10218:	fe842703          	lw	a4,-24(s0)
   1021c:	fec42783          	lw	a5,-20(s0)
   10220:	f4f748e3          	blt	a4,a5,10170 <main+0x1c>
   10224:	fec42783          	lw	a5,-20(s0)
   10228:	0017879b          	addiw	a5,a5,1
   1022c:	fef42623          	sw	a5,-20(s0)
   10230:	fec42703          	lw	a4,-20(s0)
   10234:	00400793          	li	a5,4
   10238:	f2e7d8e3          	ble	a4,a5,10168 <main+0x14>
   1023c:	00000793          	li	a5,0
   10240:	00078513          	mv	a0,a5
   10244:	01813403          	ld	s0,24(sp)
   10248:	02010113          	addi	sp,sp,32
   1024c:	00008067          	ret

0000000000010250 <atexit>:
   10250:	00050593          	mv	a1,a0
   10254:	00000693          	li	a3,0
   10258:	00000613          	li	a2,0
   1025c:	00000513          	li	a0,0
   10260:	1300006f          	j	10390 <__register_exitproc>

0000000000010264 <exit>:
   10264:	ff010113          	addi	sp,sp,-16
   10268:	00000593          	li	a1,0
   1026c:	00813023          	sd	s0,0(sp)
   10270:	00113423          	sd	ra,8(sp)
   10274:	00050413          	mv	s0,a0
   10278:	22c000ef          	jal	104a4 <__call_exitprocs>
   1027c:	8081b503          	ld	a0,-2040(gp) # 115c8 <_global_impure_ptr>
   10280:	05853783          	ld	a5,88(a0)
   10284:	00078463          	beqz	a5,1028c <exit+0x28>
   10288:	000780e7          	jalr	a5
   1028c:	00040513          	mv	a0,s0
   10290:	75c000ef          	jal	109ec <_exit>

0000000000010294 <__libc_fini_array>:
   10294:	fe010113          	addi	sp,sp,-32
   10298:	00813823          	sd	s0,16(sp)
   1029c:	00913423          	sd	s1,8(sp)
   102a0:	00011437          	lui	s0,0x11
   102a4:	000114b7          	lui	s1,0x11
   102a8:	a2048493          	addi	s1,s1,-1504 # 10a20 <__init_array_end>
   102ac:	a2840413          	addi	s0,s0,-1496 # 10a28 <__fini_array_end>
   102b0:	40940433          	sub	s0,s0,s1
   102b4:	ff840793          	addi	a5,s0,-8
   102b8:	00113c23          	sd	ra,24(sp)
   102bc:	40345413          	srai	s0,s0,0x3
   102c0:	009784b3          	add	s1,a5,s1
   102c4:	00040c63          	beqz	s0,102dc <__libc_fini_array+0x48>
   102c8:	0004b783          	ld	a5,0(s1)
   102cc:	fff40413          	addi	s0,s0,-1
   102d0:	ff848493          	addi	s1,s1,-8
   102d4:	000780e7          	jalr	a5
   102d8:	fe0418e3          	bnez	s0,102c8 <__libc_fini_array+0x34>
   102dc:	01813083          	ld	ra,24(sp)
   102e0:	01013403          	ld	s0,16(sp)
   102e4:	00813483          	ld	s1,8(sp)
   102e8:	02010113          	addi	sp,sp,32
   102ec:	d5dff06f          	j	10048 <_fini>

00000000000102f0 <__libc_init_array>:
   102f0:	fe010113          	addi	sp,sp,-32
   102f4:	00813823          	sd	s0,16(sp)
   102f8:	000117b7          	lui	a5,0x11
   102fc:	00011437          	lui	s0,0x11
   10300:	01213023          	sd	s2,0(sp)
   10304:	a1878793          	addi	a5,a5,-1512 # 10a18 <_etext>
   10308:	a1840913          	addi	s2,s0,-1512 # 10a18 <_etext>
   1030c:	41278933          	sub	s2,a5,s2
   10310:	00913423          	sd	s1,8(sp)
   10314:	00113c23          	sd	ra,24(sp)
   10318:	40395913          	srai	s2,s2,0x3
   1031c:	a1840413          	addi	s0,s0,-1512
   10320:	00000493          	li	s1,0
   10324:	00090c63          	beqz	s2,1033c <__libc_init_array+0x4c>
   10328:	00043783          	ld	a5,0(s0)
   1032c:	00148493          	addi	s1,s1,1
   10330:	00840413          	addi	s0,s0,8
   10334:	000780e7          	jalr	a5
   10338:	fe9918e3          	bne	s2,s1,10328 <__libc_init_array+0x38>
   1033c:	d0dff0ef          	jal	10048 <_fini>
   10340:	00011437          	lui	s0,0x11
   10344:	000117b7          	lui	a5,0x11
   10348:	a1840913          	addi	s2,s0,-1512 # 10a18 <_etext>
   1034c:	a2078793          	addi	a5,a5,-1504 # 10a20 <__init_array_end>
   10350:	41278933          	sub	s2,a5,s2
   10354:	40395913          	srai	s2,s2,0x3
   10358:	a1840413          	addi	s0,s0,-1512
   1035c:	00000493          	li	s1,0
   10360:	00090c63          	beqz	s2,10378 <__libc_init_array+0x88>
   10364:	00043783          	ld	a5,0(s0)
   10368:	00148493          	addi	s1,s1,1
   1036c:	00840413          	addi	s0,s0,8
   10370:	000780e7          	jalr	a5
   10374:	fe9918e3          	bne	s2,s1,10364 <__libc_init_array+0x74>
   10378:	01813083          	ld	ra,24(sp)
   1037c:	01013403          	ld	s0,16(sp)
   10380:	00813483          	ld	s1,8(sp)
   10384:	00013903          	ld	s2,0(sp)
   10388:	02010113          	addi	sp,sp,32
   1038c:	00008067          	ret

0000000000010390 <__register_exitproc>:
   10390:	fd010113          	addi	sp,sp,-48
   10394:	02813023          	sd	s0,32(sp)
   10398:	8081b403          	ld	s0,-2040(gp) # 115c8 <_global_impure_ptr>
   1039c:	00913c23          	sd	s1,24(sp)
   103a0:	00050493          	mv	s1,a0
   103a4:	1f843503          	ld	a0,504(s0)
   103a8:	01213823          	sd	s2,16(sp)
   103ac:	01313423          	sd	s3,8(sp)
   103b0:	01413023          	sd	s4,0(sp)
   103b4:	02113423          	sd	ra,40(sp)
   103b8:	00058913          	mv	s2,a1
   103bc:	00060a13          	mv	s4,a2
   103c0:	00068993          	mv	s3,a3
   103c4:	0c050663          	beqz	a0,10490 <__register_exitproc+0x100>
   103c8:	00852703          	lw	a4,8(a0)
   103cc:	01f00793          	li	a5,31
   103d0:	0017059b          	addiw	a1,a4,1
   103d4:	04e7d063          	ble	a4,a5,10414 <__register_exitproc+0x84>
   103d8:	000007b7          	lui	a5,0x0
   103dc:	00078793          	mv	a5,a5
   103e0:	0a078e63          	beqz	a5,1049c <__register_exitproc+0x10c>
   103e4:	31800513          	li	a0,792
   103e8:	ffff0317          	auipc	t1,0xffff0
   103ec:	c18300e7          	jalr	t1,-1000 # 0 <_ftext-0x10000>
   103f0:	0a050663          	beqz	a0,1049c <__register_exitproc+0x10c>
   103f4:	1f843783          	ld	a5,504(s0)
   103f8:	00052423          	sw	zero,8(a0)
   103fc:	00100593          	li	a1,1
   10400:	00f53023          	sd	a5,0(a0)
   10404:	1ea43c23          	sd	a0,504(s0)
   10408:	30052823          	sw	zero,784(a0)
   1040c:	30052a23          	sw	zero,788(a0)
   10410:	00000713          	li	a4,0
   10414:	00070793          	mv	a5,a4
   10418:	02049e63          	bnez	s1,10454 <__register_exitproc+0xc4>
   1041c:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   10420:	00379793          	slli	a5,a5,0x3
   10424:	00b52423          	sw	a1,8(a0)
   10428:	00f50533          	add	a0,a0,a5
   1042c:	01253023          	sd	s2,0(a0)
   10430:	00000513          	li	a0,0
   10434:	02813083          	ld	ra,40(sp)
   10438:	02013403          	ld	s0,32(sp)
   1043c:	01813483          	ld	s1,24(sp)
   10440:	01013903          	ld	s2,16(sp)
   10444:	00813983          	ld	s3,8(sp)
   10448:	00013a03          	ld	s4,0(sp)
   1044c:	03010113          	addi	sp,sp,48
   10450:	00008067          	ret
   10454:	00371813          	slli	a6,a4,0x3
   10458:	01050833          	add	a6,a0,a6
   1045c:	11483823          	sd	s4,272(a6)
   10460:	31052883          	lw	a7,784(a0)
   10464:	00100613          	li	a2,1
   10468:	00e6173b          	sllw	a4,a2,a4
   1046c:	00e8e633          	or	a2,a7,a4
   10470:	30c52823          	sw	a2,784(a0)
   10474:	21383823          	sd	s3,528(a6)
   10478:	00200693          	li	a3,2
   1047c:	fad490e3          	bne	s1,a3,1041c <__register_exitproc+0x8c>
   10480:	31452683          	lw	a3,788(a0)
   10484:	00e6e733          	or	a4,a3,a4
   10488:	30e52a23          	sw	a4,788(a0)
   1048c:	f91ff06f          	j	1041c <__register_exitproc+0x8c>
   10490:	20040513          	addi	a0,s0,512
   10494:	1ea43c23          	sd	a0,504(s0)
   10498:	f31ff06f          	j	103c8 <__register_exitproc+0x38>
   1049c:	fff00513          	li	a0,-1
   104a0:	f95ff06f          	j	10434 <__register_exitproc+0xa4>

00000000000104a4 <__call_exitprocs>:
   104a4:	fa010113          	addi	sp,sp,-96
   104a8:	03413823          	sd	s4,48(sp)
   104ac:	8081ba03          	ld	s4,-2040(gp) # 115c8 <_global_impure_ptr>
   104b0:	03313c23          	sd	s3,56(sp)
   104b4:	000009b7          	lui	s3,0x0
   104b8:	04913423          	sd	s1,72(sp)
   104bc:	05213023          	sd	s2,64(sp)
   104c0:	03513423          	sd	s5,40(sp)
   104c4:	01713c23          	sd	s7,24(sp)
   104c8:	01813823          	sd	s8,16(sp)
   104cc:	04113c23          	sd	ra,88(sp)
   104d0:	04813823          	sd	s0,80(sp)
   104d4:	03613023          	sd	s6,32(sp)
   104d8:	01913423          	sd	s9,8(sp)
   104dc:	01a13023          	sd	s10,0(sp)
   104e0:	00050913          	mv	s2,a0
   104e4:	00058b93          	mv	s7,a1
   104e8:	1f8a0a93          	addi	s5,s4,504
   104ec:	00100493          	li	s1,1
   104f0:	fff00c13          	li	s8,-1
   104f4:	00098993          	mv	s3,s3
   104f8:	1f8a3b03          	ld	s6,504(s4)
   104fc:	0c0b0663          	beqz	s6,105c8 <__call_exitprocs+0x124>
   10500:	000a8d13          	mv	s10,s5
   10504:	008b2403          	lw	s0,8(s6)
   10508:	fff4041b          	addiw	s0,s0,-1
   1050c:	02045263          	bgez	s0,10530 <__call_exitprocs+0x8c>
   10510:	08c0006f          	j	1059c <__call_exitprocs+0xf8>
   10514:	02040793          	addi	a5,s0,32
   10518:	00379793          	slli	a5,a5,0x3
   1051c:	00fb07b3          	add	a5,s6,a5
   10520:	1107b783          	ld	a5,272(a5)
   10524:	00fb8a63          	beq	s7,a5,10538 <__call_exitprocs+0x94>
   10528:	fff4041b          	addiw	s0,s0,-1
   1052c:	07840863          	beq	s0,s8,1059c <__call_exitprocs+0xf8>
   10530:	00040713          	mv	a4,s0
   10534:	fe0b90e3          	bnez	s7,10514 <__call_exitprocs+0x70>
   10538:	008b2783          	lw	a5,8(s6)
   1053c:	00371713          	slli	a4,a4,0x3
   10540:	00eb0733          	add	a4,s6,a4
   10544:	fff7879b          	addiw	a5,a5,-1
   10548:	01073683          	ld	a3,16(a4)
   1054c:	0a878e63          	beq	a5,s0,10608 <__call_exitprocs+0x164>
   10550:	00073823          	sd	zero,16(a4)
   10554:	fc068ae3          	beqz	a3,10528 <__call_exitprocs+0x84>
   10558:	310b2783          	lw	a5,784(s6)
   1055c:	0084963b          	sllw	a2,s1,s0
   10560:	008b2c83          	lw	s9,8(s6)
   10564:	00f677b3          	and	a5,a2,a5
   10568:	08078c63          	beqz	a5,10600 <__call_exitprocs+0x15c>
   1056c:	314b2783          	lw	a5,788(s6)
   10570:	00f67633          	and	a2,a2,a5
   10574:	08061e63          	bnez	a2,10610 <__call_exitprocs+0x16c>
   10578:	11073583          	ld	a1,272(a4)
   1057c:	00090513          	mv	a0,s2
   10580:	000680e7          	jalr	a3
   10584:	008b2783          	lw	a5,8(s6)
   10588:	f79798e3          	bne	a5,s9,104f8 <__call_exitprocs+0x54>
   1058c:	000d3783          	ld	a5,0(s10)
   10590:	f76794e3          	bne	a5,s6,104f8 <__call_exitprocs+0x54>
   10594:	fff4041b          	addiw	s0,s0,-1
   10598:	f9841ce3          	bne	s0,s8,10530 <__call_exitprocs+0x8c>
   1059c:	02098663          	beqz	s3,105c8 <__call_exitprocs+0x124>
   105a0:	008b2783          	lw	a5,8(s6)
   105a4:	06079c63          	bnez	a5,1061c <__call_exitprocs+0x178>
   105a8:	000b3783          	ld	a5,0(s6)
   105ac:	08078263          	beqz	a5,10630 <__call_exitprocs+0x18c>
   105b0:	000b0513          	mv	a0,s6
   105b4:	00fd3023          	sd	a5,0(s10)
   105b8:	ffff0317          	auipc	t1,0xffff0
   105bc:	a48300e7          	jalr	t1,-1464 # 0 <_ftext-0x10000>
   105c0:	000d3b03          	ld	s6,0(s10)
   105c4:	f40b10e3          	bnez	s6,10504 <__call_exitprocs+0x60>
   105c8:	05813083          	ld	ra,88(sp)
   105cc:	05013403          	ld	s0,80(sp)
   105d0:	04813483          	ld	s1,72(sp)
   105d4:	04013903          	ld	s2,64(sp)
   105d8:	03813983          	ld	s3,56(sp)
   105dc:	03013a03          	ld	s4,48(sp)
   105e0:	02813a83          	ld	s5,40(sp)
   105e4:	02013b03          	ld	s6,32(sp)
   105e8:	01813b83          	ld	s7,24(sp)
   105ec:	01013c03          	ld	s8,16(sp)
   105f0:	00813c83          	ld	s9,8(sp)
   105f4:	00013d03          	ld	s10,0(sp)
   105f8:	06010113          	addi	sp,sp,96
   105fc:	00008067          	ret
   10600:	000680e7          	jalr	a3
   10604:	f81ff06f          	j	10584 <__call_exitprocs+0xe0>
   10608:	008b2423          	sw	s0,8(s6)
   1060c:	f49ff06f          	j	10554 <__call_exitprocs+0xb0>
   10610:	11073503          	ld	a0,272(a4)
   10614:	000680e7          	jalr	a3
   10618:	f6dff06f          	j	10584 <__call_exitprocs+0xe0>
   1061c:	000b3783          	ld	a5,0(s6)
   10620:	000b0d13          	mv	s10,s6
   10624:	00078b13          	mv	s6,a5
   10628:	ec0b1ee3          	bnez	s6,10504 <__call_exitprocs+0x60>
   1062c:	f9dff06f          	j	105c8 <__call_exitprocs+0x124>
   10630:	00000793          	li	a5,0
   10634:	fedff06f          	j	10620 <__call_exitprocs+0x17c>

0000000000010638 <__syscall_error>:
   10638:	ff010113          	addi	sp,sp,-16
   1063c:	00113423          	sd	ra,8(sp)
   10640:	00813023          	sd	s0,0(sp)
   10644:	00050413          	mv	s0,a0
   10648:	3c0000ef          	jal	10a08 <__errno>
   1064c:	00813083          	ld	ra,8(sp)
   10650:	408007bb          	negw	a5,s0
   10654:	00f52023          	sw	a5,0(a0)
   10658:	00013403          	ld	s0,0(sp)
   1065c:	fff00513          	li	a0,-1
   10660:	01010113          	addi	sp,sp,16
   10664:	00008067          	ret

0000000000010668 <open>:
   10668:	00000693          	li	a3,0
   1066c:	40000893          	li	a7,1024
   10670:	00000073          	ecall
   10674:	fc0542e3          	bltz	a0,10638 <__syscall_error>
   10678:	0005051b          	sext.w	a0,a0
   1067c:	00008067          	ret

0000000000010680 <openat>:
   10680:	03800893          	li	a7,56
   10684:	00000073          	ecall
   10688:	fa0548e3          	bltz	a0,10638 <__syscall_error>
   1068c:	0005051b          	sext.w	a0,a0
   10690:	00008067          	ret

0000000000010694 <lseek>:
   10694:	00000693          	li	a3,0
   10698:	03e00893          	li	a7,62
   1069c:	00000073          	ecall
   106a0:	f8054ce3          	bltz	a0,10638 <__syscall_error>
   106a4:	00008067          	ret

00000000000106a8 <read>:
   106a8:	00000693          	li	a3,0
   106ac:	03f00893          	li	a7,63
   106b0:	00000073          	ecall
   106b4:	f80542e3          	bltz	a0,10638 <__syscall_error>
   106b8:	00008067          	ret

00000000000106bc <write>:
   106bc:	00000693          	li	a3,0
   106c0:	04000893          	li	a7,64
   106c4:	00000073          	ecall
   106c8:	f60548e3          	bltz	a0,10638 <__syscall_error>
   106cc:	00008067          	ret

00000000000106d0 <fstat>:
   106d0:	00000613          	li	a2,0
   106d4:	00000693          	li	a3,0
   106d8:	05000893          	li	a7,80
   106dc:	00000073          	ecall
   106e0:	f4054ce3          	bltz	a0,10638 <__syscall_error>
   106e4:	0005051b          	sext.w	a0,a0
   106e8:	00008067          	ret

00000000000106ec <stat>:
   106ec:	00000613          	li	a2,0
   106f0:	00000693          	li	a3,0
   106f4:	40e00893          	li	a7,1038
   106f8:	00000073          	ecall
   106fc:	f2054ee3          	bltz	a0,10638 <__syscall_error>
   10700:	0005051b          	sext.w	a0,a0
   10704:	00008067          	ret

0000000000010708 <lstat>:
   10708:	00000613          	li	a2,0
   1070c:	00000693          	li	a3,0
   10710:	40f00893          	li	a7,1039
   10714:	00000073          	ecall
   10718:	f20540e3          	bltz	a0,10638 <__syscall_error>
   1071c:	0005051b          	sext.w	a0,a0
   10720:	00008067          	ret

0000000000010724 <fstatat>:
   10724:	04f00893          	li	a7,79
   10728:	00000073          	ecall
   1072c:	f00546e3          	bltz	a0,10638 <__syscall_error>
   10730:	0005051b          	sext.w	a0,a0
   10734:	00008067          	ret

0000000000010738 <access>:
   10738:	00000613          	li	a2,0
   1073c:	00000693          	li	a3,0
   10740:	40900893          	li	a7,1033
   10744:	00000073          	ecall
   10748:	ee0548e3          	bltz	a0,10638 <__syscall_error>
   1074c:	0005051b          	sext.w	a0,a0
   10750:	00008067          	ret

0000000000010754 <faccessat>:
   10754:	03000893          	li	a7,48
   10758:	00000073          	ecall
   1075c:	ec054ee3          	bltz	a0,10638 <__syscall_error>
   10760:	0005051b          	sext.w	a0,a0
   10764:	00008067          	ret

0000000000010768 <close>:
   10768:	00000593          	li	a1,0
   1076c:	00000613          	li	a2,0
   10770:	00000693          	li	a3,0
   10774:	03900893          	li	a7,57
   10778:	00000073          	ecall
   1077c:	ea054ee3          	bltz	a0,10638 <__syscall_error>
   10780:	0005051b          	sext.w	a0,a0
   10784:	00008067          	ret

0000000000010788 <link>:
   10788:	00000613          	li	a2,0
   1078c:	00000693          	li	a3,0
   10790:	40100893          	li	a7,1025
   10794:	00000073          	ecall
   10798:	ea0540e3          	bltz	a0,10638 <__syscall_error>
   1079c:	0005051b          	sext.w	a0,a0
   107a0:	00008067          	ret

00000000000107a4 <unlink>:
   107a4:	00000593          	li	a1,0
   107a8:	00000613          	li	a2,0
   107ac:	00000693          	li	a3,0
   107b0:	40200893          	li	a7,1026
   107b4:	00000073          	ecall
   107b8:	e80540e3          	bltz	a0,10638 <__syscall_error>
   107bc:	0005051b          	sext.w	a0,a0
   107c0:	00008067          	ret

00000000000107c4 <execve>:
   107c4:	ff010113          	addi	sp,sp,-16
   107c8:	00113423          	sd	ra,8(sp)
   107cc:	23c000ef          	jal	10a08 <__errno>
   107d0:	00813083          	ld	ra,8(sp)
   107d4:	00c00793          	li	a5,12
   107d8:	00f52023          	sw	a5,0(a0)
   107dc:	01010113          	addi	sp,sp,16
   107e0:	fff00513          	li	a0,-1
   107e4:	00008067          	ret

00000000000107e8 <fork>:
   107e8:	ff010113          	addi	sp,sp,-16
   107ec:	00113423          	sd	ra,8(sp)
   107f0:	218000ef          	jal	10a08 <__errno>
   107f4:	00813083          	ld	ra,8(sp)
   107f8:	00b00793          	li	a5,11
   107fc:	00f52023          	sw	a5,0(a0)
   10800:	01010113          	addi	sp,sp,16
   10804:	fff00513          	li	a0,-1
   10808:	00008067          	ret

000000000001080c <getpid>:
   1080c:	00100513          	li	a0,1
   10810:	00008067          	ret

0000000000010814 <kill>:
   10814:	ff010113          	addi	sp,sp,-16
   10818:	00113423          	sd	ra,8(sp)
   1081c:	1ec000ef          	jal	10a08 <__errno>
   10820:	00813083          	ld	ra,8(sp)
   10824:	01600793          	li	a5,22
   10828:	00f52023          	sw	a5,0(a0)
   1082c:	01010113          	addi	sp,sp,16
   10830:	fff00513          	li	a0,-1
   10834:	00008067          	ret

0000000000010838 <wait>:
   10838:	ff010113          	addi	sp,sp,-16
   1083c:	00113423          	sd	ra,8(sp)
   10840:	1c8000ef          	jal	10a08 <__errno>
   10844:	00813083          	ld	ra,8(sp)
   10848:	00a00793          	li	a5,10
   1084c:	00f52023          	sw	a5,0(a0)
   10850:	01010113          	addi	sp,sp,16
   10854:	fff00513          	li	a0,-1
   10858:	00008067          	ret

000000000001085c <isatty>:
   1085c:	f8010113          	addi	sp,sp,-128
   10860:	00010593          	mv	a1,sp
   10864:	00000613          	li	a2,0
   10868:	00000693          	li	a3,0
   1086c:	05000893          	li	a7,80
   10870:	00000073          	ecall
   10874:	dc0542e3          	bltz	a0,10638 <__syscall_error>
   10878:	fff00793          	li	a5,-1
   1087c:	0005051b          	sext.w	a0,a0
   10880:	00f50863          	beq	a0,a5,10890 <isatty+0x34>
   10884:	01012503          	lw	a0,16(sp)
   10888:	40d5551b          	sraiw	a0,a0,0xd
   1088c:	00157513          	andi	a0,a0,1
   10890:	08010113          	addi	sp,sp,128
   10894:	00008067          	ret

0000000000010898 <times>:
   10898:	85818313          	addi	t1,gp,-1960 # 11618 <t0.2343>
   1089c:	00033703          	ld	a4,0(t1)
   108a0:	ff010113          	addi	sp,sp,-16
   108a4:	00050813          	mv	a6,a0
   108a8:	02071063          	bnez	a4,108c8 <times+0x30>
   108ac:	85818513          	addi	a0,gp,-1960 # 11618 <t0.2343>
   108b0:	00000593          	li	a1,0
   108b4:	00000613          	li	a2,0
   108b8:	00000693          	li	a3,0
   108bc:	0a900893          	li	a7,169
   108c0:	00000073          	ecall
   108c4:	d6054ae3          	bltz	a0,10638 <__syscall_error>
   108c8:	00010513          	mv	a0,sp
   108cc:	00000593          	li	a1,0
   108d0:	00000613          	li	a2,0
   108d4:	00000693          	li	a3,0
   108d8:	0a900893          	li	a7,169
   108dc:	00000073          	ecall
   108e0:	d4054ce3          	bltz	a0,10638 <__syscall_error>
   108e4:	00033703          	ld	a4,0(t1)
   108e8:	00013783          	ld	a5,0(sp)
   108ec:	fff00513          	li	a0,-1
   108f0:	00083823          	sd	zero,16(a6)
   108f4:	40e786b3          	sub	a3,a5,a4
   108f8:	000f47b7          	lui	a5,0xf4
   108fc:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xe2480>
   10900:	02f68733          	mul	a4,a3,a5
   10904:	00833683          	ld	a3,8(t1)
   10908:	00813783          	ld	a5,8(sp)
   1090c:	00083c23          	sd	zero,24(a6)
   10910:	00083423          	sd	zero,8(a6)
   10914:	40d787b3          	sub	a5,a5,a3
   10918:	01010113          	addi	sp,sp,16
   1091c:	00f707b3          	add	a5,a4,a5
   10920:	00f83023          	sd	a5,0(a6)
   10924:	00008067          	ret

0000000000010928 <gettimeofday>:
   10928:	00000593          	li	a1,0
   1092c:	00000613          	li	a2,0
   10930:	00000693          	li	a3,0
   10934:	0a900893          	li	a7,169
   10938:	00000073          	ecall
   1093c:	ce054ee3          	bltz	a0,10638 <__syscall_error>
   10940:	0005051b          	sext.w	a0,a0
   10944:	00008067          	ret

0000000000010948 <ftime>:
   10948:	00051423          	sh	zero,8(a0)
   1094c:	00053023          	sd	zero,0(a0)
   10950:	00000513          	li	a0,0
   10954:	00008067          	ret

0000000000010958 <utime>:
   10958:	fff00513          	li	a0,-1
   1095c:	00008067          	ret

0000000000010960 <chown>:
   10960:	fff00513          	li	a0,-1
   10964:	00008067          	ret

0000000000010968 <chmod>:
   10968:	fff00513          	li	a0,-1
   1096c:	00008067          	ret

0000000000010970 <chdir>:
   10970:	fff00513          	li	a0,-1
   10974:	00008067          	ret

0000000000010978 <getcwd>:
   10978:	00000513          	li	a0,0
   1097c:	00008067          	ret

0000000000010980 <sysconf>:
   10980:	00200793          	li	a5,2
   10984:	00f51863          	bne	a0,a5,10994 <sysconf+0x14>
   10988:	000f4537          	lui	a0,0xf4
   1098c:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xe2480>
   10990:	00008067          	ret
   10994:	fff00513          	li	a0,-1
   10998:	00008067          	ret

000000000001099c <sbrk>:
   1099c:	8181b703          	ld	a4,-2024(gp) # 115d8 <_fbss>
   109a0:	00050793          	mv	a5,a0
   109a4:	00071663          	bnez	a4,109b0 <sbrk+0x14>
   109a8:	86818713          	addi	a4,gp,-1944 # 11628 <_end>
   109ac:	80e1bc23          	sd	a4,-2024(gp) # 115d8 <_fbss>
   109b0:	00e78533          	add	a0,a5,a4
   109b4:	00000593          	li	a1,0
   109b8:	00000613          	li	a2,0
   109bc:	00000693          	li	a3,0
   109c0:	0d600893          	li	a7,214
   109c4:	00000073          	ecall
   109c8:	c60548e3          	bltz	a0,10638 <__syscall_error>
   109cc:	8181b683          	ld	a3,-2024(gp) # 115d8 <_fbss>
   109d0:	fff00713          	li	a4,-1
   109d4:	00d787b3          	add	a5,a5,a3
   109d8:	00f51663          	bne	a0,a5,109e4 <sbrk+0x48>
   109dc:	80a1bc23          	sd	a0,-2024(gp) # 115d8 <_fbss>
   109e0:	00068713          	mv	a4,a3
   109e4:	00070513          	mv	a0,a4
   109e8:	00008067          	ret

00000000000109ec <_exit>:
   109ec:	00000593          	li	a1,0
   109f0:	00000613          	li	a2,0
   109f4:	00000693          	li	a3,0
   109f8:	05d00893          	li	a7,93
   109fc:	00000073          	ecall
   10a00:	c2054ce3          	bltz	a0,10638 <__syscall_error>
   10a04:	0000006f          	j	10a04 <_exit+0x18>

0000000000010a08 <__errno>:
   10a08:	8101b503          	ld	a0,-2032(gp) # 115d0 <_impure_ptr>
   10a0c:	00008067          	ret
