
main:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 4f 00 00 	mov    0x4fd9(%rip),%rax        # 5fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <free@plt-0x10>:
    1020:	ff 35 e2 4f 00 00    	push   0x4fe2(%rip)        # 6008 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	ff 25 e4 4f 00 00    	jmp    *0x4fe4(%rip)        # 6010 <_GLOBAL_OFFSET_TABLE_+0x10>
    102c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001030 <free@plt>:
    1030:	ff 25 e2 4f 00 00    	jmp    *0x4fe2(%rip)        # 6018 <free@GLIBC_2.2.5>
    1036:	68 00 00 00 00       	push   $0x0
    103b:	e9 e0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001040 <puts@plt>:
    1040:	ff 25 da 4f 00 00    	jmp    *0x4fda(%rip)        # 6020 <puts@GLIBC_2.2.5>
    1046:	68 01 00 00 00       	push   $0x1
    104b:	e9 d0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001050 <__stack_chk_fail@plt>:
    1050:	ff 25 d2 4f 00 00    	jmp    *0x4fd2(%rip)        # 6028 <__stack_chk_fail@GLIBC_2.4>
    1056:	68 02 00 00 00       	push   $0x2
    105b:	e9 c0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001060 <printf@plt>:
    1060:	ff 25 ca 4f 00 00    	jmp    *0x4fca(%rip)        # 6030 <printf@GLIBC_2.2.5>
    1066:	68 03 00 00 00       	push   $0x3
    106b:	e9 b0 ff ff ff       	jmp    1020 <_init+0x20>

0000000000001070 <malloc@plt>:
    1070:	ff 25 c2 4f 00 00    	jmp    *0x4fc2(%rip)        # 6038 <malloc@GLIBC_2.2.5>
    1076:	68 04 00 00 00       	push   $0x4
    107b:	e9 a0 ff ff ff       	jmp    1020 <_init+0x20>

Disassembly of section .text:

0000000000001080 <_start>:
    1080:	f3 0f 1e fa          	endbr64 
    1084:	31 ed                	xor    %ebp,%ebp
    1086:	49 89 d1             	mov    %rdx,%r9
    1089:	5e                   	pop    %rsi
    108a:	48 89 e2             	mov    %rsp,%rdx
    108d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1091:	50                   	push   %rax
    1092:	54                   	push   %rsp
    1093:	4c 8d 05 46 24 00 00 	lea    0x2446(%rip),%r8        # 34e0 <__libc_csu_fini>
    109a:	48 8d 0d cf 23 00 00 	lea    0x23cf(%rip),%rcx        # 3470 <__libc_csu_init>
    10a1:	48 8d 3d d1 00 00 00 	lea    0xd1(%rip),%rdi        # 1179 <main>
    10a8:	ff 15 32 4f 00 00    	call   *0x4f32(%rip)        # 5fe0 <__libc_start_main@GLIBC_2.2.5>
    10ae:	f4                   	hlt    
    10af:	90                   	nop

00000000000010b0 <deregister_tm_clones>:
    10b0:	48 8d 3d 99 4f 00 00 	lea    0x4f99(%rip),%rdi        # 6050 <__TMC_END__>
    10b7:	48 8d 05 92 4f 00 00 	lea    0x4f92(%rip),%rax        # 6050 <__TMC_END__>
    10be:	48 39 f8             	cmp    %rdi,%rax
    10c1:	74 15                	je     10d8 <deregister_tm_clones+0x28>
    10c3:	48 8b 05 0e 4f 00 00 	mov    0x4f0e(%rip),%rax        # 5fd8 <_ITM_deregisterTMCloneTable>
    10ca:	48 85 c0             	test   %rax,%rax
    10cd:	74 09                	je     10d8 <deregister_tm_clones+0x28>
    10cf:	ff e0                	jmp    *%rax
    10d1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <register_tm_clones>:
    10e0:	48 8d 3d 69 4f 00 00 	lea    0x4f69(%rip),%rdi        # 6050 <__TMC_END__>
    10e7:	48 8d 35 62 4f 00 00 	lea    0x4f62(%rip),%rsi        # 6050 <__TMC_END__>
    10ee:	48 29 fe             	sub    %rdi,%rsi
    10f1:	48 89 f0             	mov    %rsi,%rax
    10f4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10f8:	48 c1 f8 03          	sar    $0x3,%rax
    10fc:	48 01 c6             	add    %rax,%rsi
    10ff:	48 d1 fe             	sar    %rsi
    1102:	74 14                	je     1118 <register_tm_clones+0x38>
    1104:	48 8b 05 e5 4e 00 00 	mov    0x4ee5(%rip),%rax        # 5ff0 <_ITM_registerTMCloneTable>
    110b:	48 85 c0             	test   %rax,%rax
    110e:	74 08                	je     1118 <register_tm_clones+0x38>
    1110:	ff e0                	jmp    *%rax
    1112:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <__do_global_dtors_aux>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	80 3d 25 4f 00 00 00 	cmpb   $0x0,0x4f25(%rip)        # 6050 <__TMC_END__>
    112b:	75 33                	jne    1160 <__do_global_dtors_aux+0x40>
    112d:	55                   	push   %rbp
    112e:	48 83 3d c2 4e 00 00 	cmpq   $0x0,0x4ec2(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    1135:	00 
    1136:	48 89 e5             	mov    %rsp,%rbp
    1139:	74 0d                	je     1148 <__do_global_dtors_aux+0x28>
    113b:	48 8b 3d 06 4f 00 00 	mov    0x4f06(%rip),%rdi        # 6048 <__dso_handle>
    1142:	ff 15 b0 4e 00 00    	call   *0x4eb0(%rip)        # 5ff8 <__cxa_finalize@GLIBC_2.2.5>
    1148:	e8 63 ff ff ff       	call   10b0 <deregister_tm_clones>
    114d:	c6 05 fc 4e 00 00 01 	movb   $0x1,0x4efc(%rip)        # 6050 <__TMC_END__>
    1154:	5d                   	pop    %rbp
    1155:	c3                   	ret    
    1156:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    115d:	00 00 00 
    1160:	c3                   	ret    
    1161:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    1168:	00 00 00 00 
    116c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000001170 <frame_dummy>:
    1170:	f3 0f 1e fa          	endbr64 
    1174:	e9 67 ff ff ff       	jmp    10e0 <register_tm_clones>

0000000000001179 <main>:
    1179:	55                   	push   %rbp
    117a:	48 89 e5             	mov    %rsp,%rbp
    117d:	48 83 ec 20          	sub    $0x20,%rsp
    1181:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    1188:	00 00 
    118a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    118e:	31 c0                	xor    %eax,%eax
    1190:	48 8d 05 6d 2e 00 00 	lea    0x2e6d(%rip),%rax        # 4004 <_IO_stdin_used+0x4>
    1197:	48 89 c7             	mov    %rax,%rdi
    119a:	b8 00 00 00 00       	mov    $0x0,%eax
    119f:	e8 9e 06 00 00       	call   1842 <az_printf>
    11a4:	be 54 00 00 00       	mov    $0x54,%esi
    11a9:	48 8d 05 62 2e 00 00 	lea    0x2e62(%rip),%rax        # 4012 <_IO_stdin_used+0x12>
    11b0:	48 89 c7             	mov    %rax,%rdi
    11b3:	b8 00 00 00 00       	mov    $0x0,%eax
    11b8:	e8 85 06 00 00       	call   1842 <az_printf>
    11bd:	be 25 00 00 00       	mov    $0x25,%esi
    11c2:	48 8d 05 63 2e 00 00 	lea    0x2e63(%rip),%rax        # 402c <_IO_stdin_used+0x2c>
    11c9:	48 89 c7             	mov    %rax,%rdi
    11cc:	b8 00 00 00 00       	mov    $0x0,%eax
    11d1:	e8 6c 06 00 00       	call   1842 <az_printf>
    11d6:	be 2b 01 00 00       	mov    $0x12b,%esi
    11db:	48 8d 05 4a 2e 00 00 	lea    0x2e4a(%rip),%rax        # 402c <_IO_stdin_used+0x2c>
    11e2:	48 89 c7             	mov    %rax,%rdi
    11e5:	b8 00 00 00 00       	mov    $0x0,%eax
    11ea:	e8 53 06 00 00       	call   1842 <az_printf>
    11ef:	be 01 00 00 00       	mov    $0x1,%esi
    11f4:	48 8d 05 43 2e 00 00 	lea    0x2e43(%rip),%rax        # 403e <_IO_stdin_used+0x3e>
    11fb:	48 89 c7             	mov    %rax,%rdi
    11fe:	b8 00 00 00 00       	mov    $0x0,%eax
    1203:	e8 3a 06 00 00       	call   1842 <az_printf>
    1208:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
    120f:	c7 45 f4 02 00 00 00 	movl   $0x2,-0xc(%rbp)
    1216:	8b 55 f0             	mov    -0x10(%rbp),%edx
    1219:	8b 45 f4             	mov    -0xc(%rbp),%eax
    121c:	8d 0c 02             	lea    (%rdx,%rax,1),%ecx
    121f:	8b 55 f4             	mov    -0xc(%rbp),%edx
    1222:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1225:	89 c6                	mov    %eax,%esi
    1227:	48 8d 05 1a 2e 00 00 	lea    0x2e1a(%rip),%rax        # 4048 <_IO_stdin_used+0x48>
    122e:	48 89 c7             	mov    %rax,%rdi
    1231:	b8 00 00 00 00       	mov    $0x0,%eax
    1236:	e8 07 06 00 00       	call   1842 <az_printf>
    123b:	be 4e 61 bc 00       	mov    $0xbc614e,%esi
    1240:	48 8d 05 0f 2e 00 00 	lea    0x2e0f(%rip),%rax        # 4056 <_IO_stdin_used+0x56>
    1247:	48 89 c7             	mov    %rax,%rdi
    124a:	b8 00 00 00 00       	mov    $0x0,%eax
    124f:	e8 ee 05 00 00       	call   1842 <az_printf>
    1254:	48 8d 05 0a 2e 00 00 	lea    0x2e0a(%rip),%rax        # 4065 <_IO_stdin_used+0x65>
    125b:	48 89 c7             	mov    %rax,%rdi
    125e:	b8 00 00 00 00       	mov    $0x0,%eax
    1263:	e8 da 05 00 00       	call   1842 <az_printf>
    1268:	be ae 01 00 00       	mov    $0x1ae,%esi
    126d:	48 8d 05 f7 2d 00 00 	lea    0x2df7(%rip),%rax        # 406b <_IO_stdin_used+0x6b>
    1274:	48 89 c7             	mov    %rax,%rdi
    1277:	b8 00 00 00 00       	mov    $0x0,%eax
    127c:	e8 c1 05 00 00       	call   1842 <az_printf>
    1281:	be 8a 02 00 00       	mov    $0x28a,%esi
    1286:	48 8d 05 e3 2d 00 00 	lea    0x2de3(%rip),%rax        # 4070 <_IO_stdin_used+0x70>
    128d:	48 89 c7             	mov    %rax,%rdi
    1290:	b8 00 00 00 00       	mov    $0x0,%eax
    1295:	e8 a8 05 00 00       	call   1842 <az_printf>
    129a:	be f3 01 00 00       	mov    $0x1f3,%esi
    129f:	48 8d 05 d0 2d 00 00 	lea    0x2dd0(%rip),%rax        # 4076 <_IO_stdin_used+0x76>
    12a6:	48 89 c7             	mov    %rax,%rdi
    12a9:	b8 00 00 00 00       	mov    $0x0,%eax
    12ae:	e8 8f 05 00 00       	call   1842 <az_printf>
    12b3:	be ce 04 00 00       	mov    $0x4ce,%esi
    12b8:	48 8d 05 be 2d 00 00 	lea    0x2dbe(%rip),%rax        # 407d <_IO_stdin_used+0x7d>
    12bf:	48 89 c7             	mov    %rax,%rdi
    12c2:	b8 00 00 00 00       	mov    $0x0,%eax
    12c7:	e8 76 05 00 00       	call   1842 <az_printf>
    12cc:	be 56 01 00 00       	mov    $0x156,%esi
    12d1:	48 8d 05 ab 2d 00 00 	lea    0x2dab(%rip),%rax        # 4083 <_IO_stdin_used+0x83>
    12d8:	48 89 c7             	mov    %rax,%rdi
    12db:	b8 00 00 00 00       	mov    $0x0,%eax
    12e0:	e8 5d 05 00 00       	call   1842 <az_printf>
    12e5:	be 52 fe ff ff       	mov    $0xfffffe52,%esi
    12ea:	48 8d 05 98 2d 00 00 	lea    0x2d98(%rip),%rax        # 4089 <_IO_stdin_used+0x89>
    12f1:	48 89 c7             	mov    %rax,%rdi
    12f4:	b8 00 00 00 00       	mov    $0x0,%eax
    12f9:	e8 44 05 00 00       	call   1842 <az_printf>
    12fe:	be d5 ff ff ff       	mov    $0xffffffd5,%esi
    1303:	48 8d 05 86 2d 00 00 	lea    0x2d86(%rip),%rax        # 4090 <_IO_stdin_used+0x90>
    130a:	48 89 c7             	mov    %rax,%rdi
    130d:	b8 00 00 00 00       	mov    $0x0,%eax
    1312:	e8 2b 05 00 00       	call   1842 <az_printf>
    1317:	48 b8 b0 97 04 25 c1 	movabs $0x15c1250497b0,%rax
    131e:	15 00 00 
    1321:	48 89 c6             	mov    %rax,%rsi
    1324:	48 8d 05 6a 2d 00 00 	lea    0x2d6a(%rip),%rax        # 4095 <_IO_stdin_used+0x95>
    132b:	48 89 c7             	mov    %rax,%rdi
    132e:	b8 00 00 00 00       	mov    $0x0,%eax
    1333:	e8 0a 05 00 00       	call   1842 <az_printf>
    1338:	be 39 30 00 00       	mov    $0x3039,%esi
    133d:	48 8d 05 55 2d 00 00 	lea    0x2d55(%rip),%rax        # 4099 <_IO_stdin_used+0x99>
    1344:	48 89 c7             	mov    %rax,%rdi
    1347:	b8 00 00 00 00       	mov    $0x0,%eax
    134c:	e8 f1 04 00 00       	call   1842 <az_printf>
    1351:	be 39 30 00 00       	mov    $0x3039,%esi
    1356:	48 8d 05 42 2d 00 00 	lea    0x2d42(%rip),%rax        # 409f <_IO_stdin_used+0x9f>
    135d:	48 89 c7             	mov    %rax,%rdi
    1360:	b8 00 00 00 00       	mov    $0x0,%eax
    1365:	e8 d8 04 00 00       	call   1842 <az_printf>
    136a:	48 8d 05 35 2d 00 00 	lea    0x2d35(%rip),%rax        # 40a6 <_IO_stdin_used+0xa6>
    1371:	48 89 c6             	mov    %rax,%rsi
    1374:	48 8d 05 2e 2d 00 00 	lea    0x2d2e(%rip),%rax        # 40a9 <_IO_stdin_used+0xa9>
    137b:	48 89 c7             	mov    %rax,%rdi
    137e:	b8 00 00 00 00       	mov    $0x0,%eax
    1383:	e8 ba 04 00 00       	call   1842 <az_printf>
    1388:	be 4d 01 00 00       	mov    $0x14d,%esi
    138d:	48 8d 05 1b 2d 00 00 	lea    0x2d1b(%rip),%rax        # 40af <_IO_stdin_used+0xaf>
    1394:	48 89 c7             	mov    %rax,%rdi
    1397:	b8 00 00 00 00       	mov    $0x0,%eax
    139c:	e8 a1 04 00 00       	call   1842 <az_printf>
    13a1:	be 00 08 00 00       	mov    $0x800,%esi
    13a6:	48 8d 05 06 2d 00 00 	lea    0x2d06(%rip),%rax        # 40b3 <_IO_stdin_used+0xb3>
    13ad:	48 89 c7             	mov    %rax,%rdi
    13b0:	b8 00 00 00 00       	mov    $0x0,%eax
    13b5:	e8 88 04 00 00       	call   1842 <az_printf>
    13ba:	be 4e 61 bc 00       	mov    $0xbc614e,%esi
    13bf:	48 8d 05 f7 2c 00 00 	lea    0x2cf7(%rip),%rax        # 40bd <_IO_stdin_used+0xbd>
    13c6:	48 89 c7             	mov    %rax,%rdi
    13c9:	b8 00 00 00 00       	mov    $0x0,%eax
    13ce:	e8 6f 04 00 00       	call   1842 <az_printf>
    13d3:	be 4e 61 bc 00       	mov    $0xbc614e,%esi
    13d8:	48 8d 05 e2 2c 00 00 	lea    0x2ce2(%rip),%rax        # 40c1 <_IO_stdin_used+0xc1>
    13df:	48 89 c7             	mov    %rax,%rdi
    13e2:	b8 00 00 00 00       	mov    $0x0,%eax
    13e7:	e8 56 04 00 00       	call   1842 <az_printf>
    13ec:	48 8d 05 d4 2c 00 00 	lea    0x2cd4(%rip),%rax        # 40c7 <_IO_stdin_used+0xc7>
    13f3:	48 89 c7             	mov    %rax,%rdi
    13f6:	b8 00 00 00 00       	mov    $0x0,%eax
    13fb:	e8 42 04 00 00       	call   1842 <az_printf>
    1400:	be 06 00 00 00       	mov    $0x6,%esi
    1405:	bf 05 00 00 00       	mov    $0x5,%edi
    140a:	e8 19 04 00 00       	call   1828 <function_Test>
    140f:	89 c1                	mov    %eax,%ecx
    1411:	ba 06 00 00 00       	mov    $0x6,%edx
    1416:	be 05 00 00 00       	mov    $0x5,%esi
    141b:	48 8d 05 bb 2c 00 00 	lea    0x2cbb(%rip),%rax        # 40dd <_IO_stdin_used+0xdd>
    1422:	48 89 c7             	mov    %rax,%rdi
    1425:	b8 00 00 00 00       	mov    $0x0,%eax
    142a:	e8 13 04 00 00       	call   1842 <az_printf>
    142f:	48 8d 05 b4 2c 00 00 	lea    0x2cb4(%rip),%rax        # 40ea <_IO_stdin_used+0xea>
    1436:	48 89 c7             	mov    %rax,%rdi
    1439:	b8 00 00 00 00       	mov    $0x0,%eax
    143e:	e8 ff 03 00 00       	call   1842 <az_printf>
    1443:	bf 48 00 00 00       	mov    $0x48,%edi
    1448:	e8 03 1d 00 00       	call   3150 <az_putchar>
    144d:	bf 45 00 00 00       	mov    $0x45,%edi
    1452:	e8 f9 1c 00 00       	call   3150 <az_putchar>
    1457:	bf 4c 00 00 00       	mov    $0x4c,%edi
    145c:	e8 ef 1c 00 00       	call   3150 <az_putchar>
    1461:	bf 4c 00 00 00       	mov    $0x4c,%edi
    1466:	e8 e5 1c 00 00       	call   3150 <az_putchar>
    146b:	bf 4f 00 00 00       	mov    $0x4f,%edi
    1470:	e8 db 1c 00 00       	call   3150 <az_putchar>
    1475:	bf 0a 00 00 00       	mov    $0xa,%edi
    147a:	e8 d1 1c 00 00       	call   3150 <az_putchar>
    147f:	48 8d 05 66 2c 00 00 	lea    0x2c66(%rip),%rax        # 40ec <_IO_stdin_used+0xec>
    1486:	48 89 c7             	mov    %rax,%rdi
    1489:	b8 00 00 00 00       	mov    $0x0,%eax
    148e:	e8 af 03 00 00       	call   1842 <az_printf>
    1493:	48 8d 05 55 2c 00 00 	lea    0x2c55(%rip),%rax        # 40ef <_IO_stdin_used+0xef>
    149a:	48 89 c7             	mov    %rax,%rdi
    149d:	b8 00 00 00 00       	mov    $0x0,%eax
    14a2:	e8 9b 03 00 00       	call   1842 <az_printf>
    14a7:	48 8d 05 44 2c 00 00 	lea    0x2c44(%rip),%rax        # 40f2 <_IO_stdin_used+0xf2>
    14ae:	48 89 c7             	mov    %rax,%rdi
    14b1:	b8 00 00 00 00       	mov    $0x0,%eax
    14b6:	e8 87 03 00 00       	call   1842 <az_printf>
    14bb:	48 8d 05 33 2c 00 00 	lea    0x2c33(%rip),%rax        # 40f5 <_IO_stdin_used+0xf5>
    14c2:	48 89 c7             	mov    %rax,%rdi
    14c5:	b8 00 00 00 00       	mov    $0x0,%eax
    14ca:	e8 73 03 00 00       	call   1842 <az_printf>
    14cf:	48 8d 05 2a 2c 00 00 	lea    0x2c2a(%rip),%rax        # 4100 <_IO_stdin_used+0x100>
    14d6:	48 89 c7             	mov    %rax,%rdi
    14d9:	e8 62 fb ff ff       	call   1040 <puts@plt>
    14de:	48 8d 05 26 2c 00 00 	lea    0x2c26(%rip),%rax        # 410b <_IO_stdin_used+0x10b>
    14e5:	48 89 c7             	mov    %rax,%rdi
    14e8:	e8 53 fb ff ff       	call   1040 <puts@plt>
    14ed:	48 8d 05 22 2c 00 00 	lea    0x2c22(%rip),%rax        # 4116 <_IO_stdin_used+0x116>
    14f4:	48 89 c7             	mov    %rax,%rdi
    14f7:	e8 44 fb ff ff       	call   1040 <puts@plt>
    14fc:	be d4 03 00 00       	mov    $0x3d4,%esi
    1501:	48 8d 05 1b 2c 00 00 	lea    0x2c1b(%rip),%rax        # 4123 <_IO_stdin_used+0x123>
    1508:	48 89 c7             	mov    %rax,%rdi
    150b:	b8 00 00 00 00       	mov    $0x0,%eax
    1510:	e8 4b fb ff ff       	call   1060 <printf@plt>
    1515:	48 8d 05 16 2c 00 00 	lea    0x2c16(%rip),%rax        # 4132 <_IO_stdin_used+0x132>
    151c:	48 89 c7             	mov    %rax,%rdi
    151f:	b8 00 00 00 00       	mov    $0x0,%eax
    1524:	e8 19 03 00 00       	call   1842 <az_printf>
    1529:	48 8d 05 0d 2c 00 00 	lea    0x2c0d(%rip),%rax        # 413d <_IO_stdin_used+0x13d>
    1530:	48 89 c7             	mov    %rax,%rdi
    1533:	b8 00 00 00 00       	mov    $0x0,%eax
    1538:	e8 05 03 00 00       	call   1842 <az_printf>
    153d:	be d4 03 00 00       	mov    $0x3d4,%esi
    1542:	48 8d 05 da 2b 00 00 	lea    0x2bda(%rip),%rax        # 4123 <_IO_stdin_used+0x123>
    1549:	48 89 c7             	mov    %rax,%rdi
    154c:	b8 00 00 00 00       	mov    $0x0,%eax
    1551:	e8 ec 02 00 00       	call   1842 <az_printf>
    1556:	48 8d 05 a3 2b 00 00 	lea    0x2ba3(%rip),%rax        # 4100 <_IO_stdin_used+0x100>
    155d:	48 89 c7             	mov    %rax,%rdi
    1560:	e8 db fa ff ff       	call   1040 <puts@plt>
    1565:	48 8d 05 9f 2b 00 00 	lea    0x2b9f(%rip),%rax        # 410b <_IO_stdin_used+0x10b>
    156c:	48 89 c7             	mov    %rax,%rdi
    156f:	e8 cc fa ff ff       	call   1040 <puts@plt>
    1574:	48 8d 05 d0 2b 00 00 	lea    0x2bd0(%rip),%rax        # 414b <_IO_stdin_used+0x14b>
    157b:	48 89 c7             	mov    %rax,%rdi
    157e:	e8 bd fa ff ff       	call   1040 <puts@plt>
    1583:	be 50 00 00 00       	mov    $0x50,%esi
    1588:	48 8d 05 94 2b 00 00 	lea    0x2b94(%rip),%rax        # 4123 <_IO_stdin_used+0x123>
    158f:	48 89 c7             	mov    %rax,%rdi
    1592:	b8 00 00 00 00       	mov    $0x0,%eax
    1597:	e8 c4 fa ff ff       	call   1060 <printf@plt>
    159c:	48 8d 05 8f 2b 00 00 	lea    0x2b8f(%rip),%rax        # 4132 <_IO_stdin_used+0x132>
    15a3:	48 89 c7             	mov    %rax,%rdi
    15a6:	b8 00 00 00 00       	mov    $0x0,%eax
    15ab:	e8 92 02 00 00       	call   1842 <az_printf>
    15b0:	48 8d 05 a0 2b 00 00 	lea    0x2ba0(%rip),%rax        # 4157 <_IO_stdin_used+0x157>
    15b7:	48 89 c7             	mov    %rax,%rdi
    15ba:	b8 00 00 00 00       	mov    $0x0,%eax
    15bf:	e8 7e 02 00 00       	call   1842 <az_printf>
    15c4:	be 50 00 00 00       	mov    $0x50,%esi
    15c9:	48 8d 05 53 2b 00 00 	lea    0x2b53(%rip),%rax        # 4123 <_IO_stdin_used+0x123>
    15d0:	48 89 c7             	mov    %rax,%rdi
    15d3:	b8 00 00 00 00       	mov    $0x0,%eax
    15d8:	e8 65 02 00 00       	call   1842 <az_printf>
    15dd:	48 8d 05 80 2b 00 00 	lea    0x2b80(%rip),%rax        # 4164 <_IO_stdin_used+0x164>
    15e4:	48 89 c7             	mov    %rax,%rdi
    15e7:	e8 54 fa ff ff       	call   1040 <puts@plt>
    15ec:	48 8d 05 7c 2b 00 00 	lea    0x2b7c(%rip),%rax        # 416f <_IO_stdin_used+0x16f>
    15f3:	48 89 c7             	mov    %rax,%rdi
    15f6:	e8 45 fa ff ff       	call   1040 <puts@plt>
    15fb:	48 8d 05 78 2b 00 00 	lea    0x2b78(%rip),%rax        # 417a <_IO_stdin_used+0x17a>
    1602:	48 89 c7             	mov    %rax,%rdi
    1605:	e8 36 fa ff ff       	call   1040 <puts@plt>
    160a:	48 8d 05 75 2b 00 00 	lea    0x2b75(%rip),%rax        # 4186 <_IO_stdin_used+0x186>
    1611:	48 89 c6             	mov    %rax,%rsi
    1614:	48 8d 05 6e 2b 00 00 	lea    0x2b6e(%rip),%rax        # 4189 <_IO_stdin_used+0x189>
    161b:	48 89 c7             	mov    %rax,%rdi
    161e:	b8 00 00 00 00       	mov    $0x0,%eax
    1623:	e8 38 fa ff ff       	call   1060 <printf@plt>
    1628:	48 8d 05 03 2b 00 00 	lea    0x2b03(%rip),%rax        # 4132 <_IO_stdin_used+0x132>
    162f:	48 89 c7             	mov    %rax,%rdi
    1632:	b8 00 00 00 00       	mov    $0x0,%eax
    1637:	e8 06 02 00 00       	call   1842 <az_printf>
    163c:	48 8d 05 56 2b 00 00 	lea    0x2b56(%rip),%rax        # 4199 <_IO_stdin_used+0x199>
    1643:	48 89 c7             	mov    %rax,%rdi
    1646:	b8 00 00 00 00       	mov    $0x0,%eax
    164b:	e8 f2 01 00 00       	call   1842 <az_printf>
    1650:	48 8d 05 2f 2b 00 00 	lea    0x2b2f(%rip),%rax        # 4186 <_IO_stdin_used+0x186>
    1657:	48 89 c6             	mov    %rax,%rsi
    165a:	48 8d 05 28 2b 00 00 	lea    0x2b28(%rip),%rax        # 4189 <_IO_stdin_used+0x189>
    1661:	48 89 c7             	mov    %rax,%rdi
    1664:	b8 00 00 00 00       	mov    $0x0,%eax
    1669:	e8 d4 01 00 00       	call   1842 <az_printf>
    166e:	48 8d 05 31 2b 00 00 	lea    0x2b31(%rip),%rax        # 41a6 <_IO_stdin_used+0x1a6>
    1675:	48 89 c7             	mov    %rax,%rdi
    1678:	e8 c3 f9 ff ff       	call   1040 <puts@plt>
    167d:	48 8d 05 eb 2a 00 00 	lea    0x2aeb(%rip),%rax        # 416f <_IO_stdin_used+0x16f>
    1684:	48 89 c7             	mov    %rax,%rdi
    1687:	e8 b4 f9 ff ff       	call   1040 <puts@plt>
    168c:	48 8d 05 1e 2b 00 00 	lea    0x2b1e(%rip),%rax        # 41b1 <_IO_stdin_used+0x1b1>
    1693:	48 89 c7             	mov    %rax,%rdi
    1696:	e8 a5 f9 ff ff       	call   1040 <puts@plt>
    169b:	48 8d 05 1e 2b 00 00 	lea    0x2b1e(%rip),%rax        # 41c0 <_IO_stdin_used+0x1c0>
    16a2:	48 89 c6             	mov    %rax,%rsi
    16a5:	48 8d 05 1a 2b 00 00 	lea    0x2b1a(%rip),%rax        # 41c6 <_IO_stdin_used+0x1c6>
    16ac:	48 89 c7             	mov    %rax,%rdi
    16af:	b8 00 00 00 00       	mov    $0x0,%eax
    16b4:	e8 a7 f9 ff ff       	call   1060 <printf@plt>
    16b9:	48 8d 05 72 2a 00 00 	lea    0x2a72(%rip),%rax        # 4132 <_IO_stdin_used+0x132>
    16c0:	48 89 c7             	mov    %rax,%rdi
    16c3:	b8 00 00 00 00       	mov    $0x0,%eax
    16c8:	e8 75 01 00 00       	call   1842 <az_printf>
    16cd:	48 8d 05 02 2b 00 00 	lea    0x2b02(%rip),%rax        # 41d6 <_IO_stdin_used+0x1d6>
    16d4:	48 89 c7             	mov    %rax,%rdi
    16d7:	b8 00 00 00 00       	mov    $0x0,%eax
    16dc:	e8 61 01 00 00       	call   1842 <az_printf>
    16e1:	48 8d 05 fe 2a 00 00 	lea    0x2afe(%rip),%rax        # 41e6 <_IO_stdin_used+0x1e6>
    16e8:	48 89 c6             	mov    %rax,%rsi
    16eb:	48 8d 05 d4 2a 00 00 	lea    0x2ad4(%rip),%rax        # 41c6 <_IO_stdin_used+0x1c6>
    16f2:	48 89 c7             	mov    %rax,%rdi
    16f5:	b8 00 00 00 00       	mov    $0x0,%eax
    16fa:	e8 43 01 00 00       	call   1842 <az_printf>
    16ff:	c7 45 ec 58 70 07 00 	movl   $0x77058,-0x14(%rbp)
    1706:	48 8d 05 62 2a 00 00 	lea    0x2a62(%rip),%rax        # 416f <_IO_stdin_used+0x16f>
    170d:	48 89 c7             	mov    %rax,%rdi
    1710:	e8 2b f9 ff ff       	call   1040 <puts@plt>
    1715:	48 8d 05 cf 2a 00 00 	lea    0x2acf(%rip),%rax        # 41eb <_IO_stdin_used+0x1eb>
    171c:	48 89 c7             	mov    %rax,%rdi
    171f:	e8 1c f9 ff ff       	call   1040 <puts@plt>
    1724:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    1728:	48 89 c6             	mov    %rax,%rsi
    172b:	48 8d 05 ca 2a 00 00 	lea    0x2aca(%rip),%rax        # 41fc <_IO_stdin_used+0x1fc>
    1732:	48 89 c7             	mov    %rax,%rdi
    1735:	b8 00 00 00 00       	mov    $0x0,%eax
    173a:	e8 21 f9 ff ff       	call   1060 <printf@plt>
    173f:	48 8d 05 ec 29 00 00 	lea    0x29ec(%rip),%rax        # 4132 <_IO_stdin_used+0x132>
    1746:	48 89 c7             	mov    %rax,%rdi
    1749:	b8 00 00 00 00       	mov    $0x0,%eax
    174e:	e8 ef 00 00 00       	call   1842 <az_printf>
    1753:	48 8d 05 b0 2a 00 00 	lea    0x2ab0(%rip),%rax        # 420a <_IO_stdin_used+0x20a>
    175a:	48 89 c7             	mov    %rax,%rdi
    175d:	b8 00 00 00 00       	mov    $0x0,%eax
    1762:	e8 db 00 00 00       	call   1842 <az_printf>
    1767:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    176b:	48 89 c6             	mov    %rax,%rsi
    176e:	48 8d 05 87 2a 00 00 	lea    0x2a87(%rip),%rax        # 41fc <_IO_stdin_used+0x1fc>
    1775:	48 89 c7             	mov    %rax,%rdi
    1778:	b8 00 00 00 00       	mov    $0x0,%eax
    177d:	e8 c0 00 00 00       	call   1842 <az_printf>
    1782:	48 8d 05 93 2a 00 00 	lea    0x2a93(%rip),%rax        # 421c <_IO_stdin_used+0x21c>
    1789:	48 89 c7             	mov    %rax,%rdi
    178c:	e8 af f8 ff ff       	call   1040 <puts@plt>
    1791:	48 8d 05 d7 29 00 00 	lea    0x29d7(%rip),%rax        # 416f <_IO_stdin_used+0x16f>
    1798:	48 89 c7             	mov    %rax,%rdi
    179b:	e8 a0 f8 ff ff       	call   1040 <puts@plt>
    17a0:	48 8d 05 44 2a 00 00 	lea    0x2a44(%rip),%rax        # 41eb <_IO_stdin_used+0x1eb>
    17a7:	48 89 c7             	mov    %rax,%rdi
    17aa:	e8 91 f8 ff ff       	call   1040 <puts@plt>
    17af:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    17b3:	48 89 c6             	mov    %rax,%rsi
    17b6:	48 8d 05 64 2a 00 00 	lea    0x2a64(%rip),%rax        # 4221 <_IO_stdin_used+0x221>
    17bd:	48 89 c7             	mov    %rax,%rdi
    17c0:	b8 00 00 00 00       	mov    $0x0,%eax
    17c5:	e8 96 f8 ff ff       	call   1060 <printf@plt>
    17ca:	48 8d 05 61 29 00 00 	lea    0x2961(%rip),%rax        # 4132 <_IO_stdin_used+0x132>
    17d1:	48 89 c7             	mov    %rax,%rdi
    17d4:	b8 00 00 00 00       	mov    $0x0,%eax
    17d9:	e8 64 00 00 00       	call   1842 <az_printf>
    17de:	48 8d 05 25 2a 00 00 	lea    0x2a25(%rip),%rax        # 420a <_IO_stdin_used+0x20a>
    17e5:	48 89 c7             	mov    %rax,%rdi
    17e8:	b8 00 00 00 00       	mov    $0x0,%eax
    17ed:	e8 50 00 00 00       	call   1842 <az_printf>
    17f2:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    17f6:	48 89 c6             	mov    %rax,%rsi
    17f9:	48 8d 05 21 2a 00 00 	lea    0x2a21(%rip),%rax        # 4221 <_IO_stdin_used+0x221>
    1800:	48 89 c7             	mov    %rax,%rdi
    1803:	b8 00 00 00 00       	mov    $0x0,%eax
    1808:	e8 35 00 00 00       	call   1842 <az_printf>
    180d:	b8 00 00 00 00       	mov    $0x0,%eax
    1812:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    1816:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    181d:	00 00 
    181f:	74 05                	je     1826 <main+0x6ad>
    1821:	e8 2a f8 ff ff       	call   1050 <__stack_chk_fail@plt>
    1826:	c9                   	leave  
    1827:	c3                   	ret    

0000000000001828 <function_Test>:
    1828:	55                   	push   %rbp
    1829:	48 89 e5             	mov    %rsp,%rbp
    182c:	89 7d ec             	mov    %edi,-0x14(%rbp)
    182f:	89 75 e8             	mov    %esi,-0x18(%rbp)
    1832:	8b 55 ec             	mov    -0x14(%rbp),%edx
    1835:	8b 45 e8             	mov    -0x18(%rbp),%eax
    1838:	01 d0                	add    %edx,%eax
    183a:	89 45 fc             	mov    %eax,-0x4(%rbp)
    183d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1840:	5d                   	pop    %rbp
    1841:	c3                   	ret    

0000000000001842 <az_printf>:
    1842:	55                   	push   %rbp
    1843:	48 89 e5             	mov    %rsp,%rbp
    1846:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
    184d:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
    1854:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
    185b:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
    1862:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    1869:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
    1870:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
    1877:	84 c0                	test   %al,%al
    1879:	74 20                	je     189b <az_printf+0x59>
    187b:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
    187f:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
    1883:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
    1887:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
    188b:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
    188f:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
    1893:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
    1897:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
    189b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    18a2:	00 00 
    18a4:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    18ab:	31 c0                	xor    %eax,%eax
    18ad:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
    18b4:	00 00 00 
    18b7:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
    18be:	00 00 00 
    18c1:	48 8d 45 10          	lea    0x10(%rbp),%rax
    18c5:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    18cc:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
    18d3:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    18da:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
    18e1:	48 8b 85 28 ff ff ff 	mov    -0xd8(%rbp),%rax
    18e8:	48 89 d6             	mov    %rdx,%rsi
    18eb:	48 89 c7             	mov    %rax,%rdi
    18ee:	e8 1e 00 00 00       	call   1911 <az_default>
    18f3:	b8 00 00 00 00       	mov    $0x0,%eax
    18f8:	48 8b 95 48 ff ff ff 	mov    -0xb8(%rbp),%rdx
    18ff:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    1906:	00 00 
    1908:	74 05                	je     190f <az_printf+0xcd>
    190a:	e8 41 f7 ff ff       	call   1050 <__stack_chk_fail@plt>
    190f:	c9                   	leave  
    1910:	c3                   	ret    

0000000000001911 <az_default>:
    1911:	55                   	push   %rbp
    1912:	48 89 e5             	mov    %rsp,%rbp
    1915:	48 83 ec 20          	sub    $0x20,%rsp
    1919:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    191d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1921:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1925:	48 89 c7             	mov    %rax,%rdi
    1928:	e8 47 00 00 00       	call   1974 <az_default_mod>
    192d:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1930:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
    1934:	75 15                	jne    194b <az_default+0x3a>
    1936:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    193a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    193e:	48 89 d6             	mov    %rdx,%rsi
    1941:	48 89 c7             	mov    %rax,%rdi
    1944:	e8 4d 01 00 00       	call   1a96 <az_input>
    1949:	eb 26                	jmp    1971 <az_default+0x60>
    194b:	83 7d fc 02          	cmpl   $0x2,-0x4(%rbp)
    194f:	75 0e                	jne    195f <az_default+0x4e>
    1951:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1955:	48 89 c7             	mov    %rax,%rdi
    1958:	e8 a2 00 00 00       	call   19ff <az_mod>
    195d:	eb 12                	jmp    1971 <az_default+0x60>
    195f:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1963:	79 0c                	jns    1971 <az_default+0x60>
    1965:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1969:	48 89 c7             	mov    %rax,%rdi
    196c:	e8 1d 18 00 00       	call   318e <az_putstr>
    1971:	90                   	nop
    1972:	c9                   	leave  
    1973:	c3                   	ret    

0000000000001974 <az_default_mod>:
    1974:	55                   	push   %rbp
    1975:	48 89 e5             	mov    %rsp,%rbp
    1978:	48 83 ec 20          	sub    $0x20,%rsp
    197c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1980:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1984:	be 25 00 00 00       	mov    $0x25,%esi
    1989:	48 89 c7             	mov    %rax,%rdi
    198c:	e8 e5 14 00 00       	call   2e76 <az_chrpos>
    1991:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1994:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1997:	48 98                	cltq   
    1999:	48 8d 50 01          	lea    0x1(%rax),%rdx
    199d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19a1:	48 01 d0             	add    %rdx,%rax
    19a4:	0f b6 00             	movzbl (%rax),%eax
    19a7:	3c 25                	cmp    $0x25,%al
    19a9:	75 1b                	jne    19c6 <az_default_mod+0x52>
    19ab:	8b 45 fc             	mov    -0x4(%rbp),%eax
    19ae:	48 63 d0             	movslq %eax,%rdx
    19b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19b5:	48 01 d0             	add    %rdx,%rax
    19b8:	0f b6 00             	movzbl (%rax),%eax
    19bb:	3c 25                	cmp    $0x25,%al
    19bd:	75 07                	jne    19c6 <az_default_mod+0x52>
    19bf:	b8 02 00 00 00       	mov    $0x2,%eax
    19c4:	eb 37                	jmp    19fd <az_default_mod+0x89>
    19c6:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
    19ca:	75 07                	jne    19d3 <az_default_mod+0x5f>
    19cc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    19d1:	eb 2a                	jmp    19fd <az_default_mod+0x89>
    19d3:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    19d7:	74 0b                	je     19e4 <az_default_mod+0x70>
    19d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    19dd:	0f b6 00             	movzbl (%rax),%eax
    19e0:	3c 25                	cmp    $0x25,%al
    19e2:	75 07                	jne    19eb <az_default_mod+0x77>
    19e4:	b8 01 00 00 00       	mov    $0x1,%eax
    19e9:	eb 12                	jmp    19fd <az_default_mod+0x89>
    19eb:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    19ef:	7e 07                	jle    19f8 <az_default_mod+0x84>
    19f1:	b8 01 00 00 00       	mov    $0x1,%eax
    19f6:	eb 05                	jmp    19fd <az_default_mod+0x89>
    19f8:	b8 00 00 00 00       	mov    $0x0,%eax
    19fd:	c9                   	leave  
    19fe:	c3                   	ret    

00000000000019ff <az_mod>:
    19ff:	55                   	push   %rbp
    1a00:	48 89 e5             	mov    %rsp,%rbp
    1a03:	48 83 ec 20          	sub    $0x20,%rsp
    1a07:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1a0b:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1a12:	eb 6a                	jmp    1a7e <az_mod+0x7f>
    1a14:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1a17:	48 63 d0             	movslq %eax,%rdx
    1a1a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a1e:	48 01 d0             	add    %rdx,%rax
    1a21:	0f b6 00             	movzbl (%rax),%eax
    1a24:	3c 25                	cmp    $0x25,%al
    1a26:	75 38                	jne    1a60 <az_mod+0x61>
    1a28:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1a2c:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1a2f:	48 63 d0             	movslq %eax,%rdx
    1a32:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a36:	48 01 d0             	add    %rdx,%rax
    1a39:	0f b6 00             	movzbl (%rax),%eax
    1a3c:	3c 25                	cmp    $0x25,%al
    1a3e:	75 20                	jne    1a60 <az_mod+0x61>
    1a40:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1a43:	8d 50 01             	lea    0x1(%rax),%edx
    1a46:	89 55 fc             	mov    %edx,-0x4(%rbp)
    1a49:	48 63 d0             	movslq %eax,%rdx
    1a4c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a50:	48 01 d0             	add    %rdx,%rax
    1a53:	0f b6 00             	movzbl (%rax),%eax
    1a56:	0f be c0             	movsbl %al,%eax
    1a59:	89 c7                	mov    %eax,%edi
    1a5b:	e8 f0 16 00 00       	call   3150 <az_putchar>
    1a60:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1a63:	48 63 d0             	movslq %eax,%rdx
    1a66:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a6a:	48 01 d0             	add    %rdx,%rax
    1a6d:	0f b6 00             	movzbl (%rax),%eax
    1a70:	0f be c0             	movsbl %al,%eax
    1a73:	89 c7                	mov    %eax,%edi
    1a75:	e8 d6 16 00 00       	call   3150 <az_putchar>
    1a7a:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1a7e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1a81:	48 63 d0             	movslq %eax,%rdx
    1a84:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1a88:	48 01 d0             	add    %rdx,%rax
    1a8b:	0f b6 00             	movzbl (%rax),%eax
    1a8e:	84 c0                	test   %al,%al
    1a90:	75 82                	jne    1a14 <az_mod+0x15>
    1a92:	90                   	nop
    1a93:	90                   	nop
    1a94:	c9                   	leave  
    1a95:	c3                   	ret    

0000000000001a96 <az_input>:
    1a96:	55                   	push   %rbp
    1a97:	48 89 e5             	mov    %rsp,%rbp
    1a9a:	48 83 ec 20          	sub    $0x20,%rsp
    1a9e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    1aa2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    1aa6:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1aad:	e9 83 00 00 00       	jmp    1b35 <az_input+0x9f>
    1ab2:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1ab5:	48 63 d0             	movslq %eax,%rdx
    1ab8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1abc:	48 01 d0             	add    %rdx,%rax
    1abf:	0f b6 00             	movzbl (%rax),%eax
    1ac2:	3c 25                	cmp    $0x25,%al
    1ac4:	75 3d                	jne    1b03 <az_input+0x6d>
    1ac6:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1aca:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1acd:	48 63 d0             	movslq %eax,%rdx
    1ad0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1ad4:	48 01 d0             	add    %rdx,%rax
    1ad7:	0f b6 00             	movzbl (%rax),%eax
    1ada:	0f be c0             	movsbl %al,%eax
    1add:	89 c7                	mov    %eax,%edi
    1adf:	e8 d9 00 00 00       	call   1bbd <az_getflag>
    1ae4:	88 45 fb             	mov    %al,-0x5(%rbp)
    1ae7:	0f be 75 fb          	movsbl -0x5(%rbp),%esi
    1aeb:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    1aee:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    1af2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1af6:	48 89 c7             	mov    %rax,%rdi
    1af9:	e8 e6 02 00 00       	call   1de4 <az_output>
    1afe:	89 45 fc             	mov    %eax,-0x4(%rbp)
    1b01:	eb 2e                	jmp    1b31 <az_input+0x9b>
    1b03:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1b06:	48 63 d0             	movslq %eax,%rdx
    1b09:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b0d:	48 01 d0             	add    %rdx,%rax
    1b10:	0f b6 00             	movzbl (%rax),%eax
    1b13:	84 c0                	test   %al,%al
    1b15:	74 1a                	je     1b31 <az_input+0x9b>
    1b17:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1b1a:	48 63 d0             	movslq %eax,%rdx
    1b1d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b21:	48 01 d0             	add    %rdx,%rax
    1b24:	0f b6 00             	movzbl (%rax),%eax
    1b27:	0f be c0             	movsbl %al,%eax
    1b2a:	89 c7                	mov    %eax,%edi
    1b2c:	e8 1f 16 00 00       	call   3150 <az_putchar>
    1b31:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1b35:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1b38:	48 63 d0             	movslq %eax,%rdx
    1b3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    1b3f:	48 01 d0             	add    %rdx,%rax
    1b42:	0f b6 00             	movzbl (%rax),%eax
    1b45:	84 c0                	test   %al,%al
    1b47:	0f 85 65 ff ff ff    	jne    1ab2 <az_input+0x1c>
    1b4d:	90                   	nop
    1b4e:	90                   	nop
    1b4f:	c9                   	leave  
    1b50:	c3                   	ret    

0000000000001b51 <az_skip>:
    1b51:	55                   	push   %rbp
    1b52:	48 89 e5             	mov    %rsp,%rbp
    1b55:	48 83 ec 10          	sub    $0x10,%rsp
    1b59:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1b5d:	89 75 f4             	mov    %esi,-0xc(%rbp)
    1b60:	eb 04                	jmp    1b66 <az_skip+0x15>
    1b62:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    1b66:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1b69:	48 63 d0             	movslq %eax,%rdx
    1b6c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1b70:	48 01 d0             	add    %rdx,%rax
    1b73:	0f b6 00             	movzbl (%rax),%eax
    1b76:	0f be c0             	movsbl %al,%eax
    1b79:	89 c7                	mov    %eax,%edi
    1b7b:	e8 b0 11 00 00       	call   2d30 <az_isalpha>
    1b80:	85 c0                	test   %eax,%eax
    1b82:	74 de                	je     1b62 <az_skip+0x11>
    1b84:	8b 45 f4             	mov    -0xc(%rbp),%eax
    1b87:	c9                   	leave  
    1b88:	c3                   	ret    

0000000000001b89 <az_fill>:
    1b89:	55                   	push   %rbp
    1b8a:	48 89 e5             	mov    %rsp,%rbp
    1b8d:	48 83 ec 20          	sub    $0x20,%rsp
    1b91:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1b94:	89 f0                	mov    %esi,%eax
    1b96:	88 45 e8             	mov    %al,-0x18(%rbp)
    1b99:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    1ba0:	eb 0f                	jmp    1bb1 <az_fill+0x28>
    1ba2:	0f be 45 e8          	movsbl -0x18(%rbp),%eax
    1ba6:	89 c7                	mov    %eax,%edi
    1ba8:	e8 a3 15 00 00       	call   3150 <az_putchar>
    1bad:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    1bb1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1bb4:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    1bb7:	7e e9                	jle    1ba2 <az_fill+0x19>
    1bb9:	90                   	nop
    1bba:	90                   	nop
    1bbb:	c9                   	leave  
    1bbc:	c3                   	ret    

0000000000001bbd <az_getflag>:
    1bbd:	55                   	push   %rbp
    1bbe:	48 89 e5             	mov    %rsp,%rbp
    1bc1:	89 f8                	mov    %edi,%eax
    1bc3:	88 45 fc             	mov    %al,-0x4(%rbp)
    1bc6:	80 7d fc 30          	cmpb   $0x30,-0x4(%rbp)
    1bca:	75 07                	jne    1bd3 <az_getflag+0x16>
    1bcc:	b8 30 00 00 00       	mov    $0x30,%eax
    1bd1:	eb 53                	jmp    1c26 <az_getflag+0x69>
    1bd3:	80 7d fc 23          	cmpb   $0x23,-0x4(%rbp)
    1bd7:	75 07                	jne    1be0 <az_getflag+0x23>
    1bd9:	b8 23 00 00 00       	mov    $0x23,%eax
    1bde:	eb 46                	jmp    1c26 <az_getflag+0x69>
    1be0:	80 7d fc 2b          	cmpb   $0x2b,-0x4(%rbp)
    1be4:	75 07                	jne    1bed <az_getflag+0x30>
    1be6:	b8 2b 00 00 00       	mov    $0x2b,%eax
    1beb:	eb 39                	jmp    1c26 <az_getflag+0x69>
    1bed:	80 7d fc 2d          	cmpb   $0x2d,-0x4(%rbp)
    1bf1:	75 07                	jne    1bfa <az_getflag+0x3d>
    1bf3:	b8 2d 00 00 00       	mov    $0x2d,%eax
    1bf8:	eb 2c                	jmp    1c26 <az_getflag+0x69>
    1bfa:	80 7d fc 2a          	cmpb   $0x2a,-0x4(%rbp)
    1bfe:	75 07                	jne    1c07 <az_getflag+0x4a>
    1c00:	b8 2a 00 00 00       	mov    $0x2a,%eax
    1c05:	eb 1f                	jmp    1c26 <az_getflag+0x69>
    1c07:	80 7d fc 2e          	cmpb   $0x2e,-0x4(%rbp)
    1c0b:	75 07                	jne    1c14 <az_getflag+0x57>
    1c0d:	b8 2e 00 00 00       	mov    $0x2e,%eax
    1c12:	eb 12                	jmp    1c26 <az_getflag+0x69>
    1c14:	80 7d fc 2a          	cmpb   $0x2a,-0x4(%rbp)
    1c18:	75 07                	jne    1c21 <az_getflag+0x64>
    1c1a:	b8 2a 00 00 00       	mov    $0x2a,%eax
    1c1f:	eb 05                	jmp    1c26 <az_getflag+0x69>
    1c21:	b8 00 00 00 00       	mov    $0x0,%eax
    1c26:	5d                   	pop    %rbp
    1c27:	c3                   	ret    

0000000000001c28 <az_plusflag>:
    1c28:	55                   	push   %rbp
    1c29:	48 89 e5             	mov    %rsp,%rbp
    1c2c:	53                   	push   %rbx
    1c2d:	48 83 ec 38          	sub    $0x38,%rsp
    1c31:	89 7d dc             	mov    %edi,-0x24(%rbp)
    1c34:	89 f0                	mov    %esi,%eax
    1c36:	89 55 d4             	mov    %edx,-0x2c(%rbp)
    1c39:	48 89 4d c8          	mov    %rcx,-0x38(%rbp)
    1c3d:	88 45 d8             	mov    %al,-0x28(%rbp)
    1c40:	8b 5d d4             	mov    -0x2c(%rbp),%ebx
    1c43:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1c46:	89 c7                	mov    %eax,%edi
    1c48:	e8 fa 12 00 00       	call   2f47 <az_nbrlen>
    1c4d:	89 c2                	mov    %eax,%edx
    1c4f:	89 d8                	mov    %ebx,%eax
    1c51:	29 d0                	sub    %edx,%eax
    1c53:	89 45 ec             	mov    %eax,-0x14(%rbp)
    1c56:	0f be 55 d8          	movsbl -0x28(%rbp),%edx
    1c5a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1c5e:	89 d6                	mov    %edx,%esi
    1c60:	48 89 c7             	mov    %rax,%rdi
    1c63:	e8 0e 12 00 00       	call   2e76 <az_chrpos>
    1c68:	48 98                	cltq   
    1c6a:	48 8d 50 01          	lea    0x1(%rax),%rdx
    1c6e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1c72:	48 01 d0             	add    %rdx,%rax
    1c75:	0f b6 00             	movzbl (%rax),%eax
    1c78:	88 45 ea             	mov    %al,-0x16(%rbp)
    1c7b:	0f be 55 d8          	movsbl -0x28(%rbp),%edx
    1c7f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1c83:	89 d6                	mov    %edx,%esi
    1c85:	48 89 c7             	mov    %rax,%rdi
    1c88:	e8 e9 11 00 00       	call   2e76 <az_chrpos>
    1c8d:	48 98                	cltq   
    1c8f:	48 8d 50 02          	lea    0x2(%rax),%rdx
    1c93:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    1c97:	48 01 d0             	add    %rdx,%rax
    1c9a:	0f b6 00             	movzbl (%rax),%eax
    1c9d:	88 45 eb             	mov    %al,-0x15(%rbp)
    1ca0:	80 7d d8 2b          	cmpb   $0x2b,-0x28(%rbp)
    1ca4:	75 35                	jne    1cdb <az_plusflag+0xb3>
    1ca6:	80 7d ea 30          	cmpb   $0x30,-0x16(%rbp)
    1caa:	74 2f                	je     1cdb <az_plusflag+0xb3>
    1cac:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    1cb0:	74 0f                	je     1cc1 <az_plusflag+0x99>
    1cb2:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1cb5:	be 20 00 00 00       	mov    $0x20,%esi
    1cba:	89 c7                	mov    %eax,%edi
    1cbc:	e8 c8 fe ff ff       	call   1b89 <az_fill>
    1cc1:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
    1cc5:	7e 0a                	jle    1cd1 <az_plusflag+0xa9>
    1cc7:	bf 2b 00 00 00       	mov    $0x2b,%edi
    1ccc:	e8 7f 14 00 00       	call   3150 <az_putchar>
    1cd1:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1cd4:	89 c7                	mov    %eax,%edi
    1cd6:	e8 94 13 00 00       	call   306f <az_putnbr>
    1cdb:	80 7d d8 2b          	cmpb   $0x2b,-0x28(%rbp)
    1cdf:	75 2d                	jne    1d0e <az_plusflag+0xe6>
    1ce1:	80 7d ea 30          	cmpb   $0x30,-0x16(%rbp)
    1ce5:	75 27                	jne    1d0e <az_plusflag+0xe6>
    1ce7:	f7 5d dc             	negl   -0x24(%rbp)
    1cea:	bf 2d 00 00 00       	mov    $0x2d,%edi
    1cef:	e8 5c 14 00 00       	call   3150 <az_putchar>
    1cf4:	80 7d eb 31          	cmpb   $0x31,-0x15(%rbp)
    1cf8:	74 0a                	je     1d04 <az_plusflag+0xdc>
    1cfa:	bf 30 00 00 00       	mov    $0x30,%edi
    1cff:	e8 4c 14 00 00       	call   3150 <az_putchar>
    1d04:	8b 45 dc             	mov    -0x24(%rbp),%eax
    1d07:	89 c7                	mov    %eax,%edi
    1d09:	e8 61 13 00 00       	call   306f <az_putnbr>
    1d0e:	90                   	nop
    1d0f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1d13:	c9                   	leave  
    1d14:	c3                   	ret    

0000000000001d15 <az_minusflag>:
    1d15:	55                   	push   %rbp
    1d16:	48 89 e5             	mov    %rsp,%rbp
    1d19:	48 83 ec 10          	sub    $0x10,%rsp
    1d1d:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1d20:	89 f0                	mov    %esi,%eax
    1d22:	88 45 f8             	mov    %al,-0x8(%rbp)
    1d25:	80 7d f8 2d          	cmpb   $0x2d,-0x8(%rbp)
    1d29:	75 0a                	jne    1d35 <az_minusflag+0x20>
    1d2b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1d2e:	89 c7                	mov    %eax,%edi
    1d30:	e8 3a 13 00 00       	call   306f <az_putnbr>
    1d35:	90                   	nop
    1d36:	c9                   	leave  
    1d37:	c3                   	ret    

0000000000001d38 <az_spaceflag>:
    1d38:	55                   	push   %rbp
    1d39:	48 89 e5             	mov    %rsp,%rbp
    1d3c:	53                   	push   %rbx
    1d3d:	48 83 ec 18          	sub    $0x18,%rsp
    1d41:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1d44:	89 f0                	mov    %esi,%eax
    1d46:	89 55 e4             	mov    %edx,-0x1c(%rbp)
    1d49:	88 45 e8             	mov    %al,-0x18(%rbp)
    1d4c:	80 7d e8 20          	cmpb   $0x20,-0x18(%rbp)
    1d50:	75 16                	jne    1d68 <az_spaceflag+0x30>
    1d52:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
    1d56:	79 10                	jns    1d68 <az_spaceflag+0x30>
    1d58:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    1d5c:	7e 0a                	jle    1d68 <az_spaceflag+0x30>
    1d5e:	bf 20 00 00 00       	mov    $0x20,%edi
    1d63:	e8 e8 13 00 00       	call   3150 <az_putchar>
    1d68:	80 7d e8 20          	cmpb   $0x20,-0x18(%rbp)
    1d6c:	75 2f                	jne    1d9d <az_spaceflag+0x65>
    1d6e:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
    1d72:	74 29                	je     1d9d <az_spaceflag+0x65>
    1d74:	8b 5d e4             	mov    -0x1c(%rbp),%ebx
    1d77:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1d7a:	89 c7                	mov    %eax,%edi
    1d7c:	e8 c6 11 00 00       	call   2f47 <az_nbrlen>
    1d81:	89 c2                	mov    %eax,%edx
    1d83:	89 d8                	mov    %ebx,%eax
    1d85:	29 d0                	sub    %edx,%eax
    1d87:	be 20 00 00 00       	mov    $0x20,%esi
    1d8c:	89 c7                	mov    %eax,%edi
    1d8e:	e8 f6 fd ff ff       	call   1b89 <az_fill>
    1d93:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1d96:	89 c7                	mov    %eax,%edi
    1d98:	e8 d2 12 00 00       	call   306f <az_putnbr>
    1d9d:	90                   	nop
    1d9e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1da2:	c9                   	leave  
    1da3:	c3                   	ret    

0000000000001da4 <az_zeroflag>:
    1da4:	55                   	push   %rbp
    1da5:	48 89 e5             	mov    %rsp,%rbp
    1da8:	48 83 ec 10          	sub    $0x10,%rsp
    1dac:	89 7d fc             	mov    %edi,-0x4(%rbp)
    1daf:	89 f0                	mov    %esi,%eax
    1db1:	88 45 f8             	mov    %al,-0x8(%rbp)
    1db4:	80 7d f8 30          	cmpb   $0x30,-0x8(%rbp)
    1db8:	75 27                	jne    1de1 <az_zeroflag+0x3d>
    1dba:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    1dbe:	79 21                	jns    1de1 <az_zeroflag+0x3d>
    1dc0:	f7 5d fc             	negl   -0x4(%rbp)
    1dc3:	bf 2d 00 00 00       	mov    $0x2d,%edi
    1dc8:	e8 83 13 00 00       	call   3150 <az_putchar>
    1dcd:	bf 30 00 00 00       	mov    $0x30,%edi
    1dd2:	e8 79 13 00 00       	call   3150 <az_putchar>
    1dd7:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1dda:	89 c7                	mov    %eax,%edi
    1ddc:	e8 8e 12 00 00       	call   306f <az_putnbr>
    1de1:	90                   	nop
    1de2:	c9                   	leave  
    1de3:	c3                   	ret    

0000000000001de4 <az_output>:
    1de4:	55                   	push   %rbp
    1de5:	48 89 e5             	mov    %rsp,%rbp
    1de8:	48 83 ec 20          	sub    $0x20,%rsp
    1dec:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    1df0:	89 f0                	mov    %esi,%eax
    1df2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    1df6:	89 4d f0             	mov    %ecx,-0x10(%rbp)
    1df9:	88 45 f4             	mov    %al,-0xc(%rbp)
    1dfc:	8b 55 f0             	mov    -0x10(%rbp),%edx
    1dff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e03:	89 d6                	mov    %edx,%esi
    1e05:	48 89 c7             	mov    %rax,%rdi
    1e08:	e8 44 fd ff ff       	call   1b51 <az_skip>
    1e0d:	89 45 f0             	mov    %eax,-0x10(%rbp)
    1e10:	0f be 55 f4          	movsbl -0xc(%rbp),%edx
    1e14:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1e17:	48 63 c8             	movslq %eax,%rcx
    1e1a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e1e:	48 01 c8             	add    %rcx,%rax
    1e21:	0f b6 00             	movzbl (%rax),%eax
    1e24:	0f be f0             	movsbl %al,%esi
    1e27:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    1e2b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    1e2f:	48 89 c7             	mov    %rax,%rdi
    1e32:	e8 5e 04 00 00       	call   2295 <az_speciftypeini>
    1e37:	8b 45 f0             	mov    -0x10(%rbp),%eax
    1e3a:	c9                   	leave  
    1e3b:	c3                   	ret    

0000000000001e3c <az_o_support>:
    1e3c:	55                   	push   %rbp
    1e3d:	48 89 e5             	mov    %rsp,%rbp
    1e40:	53                   	push   %rbx
    1e41:	48 83 ec 18          	sub    $0x18,%rsp
    1e45:	89 7d ec             	mov    %edi,-0x14(%rbp)
    1e48:	89 75 e8             	mov    %esi,-0x18(%rbp)
    1e4b:	89 c8                	mov    %ecx,%eax
    1e4d:	88 55 e4             	mov    %dl,-0x1c(%rbp)
    1e50:	88 45 e0             	mov    %al,-0x20(%rbp)
    1e53:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    1e57:	0f 84 f1 00 00 00    	je     1f4e <az_o_support+0x112>
    1e5d:	80 7d e4 2b          	cmpb   $0x2b,-0x1c(%rbp)
    1e61:	75 25                	jne    1e88 <az_o_support+0x4c>
    1e63:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
    1e67:	7e 1f                	jle    1e88 <az_o_support+0x4c>
    1e69:	8b 5d e8             	mov    -0x18(%rbp),%ebx
    1e6c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1e6f:	89 c7                	mov    %eax,%edi
    1e71:	e8 d1 10 00 00       	call   2f47 <az_nbrlen>
    1e76:	89 c2                	mov    %eax,%edx
    1e78:	89 d8                	mov    %ebx,%eax
    1e7a:	29 d0                	sub    %edx,%eax
    1e7c:	be 20 00 00 00       	mov    $0x20,%esi
    1e81:	89 c7                	mov    %eax,%edi
    1e83:	e8 01 fd ff ff       	call   1b89 <az_fill>
    1e88:	80 7d e4 30          	cmpb   $0x30,-0x1c(%rbp)
    1e8c:	75 25                	jne    1eb3 <az_o_support+0x77>
    1e8e:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
    1e92:	7e 1f                	jle    1eb3 <az_o_support+0x77>
    1e94:	8b 5d e8             	mov    -0x18(%rbp),%ebx
    1e97:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1e9a:	89 c7                	mov    %eax,%edi
    1e9c:	e8 a6 10 00 00       	call   2f47 <az_nbrlen>
    1ea1:	89 c2                	mov    %eax,%edx
    1ea3:	89 d8                	mov    %ebx,%eax
    1ea5:	29 d0                	sub    %edx,%eax
    1ea7:	be 30 00 00 00       	mov    $0x30,%esi
    1eac:	89 c7                	mov    %eax,%edi
    1eae:	e8 d6 fc ff ff       	call   1b89 <az_fill>
    1eb3:	80 7d e4 23          	cmpb   $0x23,-0x1c(%rbp)
    1eb7:	75 35                	jne    1eee <az_o_support+0xb2>
    1eb9:	80 7d e0 2b          	cmpb   $0x2b,-0x20(%rbp)
    1ebd:	75 25                	jne    1ee4 <az_o_support+0xa8>
    1ebf:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
    1ec3:	7e 1f                	jle    1ee4 <az_o_support+0xa8>
    1ec5:	8b 5d e8             	mov    -0x18(%rbp),%ebx
    1ec8:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1ecb:	89 c7                	mov    %eax,%edi
    1ecd:	e8 75 10 00 00       	call   2f47 <az_nbrlen>
    1ed2:	89 c2                	mov    %eax,%edx
    1ed4:	89 d8                	mov    %ebx,%eax
    1ed6:	29 d0                	sub    %edx,%eax
    1ed8:	be 20 00 00 00       	mov    $0x20,%esi
    1edd:	89 c7                	mov    %eax,%edi
    1edf:	e8 a5 fc ff ff       	call   1b89 <az_fill>
    1ee4:	bf 30 00 00 00       	mov    $0x30,%edi
    1ee9:	e8 62 12 00 00       	call   3150 <az_putchar>
    1eee:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1ef1:	89 c7                	mov    %eax,%edi
    1ef3:	e8 fb 0c 00 00       	call   2bf3 <az_putoctal>
    1ef8:	80 7d e4 23          	cmpb   $0x23,-0x1c(%rbp)
    1efc:	75 25                	jne    1f23 <az_o_support+0xe7>
    1efe:	80 7d e0 2d          	cmpb   $0x2d,-0x20(%rbp)
    1f02:	75 1f                	jne    1f23 <az_o_support+0xe7>
    1f04:	8b 5d e8             	mov    -0x18(%rbp),%ebx
    1f07:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1f0a:	89 c7                	mov    %eax,%edi
    1f0c:	e8 36 10 00 00       	call   2f47 <az_nbrlen>
    1f11:	89 c2                	mov    %eax,%edx
    1f13:	89 d8                	mov    %ebx,%eax
    1f15:	29 d0                	sub    %edx,%eax
    1f17:	be 20 00 00 00       	mov    $0x20,%esi
    1f1c:	89 c7                	mov    %eax,%edi
    1f1e:	e8 66 fc ff ff       	call   1b89 <az_fill>
    1f23:	80 7d e4 2d          	cmpb   $0x2d,-0x1c(%rbp)
    1f27:	75 25                	jne    1f4e <az_o_support+0x112>
    1f29:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
    1f2d:	7e 1f                	jle    1f4e <az_o_support+0x112>
    1f2f:	8b 5d e8             	mov    -0x18(%rbp),%ebx
    1f32:	8b 45 ec             	mov    -0x14(%rbp),%eax
    1f35:	89 c7                	mov    %eax,%edi
    1f37:	e8 0b 10 00 00       	call   2f47 <az_nbrlen>
    1f3c:	89 c2                	mov    %eax,%edx
    1f3e:	89 d8                	mov    %ebx,%eax
    1f40:	29 d0                	sub    %edx,%eax
    1f42:	be 20 00 00 00       	mov    $0x20,%esi
    1f47:	89 c7                	mov    %eax,%edi
    1f49:	e8 3b fc ff ff       	call   1b89 <az_fill>
    1f4e:	90                   	nop
    1f4f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    1f53:	c9                   	leave  
    1f54:	c3                   	ret    

0000000000001f55 <az_o_support_p2>:
    1f55:	55                   	push   %rbp
    1f56:	48 89 e5             	mov    %rsp,%rbp
    1f59:	53                   	push   %rbx
    1f5a:	48 83 ec 28          	sub    $0x28,%rsp
    1f5e:	89 f9                	mov    %edi,%ecx
    1f60:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    1f64:	89 d0                	mov    %edx,%eax
    1f66:	89 ca                	mov    %ecx,%edx
    1f68:	88 55 dc             	mov    %dl,-0x24(%rbp)
    1f6b:	88 45 d8             	mov    %al,-0x28(%rbp)
    1f6e:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    1f75:	80 7d dc 2d          	cmpb   $0x2d,-0x24(%rbp)
    1f79:	0f 85 b6 00 00 00    	jne    2035 <az_o_support_p2+0xe0>
    1f7f:	80 7d d8 30          	cmpb   $0x30,-0x28(%rbp)
    1f83:	0f 85 ac 00 00 00    	jne    2035 <az_o_support_p2+0xe0>
    1f89:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1f8d:	be 23 00 00 00       	mov    $0x23,%esi
    1f92:	48 89 c7             	mov    %rax,%rdi
    1f95:	e8 dc 0e 00 00       	call   2e76 <az_chrpos>
    1f9a:	85 c0                	test   %eax,%eax
    1f9c:	7e 46                	jle    1fe4 <az_o_support_p2+0x8f>
    1f9e:	bf 30 00 00 00       	mov    $0x30,%edi
    1fa3:	e8 a8 11 00 00       	call   3150 <az_putchar>
    1fa8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1fac:	48 89 c7             	mov    %rax,%rdi
    1faf:	e8 ea 0f 00 00       	call   2f9e <az_strlen>
    1fb4:	48 89 c3             	mov    %rax,%rbx
    1fb7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1fbb:	be 30 00 00 00       	mov    $0x30,%esi
    1fc0:	48 89 c7             	mov    %rax,%rdi
    1fc3:	e8 ae 0e 00 00       	call   2e76 <az_chrpos>
    1fc8:	83 c0 01             	add    $0x1,%eax
    1fcb:	89 c1                	mov    %eax,%ecx
    1fcd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1fd1:	48 89 da             	mov    %rbx,%rdx
    1fd4:	89 ce                	mov    %ecx,%esi
    1fd6:	48 89 c7             	mov    %rax,%rdi
    1fd9:	e8 e8 0e 00 00       	call   2ec6 <az_strsub>
    1fde:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    1fe2:	eb 37                	jmp    201b <az_o_support_p2+0xc6>
    1fe4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1fe8:	48 89 c7             	mov    %rax,%rdi
    1feb:	e8 ae 0f 00 00       	call   2f9e <az_strlen>
    1ff0:	48 89 c3             	mov    %rax,%rbx
    1ff3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    1ff7:	be 2b 00 00 00       	mov    $0x2b,%esi
    1ffc:	48 89 c7             	mov    %rax,%rdi
    1fff:	e8 72 0e 00 00       	call   2e76 <az_chrpos>
    2004:	89 c1                	mov    %eax,%ecx
    2006:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    200a:	48 89 da             	mov    %rbx,%rdx
    200d:	89 ce                	mov    %ecx,%esi
    200f:	48 89 c7             	mov    %rax,%rdi
    2012:	e8 af 0e 00 00       	call   2ec6 <az_strsub>
    2017:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    201b:	0f be 55 dc          	movsbl -0x24(%rbp),%edx
    201f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2023:	89 d6                	mov    %edx,%esi
    2025:	48 89 c7             	mov    %rax,%rdi
    2028:	e8 ef 00 00 00       	call   211c <az_getparam>
    202d:	83 e8 01             	sub    $0x1,%eax
    2030:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    2033:	eb 60                	jmp    2095 <az_o_support_p2+0x140>
    2035:	80 7d dc 23          	cmpb   $0x23,-0x24(%rbp)
    2039:	75 42                	jne    207d <az_o_support_p2+0x128>
    203b:	80 7d d8 2d          	cmpb   $0x2d,-0x28(%rbp)
    203f:	75 3c                	jne    207d <az_o_support_p2+0x128>
    2041:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2045:	48 89 c7             	mov    %rax,%rdi
    2048:	e8 51 0f 00 00       	call   2f9e <az_strlen>
    204d:	48 89 c3             	mov    %rax,%rbx
    2050:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2054:	be 2b 00 00 00       	mov    $0x2b,%esi
    2059:	48 89 c7             	mov    %rax,%rdi
    205c:	e8 15 0e 00 00       	call   2e76 <az_chrpos>
    2061:	83 c0 01             	add    $0x1,%eax
    2064:	89 c1                	mov    %eax,%ecx
    2066:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    206a:	48 89 da             	mov    %rbx,%rdx
    206d:	89 ce                	mov    %ecx,%esi
    206f:	48 89 c7             	mov    %rax,%rdi
    2072:	e8 4f 0e 00 00       	call   2ec6 <az_strsub>
    2077:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    207b:	eb 18                	jmp    2095 <az_o_support_p2+0x140>
    207d:	0f be 55 dc          	movsbl -0x24(%rbp),%edx
    2081:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2085:	89 d6                	mov    %edx,%esi
    2087:	48 89 c7             	mov    %rax,%rdi
    208a:	e8 8d 00 00 00       	call   211c <az_getparam>
    208f:	83 e8 01             	sub    $0x1,%eax
    2092:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    2095:	83 7d e4 00          	cmpl   $0x0,-0x1c(%rbp)
    2099:	7e 18                	jle    20b3 <az_o_support_p2+0x15e>
    209b:	80 7d dc 00          	cmpb   $0x0,-0x24(%rbp)
    209f:	75 12                	jne    20b3 <az_o_support_p2+0x15e>
    20a1:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    20a4:	83 e8 01             	sub    $0x1,%eax
    20a7:	be 20 00 00 00       	mov    $0x20,%esi
    20ac:	89 c7                	mov    %eax,%edi
    20ae:	e8 d6 fa ff ff       	call   1b89 <az_fill>
    20b3:	90                   	nop
    20b4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    20b8:	c9                   	leave  
    20b9:	c3                   	ret    

00000000000020ba <az_c_support>:
    20ba:	55                   	push   %rbp
    20bb:	48 89 e5             	mov    %rsp,%rbp
    20be:	48 83 ec 10          	sub    $0x10,%rsp
    20c2:	89 75 f8             	mov    %esi,-0x8(%rbp)
    20c5:	89 c8                	mov    %ecx,%eax
    20c7:	89 f9                	mov    %edi,%ecx
    20c9:	88 4d fc             	mov    %cl,-0x4(%rbp)
    20cc:	88 55 f4             	mov    %dl,-0xc(%rbp)
    20cf:	88 45 f0             	mov    %al,-0x10(%rbp)
    20d2:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    20d6:	7e 18                	jle    20f0 <az_c_support+0x36>
    20d8:	80 7d f4 00          	cmpb   $0x0,-0xc(%rbp)
    20dc:	75 12                	jne    20f0 <az_c_support+0x36>
    20de:	8b 45 f8             	mov    -0x8(%rbp),%eax
    20e1:	83 e8 01             	sub    $0x1,%eax
    20e4:	be 20 00 00 00       	mov    $0x20,%esi
    20e9:	89 c7                	mov    %eax,%edi
    20eb:	e8 99 fa ff ff       	call   1b89 <az_fill>
    20f0:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
    20f4:	89 c7                	mov    %eax,%edi
    20f6:	e8 55 10 00 00       	call   3150 <az_putchar>
    20fb:	80 7d f0 2d          	cmpb   $0x2d,-0x10(%rbp)
    20ff:	75 18                	jne    2119 <az_c_support+0x5f>
    2101:	80 7d f4 2b          	cmpb   $0x2b,-0xc(%rbp)
    2105:	75 12                	jne    2119 <az_c_support+0x5f>
    2107:	8b 45 f8             	mov    -0x8(%rbp),%eax
    210a:	83 e8 01             	sub    $0x1,%eax
    210d:	be 20 00 00 00       	mov    $0x20,%esi
    2112:	89 c7                	mov    %eax,%edi
    2114:	e8 70 fa ff ff       	call   1b89 <az_fill>
    2119:	90                   	nop
    211a:	c9                   	leave  
    211b:	c3                   	ret    

000000000000211c <az_getparam>:
    211c:	55                   	push   %rbp
    211d:	48 89 e5             	mov    %rsp,%rbp
    2120:	48 83 ec 30          	sub    $0x30,%rsp
    2124:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2128:	89 f0                	mov    %esi,%eax
    212a:	88 45 d4             	mov    %al,-0x2c(%rbp)
    212d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2131:	48 89 c7             	mov    %rax,%rdi
    2134:	e8 65 0e 00 00       	call   2f9e <az_strlen>
    2139:	48 89 c7             	mov    %rax,%rdi
    213c:	e8 8d 0b 00 00       	call   2cce <az_memalloc>
    2141:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2145:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    214c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    214f:	48 63 d0             	movslq %eax,%rdx
    2152:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2156:	48 01 d0             	add    %rdx,%rax
    2159:	0f b6 00             	movzbl (%rax),%eax
    215c:	3c 20                	cmp    $0x20,%al
    215e:	75 25                	jne    2185 <az_getparam+0x69>
    2160:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2163:	48 98                	cltq   
    2165:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2169:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    216d:	48 01 d0             	add    %rdx,%rax
    2170:	0f b6 00             	movzbl (%rax),%eax
    2173:	0f be c0             	movsbl %al,%eax
    2176:	89 c7                	mov    %eax,%edi
    2178:	e8 92 0b 00 00       	call   2d0f <az_isdigit>
    217d:	85 c0                	test   %eax,%eax
    217f:	74 04                	je     2185 <az_getparam+0x69>
    2181:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    2185:	80 7d d4 00          	cmpb   $0x0,-0x2c(%rbp)
    2189:	74 3a                	je     21c5 <az_getparam+0xa9>
    218b:	eb 04                	jmp    2191 <az_getparam+0x75>
    218d:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    2191:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2194:	48 63 d0             	movslq %eax,%rdx
    2197:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    219b:	48 01 d0             	add    %rdx,%rax
    219e:	0f b6 00             	movzbl (%rax),%eax
    21a1:	0f be c0             	movsbl %al,%eax
    21a4:	89 c7                	mov    %eax,%edi
    21a6:	e8 64 0b 00 00       	call   2d0f <az_isdigit>
    21ab:	85 c0                	test   %eax,%eax
    21ad:	75 63                	jne    2212 <az_getparam+0xf6>
    21af:	8b 45 ec             	mov    -0x14(%rbp),%eax
    21b2:	48 63 d0             	movslq %eax,%rdx
    21b5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    21b9:	48 01 d0             	add    %rdx,%rax
    21bc:	0f b6 00             	movzbl (%rax),%eax
    21bf:	3c 20                	cmp    $0x20,%al
    21c1:	75 ca                	jne    218d <az_getparam+0x71>
    21c3:	eb 4d                	jmp    2212 <az_getparam+0xf6>
    21c5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    21c9:	be 25 00 00 00       	mov    $0x25,%esi
    21ce:	48 89 c7             	mov    %rax,%rdi
    21d1:	e8 a0 0c 00 00       	call   2e76 <az_chrpos>
    21d6:	48 98                	cltq   
    21d8:	48 8d 50 01          	lea    0x1(%rax),%rdx
    21dc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    21e0:	48 01 d0             	add    %rdx,%rax
    21e3:	0f b6 00             	movzbl (%rax),%eax
    21e6:	0f be c0             	movsbl %al,%eax
    21e9:	89 c7                	mov    %eax,%edi
    21eb:	e8 1f 0b 00 00       	call   2d0f <az_isdigit>
    21f0:	85 c0                	test   %eax,%eax
    21f2:	74 06                	je     21fa <az_getparam+0xde>
    21f4:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    21f8:	eb 18                	jmp    2212 <az_getparam+0xf6>
    21fa:	0f be 55 d4          	movsbl -0x2c(%rbp),%edx
    21fe:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2202:	89 d6                	mov    %edx,%esi
    2204:	48 89 c7             	mov    %rax,%rdi
    2207:	e8 6a 0c 00 00       	call   2e76 <az_chrpos>
    220c:	83 c0 01             	add    $0x1,%eax
    220f:	89 45 ec             	mov    %eax,-0x14(%rbp)
    2212:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    2219:	eb 2c                	jmp    2247 <az_getparam+0x12b>
    221b:	8b 45 ec             	mov    -0x14(%rbp),%eax
    221e:	8d 50 01             	lea    0x1(%rax),%edx
    2221:	89 55 ec             	mov    %edx,-0x14(%rbp)
    2224:	48 63 d0             	movslq %eax,%rdx
    2227:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    222b:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
    222f:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2232:	8d 50 01             	lea    0x1(%rax),%edx
    2235:	89 55 f0             	mov    %edx,-0x10(%rbp)
    2238:	48 63 d0             	movslq %eax,%rdx
    223b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    223f:	48 01 c2             	add    %rax,%rdx
    2242:	0f b6 01             	movzbl (%rcx),%eax
    2245:	88 02                	mov    %al,(%rdx)
    2247:	8b 45 ec             	mov    -0x14(%rbp),%eax
    224a:	48 63 d0             	movslq %eax,%rdx
    224d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2251:	48 01 d0             	add    %rdx,%rax
    2254:	0f b6 00             	movzbl (%rax),%eax
    2257:	0f be c0             	movsbl %al,%eax
    225a:	89 c7                	mov    %eax,%edi
    225c:	e8 ae 0a 00 00       	call   2d0f <az_isdigit>
    2261:	85 c0                	test   %eax,%eax
    2263:	75 b6                	jne    221b <az_getparam+0xff>
    2265:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2268:	48 63 d0             	movslq %eax,%rdx
    226b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    226f:	48 01 d0             	add    %rdx,%rax
    2272:	c6 00 00             	movb   $0x0,(%rax)
    2275:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2279:	48 89 c7             	mov    %rax,%rdi
    227c:	e8 f2 10 00 00       	call   3373 <az_atoi>
    2281:	89 45 f4             	mov    %eax,-0xc(%rbp)
    2284:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2288:	48 89 c7             	mov    %rax,%rdi
    228b:	e8 a0 ed ff ff       	call   1030 <free@plt>
    2290:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2293:	c9                   	leave  
    2294:	c3                   	ret    

0000000000002295 <az_speciftypeini>:
    2295:	55                   	push   %rbp
    2296:	48 89 e5             	mov    %rsp,%rbp
    2299:	48 83 ec 20          	sub    $0x20,%rsp
    229d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    22a1:	89 d0                	mov    %edx,%eax
    22a3:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
    22a7:	89 f2                	mov    %esi,%edx
    22a9:	88 55 f4             	mov    %dl,-0xc(%rbp)
    22ac:	88 45 f0             	mov    %al,-0x10(%rbp)
    22af:	80 7d f4 63          	cmpb   $0x63,-0xc(%rbp)
    22b3:	74 06                	je     22bb <az_speciftypeini+0x26>
    22b5:	80 7d f4 43          	cmpb   $0x43,-0xc(%rbp)
    22b9:	75 1c                	jne    22d7 <az_speciftypeini+0x42>
    22bb:	0f be 55 f0          	movsbl -0x10(%rbp),%edx
    22bf:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    22c3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22c7:	48 89 ce             	mov    %rcx,%rsi
    22ca:	48 89 c7             	mov    %rax,%rdi
    22cd:	e8 fd 00 00 00       	call   23cf <az_c>
    22d2:	e9 f5 00 00 00       	jmp    23cc <az_speciftypeini+0x137>
    22d7:	80 7d f4 73          	cmpb   $0x73,-0xc(%rbp)
    22db:	74 06                	je     22e3 <az_speciftypeini+0x4e>
    22dd:	80 7d f4 53          	cmpb   $0x53,-0xc(%rbp)
    22e1:	75 1c                	jne    22ff <az_speciftypeini+0x6a>
    22e3:	0f be 55 f0          	movsbl -0x10(%rbp),%edx
    22e7:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    22eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    22ef:	48 89 ce             	mov    %rcx,%rsi
    22f2:	48 89 c7             	mov    %rax,%rdi
    22f5:	e8 3e 02 00 00       	call   2538 <az_s>
    22fa:	e9 cd 00 00 00       	jmp    23cc <az_speciftypeini+0x137>
    22ff:	80 7d f4 70          	cmpb   $0x70,-0xc(%rbp)
    2303:	75 11                	jne    2316 <az_speciftypeini+0x81>
    2305:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2309:	48 89 c7             	mov    %rax,%rdi
    230c:	e8 6d 03 00 00       	call   267e <az_p>
    2311:	e9 b6 00 00 00       	jmp    23cc <az_speciftypeini+0x137>
    2316:	80 7d f4 78          	cmpb   $0x78,-0xc(%rbp)
    231a:	74 06                	je     2322 <az_speciftypeini+0x8d>
    231c:	80 7d f4 58          	cmpb   $0x58,-0xc(%rbp)
    2320:	75 1c                	jne    233e <az_speciftypeini+0xa9>
    2322:	0f be 55 f0          	movsbl -0x10(%rbp),%edx
    2326:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    232a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    232e:	48 89 ce             	mov    %rcx,%rsi
    2331:	48 89 c7             	mov    %rax,%rdi
    2334:	e8 b5 03 00 00       	call   26ee <az_x>
    2339:	e9 8e 00 00 00       	jmp    23cc <az_speciftypeini+0x137>
    233e:	80 7d f4 64          	cmpb   $0x64,-0xc(%rbp)
    2342:	74 06                	je     234a <az_speciftypeini+0xb5>
    2344:	80 7d f4 44          	cmpb   $0x44,-0xc(%rbp)
    2348:	75 19                	jne    2363 <az_speciftypeini+0xce>
    234a:	0f be 55 f0          	movsbl -0x10(%rbp),%edx
    234e:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2352:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2356:	48 89 ce             	mov    %rcx,%rsi
    2359:	48 89 c7             	mov    %rax,%rdi
    235c:	e8 b7 04 00 00       	call   2818 <az_d>
    2361:	eb 69                	jmp    23cc <az_speciftypeini+0x137>
    2363:	80 7d f4 69          	cmpb   $0x69,-0xc(%rbp)
    2367:	75 19                	jne    2382 <az_speciftypeini+0xed>
    2369:	0f be 55 f0          	movsbl -0x10(%rbp),%edx
    236d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2371:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2375:	48 89 ce             	mov    %rcx,%rsi
    2378:	48 89 c7             	mov    %rax,%rdi
    237b:	e8 9a 05 00 00       	call   291a <az_i>
    2380:	eb 4a                	jmp    23cc <az_speciftypeini+0x137>
    2382:	80 7d f4 6f          	cmpb   $0x6f,-0xc(%rbp)
    2386:	74 06                	je     238e <az_speciftypeini+0xf9>
    2388:	80 7d f4 4f          	cmpb   $0x4f,-0xc(%rbp)
    238c:	75 19                	jne    23a7 <az_speciftypeini+0x112>
    238e:	0f be 55 f0          	movsbl -0x10(%rbp),%edx
    2392:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2396:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    239a:	48 89 ce             	mov    %rcx,%rsi
    239d:	48 89 c7             	mov    %rax,%rdi
    23a0:	e8 4e 06 00 00       	call   29f3 <az_o>
    23a5:	eb 25                	jmp    23cc <az_speciftypeini+0x137>
    23a7:	80 7d f4 75          	cmpb   $0x75,-0xc(%rbp)
    23ab:	74 06                	je     23b3 <az_speciftypeini+0x11e>
    23ad:	80 7d f4 55          	cmpb   $0x55,-0xc(%rbp)
    23b1:	75 19                	jne    23cc <az_speciftypeini+0x137>
    23b3:	0f be 55 f0          	movsbl -0x10(%rbp),%edx
    23b7:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    23bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    23bf:	48 89 ce             	mov    %rcx,%rsi
    23c2:	48 89 c7             	mov    %rax,%rdi
    23c5:	e8 51 07 00 00       	call   2b1b <az_u>
    23ca:	eb 00                	jmp    23cc <az_speciftypeini+0x137>
    23cc:	90                   	nop
    23cd:	c9                   	leave  
    23ce:	c3                   	ret    

00000000000023cf <az_c>:
    23cf:	55                   	push   %rbp
    23d0:	48 89 e5             	mov    %rsp,%rbp
    23d3:	53                   	push   %rbx
    23d4:	48 83 ec 48          	sub    $0x48,%rsp
    23d8:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    23dc:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    23e0:	89 d0                	mov    %edx,%eax
    23e2:	88 45 bc             	mov    %al,-0x44(%rbp)
    23e5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    23e9:	8b 00                	mov    (%rax),%eax
    23eb:	83 f8 2f             	cmp    $0x2f,%eax
    23ee:	77 24                	ja     2414 <az_c+0x45>
    23f0:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    23f4:	48 8b 50 10          	mov    0x10(%rax),%rdx
    23f8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    23fc:	8b 00                	mov    (%rax),%eax
    23fe:	89 c0                	mov    %eax,%eax
    2400:	48 01 d0             	add    %rdx,%rax
    2403:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2407:	8b 12                	mov    (%rdx),%edx
    2409:	8d 4a 08             	lea    0x8(%rdx),%ecx
    240c:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2410:	89 0a                	mov    %ecx,(%rdx)
    2412:	eb 14                	jmp    2428 <az_c+0x59>
    2414:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2418:	48 8b 40 08          	mov    0x8(%rax),%rax
    241c:	48 8d 48 08          	lea    0x8(%rax),%rcx
    2420:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2424:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    2428:	8b 00                	mov    (%rax),%eax
    242a:	88 45 de             	mov    %al,-0x22(%rbp)
    242d:	0f be 55 bc          	movsbl -0x44(%rbp),%edx
    2431:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2435:	89 d6                	mov    %edx,%esi
    2437:	48 89 c7             	mov    %rax,%rdi
    243a:	e8 37 0a 00 00       	call   2e76 <az_chrpos>
    243f:	48 98                	cltq   
    2441:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2445:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2449:	48 01 d0             	add    %rdx,%rax
    244c:	0f b6 00             	movzbl (%rax),%eax
    244f:	88 45 df             	mov    %al,-0x21(%rbp)
    2452:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2456:	48 89 c7             	mov    %rax,%rdi
    2459:	e8 40 0b 00 00       	call   2f9e <az_strlen>
    245e:	48 8d 58 fe          	lea    -0x2(%rax),%rbx
    2462:	0f be 55 df          	movsbl -0x21(%rbp),%edx
    2466:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    246a:	89 d6                	mov    %edx,%esi
    246c:	48 89 c7             	mov    %rax,%rdi
    246f:	e8 02 0a 00 00       	call   2e76 <az_chrpos>
    2474:	89 c1                	mov    %eax,%ecx
    2476:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    247a:	48 89 da             	mov    %rbx,%rdx
    247d:	89 ce                	mov    %ecx,%esi
    247f:	48 89 c7             	mov    %rax,%rdi
    2482:	e8 3f 0a 00 00       	call   2ec6 <az_strsub>
    2487:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    248b:	0f be 55 bc          	movsbl -0x44(%rbp),%edx
    248f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2493:	89 d6                	mov    %edx,%esi
    2495:	48 89 c7             	mov    %rax,%rdi
    2498:	e8 7f fc ff ff       	call   211c <az_getparam>
    249d:	83 e8 01             	sub    $0x1,%eax
    24a0:	89 45 e0             	mov    %eax,-0x20(%rbp)
    24a3:	0f be 55 bc          	movsbl -0x44(%rbp),%edx
    24a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    24ab:	89 d6                	mov    %edx,%esi
    24ad:	48 89 c7             	mov    %rax,%rdi
    24b0:	e8 67 fc ff ff       	call   211c <az_getparam>
    24b5:	83 e8 01             	sub    $0x1,%eax
    24b8:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    24bb:	80 7d bc 2b          	cmpb   $0x2b,-0x44(%rbp)
    24bf:	75 18                	jne    24d9 <az_c+0x10a>
    24c1:	80 7d df 2d          	cmpb   $0x2d,-0x21(%rbp)
    24c5:	74 12                	je     24d9 <az_c+0x10a>
    24c7:	8b 45 e0             	mov    -0x20(%rbp),%eax
    24ca:	83 e8 01             	sub    $0x1,%eax
    24cd:	be 20 00 00 00       	mov    $0x20,%esi
    24d2:	89 c7                	mov    %eax,%edi
    24d4:	e8 b0 f6 ff ff       	call   1b89 <az_fill>
    24d9:	80 7d bc 30          	cmpb   $0x30,-0x44(%rbp)
    24dd:	75 18                	jne    24f7 <az_c+0x128>
    24df:	80 7d df 2b          	cmpb   $0x2b,-0x21(%rbp)
    24e3:	74 12                	je     24f7 <az_c+0x128>
    24e5:	8b 45 e0             	mov    -0x20(%rbp),%eax
    24e8:	83 e8 01             	sub    $0x1,%eax
    24eb:	be 20 00 00 00       	mov    $0x20,%esi
    24f0:	89 c7                	mov    %eax,%edi
    24f2:	e8 92 f6 ff ff       	call   1b89 <az_fill>
    24f7:	80 7d df 2b          	cmpb   $0x2b,-0x21(%rbp)
    24fb:	75 18                	jne    2515 <az_c+0x146>
    24fd:	80 7d bc 30          	cmpb   $0x30,-0x44(%rbp)
    2501:	75 12                	jne    2515 <az_c+0x146>
    2503:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    2506:	83 e8 01             	sub    $0x1,%eax
    2509:	be 20 00 00 00       	mov    $0x20,%esi
    250e:	89 c7                	mov    %eax,%edi
    2510:	e8 74 f6 ff ff       	call   1b89 <az_fill>
    2515:	80 7d de 00          	cmpb   $0x0,-0x22(%rbp)
    2519:	74 16                	je     2531 <az_c+0x162>
    251b:	0f be 4d df          	movsbl -0x21(%rbp),%ecx
    251f:	0f be 55 bc          	movsbl -0x44(%rbp),%edx
    2523:	0f be 45 de          	movsbl -0x22(%rbp),%eax
    2527:	8b 75 e0             	mov    -0x20(%rbp),%esi
    252a:	89 c7                	mov    %eax,%edi
    252c:	e8 89 fb ff ff       	call   20ba <az_c_support>
    2531:	90                   	nop
    2532:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    2536:	c9                   	leave  
    2537:	c3                   	ret    

0000000000002538 <az_s>:
    2538:	55                   	push   %rbp
    2539:	48 89 e5             	mov    %rsp,%rbp
    253c:	48 83 ec 30          	sub    $0x30,%rsp
    2540:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2544:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    2548:	89 d0                	mov    %edx,%eax
    254a:	88 45 dc             	mov    %al,-0x24(%rbp)
    254d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2551:	8b 00                	mov    (%rax),%eax
    2553:	83 f8 2f             	cmp    $0x2f,%eax
    2556:	77 24                	ja     257c <az_s+0x44>
    2558:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    255c:	48 8b 50 10          	mov    0x10(%rax),%rdx
    2560:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2564:	8b 00                	mov    (%rax),%eax
    2566:	89 c0                	mov    %eax,%eax
    2568:	48 01 d0             	add    %rdx,%rax
    256b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    256f:	8b 12                	mov    (%rdx),%edx
    2571:	8d 4a 08             	lea    0x8(%rdx),%ecx
    2574:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2578:	89 0a                	mov    %ecx,(%rdx)
    257a:	eb 14                	jmp    2590 <az_s+0x58>
    257c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2580:	48 8b 40 08          	mov    0x8(%rax),%rax
    2584:	48 8d 48 08          	lea    0x8(%rax),%rcx
    2588:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    258c:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    2590:	48 8b 00             	mov    (%rax),%rax
    2593:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2597:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    259c:	75 1a                	jne    25b8 <az_s+0x80>
    259e:	80 7d dc 00          	cmpb   $0x0,-0x24(%rbp)
    25a2:	75 14                	jne    25b8 <az_s+0x80>
    25a4:	48 8d 05 86 1c 00 00 	lea    0x1c86(%rip),%rax        # 4231 <_IO_stdin_used+0x231>
    25ab:	48 89 c7             	mov    %rax,%rdi
    25ae:	e8 db 0b 00 00       	call   318e <az_putstr>
    25b3:	e9 c3 00 00 00       	jmp    267b <az_s+0x143>
    25b8:	0f be 55 dc          	movsbl -0x24(%rbp),%edx
    25bc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    25c0:	89 d6                	mov    %edx,%esi
    25c2:	48 89 c7             	mov    %rax,%rdi
    25c5:	e8 52 fb ff ff       	call   211c <az_getparam>
    25ca:	83 e8 01             	sub    $0x1,%eax
    25cd:	89 45 f0             	mov    %eax,-0x10(%rbp)
    25d0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    25d4:	48 89 c7             	mov    %rax,%rdi
    25d7:	e8 c2 09 00 00       	call   2f9e <az_strlen>
    25dc:	89 45 f4             	mov    %eax,-0xc(%rbp)
    25df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    25e3:	48 8d 15 4e 1c 00 00 	lea    0x1c4e(%rip),%rdx        # 4238 <_IO_stdin_used+0x238>
    25ea:	48 89 d6             	mov    %rdx,%rsi
    25ed:	48 89 c7             	mov    %rax,%rdi
    25f0:	e8 e4 0b 00 00       	call   31d9 <az_strcmp>
    25f5:	85 c0                	test   %eax,%eax
    25f7:	75 15                	jne    260e <az_s+0xd6>
    25f9:	80 7d dc 00          	cmpb   $0x0,-0x24(%rbp)
    25fd:	75 0f                	jne    260e <az_s+0xd6>
    25ff:	48 8d 05 32 1c 00 00 	lea    0x1c32(%rip),%rax        # 4238 <_IO_stdin_used+0x238>
    2606:	48 89 c7             	mov    %rax,%rdi
    2609:	e8 80 0b 00 00       	call   318e <az_putstr>
    260e:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
    2612:	7e 1e                	jle    2632 <az_s+0xfa>
    2614:	80 7d dc 20          	cmpb   $0x20,-0x24(%rbp)
    2618:	74 06                	je     2620 <az_s+0xe8>
    261a:	80 7d dc 2b          	cmpb   $0x2b,-0x24(%rbp)
    261e:	75 12                	jne    2632 <az_s+0xfa>
    2620:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2623:	2b 45 f4             	sub    -0xc(%rbp),%eax
    2626:	be 20 00 00 00       	mov    $0x20,%esi
    262b:	89 c7                	mov    %eax,%edi
    262d:	e8 57 f5 ff ff       	call   1b89 <az_fill>
    2632:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    2637:	74 42                	je     267b <az_s+0x143>
    2639:	83 7d f0 00          	cmpl   $0x0,-0x10(%rbp)
    263d:	7e 18                	jle    2657 <az_s+0x11f>
    263f:	80 7d dc 00          	cmpb   $0x0,-0x24(%rbp)
    2643:	75 12                	jne    2657 <az_s+0x11f>
    2645:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2648:	2b 45 f4             	sub    -0xc(%rbp),%eax
    264b:	be 20 00 00 00       	mov    $0x20,%esi
    2650:	89 c7                	mov    %eax,%edi
    2652:	e8 32 f5 ff ff       	call   1b89 <az_fill>
    2657:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    265b:	48 89 c7             	mov    %rax,%rdi
    265e:	e8 2b 0b 00 00       	call   318e <az_putstr>
    2663:	80 7d dc 2d          	cmpb   $0x2d,-0x24(%rbp)
    2667:	75 12                	jne    267b <az_s+0x143>
    2669:	8b 45 f0             	mov    -0x10(%rbp),%eax
    266c:	2b 45 f4             	sub    -0xc(%rbp),%eax
    266f:	be 20 00 00 00       	mov    $0x20,%esi
    2674:	89 c7                	mov    %eax,%edi
    2676:	e8 0e f5 ff ff       	call   1b89 <az_fill>
    267b:	90                   	nop
    267c:	c9                   	leave  
    267d:	c3                   	ret    

000000000000267e <az_p>:
    267e:	55                   	push   %rbp
    267f:	48 89 e5             	mov    %rsp,%rbp
    2682:	48 83 ec 20          	sub    $0x20,%rsp
    2686:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    268a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    268e:	8b 00                	mov    (%rax),%eax
    2690:	83 f8 2f             	cmp    $0x2f,%eax
    2693:	77 24                	ja     26b9 <az_p+0x3b>
    2695:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2699:	48 8b 50 10          	mov    0x10(%rax),%rdx
    269d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    26a1:	8b 00                	mov    (%rax),%eax
    26a3:	89 c0                	mov    %eax,%eax
    26a5:	48 01 d0             	add    %rdx,%rax
    26a8:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    26ac:	8b 12                	mov    (%rdx),%edx
    26ae:	8d 4a 08             	lea    0x8(%rdx),%ecx
    26b1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    26b5:	89 0a                	mov    %ecx,(%rdx)
    26b7:	eb 14                	jmp    26cd <az_p+0x4f>
    26b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    26bd:	48 8b 40 08          	mov    0x8(%rax),%rax
    26c1:	48 8d 48 08          	lea    0x8(%rax),%rcx
    26c5:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    26c9:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    26cd:	8b 00                	mov    (%rax),%eax
    26cf:	89 45 fc             	mov    %eax,-0x4(%rbp)
    26d2:	48 8d 05 60 1b 00 00 	lea    0x1b60(%rip),%rax        # 4239 <_IO_stdin_used+0x239>
    26d9:	48 89 c7             	mov    %rax,%rdi
    26dc:	e8 ad 0a 00 00       	call   318e <az_putstr>
    26e1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    26e4:	89 c7                	mov    %eax,%edi
    26e6:	e8 35 09 00 00       	call   3020 <az_puthex>
    26eb:	90                   	nop
    26ec:	c9                   	leave  
    26ed:	c3                   	ret    

00000000000026ee <az_x>:
    26ee:	55                   	push   %rbp
    26ef:	48 89 e5             	mov    %rsp,%rbp
    26f2:	48 83 ec 30          	sub    $0x30,%rsp
    26f6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    26fa:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    26fe:	89 d0                	mov    %edx,%eax
    2700:	88 45 dc             	mov    %al,-0x24(%rbp)
    2703:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2707:	8b 00                	mov    (%rax),%eax
    2709:	83 f8 2f             	cmp    $0x2f,%eax
    270c:	77 24                	ja     2732 <az_x+0x44>
    270e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2712:	48 8b 50 10          	mov    0x10(%rax),%rdx
    2716:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    271a:	8b 00                	mov    (%rax),%eax
    271c:	89 c0                	mov    %eax,%eax
    271e:	48 01 d0             	add    %rdx,%rax
    2721:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2725:	8b 12                	mov    (%rdx),%edx
    2727:	8d 4a 08             	lea    0x8(%rdx),%ecx
    272a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    272e:	89 0a                	mov    %ecx,(%rdx)
    2730:	eb 14                	jmp    2746 <az_x+0x58>
    2732:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2736:	48 8b 40 08          	mov    0x8(%rax),%rax
    273a:	48 8d 48 08          	lea    0x8(%rax),%rcx
    273e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2742:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    2746:	8b 00                	mov    (%rax),%eax
    2748:	89 45 f8             	mov    %eax,-0x8(%rbp)
    274b:	0f be 55 dc          	movsbl -0x24(%rbp),%edx
    274f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2753:	89 d6                	mov    %edx,%esi
    2755:	48 89 c7             	mov    %rax,%rdi
    2758:	e8 bf f9 ff ff       	call   211c <az_getparam>
    275d:	89 45 fc             	mov    %eax,-0x4(%rbp)
    2760:	80 7d dc 23          	cmpb   $0x23,-0x24(%rbp)
    2764:	75 25                	jne    278b <az_x+0x9d>
    2766:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    276a:	be 58 00 00 00       	mov    $0x58,%esi
    276f:	48 89 c7             	mov    %rax,%rdi
    2772:	e8 01 0b 00 00       	call   3278 <az_strchr>
    2777:	48 85 c0             	test   %rax,%rax
    277a:	75 0f                	jne    278b <az_x+0x9d>
    277c:	48 8d 05 b6 1a 00 00 	lea    0x1ab6(%rip),%rax        # 4239 <_IO_stdin_used+0x239>
    2783:	48 89 c7             	mov    %rax,%rdi
    2786:	e8 03 0a 00 00       	call   318e <az_putstr>
    278b:	80 7d dc 23          	cmpb   $0x23,-0x24(%rbp)
    278f:	75 25                	jne    27b6 <az_x+0xc8>
    2791:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2795:	be 58 00 00 00       	mov    $0x58,%esi
    279a:	48 89 c7             	mov    %rax,%rdi
    279d:	e8 d6 0a 00 00       	call   3278 <az_strchr>
    27a2:	48 85 c0             	test   %rax,%rax
    27a5:	74 0f                	je     27b6 <az_x+0xc8>
    27a7:	48 8d 05 8e 1a 00 00 	lea    0x1a8e(%rip),%rax        # 423c <_IO_stdin_used+0x23c>
    27ae:	48 89 c7             	mov    %rax,%rdi
    27b1:	e8 d8 09 00 00       	call   318e <az_putstr>
    27b6:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    27ba:	74 2d                	je     27e9 <az_x+0xfb>
    27bc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    27c0:	be 58 00 00 00       	mov    $0x58,%esi
    27c5:	48 89 c7             	mov    %rax,%rdi
    27c8:	e8 ab 0a 00 00       	call   3278 <az_strchr>
    27cd:	48 85 c0             	test   %rax,%rax
    27d0:	74 17                	je     27e9 <az_x+0xfb>
    27d2:	8b 45 f8             	mov    -0x8(%rbp),%eax
    27d5:	be 10 00 00 00       	mov    $0x10,%esi
    27da:	89 c7                	mov    %eax,%edi
    27dc:	e8 b6 05 00 00       	call   2d97 <az_itoa>
    27e1:	48 89 c7             	mov    %rax,%rdi
    27e4:	e8 a5 09 00 00       	call   318e <az_putstr>
    27e9:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    27ed:	74 26                	je     2815 <az_x+0x127>
    27ef:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    27f3:	75 20                	jne    2815 <az_x+0x127>
    27f5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    27f9:	be 58 00 00 00       	mov    $0x58,%esi
    27fe:	48 89 c7             	mov    %rax,%rdi
    2801:	e8 72 0a 00 00       	call   3278 <az_strchr>
    2806:	48 85 c0             	test   %rax,%rax
    2809:	75 0a                	jne    2815 <az_x+0x127>
    280b:	8b 45 f8             	mov    -0x8(%rbp),%eax
    280e:	89 c7                	mov    %eax,%edi
    2810:	e8 0b 08 00 00       	call   3020 <az_puthex>
    2815:	90                   	nop
    2816:	c9                   	leave  
    2817:	c3                   	ret    

0000000000002818 <az_d>:
    2818:	55                   	push   %rbp
    2819:	48 89 e5             	mov    %rsp,%rbp
    281c:	53                   	push   %rbx
    281d:	48 83 ec 38          	sub    $0x38,%rsp
    2821:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    2825:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    2829:	89 d0                	mov    %edx,%eax
    282b:	88 45 cc             	mov    %al,-0x34(%rbp)
    282e:	0f be 55 cc          	movsbl -0x34(%rbp),%edx
    2832:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    2836:	89 d6                	mov    %edx,%esi
    2838:	48 89 c7             	mov    %rax,%rdi
    283b:	e8 dc f8 ff ff       	call   211c <az_getparam>
    2840:	83 e8 01             	sub    $0x1,%eax
    2843:	89 45 e8             	mov    %eax,-0x18(%rbp)
    2846:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    284a:	8b 00                	mov    (%rax),%eax
    284c:	83 f8 2f             	cmp    $0x2f,%eax
    284f:	77 24                	ja     2875 <az_d+0x5d>
    2851:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2855:	48 8b 50 10          	mov    0x10(%rax),%rdx
    2859:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    285d:	8b 00                	mov    (%rax),%eax
    285f:	89 c0                	mov    %eax,%eax
    2861:	48 01 d0             	add    %rdx,%rax
    2864:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2868:	8b 12                	mov    (%rdx),%edx
    286a:	8d 4a 08             	lea    0x8(%rdx),%ecx
    286d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2871:	89 0a                	mov    %ecx,(%rdx)
    2873:	eb 14                	jmp    2889 <az_d+0x71>
    2875:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2879:	48 8b 40 08          	mov    0x8(%rax),%rax
    287d:	48 8d 48 08          	lea    0x8(%rax),%rcx
    2881:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    2885:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    2889:	8b 00                	mov    (%rax),%eax
    288b:	89 45 ec             	mov    %eax,-0x14(%rbp)
    288e:	83 7d e8 00          	cmpl   $0x0,-0x18(%rbp)
    2892:	74 25                	je     28b9 <az_d+0xa1>
    2894:	80 7d cc 00          	cmpb   $0x0,-0x34(%rbp)
    2898:	75 1f                	jne    28b9 <az_d+0xa1>
    289a:	8b 5d e8             	mov    -0x18(%rbp),%ebx
    289d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    28a0:	89 c7                	mov    %eax,%edi
    28a2:	e8 a0 06 00 00       	call   2f47 <az_nbrlen>
    28a7:	89 c2                	mov    %eax,%edx
    28a9:	89 d8                	mov    %ebx,%eax
    28ab:	29 d0                	sub    %edx,%eax
    28ad:	be 20 00 00 00       	mov    $0x20,%esi
    28b2:	89 c7                	mov    %eax,%edi
    28b4:	e8 d0 f2 ff ff       	call   1b89 <az_fill>
    28b9:	80 7d cc 00          	cmpb   $0x0,-0x34(%rbp)
    28bd:	74 4a                	je     2909 <az_d+0xf1>
    28bf:	0f be 75 cc          	movsbl -0x34(%rbp),%esi
    28c3:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    28c7:	8b 55 e8             	mov    -0x18(%rbp),%edx
    28ca:	8b 45 ec             	mov    -0x14(%rbp),%eax
    28cd:	89 c7                	mov    %eax,%edi
    28cf:	e8 54 f3 ff ff       	call   1c28 <az_plusflag>
    28d4:	0f be 55 cc          	movsbl -0x34(%rbp),%edx
    28d8:	8b 45 ec             	mov    -0x14(%rbp),%eax
    28db:	89 d6                	mov    %edx,%esi
    28dd:	89 c7                	mov    %eax,%edi
    28df:	e8 31 f4 ff ff       	call   1d15 <az_minusflag>
    28e4:	0f be 4d cc          	movsbl -0x34(%rbp),%ecx
    28e8:	8b 55 e8             	mov    -0x18(%rbp),%edx
    28eb:	8b 45 ec             	mov    -0x14(%rbp),%eax
    28ee:	89 ce                	mov    %ecx,%esi
    28f0:	89 c7                	mov    %eax,%edi
    28f2:	e8 41 f4 ff ff       	call   1d38 <az_spaceflag>
    28f7:	0f be 55 cc          	movsbl -0x34(%rbp),%edx
    28fb:	8b 45 ec             	mov    -0x14(%rbp),%eax
    28fe:	89 d6                	mov    %edx,%esi
    2900:	89 c7                	mov    %eax,%edi
    2902:	e8 9d f4 ff ff       	call   1da4 <az_zeroflag>
    2907:	eb 0a                	jmp    2913 <az_d+0xfb>
    2909:	8b 45 ec             	mov    -0x14(%rbp),%eax
    290c:	89 c7                	mov    %eax,%edi
    290e:	e8 5c 07 00 00       	call   306f <az_putnbr>
    2913:	90                   	nop
    2914:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    2918:	c9                   	leave  
    2919:	c3                   	ret    

000000000000291a <az_i>:
    291a:	55                   	push   %rbp
    291b:	48 89 e5             	mov    %rsp,%rbp
    291e:	48 83 ec 30          	sub    $0x30,%rsp
    2922:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2926:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    292a:	89 d0                	mov    %edx,%eax
    292c:	88 45 dc             	mov    %al,-0x24(%rbp)
    292f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2933:	8b 00                	mov    (%rax),%eax
    2935:	83 f8 2f             	cmp    $0x2f,%eax
    2938:	77 24                	ja     295e <az_i+0x44>
    293a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    293e:	48 8b 50 10          	mov    0x10(%rax),%rdx
    2942:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2946:	8b 00                	mov    (%rax),%eax
    2948:	89 c0                	mov    %eax,%eax
    294a:	48 01 d0             	add    %rdx,%rax
    294d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2951:	8b 12                	mov    (%rdx),%edx
    2953:	8d 4a 08             	lea    0x8(%rdx),%ecx
    2956:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    295a:	89 0a                	mov    %ecx,(%rdx)
    295c:	eb 14                	jmp    2972 <az_i+0x58>
    295e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2962:	48 8b 40 08          	mov    0x8(%rax),%rax
    2966:	48 8d 48 08          	lea    0x8(%rax),%rcx
    296a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    296e:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    2972:	8b 00                	mov    (%rax),%eax
    2974:	89 45 f4             	mov    %eax,-0xc(%rbp)
    2977:	0f be 55 dc          	movsbl -0x24(%rbp),%edx
    297b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    297f:	89 d6                	mov    %edx,%esi
    2981:	48 89 c7             	mov    %rax,%rdi
    2984:	e8 93 f7 ff ff       	call   211c <az_getparam>
    2989:	83 e8 01             	sub    $0x1,%eax
    298c:	89 45 f8             	mov    %eax,-0x8(%rbp)
    298f:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2992:	89 c7                	mov    %eax,%edi
    2994:	e8 ae 05 00 00       	call   2f47 <az_nbrlen>
    2999:	83 c0 01             	add    $0x1,%eax
    299c:	89 45 fc             	mov    %eax,-0x4(%rbp)
    299f:	80 7d dc 30          	cmpb   $0x30,-0x24(%rbp)
    29a3:	75 13                	jne    29b8 <az_i+0x9e>
    29a5:	0f be 55 dc          	movsbl -0x24(%rbp),%edx
    29a9:	8b 45 f8             	mov    -0x8(%rbp),%eax
    29ac:	2b 45 fc             	sub    -0x4(%rbp),%eax
    29af:	89 d6                	mov    %edx,%esi
    29b1:	89 c7                	mov    %eax,%edi
    29b3:	e8 d1 f1 ff ff       	call   1b89 <az_fill>
    29b8:	80 7d dc 2e          	cmpb   $0x2e,-0x24(%rbp)
    29bc:	75 12                	jne    29d0 <az_i+0xb6>
    29be:	8b 45 f8             	mov    -0x8(%rbp),%eax
    29c1:	2b 45 fc             	sub    -0x4(%rbp),%eax
    29c4:	be 30 00 00 00       	mov    $0x30,%esi
    29c9:	89 c7                	mov    %eax,%edi
    29cb:	e8 b9 f1 ff ff       	call   1b89 <az_fill>
    29d0:	80 7d dc 2b          	cmpb   $0x2b,-0x24(%rbp)
    29d4:	75 10                	jne    29e6 <az_i+0xcc>
    29d6:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    29da:	7e 0a                	jle    29e6 <az_i+0xcc>
    29dc:	bf 2b 00 00 00       	mov    $0x2b,%edi
    29e1:	e8 6a 07 00 00       	call   3150 <az_putchar>
    29e6:	8b 45 f4             	mov    -0xc(%rbp),%eax
    29e9:	89 c7                	mov    %eax,%edi
    29eb:	e8 7f 06 00 00       	call   306f <az_putnbr>
    29f0:	90                   	nop
    29f1:	c9                   	leave  
    29f2:	c3                   	ret    

00000000000029f3 <az_o>:
    29f3:	55                   	push   %rbp
    29f4:	48 89 e5             	mov    %rsp,%rbp
    29f7:	53                   	push   %rbx
    29f8:	48 83 ec 48          	sub    $0x48,%rsp
    29fc:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    2a00:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    2a04:	89 d0                	mov    %edx,%eax
    2a06:	88 45 bc             	mov    %al,-0x44(%rbp)
    2a09:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2a0d:	8b 00                	mov    (%rax),%eax
    2a0f:	83 f8 2f             	cmp    $0x2f,%eax
    2a12:	77 24                	ja     2a38 <az_o+0x45>
    2a14:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2a18:	48 8b 50 10          	mov    0x10(%rax),%rdx
    2a1c:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2a20:	8b 00                	mov    (%rax),%eax
    2a22:	89 c0                	mov    %eax,%eax
    2a24:	48 01 d0             	add    %rdx,%rax
    2a27:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2a2b:	8b 12                	mov    (%rdx),%edx
    2a2d:	8d 4a 08             	lea    0x8(%rdx),%ecx
    2a30:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2a34:	89 0a                	mov    %ecx,(%rdx)
    2a36:	eb 14                	jmp    2a4c <az_o+0x59>
    2a38:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    2a3c:	48 8b 40 08          	mov    0x8(%rax),%rax
    2a40:	48 8d 48 08          	lea    0x8(%rax),%rcx
    2a44:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    2a48:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    2a4c:	8b 00                	mov    (%rax),%eax
    2a4e:	89 45 e4             	mov    %eax,-0x1c(%rbp)
    2a51:	0f be 55 bc          	movsbl -0x44(%rbp),%edx
    2a55:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2a59:	89 d6                	mov    %edx,%esi
    2a5b:	48 89 c7             	mov    %rax,%rdi
    2a5e:	e8 b9 f6 ff ff       	call   211c <az_getparam>
    2a63:	83 e8 01             	sub    $0x1,%eax
    2a66:	89 45 e0             	mov    %eax,-0x20(%rbp)
    2a69:	0f be 55 bc          	movsbl -0x44(%rbp),%edx
    2a6d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2a71:	89 d6                	mov    %edx,%esi
    2a73:	48 89 c7             	mov    %rax,%rdi
    2a76:	e8 fb 03 00 00       	call   2e76 <az_chrpos>
    2a7b:	48 98                	cltq   
    2a7d:	48 8d 50 01          	lea    0x1(%rax),%rdx
    2a81:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2a85:	48 01 d0             	add    %rdx,%rax
    2a88:	0f b6 00             	movzbl (%rax),%eax
    2a8b:	88 45 df             	mov    %al,-0x21(%rbp)
    2a8e:	80 7d bc 30          	cmpb   $0x30,-0x44(%rbp)
    2a92:	75 52                	jne    2ae6 <az_o+0xf3>
    2a94:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2a98:	48 89 c7             	mov    %rax,%rdi
    2a9b:	e8 fe 04 00 00       	call   2f9e <az_strlen>
    2aa0:	48 89 c3             	mov    %rax,%rbx
    2aa3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2aa7:	be 30 00 00 00       	mov    $0x30,%esi
    2aac:	48 89 c7             	mov    %rax,%rdi
    2aaf:	e8 c2 03 00 00       	call   2e76 <az_chrpos>
    2ab4:	83 c0 01             	add    $0x1,%eax
    2ab7:	89 c1                	mov    %eax,%ecx
    2ab9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    2abd:	48 89 da             	mov    %rbx,%rdx
    2ac0:	89 ce                	mov    %ecx,%esi
    2ac2:	48 89 c7             	mov    %rax,%rdi
    2ac5:	e8 fc 03 00 00       	call   2ec6 <az_strsub>
    2aca:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    2ace:	0f be 55 bc          	movsbl -0x44(%rbp),%edx
    2ad2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2ad6:	89 d6                	mov    %edx,%esi
    2ad8:	48 89 c7             	mov    %rax,%rdi
    2adb:	e8 3c f6 ff ff       	call   211c <az_getparam>
    2ae0:	83 e8 01             	sub    $0x1,%eax
    2ae3:	89 45 e0             	mov    %eax,-0x20(%rbp)
    2ae6:	0f be 55 df          	movsbl -0x21(%rbp),%edx
    2aea:	0f be 45 bc          	movsbl -0x44(%rbp),%eax
    2aee:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    2af2:	48 89 ce             	mov    %rcx,%rsi
    2af5:	89 c7                	mov    %eax,%edi
    2af7:	e8 59 f4 ff ff       	call   1f55 <az_o_support_p2>
    2afc:	0f be 4d df          	movsbl -0x21(%rbp),%ecx
    2b00:	0f be 55 bc          	movsbl -0x44(%rbp),%edx
    2b04:	8b 45 e0             	mov    -0x20(%rbp),%eax
    2b07:	8d 70 ff             	lea    -0x1(%rax),%esi
    2b0a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    2b0d:	89 c7                	mov    %eax,%edi
    2b0f:	e8 28 f3 ff ff       	call   1e3c <az_o_support>
    2b14:	90                   	nop
    2b15:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    2b19:	c9                   	leave  
    2b1a:	c3                   	ret    

0000000000002b1b <az_u>:
    2b1b:	55                   	push   %rbp
    2b1c:	48 89 e5             	mov    %rsp,%rbp
    2b1f:	48 83 ec 30          	sub    $0x30,%rsp
    2b23:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2b27:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    2b2b:	89 d0                	mov    %edx,%eax
    2b2d:	88 45 dc             	mov    %al,-0x24(%rbp)
    2b30:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2b34:	8b 00                	mov    (%rax),%eax
    2b36:	83 f8 2f             	cmp    $0x2f,%eax
    2b39:	77 24                	ja     2b5f <az_u+0x44>
    2b3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2b3f:	48 8b 50 10          	mov    0x10(%rax),%rdx
    2b43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2b47:	8b 00                	mov    (%rax),%eax
    2b49:	89 c0                	mov    %eax,%eax
    2b4b:	48 01 d0             	add    %rdx,%rax
    2b4e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2b52:	8b 12                	mov    (%rdx),%edx
    2b54:	8d 4a 08             	lea    0x8(%rdx),%ecx
    2b57:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2b5b:	89 0a                	mov    %ecx,(%rdx)
    2b5d:	eb 14                	jmp    2b73 <az_u+0x58>
    2b5f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2b63:	48 8b 40 08          	mov    0x8(%rax),%rax
    2b67:	48 8d 48 08          	lea    0x8(%rax),%rcx
    2b6b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2b6f:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    2b73:	8b 00                	mov    (%rax),%eax
    2b75:	89 45 f4             	mov    %eax,-0xc(%rbp)
    2b78:	0f be 55 dc          	movsbl -0x24(%rbp),%edx
    2b7c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    2b80:	89 d6                	mov    %edx,%esi
    2b82:	48 89 c7             	mov    %rax,%rdi
    2b85:	e8 92 f5 ff ff       	call   211c <az_getparam>
    2b8a:	83 e8 01             	sub    $0x1,%eax
    2b8d:	89 45 f8             	mov    %eax,-0x8(%rbp)
    2b90:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2b93:	89 c7                	mov    %eax,%edi
    2b95:	e8 ad 03 00 00       	call   2f47 <az_nbrlen>
    2b9a:	89 45 fc             	mov    %eax,-0x4(%rbp)
    2b9d:	80 7d dc 30          	cmpb   $0x30,-0x24(%rbp)
    2ba1:	75 13                	jne    2bb6 <az_u+0x9b>
    2ba3:	0f be 55 dc          	movsbl -0x24(%rbp),%edx
    2ba7:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2baa:	2b 45 fc             	sub    -0x4(%rbp),%eax
    2bad:	89 d6                	mov    %edx,%esi
    2baf:	89 c7                	mov    %eax,%edi
    2bb1:	e8 d3 ef ff ff       	call   1b89 <az_fill>
    2bb6:	80 7d dc 2e          	cmpb   $0x2e,-0x24(%rbp)
    2bba:	75 12                	jne    2bce <az_u+0xb3>
    2bbc:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2bbf:	2b 45 fc             	sub    -0x4(%rbp),%eax
    2bc2:	be 30 00 00 00       	mov    $0x30,%esi
    2bc7:	89 c7                	mov    %eax,%edi
    2bc9:	e8 bb ef ff ff       	call   1b89 <az_fill>
    2bce:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    2bd2:	74 12                	je     2be6 <az_u+0xcb>
    2bd4:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2bd7:	2b 45 fc             	sub    -0x4(%rbp),%eax
    2bda:	be 20 00 00 00       	mov    $0x20,%esi
    2bdf:	89 c7                	mov    %eax,%edi
    2be1:	e8 a3 ef ff ff       	call   1b89 <az_fill>
    2be6:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2be9:	89 c7                	mov    %eax,%edi
    2beb:	e8 71 00 00 00       	call   2c61 <az_putunsigned>
    2bf0:	90                   	nop
    2bf1:	c9                   	leave  
    2bf2:	c3                   	ret    

0000000000002bf3 <az_putoctal>:
    2bf3:	55                   	push   %rbp
    2bf4:	48 89 e5             	mov    %rsp,%rbp
    2bf7:	48 83 ec 10          	sub    $0x10,%rsp
    2bfb:	89 7d fc             	mov    %edi,-0x4(%rbp)
    2bfe:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    2c02:	79 18                	jns    2c1c <az_putoctal+0x29>
    2c04:	bf 2d 00 00 00       	mov    $0x2d,%edi
    2c09:	e8 42 05 00 00       	call   3150 <az_putchar>
    2c0e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2c11:	f7 d8                	neg    %eax
    2c13:	89 c7                	mov    %eax,%edi
    2c15:	e8 55 04 00 00       	call   306f <az_putnbr>
    2c1a:	eb 42                	jmp    2c5e <az_putoctal+0x6b>
    2c1c:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
    2c20:	7e 2c                	jle    2c4e <az_putoctal+0x5b>
    2c22:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2c25:	8d 50 07             	lea    0x7(%rax),%edx
    2c28:	85 c0                	test   %eax,%eax
    2c2a:	0f 48 c2             	cmovs  %edx,%eax
    2c2d:	c1 f8 03             	sar    $0x3,%eax
    2c30:	89 c7                	mov    %eax,%edi
    2c32:	e8 bc ff ff ff       	call   2bf3 <az_putoctal>
    2c37:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2c3a:	99                   	cltd   
    2c3b:	c1 ea 1d             	shr    $0x1d,%edx
    2c3e:	01 d0                	add    %edx,%eax
    2c40:	83 e0 07             	and    $0x7,%eax
    2c43:	29 d0                	sub    %edx,%eax
    2c45:	89 c7                	mov    %eax,%edi
    2c47:	e8 a7 ff ff ff       	call   2bf3 <az_putoctal>
    2c4c:	eb 10                	jmp    2c5e <az_putoctal+0x6b>
    2c4e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2c51:	83 c0 30             	add    $0x30,%eax
    2c54:	0f be c0             	movsbl %al,%eax
    2c57:	89 c7                	mov    %eax,%edi
    2c59:	e8 f2 04 00 00       	call   3150 <az_putchar>
    2c5e:	90                   	nop
    2c5f:	c9                   	leave  
    2c60:	c3                   	ret    

0000000000002c61 <az_putunsigned>:
    2c61:	55                   	push   %rbp
    2c62:	48 89 e5             	mov    %rsp,%rbp
    2c65:	48 83 ec 10          	sub    $0x10,%rsp
    2c69:	89 7d fc             	mov    %edi,-0x4(%rbp)
    2c6c:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
    2c70:	76 49                	jbe    2cbb <az_putunsigned+0x5a>
    2c72:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2c75:	89 c2                	mov    %eax,%edx
    2c77:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
    2c7c:	48 0f af c2          	imul   %rdx,%rax
    2c80:	48 c1 e8 20          	shr    $0x20,%rax
    2c84:	c1 e8 03             	shr    $0x3,%eax
    2c87:	89 c7                	mov    %eax,%edi
    2c89:	e8 d3 ff ff ff       	call   2c61 <az_putunsigned>
    2c8e:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    2c91:	89 ca                	mov    %ecx,%edx
    2c93:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
    2c98:	48 0f af c2          	imul   %rdx,%rax
    2c9c:	48 c1 e8 20          	shr    $0x20,%rax
    2ca0:	89 c2                	mov    %eax,%edx
    2ca2:	c1 ea 03             	shr    $0x3,%edx
    2ca5:	89 d0                	mov    %edx,%eax
    2ca7:	c1 e0 02             	shl    $0x2,%eax
    2caa:	01 d0                	add    %edx,%eax
    2cac:	01 c0                	add    %eax,%eax
    2cae:	29 c1                	sub    %eax,%ecx
    2cb0:	89 ca                	mov    %ecx,%edx
    2cb2:	89 d7                	mov    %edx,%edi
    2cb4:	e8 a8 ff ff ff       	call   2c61 <az_putunsigned>
    2cb9:	eb 10                	jmp    2ccb <az_putunsigned+0x6a>
    2cbb:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2cbe:	83 c0 30             	add    $0x30,%eax
    2cc1:	0f be c0             	movsbl %al,%eax
    2cc4:	89 c7                	mov    %eax,%edi
    2cc6:	e8 85 04 00 00       	call   3150 <az_putchar>
    2ccb:	90                   	nop
    2ccc:	c9                   	leave  
    2ccd:	c3                   	ret    

0000000000002cce <az_memalloc>:
    2cce:	55                   	push   %rbp
    2ccf:	48 89 e5             	mov    %rsp,%rbp
    2cd2:	48 83 ec 20          	sub    $0x20,%rsp
    2cd6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2cda:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2cde:	48 89 c7             	mov    %rax,%rdi
    2ce1:	e8 8a e3 ff ff       	call   1070 <malloc@plt>
    2ce6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2cea:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    2cef:	75 07                	jne    2cf8 <az_memalloc+0x2a>
    2cf1:	b8 00 00 00 00       	mov    $0x0,%eax
    2cf6:	eb 15                	jmp    2d0d <az_memalloc+0x3f>
    2cf8:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2cfc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2d00:	be 00 00 00 00       	mov    $0x0,%esi
    2d05:	48 89 c7             	mov    %rax,%rdi
    2d08:	e8 f0 03 00 00       	call   30fd <az_memset>
    2d0d:	c9                   	leave  
    2d0e:	c3                   	ret    

0000000000002d0f <az_isdigit>:
    2d0f:	55                   	push   %rbp
    2d10:	48 89 e5             	mov    %rsp,%rbp
    2d13:	89 7d fc             	mov    %edi,-0x4(%rbp)
    2d16:	83 7d fc 2f          	cmpl   $0x2f,-0x4(%rbp)
    2d1a:	7e 0d                	jle    2d29 <az_isdigit+0x1a>
    2d1c:	83 7d fc 39          	cmpl   $0x39,-0x4(%rbp)
    2d20:	7f 07                	jg     2d29 <az_isdigit+0x1a>
    2d22:	b8 01 00 00 00       	mov    $0x1,%eax
    2d27:	eb 05                	jmp    2d2e <az_isdigit+0x1f>
    2d29:	b8 00 00 00 00       	mov    $0x0,%eax
    2d2e:	5d                   	pop    %rbp
    2d2f:	c3                   	ret    

0000000000002d30 <az_isalpha>:
    2d30:	55                   	push   %rbp
    2d31:	48 89 e5             	mov    %rsp,%rbp
    2d34:	89 7d fc             	mov    %edi,-0x4(%rbp)
    2d37:	83 7d fc 60          	cmpl   $0x60,-0x4(%rbp)
    2d3b:	7e 0d                	jle    2d4a <az_isalpha+0x1a>
    2d3d:	83 7d fc 7a          	cmpl   $0x7a,-0x4(%rbp)
    2d41:	7f 07                	jg     2d4a <az_isalpha+0x1a>
    2d43:	b8 01 00 00 00       	mov    $0x1,%eax
    2d48:	eb 18                	jmp    2d62 <az_isalpha+0x32>
    2d4a:	83 7d fc 40          	cmpl   $0x40,-0x4(%rbp)
    2d4e:	7e 0d                	jle    2d5d <az_isalpha+0x2d>
    2d50:	83 7d fc 5a          	cmpl   $0x5a,-0x4(%rbp)
    2d54:	7f 07                	jg     2d5d <az_isalpha+0x2d>
    2d56:	b8 01 00 00 00       	mov    $0x1,%eax
    2d5b:	eb 05                	jmp    2d62 <az_isalpha+0x32>
    2d5d:	b8 00 00 00 00       	mov    $0x0,%eax
    2d62:	5d                   	pop    %rbp
    2d63:	c3                   	ret    

0000000000002d64 <az_pow>:
    2d64:	55                   	push   %rbp
    2d65:	48 89 e5             	mov    %rsp,%rbp
    2d68:	48 83 ec 10          	sub    $0x10,%rsp
    2d6c:	89 7d fc             	mov    %edi,-0x4(%rbp)
    2d6f:	89 75 f8             	mov    %esi,-0x8(%rbp)
    2d72:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
    2d76:	75 07                	jne    2d7f <az_pow+0x1b>
    2d78:	b8 01 00 00 00       	mov    $0x1,%eax
    2d7d:	eb 16                	jmp    2d95 <az_pow+0x31>
    2d7f:	8b 45 f8             	mov    -0x8(%rbp),%eax
    2d82:	8d 50 ff             	lea    -0x1(%rax),%edx
    2d85:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2d88:	89 d6                	mov    %edx,%esi
    2d8a:	89 c7                	mov    %eax,%edi
    2d8c:	e8 d3 ff ff ff       	call   2d64 <az_pow>
    2d91:	0f af 45 fc          	imul   -0x4(%rbp),%eax
    2d95:	c9                   	leave  
    2d96:	c3                   	ret    

0000000000002d97 <az_itoa>:
    2d97:	55                   	push   %rbp
    2d98:	48 89 e5             	mov    %rsp,%rbp
    2d9b:	48 83 ec 20          	sub    $0x20,%rsp
    2d9f:	89 7d ec             	mov    %edi,-0x14(%rbp)
    2da2:	89 75 e8             	mov    %esi,-0x18(%rbp)
    2da5:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%rbp)
    2dac:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    2db3:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    2db7:	79 16                	jns    2dcf <az_itoa+0x38>
    2db9:	83 7d e8 0a          	cmpl   $0xa,-0x18(%rbp)
    2dbd:	75 07                	jne    2dc6 <az_itoa+0x2f>
    2dbf:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%rbp)
    2dc6:	f7 5d ec             	negl   -0x14(%rbp)
    2dc9:	eb 04                	jmp    2dcf <az_itoa+0x38>
    2dcb:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    2dcf:	8b 55 f0             	mov    -0x10(%rbp),%edx
    2dd2:	8b 45 e8             	mov    -0x18(%rbp),%eax
    2dd5:	89 d6                	mov    %edx,%esi
    2dd7:	89 c7                	mov    %eax,%edi
    2dd9:	e8 86 ff ff ff       	call   2d64 <az_pow>
    2dde:	39 45 ec             	cmp    %eax,-0x14(%rbp)
    2de1:	7d e8                	jge    2dcb <az_itoa+0x34>
    2de3:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2de6:	48 98                	cltq   
    2de8:	48 c1 e0 03          	shl    $0x3,%rax
    2dec:	48 89 c7             	mov    %rax,%rdi
    2def:	e8 7c e2 ff ff       	call   1070 <malloc@plt>
    2df4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2df8:	8b 55 f0             	mov    -0x10(%rbp),%edx
    2dfb:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2dfe:	01 d0                	add    %edx,%eax
    2e00:	48 63 d0             	movslq %eax,%rdx
    2e03:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2e07:	48 01 d0             	add    %rdx,%rax
    2e0a:	c6 00 00             	movb   $0x0,(%rax)
    2e0d:	eb 47                	jmp    2e56 <az_itoa+0xbf>
    2e0f:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2e12:	99                   	cltd   
    2e13:	f7 7d e8             	idivl  -0x18(%rbp)
    2e16:	89 d0                	mov    %edx,%eax
    2e18:	89 c1                	mov    %eax,%ecx
    2e1a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2e1d:	99                   	cltd   
    2e1e:	f7 7d e8             	idivl  -0x18(%rbp)
    2e21:	89 d0                	mov    %edx,%eax
    2e23:	83 f8 09             	cmp    $0x9,%eax
    2e26:	7e 07                	jle    2e2f <az_itoa+0x98>
    2e28:	b8 37 00 00 00       	mov    $0x37,%eax
    2e2d:	eb 05                	jmp    2e34 <az_itoa+0x9d>
    2e2f:	b8 30 00 00 00       	mov    $0x30,%eax
    2e34:	01 c1                	add    %eax,%ecx
    2e36:	8b 55 f0             	mov    -0x10(%rbp),%edx
    2e39:	8b 45 f4             	mov    -0xc(%rbp),%eax
    2e3c:	01 d0                	add    %edx,%eax
    2e3e:	48 63 d0             	movslq %eax,%rdx
    2e41:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2e45:	48 01 d0             	add    %rdx,%rax
    2e48:	89 ca                	mov    %ecx,%edx
    2e4a:	88 10                	mov    %dl,(%rax)
    2e4c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2e4f:	99                   	cltd   
    2e50:	f7 7d e8             	idivl  -0x18(%rbp)
    2e53:	89 45 ec             	mov    %eax,-0x14(%rbp)
    2e56:	8b 45 f0             	mov    -0x10(%rbp),%eax
    2e59:	8d 50 ff             	lea    -0x1(%rax),%edx
    2e5c:	89 55 f0             	mov    %edx,-0x10(%rbp)
    2e5f:	85 c0                	test   %eax,%eax
    2e61:	7f ac                	jg     2e0f <az_itoa+0x78>
    2e63:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    2e67:	74 07                	je     2e70 <az_itoa+0xd9>
    2e69:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2e6d:	c6 00 2d             	movb   $0x2d,(%rax)
    2e70:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2e74:	c9                   	leave  
    2e75:	c3                   	ret    

0000000000002e76 <az_chrpos>:
    2e76:	55                   	push   %rbp
    2e77:	48 89 e5             	mov    %rsp,%rbp
    2e7a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2e7e:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    2e81:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    2e88:	eb 21                	jmp    2eab <az_chrpos+0x35>
    2e8a:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2e8d:	48 63 d0             	movslq %eax,%rdx
    2e90:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2e94:	48 01 d0             	add    %rdx,%rax
    2e97:	0f b6 00             	movzbl (%rax),%eax
    2e9a:	0f be c0             	movsbl %al,%eax
    2e9d:	39 45 e4             	cmp    %eax,-0x1c(%rbp)
    2ea0:	75 05                	jne    2ea7 <az_chrpos+0x31>
    2ea2:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2ea5:	eb 1d                	jmp    2ec4 <az_chrpos+0x4e>
    2ea7:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    2eab:	8b 45 fc             	mov    -0x4(%rbp),%eax
    2eae:	48 63 d0             	movslq %eax,%rdx
    2eb1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2eb5:	48 01 d0             	add    %rdx,%rax
    2eb8:	0f b6 00             	movzbl (%rax),%eax
    2ebb:	84 c0                	test   %al,%al
    2ebd:	75 cb                	jne    2e8a <az_chrpos+0x14>
    2ebf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2ec4:	5d                   	pop    %rbp
    2ec5:	c3                   	ret    

0000000000002ec6 <az_strsub>:
    2ec6:	55                   	push   %rbp
    2ec7:	48 89 e5             	mov    %rsp,%rbp
    2eca:	48 83 ec 30          	sub    $0x30,%rsp
    2ece:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2ed2:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    2ed5:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    2ed9:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    2ee0:	00 
    2ee1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    2ee5:	48 83 c0 01          	add    $0x1,%rax
    2ee9:	48 89 c7             	mov    %rax,%rdi
    2eec:	e8 dd fd ff ff       	call   2cce <az_memalloc>
    2ef1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    2ef5:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    2efa:	75 2d                	jne    2f29 <az_strsub+0x63>
    2efc:	b8 00 00 00 00       	mov    $0x0,%eax
    2f01:	eb 42                	jmp    2f45 <az_strsub+0x7f>
    2f03:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    2f06:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2f0a:	48 01 c2             	add    %rax,%rdx
    2f0d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    2f11:	48 01 d0             	add    %rdx,%rax
    2f14:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    2f18:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    2f1c:	48 01 ca             	add    %rcx,%rdx
    2f1f:	0f b6 00             	movzbl (%rax),%eax
    2f22:	88 02                	mov    %al,(%rdx)
    2f24:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    2f29:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2f2d:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    2f31:	72 d0                	jb     2f03 <az_strsub+0x3d>
    2f33:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    2f37:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    2f3b:	48 01 d0             	add    %rdx,%rax
    2f3e:	c6 00 00             	movb   $0x0,(%rax)
    2f41:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f45:	c9                   	leave  
    2f46:	c3                   	ret    

0000000000002f47 <az_nbrlen>:
    2f47:	55                   	push   %rbp
    2f48:	48 89 e5             	mov    %rsp,%rbp
    2f4b:	89 7d ec             	mov    %edi,-0x14(%rbp)
    2f4e:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    2f55:	00 
    2f56:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    2f5a:	79 2c                	jns    2f88 <az_nbrlen+0x41>
    2f5c:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    2f61:	eb 25                	jmp    2f88 <az_nbrlen+0x41>
    2f63:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2f66:	48 63 d0             	movslq %eax,%rdx
    2f69:	48 69 d2 67 66 66 66 	imul   $0x66666667,%rdx,%rdx
    2f70:	48 c1 ea 20          	shr    $0x20,%rdx
    2f74:	c1 fa 02             	sar    $0x2,%edx
    2f77:	c1 f8 1f             	sar    $0x1f,%eax
    2f7a:	89 c1                	mov    %eax,%ecx
    2f7c:	89 d0                	mov    %edx,%eax
    2f7e:	29 c8                	sub    %ecx,%eax
    2f80:	89 45 ec             	mov    %eax,-0x14(%rbp)
    2f83:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    2f88:	8b 45 ec             	mov    -0x14(%rbp),%eax
    2f8b:	83 c0 09             	add    $0x9,%eax
    2f8e:	83 f8 12             	cmp    $0x12,%eax
    2f91:	77 d0                	ja     2f63 <az_nbrlen+0x1c>
    2f93:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    2f98:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2f9c:	5d                   	pop    %rbp
    2f9d:	c3                   	ret    

0000000000002f9e <az_strlen>:
    2f9e:	55                   	push   %rbp
    2f9f:	48 89 e5             	mov    %rsp,%rbp
    2fa2:	48 83 ec 20          	sub    $0x20,%rsp
    2fa6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    2faa:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
    2fb1:	00 
    2fb2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2fb6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2fba:	48 01 d0             	add    %rdx,%rax
    2fbd:	0f b6 00             	movzbl (%rax),%eax
    2fc0:	84 c0                	test   %al,%al
    2fc2:	74 1c                	je     2fe0 <az_strlen+0x42>
    2fc4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2fc8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2fcc:	48 01 d0             	add    %rdx,%rax
    2fcf:	0f b6 00             	movzbl (%rax),%eax
    2fd2:	0f be c0             	movsbl %al,%eax
    2fd5:	89 c7                	mov    %eax,%edi
    2fd7:	e8 66 04 00 00       	call   3442 <az_isprint>
    2fdc:	85 c0                	test   %eax,%eax
    2fde:	75 0c                	jne    2fec <az_strlen+0x4e>
    2fe0:	b8 00 00 00 00       	mov    $0x0,%eax
    2fe5:	eb 37                	jmp    301e <az_strlen+0x80>
    2fe7:	48 83 45 f8 01       	addq   $0x1,-0x8(%rbp)
    2fec:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    2ff0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    2ff4:	48 01 d0             	add    %rdx,%rax
    2ff7:	0f b6 00             	movzbl (%rax),%eax
    2ffa:	84 c0                	test   %al,%al
    2ffc:	74 1c                	je     301a <az_strlen+0x7c>
    2ffe:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    3002:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3006:	48 01 d0             	add    %rdx,%rax
    3009:	0f b6 00             	movzbl (%rax),%eax
    300c:	0f be c0             	movsbl %al,%eax
    300f:	89 c7                	mov    %eax,%edi
    3011:	e8 2c 04 00 00       	call   3442 <az_isprint>
    3016:	85 c0                	test   %eax,%eax
    3018:	75 cd                	jne    2fe7 <az_strlen+0x49>
    301a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    301e:	c9                   	leave  
    301f:	c3                   	ret    

0000000000003020 <az_puthex>:
    3020:	55                   	push   %rbp
    3021:	48 89 e5             	mov    %rsp,%rbp
    3024:	48 83 ec 20          	sub    $0x20,%rsp
    3028:	89 7d ec             	mov    %edi,-0x14(%rbp)
    302b:	48 8d 05 0d 12 00 00 	lea    0x120d(%rip),%rax        # 423f <_IO_stdin_used+0x23f>
    3032:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3036:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    303a:	74 30                	je     306c <az_puthex+0x4c>
    303c:	8b 45 ec             	mov    -0x14(%rbp),%eax
    303f:	83 e0 0f             	and    $0xf,%eax
    3042:	88 45 f7             	mov    %al,-0x9(%rbp)
    3045:	c1 6d ec 04          	shrl   $0x4,-0x14(%rbp)
    3049:	8b 45 ec             	mov    -0x14(%rbp),%eax
    304c:	89 c7                	mov    %eax,%edi
    304e:	e8 cd ff ff ff       	call   3020 <az_puthex>
    3053:	48 0f be 55 f7       	movsbq -0x9(%rbp),%rdx
    3058:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    305c:	48 01 d0             	add    %rdx,%rax
    305f:	0f b6 00             	movzbl (%rax),%eax
    3062:	0f be c0             	movsbl %al,%eax
    3065:	89 c7                	mov    %eax,%edi
    3067:	e8 e4 00 00 00       	call   3150 <az_putchar>
    306c:	90                   	nop
    306d:	c9                   	leave  
    306e:	c3                   	ret    

000000000000306f <az_putnbr>:
    306f:	55                   	push   %rbp
    3070:	48 89 e5             	mov    %rsp,%rbp
    3073:	48 83 ec 20          	sub    $0x20,%rsp
    3077:	89 7d ec             	mov    %edi,-0x14(%rbp)
    307a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    3081:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    3085:	78 06                	js     308d <az_putnbr+0x1e>
    3087:	8b 45 ec             	mov    -0x14(%rbp),%eax
    308a:	89 45 fc             	mov    %eax,-0x4(%rbp)
    308d:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    3091:	79 12                	jns    30a5 <az_putnbr+0x36>
    3093:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3096:	f7 d8                	neg    %eax
    3098:	89 45 fc             	mov    %eax,-0x4(%rbp)
    309b:	bf 2d 00 00 00       	mov    $0x2d,%edi
    30a0:	e8 ab 00 00 00       	call   3150 <az_putchar>
    30a5:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
    30a9:	76 1c                	jbe    30c7 <az_putnbr+0x58>
    30ab:	8b 45 fc             	mov    -0x4(%rbp),%eax
    30ae:	89 c2                	mov    %eax,%edx
    30b0:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
    30b5:	48 0f af c2          	imul   %rdx,%rax
    30b9:	48 c1 e8 20          	shr    $0x20,%rax
    30bd:	c1 e8 03             	shr    $0x3,%eax
    30c0:	89 c7                	mov    %eax,%edi
    30c2:	e8 a8 ff ff ff       	call   306f <az_putnbr>
    30c7:	8b 4d fc             	mov    -0x4(%rbp),%ecx
    30ca:	89 ca                	mov    %ecx,%edx
    30cc:	b8 cd cc cc cc       	mov    $0xcccccccd,%eax
    30d1:	48 0f af c2          	imul   %rdx,%rax
    30d5:	48 c1 e8 20          	shr    $0x20,%rax
    30d9:	89 c2                	mov    %eax,%edx
    30db:	c1 ea 03             	shr    $0x3,%edx
    30de:	89 d0                	mov    %edx,%eax
    30e0:	c1 e0 02             	shl    $0x2,%eax
    30e3:	01 d0                	add    %edx,%eax
    30e5:	01 c0                	add    %eax,%eax
    30e7:	29 c1                	sub    %eax,%ecx
    30e9:	89 ca                	mov    %ecx,%edx
    30eb:	89 d0                	mov    %edx,%eax
    30ed:	83 c0 30             	add    $0x30,%eax
    30f0:	0f be c0             	movsbl %al,%eax
    30f3:	89 c7                	mov    %eax,%edi
    30f5:	e8 56 00 00 00       	call   3150 <az_putchar>
    30fa:	90                   	nop
    30fb:	c9                   	leave  
    30fc:	c3                   	ret    

00000000000030fd <az_memset>:
    30fd:	55                   	push   %rbp
    30fe:	48 89 e5             	mov    %rsp,%rbp
    3101:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3105:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    3108:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    310c:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
    3113:	00 
    3114:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    3119:	75 06                	jne    3121 <az_memset+0x24>
    311b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    311f:	eb 2d                	jmp    314e <az_memset+0x51>
    3121:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3125:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    3129:	eb 15                	jmp    3140 <az_memset+0x43>
    312b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    312f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3133:	48 01 d0             	add    %rdx,%rax
    3136:	8b 55 e4             	mov    -0x1c(%rbp),%edx
    3139:	88 10                	mov    %dl,(%rax)
    313b:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
    3140:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3144:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
    3148:	72 e1                	jb     312b <az_memset+0x2e>
    314a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    314e:	5d                   	pop    %rbp
    314f:	c3                   	ret    

0000000000003150 <az_putchar>:
    3150:	55                   	push   %rbp
    3151:	48 89 e5             	mov    %rsp,%rbp
    3154:	53                   	push   %rbx
    3155:	89 f8                	mov    %edi,%eax
    3157:	88 45 e4             	mov    %al,-0x1c(%rbp)
    315a:	0f be 45 e4          	movsbl -0x1c(%rbp),%eax
    315e:	89 45 f4             	mov    %eax,-0xc(%rbp)
    3161:	8b 45 f4             	mov    -0xc(%rbp),%eax
    3164:	89 c3                	mov    %eax,%ebx
    3166:	49 89 e2             	mov    %rsp,%r10
    3169:	48 83 ec 08          	sub    $0x8,%rsp
    316d:	88 04 24             	mov    %al,(%rsp)
    3170:	bf 01 00 00 00       	mov    $0x1,%edi
    3175:	48 89 e6             	mov    %rsp,%rsi
    3178:	ba 01 00 00 00       	mov    $0x1,%edx
    317d:	b8 01 00 00 00       	mov    $0x1,%eax
    3182:	0f 05                	syscall 
    3184:	4c 89 d4             	mov    %r10,%rsp
    3187:	90                   	nop
    3188:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    318c:	c9                   	leave  
    318d:	c3                   	ret    

000000000000318e <az_putstr>:
    318e:	55                   	push   %rbp
    318f:	48 89 e5             	mov    %rsp,%rbp
    3192:	48 83 ec 20          	sub    $0x20,%rsp
    3196:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    319a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    31a1:	eb 1e                	jmp    31c1 <az_putstr+0x33>
    31a3:	8b 45 fc             	mov    -0x4(%rbp),%eax
    31a6:	48 63 d0             	movslq %eax,%rdx
    31a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    31ad:	48 01 d0             	add    %rdx,%rax
    31b0:	0f b6 00             	movzbl (%rax),%eax
    31b3:	0f be c0             	movsbl %al,%eax
    31b6:	89 c7                	mov    %eax,%edi
    31b8:	e8 93 ff ff ff       	call   3150 <az_putchar>
    31bd:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
    31c1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    31c4:	48 63 d0             	movslq %eax,%rdx
    31c7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    31cb:	48 01 d0             	add    %rdx,%rax
    31ce:	0f b6 00             	movzbl (%rax),%eax
    31d1:	84 c0                	test   %al,%al
    31d3:	75 ce                	jne    31a3 <az_putstr+0x15>
    31d5:	90                   	nop
    31d6:	90                   	nop
    31d7:	c9                   	leave  
    31d8:	c3                   	ret    

00000000000031d9 <az_strcmp>:
    31d9:	55                   	push   %rbp
    31da:	48 89 e5             	mov    %rsp,%rbp
    31dd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    31e1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    31e5:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    31ec:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    31f0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    31f4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    31f8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    31fc:	eb 04                	jmp    3202 <az_strcmp+0x29>
    31fe:	83 45 ec 01          	addl   $0x1,-0x14(%rbp)
    3202:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3205:	48 63 d0             	movslq %eax,%rdx
    3208:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    320c:	48 01 d0             	add    %rdx,%rax
    320f:	0f b6 00             	movzbl (%rax),%eax
    3212:	84 c0                	test   %al,%al
    3214:	74 38                	je     324e <az_strcmp+0x75>
    3216:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3219:	48 63 d0             	movslq %eax,%rdx
    321c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3220:	48 01 d0             	add    %rdx,%rax
    3223:	0f b6 00             	movzbl (%rax),%eax
    3226:	84 c0                	test   %al,%al
    3228:	74 24                	je     324e <az_strcmp+0x75>
    322a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    322d:	48 63 d0             	movslq %eax,%rdx
    3230:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3234:	48 01 d0             	add    %rdx,%rax
    3237:	0f b6 10             	movzbl (%rax),%edx
    323a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    323d:	48 63 c8             	movslq %eax,%rcx
    3240:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3244:	48 01 c8             	add    %rcx,%rax
    3247:	0f b6 00             	movzbl (%rax),%eax
    324a:	38 c2                	cmp    %al,%dl
    324c:	74 b0                	je     31fe <az_strcmp+0x25>
    324e:	8b 45 ec             	mov    -0x14(%rbp),%eax
    3251:	48 63 d0             	movslq %eax,%rdx
    3254:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    3258:	48 01 d0             	add    %rdx,%rax
    325b:	0f b6 00             	movzbl (%rax),%eax
    325e:	0f be c0             	movsbl %al,%eax
    3261:	8b 55 ec             	mov    -0x14(%rbp),%edx
    3264:	48 63 ca             	movslq %edx,%rcx
    3267:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    326b:	48 01 ca             	add    %rcx,%rdx
    326e:	0f b6 12             	movzbl (%rdx),%edx
    3271:	0f be d2             	movsbl %dl,%edx
    3274:	29 d0                	sub    %edx,%eax
    3276:	5d                   	pop    %rbp
    3277:	c3                   	ret    

0000000000003278 <az_strchr>:
    3278:	55                   	push   %rbp
    3279:	48 89 e5             	mov    %rsp,%rbp
    327c:	48 83 ec 20          	sub    $0x20,%rsp
    3280:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    3284:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    3287:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    328b:	48 89 c7             	mov    %rax,%rdi
    328e:	e8 0b fd ff ff       	call   2f9e <az_strlen>
    3293:	48 89 c7             	mov    %rax,%rdi
    3296:	e8 d5 dd ff ff       	call   1070 <malloc@plt>
    329b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    329f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    32a6:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    32ad:	8b 45 f0             	mov    -0x10(%rbp),%eax
    32b0:	48 63 d0             	movslq %eax,%rdx
    32b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    32b7:	48 01 d0             	add    %rdx,%rax
    32ba:	0f b6 00             	movzbl (%rax),%eax
    32bd:	84 c0                	test   %al,%al
    32bf:	75 0e                	jne    32cf <az_strchr+0x57>
    32c1:	b8 00 00 00 00       	mov    $0x0,%eax
    32c6:	e9 a6 00 00 00       	jmp    3371 <az_strchr+0xf9>
    32cb:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    32cf:	8b 45 f0             	mov    -0x10(%rbp),%eax
    32d2:	48 63 d0             	movslq %eax,%rdx
    32d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    32d9:	48 01 d0             	add    %rdx,%rax
    32dc:	0f b6 00             	movzbl (%rax),%eax
    32df:	84 c0                	test   %al,%al
    32e1:	74 18                	je     32fb <az_strchr+0x83>
    32e3:	8b 45 f0             	mov    -0x10(%rbp),%eax
    32e6:	48 63 d0             	movslq %eax,%rdx
    32e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    32ed:	48 01 d0             	add    %rdx,%rax
    32f0:	0f b6 00             	movzbl (%rax),%eax
    32f3:	0f be c0             	movsbl %al,%eax
    32f6:	39 45 e4             	cmp    %eax,-0x1c(%rbp)
    32f9:	75 d0                	jne    32cb <az_strchr+0x53>
    32fb:	8b 45 f0             	mov    -0x10(%rbp),%eax
    32fe:	48 63 d0             	movslq %eax,%rdx
    3301:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3305:	48 01 d0             	add    %rdx,%rax
    3308:	0f b6 00             	movzbl (%rax),%eax
    330b:	84 c0                	test   %al,%al
    330d:	74 2d                	je     333c <az_strchr+0xc4>
    330f:	83 6d f0 01          	subl   $0x1,-0x10(%rbp)
    3313:	eb 27                	jmp    333c <az_strchr+0xc4>
    3315:	8b 45 f0             	mov    -0x10(%rbp),%eax
    3318:	48 63 d0             	movslq %eax,%rdx
    331b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    331f:	48 01 d0             	add    %rdx,%rax
    3322:	8b 55 f4             	mov    -0xc(%rbp),%edx
    3325:	48 63 ca             	movslq %edx,%rcx
    3328:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    332c:	48 01 ca             	add    %rcx,%rdx
    332f:	0f b6 00             	movzbl (%rax),%eax
    3332:	88 02                	mov    %al,(%rdx)
    3334:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    3338:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)
    333c:	8b 45 f0             	mov    -0x10(%rbp),%eax
    333f:	48 63 d0             	movslq %eax,%rdx
    3342:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3346:	48 01 d0             	add    %rdx,%rax
    3349:	0f b6 00             	movzbl (%rax),%eax
    334c:	84 c0                	test   %al,%al
    334e:	75 c5                	jne    3315 <az_strchr+0x9d>
    3350:	8b 45 f4             	mov    -0xc(%rbp),%eax
    3353:	48 63 d0             	movslq %eax,%rdx
    3356:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    335a:	48 01 d0             	add    %rdx,%rax
    335d:	c6 00 00             	movb   $0x0,(%rax)
    3360:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
    3364:	75 07                	jne    336d <az_strchr+0xf5>
    3366:	b8 00 00 00 00       	mov    $0x0,%eax
    336b:	eb 04                	jmp    3371 <az_strchr+0xf9>
    336d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    3371:	c9                   	leave  
    3372:	c3                   	ret    

0000000000003373 <az_atoi>:
    3373:	55                   	push   %rbp
    3374:	48 89 e5             	mov    %rsp,%rbp
    3377:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    337b:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
    3382:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
    3389:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
    3390:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
    3395:	75 0a                	jne    33a1 <az_atoi+0x2e>
    3397:	b8 00 00 00 00       	mov    $0x0,%eax
    339c:	e9 9f 00 00 00       	jmp    3440 <az_atoi+0xcd>
    33a1:	8b 45 f0             	mov    -0x10(%rbp),%eax
    33a4:	48 63 d0             	movslq %eax,%rdx
    33a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    33ab:	48 01 d0             	add    %rdx,%rax
    33ae:	0f b6 00             	movzbl (%rax),%eax
    33b1:	3c 2d                	cmp    $0x2d,%al
    33b3:	75 0d                	jne    33c2 <az_atoi+0x4f>
    33b5:	c7 45 f8 ff ff ff ff 	movl   $0xffffffff,-0x8(%rbp)
    33bc:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    33c0:	eb 49                	jmp    340b <az_atoi+0x98>
    33c2:	8b 45 f0             	mov    -0x10(%rbp),%eax
    33c5:	48 63 d0             	movslq %eax,%rdx
    33c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    33cc:	48 01 d0             	add    %rdx,%rax
    33cf:	0f b6 00             	movzbl (%rax),%eax
    33d2:	3c 2b                	cmp    $0x2b,%al
    33d4:	75 35                	jne    340b <az_atoi+0x98>
    33d6:	83 45 f0 01          	addl   $0x1,-0x10(%rbp)
    33da:	eb 2f                	jmp    340b <az_atoi+0x98>
    33dc:	8b 55 f4             	mov    -0xc(%rbp),%edx
    33df:	89 d0                	mov    %edx,%eax
    33e1:	c1 e0 02             	shl    $0x2,%eax
    33e4:	01 d0                	add    %edx,%eax
    33e6:	01 c0                	add    %eax,%eax
    33e8:	89 c1                	mov    %eax,%ecx
    33ea:	8b 45 f0             	mov    -0x10(%rbp),%eax
    33ed:	8d 50 01             	lea    0x1(%rax),%edx
    33f0:	89 55 f0             	mov    %edx,-0x10(%rbp)
    33f3:	48 63 d0             	movslq %eax,%rdx
    33f6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    33fa:	48 01 d0             	add    %rdx,%rax
    33fd:	0f b6 00             	movzbl (%rax),%eax
    3400:	0f be c0             	movsbl %al,%eax
    3403:	01 c8                	add    %ecx,%eax
    3405:	83 e8 30             	sub    $0x30,%eax
    3408:	89 45 f4             	mov    %eax,-0xc(%rbp)
    340b:	8b 45 f0             	mov    -0x10(%rbp),%eax
    340e:	48 63 d0             	movslq %eax,%rdx
    3411:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3415:	48 01 d0             	add    %rdx,%rax
    3418:	0f b6 00             	movzbl (%rax),%eax
    341b:	3c 2f                	cmp    $0x2f,%al
    341d:	7e 14                	jle    3433 <az_atoi+0xc0>
    341f:	8b 45 f0             	mov    -0x10(%rbp),%eax
    3422:	48 63 d0             	movslq %eax,%rdx
    3425:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    3429:	48 01 d0             	add    %rdx,%rax
    342c:	0f b6 00             	movzbl (%rax),%eax
    342f:	3c 39                	cmp    $0x39,%al
    3431:	7e a9                	jle    33dc <az_atoi+0x69>
    3433:	8b 45 f4             	mov    -0xc(%rbp),%eax
    3436:	0f af 45 f8          	imul   -0x8(%rbp),%eax
    343a:	89 45 fc             	mov    %eax,-0x4(%rbp)
    343d:	8b 45 fc             	mov    -0x4(%rbp),%eax
    3440:	5d                   	pop    %rbp
    3441:	c3                   	ret    

0000000000003442 <az_isprint>:
    3442:	55                   	push   %rbp
    3443:	48 89 e5             	mov    %rsp,%rbp
    3446:	89 7d fc             	mov    %edi,-0x4(%rbp)
    3449:	83 7d fc 1f          	cmpl   $0x1f,-0x4(%rbp)
    344d:	7e 0d                	jle    345c <az_isprint+0x1a>
    344f:	83 7d fc 7e          	cmpl   $0x7e,-0x4(%rbp)
    3453:	7f 07                	jg     345c <az_isprint+0x1a>
    3455:	b8 01 00 00 00       	mov    $0x1,%eax
    345a:	eb 05                	jmp    3461 <az_isprint+0x1f>
    345c:	b8 00 00 00 00       	mov    $0x0,%eax
    3461:	5d                   	pop    %rbp
    3462:	c3                   	ret    
    3463:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    346a:	00 00 00 
    346d:	0f 1f 00             	nopl   (%rax)

0000000000003470 <__libc_csu_init>:
    3470:	f3 0f 1e fa          	endbr64 
    3474:	41 57                	push   %r15
    3476:	4c 8d 3d 6b 29 00 00 	lea    0x296b(%rip),%r15        # 5de8 <__frame_dummy_init_array_entry>
    347d:	41 56                	push   %r14
    347f:	49 89 d6             	mov    %rdx,%r14
    3482:	41 55                	push   %r13
    3484:	49 89 f5             	mov    %rsi,%r13
    3487:	41 54                	push   %r12
    3489:	41 89 fc             	mov    %edi,%r12d
    348c:	55                   	push   %rbp
    348d:	48 8d 2d 5c 29 00 00 	lea    0x295c(%rip),%rbp        # 5df0 <__do_global_dtors_aux_fini_array_entry>
    3494:	53                   	push   %rbx
    3495:	4c 29 fd             	sub    %r15,%rbp
    3498:	48 83 ec 08          	sub    $0x8,%rsp
    349c:	e8 5f db ff ff       	call   1000 <_init>
    34a1:	48 c1 fd 03          	sar    $0x3,%rbp
    34a5:	74 1f                	je     34c6 <__libc_csu_init+0x56>
    34a7:	31 db                	xor    %ebx,%ebx
    34a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    34b0:	4c 89 f2             	mov    %r14,%rdx
    34b3:	4c 89 ee             	mov    %r13,%rsi
    34b6:	44 89 e7             	mov    %r12d,%edi
    34b9:	41 ff 14 df          	call   *(%r15,%rbx,8)
    34bd:	48 83 c3 01          	add    $0x1,%rbx
    34c1:	48 39 dd             	cmp    %rbx,%rbp
    34c4:	75 ea                	jne    34b0 <__libc_csu_init+0x40>
    34c6:	48 83 c4 08          	add    $0x8,%rsp
    34ca:	5b                   	pop    %rbx
    34cb:	5d                   	pop    %rbp
    34cc:	41 5c                	pop    %r12
    34ce:	41 5d                	pop    %r13
    34d0:	41 5e                	pop    %r14
    34d2:	41 5f                	pop    %r15
    34d4:	c3                   	ret    
    34d5:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
    34dc:	00 00 00 00 

00000000000034e0 <__libc_csu_fini>:
    34e0:	f3 0f 1e fa          	endbr64 
    34e4:	c3                   	ret    

Disassembly of section .fini:

00000000000034e8 <_fini>:
    34e8:	f3 0f 1e fa          	endbr64 
    34ec:	48 83 ec 08          	sub    $0x8,%rsp
    34f0:	48 83 c4 08          	add    $0x8,%rsp
    34f4:	c3                   	ret    
