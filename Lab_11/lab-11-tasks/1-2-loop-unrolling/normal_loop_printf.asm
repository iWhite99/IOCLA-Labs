
normal_loop:     file format elf32-i386


Disassembly of section .init:

00001000 <_init>:
    1000:	f3 0f 1e fb          	endbr32 
    1004:	53                   	push   ebx
    1005:	83 ec 08             	sub    esp,0x8
    1008:	e8 b3 00 00 00       	call   10c0 <__x86.get_pc_thunk.bx>
    100d:	81 c3 f3 2f 00 00    	add    ebx,0x2ff3
    1013:	8b 83 f4 ff ff ff    	mov    eax,DWORD PTR [ebx-0xc]
    1019:	85 c0                	test   eax,eax
    101b:	74 02                	je     101f <_init+0x1f>
    101d:	ff d0                	call   eax
    101f:	83 c4 08             	add    esp,0x8
    1022:	5b                   	pop    ebx
    1023:	c3                   	ret    

Disassembly of section .plt:

00001030 <.plt>:
    1030:	ff b3 04 00 00 00    	push   DWORD PTR [ebx+0x4]
    1036:	ff a3 08 00 00 00    	jmp    DWORD PTR [ebx+0x8]
    103c:	00 00                	add    BYTE PTR [eax],al
	...

00001040 <printf@plt>:
    1040:	ff a3 0c 00 00 00    	jmp    DWORD PTR [ebx+0xc]
    1046:	68 00 00 00 00       	push   0x0
    104b:	e9 e0 ff ff ff       	jmp    1030 <.plt>

00001050 <gettimeofday@plt>:
    1050:	ff a3 10 00 00 00    	jmp    DWORD PTR [ebx+0x10]
    1056:	68 08 00 00 00       	push   0x8
    105b:	e9 d0 ff ff ff       	jmp    1030 <.plt>

00001060 <__stack_chk_fail@plt>:
    1060:	ff a3 14 00 00 00    	jmp    DWORD PTR [ebx+0x14]
    1066:	68 10 00 00 00       	push   0x10
    106b:	e9 c0 ff ff ff       	jmp    1030 <.plt>

00001070 <__libc_start_main@plt>:
    1070:	ff a3 18 00 00 00    	jmp    DWORD PTR [ebx+0x18]
    1076:	68 18 00 00 00       	push   0x18
    107b:	e9 b0 ff ff ff       	jmp    1030 <.plt>

Disassembly of section .text:

00001080 <_start>:
    1080:	f3 0f 1e fb          	endbr32 
    1084:	31 ed                	xor    ebp,ebp
    1086:	5e                   	pop    esi
    1087:	89 e1                	mov    ecx,esp
    1089:	83 e4 f0             	and    esp,0xfffffff0
    108c:	50                   	push   eax
    108d:	54                   	push   esp
    108e:	52                   	push   edx
    108f:	e8 22 00 00 00       	call   10b6 <_start+0x36>
    1094:	81 c3 6c 2f 00 00    	add    ebx,0x2f6c
    109a:	8d 83 40 d3 ff ff    	lea    eax,[ebx-0x2cc0]
    10a0:	50                   	push   eax
    10a1:	8d 83 d0 d2 ff ff    	lea    eax,[ebx-0x2d30]
    10a7:	50                   	push   eax
    10a8:	51                   	push   ecx
    10a9:	56                   	push   esi
    10aa:	ff b3 f8 ff ff ff    	push   DWORD PTR [ebx-0x8]
    10b0:	e8 bb ff ff ff       	call   1070 <__libc_start_main@plt>
    10b5:	f4                   	hlt    
    10b6:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    10b9:	c3                   	ret    
    10ba:	66 90                	xchg   ax,ax
    10bc:	66 90                	xchg   ax,ax
    10be:	66 90                	xchg   ax,ax

000010c0 <__x86.get_pc_thunk.bx>:
    10c0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
    10c3:	c3                   	ret    
    10c4:	66 90                	xchg   ax,ax
    10c6:	66 90                	xchg   ax,ax
    10c8:	66 90                	xchg   ax,ax
    10ca:	66 90                	xchg   ax,ax
    10cc:	66 90                	xchg   ax,ax
    10ce:	66 90                	xchg   ax,ax

000010d0 <deregister_tm_clones>:
    10d0:	e8 e4 00 00 00       	call   11b9 <__x86.get_pc_thunk.dx>
    10d5:	81 c2 2b 2f 00 00    	add    edx,0x2f2b
    10db:	8d 8a 24 00 00 00    	lea    ecx,[edx+0x24]
    10e1:	8d 82 24 00 00 00    	lea    eax,[edx+0x24]
    10e7:	39 c8                	cmp    eax,ecx
    10e9:	74 1d                	je     1108 <deregister_tm_clones+0x38>
    10eb:	8b 82 ec ff ff ff    	mov    eax,DWORD PTR [edx-0x14]
    10f1:	85 c0                	test   eax,eax
    10f3:	74 13                	je     1108 <deregister_tm_clones+0x38>
    10f5:	55                   	push   ebp
    10f6:	89 e5                	mov    ebp,esp
    10f8:	83 ec 14             	sub    esp,0x14
    10fb:	51                   	push   ecx
    10fc:	ff d0                	call   eax
    10fe:	83 c4 10             	add    esp,0x10
    1101:	c9                   	leave  
    1102:	c3                   	ret    
    1103:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
    1107:	90                   	nop
    1108:	c3                   	ret    
    1109:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00001110 <register_tm_clones>:
    1110:	e8 a4 00 00 00       	call   11b9 <__x86.get_pc_thunk.dx>
    1115:	81 c2 eb 2e 00 00    	add    edx,0x2eeb
    111b:	55                   	push   ebp
    111c:	89 e5                	mov    ebp,esp
    111e:	53                   	push   ebx
    111f:	8d 8a 24 00 00 00    	lea    ecx,[edx+0x24]
    1125:	8d 82 24 00 00 00    	lea    eax,[edx+0x24]
    112b:	83 ec 04             	sub    esp,0x4
    112e:	29 c8                	sub    eax,ecx
    1130:	89 c3                	mov    ebx,eax
    1132:	c1 e8 1f             	shr    eax,0x1f
    1135:	c1 fb 02             	sar    ebx,0x2
    1138:	01 d8                	add    eax,ebx
    113a:	d1 f8                	sar    eax,1
    113c:	74 14                	je     1152 <register_tm_clones+0x42>
    113e:	8b 92 fc ff ff ff    	mov    edx,DWORD PTR [edx-0x4]
    1144:	85 d2                	test   edx,edx
    1146:	74 0a                	je     1152 <register_tm_clones+0x42>
    1148:	83 ec 08             	sub    esp,0x8
    114b:	50                   	push   eax
    114c:	51                   	push   ecx
    114d:	ff d2                	call   edx
    114f:	83 c4 10             	add    esp,0x10
    1152:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
    1155:	c9                   	leave  
    1156:	c3                   	ret    
    1157:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    115e:	66 90                	xchg   ax,ax

00001160 <__do_global_dtors_aux>:
    1160:	f3 0f 1e fb          	endbr32 
    1164:	55                   	push   ebp
    1165:	89 e5                	mov    ebp,esp
    1167:	53                   	push   ebx
    1168:	e8 53 ff ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    116d:	81 c3 93 2e 00 00    	add    ebx,0x2e93
    1173:	83 ec 04             	sub    esp,0x4
    1176:	80 bb 24 00 00 00 00 	cmp    BYTE PTR [ebx+0x24],0x0
    117d:	75 28                	jne    11a7 <__do_global_dtors_aux+0x47>
    117f:	8b 83 f0 ff ff ff    	mov    eax,DWORD PTR [ebx-0x10]
    1185:	85 c0                	test   eax,eax
    1187:	74 12                	je     119b <__do_global_dtors_aux+0x3b>
    1189:	83 ec 0c             	sub    esp,0xc
    118c:	ff b3 20 00 00 00    	push   DWORD PTR [ebx+0x20]
    1192:	ff 93 f0 ff ff ff    	call   DWORD PTR [ebx-0x10]
    1198:	83 c4 10             	add    esp,0x10
    119b:	e8 30 ff ff ff       	call   10d0 <deregister_tm_clones>
    11a0:	c6 83 24 00 00 00 01 	mov    BYTE PTR [ebx+0x24],0x1
    11a7:	8b 5d fc             	mov    ebx,DWORD PTR [ebp-0x4]
    11aa:	c9                   	leave  
    11ab:	c3                   	ret    
    11ac:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

000011b0 <frame_dummy>:
    11b0:	f3 0f 1e fb          	endbr32 
    11b4:	e9 57 ff ff ff       	jmp    1110 <register_tm_clones>

000011b9 <__x86.get_pc_thunk.dx>:
    11b9:	8b 14 24             	mov    edx,DWORD PTR [esp]
    11bc:	c3                   	ret    

000011bd <main>:
    11bd:	8d 4c 24 04          	lea    ecx,[esp+0x4]
    11c1:	83 e4 f0             	and    esp,0xfffffff0
    11c4:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
    11c7:	55                   	push   ebp
    11c8:	89 e5                	mov    ebp,esp
    11ca:	53                   	push   ebx
    11cb:	51                   	push   ecx
    11cc:	81 ec 20 09 3d 00    	sub    esp,0x3d0920
    11d2:	e8 e9 fe ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    11d7:	81 c3 29 2e 00 00    	add    ebx,0x2e29
    11dd:	65 a1 14 00 00 00    	mov    eax,gs:0x14
    11e3:	89 45 f4             	mov    DWORD PTR [ebp-0xc],eax
    11e6:	31 c0                	xor    eax,eax
    11e8:	c7 85 d8 f6 c2 ff 00 	mov    DWORD PTR [ebp-0x3d0928],0x0
    11ef:	00 00 00 
    11f2:	83 ec 08             	sub    esp,0x8
    11f5:	6a 00                	push   0x0
    11f7:	8d 85 e4 f6 c2 ff    	lea    eax,[ebp-0x3d091c]
    11fd:	50                   	push   eax
    11fe:	e8 4d fe ff ff       	call   1050 <gettimeofday@plt>
    1203:	83 c4 10             	add    esp,0x10
    1206:	c7 85 dc f6 c2 ff 00 	mov    DWORD PTR [ebp-0x3d0924],0x0
    120d:	00 00 00 
    1210:	eb 1a                	jmp    122c <main+0x6f>
    1212:	8b 85 dc f6 c2 ff    	mov    eax,DWORD PTR [ebp-0x3d0924]
    1218:	8b 84 85 f4 f6 c2 ff 	mov    eax,DWORD PTR [ebp+eax*4-0x3d090c]
    121f:	01 85 d8 f6 c2 ff    	add    DWORD PTR [ebp-0x3d0928],eax
    1225:	83 85 dc f6 c2 ff 01 	add    DWORD PTR [ebp-0x3d0924],0x1
    122c:	81 bd dc f6 c2 ff 3f 	cmp    DWORD PTR [ebp-0x3d0924],0xf423f
    1233:	42 0f 00 
    1236:	7e da                	jle    1212 <main+0x55>
    1238:	83 ec 08             	sub    esp,0x8
    123b:	6a 00                	push   0x0
    123d:	8d 85 ec f6 c2 ff    	lea    eax,[ebp-0x3d0914]
    1243:	50                   	push   eax
    1244:	e8 07 fe ff ff       	call   1050 <gettimeofday@plt>
    1249:	83 c4 10             	add    esp,0x10
    124c:	8b 95 ec f6 c2 ff    	mov    edx,DWORD PTR [ebp-0x3d0914]
    1252:	8b 85 e4 f6 c2 ff    	mov    eax,DWORD PTR [ebp-0x3d091c]
    1258:	29 c2                	sub    edx,eax
    125a:	89 d0                	mov    eax,edx
    125c:	69 d0 40 42 0f 00    	imul   edx,eax,0xf4240
    1262:	8b 85 f0 f6 c2 ff    	mov    eax,DWORD PTR [ebp-0x3d0910]
    1268:	01 c2                	add    edx,eax
    126a:	8b 85 e8 f6 c2 ff    	mov    eax,DWORD PTR [ebp-0x3d0918]
    1270:	29 c2                	sub    edx,eax
    1272:	89 d0                	mov    eax,edx
    1274:	89 85 e0 f6 c2 ff    	mov    DWORD PTR [ebp-0x3d0920],eax
    127a:	83 ec 08             	sub    esp,0x8
    127d:	ff b5 e0 f6 c2 ff    	push   DWORD PTR [ebp-0x3d0920]
    1283:	8d 83 08 e0 ff ff    	lea    eax,[ebx-0x1ff8]
    1289:	50                   	push   eax
    128a:	e8 b1 fd ff ff       	call   1040 <printf@plt>
    128f:	83 c4 10             	add    esp,0x10
    1292:	83 ec 08             	sub    esp,0x8
    1295:	ff b5 d8 f6 c2 ff    	push   DWORD PTR [ebp-0x3d0928]
    129b:	8d 83 16 e0 ff ff    	lea    eax,[ebx-0x1fea]
    12a1:	50                   	push   eax
    12a2:	e8 99 fd ff ff       	call   1040 <printf@plt>
    12a7:	83 c4 10             	add    esp,0x10
    12aa:	90                   	nop
    12ab:	8b 45 f4             	mov    eax,DWORD PTR [ebp-0xc]
    12ae:	65 33 05 14 00 00 00 	xor    eax,DWORD PTR gs:0x14
    12b5:	74 05                	je     12bc <main+0xff>
    12b7:	e8 94 00 00 00       	call   1350 <__stack_chk_fail_local>
    12bc:	8d 65 f8             	lea    esp,[ebp-0x8]
    12bf:	59                   	pop    ecx
    12c0:	5b                   	pop    ebx
    12c1:	5d                   	pop    ebp
    12c2:	8d 61 fc             	lea    esp,[ecx-0x4]
    12c5:	c3                   	ret    
    12c6:	66 90                	xchg   ax,ax
    12c8:	66 90                	xchg   ax,ax
    12ca:	66 90                	xchg   ax,ax
    12cc:	66 90                	xchg   ax,ax
    12ce:	66 90                	xchg   ax,ax

000012d0 <__libc_csu_init>:
    12d0:	f3 0f 1e fb          	endbr32 
    12d4:	55                   	push   ebp
    12d5:	e8 6b 00 00 00       	call   1345 <__x86.get_pc_thunk.bp>
    12da:	81 c5 26 2d 00 00    	add    ebp,0x2d26
    12e0:	57                   	push   edi
    12e1:	56                   	push   esi
    12e2:	53                   	push   ebx
    12e3:	83 ec 0c             	sub    esp,0xc
    12e6:	89 eb                	mov    ebx,ebp
    12e8:	8b 7c 24 28          	mov    edi,DWORD PTR [esp+0x28]
    12ec:	e8 0f fd ff ff       	call   1000 <_init>
    12f1:	8d 9d f8 fe ff ff    	lea    ebx,[ebp-0x108]
    12f7:	8d 85 f4 fe ff ff    	lea    eax,[ebp-0x10c]
    12fd:	29 c3                	sub    ebx,eax
    12ff:	c1 fb 02             	sar    ebx,0x2
    1302:	74 29                	je     132d <__libc_csu_init+0x5d>
    1304:	31 f6                	xor    esi,esi
    1306:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    130d:	8d 76 00             	lea    esi,[esi+0x0]
    1310:	83 ec 04             	sub    esp,0x4
    1313:	57                   	push   edi
    1314:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
    1318:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
    131c:	ff 94 b5 f4 fe ff ff 	call   DWORD PTR [ebp+esi*4-0x10c]
    1323:	83 c6 01             	add    esi,0x1
    1326:	83 c4 10             	add    esp,0x10
    1329:	39 f3                	cmp    ebx,esi
    132b:	75 e3                	jne    1310 <__libc_csu_init+0x40>
    132d:	83 c4 0c             	add    esp,0xc
    1330:	5b                   	pop    ebx
    1331:	5e                   	pop    esi
    1332:	5f                   	pop    edi
    1333:	5d                   	pop    ebp
    1334:	c3                   	ret    
    1335:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
    133c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00001340 <__libc_csu_fini>:
    1340:	f3 0f 1e fb          	endbr32 
    1344:	c3                   	ret    

00001345 <__x86.get_pc_thunk.bp>:
    1345:	8b 2c 24             	mov    ebp,DWORD PTR [esp]
    1348:	c3                   	ret    
    1349:	66 90                	xchg   ax,ax
    134b:	66 90                	xchg   ax,ax
    134d:	66 90                	xchg   ax,ax
    134f:	90                   	nop

00001350 <__stack_chk_fail_local>:
    1350:	f3 0f 1e fb          	endbr32 
    1354:	53                   	push   ebx
    1355:	e8 66 fd ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    135a:	81 c3 a6 2c 00 00    	add    ebx,0x2ca6
    1360:	83 ec 08             	sub    esp,0x8
    1363:	e8 f8 fc ff ff       	call   1060 <__stack_chk_fail@plt>

Disassembly of section .fini:

00001368 <_fini>:
    1368:	f3 0f 1e fb          	endbr32 
    136c:	53                   	push   ebx
    136d:	83 ec 08             	sub    esp,0x8
    1370:	e8 4b fd ff ff       	call   10c0 <__x86.get_pc_thunk.bx>
    1375:	81 c3 8b 2c 00 00    	add    ebx,0x2c8b
    137b:	83 c4 08             	add    esp,0x8
    137e:	5b                   	pop    ebx
    137f:	c3                   	ret    
