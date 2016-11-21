
test_time_rv:     file format elf64-littleriscv


Disassembly of section .text:

0000000000010000 <_ftext>:
   10000:	0000c197          	auipc	gp,0xc
   10004:	b4018193          	addi	gp,gp,-1216 # 1bb40 <_gp>
   10008:	0000b297          	auipc	t0,0xb
   1000c:	3d028293          	addi	t0,t0,976 # 1b3d8 <_PathLocale>
   10010:	0000b317          	auipc	t1,0xb
   10014:	46830313          	addi	t1,t1,1128 # 1b478 <_end>
   10018:	0002b023          	sd	zero,0(t0)
   1001c:	00828293          	addi	t0,t0,8
   10020:	fe62ece3          	bltu	t0,t1,10018 <_ftext+0x18>
   10024:	00000517          	auipc	a0,0x0
   10028:	1cc50513          	addi	a0,a0,460 # 101f0 <__libc_fini_array>
   1002c:	180000ef          	jal	101ac <atexit>
   10030:	21c000ef          	jal	1024c <__libc_init_array>
   10034:	00012503          	lw	a0,0(sp)
   10038:	00810593          	addi	a1,sp,8
   1003c:	00000613          	li	a2,0
   10040:	124000ef          	jal	10164 <main>
   10044:	17c0006f          	j	101c0 <exit>

0000000000010048 <_fini>:
   10048:	00008067          	ret

000000000001004c <deregister_tm_clones>:
   1004c:	0001b537          	lui	a0,0x1b
   10050:	0001b7b7          	lui	a5,0x1b
   10054:	33850713          	addi	a4,a0,824 # 1b338 <__TMC_END__>
   10058:	33f78793          	addi	a5,a5,831 # 1b33f <__TMC_END__+0x7>
   1005c:	40e787b3          	sub	a5,a5,a4
   10060:	00e00713          	li	a4,14
   10064:	00f77c63          	bleu	a5,a4,1007c <deregister_tm_clones+0x30>
   10068:	00000337          	lui	t1,0x0
   1006c:	00030313          	mv	t1,t1
   10070:	00030663          	beqz	t1,1007c <deregister_tm_clones+0x30>
   10074:	33850513          	addi	a0,a0,824
   10078:	00030067          	jr	t1
   1007c:	00008067          	ret

0000000000010080 <register_tm_clones>:
   10080:	0001b537          	lui	a0,0x1b
   10084:	0001b7b7          	lui	a5,0x1b
   10088:	33850593          	addi	a1,a0,824 # 1b338 <__TMC_END__>
   1008c:	33878793          	addi	a5,a5,824 # 1b338 <__TMC_END__>
   10090:	40b787b3          	sub	a5,a5,a1
   10094:	4037d793          	srai	a5,a5,0x3
   10098:	03f7d593          	srli	a1,a5,0x3f
   1009c:	00f585b3          	add	a1,a1,a5
   100a0:	4015d593          	srai	a1,a1,0x1
   100a4:	00058c63          	beqz	a1,100bc <register_tm_clones+0x3c>
   100a8:	00000337          	lui	t1,0x0
   100ac:	00030313          	mv	t1,t1
   100b0:	00030663          	beqz	t1,100bc <register_tm_clones+0x3c>
   100b4:	33850513          	addi	a0,a0,824
   100b8:	00030067          	jr	t1
   100bc:	00008067          	ret

00000000000100c0 <__do_global_dtors_aux>:
   100c0:	ff010113          	addi	sp,sp,-16
   100c4:	00813023          	sd	s0,0(sp)
   100c8:	8c81c783          	lbu	a5,-1848(gp) # 1b408 <_bss_start>
   100cc:	00113423          	sd	ra,8(sp)
   100d0:	02079663          	bnez	a5,100fc <__do_global_dtors_aux+0x3c>
   100d4:	f79ff0ef          	jal	1004c <deregister_tm_clones>
   100d8:	000007b7          	lui	a5,0x0
   100dc:	00078793          	mv	a5,a5
   100e0:	00078a63          	beqz	a5,100f4 <__do_global_dtors_aux+0x34>
   100e4:	00019537          	lui	a0,0x19
   100e8:	2f050513          	addi	a0,a0,752 # 192f0 <__fini_array_end>
   100ec:	ffff0317          	auipc	t1,0xffff0
   100f0:	f14300e7          	jalr	t1,-236 # 0 <_ftext-0x10000>
   100f4:	00100793          	li	a5,1
   100f8:	8cf18423          	sb	a5,-1848(gp) # 1b408 <_bss_start>
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
   10120:	00019537          	lui	a0,0x19
   10124:	8d018593          	addi	a1,gp,-1840 # 1b410 <object.3092>
   10128:	2f050513          	addi	a0,a0,752 # 192f0 <__fini_array_end>
   1012c:	ffff0317          	auipc	t1,0xffff0
   10130:	ed4300e7          	jalr	t1,-300 # 0 <_ftext-0x10000>
   10134:	0001a7b7          	lui	a5,0x1a
   10138:	33878513          	addi	a0,a5,824 # 1a338 <__JCR_END__>
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
   10164:	fe010113          	addi	sp,sp,-32
   10168:	00113c23          	sd	ra,24(sp)
   1016c:	00813823          	sd	s0,16(sp)
   10170:	02010413          	addi	s0,sp,32
   10174:	00000513          	li	a0,0
   10178:	208000ef          	jal	10380 <time>
   1017c:	00050793          	mv	a5,a0
   10180:	fef42623          	sw	a5,-20(s0)
   10184:	fec42583          	lw	a1,-20(s0)
   10188:	000197b7          	lui	a5,0x19
   1018c:	e1078513          	addi	a0,a5,-496 # 18e10 <__errno+0xc>
   10190:	1a0000ef          	jal	10330 <printf>
   10194:	00000793          	li	a5,0
   10198:	00078513          	mv	a0,a5
   1019c:	01813083          	ld	ra,24(sp)
   101a0:	01013403          	ld	s0,16(sp)
   101a4:	02010113          	addi	sp,sp,32
   101a8:	00008067          	ret

00000000000101ac <atexit>:
   101ac:	00050593          	mv	a1,a0
   101b0:	00000693          	li	a3,0
   101b4:	00000613          	li	a2,0
   101b8:	00000513          	li	a0,0
   101bc:	0d40206f          	j	12290 <__register_exitproc>

00000000000101c0 <exit>:
   101c0:	ff010113          	addi	sp,sp,-16
   101c4:	00000593          	li	a1,0
   101c8:	00813023          	sd	s0,0(sp)
   101cc:	00113423          	sd	ra,8(sp)
   101d0:	00050413          	mv	s0,a0
   101d4:	1d0020ef          	jal	123a4 <__call_exitprocs>
   101d8:	8081b503          	ld	a0,-2040(gp) # 1b348 <_global_impure_ptr>
   101dc:	05853783          	ld	a5,88(a0)
   101e0:	00078463          	beqz	a5,101e8 <exit+0x28>
   101e4:	000780e7          	jalr	a5
   101e8:	00040513          	mv	a0,s0
   101ec:	3fd080ef          	jal	18de8 <_exit>

00000000000101f0 <__libc_fini_array>:
   101f0:	fe010113          	addi	sp,sp,-32
   101f4:	00813823          	sd	s0,16(sp)
   101f8:	00913423          	sd	s1,8(sp)
   101fc:	00019437          	lui	s0,0x19
   10200:	000194b7          	lui	s1,0x19
   10204:	2e848493          	addi	s1,s1,744 # 192e8 <__init_array_end>
   10208:	2f040413          	addi	s0,s0,752 # 192f0 <__fini_array_end>
   1020c:	40940433          	sub	s0,s0,s1
   10210:	ff840793          	addi	a5,s0,-8
   10214:	00113c23          	sd	ra,24(sp)
   10218:	40345413          	srai	s0,s0,0x3
   1021c:	009784b3          	add	s1,a5,s1
   10220:	00040c63          	beqz	s0,10238 <__libc_fini_array+0x48>
   10224:	0004b783          	ld	a5,0(s1)
   10228:	fff40413          	addi	s0,s0,-1
   1022c:	ff848493          	addi	s1,s1,-8
   10230:	000780e7          	jalr	a5
   10234:	fe0418e3          	bnez	s0,10224 <__libc_fini_array+0x34>
   10238:	01813083          	ld	ra,24(sp)
   1023c:	01013403          	ld	s0,16(sp)
   10240:	00813483          	ld	s1,8(sp)
   10244:	02010113          	addi	sp,sp,32
   10248:	e01ff06f          	j	10048 <_fini>

000000000001024c <__libc_init_array>:
   1024c:	fe010113          	addi	sp,sp,-32
   10250:	00813823          	sd	s0,16(sp)
   10254:	000197b7          	lui	a5,0x19
   10258:	00019437          	lui	s0,0x19
   1025c:	01213023          	sd	s2,0(sp)
   10260:	2e078793          	addi	a5,a5,736 # 192e0 <_etext>
   10264:	2e040913          	addi	s2,s0,736 # 192e0 <_etext>
   10268:	41278933          	sub	s2,a5,s2
   1026c:	00913423          	sd	s1,8(sp)
   10270:	00113c23          	sd	ra,24(sp)
   10274:	40395913          	srai	s2,s2,0x3
   10278:	2e040413          	addi	s0,s0,736
   1027c:	00000493          	li	s1,0
   10280:	00090c63          	beqz	s2,10298 <__libc_init_array+0x4c>
   10284:	00043783          	ld	a5,0(s0)
   10288:	00148493          	addi	s1,s1,1
   1028c:	00840413          	addi	s0,s0,8
   10290:	000780e7          	jalr	a5
   10294:	fe9918e3          	bne	s2,s1,10284 <__libc_init_array+0x38>
   10298:	db1ff0ef          	jal	10048 <_fini>
   1029c:	00019437          	lui	s0,0x19
   102a0:	000197b7          	lui	a5,0x19
   102a4:	2e040913          	addi	s2,s0,736 # 192e0 <_etext>
   102a8:	2e878793          	addi	a5,a5,744 # 192e8 <__init_array_end>
   102ac:	41278933          	sub	s2,a5,s2
   102b0:	40395913          	srai	s2,s2,0x3
   102b4:	2e040413          	addi	s0,s0,736
   102b8:	00000493          	li	s1,0
   102bc:	00090c63          	beqz	s2,102d4 <__libc_init_array+0x88>
   102c0:	00043783          	ld	a5,0(s0)
   102c4:	00148493          	addi	s1,s1,1
   102c8:	00840413          	addi	s0,s0,8
   102cc:	000780e7          	jalr	a5
   102d0:	fe9918e3          	bne	s2,s1,102c0 <__libc_init_array+0x74>
   102d4:	01813083          	ld	ra,24(sp)
   102d8:	01013403          	ld	s0,16(sp)
   102dc:	00813483          	ld	s1,8(sp)
   102e0:	00013903          	ld	s2,0(sp)
   102e4:	02010113          	addi	sp,sp,32
   102e8:	00008067          	ret

00000000000102ec <_printf_r>:
   102ec:	fb010113          	addi	sp,sp,-80
   102f0:	02c13023          	sd	a2,32(sp)
   102f4:	02d13423          	sd	a3,40(sp)
   102f8:	02f13c23          	sd	a5,56(sp)
   102fc:	02e13823          	sd	a4,48(sp)
   10300:	05013023          	sd	a6,64(sp)
   10304:	05113423          	sd	a7,72(sp)
   10308:	00058613          	mv	a2,a1
   1030c:	01053583          	ld	a1,16(a0)
   10310:	02010793          	addi	a5,sp,32
   10314:	00078693          	mv	a3,a5
   10318:	00113c23          	sd	ra,24(sp)
   1031c:	00f13423          	sd	a5,8(sp)
   10320:	0b0000ef          	jal	103d0 <_vfprintf_r>
   10324:	01813083          	ld	ra,24(sp)
   10328:	05010113          	addi	sp,sp,80
   1032c:	00008067          	ret

0000000000010330 <printf>:
   10330:	8101b303          	ld	t1,-2032(gp) # 1b350 <_impure_ptr>
   10334:	fa010113          	addi	sp,sp,-96
   10338:	02c13823          	sd	a2,48(sp)
   1033c:	02d13c23          	sd	a3,56(sp)
   10340:	04f13423          	sd	a5,72(sp)
   10344:	02b13423          	sd	a1,40(sp)
   10348:	04e13023          	sd	a4,64(sp)
   1034c:	05013823          	sd	a6,80(sp)
   10350:	05113c23          	sd	a7,88(sp)
   10354:	01033583          	ld	a1,16(t1)
   10358:	02810793          	addi	a5,sp,40
   1035c:	00050613          	mv	a2,a0
   10360:	00078693          	mv	a3,a5
   10364:	00030513          	mv	a0,t1
   10368:	00113c23          	sd	ra,24(sp)
   1036c:	00f13423          	sd	a5,8(sp)
   10370:	060000ef          	jal	103d0 <_vfprintf_r>
   10374:	01813083          	ld	ra,24(sp)
   10378:	06010113          	addi	sp,sp,96
   1037c:	00008067          	ret

0000000000010380 <time>:
   10380:	fe010113          	addi	sp,sp,-32
   10384:	00813823          	sd	s0,16(sp)
   10388:	00000593          	li	a1,0
   1038c:	00050413          	mv	s0,a0
   10390:	00010513          	mv	a0,sp
   10394:	00113c23          	sd	ra,24(sp)
   10398:	18d080ef          	jal	18d24 <gettimeofday>
   1039c:	02054063          	bltz	a0,103bc <time+0x3c>
   103a0:	00013503          	ld	a0,0(sp)
   103a4:	00040463          	beqz	s0,103ac <time+0x2c>
   103a8:	00a43023          	sd	a0,0(s0)
   103ac:	01813083          	ld	ra,24(sp)
   103b0:	01013403          	ld	s0,16(sp)
   103b4:	02010113          	addi	sp,sp,32
   103b8:	00008067          	ret
   103bc:	01813083          	ld	ra,24(sp)
   103c0:	fff00513          	li	a0,-1
   103c4:	01013403          	ld	s0,16(sp)
   103c8:	02010113          	addi	sp,sp,32
   103cc:	00008067          	ret

00000000000103d0 <_vfprintf_r>:
   103d0:	e1010113          	addi	sp,sp,-496
   103d4:	1e113423          	sd	ra,488(sp)
   103d8:	1d313423          	sd	s3,456(sp)
   103dc:	1d413023          	sd	s4,448(sp)
   103e0:	1b713423          	sd	s7,424(sp)
   103e4:	00058a13          	mv	s4,a1
   103e8:	00060993          	mv	s3,a2
   103ec:	02d13423          	sd	a3,40(sp)
   103f0:	1e813023          	sd	s0,480(sp)
   103f4:	1c913c23          	sd	s1,472(sp)
   103f8:	1d213823          	sd	s2,464(sp)
   103fc:	1b513c23          	sd	s5,440(sp)
   10400:	1b613823          	sd	s6,432(sp)
   10404:	1b813023          	sd	s8,416(sp)
   10408:	19913c23          	sd	s9,408(sp)
   1040c:	19a13823          	sd	s10,400(sp)
   10410:	19b13423          	sd	s11,392(sp)
   10414:	16813c27          	fsd	fs0,376(sp)
   10418:	00050b93          	mv	s7,a0
   1041c:	094040ef          	jal	144b0 <_localeconv_r>
   10420:	00053783          	ld	a5,0(a0)
   10424:	00078513          	mv	a0,a5
   10428:	06f13023          	sd	a5,96(sp)
   1042c:	00c060ef          	jal	16438 <strlen>
   10430:	06a13423          	sd	a0,104(sp)
   10434:	000b8663          	beqz	s7,10440 <_vfprintf_r+0x70>
   10438:	050ba783          	lw	a5,80(s7)
   1043c:	2e078c63          	beqz	a5,10734 <_vfprintf_r+0x364>
   10440:	010a1683          	lh	a3,16(s4)
   10444:	03069793          	slli	a5,a3,0x30
   10448:	0307d793          	srli	a5,a5,0x30
   1044c:	03279713          	slli	a4,a5,0x32
   10450:	02074a63          	bltz	a4,10484 <_vfprintf_r+0xb4>
   10454:	000027b7          	lui	a5,0x2
   10458:	0aca2603          	lw	a2,172(s4)
   1045c:	00f6e7b3          	or	a5,a3,a5
   10460:	0107979b          	slliw	a5,a5,0x10
   10464:	ffffe737          	lui	a4,0xffffe
   10468:	4107d79b          	sraiw	a5,a5,0x10
   1046c:	fff7071b          	addiw	a4,a4,-1
   10470:	00e67733          	and	a4,a2,a4
   10474:	00fa1823          	sh	a5,16(s4)
   10478:	03079793          	slli	a5,a5,0x30
   1047c:	0aea2623          	sw	a4,172(s4)
   10480:	0307d793          	srli	a5,a5,0x30
   10484:	0087f713          	andi	a4,a5,8
   10488:	1e070063          	beqz	a4,10668 <_vfprintf_r+0x298>
   1048c:	018a3703          	ld	a4,24(s4)
   10490:	1c070c63          	beqz	a4,10668 <_vfprintf_r+0x298>
   10494:	01a7f793          	andi	a5,a5,26
   10498:	00a00713          	li	a4,10
   1049c:	1ee78863          	beq	a5,a4,1068c <_vfprintf_r+0x2bc>
   104a0:	000197b7          	lui	a5,0x19
   104a4:	e1878793          	addi	a5,a5,-488 # 18e18 <__errno+0x14>
   104a8:	0f010b13          	addi	s6,sp,240
   104ac:	02f13823          	sd	a5,48(sp)
   104b0:	0ef10793          	addi	a5,sp,239
   104b4:	00019ab7          	lui	s5,0x19
   104b8:	000194b7          	lui	s1,0x19
   104bc:	40fb07b3          	sub	a5,s6,a5
   104c0:	04013c23          	sd	zero,88(sp)
   104c4:	0b613823          	sd	s6,176(sp)
   104c8:	0c013023          	sd	zero,192(sp)
   104cc:	0a012c23          	sw	zero,184(sp)
   104d0:	06012823          	sw	zero,112(sp)
   104d4:	000b0893          	mv	a7,s6
   104d8:	02013c23          	sd	zero,56(sp)
   104dc:	06012a23          	sw	zero,116(sp)
   104e0:	00012e23          	sw	zero,28(sp)
   104e4:	f80a8a93          	addi	s5,s5,-128 # 18f80 <blanks.4193>
   104e8:	f9048493          	addi	s1,s1,-112 # 18f90 <zeroes.4194>
   104ec:	06f13c23          	sd	a5,120(sp)
   104f0:	0009c783          	lbu	a5,0(s3)
   104f4:	0e0782e3          	beqz	a5,10dd8 <_vfprintf_r+0xa08>
   104f8:	02500713          	li	a4,37
   104fc:	00098413          	mv	s0,s3
   10500:	00e79663          	bne	a5,a4,1050c <_vfprintf_r+0x13c>
   10504:	0580006f          	j	1055c <_vfprintf_r+0x18c>
   10508:	00e78863          	beq	a5,a4,10518 <_vfprintf_r+0x148>
   1050c:	00140413          	addi	s0,s0,1
   10510:	00044783          	lbu	a5,0(s0)
   10514:	fe079ae3          	bnez	a5,10508 <_vfprintf_r+0x138>
   10518:	4134093b          	subw	s2,s0,s3
   1051c:	04090063          	beqz	s2,1055c <_vfprintf_r+0x18c>
   10520:	0c013703          	ld	a4,192(sp)
   10524:	0b812783          	lw	a5,184(sp)
   10528:	00090693          	mv	a3,s2
   1052c:	00d70733          	add	a4,a4,a3
   10530:	0017879b          	addiw	a5,a5,1
   10534:	0138b023          	sd	s3,0(a7)
   10538:	00d8b423          	sd	a3,8(a7)
   1053c:	0ce13023          	sd	a4,192(sp)
   10540:	0af12c23          	sw	a5,184(sp)
   10544:	00700713          	li	a4,7
   10548:	01088893          	addi	a7,a7,16
   1054c:	16f74063          	blt	a4,a5,106ac <_vfprintf_r+0x2dc>
   10550:	01c12783          	lw	a5,28(sp)
   10554:	012787bb          	addw	a5,a5,s2
   10558:	00f12e23          	sw	a5,28(sp)
   1055c:	00044783          	lbu	a5,0(s0)
   10560:	16078463          	beqz	a5,106c8 <_vfprintf_r+0x2f8>
   10564:	00140993          	addi	s3,s0,1
   10568:	080107a3          	sb	zero,143(sp)
   1056c:	00000613          	li	a2,0
   10570:	00000593          	li	a1,0
   10574:	fff00413          	li	s0,-1
   10578:	00012c23          	sw	zero,24(sp)
   1057c:	00000c13          	li	s8,0
   10580:	05800713          	li	a4,88
   10584:	00900693          	li	a3,9
   10588:	02a00513          	li	a0,42
   1058c:	0009cd03          	lbu	s10,0(s3)
   10590:	00198993          	addi	s3,s3,1
   10594:	fe0d079b          	addiw	a5,s10,-32
   10598:	1cf762e3          	bltu	a4,a5,10f5c <_vfprintf_r+0xb8c>
   1059c:	03013803          	ld	a6,48(sp)
   105a0:	02079793          	slli	a5,a5,0x20
   105a4:	01e7d793          	srli	a5,a5,0x1e
   105a8:	010787b3          	add	a5,a5,a6
   105ac:	0007a783          	lw	a5,0(a5)
   105b0:	00078067          	jr	a5
   105b4:	010c6c13          	ori	s8,s8,16
   105b8:	fd5ff06f          	j	1058c <_vfprintf_r+0x1bc>
   105bc:	02813783          	ld	a5,40(sp)
   105c0:	0007a803          	lw	a6,0(a5)
   105c4:	00878793          	addi	a5,a5,8
   105c8:	02f13423          	sd	a5,40(sp)
   105cc:	01012c23          	sw	a6,24(sp)
   105d0:	fa085ee3          	bgez	a6,1058c <_vfprintf_r+0x1bc>
   105d4:	410007bb          	negw	a5,a6
   105d8:	00f12c23          	sw	a5,24(sp)
   105dc:	004c6c13          	ori	s8,s8,4
   105e0:	fadff06f          	j	1058c <_vfprintf_r+0x1bc>
   105e4:	03000793          	li	a5,48
   105e8:	08f10823          	sb	a5,144(sp)
   105ec:	07800793          	li	a5,120
   105f0:	08f108a3          	sb	a5,145(sp)
   105f4:	02813783          	ld	a5,40(sp)
   105f8:	080107a3          	sb	zero,143(sp)
   105fc:	002c6693          	ori	a3,s8,2
   10600:	00878713          	addi	a4,a5,8
   10604:	0007b783          	ld	a5,0(a5)
   10608:	180444e3          	bltz	s0,10f90 <_vfprintf_r+0xbc0>
   1060c:	f7fc7c13          	andi	s8,s8,-129
   10610:	02e13423          	sd	a4,40(sp)
   10614:	002c6c13          	ori	s8,s8,2
   10618:	120796e3          	bnez	a5,10f44 <_vfprintf_r+0xb74>
   1061c:	000197b7          	lui	a5,0x19
   10620:	29078793          	addi	a5,a5,656 # 19290 <zeroes.4137+0x50>
   10624:	02f13c23          	sd	a5,56(sp)
   10628:	07800d13          	li	s10,120
   1062c:	00000613          	li	a2,0
   10630:	7e040463          	beqz	s0,10e18 <_vfprintf_r+0xa48>
   10634:	00000793          	li	a5,0
   10638:	000b0913          	mv	s2,s6
   1063c:	03813683          	ld	a3,56(sp)
   10640:	00f7f713          	andi	a4,a5,15
   10644:	fff90913          	addi	s2,s2,-1
   10648:	00e68733          	add	a4,a3,a4
   1064c:	00074703          	lbu	a4,0(a4) # ffffffffffffe000 <_gp+0xfffffffffffe24c0>
   10650:	0047d793          	srli	a5,a5,0x4
   10654:	00e90023          	sb	a4,0(s2)
   10658:	fe0792e3          	bnez	a5,1063c <_vfprintf_r+0x26c>
   1065c:	412b07b3          	sub	a5,s6,s2
   10660:	02f12023          	sw	a5,32(sp)
   10664:	1680006f          	j	107cc <_vfprintf_r+0x3fc>
   10668:	000a0593          	mv	a1,s4
   1066c:	000b8513          	mv	a0,s7
   10670:	2bd010ef          	jal	1212c <__swsetup_r>
   10674:	00050463          	beqz	a0,1067c <_vfprintf_r+0x2ac>
   10678:	3940106f          	j	11a0c <_vfprintf_r+0x163c>
   1067c:	010a5783          	lhu	a5,16(s4)
   10680:	00a00713          	li	a4,10
   10684:	01a7f793          	andi	a5,a5,26
   10688:	e0e79ce3          	bne	a5,a4,104a0 <_vfprintf_r+0xd0>
   1068c:	012a1783          	lh	a5,18(s4)
   10690:	e007c8e3          	bltz	a5,104a0 <_vfprintf_r+0xd0>
   10694:	02813683          	ld	a3,40(sp)
   10698:	00098613          	mv	a2,s3
   1069c:	000a0593          	mv	a1,s4
   106a0:	000b8513          	mv	a0,s7
   106a4:	1c9010ef          	jal	1206c <__sbprintf>
   106a8:	04c0006f          	j	106f4 <_vfprintf_r+0x324>
   106ac:	0b010613          	addi	a2,sp,176
   106b0:	000a0593          	mv	a1,s4
   106b4:	000b8513          	mv	a0,s7
   106b8:	73d050ef          	jal	165f4 <__sprint_r>
   106bc:	02051263          	bnez	a0,106e0 <_vfprintf_r+0x310>
   106c0:	000b0893          	mv	a7,s6
   106c4:	e8dff06f          	j	10550 <_vfprintf_r+0x180>
   106c8:	0c013783          	ld	a5,192(sp)
   106cc:	00078a63          	beqz	a5,106e0 <_vfprintf_r+0x310>
   106d0:	0b010613          	addi	a2,sp,176
   106d4:	000a0593          	mv	a1,s4
   106d8:	000b8513          	mv	a0,s7
   106dc:	719050ef          	jal	165f4 <__sprint_r>
   106e0:	010a5783          	lhu	a5,16(s4)
   106e4:	0407f793          	andi	a5,a5,64
   106e8:	00078463          	beqz	a5,106f0 <_vfprintf_r+0x320>
   106ec:	3200106f          	j	11a0c <_vfprintf_r+0x163c>
   106f0:	01c12503          	lw	a0,28(sp)
   106f4:	1e813083          	ld	ra,488(sp)
   106f8:	1e013403          	ld	s0,480(sp)
   106fc:	1d813483          	ld	s1,472(sp)
   10700:	1d013903          	ld	s2,464(sp)
   10704:	1c813983          	ld	s3,456(sp)
   10708:	1c013a03          	ld	s4,448(sp)
   1070c:	1b813a83          	ld	s5,440(sp)
   10710:	1b013b03          	ld	s6,432(sp)
   10714:	1a813b83          	ld	s7,424(sp)
   10718:	1a013c03          	ld	s8,416(sp)
   1071c:	19813c83          	ld	s9,408(sp)
   10720:	19013d03          	ld	s10,400(sp)
   10724:	18813d83          	ld	s11,392(sp)
   10728:	17813407          	fld	fs0,376(sp)
   1072c:	1f010113          	addi	sp,sp,496
   10730:	00008067          	ret
   10734:	000b8513          	mv	a0,s7
   10738:	700030ef          	jal	13e38 <__sinit>
   1073c:	d05ff06f          	j	10440 <_vfprintf_r+0x70>
   10740:	00100613          	li	a2,1
   10744:	02b00593          	li	a1,43
   10748:	e45ff06f          	j	1058c <_vfprintf_r+0x1bc>
   1074c:	00060463          	beqz	a2,10754 <_vfprintf_r+0x384>
   10750:	0d90106f          	j	12028 <_vfprintf_r+0x1c58>
   10754:	010c7793          	andi	a5,s8,16
   10758:	22078263          	beqz	a5,1097c <_vfprintf_r+0x5ac>
   1075c:	02813783          	ld	a5,40(sp)
   10760:	080107a3          	sb	zero,143(sp)
   10764:	00878713          	addi	a4,a5,8
   10768:	0007b783          	ld	a5,0(a5)
   1076c:	22044663          	bltz	s0,10998 <_vfprintf_r+0x5c8>
   10770:	02e13423          	sd	a4,40(sp)
   10774:	f7fc7c13          	andi	s8,s8,-129
   10778:	22079663          	bnez	a5,109a4 <_vfprintf_r+0x5d4>
   1077c:	00000613          	li	a2,0
   10780:	00000793          	li	a5,0
   10784:	00041463          	bnez	s0,1078c <_vfprintf_r+0x3bc>
   10788:	3680106f          	j	11af0 <_vfprintf_r+0x1720>
   1078c:	000b0913          	mv	s2,s6
   10790:	0077f713          	andi	a4,a5,7
   10794:	fff90913          	addi	s2,s2,-1
   10798:	0307071b          	addiw	a4,a4,48
   1079c:	00e90023          	sb	a4,0(s2)
   107a0:	0037d793          	srli	a5,a5,0x3
   107a4:	fe0796e3          	bnez	a5,10790 <_vfprintf_r+0x3c0>
   107a8:	001c7793          	andi	a5,s8,1
   107ac:	ea0788e3          	beqz	a5,1065c <_vfprintf_r+0x28c>
   107b0:	03000793          	li	a5,48
   107b4:	eaf704e3          	beq	a4,a5,1065c <_vfprintf_r+0x28c>
   107b8:	fff90713          	addi	a4,s2,-1
   107bc:	40eb06b3          	sub	a3,s6,a4
   107c0:	fef90fa3          	sb	a5,-1(s2)
   107c4:	02d12023          	sw	a3,32(sp)
   107c8:	00070913          	mv	s2,a4
   107cc:	02012783          	lw	a5,32(sp)
   107d0:	00078d93          	mv	s11,a5
   107d4:	0087d463          	ble	s0,a5,107dc <_vfprintf_r+0x40c>
   107d8:	00040d93          	mv	s11,s0
   107dc:	01b12423          	sw	s11,8(sp)
   107e0:	04012623          	sw	zero,76(sp)
   107e4:	2a060263          	beqz	a2,10a88 <_vfprintf_r+0x6b8>
   107e8:	00812783          	lw	a5,8(sp)
   107ec:	0017879b          	addiw	a5,a5,1
   107f0:	00f12423          	sw	a5,8(sp)
   107f4:	2940006f          	j	10a88 <_vfprintf_r+0x6b8>
   107f8:	0009cd03          	lbu	s10,0(s3)
   107fc:	00198993          	addi	s3,s3,1
   10800:	00ad1463          	bne	s10,a0,10808 <_vfprintf_r+0x438>
   10804:	75c0106f          	j	11f60 <_vfprintf_r+0x1b90>
   10808:	fd0d079b          	addiw	a5,s10,-48
   1080c:	00000413          	li	s0,0
   10810:	d8f6e2e3          	bltu	a3,a5,10594 <_vfprintf_r+0x1c4>
   10814:	00198993          	addi	s3,s3,1
   10818:	fff9cd03          	lbu	s10,-1(s3)
   1081c:	0014181b          	slliw	a6,s0,0x1
   10820:	0034141b          	slliw	s0,s0,0x3
   10824:	0088043b          	addw	s0,a6,s0
   10828:	00f4043b          	addw	s0,s0,a5
   1082c:	fd0d079b          	addiw	a5,s10,-48
   10830:	fef6f2e3          	bleu	a5,a3,10814 <_vfprintf_r+0x444>
   10834:	d60450e3          	bgez	s0,10594 <_vfprintf_r+0x1c4>
   10838:	fff00413          	li	s0,-1
   1083c:	d59ff06f          	j	10594 <_vfprintf_r+0x1c4>
   10840:	080c6c13          	ori	s8,s8,128
   10844:	d49ff06f          	j	1058c <_vfprintf_r+0x1bc>
   10848:	d40592e3          	bnez	a1,1058c <_vfprintf_r+0x1bc>
   1084c:	00100613          	li	a2,1
   10850:	02000593          	li	a1,32
   10854:	d39ff06f          	j	1058c <_vfprintf_r+0x1bc>
   10858:	001c6c13          	ori	s8,s8,1
   1085c:	d31ff06f          	j	1058c <_vfprintf_r+0x1bc>
   10860:	02813783          	ld	a5,40(sp)
   10864:	080107a3          	sb	zero,143(sp)
   10868:	0007b903          	ld	s2,0(a5)
   1086c:	00878c93          	addi	s9,a5,8
   10870:	00091463          	bnez	s2,10878 <_vfprintf_r+0x4a8>
   10874:	39c0106f          	j	11c10 <_vfprintf_r+0x1840>
   10878:	01113023          	sd	a7,0(sp)
   1087c:	00045463          	bgez	s0,10884 <_vfprintf_r+0x4b4>
   10880:	3240106f          	j	11ba4 <_vfprintf_r+0x17d4>
   10884:	00040613          	mv	a2,s0
   10888:	00000593          	li	a1,0
   1088c:	00090513          	mv	a0,s2
   10890:	564040ef          	jal	14df4 <memchr>
   10894:	00013883          	ld	a7,0(sp)
   10898:	00051463          	bnez	a0,108a0 <_vfprintf_r+0x4d0>
   1089c:	4c00106f          	j	11d5c <_vfprintf_r+0x198c>
   108a0:	412507bb          	subw	a5,a0,s2
   108a4:	02f12023          	sw	a5,32(sp)
   108a8:	00078d93          	mv	s11,a5
   108ac:	0007d463          	bgez	a5,108b4 <_vfprintf_r+0x4e4>
   108b0:	3140106f          	j	11bc4 <_vfprintf_r+0x17f4>
   108b4:	08f14603          	lbu	a2,143(sp)
   108b8:	01b12423          	sw	s11,8(sp)
   108bc:	03913423          	sd	s9,40(sp)
   108c0:	00000413          	li	s0,0
   108c4:	04012623          	sw	zero,76(sp)
   108c8:	f1dff06f          	j	107e4 <_vfprintf_r+0x414>
   108cc:	00060463          	beqz	a2,108d4 <_vfprintf_r+0x504>
   108d0:	7800106f          	j	12050 <_vfprintf_r+0x1c80>
   108d4:	010c7793          	andi	a5,s8,16
   108d8:	0e078463          	beqz	a5,109c0 <_vfprintf_r+0x5f0>
   108dc:	02813783          	ld	a5,40(sp)
   108e0:	080107a3          	sb	zero,143(sp)
   108e4:	00878713          	addi	a4,a5,8
   108e8:	0007b783          	ld	a5,0(a5)
   108ec:	0e044863          	bltz	s0,109dc <_vfprintf_r+0x60c>
   108f0:	02e13423          	sd	a4,40(sp)
   108f4:	f7fc7c13          	andi	s8,s8,-129
   108f8:	00000613          	li	a2,0
   108fc:	50078c63          	beqz	a5,10e14 <_vfprintf_r+0xa44>
   10900:	00900713          	li	a4,9
   10904:	000b0913          	mv	s2,s6
   10908:	00a00693          	li	a3,10
   1090c:	40f770e3          	bleu	a5,a4,1150c <_vfprintf_r+0x113c>
   10910:	02d7f733          	remu	a4,a5,a3
   10914:	fff90913          	addi	s2,s2,-1
   10918:	02d7d7b3          	divu	a5,a5,a3
   1091c:	0307071b          	addiw	a4,a4,48
   10920:	00e90023          	sb	a4,0(s2)
   10924:	fe0796e3          	bnez	a5,10910 <_vfprintf_r+0x540>
   10928:	412b07b3          	sub	a5,s6,s2
   1092c:	02f12023          	sw	a5,32(sp)
   10930:	e9dff06f          	j	107cc <_vfprintf_r+0x3fc>
   10934:	00012c23          	sw	zero,24(sp)
   10938:	fd0d079b          	addiw	a5,s10,-48
   1093c:	01812303          	lw	t1,24(sp)
   10940:	00198993          	addi	s3,s3,1
   10944:	fff9cd03          	lbu	s10,-1(s3)
   10948:	0013181b          	slliw	a6,t1,0x1
   1094c:	00331c9b          	slliw	s9,t1,0x3
   10950:	01980cbb          	addw	s9,a6,s9
   10954:	019787bb          	addw	a5,a5,s9
   10958:	00f12c23          	sw	a5,24(sp)
   1095c:	fd0d079b          	addiw	a5,s10,-48
   10960:	fcf6fee3          	bleu	a5,a3,1093c <_vfprintf_r+0x56c>
   10964:	c31ff06f          	j	10594 <_vfprintf_r+0x1c4>
   10968:	00060463          	beqz	a2,10970 <_vfprintf_r+0x5a0>
   1096c:	6d80106f          	j	12044 <_vfprintf_r+0x1c74>
   10970:	010c6c13          	ori	s8,s8,16
   10974:	010c7793          	andi	a5,s8,16
   10978:	de0792e3          	bnez	a5,1075c <_vfprintf_r+0x38c>
   1097c:	040c7793          	andi	a5,s8,64
   10980:	080107a3          	sb	zero,143(sp)
   10984:	580780e3          	beqz	a5,11704 <_vfprintf_r+0x1334>
   10988:	02813783          	ld	a5,40(sp)
   1098c:	00878713          	addi	a4,a5,8
   10990:	0007d783          	lhu	a5,0(a5)
   10994:	dc045ee3          	bgez	s0,10770 <_vfprintf_r+0x3a0>
   10998:	02e13423          	sd	a4,40(sp)
   1099c:	00000613          	li	a2,0
   109a0:	60078a63          	beqz	a5,10fb4 <_vfprintf_r+0xbe4>
   109a4:	00000613          	li	a2,0
   109a8:	de5ff06f          	j	1078c <_vfprintf_r+0x3bc>
   109ac:	00060463          	beqz	a2,109b4 <_vfprintf_r+0x5e4>
   109b0:	6880106f          	j	12038 <_vfprintf_r+0x1c68>
   109b4:	010c6c13          	ori	s8,s8,16
   109b8:	010c7793          	andi	a5,s8,16
   109bc:	f20790e3          	bnez	a5,108dc <_vfprintf_r+0x50c>
   109c0:	040c7793          	andi	a5,s8,64
   109c4:	080107a3          	sb	zero,143(sp)
   109c8:	500780e3          	beqz	a5,116c8 <_vfprintf_r+0x12f8>
   109cc:	02813783          	ld	a5,40(sp)
   109d0:	00878713          	addi	a4,a5,8
   109d4:	0007d783          	lhu	a5,0(a5)
   109d8:	f0045ce3          	bgez	s0,108f0 <_vfprintf_r+0x520>
   109dc:	02e13423          	sd	a4,40(sp)
   109e0:	00000613          	li	a2,0
   109e4:	f0079ee3          	bnez	a5,10900 <_vfprintf_r+0x530>
   109e8:	00100793          	li	a5,1
   109ec:	5c80006f          	j	10fb4 <_vfprintf_r+0xbe4>
   109f0:	00060463          	beqz	a2,109f8 <_vfprintf_r+0x628>
   109f4:	63c0106f          	j	12030 <_vfprintf_r+0x1c60>
   109f8:	000197b7          	lui	a5,0x19
   109fc:	27878793          	addi	a5,a5,632 # 19278 <zeroes.4137+0x38>
   10a00:	02f13c23          	sd	a5,56(sp)
   10a04:	010c7793          	andi	a5,s8,16
   10a08:	4c078263          	beqz	a5,10ecc <_vfprintf_r+0xafc>
   10a0c:	02813703          	ld	a4,40(sp)
   10a10:	00073783          	ld	a5,0(a4)
   10a14:	00870713          	addi	a4,a4,8
   10a18:	02e13423          	sd	a4,40(sp)
   10a1c:	001c7713          	andi	a4,s8,1
   10a20:	120706e3          	beqz	a4,1134c <_vfprintf_r+0xf7c>
   10a24:	6a078ee3          	beqz	a5,118e0 <_vfprintf_r+0x1510>
   10a28:	03000713          	li	a4,48
   10a2c:	08e10823          	sb	a4,144(sp)
   10a30:	09a108a3          	sb	s10,145(sp)
   10a34:	080107a3          	sb	zero,143(sp)
   10a38:	002c6713          	ori	a4,s8,2
   10a3c:	00045463          	bgez	s0,10a44 <_vfprintf_r+0x674>
   10a40:	2140106f          	j	11c54 <_vfprintf_r+0x1884>
   10a44:	f7fc7c13          	andi	s8,s8,-129
   10a48:	002c6c13          	ori	s8,s8,2
   10a4c:	00000613          	li	a2,0
   10a50:	be9ff06f          	j	10638 <_vfprintf_r+0x268>
   10a54:	02813703          	ld	a4,40(sp)
   10a58:	00100693          	li	a3,1
   10a5c:	00d12423          	sw	a3,8(sp)
   10a60:	00072783          	lw	a5,0(a4)
   10a64:	080107a3          	sb	zero,143(sp)
   10a68:	00000613          	li	a2,0
   10a6c:	0cf10423          	sb	a5,200(sp)
   10a70:	00870793          	addi	a5,a4,8
   10a74:	02f13423          	sd	a5,40(sp)
   10a78:	02d12023          	sw	a3,32(sp)
   10a7c:	00000413          	li	s0,0
   10a80:	04012623          	sw	zero,76(sp)
   10a84:	0c810913          	addi	s2,sp,200
   10a88:	002c7793          	andi	a5,s8,2
   10a8c:	04f12023          	sw	a5,64(sp)
   10a90:	00078863          	beqz	a5,10aa0 <_vfprintf_r+0x6d0>
   10a94:	00812783          	lw	a5,8(sp)
   10a98:	0027879b          	addiw	a5,a5,2
   10a9c:	00f12423          	sw	a5,8(sp)
   10aa0:	084c7793          	andi	a5,s8,132
   10aa4:	04f12423          	sw	a5,72(sp)
   10aa8:	52079263          	bnez	a5,10fcc <_vfprintf_r+0xbfc>
   10aac:	01812783          	lw	a5,24(sp)
   10ab0:	00812703          	lw	a4,8(sp)
   10ab4:	40e78cbb          	subw	s9,a5,a4
   10ab8:	51905a63          	blez	s9,10fcc <_vfprintf_r+0xbfc>
   10abc:	01000793          	li	a5,16
   10ac0:	0197c463          	blt	a5,s9,10ac8 <_vfprintf_r+0x6f8>
   10ac4:	1080106f          	j	11bcc <_vfprintf_r+0x17fc>
   10ac8:	01000813          	li	a6,16
   10acc:	0c013783          	ld	a5,192(sp)
   10ad0:	0b812703          	lw	a4,184(sp)
   10ad4:	05513823          	sd	s5,80(sp)
   10ad8:	00700313          	li	t1,7
   10adc:	00080d93          	mv	s11,a6
   10ae0:	00c0006f          	j	10aec <_vfprintf_r+0x71c>
   10ae4:	ff0c8c9b          	addiw	s9,s9,-16
   10ae8:	059dde63          	ble	s9,s11,10b44 <_vfprintf_r+0x774>
   10aec:	01078793          	addi	a5,a5,16
   10af0:	0017071b          	addiw	a4,a4,1
   10af4:	0158b023          	sd	s5,0(a7)
   10af8:	0108b423          	sd	a6,8(a7)
   10afc:	0cf13023          	sd	a5,192(sp)
   10b00:	0ae12c23          	sw	a4,184(sp)
   10b04:	01088893          	addi	a7,a7,16
   10b08:	fce35ee3          	ble	a4,t1,10ae4 <_vfprintf_r+0x714>
   10b0c:	0b010613          	addi	a2,sp,176
   10b10:	000a0593          	mv	a1,s4
   10b14:	000b8513          	mv	a0,s7
   10b18:	00613823          	sd	t1,16(sp)
   10b1c:	01013023          	sd	a6,0(sp)
   10b20:	2d5050ef          	jal	165f4 <__sprint_r>
   10b24:	ba051ee3          	bnez	a0,106e0 <_vfprintf_r+0x310>
   10b28:	ff0c8c9b          	addiw	s9,s9,-16
   10b2c:	0c013783          	ld	a5,192(sp)
   10b30:	0b812703          	lw	a4,184(sp)
   10b34:	000b0893          	mv	a7,s6
   10b38:	01013303          	ld	t1,16(sp)
   10b3c:	00013803          	ld	a6,0(sp)
   10b40:	fb9dc6e3          	blt	s11,s9,10aec <_vfprintf_r+0x71c>
   10b44:	05013603          	ld	a2,80(sp)
   10b48:	00fc87b3          	add	a5,s9,a5
   10b4c:	0017071b          	addiw	a4,a4,1
   10b50:	00c8b023          	sd	a2,0(a7)
   10b54:	0198b423          	sd	s9,8(a7)
   10b58:	0cf13023          	sd	a5,192(sp)
   10b5c:	0ae12c23          	sw	a4,184(sp)
   10b60:	00700693          	li	a3,7
   10b64:	0ce6cae3          	blt	a3,a4,11438 <_vfprintf_r+0x1068>
   10b68:	08f14603          	lbu	a2,143(sp)
   10b6c:	01088893          	addi	a7,a7,16
   10b70:	02060a63          	beqz	a2,10ba4 <_vfprintf_r+0x7d4>
   10b74:	0b812703          	lw	a4,184(sp)
   10b78:	08f10693          	addi	a3,sp,143
   10b7c:	00d8b023          	sd	a3,0(a7)
   10b80:	00178793          	addi	a5,a5,1
   10b84:	00100693          	li	a3,1
   10b88:	0017071b          	addiw	a4,a4,1
   10b8c:	00d8b423          	sd	a3,8(a7)
   10b90:	0cf13023          	sd	a5,192(sp)
   10b94:	0ae12c23          	sw	a4,184(sp)
   10b98:	00700693          	li	a3,7
   10b9c:	01088893          	addi	a7,a7,16
   10ba0:	76e6c663          	blt	a3,a4,1130c <_vfprintf_r+0xf3c>
   10ba4:	04012703          	lw	a4,64(sp)
   10ba8:	02070a63          	beqz	a4,10bdc <_vfprintf_r+0x80c>
   10bac:	0b812703          	lw	a4,184(sp)
   10bb0:	09010693          	addi	a3,sp,144
   10bb4:	00d8b023          	sd	a3,0(a7)
   10bb8:	00278793          	addi	a5,a5,2
   10bbc:	00200693          	li	a3,2
   10bc0:	0017071b          	addiw	a4,a4,1
   10bc4:	00d8b423          	sd	a3,8(a7)
   10bc8:	0cf13023          	sd	a5,192(sp)
   10bcc:	0ae12c23          	sw	a4,184(sp)
   10bd0:	00700693          	li	a3,7
   10bd4:	01088893          	addi	a7,a7,16
   10bd8:	74e6ca63          	blt	a3,a4,1132c <_vfprintf_r+0xf5c>
   10bdc:	04812683          	lw	a3,72(sp)
   10be0:	08000713          	li	a4,128
   10be4:	5ee68663          	beq	a3,a4,111d0 <_vfprintf_r+0xe00>
   10be8:	02012703          	lw	a4,32(sp)
   10bec:	40e4043b          	subw	s0,s0,a4
   10bf0:	0c805063          	blez	s0,10cb0 <_vfprintf_r+0x8e0>
   10bf4:	01000713          	li	a4,16
   10bf8:	4e875ce3          	ble	s0,a4,118f0 <_vfprintf_r+0x1520>
   10bfc:	01000c93          	li	s9,16
   10c00:	0b812703          	lw	a4,184(sp)
   10c04:	00913823          	sd	s1,16(sp)
   10c08:	00700813          	li	a6,7
   10c0c:	000c8d93          	mv	s11,s9
   10c10:	00c0006f          	j	10c1c <_vfprintf_r+0x84c>
   10c14:	ff04041b          	addiw	s0,s0,-16
   10c18:	048dda63          	ble	s0,s11,10c6c <_vfprintf_r+0x89c>
   10c1c:	01078793          	addi	a5,a5,16
   10c20:	0017071b          	addiw	a4,a4,1
   10c24:	0098b023          	sd	s1,0(a7)
   10c28:	0198b423          	sd	s9,8(a7)
   10c2c:	0cf13023          	sd	a5,192(sp)
   10c30:	0ae12c23          	sw	a4,184(sp)
   10c34:	01088893          	addi	a7,a7,16
   10c38:	fce85ee3          	ble	a4,a6,10c14 <_vfprintf_r+0x844>
   10c3c:	0b010613          	addi	a2,sp,176
   10c40:	000a0593          	mv	a1,s4
   10c44:	000b8513          	mv	a0,s7
   10c48:	01013023          	sd	a6,0(sp)
   10c4c:	1a9050ef          	jal	165f4 <__sprint_r>
   10c50:	a80518e3          	bnez	a0,106e0 <_vfprintf_r+0x310>
   10c54:	ff04041b          	addiw	s0,s0,-16
   10c58:	0c013783          	ld	a5,192(sp)
   10c5c:	0b812703          	lw	a4,184(sp)
   10c60:	000b0893          	mv	a7,s6
   10c64:	00013803          	ld	a6,0(sp)
   10c68:	fa8dcae3          	blt	s11,s0,10c1c <_vfprintf_r+0x84c>
   10c6c:	01013683          	ld	a3,16(sp)
   10c70:	008787b3          	add	a5,a5,s0
   10c74:	0017071b          	addiw	a4,a4,1
   10c78:	00d8b023          	sd	a3,0(a7)
   10c7c:	0088b423          	sd	s0,8(a7)
   10c80:	0cf13023          	sd	a5,192(sp)
   10c84:	0ae12c23          	sw	a4,184(sp)
   10c88:	00700693          	li	a3,7
   10c8c:	01088893          	addi	a7,a7,16
   10c90:	02e6d063          	ble	a4,a3,10cb0 <_vfprintf_r+0x8e0>
   10c94:	0b010613          	addi	a2,sp,176
   10c98:	000a0593          	mv	a1,s4
   10c9c:	000b8513          	mv	a0,s7
   10ca0:	155050ef          	jal	165f4 <__sprint_r>
   10ca4:	a2051ee3          	bnez	a0,106e0 <_vfprintf_r+0x310>
   10ca8:	0c013783          	ld	a5,192(sp)
   10cac:	000b0893          	mv	a7,s6
   10cb0:	100c7713          	andi	a4,s8,256
   10cb4:	40071663          	bnez	a4,110c0 <_vfprintf_r+0xcf0>
   10cb8:	02012703          	lw	a4,32(sp)
   10cbc:	0b812683          	lw	a3,184(sp)
   10cc0:	0128b023          	sd	s2,0(a7)
   10cc4:	00e787b3          	add	a5,a5,a4
   10cc8:	0016869b          	addiw	a3,a3,1
   10ccc:	00e8b423          	sd	a4,8(a7)
   10cd0:	0cf13023          	sd	a5,192(sp)
   10cd4:	0ad12c23          	sw	a3,184(sp)
   10cd8:	00700713          	li	a4,7
   10cdc:	3cd74263          	blt	a4,a3,110a0 <_vfprintf_r+0xcd0>
   10ce0:	01088893          	addi	a7,a7,16
   10ce4:	004c7c13          	andi	s8,s8,4
   10ce8:	0c0c0063          	beqz	s8,10da8 <_vfprintf_r+0x9d8>
   10cec:	01812703          	lw	a4,24(sp)
   10cf0:	00812683          	lw	a3,8(sp)
   10cf4:	40d7043b          	subw	s0,a4,a3
   10cf8:	0a805863          	blez	s0,10da8 <_vfprintf_r+0x9d8>
   10cfc:	01000713          	li	a4,16
   10d00:	748754e3          	ble	s0,a4,11c48 <_vfprintf_r+0x1878>
   10d04:	01000913          	li	s2,16
   10d08:	0b812703          	lw	a4,184(sp)
   10d0c:	05513823          	sd	s5,80(sp)
   10d10:	00700c13          	li	s8,7
   10d14:	00090d13          	mv	s10,s2
   10d18:	00c0006f          	j	10d24 <_vfprintf_r+0x954>
   10d1c:	ff04041b          	addiw	s0,s0,-16
   10d20:	048d5663          	ble	s0,s10,10d6c <_vfprintf_r+0x99c>
   10d24:	01078793          	addi	a5,a5,16
   10d28:	0017071b          	addiw	a4,a4,1
   10d2c:	0158b023          	sd	s5,0(a7)
   10d30:	0128b423          	sd	s2,8(a7)
   10d34:	0cf13023          	sd	a5,192(sp)
   10d38:	0ae12c23          	sw	a4,184(sp)
   10d3c:	01088893          	addi	a7,a7,16
   10d40:	fcec5ee3          	ble	a4,s8,10d1c <_vfprintf_r+0x94c>
   10d44:	0b010613          	addi	a2,sp,176
   10d48:	000a0593          	mv	a1,s4
   10d4c:	000b8513          	mv	a0,s7
   10d50:	0a5050ef          	jal	165f4 <__sprint_r>
   10d54:	980516e3          	bnez	a0,106e0 <_vfprintf_r+0x310>
   10d58:	ff04041b          	addiw	s0,s0,-16
   10d5c:	0c013783          	ld	a5,192(sp)
   10d60:	0b812703          	lw	a4,184(sp)
   10d64:	000b0893          	mv	a7,s6
   10d68:	fa8d4ee3          	blt	s10,s0,10d24 <_vfprintf_r+0x954>
   10d6c:	05013683          	ld	a3,80(sp)
   10d70:	008787b3          	add	a5,a5,s0
   10d74:	0017071b          	addiw	a4,a4,1
   10d78:	00d8b023          	sd	a3,0(a7)
   10d7c:	0088b423          	sd	s0,8(a7)
   10d80:	0cf13023          	sd	a5,192(sp)
   10d84:	0ae12c23          	sw	a4,184(sp)
   10d88:	00700693          	li	a3,7
   10d8c:	00e6de63          	ble	a4,a3,10da8 <_vfprintf_r+0x9d8>
   10d90:	0b010613          	addi	a2,sp,176
   10d94:	000a0593          	mv	a1,s4
   10d98:	000b8513          	mv	a0,s7
   10d9c:	059050ef          	jal	165f4 <__sprint_r>
   10da0:	940510e3          	bnez	a0,106e0 <_vfprintf_r+0x310>
   10da4:	0c013783          	ld	a5,192(sp)
   10da8:	01812c83          	lw	s9,24(sp)
   10dac:	00812703          	lw	a4,8(sp)
   10db0:	00ecd463          	ble	a4,s9,10db8 <_vfprintf_r+0x9e8>
   10db4:	00070c93          	mv	s9,a4
   10db8:	01c12703          	lw	a4,28(sp)
   10dbc:	0197073b          	addw	a4,a4,s9
   10dc0:	00e12e23          	sw	a4,28(sp)
   10dc4:	52079863          	bnez	a5,112f4 <_vfprintf_r+0xf24>
   10dc8:	0009c783          	lbu	a5,0(s3)
   10dcc:	0a012c23          	sw	zero,184(sp)
   10dd0:	000b0893          	mv	a7,s6
   10dd4:	f2079263          	bnez	a5,104f8 <_vfprintf_r+0x128>
   10dd8:	00098413          	mv	s0,s3
   10ddc:	f80ff06f          	j	1055c <_vfprintf_r+0x18c>
   10de0:	00060463          	beqz	a2,10de8 <_vfprintf_r+0xa18>
   10de4:	22c0106f          	j	12010 <_vfprintf_r+0x1c40>
   10de8:	010c7793          	andi	a5,s8,16
   10dec:	12078e63          	beqz	a5,10f28 <_vfprintf_r+0xb58>
   10df0:	02813703          	ld	a4,40(sp)
   10df4:	00073783          	ld	a5,0(a4)
   10df8:	00870713          	addi	a4,a4,8
   10dfc:	02e13423          	sd	a4,40(sp)
   10e00:	1407c0e3          	bltz	a5,11740 <_vfprintf_r+0x1370>
   10e04:	08f14603          	lbu	a2,143(sp)
   10e08:	bc044ee3          	bltz	s0,109e4 <_vfprintf_r+0x614>
   10e0c:	f7fc7c13          	andi	s8,s8,-129
   10e10:	ae0798e3          	bnez	a5,10900 <_vfprintf_r+0x530>
   10e14:	6e041a63          	bnez	s0,11508 <_vfprintf_r+0x1138>
   10e18:	00000413          	li	s0,0
   10e1c:	02012023          	sw	zero,32(sp)
   10e20:	000b0913          	mv	s2,s6
   10e24:	9a9ff06f          	j	107cc <_vfprintf_r+0x3fc>
   10e28:	040c6c13          	ori	s8,s8,64
   10e2c:	f60ff06f          	j	1058c <_vfprintf_r+0x1bc>
   10e30:	00060463          	beqz	a2,10e38 <_vfprintf_r+0xa68>
   10e34:	1d40106f          	j	12008 <_vfprintf_r+0x1c38>
   10e38:	02813783          	ld	a5,40(sp)
   10e3c:	00100913          	li	s2,1
   10e40:	0007b787          	fld	fa5,0(a5)
   10e44:	00878793          	addi	a5,a5,8
   10e48:	01113023          	sd	a7,0(sp)
   10e4c:	04f13c27          	fsd	fa5,88(sp)
   10e50:	05813c83          	ld	s9,88(sp)
   10e54:	02f13423          	sd	a5,40(sp)
   10e58:	f20c8553          	fmv.d.x	fa0,s9
   10e5c:	2e8050ef          	jal	16144 <__fpclassifyd>
   10e60:	00013883          	ld	a7,0(sp)
   10e64:	0f251ce3          	bne	a0,s2,1175c <_vfprintf_r+0x138c>
   10e68:	f20007d3          	fmv.d.x	fa5,zero
   10e6c:	f20c8753          	fmv.d.x	fa4,s9
   10e70:	a2f717d3          	flt.d	a5,fa4,fa5
   10e74:	600792e3          	bnez	a5,11c78 <_vfprintf_r+0x18a8>
   10e78:	08f14603          	lbu	a2,143(sp)
   10e7c:	04700793          	li	a5,71
   10e80:	3da7d8e3          	ble	s10,a5,11a50 <_vfprintf_r+0x1680>
   10e84:	00019937          	lui	s2,0x19
   10e88:	26090913          	addi	s2,s2,608 # 19260 <zeroes.4137+0x20>
   10e8c:	00300793          	li	a5,3
   10e90:	00f12423          	sw	a5,8(sp)
   10e94:	f7fc7c13          	andi	s8,s8,-129
   10e98:	02f12023          	sw	a5,32(sp)
   10e9c:	00000413          	li	s0,0
   10ea0:	04012623          	sw	zero,76(sp)
   10ea4:	941ff06f          	j	107e4 <_vfprintf_r+0x414>
   10ea8:	008c6c13          	ori	s8,s8,8
   10eac:	ee0ff06f          	j	1058c <_vfprintf_r+0x1bc>
   10eb0:	00060463          	beqz	a2,10eb8 <_vfprintf_r+0xae8>
   10eb4:	1280106f          	j	11fdc <_vfprintf_r+0x1c0c>
   10eb8:	000197b7          	lui	a5,0x19
   10ebc:	29078793          	addi	a5,a5,656 # 19290 <zeroes.4137+0x50>
   10ec0:	02f13c23          	sd	a5,56(sp)
   10ec4:	010c7793          	andi	a5,s8,16
   10ec8:	b40792e3          	bnez	a5,10a0c <_vfprintf_r+0x63c>
   10ecc:	040c7793          	andi	a5,s8,64
   10ed0:	02813703          	ld	a4,40(sp)
   10ed4:	1c0784e3          	beqz	a5,1189c <_vfprintf_r+0x14cc>
   10ed8:	00075783          	lhu	a5,0(a4)
   10edc:	00870713          	addi	a4,a4,8
   10ee0:	02e13423          	sd	a4,40(sp)
   10ee4:	b39ff06f          	j	10a1c <_vfprintf_r+0x64c>
   10ee8:	00060463          	beqz	a2,10ef0 <_vfprintf_r+0xb20>
   10eec:	10c0106f          	j	11ff8 <_vfprintf_r+0x1c28>
   10ef0:	010c7793          	andi	a5,s8,16
   10ef4:	1a078ce3          	beqz	a5,118ac <_vfprintf_r+0x14dc>
   10ef8:	02813683          	ld	a3,40(sp)
   10efc:	01c12703          	lw	a4,28(sp)
   10f00:	0006b783          	ld	a5,0(a3)
   10f04:	00868693          	addi	a3,a3,8
   10f08:	02d13423          	sd	a3,40(sp)
   10f0c:	00e7b023          	sd	a4,0(a5)
   10f10:	de0ff06f          	j	104f0 <_vfprintf_r+0x120>
   10f14:	00060463          	beqz	a2,10f1c <_vfprintf_r+0xb4c>
   10f18:	0d40106f          	j	11fec <_vfprintf_r+0x1c1c>
   10f1c:	010c6c13          	ori	s8,s8,16
   10f20:	010c7793          	andi	a5,s8,16
   10f24:	ec0796e3          	bnez	a5,10df0 <_vfprintf_r+0xa20>
   10f28:	040c7793          	andi	a5,s8,64
   10f2c:	02813703          	ld	a4,40(sp)
   10f30:	1a0780e3          	beqz	a5,118d0 <_vfprintf_r+0x1500>
   10f34:	00071783          	lh	a5,0(a4)
   10f38:	00870713          	addi	a4,a4,8
   10f3c:	02e13423          	sd	a4,40(sp)
   10f40:	ec1ff06f          	j	10e00 <_vfprintf_r+0xa30>
   10f44:	00019737          	lui	a4,0x19
   10f48:	29070713          	addi	a4,a4,656 # 19290 <zeroes.4137+0x50>
   10f4c:	00000613          	li	a2,0
   10f50:	02e13c23          	sd	a4,56(sp)
   10f54:	07800d13          	li	s10,120
   10f58:	ee0ff06f          	j	10638 <_vfprintf_r+0x268>
   10f5c:	00060463          	beqz	a2,10f64 <_vfprintf_r+0xb94>
   10f60:	0c00106f          	j	12020 <_vfprintf_r+0x1c50>
   10f64:	f60d0263          	beqz	s10,106c8 <_vfprintf_r+0x2f8>
   10f68:	00100793          	li	a5,1
   10f6c:	00f12423          	sw	a5,8(sp)
   10f70:	0da10423          	sb	s10,200(sp)
   10f74:	080107a3          	sb	zero,143(sp)
   10f78:	00000613          	li	a2,0
   10f7c:	02f12023          	sw	a5,32(sp)
   10f80:	00000413          	li	s0,0
   10f84:	04012623          	sw	zero,76(sp)
   10f88:	0c810913          	addi	s2,sp,200
   10f8c:	afdff06f          	j	10a88 <_vfprintf_r+0x6b8>
   10f90:	02e13423          	sd	a4,40(sp)
   10f94:	00019737          	lui	a4,0x19
   10f98:	29070713          	addi	a4,a4,656 # 19290 <zeroes.4137+0x50>
   10f9c:	00068c13          	mv	s8,a3
   10fa0:	02e13c23          	sd	a4,56(sp)
   10fa4:	07800d13          	li	s10,120
   10fa8:	3a079a63          	bnez	a5,1135c <_vfprintf_r+0xf8c>
   10fac:	00000613          	li	a2,0
   10fb0:	00200793          	li	a5,2
   10fb4:	00100713          	li	a4,1
   10fb8:	54e78863          	beq	a5,a4,11508 <_vfprintf_r+0x1138>
   10fbc:	00200713          	li	a4,2
   10fc0:	e6e78a63          	beq	a5,a4,10634 <_vfprintf_r+0x264>
   10fc4:	00000793          	li	a5,0
   10fc8:	fc4ff06f          	j	1078c <_vfprintf_r+0x3bc>
   10fcc:	0c013783          	ld	a5,192(sp)
   10fd0:	ba1ff06f          	j	10b70 <_vfprintf_r+0x7a0>
   10fd4:	07012683          	lw	a3,112(sp)
   10fd8:	00100713          	li	a4,1
   10fdc:	00178793          	addi	a5,a5,1
   10fe0:	6cd75663          	ble	a3,a4,116ac <_vfprintf_r+0x12dc>
   10fe4:	0b812703          	lw	a4,184(sp)
   10fe8:	00100693          	li	a3,1
   10fec:	00d8b423          	sd	a3,8(a7)
   10ff0:	0017071b          	addiw	a4,a4,1
   10ff4:	0128b023          	sd	s2,0(a7)
   10ff8:	0cf13023          	sd	a5,192(sp)
   10ffc:	0ae12c23          	sw	a4,184(sp)
   11000:	00700693          	li	a3,7
   11004:	01088893          	addi	a7,a7,16
   11008:	6ce6ca63          	blt	a3,a4,116dc <_vfprintf_r+0x130c>
   1100c:	06813683          	ld	a3,104(sp)
   11010:	06013603          	ld	a2,96(sp)
   11014:	0017071b          	addiw	a4,a4,1
   11018:	00f687b3          	add	a5,a3,a5
   1101c:	00d8b423          	sd	a3,8(a7)
   11020:	00c8b023          	sd	a2,0(a7)
   11024:	0cf13023          	sd	a5,192(sp)
   11028:	0ae12c23          	sw	a4,184(sp)
   1102c:	00700693          	li	a3,7
   11030:	01088893          	addi	a7,a7,16
   11034:	6ee6c263          	blt	a3,a4,11718 <_vfprintf_r+0x1348>
   11038:	f20007d3          	fmv.d.x	fa5,zero
   1103c:	05813707          	fld	fa4,88(sp)
   11040:	a2f726d3          	feq.d	a3,fa4,fa5
   11044:	40069c63          	bnez	a3,1145c <_vfprintf_r+0x108c>
   11048:	07012683          	lw	a3,112(sp)
   1104c:	00190913          	addi	s2,s2,1
   11050:	0017071b          	addiw	a4,a4,1
   11054:	fff6869b          	addiw	a3,a3,-1
   11058:	00d787b3          	add	a5,a5,a3
   1105c:	0128b023          	sd	s2,0(a7)
   11060:	00d8b423          	sd	a3,8(a7)
   11064:	0cf13023          	sd	a5,192(sp)
   11068:	0ae12c23          	sw	a4,184(sp)
   1106c:	00700693          	li	a3,7
   11070:	26e6c063          	blt	a3,a4,112d0 <_vfprintf_r+0xf00>
   11074:	01088893          	addi	a7,a7,16
   11078:	07412683          	lw	a3,116(sp)
   1107c:	0a010613          	addi	a2,sp,160
   11080:	0017071b          	addiw	a4,a4,1
   11084:	00f687b3          	add	a5,a3,a5
   11088:	00c8b023          	sd	a2,0(a7)
   1108c:	00d8b423          	sd	a3,8(a7)
   11090:	0cf13023          	sd	a5,192(sp)
   11094:	0ae12c23          	sw	a4,184(sp)
   11098:	00700693          	li	a3,7
   1109c:	c4e6d2e3          	ble	a4,a3,10ce0 <_vfprintf_r+0x910>
   110a0:	0b010613          	addi	a2,sp,176
   110a4:	000a0593          	mv	a1,s4
   110a8:	000b8513          	mv	a0,s7
   110ac:	548050ef          	jal	165f4 <__sprint_r>
   110b0:	e2051863          	bnez	a0,106e0 <_vfprintf_r+0x310>
   110b4:	0c013783          	ld	a5,192(sp)
   110b8:	000b0893          	mv	a7,s6
   110bc:	c29ff06f          	j	10ce4 <_vfprintf_r+0x914>
   110c0:	06500713          	li	a4,101
   110c4:	f1a758e3          	ble	s10,a4,10fd4 <_vfprintf_r+0xc04>
   110c8:	f20007d3          	fmv.d.x	fa5,zero
   110cc:	05813707          	fld	fa4,88(sp)
   110d0:	a2f72753          	feq.d	a4,fa4,fa5
   110d4:	28070863          	beqz	a4,11364 <_vfprintf_r+0xf94>
   110d8:	0b812703          	lw	a4,184(sp)
   110dc:	000196b7          	lui	a3,0x19
   110e0:	2b068693          	addi	a3,a3,688 # 192b0 <zeroes.4137+0x70>
   110e4:	00d8b023          	sd	a3,0(a7)
   110e8:	00178793          	addi	a5,a5,1
   110ec:	00100693          	li	a3,1
   110f0:	0017071b          	addiw	a4,a4,1
   110f4:	00d8b423          	sd	a3,8(a7)
   110f8:	0cf13023          	sd	a5,192(sp)
   110fc:	0ae12c23          	sw	a4,184(sp)
   11100:	00700693          	li	a3,7
   11104:	01088893          	addi	a7,a7,16
   11108:	7ee6ca63          	blt	a3,a4,118fc <_vfprintf_r+0x152c>
   1110c:	09812703          	lw	a4,152(sp)
   11110:	07012683          	lw	a3,112(sp)
   11114:	00d74663          	blt	a4,a3,11120 <_vfprintf_r+0xd50>
   11118:	001c7713          	andi	a4,s8,1
   1111c:	bc0704e3          	beqz	a4,10ce4 <_vfprintf_r+0x914>
   11120:	06013703          	ld	a4,96(sp)
   11124:	06813683          	ld	a3,104(sp)
   11128:	01088893          	addi	a7,a7,16
   1112c:	fee8b823          	sd	a4,-16(a7)
   11130:	0b812703          	lw	a4,184(sp)
   11134:	00d787b3          	add	a5,a5,a3
   11138:	fed8bc23          	sd	a3,-8(a7)
   1113c:	0017071b          	addiw	a4,a4,1
   11140:	0cf13023          	sd	a5,192(sp)
   11144:	0ae12c23          	sw	a4,184(sp)
   11148:	00700693          	li	a3,7
   1114c:	1ce6c8e3          	blt	a3,a4,11b1c <_vfprintf_r+0x174c>
   11150:	07012703          	lw	a4,112(sp)
   11154:	fff7041b          	addiw	s0,a4,-1
   11158:	b88056e3          	blez	s0,10ce4 <_vfprintf_r+0x914>
   1115c:	01000713          	li	a4,16
   11160:	36875c63          	ble	s0,a4,114d8 <_vfprintf_r+0x1108>
   11164:	01000913          	li	s2,16
   11168:	0b812703          	lw	a4,184(sp)
   1116c:	00913823          	sd	s1,16(sp)
   11170:	00700d13          	li	s10,7
   11174:	00090693          	mv	a3,s2
   11178:	00c0006f          	j	11184 <_vfprintf_r+0xdb4>
   1117c:	ff04041b          	addiw	s0,s0,-16
   11180:	3686d063          	ble	s0,a3,114e0 <_vfprintf_r+0x1110>
   11184:	01078793          	addi	a5,a5,16
   11188:	0017071b          	addiw	a4,a4,1
   1118c:	0098b023          	sd	s1,0(a7)
   11190:	0128b423          	sd	s2,8(a7)
   11194:	0cf13023          	sd	a5,192(sp)
   11198:	0ae12c23          	sw	a4,184(sp)
   1119c:	01088893          	addi	a7,a7,16
   111a0:	fced5ee3          	ble	a4,s10,1117c <_vfprintf_r+0xdac>
   111a4:	0b010613          	addi	a2,sp,176
   111a8:	000a0593          	mv	a1,s4
   111ac:	000b8513          	mv	a0,s7
   111b0:	00d13023          	sd	a3,0(sp)
   111b4:	440050ef          	jal	165f4 <__sprint_r>
   111b8:	d2051463          	bnez	a0,106e0 <_vfprintf_r+0x310>
   111bc:	0c013783          	ld	a5,192(sp)
   111c0:	0b812703          	lw	a4,184(sp)
   111c4:	000b0893          	mv	a7,s6
   111c8:	00013683          	ld	a3,0(sp)
   111cc:	fb1ff06f          	j	1117c <_vfprintf_r+0xdac>
   111d0:	01812703          	lw	a4,24(sp)
   111d4:	00812683          	lw	a3,8(sp)
   111d8:	40d70cbb          	subw	s9,a4,a3
   111dc:	a19056e3          	blez	s9,10be8 <_vfprintf_r+0x818>
   111e0:	01000713          	li	a4,16
   111e4:	2f975ee3          	ble	s9,a4,11ce0 <_vfprintf_r+0x1910>
   111e8:	01000813          	li	a6,16
   111ec:	0b812703          	lw	a4,184(sp)
   111f0:	00913823          	sd	s1,16(sp)
   111f4:	00700313          	li	t1,7
   111f8:	00080d93          	mv	s11,a6
   111fc:	00c0006f          	j	11208 <_vfprintf_r+0xe38>
   11200:	ff0c8c9b          	addiw	s9,s9,-16
   11204:	059dde63          	ble	s9,s11,11260 <_vfprintf_r+0xe90>
   11208:	01078793          	addi	a5,a5,16
   1120c:	0017071b          	addiw	a4,a4,1
   11210:	0098b023          	sd	s1,0(a7)
   11214:	0108b423          	sd	a6,8(a7)
   11218:	0cf13023          	sd	a5,192(sp)
   1121c:	0ae12c23          	sw	a4,184(sp)
   11220:	01088893          	addi	a7,a7,16
   11224:	fce35ee3          	ble	a4,t1,11200 <_vfprintf_r+0xe30>
   11228:	0b010613          	addi	a2,sp,176
   1122c:	000a0593          	mv	a1,s4
   11230:	000b8513          	mv	a0,s7
   11234:	04613023          	sd	t1,64(sp)
   11238:	01013023          	sd	a6,0(sp)
   1123c:	3b8050ef          	jal	165f4 <__sprint_r>
   11240:	ca051063          	bnez	a0,106e0 <_vfprintf_r+0x310>
   11244:	ff0c8c9b          	addiw	s9,s9,-16
   11248:	0c013783          	ld	a5,192(sp)
   1124c:	0b812703          	lw	a4,184(sp)
   11250:	000b0893          	mv	a7,s6
   11254:	04013303          	ld	t1,64(sp)
   11258:	00013803          	ld	a6,0(sp)
   1125c:	fb9dc6e3          	blt	s11,s9,11208 <_vfprintf_r+0xe38>
   11260:	01013603          	ld	a2,16(sp)
   11264:	019787b3          	add	a5,a5,s9
   11268:	0017071b          	addiw	a4,a4,1
   1126c:	00c8b023          	sd	a2,0(a7)
   11270:	0198b423          	sd	s9,8(a7)
   11274:	0cf13023          	sd	a5,192(sp)
   11278:	0ae12c23          	sw	a4,184(sp)
   1127c:	00700693          	li	a3,7
   11280:	01088893          	addi	a7,a7,16
   11284:	96e6d2e3          	ble	a4,a3,10be8 <_vfprintf_r+0x818>
   11288:	0b010613          	addi	a2,sp,176
   1128c:	000a0593          	mv	a1,s4
   11290:	000b8513          	mv	a0,s7
   11294:	360050ef          	jal	165f4 <__sprint_r>
   11298:	c4051463          	bnez	a0,106e0 <_vfprintf_r+0x310>
   1129c:	0c013783          	ld	a5,192(sp)
   112a0:	000b0893          	mv	a7,s6
   112a4:	945ff06f          	j	10be8 <_vfprintf_r+0x818>
   112a8:	00913823          	sd	s1,16(sp)
   112ac:	01013683          	ld	a3,16(sp)
   112b0:	008787b3          	add	a5,a5,s0
   112b4:	0017071b          	addiw	a4,a4,1
   112b8:	00d8b023          	sd	a3,0(a7)
   112bc:	0088b423          	sd	s0,8(a7)
   112c0:	0cf13023          	sd	a5,192(sp)
   112c4:	0ae12c23          	sw	a4,184(sp)
   112c8:	00700693          	li	a3,7
   112cc:	dae6d4e3          	ble	a4,a3,11074 <_vfprintf_r+0xca4>
   112d0:	0b010613          	addi	a2,sp,176
   112d4:	000a0593          	mv	a1,s4
   112d8:	000b8513          	mv	a0,s7
   112dc:	318050ef          	jal	165f4 <__sprint_r>
   112e0:	c0051063          	bnez	a0,106e0 <_vfprintf_r+0x310>
   112e4:	0c013783          	ld	a5,192(sp)
   112e8:	0b812703          	lw	a4,184(sp)
   112ec:	000b0893          	mv	a7,s6
   112f0:	d89ff06f          	j	11078 <_vfprintf_r+0xca8>
   112f4:	0b010613          	addi	a2,sp,176
   112f8:	000a0593          	mv	a1,s4
   112fc:	000b8513          	mv	a0,s7
   11300:	2f4050ef          	jal	165f4 <__sprint_r>
   11304:	ac0502e3          	beqz	a0,10dc8 <_vfprintf_r+0x9f8>
   11308:	bd8ff06f          	j	106e0 <_vfprintf_r+0x310>
   1130c:	0b010613          	addi	a2,sp,176
   11310:	000a0593          	mv	a1,s4
   11314:	000b8513          	mv	a0,s7
   11318:	2dc050ef          	jal	165f4 <__sprint_r>
   1131c:	bc051263          	bnez	a0,106e0 <_vfprintf_r+0x310>
   11320:	0c013783          	ld	a5,192(sp)
   11324:	000b0893          	mv	a7,s6
   11328:	87dff06f          	j	10ba4 <_vfprintf_r+0x7d4>
   1132c:	0b010613          	addi	a2,sp,176
   11330:	000a0593          	mv	a1,s4
   11334:	000b8513          	mv	a0,s7
   11338:	2bc050ef          	jal	165f4 <__sprint_r>
   1133c:	ba051263          	bnez	a0,106e0 <_vfprintf_r+0x310>
   11340:	0c013783          	ld	a5,192(sp)
   11344:	000b0893          	mv	a7,s6
   11348:	895ff06f          	j	10bdc <_vfprintf_r+0x80c>
   1134c:	080107a3          	sb	zero,143(sp)
   11350:	c4044ce3          	bltz	s0,10fa8 <_vfprintf_r+0xbd8>
   11354:	f7fc7c13          	andi	s8,s8,-129
   11358:	ac078a63          	beqz	a5,1062c <_vfprintf_r+0x25c>
   1135c:	00000613          	li	a2,0
   11360:	ad8ff06f          	j	10638 <_vfprintf_r+0x268>
   11364:	09812403          	lw	s0,152(sp)
   11368:	5a805c63          	blez	s0,11920 <_vfprintf_r+0x1550>
   1136c:	04c12703          	lw	a4,76(sp)
   11370:	07012683          	lw	a3,112(sp)
   11374:	00070413          	mv	s0,a4
   11378:	00e6d463          	ble	a4,a3,11380 <_vfprintf_r+0xfb0>
   1137c:	00068413          	mv	s0,a3
   11380:	02805663          	blez	s0,113ac <_vfprintf_r+0xfdc>
   11384:	0b812703          	lw	a4,184(sp)
   11388:	008787b3          	add	a5,a5,s0
   1138c:	0128b023          	sd	s2,0(a7)
   11390:	0017071b          	addiw	a4,a4,1
   11394:	0088b423          	sd	s0,8(a7)
   11398:	0cf13023          	sd	a5,192(sp)
   1139c:	0ae12c23          	sw	a4,184(sp)
   113a0:	00700693          	li	a3,7
   113a4:	01088893          	addi	a7,a7,16
   113a8:	6ae6ca63          	blt	a3,a4,11a5c <_vfprintf_r+0x168c>
   113ac:	020448e3          	bltz	s0,11bdc <_vfprintf_r+0x180c>
   113b0:	04c12703          	lw	a4,76(sp)
   113b4:	4087043b          	subw	s0,a4,s0
   113b8:	1a805c63          	blez	s0,11570 <_vfprintf_r+0x11a0>
   113bc:	01000713          	li	a4,16
   113c0:	16875263          	ble	s0,a4,11524 <_vfprintf_r+0x1154>
   113c4:	01000d13          	li	s10,16
   113c8:	0b812703          	lw	a4,184(sp)
   113cc:	00913823          	sd	s1,16(sp)
   113d0:	00700693          	li	a3,7
   113d4:	000d0813          	mv	a6,s10
   113d8:	00c0006f          	j	113e4 <_vfprintf_r+0x1014>
   113dc:	ff04041b          	addiw	s0,s0,-16
   113e0:	14885663          	ble	s0,a6,1152c <_vfprintf_r+0x115c>
   113e4:	01078793          	addi	a5,a5,16
   113e8:	0017071b          	addiw	a4,a4,1
   113ec:	0098b023          	sd	s1,0(a7)
   113f0:	01a8b423          	sd	s10,8(a7)
   113f4:	0cf13023          	sd	a5,192(sp)
   113f8:	0ae12c23          	sw	a4,184(sp)
   113fc:	01088893          	addi	a7,a7,16
   11400:	fce6dee3          	ble	a4,a3,113dc <_vfprintf_r+0x100c>
   11404:	0b010613          	addi	a2,sp,176
   11408:	000a0593          	mv	a1,s4
   1140c:	000b8513          	mv	a0,s7
   11410:	03013023          	sd	a6,32(sp)
   11414:	00d13023          	sd	a3,0(sp)
   11418:	1dc050ef          	jal	165f4 <__sprint_r>
   1141c:	ac051263          	bnez	a0,106e0 <_vfprintf_r+0x310>
   11420:	0c013783          	ld	a5,192(sp)
   11424:	0b812703          	lw	a4,184(sp)
   11428:	000b0893          	mv	a7,s6
   1142c:	02013803          	ld	a6,32(sp)
   11430:	00013683          	ld	a3,0(sp)
   11434:	fa9ff06f          	j	113dc <_vfprintf_r+0x100c>
   11438:	0b010613          	addi	a2,sp,176
   1143c:	000a0593          	mv	a1,s4
   11440:	000b8513          	mv	a0,s7
   11444:	1b0050ef          	jal	165f4 <__sprint_r>
   11448:	a8051c63          	bnez	a0,106e0 <_vfprintf_r+0x310>
   1144c:	08f14603          	lbu	a2,143(sp)
   11450:	0c013783          	ld	a5,192(sp)
   11454:	000b0893          	mv	a7,s6
   11458:	f18ff06f          	j	10b70 <_vfprintf_r+0x7a0>
   1145c:	07012683          	lw	a3,112(sp)
   11460:	fff6841b          	addiw	s0,a3,-1
   11464:	c0805ae3          	blez	s0,11078 <_vfprintf_r+0xca8>
   11468:	01000693          	li	a3,16
   1146c:	e286dee3          	ble	s0,a3,112a8 <_vfprintf_r+0xed8>
   11470:	01000913          	li	s2,16
   11474:	00913823          	sd	s1,16(sp)
   11478:	00700d13          	li	s10,7
   1147c:	00090693          	mv	a3,s2
   11480:	00c0006f          	j	1148c <_vfprintf_r+0x10bc>
   11484:	ff04041b          	addiw	s0,s0,-16
   11488:	e286d2e3          	ble	s0,a3,112ac <_vfprintf_r+0xedc>
   1148c:	01078793          	addi	a5,a5,16
   11490:	0017071b          	addiw	a4,a4,1
   11494:	0098b023          	sd	s1,0(a7)
   11498:	0128b423          	sd	s2,8(a7)
   1149c:	0cf13023          	sd	a5,192(sp)
   114a0:	0ae12c23          	sw	a4,184(sp)
   114a4:	01088893          	addi	a7,a7,16
   114a8:	fced5ee3          	ble	a4,s10,11484 <_vfprintf_r+0x10b4>
   114ac:	0b010613          	addi	a2,sp,176
   114b0:	000a0593          	mv	a1,s4
   114b4:	000b8513          	mv	a0,s7
   114b8:	00d13023          	sd	a3,0(sp)
   114bc:	138050ef          	jal	165f4 <__sprint_r>
   114c0:	a2051063          	bnez	a0,106e0 <_vfprintf_r+0x310>
   114c4:	0c013783          	ld	a5,192(sp)
   114c8:	0b812703          	lw	a4,184(sp)
   114cc:	000b0893          	mv	a7,s6
   114d0:	00013683          	ld	a3,0(sp)
   114d4:	fb1ff06f          	j	11484 <_vfprintf_r+0x10b4>
   114d8:	0b812703          	lw	a4,184(sp)
   114dc:	00913823          	sd	s1,16(sp)
   114e0:	01013683          	ld	a3,16(sp)
   114e4:	008787b3          	add	a5,a5,s0
   114e8:	0088b423          	sd	s0,8(a7)
   114ec:	00d8b023          	sd	a3,0(a7)
   114f0:	0017071b          	addiw	a4,a4,1
   114f4:	0cf13023          	sd	a5,192(sp)
   114f8:	0ae12c23          	sw	a4,184(sp)
   114fc:	00700693          	li	a3,7
   11500:	fee6d063          	ble	a4,a3,10ce0 <_vfprintf_r+0x910>
   11504:	b9dff06f          	j	110a0 <_vfprintf_r+0xcd0>
   11508:	00000793          	li	a5,0
   1150c:	0307879b          	addiw	a5,a5,48
   11510:	0ef107a3          	sb	a5,239(sp)
   11514:	07813783          	ld	a5,120(sp)
   11518:	0ef10913          	addi	s2,sp,239
   1151c:	02f12023          	sw	a5,32(sp)
   11520:	aacff06f          	j	107cc <_vfprintf_r+0x3fc>
   11524:	0b812703          	lw	a4,184(sp)
   11528:	00913823          	sd	s1,16(sp)
   1152c:	01013683          	ld	a3,16(sp)
   11530:	008787b3          	add	a5,a5,s0
   11534:	0017071b          	addiw	a4,a4,1
   11538:	00d8b023          	sd	a3,0(a7)
   1153c:	0088b423          	sd	s0,8(a7)
   11540:	0cf13023          	sd	a5,192(sp)
   11544:	0ae12c23          	sw	a4,184(sp)
   11548:	00700693          	li	a3,7
   1154c:	01088893          	addi	a7,a7,16
   11550:	02e6d063          	ble	a4,a3,11570 <_vfprintf_r+0x11a0>
   11554:	0b010613          	addi	a2,sp,176
   11558:	000a0593          	mv	a1,s4
   1155c:	000b8513          	mv	a0,s7
   11560:	094050ef          	jal	165f4 <__sprint_r>
   11564:	96051e63          	bnez	a0,106e0 <_vfprintf_r+0x310>
   11568:	0c013783          	ld	a5,192(sp)
   1156c:	000b0893          	mv	a7,s6
   11570:	04c12d03          	lw	s10,76(sp)
   11574:	09812703          	lw	a4,152(sp)
   11578:	07012683          	lw	a3,112(sp)
   1157c:	01a90d33          	add	s10,s2,s10
   11580:	0cd74a63          	blt	a4,a3,11654 <_vfprintf_r+0x1284>
   11584:	001c7693          	andi	a3,s8,1
   11588:	0c069663          	bnez	a3,11654 <_vfprintf_r+0x1284>
   1158c:	07012683          	lw	a3,112(sp)
   11590:	00d90433          	add	s0,s2,a3
   11594:	41a40433          	sub	s0,s0,s10
   11598:	40e6873b          	subw	a4,a3,a4
   1159c:	0004041b          	sext.w	s0,s0
   115a0:	00875463          	ble	s0,a4,115a8 <_vfprintf_r+0x11d8>
   115a4:	00070413          	mv	s0,a4
   115a8:	02805663          	blez	s0,115d4 <_vfprintf_r+0x1204>
   115ac:	0b812683          	lw	a3,184(sp)
   115b0:	008787b3          	add	a5,a5,s0
   115b4:	01a8b023          	sd	s10,0(a7)
   115b8:	0016869b          	addiw	a3,a3,1
   115bc:	0088b423          	sd	s0,8(a7)
   115c0:	0cf13023          	sd	a5,192(sp)
   115c4:	0ad12c23          	sw	a3,184(sp)
   115c8:	00700613          	li	a2,7
   115cc:	01088893          	addi	a7,a7,16
   115d0:	4cd64263          	blt	a2,a3,11a94 <_vfprintf_r+0x16c4>
   115d4:	60044863          	bltz	s0,11be4 <_vfprintf_r+0x1814>
   115d8:	4087043b          	subw	s0,a4,s0
   115dc:	f0805463          	blez	s0,10ce4 <_vfprintf_r+0x914>
   115e0:	01000713          	li	a4,16
   115e4:	ee875ae3          	ble	s0,a4,114d8 <_vfprintf_r+0x1108>
   115e8:	01000913          	li	s2,16
   115ec:	0b812703          	lw	a4,184(sp)
   115f0:	00913823          	sd	s1,16(sp)
   115f4:	00700d13          	li	s10,7
   115f8:	00090693          	mv	a3,s2
   115fc:	00c0006f          	j	11608 <_vfprintf_r+0x1238>
   11600:	ff04041b          	addiw	s0,s0,-16
   11604:	ec86dee3          	ble	s0,a3,114e0 <_vfprintf_r+0x1110>
   11608:	01078793          	addi	a5,a5,16
   1160c:	0017071b          	addiw	a4,a4,1
   11610:	0098b023          	sd	s1,0(a7)
   11614:	0128b423          	sd	s2,8(a7)
   11618:	0cf13023          	sd	a5,192(sp)
   1161c:	0ae12c23          	sw	a4,184(sp)
   11620:	01088893          	addi	a7,a7,16
   11624:	fced5ee3          	ble	a4,s10,11600 <_vfprintf_r+0x1230>
   11628:	0b010613          	addi	a2,sp,176
   1162c:	000a0593          	mv	a1,s4
   11630:	000b8513          	mv	a0,s7
   11634:	00d13023          	sd	a3,0(sp)
   11638:	7bd040ef          	jal	165f4 <__sprint_r>
   1163c:	8a051263          	bnez	a0,106e0 <_vfprintf_r+0x310>
   11640:	0c013783          	ld	a5,192(sp)
   11644:	0b812703          	lw	a4,184(sp)
   11648:	000b0893          	mv	a7,s6
   1164c:	00013683          	ld	a3,0(sp)
   11650:	fb1ff06f          	j	11600 <_vfprintf_r+0x1230>
   11654:	06013683          	ld	a3,96(sp)
   11658:	06813603          	ld	a2,104(sp)
   1165c:	01088893          	addi	a7,a7,16
   11660:	fed8b823          	sd	a3,-16(a7)
   11664:	0b812683          	lw	a3,184(sp)
   11668:	00c787b3          	add	a5,a5,a2
   1166c:	fec8bc23          	sd	a2,-8(a7)
   11670:	0016869b          	addiw	a3,a3,1
   11674:	0cf13023          	sd	a5,192(sp)
   11678:	0ad12c23          	sw	a3,184(sp)
   1167c:	00700613          	li	a2,7
   11680:	f0d656e3          	ble	a3,a2,1158c <_vfprintf_r+0x11bc>
   11684:	0b010613          	addi	a2,sp,176
   11688:	000a0593          	mv	a1,s4
   1168c:	000b8513          	mv	a0,s7
   11690:	765040ef          	jal	165f4 <__sprint_r>
   11694:	00050463          	beqz	a0,1169c <_vfprintf_r+0x12cc>
   11698:	848ff06f          	j	106e0 <_vfprintf_r+0x310>
   1169c:	09812703          	lw	a4,152(sp)
   116a0:	0c013783          	ld	a5,192(sp)
   116a4:	000b0893          	mv	a7,s6
   116a8:	ee5ff06f          	j	1158c <_vfprintf_r+0x11bc>
   116ac:	00ec7733          	and	a4,s8,a4
   116b0:	92071ae3          	bnez	a4,10fe4 <_vfprintf_r+0xc14>
   116b4:	0b812703          	lw	a4,184(sp)
   116b8:	0128b023          	sd	s2,0(a7)
   116bc:	00100693          	li	a3,1
   116c0:	0017071b          	addiw	a4,a4,1
   116c4:	99dff06f          	j	11060 <_vfprintf_r+0xc90>
   116c8:	02813783          	ld	a5,40(sp)
   116cc:	00878713          	addi	a4,a5,8
   116d0:	0007e783          	lwu	a5,0(a5)
   116d4:	a0045e63          	bgez	s0,108f0 <_vfprintf_r+0x520>
   116d8:	b04ff06f          	j	109dc <_vfprintf_r+0x60c>
   116dc:	0b010613          	addi	a2,sp,176
   116e0:	000a0593          	mv	a1,s4
   116e4:	000b8513          	mv	a0,s7
   116e8:	70d040ef          	jal	165f4 <__sprint_r>
   116ec:	00050463          	beqz	a0,116f4 <_vfprintf_r+0x1324>
   116f0:	ff1fe06f          	j	106e0 <_vfprintf_r+0x310>
   116f4:	0c013783          	ld	a5,192(sp)
   116f8:	0b812703          	lw	a4,184(sp)
   116fc:	000b0893          	mv	a7,s6
   11700:	90dff06f          	j	1100c <_vfprintf_r+0xc3c>
   11704:	02813783          	ld	a5,40(sp)
   11708:	00878713          	addi	a4,a5,8
   1170c:	0007e783          	lwu	a5,0(a5)
   11710:	86045063          	bgez	s0,10770 <_vfprintf_r+0x3a0>
   11714:	a84ff06f          	j	10998 <_vfprintf_r+0x5c8>
   11718:	0b010613          	addi	a2,sp,176
   1171c:	000a0593          	mv	a1,s4
   11720:	000b8513          	mv	a0,s7
   11724:	6d1040ef          	jal	165f4 <__sprint_r>
   11728:	00050463          	beqz	a0,11730 <_vfprintf_r+0x1360>
   1172c:	fb5fe06f          	j	106e0 <_vfprintf_r+0x310>
   11730:	0c013783          	ld	a5,192(sp)
   11734:	0b812703          	lw	a4,184(sp)
   11738:	000b0893          	mv	a7,s6
   1173c:	8fdff06f          	j	11038 <_vfprintf_r+0xc68>
   11740:	02d00713          	li	a4,45
   11744:	08e107a3          	sb	a4,143(sp)
   11748:	40f007b3          	neg	a5,a5
   1174c:	4a044063          	bltz	s0,11bec <_vfprintf_r+0x181c>
   11750:	f7fc7c13          	andi	s8,s8,-129
   11754:	02d00613          	li	a2,45
   11758:	9a8ff06f          	j	10900 <_vfprintf_r+0x530>
   1175c:	05813507          	fld	fa0,88(sp)
   11760:	01113023          	sd	a7,0(sp)
   11764:	1e1040ef          	jal	16144 <__fpclassifyd>
   11768:	00013883          	ld	a7,0(sp)
   1176c:	2a050463          	beqz	a0,11a14 <_vfprintf_r+0x1644>
   11770:	fff00793          	li	a5,-1
   11774:	fdfd7d93          	andi	s11,s10,-33
   11778:	62f40c63          	beq	s0,a5,11db0 <_vfprintf_r+0x19e0>
   1177c:	04700793          	li	a5,71
   11780:	62fd8263          	beq	s11,a5,11da4 <_vfprintf_r+0x19d4>
   11784:	05813703          	ld	a4,88(sp)
   11788:	100c6693          	ori	a3,s8,256
   1178c:	00d12023          	sw	a3,0(sp)
   11790:	42075793          	srai	a5,a4,0x20
   11794:	f2070453          	fmv.d.x	fs0,a4
   11798:	00000c93          	li	s9,0
   1179c:	6607c663          	bltz	a5,11e08 <_vfprintf_r+0x1a38>
   117a0:	06600793          	li	a5,102
   117a4:	60fd0a63          	beq	s10,a5,11db8 <_vfprintf_r+0x19e8>
   117a8:	04600793          	li	a5,70
   117ac:	72fd0863          	beq	s10,a5,11edc <_vfprintf_r+0x1b0c>
   117b0:	fbbd859b          	addiw	a1,s11,-69
   117b4:	0015b593          	seqz	a1,a1
   117b8:	228405d3          	fmv.d	fa1,fs0
   117bc:	00b405bb          	addw	a1,s0,a1
   117c0:	09c10793          	addi	a5,sp,156
   117c4:	00058693          	mv	a3,a1
   117c8:	0a810813          	addi	a6,sp,168
   117cc:	09810713          	addi	a4,sp,152
   117d0:	00200613          	li	a2,2
   117d4:	000b8513          	mv	a0,s7
   117d8:	01113823          	sd	a7,16(sp)
   117dc:	00b13423          	sd	a1,8(sp)
   117e0:	745000ef          	jal	12724 <_dtoa_r>
   117e4:	06700793          	li	a5,103
   117e8:	00050913          	mv	s2,a0
   117ec:	00813583          	ld	a1,8(sp)
   117f0:	01013883          	ld	a7,16(sp)
   117f4:	46fd0863          	beq	s10,a5,11c64 <_vfprintf_r+0x1894>
   117f8:	04700793          	li	a5,71
   117fc:	00b50733          	add	a4,a0,a1
   11800:	48fd0a63          	beq	s10,a5,11c94 <_vfprintf_r+0x18c4>
   11804:	f20007d3          	fmv.d.x	fa5,zero
   11808:	00070793          	mv	a5,a4
   1180c:	a2f426d3          	feq.d	a3,fs0,fa5
   11810:	02069263          	bnez	a3,11834 <_vfprintf_r+0x1464>
   11814:	0a813783          	ld	a5,168(sp)
   11818:	00e7fe63          	bleu	a4,a5,11834 <_vfprintf_r+0x1464>
   1181c:	03000613          	li	a2,48
   11820:	00178693          	addi	a3,a5,1
   11824:	0ad13423          	sd	a3,168(sp)
   11828:	00c78023          	sb	a2,0(a5)
   1182c:	0a813783          	ld	a5,168(sp)
   11830:	fee7e8e3          	bltu	a5,a4,11820 <_vfprintf_r+0x1450>
   11834:	412787b3          	sub	a5,a5,s2
   11838:	06f12823          	sw	a5,112(sp)
   1183c:	04700793          	li	a5,71
   11840:	46fd8663          	beq	s11,a5,11cac <_vfprintf_r+0x18dc>
   11844:	06500793          	li	a5,101
   11848:	7ba7dc63          	ble	s10,a5,12000 <_vfprintf_r+0x1c30>
   1184c:	06600793          	li	a5,102
   11850:	60fd0263          	beq	s10,a5,11e54 <_vfprintf_r+0x1a84>
   11854:	09812783          	lw	a5,152(sp)
   11858:	04f12623          	sw	a5,76(sp)
   1185c:	04c12703          	lw	a4,76(sp)
   11860:	07012683          	lw	a3,112(sp)
   11864:	00070793          	mv	a5,a4
   11868:	5ad74663          	blt	a4,a3,11e14 <_vfprintf_r+0x1a44>
   1186c:	001c7c13          	andi	s8,s8,1
   11870:	5c0c1463          	bnez	s8,11e38 <_vfprintf_r+0x1a68>
   11874:	76074863          	bltz	a4,11fe4 <_vfprintf_r+0x1c14>
   11878:	04c12703          	lw	a4,76(sp)
   1187c:	06700d13          	li	s10,103
   11880:	02e12023          	sw	a4,32(sp)
   11884:	440c9063          	bnez	s9,11cc4 <_vfprintf_r+0x18f4>
   11888:	08f14603          	lbu	a2,143(sp)
   1188c:	00f12423          	sw	a5,8(sp)
   11890:	00012c03          	lw	s8,0(sp)
   11894:	00000413          	li	s0,0
   11898:	f4dfe06f          	j	107e4 <_vfprintf_r+0x414>
   1189c:	00076783          	lwu	a5,0(a4)
   118a0:	00870713          	addi	a4,a4,8
   118a4:	02e13423          	sd	a4,40(sp)
   118a8:	974ff06f          	j	10a1c <_vfprintf_r+0x64c>
   118ac:	02813703          	ld	a4,40(sp)
   118b0:	040c7c13          	andi	s8,s8,64
   118b4:	00073783          	ld	a5,0(a4)
   118b8:	00870713          	addi	a4,a4,8
   118bc:	02e13423          	sd	a4,40(sp)
   118c0:	180c0263          	beqz	s8,11a44 <_vfprintf_r+0x1674>
   118c4:	01c15703          	lhu	a4,28(sp)
   118c8:	00e79023          	sh	a4,0(a5)
   118cc:	c25fe06f          	j	104f0 <_vfprintf_r+0x120>
   118d0:	00072783          	lw	a5,0(a4)
   118d4:	00870713          	addi	a4,a4,8
   118d8:	02e13423          	sd	a4,40(sp)
   118dc:	d24ff06f          	j	10e00 <_vfprintf_r+0xa30>
   118e0:	080107a3          	sb	zero,143(sp)
   118e4:	ec044463          	bltz	s0,10fac <_vfprintf_r+0xbdc>
   118e8:	f7fc7c13          	andi	s8,s8,-129
   118ec:	d41fe06f          	j	1062c <_vfprintf_r+0x25c>
   118f0:	0b812703          	lw	a4,184(sp)
   118f4:	00913823          	sd	s1,16(sp)
   118f8:	b74ff06f          	j	10c6c <_vfprintf_r+0x89c>
   118fc:	0b010613          	addi	a2,sp,176
   11900:	000a0593          	mv	a1,s4
   11904:	000b8513          	mv	a0,s7
   11908:	4ed040ef          	jal	165f4 <__sprint_r>
   1190c:	00050463          	beqz	a0,11914 <_vfprintf_r+0x1544>
   11910:	dd1fe06f          	j	106e0 <_vfprintf_r+0x310>
   11914:	0c013783          	ld	a5,192(sp)
   11918:	000b0893          	mv	a7,s6
   1191c:	ff0ff06f          	j	1110c <_vfprintf_r+0xd3c>
   11920:	0b812703          	lw	a4,184(sp)
   11924:	000196b7          	lui	a3,0x19
   11928:	2b068693          	addi	a3,a3,688 # 192b0 <zeroes.4137+0x70>
   1192c:	00d8b023          	sd	a3,0(a7)
   11930:	00178793          	addi	a5,a5,1
   11934:	00100693          	li	a3,1
   11938:	0017071b          	addiw	a4,a4,1
   1193c:	00d8b423          	sd	a3,8(a7)
   11940:	0cf13023          	sd	a5,192(sp)
   11944:	0ae12c23          	sw	a4,184(sp)
   11948:	00700693          	li	a3,7
   1194c:	01088893          	addi	a7,a7,16
   11950:	16e6ca63          	blt	a3,a4,11ac4 <_vfprintf_r+0x16f4>
   11954:	12040663          	beqz	s0,11a80 <_vfprintf_r+0x16b0>
   11958:	06013703          	ld	a4,96(sp)
   1195c:	06813683          	ld	a3,104(sp)
   11960:	01088893          	addi	a7,a7,16
   11964:	fee8b823          	sd	a4,-16(a7)
   11968:	0b812703          	lw	a4,184(sp)
   1196c:	00f687b3          	add	a5,a3,a5
   11970:	fed8bc23          	sd	a3,-8(a7)
   11974:	0017071b          	addiw	a4,a4,1
   11978:	0cf13023          	sd	a5,192(sp)
   1197c:	0ae12c23          	sw	a4,184(sp)
   11980:	00700693          	li	a3,7
   11984:	3ee6ca63          	blt	a3,a4,11d78 <_vfprintf_r+0x19a8>
   11988:	4080043b          	negw	s0,s0
   1198c:	20805263          	blez	s0,11b90 <_vfprintf_r+0x17c0>
   11990:	01000693          	li	a3,16
   11994:	1a86d663          	ble	s0,a3,11b40 <_vfprintf_r+0x1770>
   11998:	01000d13          	li	s10,16
   1199c:	00913823          	sd	s1,16(sp)
   119a0:	00700813          	li	a6,7
   119a4:	000d0693          	mv	a3,s10
   119a8:	00c0006f          	j	119b4 <_vfprintf_r+0x15e4>
   119ac:	ff04041b          	addiw	s0,s0,-16
   119b0:	1886da63          	ble	s0,a3,11b44 <_vfprintf_r+0x1774>
   119b4:	01078793          	addi	a5,a5,16
   119b8:	0017071b          	addiw	a4,a4,1
   119bc:	0098b023          	sd	s1,0(a7)
   119c0:	01a8b423          	sd	s10,8(a7)
   119c4:	0cf13023          	sd	a5,192(sp)
   119c8:	0ae12c23          	sw	a4,184(sp)
   119cc:	01088893          	addi	a7,a7,16
   119d0:	fce85ee3          	ble	a4,a6,119ac <_vfprintf_r+0x15dc>
   119d4:	0b010613          	addi	a2,sp,176
   119d8:	000a0593          	mv	a1,s4
   119dc:	000b8513          	mv	a0,s7
   119e0:	02d13023          	sd	a3,32(sp)
   119e4:	01013023          	sd	a6,0(sp)
   119e8:	40d040ef          	jal	165f4 <__sprint_r>
   119ec:	00050463          	beqz	a0,119f4 <_vfprintf_r+0x1624>
   119f0:	cf1fe06f          	j	106e0 <_vfprintf_r+0x310>
   119f4:	0c013783          	ld	a5,192(sp)
   119f8:	0b812703          	lw	a4,184(sp)
   119fc:	000b0893          	mv	a7,s6
   11a00:	02013683          	ld	a3,32(sp)
   11a04:	00013803          	ld	a6,0(sp)
   11a08:	fa5ff06f          	j	119ac <_vfprintf_r+0x15dc>
   11a0c:	fff00513          	li	a0,-1
   11a10:	ce5fe06f          	j	106f4 <_vfprintf_r+0x324>
   11a14:	04700793          	li	a5,71
   11a18:	27a7c863          	blt	a5,s10,11c88 <_vfprintf_r+0x18b8>
   11a1c:	00019937          	lui	s2,0x19
   11a20:	26890913          	addi	s2,s2,616 # 19268 <zeroes.4137+0x28>
   11a24:	00300793          	li	a5,3
   11a28:	00f12423          	sw	a5,8(sp)
   11a2c:	f7fc7c13          	andi	s8,s8,-129
   11a30:	08f14603          	lbu	a2,143(sp)
   11a34:	02f12023          	sw	a5,32(sp)
   11a38:	00000413          	li	s0,0
   11a3c:	04012623          	sw	zero,76(sp)
   11a40:	da5fe06f          	j	107e4 <_vfprintf_r+0x414>
   11a44:	01c12703          	lw	a4,28(sp)
   11a48:	00e7a023          	sw	a4,0(a5)
   11a4c:	aa5fe06f          	j	104f0 <_vfprintf_r+0x120>
   11a50:	00019937          	lui	s2,0x19
   11a54:	25890913          	addi	s2,s2,600 # 19258 <zeroes.4137+0x18>
   11a58:	c34ff06f          	j	10e8c <_vfprintf_r+0xabc>
   11a5c:	0b010613          	addi	a2,sp,176
   11a60:	000a0593          	mv	a1,s4
   11a64:	000b8513          	mv	a0,s7
   11a68:	38d040ef          	jal	165f4 <__sprint_r>
   11a6c:	00050463          	beqz	a0,11a74 <_vfprintf_r+0x16a4>
   11a70:	c71fe06f          	j	106e0 <_vfprintf_r+0x310>
   11a74:	0c013783          	ld	a5,192(sp)
   11a78:	000b0893          	mv	a7,s6
   11a7c:	931ff06f          	j	113ac <_vfprintf_r+0xfdc>
   11a80:	07012703          	lw	a4,112(sp)
   11a84:	ec071ae3          	bnez	a4,11958 <_vfprintf_r+0x1588>
   11a88:	001c7713          	andi	a4,s8,1
   11a8c:	a4070c63          	beqz	a4,10ce4 <_vfprintf_r+0x914>
   11a90:	ec9ff06f          	j	11958 <_vfprintf_r+0x1588>
   11a94:	0b010613          	addi	a2,sp,176
   11a98:	000a0593          	mv	a1,s4
   11a9c:	000b8513          	mv	a0,s7
   11aa0:	355040ef          	jal	165f4 <__sprint_r>
   11aa4:	00050463          	beqz	a0,11aac <_vfprintf_r+0x16dc>
   11aa8:	c39fe06f          	j	106e0 <_vfprintf_r+0x310>
   11aac:	09812703          	lw	a4,152(sp)
   11ab0:	07012683          	lw	a3,112(sp)
   11ab4:	0c013783          	ld	a5,192(sp)
   11ab8:	000b0893          	mv	a7,s6
   11abc:	40e6873b          	subw	a4,a3,a4
   11ac0:	b15ff06f          	j	115d4 <_vfprintf_r+0x1204>
   11ac4:	0b010613          	addi	a2,sp,176
   11ac8:	000a0593          	mv	a1,s4
   11acc:	000b8513          	mv	a0,s7
   11ad0:	325040ef          	jal	165f4 <__sprint_r>
   11ad4:	00050463          	beqz	a0,11adc <_vfprintf_r+0x170c>
   11ad8:	c09fe06f          	j	106e0 <_vfprintf_r+0x310>
   11adc:	09812403          	lw	s0,152(sp)
   11ae0:	0c013783          	ld	a5,192(sp)
   11ae4:	000b0893          	mv	a7,s6
   11ae8:	e60418e3          	bnez	s0,11958 <_vfprintf_r+0x1588>
   11aec:	f95ff06f          	j	11a80 <_vfprintf_r+0x16b0>
   11af0:	001c7793          	andi	a5,s8,1
   11af4:	00078e63          	beqz	a5,11b10 <_vfprintf_r+0x1740>
   11af8:	03000793          	li	a5,48
   11afc:	0ef107a3          	sb	a5,239(sp)
   11b00:	07813783          	ld	a5,120(sp)
   11b04:	0ef10913          	addi	s2,sp,239
   11b08:	02f12023          	sw	a5,32(sp)
   11b0c:	cc1fe06f          	j	107cc <_vfprintf_r+0x3fc>
   11b10:	02012023          	sw	zero,32(sp)
   11b14:	000b0913          	mv	s2,s6
   11b18:	cb5fe06f          	j	107cc <_vfprintf_r+0x3fc>
   11b1c:	0b010613          	addi	a2,sp,176
   11b20:	000a0593          	mv	a1,s4
   11b24:	000b8513          	mv	a0,s7
   11b28:	2cd040ef          	jal	165f4 <__sprint_r>
   11b2c:	00050463          	beqz	a0,11b34 <_vfprintf_r+0x1764>
   11b30:	bb1fe06f          	j	106e0 <_vfprintf_r+0x310>
   11b34:	0c013783          	ld	a5,192(sp)
   11b38:	000b0893          	mv	a7,s6
   11b3c:	e14ff06f          	j	11150 <_vfprintf_r+0xd80>
   11b40:	00913823          	sd	s1,16(sp)
   11b44:	01013683          	ld	a3,16(sp)
   11b48:	008787b3          	add	a5,a5,s0
   11b4c:	0017071b          	addiw	a4,a4,1
   11b50:	00d8b023          	sd	a3,0(a7)
   11b54:	0088b423          	sd	s0,8(a7)
   11b58:	0cf13023          	sd	a5,192(sp)
   11b5c:	0ae12c23          	sw	a4,184(sp)
   11b60:	00700693          	li	a3,7
   11b64:	01088893          	addi	a7,a7,16
   11b68:	02e6d463          	ble	a4,a3,11b90 <_vfprintf_r+0x17c0>
   11b6c:	0b010613          	addi	a2,sp,176
   11b70:	000a0593          	mv	a1,s4
   11b74:	000b8513          	mv	a0,s7
   11b78:	27d040ef          	jal	165f4 <__sprint_r>
   11b7c:	00050463          	beqz	a0,11b84 <_vfprintf_r+0x17b4>
   11b80:	b61fe06f          	j	106e0 <_vfprintf_r+0x310>
   11b84:	0c013783          	ld	a5,192(sp)
   11b88:	0b812703          	lw	a4,184(sp)
   11b8c:	000b0893          	mv	a7,s6
   11b90:	07012683          	lw	a3,112(sp)
   11b94:	0017071b          	addiw	a4,a4,1
   11b98:	0128b023          	sd	s2,0(a7)
   11b9c:	00f687b3          	add	a5,a3,a5
   11ba0:	cecff06f          	j	1108c <_vfprintf_r+0xcbc>
   11ba4:	00090513          	mv	a0,s2
   11ba8:	091040ef          	jal	16438 <strlen>
   11bac:	0005079b          	sext.w	a5,a0
   11bb0:	02f12023          	sw	a5,32(sp)
   11bb4:	00078d93          	mv	s11,a5
   11bb8:	00013883          	ld	a7,0(sp)
   11bbc:	0007c463          	bltz	a5,11bc4 <_vfprintf_r+0x17f4>
   11bc0:	cf5fe06f          	j	108b4 <_vfprintf_r+0x4e4>
   11bc4:	00000d93          	li	s11,0
   11bc8:	cedfe06f          	j	108b4 <_vfprintf_r+0x4e4>
   11bcc:	0c013783          	ld	a5,192(sp)
   11bd0:	0b812703          	lw	a4,184(sp)
   11bd4:	05513823          	sd	s5,80(sp)
   11bd8:	f6dfe06f          	j	10b44 <_vfprintf_r+0x774>
   11bdc:	00000413          	li	s0,0
   11be0:	fd0ff06f          	j	113b0 <_vfprintf_r+0xfe0>
   11be4:	00000413          	li	s0,0
   11be8:	9f1ff06f          	j	115d8 <_vfprintf_r+0x1208>
   11bec:	02d00613          	li	a2,45
   11bf0:	00100713          	li	a4,1
   11bf4:	00100693          	li	a3,1
   11bf8:	00d71463          	bne	a4,a3,11c00 <_vfprintf_r+0x1830>
   11bfc:	d05fe06f          	j	10900 <_vfprintf_r+0x530>
   11c00:	00200693          	li	a3,2
   11c04:	00d71463          	bne	a4,a3,11c0c <_vfprintf_r+0x183c>
   11c08:	a31fe06f          	j	10638 <_vfprintf_r+0x268>
   11c0c:	b81fe06f          	j	1078c <_vfprintf_r+0x3bc>
   11c10:	00600713          	li	a4,6
   11c14:	00877463          	bleu	s0,a4,11c1c <_vfprintf_r+0x184c>
   11c18:	00070413          	mv	s0,a4
   11c1c:	02812023          	sw	s0,32(sp)
   11c20:	00040d93          	mv	s11,s0
   11c24:	32044a63          	bltz	s0,11f58 <_vfprintf_r+0x1b88>
   11c28:	00019937          	lui	s2,0x19
   11c2c:	01b12423          	sw	s11,8(sp)
   11c30:	03913423          	sd	s9,40(sp)
   11c34:	00000613          	li	a2,0
   11c38:	00000413          	li	s0,0
   11c3c:	04012623          	sw	zero,76(sp)
   11c40:	2a890913          	addi	s2,s2,680 # 192a8 <zeroes.4137+0x68>
   11c44:	e45fe06f          	j	10a88 <_vfprintf_r+0x6b8>
   11c48:	0b812703          	lw	a4,184(sp)
   11c4c:	05513823          	sd	s5,80(sp)
   11c50:	91cff06f          	j	10d6c <_vfprintf_r+0x99c>
   11c54:	00070c13          	mv	s8,a4
   11c58:	00000613          	li	a2,0
   11c5c:	00200713          	li	a4,2
   11c60:	f95ff06f          	j	11bf4 <_vfprintf_r+0x1824>
   11c64:	001c7793          	andi	a5,s8,1
   11c68:	00b50733          	add	a4,a0,a1
   11c6c:	b8079ce3          	bnez	a5,11804 <_vfprintf_r+0x1434>
   11c70:	0a813783          	ld	a5,168(sp)
   11c74:	bc1ff06f          	j	11834 <_vfprintf_r+0x1464>
   11c78:	02d00793          	li	a5,45
   11c7c:	08f107a3          	sb	a5,143(sp)
   11c80:	02d00613          	li	a2,45
   11c84:	9f8ff06f          	j	10e7c <_vfprintf_r+0xaac>
   11c88:	00019937          	lui	s2,0x19
   11c8c:	27090913          	addi	s2,s2,624 # 19270 <zeroes.4137+0x30>
   11c90:	d95ff06f          	j	11a24 <_vfprintf_r+0x1654>
   11c94:	001c7793          	andi	a5,s8,1
   11c98:	26079a63          	bnez	a5,11f0c <_vfprintf_r+0x1b3c>
   11c9c:	0a813783          	ld	a5,168(sp)
   11ca0:	412787b3          	sub	a5,a5,s2
   11ca4:	06f12823          	sw	a5,112(sp)
   11ca8:	35ad9c63          	bne	s11,s10,12000 <_vfprintf_r+0x1c30>
   11cac:	09812783          	lw	a5,152(sp)
   11cb0:	ffd00713          	li	a4,-3
   11cb4:	02e7cc63          	blt	a5,a4,11cec <_vfprintf_r+0x191c>
   11cb8:	02f44a63          	blt	s0,a5,11cec <_vfprintf_r+0x191c>
   11cbc:	04f12623          	sw	a5,76(sp)
   11cc0:	b9dff06f          	j	1185c <_vfprintf_r+0x148c>
   11cc4:	02d00713          	li	a4,45
   11cc8:	08e107a3          	sb	a4,143(sp)
   11ccc:	00f12423          	sw	a5,8(sp)
   11cd0:	00012c03          	lw	s8,0(sp)
   11cd4:	02d00613          	li	a2,45
   11cd8:	00000413          	li	s0,0
   11cdc:	b0dfe06f          	j	107e8 <_vfprintf_r+0x418>
   11ce0:	0b812703          	lw	a4,184(sp)
   11ce4:	00913823          	sd	s1,16(sp)
   11ce8:	d78ff06f          	j	11260 <_vfprintf_r+0xe90>
   11cec:	ffed0d1b          	addiw	s10,s10,-2
   11cf0:	fff7879b          	addiw	a5,a5,-1
   11cf4:	08f12c23          	sw	a5,152(sp)
   11cf8:	0ba10023          	sb	s10,160(sp)
   11cfc:	2c07c863          	bltz	a5,11fcc <_vfprintf_r+0x1bfc>
   11d00:	02b00713          	li	a4,43
   11d04:	0ae100a3          	sb	a4,161(sp)
   11d08:	00900613          	li	a2,9
   11d0c:	16f64463          	blt	a2,a5,11e74 <_vfprintf_r+0x1aa4>
   11d10:	0307879b          	addiw	a5,a5,48
   11d14:	03000713          	li	a4,48
   11d18:	0af101a3          	sb	a5,163(sp)
   11d1c:	0ae10123          	sb	a4,162(sp)
   11d20:	0a410793          	addi	a5,sp,164
   11d24:	0a010713          	addi	a4,sp,160
   11d28:	40e787bb          	subw	a5,a5,a4
   11d2c:	07012703          	lw	a4,112(sp)
   11d30:	06f12a23          	sw	a5,116(sp)
   11d34:	00e787bb          	addw	a5,a5,a4
   11d38:	02f12023          	sw	a5,32(sp)
   11d3c:	00100793          	li	a5,1
   11d40:	26e7d263          	ble	a4,a5,11fa4 <_vfprintf_r+0x1bd4>
   11d44:	02012783          	lw	a5,32(sp)
   11d48:	0017879b          	addiw	a5,a5,1
   11d4c:	02f12023          	sw	a5,32(sp)
   11d50:	2607c463          	bltz	a5,11fb8 <_vfprintf_r+0x1be8>
   11d54:	04012623          	sw	zero,76(sp)
   11d58:	b2dff06f          	j	11884 <_vfprintf_r+0x14b4>
   11d5c:	00812423          	sw	s0,8(sp)
   11d60:	02812023          	sw	s0,32(sp)
   11d64:	08f14603          	lbu	a2,143(sp)
   11d68:	03913423          	sd	s9,40(sp)
   11d6c:	00000413          	li	s0,0
   11d70:	04012623          	sw	zero,76(sp)
   11d74:	a71fe06f          	j	107e4 <_vfprintf_r+0x414>
   11d78:	0b010613          	addi	a2,sp,176
   11d7c:	000a0593          	mv	a1,s4
   11d80:	000b8513          	mv	a0,s7
   11d84:	071040ef          	jal	165f4 <__sprint_r>
   11d88:	00050463          	beqz	a0,11d90 <_vfprintf_r+0x19c0>
   11d8c:	955fe06f          	j	106e0 <_vfprintf_r+0x310>
   11d90:	09812403          	lw	s0,152(sp)
   11d94:	0c013783          	ld	a5,192(sp)
   11d98:	0b812703          	lw	a4,184(sp)
   11d9c:	000b0893          	mv	a7,s6
   11da0:	be9ff06f          	j	11988 <_vfprintf_r+0x15b8>
   11da4:	9e0410e3          	bnez	s0,11784 <_vfprintf_r+0x13b4>
   11da8:	00090413          	mv	s0,s2
   11dac:	9d9ff06f          	j	11784 <_vfprintf_r+0x13b4>
   11db0:	00600413          	li	s0,6
   11db4:	9d1ff06f          	j	11784 <_vfprintf_r+0x13b4>
   11db8:	228405d3          	fmv.d	fa1,fs0
   11dbc:	09810713          	addi	a4,sp,152
   11dc0:	0a810813          	addi	a6,sp,168
   11dc4:	09c10793          	addi	a5,sp,156
   11dc8:	00040693          	mv	a3,s0
   11dcc:	00300613          	li	a2,3
   11dd0:	000b8513          	mv	a0,s7
   11dd4:	01113423          	sd	a7,8(sp)
   11dd8:	14d000ef          	jal	12724 <_dtoa_r>
   11ddc:	00813883          	ld	a7,8(sp)
   11de0:	00040713          	mv	a4,s0
   11de4:	00050913          	mv	s2,a0
   11de8:	00e50733          	add	a4,a0,a4
   11dec:	00040593          	mv	a1,s0
   11df0:	00094683          	lbu	a3,0(s2)
   11df4:	03000793          	li	a5,48
   11df8:	14f68063          	beq	a3,a5,11f38 <_vfprintf_r+0x1b68>
   11dfc:	09812583          	lw	a1,152(sp)
   11e00:	00b70733          	add	a4,a4,a1
   11e04:	a01ff06f          	j	11804 <_vfprintf_r+0x1434>
   11e08:	22841453          	fneg.d	fs0,fs0
   11e0c:	02d00c93          	li	s9,45
   11e10:	991ff06f          	j	117a0 <_vfprintf_r+0x13d0>
   11e14:	04c12703          	lw	a4,76(sp)
   11e18:	00100793          	li	a5,1
   11e1c:	1ae05263          	blez	a4,11fc0 <_vfprintf_r+0x1bf0>
   11e20:	07012703          	lw	a4,112(sp)
   11e24:	00e787bb          	addw	a5,a5,a4
   11e28:	02f12023          	sw	a5,32(sp)
   11e2c:	0007ce63          	bltz	a5,11e48 <_vfprintf_r+0x1a78>
   11e30:	06700d13          	li	s10,103
   11e34:	a51ff06f          	j	11884 <_vfprintf_r+0x14b4>
   11e38:	04c12783          	lw	a5,76(sp)
   11e3c:	0017879b          	addiw	a5,a5,1
   11e40:	02f12023          	sw	a5,32(sp)
   11e44:	fe07d6e3          	bgez	a5,11e30 <_vfprintf_r+0x1a60>
   11e48:	00000793          	li	a5,0
   11e4c:	06700d13          	li	s10,103
   11e50:	a35ff06f          	j	11884 <_vfprintf_r+0x14b4>
   11e54:	09812783          	lw	a5,152(sp)
   11e58:	04f12623          	sw	a5,76(sp)
   11e5c:	12f05263          	blez	a5,11f80 <_vfprintf_r+0x1bb0>
   11e60:	0a041e63          	bnez	s0,11f1c <_vfprintf_r+0x1b4c>
   11e64:	001c7c13          	andi	s8,s8,1
   11e68:	0a0c1a63          	bnez	s8,11f1c <_vfprintf_r+0x1b4c>
   11e6c:	02f12023          	sw	a5,32(sp)
   11e70:	a15ff06f          	j	11884 <_vfprintf_r+0x14b4>
   11e74:	0af10593          	addi	a1,sp,175
   11e78:	00058713          	mv	a4,a1
   11e7c:	00a00513          	li	a0,10
   11e80:	02a7e6bb          	remw	a3,a5,a0
   11e84:	fff70713          	addi	a4,a4,-1
   11e88:	02a7c7bb          	divw	a5,a5,a0
   11e8c:	0306869b          	addiw	a3,a3,48
   11e90:	00d70023          	sb	a3,0(a4)
   11e94:	fef646e3          	blt	a2,a5,11e80 <_vfprintf_r+0x1ab0>
   11e98:	0307879b          	addiw	a5,a5,48
   11e9c:	0ff7f793          	andi	a5,a5,255
   11ea0:	fff70693          	addi	a3,a4,-1
   11ea4:	fef70fa3          	sb	a5,-1(a4)
   11ea8:	16b6f863          	bleu	a1,a3,12018 <_vfprintf_r+0x1c48>
   11eac:	0a210613          	addi	a2,sp,162
   11eb0:	0080006f          	j	11eb8 <_vfprintf_r+0x1ae8>
   11eb4:	0006c783          	lbu	a5,0(a3)
   11eb8:	00160613          	addi	a2,a2,1
   11ebc:	00168693          	addi	a3,a3,1
   11ec0:	fef60fa3          	sb	a5,-1(a2)
   11ec4:	feb698e3          	bne	a3,a1,11eb4 <_vfprintf_r+0x1ae4>
   11ec8:	0b010793          	addi	a5,sp,176
   11ecc:	40e787b3          	sub	a5,a5,a4
   11ed0:	0a210713          	addi	a4,sp,162
   11ed4:	00f707b3          	add	a5,a4,a5
   11ed8:	e4dff06f          	j	11d24 <_vfprintf_r+0x1954>
   11edc:	228405d3          	fmv.d	fa1,fs0
   11ee0:	0a810813          	addi	a6,sp,168
   11ee4:	09c10793          	addi	a5,sp,156
   11ee8:	09810713          	addi	a4,sp,152
   11eec:	00040693          	mv	a3,s0
   11ef0:	00300613          	li	a2,3
   11ef4:	000b8513          	mv	a0,s7
   11ef8:	01113423          	sd	a7,8(sp)
   11efc:	029000ef          	jal	12724 <_dtoa_r>
   11f00:	00813883          	ld	a7,8(sp)
   11f04:	00050913          	mv	s2,a0
   11f08:	00040593          	mv	a1,s0
   11f0c:	04600793          	li	a5,70
   11f10:	00b90733          	add	a4,s2,a1
   11f14:	ecfd0ee3          	beq	s10,a5,11df0 <_vfprintf_r+0x1a20>
   11f18:	8edff06f          	j	11804 <_vfprintf_r+0x1434>
   11f1c:	04c12783          	lw	a5,76(sp)
   11f20:	0014041b          	addiw	s0,s0,1
   11f24:	008787bb          	addw	a5,a5,s0
   11f28:	02f12023          	sw	a5,32(sp)
   11f2c:	9407dce3          	bgez	a5,11884 <_vfprintf_r+0x14b4>
   11f30:	00000793          	li	a5,0
   11f34:	951ff06f          	j	11884 <_vfprintf_r+0x14b4>
   11f38:	f20007d3          	fmv.d.x	fa5,zero
   11f3c:	a2f427d3          	feq.d	a5,fs0,fa5
   11f40:	ea079ee3          	bnez	a5,11dfc <_vfprintf_r+0x1a2c>
   11f44:	00100793          	li	a5,1
   11f48:	40b785bb          	subw	a1,a5,a1
   11f4c:	08b12c23          	sw	a1,152(sp)
   11f50:	00b70733          	add	a4,a4,a1
   11f54:	8b1ff06f          	j	11804 <_vfprintf_r+0x1434>
   11f58:	00000d93          	li	s11,0
   11f5c:	ccdff06f          	j	11c28 <_vfprintf_r+0x1858>
   11f60:	02813783          	ld	a5,40(sp)
   11f64:	0007a403          	lw	s0,0(a5)
   11f68:	00878793          	addi	a5,a5,8
   11f6c:	02f13423          	sd	a5,40(sp)
   11f70:	00044463          	bltz	s0,11f78 <_vfprintf_r+0x1ba8>
   11f74:	e18fe06f          	j	1058c <_vfprintf_r+0x1bc>
   11f78:	fff00413          	li	s0,-1
   11f7c:	e10fe06f          	j	1058c <_vfprintf_r+0x1bc>
   11f80:	00041a63          	bnez	s0,11f94 <_vfprintf_r+0x1bc4>
   11f84:	00100793          	li	a5,1
   11f88:	00fc7c33          	and	s8,s8,a5
   11f8c:	02f12023          	sw	a5,32(sp)
   11f90:	8e0c0ae3          	beqz	s8,11884 <_vfprintf_r+0x14b4>
   11f94:	0024079b          	addiw	a5,s0,2
   11f98:	02f12023          	sw	a5,32(sp)
   11f9c:	8e07d4e3          	bgez	a5,11884 <_vfprintf_r+0x14b4>
   11fa0:	f91ff06f          	j	11f30 <_vfprintf_r+0x1b60>
   11fa4:	00fc7c33          	and	s8,s8,a5
   11fa8:	d80c1ee3          	bnez	s8,11d44 <_vfprintf_r+0x1974>
   11fac:	02012703          	lw	a4,32(sp)
   11fb0:	00070793          	mv	a5,a4
   11fb4:	da0750e3          	bgez	a4,11d54 <_vfprintf_r+0x1984>
   11fb8:	00000793          	li	a5,0
   11fbc:	d99ff06f          	j	11d54 <_vfprintf_r+0x1984>
   11fc0:	00200793          	li	a5,2
   11fc4:	40e787bb          	subw	a5,a5,a4
   11fc8:	e59ff06f          	j	11e20 <_vfprintf_r+0x1a50>
   11fcc:	02d00713          	li	a4,45
   11fd0:	40f007bb          	negw	a5,a5
   11fd4:	0ae100a3          	sb	a4,161(sp)
   11fd8:	d31ff06f          	j	11d08 <_vfprintf_r+0x1938>
   11fdc:	08b107a3          	sb	a1,143(sp)
   11fe0:	ed9fe06f          	j	10eb8 <_vfprintf_r+0xae8>
   11fe4:	00000793          	li	a5,0
   11fe8:	891ff06f          	j	11878 <_vfprintf_r+0x14a8>
   11fec:	08b107a3          	sb	a1,143(sp)
   11ff0:	010c6c13          	ori	s8,s8,16
   11ff4:	f2dfe06f          	j	10f20 <_vfprintf_r+0xb50>
   11ff8:	08b107a3          	sb	a1,143(sp)
   11ffc:	ef5fe06f          	j	10ef0 <_vfprintf_r+0xb20>
   12000:	09812783          	lw	a5,152(sp)
   12004:	cedff06f          	j	11cf0 <_vfprintf_r+0x1920>
   12008:	08b107a3          	sb	a1,143(sp)
   1200c:	e2dfe06f          	j	10e38 <_vfprintf_r+0xa68>
   12010:	08b107a3          	sb	a1,143(sp)
   12014:	dd5fe06f          	j	10de8 <_vfprintf_r+0xa18>
   12018:	0a210793          	addi	a5,sp,162
   1201c:	d09ff06f          	j	11d24 <_vfprintf_r+0x1954>
   12020:	08b107a3          	sb	a1,143(sp)
   12024:	f41fe06f          	j	10f64 <_vfprintf_r+0xb94>
   12028:	08b107a3          	sb	a1,143(sp)
   1202c:	f28fe06f          	j	10754 <_vfprintf_r+0x384>
   12030:	08b107a3          	sb	a1,143(sp)
   12034:	9c5fe06f          	j	109f8 <_vfprintf_r+0x628>
   12038:	08b107a3          	sb	a1,143(sp)
   1203c:	010c6c13          	ori	s8,s8,16
   12040:	979fe06f          	j	109b8 <_vfprintf_r+0x5e8>
   12044:	08b107a3          	sb	a1,143(sp)
   12048:	010c6c13          	ori	s8,s8,16
   1204c:	929fe06f          	j	10974 <_vfprintf_r+0x5a4>
   12050:	08b107a3          	sb	a1,143(sp)
   12054:	881fe06f          	j	108d4 <_vfprintf_r+0x504>

0000000000012058 <vfprintf>:
   12058:	00060693          	mv	a3,a2
   1205c:	00058613          	mv	a2,a1
   12060:	00050593          	mv	a1,a0
   12064:	8101b503          	ld	a0,-2032(gp) # 1b350 <_impure_ptr>
   12068:	b68fe06f          	j	103d0 <_vfprintf_r>

000000000001206c <__sbprintf>:
   1206c:	0105d783          	lhu	a5,16(a1)
   12070:	0ac5ae03          	lw	t3,172(a1)
   12074:	0125d303          	lhu	t1,18(a1)
   12078:	0305b883          	ld	a7,48(a1)
   1207c:	0405b803          	ld	a6,64(a1)
   12080:	b3010113          	addi	sp,sp,-1232
   12084:	ffd7f793          	andi	a5,a5,-3
   12088:	40000713          	li	a4,1024
   1208c:	4c813023          	sd	s0,1216(sp)
   12090:	00f11823          	sh	a5,16(sp)
   12094:	00058413          	mv	s0,a1
   12098:	0b010793          	addi	a5,sp,176
   1209c:	00010593          	mv	a1,sp
   120a0:	4a913c23          	sd	s1,1208(sp)
   120a4:	4b213823          	sd	s2,1200(sp)
   120a8:	4c113423          	sd	ra,1224(sp)
   120ac:	00050913          	mv	s2,a0
   120b0:	0bc12623          	sw	t3,172(sp)
   120b4:	00611923          	sh	t1,18(sp)
   120b8:	03113823          	sd	a7,48(sp)
   120bc:	05013023          	sd	a6,64(sp)
   120c0:	00f13023          	sd	a5,0(sp)
   120c4:	00f13c23          	sd	a5,24(sp)
   120c8:	00e12623          	sw	a4,12(sp)
   120cc:	02e12023          	sw	a4,32(sp)
   120d0:	02012423          	sw	zero,40(sp)
   120d4:	afcfe0ef          	jal	103d0 <_vfprintf_r>
   120d8:	00050493          	mv	s1,a0
   120dc:	00054a63          	bltz	a0,120f0 <__sbprintf+0x84>
   120e0:	00010593          	mv	a1,sp
   120e4:	00090513          	mv	a0,s2
   120e8:	1a5010ef          	jal	13a8c <_fflush_r>
   120ec:	02051c63          	bnez	a0,12124 <__sbprintf+0xb8>
   120f0:	01015783          	lhu	a5,16(sp)
   120f4:	0407f793          	andi	a5,a5,64
   120f8:	00078863          	beqz	a5,12108 <__sbprintf+0x9c>
   120fc:	01045783          	lhu	a5,16(s0)
   12100:	0407e793          	ori	a5,a5,64
   12104:	00f41823          	sh	a5,16(s0)
   12108:	4c813083          	ld	ra,1224(sp)
   1210c:	00048513          	mv	a0,s1
   12110:	4c013403          	ld	s0,1216(sp)
   12114:	4b813483          	ld	s1,1208(sp)
   12118:	4b013903          	ld	s2,1200(sp)
   1211c:	4d010113          	addi	sp,sp,1232
   12120:	00008067          	ret
   12124:	fff00493          	li	s1,-1
   12128:	fc9ff06f          	j	120f0 <__sbprintf+0x84>

000000000001212c <__swsetup_r>:
   1212c:	8101b783          	ld	a5,-2032(gp) # 1b350 <_impure_ptr>
   12130:	fe010113          	addi	sp,sp,-32
   12134:	00813823          	sd	s0,16(sp)
   12138:	00913423          	sd	s1,8(sp)
   1213c:	00113c23          	sd	ra,24(sp)
   12140:	00050493          	mv	s1,a0
   12144:	00058413          	mv	s0,a1
   12148:	00078663          	beqz	a5,12154 <__swsetup_r+0x28>
   1214c:	0507a703          	lw	a4,80(a5)
   12150:	0e070063          	beqz	a4,12230 <__swsetup_r+0x104>
   12154:	01041703          	lh	a4,16(s0)
   12158:	03071793          	slli	a5,a4,0x30
   1215c:	0307d793          	srli	a5,a5,0x30
   12160:	0087f693          	andi	a3,a5,8
   12164:	04068263          	beqz	a3,121a8 <__swsetup_r+0x7c>
   12168:	01843683          	ld	a3,24(s0)
   1216c:	06068663          	beqz	a3,121d8 <__swsetup_r+0xac>
   12170:	0017f713          	andi	a4,a5,1
   12174:	08071463          	bnez	a4,121fc <__swsetup_r+0xd0>
   12178:	0027f793          	andi	a5,a5,2
   1217c:	00000713          	li	a4,0
   12180:	00079463          	bnez	a5,12188 <__swsetup_r+0x5c>
   12184:	02042703          	lw	a4,32(s0)
   12188:	00e42623          	sw	a4,12(s0)
   1218c:	00000513          	li	a0,0
   12190:	08068263          	beqz	a3,12214 <__swsetup_r+0xe8>
   12194:	01813083          	ld	ra,24(sp)
   12198:	01013403          	ld	s0,16(sp)
   1219c:	00813483          	ld	s1,8(sp)
   121a0:	02010113          	addi	sp,sp,32
   121a4:	00008067          	ret
   121a8:	0107f693          	andi	a3,a5,16
   121ac:	0c068663          	beqz	a3,12278 <__swsetup_r+0x14c>
   121b0:	0047f793          	andi	a5,a5,4
   121b4:	08079463          	bnez	a5,1223c <__swsetup_r+0x110>
   121b8:	01843683          	ld	a3,24(s0)
   121bc:	00876793          	ori	a5,a4,8
   121c0:	0107979b          	slliw	a5,a5,0x10
   121c4:	4107d79b          	sraiw	a5,a5,0x10
   121c8:	00f41823          	sh	a5,16(s0)
   121cc:	03079793          	slli	a5,a5,0x30
   121d0:	0307d793          	srli	a5,a5,0x30
   121d4:	f8069ee3          	bnez	a3,12170 <__swsetup_r+0x44>
   121d8:	2807f713          	andi	a4,a5,640
   121dc:	20000613          	li	a2,512
   121e0:	f8c708e3          	beq	a4,a2,12170 <__swsetup_r+0x44>
   121e4:	00040593          	mv	a1,s0
   121e8:	00048513          	mv	a0,s1
   121ec:	2ec020ef          	jal	144d8 <__smakebuf_r>
   121f0:	01045783          	lhu	a5,16(s0)
   121f4:	01843683          	ld	a3,24(s0)
   121f8:	f79ff06f          	j	12170 <__swsetup_r+0x44>
   121fc:	02042783          	lw	a5,32(s0)
   12200:	00042623          	sw	zero,12(s0)
   12204:	00000513          	li	a0,0
   12208:	40f007bb          	negw	a5,a5
   1220c:	02f42423          	sw	a5,40(s0)
   12210:	f80692e3          	bnez	a3,12194 <__swsetup_r+0x68>
   12214:	01041783          	lh	a5,16(s0)
   12218:	0807f713          	andi	a4,a5,128
   1221c:	f6070ce3          	beqz	a4,12194 <__swsetup_r+0x68>
   12220:	0407e793          	ori	a5,a5,64
   12224:	00f41823          	sh	a5,16(s0)
   12228:	fff00513          	li	a0,-1
   1222c:	f69ff06f          	j	12194 <__swsetup_r+0x68>
   12230:	00078513          	mv	a0,a5
   12234:	405010ef          	jal	13e38 <__sinit>
   12238:	f1dff06f          	j	12154 <__swsetup_r+0x28>
   1223c:	05843583          	ld	a1,88(s0)
   12240:	00058e63          	beqz	a1,1225c <__swsetup_r+0x130>
   12244:	07440793          	addi	a5,s0,116
   12248:	00f58863          	beq	a1,a5,12258 <__swsetup_r+0x12c>
   1224c:	00048513          	mv	a0,s1
   12250:	541010ef          	jal	13f90 <_free_r>
   12254:	01041703          	lh	a4,16(s0)
   12258:	04043c23          	sd	zero,88(s0)
   1225c:	01843683          	ld	a3,24(s0)
   12260:	fdb77713          	andi	a4,a4,-37
   12264:	0107171b          	slliw	a4,a4,0x10
   12268:	4107571b          	sraiw	a4,a4,0x10
   1226c:	00042423          	sw	zero,8(s0)
   12270:	00d43023          	sd	a3,0(s0)
   12274:	f49ff06f          	j	121bc <__swsetup_r+0x90>
   12278:	00900793          	li	a5,9
   1227c:	00f4a023          	sw	a5,0(s1)
   12280:	04076713          	ori	a4,a4,64
   12284:	00e41823          	sh	a4,16(s0)
   12288:	fff00513          	li	a0,-1
   1228c:	f09ff06f          	j	12194 <__swsetup_r+0x68>

0000000000012290 <__register_exitproc>:
   12290:	fd010113          	addi	sp,sp,-48
   12294:	02813023          	sd	s0,32(sp)
   12298:	8081b403          	ld	s0,-2040(gp) # 1b348 <_global_impure_ptr>
   1229c:	00913c23          	sd	s1,24(sp)
   122a0:	00050493          	mv	s1,a0
   122a4:	1f843503          	ld	a0,504(s0)
   122a8:	01213823          	sd	s2,16(sp)
   122ac:	01313423          	sd	s3,8(sp)
   122b0:	01413023          	sd	s4,0(sp)
   122b4:	02113423          	sd	ra,40(sp)
   122b8:	00058913          	mv	s2,a1
   122bc:	00060a13          	mv	s4,a2
   122c0:	00068993          	mv	s3,a3
   122c4:	0c050663          	beqz	a0,12390 <__register_exitproc+0x100>
   122c8:	00852703          	lw	a4,8(a0)
   122cc:	01f00793          	li	a5,31
   122d0:	0017059b          	addiw	a1,a4,1
   122d4:	04e7d063          	ble	a4,a5,12314 <__register_exitproc+0x84>
   122d8:	000007b7          	lui	a5,0x0
   122dc:	00078793          	mv	a5,a5
   122e0:	0a078e63          	beqz	a5,1239c <__register_exitproc+0x10c>
   122e4:	31800513          	li	a0,792
   122e8:	fffee317          	auipc	t1,0xfffee
   122ec:	d18300e7          	jalr	t1,-744 # 0 <_ftext-0x10000>
   122f0:	0a050663          	beqz	a0,1239c <__register_exitproc+0x10c>
   122f4:	1f843783          	ld	a5,504(s0)
   122f8:	00052423          	sw	zero,8(a0)
   122fc:	00100593          	li	a1,1
   12300:	00f53023          	sd	a5,0(a0)
   12304:	1ea43c23          	sd	a0,504(s0)
   12308:	30052823          	sw	zero,784(a0)
   1230c:	30052a23          	sw	zero,788(a0)
   12310:	00000713          	li	a4,0
   12314:	00070793          	mv	a5,a4
   12318:	02049e63          	bnez	s1,12354 <__register_exitproc+0xc4>
   1231c:	00278793          	addi	a5,a5,2 # 2 <_ftext-0xfffe>
   12320:	00379793          	slli	a5,a5,0x3
   12324:	00b52423          	sw	a1,8(a0)
   12328:	00f50533          	add	a0,a0,a5
   1232c:	01253023          	sd	s2,0(a0)
   12330:	00000513          	li	a0,0
   12334:	02813083          	ld	ra,40(sp)
   12338:	02013403          	ld	s0,32(sp)
   1233c:	01813483          	ld	s1,24(sp)
   12340:	01013903          	ld	s2,16(sp)
   12344:	00813983          	ld	s3,8(sp)
   12348:	00013a03          	ld	s4,0(sp)
   1234c:	03010113          	addi	sp,sp,48
   12350:	00008067          	ret
   12354:	00371813          	slli	a6,a4,0x3
   12358:	01050833          	add	a6,a0,a6
   1235c:	11483823          	sd	s4,272(a6)
   12360:	31052883          	lw	a7,784(a0)
   12364:	00100613          	li	a2,1
   12368:	00e6173b          	sllw	a4,a2,a4
   1236c:	00e8e633          	or	a2,a7,a4
   12370:	30c52823          	sw	a2,784(a0)
   12374:	21383823          	sd	s3,528(a6)
   12378:	00200693          	li	a3,2
   1237c:	fad490e3          	bne	s1,a3,1231c <__register_exitproc+0x8c>
   12380:	31452683          	lw	a3,788(a0)
   12384:	00e6e733          	or	a4,a3,a4
   12388:	30e52a23          	sw	a4,788(a0)
   1238c:	f91ff06f          	j	1231c <__register_exitproc+0x8c>
   12390:	20040513          	addi	a0,s0,512
   12394:	1ea43c23          	sd	a0,504(s0)
   12398:	f31ff06f          	j	122c8 <__register_exitproc+0x38>
   1239c:	fff00513          	li	a0,-1
   123a0:	f95ff06f          	j	12334 <__register_exitproc+0xa4>

00000000000123a4 <__call_exitprocs>:
   123a4:	fa010113          	addi	sp,sp,-96
   123a8:	03413823          	sd	s4,48(sp)
   123ac:	8081ba03          	ld	s4,-2040(gp) # 1b348 <_global_impure_ptr>
   123b0:	03313c23          	sd	s3,56(sp)
   123b4:	000009b7          	lui	s3,0x0
   123b8:	04913423          	sd	s1,72(sp)
   123bc:	05213023          	sd	s2,64(sp)
   123c0:	03513423          	sd	s5,40(sp)
   123c4:	01713c23          	sd	s7,24(sp)
   123c8:	01813823          	sd	s8,16(sp)
   123cc:	04113c23          	sd	ra,88(sp)
   123d0:	04813823          	sd	s0,80(sp)
   123d4:	03613023          	sd	s6,32(sp)
   123d8:	01913423          	sd	s9,8(sp)
   123dc:	01a13023          	sd	s10,0(sp)
   123e0:	00050913          	mv	s2,a0
   123e4:	00058b93          	mv	s7,a1
   123e8:	1f8a0a93          	addi	s5,s4,504
   123ec:	00100493          	li	s1,1
   123f0:	fff00c13          	li	s8,-1
   123f4:	00098993          	mv	s3,s3
   123f8:	1f8a3b03          	ld	s6,504(s4)
   123fc:	0c0b0663          	beqz	s6,124c8 <__call_exitprocs+0x124>
   12400:	000a8d13          	mv	s10,s5
   12404:	008b2403          	lw	s0,8(s6)
   12408:	fff4041b          	addiw	s0,s0,-1
   1240c:	02045263          	bgez	s0,12430 <__call_exitprocs+0x8c>
   12410:	08c0006f          	j	1249c <__call_exitprocs+0xf8>
   12414:	02040793          	addi	a5,s0,32
   12418:	00379793          	slli	a5,a5,0x3
   1241c:	00fb07b3          	add	a5,s6,a5
   12420:	1107b783          	ld	a5,272(a5)
   12424:	00fb8a63          	beq	s7,a5,12438 <__call_exitprocs+0x94>
   12428:	fff4041b          	addiw	s0,s0,-1
   1242c:	07840863          	beq	s0,s8,1249c <__call_exitprocs+0xf8>
   12430:	00040713          	mv	a4,s0
   12434:	fe0b90e3          	bnez	s7,12414 <__call_exitprocs+0x70>
   12438:	008b2783          	lw	a5,8(s6)
   1243c:	00371713          	slli	a4,a4,0x3
   12440:	00eb0733          	add	a4,s6,a4
   12444:	fff7879b          	addiw	a5,a5,-1
   12448:	01073683          	ld	a3,16(a4)
   1244c:	0a878e63          	beq	a5,s0,12508 <__call_exitprocs+0x164>
   12450:	00073823          	sd	zero,16(a4)
   12454:	fc068ae3          	beqz	a3,12428 <__call_exitprocs+0x84>
   12458:	310b2783          	lw	a5,784(s6)
   1245c:	0084963b          	sllw	a2,s1,s0
   12460:	008b2c83          	lw	s9,8(s6)
   12464:	00f677b3          	and	a5,a2,a5
   12468:	08078c63          	beqz	a5,12500 <__call_exitprocs+0x15c>
   1246c:	314b2783          	lw	a5,788(s6)
   12470:	00f67633          	and	a2,a2,a5
   12474:	08061e63          	bnez	a2,12510 <__call_exitprocs+0x16c>
   12478:	11073583          	ld	a1,272(a4)
   1247c:	00090513          	mv	a0,s2
   12480:	000680e7          	jalr	a3
   12484:	008b2783          	lw	a5,8(s6)
   12488:	f79798e3          	bne	a5,s9,123f8 <__call_exitprocs+0x54>
   1248c:	000d3783          	ld	a5,0(s10)
   12490:	f76794e3          	bne	a5,s6,123f8 <__call_exitprocs+0x54>
   12494:	fff4041b          	addiw	s0,s0,-1
   12498:	f9841ce3          	bne	s0,s8,12430 <__call_exitprocs+0x8c>
   1249c:	02098663          	beqz	s3,124c8 <__call_exitprocs+0x124>
   124a0:	008b2783          	lw	a5,8(s6)
   124a4:	06079c63          	bnez	a5,1251c <__call_exitprocs+0x178>
   124a8:	000b3783          	ld	a5,0(s6)
   124ac:	08078263          	beqz	a5,12530 <__call_exitprocs+0x18c>
   124b0:	000b0513          	mv	a0,s6
   124b4:	00fd3023          	sd	a5,0(s10)
   124b8:	fffee317          	auipc	t1,0xfffee
   124bc:	b48300e7          	jalr	t1,-1208 # 0 <_ftext-0x10000>
   124c0:	000d3b03          	ld	s6,0(s10)
   124c4:	f40b10e3          	bnez	s6,12404 <__call_exitprocs+0x60>
   124c8:	05813083          	ld	ra,88(sp)
   124cc:	05013403          	ld	s0,80(sp)
   124d0:	04813483          	ld	s1,72(sp)
   124d4:	04013903          	ld	s2,64(sp)
   124d8:	03813983          	ld	s3,56(sp)
   124dc:	03013a03          	ld	s4,48(sp)
   124e0:	02813a83          	ld	s5,40(sp)
   124e4:	02013b03          	ld	s6,32(sp)
   124e8:	01813b83          	ld	s7,24(sp)
   124ec:	01013c03          	ld	s8,16(sp)
   124f0:	00813c83          	ld	s9,8(sp)
   124f4:	00013d03          	ld	s10,0(sp)
   124f8:	06010113          	addi	sp,sp,96
   124fc:	00008067          	ret
   12500:	000680e7          	jalr	a3
   12504:	f81ff06f          	j	12484 <__call_exitprocs+0xe0>
   12508:	008b2423          	sw	s0,8(s6)
   1250c:	f49ff06f          	j	12454 <__call_exitprocs+0xb0>
   12510:	11073503          	ld	a0,272(a4)
   12514:	000680e7          	jalr	a3
   12518:	f6dff06f          	j	12484 <__call_exitprocs+0xe0>
   1251c:	000b3783          	ld	a5,0(s6)
   12520:	000b0d13          	mv	s10,s6
   12524:	00078b13          	mv	s6,a5
   12528:	ec0b1ee3          	bnez	s6,12404 <__call_exitprocs+0x60>
   1252c:	f9dff06f          	j	124c8 <__call_exitprocs+0x124>
   12530:	00000793          	li	a5,0
   12534:	fedff06f          	j	12520 <__call_exitprocs+0x17c>

0000000000012538 <quorem>:
   12538:	fc010113          	addi	sp,sp,-64
   1253c:	03213023          	sd	s2,32(sp)
   12540:	01452783          	lw	a5,20(a0)
   12544:	0145a903          	lw	s2,20(a1)
   12548:	02113c23          	sd	ra,56(sp)
   1254c:	02813823          	sd	s0,48(sp)
   12550:	02913423          	sd	s1,40(sp)
   12554:	01313c23          	sd	s3,24(sp)
   12558:	01413823          	sd	s4,16(sp)
   1255c:	01513423          	sd	s5,8(sp)
   12560:	1b27ce63          	blt	a5,s2,1271c <quorem+0x1e4>
   12564:	fff9091b          	addiw	s2,s2,-1
   12568:	00090f13          	mv	t5,s2
   1256c:	002f1f13          	slli	t5,t5,0x2
   12570:	01858413          	addi	s0,a1,24
   12574:	01e409b3          	add	s3,s0,t5
   12578:	01850a13          	addi	s4,a0,24
   1257c:	01ea0f33          	add	t5,s4,t5
   12580:	0009a783          	lw	a5,0(s3) # 0 <_ftext-0x10000>
   12584:	000f2483          	lw	s1,0(t5)
   12588:	0017879b          	addiw	a5,a5,1
   1258c:	02f4d4bb          	divuw	s1,s1,a5
   12590:	0a048e63          	beqz	s1,1264c <quorem+0x114>
   12594:	00010337          	lui	t1,0x10
   12598:	00040e93          	mv	t4,s0
   1259c:	000a0e13          	mv	t3,s4
   125a0:	00000613          	li	a2,0
   125a4:	00000713          	li	a4,0
   125a8:	fff3031b          	addiw	t1,t1,-1
   125ac:	004e8e93          	addi	t4,t4,4
   125b0:	ffcea803          	lw	a6,-4(t4)
   125b4:	000e2683          	lw	a3,0(t3)
   125b8:	004e0e13          	addi	t3,t3,4
   125bc:	006878b3          	and	a7,a6,t1
   125c0:	029888bb          	mulw	a7,a7,s1
   125c4:	0108581b          	srliw	a6,a6,0x10
   125c8:	0066f7b3          	and	a5,a3,t1
   125cc:	0106d69b          	srliw	a3,a3,0x10
   125d0:	0298083b          	mulw	a6,a6,s1
   125d4:	00c888bb          	addw	a7,a7,a2
   125d8:	0108d61b          	srliw	a2,a7,0x10
   125dc:	0068f8b3          	and	a7,a7,t1
   125e0:	4117073b          	subw	a4,a4,a7
   125e4:	00f707bb          	addw	a5,a4,a5
   125e8:	4107d71b          	sraiw	a4,a5,0x10
   125ec:	0067f7b3          	and	a5,a5,t1
   125f0:	00c8063b          	addw	a2,a6,a2
   125f4:	00667833          	and	a6,a2,t1
   125f8:	410686bb          	subw	a3,a3,a6
   125fc:	00e6873b          	addw	a4,a3,a4
   12600:	0107169b          	slliw	a3,a4,0x10
   12604:	00f6e6b3          	or	a3,a3,a5
   12608:	fede2e23          	sw	a3,-4(t3)
   1260c:	0106561b          	srliw	a2,a2,0x10
   12610:	4107571b          	sraiw	a4,a4,0x10
   12614:	f9d9fce3          	bleu	t4,s3,125ac <quorem+0x74>
   12618:	000f2783          	lw	a5,0(t5)
   1261c:	02079863          	bnez	a5,1264c <quorem+0x114>
   12620:	ffcf0793          	addi	a5,t5,-4
   12624:	02fa7263          	bleu	a5,s4,12648 <quorem+0x110>
   12628:	ffcf2703          	lw	a4,-4(t5)
   1262c:	00070863          	beqz	a4,1263c <quorem+0x104>
   12630:	0180006f          	j	12648 <quorem+0x110>
   12634:	0007a703          	lw	a4,0(a5)
   12638:	00071863          	bnez	a4,12648 <quorem+0x110>
   1263c:	ffc78793          	addi	a5,a5,-4
   12640:	fff9091b          	addiw	s2,s2,-1
   12644:	fefa68e3          	bltu	s4,a5,12634 <quorem+0xfc>
   12648:	01252a23          	sw	s2,20(a0)
   1264c:	00050a93          	mv	s5,a0
   12650:	388030ef          	jal	159d8 <__mcmp>
   12654:	0a054063          	bltz	a0,126f4 <quorem+0x1bc>
   12658:	000105b7          	lui	a1,0x10
   1265c:	0014849b          	addiw	s1,s1,1
   12660:	000a0613          	mv	a2,s4
   12664:	00000793          	li	a5,0
   12668:	fff5859b          	addiw	a1,a1,-1
   1266c:	00440413          	addi	s0,s0,4
   12670:	ffc42683          	lw	a3,-4(s0)
   12674:	00062703          	lw	a4,0(a2)
   12678:	00460613          	addi	a2,a2,4
   1267c:	00b6f833          	and	a6,a3,a1
   12680:	410787bb          	subw	a5,a5,a6
   12684:	00b77833          	and	a6,a4,a1
   12688:	010787bb          	addw	a5,a5,a6
   1268c:	0106d69b          	srliw	a3,a3,0x10
   12690:	0107571b          	srliw	a4,a4,0x10
   12694:	40d7073b          	subw	a4,a4,a3
   12698:	4107d69b          	sraiw	a3,a5,0x10
   1269c:	00d706bb          	addw	a3,a4,a3
   126a0:	0106981b          	slliw	a6,a3,0x10
   126a4:	00b7f733          	and	a4,a5,a1
   126a8:	00e86733          	or	a4,a6,a4
   126ac:	fee62e23          	sw	a4,-4(a2)
   126b0:	4106d79b          	sraiw	a5,a3,0x10
   126b4:	fa89fce3          	bleu	s0,s3,1266c <quorem+0x134>
   126b8:	00291713          	slli	a4,s2,0x2
   126bc:	00ea0733          	add	a4,s4,a4
   126c0:	00072783          	lw	a5,0(a4)
   126c4:	02079863          	bnez	a5,126f4 <quorem+0x1bc>
   126c8:	ffc70793          	addi	a5,a4,-4
   126cc:	02fa7263          	bleu	a5,s4,126f0 <quorem+0x1b8>
   126d0:	ffc72703          	lw	a4,-4(a4)
   126d4:	00070863          	beqz	a4,126e4 <quorem+0x1ac>
   126d8:	0180006f          	j	126f0 <quorem+0x1b8>
   126dc:	0007a703          	lw	a4,0(a5)
   126e0:	00071863          	bnez	a4,126f0 <quorem+0x1b8>
   126e4:	ffc78793          	addi	a5,a5,-4
   126e8:	fff9091b          	addiw	s2,s2,-1
   126ec:	fefa68e3          	bltu	s4,a5,126dc <quorem+0x1a4>
   126f0:	012aaa23          	sw	s2,20(s5)
   126f4:	00048513          	mv	a0,s1
   126f8:	03813083          	ld	ra,56(sp)
   126fc:	03013403          	ld	s0,48(sp)
   12700:	02813483          	ld	s1,40(sp)
   12704:	02013903          	ld	s2,32(sp)
   12708:	01813983          	ld	s3,24(sp)
   1270c:	01013a03          	ld	s4,16(sp)
   12710:	00813a83          	ld	s5,8(sp)
   12714:	04010113          	addi	sp,sp,64
   12718:	00008067          	ret
   1271c:	00000513          	li	a0,0
   12720:	fd9ff06f          	j	126f8 <quorem+0x1c0>

0000000000012724 <_dtoa_r>:
   12724:	e20585d3          	fmv.x.d	a1,fa1
   12728:	06053883          	ld	a7,96(a0)
   1272c:	f3010113          	addi	sp,sp,-208
   12730:	0c813023          	sd	s0,192(sp)
   12734:	0a913c23          	sd	s1,184(sp)
   12738:	0b313423          	sd	s3,168(sp)
   1273c:	09613823          	sd	s6,144(sp)
   12740:	07913c23          	sd	s9,120(sp)
   12744:	07a13823          	sd	s10,112(sp)
   12748:	0c113423          	sd	ra,200(sp)
   1274c:	0b213823          	sd	s2,176(sp)
   12750:	0b413023          	sd	s4,160(sp)
   12754:	09513c23          	sd	s5,152(sp)
   12758:	09713423          	sd	s7,136(sp)
   1275c:	09813023          	sd	s8,128(sp)
   12760:	07b13423          	sd	s11,104(sp)
   12764:	00e13023          	sd	a4,0(sp)
   12768:	00050413          	mv	s0,a0
   1276c:	00060993          	mv	s3,a2
   12770:	00068c93          	mv	s9,a3
   12774:	00078493          	mv	s1,a5
   12778:	00080b13          	mv	s6,a6
   1277c:	00058d13          	mv	s10,a1
   12780:	02088263          	beqz	a7,127a4 <_dtoa_r+0x80>
   12784:	06852603          	lw	a2,104(a0)
   12788:	00100693          	li	a3,1
   1278c:	00088593          	mv	a1,a7
   12790:	00c696bb          	sllw	a3,a3,a2
   12794:	00c8a423          	sw	a2,8(a7)
   12798:	00d8a623          	sw	a3,12(a7)
   1279c:	1f1020ef          	jal	1518c <_Bfree>
   127a0:	06043023          	sd	zero,96(s0)
   127a4:	420d5913          	srai	s2,s10,0x20
   127a8:	0c094063          	bltz	s2,12868 <_dtoa_r+0x144>
   127ac:	0004a023          	sw	zero,0(s1)
   127b0:	7ff007b7          	lui	a5,0x7ff00
   127b4:	00f976b3          	and	a3,s2,a5
   127b8:	06f68a63          	beq	a3,a5,1282c <_dtoa_r+0x108>
   127bc:	f20007d3          	fmv.d.x	fa5,zero
   127c0:	f20d0753          	fmv.d.x	fa4,s10
   127c4:	a2f727d3          	feq.d	a5,fa4,fa5
   127c8:	0c078463          	beqz	a5,12890 <_dtoa_r+0x16c>
   127cc:	00013703          	ld	a4,0(sp)
   127d0:	00100793          	li	a5,1
   127d4:	00f72023          	sw	a5,0(a4)
   127d8:	480b0a63          	beqz	s6,12c6c <_dtoa_r+0x548>
   127dc:	000197b7          	lui	a5,0x19
   127e0:	2b178793          	addi	a5,a5,689 # 192b1 <zeroes.4137+0x71>
   127e4:	00019537          	lui	a0,0x19
   127e8:	00fb3023          	sd	a5,0(s6)
   127ec:	2b050513          	addi	a0,a0,688 # 192b0 <zeroes.4137+0x70>
   127f0:	0c813083          	ld	ra,200(sp)
   127f4:	0c013403          	ld	s0,192(sp)
   127f8:	0b813483          	ld	s1,184(sp)
   127fc:	0b013903          	ld	s2,176(sp)
   12800:	0a813983          	ld	s3,168(sp)
   12804:	0a013a03          	ld	s4,160(sp)
   12808:	09813a83          	ld	s5,152(sp)
   1280c:	09013b03          	ld	s6,144(sp)
   12810:	08813b83          	ld	s7,136(sp)
   12814:	08013c03          	ld	s8,128(sp)
   12818:	07813c83          	ld	s9,120(sp)
   1281c:	07013d03          	ld	s10,112(sp)
   12820:	06813d83          	ld	s11,104(sp)
   12824:	0d010113          	addi	sp,sp,208
   12828:	00008067          	ret
   1282c:	00013703          	ld	a4,0(sp)
   12830:	000027b7          	lui	a5,0x2
   12834:	70f7879b          	addiw	a5,a5,1807
   12838:	00f72023          	sw	a5,0(a4)
   1283c:	00cd1793          	slli	a5,s10,0xc
   12840:	3e079863          	bnez	a5,12c30 <_dtoa_r+0x50c>
   12844:	00019537          	lui	a0,0x19
   12848:	2b850513          	addi	a0,a0,696 # 192b8 <zeroes.4137+0x78>
   1284c:	fa0b02e3          	beqz	s6,127f0 <_dtoa_r+0xcc>
   12850:	00354703          	lbu	a4,3(a0)
   12854:	00350793          	addi	a5,a0,3
   12858:	00070463          	beqz	a4,12860 <_dtoa_r+0x13c>
   1285c:	00850793          	addi	a5,a0,8
   12860:	00fb3023          	sd	a5,0(s6)
   12864:	f8dff06f          	j	127f0 <_dtoa_r+0xcc>
   12868:	800007b7          	lui	a5,0x80000
   1286c:	fff7c793          	not	a5,a5
   12870:	020d1713          	slli	a4,s10,0x20
   12874:	00f97933          	and	s2,s2,a5
   12878:	02091793          	slli	a5,s2,0x20
   1287c:	02075713          	srli	a4,a4,0x20
   12880:	00100693          	li	a3,1
   12884:	00d4a023          	sw	a3,0(s1)
   12888:	00f76d33          	or	s10,a4,a5
   1288c:	f25ff06f          	j	127b0 <_dtoa_r+0x8c>
   12890:	f20d05d3          	fmv.d.x	fa1,s10
   12894:	05810693          	addi	a3,sp,88
   12898:	05c10613          	addi	a2,sp,92
   1289c:	00040513          	mv	a0,s0
   128a0:	578030ef          	jal	15e18 <__d2b>
   128a4:	02a13023          	sd	a0,32(sp)
   128a8:	0149581b          	srliw	a6,s2,0x14
   128ac:	38081863          	bnez	a6,12c3c <_dtoa_r+0x518>
   128b0:	05812603          	lw	a2,88(sp)
   128b4:	05c12803          	lw	a6,92(sp)
   128b8:	02000793          	li	a5,32
   128bc:	0106083b          	addw	a6,a2,a6
   128c0:	4328069b          	addiw	a3,a6,1074
   128c4:	6ad7de63          	ble	a3,a5,12f80 <_dtoa_r+0x85c>
   128c8:	04000593          	li	a1,64
   128cc:	4128049b          	addiw	s1,a6,1042
   128d0:	000d079b          	sext.w	a5,s10
   128d4:	40d585bb          	subw	a1,a1,a3
   128d8:	0097d7bb          	srlw	a5,a5,s1
   128dc:	00b914bb          	sllw	s1,s2,a1
   128e0:	0097e4b3          	or	s1,a5,s1
   128e4:	d21487d3          	fcvt.d.wu	fa5,s1
   128e8:	fe1006b7          	lui	a3,0xfe100
   128ec:	fff8081b          	addiw	a6,a6,-1
   128f0:	e20784d3          	fmv.x.d	s1,fa5
   128f4:	00100913          	li	s2,1
   128f8:	4204d793          	srai	a5,s1,0x20
   128fc:	00d787bb          	addw	a5,a5,a3
   12900:	02049493          	slli	s1,s1,0x20
   12904:	02079793          	slli	a5,a5,0x20
   12908:	0204d493          	srli	s1,s1,0x20
   1290c:	00f4e4b3          	or	s1,s1,a5
   12910:	0001b7b7          	lui	a5,0x1b
   12914:	3787b787          	fld	fa5,888(a5) # 1b378 <__wctomb+0x8>
   12918:	f2048753          	fmv.d.x	fa4,s1
   1291c:	0001b7b7          	lui	a5,0x1b
   12920:	0af77653          	fsub.d	fa2,fa4,fa5
   12924:	3887b787          	fld	fa5,904(a5) # 1b388 <__wctomb+0x18>
   12928:	0001b7b7          	lui	a5,0x1b
   1292c:	3807b687          	fld	fa3,896(a5) # 1b380 <__wctomb+0x10>
   12930:	0001b7b7          	lui	a5,0x1b
   12934:	d2080753          	fcvt.d.w	fa4,a6
   12938:	7ad677c3          	fmadd.d	fa5,fa2,fa3,fa5
   1293c:	3907b687          	fld	fa3,912(a5) # 1b390 <__wctomb+0x20>
   12940:	7ad777c3          	fmadd.d	fa5,fa4,fa3,fa5
   12944:	f2000753          	fmv.d.x	fa4,zero
   12948:	a2e797d3          	flt.d	a5,fa5,fa4
   1294c:	c2079bd3          	fcvt.w.d	s7,fa5,rtz
   12950:	5e079e63          	bnez	a5,12f4c <_dtoa_r+0x828>
   12954:	00100793          	li	a5,1
   12958:	02f12823          	sw	a5,48(sp)
   1295c:	01600793          	li	a5,22
   12960:	0377e663          	bltu	a5,s7,1298c <_dtoa_r+0x268>
   12964:	000197b7          	lui	a5,0x19
   12968:	003b9693          	slli	a3,s7,0x3
   1296c:	fb078793          	addi	a5,a5,-80 # 18fb0 <__mprec_tens>
   12970:	00f687b3          	add	a5,a3,a5
   12974:	0007b787          	fld	fa5,0(a5)
   12978:	f20d0753          	fmv.d.x	fa4,s10
   1297c:	a2f717d3          	flt.d	a5,fa4,fa5
   12980:	60078863          	beqz	a5,12f90 <_dtoa_r+0x86c>
   12984:	fffb8b9b          	addiw	s7,s7,-1
   12988:	02012823          	sw	zero,48(sp)
   1298c:	4106083b          	subw	a6,a2,a6
   12990:	fff80d9b          	addiw	s11,a6,-1
   12994:	00000813          	li	a6,0
   12998:	2e0dc063          	bltz	s11,12c78 <_dtoa_r+0x554>
   1299c:	5c0bc263          	bltz	s7,12f60 <_dtoa_r+0x83c>
   129a0:	017d8dbb          	addw	s11,s11,s7
   129a4:	03712423          	sw	s7,40(sp)
   129a8:	00000c13          	li	s8,0
   129ac:	00900793          	li	a5,9
   129b0:	2d37ea63          	bltu	a5,s3,12c84 <_dtoa_r+0x560>
   129b4:	00500793          	li	a5,5
   129b8:	00100a13          	li	s4,1
   129bc:	0137d663          	ble	s3,a5,129c8 <_dtoa_r+0x2a4>
   129c0:	ffc9899b          	addiw	s3,s3,-4
   129c4:	00000a13          	li	s4,0
   129c8:	00300793          	li	a5,3
   129cc:	2af982e3          	beq	s3,a5,13470 <_dtoa_r+0xd4c>
   129d0:	1f37dce3          	ble	s3,a5,133c8 <_dtoa_r+0xca4>
   129d4:	00400793          	li	a5,4
   129d8:	0cf98ae3          	beq	s3,a5,132ac <_dtoa_r+0xb88>
   129dc:	00100793          	li	a5,1
   129e0:	00f12823          	sw	a5,16(sp)
   129e4:	00500793          	li	a5,5
   129e8:	1ef996e3          	bne	s3,a5,133d4 <_dtoa_r+0xcb0>
   129ec:	019b87bb          	addw	a5,s7,s9
   129f0:	00178a9b          	addiw	s5,a5,1
   129f4:	02f12a23          	sw	a5,52(sp)
   129f8:	000a8513          	mv	a0,s5
   129fc:	000a8493          	mv	s1,s5
   12a00:	1b505ee3          	blez	s5,133bc <_dtoa_r+0xc98>
   12a04:	06042423          	sw	zero,104(s0)
   12a08:	01f00793          	li	a5,31
   12a0c:	00000593          	li	a1,0
   12a10:	02a7f463          	bleu	a0,a5,12a38 <_dtoa_r+0x314>
   12a14:	00100613          	li	a2,1
   12a18:	00400693          	li	a3,4
   12a1c:	0016969b          	slliw	a3,a3,0x1
   12a20:	00068793          	mv	a5,a3
   12a24:	01c78793          	addi	a5,a5,28
   12a28:	00060593          	mv	a1,a2
   12a2c:	0016061b          	addiw	a2,a2,1
   12a30:	fef576e3          	bleu	a5,a0,12a1c <_dtoa_r+0x2f8>
   12a34:	06b42423          	sw	a1,104(s0)
   12a38:	00040513          	mv	a0,s0
   12a3c:	03013c23          	sd	a6,56(sp)
   12a40:	6a0020ef          	jal	150e0 <_Balloc>
   12a44:	00a13423          	sd	a0,8(sp)
   12a48:	06a43023          	sd	a0,96(s0)
   12a4c:	00e00793          	li	a5,14
   12a50:	03813803          	ld	a6,56(sp)
   12a54:	2697e463          	bltu	a5,s1,12cbc <_dtoa_r+0x598>
   12a58:	260a0263          	beqz	s4,12cbc <_dtoa_r+0x598>
   12a5c:	03a13c23          	sd	s10,56(sp)
   12a60:	317054e3          	blez	s7,13568 <_dtoa_r+0xe44>
   12a64:	00fbf713          	andi	a4,s7,15
   12a68:	00371693          	slli	a3,a4,0x3
   12a6c:	00019737          	lui	a4,0x19
   12a70:	404bd79b          	sraiw	a5,s7,0x4
   12a74:	fb070713          	addi	a4,a4,-80 # 18fb0 <__mprec_tens>
   12a78:	00e68733          	add	a4,a3,a4
   12a7c:	0107f693          	andi	a3,a5,16
   12a80:	00073687          	fld	fa3,0(a4)
   12a84:	f20d07d3          	fmv.d.x	fa5,s10
   12a88:	00200713          	li	a4,2
   12a8c:	00068c63          	beqz	a3,12aa4 <_dtoa_r+0x380>
   12a90:	00019737          	lui	a4,0x19
   12a94:	0c073707          	fld	fa4,192(a4) # 190c0 <__mprec_bigtens+0x20>
   12a98:	00f7f793          	andi	a5,a5,15
   12a9c:	00300713          	li	a4,3
   12aa0:	1ae7f7d3          	fdiv.d	fa5,fa5,fa4
   12aa4:	02078663          	beqz	a5,12ad0 <_dtoa_r+0x3ac>
   12aa8:	000196b7          	lui	a3,0x19
   12aac:	0a068693          	addi	a3,a3,160 # 190a0 <__mprec_bigtens>
   12ab0:	0017f613          	andi	a2,a5,1
   12ab4:	4017d79b          	sraiw	a5,a5,0x1
   12ab8:	00060863          	beqz	a2,12ac8 <_dtoa_r+0x3a4>
   12abc:	0006b707          	fld	fa4,0(a3)
   12ac0:	0017071b          	addiw	a4,a4,1
   12ac4:	12e6f6d3          	fmul.d	fa3,fa3,fa4
   12ac8:	00868693          	addi	a3,a3,8
   12acc:	fe0792e3          	bnez	a5,12ab0 <_dtoa_r+0x38c>
   12ad0:	1ad7f7d3          	fdiv.d	fa5,fa5,fa3
   12ad4:	03012783          	lw	a5,48(sp)
   12ad8:	00078a63          	beqz	a5,12aec <_dtoa_r+0x3c8>
   12adc:	0001b7b7          	lui	a5,0x1b
   12ae0:	3987b707          	fld	fa4,920(a5) # 1b398 <__wctomb+0x28>
   12ae4:	a2e797d3          	flt.d	a5,fa5,fa4
   12ae8:	440790e3          	bnez	a5,13728 <_dtoa_r+0x1004>
   12aec:	0001b7b7          	lui	a5,0x1b
   12af0:	d20706d3          	fcvt.d.w	fa3,a4
   12af4:	3a87b707          	fld	fa4,936(a5) # 1b3a8 <__wctomb+0x38>
   12af8:	fcc006b7          	lui	a3,0xfcc00
   12afc:	72f6f743          	fmadd.d	fa4,fa3,fa5,fa4
   12b00:	e2070753          	fmv.x.d	a4,fa4
   12b04:	42075793          	srai	a5,a4,0x20
   12b08:	00d787bb          	addw	a5,a5,a3
   12b0c:	02071713          	slli	a4,a4,0x20
   12b10:	02079793          	slli	a5,a5,0x20
   12b14:	02075713          	srli	a4,a4,0x20
   12b18:	00f76733          	or	a4,a4,a5
   12b1c:	180a86e3          	beqz	s5,134a8 <_dtoa_r+0xd84>
   12b20:	000b8693          	mv	a3,s7
   12b24:	000a8613          	mv	a2,s5
   12b28:	01012783          	lw	a5,16(sp)
   12b2c:	300782e3          	beqz	a5,13630 <_dtoa_r+0xf0c>
   12b30:	fff6079b          	addiw	a5,a2,-1
   12b34:	000195b7          	lui	a1,0x19
   12b38:	fb058593          	addi	a1,a1,-80 # 18fb0 <__mprec_tens>
   12b3c:	00379793          	slli	a5,a5,0x3
   12b40:	00b787b3          	add	a5,a5,a1
   12b44:	0001b5b7          	lui	a1,0x1b
   12b48:	0007b687          	fld	fa3,0(a5)
   12b4c:	3b85b707          	fld	fa4,952(a1) # 1b3b8 <__wctomb+0x48>
   12b50:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   12b54:	00813503          	ld	a0,8(sp)
   12b58:	1ad77753          	fdiv.d	fa4,fa4,fa3
   12b5c:	d20786d3          	fcvt.d.w	fa3,a5
   12b60:	0307879b          	addiw	a5,a5,48
   12b64:	0ff7f793          	andi	a5,a5,255
   12b68:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   12b6c:	f20706d3          	fmv.d.x	fa3,a4
   12b70:	00f50023          	sb	a5,0(a0)
   12b74:	00150493          	addi	s1,a0,1
   12b78:	0ad77753          	fsub.d	fa4,fa4,fa3
   12b7c:	a2e79753          	flt.d	a4,fa5,fa4
   12b80:	08071063          	bnez	a4,12c00 <_dtoa_r+0x4dc>
   12b84:	0001b737          	lui	a4,0x1b
   12b88:	39873587          	fld	fa1,920(a4) # 1b398 <__wctomb+0x28>
   12b8c:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   12b90:	a2e69753          	flt.d	a4,fa3,fa4
   12b94:	40071ae3          	bnez	a4,137a8 <_dtoa_r+0x1084>
   12b98:	00100793          	li	a5,1
   12b9c:	1ac7d4e3          	ble	a2,a5,13544 <_dtoa_r+0xe20>
   12ba0:	0001b7b7          	lui	a5,0x1b
   12ba4:	ffe6061b          	addiw	a2,a2,-2
   12ba8:	02061613          	slli	a2,a2,0x20
   12bac:	3a07b607          	fld	fa2,928(a5) # 1b3a0 <__wctomb+0x30>
   12bb0:	00813783          	ld	a5,8(sp)
   12bb4:	02065613          	srli	a2,a2,0x20
   12bb8:	00260613          	addi	a2,a2,2
   12bbc:	00c78633          	add	a2,a5,a2
   12bc0:	0140006f          	j	12bd4 <_dtoa_r+0x4b0>
   12bc4:	0af5f6d3          	fsub.d	fa3,fa1,fa5
   12bc8:	a2e69753          	flt.d	a4,fa3,fa4
   12bcc:	3c071ee3          	bnez	a4,137a8 <_dtoa_r+0x1084>
   12bd0:	16960ae3          	beq	a2,s1,13544 <_dtoa_r+0xe20>
   12bd4:	12c7f7d3          	fmul.d	fa5,fa5,fa2
   12bd8:	12c77753          	fmul.d	fa4,fa4,fa2
   12bdc:	00148493          	addi	s1,s1,1
   12be0:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   12be4:	d20786d3          	fcvt.d.w	fa3,a5
   12be8:	0307879b          	addiw	a5,a5,48
   12bec:	0ff7f793          	andi	a5,a5,255
   12bf0:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   12bf4:	fef48fa3          	sb	a5,-1(s1)
   12bf8:	a2e79753          	flt.d	a4,fa5,fa4
   12bfc:	fc0704e3          	beqz	a4,12bc4 <_dtoa_r+0x4a0>
   12c00:	00068b93          	mv	s7,a3
   12c04:	02013583          	ld	a1,32(sp)
   12c08:	00040513          	mv	a0,s0
   12c0c:	001b8b9b          	addiw	s7,s7,1
   12c10:	57c020ef          	jal	1518c <_Bfree>
   12c14:	00013783          	ld	a5,0(sp)
   12c18:	00048023          	sb	zero,0(s1)
   12c1c:	0177a023          	sw	s7,0(a5)
   12c20:	0c0b0ce3          	beqz	s6,134f8 <_dtoa_r+0xdd4>
   12c24:	009b3023          	sd	s1,0(s6)
   12c28:	00813503          	ld	a0,8(sp)
   12c2c:	bc5ff06f          	j	127f0 <_dtoa_r+0xcc>
   12c30:	00019537          	lui	a0,0x19
   12c34:	2c850513          	addi	a0,a0,712 # 192c8 <zeroes.4137+0x88>
   12c38:	c15ff06f          	j	1284c <_dtoa_r+0x128>
   12c3c:	00cd1793          	slli	a5,s10,0xc
   12c40:	02c7d693          	srli	a3,a5,0x2c
   12c44:	3ff007b7          	lui	a5,0x3ff00
   12c48:	00f6e7b3          	or	a5,a3,a5
   12c4c:	020d1493          	slli	s1,s10,0x20
   12c50:	02079793          	slli	a5,a5,0x20
   12c54:	0204d493          	srli	s1,s1,0x20
   12c58:	00f4e4b3          	or	s1,s1,a5
   12c5c:	c018081b          	addiw	a6,a6,-1023
   12c60:	05812603          	lw	a2,88(sp)
   12c64:	00000913          	li	s2,0
   12c68:	ca9ff06f          	j	12910 <_dtoa_r+0x1ec>
   12c6c:	00019537          	lui	a0,0x19
   12c70:	2b050513          	addi	a0,a0,688 # 192b0 <zeroes.4137+0x70>
   12c74:	b7dff06f          	j	127f0 <_dtoa_r+0xcc>
   12c78:	41b0083b          	negw	a6,s11
   12c7c:	00000d93          	li	s11,0
   12c80:	d1dff06f          	j	1299c <_dtoa_r+0x278>
   12c84:	06042423          	sw	zero,104(s0)
   12c88:	00000593          	li	a1,0
   12c8c:	00040513          	mv	a0,s0
   12c90:	03013c23          	sd	a6,56(sp)
   12c94:	44c020ef          	jal	150e0 <_Balloc>
   12c98:	03813803          	ld	a6,56(sp)
   12c9c:	fff00a93          	li	s5,-1
   12ca0:	00100793          	li	a5,1
   12ca4:	00a13423          	sd	a0,8(sp)
   12ca8:	06a43023          	sd	a0,96(s0)
   12cac:	03512a23          	sw	s5,52(sp)
   12cb0:	00000993          	li	s3,0
   12cb4:	00000c93          	li	s9,0
   12cb8:	00f12823          	sw	a5,16(sp)
   12cbc:	05c12783          	lw	a5,92(sp)
   12cc0:	0e07ca63          	bltz	a5,12db4 <_dtoa_r+0x690>
   12cc4:	00e00693          	li	a3,14
   12cc8:	0f76c663          	blt	a3,s7,12db4 <_dtoa_r+0x690>
   12ccc:	000197b7          	lui	a5,0x19
   12cd0:	003b9693          	slli	a3,s7,0x3
   12cd4:	fb078793          	addi	a5,a5,-80 # 18fb0 <__mprec_tens>
   12cd8:	00f687b3          	add	a5,a3,a5
   12cdc:	0007b687          	fld	fa3,0(a5)
   12ce0:	5e0cc663          	bltz	s9,132cc <_dtoa_r+0xba8>
   12ce4:	f20d0653          	fmv.d.x	fa2,s10
   12ce8:	00813703          	ld	a4,8(sp)
   12cec:	22d69553          	fneg.d	fa0,fa3
   12cf0:	1ad67753          	fdiv.d	fa4,fa2,fa3
   12cf4:	00170493          	addi	s1,a4,1
   12cf8:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   12cfc:	d20787d3          	fcvt.d.w	fa5,a5
   12d00:	0307869b          	addiw	a3,a5,48
   12d04:	00d70023          	sb	a3,0(a4)
   12d08:	00100713          	li	a4,1
   12d0c:	62f577c3          	fmadd.d	fa5,fa0,fa5,fa2
   12d10:	2aea88e3          	beq	s5,a4,137c0 <_dtoa_r+0x109c>
   12d14:	0001b7b7          	lui	a5,0x1b
   12d18:	3a07b587          	fld	fa1,928(a5) # 1b3a0 <__wctomb+0x30>
   12d1c:	f2000653          	fmv.d.x	fa2,zero
   12d20:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   12d24:	a2c7a7d3          	feq.d	a5,fa5,fa2
   12d28:	ec079ee3          	bnez	a5,12c04 <_dtoa_r+0x4e0>
   12d2c:	ffea869b          	addiw	a3,s5,-2
   12d30:	02069693          	slli	a3,a3,0x20
   12d34:	00813783          	ld	a5,8(sp)
   12d38:	0206d693          	srli	a3,a3,0x20
   12d3c:	00268693          	addi	a3,a3,2 # fffffffffcc00002 <_gp+0xfffffffffcbe44c2>
   12d40:	00d786b3          	add	a3,a5,a3
   12d44:	0100006f          	j	12d54 <_dtoa_r+0x630>
   12d48:	12b7f7d3          	fmul.d	fa5,fa5,fa1
   12d4c:	a2c7a7d3          	feq.d	a5,fa5,fa2
   12d50:	ea079ae3          	bnez	a5,12c04 <_dtoa_r+0x4e0>
   12d54:	1ad7f753          	fdiv.d	fa4,fa5,fa3
   12d58:	00148493          	addi	s1,s1,1
   12d5c:	c20717d3          	fcvt.w.d	a5,fa4,rtz
   12d60:	d2078753          	fcvt.d.w	fa4,a5
   12d64:	0307871b          	addiw	a4,a5,48
   12d68:	fee48fa3          	sb	a4,-1(s1)
   12d6c:	7ae577c3          	fmadd.d	fa5,fa0,fa4,fa5
   12d70:	fcd49ce3          	bne	s1,a3,12d48 <_dtoa_r+0x624>
   12d74:	02f7f7d3          	fadd.d	fa5,fa5,fa5
   12d78:	a2f69753          	flt.d	a4,fa3,fa5
   12d7c:	7c070863          	beqz	a4,1354c <_dtoa_r+0xe28>
   12d80:	fff6c783          	lbu	a5,-1(a3)
   12d84:	00068493          	mv	s1,a3
   12d88:	03900693          	li	a3,57
   12d8c:	0140006f          	j	12da0 <_dtoa_r+0x67c>
   12d90:	00813783          	ld	a5,8(sp)
   12d94:	02f70ce3          	beq	a4,a5,135cc <_dtoa_r+0xea8>
   12d98:	fff74783          	lbu	a5,-1(a4)
   12d9c:	00070493          	mv	s1,a4
   12da0:	fff48713          	addi	a4,s1,-1
   12da4:	fed786e3          	beq	a5,a3,12d90 <_dtoa_r+0x66c>
   12da8:	0017879b          	addiw	a5,a5,1
   12dac:	00f70023          	sb	a5,0(a4)
   12db0:	e55ff06f          	j	12c04 <_dtoa_r+0x4e0>
   12db4:	01012703          	lw	a4,16(sp)
   12db8:	1a070c63          	beqz	a4,12f70 <_dtoa_r+0x84c>
   12dbc:	00100693          	li	a3,1
   12dc0:	5536d863          	ble	s3,a3,13310 <_dtoa_r+0xbec>
   12dc4:	fffa869b          	addiw	a3,s5,-1
   12dc8:	72dc4c63          	blt	s8,a3,13500 <_dtoa_r+0xddc>
   12dcc:	40dc06bb          	subw	a3,s8,a3
   12dd0:	00080493          	mv	s1,a6
   12dd4:	000a8793          	mv	a5,s5
   12dd8:	120ac2e3          	bltz	s5,136fc <_dtoa_r+0xfd8>
   12ddc:	00f8083b          	addw	a6,a6,a5
   12de0:	00100593          	li	a1,1
   12de4:	00040513          	mv	a0,s0
   12de8:	04d13423          	sd	a3,72(sp)
   12dec:	05013023          	sd	a6,64(sp)
   12df0:	03013c23          	sd	a6,56(sp)
   12df4:	00fd8dbb          	addw	s11,s11,a5
   12df8:	720020ef          	jal	15518 <__i2b>
   12dfc:	04013803          	ld	a6,64(sp)
   12e00:	04813683          	ld	a3,72(sp)
   12e04:	00050a13          	mv	s4,a0
   12e08:	00048e63          	beqz	s1,12e24 <_dtoa_r+0x700>
   12e0c:	01b05c63          	blez	s11,12e24 <_dtoa_r+0x700>
   12e10:	00048793          	mv	a5,s1
   12e14:	489dc463          	blt	s11,s1,1329c <_dtoa_r+0xb78>
   12e18:	40f8083b          	subw	a6,a6,a5
   12e1c:	40f484bb          	subw	s1,s1,a5
   12e20:	40fd8dbb          	subw	s11,s11,a5
   12e24:	02013903          	ld	s2,32(sp)
   12e28:	07805e63          	blez	s8,12ea4 <_dtoa_r+0x780>
   12e2c:	01012783          	lw	a5,16(sp)
   12e30:	6a078463          	beqz	a5,134d8 <_dtoa_r+0xdb4>
   12e34:	04068a63          	beqz	a3,12e88 <_dtoa_r+0x764>
   12e38:	00068613          	mv	a2,a3
   12e3c:	000a0593          	mv	a1,s4
   12e40:	00040513          	mv	a0,s0
   12e44:	05013023          	sd	a6,64(sp)
   12e48:	02d13c23          	sd	a3,56(sp)
   12e4c:	0f5020ef          	jal	15740 <__pow5mult>
   12e50:	02013603          	ld	a2,32(sp)
   12e54:	00050593          	mv	a1,a0
   12e58:	00050a13          	mv	s4,a0
   12e5c:	00040513          	mv	a0,s0
   12e60:	6ec020ef          	jal	1554c <__multiply>
   12e64:	03813683          	ld	a3,56(sp)
   12e68:	02013583          	ld	a1,32(sp)
   12e6c:	00050913          	mv	s2,a0
   12e70:	00040513          	mv	a0,s0
   12e74:	40dc0c3b          	subw	s8,s8,a3
   12e78:	314020ef          	jal	1518c <_Bfree>
   12e7c:	04013803          	ld	a6,64(sp)
   12e80:	020c0263          	beqz	s8,12ea4 <_dtoa_r+0x780>
   12e84:	03213023          	sd	s2,32(sp)
   12e88:	02013583          	ld	a1,32(sp)
   12e8c:	000c0613          	mv	a2,s8
   12e90:	00040513          	mv	a0,s0
   12e94:	03013c23          	sd	a6,56(sp)
   12e98:	0a9020ef          	jal	15740 <__pow5mult>
   12e9c:	03813803          	ld	a6,56(sp)
   12ea0:	00050913          	mv	s2,a0
   12ea4:	00100593          	li	a1,1
   12ea8:	00040513          	mv	a0,s0
   12eac:	03013023          	sd	a6,32(sp)
   12eb0:	668020ef          	jal	15518 <__i2b>
   12eb4:	02812783          	lw	a5,40(sp)
   12eb8:	00050c13          	mv	s8,a0
   12ebc:	02013803          	ld	a6,32(sp)
   12ec0:	0c078c63          	beqz	a5,12f98 <_dtoa_r+0x874>
   12ec4:	00078613          	mv	a2,a5
   12ec8:	00050593          	mv	a1,a0
   12ecc:	00040513          	mv	a0,s0
   12ed0:	071020ef          	jal	15740 <__pow5mult>
   12ed4:	00100793          	li	a5,1
   12ed8:	00050c13          	mv	s8,a0
   12edc:	02013803          	ld	a6,32(sp)
   12ee0:	3d37c263          	blt	a5,s3,132a4 <_dtoa_r+0xb80>
   12ee4:	00cd1793          	slli	a5,s10,0xc
   12ee8:	3a079e63          	bnez	a5,132a4 <_dtoa_r+0xb80>
   12eec:	420d5693          	srai	a3,s10,0x20
   12ef0:	7ff007b7          	lui	a5,0x7ff00
   12ef4:	00f6f7b3          	and	a5,a3,a5
   12ef8:	02012023          	sw	zero,32(sp)
   12efc:	00078a63          	beqz	a5,12f10 <_dtoa_r+0x7ec>
   12f00:	00100793          	li	a5,1
   12f04:	0018081b          	addiw	a6,a6,1
   12f08:	001d8d9b          	addiw	s11,s11,1
   12f0c:	02f12023          	sw	a5,32(sp)
   12f10:	02812783          	lw	a5,40(sp)
   12f14:	00100513          	li	a0,1
   12f18:	08078863          	beqz	a5,12fa8 <_dtoa_r+0x884>
   12f1c:	014c2783          	lw	a5,20(s8)
   12f20:	03013423          	sd	a6,40(sp)
   12f24:	fff7879b          	addiw	a5,a5,-1
   12f28:	00478793          	addi	a5,a5,4 # 7ff00004 <_gp+0x7fee44c4>
   12f2c:	00279793          	slli	a5,a5,0x2
   12f30:	00fc07b3          	add	a5,s8,a5
   12f34:	0087a503          	lw	a0,8(a5)
   12f38:	4b4020ef          	jal	153ec <__hi0bits>
   12f3c:	02000793          	li	a5,32
   12f40:	40a7853b          	subw	a0,a5,a0
   12f44:	02813803          	ld	a6,40(sp)
   12f48:	0600006f          	j	12fa8 <_dtoa_r+0x884>
   12f4c:	d20b8753          	fcvt.d.w	fa4,s7
   12f50:	a2e7a7d3          	feq.d	a5,fa5,fa4
   12f54:	0017b793          	seqz	a5,a5
   12f58:	40fb8bbb          	subw	s7,s7,a5
   12f5c:	9f9ff06f          	j	12954 <_dtoa_r+0x230>
   12f60:	4178083b          	subw	a6,a6,s7
   12f64:	41700c3b          	negw	s8,s7
   12f68:	02012423          	sw	zero,40(sp)
   12f6c:	a41ff06f          	j	129ac <_dtoa_r+0x288>
   12f70:	000c0693          	mv	a3,s8
   12f74:	00080493          	mv	s1,a6
   12f78:	00000a13          	li	s4,0
   12f7c:	e8dff06f          	j	12e08 <_dtoa_r+0x6e4>
   12f80:	000d049b          	sext.w	s1,s10
   12f84:	40d787bb          	subw	a5,a5,a3
   12f88:	00f494bb          	sllw	s1,s1,a5
   12f8c:	959ff06f          	j	128e4 <_dtoa_r+0x1c0>
   12f90:	02012823          	sw	zero,48(sp)
   12f94:	9f9ff06f          	j	1298c <_dtoa_r+0x268>
   12f98:	00100793          	li	a5,1
   12f9c:	0737d4e3          	ble	s3,a5,13804 <_dtoa_r+0x10e0>
   12fa0:	02012023          	sw	zero,32(sp)
   12fa4:	00078513          	mv	a0,a5
   12fa8:	01b507bb          	addw	a5,a0,s11
   12fac:	01f7f793          	andi	a5,a5,31
   12fb0:	1a078663          	beqz	a5,1315c <_dtoa_r+0xa38>
   12fb4:	02000693          	li	a3,32
   12fb8:	40f686bb          	subw	a3,a3,a5
   12fbc:	00400613          	li	a2,4
   12fc0:	04d658e3          	ble	a3,a2,13810 <_dtoa_r+0x10ec>
   12fc4:	01c00693          	li	a3,28
   12fc8:	40f687bb          	subw	a5,a3,a5
   12fcc:	00f8083b          	addw	a6,a6,a5
   12fd0:	00f484bb          	addw	s1,s1,a5
   12fd4:	00fd8dbb          	addw	s11,s11,a5
   12fd8:	01005c63          	blez	a6,12ff0 <_dtoa_r+0x8cc>
   12fdc:	00090593          	mv	a1,s2
   12fe0:	00080613          	mv	a2,a6
   12fe4:	00040513          	mv	a0,s0
   12fe8:	091020ef          	jal	15878 <__lshift>
   12fec:	00050913          	mv	s2,a0
   12ff0:	01b05c63          	blez	s11,13008 <_dtoa_r+0x8e4>
   12ff4:	000c0593          	mv	a1,s8
   12ff8:	000d8613          	mv	a2,s11
   12ffc:	00040513          	mv	a0,s0
   13000:	079020ef          	jal	15878 <__lshift>
   13004:	00050c13          	mv	s8,a0
   13008:	03012783          	lw	a5,48(sp)
   1300c:	22079663          	bnez	a5,13238 <_dtoa_r+0xb14>
   13010:	3f505e63          	blez	s5,1340c <_dtoa_r+0xce8>
   13014:	01012783          	lw	a5,16(sp)
   13018:	14078c63          	beqz	a5,13170 <_dtoa_r+0xa4c>
   1301c:	00905c63          	blez	s1,13034 <_dtoa_r+0x910>
   13020:	000a0593          	mv	a1,s4
   13024:	00048613          	mv	a2,s1
   13028:	00040513          	mv	a0,s0
   1302c:	04d020ef          	jal	15878 <__lshift>
   13030:	00050a13          	mv	s4,a0
   13034:	02012783          	lw	a5,32(sp)
   13038:	000a0d93          	mv	s11,s4
   1303c:	5a079463          	bnez	a5,135e4 <_dtoa_r+0xec0>
   13040:	fffa849b          	addiw	s1,s5,-1
   13044:	00813783          	ld	a5,8(sp)
   13048:	02049493          	slli	s1,s1,0x20
   1304c:	0204d493          	srli	s1,s1,0x20
   13050:	00148493          	addi	s1,s1,1
   13054:	009784b3          	add	s1,a5,s1
   13058:	00078c93          	mv	s9,a5
   1305c:	001d7793          	andi	a5,s10,1
   13060:	00f13823          	sd	a5,16(sp)
   13064:	000c0593          	mv	a1,s8
   13068:	00090513          	mv	a0,s2
   1306c:	cccff0ef          	jal	12538 <quorem>
   13070:	00050d13          	mv	s10,a0
   13074:	02a12823          	sw	a0,48(sp)
   13078:	000a0593          	mv	a1,s4
   1307c:	00090513          	mv	a0,s2
   13080:	159020ef          	jal	159d8 <__mcmp>
   13084:	00050a93          	mv	s5,a0
   13088:	000d8613          	mv	a2,s11
   1308c:	000c0593          	mv	a1,s8
   13090:	00040513          	mv	a0,s0
   13094:	1a5020ef          	jal	15a38 <__mdiff>
   13098:	01052683          	lw	a3,16(a0)
   1309c:	00050793          	mv	a5,a0
   130a0:	030d0d1b          	addiw	s10,s10,48
   130a4:	00100713          	li	a4,1
   130a8:	00069e63          	bnez	a3,130c4 <_dtoa_r+0x9a0>
   130ac:	00050593          	mv	a1,a0
   130b0:	02a13023          	sd	a0,32(sp)
   130b4:	00090513          	mv	a0,s2
   130b8:	121020ef          	jal	159d8 <__mcmp>
   130bc:	02013783          	ld	a5,32(sp)
   130c0:	00050713          	mv	a4,a0
   130c4:	00078593          	mv	a1,a5
   130c8:	00040513          	mv	a0,s0
   130cc:	02e13023          	sd	a4,32(sp)
   130d0:	0bc020ef          	jal	1518c <_Bfree>
   130d4:	02013703          	ld	a4,32(sp)
   130d8:	013767b3          	or	a5,a4,s3
   130dc:	00079663          	bnez	a5,130e8 <_dtoa_r+0x9c4>
   130e0:	01012783          	lw	a5,16(sp)
   130e4:	24078063          	beqz	a5,13324 <_dtoa_r+0xc00>
   130e8:	260ac463          	bltz	s5,13350 <_dtoa_r+0xc2c>
   130ec:	013aeab3          	or	s5,s5,s3
   130f0:	000a9663          	bnez	s5,130fc <_dtoa_r+0x9d8>
   130f4:	01012783          	lw	a5,16(sp)
   130f8:	24078c63          	beqz	a5,13350 <_dtoa_r+0xc2c>
   130fc:	5ee04263          	bgtz	a4,136e0 <_dtoa_r+0xfbc>
   13100:	001c8c93          	addi	s9,s9,1
   13104:	ffac8fa3          	sb	s10,-1(s9)
   13108:	5f948463          	beq	s1,s9,136f0 <_dtoa_r+0xfcc>
   1310c:	00090593          	mv	a1,s2
   13110:	00000693          	li	a3,0
   13114:	00a00613          	li	a2,10
   13118:	00040513          	mv	a0,s0
   1311c:	094020ef          	jal	151b0 <__multadd>
   13120:	00050913          	mv	s2,a0
   13124:	00000693          	li	a3,0
   13128:	00a00613          	li	a2,10
   1312c:	000a0593          	mv	a1,s4
   13130:	00040513          	mv	a0,s0
   13134:	27ba0463          	beq	s4,s11,1339c <_dtoa_r+0xc78>
   13138:	078020ef          	jal	151b0 <__multadd>
   1313c:	000d8593          	mv	a1,s11
   13140:	00050a13          	mv	s4,a0
   13144:	00000693          	li	a3,0
   13148:	00a00613          	li	a2,10
   1314c:	00040513          	mv	a0,s0
   13150:	060020ef          	jal	151b0 <__multadd>
   13154:	00050d93          	mv	s11,a0
   13158:	f0dff06f          	j	13064 <_dtoa_r+0x940>
   1315c:	01c00793          	li	a5,28
   13160:	00f8083b          	addw	a6,a6,a5
   13164:	00f484bb          	addw	s1,s1,a5
   13168:	00fd8dbb          	addw	s11,s11,a5
   1316c:	e6dff06f          	j	12fd8 <_dtoa_r+0x8b4>
   13170:	00813483          	ld	s1,8(sp)
   13174:	00100993          	li	s3,1
   13178:	0100006f          	j	13188 <_dtoa_r+0xa64>
   1317c:	034020ef          	jal	151b0 <__multadd>
   13180:	00050913          	mv	s2,a0
   13184:	0019899b          	addiw	s3,s3,1
   13188:	000c0593          	mv	a1,s8
   1318c:	00090513          	mv	a0,s2
   13190:	ba8ff0ef          	jal	12538 <quorem>
   13194:	03050d1b          	addiw	s10,a0,48
   13198:	00148493          	addi	s1,s1,1
   1319c:	ffa48fa3          	sb	s10,-1(s1)
   131a0:	00000693          	li	a3,0
   131a4:	00a00613          	li	a2,10
   131a8:	00090593          	mv	a1,s2
   131ac:	00040513          	mv	a0,s0
   131b0:	fd59c6e3          	blt	s3,s5,1317c <_dtoa_r+0xa58>
   131b4:	00000993          	li	s3,0
   131b8:	00090593          	mv	a1,s2
   131bc:	00100613          	li	a2,1
   131c0:	00040513          	mv	a0,s0
   131c4:	6b4020ef          	jal	15878 <__lshift>
   131c8:	000c0593          	mv	a1,s8
   131cc:	02a13023          	sd	a0,32(sp)
   131d0:	009020ef          	jal	159d8 <__mcmp>
   131d4:	34a05463          	blez	a0,1351c <_dtoa_r+0xdf8>
   131d8:	fff4c703          	lbu	a4,-1(s1)
   131dc:	03900693          	li	a3,57
   131e0:	0140006f          	j	131f4 <_dtoa_r+0xad0>
   131e4:	00813703          	ld	a4,8(sp)
   131e8:	26e78a63          	beq	a5,a4,1345c <_dtoa_r+0xd38>
   131ec:	fff7c703          	lbu	a4,-1(a5)
   131f0:	00078493          	mv	s1,a5
   131f4:	fff48793          	addi	a5,s1,-1
   131f8:	fed706e3          	beq	a4,a3,131e4 <_dtoa_r+0xac0>
   131fc:	0017071b          	addiw	a4,a4,1
   13200:	00e78023          	sb	a4,0(a5)
   13204:	000c0593          	mv	a1,s8
   13208:	00040513          	mv	a0,s0
   1320c:	781010ef          	jal	1518c <_Bfree>
   13210:	9e0a0ae3          	beqz	s4,12c04 <_dtoa_r+0x4e0>
   13214:	00098a63          	beqz	s3,13228 <_dtoa_r+0xb04>
   13218:	01498863          	beq	s3,s4,13228 <_dtoa_r+0xb04>
   1321c:	00098593          	mv	a1,s3
   13220:	00040513          	mv	a0,s0
   13224:	769010ef          	jal	1518c <_Bfree>
   13228:	000a0593          	mv	a1,s4
   1322c:	00040513          	mv	a0,s0
   13230:	75d010ef          	jal	1518c <_Bfree>
   13234:	9d1ff06f          	j	12c04 <_dtoa_r+0x4e0>
   13238:	000c0593          	mv	a1,s8
   1323c:	00090513          	mv	a0,s2
   13240:	798020ef          	jal	159d8 <__mcmp>
   13244:	dc0556e3          	bgez	a0,13010 <_dtoa_r+0x8ec>
   13248:	00090593          	mv	a1,s2
   1324c:	00000693          	li	a3,0
   13250:	00a00613          	li	a2,10
   13254:	00040513          	mv	a0,s0
   13258:	759010ef          	jal	151b0 <__multadd>
   1325c:	01012783          	lw	a5,16(sp)
   13260:	00050913          	mv	s2,a0
   13264:	fffb8b9b          	addiw	s7,s7,-1
   13268:	56079063          	bnez	a5,137c8 <_dtoa_r+0x10a4>
   1326c:	03412783          	lw	a5,52(sp)
   13270:	00078a93          	mv	s5,a5
   13274:	eef04ee3          	bgtz	a5,13170 <_dtoa_r+0xa4c>
   13278:	00200793          	li	a5,2
   1327c:	5937c063          	blt	a5,s3,137fc <_dtoa_r+0x10d8>
   13280:	000c0593          	mv	a1,s8
   13284:	ab4ff0ef          	jal	12538 <quorem>
   13288:	00813783          	ld	a5,8(sp)
   1328c:	03050d1b          	addiw	s10,a0,48
   13290:	00178493          	addi	s1,a5,1
   13294:	ffa48fa3          	sb	s10,-1(s1)
   13298:	f1dff06f          	j	131b4 <_dtoa_r+0xa90>
   1329c:	000d8793          	mv	a5,s11
   132a0:	b79ff06f          	j	12e18 <_dtoa_r+0x6f4>
   132a4:	02012023          	sw	zero,32(sp)
   132a8:	c75ff06f          	j	12f1c <_dtoa_r+0x7f8>
   132ac:	00100793          	li	a5,1
   132b0:	00f12823          	sw	a5,16(sp)
   132b4:	0f905c63          	blez	s9,133ac <_dtoa_r+0xc88>
   132b8:	000c8513          	mv	a0,s9
   132bc:	000c8493          	mv	s1,s9
   132c0:	03912a23          	sw	s9,52(sp)
   132c4:	000c8a93          	mv	s5,s9
   132c8:	f3cff06f          	j	12a04 <_dtoa_r+0x2e0>
   132cc:	a1504ce3          	bgtz	s5,12ce4 <_dtoa_r+0x5c0>
   132d0:	1e0a9e63          	bnez	s5,134cc <_dtoa_r+0xda8>
   132d4:	0001b7b7          	lui	a5,0x1b
   132d8:	3b07b787          	fld	fa5,944(a5) # 1b3b0 <__wctomb+0x40>
   132dc:	00000c13          	li	s8,0
   132e0:	00000a13          	li	s4,0
   132e4:	12f6f6d3          	fmul.d	fa3,fa3,fa5
   132e8:	f20d07d3          	fmv.d.x	fa5,s10
   132ec:	a2d78753          	fle.d	a4,fa5,fa3
   132f0:	14070a63          	beqz	a4,13444 <_dtoa_r+0xd20>
   132f4:	00813483          	ld	s1,8(sp)
   132f8:	fffccb93          	not	s7,s9
   132fc:	000c0593          	mv	a1,s8
   13300:	00040513          	mv	a0,s0
   13304:	689010ef          	jal	1518c <_Bfree>
   13308:	8e0a0ee3          	beqz	s4,12c04 <_dtoa_r+0x4e0>
   1330c:	f1dff06f          	j	13228 <_dtoa_r+0xb04>
   13310:	3e090c63          	beqz	s2,13708 <_dtoa_r+0xfe4>
   13314:	4337879b          	addiw	a5,a5,1075
   13318:	000c0693          	mv	a3,s8
   1331c:	00080493          	mv	s1,a6
   13320:	abdff06f          	j	12ddc <_dtoa_r+0x6b8>
   13324:	03900793          	li	a5,57
   13328:	04fd0a63          	beq	s10,a5,1337c <_dtoa_r+0xc58>
   1332c:	01505663          	blez	s5,13338 <_dtoa_r+0xc14>
   13330:	03012783          	lw	a5,48(sp)
   13334:	03178d1b          	addiw	s10,a5,49
   13338:	000a0993          	mv	s3,s4
   1333c:	001c8493          	addi	s1,s9,1
   13340:	01ac8023          	sb	s10,0(s9)
   13344:	000d8a13          	mv	s4,s11
   13348:	03213023          	sd	s2,32(sp)
   1334c:	eb9ff06f          	j	13204 <_dtoa_r+0xae0>
   13350:	fee054e3          	blez	a4,13338 <_dtoa_r+0xc14>
   13354:	00090593          	mv	a1,s2
   13358:	00100613          	li	a2,1
   1335c:	00040513          	mv	a0,s0
   13360:	518020ef          	jal	15878 <__lshift>
   13364:	000c0593          	mv	a1,s8
   13368:	00050913          	mv	s2,a0
   1336c:	66c020ef          	jal	159d8 <__mcmp>
   13370:	44a05063          	blez	a0,137b0 <_dtoa_r+0x108c>
   13374:	03900793          	li	a5,57
   13378:	fafd1ce3          	bne	s10,a5,13330 <_dtoa_r+0xc0c>
   1337c:	03900793          	li	a5,57
   13380:	000a0993          	mv	s3,s4
   13384:	001c8493          	addi	s1,s9,1
   13388:	00fc8023          	sb	a5,0(s9)
   1338c:	000d8a13          	mv	s4,s11
   13390:	03213023          	sd	s2,32(sp)
   13394:	03900713          	li	a4,57
   13398:	e45ff06f          	j	131dc <_dtoa_r+0xab8>
   1339c:	615010ef          	jal	151b0 <__multadd>
   133a0:	00050a13          	mv	s4,a0
   133a4:	00050d93          	mv	s11,a0
   133a8:	cbdff06f          	j	13064 <_dtoa_r+0x940>
   133ac:	00100493          	li	s1,1
   133b0:	02912a23          	sw	s1,52(sp)
   133b4:	00048a93          	mv	s5,s1
   133b8:	00048c93          	mv	s9,s1
   133bc:	06042423          	sw	zero,104(s0)
   133c0:	00000593          	li	a1,0
   133c4:	e74ff06f          	j	12a38 <_dtoa_r+0x314>
   133c8:	00012823          	sw	zero,16(sp)
   133cc:	00200793          	li	a5,2
   133d0:	eef982e3          	beq	s3,a5,132b4 <_dtoa_r+0xb90>
   133d4:	06042423          	sw	zero,104(s0)
   133d8:	00000593          	li	a1,0
   133dc:	00040513          	mv	a0,s0
   133e0:	03013c23          	sd	a6,56(sp)
   133e4:	4fd010ef          	jal	150e0 <_Balloc>
   133e8:	fff00a93          	li	s5,-1
   133ec:	00100793          	li	a5,1
   133f0:	00a13423          	sd	a0,8(sp)
   133f4:	06a43023          	sd	a0,96(s0)
   133f8:	03512a23          	sw	s5,52(sp)
   133fc:	00000c93          	li	s9,0
   13400:	00f12823          	sw	a5,16(sp)
   13404:	03813803          	ld	a6,56(sp)
   13408:	8b5ff06f          	j	12cbc <_dtoa_r+0x598>
   1340c:	00200793          	li	a5,2
   13410:	c137d2e3          	ble	s3,a5,13014 <_dtoa_r+0x8f0>
   13414:	300a9663          	bnez	s5,13720 <_dtoa_r+0xffc>
   13418:	000c0593          	mv	a1,s8
   1341c:	00000693          	li	a3,0
   13420:	00500613          	li	a2,5
   13424:	00040513          	mv	a0,s0
   13428:	589010ef          	jal	151b0 <__multadd>
   1342c:	00050593          	mv	a1,a0
   13430:	00050c13          	mv	s8,a0
   13434:	00090513          	mv	a0,s2
   13438:	5a0020ef          	jal	159d8 <__mcmp>
   1343c:	03213023          	sd	s2,32(sp)
   13440:	eaa05ae3          	blez	a0,132f4 <_dtoa_r+0xbd0>
   13444:	00813703          	ld	a4,8(sp)
   13448:	03100793          	li	a5,49
   1344c:	001b8b9b          	addiw	s7,s7,1
   13450:	00170493          	addi	s1,a4,1
   13454:	00f70023          	sb	a5,0(a4)
   13458:	ea5ff06f          	j	132fc <_dtoa_r+0xbd8>
   1345c:	00813703          	ld	a4,8(sp)
   13460:	03100793          	li	a5,49
   13464:	001b8b9b          	addiw	s7,s7,1
   13468:	00f70023          	sb	a5,0(a4)
   1346c:	d99ff06f          	j	13204 <_dtoa_r+0xae0>
   13470:	00012823          	sw	zero,16(sp)
   13474:	d78ff06f          	j	129ec <_dtoa_r+0x2c8>
   13478:	0001b7b7          	lui	a5,0x1b
   1347c:	d20706d3          	fcvt.d.w	fa3,a4
   13480:	3a87b707          	fld	fa4,936(a5) # 1b3a8 <__wctomb+0x38>
   13484:	fcc006b7          	lui	a3,0xfcc00
   13488:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   1348c:	e2070753          	fmv.x.d	a4,fa4
   13490:	42075793          	srai	a5,a4,0x20
   13494:	00d787bb          	addw	a5,a5,a3
   13498:	02071713          	slli	a4,a4,0x20
   1349c:	02079793          	slli	a5,a5,0x20
   134a0:	02075713          	srli	a4,a4,0x20
   134a4:	00f76733          	or	a4,a4,a5
   134a8:	0001b7b7          	lui	a5,0x1b
   134ac:	3b07b707          	fld	fa4,944(a5) # 1b3b0 <__wctomb+0x40>
   134b0:	f20706d3          	fmv.d.x	fa3,a4
   134b4:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   134b8:	a2f697d3          	flt.d	a5,fa3,fa5
   134bc:	16079463          	bnez	a5,13624 <_dtoa_r+0xf00>
   134c0:	22d69753          	fneg.d	fa4,fa3
   134c4:	a2e797d3          	flt.d	a5,fa5,fa4
   134c8:	06078e63          	beqz	a5,13544 <_dtoa_r+0xe20>
   134cc:	00000c13          	li	s8,0
   134d0:	00000a13          	li	s4,0
   134d4:	e21ff06f          	j	132f4 <_dtoa_r+0xbd0>
   134d8:	00090593          	mv	a1,s2
   134dc:	000c0613          	mv	a2,s8
   134e0:	00040513          	mv	a0,s0
   134e4:	03013023          	sd	a6,32(sp)
   134e8:	258020ef          	jal	15740 <__pow5mult>
   134ec:	00050913          	mv	s2,a0
   134f0:	02013803          	ld	a6,32(sp)
   134f4:	9b1ff06f          	j	12ea4 <_dtoa_r+0x780>
   134f8:	00813503          	ld	a0,8(sp)
   134fc:	af4ff06f          	j	127f0 <_dtoa_r+0xcc>
   13500:	02812783          	lw	a5,40(sp)
   13504:	41868c3b          	subw	s8,a3,s8
   13508:	018787bb          	addw	a5,a5,s8
   1350c:	02f12423          	sw	a5,40(sp)
   13510:	00068c13          	mv	s8,a3
   13514:	00000693          	li	a3,0
   13518:	8b9ff06f          	j	12dd0 <_dtoa_r+0x6ac>
   1351c:	00051663          	bnez	a0,13528 <_dtoa_r+0xe04>
   13520:	001d7d13          	andi	s10,s10,1
   13524:	ca0d1ae3          	bnez	s10,131d8 <_dtoa_r+0xab4>
   13528:	03000693          	li	a3,48
   1352c:	0080006f          	j	13534 <_dtoa_r+0xe10>
   13530:	00070493          	mv	s1,a4
   13534:	fff4c783          	lbu	a5,-1(s1)
   13538:	fff48713          	addi	a4,s1,-1
   1353c:	fed78ae3          	beq	a5,a3,13530 <_dtoa_r+0xe0c>
   13540:	cc5ff06f          	j	13204 <_dtoa_r+0xae0>
   13544:	03813d03          	ld	s10,56(sp)
   13548:	f74ff06f          	j	12cbc <_dtoa_r+0x598>
   1354c:	a2f6a753          	feq.d	a4,fa3,fa5
   13550:	00068493          	mv	s1,a3
   13554:	ea070863          	beqz	a4,12c04 <_dtoa_r+0x4e0>
   13558:	0017f793          	andi	a5,a5,1
   1355c:	ea078463          	beqz	a5,12c04 <_dtoa_r+0x4e0>
   13560:	fff6c783          	lbu	a5,-1(a3) # fffffffffcbfffff <_gp+0xfffffffffcbe44bf>
   13564:	825ff06f          	j	12d88 <_dtoa_r+0x664>
   13568:	417007bb          	negw	a5,s7
   1356c:	03813787          	fld	fa5,56(sp)
   13570:	00200713          	li	a4,2
   13574:	d6078063          	beqz	a5,12ad4 <_dtoa_r+0x3b0>
   13578:	00f7f693          	andi	a3,a5,15
   1357c:	00019637          	lui	a2,0x19
   13580:	00369693          	slli	a3,a3,0x3
   13584:	fb060613          	addi	a2,a2,-80 # 18fb0 <__mprec_tens>
   13588:	00c686b3          	add	a3,a3,a2
   1358c:	0006b787          	fld	fa5,0(a3)
   13590:	03813707          	fld	fa4,56(sp)
   13594:	4047d79b          	sraiw	a5,a5,0x4
   13598:	12f777d3          	fmul.d	fa5,fa4,fa5
   1359c:	d2078c63          	beqz	a5,12ad4 <_dtoa_r+0x3b0>
   135a0:	000196b7          	lui	a3,0x19
   135a4:	0a068693          	addi	a3,a3,160 # 190a0 <__mprec_bigtens>
   135a8:	0017f613          	andi	a2,a5,1
   135ac:	4017d79b          	sraiw	a5,a5,0x1
   135b0:	00060863          	beqz	a2,135c0 <_dtoa_r+0xe9c>
   135b4:	0006b707          	fld	fa4,0(a3)
   135b8:	0017071b          	addiw	a4,a4,1
   135bc:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   135c0:	00868693          	addi	a3,a3,8
   135c4:	fe0792e3          	bnez	a5,135a8 <_dtoa_r+0xe84>
   135c8:	d0cff06f          	j	12ad4 <_dtoa_r+0x3b0>
   135cc:	00813683          	ld	a3,8(sp)
   135d0:	03000793          	li	a5,48
   135d4:	001b8b9b          	addiw	s7,s7,1
   135d8:	00f68023          	sb	a5,0(a3)
   135dc:	fff4c783          	lbu	a5,-1(s1)
   135e0:	fc8ff06f          	j	12da8 <_dtoa_r+0x684>
   135e4:	008a2583          	lw	a1,8(s4)
   135e8:	00040513          	mv	a0,s0
   135ec:	2f5010ef          	jal	150e0 <_Balloc>
   135f0:	014a2603          	lw	a2,20(s4)
   135f4:	00050493          	mv	s1,a0
   135f8:	010a0593          	addi	a1,s4,16
   135fc:	00260613          	addi	a2,a2,2
   13600:	00261613          	slli	a2,a2,0x2
   13604:	01050513          	addi	a0,a0,16
   13608:	0d5010ef          	jal	14edc <memcpy>
   1360c:	00100613          	li	a2,1
   13610:	00048593          	mv	a1,s1
   13614:	00040513          	mv	a0,s0
   13618:	260020ef          	jal	15878 <__lshift>
   1361c:	00050d93          	mv	s11,a0
   13620:	a21ff06f          	j	13040 <_dtoa_r+0x91c>
   13624:	00000c13          	li	s8,0
   13628:	00000a13          	li	s4,0
   1362c:	e19ff06f          	j	13444 <_dtoa_r+0xd20>
   13630:	fff6079b          	addiw	a5,a2,-1
   13634:	00019537          	lui	a0,0x19
   13638:	c20795d3          	fcvt.w.d	a1,fa5,rtz
   1363c:	00379793          	slli	a5,a5,0x3
   13640:	fb050513          	addi	a0,a0,-80 # 18fb0 <__mprec_tens>
   13644:	00a787b3          	add	a5,a5,a0
   13648:	0007b707          	fld	fa4,0(a5)
   1364c:	00813783          	ld	a5,8(sp)
   13650:	d20586d3          	fcvt.d.w	fa3,a1
   13654:	f2070653          	fmv.d.x	fa2,a4
   13658:	0305859b          	addiw	a1,a1,48
   1365c:	00b78023          	sb	a1,0(a5)
   13660:	00178493          	addi	s1,a5,1
   13664:	00100793          	li	a5,1
   13668:	12c77653          	fmul.d	fa2,fa4,fa2
   1366c:	0ad7f7d3          	fsub.d	fa5,fa5,fa3
   13670:	04f60863          	beq	a2,a5,136c0 <_dtoa_r+0xf9c>
   13674:	ffe6061b          	addiw	a2,a2,-2
   13678:	0001b7b7          	lui	a5,0x1b
   1367c:	02061593          	slli	a1,a2,0x20
   13680:	3a07b687          	fld	fa3,928(a5) # 1b3a0 <__wctomb+0x30>
   13684:	00813783          	ld	a5,8(sp)
   13688:	0205d593          	srli	a1,a1,0x20
   1368c:	00258513          	addi	a0,a1,2
   13690:	00a78533          	add	a0,a5,a0
   13694:	00048613          	mv	a2,s1
   13698:	12d7f7d3          	fmul.d	fa5,fa5,fa3
   1369c:	00160613          	addi	a2,a2,1
   136a0:	c20797d3          	fcvt.w.d	a5,fa5,rtz
   136a4:	d2078753          	fcvt.d.w	fa4,a5
   136a8:	0307879b          	addiw	a5,a5,48
   136ac:	fef60fa3          	sb	a5,-1(a2)
   136b0:	0ae7f7d3          	fsub.d	fa5,fa5,fa4
   136b4:	fea612e3          	bne	a2,a0,13698 <_dtoa_r+0xf74>
   136b8:	00158593          	addi	a1,a1,1
   136bc:	00b484b3          	add	s1,s1,a1
   136c0:	0001b7b7          	lui	a5,0x1b
   136c4:	3b87b707          	fld	fa4,952(a5) # 1b3b8 <__wctomb+0x48>
   136c8:	02e676d3          	fadd.d	fa3,fa2,fa4
   136cc:	a2f697d3          	flt.d	a5,fa3,fa5
   136d0:	0a078663          	beqz	a5,1377c <_dtoa_r+0x1058>
   136d4:	fff4c783          	lbu	a5,-1(s1)
   136d8:	00068b93          	mv	s7,a3
   136dc:	eacff06f          	j	12d88 <_dtoa_r+0x664>
   136e0:	03900793          	li	a5,57
   136e4:	c8fd0ce3          	beq	s10,a5,1337c <_dtoa_r+0xc58>
   136e8:	001d0d1b          	addiw	s10,s10,1
   136ec:	c4dff06f          	j	13338 <_dtoa_r+0xc14>
   136f0:	000a0993          	mv	s3,s4
   136f4:	000d8a13          	mv	s4,s11
   136f8:	ac1ff06f          	j	131b8 <_dtoa_r+0xa94>
   136fc:	415804bb          	subw	s1,a6,s5
   13700:	00000793          	li	a5,0
   13704:	ed8ff06f          	j	12ddc <_dtoa_r+0x6b8>
   13708:	05812603          	lw	a2,88(sp)
   1370c:	03600793          	li	a5,54
   13710:	000c0693          	mv	a3,s8
   13714:	40c787bb          	subw	a5,a5,a2
   13718:	00080493          	mv	s1,a6
   1371c:	ec0ff06f          	j	12ddc <_dtoa_r+0x6b8>
   13720:	03213023          	sd	s2,32(sp)
   13724:	bd1ff06f          	j	132f4 <_dtoa_r+0xbd0>
   13728:	d40a88e3          	beqz	s5,13478 <_dtoa_r+0xd54>
   1372c:	03412603          	lw	a2,52(sp)
   13730:	e0c05ae3          	blez	a2,13544 <_dtoa_r+0xe20>
   13734:	0001b7b7          	lui	a5,0x1b
   13738:	3a07b707          	fld	fa4,928(a5) # 1b3a0 <__wctomb+0x30>
   1373c:	0017071b          	addiw	a4,a4,1
   13740:	0001b7b7          	lui	a5,0x1b
   13744:	12e7f7d3          	fmul.d	fa5,fa5,fa4
   13748:	d20706d3          	fcvt.d.w	fa3,a4
   1374c:	3a87b707          	fld	fa4,936(a5) # 1b3a8 <__wctomb+0x38>
   13750:	fcc005b7          	lui	a1,0xfcc00
   13754:	fffb869b          	addiw	a3,s7,-1
   13758:	72d7f743          	fmadd.d	fa4,fa5,fa3,fa4
   1375c:	e2070753          	fmv.x.d	a4,fa4
   13760:	42075793          	srai	a5,a4,0x20
   13764:	00b787bb          	addw	a5,a5,a1
   13768:	02071713          	slli	a4,a4,0x20
   1376c:	02079793          	slli	a5,a5,0x20
   13770:	02075713          	srli	a4,a4,0x20
   13774:	00f76733          	or	a4,a4,a5
   13778:	bb0ff06f          	j	12b28 <_dtoa_r+0x404>
   1377c:	0ac77753          	fsub.d	fa4,fa4,fa2
   13780:	03000613          	li	a2,48
   13784:	a2e797d3          	flt.d	a5,fa5,fa4
   13788:	00079663          	bnez	a5,13794 <_dtoa_r+0x1070>
   1378c:	db9ff06f          	j	13544 <_dtoa_r+0xe20>
   13790:	00070493          	mv	s1,a4
   13794:	fff4c783          	lbu	a5,-1(s1)
   13798:	fff48713          	addi	a4,s1,-1
   1379c:	fec78ae3          	beq	a5,a2,13790 <_dtoa_r+0x106c>
   137a0:	00068b93          	mv	s7,a3
   137a4:	c60ff06f          	j	12c04 <_dtoa_r+0x4e0>
   137a8:	00068b93          	mv	s7,a3
   137ac:	ddcff06f          	j	12d88 <_dtoa_r+0x664>
   137b0:	b80514e3          	bnez	a0,13338 <_dtoa_r+0xc14>
   137b4:	001d7793          	andi	a5,s10,1
   137b8:	b80780e3          	beqz	a5,13338 <_dtoa_r+0xc14>
   137bc:	bb9ff06f          	j	13374 <_dtoa_r+0xc50>
   137c0:	00048693          	mv	a3,s1
   137c4:	db0ff06f          	j	12d74 <_dtoa_r+0x650>
   137c8:	000a0593          	mv	a1,s4
   137cc:	00000693          	li	a3,0
   137d0:	00a00613          	li	a2,10
   137d4:	00040513          	mv	a0,s0
   137d8:	1d9010ef          	jal	151b0 <__multadd>
   137dc:	03412783          	lw	a5,52(sp)
   137e0:	00050a13          	mv	s4,a0
   137e4:	00078a93          	mv	s5,a5
   137e8:	82f04ae3          	bgtz	a5,1301c <_dtoa_r+0x8f8>
   137ec:	00200793          	li	a5,2
   137f0:	0137c663          	blt	a5,s3,137fc <_dtoa_r+0x10d8>
   137f4:	03412a83          	lw	s5,52(sp)
   137f8:	825ff06f          	j	1301c <_dtoa_r+0x8f8>
   137fc:	03412a83          	lw	s5,52(sp)
   13800:	c15ff06f          	j	13414 <_dtoa_r+0xcf0>
   13804:	00cd1713          	slli	a4,s10,0xc
   13808:	ee070263          	beqz	a4,12eec <_dtoa_r+0x7c8>
   1380c:	f94ff06f          	j	12fa0 <_dtoa_r+0x87c>
   13810:	fcc68463          	beq	a3,a2,12fd8 <_dtoa_r+0x8b4>
   13814:	03c00693          	li	a3,60
   13818:	40f687bb          	subw	a5,a3,a5
   1381c:	945ff06f          	j	13160 <_dtoa_r+0xa3c>

0000000000013820 <__sflush_r>:
   13820:	01059683          	lh	a3,16(a1) # fffffffffcc00010 <_gp+0xfffffffffcbe44d0>
   13824:	fd010113          	addi	sp,sp,-48
   13828:	00913c23          	sd	s1,24(sp)
   1382c:	03069713          	slli	a4,a3,0x30
   13830:	03075713          	srli	a4,a4,0x30
   13834:	01313423          	sd	s3,8(sp)
   13838:	02113423          	sd	ra,40(sp)
   1383c:	02813023          	sd	s0,32(sp)
   13840:	01213823          	sd	s2,16(sp)
   13844:	00877793          	andi	a5,a4,8
   13848:	00058493          	mv	s1,a1
   1384c:	00050993          	mv	s3,a0
   13850:	0e079863          	bnez	a5,13940 <__sflush_r+0x120>
   13854:	000017b7          	lui	a5,0x1
   13858:	8007879b          	addiw	a5,a5,-2048
   1385c:	00f6e7b3          	or	a5,a3,a5
   13860:	0107979b          	slliw	a5,a5,0x10
   13864:	0085a703          	lw	a4,8(a1)
   13868:	4107d79b          	sraiw	a5,a5,0x10
   1386c:	00f59823          	sh	a5,16(a1)
   13870:	1ae05863          	blez	a4,13a20 <__sflush_r+0x200>
   13874:	0484b703          	ld	a4,72(s1)
   13878:	0a070463          	beqz	a4,13920 <__sflush_r+0x100>
   1387c:	03079793          	slli	a5,a5,0x30
   13880:	0307d793          	srli	a5,a5,0x30
   13884:	0009a403          	lw	s0,0(s3)
   13888:	03379693          	slli	a3,a5,0x33
   1388c:	0009a023          	sw	zero,0(s3)
   13890:	1806de63          	bgez	a3,13a2c <__sflush_r+0x20c>
   13894:	0904b603          	ld	a2,144(s1)
   13898:	0047f793          	andi	a5,a5,4
   1389c:	00078e63          	beqz	a5,138b8 <__sflush_r+0x98>
   138a0:	0084a683          	lw	a3,8(s1)
   138a4:	0584b783          	ld	a5,88(s1)
   138a8:	40d60633          	sub	a2,a2,a3
   138ac:	00078663          	beqz	a5,138b8 <__sflush_r+0x98>
   138b0:	0704a783          	lw	a5,112(s1)
   138b4:	40f60633          	sub	a2,a2,a5
   138b8:	0304b583          	ld	a1,48(s1)
   138bc:	00000693          	li	a3,0
   138c0:	00098513          	mv	a0,s3
   138c4:	000700e7          	jalr	a4
   138c8:	fff00793          	li	a5,-1
   138cc:	0ef50c63          	beq	a0,a5,139c4 <__sflush_r+0x1a4>
   138d0:	0104d683          	lhu	a3,16(s1)
   138d4:	fffff7b7          	lui	a5,0xfffff
   138d8:	7ff7879b          	addiw	a5,a5,2047
   138dc:	0184b703          	ld	a4,24(s1)
   138e0:	00f6f7b3          	and	a5,a3,a5
   138e4:	0107979b          	slliw	a5,a5,0x10
   138e8:	4107d79b          	sraiw	a5,a5,0x10
   138ec:	00e4b023          	sd	a4,0(s1)
   138f0:	00f49823          	sh	a5,16(s1)
   138f4:	0004a423          	sw	zero,8(s1)
   138f8:	03379713          	slli	a4,a5,0x33
   138fc:	10074e63          	bltz	a4,13a18 <__sflush_r+0x1f8>
   13900:	0584b583          	ld	a1,88(s1)
   13904:	0089a023          	sw	s0,0(s3)
   13908:	00058c63          	beqz	a1,13920 <__sflush_r+0x100>
   1390c:	07448793          	addi	a5,s1,116
   13910:	00f58663          	beq	a1,a5,1391c <__sflush_r+0xfc>
   13914:	00098513          	mv	a0,s3
   13918:	678000ef          	jal	13f90 <_free_r>
   1391c:	0404bc23          	sd	zero,88(s1)
   13920:	00000513          	li	a0,0
   13924:	02813083          	ld	ra,40(sp)
   13928:	02013403          	ld	s0,32(sp)
   1392c:	01813483          	ld	s1,24(sp)
   13930:	01013903          	ld	s2,16(sp)
   13934:	00813983          	ld	s3,8(sp)
   13938:	03010113          	addi	sp,sp,48
   1393c:	00008067          	ret
   13940:	0185b903          	ld	s2,24(a1)
   13944:	fc090ee3          	beqz	s2,13920 <__sflush_r+0x100>
   13948:	0005b403          	ld	s0,0(a1)
   1394c:	00377713          	andi	a4,a4,3
   13950:	0125b023          	sd	s2,0(a1)
   13954:	4124043b          	subw	s0,s0,s2
   13958:	00000793          	li	a5,0
   1395c:	00071463          	bnez	a4,13964 <__sflush_r+0x144>
   13960:	0205a783          	lw	a5,32(a1)
   13964:	00f4a623          	sw	a5,12(s1)
   13968:	00804863          	bgtz	s0,13978 <__sflush_r+0x158>
   1396c:	fb5ff06f          	j	13920 <__sflush_r+0x100>
   13970:	00a90933          	add	s2,s2,a0
   13974:	fa8056e3          	blez	s0,13920 <__sflush_r+0x100>
   13978:	0404b783          	ld	a5,64(s1)
   1397c:	0304b583          	ld	a1,48(s1)
   13980:	00040693          	mv	a3,s0
   13984:	00090613          	mv	a2,s2
   13988:	00098513          	mv	a0,s3
   1398c:	000780e7          	jalr	a5
   13990:	40a4043b          	subw	s0,s0,a0
   13994:	fca04ee3          	bgtz	a0,13970 <__sflush_r+0x150>
   13998:	0104d783          	lhu	a5,16(s1)
   1399c:	02813083          	ld	ra,40(sp)
   139a0:	fff00513          	li	a0,-1
   139a4:	0407e793          	ori	a5,a5,64
   139a8:	00f49823          	sh	a5,16(s1)
   139ac:	02013403          	ld	s0,32(sp)
   139b0:	01813483          	ld	s1,24(sp)
   139b4:	01013903          	ld	s2,16(sp)
   139b8:	00813983          	ld	s3,8(sp)
   139bc:	03010113          	addi	sp,sp,48
   139c0:	00008067          	ret
   139c4:	0009a703          	lw	a4,0(s3)
   139c8:	01d00793          	li	a5,29
   139cc:	fce7e6e3          	bltu	a5,a4,13998 <__sflush_r+0x178>
   139d0:	204007b7          	lui	a5,0x20400
   139d4:	00178793          	addi	a5,a5,1 # 20400001 <_gp+0x203e44c1>
   139d8:	00e7d7b3          	srl	a5,a5,a4
   139dc:	0017f793          	andi	a5,a5,1
   139e0:	fa078ce3          	beqz	a5,13998 <__sflush_r+0x178>
   139e4:	0104d603          	lhu	a2,16(s1)
   139e8:	fffff7b7          	lui	a5,0xfffff
   139ec:	7ff7879b          	addiw	a5,a5,2047
   139f0:	0184b683          	ld	a3,24(s1)
   139f4:	00f677b3          	and	a5,a2,a5
   139f8:	0107979b          	slliw	a5,a5,0x10
   139fc:	4107d79b          	sraiw	a5,a5,0x10
   13a00:	00d4b023          	sd	a3,0(s1)
   13a04:	00f49823          	sh	a5,16(s1)
   13a08:	0004a423          	sw	zero,8(s1)
   13a0c:	03379693          	slli	a3,a5,0x33
   13a10:	ee06d8e3          	bgez	a3,13900 <__sflush_r+0xe0>
   13a14:	ee0716e3          	bnez	a4,13900 <__sflush_r+0xe0>
   13a18:	08a4b823          	sd	a0,144(s1)
   13a1c:	ee5ff06f          	j	13900 <__sflush_r+0xe0>
   13a20:	0705a703          	lw	a4,112(a1)
   13a24:	e4e048e3          	bgtz	a4,13874 <__sflush_r+0x54>
   13a28:	ef9ff06f          	j	13920 <__sflush_r+0x100>
   13a2c:	0304b583          	ld	a1,48(s1)
   13a30:	00000613          	li	a2,0
   13a34:	00100693          	li	a3,1
   13a38:	00098513          	mv	a0,s3
   13a3c:	000700e7          	jalr	a4
   13a40:	fff00793          	li	a5,-1
   13a44:	00050613          	mv	a2,a0
   13a48:	00f50863          	beq	a0,a5,13a58 <__sflush_r+0x238>
   13a4c:	0104d783          	lhu	a5,16(s1)
   13a50:	0484b703          	ld	a4,72(s1)
   13a54:	e45ff06f          	j	13898 <__sflush_r+0x78>
   13a58:	0009a783          	lw	a5,0(s3)
   13a5c:	fe0788e3          	beqz	a5,13a4c <__sflush_r+0x22c>
   13a60:	01d00713          	li	a4,29
   13a64:	00e78663          	beq	a5,a4,13a70 <__sflush_r+0x250>
   13a68:	01600713          	li	a4,22
   13a6c:	00e79863          	bne	a5,a4,13a7c <__sflush_r+0x25c>
   13a70:	0089a023          	sw	s0,0(s3)
   13a74:	00000513          	li	a0,0
   13a78:	eadff06f          	j	13924 <__sflush_r+0x104>
   13a7c:	0104d783          	lhu	a5,16(s1)
   13a80:	0407e793          	ori	a5,a5,64
   13a84:	00f49823          	sh	a5,16(s1)
   13a88:	e9dff06f          	j	13924 <__sflush_r+0x104>

0000000000013a8c <_fflush_r>:
   13a8c:	fe010113          	addi	sp,sp,-32
   13a90:	00813823          	sd	s0,16(sp)
   13a94:	00113c23          	sd	ra,24(sp)
   13a98:	00050413          	mv	s0,a0
   13a9c:	00050663          	beqz	a0,13aa8 <_fflush_r+0x1c>
   13aa0:	05052783          	lw	a5,80(a0)
   13aa4:	02078a63          	beqz	a5,13ad8 <_fflush_r+0x4c>
   13aa8:	01059783          	lh	a5,16(a1)
   13aac:	00079c63          	bnez	a5,13ac4 <_fflush_r+0x38>
   13ab0:	01813083          	ld	ra,24(sp)
   13ab4:	00000513          	li	a0,0
   13ab8:	01013403          	ld	s0,16(sp)
   13abc:	02010113          	addi	sp,sp,32
   13ac0:	00008067          	ret
   13ac4:	00040513          	mv	a0,s0
   13ac8:	01813083          	ld	ra,24(sp)
   13acc:	01013403          	ld	s0,16(sp)
   13ad0:	02010113          	addi	sp,sp,32
   13ad4:	d4dff06f          	j	13820 <__sflush_r>
   13ad8:	00b13423          	sd	a1,8(sp)
   13adc:	35c000ef          	jal	13e38 <__sinit>
   13ae0:	00813583          	ld	a1,8(sp)
   13ae4:	fc5ff06f          	j	13aa8 <_fflush_r+0x1c>

0000000000013ae8 <fflush>:
   13ae8:	00050593          	mv	a1,a0
   13aec:	00050663          	beqz	a0,13af8 <fflush+0x10>
   13af0:	8101b503          	ld	a0,-2032(gp) # 1b350 <_impure_ptr>
   13af4:	f99ff06f          	j	13a8c <_fflush_r>
   13af8:	8081b503          	ld	a0,-2040(gp) # 1b348 <_global_impure_ptr>
   13afc:	000145b7          	lui	a1,0x14
   13b00:	a8c58593          	addi	a1,a1,-1396 # 13a8c <_fflush_r>
   13b04:	04d0006f          	j	14350 <_fwalk_reent>

0000000000013b08 <__fp_unlock>:
   13b08:	00000513          	li	a0,0
   13b0c:	00008067          	ret

0000000000013b10 <_cleanup_r>:
   13b10:	000185b7          	lui	a1,0x18
   13b14:	83058593          	addi	a1,a1,-2000 # 17830 <_fclose_r>
   13b18:	0390006f          	j	14350 <_fwalk_reent>

0000000000013b1c <__sinit.part.1>:
   13b1c:	fc010113          	addi	sp,sp,-64
   13b20:	000147b7          	lui	a5,0x14
   13b24:	02113c23          	sd	ra,56(sp)
   13b28:	02813823          	sd	s0,48(sp)
   13b2c:	02913423          	sd	s1,40(sp)
   13b30:	00853403          	ld	s0,8(a0)
   13b34:	03213023          	sd	s2,32(sp)
   13b38:	01313c23          	sd	s3,24(sp)
   13b3c:	01413823          	sd	s4,16(sp)
   13b40:	01513423          	sd	s5,8(sp)
   13b44:	01613023          	sd	s6,0(sp)
   13b48:	b1078793          	addi	a5,a5,-1264 # 13b10 <_cleanup_r>
   13b4c:	04f53c23          	sd	a5,88(a0)
   13b50:	53850713          	addi	a4,a0,1336
   13b54:	00300793          	li	a5,3
   13b58:	52e53823          	sd	a4,1328(a0)
   13b5c:	52f52423          	sw	a5,1320(a0)
   13b60:	52053023          	sd	zero,1312(a0)
   13b64:	00400793          	li	a5,4
   13b68:	00050913          	mv	s2,a0
   13b6c:	00f41823          	sh	a5,16(s0)
   13b70:	00800613          	li	a2,8
   13b74:	00000593          	li	a1,0
   13b78:	00043023          	sd	zero,0(s0)
   13b7c:	00042423          	sw	zero,8(s0)
   13b80:	00042623          	sw	zero,12(s0)
   13b84:	0a042623          	sw	zero,172(s0)
   13b88:	00041923          	sh	zero,18(s0)
   13b8c:	00043c23          	sd	zero,24(s0)
   13b90:	02042023          	sw	zero,32(s0)
   13b94:	02042423          	sw	zero,40(s0)
   13b98:	0a440513          	addi	a0,s0,164
   13b9c:	460010ef          	jal	14ffc <memset>
   13ba0:	00016b37          	lui	s6,0x16
   13ba4:	01093483          	ld	s1,16(s2)
   13ba8:	00016ab7          	lui	s5,0x16
   13bac:	00016a37          	lui	s4,0x16
   13bb0:	000169b7          	lui	s3,0x16
   13bb4:	1bcb0b13          	addi	s6,s6,444 # 161bc <__sread>
   13bb8:	228a8a93          	addi	s5,s5,552 # 16228 <__swrite>
   13bbc:	298a0a13          	addi	s4,s4,664 # 16298 <__sseek>
   13bc0:	30498993          	addi	s3,s3,772 # 16304 <__sclose>
   13bc4:	03643c23          	sd	s6,56(s0)
   13bc8:	05543023          	sd	s5,64(s0)
   13bcc:	05443423          	sd	s4,72(s0)
   13bd0:	05343823          	sd	s3,80(s0)
   13bd4:	02843823          	sd	s0,48(s0)
   13bd8:	00900793          	li	a5,9
   13bdc:	00f49823          	sh	a5,16(s1)
   13be0:	00100793          	li	a5,1
   13be4:	00f49923          	sh	a5,18(s1)
   13be8:	00800613          	li	a2,8
   13bec:	00000593          	li	a1,0
   13bf0:	0004b023          	sd	zero,0(s1)
   13bf4:	0004a423          	sw	zero,8(s1)
   13bf8:	0004a623          	sw	zero,12(s1)
   13bfc:	0a04a623          	sw	zero,172(s1)
   13c00:	0004bc23          	sd	zero,24(s1)
   13c04:	0204a023          	sw	zero,32(s1)
   13c08:	0204a423          	sw	zero,40(s1)
   13c0c:	0a448513          	addi	a0,s1,164
   13c10:	3ec010ef          	jal	14ffc <memset>
   13c14:	01893403          	ld	s0,24(s2)
   13c18:	01200793          	li	a5,18
   13c1c:	0364bc23          	sd	s6,56(s1)
   13c20:	0554b023          	sd	s5,64(s1)
   13c24:	0544b423          	sd	s4,72(s1)
   13c28:	0534b823          	sd	s3,80(s1)
   13c2c:	0294b823          	sd	s1,48(s1)
   13c30:	00f41823          	sh	a5,16(s0)
   13c34:	00200793          	li	a5,2
   13c38:	00f41923          	sh	a5,18(s0)
   13c3c:	00043023          	sd	zero,0(s0)
   13c40:	00042423          	sw	zero,8(s0)
   13c44:	00042623          	sw	zero,12(s0)
   13c48:	0a042623          	sw	zero,172(s0)
   13c4c:	00043c23          	sd	zero,24(s0)
   13c50:	02042023          	sw	zero,32(s0)
   13c54:	02042423          	sw	zero,40(s0)
   13c58:	0a440513          	addi	a0,s0,164
   13c5c:	00800613          	li	a2,8
   13c60:	00000593          	li	a1,0
   13c64:	398010ef          	jal	14ffc <memset>
   13c68:	03813083          	ld	ra,56(sp)
   13c6c:	03643c23          	sd	s6,56(s0)
   13c70:	05543023          	sd	s5,64(s0)
   13c74:	05443423          	sd	s4,72(s0)
   13c78:	05343823          	sd	s3,80(s0)
   13c7c:	02843823          	sd	s0,48(s0)
   13c80:	00100793          	li	a5,1
   13c84:	04f92823          	sw	a5,80(s2)
   13c88:	03013403          	ld	s0,48(sp)
   13c8c:	02813483          	ld	s1,40(sp)
   13c90:	02013903          	ld	s2,32(sp)
   13c94:	01813983          	ld	s3,24(sp)
   13c98:	01013a03          	ld	s4,16(sp)
   13c9c:	00813a83          	ld	s5,8(sp)
   13ca0:	00013b03          	ld	s6,0(sp)
   13ca4:	04010113          	addi	sp,sp,64
   13ca8:	00008067          	ret

0000000000013cac <__fp_lock>:
   13cac:	00000513          	li	a0,0
   13cb0:	00008067          	ret

0000000000013cb4 <__sfmoreglue>:
   13cb4:	fe010113          	addi	sp,sp,-32
   13cb8:	fff5879b          	addiw	a5,a1,-1
   13cbc:	00913423          	sd	s1,8(sp)
   13cc0:	0b000493          	li	s1,176
   13cc4:	029784b3          	mul	s1,a5,s1
   13cc8:	01213023          	sd	s2,0(sp)
   13ccc:	00058913          	mv	s2,a1
   13cd0:	00813823          	sd	s0,16(sp)
   13cd4:	00113c23          	sd	ra,24(sp)
   13cd8:	0c848593          	addi	a1,s1,200
   13cdc:	1a9000ef          	jal	14684 <_malloc_r>
   13ce0:	00050413          	mv	s0,a0
   13ce4:	02050063          	beqz	a0,13d04 <__sfmoreglue+0x50>
   13ce8:	01850513          	addi	a0,a0,24
   13cec:	00043023          	sd	zero,0(s0)
   13cf0:	01242423          	sw	s2,8(s0)
   13cf4:	00a43823          	sd	a0,16(s0)
   13cf8:	0b048613          	addi	a2,s1,176
   13cfc:	00000593          	li	a1,0
   13d00:	2fc010ef          	jal	14ffc <memset>
   13d04:	01813083          	ld	ra,24(sp)
   13d08:	00040513          	mv	a0,s0
   13d0c:	00813483          	ld	s1,8(sp)
   13d10:	01013403          	ld	s0,16(sp)
   13d14:	00013903          	ld	s2,0(sp)
   13d18:	02010113          	addi	sp,sp,32
   13d1c:	00008067          	ret

0000000000013d20 <__sfp>:
   13d20:	fd010113          	addi	sp,sp,-48
   13d24:	01213823          	sd	s2,16(sp)
   13d28:	8081b903          	ld	s2,-2040(gp) # 1b348 <_global_impure_ptr>
   13d2c:	01313423          	sd	s3,8(sp)
   13d30:	02113423          	sd	ra,40(sp)
   13d34:	05092783          	lw	a5,80(s2)
   13d38:	02813023          	sd	s0,32(sp)
   13d3c:	00913c23          	sd	s1,24(sp)
   13d40:	00050993          	mv	s3,a0
   13d44:	00079663          	bnez	a5,13d50 <__sfp+0x30>
   13d48:	00090513          	mv	a0,s2
   13d4c:	dd1ff0ef          	jal	13b1c <__sinit.part.1>
   13d50:	52090913          	addi	s2,s2,1312
   13d54:	fff00493          	li	s1,-1
   13d58:	00892783          	lw	a5,8(s2)
   13d5c:	01093403          	ld	s0,16(s2)
   13d60:	fff7879b          	addiw	a5,a5,-1
   13d64:	0007da63          	bgez	a5,13d78 <__sfp+0x58>
   13d68:	0840006f          	j	13dec <__sfp+0xcc>
   13d6c:	fff7879b          	addiw	a5,a5,-1
   13d70:	0b040413          	addi	s0,s0,176
   13d74:	06978c63          	beq	a5,s1,13dec <__sfp+0xcc>
   13d78:	01041703          	lh	a4,16(s0)
   13d7c:	fe0718e3          	bnez	a4,13d6c <__sfp+0x4c>
   13d80:	fff00793          	li	a5,-1
   13d84:	00f41923          	sh	a5,18(s0)
   13d88:	00100793          	li	a5,1
   13d8c:	00f41823          	sh	a5,16(s0)
   13d90:	0a042623          	sw	zero,172(s0)
   13d94:	00043023          	sd	zero,0(s0)
   13d98:	00042623          	sw	zero,12(s0)
   13d9c:	00042423          	sw	zero,8(s0)
   13da0:	00043c23          	sd	zero,24(s0)
   13da4:	02042023          	sw	zero,32(s0)
   13da8:	02042423          	sw	zero,40(s0)
   13dac:	00800613          	li	a2,8
   13db0:	00000593          	li	a1,0
   13db4:	0a440513          	addi	a0,s0,164
   13db8:	244010ef          	jal	14ffc <memset>
   13dbc:	00040513          	mv	a0,s0
   13dc0:	04043c23          	sd	zero,88(s0)
   13dc4:	06042023          	sw	zero,96(s0)
   13dc8:	06043c23          	sd	zero,120(s0)
   13dcc:	08042023          	sw	zero,128(s0)
   13dd0:	02813083          	ld	ra,40(sp)
   13dd4:	02013403          	ld	s0,32(sp)
   13dd8:	01813483          	ld	s1,24(sp)
   13ddc:	01013903          	ld	s2,16(sp)
   13de0:	00813983          	ld	s3,8(sp)
   13de4:	03010113          	addi	sp,sp,48
   13de8:	00008067          	ret
   13dec:	00093783          	ld	a5,0(s2)
   13df0:	00078663          	beqz	a5,13dfc <__sfp+0xdc>
   13df4:	00078913          	mv	s2,a5
   13df8:	f61ff06f          	j	13d58 <__sfp+0x38>
   13dfc:	00400593          	li	a1,4
   13e00:	00098513          	mv	a0,s3
   13e04:	eb1ff0ef          	jal	13cb4 <__sfmoreglue>
   13e08:	00a93023          	sd	a0,0(s2)
   13e0c:	00050663          	beqz	a0,13e18 <__sfp+0xf8>
   13e10:	00050913          	mv	s2,a0
   13e14:	f45ff06f          	j	13d58 <__sfp+0x38>
   13e18:	00c00793          	li	a5,12
   13e1c:	00f9a023          	sw	a5,0(s3)
   13e20:	00000513          	li	a0,0
   13e24:	fadff06f          	j	13dd0 <__sfp+0xb0>

0000000000013e28 <_cleanup>:
   13e28:	8081b503          	ld	a0,-2040(gp) # 1b348 <_global_impure_ptr>
   13e2c:	000185b7          	lui	a1,0x18
   13e30:	83058593          	addi	a1,a1,-2000 # 17830 <_fclose_r>
   13e34:	51c0006f          	j	14350 <_fwalk_reent>

0000000000013e38 <__sinit>:
   13e38:	05052783          	lw	a5,80(a0)
   13e3c:	00078463          	beqz	a5,13e44 <__sinit+0xc>
   13e40:	00008067          	ret
   13e44:	cd9ff06f          	j	13b1c <__sinit.part.1>

0000000000013e48 <__sfp_lock_acquire>:
   13e48:	00008067          	ret

0000000000013e4c <__sfp_lock_release>:
   13e4c:	00008067          	ret

0000000000013e50 <__sinit_lock_acquire>:
   13e50:	00008067          	ret

0000000000013e54 <__sinit_lock_release>:
   13e54:	00008067          	ret

0000000000013e58 <__fp_lock_all>:
   13e58:	8101b503          	ld	a0,-2032(gp) # 1b350 <_impure_ptr>
   13e5c:	000145b7          	lui	a1,0x14
   13e60:	cac58593          	addi	a1,a1,-852 # 13cac <__fp_lock>
   13e64:	43c0006f          	j	142a0 <_fwalk>

0000000000013e68 <__fp_unlock_all>:
   13e68:	8101b503          	ld	a0,-2032(gp) # 1b350 <_impure_ptr>
   13e6c:	000145b7          	lui	a1,0x14
   13e70:	b0858593          	addi	a1,a1,-1272 # 13b08 <__fp_unlock>
   13e74:	42c0006f          	j	142a0 <_fwalk>

0000000000013e78 <_malloc_trim_r>:
   13e78:	fd010113          	addi	sp,sp,-48
   13e7c:	01213823          	sd	s2,16(sp)
   13e80:	0001b937          	lui	s2,0x1b
   13e84:	02813023          	sd	s0,32(sp)
   13e88:	00913c23          	sd	s1,24(sp)
   13e8c:	00058413          	mv	s0,a1
   13e90:	01313423          	sd	s3,8(sp)
   13e94:	02113423          	sd	ra,40(sp)
   13e98:	00050993          	mv	s3,a0
   13e9c:	b2890913          	addi	s2,s2,-1240 # 1ab28 <__malloc_av_>
   13ea0:	238010ef          	jal	150d8 <__malloc_lock>
   13ea4:	01093703          	ld	a4,16(s2)
   13ea8:	000017b7          	lui	a5,0x1
   13eac:	fdf78593          	addi	a1,a5,-33 # fdf <_ftext-0xf021>
   13eb0:	00873483          	ld	s1,8(a4)
   13eb4:	ffc4f493          	andi	s1,s1,-4
   13eb8:	40848433          	sub	s0,s1,s0
   13ebc:	00b40433          	add	s0,s0,a1
   13ec0:	00c45413          	srli	s0,s0,0xc
   13ec4:	fff40413          	addi	s0,s0,-1
   13ec8:	00c41413          	slli	s0,s0,0xc
   13ecc:	00f44c63          	blt	s0,a5,13ee4 <_malloc_trim_r+0x6c>
   13ed0:	00000513          	li	a0,0
   13ed4:	6c5040ef          	jal	18d98 <sbrk>
   13ed8:	01093783          	ld	a5,16(s2)
   13edc:	009787b3          	add	a5,a5,s1
   13ee0:	02f50663          	beq	a0,a5,13f0c <_malloc_trim_r+0x94>
   13ee4:	00098513          	mv	a0,s3
   13ee8:	1f4010ef          	jal	150dc <__malloc_unlock>
   13eec:	02813083          	ld	ra,40(sp)
   13ef0:	00000513          	li	a0,0
   13ef4:	02013403          	ld	s0,32(sp)
   13ef8:	01813483          	ld	s1,24(sp)
   13efc:	01013903          	ld	s2,16(sp)
   13f00:	00813983          	ld	s3,8(sp)
   13f04:	03010113          	addi	sp,sp,48
   13f08:	00008067          	ret
   13f0c:	40800533          	neg	a0,s0
   13f10:	689040ef          	jal	18d98 <sbrk>
   13f14:	fff00793          	li	a5,-1
   13f18:	04f50463          	beq	a0,a5,13f60 <_malloc_trim_r+0xe8>
   13f1c:	9001a783          	lw	a5,-1792(gp) # 1b440 <__malloc_current_mallinfo>
   13f20:	01093683          	ld	a3,16(s2)
   13f24:	408484b3          	sub	s1,s1,s0
   13f28:	0014e493          	ori	s1,s1,1
   13f2c:	4087843b          	subw	s0,a5,s0
   13f30:	00098513          	mv	a0,s3
   13f34:	0096b423          	sd	s1,8(a3)
   13f38:	9081a023          	sw	s0,-1792(gp) # 1b440 <__malloc_current_mallinfo>
   13f3c:	1a0010ef          	jal	150dc <__malloc_unlock>
   13f40:	02813083          	ld	ra,40(sp)
   13f44:	00100513          	li	a0,1
   13f48:	02013403          	ld	s0,32(sp)
   13f4c:	01813483          	ld	s1,24(sp)
   13f50:	01013903          	ld	s2,16(sp)
   13f54:	00813983          	ld	s3,8(sp)
   13f58:	03010113          	addi	sp,sp,48
   13f5c:	00008067          	ret
   13f60:	00000513          	li	a0,0
   13f64:	635040ef          	jal	18d98 <sbrk>
   13f68:	01093703          	ld	a4,16(s2)
   13f6c:	01f00693          	li	a3,31
   13f70:	40e507b3          	sub	a5,a0,a4
   13f74:	f6f6d8e3          	ble	a5,a3,13ee4 <_malloc_trim_r+0x6c>
   13f78:	8201b683          	ld	a3,-2016(gp) # 1b360 <__malloc_sbrk_base>
   13f7c:	0017e793          	ori	a5,a5,1
   13f80:	00f73423          	sd	a5,8(a4)
   13f84:	40d50533          	sub	a0,a0,a3
   13f88:	90a1a023          	sw	a0,-1792(gp) # 1b440 <__malloc_current_mallinfo>
   13f8c:	f59ff06f          	j	13ee4 <_malloc_trim_r+0x6c>

0000000000013f90 <_free_r>:
   13f90:	10058263          	beqz	a1,14094 <_free_r+0x104>
   13f94:	fe010113          	addi	sp,sp,-32
   13f98:	00813823          	sd	s0,16(sp)
   13f9c:	00913423          	sd	s1,8(sp)
   13fa0:	00058413          	mv	s0,a1
   13fa4:	00050493          	mv	s1,a0
   13fa8:	00113c23          	sd	ra,24(sp)
   13fac:	12c010ef          	jal	150d8 <__malloc_lock>
   13fb0:	ff843503          	ld	a0,-8(s0)
   13fb4:	ff040693          	addi	a3,s0,-16
   13fb8:	0001b5b7          	lui	a1,0x1b
   13fbc:	ffe57793          	andi	a5,a0,-2
   13fc0:	00f68633          	add	a2,a3,a5
   13fc4:	b2858593          	addi	a1,a1,-1240 # 1ab28 <__malloc_av_>
   13fc8:	00863703          	ld	a4,8(a2)
   13fcc:	0105b803          	ld	a6,16(a1)
   13fd0:	ffc77713          	andi	a4,a4,-4
   13fd4:	17060663          	beq	a2,a6,14140 <_free_r+0x1b0>
   13fd8:	00e63423          	sd	a4,8(a2)
   13fdc:	00157513          	andi	a0,a0,1
   13fe0:	02051663          	bnez	a0,1400c <_free_r+0x7c>
   13fe4:	ff043503          	ld	a0,-16(s0)
   13fe8:	40a686b3          	sub	a3,a3,a0
   13fec:	0106b803          	ld	a6,16(a3)
   13ff0:	00a787b3          	add	a5,a5,a0
   13ff4:	0001b537          	lui	a0,0x1b
   13ff8:	b3850513          	addi	a0,a0,-1224 # 1ab38 <__malloc_av_+0x10>
   13ffc:	18a80863          	beq	a6,a0,1418c <_free_r+0x1fc>
   14000:	0186b503          	ld	a0,24(a3)
   14004:	00a83c23          	sd	a0,24(a6)
   14008:	01053823          	sd	a6,16(a0)
   1400c:	00e60533          	add	a0,a2,a4
   14010:	00853503          	ld	a0,8(a0)
   14014:	00157513          	andi	a0,a0,1
   14018:	0e050a63          	beqz	a0,1410c <_free_r+0x17c>
   1401c:	0017e713          	ori	a4,a5,1
   14020:	00e6b423          	sd	a4,8(a3)
   14024:	00f68733          	add	a4,a3,a5
   14028:	00f73023          	sd	a5,0(a4)
   1402c:	1ff00713          	li	a4,511
   14030:	06f76463          	bltu	a4,a5,14098 <_free_r+0x108>
   14034:	0037d793          	srli	a5,a5,0x3
   14038:	0007879b          	sext.w	a5,a5
   1403c:	0017871b          	addiw	a4,a5,1
   14040:	0017171b          	slliw	a4,a4,0x1
   14044:	00371713          	slli	a4,a4,0x3
   14048:	0085b603          	ld	a2,8(a1)
   1404c:	00e58733          	add	a4,a1,a4
   14050:	00073803          	ld	a6,0(a4)
   14054:	4027d79b          	sraiw	a5,a5,0x2
   14058:	00100513          	li	a0,1
   1405c:	00f517b3          	sll	a5,a0,a5
   14060:	00c7e7b3          	or	a5,a5,a2
   14064:	ff070613          	addi	a2,a4,-16
   14068:	00c6bc23          	sd	a2,24(a3)
   1406c:	0106b823          	sd	a6,16(a3)
   14070:	00f5b423          	sd	a5,8(a1)
   14074:	00d73023          	sd	a3,0(a4)
   14078:	00d83c23          	sd	a3,24(a6)
   1407c:	00048513          	mv	a0,s1
   14080:	01813083          	ld	ra,24(sp)
   14084:	01013403          	ld	s0,16(sp)
   14088:	00813483          	ld	s1,8(sp)
   1408c:	02010113          	addi	sp,sp,32
   14090:	04c0106f          	j	150dc <__malloc_unlock>
   14094:	00008067          	ret
   14098:	0097d713          	srli	a4,a5,0x9
   1409c:	00400613          	li	a2,4
   140a0:	12e66263          	bltu	a2,a4,141c4 <_free_r+0x234>
   140a4:	0067d713          	srli	a4,a5,0x6
   140a8:	0007071b          	sext.w	a4,a4
   140ac:	0397051b          	addiw	a0,a4,57
   140b0:	0387061b          	addiw	a2,a4,56
   140b4:	0015151b          	slliw	a0,a0,0x1
   140b8:	00351513          	slli	a0,a0,0x3
   140bc:	00a58533          	add	a0,a1,a0
   140c0:	00053703          	ld	a4,0(a0)
   140c4:	ff050513          	addi	a0,a0,-16
   140c8:	10e50c63          	beq	a0,a4,141e0 <_free_r+0x250>
   140cc:	00873603          	ld	a2,8(a4)
   140d0:	ffc67613          	andi	a2,a2,-4
   140d4:	00c7f663          	bleu	a2,a5,140e0 <_free_r+0x150>
   140d8:	01073703          	ld	a4,16(a4)
   140dc:	fee518e3          	bne	a0,a4,140cc <_free_r+0x13c>
   140e0:	01873503          	ld	a0,24(a4)
   140e4:	00a6bc23          	sd	a0,24(a3)
   140e8:	00e6b823          	sd	a4,16(a3)
   140ec:	00d53823          	sd	a3,16(a0)
   140f0:	01813083          	ld	ra,24(sp)
   140f4:	00048513          	mv	a0,s1
   140f8:	01013403          	ld	s0,16(sp)
   140fc:	00813483          	ld	s1,8(sp)
   14100:	00d73c23          	sd	a3,24(a4)
   14104:	02010113          	addi	sp,sp,32
   14108:	7d50006f          	j	150dc <__malloc_unlock>
   1410c:	01063503          	ld	a0,16(a2)
   14110:	00e787b3          	add	a5,a5,a4
   14114:	0001b737          	lui	a4,0x1b
   14118:	b3870713          	addi	a4,a4,-1224 # 1ab38 <__malloc_av_+0x10>
   1411c:	0ee50263          	beq	a0,a4,14200 <_free_r+0x270>
   14120:	01863803          	ld	a6,24(a2)
   14124:	0017e613          	ori	a2,a5,1
   14128:	00f68733          	add	a4,a3,a5
   1412c:	01053c23          	sd	a6,24(a0)
   14130:	00a83823          	sd	a0,16(a6)
   14134:	00c6b423          	sd	a2,8(a3)
   14138:	00f73023          	sd	a5,0(a4)
   1413c:	ef1ff06f          	j	1402c <_free_r+0x9c>
   14140:	00157513          	andi	a0,a0,1
   14144:	00e787b3          	add	a5,a5,a4
   14148:	02051063          	bnez	a0,14168 <_free_r+0x1d8>
   1414c:	ff043503          	ld	a0,-16(s0)
   14150:	40a686b3          	sub	a3,a3,a0
   14154:	0186b703          	ld	a4,24(a3)
   14158:	0106b603          	ld	a2,16(a3)
   1415c:	00a787b3          	add	a5,a5,a0
   14160:	00e63c23          	sd	a4,24(a2)
   14164:	00c73823          	sd	a2,16(a4)
   14168:	0017e613          	ori	a2,a5,1
   1416c:	8281b703          	ld	a4,-2008(gp) # 1b368 <__malloc_trim_threshold>
   14170:	00c6b423          	sd	a2,8(a3)
   14174:	00d5b823          	sd	a3,16(a1)
   14178:	f0e7e2e3          	bltu	a5,a4,1407c <_free_r+0xec>
   1417c:	8b81b583          	ld	a1,-1864(gp) # 1b3f8 <__malloc_top_pad>
   14180:	00048513          	mv	a0,s1
   14184:	cf5ff0ef          	jal	13e78 <_malloc_trim_r>
   14188:	ef5ff06f          	j	1407c <_free_r+0xec>
   1418c:	00e605b3          	add	a1,a2,a4
   14190:	0085b583          	ld	a1,8(a1)
   14194:	0015f593          	andi	a1,a1,1
   14198:	0e059a63          	bnez	a1,1428c <_free_r+0x2fc>
   1419c:	01063583          	ld	a1,16(a2)
   141a0:	01863603          	ld	a2,24(a2)
   141a4:	00f707b3          	add	a5,a4,a5
   141a8:	0017e713          	ori	a4,a5,1
   141ac:	00c5bc23          	sd	a2,24(a1)
   141b0:	00b63823          	sd	a1,16(a2)
   141b4:	00e6b423          	sd	a4,8(a3)
   141b8:	00f686b3          	add	a3,a3,a5
   141bc:	00f6b023          	sd	a5,0(a3)
   141c0:	ebdff06f          	j	1407c <_free_r+0xec>
   141c4:	01400613          	li	a2,20
   141c8:	04e66e63          	bltu	a2,a4,14224 <_free_r+0x294>
   141cc:	0007071b          	sext.w	a4,a4
   141d0:	05c7051b          	addiw	a0,a4,92
   141d4:	05b7061b          	addiw	a2,a4,91
   141d8:	0015151b          	slliw	a0,a0,0x1
   141dc:	eddff06f          	j	140b8 <_free_r+0x128>
   141e0:	0085b783          	ld	a5,8(a1)
   141e4:	4026571b          	sraiw	a4,a2,0x2
   141e8:	00100613          	li	a2,1
   141ec:	00e61733          	sll	a4,a2,a4
   141f0:	00f767b3          	or	a5,a4,a5
   141f4:	00f5b423          	sd	a5,8(a1)
   141f8:	00050713          	mv	a4,a0
   141fc:	ee9ff06f          	j	140e4 <_free_r+0x154>
   14200:	02d5b423          	sd	a3,40(a1)
   14204:	02d5b023          	sd	a3,32(a1)
   14208:	0017e713          	ori	a4,a5,1
   1420c:	00a6bc23          	sd	a0,24(a3)
   14210:	00a6b823          	sd	a0,16(a3)
   14214:	00e6b423          	sd	a4,8(a3)
   14218:	00f686b3          	add	a3,a3,a5
   1421c:	00f6b023          	sd	a5,0(a3)
   14220:	e5dff06f          	j	1407c <_free_r+0xec>
   14224:	05400613          	li	a2,84
   14228:	00e66e63          	bltu	a2,a4,14244 <_free_r+0x2b4>
   1422c:	00c7d713          	srli	a4,a5,0xc
   14230:	0007071b          	sext.w	a4,a4
   14234:	06f7051b          	addiw	a0,a4,111
   14238:	06e7061b          	addiw	a2,a4,110
   1423c:	0015151b          	slliw	a0,a0,0x1
   14240:	e79ff06f          	j	140b8 <_free_r+0x128>
   14244:	15400613          	li	a2,340
   14248:	00e66e63          	bltu	a2,a4,14264 <_free_r+0x2d4>
   1424c:	00f7d713          	srli	a4,a5,0xf
   14250:	0007071b          	sext.w	a4,a4
   14254:	0787051b          	addiw	a0,a4,120
   14258:	0777061b          	addiw	a2,a4,119
   1425c:	0015151b          	slliw	a0,a0,0x1
   14260:	e59ff06f          	j	140b8 <_free_r+0x128>
   14264:	55400813          	li	a6,1364
   14268:	0fe00513          	li	a0,254
   1426c:	07e00613          	li	a2,126
   14270:	e4e864e3          	bltu	a6,a4,140b8 <_free_r+0x128>
   14274:	0127d713          	srli	a4,a5,0x12
   14278:	0007071b          	sext.w	a4,a4
   1427c:	07d7051b          	addiw	a0,a4,125
   14280:	07c7061b          	addiw	a2,a4,124
   14284:	0015151b          	slliw	a0,a0,0x1
   14288:	e31ff06f          	j	140b8 <_free_r+0x128>
   1428c:	0017e713          	ori	a4,a5,1
   14290:	00e6b423          	sd	a4,8(a3)
   14294:	00f686b3          	add	a3,a3,a5
   14298:	00f6b023          	sd	a5,0(a3)
   1429c:	de1ff06f          	j	1407c <_free_r+0xec>

00000000000142a0 <_fwalk>:
   142a0:	fc010113          	addi	sp,sp,-64
   142a4:	01513423          	sd	s5,8(sp)
   142a8:	02113c23          	sd	ra,56(sp)
   142ac:	02813823          	sd	s0,48(sp)
   142b0:	02913423          	sd	s1,40(sp)
   142b4:	03213023          	sd	s2,32(sp)
   142b8:	01313c23          	sd	s3,24(sp)
   142bc:	01413823          	sd	s4,16(sp)
   142c0:	01613023          	sd	s6,0(sp)
   142c4:	52050a93          	addi	s5,a0,1312
   142c8:	080a8063          	beqz	s5,14348 <_fwalk+0xa8>
   142cc:	00058b13          	mv	s6,a1
   142d0:	00000a13          	li	s4,0
   142d4:	00100993          	li	s3,1
   142d8:	fff00913          	li	s2,-1
   142dc:	008aa483          	lw	s1,8(s5)
   142e0:	010ab403          	ld	s0,16(s5)
   142e4:	fff4849b          	addiw	s1,s1,-1
   142e8:	0204c663          	bltz	s1,14314 <_fwalk+0x74>
   142ec:	01045783          	lhu	a5,16(s0)
   142f0:	fff4849b          	addiw	s1,s1,-1
   142f4:	00f9fc63          	bleu	a5,s3,1430c <_fwalk+0x6c>
   142f8:	01241783          	lh	a5,18(s0)
   142fc:	00040513          	mv	a0,s0
   14300:	01278663          	beq	a5,s2,1430c <_fwalk+0x6c>
   14304:	000b00e7          	jalr	s6
   14308:	00aa6a33          	or	s4,s4,a0
   1430c:	0b040413          	addi	s0,s0,176
   14310:	fd249ee3          	bne	s1,s2,142ec <_fwalk+0x4c>
   14314:	000aba83          	ld	s5,0(s5)
   14318:	fc0a92e3          	bnez	s5,142dc <_fwalk+0x3c>
   1431c:	03813083          	ld	ra,56(sp)
   14320:	000a0513          	mv	a0,s4
   14324:	03013403          	ld	s0,48(sp)
   14328:	02813483          	ld	s1,40(sp)
   1432c:	02013903          	ld	s2,32(sp)
   14330:	01813983          	ld	s3,24(sp)
   14334:	01013a03          	ld	s4,16(sp)
   14338:	00813a83          	ld	s5,8(sp)
   1433c:	00013b03          	ld	s6,0(sp)
   14340:	04010113          	addi	sp,sp,64
   14344:	00008067          	ret
   14348:	00000a13          	li	s4,0
   1434c:	fd1ff06f          	j	1431c <_fwalk+0x7c>

0000000000014350 <_fwalk_reent>:
   14350:	fb010113          	addi	sp,sp,-80
   14354:	01613823          	sd	s6,16(sp)
   14358:	04113423          	sd	ra,72(sp)
   1435c:	04813023          	sd	s0,64(sp)
   14360:	02913c23          	sd	s1,56(sp)
   14364:	03213823          	sd	s2,48(sp)
   14368:	03313423          	sd	s3,40(sp)
   1436c:	03413023          	sd	s4,32(sp)
   14370:	01513c23          	sd	s5,24(sp)
   14374:	01713423          	sd	s7,8(sp)
   14378:	52050b13          	addi	s6,a0,1312
   1437c:	080b0663          	beqz	s6,14408 <_fwalk_reent+0xb8>
   14380:	00058b93          	mv	s7,a1
   14384:	00050a93          	mv	s5,a0
   14388:	00000a13          	li	s4,0
   1438c:	00100993          	li	s3,1
   14390:	fff00913          	li	s2,-1
   14394:	008b2483          	lw	s1,8(s6)
   14398:	010b3403          	ld	s0,16(s6)
   1439c:	fff4849b          	addiw	s1,s1,-1
   143a0:	0204c863          	bltz	s1,143d0 <_fwalk_reent+0x80>
   143a4:	01045783          	lhu	a5,16(s0)
   143a8:	fff4849b          	addiw	s1,s1,-1
   143ac:	00f9fe63          	bleu	a5,s3,143c8 <_fwalk_reent+0x78>
   143b0:	01241783          	lh	a5,18(s0)
   143b4:	00040593          	mv	a1,s0
   143b8:	000a8513          	mv	a0,s5
   143bc:	01278663          	beq	a5,s2,143c8 <_fwalk_reent+0x78>
   143c0:	000b80e7          	jalr	s7
   143c4:	00aa6a33          	or	s4,s4,a0
   143c8:	0b040413          	addi	s0,s0,176
   143cc:	fd249ce3          	bne	s1,s2,143a4 <_fwalk_reent+0x54>
   143d0:	000b3b03          	ld	s6,0(s6)
   143d4:	fc0b10e3          	bnez	s6,14394 <_fwalk_reent+0x44>
   143d8:	04813083          	ld	ra,72(sp)
   143dc:	000a0513          	mv	a0,s4
   143e0:	04013403          	ld	s0,64(sp)
   143e4:	03813483          	ld	s1,56(sp)
   143e8:	03013903          	ld	s2,48(sp)
   143ec:	02813983          	ld	s3,40(sp)
   143f0:	02013a03          	ld	s4,32(sp)
   143f4:	01813a83          	ld	s5,24(sp)
   143f8:	01013b03          	ld	s6,16(sp)
   143fc:	00813b83          	ld	s7,8(sp)
   14400:	05010113          	addi	sp,sp,80
   14404:	00008067          	ret
   14408:	00000a13          	li	s4,0
   1440c:	fcdff06f          	j	143d8 <_fwalk_reent+0x88>

0000000000014410 <_setlocale_r>:
   14410:	fe010113          	addi	sp,sp,-32
   14414:	00913423          	sd	s1,8(sp)
   14418:	00113c23          	sd	ra,24(sp)
   1441c:	00813823          	sd	s0,16(sp)
   14420:	000194b7          	lui	s1,0x19
   14424:	02060063          	beqz	a2,14444 <_setlocale_r+0x34>
   14428:	000195b7          	lui	a1,0x19
   1442c:	2d058593          	addi	a1,a1,720 # 192d0 <zeroes.4137+0x90>
   14430:	00060513          	mv	a0,a2
   14434:	00060413          	mv	s0,a2
   14438:	6d5010ef          	jal	1630c <strcmp>
   1443c:	000194b7          	lui	s1,0x19
   14440:	00051e63          	bnez	a0,1445c <_setlocale_r+0x4c>
   14444:	25048513          	addi	a0,s1,592 # 19250 <zeroes.4137+0x10>
   14448:	01813083          	ld	ra,24(sp)
   1444c:	01013403          	ld	s0,16(sp)
   14450:	00813483          	ld	s1,8(sp)
   14454:	02010113          	addi	sp,sp,32
   14458:	00008067          	ret
   1445c:	25048593          	addi	a1,s1,592
   14460:	00040513          	mv	a0,s0
   14464:	6a9010ef          	jal	1630c <strcmp>
   14468:	fc050ee3          	beqz	a0,14444 <_setlocale_r+0x34>
   1446c:	000195b7          	lui	a1,0x19
   14470:	28858593          	addi	a1,a1,648 # 19288 <zeroes.4137+0x48>
   14474:	00040513          	mv	a0,s0
   14478:	695010ef          	jal	1630c <strcmp>
   1447c:	fc0504e3          	beqz	a0,14444 <_setlocale_r+0x34>
   14480:	00000513          	li	a0,0
   14484:	fc5ff06f          	j	14448 <_setlocale_r+0x38>

0000000000014488 <__locale_charset>:
   14488:	0001b537          	lui	a0,0x1b
   1448c:	a8850513          	addi	a0,a0,-1400 # 1aa88 <lc_ctype_charset>
   14490:	00008067          	ret

0000000000014494 <__locale_mb_cur_max>:
   14494:	8181a503          	lw	a0,-2024(gp) # 1b358 <__mb_cur_max>
   14498:	00008067          	ret

000000000001449c <__locale_msgcharset>:
   1449c:	0001b537          	lui	a0,0x1b
   144a0:	aa850513          	addi	a0,a0,-1368 # 1aaa8 <lc_message_charset>
   144a4:	00008067          	ret

00000000000144a8 <__locale_cjk_lang>:
   144a8:	00000513          	li	a0,0
   144ac:	00008067          	ret

00000000000144b0 <_localeconv_r>:
   144b0:	0001b537          	lui	a0,0x1b
   144b4:	ac850513          	addi	a0,a0,-1336 # 1aac8 <lconv>
   144b8:	00008067          	ret

00000000000144bc <setlocale>:
   144bc:	00058613          	mv	a2,a1
   144c0:	00050593          	mv	a1,a0
   144c4:	8101b503          	ld	a0,-2032(gp) # 1b350 <_impure_ptr>
   144c8:	f49ff06f          	j	14410 <_setlocale_r>

00000000000144cc <localeconv>:
   144cc:	0001b537          	lui	a0,0x1b
   144d0:	ac850513          	addi	a0,a0,-1336 # 1aac8 <lconv>
   144d4:	00008067          	ret

00000000000144d8 <__smakebuf_r>:
   144d8:	01059783          	lh	a5,16(a1)
   144dc:	f5010113          	addi	sp,sp,-176
   144e0:	08913c23          	sd	s1,152(sp)
   144e4:	03079493          	slli	s1,a5,0x30
   144e8:	0304d493          	srli	s1,s1,0x30
   144ec:	0a113423          	sd	ra,168(sp)
   144f0:	0a813023          	sd	s0,160(sp)
   144f4:	09213823          	sd	s2,144(sp)
   144f8:	09313423          	sd	s3,136(sp)
   144fc:	0024f713          	andi	a4,s1,2
   14500:	0e071063          	bnez	a4,145e0 <__smakebuf_r+0x108>
   14504:	00050913          	mv	s2,a0
   14508:	01259503          	lh	a0,18(a1)
   1450c:	00058413          	mv	s0,a1
   14510:	04054c63          	bltz	a0,14568 <__smakebuf_r+0x90>
   14514:	00010593          	mv	a1,sp
   14518:	5b4040ef          	jal	18acc <fstat>
   1451c:	04054063          	bltz	a0,1455c <__smakebuf_r+0x84>
   14520:	01012703          	lw	a4,16(sp)
   14524:	0000f7b7          	lui	a5,0xf
   14528:	ffffe9b7          	lui	s3,0xffffe
   1452c:	00f777b3          	and	a5,a4,a5
   14530:	013789bb          	addw	s3,a5,s3
   14534:	00008737          	lui	a4,0x8
   14538:	0019b993          	seqz	s3,s3
   1453c:	0ce78a63          	beq	a5,a4,14610 <__smakebuf_r+0x138>
   14540:	01045703          	lhu	a4,16(s0)
   14544:	000017b7          	lui	a5,0x1
   14548:	8007879b          	addiw	a5,a5,-2048
   1454c:	00f767b3          	or	a5,a4,a5
   14550:	00f41823          	sh	a5,16(s0)
   14554:	40000493          	li	s1,1024
   14558:	0340006f          	j	1458c <__smakebuf_r+0xb4>
   1455c:	01041783          	lh	a5,16(s0)
   14560:	03079493          	slli	s1,a5,0x30
   14564:	0304d493          	srli	s1,s1,0x30
   14568:	03849493          	slli	s1,s1,0x38
   1456c:	00001737          	lui	a4,0x1
   14570:	43f4d493          	srai	s1,s1,0x3f
   14574:	8007071b          	addiw	a4,a4,-2048
   14578:	c404f493          	andi	s1,s1,-960
   1457c:	00e7e7b3          	or	a5,a5,a4
   14580:	40048493          	addi	s1,s1,1024
   14584:	00f41823          	sh	a5,16(s0)
   14588:	00000993          	li	s3,0
   1458c:	00048593          	mv	a1,s1
   14590:	00090513          	mv	a0,s2
   14594:	0f0000ef          	jal	14684 <_malloc_r>
   14598:	0c050063          	beqz	a0,14658 <__smakebuf_r+0x180>
   1459c:	01045783          	lhu	a5,16(s0)
   145a0:	00014737          	lui	a4,0x14
   145a4:	b1070713          	addi	a4,a4,-1264 # 13b10 <_cleanup_r>
   145a8:	04e93c23          	sd	a4,88(s2)
   145ac:	0807e793          	ori	a5,a5,128
   145b0:	00f41823          	sh	a5,16(s0)
   145b4:	00a43023          	sd	a0,0(s0)
   145b8:	00a43c23          	sd	a0,24(s0)
   145bc:	02942023          	sw	s1,32(s0)
   145c0:	06099e63          	bnez	s3,1463c <__smakebuf_r+0x164>
   145c4:	0a813083          	ld	ra,168(sp)
   145c8:	0a013403          	ld	s0,160(sp)
   145cc:	09813483          	ld	s1,152(sp)
   145d0:	09013903          	ld	s2,144(sp)
   145d4:	08813983          	ld	s3,136(sp)
   145d8:	0b010113          	addi	sp,sp,176
   145dc:	00008067          	ret
   145e0:	0a813083          	ld	ra,168(sp)
   145e4:	07758793          	addi	a5,a1,119
   145e8:	00f5b023          	sd	a5,0(a1)
   145ec:	00f5bc23          	sd	a5,24(a1)
   145f0:	00100793          	li	a5,1
   145f4:	0a013403          	ld	s0,160(sp)
   145f8:	09813483          	ld	s1,152(sp)
   145fc:	09013903          	ld	s2,144(sp)
   14600:	08813983          	ld	s3,136(sp)
   14604:	02f5a023          	sw	a5,32(a1)
   14608:	0b010113          	addi	sp,sp,176
   1460c:	00008067          	ret
   14610:	04843703          	ld	a4,72(s0)
   14614:	000167b7          	lui	a5,0x16
   14618:	29878793          	addi	a5,a5,664 # 16298 <__sseek>
   1461c:	f2f712e3          	bne	a4,a5,14540 <__smakebuf_r+0x68>
   14620:	01045783          	lhu	a5,16(s0)
   14624:	40000713          	li	a4,1024
   14628:	08e42423          	sw	a4,136(s0)
   1462c:	00e7e7b3          	or	a5,a5,a4
   14630:	00f41823          	sh	a5,16(s0)
   14634:	40000493          	li	s1,1024
   14638:	f55ff06f          	j	1458c <__smakebuf_r+0xb4>
   1463c:	01241503          	lh	a0,18(s0)
   14640:	618040ef          	jal	18c58 <isatty>
   14644:	f80500e3          	beqz	a0,145c4 <__smakebuf_r+0xec>
   14648:	01045783          	lhu	a5,16(s0)
   1464c:	0017e793          	ori	a5,a5,1
   14650:	00f41823          	sh	a5,16(s0)
   14654:	f71ff06f          	j	145c4 <__smakebuf_r+0xec>
   14658:	01041783          	lh	a5,16(s0)
   1465c:	2007f713          	andi	a4,a5,512
   14660:	f60712e3          	bnez	a4,145c4 <__smakebuf_r+0xec>
   14664:	0027e793          	ori	a5,a5,2
   14668:	07740713          	addi	a4,s0,119
   1466c:	00f41823          	sh	a5,16(s0)
   14670:	00100793          	li	a5,1
   14674:	00e43023          	sd	a4,0(s0)
   14678:	00e43c23          	sd	a4,24(s0)
   1467c:	02f42023          	sw	a5,32(s0)
   14680:	f45ff06f          	j	145c4 <__smakebuf_r+0xec>

0000000000014684 <_malloc_r>:
   14684:	fa010113          	addi	sp,sp,-96
   14688:	04913423          	sd	s1,72(sp)
   1468c:	03313c23          	sd	s3,56(sp)
   14690:	04113c23          	sd	ra,88(sp)
   14694:	04813823          	sd	s0,80(sp)
   14698:	05213023          	sd	s2,64(sp)
   1469c:	03413823          	sd	s4,48(sp)
   146a0:	03513423          	sd	s5,40(sp)
   146a4:	03613023          	sd	s6,32(sp)
   146a8:	01713c23          	sd	s7,24(sp)
   146ac:	01813823          	sd	s8,16(sp)
   146b0:	01913423          	sd	s9,8(sp)
   146b4:	01758493          	addi	s1,a1,23
   146b8:	02e00793          	li	a5,46
   146bc:	00050993          	mv	s3,a0
   146c0:	1c97fa63          	bleu	s1,a5,14894 <_malloc_r+0x210>
   146c4:	800007b7          	lui	a5,0x80000
   146c8:	ff04f493          	andi	s1,s1,-16
   146cc:	fff7c793          	not	a5,a5
   146d0:	2497ee63          	bltu	a5,s1,1492c <_malloc_r+0x2a8>
   146d4:	24b4ec63          	bltu	s1,a1,1492c <_malloc_r+0x2a8>
   146d8:	201000ef          	jal	150d8 <__malloc_lock>
   146dc:	1f700793          	li	a5,503
   146e0:	7097f063          	bleu	s1,a5,14de0 <_malloc_r+0x75c>
   146e4:	0094d793          	srli	a5,s1,0x9
   146e8:	08000693          	li	a3,128
   146ec:	04000513          	li	a0,64
   146f0:	03f00593          	li	a1,63
   146f4:	24079463          	bnez	a5,1493c <_malloc_r+0x2b8>
   146f8:	0001b937          	lui	s2,0x1b
   146fc:	b2890913          	addi	s2,s2,-1240 # 1ab28 <__malloc_av_>
   14700:	00369693          	slli	a3,a3,0x3
   14704:	00d906b3          	add	a3,s2,a3
   14708:	0086b403          	ld	s0,8(a3)
   1470c:	ff068693          	addi	a3,a3,-16
   14710:	24868663          	beq	a3,s0,1495c <_malloc_r+0x2d8>
   14714:	00843783          	ld	a5,8(s0)
   14718:	01f00613          	li	a2,31
   1471c:	ffc7f793          	andi	a5,a5,-4
   14720:	40978733          	sub	a4,a5,s1
   14724:	02e64063          	blt	a2,a4,14744 <_malloc_r+0xc0>
   14728:	22075e63          	bgez	a4,14964 <_malloc_r+0x2e0>
   1472c:	01843403          	ld	s0,24(s0)
   14730:	22868663          	beq	a3,s0,1495c <_malloc_r+0x2d8>
   14734:	00843783          	ld	a5,8(s0)
   14738:	ffc7f793          	andi	a5,a5,-4
   1473c:	40978733          	sub	a4,a5,s1
   14740:	fee654e3          	ble	a4,a2,14728 <_malloc_r+0xa4>
   14744:	00058693          	mv	a3,a1
   14748:	02093403          	ld	s0,32(s2)
   1474c:	01090813          	addi	a6,s2,16
   14750:	47040a63          	beq	s0,a6,14bc4 <_malloc_r+0x540>
   14754:	00843783          	ld	a5,8(s0)
   14758:	01f00613          	li	a2,31
   1475c:	ffc7f793          	andi	a5,a5,-4
   14760:	40978733          	sub	a4,a5,s1
   14764:	44e64a63          	blt	a2,a4,14bb8 <_malloc_r+0x534>
   14768:	03093423          	sd	a6,40(s2)
   1476c:	03093023          	sd	a6,32(s2)
   14770:	20075063          	bgez	a4,14970 <_malloc_r+0x2ec>
   14774:	1ff00713          	li	a4,511
   14778:	3cf76c63          	bltu	a4,a5,14b50 <_malloc_r+0x4cc>
   1477c:	0037d793          	srli	a5,a5,0x3
   14780:	0007879b          	sext.w	a5,a5
   14784:	0017861b          	addiw	a2,a5,1
   14788:	0016161b          	slliw	a2,a2,0x1
   1478c:	00361613          	slli	a2,a2,0x3
   14790:	00893703          	ld	a4,8(s2)
   14794:	00c90633          	add	a2,s2,a2
   14798:	00063503          	ld	a0,0(a2)
   1479c:	4027d79b          	sraiw	a5,a5,0x2
   147a0:	00100593          	li	a1,1
   147a4:	00f597b3          	sll	a5,a1,a5
   147a8:	00e7e7b3          	or	a5,a5,a4
   147ac:	ff060713          	addi	a4,a2,-16
   147b0:	00e43c23          	sd	a4,24(s0)
   147b4:	00a43823          	sd	a0,16(s0)
   147b8:	00f93423          	sd	a5,8(s2)
   147bc:	00863023          	sd	s0,0(a2)
   147c0:	00853c23          	sd	s0,24(a0)
   147c4:	4026d61b          	sraiw	a2,a3,0x2
   147c8:	00100713          	li	a4,1
   147cc:	00c71633          	sll	a2,a4,a2
   147d0:	1cc7e063          	bltu	a5,a2,14990 <_malloc_r+0x30c>
   147d4:	00f67733          	and	a4,a2,a5
   147d8:	02071463          	bnez	a4,14800 <_malloc_r+0x17c>
   147dc:	00161613          	slli	a2,a2,0x1
   147e0:	ffc6f693          	andi	a3,a3,-4
   147e4:	00f67733          	and	a4,a2,a5
   147e8:	0046869b          	addiw	a3,a3,4
   147ec:	00071a63          	bnez	a4,14800 <_malloc_r+0x17c>
   147f0:	00161613          	slli	a2,a2,0x1
   147f4:	00f67733          	and	a4,a2,a5
   147f8:	0046869b          	addiw	a3,a3,4
   147fc:	fe070ae3          	beqz	a4,147f0 <_malloc_r+0x16c>
   14800:	01f00513          	li	a0,31
   14804:	0016889b          	addiw	a7,a3,1
   14808:	0018989b          	slliw	a7,a7,0x1
   1480c:	00389893          	slli	a7,a7,0x3
   14810:	011908b3          	add	a7,s2,a7
   14814:	ff088893          	addi	a7,a7,-16
   14818:	00088593          	mv	a1,a7
   1481c:	00068313          	mv	t1,a3
   14820:	0185b403          	ld	s0,24(a1)
   14824:	00859a63          	bne	a1,s0,14838 <_malloc_r+0x1b4>
   14828:	3a40006f          	j	14bcc <_malloc_r+0x548>
   1482c:	3c075263          	bgez	a4,14bf0 <_malloc_r+0x56c>
   14830:	01843403          	ld	s0,24(s0)
   14834:	38858c63          	beq	a1,s0,14bcc <_malloc_r+0x548>
   14838:	00843783          	ld	a5,8(s0)
   1483c:	ffc7f793          	andi	a5,a5,-4
   14840:	40978733          	sub	a4,a5,s1
   14844:	fee554e3          	ble	a4,a0,1482c <_malloc_r+0x1a8>
   14848:	01843783          	ld	a5,24(s0)
   1484c:	01043683          	ld	a3,16(s0)
   14850:	0014e613          	ori	a2,s1,1
   14854:	00c43423          	sd	a2,8(s0)
   14858:	00f6bc23          	sd	a5,24(a3)
   1485c:	00d7b823          	sd	a3,16(a5) # ffffffff80000010 <_gp+0xffffffff7ffe44d0>
   14860:	009404b3          	add	s1,s0,s1
   14864:	02993423          	sd	s1,40(s2)
   14868:	02993023          	sd	s1,32(s2)
   1486c:	00176793          	ori	a5,a4,1
   14870:	0104bc23          	sd	a6,24(s1)
   14874:	0104b823          	sd	a6,16(s1)
   14878:	00f4b423          	sd	a5,8(s1)
   1487c:	00e484b3          	add	s1,s1,a4
   14880:	00098513          	mv	a0,s3
   14884:	00e4b023          	sd	a4,0(s1)
   14888:	055000ef          	jal	150dc <__malloc_unlock>
   1488c:	01040513          	addi	a0,s0,16
   14890:	0680006f          	j	148f8 <_malloc_r+0x274>
   14894:	02000493          	li	s1,32
   14898:	08b4ea63          	bltu	s1,a1,1492c <_malloc_r+0x2a8>
   1489c:	03d000ef          	jal	150d8 <__malloc_lock>
   148a0:	00a00793          	li	a5,10
   148a4:	00400693          	li	a3,4
   148a8:	0001b937          	lui	s2,0x1b
   148ac:	b2890913          	addi	s2,s2,-1240 # 1ab28 <__malloc_av_>
   148b0:	00379793          	slli	a5,a5,0x3
   148b4:	00f907b3          	add	a5,s2,a5
   148b8:	0087b403          	ld	s0,8(a5)
   148bc:	ff078713          	addi	a4,a5,-16
   148c0:	32e40063          	beq	s0,a4,14be0 <_malloc_r+0x55c>
   148c4:	00843783          	ld	a5,8(s0)
   148c8:	01843683          	ld	a3,24(s0)
   148cc:	01043603          	ld	a2,16(s0)
   148d0:	ffc7f793          	andi	a5,a5,-4
   148d4:	00f407b3          	add	a5,s0,a5
   148d8:	0087b703          	ld	a4,8(a5)
   148dc:	00d63c23          	sd	a3,24(a2)
   148e0:	00c6b823          	sd	a2,16(a3)
   148e4:	00176713          	ori	a4,a4,1
   148e8:	00098513          	mv	a0,s3
   148ec:	00e7b423          	sd	a4,8(a5)
   148f0:	7ec000ef          	jal	150dc <__malloc_unlock>
   148f4:	01040513          	addi	a0,s0,16
   148f8:	05813083          	ld	ra,88(sp)
   148fc:	05013403          	ld	s0,80(sp)
   14900:	04813483          	ld	s1,72(sp)
   14904:	04013903          	ld	s2,64(sp)
   14908:	03813983          	ld	s3,56(sp)
   1490c:	03013a03          	ld	s4,48(sp)
   14910:	02813a83          	ld	s5,40(sp)
   14914:	02013b03          	ld	s6,32(sp)
   14918:	01813b83          	ld	s7,24(sp)
   1491c:	01013c03          	ld	s8,16(sp)
   14920:	00813c83          	ld	s9,8(sp)
   14924:	06010113          	addi	sp,sp,96
   14928:	00008067          	ret
   1492c:	00c00793          	li	a5,12
   14930:	00f9a023          	sw	a5,0(s3) # ffffffffffffe000 <_gp+0xfffffffffffe24c0>
   14934:	00000513          	li	a0,0
   14938:	fc1ff06f          	j	148f8 <_malloc_r+0x274>
   1493c:	00400713          	li	a4,4
   14940:	1ef76463          	bltu	a4,a5,14b28 <_malloc_r+0x4a4>
   14944:	0064d593          	srli	a1,s1,0x6
   14948:	0005859b          	sext.w	a1,a1
   1494c:	0395851b          	addiw	a0,a1,57
   14950:	0015169b          	slliw	a3,a0,0x1
   14954:	0385859b          	addiw	a1,a1,56
   14958:	da1ff06f          	j	146f8 <_malloc_r+0x74>
   1495c:	00050693          	mv	a3,a0
   14960:	de9ff06f          	j	14748 <_malloc_r+0xc4>
   14964:	01843683          	ld	a3,24(s0)
   14968:	01043603          	ld	a2,16(s0)
   1496c:	f69ff06f          	j	148d4 <_malloc_r+0x250>
   14970:	00f407b3          	add	a5,s0,a5
   14974:	0087b703          	ld	a4,8(a5)
   14978:	00098513          	mv	a0,s3
   1497c:	00176713          	ori	a4,a4,1
   14980:	00e7b423          	sd	a4,8(a5)
   14984:	758000ef          	jal	150dc <__malloc_unlock>
   14988:	01040513          	addi	a0,s0,16
   1498c:	f6dff06f          	j	148f8 <_malloc_r+0x274>
   14990:	01093403          	ld	s0,16(s2)
   14994:	00843703          	ld	a4,8(s0)
   14998:	ffc77b93          	andi	s7,a4,-4
   1499c:	009be863          	bltu	s7,s1,149ac <_malloc_r+0x328>
   149a0:	409b87b3          	sub	a5,s7,s1
   149a4:	01f00713          	li	a4,31
   149a8:	14f74c63          	blt	a4,a5,14b00 <_malloc_r+0x47c>
   149ac:	8b81b783          	ld	a5,-1864(gp) # 1b3f8 <__malloc_top_pad>
   149b0:	8201b683          	ld	a3,-2016(gp) # 1b360 <__malloc_sbrk_base>
   149b4:	fff00713          	li	a4,-1
   149b8:	00f487b3          	add	a5,s1,a5
   149bc:	01740a33          	add	s4,s0,s7
   149c0:	02078b13          	addi	s6,a5,32
   149c4:	00e68c63          	beq	a3,a4,149dc <_malloc_r+0x358>
   149c8:	00001b37          	lui	s6,0x1
   149cc:	01fb0b13          	addi	s6,s6,31 # 101f <_ftext-0xefe1>
   149d0:	01678b33          	add	s6,a5,s6
   149d4:	fffff7b7          	lui	a5,0xfffff
   149d8:	00fb7b33          	and	s6,s6,a5
   149dc:	000b0513          	mv	a0,s6
   149e0:	3b8040ef          	jal	18d98 <sbrk>
   149e4:	fff00793          	li	a5,-1
   149e8:	00050a93          	mv	s5,a0
   149ec:	26f50263          	beq	a0,a5,14c50 <_malloc_r+0x5cc>
   149f0:	25456e63          	bltu	a0,s4,14c4c <_malloc_r+0x5c8>
   149f4:	90018c13          	addi	s8,gp,-1792 # 1b440 <__malloc_current_mallinfo>
   149f8:	000c2783          	lw	a5,0(s8)
   149fc:	00fb07bb          	addw	a5,s6,a5
   14a00:	00fc2023          	sw	a5,0(s8)
   14a04:	355a0463          	beq	s4,s5,14d4c <_malloc_r+0x6c8>
   14a08:	8201b683          	ld	a3,-2016(gp) # 1b360 <__malloc_sbrk_base>
   14a0c:	fff00713          	li	a4,-1
   14a10:	36e68263          	beq	a3,a4,14d74 <_malloc_r+0x6f0>
   14a14:	414a8a33          	sub	s4,s5,s4
   14a18:	00fa07bb          	addw	a5,s4,a5
   14a1c:	00fc2023          	sw	a5,0(s8)
   14a20:	00faf713          	andi	a4,s5,15
   14a24:	000017b7          	lui	a5,0x1
   14a28:	00070a63          	beqz	a4,14a3c <_malloc_r+0x3b8>
   14a2c:	40ea8ab3          	sub	s5,s5,a4
   14a30:	01078a13          	addi	s4,a5,16 # 1010 <_ftext-0xeff0>
   14a34:	010a8a93          	addi	s5,s5,16
   14a38:	40ea07b3          	sub	a5,s4,a4
   14a3c:	00001a37          	lui	s4,0x1
   14a40:	fffa0a13          	addi	s4,s4,-1 # fff <_ftext-0xf001>
   14a44:	016a8b33          	add	s6,s5,s6
   14a48:	014b7b33          	and	s6,s6,s4
   14a4c:	41678a33          	sub	s4,a5,s6
   14a50:	000a0513          	mv	a0,s4
   14a54:	344040ef          	jal	18d98 <sbrk>
   14a58:	fff00793          	li	a5,-1
   14a5c:	30f50663          	beq	a0,a5,14d68 <_malloc_r+0x6e4>
   14a60:	41550733          	sub	a4,a0,s5
   14a64:	01470733          	add	a4,a4,s4
   14a68:	00176713          	ori	a4,a4,1
   14a6c:	000a0a1b          	sext.w	s4,s4
   14a70:	000c2783          	lw	a5,0(s8)
   14a74:	01593823          	sd	s5,16(s2)
   14a78:	00eab423          	sd	a4,8(s5)
   14a7c:	00fa07bb          	addw	a5,s4,a5
   14a80:	00fc2023          	sw	a5,0(s8)
   14a84:	03240c63          	beq	s0,s2,14abc <_malloc_r+0x438>
   14a88:	01f00613          	li	a2,31
   14a8c:	27767463          	bleu	s7,a2,14cf4 <_malloc_r+0x670>
   14a90:	00843683          	ld	a3,8(s0)
   14a94:	fe8b8713          	addi	a4,s7,-24
   14a98:	ff077713          	andi	a4,a4,-16
   14a9c:	0016f693          	andi	a3,a3,1
   14aa0:	00e6e6b3          	or	a3,a3,a4
   14aa4:	00d43423          	sd	a3,8(s0)
   14aa8:	00900593          	li	a1,9
   14aac:	00e406b3          	add	a3,s0,a4
   14ab0:	00b6b423          	sd	a1,8(a3)
   14ab4:	00b6b823          	sd	a1,16(a3)
   14ab8:	2ce66263          	bltu	a2,a4,14d7c <_malloc_r+0x6f8>
   14abc:	8b01b683          	ld	a3,-1872(gp) # 1b3f0 <__malloc_max_sbrked_mem>
   14ac0:	00f6f463          	bleu	a5,a3,14ac8 <_malloc_r+0x444>
   14ac4:	8af1b823          	sd	a5,-1872(gp) # 1b3f0 <__malloc_max_sbrked_mem>
   14ac8:	8a81b683          	ld	a3,-1880(gp) # 1b3e8 <__malloc_max_total_mem>
   14acc:	01093403          	ld	s0,16(s2)
   14ad0:	00f6f463          	bleu	a5,a3,14ad8 <_malloc_r+0x454>
   14ad4:	8af1b423          	sd	a5,-1880(gp) # 1b3e8 <__malloc_max_total_mem>
   14ad8:	00843703          	ld	a4,8(s0)
   14adc:	ffc77713          	andi	a4,a4,-4
   14ae0:	409707b3          	sub	a5,a4,s1
   14ae4:	00976663          	bltu	a4,s1,14af0 <_malloc_r+0x46c>
   14ae8:	01f00713          	li	a4,31
   14aec:	00f74a63          	blt	a4,a5,14b00 <_malloc_r+0x47c>
   14af0:	00098513          	mv	a0,s3
   14af4:	5e8000ef          	jal	150dc <__malloc_unlock>
   14af8:	00000513          	li	a0,0
   14afc:	dfdff06f          	j	148f8 <_malloc_r+0x274>
   14b00:	0014e713          	ori	a4,s1,1
   14b04:	00e43423          	sd	a4,8(s0)
   14b08:	009404b3          	add	s1,s0,s1
   14b0c:	00993823          	sd	s1,16(s2)
   14b10:	0017e793          	ori	a5,a5,1
   14b14:	00098513          	mv	a0,s3
   14b18:	00f4b423          	sd	a5,8(s1)
   14b1c:	5c0000ef          	jal	150dc <__malloc_unlock>
   14b20:	01040513          	addi	a0,s0,16
   14b24:	dd5ff06f          	j	148f8 <_malloc_r+0x274>
   14b28:	01400713          	li	a4,20
   14b2c:	0ef77a63          	bleu	a5,a4,14c20 <_malloc_r+0x59c>
   14b30:	05400713          	li	a4,84
   14b34:	18f76063          	bltu	a4,a5,14cb4 <_malloc_r+0x630>
   14b38:	00c4d593          	srli	a1,s1,0xc
   14b3c:	0005859b          	sext.w	a1,a1
   14b40:	06f5851b          	addiw	a0,a1,111
   14b44:	0015169b          	slliw	a3,a0,0x1
   14b48:	06e5859b          	addiw	a1,a1,110
   14b4c:	badff06f          	j	146f8 <_malloc_r+0x74>
   14b50:	0097d713          	srli	a4,a5,0x9
   14b54:	00400613          	li	a2,4
   14b58:	0ce67e63          	bleu	a4,a2,14c34 <_malloc_r+0x5b0>
   14b5c:	01400613          	li	a2,20
   14b60:	1ce66663          	bltu	a2,a4,14d2c <_malloc_r+0x6a8>
   14b64:	0007071b          	sext.w	a4,a4
   14b68:	05c7059b          	addiw	a1,a4,92
   14b6c:	05b7061b          	addiw	a2,a4,91
   14b70:	0015959b          	slliw	a1,a1,0x1
   14b74:	00359593          	slli	a1,a1,0x3
   14b78:	00b905b3          	add	a1,s2,a1
   14b7c:	0005b703          	ld	a4,0(a1)
   14b80:	ff058593          	addi	a1,a1,-16
   14b84:	14e58863          	beq	a1,a4,14cd4 <_malloc_r+0x650>
   14b88:	00873603          	ld	a2,8(a4)
   14b8c:	ffc67613          	andi	a2,a2,-4
   14b90:	00c7f663          	bleu	a2,a5,14b9c <_malloc_r+0x518>
   14b94:	01073703          	ld	a4,16(a4)
   14b98:	fee598e3          	bne	a1,a4,14b88 <_malloc_r+0x504>
   14b9c:	01873583          	ld	a1,24(a4)
   14ba0:	00893783          	ld	a5,8(s2)
   14ba4:	00b43c23          	sd	a1,24(s0)
   14ba8:	00e43823          	sd	a4,16(s0)
   14bac:	0085b823          	sd	s0,16(a1)
   14bb0:	00873c23          	sd	s0,24(a4)
   14bb4:	c11ff06f          	j	147c4 <_malloc_r+0x140>
   14bb8:	0014e793          	ori	a5,s1,1
   14bbc:	00f43423          	sd	a5,8(s0)
   14bc0:	ca1ff06f          	j	14860 <_malloc_r+0x1dc>
   14bc4:	00893783          	ld	a5,8(s2)
   14bc8:	bfdff06f          	j	147c4 <_malloc_r+0x140>
   14bcc:	0013031b          	addiw	t1,t1,1
   14bd0:	00337793          	andi	a5,t1,3
   14bd4:	01058593          	addi	a1,a1,16
   14bd8:	c40794e3          	bnez	a5,14820 <_malloc_r+0x19c>
   14bdc:	0900006f          	j	14c6c <_malloc_r+0x5e8>
   14be0:	0187b403          	ld	s0,24(a5)
   14be4:	0026869b          	addiw	a3,a3,2
   14be8:	b68780e3          	beq	a5,s0,14748 <_malloc_r+0xc4>
   14bec:	cd9ff06f          	j	148c4 <_malloc_r+0x240>
   14bf0:	00f407b3          	add	a5,s0,a5
   14bf4:	0087b703          	ld	a4,8(a5)
   14bf8:	01843683          	ld	a3,24(s0)
   14bfc:	01043603          	ld	a2,16(s0)
   14c00:	00176713          	ori	a4,a4,1
   14c04:	00e7b423          	sd	a4,8(a5)
   14c08:	00d63c23          	sd	a3,24(a2)
   14c0c:	00098513          	mv	a0,s3
   14c10:	00c6b823          	sd	a2,16(a3)
   14c14:	4c8000ef          	jal	150dc <__malloc_unlock>
   14c18:	01040513          	addi	a0,s0,16
   14c1c:	cddff06f          	j	148f8 <_malloc_r+0x274>
   14c20:	0007879b          	sext.w	a5,a5
   14c24:	05c7851b          	addiw	a0,a5,92
   14c28:	05b7859b          	addiw	a1,a5,91
   14c2c:	0015169b          	slliw	a3,a0,0x1
   14c30:	ac9ff06f          	j	146f8 <_malloc_r+0x74>
   14c34:	0067d713          	srli	a4,a5,0x6
   14c38:	0007071b          	sext.w	a4,a4
   14c3c:	0397059b          	addiw	a1,a4,57
   14c40:	0387061b          	addiw	a2,a4,56
   14c44:	0015959b          	slliw	a1,a1,0x1
   14c48:	f2dff06f          	j	14b74 <_malloc_r+0x4f0>
   14c4c:	db2404e3          	beq	s0,s2,149f4 <_malloc_r+0x370>
   14c50:	01093403          	ld	s0,16(s2)
   14c54:	00843703          	ld	a4,8(s0)
   14c58:	ffc77713          	andi	a4,a4,-4
   14c5c:	e85ff06f          	j	14ae0 <_malloc_r+0x45c>
   14c60:	0108b783          	ld	a5,16(a7)
   14c64:	fff6869b          	addiw	a3,a3,-1
   14c68:	16f89863          	bne	a7,a5,14dd8 <_malloc_r+0x754>
   14c6c:	0036f793          	andi	a5,a3,3
   14c70:	ff088893          	addi	a7,a7,-16
   14c74:	fe0796e3          	bnez	a5,14c60 <_malloc_r+0x5dc>
   14c78:	00893783          	ld	a5,8(s2)
   14c7c:	fff64713          	not	a4,a2
   14c80:	00f777b3          	and	a5,a4,a5
   14c84:	00f93423          	sd	a5,8(s2)
   14c88:	00161613          	slli	a2,a2,0x1
   14c8c:	d0c7e2e3          	bltu	a5,a2,14990 <_malloc_r+0x30c>
   14c90:	d00600e3          	beqz	a2,14990 <_malloc_r+0x30c>
   14c94:	00f67733          	and	a4,a2,a5
   14c98:	00030693          	mv	a3,t1
   14c9c:	b60714e3          	bnez	a4,14804 <_malloc_r+0x180>
   14ca0:	00161613          	slli	a2,a2,0x1
   14ca4:	00f67733          	and	a4,a2,a5
   14ca8:	0046869b          	addiw	a3,a3,4
   14cac:	fe070ae3          	beqz	a4,14ca0 <_malloc_r+0x61c>
   14cb0:	b55ff06f          	j	14804 <_malloc_r+0x180>
   14cb4:	15400713          	li	a4,340
   14cb8:	04f76463          	bltu	a4,a5,14d00 <_malloc_r+0x67c>
   14cbc:	00f4d593          	srli	a1,s1,0xf
   14cc0:	0005859b          	sext.w	a1,a1
   14cc4:	0785851b          	addiw	a0,a1,120
   14cc8:	0015169b          	slliw	a3,a0,0x1
   14ccc:	0775859b          	addiw	a1,a1,119
   14cd0:	a29ff06f          	j	146f8 <_malloc_r+0x74>
   14cd4:	00893783          	ld	a5,8(s2)
   14cd8:	4026571b          	sraiw	a4,a2,0x2
   14cdc:	00100613          	li	a2,1
   14ce0:	00e61733          	sll	a4,a2,a4
   14ce4:	00f767b3          	or	a5,a4,a5
   14ce8:	00f93423          	sd	a5,8(s2)
   14cec:	00058713          	mv	a4,a1
   14cf0:	eb5ff06f          	j	14ba4 <_malloc_r+0x520>
   14cf4:	00100793          	li	a5,1
   14cf8:	00fab423          	sd	a5,8(s5)
   14cfc:	df5ff06f          	j	14af0 <_malloc_r+0x46c>
   14d00:	55400713          	li	a4,1364
   14d04:	0fe00693          	li	a3,254
   14d08:	07f00513          	li	a0,127
   14d0c:	07e00593          	li	a1,126
   14d10:	9ef764e3          	bltu	a4,a5,146f8 <_malloc_r+0x74>
   14d14:	0124d593          	srli	a1,s1,0x12
   14d18:	0005859b          	sext.w	a1,a1
   14d1c:	07d5851b          	addiw	a0,a1,125
   14d20:	0015169b          	slliw	a3,a0,0x1
   14d24:	07c5859b          	addiw	a1,a1,124
   14d28:	9d1ff06f          	j	146f8 <_malloc_r+0x74>
   14d2c:	05400613          	li	a2,84
   14d30:	06e66063          	bltu	a2,a4,14d90 <_malloc_r+0x70c>
   14d34:	00c7d713          	srli	a4,a5,0xc
   14d38:	0007071b          	sext.w	a4,a4
   14d3c:	06f7059b          	addiw	a1,a4,111
   14d40:	06e7061b          	addiw	a2,a4,110
   14d44:	0015959b          	slliw	a1,a1,0x1
   14d48:	e2dff06f          	j	14b74 <_malloc_r+0x4f0>
   14d4c:	034a1713          	slli	a4,s4,0x34
   14d50:	ca071ce3          	bnez	a4,14a08 <_malloc_r+0x384>
   14d54:	01093683          	ld	a3,16(s2)
   14d58:	016b8733          	add	a4,s7,s6
   14d5c:	00176713          	ori	a4,a4,1
   14d60:	00e6b423          	sd	a4,8(a3)
   14d64:	d59ff06f          	j	14abc <_malloc_r+0x438>
   14d68:	00100713          	li	a4,1
   14d6c:	00000a13          	li	s4,0
   14d70:	d01ff06f          	j	14a70 <_malloc_r+0x3ec>
   14d74:	8351b023          	sd	s5,-2016(gp) # 1b360 <__malloc_sbrk_base>
   14d78:	ca9ff06f          	j	14a20 <_malloc_r+0x39c>
   14d7c:	01040593          	addi	a1,s0,16
   14d80:	00098513          	mv	a0,s3
   14d84:	a0cff0ef          	jal	13f90 <_free_r>
   14d88:	000c2783          	lw	a5,0(s8)
   14d8c:	d31ff06f          	j	14abc <_malloc_r+0x438>
   14d90:	15400613          	li	a2,340
   14d94:	00e66e63          	bltu	a2,a4,14db0 <_malloc_r+0x72c>
   14d98:	00f7d713          	srli	a4,a5,0xf
   14d9c:	0007071b          	sext.w	a4,a4
   14da0:	0787059b          	addiw	a1,a4,120
   14da4:	0777061b          	addiw	a2,a4,119
   14da8:	0015959b          	slliw	a1,a1,0x1
   14dac:	dc9ff06f          	j	14b74 <_malloc_r+0x4f0>
   14db0:	55400513          	li	a0,1364
   14db4:	0fe00593          	li	a1,254
   14db8:	07e00613          	li	a2,126
   14dbc:	dae56ce3          	bltu	a0,a4,14b74 <_malloc_r+0x4f0>
   14dc0:	0127d713          	srli	a4,a5,0x12
   14dc4:	0007071b          	sext.w	a4,a4
   14dc8:	07d7059b          	addiw	a1,a4,125
   14dcc:	07c7061b          	addiw	a2,a4,124
   14dd0:	0015959b          	slliw	a1,a1,0x1
   14dd4:	da1ff06f          	j	14b74 <_malloc_r+0x4f0>
   14dd8:	00893783          	ld	a5,8(s2)
   14ddc:	eadff06f          	j	14c88 <_malloc_r+0x604>
   14de0:	0034d693          	srli	a3,s1,0x3
   14de4:	0006869b          	sext.w	a3,a3
   14de8:	0016879b          	addiw	a5,a3,1
   14dec:	0017979b          	slliw	a5,a5,0x1
   14df0:	ab9ff06f          	j	148a8 <_malloc_r+0x224>

0000000000014df4 <memchr>:
   14df4:	00757793          	andi	a5,a0,7
   14df8:	0ff5f813          	andi	a6,a1,255
   14dfc:	0c078c63          	beqz	a5,14ed4 <memchr+0xe0>
   14e00:	fff60793          	addi	a5,a2,-1
   14e04:	06060463          	beqz	a2,14e6c <memchr+0x78>
   14e08:	00054703          	lbu	a4,0(a0)
   14e0c:	07070263          	beq	a4,a6,14e70 <memchr+0x7c>
   14e10:	00080693          	mv	a3,a6
   14e14:	0140006f          	j	14e28 <memchr+0x34>
   14e18:	04078a63          	beqz	a5,14e6c <memchr+0x78>
   14e1c:	00054703          	lbu	a4,0(a0)
   14e20:	fff78793          	addi	a5,a5,-1
   14e24:	04d70663          	beq	a4,a3,14e70 <memchr+0x7c>
   14e28:	00150513          	addi	a0,a0,1
   14e2c:	00757713          	andi	a4,a0,7
   14e30:	fe0714e3          	bnez	a4,14e18 <memchr+0x24>
   14e34:	00700693          	li	a3,7
   14e38:	02f6ee63          	bltu	a3,a5,14e74 <memchr+0x80>
   14e3c:	02078863          	beqz	a5,14e6c <memchr+0x78>
   14e40:	00054703          	lbu	a4,0(a0)
   14e44:	03070663          	beq	a4,a6,14e70 <memchr+0x7c>
   14e48:	00150713          	addi	a4,a0,1
   14e4c:	00f507b3          	add	a5,a0,a5
   14e50:	00080613          	mv	a2,a6
   14e54:	0100006f          	j	14e64 <memchr+0x70>
   14e58:	00170713          	addi	a4,a4,1
   14e5c:	fff74683          	lbu	a3,-1(a4)
   14e60:	00c68863          	beq	a3,a2,14e70 <memchr+0x7c>
   14e64:	00070513          	mv	a0,a4
   14e68:	fee798e3          	bne	a5,a4,14e58 <memchr+0x64>
   14e6c:	00000513          	li	a0,0
   14e70:	00008067          	ret
   14e74:	0ff5f593          	andi	a1,a1,255
   14e78:	0085971b          	slliw	a4,a1,0x8
   14e7c:	00b765b3          	or	a1,a4,a1
   14e80:	00058713          	mv	a4,a1
   14e84:	01071613          	slli	a2,a4,0x10
   14e88:	00c76733          	or	a4,a4,a2
   14e8c:	0001b637          	lui	a2,0x1b
   14e90:	3c063303          	ld	t1,960(a2) # 1b3c0 <__wctomb+0x50>
   14e94:	0001b637          	lui	a2,0x1b
   14e98:	3c863883          	ld	a7,968(a2) # 1b3c8 <__wctomb+0x58>
   14e9c:	02071613          	slli	a2,a4,0x20
   14ea0:	00e66633          	or	a2,a2,a4
   14ea4:	00068593          	mv	a1,a3
   14ea8:	00053703          	ld	a4,0(a0)
   14eac:	00e64733          	xor	a4,a2,a4
   14eb0:	006706b3          	add	a3,a4,t1
   14eb4:	fff74713          	not	a4,a4
   14eb8:	00e6f733          	and	a4,a3,a4
   14ebc:	01177733          	and	a4,a4,a7
   14ec0:	f80710e3          	bnez	a4,14e40 <memchr+0x4c>
   14ec4:	ff878793          	addi	a5,a5,-8
   14ec8:	00850513          	addi	a0,a0,8
   14ecc:	fcf5eee3          	bltu	a1,a5,14ea8 <memchr+0xb4>
   14ed0:	f6dff06f          	j	14e3c <memchr+0x48>
   14ed4:	00060793          	mv	a5,a2
   14ed8:	f5dff06f          	j	14e34 <memchr+0x40>

0000000000014edc <memcpy>:
   14edc:	00a5c7b3          	xor	a5,a1,a0
   14ee0:	0077f793          	andi	a5,a5,7
   14ee4:	00c508b3          	add	a7,a0,a2
   14ee8:	0e079263          	bnez	a5,14fcc <memcpy+0xf0>
   14eec:	00700793          	li	a5,7
   14ef0:	0ec7fe63          	bleu	a2,a5,14fec <memcpy+0x110>
   14ef4:	00757793          	andi	a5,a0,7
   14ef8:	04079a63          	bnez	a5,14f4c <memcpy+0x70>
   14efc:	ff88f813          	andi	a6,a7,-8
   14f00:	fc080793          	addi	a5,a6,-64
   14f04:	00050713          	mv	a4,a0
   14f08:	06f56663          	bltu	a0,a5,14f74 <memcpy+0x98>
   14f0c:	00058693          	mv	a3,a1
   14f10:	00070793          	mv	a5,a4
   14f14:	03077863          	bleu	a6,a4,14f44 <memcpy+0x68>
   14f18:	0006b603          	ld	a2,0(a3)
   14f1c:	00878793          	addi	a5,a5,8
   14f20:	00868693          	addi	a3,a3,8
   14f24:	fec7bc23          	sd	a2,-8(a5)
   14f28:	ff07e8e3          	bltu	a5,a6,14f18 <memcpy+0x3c>
   14f2c:	fff74793          	not	a5,a4
   14f30:	01078833          	add	a6,a5,a6
   14f34:	ff887813          	andi	a6,a6,-8
   14f38:	00880813          	addi	a6,a6,8
   14f3c:	01070733          	add	a4,a4,a6
   14f40:	010585b3          	add	a1,a1,a6
   14f44:	09176863          	bltu	a4,a7,14fd4 <memcpy+0xf8>
   14f48:	00008067          	ret
   14f4c:	00050713          	mv	a4,a0
   14f50:	0005c683          	lbu	a3,0(a1)
   14f54:	00170713          	addi	a4,a4,1
   14f58:	00777793          	andi	a5,a4,7
   14f5c:	fed70fa3          	sb	a3,-1(a4)
   14f60:	00158593          	addi	a1,a1,1
   14f64:	fe0796e3          	bnez	a5,14f50 <memcpy+0x74>
   14f68:	ff88f813          	andi	a6,a7,-8
   14f6c:	fc080793          	addi	a5,a6,-64
   14f70:	f8f77ee3          	bleu	a5,a4,14f0c <memcpy+0x30>
   14f74:	0005b383          	ld	t2,0(a1)
   14f78:	0085b283          	ld	t0,8(a1)
   14f7c:	0105bf83          	ld	t6,16(a1)
   14f80:	0185bf03          	ld	t5,24(a1)
   14f84:	0205be83          	ld	t4,32(a1)
   14f88:	0285be03          	ld	t3,40(a1)
   14f8c:	0305b303          	ld	t1,48(a1)
   14f90:	0385b603          	ld	a2,56(a1)
   14f94:	04858593          	addi	a1,a1,72
   14f98:	04870713          	addi	a4,a4,72
   14f9c:	ff85b683          	ld	a3,-8(a1)
   14fa0:	fa773c23          	sd	t2,-72(a4)
   14fa4:	fc573023          	sd	t0,-64(a4)
   14fa8:	fdf73423          	sd	t6,-56(a4)
   14fac:	fde73823          	sd	t5,-48(a4)
   14fb0:	fdd73c23          	sd	t4,-40(a4)
   14fb4:	ffc73023          	sd	t3,-32(a4)
   14fb8:	fe673423          	sd	t1,-24(a4)
   14fbc:	fec73823          	sd	a2,-16(a4)
   14fc0:	fed73c23          	sd	a3,-8(a4)
   14fc4:	faf768e3          	bltu	a4,a5,14f74 <memcpy+0x98>
   14fc8:	f45ff06f          	j	14f0c <memcpy+0x30>
   14fcc:	00050713          	mv	a4,a0
   14fd0:	03157463          	bleu	a7,a0,14ff8 <memcpy+0x11c>
   14fd4:	0005c783          	lbu	a5,0(a1)
   14fd8:	00170713          	addi	a4,a4,1
   14fdc:	00158593          	addi	a1,a1,1
   14fe0:	fef70fa3          	sb	a5,-1(a4)
   14fe4:	ff1768e3          	bltu	a4,a7,14fd4 <memcpy+0xf8>
   14fe8:	00008067          	ret
   14fec:	00050713          	mv	a4,a0
   14ff0:	ff1562e3          	bltu	a0,a7,14fd4 <memcpy+0xf8>
   14ff4:	f55ff06f          	j	14f48 <memcpy+0x6c>
   14ff8:	00008067          	ret

0000000000014ffc <memset>:
   14ffc:	00f00813          	li	a6,15
   15000:	00050713          	mv	a4,a0
   15004:	02c87a63          	bleu	a2,a6,15038 <memset+0x3c>
   15008:	00f77793          	andi	a5,a4,15
   1500c:	0a079063          	bnez	a5,150ac <memset+0xb0>
   15010:	06059e63          	bnez	a1,1508c <memset+0x90>
   15014:	ff067693          	andi	a3,a2,-16
   15018:	00f67613          	andi	a2,a2,15
   1501c:	00e686b3          	add	a3,a3,a4
   15020:	00b73023          	sd	a1,0(a4)
   15024:	00b73423          	sd	a1,8(a4)
   15028:	01070713          	addi	a4,a4,16
   1502c:	fed76ae3          	bltu	a4,a3,15020 <memset+0x24>
   15030:	00061463          	bnez	a2,15038 <memset+0x3c>
   15034:	00008067          	ret
   15038:	40c806b3          	sub	a3,a6,a2
   1503c:	00269693          	slli	a3,a3,0x2
   15040:	00000297          	auipc	t0,0x0
   15044:	005686b3          	add	a3,a3,t0
   15048:	00c68067          	jr	a3,12
   1504c:	00b70723          	sb	a1,14(a4)
   15050:	00b706a3          	sb	a1,13(a4)
   15054:	00b70623          	sb	a1,12(a4)
   15058:	00b705a3          	sb	a1,11(a4)
   1505c:	00b70523          	sb	a1,10(a4)
   15060:	00b704a3          	sb	a1,9(a4)
   15064:	00b70423          	sb	a1,8(a4)
   15068:	00b703a3          	sb	a1,7(a4)
   1506c:	00b70323          	sb	a1,6(a4)
   15070:	00b702a3          	sb	a1,5(a4)
   15074:	00b70223          	sb	a1,4(a4)
   15078:	00b701a3          	sb	a1,3(a4)
   1507c:	00b70123          	sb	a1,2(a4)
   15080:	00b700a3          	sb	a1,1(a4)
   15084:	00b70023          	sb	a1,0(a4)
   15088:	00008067          	ret
   1508c:	0ff5f593          	andi	a1,a1,255
   15090:	00859693          	slli	a3,a1,0x8
   15094:	00d5e5b3          	or	a1,a1,a3
   15098:	01059693          	slli	a3,a1,0x10
   1509c:	00d5e5b3          	or	a1,a1,a3
   150a0:	02059693          	slli	a3,a1,0x20
   150a4:	00d5e5b3          	or	a1,a1,a3
   150a8:	f6dff06f          	j	15014 <memset+0x18>
   150ac:	00279693          	slli	a3,a5,0x2
   150b0:	00000297          	auipc	t0,0x0
   150b4:	005686b3          	add	a3,a3,t0
   150b8:	00008293          	mv	t0,ra
   150bc:	f98680e7          	jalr	a3,-104
   150c0:	00028093          	mv	ra,t0
   150c4:	ff078793          	addi	a5,a5,-16
   150c8:	40f70733          	sub	a4,a4,a5
   150cc:	00f60633          	add	a2,a2,a5
   150d0:	f6c874e3          	bleu	a2,a6,15038 <memset+0x3c>
   150d4:	f3dff06f          	j	15010 <memset+0x14>

00000000000150d8 <__malloc_lock>:
   150d8:	00008067          	ret

00000000000150dc <__malloc_unlock>:
   150dc:	00008067          	ret

00000000000150e0 <_Balloc>:
   150e0:	07853783          	ld	a5,120(a0)
   150e4:	fe010113          	addi	sp,sp,-32
   150e8:	00813823          	sd	s0,16(sp)
   150ec:	00913423          	sd	s1,8(sp)
   150f0:	00113c23          	sd	ra,24(sp)
   150f4:	01213023          	sd	s2,0(sp)
   150f8:	00050413          	mv	s0,a0
   150fc:	00058493          	mv	s1,a1
   15100:	02078e63          	beqz	a5,1513c <_Balloc+0x5c>
   15104:	00349513          	slli	a0,s1,0x3
   15108:	00a787b3          	add	a5,a5,a0
   1510c:	0007b503          	ld	a0,0(a5)
   15110:	04050663          	beqz	a0,1515c <_Balloc+0x7c>
   15114:	00053703          	ld	a4,0(a0)
   15118:	00e7b023          	sd	a4,0(a5)
   1511c:	00052a23          	sw	zero,20(a0)
   15120:	00052823          	sw	zero,16(a0)
   15124:	01813083          	ld	ra,24(sp)
   15128:	01013403          	ld	s0,16(sp)
   1512c:	00813483          	ld	s1,8(sp)
   15130:	00013903          	ld	s2,0(sp)
   15134:	02010113          	addi	sp,sp,32
   15138:	00008067          	ret
   1513c:	04100613          	li	a2,65
   15140:	00800593          	li	a1,8
   15144:	638020ef          	jal	1777c <_calloc_r>
   15148:	06a43c23          	sd	a0,120(s0)
   1514c:	00050793          	mv	a5,a0
   15150:	fa051ae3          	bnez	a0,15104 <_Balloc+0x24>
   15154:	00000513          	li	a0,0
   15158:	fcdff06f          	j	15124 <_Balloc+0x44>
   1515c:	00100913          	li	s2,1
   15160:	0099193b          	sllw	s2,s2,s1
   15164:	fff9061b          	addiw	a2,s2,-1
   15168:	00860613          	addi	a2,a2,8
   1516c:	00261613          	slli	a2,a2,0x2
   15170:	00100593          	li	a1,1
   15174:	00040513          	mv	a0,s0
   15178:	604020ef          	jal	1777c <_calloc_r>
   1517c:	fc050ce3          	beqz	a0,15154 <_Balloc+0x74>
   15180:	00952423          	sw	s1,8(a0)
   15184:	01252623          	sw	s2,12(a0)
   15188:	f95ff06f          	j	1511c <_Balloc+0x3c>

000000000001518c <_Bfree>:
   1518c:	02058063          	beqz	a1,151ac <_Bfree+0x20>
   15190:	0085a783          	lw	a5,8(a1)
   15194:	07853703          	ld	a4,120(a0)
   15198:	00379793          	slli	a5,a5,0x3
   1519c:	00f707b3          	add	a5,a4,a5
   151a0:	0007b703          	ld	a4,0(a5)
   151a4:	00e5b023          	sd	a4,0(a1)
   151a8:	00b7b023          	sd	a1,0(a5)
   151ac:	00008067          	ret

00000000000151b0 <__multadd>:
   151b0:	fc010113          	addi	sp,sp,-64
   151b4:	00010837          	lui	a6,0x10
   151b8:	02813823          	sd	s0,48(sp)
   151bc:	02913423          	sd	s1,40(sp)
   151c0:	03213023          	sd	s2,32(sp)
   151c4:	00058493          	mv	s1,a1
   151c8:	0145a403          	lw	s0,20(a1)
   151cc:	00050913          	mv	s2,a0
   151d0:	02113c23          	sd	ra,56(sp)
   151d4:	01313c23          	sd	s3,24(sp)
   151d8:	01858593          	addi	a1,a1,24
   151dc:	00000513          	li	a0,0
   151e0:	fff8081b          	addiw	a6,a6,-1
   151e4:	0005a783          	lw	a5,0(a1)
   151e8:	00458593          	addi	a1,a1,4
   151ec:	0015051b          	addiw	a0,a0,1
   151f0:	0107f733          	and	a4,a5,a6
   151f4:	02c7073b          	mulw	a4,a4,a2
   151f8:	0107d79b          	srliw	a5,a5,0x10
   151fc:	02c787bb          	mulw	a5,a5,a2
   15200:	00d7073b          	addw	a4,a4,a3
   15204:	0107569b          	srliw	a3,a4,0x10
   15208:	01077733          	and	a4,a4,a6
   1520c:	00d786bb          	addw	a3,a5,a3
   15210:	0106979b          	slliw	a5,a3,0x10
   15214:	00e7873b          	addw	a4,a5,a4
   15218:	fee5ae23          	sw	a4,-4(a1)
   1521c:	0106d69b          	srliw	a3,a3,0x10
   15220:	fc8542e3          	blt	a0,s0,151e4 <__multadd+0x34>
   15224:	02068263          	beqz	a3,15248 <__multadd+0x98>
   15228:	00c4a783          	lw	a5,12(s1)
   1522c:	02f45e63          	ble	a5,s0,15268 <__multadd+0xb8>
   15230:	00440793          	addi	a5,s0,4
   15234:	00279793          	slli	a5,a5,0x2
   15238:	00f487b3          	add	a5,s1,a5
   1523c:	00d7a423          	sw	a3,8(a5)
   15240:	0014041b          	addiw	s0,s0,1
   15244:	0084aa23          	sw	s0,20(s1)
   15248:	03813083          	ld	ra,56(sp)
   1524c:	00048513          	mv	a0,s1
   15250:	03013403          	ld	s0,48(sp)
   15254:	02813483          	ld	s1,40(sp)
   15258:	02013903          	ld	s2,32(sp)
   1525c:	01813983          	ld	s3,24(sp)
   15260:	04010113          	addi	sp,sp,64
   15264:	00008067          	ret
   15268:	0084a583          	lw	a1,8(s1)
   1526c:	00090513          	mv	a0,s2
   15270:	00d13423          	sd	a3,8(sp)
   15274:	0015859b          	addiw	a1,a1,1
   15278:	e69ff0ef          	jal	150e0 <_Balloc>
   1527c:	0144a603          	lw	a2,20(s1)
   15280:	00050993          	mv	s3,a0
   15284:	01048593          	addi	a1,s1,16
   15288:	00260613          	addi	a2,a2,2
   1528c:	01050513          	addi	a0,a0,16
   15290:	00261613          	slli	a2,a2,0x2
   15294:	c49ff0ef          	jal	14edc <memcpy>
   15298:	0084a703          	lw	a4,8(s1)
   1529c:	07893783          	ld	a5,120(s2)
   152a0:	00813683          	ld	a3,8(sp)
   152a4:	00371713          	slli	a4,a4,0x3
   152a8:	00e787b3          	add	a5,a5,a4
   152ac:	0007b703          	ld	a4,0(a5)
   152b0:	00e4b023          	sd	a4,0(s1)
   152b4:	0097b023          	sd	s1,0(a5)
   152b8:	00098493          	mv	s1,s3
   152bc:	f75ff06f          	j	15230 <__multadd+0x80>

00000000000152c0 <__s2b>:
   152c0:	fc010113          	addi	sp,sp,-64
   152c4:	0086879b          	addiw	a5,a3,8
   152c8:	03213023          	sd	s2,32(sp)
   152cc:	00068913          	mv	s2,a3
   152d0:	00900693          	li	a3,9
   152d4:	02d7c6bb          	divw	a3,a5,a3
   152d8:	02813823          	sd	s0,48(sp)
   152dc:	02913423          	sd	s1,40(sp)
   152e0:	01313c23          	sd	s3,24(sp)
   152e4:	01413823          	sd	s4,16(sp)
   152e8:	02113c23          	sd	ra,56(sp)
   152ec:	01513423          	sd	s5,8(sp)
   152f0:	01613023          	sd	s6,0(sp)
   152f4:	00100793          	li	a5,1
   152f8:	00058413          	mv	s0,a1
   152fc:	00050993          	mv	s3,a0
   15300:	00060a13          	mv	s4,a2
   15304:	00070493          	mv	s1,a4
   15308:	00000593          	li	a1,0
   1530c:	00d7d863          	ble	a3,a5,1531c <__s2b+0x5c>
   15310:	0017979b          	slliw	a5,a5,0x1
   15314:	0015859b          	addiw	a1,a1,1
   15318:	fed7cce3          	blt	a5,a3,15310 <__s2b+0x50>
   1531c:	00098513          	mv	a0,s3
   15320:	dc1ff0ef          	jal	150e0 <_Balloc>
   15324:	00100793          	li	a5,1
   15328:	00f52a23          	sw	a5,20(a0)
   1532c:	00952c23          	sw	s1,24(a0)
   15330:	00900793          	li	a5,9
   15334:	0b47d663          	ble	s4,a5,153e0 <__s2b+0x120>
   15338:	ff6a0b1b          	addiw	s6,s4,-10
   1533c:	020b1b13          	slli	s6,s6,0x20
   15340:	020b5b13          	srli	s6,s6,0x20
   15344:	00940a93          	addi	s5,s0,9
   15348:	00ab0793          	addi	a5,s6,10
   1534c:	00f40433          	add	s0,s0,a5
   15350:	000a8493          	mv	s1,s5
   15354:	00148493          	addi	s1,s1,1
   15358:	fff4c683          	lbu	a3,-1(s1)
   1535c:	00050593          	mv	a1,a0
   15360:	00a00613          	li	a2,10
   15364:	fd06869b          	addiw	a3,a3,-48
   15368:	00098513          	mv	a0,s3
   1536c:	e45ff0ef          	jal	151b0 <__multadd>
   15370:	fe8492e3          	bne	s1,s0,15354 <__s2b+0x94>
   15374:	016a8433          	add	s0,s5,s6
   15378:	00240413          	addi	s0,s0,2
   1537c:	032a5e63          	ble	s2,s4,153b8 <__s2b+0xf8>
   15380:	fff9091b          	addiw	s2,s2,-1
   15384:	414904bb          	subw	s1,s2,s4
   15388:	02049493          	slli	s1,s1,0x20
   1538c:	0204d493          	srli	s1,s1,0x20
   15390:	00148493          	addi	s1,s1,1
   15394:	009404b3          	add	s1,s0,s1
   15398:	00140413          	addi	s0,s0,1
   1539c:	fff44683          	lbu	a3,-1(s0)
   153a0:	00050593          	mv	a1,a0
   153a4:	00a00613          	li	a2,10
   153a8:	fd06869b          	addiw	a3,a3,-48
   153ac:	00098513          	mv	a0,s3
   153b0:	e01ff0ef          	jal	151b0 <__multadd>
   153b4:	fe9412e3          	bne	s0,s1,15398 <__s2b+0xd8>
   153b8:	03813083          	ld	ra,56(sp)
   153bc:	03013403          	ld	s0,48(sp)
   153c0:	02813483          	ld	s1,40(sp)
   153c4:	02013903          	ld	s2,32(sp)
   153c8:	01813983          	ld	s3,24(sp)
   153cc:	01013a03          	ld	s4,16(sp)
   153d0:	00813a83          	ld	s5,8(sp)
   153d4:	00013b03          	ld	s6,0(sp)
   153d8:	04010113          	addi	sp,sp,64
   153dc:	00008067          	ret
   153e0:	00a40413          	addi	s0,s0,10
   153e4:	00078a13          	mv	s4,a5
   153e8:	f95ff06f          	j	1537c <__s2b+0xbc>

00000000000153ec <__hi0bits>:
   153ec:	ffff06b7          	lui	a3,0xffff0
   153f0:	00d576b3          	and	a3,a0,a3
   153f4:	00050793          	mv	a5,a0
   153f8:	00000713          	li	a4,0
   153fc:	00069663          	bnez	a3,15408 <__hi0bits+0x1c>
   15400:	0105179b          	slliw	a5,a0,0x10
   15404:	01000713          	li	a4,16
   15408:	ff0006b7          	lui	a3,0xff000
   1540c:	00d7f6b3          	and	a3,a5,a3
   15410:	00069663          	bnez	a3,1541c <__hi0bits+0x30>
   15414:	0087071b          	addiw	a4,a4,8
   15418:	0087979b          	slliw	a5,a5,0x8
   1541c:	f00006b7          	lui	a3,0xf0000
   15420:	00d7f6b3          	and	a3,a5,a3
   15424:	00069663          	bnez	a3,15430 <__hi0bits+0x44>
   15428:	0047071b          	addiw	a4,a4,4
   1542c:	0047979b          	slliw	a5,a5,0x4
   15430:	c00006b7          	lui	a3,0xc0000
   15434:	00d7f6b3          	and	a3,a5,a3
   15438:	00069663          	bnez	a3,15444 <__hi0bits+0x58>
   1543c:	0027071b          	addiw	a4,a4,2
   15440:	0027979b          	slliw	a5,a5,0x2
   15444:	0007ce63          	bltz	a5,15460 <__hi0bits+0x74>
   15448:	02179693          	slli	a3,a5,0x21
   1544c:	02000513          	li	a0,32
   15450:	0006c463          	bltz	a3,15458 <__hi0bits+0x6c>
   15454:	00008067          	ret
   15458:	0017051b          	addiw	a0,a4,1
   1545c:	00008067          	ret
   15460:	00070513          	mv	a0,a4
   15464:	00008067          	ret

0000000000015468 <__lo0bits>:
   15468:	00052783          	lw	a5,0(a0)
   1546c:	00050693          	mv	a3,a0
   15470:	0077f713          	andi	a4,a5,7
   15474:	02070463          	beqz	a4,1549c <__lo0bits+0x34>
   15478:	0017f713          	andi	a4,a5,1
   1547c:	00000513          	li	a0,0
   15480:	08071263          	bnez	a4,15504 <__lo0bits+0x9c>
   15484:	0027f713          	andi	a4,a5,2
   15488:	08071063          	bnez	a4,15508 <__lo0bits+0xa0>
   1548c:	0027d79b          	srliw	a5,a5,0x2
   15490:	00f6a023          	sw	a5,0(a3) # ffffffffc0000000 <_gp+0xffffffffbffe44c0>
   15494:	00200513          	li	a0,2
   15498:	00008067          	ret
   1549c:	0107961b          	slliw	a2,a5,0x10
   154a0:	0106561b          	srliw	a2,a2,0x10
   154a4:	00000713          	li	a4,0
   154a8:	00061663          	bnez	a2,154b4 <__lo0bits+0x4c>
   154ac:	0107d79b          	srliw	a5,a5,0x10
   154b0:	01000713          	li	a4,16
   154b4:	0ff7f613          	andi	a2,a5,255
   154b8:	00061663          	bnez	a2,154c4 <__lo0bits+0x5c>
   154bc:	0087071b          	addiw	a4,a4,8
   154c0:	0087d79b          	srliw	a5,a5,0x8
   154c4:	00f7f613          	andi	a2,a5,15
   154c8:	00061663          	bnez	a2,154d4 <__lo0bits+0x6c>
   154cc:	0047071b          	addiw	a4,a4,4
   154d0:	0047d79b          	srliw	a5,a5,0x4
   154d4:	0037f613          	andi	a2,a5,3
   154d8:	00061663          	bnez	a2,154e4 <__lo0bits+0x7c>
   154dc:	0027071b          	addiw	a4,a4,2
   154e0:	0027d79b          	srliw	a5,a5,0x2
   154e4:	0017f613          	andi	a2,a5,1
   154e8:	00061a63          	bnez	a2,154fc <__lo0bits+0x94>
   154ec:	0017d79b          	srliw	a5,a5,0x1
   154f0:	02000513          	li	a0,32
   154f4:	00078863          	beqz	a5,15504 <__lo0bits+0x9c>
   154f8:	0017071b          	addiw	a4,a4,1
   154fc:	00f6a023          	sw	a5,0(a3)
   15500:	00070513          	mv	a0,a4
   15504:	00008067          	ret
   15508:	0017d79b          	srliw	a5,a5,0x1
   1550c:	00f6a023          	sw	a5,0(a3)
   15510:	00100513          	li	a0,1
   15514:	00008067          	ret

0000000000015518 <__i2b>:
   15518:	ff010113          	addi	sp,sp,-16
   1551c:	00813023          	sd	s0,0(sp)
   15520:	00058413          	mv	s0,a1
   15524:	00100593          	li	a1,1
   15528:	00113423          	sd	ra,8(sp)
   1552c:	bb5ff0ef          	jal	150e0 <_Balloc>
   15530:	00813083          	ld	ra,8(sp)
   15534:	00100713          	li	a4,1
   15538:	00852c23          	sw	s0,24(a0)
   1553c:	00e52a23          	sw	a4,20(a0)
   15540:	00013403          	ld	s0,0(sp)
   15544:	01010113          	addi	sp,sp,16
   15548:	00008067          	ret

000000000001554c <__multiply>:
   1554c:	fd010113          	addi	sp,sp,-48
   15550:	01313423          	sd	s3,8(sp)
   15554:	01413023          	sd	s4,0(sp)
   15558:	0145a983          	lw	s3,20(a1)
   1555c:	01462a03          	lw	s4,20(a2)
   15560:	00913c23          	sd	s1,24(sp)
   15564:	01213823          	sd	s2,16(sp)
   15568:	02113423          	sd	ra,40(sp)
   1556c:	02813023          	sd	s0,32(sp)
   15570:	00058913          	mv	s2,a1
   15574:	00060493          	mv	s1,a2
   15578:	0149dc63          	ble	s4,s3,15590 <__multiply+0x44>
   1557c:	00098713          	mv	a4,s3
   15580:	00060913          	mv	s2,a2
   15584:	000a0993          	mv	s3,s4
   15588:	00058493          	mv	s1,a1
   1558c:	00070a13          	mv	s4,a4
   15590:	00c92783          	lw	a5,12(s2)
   15594:	00892583          	lw	a1,8(s2)
   15598:	0149843b          	addw	s0,s3,s4
   1559c:	0087a7b3          	slt	a5,a5,s0
   155a0:	00f585bb          	addw	a1,a1,a5
   155a4:	b3dff0ef          	jal	150e0 <_Balloc>
   155a8:	00040893          	mv	a7,s0
   155ac:	01850313          	addi	t1,a0,24
   155b0:	00289893          	slli	a7,a7,0x2
   155b4:	011308b3          	add	a7,t1,a7
   155b8:	00030793          	mv	a5,t1
   155bc:	01137863          	bleu	a7,t1,155cc <__multiply+0x80>
   155c0:	0007a023          	sw	zero,0(a5)
   155c4:	00478793          	addi	a5,a5,4
   155c8:	ff17ece3          	bltu	a5,a7,155c0 <__multiply+0x74>
   155cc:	01848613          	addi	a2,s1,24
   155d0:	002a1e13          	slli	t3,s4,0x2
   155d4:	01890e93          	addi	t4,s2,24
   155d8:	00299813          	slli	a6,s3,0x2
   155dc:	000105b7          	lui	a1,0x10
   155e0:	01c60e33          	add	t3,a2,t3
   155e4:	010e8833          	add	a6,t4,a6
   155e8:	fff5859b          	addiw	a1,a1,-1
   155ec:	11c67463          	bleu	t3,a2,156f4 <__multiply+0x1a8>
   155f0:	00062383          	lw	t2,0(a2)
   155f4:	00b3f4b3          	and	s1,t2,a1
   155f8:	06048a63          	beqz	s1,1566c <__multiply+0x120>
   155fc:	00030293          	mv	t0,t1
   15600:	000e8f93          	mv	t6,t4
   15604:	00000793          	li	a5,0
   15608:	0080006f          	j	15610 <__multiply+0xc4>
   1560c:	00038293          	mv	t0,t2
   15610:	000fa683          	lw	a3,0(t6)
   15614:	0002af03          	lw	t5,0(t0) # 150b0 <memset+0xb4>
   15618:	00428393          	addi	t2,t0,4
   1561c:	00b6f733          	and	a4,a3,a1
   15620:	0297073b          	mulw	a4,a4,s1
   15624:	0106d69b          	srliw	a3,a3,0x10
   15628:	00bf7933          	and	s2,t5,a1
   1562c:	010f5f1b          	srliw	t5,t5,0x10
   15630:	004f8f93          	addi	t6,t6,4
   15634:	029686bb          	mulw	a3,a3,s1
   15638:	0127073b          	addw	a4,a4,s2
   1563c:	00f707bb          	addw	a5,a4,a5
   15640:	0107d71b          	srliw	a4,a5,0x10
   15644:	00b7f7b3          	and	a5,a5,a1
   15648:	01e686bb          	addw	a3,a3,t5
   1564c:	00e6873b          	addw	a4,a3,a4
   15650:	0107169b          	slliw	a3,a4,0x10
   15654:	00f6e7b3          	or	a5,a3,a5
   15658:	fef3ae23          	sw	a5,-4(t2)
   1565c:	0107579b          	srliw	a5,a4,0x10
   15660:	fb0fe6e3          	bltu	t6,a6,1560c <__multiply+0xc0>
   15664:	00f2a223          	sw	a5,4(t0)
   15668:	00062383          	lw	t2,0(a2)
   1566c:	0103d39b          	srliw	t2,t2,0x10
   15670:	06038c63          	beqz	t2,156e8 <__multiply+0x19c>
   15674:	00032783          	lw	a5,0(t1) # 10000 <_ftext>
   15678:	00030293          	mv	t0,t1
   1567c:	000e8f93          	mv	t6,t4
   15680:	00078f13          	mv	t5,a5
   15684:	00000693          	li	a3,0
   15688:	0080006f          	j	15690 <__multiply+0x144>
   1568c:	00048293          	mv	t0,s1
   15690:	000fa703          	lw	a4,0(t6)
   15694:	010f5f1b          	srliw	t5,t5,0x10
   15698:	00b7f7b3          	and	a5,a5,a1
   1569c:	00b77733          	and	a4,a4,a1
   156a0:	0277073b          	mulw	a4,a4,t2
   156a4:	00428493          	addi	s1,t0,4
   156a8:	004f8f93          	addi	t6,t6,4
   156ac:	01e7073b          	addw	a4,a4,t5
   156b0:	00d706bb          	addw	a3,a4,a3
   156b4:	0106971b          	slliw	a4,a3,0x10
   156b8:	00f767b3          	or	a5,a4,a5
   156bc:	fef4ae23          	sw	a5,-4(s1)
   156c0:	ffefd703          	lhu	a4,-2(t6)
   156c4:	0042af03          	lw	t5,4(t0)
   156c8:	0106d69b          	srliw	a3,a3,0x10
   156cc:	0277073b          	mulw	a4,a4,t2
   156d0:	00bf77b3          	and	a5,t5,a1
   156d4:	00f707bb          	addw	a5,a4,a5
   156d8:	00d787bb          	addw	a5,a5,a3
   156dc:	0107d69b          	srliw	a3,a5,0x10
   156e0:	fb0fe6e3          	bltu	t6,a6,1568c <__multiply+0x140>
   156e4:	00f2a223          	sw	a5,4(t0)
   156e8:	00460613          	addi	a2,a2,4
   156ec:	00430313          	addi	t1,t1,4
   156f0:	f1c660e3          	bltu	a2,t3,155f0 <__multiply+0xa4>
   156f4:	02805463          	blez	s0,1571c <__multiply+0x1d0>
   156f8:	ffc8a783          	lw	a5,-4(a7)
   156fc:	ffc88893          	addi	a7,a7,-4
   15700:	00078863          	beqz	a5,15710 <__multiply+0x1c4>
   15704:	0180006f          	j	1571c <__multiply+0x1d0>
   15708:	0008a783          	lw	a5,0(a7)
   1570c:	00079863          	bnez	a5,1571c <__multiply+0x1d0>
   15710:	fff4041b          	addiw	s0,s0,-1
   15714:	ffc88893          	addi	a7,a7,-4
   15718:	fe0418e3          	bnez	s0,15708 <__multiply+0x1bc>
   1571c:	02813083          	ld	ra,40(sp)
   15720:	00852a23          	sw	s0,20(a0)
   15724:	01813483          	ld	s1,24(sp)
   15728:	02013403          	ld	s0,32(sp)
   1572c:	01013903          	ld	s2,16(sp)
   15730:	00813983          	ld	s3,8(sp)
   15734:	00013a03          	ld	s4,0(sp)
   15738:	03010113          	addi	sp,sp,48
   1573c:	00008067          	ret

0000000000015740 <__pow5mult>:
   15740:	fd010113          	addi	sp,sp,-48
   15744:	02813023          	sd	s0,32(sp)
   15748:	01213823          	sd	s2,16(sp)
   1574c:	01313423          	sd	s3,8(sp)
   15750:	02113423          	sd	ra,40(sp)
   15754:	00913c23          	sd	s1,24(sp)
   15758:	00367793          	andi	a5,a2,3
   1575c:	00060413          	mv	s0,a2
   15760:	00050993          	mv	s3,a0
   15764:	00058913          	mv	s2,a1
   15768:	0a079e63          	bnez	a5,15824 <__pow5mult+0xe4>
   1576c:	4024541b          	sraiw	s0,s0,0x2
   15770:	06040663          	beqz	s0,157dc <__pow5mult+0x9c>
   15774:	0709b483          	ld	s1,112(s3)
   15778:	0c048a63          	beqz	s1,1584c <__pow5mult+0x10c>
   1577c:	00147793          	andi	a5,s0,1
   15780:	02079063          	bnez	a5,157a0 <__pow5mult+0x60>
   15784:	4014541b          	sraiw	s0,s0,0x1
   15788:	04040a63          	beqz	s0,157dc <__pow5mult+0x9c>
   1578c:	0004b503          	ld	a0,0(s1)
   15790:	06050663          	beqz	a0,157fc <__pow5mult+0xbc>
   15794:	00050493          	mv	s1,a0
   15798:	00147793          	andi	a5,s0,1
   1579c:	fe0784e3          	beqz	a5,15784 <__pow5mult+0x44>
   157a0:	00048613          	mv	a2,s1
   157a4:	00090593          	mv	a1,s2
   157a8:	00098513          	mv	a0,s3
   157ac:	da1ff0ef          	jal	1554c <__multiply>
   157b0:	06090663          	beqz	s2,1581c <__pow5mult+0xdc>
   157b4:	00892783          	lw	a5,8(s2)
   157b8:	0789b703          	ld	a4,120(s3)
   157bc:	4014541b          	sraiw	s0,s0,0x1
   157c0:	00379793          	slli	a5,a5,0x3
   157c4:	00f707b3          	add	a5,a4,a5
   157c8:	0007b703          	ld	a4,0(a5)
   157cc:	00e93023          	sd	a4,0(s2)
   157d0:	0127b023          	sd	s2,0(a5)
   157d4:	00050913          	mv	s2,a0
   157d8:	fa041ae3          	bnez	s0,1578c <__pow5mult+0x4c>
   157dc:	02813083          	ld	ra,40(sp)
   157e0:	00090513          	mv	a0,s2
   157e4:	02013403          	ld	s0,32(sp)
   157e8:	01813483          	ld	s1,24(sp)
   157ec:	01013903          	ld	s2,16(sp)
   157f0:	00813983          	ld	s3,8(sp)
   157f4:	03010113          	addi	sp,sp,48
   157f8:	00008067          	ret
   157fc:	00048613          	mv	a2,s1
   15800:	00048593          	mv	a1,s1
   15804:	00098513          	mv	a0,s3
   15808:	d45ff0ef          	jal	1554c <__multiply>
   1580c:	00a4b023          	sd	a0,0(s1)
   15810:	00053023          	sd	zero,0(a0)
   15814:	00050493          	mv	s1,a0
   15818:	f81ff06f          	j	15798 <__pow5mult+0x58>
   1581c:	00050913          	mv	s2,a0
   15820:	f65ff06f          	j	15784 <__pow5mult+0x44>
   15824:	fff7879b          	addiw	a5,a5,-1
   15828:	00019737          	lui	a4,0x19
   1582c:	fa070713          	addi	a4,a4,-96 # 18fa0 <p05.2568>
   15830:	00279793          	slli	a5,a5,0x2
   15834:	00f707b3          	add	a5,a4,a5
   15838:	0007a603          	lw	a2,0(a5)
   1583c:	00000693          	li	a3,0
   15840:	971ff0ef          	jal	151b0 <__multadd>
   15844:	00050913          	mv	s2,a0
   15848:	f25ff06f          	j	1576c <__pow5mult+0x2c>
   1584c:	00100593          	li	a1,1
   15850:	00098513          	mv	a0,s3
   15854:	88dff0ef          	jal	150e0 <_Balloc>
   15858:	27100793          	li	a5,625
   1585c:	00f52c23          	sw	a5,24(a0)
   15860:	00100793          	li	a5,1
   15864:	00f52a23          	sw	a5,20(a0)
   15868:	06a9b823          	sd	a0,112(s3)
   1586c:	00050493          	mv	s1,a0
   15870:	00053023          	sd	zero,0(a0)
   15874:	f09ff06f          	j	1577c <__pow5mult+0x3c>

0000000000015878 <__lshift>:
   15878:	fc010113          	addi	sp,sp,-64
   1587c:	01513423          	sd	s5,8(sp)
   15880:	0145aa83          	lw	s5,20(a1) # 10014 <_ftext+0x14>
   15884:	02813823          	sd	s0,48(sp)
   15888:	00c5a783          	lw	a5,12(a1)
   1588c:	4056541b          	sraiw	s0,a2,0x5
   15890:	01540abb          	addw	s5,s0,s5
   15894:	02913423          	sd	s1,40(sp)
   15898:	03213023          	sd	s2,32(sp)
   1589c:	01313c23          	sd	s3,24(sp)
   158a0:	01413823          	sd	s4,16(sp)
   158a4:	02113c23          	sd	ra,56(sp)
   158a8:	001a849b          	addiw	s1,s5,1
   158ac:	00058913          	mv	s2,a1
   158b0:	00060993          	mv	s3,a2
   158b4:	00050a13          	mv	s4,a0
   158b8:	0085a583          	lw	a1,8(a1)
   158bc:	0097d863          	ble	s1,a5,158cc <__lshift+0x54>
   158c0:	0017979b          	slliw	a5,a5,0x1
   158c4:	0015859b          	addiw	a1,a1,1
   158c8:	fe97cce3          	blt	a5,s1,158c0 <__lshift+0x48>
   158cc:	000a0513          	mv	a0,s4
   158d0:	811ff0ef          	jal	150e0 <_Balloc>
   158d4:	01850793          	addi	a5,a0,24
   158d8:	0e805c63          	blez	s0,159d0 <__lshift+0x158>
   158dc:	fff4071b          	addiw	a4,s0,-1
   158e0:	02071713          	slli	a4,a4,0x20
   158e4:	02075713          	srli	a4,a4,0x20
   158e8:	00170713          	addi	a4,a4,1
   158ec:	00271713          	slli	a4,a4,0x2
   158f0:	00e78733          	add	a4,a5,a4
   158f4:	00478793          	addi	a5,a5,4
   158f8:	fe07ae23          	sw	zero,-4(a5)
   158fc:	fee79ce3          	bne	a5,a4,158f4 <__lshift+0x7c>
   15900:	01492883          	lw	a7,20(s2)
   15904:	01890793          	addi	a5,s2,24
   15908:	01f9f613          	andi	a2,s3,31
   1590c:	00289893          	slli	a7,a7,0x2
   15910:	011788b3          	add	a7,a5,a7
   15914:	08060863          	beqz	a2,159a4 <__lshift+0x12c>
   15918:	02000313          	li	t1,32
   1591c:	40c3033b          	subw	t1,t1,a2
   15920:	00000693          	li	a3,0
   15924:	0080006f          	j	1592c <__lshift+0xb4>
   15928:	00080713          	mv	a4,a6
   1592c:	0007a583          	lw	a1,0(a5)
   15930:	00470813          	addi	a6,a4,4
   15934:	00478793          	addi	a5,a5,4
   15938:	00c595bb          	sllw	a1,a1,a2
   1593c:	00d5e6b3          	or	a3,a1,a3
   15940:	fed82e23          	sw	a3,-4(a6) # fffc <_ftext-0x4>
   15944:	ffc7a683          	lw	a3,-4(a5)
   15948:	0066d6bb          	srlw	a3,a3,t1
   1594c:	fd17eee3          	bltu	a5,a7,15928 <__lshift+0xb0>
   15950:	00d72223          	sw	a3,4(a4)
   15954:	00068463          	beqz	a3,1595c <__lshift+0xe4>
   15958:	002a849b          	addiw	s1,s5,2
   1595c:	00892783          	lw	a5,8(s2)
   15960:	078a3703          	ld	a4,120(s4)
   15964:	fff4849b          	addiw	s1,s1,-1
   15968:	00379793          	slli	a5,a5,0x3
   1596c:	00f707b3          	add	a5,a4,a5
   15970:	0007b703          	ld	a4,0(a5)
   15974:	03813083          	ld	ra,56(sp)
   15978:	00952a23          	sw	s1,20(a0)
   1597c:	00e93023          	sd	a4,0(s2)
   15980:	0127b023          	sd	s2,0(a5)
   15984:	03013403          	ld	s0,48(sp)
   15988:	02813483          	ld	s1,40(sp)
   1598c:	02013903          	ld	s2,32(sp)
   15990:	01813983          	ld	s3,24(sp)
   15994:	01013a03          	ld	s4,16(sp)
   15998:	00813a83          	ld	s5,8(sp)
   1599c:	04010113          	addi	sp,sp,64
   159a0:	00008067          	ret
   159a4:	00478793          	addi	a5,a5,4
   159a8:	ffc7a683          	lw	a3,-4(a5)
   159ac:	00470713          	addi	a4,a4,4
   159b0:	fed72e23          	sw	a3,-4(a4)
   159b4:	fb17f4e3          	bleu	a7,a5,1595c <__lshift+0xe4>
   159b8:	00478793          	addi	a5,a5,4
   159bc:	ffc7a683          	lw	a3,-4(a5)
   159c0:	00470713          	addi	a4,a4,4
   159c4:	fed72e23          	sw	a3,-4(a4)
   159c8:	fd17eee3          	bltu	a5,a7,159a4 <__lshift+0x12c>
   159cc:	f91ff06f          	j	1595c <__lshift+0xe4>
   159d0:	00078713          	mv	a4,a5
   159d4:	f2dff06f          	j	15900 <__lshift+0x88>

00000000000159d8 <__mcmp>:
   159d8:	01452783          	lw	a5,20(a0)
   159dc:	0145a703          	lw	a4,20(a1)
   159e0:	40e787bb          	subw	a5,a5,a4
   159e4:	04079263          	bnez	a5,15a28 <__mcmp+0x50>
   159e8:	00271713          	slli	a4,a4,0x2
   159ec:	01850513          	addi	a0,a0,24
   159f0:	01858593          	addi	a1,a1,24
   159f4:	00e507b3          	add	a5,a0,a4
   159f8:	00e585b3          	add	a1,a1,a4
   159fc:	0080006f          	j	15a04 <__mcmp+0x2c>
   15a00:	02f57863          	bleu	a5,a0,15a30 <__mcmp+0x58>
   15a04:	ffc78793          	addi	a5,a5,-4
   15a08:	ffc58593          	addi	a1,a1,-4
   15a0c:	0007a703          	lw	a4,0(a5)
   15a10:	0005a683          	lw	a3,0(a1)
   15a14:	fed706e3          	beq	a4,a3,15a00 <__mcmp+0x28>
   15a18:	00d737b3          	sltu	a5,a4,a3
   15a1c:	40f007bb          	negw	a5,a5
   15a20:	0017e513          	ori	a0,a5,1
   15a24:	00008067          	ret
   15a28:	00078513          	mv	a0,a5
   15a2c:	00008067          	ret
   15a30:	00000513          	li	a0,0
   15a34:	00008067          	ret

0000000000015a38 <__mdiff>:
   15a38:	0145a703          	lw	a4,20(a1)
   15a3c:	01462783          	lw	a5,20(a2)
   15a40:	fd010113          	addi	sp,sp,-48
   15a44:	01213823          	sd	s2,16(sp)
   15a48:	01313423          	sd	s3,8(sp)
   15a4c:	02113423          	sd	ra,40(sp)
   15a50:	02813023          	sd	s0,32(sp)
   15a54:	00913c23          	sd	s1,24(sp)
   15a58:	01413023          	sd	s4,0(sp)
   15a5c:	40f7073b          	subw	a4,a4,a5
   15a60:	00058913          	mv	s2,a1
   15a64:	00060993          	mv	s3,a2
   15a68:	04071863          	bnez	a4,15ab8 <__mdiff+0x80>
   15a6c:	00279713          	slli	a4,a5,0x2
   15a70:	01858813          	addi	a6,a1,24
   15a74:	01860413          	addi	s0,a2,24
   15a78:	00e807b3          	add	a5,a6,a4
   15a7c:	00e40733          	add	a4,s0,a4
   15a80:	0080006f          	j	15a88 <__mdiff+0x50>
   15a84:	16f87263          	bleu	a5,a6,15be8 <__mdiff+0x1b0>
   15a88:	ffc78793          	addi	a5,a5,-4
   15a8c:	ffc70713          	addi	a4,a4,-4
   15a90:	0007a583          	lw	a1,0(a5)
   15a94:	00072683          	lw	a3,0(a4)
   15a98:	fed586e3          	beq	a1,a3,15a84 <__mdiff+0x4c>
   15a9c:	18d5f063          	bleu	a3,a1,15c1c <__mdiff+0x1e4>
   15aa0:	00090793          	mv	a5,s2
   15aa4:	00080493          	mv	s1,a6
   15aa8:	00098913          	mv	s2,s3
   15aac:	00100a13          	li	s4,1
   15ab0:	00078993          	mv	s3,a5
   15ab4:	0140006f          	j	15ac8 <__mdiff+0x90>
   15ab8:	16074a63          	bltz	a4,15c2c <__mdiff+0x1f4>
   15abc:	01860493          	addi	s1,a2,24
   15ac0:	01858413          	addi	s0,a1,24
   15ac4:	00000a13          	li	s4,0
   15ac8:	00892583          	lw	a1,8(s2)
   15acc:	e14ff0ef          	jal	150e0 <_Balloc>
   15ad0:	01492e03          	lw	t3,20(s2)
   15ad4:	0149af03          	lw	t5,20(s3)
   15ad8:	00010337          	lui	t1,0x10
   15adc:	002e1e93          	slli	t4,t3,0x2
   15ae0:	002f1f13          	slli	t5,t5,0x2
   15ae4:	01452823          	sw	s4,16(a0)
   15ae8:	01d40eb3          	add	t4,s0,t4
   15aec:	01e48f33          	add	t5,s1,t5
   15af0:	01850813          	addi	a6,a0,24
   15af4:	00000693          	li	a3,0
   15af8:	fff3031b          	addiw	t1,t1,-1
   15afc:	00042583          	lw	a1,0(s0)
   15b00:	0004a883          	lw	a7,0(s1)
   15b04:	00480813          	addi	a6,a6,4
   15b08:	0065f633          	and	a2,a1,t1
   15b0c:	00d606bb          	addw	a3,a2,a3
   15b10:	0068f733          	and	a4,a7,t1
   15b14:	40e6873b          	subw	a4,a3,a4
   15b18:	0105d59b          	srliw	a1,a1,0x10
   15b1c:	0108d69b          	srliw	a3,a7,0x10
   15b20:	40d585bb          	subw	a1,a1,a3
   15b24:	4107569b          	sraiw	a3,a4,0x10
   15b28:	00d586bb          	addw	a3,a1,a3
   15b2c:	0106979b          	slliw	a5,a3,0x10
   15b30:	00677733          	and	a4,a4,t1
   15b34:	00e7e7b3          	or	a5,a5,a4
   15b38:	00448493          	addi	s1,s1,4
   15b3c:	fef82e23          	sw	a5,-4(a6)
   15b40:	00440413          	addi	s0,s0,4
   15b44:	4106d69b          	sraiw	a3,a3,0x10
   15b48:	fbe4eae3          	bltu	s1,t5,15afc <__mdiff+0xc4>
   15b4c:	07d47063          	bleu	t4,s0,15bac <__mdiff+0x174>
   15b50:	00010f37          	lui	t5,0x10
   15b54:	00080313          	mv	t1,a6
   15b58:	00040893          	mv	a7,s0
   15b5c:	ffff0f1b          	addiw	t5,t5,-1
   15b60:	0008a583          	lw	a1,0(a7)
   15b64:	00430313          	addi	t1,t1,4 # 10004 <_ftext+0x4>
   15b68:	00488893          	addi	a7,a7,4
   15b6c:	01e5f633          	and	a2,a1,t5
   15b70:	00d606bb          	addw	a3,a2,a3
   15b74:	4106d71b          	sraiw	a4,a3,0x10
   15b78:	0105d59b          	srliw	a1,a1,0x10
   15b7c:	00e5873b          	addw	a4,a1,a4
   15b80:	01e6f6b3          	and	a3,a3,t5
   15b84:	0107179b          	slliw	a5,a4,0x10
   15b88:	00d7e7b3          	or	a5,a5,a3
   15b8c:	fef32e23          	sw	a5,-4(t1)
   15b90:	4107569b          	sraiw	a3,a4,0x10
   15b94:	fdd8e6e3          	bltu	a7,t4,15b60 <__mdiff+0x128>
   15b98:	fff44413          	not	s0,s0
   15b9c:	01d40eb3          	add	t4,s0,t4
   15ba0:	ffcefe93          	andi	t4,t4,-4
   15ba4:	004e8e93          	addi	t4,t4,4
   15ba8:	01d80833          	add	a6,a6,t4
   15bac:	ffc80813          	addi	a6,a6,-4
   15bb0:	00079a63          	bnez	a5,15bc4 <__mdiff+0x18c>
   15bb4:	ffc80813          	addi	a6,a6,-4
   15bb8:	00082783          	lw	a5,0(a6)
   15bbc:	fffe0e1b          	addiw	t3,t3,-1
   15bc0:	fe078ae3          	beqz	a5,15bb4 <__mdiff+0x17c>
   15bc4:	02813083          	ld	ra,40(sp)
   15bc8:	02013403          	ld	s0,32(sp)
   15bcc:	01813483          	ld	s1,24(sp)
   15bd0:	01013903          	ld	s2,16(sp)
   15bd4:	00813983          	ld	s3,8(sp)
   15bd8:	00013a03          	ld	s4,0(sp)
   15bdc:	01c52a23          	sw	t3,20(a0)
   15be0:	03010113          	addi	sp,sp,48
   15be4:	00008067          	ret
   15be8:	00000593          	li	a1,0
   15bec:	cf4ff0ef          	jal	150e0 <_Balloc>
   15bf0:	02813083          	ld	ra,40(sp)
   15bf4:	00100793          	li	a5,1
   15bf8:	02013403          	ld	s0,32(sp)
   15bfc:	01813483          	ld	s1,24(sp)
   15c00:	01013903          	ld	s2,16(sp)
   15c04:	00813983          	ld	s3,8(sp)
   15c08:	00013a03          	ld	s4,0(sp)
   15c0c:	00f52a23          	sw	a5,20(a0)
   15c10:	00052c23          	sw	zero,24(a0)
   15c14:	03010113          	addi	sp,sp,48
   15c18:	00008067          	ret
   15c1c:	00040493          	mv	s1,s0
   15c20:	00000a13          	li	s4,0
   15c24:	00080413          	mv	s0,a6
   15c28:	ea1ff06f          	j	15ac8 <__mdiff+0x90>
   15c2c:	00090793          	mv	a5,s2
   15c30:	01890493          	addi	s1,s2,24
   15c34:	01898413          	addi	s0,s3,24
   15c38:	00098913          	mv	s2,s3
   15c3c:	00100a13          	li	s4,1
   15c40:	00078993          	mv	s3,a5
   15c44:	e85ff06f          	j	15ac8 <__mdiff+0x90>

0000000000015c48 <__ulp>:
   15c48:	e20507d3          	fmv.x.d	a5,fa0
   15c4c:	7ff00737          	lui	a4,0x7ff00
   15c50:	4207d793          	srai	a5,a5,0x20
   15c54:	00e7f7b3          	and	a5,a5,a4
   15c58:	fcc00737          	lui	a4,0xfcc00
   15c5c:	00e787bb          	addw	a5,a5,a4
   15c60:	00f05863          	blez	a5,15c70 <__ulp+0x28>
   15c64:	02079793          	slli	a5,a5,0x20
   15c68:	f2078553          	fmv.d.x	fa0,a5
   15c6c:	00008067          	ret
   15c70:	40f007bb          	negw	a5,a5
   15c74:	4147d79b          	sraiw	a5,a5,0x14
   15c78:	01300713          	li	a4,19
   15c7c:	04f75063          	ble	a5,a4,15cbc <__ulp+0x74>
   15c80:	fec7869b          	addiw	a3,a5,-20
   15c84:	01e00613          	li	a2,30
   15c88:	00000793          	li	a5,0
   15c8c:	00100713          	li	a4,1
   15c90:	00d64663          	blt	a2,a3,15c9c <__ulp+0x54>
   15c94:	fff6c693          	not	a3,a3
   15c98:	00d7173b          	sllw	a4,a4,a3
   15c9c:	fff00693          	li	a3,-1
   15ca0:	02069693          	slli	a3,a3,0x20
   15ca4:	02071713          	slli	a4,a4,0x20
   15ca8:	02075713          	srli	a4,a4,0x20
   15cac:	00d7f7b3          	and	a5,a5,a3
   15cb0:	00e7e7b3          	or	a5,a5,a4
   15cb4:	f2078553          	fmv.d.x	fa0,a5
   15cb8:	00008067          	ret
   15cbc:	00080737          	lui	a4,0x80
   15cc0:	40f757bb          	sraw	a5,a4,a5
   15cc4:	fa1ff06f          	j	15c64 <__ulp+0x1c>

0000000000015cc8 <__b2d>:
   15cc8:	fd010113          	addi	sp,sp,-48
   15ccc:	02813023          	sd	s0,32(sp)
   15cd0:	01452403          	lw	s0,20(a0)
   15cd4:	00913c23          	sd	s1,24(sp)
   15cd8:	01850493          	addi	s1,a0,24
   15cdc:	00241413          	slli	s0,s0,0x2
   15ce0:	00848433          	add	s0,s1,s0
   15ce4:	01213823          	sd	s2,16(sp)
   15ce8:	ffc42903          	lw	s2,-4(s0)
   15cec:	01313423          	sd	s3,8(sp)
   15cf0:	01413023          	sd	s4,0(sp)
   15cf4:	00090513          	mv	a0,s2
   15cf8:	00058a13          	mv	s4,a1
   15cfc:	02113423          	sd	ra,40(sp)
   15d00:	eecff0ef          	jal	153ec <__hi0bits>
   15d04:	02000793          	li	a5,32
   15d08:	40a7873b          	subw	a4,a5,a0
   15d0c:	00ea2023          	sw	a4,0(s4)
   15d10:	00a00713          	li	a4,10
   15d14:	ffc40993          	addi	s3,s0,-4
   15d18:	06a74a63          	blt	a4,a0,15d8c <__b2d+0xc4>
   15d1c:	00b00693          	li	a3,11
   15d20:	40a686bb          	subw	a3,a3,a0
   15d24:	3ff00737          	lui	a4,0x3ff00
   15d28:	00d957bb          	srlw	a5,s2,a3
   15d2c:	00e7e7b3          	or	a5,a5,a4
   15d30:	02079793          	slli	a5,a5,0x20
   15d34:	00000713          	li	a4,0
   15d38:	0134f663          	bleu	s3,s1,15d44 <__b2d+0x7c>
   15d3c:	ff842703          	lw	a4,-8(s0)
   15d40:	00d7573b          	srlw	a4,a4,a3
   15d44:	0155051b          	addiw	a0,a0,21
   15d48:	00a9153b          	sllw	a0,s2,a0
   15d4c:	00e56533          	or	a0,a0,a4
   15d50:	fff00713          	li	a4,-1
   15d54:	02051513          	slli	a0,a0,0x20
   15d58:	02071713          	slli	a4,a4,0x20
   15d5c:	02055513          	srli	a0,a0,0x20
   15d60:	00e7f7b3          	and	a5,a5,a4
   15d64:	00a7e7b3          	or	a5,a5,a0
   15d68:	02813083          	ld	ra,40(sp)
   15d6c:	f2078553          	fmv.d.x	fa0,a5
   15d70:	02013403          	ld	s0,32(sp)
   15d74:	01813483          	ld	s1,24(sp)
   15d78:	01013903          	ld	s2,16(sp)
   15d7c:	00813983          	ld	s3,8(sp)
   15d80:	00013a03          	ld	s4,0(sp)
   15d84:	03010113          	addi	sp,sp,48
   15d88:	00008067          	ret
   15d8c:	ff55051b          	addiw	a0,a0,-11
   15d90:	0534f263          	bleu	s3,s1,15dd4 <__b2d+0x10c>
   15d94:	ff842683          	lw	a3,-8(s0)
   15d98:	04050263          	beqz	a0,15ddc <__b2d+0x114>
   15d9c:	40a7863b          	subw	a2,a5,a0
   15da0:	00a917bb          	sllw	a5,s2,a0
   15da4:	3ff00937          	lui	s2,0x3ff00
   15da8:	00c6d73b          	srlw	a4,a3,a2
   15dac:	0127e7b3          	or	a5,a5,s2
   15db0:	00e7e7b3          	or	a5,a5,a4
   15db4:	ff840713          	addi	a4,s0,-8
   15db8:	02079793          	slli	a5,a5,0x20
   15dbc:	04e4fa63          	bleu	a4,s1,15e10 <__b2d+0x148>
   15dc0:	ff442703          	lw	a4,-12(s0)
   15dc4:	00a6953b          	sllw	a0,a3,a0
   15dc8:	00c756bb          	srlw	a3,a4,a2
   15dcc:	00a6e533          	or	a0,a3,a0
   15dd0:	f81ff06f          	j	15d50 <__b2d+0x88>
   15dd4:	00000693          	li	a3,0
   15dd8:	02051063          	bnez	a0,15df8 <__b2d+0x130>
   15ddc:	3ff00737          	lui	a4,0x3ff00
   15de0:	00e967b3          	or	a5,s2,a4
   15de4:	02069693          	slli	a3,a3,0x20
   15de8:	0206d693          	srli	a3,a3,0x20
   15dec:	02079793          	slli	a5,a5,0x20
   15df0:	00d7e7b3          	or	a5,a5,a3
   15df4:	f75ff06f          	j	15d68 <__b2d+0xa0>
   15df8:	00a917bb          	sllw	a5,s2,a0
   15dfc:	3ff00737          	lui	a4,0x3ff00
   15e00:	00e7e7b3          	or	a5,a5,a4
   15e04:	02079793          	slli	a5,a5,0x20
   15e08:	00000513          	li	a0,0
   15e0c:	f45ff06f          	j	15d50 <__b2d+0x88>
   15e10:	00a6953b          	sllw	a0,a3,a0
   15e14:	f3dff06f          	j	15d50 <__b2d+0x88>

0000000000015e18 <__d2b>:
   15e18:	fc010113          	addi	sp,sp,-64
   15e1c:	02813823          	sd	s0,48(sp)
   15e20:	e2058453          	fmv.x.d	s0,fa1
   15e24:	00100593          	li	a1,1
   15e28:	02913423          	sd	s1,40(sp)
   15e2c:	03213023          	sd	s2,32(sp)
   15e30:	01313c23          	sd	s3,24(sp)
   15e34:	01413823          	sd	s4,16(sp)
   15e38:	00068993          	mv	s3,a3
   15e3c:	02113c23          	sd	ra,56(sp)
   15e40:	00060a13          	mv	s4,a2
   15e44:	a9cff0ef          	jal	150e0 <_Balloc>
   15e48:	42045793          	srai	a5,s0,0x20
   15e4c:	02179493          	slli	s1,a5,0x21
   15e50:	001006b7          	lui	a3,0x100
   15e54:	fff6871b          	addiw	a4,a3,-1
   15e58:	0354d493          	srli	s1,s1,0x35
   15e5c:	00050913          	mv	s2,a0
   15e60:	00e7f7b3          	and	a5,a5,a4
   15e64:	00048463          	beqz	s1,15e6c <__d2b+0x54>
   15e68:	00d7e7b3          	or	a5,a5,a3
   15e6c:	00f12623          	sw	a5,12(sp)
   15e70:	0004041b          	sext.w	s0,s0
   15e74:	08040063          	beqz	s0,15ef4 <__d2b+0xdc>
   15e78:	00810513          	addi	a0,sp,8
   15e7c:	00812423          	sw	s0,8(sp)
   15e80:	de8ff0ef          	jal	15468 <__lo0bits>
   15e84:	00c12783          	lw	a5,12(sp)
   15e88:	0a051463          	bnez	a0,15f30 <__d2b+0x118>
   15e8c:	00812703          	lw	a4,8(sp)
   15e90:	00e92c23          	sw	a4,24(s2) # 3ff00018 <_gp+0x3fee44d8>
   15e94:	0017b413          	seqz	s0,a5
   15e98:	00200713          	li	a4,2
   15e9c:	4087043b          	subw	s0,a4,s0
   15ea0:	00f92e23          	sw	a5,28(s2)
   15ea4:	00892a23          	sw	s0,20(s2)
   15ea8:	06049663          	bnez	s1,15f14 <__d2b+0xfc>
   15eac:	bce5051b          	addiw	a0,a0,-1074
   15eb0:	00241793          	slli	a5,s0,0x2
   15eb4:	00aa2023          	sw	a0,0(s4)
   15eb8:	00f907b3          	add	a5,s2,a5
   15ebc:	0147a503          	lw	a0,20(a5)
   15ec0:	0054141b          	slliw	s0,s0,0x5
   15ec4:	d28ff0ef          	jal	153ec <__hi0bits>
   15ec8:	40a4053b          	subw	a0,s0,a0
   15ecc:	00a9a023          	sw	a0,0(s3)
   15ed0:	03813083          	ld	ra,56(sp)
   15ed4:	00090513          	mv	a0,s2
   15ed8:	03013403          	ld	s0,48(sp)
   15edc:	02813483          	ld	s1,40(sp)
   15ee0:	02013903          	ld	s2,32(sp)
   15ee4:	01813983          	ld	s3,24(sp)
   15ee8:	01013a03          	ld	s4,16(sp)
   15eec:	04010113          	addi	sp,sp,64
   15ef0:	00008067          	ret
   15ef4:	00c10513          	addi	a0,sp,12
   15ef8:	d70ff0ef          	jal	15468 <__lo0bits>
   15efc:	00c12783          	lw	a5,12(sp)
   15f00:	00100413          	li	s0,1
   15f04:	00892a23          	sw	s0,20(s2)
   15f08:	00f92c23          	sw	a5,24(s2)
   15f0c:	0205051b          	addiw	a0,a0,32
   15f10:	f8048ee3          	beqz	s1,15eac <__d2b+0x94>
   15f14:	bcd4849b          	addiw	s1,s1,-1075
   15f18:	00a484bb          	addw	s1,s1,a0
   15f1c:	03500793          	li	a5,53
   15f20:	009a2023          	sw	s1,0(s4)
   15f24:	40a7853b          	subw	a0,a5,a0
   15f28:	00a9a023          	sw	a0,0(s3)
   15f2c:	fa5ff06f          	j	15ed0 <__d2b+0xb8>
   15f30:	02000713          	li	a4,32
   15f34:	00812683          	lw	a3,8(sp)
   15f38:	40a7073b          	subw	a4,a4,a0
   15f3c:	00e7973b          	sllw	a4,a5,a4
   15f40:	00d76733          	or	a4,a4,a3
   15f44:	00a7d7bb          	srlw	a5,a5,a0
   15f48:	00e92c23          	sw	a4,24(s2)
   15f4c:	00f12623          	sw	a5,12(sp)
   15f50:	f45ff06f          	j	15e94 <__d2b+0x7c>

0000000000015f54 <__ratio>:
   15f54:	fd010113          	addi	sp,sp,-48
   15f58:	00913c23          	sd	s1,24(sp)
   15f5c:	00058493          	mv	s1,a1
   15f60:	00810593          	addi	a1,sp,8
   15f64:	02113423          	sd	ra,40(sp)
   15f68:	02813023          	sd	s0,32(sp)
   15f6c:	01213823          	sd	s2,16(sp)
   15f70:	00050913          	mv	s2,a0
   15f74:	d55ff0ef          	jal	15cc8 <__b2d>
   15f78:	00c10593          	addi	a1,sp,12
   15f7c:	00048513          	mv	a0,s1
   15f80:	e2050453          	fmv.x.d	s0,fa0
   15f84:	d45ff0ef          	jal	15cc8 <__b2d>
   15f88:	01492703          	lw	a4,20(s2)
   15f8c:	0144a783          	lw	a5,20(s1)
   15f90:	00c12603          	lw	a2,12(sp)
   15f94:	e20506d3          	fmv.x.d	a3,fa0
   15f98:	40f707bb          	subw	a5,a4,a5
   15f9c:	0057971b          	slliw	a4,a5,0x5
   15fa0:	00812783          	lw	a5,8(sp)
   15fa4:	40c787bb          	subw	a5,a5,a2
   15fa8:	00f707bb          	addw	a5,a4,a5
   15fac:	04f05463          	blez	a5,15ff4 <__ratio+0xa0>
   15fb0:	00040713          	mv	a4,s0
   15fb4:	0147979b          	slliw	a5,a5,0x14
   15fb8:	42045413          	srai	s0,s0,0x20
   15fbc:	00f407bb          	addw	a5,s0,a5
   15fc0:	02071413          	slli	s0,a4,0x20
   15fc4:	02079793          	slli	a5,a5,0x20
   15fc8:	02045413          	srli	s0,s0,0x20
   15fcc:	00f46433          	or	s0,s0,a5
   15fd0:	f20407d3          	fmv.d.x	fa5,s0
   15fd4:	f2068753          	fmv.d.x	fa4,a3
   15fd8:	02813083          	ld	ra,40(sp)
   15fdc:	02013403          	ld	s0,32(sp)
   15fe0:	1ae7f553          	fdiv.d	fa0,fa5,fa4
   15fe4:	01813483          	ld	s1,24(sp)
   15fe8:	01013903          	ld	s2,16(sp)
   15fec:	03010113          	addi	sp,sp,48
   15ff0:	00008067          	ret
   15ff4:	00068613          	mv	a2,a3
   15ff8:	0147979b          	slliw	a5,a5,0x14
   15ffc:	4206d693          	srai	a3,a3,0x20
   16000:	40f687bb          	subw	a5,a3,a5
   16004:	02061693          	slli	a3,a2,0x20
   16008:	02079793          	slli	a5,a5,0x20
   1600c:	0206d693          	srli	a3,a3,0x20
   16010:	00f6e6b3          	or	a3,a3,a5
   16014:	fbdff06f          	j	15fd0 <__ratio+0x7c>

0000000000016018 <_mprec_log10>:
   16018:	01700793          	li	a5,23
   1601c:	02a7d263          	ble	a0,a5,16040 <_mprec_log10+0x28>
   16020:	0001b7b7          	lui	a5,0x1b
   16024:	3987b507          	fld	fa0,920(a5) # 1b398 <__wctomb+0x28>
   16028:	0001b7b7          	lui	a5,0x1b
   1602c:	3a07b787          	fld	fa5,928(a5) # 1b3a0 <__wctomb+0x30>
   16030:	fff5051b          	addiw	a0,a0,-1
   16034:	12f57553          	fmul.d	fa0,fa0,fa5
   16038:	fe051ce3          	bnez	a0,16030 <_mprec_log10+0x18>
   1603c:	00008067          	ret
   16040:	000197b7          	lui	a5,0x19
   16044:	fa078793          	addi	a5,a5,-96 # 18fa0 <p05.2568>
   16048:	00351513          	slli	a0,a0,0x3
   1604c:	00a78533          	add	a0,a5,a0
   16050:	01053507          	fld	fa0,16(a0)
   16054:	00008067          	ret

0000000000016058 <__copybits>:
   16058:	01462703          	lw	a4,20(a2)
   1605c:	fff5859b          	addiw	a1,a1,-1
   16060:	4055d81b          	sraiw	a6,a1,0x5
   16064:	00180813          	addi	a6,a6,1
   16068:	01860793          	addi	a5,a2,24
   1606c:	00271713          	slli	a4,a4,0x2
   16070:	00281813          	slli	a6,a6,0x2
   16074:	00e786b3          	add	a3,a5,a4
   16078:	01050833          	add	a6,a0,a6
   1607c:	02d7f863          	bleu	a3,a5,160ac <__copybits+0x54>
   16080:	00050713          	mv	a4,a0
   16084:	00478793          	addi	a5,a5,4
   16088:	ffc7a583          	lw	a1,-4(a5)
   1608c:	00470713          	addi	a4,a4,4 # 3ff00004 <_gp+0x3fee44c4>
   16090:	feb72e23          	sw	a1,-4(a4)
   16094:	fed7e8e3          	bltu	a5,a3,16084 <__copybits+0x2c>
   16098:	40c687b3          	sub	a5,a3,a2
   1609c:	fe778793          	addi	a5,a5,-25
   160a0:	ffc7f793          	andi	a5,a5,-4
   160a4:	00478793          	addi	a5,a5,4
   160a8:	00f50533          	add	a0,a0,a5
   160ac:	01057863          	bleu	a6,a0,160bc <__copybits+0x64>
   160b0:	00450513          	addi	a0,a0,4
   160b4:	fe052e23          	sw	zero,-4(a0)
   160b8:	ff056ce3          	bltu	a0,a6,160b0 <__copybits+0x58>
   160bc:	00008067          	ret

00000000000160c0 <__any_on>:
   160c0:	01452783          	lw	a5,20(a0)
   160c4:	4055d71b          	sraiw	a4,a1,0x5
   160c8:	01850693          	addi	a3,a0,24
   160cc:	04e7c463          	blt	a5,a4,16114 <__any_on+0x54>
   160d0:	04f75063          	ble	a5,a4,16110 <__any_on+0x50>
   160d4:	00070793          	mv	a5,a4
   160d8:	00279793          	slli	a5,a5,0x2
   160dc:	01f5f593          	andi	a1,a1,31
   160e0:	00f687b3          	add	a5,a3,a5
   160e4:	04059063          	bnez	a1,16124 <__any_on+0x64>
   160e8:	04f6fa63          	bleu	a5,a3,1613c <__any_on+0x7c>
   160ec:	ffc7a503          	lw	a0,-4(a5)
   160f0:	ffc78793          	addi	a5,a5,-4
   160f4:	00051a63          	bnez	a0,16108 <__any_on+0x48>
   160f8:	02f6f463          	bleu	a5,a3,16120 <__any_on+0x60>
   160fc:	ffc78793          	addi	a5,a5,-4
   16100:	0007a703          	lw	a4,0(a5)
   16104:	fe070ae3          	beqz	a4,160f8 <__any_on+0x38>
   16108:	00100513          	li	a0,1
   1610c:	00008067          	ret
   16110:	00070793          	mv	a5,a4
   16114:	00279793          	slli	a5,a5,0x2
   16118:	00f687b3          	add	a5,a3,a5
   1611c:	fcdff06f          	j	160e8 <__any_on+0x28>
   16120:	00008067          	ret
   16124:	0007a603          	lw	a2,0(a5)
   16128:	00100513          	li	a0,1
   1612c:	00b6573b          	srlw	a4,a2,a1
   16130:	00b715bb          	sllw	a1,a4,a1
   16134:	fab60ae3          	beq	a2,a1,160e8 <__any_on+0x28>
   16138:	00008067          	ret
   1613c:	00000513          	li	a0,0
   16140:	00008067          	ret

0000000000016144 <__fpclassifyd>:
   16144:	e20507d3          	fmv.x.d	a5,fa0
   16148:	00200513          	li	a0,2
   1614c:	4207d713          	srai	a4,a5,0x20
   16150:	0007879b          	sext.w	a5,a5
   16154:	00f766b3          	or	a3,a4,a5
   16158:	00069463          	bnez	a3,16160 <__fpclassifyd+0x1c>
   1615c:	00008067          	ret
   16160:	800006b7          	lui	a3,0x80000
   16164:	04d70863          	beq	a4,a3,161b4 <__fpclassifyd+0x70>
   16168:	fff006b7          	lui	a3,0xfff00
   1616c:	00d706bb          	addw	a3,a4,a3
   16170:	7fe00637          	lui	a2,0x7fe00
   16174:	00400513          	li	a0,4
   16178:	fec6e2e3          	bltu	a3,a2,1615c <__fpclassifyd+0x18>
   1617c:	7ff006b7          	lui	a3,0x7ff00
   16180:	00d706bb          	addw	a3,a4,a3
   16184:	fcc6ece3          	bltu	a3,a2,1615c <__fpclassifyd+0x18>
   16188:	800006b7          	lui	a3,0x80000
   1618c:	fff6c693          	not	a3,a3
   16190:	00d77733          	and	a4,a4,a3
   16194:	001006b7          	lui	a3,0x100
   16198:	00300513          	li	a0,3
   1619c:	fcd760e3          	bltu	a4,a3,1615c <__fpclassifyd+0x18>
   161a0:	7ff006b7          	lui	a3,0x7ff00
   161a4:	00000513          	li	a0,0
   161a8:	fad71ae3          	bne	a4,a3,1615c <__fpclassifyd+0x18>
   161ac:	0017b513          	seqz	a0,a5
   161b0:	00008067          	ret
   161b4:	fc079ae3          	bnez	a5,16188 <__fpclassifyd+0x44>
   161b8:	00008067          	ret

00000000000161bc <__sread>:
   161bc:	01259503          	lh	a0,18(a1)
   161c0:	ff010113          	addi	sp,sp,-16
   161c4:	00813023          	sd	s0,0(sp)
   161c8:	00058413          	mv	s0,a1
   161cc:	00060593          	mv	a1,a2
   161d0:	00068613          	mv	a2,a3
   161d4:	00113423          	sd	ra,8(sp)
   161d8:	0cd020ef          	jal	18aa4 <read>
   161dc:	02054063          	bltz	a0,161fc <__sread+0x40>
   161e0:	09043783          	ld	a5,144(s0)
   161e4:	00813083          	ld	ra,8(sp)
   161e8:	00a787b3          	add	a5,a5,a0
   161ec:	08f43823          	sd	a5,144(s0)
   161f0:	00013403          	ld	s0,0(sp)
   161f4:	01010113          	addi	sp,sp,16
   161f8:	00008067          	ret
   161fc:	01045703          	lhu	a4,16(s0)
   16200:	fffff7b7          	lui	a5,0xfffff
   16204:	00813083          	ld	ra,8(sp)
   16208:	fff7879b          	addiw	a5,a5,-1
   1620c:	00f777b3          	and	a5,a4,a5
   16210:	00f41823          	sh	a5,16(s0)
   16214:	00013403          	ld	s0,0(sp)
   16218:	01010113          	addi	sp,sp,16
   1621c:	00008067          	ret

0000000000016220 <__seofread>:
   16220:	00000513          	li	a0,0
   16224:	00008067          	ret

0000000000016228 <__swrite>:
   16228:	01059703          	lh	a4,16(a1)
   1622c:	fd010113          	addi	sp,sp,-48
   16230:	02813023          	sd	s0,32(sp)
   16234:	00913c23          	sd	s1,24(sp)
   16238:	02113423          	sd	ra,40(sp)
   1623c:	10077793          	andi	a5,a4,256
   16240:	00058413          	mv	s0,a1
   16244:	00060493          	mv	s1,a2
   16248:	02078063          	beqz	a5,16268 <__swrite+0x40>
   1624c:	01259503          	lh	a0,18(a1)
   16250:	00200613          	li	a2,2
   16254:	00000593          	li	a1,0
   16258:	00d13423          	sd	a3,8(sp)
   1625c:	035020ef          	jal	18a90 <lseek>
   16260:	01041703          	lh	a4,16(s0)
   16264:	00813683          	ld	a3,8(sp)
   16268:	fffff7b7          	lui	a5,0xfffff
   1626c:	fff7879b          	addiw	a5,a5,-1
   16270:	00f777b3          	and	a5,a4,a5
   16274:	01241503          	lh	a0,18(s0)
   16278:	00f41823          	sh	a5,16(s0)
   1627c:	00048593          	mv	a1,s1
   16280:	02813083          	ld	ra,40(sp)
   16284:	02013403          	ld	s0,32(sp)
   16288:	01813483          	ld	s1,24(sp)
   1628c:	00068613          	mv	a2,a3
   16290:	03010113          	addi	sp,sp,48
   16294:	0250206f          	j	18ab8 <write>

0000000000016298 <__sseek>:
   16298:	01259503          	lh	a0,18(a1)
   1629c:	ff010113          	addi	sp,sp,-16
   162a0:	00813023          	sd	s0,0(sp)
   162a4:	00058413          	mv	s0,a1
   162a8:	00060593          	mv	a1,a2
   162ac:	00068613          	mv	a2,a3
   162b0:	00113423          	sd	ra,8(sp)
   162b4:	7dc020ef          	jal	18a90 <lseek>
   162b8:	fff00793          	li	a5,-1
   162bc:	01045703          	lhu	a4,16(s0)
   162c0:	02f50263          	beq	a0,a5,162e4 <__sseek+0x4c>
   162c4:	00813083          	ld	ra,8(sp)
   162c8:	000017b7          	lui	a5,0x1
   162cc:	00f767b3          	or	a5,a4,a5
   162d0:	08a43823          	sd	a0,144(s0)
   162d4:	00f41823          	sh	a5,16(s0)
   162d8:	00013403          	ld	s0,0(sp)
   162dc:	01010113          	addi	sp,sp,16
   162e0:	00008067          	ret
   162e4:	fffff7b7          	lui	a5,0xfffff
   162e8:	00813083          	ld	ra,8(sp)
   162ec:	fff7879b          	addiw	a5,a5,-1
   162f0:	00f777b3          	and	a5,a4,a5
   162f4:	00f41823          	sh	a5,16(s0)
   162f8:	00013403          	ld	s0,0(sp)
   162fc:	01010113          	addi	sp,sp,16
   16300:	00008067          	ret

0000000000016304 <__sclose>:
   16304:	01259503          	lh	a0,18(a1)
   16308:	05d0206f          	j	18b64 <close>

000000000001630c <strcmp>:
   1630c:	00b56733          	or	a4,a0,a1
   16310:	fff00393          	li	t2,-1
   16314:	00777713          	andi	a4,a4,7
   16318:	0c071c63          	bnez	a4,163f0 <strcmp+0xe4>
   1631c:	00005e17          	auipc	t3,0x5
   16320:	0b4e3e03          	ld	t3,180(t3) # 1b3d0 <mask>
   16324:	00053603          	ld	a2,0(a0)
   16328:	0005b683          	ld	a3,0(a1)
   1632c:	01c672b3          	and	t0,a2,t3
   16330:	01c66333          	or	t1,a2,t3
   16334:	01c282b3          	add	t0,t0,t3
   16338:	0062e2b3          	or	t0,t0,t1
   1633c:	0c729e63          	bne	t0,t2,16418 <strcmp+0x10c>
   16340:	04d61663          	bne	a2,a3,1638c <strcmp+0x80>
   16344:	00853603          	ld	a2,8(a0)
   16348:	0085b683          	ld	a3,8(a1)
   1634c:	01c672b3          	and	t0,a2,t3
   16350:	01c66333          	or	t1,a2,t3
   16354:	01c282b3          	add	t0,t0,t3
   16358:	0062e2b3          	or	t0,t0,t1
   1635c:	0a729a63          	bne	t0,t2,16410 <strcmp+0x104>
   16360:	02d61663          	bne	a2,a3,1638c <strcmp+0x80>
   16364:	01053603          	ld	a2,16(a0)
   16368:	0105b683          	ld	a3,16(a1)
   1636c:	01c672b3          	and	t0,a2,t3
   16370:	01c66333          	or	t1,a2,t3
   16374:	01c282b3          	add	t0,t0,t3
   16378:	0062e2b3          	or	t0,t0,t1
   1637c:	0a729463          	bne	t0,t2,16424 <strcmp+0x118>
   16380:	01850513          	addi	a0,a0,24
   16384:	01858593          	addi	a1,a1,24
   16388:	f8d60ee3          	beq	a2,a3,16324 <strcmp+0x18>
   1638c:	03061713          	slli	a4,a2,0x30
   16390:	03069793          	slli	a5,a3,0x30
   16394:	02f71a63          	bne	a4,a5,163c8 <strcmp+0xbc>
   16398:	02061713          	slli	a4,a2,0x20
   1639c:	02069793          	slli	a5,a3,0x20
   163a0:	02f71463          	bne	a4,a5,163c8 <strcmp+0xbc>
   163a4:	01061713          	slli	a4,a2,0x10
   163a8:	01069793          	slli	a5,a3,0x10
   163ac:	00f71e63          	bne	a4,a5,163c8 <strcmp+0xbc>
   163b0:	03065713          	srli	a4,a2,0x30
   163b4:	0306d793          	srli	a5,a3,0x30
   163b8:	40f70533          	sub	a0,a4,a5
   163bc:	0ff57593          	andi	a1,a0,255
   163c0:	02059063          	bnez	a1,163e0 <strcmp+0xd4>
   163c4:	00008067          	ret
   163c8:	03075713          	srli	a4,a4,0x30
   163cc:	0307d793          	srli	a5,a5,0x30
   163d0:	40f70533          	sub	a0,a4,a5
   163d4:	0ff57593          	andi	a1,a0,255
   163d8:	00059463          	bnez	a1,163e0 <strcmp+0xd4>
   163dc:	00008067          	ret
   163e0:	0ff77713          	andi	a4,a4,255
   163e4:	0ff7f793          	andi	a5,a5,255
   163e8:	40f70533          	sub	a0,a4,a5
   163ec:	00008067          	ret
   163f0:	00054603          	lbu	a2,0(a0)
   163f4:	0005c683          	lbu	a3,0(a1)
   163f8:	00150513          	addi	a0,a0,1
   163fc:	00158593          	addi	a1,a1,1
   16400:	00d61463          	bne	a2,a3,16408 <strcmp+0xfc>
   16404:	fe0616e3          	bnez	a2,163f0 <strcmp+0xe4>
   16408:	40d60533          	sub	a0,a2,a3
   1640c:	00008067          	ret
   16410:	00850513          	addi	a0,a0,8
   16414:	00858593          	addi	a1,a1,8
   16418:	fcd61ce3          	bne	a2,a3,163f0 <strcmp+0xe4>
   1641c:	00000513          	li	a0,0
   16420:	00008067          	ret
   16424:	01050513          	addi	a0,a0,16
   16428:	01058593          	addi	a1,a1,16
   1642c:	fcd612e3          	bne	a2,a3,163f0 <strcmp+0xe4>
   16430:	00000513          	li	a0,0
   16434:	00008067          	ret

0000000000016438 <strlen>:
   16438:	00757793          	andi	a5,a0,7
   1643c:	00050593          	mv	a1,a0
   16440:	06079a63          	bnez	a5,164b4 <strlen+0x7c>
   16444:	0001b7b7          	lui	a5,0x1b
   16448:	3d07b683          	ld	a3,976(a5) # 1b3d0 <mask>
   1644c:	fff00613          	li	a2,-1
   16450:	00850513          	addi	a0,a0,8
   16454:	ff853783          	ld	a5,-8(a0)
   16458:	00d7f733          	and	a4,a5,a3
   1645c:	00d70733          	add	a4,a4,a3
   16460:	00d7e7b3          	or	a5,a5,a3
   16464:	00f767b3          	or	a5,a4,a5
   16468:	fec784e3          	beq	a5,a2,16450 <strlen+0x18>
   1646c:	ff854783          	lbu	a5,-8(a0)
   16470:	40b505b3          	sub	a1,a0,a1
   16474:	06078263          	beqz	a5,164d8 <strlen+0xa0>
   16478:	ff954783          	lbu	a5,-7(a0)
   1647c:	04078a63          	beqz	a5,164d0 <strlen+0x98>
   16480:	ffa54783          	lbu	a5,-6(a0)
   16484:	06078263          	beqz	a5,164e8 <strlen+0xb0>
   16488:	ffb54783          	lbu	a5,-5(a0)
   1648c:	04078a63          	beqz	a5,164e0 <strlen+0xa8>
   16490:	ffc54783          	lbu	a5,-4(a0)
   16494:	ffd54703          	lbu	a4,-3(a0)
   16498:	ffe54683          	lbu	a3,-2(a0)
   1649c:	04078a63          	beqz	a5,164f0 <strlen+0xb8>
   164a0:	04070c63          	beqz	a4,164f8 <strlen+0xc0>
   164a4:	fff58513          	addi	a0,a1,-1
   164a8:	04068c63          	beqz	a3,16500 <strlen+0xc8>
   164ac:	00008067          	ret
   164b0:	f8070ae3          	beqz	a4,16444 <strlen+0xc>
   164b4:	00054783          	lbu	a5,0(a0)
   164b8:	00150513          	addi	a0,a0,1
   164bc:	00757713          	andi	a4,a0,7
   164c0:	fe0798e3          	bnez	a5,164b0 <strlen+0x78>
   164c4:	40b50533          	sub	a0,a0,a1
   164c8:	fff50513          	addi	a0,a0,-1
   164cc:	00008067          	ret
   164d0:	ff958513          	addi	a0,a1,-7
   164d4:	00008067          	ret
   164d8:	ff858513          	addi	a0,a1,-8
   164dc:	00008067          	ret
   164e0:	ffb58513          	addi	a0,a1,-5
   164e4:	00008067          	ret
   164e8:	ffa58513          	addi	a0,a1,-6
   164ec:	00008067          	ret
   164f0:	ffc58513          	addi	a0,a1,-4
   164f4:	00008067          	ret
   164f8:	ffd58513          	addi	a0,a1,-3
   164fc:	00008067          	ret
   16500:	ffe58513          	addi	a0,a1,-2
   16504:	00008067          	ret

0000000000016508 <__sprint_r.part.0>:
   16508:	0ac5a783          	lw	a5,172(a1)
   1650c:	fb010113          	addi	sp,sp,-80
   16510:	01613823          	sd	s6,16(sp)
   16514:	04113423          	sd	ra,72(sp)
   16518:	04813023          	sd	s0,64(sp)
   1651c:	02913c23          	sd	s1,56(sp)
   16520:	03213823          	sd	s2,48(sp)
   16524:	03313423          	sd	s3,40(sp)
   16528:	03413023          	sd	s4,32(sp)
   1652c:	01513c23          	sd	s5,24(sp)
   16530:	01713423          	sd	s7,8(sp)
   16534:	03279713          	slli	a4,a5,0x32
   16538:	00060b13          	mv	s6,a2
   1653c:	0a075863          	bgez	a4,165ec <__sprint_r.part.0+0xe4>
   16540:	01063783          	ld	a5,16(a2) # 7fe00010 <_gp+0x7fde44d0>
   16544:	00058a13          	mv	s4,a1
   16548:	00050a93          	mv	s5,a0
   1654c:	00063b83          	ld	s7,0(a2)
   16550:	fff00993          	li	s3,-1
   16554:	08078863          	beqz	a5,165e4 <__sprint_r.part.0+0xdc>
   16558:	008bb903          	ld	s2,8(s7)
   1655c:	000bb483          	ld	s1,0(s7)
   16560:	00000413          	li	s0,0
   16564:	00295913          	srli	s2,s2,0x2
   16568:	0009091b          	sext.w	s2,s2
   1656c:	01204863          	bgtz	s2,1657c <__sprint_r.part.0+0x74>
   16570:	0600006f          	j	165d0 <__sprint_r.part.0+0xc8>
   16574:	00448493          	addi	s1,s1,4
   16578:	04890a63          	beq	s2,s0,165cc <__sprint_r.part.0+0xc4>
   1657c:	0004a583          	lw	a1,0(s1)
   16580:	000a0613          	mv	a2,s4
   16584:	000a8513          	mv	a0,s5
   16588:	524010ef          	jal	17aac <_fputwc_r>
   1658c:	0014041b          	addiw	s0,s0,1
   16590:	ff3512e3          	bne	a0,s3,16574 <__sprint_r.part.0+0x6c>
   16594:	00098513          	mv	a0,s3
   16598:	04813083          	ld	ra,72(sp)
   1659c:	000b3823          	sd	zero,16(s6)
   165a0:	000b2423          	sw	zero,8(s6)
   165a4:	04013403          	ld	s0,64(sp)
   165a8:	03813483          	ld	s1,56(sp)
   165ac:	03013903          	ld	s2,48(sp)
   165b0:	02813983          	ld	s3,40(sp)
   165b4:	02013a03          	ld	s4,32(sp)
   165b8:	01813a83          	ld	s5,24(sp)
   165bc:	01013b03          	ld	s6,16(sp)
   165c0:	00813b83          	ld	s7,8(sp)
   165c4:	05010113          	addi	sp,sp,80
   165c8:	00008067          	ret
   165cc:	010b3783          	ld	a5,16(s6)
   165d0:	00291913          	slli	s2,s2,0x2
   165d4:	412787b3          	sub	a5,a5,s2
   165d8:	00fb3823          	sd	a5,16(s6)
   165dc:	010b8b93          	addi	s7,s7,16
   165e0:	f6079ce3          	bnez	a5,16558 <__sprint_r.part.0+0x50>
   165e4:	00000513          	li	a0,0
   165e8:	fb1ff06f          	j	16598 <__sprint_r.part.0+0x90>
   165ec:	564010ef          	jal	17b50 <__sfvwrite_r>
   165f0:	fa9ff06f          	j	16598 <__sprint_r.part.0+0x90>

00000000000165f4 <__sprint_r>:
   165f4:	01063703          	ld	a4,16(a2)
   165f8:	00070463          	beqz	a4,16600 <__sprint_r+0xc>
   165fc:	f0dff06f          	j	16508 <__sprint_r.part.0>
   16600:	00062423          	sw	zero,8(a2)
   16604:	00000513          	li	a0,0
   16608:	00008067          	ret

000000000001660c <_vfiprintf_r>:
   1660c:	e6010113          	addi	sp,sp,-416
   16610:	17513423          	sd	s5,360(sp)
   16614:	17613023          	sd	s6,352(sp)
   16618:	15a13023          	sd	s10,320(sp)
   1661c:	18113c23          	sd	ra,408(sp)
   16620:	18813823          	sd	s0,400(sp)
   16624:	18913423          	sd	s1,392(sp)
   16628:	19213023          	sd	s2,384(sp)
   1662c:	17313c23          	sd	s3,376(sp)
   16630:	17413823          	sd	s4,368(sp)
   16634:	15713c23          	sd	s7,344(sp)
   16638:	15813823          	sd	s8,336(sp)
   1663c:	15913423          	sd	s9,328(sp)
   16640:	13b13c23          	sd	s11,312(sp)
   16644:	00d13423          	sd	a3,8(sp)
   16648:	00050a93          	mv	s5,a0
   1664c:	00058d13          	mv	s10,a1
   16650:	00060b13          	mv	s6,a2
   16654:	00050663          	beqz	a0,16660 <_vfiprintf_r+0x54>
   16658:	05052783          	lw	a5,80(a0)
   1665c:	1e078c63          	beqz	a5,16854 <_vfiprintf_r+0x248>
   16660:	010d1683          	lh	a3,16(s10)
   16664:	03069793          	slli	a5,a3,0x30
   16668:	0307d793          	srli	a5,a5,0x30
   1666c:	03279713          	slli	a4,a5,0x32
   16670:	02074a63          	bltz	a4,166a4 <_vfiprintf_r+0x98>
   16674:	000027b7          	lui	a5,0x2
   16678:	0acd2603          	lw	a2,172(s10)
   1667c:	00f6e7b3          	or	a5,a3,a5
   16680:	0107979b          	slliw	a5,a5,0x10
   16684:	ffffe737          	lui	a4,0xffffe
   16688:	4107d79b          	sraiw	a5,a5,0x10
   1668c:	fff7071b          	addiw	a4,a4,-1
   16690:	00e67733          	and	a4,a2,a4
   16694:	00fd1823          	sh	a5,16(s10)
   16698:	03079793          	slli	a5,a5,0x30
   1669c:	0aed2623          	sw	a4,172(s10)
   166a0:	0307d793          	srli	a5,a5,0x30
   166a4:	0087f713          	andi	a4,a5,8
   166a8:	12070a63          	beqz	a4,167dc <_vfiprintf_r+0x1d0>
   166ac:	018d3703          	ld	a4,24(s10)
   166b0:	12070663          	beqz	a4,167dc <_vfiprintf_r+0x1d0>
   166b4:	01a7f793          	andi	a5,a5,26
   166b8:	00a00713          	li	a4,10
   166bc:	14e78063          	beq	a5,a4,167fc <_vfiprintf_r+0x1f0>
   166c0:	0b010c93          	addi	s9,sp,176
   166c4:	00019c37          	lui	s8,0x19
   166c8:	0af10793          	addi	a5,sp,175
   166cc:	0c8c0713          	addi	a4,s8,200 # 190c8 <__mprec_bigtens+0x28>
   166d0:	40fc87b3          	sub	a5,s9,a5
   166d4:	000198b7          	lui	a7,0x19
   166d8:	07913823          	sd	s9,112(sp)
   166dc:	08013023          	sd	zero,128(sp)
   166e0:	06012c23          	sw	zero,120(sp)
   166e4:	000c8413          	mv	s0,s9
   166e8:	00013c23          	sd	zero,24(sp)
   166ec:	04012c23          	sw	zero,88(sp)
   166f0:	00e13823          	sd	a4,16(sp)
   166f4:	23088c13          	addi	s8,a7,560 # 19230 <blanks.4136>
   166f8:	04f12e23          	sw	a5,92(sp)
   166fc:	000b4783          	lbu	a5,0(s6)
   16700:	4e078ee3          	beqz	a5,173fc <_vfiprintf_r+0xdf0>
   16704:	02500713          	li	a4,37
   16708:	000b0493          	mv	s1,s6
   1670c:	00e79663          	bne	a5,a4,16718 <_vfiprintf_r+0x10c>
   16710:	0580006f          	j	16768 <_vfiprintf_r+0x15c>
   16714:	00e78863          	beq	a5,a4,16724 <_vfiprintf_r+0x118>
   16718:	00148493          	addi	s1,s1,1
   1671c:	0004c783          	lbu	a5,0(s1)
   16720:	fe079ae3          	bnez	a5,16714 <_vfiprintf_r+0x108>
   16724:	4164893b          	subw	s2,s1,s6
   16728:	04090063          	beqz	s2,16768 <_vfiprintf_r+0x15c>
   1672c:	08013703          	ld	a4,128(sp)
   16730:	07812783          	lw	a5,120(sp)
   16734:	00090613          	mv	a2,s2
   16738:	00e60733          	add	a4,a2,a4
   1673c:	0017879b          	addiw	a5,a5,1
   16740:	00c43423          	sd	a2,8(s0)
   16744:	01643023          	sd	s6,0(s0)
   16748:	08e13023          	sd	a4,128(sp)
   1674c:	06f12c23          	sw	a5,120(sp)
   16750:	00700613          	li	a2,7
   16754:	01040413          	addi	s0,s0,16
   16758:	06f64463          	blt	a2,a5,167c0 <_vfiprintf_r+0x1b4>
   1675c:	05812783          	lw	a5,88(sp)
   16760:	012787bb          	addw	a5,a5,s2
   16764:	04f12c23          	sw	a5,88(sp)
   16768:	0004c783          	lbu	a5,0(s1)
   1676c:	580786e3          	beqz	a5,174f8 <_vfiprintf_r+0xeec>
   16770:	00148813          	addi	a6,s1,1
   16774:	060103a3          	sb	zero,103(sp)
   16778:	00000513          	li	a0,0
   1677c:	00000e93          	li	t4,0
   16780:	fff00493          	li	s1,-1
   16784:	00000913          	li	s2,0
   16788:	00000313          	li	t1,0
   1678c:	05800613          	li	a2,88
   16790:	00900593          	li	a1,9
   16794:	02a00f13          	li	t5,42
   16798:	00084703          	lbu	a4,0(a6)
   1679c:	00180b13          	addi	s6,a6,1
   167a0:	fe07079b          	addiw	a5,a4,-32
   167a4:	66f66263          	bltu	a2,a5,16e08 <_vfiprintf_r+0x7fc>
   167a8:	01013683          	ld	a3,16(sp)
   167ac:	02079793          	slli	a5,a5,0x20
   167b0:	01e7d793          	srli	a5,a5,0x1e
   167b4:	00d787b3          	add	a5,a5,a3
   167b8:	0007a783          	lw	a5,0(a5) # 2000 <_ftext-0xe000>
   167bc:	00078067          	jr	a5
   167c0:	2e071ee3          	bnez	a4,172bc <_vfiprintf_r+0xcb0>
   167c4:	06012c23          	sw	zero,120(sp)
   167c8:	000c8413          	mv	s0,s9
   167cc:	f91ff06f          	j	1675c <_vfiprintf_r+0x150>
   167d0:	01036313          	ori	t1,t1,16
   167d4:	000b0813          	mv	a6,s6
   167d8:	fc1ff06f          	j	16798 <_vfiprintf_r+0x18c>
   167dc:	000d0593          	mv	a1,s10
   167e0:	000a8513          	mv	a0,s5
   167e4:	949fb0ef          	jal	1212c <__swsetup_r>
   167e8:	4e0512e3          	bnez	a0,174cc <_vfiprintf_r+0xec0>
   167ec:	010d5783          	lhu	a5,16(s10)
   167f0:	00a00713          	li	a4,10
   167f4:	01a7f793          	andi	a5,a5,26
   167f8:	ece794e3          	bne	a5,a4,166c0 <_vfiprintf_r+0xb4>
   167fc:	012d1783          	lh	a5,18(s10)
   16800:	ec07c0e3          	bltz	a5,166c0 <_vfiprintf_r+0xb4>
   16804:	00813683          	ld	a3,8(sp)
   16808:	000b0613          	mv	a2,s6
   1680c:	000d0593          	mv	a1,s10
   16810:	000a8513          	mv	a0,s5
   16814:	6a9000ef          	jal	176bc <__sbprintf>
   16818:	19813083          	ld	ra,408(sp)
   1681c:	19013403          	ld	s0,400(sp)
   16820:	18813483          	ld	s1,392(sp)
   16824:	18013903          	ld	s2,384(sp)
   16828:	17813983          	ld	s3,376(sp)
   1682c:	17013a03          	ld	s4,368(sp)
   16830:	16813a83          	ld	s5,360(sp)
   16834:	16013b03          	ld	s6,352(sp)
   16838:	15813b83          	ld	s7,344(sp)
   1683c:	15013c03          	ld	s8,336(sp)
   16840:	14813c83          	ld	s9,328(sp)
   16844:	14013d03          	ld	s10,320(sp)
   16848:	13813d83          	ld	s11,312(sp)
   1684c:	1a010113          	addi	sp,sp,416
   16850:	00008067          	ret
   16854:	de4fd0ef          	jal	13e38 <__sinit>
   16858:	e09ff06f          	j	16660 <_vfiprintf_r+0x54>
   1685c:	00813783          	ld	a5,8(sp)
   16860:	0007a903          	lw	s2,0(a5)
   16864:	00878793          	addi	a5,a5,8
   16868:	00f13423          	sd	a5,8(sp)
   1686c:	f60954e3          	bgez	s2,167d4 <_vfiprintf_r+0x1c8>
   16870:	4120093b          	negw	s2,s2
   16874:	00436313          	ori	t1,t1,4
   16878:	000b0813          	mv	a6,s6
   1687c:	f1dff06f          	j	16798 <_vfiprintf_r+0x18c>
   16880:	03000793          	li	a5,48
   16884:	06f10423          	sb	a5,104(sp)
   16888:	07800793          	li	a5,120
   1688c:	06f104a3          	sb	a5,105(sp)
   16890:	00813783          	ld	a5,8(sp)
   16894:	060103a3          	sb	zero,103(sp)
   16898:	00236613          	ori	a2,t1,2
   1689c:	00878713          	addi	a4,a5,8
   168a0:	0007b783          	ld	a5,0(a5)
   168a4:	2e04cce3          	bltz	s1,1739c <_vfiprintf_r+0xd90>
   168a8:	f7f37313          	andi	t1,t1,-129
   168ac:	00e13423          	sd	a4,8(sp)
   168b0:	00236313          	ori	t1,t1,2
   168b4:	32079ae3          	bnez	a5,173e8 <_vfiprintf_r+0xddc>
   168b8:	000197b7          	lui	a5,0x19
   168bc:	29078793          	addi	a5,a5,656 # 19290 <zeroes.4137+0x50>
   168c0:	00f13c23          	sd	a5,24(sp)
   168c4:	00000593          	li	a1,0
   168c8:	200498e3          	bnez	s1,172d8 <_vfiprintf_r+0xccc>
   168cc:	00000493          	li	s1,0
   168d0:	00000a13          	li	s4,0
   168d4:	000c8b93          	mv	s7,s9
   168d8:	00048993          	mv	s3,s1
   168dc:	0144d463          	ble	s4,s1,168e4 <_vfiprintf_r+0x2d8>
   168e0:	000a0993          	mv	s3,s4
   168e4:	00b035b3          	snez	a1,a1
   168e8:	00b989bb          	addw	s3,s3,a1
   168ec:	00237393          	andi	t2,t1,2
   168f0:	00038463          	beqz	t2,168f8 <_vfiprintf_r+0x2ec>
   168f4:	0029899b          	addiw	s3,s3,2
   168f8:	08437293          	andi	t0,t1,132
   168fc:	58029463          	bnez	t0,16e84 <_vfiprintf_r+0x878>
   16900:	41390dbb          	subw	s11,s2,s3
   16904:	59b05063          	blez	s11,16e84 <_vfiprintf_r+0x878>
   16908:	01000793          	li	a5,16
   1690c:	45b7dee3          	ble	s11,a5,17568 <_vfiprintf_r+0xf5c>
   16910:	01000e93          	li	t4,16
   16914:	08013783          	ld	a5,128(sp)
   16918:	07812503          	lw	a0,120(sp)
   1691c:	05813823          	sd	s8,80(sp)
   16920:	00700f13          	li	t5,7
   16924:	000e8f93          	mv	t6,t4
   16928:	0180006f          	j	16940 <_vfiprintf_r+0x334>
   1692c:	0025061b          	addiw	a2,a0,2
   16930:	01040413          	addi	s0,s0,16
   16934:	00058513          	mv	a0,a1
   16938:	ff0d8d9b          	addiw	s11,s11,-16
   1693c:	03bfdc63          	ble	s11,t6,16974 <_vfiprintf_r+0x368>
   16940:	01078793          	addi	a5,a5,16
   16944:	0015059b          	addiw	a1,a0,1
   16948:	01843023          	sd	s8,0(s0)
   1694c:	01d43423          	sd	t4,8(s0)
   16950:	08f13023          	sd	a5,128(sp)
   16954:	06b12c23          	sw	a1,120(sp)
   16958:	fcbf5ae3          	ble	a1,t5,1692c <_vfiprintf_r+0x320>
   1695c:	4c079863          	bnez	a5,16e2c <_vfiprintf_r+0x820>
   16960:	ff0d8d9b          	addiw	s11,s11,-16
   16964:	00000513          	li	a0,0
   16968:	00100613          	li	a2,1
   1696c:	000c8413          	mv	s0,s9
   16970:	fdbfc8e3          	blt	t6,s11,16940 <_vfiprintf_r+0x334>
   16974:	05013703          	ld	a4,80(sp)
   16978:	00fd87b3          	add	a5,s11,a5
   1697c:	01b43423          	sd	s11,8(s0)
   16980:	00e43023          	sd	a4,0(s0)
   16984:	08f13023          	sd	a5,128(sp)
   16988:	06c12c23          	sw	a2,120(sp)
   1698c:	00700593          	li	a1,7
   16990:	7ac5cc63          	blt	a1,a2,17148 <_vfiprintf_r+0xb3c>
   16994:	06714503          	lbu	a0,103(sp)
   16998:	01040413          	addi	s0,s0,16
   1699c:	0016059b          	addiw	a1,a2,1
   169a0:	4e051c63          	bnez	a0,16e98 <_vfiprintf_r+0x88c>
   169a4:	52038663          	beqz	t2,16ed0 <_vfiprintf_r+0x8c4>
   169a8:	06810613          	addi	a2,sp,104
   169ac:	00278793          	addi	a5,a5,2
   169b0:	00c43023          	sd	a2,0(s0)
   169b4:	00200613          	li	a2,2
   169b8:	00c43423          	sd	a2,8(s0)
   169bc:	08f13023          	sd	a5,128(sp)
   169c0:	06b12c23          	sw	a1,120(sp)
   169c4:	00700613          	li	a2,7
   169c8:	7cb65863          	ble	a1,a2,17198 <_vfiprintf_r+0xb8c>
   169cc:	10079ae3          	bnez	a5,172e0 <_vfiprintf_r+0xcd4>
   169d0:	08000513          	li	a0,128
   169d4:	00100593          	li	a1,1
   169d8:	00000613          	li	a2,0
   169dc:	000c8413          	mv	s0,s9
   169e0:	4ea29c63          	bne	t0,a0,16ed8 <_vfiprintf_r+0x8cc>
   169e4:	41390ebb          	subw	t4,s2,s3
   169e8:	4fd05863          	blez	t4,16ed8 <_vfiprintf_r+0x8cc>
   169ec:	01000513          	li	a0,16
   169f0:	3fd55ce3          	ble	t4,a0,175e8 <_vfiprintf_r+0xfdc>
   169f4:	01000f13          	li	t5,16
   169f8:	00019737          	lui	a4,0x19
   169fc:	24070d93          	addi	s11,a4,576 # 19240 <zeroes.4137>
   16a00:	00700f93          	li	t6,7
   16a04:	000f0293          	mv	t0,t5
   16a08:	0180006f          	j	16a20 <_vfiprintf_r+0x414>
   16a0c:	0026051b          	addiw	a0,a2,2
   16a10:	01040413          	addi	s0,s0,16
   16a14:	00058613          	mv	a2,a1
   16a18:	ff0e8e9b          	addiw	t4,t4,-16
   16a1c:	03d2dc63          	ble	t4,t0,16a54 <_vfiprintf_r+0x448>
   16a20:	01078793          	addi	a5,a5,16
   16a24:	0016059b          	addiw	a1,a2,1
   16a28:	01b43023          	sd	s11,0(s0)
   16a2c:	01e43423          	sd	t5,8(s0)
   16a30:	08f13023          	sd	a5,128(sp)
   16a34:	06b12c23          	sw	a1,120(sp)
   16a38:	fcbfdae3          	ble	a1,t6,16a0c <_vfiprintf_r+0x400>
   16a3c:	6a079e63          	bnez	a5,170f8 <_vfiprintf_r+0xaec>
   16a40:	ff0e8e9b          	addiw	t4,t4,-16
   16a44:	00100513          	li	a0,1
   16a48:	00000613          	li	a2,0
   16a4c:	000c8413          	mv	s0,s9
   16a50:	fdd2c8e3          	blt	t0,t4,16a20 <_vfiprintf_r+0x414>
   16a54:	01d787b3          	add	a5,a5,t4
   16a58:	01b43023          	sd	s11,0(s0)
   16a5c:	01d43423          	sd	t4,8(s0)
   16a60:	08f13023          	sd	a5,128(sp)
   16a64:	06a12c23          	sw	a0,120(sp)
   16a68:	00700613          	li	a2,7
   16a6c:	0ea646e3          	blt	a2,a0,17358 <_vfiprintf_r+0xd4c>
   16a70:	414484bb          	subw	s1,s1,s4
   16a74:	01040413          	addi	s0,s0,16
   16a78:	0015059b          	addiw	a1,a0,1
   16a7c:	00050613          	mv	a2,a0
   16a80:	46904063          	bgtz	s1,16ee0 <_vfiprintf_r+0x8d4>
   16a84:	00fa07b3          	add	a5,s4,a5
   16a88:	01743023          	sd	s7,0(s0)
   16a8c:	01443423          	sd	s4,8(s0)
   16a90:	08f13023          	sd	a5,128(sp)
   16a94:	06b12c23          	sw	a1,120(sp)
   16a98:	00700713          	li	a4,7
   16a9c:	4eb75a63          	ble	a1,a4,16f90 <_vfiprintf_r+0x984>
   16aa0:	7a079463          	bnez	a5,17248 <_vfiprintf_r+0xc3c>
   16aa4:	06012c23          	sw	zero,120(sp)
   16aa8:	00437313          	andi	t1,t1,4
   16aac:	00030663          	beqz	t1,16ab8 <_vfiprintf_r+0x4ac>
   16ab0:	413904bb          	subw	s1,s2,s3
   16ab4:	229040e3          	bgtz	s1,174d4 <_vfiprintf_r+0xec8>
   16ab8:	01395463          	ble	s3,s2,16ac0 <_vfiprintf_r+0x4b4>
   16abc:	00098913          	mv	s2,s3
   16ac0:	05812783          	lw	a5,88(sp)
   16ac4:	012787bb          	addw	a5,a5,s2
   16ac8:	04f12c23          	sw	a5,88(sp)
   16acc:	06012c23          	sw	zero,120(sp)
   16ad0:	000c8413          	mv	s0,s9
   16ad4:	c29ff06f          	j	166fc <_vfiprintf_r+0xf0>
   16ad8:	00100513          	li	a0,1
   16adc:	02b00e93          	li	t4,43
   16ae0:	000b0813          	mv	a6,s6
   16ae4:	cb5ff06f          	j	16798 <_vfiprintf_r+0x18c>
   16ae8:	08036313          	ori	t1,t1,128
   16aec:	000b0813          	mv	a6,s6
   16af0:	ca9ff06f          	j	16798 <_vfiprintf_r+0x18c>
   16af4:	00000913          	li	s2,0
   16af8:	fd07079b          	addiw	a5,a4,-48
   16afc:	001b0b13          	addi	s6,s6,1
   16b00:	fffb4703          	lbu	a4,-1(s6)
   16b04:	00191f9b          	slliw	t6,s2,0x1
   16b08:	0039191b          	slliw	s2,s2,0x3
   16b0c:	012f893b          	addw	s2,t6,s2
   16b10:	0127893b          	addw	s2,a5,s2
   16b14:	fd07079b          	addiw	a5,a4,-48
   16b18:	fef5f2e3          	bleu	a5,a1,16afc <_vfiprintf_r+0x4f0>
   16b1c:	c85ff06f          	j	167a0 <_vfiprintf_r+0x194>
   16b20:	360518e3          	bnez	a0,17690 <_vfiprintf_r+0x1084>
   16b24:	01036313          	ori	t1,t1,16
   16b28:	01037793          	andi	a5,t1,16
   16b2c:	74078263          	beqz	a5,17270 <_vfiprintf_r+0xc64>
   16b30:	00813703          	ld	a4,8(sp)
   16b34:	00073783          	ld	a5,0(a4)
   16b38:	00870713          	addi	a4,a4,8
   16b3c:	00e13423          	sd	a4,8(sp)
   16b40:	0e07c6e3          	bltz	a5,1742c <_vfiprintf_r+0xe20>
   16b44:	06714583          	lbu	a1,103(sp)
   16b48:	6e04c063          	bltz	s1,17228 <_vfiprintf_r+0xc1c>
   16b4c:	f7f37313          	andi	t1,t1,-129
   16b50:	10078c63          	beqz	a5,16c68 <_vfiprintf_r+0x65c>
   16b54:	00900613          	li	a2,9
   16b58:	000c8b93          	mv	s7,s9
   16b5c:	00a00513          	li	a0,10
   16b60:	10f67863          	bleu	a5,a2,16c70 <_vfiprintf_r+0x664>
   16b64:	02a7f633          	remu	a2,a5,a0
   16b68:	fffb8b93          	addi	s7,s7,-1
   16b6c:	02a7d7b3          	divu	a5,a5,a0
   16b70:	0306061b          	addiw	a2,a2,48
   16b74:	00cb8023          	sb	a2,0(s7)
   16b78:	fe0796e3          	bnez	a5,16b64 <_vfiprintf_r+0x558>
   16b7c:	417c8a3b          	subw	s4,s9,s7
   16b80:	d59ff06f          	j	168d8 <_vfiprintf_r+0x2cc>
   16b84:	300512e3          	bnez	a0,17688 <_vfiprintf_r+0x107c>
   16b88:	01036313          	ori	t1,t1,16
   16b8c:	01037793          	andi	a5,t1,16
   16b90:	6e078e63          	beqz	a5,1728c <_vfiprintf_r+0xc80>
   16b94:	00813783          	ld	a5,8(sp)
   16b98:	060103a3          	sb	zero,103(sp)
   16b9c:	00878713          	addi	a4,a5,8
   16ba0:	0007b783          	ld	a5,0(a5)
   16ba4:	7004c263          	bltz	s1,172a8 <_vfiprintf_r+0xc9c>
   16ba8:	00e13423          	sd	a4,8(sp)
   16bac:	f7f37313          	andi	t1,t1,-129
   16bb0:	70079263          	bnez	a5,172b4 <_vfiprintf_r+0xca8>
   16bb4:	00000593          	li	a1,0
   16bb8:	00000793          	li	a5,0
   16bbc:	2a0482e3          	beqz	s1,17660 <_vfiprintf_r+0x1054>
   16bc0:	000c8b93          	mv	s7,s9
   16bc4:	0077f613          	andi	a2,a5,7
   16bc8:	fffb8b93          	addi	s7,s7,-1
   16bcc:	0306061b          	addiw	a2,a2,48
   16bd0:	00cb8023          	sb	a2,0(s7)
   16bd4:	0037d793          	srli	a5,a5,0x3
   16bd8:	fe0796e3          	bnez	a5,16bc4 <_vfiprintf_r+0x5b8>
   16bdc:	00137793          	andi	a5,t1,1
   16be0:	f8078ee3          	beqz	a5,16b7c <_vfiprintf_r+0x570>
   16be4:	03000793          	li	a5,48
   16be8:	f8f60ae3          	beq	a2,a5,16b7c <_vfiprintf_r+0x570>
   16bec:	fffb8613          	addi	a2,s7,-1
   16bf0:	40cc8a33          	sub	s4,s9,a2
   16bf4:	fefb8fa3          	sb	a5,-1(s7)
   16bf8:	000a0a1b          	sext.w	s4,s4
   16bfc:	00060b93          	mv	s7,a2
   16c00:	cd9ff06f          	j	168d8 <_vfiprintf_r+0x2cc>
   16c04:	28051ee3          	bnez	a0,176a0 <_vfiprintf_r+0x1094>
   16c08:	01037793          	andi	a5,t1,16
   16c0c:	040786e3          	beqz	a5,17458 <_vfiprintf_r+0xe4c>
   16c10:	00813683          	ld	a3,8(sp)
   16c14:	05812703          	lw	a4,88(sp)
   16c18:	0006b783          	ld	a5,0(a3) # 7ff00000 <_gp+0x7fee44c0>
   16c1c:	00868693          	addi	a3,a3,8
   16c20:	00d13423          	sd	a3,8(sp)
   16c24:	00e7b023          	sd	a4,0(a5)
   16c28:	ad5ff06f          	j	166fc <_vfiprintf_r+0xf0>
   16c2c:	260516e3          	bnez	a0,17698 <_vfiprintf_r+0x108c>
   16c30:	01036313          	ori	t1,t1,16
   16c34:	01037793          	andi	a5,t1,16
   16c38:	5c079a63          	bnez	a5,1720c <_vfiprintf_r+0xc00>
   16c3c:	04037793          	andi	a5,t1,64
   16c40:	060103a3          	sb	zero,103(sp)
   16c44:	7c078063          	beqz	a5,17404 <_vfiprintf_r+0xdf8>
   16c48:	00813783          	ld	a5,8(sp)
   16c4c:	00878713          	addi	a4,a5,8
   16c50:	0007d783          	lhu	a5,0(a5)
   16c54:	5c04c663          	bltz	s1,17220 <_vfiprintf_r+0xc14>
   16c58:	00e13423          	sd	a4,8(sp)
   16c5c:	f7f37313          	andi	t1,t1,-129
   16c60:	00000593          	li	a1,0
   16c64:	ee0798e3          	bnez	a5,16b54 <_vfiprintf_r+0x548>
   16c68:	c60482e3          	beqz	s1,168cc <_vfiprintf_r+0x2c0>
   16c6c:	00000793          	li	a5,0
   16c70:	0307879b          	addiw	a5,a5,48
   16c74:	0af107a3          	sb	a5,175(sp)
   16c78:	05c12a03          	lw	s4,92(sp)
   16c7c:	0af10b93          	addi	s7,sp,175
   16c80:	c59ff06f          	j	168d8 <_vfiprintf_r+0x2cc>
   16c84:	b40e98e3          	bnez	t4,167d4 <_vfiprintf_r+0x1c8>
   16c88:	00100513          	li	a0,1
   16c8c:	02000e93          	li	t4,32
   16c90:	000b0813          	mv	a6,s6
   16c94:	b05ff06f          	j	16798 <_vfiprintf_r+0x18c>
   16c98:	00136313          	ori	t1,t1,1
   16c9c:	000b0813          	mv	a6,s6
   16ca0:	af9ff06f          	j	16798 <_vfiprintf_r+0x18c>
   16ca4:	00813783          	ld	a5,8(sp)
   16ca8:	060103a3          	sb	zero,103(sp)
   16cac:	0007bb83          	ld	s7,0(a5)
   16cb0:	00878d93          	addi	s11,a5,8
   16cb4:	0e0b84e3          	beqz	s7,1759c <_vfiprintf_r+0xf90>
   16cb8:	0404cee3          	bltz	s1,17514 <_vfiprintf_r+0xf08>
   16cbc:	00048613          	mv	a2,s1
   16cc0:	00000593          	li	a1,0
   16cc4:	000b8513          	mv	a0,s7
   16cc8:	00613423          	sd	t1,8(sp)
   16ccc:	928fe0ef          	jal	14df4 <memchr>
   16cd0:	00813303          	ld	t1,8(sp)
   16cd4:	120502e3          	beqz	a0,175f8 <_vfiprintf_r+0xfec>
   16cd8:	41750a3b          	subw	s4,a0,s7
   16cdc:	06714583          	lbu	a1,103(sp)
   16ce0:	01b13423          	sd	s11,8(sp)
   16ce4:	00000493          	li	s1,0
   16ce8:	bf1ff06f          	j	168d8 <_vfiprintf_r+0x2cc>
   16cec:	f40504e3          	beqz	a0,16c34 <_vfiprintf_r+0x628>
   16cf0:	07d103a3          	sb	t4,103(sp)
   16cf4:	f41ff06f          	j	16c34 <_vfiprintf_r+0x628>
   16cf8:	00813703          	ld	a4,8(sp)
   16cfc:	00100993          	li	s3,1
   16d00:	060103a3          	sb	zero,103(sp)
   16d04:	00072783          	lw	a5,0(a4)
   16d08:	00098a13          	mv	s4,s3
   16d0c:	08810b93          	addi	s7,sp,136
   16d10:	08f10423          	sb	a5,136(sp)
   16d14:	00870793          	addi	a5,a4,8
   16d18:	00f13423          	sd	a5,8(sp)
   16d1c:	00000493          	li	s1,0
   16d20:	bcdff06f          	j	168ec <_vfiprintf_r+0x2e0>
   16d24:	e00502e3          	beqz	a0,16b28 <_vfiprintf_r+0x51c>
   16d28:	07d103a3          	sb	t4,103(sp)
   16d2c:	dfdff06f          	j	16b28 <_vfiprintf_r+0x51c>
   16d30:	120510e3          	bnez	a0,17650 <_vfiprintf_r+0x1044>
   16d34:	000197b7          	lui	a5,0x19
   16d38:	27878793          	addi	a5,a5,632 # 19278 <zeroes.4137+0x38>
   16d3c:	00f13c23          	sd	a5,24(sp)
   16d40:	01037793          	andi	a5,t1,16
   16d44:	06078063          	beqz	a5,16da4 <_vfiprintf_r+0x798>
   16d48:	00813683          	ld	a3,8(sp)
   16d4c:	0006b783          	ld	a5,0(a3)
   16d50:	00868693          	addi	a3,a3,8
   16d54:	00d13423          	sd	a3,8(sp)
   16d58:	00137613          	andi	a2,t1,1
   16d5c:	46060863          	beqz	a2,171cc <_vfiprintf_r+0xbc0>
   16d60:	66079063          	bnez	a5,173c0 <_vfiprintf_r+0xdb4>
   16d64:	060103a3          	sb	zero,103(sp)
   16d68:	6404c663          	bltz	s1,173b4 <_vfiprintf_r+0xda8>
   16d6c:	f7f37313          	andi	t1,t1,-129
   16d70:	b55ff06f          	j	168c4 <_vfiprintf_r+0x2b8>
   16d74:	e0050ce3          	beqz	a0,16b8c <_vfiprintf_r+0x580>
   16d78:	07d103a3          	sb	t4,103(sp)
   16d7c:	e11ff06f          	j	16b8c <_vfiprintf_r+0x580>
   16d80:	04036313          	ori	t1,t1,64
   16d84:	000b0813          	mv	a6,s6
   16d88:	a11ff06f          	j	16798 <_vfiprintf_r+0x18c>
   16d8c:	0a051ee3          	bnez	a0,17648 <_vfiprintf_r+0x103c>
   16d90:	000197b7          	lui	a5,0x19
   16d94:	29078793          	addi	a5,a5,656 # 19290 <zeroes.4137+0x50>
   16d98:	00f13c23          	sd	a5,24(sp)
   16d9c:	01037793          	andi	a5,t1,16
   16da0:	fa0794e3          	bnez	a5,16d48 <_vfiprintf_r+0x73c>
   16da4:	04037793          	andi	a5,t1,64
   16da8:	00813683          	ld	a3,8(sp)
   16dac:	68078e63          	beqz	a5,17448 <_vfiprintf_r+0xe3c>
   16db0:	0006d783          	lhu	a5,0(a3)
   16db4:	00868693          	addi	a3,a3,8
   16db8:	00d13423          	sd	a3,8(sp)
   16dbc:	f9dff06f          	j	16d58 <_vfiprintf_r+0x74c>
   16dc0:	000b4703          	lbu	a4,0(s6)
   16dc4:	001b0813          	addi	a6,s6,1
   16dc8:	05e70ee3          	beq	a4,t5,17624 <_vfiprintf_r+0x1018>
   16dcc:	fd07079b          	addiw	a5,a4,-48
   16dd0:	00000493          	li	s1,0
   16dd4:	00080b13          	mv	s6,a6
   16dd8:	9cf5e4e3          	bltu	a1,a5,167a0 <_vfiprintf_r+0x194>
   16ddc:	001b0b13          	addi	s6,s6,1
   16de0:	fffb4703          	lbu	a4,-1(s6)
   16de4:	00149f9b          	slliw	t6,s1,0x1
   16de8:	0034949b          	slliw	s1,s1,0x3
   16dec:	009f84bb          	addw	s1,t6,s1
   16df0:	00f484bb          	addw	s1,s1,a5
   16df4:	fd07079b          	addiw	a5,a4,-48
   16df8:	fef5f2e3          	bleu	a5,a1,16ddc <_vfiprintf_r+0x7d0>
   16dfc:	9a04d2e3          	bgez	s1,167a0 <_vfiprintf_r+0x194>
   16e00:	fff00493          	li	s1,-1
   16e04:	99dff06f          	j	167a0 <_vfiprintf_r+0x194>
   16e08:	040518e3          	bnez	a0,17658 <_vfiprintf_r+0x104c>
   16e0c:	6e070663          	beqz	a4,174f8 <_vfiprintf_r+0xeec>
   16e10:	00100993          	li	s3,1
   16e14:	08e10423          	sb	a4,136(sp)
   16e18:	060103a3          	sb	zero,103(sp)
   16e1c:	00098a13          	mv	s4,s3
   16e20:	08810b93          	addi	s7,sp,136
   16e24:	00000493          	li	s1,0
   16e28:	ac5ff06f          	j	168ec <_vfiprintf_r+0x2e0>
   16e2c:	07010613          	addi	a2,sp,112
   16e30:	000d0593          	mv	a1,s10
   16e34:	000a8513          	mv	a0,s5
   16e38:	05f13423          	sd	t6,72(sp)
   16e3c:	05e13023          	sd	t5,64(sp)
   16e40:	03d13c23          	sd	t4,56(sp)
   16e44:	02513823          	sd	t0,48(sp)
   16e48:	02713423          	sd	t2,40(sp)
   16e4c:	02613023          	sd	t1,32(sp)
   16e50:	eb8ff0ef          	jal	16508 <__sprint_r.part.0>
   16e54:	22051063          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   16e58:	07812503          	lw	a0,120(sp)
   16e5c:	08013783          	ld	a5,128(sp)
   16e60:	000c8413          	mv	s0,s9
   16e64:	0015061b          	addiw	a2,a0,1
   16e68:	04813f83          	ld	t6,72(sp)
   16e6c:	04013f03          	ld	t5,64(sp)
   16e70:	03813e83          	ld	t4,56(sp)
   16e74:	03013283          	ld	t0,48(sp)
   16e78:	02813383          	ld	t2,40(sp)
   16e7c:	02013303          	ld	t1,32(sp)
   16e80:	ab9ff06f          	j	16938 <_vfiprintf_r+0x32c>
   16e84:	07812603          	lw	a2,120(sp)
   16e88:	08013783          	ld	a5,128(sp)
   16e8c:	0016059b          	addiw	a1,a2,1
   16e90:	06714503          	lbu	a0,103(sp)
   16e94:	b00508e3          	beqz	a0,169a4 <_vfiprintf_r+0x398>
   16e98:	00100513          	li	a0,1
   16e9c:	06710613          	addi	a2,sp,103
   16ea0:	00a787b3          	add	a5,a5,a0
   16ea4:	00c43023          	sd	a2,0(s0)
   16ea8:	00a43423          	sd	a0,8(s0)
   16eac:	08f13023          	sd	a5,128(sp)
   16eb0:	06b12c23          	sw	a1,120(sp)
   16eb4:	00700613          	li	a2,7
   16eb8:	2ab65a63          	ble	a1,a2,1716c <_vfiprintf_r+0xb60>
   16ebc:	44079e63          	bnez	a5,17318 <_vfiprintf_r+0xd0c>
   16ec0:	2c039063          	bnez	t2,17180 <_vfiprintf_r+0xb74>
   16ec4:	00000613          	li	a2,0
   16ec8:	00050593          	mv	a1,a0
   16ecc:	000c8413          	mv	s0,s9
   16ed0:	08000513          	li	a0,128
   16ed4:	b0a288e3          	beq	t0,a0,169e4 <_vfiprintf_r+0x3d8>
   16ed8:	414484bb          	subw	s1,s1,s4
   16edc:	ba9054e3          	blez	s1,16a84 <_vfiprintf_r+0x478>
   16ee0:	00019737          	lui	a4,0x19
   16ee4:	01000513          	li	a0,16
   16ee8:	24070d93          	addi	s11,a4,576 # 19240 <zeroes.4137>
   16eec:	06955263          	ble	s1,a0,16f50 <_vfiprintf_r+0x944>
   16ef0:	01000e93          	li	t4,16
   16ef4:	00019737          	lui	a4,0x19
   16ef8:	24070d93          	addi	s11,a4,576 # 19240 <zeroes.4137>
   16efc:	00700f13          	li	t5,7
   16f00:	000e8f93          	mv	t6,t4
   16f04:	0180006f          	j	16f1c <_vfiprintf_r+0x910>
   16f08:	0026059b          	addiw	a1,a2,2
   16f0c:	01040413          	addi	s0,s0,16
   16f10:	00050613          	mv	a2,a0
   16f14:	ff04849b          	addiw	s1,s1,-16
   16f18:	029fdc63          	ble	s1,t6,16f50 <_vfiprintf_r+0x944>
   16f1c:	01078793          	addi	a5,a5,16
   16f20:	0016051b          	addiw	a0,a2,1
   16f24:	01b43023          	sd	s11,0(s0)
   16f28:	01d43423          	sd	t4,8(s0)
   16f2c:	08f13023          	sd	a5,128(sp)
   16f30:	06a12c23          	sw	a0,120(sp)
   16f34:	fcaf5ae3          	ble	a0,t5,16f08 <_vfiprintf_r+0x8fc>
   16f38:	14079863          	bnez	a5,17088 <_vfiprintf_r+0xa7c>
   16f3c:	ff04849b          	addiw	s1,s1,-16
   16f40:	00100593          	li	a1,1
   16f44:	00000613          	li	a2,0
   16f48:	000c8413          	mv	s0,s9
   16f4c:	fc9fc8e3          	blt	t6,s1,16f1c <_vfiprintf_r+0x910>
   16f50:	009787b3          	add	a5,a5,s1
   16f54:	01b43023          	sd	s11,0(s0)
   16f58:	00943423          	sd	s1,8(s0)
   16f5c:	08f13023          	sd	a5,128(sp)
   16f60:	06b12c23          	sw	a1,120(sp)
   16f64:	00700613          	li	a2,7
   16f68:	24b64063          	blt	a2,a1,171a8 <_vfiprintf_r+0xb9c>
   16f6c:	01040413          	addi	s0,s0,16
   16f70:	0015859b          	addiw	a1,a1,1
   16f74:	00fa07b3          	add	a5,s4,a5
   16f78:	01743023          	sd	s7,0(s0)
   16f7c:	01443423          	sd	s4,8(s0)
   16f80:	08f13023          	sd	a5,128(sp)
   16f84:	06b12c23          	sw	a1,120(sp)
   16f88:	00700713          	li	a4,7
   16f8c:	b0b74ae3          	blt	a4,a1,16aa0 <_vfiprintf_r+0x494>
   16f90:	01040413          	addi	s0,s0,16
   16f94:	00437313          	andi	t1,t1,4
   16f98:	0a030863          	beqz	t1,17048 <_vfiprintf_r+0xa3c>
   16f9c:	413904bb          	subw	s1,s2,s3
   16fa0:	0a905463          	blez	s1,17048 <_vfiprintf_r+0xa3c>
   16fa4:	01000713          	li	a4,16
   16fa8:	62975863          	ble	s1,a4,175d8 <_vfiprintf_r+0xfcc>
   16fac:	01000a13          	li	s4,16
   16fb0:	07812603          	lw	a2,120(sp)
   16fb4:	05813823          	sd	s8,80(sp)
   16fb8:	00700d93          	li	s11,7
   16fbc:	000a0b93          	mv	s7,s4
   16fc0:	0180006f          	j	16fd8 <_vfiprintf_r+0x9cc>
   16fc4:	0026059b          	addiw	a1,a2,2
   16fc8:	01040413          	addi	s0,s0,16
   16fcc:	00070613          	mv	a2,a4
   16fd0:	ff04849b          	addiw	s1,s1,-16
   16fd4:	029bdc63          	ble	s1,s7,1700c <_vfiprintf_r+0xa00>
   16fd8:	01078793          	addi	a5,a5,16
   16fdc:	0016071b          	addiw	a4,a2,1
   16fe0:	01843023          	sd	s8,0(s0)
   16fe4:	01443423          	sd	s4,8(s0)
   16fe8:	08f13023          	sd	a5,128(sp)
   16fec:	06e12c23          	sw	a4,120(sp)
   16ff0:	fceddae3          	ble	a4,s11,16fc4 <_vfiprintf_r+0x9b8>
   16ff4:	0c079e63          	bnez	a5,170d0 <_vfiprintf_r+0xac4>
   16ff8:	ff04849b          	addiw	s1,s1,-16
   16ffc:	00100593          	li	a1,1
   17000:	00000613          	li	a2,0
   17004:	000c8413          	mv	s0,s9
   17008:	fc9bc8e3          	blt	s7,s1,16fd8 <_vfiprintf_r+0x9cc>
   1700c:	05013703          	ld	a4,80(sp)
   17010:	009787b3          	add	a5,a5,s1
   17014:	00943423          	sd	s1,8(s0)
   17018:	00e43023          	sd	a4,0(s0)
   1701c:	08f13023          	sd	a5,128(sp)
   17020:	06b12c23          	sw	a1,120(sp)
   17024:	00700713          	li	a4,7
   17028:	02b75063          	ble	a1,a4,17048 <_vfiprintf_r+0xa3c>
   1702c:	a80786e3          	beqz	a5,16ab8 <_vfiprintf_r+0x4ac>
   17030:	07010613          	addi	a2,sp,112
   17034:	000d0593          	mv	a1,s10
   17038:	000a8513          	mv	a0,s5
   1703c:	cccff0ef          	jal	16508 <__sprint_r.part.0>
   17040:	02051a63          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   17044:	08013783          	ld	a5,128(sp)
   17048:	01395463          	ble	s3,s2,17050 <_vfiprintf_r+0xa44>
   1704c:	00098913          	mv	s2,s3
   17050:	05812703          	lw	a4,88(sp)
   17054:	0127073b          	addw	a4,a4,s2
   17058:	04e12c23          	sw	a4,88(sp)
   1705c:	a60788e3          	beqz	a5,16acc <_vfiprintf_r+0x4c0>
   17060:	07010613          	addi	a2,sp,112
   17064:	000d0593          	mv	a1,s10
   17068:	000a8513          	mv	a0,s5
   1706c:	c9cff0ef          	jal	16508 <__sprint_r.part.0>
   17070:	a4050ee3          	beqz	a0,16acc <_vfiprintf_r+0x4c0>
   17074:	010d5783          	lhu	a5,16(s10)
   17078:	0407f793          	andi	a5,a5,64
   1707c:	44079863          	bnez	a5,174cc <_vfiprintf_r+0xec0>
   17080:	05812503          	lw	a0,88(sp)
   17084:	f94ff06f          	j	16818 <_vfiprintf_r+0x20c>
   17088:	07010613          	addi	a2,sp,112
   1708c:	000d0593          	mv	a1,s10
   17090:	000a8513          	mv	a0,s5
   17094:	03f13c23          	sd	t6,56(sp)
   17098:	03e13823          	sd	t5,48(sp)
   1709c:	03d13423          	sd	t4,40(sp)
   170a0:	02613023          	sd	t1,32(sp)
   170a4:	c64ff0ef          	jal	16508 <__sprint_r.part.0>
   170a8:	fc0516e3          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   170ac:	07812603          	lw	a2,120(sp)
   170b0:	08013783          	ld	a5,128(sp)
   170b4:	000c8413          	mv	s0,s9
   170b8:	0016059b          	addiw	a1,a2,1
   170bc:	03813f83          	ld	t6,56(sp)
   170c0:	03013f03          	ld	t5,48(sp)
   170c4:	02813e83          	ld	t4,40(sp)
   170c8:	02013303          	ld	t1,32(sp)
   170cc:	e49ff06f          	j	16f14 <_vfiprintf_r+0x908>
   170d0:	07010613          	addi	a2,sp,112
   170d4:	000d0593          	mv	a1,s10
   170d8:	000a8513          	mv	a0,s5
   170dc:	c2cff0ef          	jal	16508 <__sprint_r.part.0>
   170e0:	f8051ae3          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   170e4:	07812603          	lw	a2,120(sp)
   170e8:	08013783          	ld	a5,128(sp)
   170ec:	000c8413          	mv	s0,s9
   170f0:	0016059b          	addiw	a1,a2,1
   170f4:	eddff06f          	j	16fd0 <_vfiprintf_r+0x9c4>
   170f8:	07010613          	addi	a2,sp,112
   170fc:	000d0593          	mv	a1,s10
   17100:	000a8513          	mv	a0,s5
   17104:	04513023          	sd	t0,64(sp)
   17108:	03f13c23          	sd	t6,56(sp)
   1710c:	03e13823          	sd	t5,48(sp)
   17110:	03d13423          	sd	t4,40(sp)
   17114:	02613023          	sd	t1,32(sp)
   17118:	bf0ff0ef          	jal	16508 <__sprint_r.part.0>
   1711c:	f4051ce3          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   17120:	07812603          	lw	a2,120(sp)
   17124:	08013783          	ld	a5,128(sp)
   17128:	000c8413          	mv	s0,s9
   1712c:	0016051b          	addiw	a0,a2,1
   17130:	04013283          	ld	t0,64(sp)
   17134:	03813f83          	ld	t6,56(sp)
   17138:	03013f03          	ld	t5,48(sp)
   1713c:	02813e83          	ld	t4,40(sp)
   17140:	02013303          	ld	t1,32(sp)
   17144:	8d5ff06f          	j	16a18 <_vfiprintf_r+0x40c>
   17148:	34079263          	bnez	a5,1748c <_vfiprintf_r+0xe80>
   1714c:	06714603          	lbu	a2,103(sp)
   17150:	02060663          	beqz	a2,1717c <_vfiprintf_r+0xb70>
   17154:	00100793          	li	a5,1
   17158:	06710613          	addi	a2,sp,103
   1715c:	0ac13823          	sd	a2,176(sp)
   17160:	0af13c23          	sd	a5,184(sp)
   17164:	00078593          	mv	a1,a5
   17168:	000c8413          	mv	s0,s9
   1716c:	00058613          	mv	a2,a1
   17170:	01040413          	addi	s0,s0,16
   17174:	0015859b          	addiw	a1,a1,1
   17178:	82dff06f          	j	169a4 <_vfiprintf_r+0x398>
   1717c:	36038063          	beqz	t2,174dc <_vfiprintf_r+0xed0>
   17180:	00200793          	li	a5,2
   17184:	06810613          	addi	a2,sp,104
   17188:	0ac13823          	sd	a2,176(sp)
   1718c:	0af13c23          	sd	a5,184(sp)
   17190:	00100593          	li	a1,1
   17194:	000c8413          	mv	s0,s9
   17198:	00058613          	mv	a2,a1
   1719c:	01040413          	addi	s0,s0,16
   171a0:	0015859b          	addiw	a1,a1,1
   171a4:	d2dff06f          	j	16ed0 <_vfiprintf_r+0x8c4>
   171a8:	1c079263          	bnez	a5,1736c <_vfiprintf_r+0xd60>
   171ac:	00100713          	li	a4,1
   171b0:	000a0793          	mv	a5,s4
   171b4:	0b713823          	sd	s7,176(sp)
   171b8:	0b413c23          	sd	s4,184(sp)
   171bc:	09413023          	sd	s4,128(sp)
   171c0:	06e12c23          	sw	a4,120(sp)
   171c4:	000c8413          	mv	s0,s9
   171c8:	dc9ff06f          	j	16f90 <_vfiprintf_r+0x984>
   171cc:	060103a3          	sb	zero,103(sp)
   171d0:	1e04c063          	bltz	s1,173b0 <_vfiprintf_r+0xda4>
   171d4:	f7f37313          	andi	t1,t1,-129
   171d8:	ee078663          	beqz	a5,168c4 <_vfiprintf_r+0x2b8>
   171dc:	00000593          	li	a1,0
   171e0:	000c8b93          	mv	s7,s9
   171e4:	01813703          	ld	a4,24(sp)
   171e8:	00f7f613          	andi	a2,a5,15
   171ec:	fffb8b93          	addi	s7,s7,-1
   171f0:	00c70633          	add	a2,a4,a2
   171f4:	00064603          	lbu	a2,0(a2)
   171f8:	0047d793          	srli	a5,a5,0x4
   171fc:	00cb8023          	sb	a2,0(s7)
   17200:	fe0792e3          	bnez	a5,171e4 <_vfiprintf_r+0xbd8>
   17204:	417c8a3b          	subw	s4,s9,s7
   17208:	ed0ff06f          	j	168d8 <_vfiprintf_r+0x2cc>
   1720c:	00813783          	ld	a5,8(sp)
   17210:	060103a3          	sb	zero,103(sp)
   17214:	00878713          	addi	a4,a5,8
   17218:	0007b783          	ld	a5,0(a5)
   1721c:	a204dee3          	bgez	s1,16c58 <_vfiprintf_r+0x64c>
   17220:	00e13423          	sd	a4,8(sp)
   17224:	00000593          	li	a1,0
   17228:	920796e3          	bnez	a5,16b54 <_vfiprintf_r+0x548>
   1722c:	00100793          	li	a5,1
   17230:	00100713          	li	a4,1
   17234:	a2e78ce3          	beq	a5,a4,16c6c <_vfiprintf_r+0x660>
   17238:	00200713          	li	a4,2
   1723c:	08e78e63          	beq	a5,a4,172d8 <_vfiprintf_r+0xccc>
   17240:	00000793          	li	a5,0
   17244:	97dff06f          	j	16bc0 <_vfiprintf_r+0x5b4>
   17248:	07010613          	addi	a2,sp,112
   1724c:	000d0593          	mv	a1,s10
   17250:	000a8513          	mv	a0,s5
   17254:	02613023          	sd	t1,32(sp)
   17258:	ab0ff0ef          	jal	16508 <__sprint_r.part.0>
   1725c:	e0051ce3          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   17260:	08013783          	ld	a5,128(sp)
   17264:	000c8413          	mv	s0,s9
   17268:	02013303          	ld	t1,32(sp)
   1726c:	d29ff06f          	j	16f94 <_vfiprintf_r+0x988>
   17270:	04037793          	andi	a5,t1,64
   17274:	00813703          	ld	a4,8(sp)
   17278:	20078263          	beqz	a5,1747c <_vfiprintf_r+0xe70>
   1727c:	00071783          	lh	a5,0(a4)
   17280:	00870713          	addi	a4,a4,8
   17284:	00e13423          	sd	a4,8(sp)
   17288:	8b9ff06f          	j	16b40 <_vfiprintf_r+0x534>
   1728c:	04037793          	andi	a5,t1,64
   17290:	060103a3          	sb	zero,103(sp)
   17294:	18078263          	beqz	a5,17418 <_vfiprintf_r+0xe0c>
   17298:	00813783          	ld	a5,8(sp)
   1729c:	00878713          	addi	a4,a5,8
   172a0:	0007d783          	lhu	a5,0(a5)
   172a4:	9004d2e3          	bgez	s1,16ba8 <_vfiprintf_r+0x59c>
   172a8:	00e13423          	sd	a4,8(sp)
   172ac:	00000593          	li	a1,0
   172b0:	f80780e3          	beqz	a5,17230 <_vfiprintf_r+0xc24>
   172b4:	00000593          	li	a1,0
   172b8:	909ff06f          	j	16bc0 <_vfiprintf_r+0x5b4>
   172bc:	07010613          	addi	a2,sp,112
   172c0:	000d0593          	mv	a1,s10
   172c4:	000a8513          	mv	a0,s5
   172c8:	a40ff0ef          	jal	16508 <__sprint_r.part.0>
   172cc:	da0514e3          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   172d0:	000c8413          	mv	s0,s9
   172d4:	c88ff06f          	j	1675c <_vfiprintf_r+0x150>
   172d8:	00000793          	li	a5,0
   172dc:	f05ff06f          	j	171e0 <_vfiprintf_r+0xbd4>
   172e0:	07010613          	addi	a2,sp,112
   172e4:	000d0593          	mv	a1,s10
   172e8:	000a8513          	mv	a0,s5
   172ec:	02513423          	sd	t0,40(sp)
   172f0:	02613023          	sd	t1,32(sp)
   172f4:	a14ff0ef          	jal	16508 <__sprint_r.part.0>
   172f8:	d6051ee3          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   172fc:	07812603          	lw	a2,120(sp)
   17300:	08013783          	ld	a5,128(sp)
   17304:	000c8413          	mv	s0,s9
   17308:	0016059b          	addiw	a1,a2,1
   1730c:	02813283          	ld	t0,40(sp)
   17310:	02013303          	ld	t1,32(sp)
   17314:	bbdff06f          	j	16ed0 <_vfiprintf_r+0x8c4>
   17318:	07010613          	addi	a2,sp,112
   1731c:	000d0593          	mv	a1,s10
   17320:	000a8513          	mv	a0,s5
   17324:	02513823          	sd	t0,48(sp)
   17328:	02713423          	sd	t2,40(sp)
   1732c:	02613023          	sd	t1,32(sp)
   17330:	9d8ff0ef          	jal	16508 <__sprint_r.part.0>
   17334:	d40510e3          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   17338:	07812603          	lw	a2,120(sp)
   1733c:	08013783          	ld	a5,128(sp)
   17340:	000c8413          	mv	s0,s9
   17344:	0016059b          	addiw	a1,a2,1
   17348:	03013283          	ld	t0,48(sp)
   1734c:	02813383          	ld	t2,40(sp)
   17350:	02013303          	ld	t1,32(sp)
   17354:	e50ff06f          	j	169a4 <_vfiprintf_r+0x398>
   17358:	1e079063          	bnez	a5,17538 <_vfiprintf_r+0xf2c>
   1735c:	00100593          	li	a1,1
   17360:	00000613          	li	a2,0
   17364:	000c8413          	mv	s0,s9
   17368:	b71ff06f          	j	16ed8 <_vfiprintf_r+0x8cc>
   1736c:	07010613          	addi	a2,sp,112
   17370:	000d0593          	mv	a1,s10
   17374:	000a8513          	mv	a0,s5
   17378:	02613023          	sd	t1,32(sp)
   1737c:	98cff0ef          	jal	16508 <__sprint_r.part.0>
   17380:	ce051ae3          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   17384:	07812583          	lw	a1,120(sp)
   17388:	08013783          	ld	a5,128(sp)
   1738c:	000c8413          	mv	s0,s9
   17390:	0015859b          	addiw	a1,a1,1
   17394:	02013303          	ld	t1,32(sp)
   17398:	eecff06f          	j	16a84 <_vfiprintf_r+0x478>
   1739c:	00e13423          	sd	a4,8(sp)
   173a0:	00019737          	lui	a4,0x19
   173a4:	29070713          	addi	a4,a4,656 # 19290 <zeroes.4137+0x50>
   173a8:	00060313          	mv	t1,a2
   173ac:	00e13c23          	sd	a4,24(sp)
   173b0:	e20796e3          	bnez	a5,171dc <_vfiprintf_r+0xbd0>
   173b4:	00000593          	li	a1,0
   173b8:	00200793          	li	a5,2
   173bc:	e75ff06f          	j	17230 <_vfiprintf_r+0xc24>
   173c0:	03000613          	li	a2,48
   173c4:	06e104a3          	sb	a4,105(sp)
   173c8:	06c10423          	sb	a2,104(sp)
   173cc:	060103a3          	sb	zero,103(sp)
   173d0:	00236713          	ori	a4,t1,2
   173d4:	1a04c463          	bltz	s1,1757c <_vfiprintf_r+0xf70>
   173d8:	f7f37313          	andi	t1,t1,-129
   173dc:	00236313          	ori	t1,t1,2
   173e0:	00000593          	li	a1,0
   173e4:	dfdff06f          	j	171e0 <_vfiprintf_r+0xbd4>
   173e8:	00019737          	lui	a4,0x19
   173ec:	29070713          	addi	a4,a4,656 # 19290 <zeroes.4137+0x50>
   173f0:	00000593          	li	a1,0
   173f4:	00e13c23          	sd	a4,24(sp)
   173f8:	de9ff06f          	j	171e0 <_vfiprintf_r+0xbd4>
   173fc:	000b0493          	mv	s1,s6
   17400:	b68ff06f          	j	16768 <_vfiprintf_r+0x15c>
   17404:	00813783          	ld	a5,8(sp)
   17408:	00878713          	addi	a4,a5,8
   1740c:	0007e783          	lwu	a5,0(a5)
   17410:	8404d4e3          	bgez	s1,16c58 <_vfiprintf_r+0x64c>
   17414:	e0dff06f          	j	17220 <_vfiprintf_r+0xc14>
   17418:	00813783          	ld	a5,8(sp)
   1741c:	00878713          	addi	a4,a5,8
   17420:	0007e783          	lwu	a5,0(a5)
   17424:	f804d263          	bgez	s1,16ba8 <_vfiprintf_r+0x59c>
   17428:	e81ff06f          	j	172a8 <_vfiprintf_r+0xc9c>
   1742c:	02d00713          	li	a4,45
   17430:	06e103a3          	sb	a4,103(sp)
   17434:	40f007b3          	neg	a5,a5
   17438:	1804c863          	bltz	s1,175c8 <_vfiprintf_r+0xfbc>
   1743c:	f7f37313          	andi	t1,t1,-129
   17440:	02d00593          	li	a1,45
   17444:	f10ff06f          	j	16b54 <_vfiprintf_r+0x548>
   17448:	0006e783          	lwu	a5,0(a3)
   1744c:	00868693          	addi	a3,a3,8
   17450:	00d13423          	sd	a3,8(sp)
   17454:	905ff06f          	j	16d58 <_vfiprintf_r+0x74c>
   17458:	00813703          	ld	a4,8(sp)
   1745c:	04037313          	andi	t1,t1,64
   17460:	00073783          	ld	a5,0(a4)
   17464:	00870713          	addi	a4,a4,8
   17468:	00e13423          	sd	a4,8(sp)
   1746c:	08030063          	beqz	t1,174ec <_vfiprintf_r+0xee0>
   17470:	05815703          	lhu	a4,88(sp)
   17474:	00e79023          	sh	a4,0(a5)
   17478:	a84ff06f          	j	166fc <_vfiprintf_r+0xf0>
   1747c:	00072783          	lw	a5,0(a4)
   17480:	00870713          	addi	a4,a4,8
   17484:	00e13423          	sd	a4,8(sp)
   17488:	eb8ff06f          	j	16b40 <_vfiprintf_r+0x534>
   1748c:	07010613          	addi	a2,sp,112
   17490:	000d0593          	mv	a1,s10
   17494:	000a8513          	mv	a0,s5
   17498:	02513823          	sd	t0,48(sp)
   1749c:	02713423          	sd	t2,40(sp)
   174a0:	02613023          	sd	t1,32(sp)
   174a4:	864ff0ef          	jal	16508 <__sprint_r.part.0>
   174a8:	bc0516e3          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   174ac:	07812603          	lw	a2,120(sp)
   174b0:	08013783          	ld	a5,128(sp)
   174b4:	000c8413          	mv	s0,s9
   174b8:	0016059b          	addiw	a1,a2,1
   174bc:	03013283          	ld	t0,48(sp)
   174c0:	02813383          	ld	t2,40(sp)
   174c4:	02013303          	ld	t1,32(sp)
   174c8:	9c9ff06f          	j	16e90 <_vfiprintf_r+0x884>
   174cc:	fff00513          	li	a0,-1
   174d0:	b48ff06f          	j	16818 <_vfiprintf_r+0x20c>
   174d4:	000c8413          	mv	s0,s9
   174d8:	acdff06f          	j	16fa4 <_vfiprintf_r+0x998>
   174dc:	00000613          	li	a2,0
   174e0:	00100593          	li	a1,1
   174e4:	000c8413          	mv	s0,s9
   174e8:	9e9ff06f          	j	16ed0 <_vfiprintf_r+0x8c4>
   174ec:	05812703          	lw	a4,88(sp)
   174f0:	00e7a023          	sw	a4,0(a5)
   174f4:	a08ff06f          	j	166fc <_vfiprintf_r+0xf0>
   174f8:	08013783          	ld	a5,128(sp)
   174fc:	b6078ce3          	beqz	a5,17074 <_vfiprintf_r+0xa68>
   17500:	07010613          	addi	a2,sp,112
   17504:	000d0593          	mv	a1,s10
   17508:	000a8513          	mv	a0,s5
   1750c:	ffdfe0ef          	jal	16508 <__sprint_r.part.0>
   17510:	b65ff06f          	j	17074 <_vfiprintf_r+0xa68>
   17514:	000b8513          	mv	a0,s7
   17518:	02613023          	sd	t1,32(sp)
   1751c:	f1dfe0ef          	jal	16438 <strlen>
   17520:	00050a1b          	sext.w	s4,a0
   17524:	06714583          	lbu	a1,103(sp)
   17528:	01b13423          	sd	s11,8(sp)
   1752c:	00000493          	li	s1,0
   17530:	02013303          	ld	t1,32(sp)
   17534:	ba4ff06f          	j	168d8 <_vfiprintf_r+0x2cc>
   17538:	07010613          	addi	a2,sp,112
   1753c:	000d0593          	mv	a1,s10
   17540:	000a8513          	mv	a0,s5
   17544:	02613023          	sd	t1,32(sp)
   17548:	fc1fe0ef          	jal	16508 <__sprint_r.part.0>
   1754c:	b20514e3          	bnez	a0,17074 <_vfiprintf_r+0xa68>
   17550:	07812603          	lw	a2,120(sp)
   17554:	08013783          	ld	a5,128(sp)
   17558:	000c8413          	mv	s0,s9
   1755c:	0016059b          	addiw	a1,a2,1
   17560:	02013303          	ld	t1,32(sp)
   17564:	975ff06f          	j	16ed8 <_vfiprintf_r+0x8cc>
   17568:	07812603          	lw	a2,120(sp)
   1756c:	08013783          	ld	a5,128(sp)
   17570:	05813823          	sd	s8,80(sp)
   17574:	0016061b          	addiw	a2,a2,1
   17578:	bfcff06f          	j	16974 <_vfiprintf_r+0x368>
   1757c:	00000593          	li	a1,0
   17580:	00200613          	li	a2,2
   17584:	00100513          	li	a0,1
   17588:	08a60263          	beq	a2,a0,1760c <_vfiprintf_r+0x1000>
   1758c:	00200513          	li	a0,2
   17590:	08a61263          	bne	a2,a0,17614 <_vfiprintf_r+0x1008>
   17594:	00070313          	mv	t1,a4
   17598:	c49ff06f          	j	171e0 <_vfiprintf_r+0xbd4>
   1759c:	00600793          	li	a5,6
   175a0:	0097f463          	bleu	s1,a5,175a8 <_vfiprintf_r+0xf9c>
   175a4:	00078493          	mv	s1,a5
   175a8:	00048a13          	mv	s4,s1
   175ac:	00048993          	mv	s3,s1
   175b0:	0604c663          	bltz	s1,1761c <_vfiprintf_r+0x1010>
   175b4:	00019737          	lui	a4,0x19
   175b8:	01b13423          	sd	s11,8(sp)
   175bc:	2a870b93          	addi	s7,a4,680 # 192a8 <zeroes.4137+0x68>
   175c0:	00000493          	li	s1,0
   175c4:	b28ff06f          	j	168ec <_vfiprintf_r+0x2e0>
   175c8:	00030713          	mv	a4,t1
   175cc:	02d00593          	li	a1,45
   175d0:	00100613          	li	a2,1
   175d4:	fb1ff06f          	j	17584 <_vfiprintf_r+0xf78>
   175d8:	07812583          	lw	a1,120(sp)
   175dc:	05813823          	sd	s8,80(sp)
   175e0:	0015859b          	addiw	a1,a1,1
   175e4:	a29ff06f          	j	1700c <_vfiprintf_r+0xa00>
   175e8:	00019737          	lui	a4,0x19
   175ec:	00058513          	mv	a0,a1
   175f0:	24070d93          	addi	s11,a4,576 # 19240 <zeroes.4137>
   175f4:	c60ff06f          	j	16a54 <_vfiprintf_r+0x448>
   175f8:	00048a13          	mv	s4,s1
   175fc:	06714583          	lbu	a1,103(sp)
   17600:	01b13423          	sd	s11,8(sp)
   17604:	00000493          	li	s1,0
   17608:	ad0ff06f          	j	168d8 <_vfiprintf_r+0x2cc>
   1760c:	00070313          	mv	t1,a4
   17610:	d44ff06f          	j	16b54 <_vfiprintf_r+0x548>
   17614:	00070313          	mv	t1,a4
   17618:	da8ff06f          	j	16bc0 <_vfiprintf_r+0x5b4>
   1761c:	00000993          	li	s3,0
   17620:	f95ff06f          	j	175b4 <_vfiprintf_r+0xfa8>
   17624:	00813783          	ld	a5,8(sp)
   17628:	00080b13          	mv	s6,a6
   1762c:	0007a483          	lw	s1,0(a5)
   17630:	00878b93          	addi	s7,a5,8
   17634:	01713423          	sd	s7,8(sp)
   17638:	9804de63          	bgez	s1,167d4 <_vfiprintf_r+0x1c8>
   1763c:	fff00493          	li	s1,-1
   17640:	000b0813          	mv	a6,s6
   17644:	954ff06f          	j	16798 <_vfiprintf_r+0x18c>
   17648:	07d103a3          	sb	t4,103(sp)
   1764c:	f44ff06f          	j	16d90 <_vfiprintf_r+0x784>
   17650:	07d103a3          	sb	t4,103(sp)
   17654:	ee0ff06f          	j	16d34 <_vfiprintf_r+0x728>
   17658:	07d103a3          	sb	t4,103(sp)
   1765c:	fb0ff06f          	j	16e0c <_vfiprintf_r+0x800>
   17660:	00137793          	andi	a5,t1,1
   17664:	00078c63          	beqz	a5,1767c <_vfiprintf_r+0x1070>
   17668:	03000793          	li	a5,48
   1766c:	0af107a3          	sb	a5,175(sp)
   17670:	05c12a03          	lw	s4,92(sp)
   17674:	0af10b93          	addi	s7,sp,175
   17678:	a60ff06f          	j	168d8 <_vfiprintf_r+0x2cc>
   1767c:	00000a13          	li	s4,0
   17680:	000c8b93          	mv	s7,s9
   17684:	a54ff06f          	j	168d8 <_vfiprintf_r+0x2cc>
   17688:	07d103a3          	sb	t4,103(sp)
   1768c:	cfcff06f          	j	16b88 <_vfiprintf_r+0x57c>
   17690:	07d103a3          	sb	t4,103(sp)
   17694:	c90ff06f          	j	16b24 <_vfiprintf_r+0x518>
   17698:	07d103a3          	sb	t4,103(sp)
   1769c:	d94ff06f          	j	16c30 <_vfiprintf_r+0x624>
   176a0:	07d103a3          	sb	t4,103(sp)
   176a4:	d64ff06f          	j	16c08 <_vfiprintf_r+0x5fc>

00000000000176a8 <vfiprintf>:
   176a8:	00060693          	mv	a3,a2
   176ac:	00058613          	mv	a2,a1
   176b0:	00050593          	mv	a1,a0
   176b4:	8101b503          	ld	a0,-2032(gp) # 1b350 <_impure_ptr>
   176b8:	f55fe06f          	j	1660c <_vfiprintf_r>

00000000000176bc <__sbprintf>:
   176bc:	0105d783          	lhu	a5,16(a1)
   176c0:	0ac5ae03          	lw	t3,172(a1)
   176c4:	0125d303          	lhu	t1,18(a1)
   176c8:	0305b883          	ld	a7,48(a1)
   176cc:	0405b803          	ld	a6,64(a1)
   176d0:	b3010113          	addi	sp,sp,-1232
   176d4:	ffd7f793          	andi	a5,a5,-3
   176d8:	40000713          	li	a4,1024
   176dc:	4c813023          	sd	s0,1216(sp)
   176e0:	00f11823          	sh	a5,16(sp)
   176e4:	00058413          	mv	s0,a1
   176e8:	0b010793          	addi	a5,sp,176
   176ec:	00010593          	mv	a1,sp
   176f0:	4a913c23          	sd	s1,1208(sp)
   176f4:	4b213823          	sd	s2,1200(sp)
   176f8:	4c113423          	sd	ra,1224(sp)
   176fc:	00050913          	mv	s2,a0
   17700:	0bc12623          	sw	t3,172(sp)
   17704:	00611923          	sh	t1,18(sp)
   17708:	03113823          	sd	a7,48(sp)
   1770c:	05013023          	sd	a6,64(sp)
   17710:	00f13023          	sd	a5,0(sp)
   17714:	00f13c23          	sd	a5,24(sp)
   17718:	00e12623          	sw	a4,12(sp)
   1771c:	02e12023          	sw	a4,32(sp)
   17720:	02012423          	sw	zero,40(sp)
   17724:	ee9fe0ef          	jal	1660c <_vfiprintf_r>
   17728:	00050493          	mv	s1,a0
   1772c:	00054a63          	bltz	a0,17740 <__sbprintf+0x84>
   17730:	00010593          	mv	a1,sp
   17734:	00090513          	mv	a0,s2
   17738:	b54fc0ef          	jal	13a8c <_fflush_r>
   1773c:	02051c63          	bnez	a0,17774 <__sbprintf+0xb8>
   17740:	01015783          	lhu	a5,16(sp)
   17744:	0407f793          	andi	a5,a5,64
   17748:	00078863          	beqz	a5,17758 <__sbprintf+0x9c>
   1774c:	01045783          	lhu	a5,16(s0)
   17750:	0407e793          	ori	a5,a5,64
   17754:	00f41823          	sh	a5,16(s0)
   17758:	4c813083          	ld	ra,1224(sp)
   1775c:	00048513          	mv	a0,s1
   17760:	4c013403          	ld	s0,1216(sp)
   17764:	4b813483          	ld	s1,1208(sp)
   17768:	4b013903          	ld	s2,1200(sp)
   1776c:	4d010113          	addi	sp,sp,1232
   17770:	00008067          	ret
   17774:	fff00493          	li	s1,-1
   17778:	fc9ff06f          	j	17740 <__sbprintf+0x84>

000000000001777c <_calloc_r>:
   1777c:	02c585b3          	mul	a1,a1,a2
   17780:	ff010113          	addi	sp,sp,-16
   17784:	00113423          	sd	ra,8(sp)
   17788:	00813023          	sd	s0,0(sp)
   1778c:	ef9fc0ef          	jal	14684 <_malloc_r>
   17790:	08050c63          	beqz	a0,17828 <_calloc_r+0xac>
   17794:	ff853603          	ld	a2,-8(a0)
   17798:	04800713          	li	a4,72
   1779c:	00050413          	mv	s0,a0
   177a0:	ffc67613          	andi	a2,a2,-4
   177a4:	ff860613          	addi	a2,a2,-8
   177a8:	04c76e63          	bltu	a4,a2,17804 <_calloc_r+0x88>
   177ac:	02700693          	li	a3,39
   177b0:	00050793          	mv	a5,a0
   177b4:	02c6f863          	bleu	a2,a3,177e4 <_calloc_r+0x68>
   177b8:	00053023          	sd	zero,0(a0)
   177bc:	00053423          	sd	zero,8(a0)
   177c0:	03700793          	li	a5,55
   177c4:	04c7fe63          	bleu	a2,a5,17820 <_calloc_r+0xa4>
   177c8:	00053823          	sd	zero,16(a0)
   177cc:	00053c23          	sd	zero,24(a0)
   177d0:	02050793          	addi	a5,a0,32
   177d4:	00e61863          	bne	a2,a4,177e4 <_calloc_r+0x68>
   177d8:	02053023          	sd	zero,32(a0)
   177dc:	03050793          	addi	a5,a0,48
   177e0:	02053423          	sd	zero,40(a0)
   177e4:	0007b023          	sd	zero,0(a5)
   177e8:	0007b423          	sd	zero,8(a5)
   177ec:	0007b823          	sd	zero,16(a5)
   177f0:	00040513          	mv	a0,s0
   177f4:	00813083          	ld	ra,8(sp)
   177f8:	00013403          	ld	s0,0(sp)
   177fc:	01010113          	addi	sp,sp,16
   17800:	00008067          	ret
   17804:	00000593          	li	a1,0
   17808:	ff4fd0ef          	jal	14ffc <memset>
   1780c:	00813083          	ld	ra,8(sp)
   17810:	00040513          	mv	a0,s0
   17814:	00013403          	ld	s0,0(sp)
   17818:	01010113          	addi	sp,sp,16
   1781c:	00008067          	ret
   17820:	01050793          	addi	a5,a0,16
   17824:	fc1ff06f          	j	177e4 <_calloc_r+0x68>
   17828:	00000513          	li	a0,0
   1782c:	fc9ff06f          	j	177f4 <_calloc_r+0x78>

0000000000017830 <_fclose_r>:
   17830:	0e058e63          	beqz	a1,1792c <_fclose_r+0xfc>
   17834:	fe010113          	addi	sp,sp,-32
   17838:	00813823          	sd	s0,16(sp)
   1783c:	00913423          	sd	s1,8(sp)
   17840:	00113c23          	sd	ra,24(sp)
   17844:	01213023          	sd	s2,0(sp)
   17848:	00050493          	mv	s1,a0
   1784c:	00058413          	mv	s0,a1
   17850:	00050663          	beqz	a0,1785c <_fclose_r+0x2c>
   17854:	05052783          	lw	a5,80(a0)
   17858:	0a078a63          	beqz	a5,1790c <_fclose_r+0xdc>
   1785c:	01041783          	lh	a5,16(s0)
   17860:	00000513          	li	a0,0
   17864:	00079e63          	bnez	a5,17880 <_fclose_r+0x50>
   17868:	01813083          	ld	ra,24(sp)
   1786c:	01013403          	ld	s0,16(sp)
   17870:	00813483          	ld	s1,8(sp)
   17874:	00013903          	ld	s2,0(sp)
   17878:	02010113          	addi	sp,sp,32
   1787c:	00008067          	ret
   17880:	00040593          	mv	a1,s0
   17884:	00048513          	mv	a0,s1
   17888:	f99fb0ef          	jal	13820 <__sflush_r>
   1788c:	05043783          	ld	a5,80(s0)
   17890:	00050913          	mv	s2,a0
   17894:	00078a63          	beqz	a5,178a8 <_fclose_r+0x78>
   17898:	03043583          	ld	a1,48(s0)
   1789c:	00048513          	mv	a0,s1
   178a0:	000780e7          	jalr	a5
   178a4:	06054863          	bltz	a0,17914 <_fclose_r+0xe4>
   178a8:	01045783          	lhu	a5,16(s0)
   178ac:	0807f793          	andi	a5,a5,128
   178b0:	06079663          	bnez	a5,1791c <_fclose_r+0xec>
   178b4:	05843583          	ld	a1,88(s0)
   178b8:	00058c63          	beqz	a1,178d0 <_fclose_r+0xa0>
   178bc:	07440793          	addi	a5,s0,116
   178c0:	00f58663          	beq	a1,a5,178cc <_fclose_r+0x9c>
   178c4:	00048513          	mv	a0,s1
   178c8:	ec8fc0ef          	jal	13f90 <_free_r>
   178cc:	04043c23          	sd	zero,88(s0)
   178d0:	07843583          	ld	a1,120(s0)
   178d4:	00058863          	beqz	a1,178e4 <_fclose_r+0xb4>
   178d8:	00048513          	mv	a0,s1
   178dc:	eb4fc0ef          	jal	13f90 <_free_r>
   178e0:	06043c23          	sd	zero,120(s0)
   178e4:	d64fc0ef          	jal	13e48 <__sfp_lock_acquire>
   178e8:	00041823          	sh	zero,16(s0)
   178ec:	d60fc0ef          	jal	13e4c <__sfp_lock_release>
   178f0:	01813083          	ld	ra,24(sp)
   178f4:	00090513          	mv	a0,s2
   178f8:	01013403          	ld	s0,16(sp)
   178fc:	00813483          	ld	s1,8(sp)
   17900:	00013903          	ld	s2,0(sp)
   17904:	02010113          	addi	sp,sp,32
   17908:	00008067          	ret
   1790c:	d2cfc0ef          	jal	13e38 <__sinit>
   17910:	f4dff06f          	j	1785c <_fclose_r+0x2c>
   17914:	fff00913          	li	s2,-1
   17918:	f91ff06f          	j	178a8 <_fclose_r+0x78>
   1791c:	01843583          	ld	a1,24(s0)
   17920:	00048513          	mv	a0,s1
   17924:	e6cfc0ef          	jal	13f90 <_free_r>
   17928:	f8dff06f          	j	178b4 <_fclose_r+0x84>
   1792c:	00000513          	li	a0,0
   17930:	00008067          	ret

0000000000017934 <fclose>:
   17934:	00050593          	mv	a1,a0
   17938:	8101b503          	ld	a0,-2032(gp) # 1b350 <_impure_ptr>
   1793c:	ef5ff06f          	j	17830 <_fclose_r>

0000000000017940 <__fputwc>:
   17940:	fb010113          	addi	sp,sp,-80
   17944:	04813023          	sd	s0,64(sp)
   17948:	03413023          	sd	s4,32(sp)
   1794c:	01513c23          	sd	s5,24(sp)
   17950:	04113423          	sd	ra,72(sp)
   17954:	02913c23          	sd	s1,56(sp)
   17958:	03213823          	sd	s2,48(sp)
   1795c:	03313423          	sd	s3,40(sp)
   17960:	01613823          	sd	s6,16(sp)
   17964:	00050a93          	mv	s5,a0
   17968:	00058a13          	mv	s4,a1
   1796c:	00060413          	mv	s0,a2
   17970:	b25fc0ef          	jal	14494 <__locale_mb_cur_max>
   17974:	00100793          	li	a5,1
   17978:	10f50663          	beq	a0,a5,17a84 <__fputwc+0x144>
   1797c:	00810493          	addi	s1,sp,8
   17980:	0a440693          	addi	a3,s0,164
   17984:	000a0613          	mv	a2,s4
   17988:	00048593          	mv	a1,s1
   1798c:	000a8513          	mv	a0,s5
   17990:	699000ef          	jal	18828 <_wcrtomb_r>
   17994:	fff00793          	li	a5,-1
   17998:	00050993          	mv	s3,a0
   1799c:	08f50e63          	beq	a0,a5,17a38 <__fputwc+0xf8>
   179a0:	10050263          	beqz	a0,17aa4 <__fputwc+0x164>
   179a4:	00814583          	lbu	a1,8(sp)
   179a8:	00c42783          	lw	a5,12(s0)
   179ac:	00000913          	li	s2,0
   179b0:	00a00b13          	li	s6,10
   179b4:	fff7879b          	addiw	a5,a5,-1
   179b8:	00f42623          	sw	a5,12(s0)
   179bc:	0207cc63          	bltz	a5,179f4 <__fputwc+0xb4>
   179c0:	00043783          	ld	a5,0(s0)
   179c4:	00b78023          	sb	a1,0(a5)
   179c8:	00043783          	ld	a5,0(s0)
   179cc:	00178793          	addi	a5,a5,1
   179d0:	00f43023          	sd	a5,0(s0)
   179d4:	00190913          	addi	s2,s2,1
   179d8:	00148493          	addi	s1,s1,1
   179dc:	0d397463          	bleu	s3,s2,17aa4 <__fputwc+0x164>
   179e0:	00c42783          	lw	a5,12(s0)
   179e4:	0004c583          	lbu	a1,0(s1)
   179e8:	fff7879b          	addiw	a5,a5,-1
   179ec:	00f42623          	sw	a5,12(s0)
   179f0:	fc07d8e3          	bgez	a5,179c0 <__fputwc+0x80>
   179f4:	02842703          	lw	a4,40(s0)
   179f8:	06e7ca63          	blt	a5,a4,17a6c <__fputwc+0x12c>
   179fc:	00043783          	ld	a5,0(s0)
   17a00:	00b78023          	sb	a1,0(a5)
   17a04:	00043783          	ld	a5,0(s0)
   17a08:	0007c703          	lbu	a4,0(a5)
   17a0c:	00178793          	addi	a5,a5,1
   17a10:	fd6710e3          	bne	a4,s6,179d0 <__fputwc+0x90>
   17a14:	00040613          	mv	a2,s0
   17a18:	000b0593          	mv	a1,s6
   17a1c:	000a8513          	mv	a0,s5
   17a20:	481000ef          	jal	186a0 <__swbuf_r>
   17a24:	0015051b          	addiw	a0,a0,1
   17a28:	00153513          	seqz	a0,a0
   17a2c:	fa0504e3          	beqz	a0,179d4 <__fputwc+0x94>
   17a30:	fff00513          	li	a0,-1
   17a34:	0100006f          	j	17a44 <__fputwc+0x104>
   17a38:	01045783          	lhu	a5,16(s0)
   17a3c:	0407e793          	ori	a5,a5,64
   17a40:	00f41823          	sh	a5,16(s0)
   17a44:	04813083          	ld	ra,72(sp)
   17a48:	04013403          	ld	s0,64(sp)
   17a4c:	03813483          	ld	s1,56(sp)
   17a50:	03013903          	ld	s2,48(sp)
   17a54:	02813983          	ld	s3,40(sp)
   17a58:	02013a03          	ld	s4,32(sp)
   17a5c:	01813a83          	ld	s5,24(sp)
   17a60:	01013b03          	ld	s6,16(sp)
   17a64:	05010113          	addi	sp,sp,80
   17a68:	00008067          	ret
   17a6c:	00040613          	mv	a2,s0
   17a70:	000a8513          	mv	a0,s5
   17a74:	42d000ef          	jal	186a0 <__swbuf_r>
   17a78:	0015051b          	addiw	a0,a0,1
   17a7c:	00153513          	seqz	a0,a0
   17a80:	fadff06f          	j	17a2c <__fputwc+0xec>
   17a84:	fffa079b          	addiw	a5,s4,-1
   17a88:	0fe00713          	li	a4,254
   17a8c:	eef768e3          	bltu	a4,a5,1797c <__fputwc+0x3c>
   17a90:	0ffa7593          	andi	a1,s4,255
   17a94:	00b10423          	sb	a1,8(sp)
   17a98:	00100993          	li	s3,1
   17a9c:	00810493          	addi	s1,sp,8
   17aa0:	f09ff06f          	j	179a8 <__fputwc+0x68>
   17aa4:	000a0513          	mv	a0,s4
   17aa8:	f9dff06f          	j	17a44 <__fputwc+0x104>

0000000000017aac <_fputwc_r>:
   17aac:	01061783          	lh	a5,16(a2)
   17ab0:	00002737          	lui	a4,0x2
   17ab4:	03279693          	slli	a3,a5,0x32
   17ab8:	0006cc63          	bltz	a3,17ad0 <_fputwc_r+0x24>
   17abc:	0ac62683          	lw	a3,172(a2)
   17ac0:	00e7e7b3          	or	a5,a5,a4
   17ac4:	00f61823          	sh	a5,16(a2)
   17ac8:	00e6e733          	or	a4,a3,a4
   17acc:	0ae62623          	sw	a4,172(a2)
   17ad0:	e71ff06f          	j	17940 <__fputwc>

0000000000017ad4 <fputwc>:
   17ad4:	fd010113          	addi	sp,sp,-48
   17ad8:	02813023          	sd	s0,32(sp)
   17adc:	8101b403          	ld	s0,-2032(gp) # 1b350 <_impure_ptr>
   17ae0:	00913c23          	sd	s1,24(sp)
   17ae4:	02113423          	sd	ra,40(sp)
   17ae8:	00050493          	mv	s1,a0
   17aec:	00058613          	mv	a2,a1
   17af0:	00040663          	beqz	s0,17afc <fputwc+0x28>
   17af4:	05042783          	lw	a5,80(s0)
   17af8:	04078263          	beqz	a5,17b3c <fputwc+0x68>
   17afc:	01061783          	lh	a5,16(a2)
   17b00:	00002737          	lui	a4,0x2
   17b04:	03279693          	slli	a3,a5,0x32
   17b08:	0006cc63          	bltz	a3,17b20 <fputwc+0x4c>
   17b0c:	0ac62683          	lw	a3,172(a2)
   17b10:	00e7e7b3          	or	a5,a5,a4
   17b14:	00f61823          	sh	a5,16(a2)
   17b18:	00e6e733          	or	a4,a3,a4
   17b1c:	0ae62623          	sw	a4,172(a2)
   17b20:	00048593          	mv	a1,s1
   17b24:	00040513          	mv	a0,s0
   17b28:	02813083          	ld	ra,40(sp)
   17b2c:	02013403          	ld	s0,32(sp)
   17b30:	01813483          	ld	s1,24(sp)
   17b34:	03010113          	addi	sp,sp,48
   17b38:	e09ff06f          	j	17940 <__fputwc>
   17b3c:	00040513          	mv	a0,s0
   17b40:	00b13423          	sd	a1,8(sp)
   17b44:	af4fc0ef          	jal	13e38 <__sinit>
   17b48:	00813603          	ld	a2,8(sp)
   17b4c:	fb1ff06f          	j	17afc <fputwc+0x28>

0000000000017b50 <__sfvwrite_r>:
   17b50:	01063783          	ld	a5,16(a2)
   17b54:	26078a63          	beqz	a5,17dc8 <__sfvwrite_r+0x278>
   17b58:	0105d703          	lhu	a4,16(a1)
   17b5c:	f9010113          	addi	sp,sp,-112
   17b60:	06813023          	sd	s0,96(sp)
   17b64:	03513c23          	sd	s5,56(sp)
   17b68:	03613823          	sd	s6,48(sp)
   17b6c:	06113423          	sd	ra,104(sp)
   17b70:	04913c23          	sd	s1,88(sp)
   17b74:	05213823          	sd	s2,80(sp)
   17b78:	05313423          	sd	s3,72(sp)
   17b7c:	05413023          	sd	s4,64(sp)
   17b80:	03713423          	sd	s7,40(sp)
   17b84:	03813023          	sd	s8,32(sp)
   17b88:	01913c23          	sd	s9,24(sp)
   17b8c:	01a13823          	sd	s10,16(sp)
   17b90:	01b13423          	sd	s11,8(sp)
   17b94:	00877793          	andi	a5,a4,8
   17b98:	00058413          	mv	s0,a1
   17b9c:	00050b13          	mv	s6,a0
   17ba0:	00060a93          	mv	s5,a2
   17ba4:	0a078863          	beqz	a5,17c54 <__sfvwrite_r+0x104>
   17ba8:	0185b783          	ld	a5,24(a1)
   17bac:	0a078463          	beqz	a5,17c54 <__sfvwrite_r+0x104>
   17bb0:	00277793          	andi	a5,a4,2
   17bb4:	000ab483          	ld	s1,0(s5)
   17bb8:	0c078063          	beqz	a5,17c78 <__sfvwrite_r+0x128>
   17bbc:	80000a37          	lui	s4,0x80000
   17bc0:	00000993          	li	s3,0
   17bc4:	00000913          	li	s2,0
   17bc8:	c00a4a13          	xori	s4,s4,-1024
   17bcc:	00098613          	mv	a2,s3
   17bd0:	000b0513          	mv	a0,s6
   17bd4:	1e090263          	beqz	s2,17db8 <__sfvwrite_r+0x268>
   17bd8:	00090693          	mv	a3,s2
   17bdc:	012a7463          	bleu	s2,s4,17be4 <__sfvwrite_r+0x94>
   17be0:	000a0693          	mv	a3,s4
   17be4:	04043783          	ld	a5,64(s0)
   17be8:	03043583          	ld	a1,48(s0)
   17bec:	0006869b          	sext.w	a3,a3
   17bf0:	000780e7          	jalr	a5
   17bf4:	22a05063          	blez	a0,17e14 <__sfvwrite_r+0x2c4>
   17bf8:	010ab783          	ld	a5,16(s5)
   17bfc:	00a989b3          	add	s3,s3,a0
   17c00:	40a90933          	sub	s2,s2,a0
   17c04:	40a78533          	sub	a0,a5,a0
   17c08:	00aab823          	sd	a0,16(s5)
   17c0c:	fc0510e3          	bnez	a0,17bcc <__sfvwrite_r+0x7c>
   17c10:	00000793          	li	a5,0
   17c14:	06813083          	ld	ra,104(sp)
   17c18:	00078513          	mv	a0,a5
   17c1c:	06013403          	ld	s0,96(sp)
   17c20:	05813483          	ld	s1,88(sp)
   17c24:	05013903          	ld	s2,80(sp)
   17c28:	04813983          	ld	s3,72(sp)
   17c2c:	04013a03          	ld	s4,64(sp)
   17c30:	03813a83          	ld	s5,56(sp)
   17c34:	03013b03          	ld	s6,48(sp)
   17c38:	02813b83          	ld	s7,40(sp)
   17c3c:	02013c03          	ld	s8,32(sp)
   17c40:	01813c83          	ld	s9,24(sp)
   17c44:	01013d03          	ld	s10,16(sp)
   17c48:	00813d83          	ld	s11,8(sp)
   17c4c:	07010113          	addi	sp,sp,112
   17c50:	00008067          	ret
   17c54:	00040593          	mv	a1,s0
   17c58:	000b0513          	mv	a0,s6
   17c5c:	cd0fa0ef          	jal	1212c <__swsetup_r>
   17c60:	fff00793          	li	a5,-1
   17c64:	fa0518e3          	bnez	a0,17c14 <__sfvwrite_r+0xc4>
   17c68:	01045703          	lhu	a4,16(s0)
   17c6c:	000ab483          	ld	s1,0(s5)
   17c70:	00277793          	andi	a5,a4,2
   17c74:	f40794e3          	bnez	a5,17bbc <__sfvwrite_r+0x6c>
   17c78:	00177793          	andi	a5,a4,1
   17c7c:	1a079663          	bnez	a5,17e28 <__sfvwrite_r+0x2d8>
   17c80:	80000bb7          	lui	s7,0x80000
   17c84:	ffebcc13          	xori	s8,s7,-2
   17c88:	00000c93          	li	s9,0
   17c8c:	00000913          	li	s2,0
   17c90:	fffbcb93          	not	s7,s7
   17c94:	10090a63          	beqz	s2,17da8 <__sfvwrite_r+0x258>
   17c98:	00c42983          	lw	s3,12(s0)
   17c9c:	20077793          	andi	a5,a4,512
   17ca0:	00098a13          	mv	s4,s3
   17ca4:	26078863          	beqz	a5,17f14 <__sfvwrite_r+0x3c4>
   17ca8:	2b396a63          	bltu	s2,s3,17f5c <__sfvwrite_r+0x40c>
   17cac:	48077793          	andi	a5,a4,1152
   17cb0:	2a078663          	beqz	a5,17f5c <__sfvwrite_r+0x40c>
   17cb4:	02042a03          	lw	s4,32(s0)
   17cb8:	01843583          	ld	a1,24(s0)
   17cbc:	00043d03          	ld	s10,0(s0)
   17cc0:	001a179b          	slliw	a5,s4,0x1
   17cc4:	01478a3b          	addw	s4,a5,s4
   17cc8:	01fa579b          	srliw	a5,s4,0x1f
   17ccc:	40bd0d3b          	subw	s10,s10,a1
   17cd0:	01478a3b          	addw	s4,a5,s4
   17cd4:	000d0993          	mv	s3,s10
   17cd8:	401a5a1b          	sraiw	s4,s4,0x1
   17cdc:	00198793          	addi	a5,s3,1
   17ce0:	000a0613          	mv	a2,s4
   17ce4:	012787b3          	add	a5,a5,s2
   17ce8:	00f67863          	bleu	a5,a2,17cf8 <__sfvwrite_r+0x1a8>
   17cec:	001d0a1b          	addiw	s4,s10,1
   17cf0:	01490a3b          	addw	s4,s2,s4
   17cf4:	000a0613          	mv	a2,s4
   17cf8:	40077713          	andi	a4,a4,1024
   17cfc:	2a070a63          	beqz	a4,17fb0 <__sfvwrite_r+0x460>
   17d00:	00060593          	mv	a1,a2
   17d04:	000b0513          	mv	a0,s6
   17d08:	97dfc0ef          	jal	14684 <_malloc_r>
   17d0c:	00050d93          	mv	s11,a0
   17d10:	2e050263          	beqz	a0,17ff4 <__sfvwrite_r+0x4a4>
   17d14:	01843583          	ld	a1,24(s0)
   17d18:	00098613          	mv	a2,s3
   17d1c:	9c0fd0ef          	jal	14edc <memcpy>
   17d20:	01045783          	lhu	a5,16(s0)
   17d24:	b7f7f793          	andi	a5,a5,-1153
   17d28:	0807e793          	ori	a5,a5,128
   17d2c:	00f41823          	sh	a5,16(s0)
   17d30:	41aa0d3b          	subw	s10,s4,s10
   17d34:	013d8533          	add	a0,s11,s3
   17d38:	03442023          	sw	s4,32(s0)
   17d3c:	01b43c23          	sd	s11,24(s0)
   17d40:	00a43023          	sd	a0,0(s0)
   17d44:	00090a13          	mv	s4,s2
   17d48:	01a42623          	sw	s10,12(s0)
   17d4c:	000a0d13          	mv	s10,s4
   17d50:	00090993          	mv	s3,s2
   17d54:	01497863          	bleu	s4,s2,17d64 <__sfvwrite_r+0x214>
   17d58:	00090d13          	mv	s10,s2
   17d5c:	00090993          	mv	s3,s2
   17d60:	00090a13          	mv	s4,s2
   17d64:	000d0613          	mv	a2,s10
   17d68:	000c8593          	mv	a1,s9
   17d6c:	298000ef          	jal	18004 <memmove>
   17d70:	00c42783          	lw	a5,12(s0)
   17d74:	00043603          	ld	a2,0(s0)
   17d78:	41478a3b          	subw	s4,a5,s4
   17d7c:	01a60633          	add	a2,a2,s10
   17d80:	01442623          	sw	s4,12(s0)
   17d84:	00c43023          	sd	a2,0(s0)
   17d88:	010ab503          	ld	a0,16(s5)
   17d8c:	013c8cb3          	add	s9,s9,s3
   17d90:	41390933          	sub	s2,s2,s3
   17d94:	413509b3          	sub	s3,a0,s3
   17d98:	013ab823          	sd	s3,16(s5)
   17d9c:	e6098ae3          	beqz	s3,17c10 <__sfvwrite_r+0xc0>
   17da0:	01045703          	lhu	a4,16(s0)
   17da4:	ee091ae3          	bnez	s2,17c98 <__sfvwrite_r+0x148>
   17da8:	0004bc83          	ld	s9,0(s1)
   17dac:	0084b903          	ld	s2,8(s1)
   17db0:	01048493          	addi	s1,s1,16
   17db4:	ee1ff06f          	j	17c94 <__sfvwrite_r+0x144>
   17db8:	0004b983          	ld	s3,0(s1)
   17dbc:	0084b903          	ld	s2,8(s1)
   17dc0:	01048493          	addi	s1,s1,16
   17dc4:	e09ff06f          	j	17bcc <__sfvwrite_r+0x7c>
   17dc8:	00000793          	li	a5,0
   17dcc:	00078513          	mv	a0,a5
   17dd0:	00008067          	ret
   17dd4:	01397463          	bleu	s3,s2,17ddc <__sfvwrite_r+0x28c>
   17dd8:	00090993          	mv	s3,s2
   17ddc:	00098613          	mv	a2,s3
   17de0:	000c8593          	mv	a1,s9
   17de4:	220000ef          	jal	18004 <memmove>
   17de8:	00c42783          	lw	a5,12(s0)
   17dec:	00043703          	ld	a4,0(s0)
   17df0:	413787bb          	subw	a5,a5,s3
   17df4:	01370733          	add	a4,a4,s3
   17df8:	00f42623          	sw	a5,12(s0)
   17dfc:	00e43023          	sd	a4,0(s0)
   17e00:	f80794e3          	bnez	a5,17d88 <__sfvwrite_r+0x238>
   17e04:	00040593          	mv	a1,s0
   17e08:	000b0513          	mv	a0,s6
   17e0c:	c81fb0ef          	jal	13a8c <_fflush_r>
   17e10:	f6050ce3          	beqz	a0,17d88 <__sfvwrite_r+0x238>
   17e14:	01041783          	lh	a5,16(s0)
   17e18:	0407e793          	ori	a5,a5,64
   17e1c:	00f41823          	sh	a5,16(s0)
   17e20:	fff00793          	li	a5,-1
   17e24:	df1ff06f          	j	17c14 <__sfvwrite_r+0xc4>
   17e28:	00000a13          	li	s4,0
   17e2c:	00000c13          	li	s8,0
   17e30:	00000d13          	li	s10,0
   17e34:	00000913          	li	s2,0
   17e38:	06090e63          	beqz	s2,17eb4 <__sfvwrite_r+0x364>
   17e3c:	140c0863          	beqz	s8,17f8c <__sfvwrite_r+0x43c>
   17e40:	000a0993          	mv	s3,s4
   17e44:	01497463          	bleu	s4,s2,17e4c <__sfvwrite_r+0x2fc>
   17e48:	00090993          	mv	s3,s2
   17e4c:	00043503          	ld	a0,0(s0)
   17e50:	01843783          	ld	a5,24(s0)
   17e54:	00098b93          	mv	s7,s3
   17e58:	02042683          	lw	a3,32(s0)
   17e5c:	00a7fa63          	bleu	a0,a5,17e70 <__sfvwrite_r+0x320>
   17e60:	00c42c83          	lw	s9,12(s0)
   17e64:	01968cbb          	addw	s9,a3,s9
   17e68:	000c8d93          	mv	s11,s9
   17e6c:	053dce63          	blt	s11,s3,17ec8 <__sfvwrite_r+0x378>
   17e70:	0ed9ca63          	blt	s3,a3,17f64 <__sfvwrite_r+0x414>
   17e74:	04043783          	ld	a5,64(s0)
   17e78:	03043583          	ld	a1,48(s0)
   17e7c:	000d0613          	mv	a2,s10
   17e80:	000b0513          	mv	a0,s6
   17e84:	000780e7          	jalr	a5
   17e88:	00050b93          	mv	s7,a0
   17e8c:	f8a054e3          	blez	a0,17e14 <__sfvwrite_r+0x2c4>
   17e90:	417a0a3b          	subw	s4,s4,s7
   17e94:	060a0463          	beqz	s4,17efc <__sfvwrite_r+0x3ac>
   17e98:	010ab783          	ld	a5,16(s5)
   17e9c:	017d0d33          	add	s10,s10,s7
   17ea0:	41790933          	sub	s2,s2,s7
   17ea4:	41778bb3          	sub	s7,a5,s7
   17ea8:	017ab823          	sd	s7,16(s5)
   17eac:	d60b82e3          	beqz	s7,17c10 <__sfvwrite_r+0xc0>
   17eb0:	f80916e3          	bnez	s2,17e3c <__sfvwrite_r+0x2ec>
   17eb4:	0004bd03          	ld	s10,0(s1)
   17eb8:	0084b903          	ld	s2,8(s1)
   17ebc:	00000c13          	li	s8,0
   17ec0:	01048493          	addi	s1,s1,16
   17ec4:	f75ff06f          	j	17e38 <__sfvwrite_r+0x2e8>
   17ec8:	000d0593          	mv	a1,s10
   17ecc:	000c8613          	mv	a2,s9
   17ed0:	134000ef          	jal	18004 <memmove>
   17ed4:	00043783          	ld	a5,0(s0)
   17ed8:	00040593          	mv	a1,s0
   17edc:	000b0513          	mv	a0,s6
   17ee0:	01b78db3          	add	s11,a5,s11
   17ee4:	01b43023          	sd	s11,0(s0)
   17ee8:	ba5fb0ef          	jal	13a8c <_fflush_r>
   17eec:	f20514e3          	bnez	a0,17e14 <__sfvwrite_r+0x2c4>
   17ef0:	000c8b93          	mv	s7,s9
   17ef4:	417a0a3b          	subw	s4,s4,s7
   17ef8:	fa0a10e3          	bnez	s4,17e98 <__sfvwrite_r+0x348>
   17efc:	00040593          	mv	a1,s0
   17f00:	000b0513          	mv	a0,s6
   17f04:	b89fb0ef          	jal	13a8c <_fflush_r>
   17f08:	f00516e3          	bnez	a0,17e14 <__sfvwrite_r+0x2c4>
   17f0c:	00000c13          	li	s8,0
   17f10:	f89ff06f          	j	17e98 <__sfvwrite_r+0x348>
   17f14:	00043503          	ld	a0,0(s0)
   17f18:	01843783          	ld	a5,24(s0)
   17f1c:	eaa7ece3          	bltu	a5,a0,17dd4 <__sfvwrite_r+0x284>
   17f20:	02042783          	lw	a5,32(s0)
   17f24:	eaf968e3          	bltu	s2,a5,17dd4 <__sfvwrite_r+0x284>
   17f28:	000b8693          	mv	a3,s7
   17f2c:	012c6463          	bltu	s8,s2,17f34 <__sfvwrite_r+0x3e4>
   17f30:	0009069b          	sext.w	a3,s2
   17f34:	02f6c6bb          	divw	a3,a3,a5
   17f38:	04043703          	ld	a4,64(s0)
   17f3c:	03043583          	ld	a1,48(s0)
   17f40:	000c8613          	mv	a2,s9
   17f44:	000b0513          	mv	a0,s6
   17f48:	02f686bb          	mulw	a3,a3,a5
   17f4c:	000700e7          	jalr	a4
   17f50:	eca052e3          	blez	a0,17e14 <__sfvwrite_r+0x2c4>
   17f54:	00050993          	mv	s3,a0
   17f58:	e31ff06f          	j	17d88 <__sfvwrite_r+0x238>
   17f5c:	00043503          	ld	a0,0(s0)
   17f60:	dedff06f          	j	17d4c <__sfvwrite_r+0x1fc>
   17f64:	00098613          	mv	a2,s3
   17f68:	000d0593          	mv	a1,s10
   17f6c:	098000ef          	jal	18004 <memmove>
   17f70:	00c42703          	lw	a4,12(s0)
   17f74:	00043783          	ld	a5,0(s0)
   17f78:	4137073b          	subw	a4,a4,s3
   17f7c:	013789b3          	add	s3,a5,s3
   17f80:	00e42623          	sw	a4,12(s0)
   17f84:	01343023          	sd	s3,0(s0)
   17f88:	f09ff06f          	j	17e90 <__sfvwrite_r+0x340>
   17f8c:	00090613          	mv	a2,s2
   17f90:	00a00593          	li	a1,10
   17f94:	000d0513          	mv	a0,s10
   17f98:	e5dfc0ef          	jal	14df4 <memchr>
   17f9c:	04050663          	beqz	a0,17fe8 <__sfvwrite_r+0x498>
   17fa0:	00150a13          	addi	s4,a0,1
   17fa4:	41aa0a3b          	subw	s4,s4,s10
   17fa8:	00100c13          	li	s8,1
   17fac:	e95ff06f          	j	17e40 <__sfvwrite_r+0x2f0>
   17fb0:	000b0513          	mv	a0,s6
   17fb4:	170000ef          	jal	18124 <_realloc_r>
   17fb8:	00050d93          	mv	s11,a0
   17fbc:	d6051ae3          	bnez	a0,17d30 <__sfvwrite_r+0x1e0>
   17fc0:	01843583          	ld	a1,24(s0)
   17fc4:	000b0513          	mv	a0,s6
   17fc8:	fc9fb0ef          	jal	13f90 <_free_r>
   17fcc:	01045783          	lhu	a5,16(s0)
   17fd0:	00c00713          	li	a4,12
   17fd4:	00eb2023          	sw	a4,0(s6)
   17fd8:	f7f7f793          	andi	a5,a5,-129
   17fdc:	0107979b          	slliw	a5,a5,0x10
   17fe0:	4107d79b          	sraiw	a5,a5,0x10
   17fe4:	e35ff06f          	j	17e18 <__sfvwrite_r+0x2c8>
   17fe8:	00190a1b          	addiw	s4,s2,1
   17fec:	00100c13          	li	s8,1
   17ff0:	e51ff06f          	j	17e40 <__sfvwrite_r+0x2f0>
   17ff4:	00c00793          	li	a5,12
   17ff8:	00fb2023          	sw	a5,0(s6)
   17ffc:	01041783          	lh	a5,16(s0)
   18000:	e19ff06f          	j	17e18 <__sfvwrite_r+0x2c8>

0000000000018004 <memmove>:
   18004:	02a5f863          	bleu	a0,a1,18034 <memmove+0x30>
   18008:	00c58733          	add	a4,a1,a2
   1800c:	02e57463          	bleu	a4,a0,18034 <memmove+0x30>
   18010:	00c507b3          	add	a5,a0,a2
   18014:	40c785b3          	sub	a1,a5,a2
   18018:	0e060263          	beqz	a2,180fc <memmove+0xf8>
   1801c:	fff70713          	addi	a4,a4,-1 # 1fff <_ftext-0xe001>
   18020:	00074683          	lbu	a3,0(a4)
   18024:	fff78793          	addi	a5,a5,-1
   18028:	00d78023          	sb	a3,0(a5)
   1802c:	fef598e3          	bne	a1,a5,1801c <memmove+0x18>
   18030:	00008067          	ret
   18034:	01f00893          	li	a7,31
   18038:	0cc8f463          	bleu	a2,a7,18100 <memmove+0xfc>
   1803c:	00a5e7b3          	or	a5,a1,a0
   18040:	0077f793          	andi	a5,a5,7
   18044:	0c079463          	bnez	a5,1810c <memmove+0x108>
   18048:	00058713          	mv	a4,a1
   1804c:	00050793          	mv	a5,a0
   18050:	00060693          	mv	a3,a2
   18054:	00073803          	ld	a6,0(a4)
   18058:	02078793          	addi	a5,a5,32
   1805c:	02070713          	addi	a4,a4,32
   18060:	ff07b023          	sd	a6,-32(a5)
   18064:	fe873803          	ld	a6,-24(a4)
   18068:	fe068693          	addi	a3,a3,-32
   1806c:	ff07b423          	sd	a6,-24(a5)
   18070:	ff073803          	ld	a6,-16(a4)
   18074:	ff07b823          	sd	a6,-16(a5)
   18078:	ff873803          	ld	a6,-8(a4)
   1807c:	ff07bc23          	sd	a6,-8(a5)
   18080:	fcd8eae3          	bltu	a7,a3,18054 <memmove+0x50>
   18084:	fe060713          	addi	a4,a2,-32
   18088:	fe077713          	andi	a4,a4,-32
   1808c:	02070713          	addi	a4,a4,32
   18090:	01f67e13          	andi	t3,a2,31
   18094:	00700313          	li	t1,7
   18098:	00e507b3          	add	a5,a0,a4
   1809c:	00e585b3          	add	a1,a1,a4
   180a0:	07c37c63          	bleu	t3,t1,18118 <memmove+0x114>
   180a4:	00058813          	mv	a6,a1
   180a8:	00078693          	mv	a3,a5
   180ac:	000e0713          	mv	a4,t3
   180b0:	00880813          	addi	a6,a6,8
   180b4:	ff883883          	ld	a7,-8(a6)
   180b8:	00868693          	addi	a3,a3,8
   180bc:	ff870713          	addi	a4,a4,-8
   180c0:	ff16bc23          	sd	a7,-8(a3)
   180c4:	fee366e3          	bltu	t1,a4,180b0 <memmove+0xac>
   180c8:	ff8e0713          	addi	a4,t3,-8
   180cc:	ff877713          	andi	a4,a4,-8
   180d0:	00870713          	addi	a4,a4,8
   180d4:	00767613          	andi	a2,a2,7
   180d8:	00e787b3          	add	a5,a5,a4
   180dc:	00e585b3          	add	a1,a1,a4
   180e0:	02060a63          	beqz	a2,18114 <memmove+0x110>
   180e4:	00c78633          	add	a2,a5,a2
   180e8:	00158593          	addi	a1,a1,1
   180ec:	fff5c703          	lbu	a4,-1(a1)
   180f0:	00178793          	addi	a5,a5,1
   180f4:	fee78fa3          	sb	a4,-1(a5)
   180f8:	fec798e3          	bne	a5,a2,180e8 <memmove+0xe4>
   180fc:	00008067          	ret
   18100:	00050793          	mv	a5,a0
   18104:	fe0610e3          	bnez	a2,180e4 <memmove+0xe0>
   18108:	00c0006f          	j	18114 <memmove+0x110>
   1810c:	00050793          	mv	a5,a0
   18110:	fd5ff06f          	j	180e4 <memmove+0xe0>
   18114:	00008067          	ret
   18118:	000e0613          	mv	a2,t3
   1811c:	fc0614e3          	bnez	a2,180e4 <memmove+0xe0>
   18120:	ff5ff06f          	j	18114 <memmove+0x110>

0000000000018124 <_realloc_r>:
   18124:	fb010113          	addi	sp,sp,-80
   18128:	02913c23          	sd	s1,56(sp)
   1812c:	04113423          	sd	ra,72(sp)
   18130:	04813023          	sd	s0,64(sp)
   18134:	03213823          	sd	s2,48(sp)
   18138:	03313423          	sd	s3,40(sp)
   1813c:	03413023          	sd	s4,32(sp)
   18140:	01513c23          	sd	s5,24(sp)
   18144:	01613823          	sd	s6,16(sp)
   18148:	01713423          	sd	s7,8(sp)
   1814c:	01813023          	sd	s8,0(sp)
   18150:	00060493          	mv	s1,a2
   18154:	1c058a63          	beqz	a1,18328 <_realloc_r+0x204>
   18158:	00058993          	mv	s3,a1
   1815c:	00050913          	mv	s2,a0
   18160:	f79fc0ef          	jal	150d8 <__malloc_lock>
   18164:	ff89b783          	ld	a5,-8(s3)
   18168:	01748413          	addi	s0,s1,23
   1816c:	02e00713          	li	a4,46
   18170:	ff098a93          	addi	s5,s3,-16
   18174:	ffc7fa13          	andi	s4,a5,-4
   18178:	0c877463          	bleu	s0,a4,18240 <_realloc_r+0x11c>
   1817c:	80000737          	lui	a4,0x80000
   18180:	ff047413          	andi	s0,s0,-16
   18184:	fff74713          	not	a4,a4
   18188:	14876a63          	bltu	a4,s0,182dc <_realloc_r+0x1b8>
   1818c:	14946863          	bltu	s0,s1,182dc <_realloc_r+0x1b8>
   18190:	0a8a5c63          	ble	s0,s4,18248 <_realloc_r+0x124>
   18194:	0001bb37          	lui	s6,0x1b
   18198:	b28b0b13          	addi	s6,s6,-1240 # 1ab28 <__malloc_av_>
   1819c:	010b3703          	ld	a4,16(s6)
   181a0:	014a86b3          	add	a3,s5,s4
   181a4:	2ee68e63          	beq	a3,a4,184a0 <_realloc_r+0x37c>
   181a8:	0086b703          	ld	a4,8(a3)
   181ac:	ffe77613          	andi	a2,a4,-2
   181b0:	00c68633          	add	a2,a3,a2
   181b4:	00863603          	ld	a2,8(a2)
   181b8:	00167613          	andi	a2,a2,1
   181bc:	0e060c63          	beqz	a2,182b4 <_realloc_r+0x190>
   181c0:	0017f793          	andi	a5,a5,1
   181c4:	26078063          	beqz	a5,18424 <_realloc_r+0x300>
   181c8:	00048593          	mv	a1,s1
   181cc:	00090513          	mv	a0,s2
   181d0:	cb4fc0ef          	jal	14684 <_malloc_r>
   181d4:	00050493          	mv	s1,a0
   181d8:	48050e63          	beqz	a0,18674 <_realloc_r+0x550>
   181dc:	ff89b783          	ld	a5,-8(s3)
   181e0:	ff050713          	addi	a4,a0,-16
   181e4:	ffe7f793          	andi	a5,a5,-2
   181e8:	00fa87b3          	add	a5,s5,a5
   181ec:	40f70e63          	beq	a4,a5,18608 <_realloc_r+0x4e4>
   181f0:	ff8a0613          	addi	a2,s4,-8 # ffffffff7ffffff8 <_gp+0xffffffff7ffe44b8>
   181f4:	04800793          	li	a5,72
   181f8:	3ec7e263          	bltu	a5,a2,185dc <_realloc_r+0x4b8>
   181fc:	02700713          	li	a4,39
   18200:	36c76663          	bltu	a4,a2,1856c <_realloc_r+0x448>
   18204:	00050793          	mv	a5,a0
   18208:	00098713          	mv	a4,s3
   1820c:	00073683          	ld	a3,0(a4) # ffffffff80000000 <_gp+0xffffffff7ffe44c0>
   18210:	00d7b023          	sd	a3,0(a5)
   18214:	00873683          	ld	a3,8(a4)
   18218:	00d7b423          	sd	a3,8(a5)
   1821c:	01073703          	ld	a4,16(a4)
   18220:	00e7b823          	sd	a4,16(a5)
   18224:	00098593          	mv	a1,s3
   18228:	00090513          	mv	a0,s2
   1822c:	d65fb0ef          	jal	13f90 <_free_r>
   18230:	00090513          	mv	a0,s2
   18234:	ea9fc0ef          	jal	150dc <__malloc_unlock>
   18238:	00048513          	mv	a0,s1
   1823c:	0480006f          	j	18284 <_realloc_r+0x160>
   18240:	02000413          	li	s0,32
   18244:	f49ff06f          	j	1818c <_realloc_r+0x68>
   18248:	00098493          	mv	s1,s3
   1824c:	408a07b3          	sub	a5,s4,s0
   18250:	01f00713          	li	a4,31
   18254:	08f76c63          	bltu	a4,a5,182ec <_realloc_r+0x1c8>
   18258:	008ab783          	ld	a5,8(s5)
   1825c:	014a8733          	add	a4,s5,s4
   18260:	0017f793          	andi	a5,a5,1
   18264:	0147e633          	or	a2,a5,s4
   18268:	00cab423          	sd	a2,8(s5)
   1826c:	00873783          	ld	a5,8(a4)
   18270:	0017e793          	ori	a5,a5,1
   18274:	00f73423          	sd	a5,8(a4)
   18278:	00090513          	mv	a0,s2
   1827c:	e61fc0ef          	jal	150dc <__malloc_unlock>
   18280:	00048513          	mv	a0,s1
   18284:	04813083          	ld	ra,72(sp)
   18288:	04013403          	ld	s0,64(sp)
   1828c:	03813483          	ld	s1,56(sp)
   18290:	03013903          	ld	s2,48(sp)
   18294:	02813983          	ld	s3,40(sp)
   18298:	02013a03          	ld	s4,32(sp)
   1829c:	01813a83          	ld	s5,24(sp)
   182a0:	01013b03          	ld	s6,16(sp)
   182a4:	00813b83          	ld	s7,8(sp)
   182a8:	00013c03          	ld	s8,0(sp)
   182ac:	05010113          	addi	sp,sp,80
   182b0:	00008067          	ret
   182b4:	ffc77713          	andi	a4,a4,-4
   182b8:	01470733          	add	a4,a4,s4
   182bc:	0a874063          	blt	a4,s0,1835c <_realloc_r+0x238>
   182c0:	0186b783          	ld	a5,24(a3)
   182c4:	0106b683          	ld	a3,16(a3)
   182c8:	00098493          	mv	s1,s3
   182cc:	00070a13          	mv	s4,a4
   182d0:	00f6bc23          	sd	a5,24(a3)
   182d4:	00d7b823          	sd	a3,16(a5)
   182d8:	f75ff06f          	j	1824c <_realloc_r+0x128>
   182dc:	00c00793          	li	a5,12
   182e0:	00f92023          	sw	a5,0(s2)
   182e4:	00000513          	li	a0,0
   182e8:	f9dff06f          	j	18284 <_realloc_r+0x160>
   182ec:	008ab703          	ld	a4,8(s5)
   182f0:	008a85b3          	add	a1,s5,s0
   182f4:	0017e693          	ori	a3,a5,1
   182f8:	00177713          	andi	a4,a4,1
   182fc:	00876433          	or	s0,a4,s0
   18300:	008ab423          	sd	s0,8(s5)
   18304:	00d5b423          	sd	a3,8(a1)
   18308:	00f587b3          	add	a5,a1,a5
   1830c:	0087b703          	ld	a4,8(a5)
   18310:	01058593          	addi	a1,a1,16
   18314:	00090513          	mv	a0,s2
   18318:	00176713          	ori	a4,a4,1
   1831c:	00e7b423          	sd	a4,8(a5)
   18320:	c71fb0ef          	jal	13f90 <_free_r>
   18324:	f55ff06f          	j	18278 <_realloc_r+0x154>
   18328:	04813083          	ld	ra,72(sp)
   1832c:	04013403          	ld	s0,64(sp)
   18330:	03813483          	ld	s1,56(sp)
   18334:	03013903          	ld	s2,48(sp)
   18338:	02813983          	ld	s3,40(sp)
   1833c:	02013a03          	ld	s4,32(sp)
   18340:	01813a83          	ld	s5,24(sp)
   18344:	01013b03          	ld	s6,16(sp)
   18348:	00813b83          	ld	s7,8(sp)
   1834c:	00013c03          	ld	s8,0(sp)
   18350:	00060593          	mv	a1,a2
   18354:	05010113          	addi	sp,sp,80
   18358:	b2cfc06f          	j	14684 <_malloc_r>
   1835c:	0017f793          	andi	a5,a5,1
   18360:	e60794e3          	bnez	a5,181c8 <_realloc_r+0xa4>
   18364:	ff09bb83          	ld	s7,-16(s3)
   18368:	417a8bb3          	sub	s7,s5,s7
   1836c:	008bb783          	ld	a5,8(s7) # ffffffff80000008 <_gp+0xffffffff7ffe44c8>
   18370:	ffc7f793          	andi	a5,a5,-4
   18374:	00f70b33          	add	s6,a4,a5
   18378:	0a8b4e63          	blt	s6,s0,18434 <_realloc_r+0x310>
   1837c:	0186b783          	ld	a5,24(a3)
   18380:	0106b703          	ld	a4,16(a3)
   18384:	ff8a0613          	addi	a2,s4,-8
   18388:	010b8493          	addi	s1,s7,16
   1838c:	00f73c23          	sd	a5,24(a4)
   18390:	00e7b823          	sd	a4,16(a5)
   18394:	010bb703          	ld	a4,16(s7)
   18398:	018bb783          	ld	a5,24(s7)
   1839c:	00f73c23          	sd	a5,24(a4)
   183a0:	00e7b823          	sd	a4,16(a5)
   183a4:	04800793          	li	a5,72
   183a8:	1ec7e463          	bltu	a5,a2,18590 <_realloc_r+0x46c>
   183ac:	02700713          	li	a4,39
   183b0:	00048793          	mv	a5,s1
   183b4:	04c77663          	bleu	a2,a4,18400 <_realloc_r+0x2dc>
   183b8:	0009b783          	ld	a5,0(s3)
   183bc:	00fbb823          	sd	a5,16(s7)
   183c0:	0089b783          	ld	a5,8(s3)
   183c4:	00fbbc23          	sd	a5,24(s7)
   183c8:	03700793          	li	a5,55
   183cc:	24c7f863          	bleu	a2,a5,1861c <_realloc_r+0x4f8>
   183d0:	0109b783          	ld	a5,16(s3)
   183d4:	02fbb023          	sd	a5,32(s7)
   183d8:	0189b783          	ld	a5,24(s3)
   183dc:	02fbb423          	sd	a5,40(s7)
   183e0:	04800793          	li	a5,72
   183e4:	0af61863          	bne	a2,a5,18494 <_realloc_r+0x370>
   183e8:	0209b703          	ld	a4,32(s3)
   183ec:	040b8793          	addi	a5,s7,64
   183f0:	03098993          	addi	s3,s3,48
   183f4:	02ebb823          	sd	a4,48(s7)
   183f8:	ff89b703          	ld	a4,-8(s3)
   183fc:	02ebbc23          	sd	a4,56(s7)
   18400:	0009b703          	ld	a4,0(s3)
   18404:	000b0a13          	mv	s4,s6
   18408:	000b8a93          	mv	s5,s7
   1840c:	00e7b023          	sd	a4,0(a5)
   18410:	0089b703          	ld	a4,8(s3)
   18414:	00e7b423          	sd	a4,8(a5)
   18418:	0109b703          	ld	a4,16(s3)
   1841c:	00e7b823          	sd	a4,16(a5)
   18420:	e2dff06f          	j	1824c <_realloc_r+0x128>
   18424:	ff09bb83          	ld	s7,-16(s3)
   18428:	417a8bb3          	sub	s7,s5,s7
   1842c:	008bb783          	ld	a5,8(s7)
   18430:	ffc7f793          	andi	a5,a5,-4
   18434:	00fa0b33          	add	s6,s4,a5
   18438:	d88b48e3          	blt	s6,s0,181c8 <_realloc_r+0xa4>
   1843c:	018bb783          	ld	a5,24(s7)
   18440:	010bb703          	ld	a4,16(s7)
   18444:	ff8a0613          	addi	a2,s4,-8
   18448:	04800693          	li	a3,72
   1844c:	00f73c23          	sd	a5,24(a4)
   18450:	00e7b823          	sd	a4,16(a5)
   18454:	010b8493          	addi	s1,s7,16
   18458:	12c6ec63          	bltu	a3,a2,18590 <_realloc_r+0x46c>
   1845c:	02700713          	li	a4,39
   18460:	00048793          	mv	a5,s1
   18464:	f8c77ee3          	bleu	a2,a4,18400 <_realloc_r+0x2dc>
   18468:	0009b783          	ld	a5,0(s3)
   1846c:	00fbb823          	sd	a5,16(s7)
   18470:	0089b783          	ld	a5,8(s3)
   18474:	00fbbc23          	sd	a5,24(s7)
   18478:	03700793          	li	a5,55
   1847c:	1ac7f063          	bleu	a2,a5,1861c <_realloc_r+0x4f8>
   18480:	0109b783          	ld	a5,16(s3)
   18484:	02fbb023          	sd	a5,32(s7)
   18488:	0189b783          	ld	a5,24(s3)
   1848c:	02fbb423          	sd	a5,40(s7)
   18490:	f4d60ce3          	beq	a2,a3,183e8 <_realloc_r+0x2c4>
   18494:	030b8793          	addi	a5,s7,48
   18498:	02098993          	addi	s3,s3,32
   1849c:	f65ff06f          	j	18400 <_realloc_r+0x2dc>
   184a0:	0086b703          	ld	a4,8(a3)
   184a4:	02040693          	addi	a3,s0,32
   184a8:	ffc77713          	andi	a4,a4,-4
   184ac:	01470733          	add	a4,a4,s4
   184b0:	0ed75c63          	ble	a3,a4,185a8 <_realloc_r+0x484>
   184b4:	0017f793          	andi	a5,a5,1
   184b8:	d00798e3          	bnez	a5,181c8 <_realloc_r+0xa4>
   184bc:	ff09bb83          	ld	s7,-16(s3)
   184c0:	417a8bb3          	sub	s7,s5,s7
   184c4:	008bb783          	ld	a5,8(s7)
   184c8:	ffc7f793          	andi	a5,a5,-4
   184cc:	00e78c33          	add	s8,a5,a4
   184d0:	f6dc42e3          	blt	s8,a3,18434 <_realloc_r+0x310>
   184d4:	018bb783          	ld	a5,24(s7)
   184d8:	010bb703          	ld	a4,16(s7)
   184dc:	ff8a0613          	addi	a2,s4,-8
   184e0:	04800693          	li	a3,72
   184e4:	00f73c23          	sd	a5,24(a4)
   184e8:	00e7b823          	sd	a4,16(a5)
   184ec:	010b8493          	addi	s1,s7,16
   184f0:	14c6ea63          	bltu	a3,a2,18644 <_realloc_r+0x520>
   184f4:	02700713          	li	a4,39
   184f8:	00048793          	mv	a5,s1
   184fc:	02c77263          	bleu	a2,a4,18520 <_realloc_r+0x3fc>
   18500:	0009b783          	ld	a5,0(s3)
   18504:	00fbb823          	sd	a5,16(s7)
   18508:	0089b783          	ld	a5,8(s3)
   1850c:	00fbbc23          	sd	a5,24(s7)
   18510:	03700793          	li	a5,55
   18514:	14c7e063          	bltu	a5,a2,18654 <_realloc_r+0x530>
   18518:	020b8793          	addi	a5,s7,32
   1851c:	01098993          	addi	s3,s3,16
   18520:	0009b703          	ld	a4,0(s3)
   18524:	00e7b023          	sd	a4,0(a5)
   18528:	0089b703          	ld	a4,8(s3)
   1852c:	00e7b423          	sd	a4,8(a5)
   18530:	0109b703          	ld	a4,16(s3)
   18534:	00e7b823          	sd	a4,16(a5)
   18538:	008b8733          	add	a4,s7,s0
   1853c:	408c07b3          	sub	a5,s8,s0
   18540:	00eb3823          	sd	a4,16(s6)
   18544:	0017e793          	ori	a5,a5,1
   18548:	00f73423          	sd	a5,8(a4)
   1854c:	008bb783          	ld	a5,8(s7)
   18550:	00090513          	mv	a0,s2
   18554:	0017f793          	andi	a5,a5,1
   18558:	0087e433          	or	s0,a5,s0
   1855c:	008bb423          	sd	s0,8(s7)
   18560:	b7dfc0ef          	jal	150dc <__malloc_unlock>
   18564:	00048513          	mv	a0,s1
   18568:	d1dff06f          	j	18284 <_realloc_r+0x160>
   1856c:	0009b703          	ld	a4,0(s3)
   18570:	00e53023          	sd	a4,0(a0)
   18574:	0089b703          	ld	a4,8(s3)
   18578:	00e53423          	sd	a4,8(a0)
   1857c:	03700713          	li	a4,55
   18580:	06c76463          	bltu	a4,a2,185e8 <_realloc_r+0x4c4>
   18584:	01050793          	addi	a5,a0,16
   18588:	01098713          	addi	a4,s3,16
   1858c:	c81ff06f          	j	1820c <_realloc_r+0xe8>
   18590:	00098593          	mv	a1,s3
   18594:	00048513          	mv	a0,s1
   18598:	a6dff0ef          	jal	18004 <memmove>
   1859c:	000b0a13          	mv	s4,s6
   185a0:	000b8a93          	mv	s5,s7
   185a4:	ca9ff06f          	j	1824c <_realloc_r+0x128>
   185a8:	008a8ab3          	add	s5,s5,s0
   185ac:	408707b3          	sub	a5,a4,s0
   185b0:	015b3823          	sd	s5,16(s6)
   185b4:	0017e793          	ori	a5,a5,1
   185b8:	00fab423          	sd	a5,8(s5)
   185bc:	ff89b783          	ld	a5,-8(s3)
   185c0:	00090513          	mv	a0,s2
   185c4:	0017f793          	andi	a5,a5,1
   185c8:	0087e433          	or	s0,a5,s0
   185cc:	fe89bc23          	sd	s0,-8(s3)
   185d0:	b0dfc0ef          	jal	150dc <__malloc_unlock>
   185d4:	00098513          	mv	a0,s3
   185d8:	cadff06f          	j	18284 <_realloc_r+0x160>
   185dc:	00098593          	mv	a1,s3
   185e0:	a25ff0ef          	jal	18004 <memmove>
   185e4:	c41ff06f          	j	18224 <_realloc_r+0x100>
   185e8:	0109b703          	ld	a4,16(s3)
   185ec:	00e53823          	sd	a4,16(a0)
   185f0:	0189b703          	ld	a4,24(s3)
   185f4:	00e53c23          	sd	a4,24(a0)
   185f8:	02f60863          	beq	a2,a5,18628 <_realloc_r+0x504>
   185fc:	02050793          	addi	a5,a0,32
   18600:	02098713          	addi	a4,s3,32
   18604:	c09ff06f          	j	1820c <_realloc_r+0xe8>
   18608:	ff853783          	ld	a5,-8(a0)
   1860c:	00098493          	mv	s1,s3
   18610:	ffc7f793          	andi	a5,a5,-4
   18614:	00fa0a33          	add	s4,s4,a5
   18618:	c35ff06f          	j	1824c <_realloc_r+0x128>
   1861c:	020b8793          	addi	a5,s7,32
   18620:	01098993          	addi	s3,s3,16
   18624:	dddff06f          	j	18400 <_realloc_r+0x2dc>
   18628:	0209b683          	ld	a3,32(s3)
   1862c:	03050793          	addi	a5,a0,48
   18630:	03098713          	addi	a4,s3,48
   18634:	02d53023          	sd	a3,32(a0)
   18638:	0289b683          	ld	a3,40(s3)
   1863c:	02d53423          	sd	a3,40(a0)
   18640:	bcdff06f          	j	1820c <_realloc_r+0xe8>
   18644:	00098593          	mv	a1,s3
   18648:	00048513          	mv	a0,s1
   1864c:	9b9ff0ef          	jal	18004 <memmove>
   18650:	ee9ff06f          	j	18538 <_realloc_r+0x414>
   18654:	0109b783          	ld	a5,16(s3)
   18658:	02fbb023          	sd	a5,32(s7)
   1865c:	0189b783          	ld	a5,24(s3)
   18660:	02fbb423          	sd	a5,40(s7)
   18664:	02d60063          	beq	a2,a3,18684 <_realloc_r+0x560>
   18668:	030b8793          	addi	a5,s7,48
   1866c:	02098993          	addi	s3,s3,32
   18670:	eb1ff06f          	j	18520 <_realloc_r+0x3fc>
   18674:	00090513          	mv	a0,s2
   18678:	a65fc0ef          	jal	150dc <__malloc_unlock>
   1867c:	00000513          	li	a0,0
   18680:	c05ff06f          	j	18284 <_realloc_r+0x160>
   18684:	0209b703          	ld	a4,32(s3)
   18688:	040b8793          	addi	a5,s7,64
   1868c:	03098993          	addi	s3,s3,48
   18690:	02ebb823          	sd	a4,48(s7)
   18694:	ff89b703          	ld	a4,-8(s3)
   18698:	02ebbc23          	sd	a4,56(s7)
   1869c:	e85ff06f          	j	18520 <_realloc_r+0x3fc>

00000000000186a0 <__swbuf_r>:
   186a0:	fd010113          	addi	sp,sp,-48
   186a4:	02813023          	sd	s0,32(sp)
   186a8:	00913c23          	sd	s1,24(sp)
   186ac:	01313423          	sd	s3,8(sp)
   186b0:	02113423          	sd	ra,40(sp)
   186b4:	01213823          	sd	s2,16(sp)
   186b8:	00050493          	mv	s1,a0
   186bc:	00058993          	mv	s3,a1
   186c0:	00060413          	mv	s0,a2
   186c4:	00050663          	beqz	a0,186d0 <__swbuf_r+0x30>
   186c8:	05052783          	lw	a5,80(a0)
   186cc:	12078e63          	beqz	a5,18808 <__swbuf_r+0x168>
   186d0:	01041683          	lh	a3,16(s0)
   186d4:	02842783          	lw	a5,40(s0)
   186d8:	03069713          	slli	a4,a3,0x30
   186dc:	03075713          	srli	a4,a4,0x30
   186e0:	00f42623          	sw	a5,12(s0)
   186e4:	00877793          	andi	a5,a4,8
   186e8:	0e078e63          	beqz	a5,187e4 <__swbuf_r+0x144>
   186ec:	01843783          	ld	a5,24(s0)
   186f0:	0e078a63          	beqz	a5,187e4 <__swbuf_r+0x144>
   186f4:	03271613          	slli	a2,a4,0x32
   186f8:	0ff9f913          	andi	s2,s3,255
   186fc:	06065663          	bgez	a2,18768 <__swbuf_r+0xc8>
   18700:	00043703          	ld	a4,0(s0)
   18704:	02042683          	lw	a3,32(s0)
   18708:	40f707bb          	subw	a5,a4,a5
   1870c:	08d7d663          	ble	a3,a5,18798 <__swbuf_r+0xf8>
   18710:	0017879b          	addiw	a5,a5,1
   18714:	00c42683          	lw	a3,12(s0)
   18718:	00170613          	addi	a2,a4,1
   1871c:	00c43023          	sd	a2,0(s0)
   18720:	fff6869b          	addiw	a3,a3,-1
   18724:	00d42623          	sw	a3,12(s0)
   18728:	01370023          	sb	s3,0(a4)
   1872c:	02042703          	lw	a4,32(s0)
   18730:	08f70263          	beq	a4,a5,187b4 <__swbuf_r+0x114>
   18734:	01045783          	lhu	a5,16(s0)
   18738:	00090513          	mv	a0,s2
   1873c:	0017f793          	andi	a5,a5,1
   18740:	00078663          	beqz	a5,1874c <__swbuf_r+0xac>
   18744:	00a00793          	li	a5,10
   18748:	06f90663          	beq	s2,a5,187b4 <__swbuf_r+0x114>
   1874c:	02813083          	ld	ra,40(sp)
   18750:	02013403          	ld	s0,32(sp)
   18754:	01813483          	ld	s1,24(sp)
   18758:	01013903          	ld	s2,16(sp)
   1875c:	00813983          	ld	s3,8(sp)
   18760:	03010113          	addi	sp,sp,48
   18764:	00008067          	ret
   18768:	0ac42583          	lw	a1,172(s0)
   1876c:	ffffe737          	lui	a4,0xffffe
   18770:	fff7071b          	addiw	a4,a4,-1
   18774:	00e5f733          	and	a4,a1,a4
   18778:	00002637          	lui	a2,0x2
   1877c:	00c6e6b3          	or	a3,a3,a2
   18780:	0ae42623          	sw	a4,172(s0)
   18784:	00043703          	ld	a4,0(s0)
   18788:	00d41823          	sh	a3,16(s0)
   1878c:	02042683          	lw	a3,32(s0)
   18790:	40f707bb          	subw	a5,a4,a5
   18794:	f6d7cee3          	blt	a5,a3,18710 <__swbuf_r+0x70>
   18798:	00040593          	mv	a1,s0
   1879c:	00048513          	mv	a0,s1
   187a0:	aecfb0ef          	jal	13a8c <_fflush_r>
   187a4:	06051663          	bnez	a0,18810 <__swbuf_r+0x170>
   187a8:	00043703          	ld	a4,0(s0)
   187ac:	00100793          	li	a5,1
   187b0:	f65ff06f          	j	18714 <__swbuf_r+0x74>
   187b4:	00040593          	mv	a1,s0
   187b8:	00048513          	mv	a0,s1
   187bc:	ad0fb0ef          	jal	13a8c <_fflush_r>
   187c0:	04051863          	bnez	a0,18810 <__swbuf_r+0x170>
   187c4:	02813083          	ld	ra,40(sp)
   187c8:	00090513          	mv	a0,s2
   187cc:	02013403          	ld	s0,32(sp)
   187d0:	01813483          	ld	s1,24(sp)
   187d4:	01013903          	ld	s2,16(sp)
   187d8:	00813983          	ld	s3,8(sp)
   187dc:	03010113          	addi	sp,sp,48
   187e0:	00008067          	ret
   187e4:	00040593          	mv	a1,s0
   187e8:	00048513          	mv	a0,s1
   187ec:	941f90ef          	jal	1212c <__swsetup_r>
   187f0:	02051063          	bnez	a0,18810 <__swbuf_r+0x170>
   187f4:	01041683          	lh	a3,16(s0)
   187f8:	01843783          	ld	a5,24(s0)
   187fc:	03069713          	slli	a4,a3,0x30
   18800:	03075713          	srli	a4,a4,0x30
   18804:	ef1ff06f          	j	186f4 <__swbuf_r+0x54>
   18808:	e30fb0ef          	jal	13e38 <__sinit>
   1880c:	ec5ff06f          	j	186d0 <__swbuf_r+0x30>
   18810:	fff00513          	li	a0,-1
   18814:	f39ff06f          	j	1874c <__swbuf_r+0xac>

0000000000018818 <__swbuf>:
   18818:	00058613          	mv	a2,a1
   1881c:	00050593          	mv	a1,a0
   18820:	8101b503          	ld	a0,-2032(gp) # 1b350 <_impure_ptr>
   18824:	e7dff06f          	j	186a0 <__swbuf_r>

0000000000018828 <_wcrtomb_r>:
   18828:	fc010113          	addi	sp,sp,-64
   1882c:	02913423          	sd	s1,40(sp)
   18830:	03213023          	sd	s2,32(sp)
   18834:	02113c23          	sd	ra,56(sp)
   18838:	02813823          	sd	s0,48(sp)
   1883c:	01313c23          	sd	s3,24(sp)
   18840:	01413823          	sd	s4,16(sp)
   18844:	00050493          	mv	s1,a0
   18848:	00068913          	mv	s2,a3
   1884c:	06058663          	beqz	a1,188b8 <_wcrtomb_r+0x90>
   18850:	8301ba03          	ld	s4,-2000(gp) # 1b370 <__wctomb>
   18854:	00058413          	mv	s0,a1
   18858:	00060993          	mv	s3,a2
   1885c:	c2dfb0ef          	jal	14488 <__locale_charset>
   18860:	00050693          	mv	a3,a0
   18864:	00090713          	mv	a4,s2
   18868:	00098613          	mv	a2,s3
   1886c:	00040593          	mv	a1,s0
   18870:	00048513          	mv	a0,s1
   18874:	000a00e7          	jalr	s4
   18878:	00050793          	mv	a5,a0
   1887c:	fff00713          	li	a4,-1
   18880:	00078513          	mv	a0,a5
   18884:	00e79a63          	bne	a5,a4,18898 <_wcrtomb_r+0x70>
   18888:	00092023          	sw	zero,0(s2)
   1888c:	08a00793          	li	a5,138
   18890:	00f4a023          	sw	a5,0(s1)
   18894:	fff00513          	li	a0,-1
   18898:	03813083          	ld	ra,56(sp)
   1889c:	03013403          	ld	s0,48(sp)
   188a0:	02813483          	ld	s1,40(sp)
   188a4:	02013903          	ld	s2,32(sp)
   188a8:	01813983          	ld	s3,24(sp)
   188ac:	01013a03          	ld	s4,16(sp)
   188b0:	04010113          	addi	sp,sp,64
   188b4:	00008067          	ret
   188b8:	8301b403          	ld	s0,-2000(gp) # 1b370 <__wctomb>
   188bc:	bcdfb0ef          	jal	14488 <__locale_charset>
   188c0:	00050693          	mv	a3,a0
   188c4:	00090713          	mv	a4,s2
   188c8:	00000613          	li	a2,0
   188cc:	00010593          	mv	a1,sp
   188d0:	00048513          	mv	a0,s1
   188d4:	000400e7          	jalr	s0
   188d8:	00050793          	mv	a5,a0
   188dc:	fa1ff06f          	j	1887c <_wcrtomb_r+0x54>

00000000000188e0 <wcrtomb>:
   188e0:	fc010113          	addi	sp,sp,-64
   188e4:	02913423          	sd	s1,40(sp)
   188e8:	03213023          	sd	s2,32(sp)
   188ec:	02113c23          	sd	ra,56(sp)
   188f0:	02813823          	sd	s0,48(sp)
   188f4:	01313c23          	sd	s3,24(sp)
   188f8:	01413823          	sd	s4,16(sp)
   188fc:	00060913          	mv	s2,a2
   18900:	8101b483          	ld	s1,-2032(gp) # 1b350 <_impure_ptr>
   18904:	06050663          	beqz	a0,18970 <wcrtomb+0x90>
   18908:	8301ba03          	ld	s4,-2000(gp) # 1b370 <__wctomb>
   1890c:	00058993          	mv	s3,a1
   18910:	00050413          	mv	s0,a0
   18914:	b75fb0ef          	jal	14488 <__locale_charset>
   18918:	00050693          	mv	a3,a0
   1891c:	00090713          	mv	a4,s2
   18920:	00098613          	mv	a2,s3
   18924:	00040593          	mv	a1,s0
   18928:	00048513          	mv	a0,s1
   1892c:	000a00e7          	jalr	s4
   18930:	00050793          	mv	a5,a0
   18934:	fff00713          	li	a4,-1
   18938:	00078513          	mv	a0,a5
   1893c:	00e79a63          	bne	a5,a4,18950 <wcrtomb+0x70>
   18940:	00092023          	sw	zero,0(s2)
   18944:	08a00793          	li	a5,138
   18948:	00f4a023          	sw	a5,0(s1)
   1894c:	fff00513          	li	a0,-1
   18950:	03813083          	ld	ra,56(sp)
   18954:	03013403          	ld	s0,48(sp)
   18958:	02813483          	ld	s1,40(sp)
   1895c:	02013903          	ld	s2,32(sp)
   18960:	01813983          	ld	s3,24(sp)
   18964:	01013a03          	ld	s4,16(sp)
   18968:	04010113          	addi	sp,sp,64
   1896c:	00008067          	ret
   18970:	8301b403          	ld	s0,-2000(gp) # 1b370 <__wctomb>
   18974:	b15fb0ef          	jal	14488 <__locale_charset>
   18978:	00050693          	mv	a3,a0
   1897c:	00090713          	mv	a4,s2
   18980:	00000613          	li	a2,0
   18984:	00010593          	mv	a1,sp
   18988:	00048513          	mv	a0,s1
   1898c:	000400e7          	jalr	s0
   18990:	00050793          	mv	a5,a0
   18994:	fa1ff06f          	j	18934 <wcrtomb+0x54>

0000000000018998 <__ascii_wctomb>:
   18998:	00058c63          	beqz	a1,189b0 <__ascii_wctomb+0x18>
   1899c:	0ff00793          	li	a5,255
   189a0:	00c7ec63          	bltu	a5,a2,189b8 <__ascii_wctomb+0x20>
   189a4:	00c58023          	sb	a2,0(a1)
   189a8:	00100513          	li	a0,1
   189ac:	00008067          	ret
   189b0:	00000513          	li	a0,0
   189b4:	00008067          	ret
   189b8:	08a00793          	li	a5,138
   189bc:	00f52023          	sw	a5,0(a0)
   189c0:	fff00513          	li	a0,-1
   189c4:	00008067          	ret

00000000000189c8 <_wctomb_r>:
   189c8:	fd010113          	addi	sp,sp,-48
   189cc:	02813023          	sd	s0,32(sp)
   189d0:	8301b403          	ld	s0,-2000(gp) # 1b370 <__wctomb>
   189d4:	02113423          	sd	ra,40(sp)
   189d8:	00913c23          	sd	s1,24(sp)
   189dc:	01213823          	sd	s2,16(sp)
   189e0:	01313423          	sd	s3,8(sp)
   189e4:	01413023          	sd	s4,0(sp)
   189e8:	00050493          	mv	s1,a0
   189ec:	00068a13          	mv	s4,a3
   189f0:	00058913          	mv	s2,a1
   189f4:	00060993          	mv	s3,a2
   189f8:	a91fb0ef          	jal	14488 <__locale_charset>
   189fc:	000a0713          	mv	a4,s4
   18a00:	00050693          	mv	a3,a0
   18a04:	00098613          	mv	a2,s3
   18a08:	00090593          	mv	a1,s2
   18a0c:	00048513          	mv	a0,s1
   18a10:	00040313          	mv	t1,s0
   18a14:	02813083          	ld	ra,40(sp)
   18a18:	02013403          	ld	s0,32(sp)
   18a1c:	01813483          	ld	s1,24(sp)
   18a20:	01013903          	ld	s2,16(sp)
   18a24:	00813983          	ld	s3,8(sp)
   18a28:	00013a03          	ld	s4,0(sp)
   18a2c:	03010113          	addi	sp,sp,48
   18a30:	00030067          	jr	t1

0000000000018a34 <__syscall_error>:
   18a34:	ff010113          	addi	sp,sp,-16
   18a38:	00113423          	sd	ra,8(sp)
   18a3c:	00813023          	sd	s0,0(sp)
   18a40:	00050413          	mv	s0,a0
   18a44:	3c0000ef          	jal	18e04 <__errno>
   18a48:	00813083          	ld	ra,8(sp)
   18a4c:	408007bb          	negw	a5,s0
   18a50:	00f52023          	sw	a5,0(a0)
   18a54:	00013403          	ld	s0,0(sp)
   18a58:	fff00513          	li	a0,-1
   18a5c:	01010113          	addi	sp,sp,16
   18a60:	00008067          	ret

0000000000018a64 <open>:
   18a64:	00000693          	li	a3,0
   18a68:	40000893          	li	a7,1024
   18a6c:	00000073          	ecall
   18a70:	fc0542e3          	bltz	a0,18a34 <__syscall_error>
   18a74:	0005051b          	sext.w	a0,a0
   18a78:	00008067          	ret

0000000000018a7c <openat>:
   18a7c:	03800893          	li	a7,56
   18a80:	00000073          	ecall
   18a84:	fa0548e3          	bltz	a0,18a34 <__syscall_error>
   18a88:	0005051b          	sext.w	a0,a0
   18a8c:	00008067          	ret

0000000000018a90 <lseek>:
   18a90:	00000693          	li	a3,0
   18a94:	03e00893          	li	a7,62
   18a98:	00000073          	ecall
   18a9c:	f8054ce3          	bltz	a0,18a34 <__syscall_error>
   18aa0:	00008067          	ret

0000000000018aa4 <read>:
   18aa4:	00000693          	li	a3,0
   18aa8:	03f00893          	li	a7,63
   18aac:	00000073          	ecall
   18ab0:	f80542e3          	bltz	a0,18a34 <__syscall_error>
   18ab4:	00008067          	ret

0000000000018ab8 <write>:
   18ab8:	00000693          	li	a3,0
   18abc:	04000893          	li	a7,64
   18ac0:	00000073          	ecall
   18ac4:	f60548e3          	bltz	a0,18a34 <__syscall_error>
   18ac8:	00008067          	ret

0000000000018acc <fstat>:
   18acc:	00000613          	li	a2,0
   18ad0:	00000693          	li	a3,0
   18ad4:	05000893          	li	a7,80
   18ad8:	00000073          	ecall
   18adc:	f4054ce3          	bltz	a0,18a34 <__syscall_error>
   18ae0:	0005051b          	sext.w	a0,a0
   18ae4:	00008067          	ret

0000000000018ae8 <stat>:
   18ae8:	00000613          	li	a2,0
   18aec:	00000693          	li	a3,0
   18af0:	40e00893          	li	a7,1038
   18af4:	00000073          	ecall
   18af8:	f2054ee3          	bltz	a0,18a34 <__syscall_error>
   18afc:	0005051b          	sext.w	a0,a0
   18b00:	00008067          	ret

0000000000018b04 <lstat>:
   18b04:	00000613          	li	a2,0
   18b08:	00000693          	li	a3,0
   18b0c:	40f00893          	li	a7,1039
   18b10:	00000073          	ecall
   18b14:	f20540e3          	bltz	a0,18a34 <__syscall_error>
   18b18:	0005051b          	sext.w	a0,a0
   18b1c:	00008067          	ret

0000000000018b20 <fstatat>:
   18b20:	04f00893          	li	a7,79
   18b24:	00000073          	ecall
   18b28:	f00546e3          	bltz	a0,18a34 <__syscall_error>
   18b2c:	0005051b          	sext.w	a0,a0
   18b30:	00008067          	ret

0000000000018b34 <access>:
   18b34:	00000613          	li	a2,0
   18b38:	00000693          	li	a3,0
   18b3c:	40900893          	li	a7,1033
   18b40:	00000073          	ecall
   18b44:	ee0548e3          	bltz	a0,18a34 <__syscall_error>
   18b48:	0005051b          	sext.w	a0,a0
   18b4c:	00008067          	ret

0000000000018b50 <faccessat>:
   18b50:	03000893          	li	a7,48
   18b54:	00000073          	ecall
   18b58:	ec054ee3          	bltz	a0,18a34 <__syscall_error>
   18b5c:	0005051b          	sext.w	a0,a0
   18b60:	00008067          	ret

0000000000018b64 <close>:
   18b64:	00000593          	li	a1,0
   18b68:	00000613          	li	a2,0
   18b6c:	00000693          	li	a3,0
   18b70:	03900893          	li	a7,57
   18b74:	00000073          	ecall
   18b78:	ea054ee3          	bltz	a0,18a34 <__syscall_error>
   18b7c:	0005051b          	sext.w	a0,a0
   18b80:	00008067          	ret

0000000000018b84 <link>:
   18b84:	00000613          	li	a2,0
   18b88:	00000693          	li	a3,0
   18b8c:	40100893          	li	a7,1025
   18b90:	00000073          	ecall
   18b94:	ea0540e3          	bltz	a0,18a34 <__syscall_error>
   18b98:	0005051b          	sext.w	a0,a0
   18b9c:	00008067          	ret

0000000000018ba0 <unlink>:
   18ba0:	00000593          	li	a1,0
   18ba4:	00000613          	li	a2,0
   18ba8:	00000693          	li	a3,0
   18bac:	40200893          	li	a7,1026
   18bb0:	00000073          	ecall
   18bb4:	e80540e3          	bltz	a0,18a34 <__syscall_error>
   18bb8:	0005051b          	sext.w	a0,a0
   18bbc:	00008067          	ret

0000000000018bc0 <execve>:
   18bc0:	ff010113          	addi	sp,sp,-16
   18bc4:	00113423          	sd	ra,8(sp)
   18bc8:	23c000ef          	jal	18e04 <__errno>
   18bcc:	00813083          	ld	ra,8(sp)
   18bd0:	00c00793          	li	a5,12
   18bd4:	00f52023          	sw	a5,0(a0)
   18bd8:	01010113          	addi	sp,sp,16
   18bdc:	fff00513          	li	a0,-1
   18be0:	00008067          	ret

0000000000018be4 <fork>:
   18be4:	ff010113          	addi	sp,sp,-16
   18be8:	00113423          	sd	ra,8(sp)
   18bec:	218000ef          	jal	18e04 <__errno>
   18bf0:	00813083          	ld	ra,8(sp)
   18bf4:	00b00793          	li	a5,11
   18bf8:	00f52023          	sw	a5,0(a0)
   18bfc:	01010113          	addi	sp,sp,16
   18c00:	fff00513          	li	a0,-1
   18c04:	00008067          	ret

0000000000018c08 <getpid>:
   18c08:	00100513          	li	a0,1
   18c0c:	00008067          	ret

0000000000018c10 <kill>:
   18c10:	ff010113          	addi	sp,sp,-16
   18c14:	00113423          	sd	ra,8(sp)
   18c18:	1ec000ef          	jal	18e04 <__errno>
   18c1c:	00813083          	ld	ra,8(sp)
   18c20:	01600793          	li	a5,22
   18c24:	00f52023          	sw	a5,0(a0)
   18c28:	01010113          	addi	sp,sp,16
   18c2c:	fff00513          	li	a0,-1
   18c30:	00008067          	ret

0000000000018c34 <wait>:
   18c34:	ff010113          	addi	sp,sp,-16
   18c38:	00113423          	sd	ra,8(sp)
   18c3c:	1c8000ef          	jal	18e04 <__errno>
   18c40:	00813083          	ld	ra,8(sp)
   18c44:	00a00793          	li	a5,10
   18c48:	00f52023          	sw	a5,0(a0)
   18c4c:	01010113          	addi	sp,sp,16
   18c50:	fff00513          	li	a0,-1
   18c54:	00008067          	ret

0000000000018c58 <isatty>:
   18c58:	f8010113          	addi	sp,sp,-128
   18c5c:	00010593          	mv	a1,sp
   18c60:	00000613          	li	a2,0
   18c64:	00000693          	li	a3,0
   18c68:	05000893          	li	a7,80
   18c6c:	00000073          	ecall
   18c70:	dc0542e3          	bltz	a0,18a34 <__syscall_error>
   18c74:	fff00793          	li	a5,-1
   18c78:	0005051b          	sext.w	a0,a0
   18c7c:	00f50863          	beq	a0,a5,18c8c <isatty+0x34>
   18c80:	01012503          	lw	a0,16(sp)
   18c84:	40d5551b          	sraiw	a0,a0,0xd
   18c88:	00157513          	andi	a0,a0,1
   18c8c:	08010113          	addi	sp,sp,128
   18c90:	00008067          	ret

0000000000018c94 <times>:
   18c94:	92818313          	addi	t1,gp,-1752 # 1b468 <t0.2343>
   18c98:	00033703          	ld	a4,0(t1)
   18c9c:	ff010113          	addi	sp,sp,-16
   18ca0:	00050813          	mv	a6,a0
   18ca4:	02071063          	bnez	a4,18cc4 <times+0x30>
   18ca8:	92818513          	addi	a0,gp,-1752 # 1b468 <t0.2343>
   18cac:	00000593          	li	a1,0
   18cb0:	00000613          	li	a2,0
   18cb4:	00000693          	li	a3,0
   18cb8:	0a900893          	li	a7,169
   18cbc:	00000073          	ecall
   18cc0:	d6054ae3          	bltz	a0,18a34 <__syscall_error>
   18cc4:	00010513          	mv	a0,sp
   18cc8:	00000593          	li	a1,0
   18ccc:	00000613          	li	a2,0
   18cd0:	00000693          	li	a3,0
   18cd4:	0a900893          	li	a7,169
   18cd8:	00000073          	ecall
   18cdc:	d4054ce3          	bltz	a0,18a34 <__syscall_error>
   18ce0:	00033703          	ld	a4,0(t1)
   18ce4:	00013783          	ld	a5,0(sp)
   18ce8:	fff00513          	li	a0,-1
   18cec:	00083823          	sd	zero,16(a6)
   18cf0:	40e786b3          	sub	a3,a5,a4
   18cf4:	000f47b7          	lui	a5,0xf4
   18cf8:	24078793          	addi	a5,a5,576 # f4240 <_gp+0xd8700>
   18cfc:	02f68733          	mul	a4,a3,a5
   18d00:	00833683          	ld	a3,8(t1)
   18d04:	00813783          	ld	a5,8(sp)
   18d08:	00083c23          	sd	zero,24(a6)
   18d0c:	00083423          	sd	zero,8(a6)
   18d10:	40d787b3          	sub	a5,a5,a3
   18d14:	01010113          	addi	sp,sp,16
   18d18:	00f707b3          	add	a5,a4,a5
   18d1c:	00f83023          	sd	a5,0(a6)
   18d20:	00008067          	ret

0000000000018d24 <gettimeofday>:
   18d24:	00000593          	li	a1,0
   18d28:	00000613          	li	a2,0
   18d2c:	00000693          	li	a3,0
   18d30:	0a900893          	li	a7,169
   18d34:	00000073          	ecall
   18d38:	ce054ee3          	bltz	a0,18a34 <__syscall_error>
   18d3c:	0005051b          	sext.w	a0,a0
   18d40:	00008067          	ret

0000000000018d44 <ftime>:
   18d44:	00051423          	sh	zero,8(a0)
   18d48:	00053023          	sd	zero,0(a0)
   18d4c:	00000513          	li	a0,0
   18d50:	00008067          	ret

0000000000018d54 <utime>:
   18d54:	fff00513          	li	a0,-1
   18d58:	00008067          	ret

0000000000018d5c <chown>:
   18d5c:	fff00513          	li	a0,-1
   18d60:	00008067          	ret

0000000000018d64 <chmod>:
   18d64:	fff00513          	li	a0,-1
   18d68:	00008067          	ret

0000000000018d6c <chdir>:
   18d6c:	fff00513          	li	a0,-1
   18d70:	00008067          	ret

0000000000018d74 <getcwd>:
   18d74:	00000513          	li	a0,0
   18d78:	00008067          	ret

0000000000018d7c <sysconf>:
   18d7c:	00200793          	li	a5,2
   18d80:	00f51863          	bne	a0,a5,18d90 <sysconf+0x14>
   18d84:	000f4537          	lui	a0,0xf4
   18d88:	24050513          	addi	a0,a0,576 # f4240 <_gp+0xd8700>
   18d8c:	00008067          	ret
   18d90:	fff00513          	li	a0,-1
   18d94:	00008067          	ret

0000000000018d98 <sbrk>:
   18d98:	8c01b703          	ld	a4,-1856(gp) # 1b400 <heap_end.2381>
   18d9c:	00050793          	mv	a5,a0
   18da0:	00071663          	bnez	a4,18dac <sbrk+0x14>
   18da4:	93818713          	addi	a4,gp,-1736 # 1b478 <_end>
   18da8:	8ce1b023          	sd	a4,-1856(gp) # 1b400 <heap_end.2381>
   18dac:	00e78533          	add	a0,a5,a4
   18db0:	00000593          	li	a1,0
   18db4:	00000613          	li	a2,0
   18db8:	00000693          	li	a3,0
   18dbc:	0d600893          	li	a7,214
   18dc0:	00000073          	ecall
   18dc4:	c60548e3          	bltz	a0,18a34 <__syscall_error>
   18dc8:	8c01b683          	ld	a3,-1856(gp) # 1b400 <heap_end.2381>
   18dcc:	fff00713          	li	a4,-1
   18dd0:	00d787b3          	add	a5,a5,a3
   18dd4:	00f51663          	bne	a0,a5,18de0 <sbrk+0x48>
   18dd8:	8ca1b023          	sd	a0,-1856(gp) # 1b400 <heap_end.2381>
   18ddc:	00068713          	mv	a4,a3
   18de0:	00070513          	mv	a0,a4
   18de4:	00008067          	ret

0000000000018de8 <_exit>:
   18de8:	00000593          	li	a1,0
   18dec:	00000613          	li	a2,0
   18df0:	00000693          	li	a3,0
   18df4:	05d00893          	li	a7,93
   18df8:	00000073          	ecall
   18dfc:	c2054ce3          	bltz	a0,18a34 <__syscall_error>
   18e00:	0000006f          	j	18e00 <_exit+0x18>

0000000000018e04 <__errno>:
   18e04:	8101b503          	ld	a0,-2032(gp) # 1b350 <_impure_ptr>
   18e08:	00008067          	ret
