
_usertests:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
    1000:	f3 0f 1e fb          	endbr32 
    1004:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1008:	83 e4 f0             	and    $0xfffffff0,%esp
    100b:	ff 71 fc             	pushl  -0x4(%ecx)
    100e:	55                   	push   %ebp
    100f:	89 e5                	mov    %esp,%ebp
    1011:	51                   	push   %ecx
    1012:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "usertests starting\n");
    1015:	68 19 5f 00 00       	push   $0x5f19
    101a:	6a 01                	push   $0x1
    101c:	e8 3f 3d 00 00       	call   4d60 <printf>

  if(open("usertests.ran", 0) >= 0){
    1021:	59                   	pop    %ecx
    1022:	58                   	pop    %eax
    1023:	6a 00                	push   $0x0
    1025:	68 2d 5f 00 00       	push   $0x5f2d
    102a:	e8 de 3b 00 00       	call   4c0d <open>
    102f:	83 c4 10             	add    $0x10,%esp
    1032:	85 c0                	test   %eax,%eax
    1034:	78 13                	js     1049 <main+0x49>
    printf(1, "already ran user tests -- rebuild fs.img\n");
    1036:	52                   	push   %edx
    1037:	52                   	push   %edx
    1038:	68 94 66 00 00       	push   $0x6694
    103d:	6a 01                	push   $0x1
    103f:	e8 1c 3d 00 00       	call   4d60 <printf>
    exit();
    1044:	e8 84 3b 00 00       	call   4bcd <exit>
  }
  close(open("usertests.ran", O_CREATE));
    1049:	50                   	push   %eax
    104a:	50                   	push   %eax
    104b:	68 00 02 00 00       	push   $0x200
    1050:	68 2d 5f 00 00       	push   $0x5f2d
    1055:	e8 b3 3b 00 00       	call   4c0d <open>
    105a:	89 04 24             	mov    %eax,(%esp)
    105d:	e8 93 3b 00 00       	call   4bf5 <close>

  argptest();
    1062:	e8 29 36 00 00       	call   4690 <argptest>
  createdelete();
    1067:	e8 04 12 00 00       	call   2270 <createdelete>
  linkunlink();
    106c:	e8 df 1a 00 00       	call   2b50 <linkunlink>
  concreate();
    1071:	e8 da 17 00 00       	call   2850 <concreate>
  fourfiles();
    1076:	e8 f5 0f 00 00       	call   2070 <fourfiles>
  sharedfd();
    107b:	e8 30 0e 00 00       	call   1eb0 <sharedfd>

  bigargtest();
    1080:	e8 ab 32 00 00       	call   4330 <bigargtest>
  bigwrite();
    1085:	e8 06 24 00 00       	call   3490 <bigwrite>
  bigargtest();
    108a:	e8 a1 32 00 00       	call   4330 <bigargtest>
  bsstest();
    108f:	e8 2c 32 00 00       	call   42c0 <bsstest>
  sbrktest();
    1094:	e8 37 2d 00 00       	call   3dd0 <sbrktest>
  validatetest();
    1099:	e8 62 31 00 00       	call   4200 <validatetest>

  opentest();
    109e:	e8 6d 03 00 00       	call   1410 <opentest>
  writetest();
    10a3:	e8 08 04 00 00       	call   14b0 <writetest>
  writetest1();
    10a8:	e8 e3 05 00 00       	call   1690 <writetest1>
  createtest();
    10ad:	e8 ae 07 00 00       	call   1860 <createtest>

  openiputtest();
    10b2:	e8 59 02 00 00       	call   1310 <openiputtest>
  exitiputtest();
    10b7:	e8 54 01 00 00       	call   1210 <exitiputtest>
  iputtest();
    10bc:	e8 5f 00 00 00       	call   1120 <iputtest>

  mem();
    10c1:	e8 1a 0d 00 00       	call   1de0 <mem>
  pipe1();
    10c6:	e8 95 09 00 00       	call   1a60 <pipe1>
  preempt();
    10cb:	e8 30 0b 00 00       	call   1c00 <preempt>
  exitwait();
    10d0:	e8 8b 0c 00 00       	call   1d60 <exitwait>

  rmdot();
    10d5:	e8 a6 27 00 00       	call   3880 <rmdot>
  fourteen();
    10da:	e8 61 26 00 00       	call   3740 <fourteen>
  bigfile();
    10df:	e8 8c 24 00 00       	call   3570 <bigfile>
  subdir();
    10e4:	e8 b7 1c 00 00       	call   2da0 <subdir>
  linktest();
    10e9:	e8 42 15 00 00       	call   2630 <linktest>
  unlinkread();
    10ee:	e8 ad 13 00 00       	call   24a0 <unlinkread>
  dirfile();
    10f3:	e8 08 29 00 00       	call   3a00 <dirfile>
  iref();
    10f8:	e8 03 2b 00 00       	call   3c00 <iref>
  forktest();
    10fd:	e8 1e 2c 00 00       	call   3d20 <forktest>
  bigdir(); // slow
    1102:	e8 59 1b 00 00       	call   2c60 <bigdir>

  uio();
    1107:	e8 04 35 00 00       	call   4610 <uio>

  exectest();
    110c:	e8 ff 08 00 00       	call   1a10 <exectest>

  exit();
    1111:	e8 b7 3a 00 00       	call   4bcd <exit>
    1116:	66 90                	xchg   %ax,%ax
    1118:	66 90                	xchg   %ax,%ax
    111a:	66 90                	xchg   %ax,%ax
    111c:	66 90                	xchg   %ax,%ax
    111e:	66 90                	xchg   %ax,%ax

00001120 <iputtest>:
{
    1120:	f3 0f 1e fb          	endbr32 
    1124:	55                   	push   %ebp
    1125:	89 e5                	mov    %esp,%ebp
    1127:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "iput test\n");
    112a:	68 bc 4f 00 00       	push   $0x4fbc
    112f:	ff 35 60 70 00 00    	pushl  0x7060
    1135:	e8 26 3c 00 00       	call   4d60 <printf>
  if(mkdir("iputdir") < 0){
    113a:	c7 04 24 4f 4f 00 00 	movl   $0x4f4f,(%esp)
    1141:	e8 ef 3a 00 00       	call   4c35 <mkdir>
    1146:	83 c4 10             	add    $0x10,%esp
    1149:	85 c0                	test   %eax,%eax
    114b:	78 58                	js     11a5 <iputtest+0x85>
  if(chdir("iputdir") < 0){
    114d:	83 ec 0c             	sub    $0xc,%esp
    1150:	68 4f 4f 00 00       	push   $0x4f4f
    1155:	e8 e3 3a 00 00       	call   4c3d <chdir>
    115a:	83 c4 10             	add    $0x10,%esp
    115d:	85 c0                	test   %eax,%eax
    115f:	0f 88 85 00 00 00    	js     11ea <iputtest+0xca>
  if(unlink("../iputdir") < 0){
    1165:	83 ec 0c             	sub    $0xc,%esp
    1168:	68 4c 4f 00 00       	push   $0x4f4c
    116d:	e8 ab 3a 00 00       	call   4c1d <unlink>
    1172:	83 c4 10             	add    $0x10,%esp
    1175:	85 c0                	test   %eax,%eax
    1177:	78 5a                	js     11d3 <iputtest+0xb3>
  if(chdir("/") < 0){
    1179:	83 ec 0c             	sub    $0xc,%esp
    117c:	68 71 4f 00 00       	push   $0x4f71
    1181:	e8 b7 3a 00 00       	call   4c3d <chdir>
    1186:	83 c4 10             	add    $0x10,%esp
    1189:	85 c0                	test   %eax,%eax
    118b:	78 2f                	js     11bc <iputtest+0x9c>
  printf(stdout, "iput test ok\n");
    118d:	83 ec 08             	sub    $0x8,%esp
    1190:	68 f4 4f 00 00       	push   $0x4ff4
    1195:	ff 35 60 70 00 00    	pushl  0x7060
    119b:	e8 c0 3b 00 00       	call   4d60 <printf>
}
    11a0:	83 c4 10             	add    $0x10,%esp
    11a3:	c9                   	leave  
    11a4:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
    11a5:	50                   	push   %eax
    11a6:	50                   	push   %eax
    11a7:	68 28 4f 00 00       	push   $0x4f28
    11ac:	ff 35 60 70 00 00    	pushl  0x7060
    11b2:	e8 a9 3b 00 00       	call   4d60 <printf>
    exit();
    11b7:	e8 11 3a 00 00       	call   4bcd <exit>
    printf(stdout, "chdir / failed\n");
    11bc:	50                   	push   %eax
    11bd:	50                   	push   %eax
    11be:	68 73 4f 00 00       	push   $0x4f73
    11c3:	ff 35 60 70 00 00    	pushl  0x7060
    11c9:	e8 92 3b 00 00       	call   4d60 <printf>
    exit();
    11ce:	e8 fa 39 00 00       	call   4bcd <exit>
    printf(stdout, "unlink ../iputdir failed\n");
    11d3:	52                   	push   %edx
    11d4:	52                   	push   %edx
    11d5:	68 57 4f 00 00       	push   $0x4f57
    11da:	ff 35 60 70 00 00    	pushl  0x7060
    11e0:	e8 7b 3b 00 00       	call   4d60 <printf>
    exit();
    11e5:	e8 e3 39 00 00       	call   4bcd <exit>
    printf(stdout, "chdir iputdir failed\n");
    11ea:	51                   	push   %ecx
    11eb:	51                   	push   %ecx
    11ec:	68 36 4f 00 00       	push   $0x4f36
    11f1:	ff 35 60 70 00 00    	pushl  0x7060
    11f7:	e8 64 3b 00 00       	call   4d60 <printf>
    exit();
    11fc:	e8 cc 39 00 00       	call   4bcd <exit>
    1201:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1208:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    120f:	90                   	nop

00001210 <exitiputtest>:
{
    1210:	f3 0f 1e fb          	endbr32 
    1214:	55                   	push   %ebp
    1215:	89 e5                	mov    %esp,%ebp
    1217:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exitiput test\n");
    121a:	68 83 4f 00 00       	push   $0x4f83
    121f:	ff 35 60 70 00 00    	pushl  0x7060
    1225:	e8 36 3b 00 00       	call   4d60 <printf>
  pid = fork();
    122a:	e8 96 39 00 00       	call   4bc5 <fork>
  if(pid < 0){
    122f:	83 c4 10             	add    $0x10,%esp
    1232:	85 c0                	test   %eax,%eax
    1234:	0f 88 86 00 00 00    	js     12c0 <exitiputtest+0xb0>
  if(pid == 0){
    123a:	75 4c                	jne    1288 <exitiputtest+0x78>
    if(mkdir("iputdir") < 0){
    123c:	83 ec 0c             	sub    $0xc,%esp
    123f:	68 4f 4f 00 00       	push   $0x4f4f
    1244:	e8 ec 39 00 00       	call   4c35 <mkdir>
    1249:	83 c4 10             	add    $0x10,%esp
    124c:	85 c0                	test   %eax,%eax
    124e:	0f 88 83 00 00 00    	js     12d7 <exitiputtest+0xc7>
    if(chdir("iputdir") < 0){
    1254:	83 ec 0c             	sub    $0xc,%esp
    1257:	68 4f 4f 00 00       	push   $0x4f4f
    125c:	e8 dc 39 00 00       	call   4c3d <chdir>
    1261:	83 c4 10             	add    $0x10,%esp
    1264:	85 c0                	test   %eax,%eax
    1266:	0f 88 82 00 00 00    	js     12ee <exitiputtest+0xde>
    if(unlink("../iputdir") < 0){
    126c:	83 ec 0c             	sub    $0xc,%esp
    126f:	68 4c 4f 00 00       	push   $0x4f4c
    1274:	e8 a4 39 00 00       	call   4c1d <unlink>
    1279:	83 c4 10             	add    $0x10,%esp
    127c:	85 c0                	test   %eax,%eax
    127e:	78 28                	js     12a8 <exitiputtest+0x98>
    exit();
    1280:	e8 48 39 00 00       	call   4bcd <exit>
    1285:	8d 76 00             	lea    0x0(%esi),%esi
  wait();
    1288:	e8 48 39 00 00       	call   4bd5 <wait>
  printf(stdout, "exitiput test ok\n");
    128d:	83 ec 08             	sub    $0x8,%esp
    1290:	68 a6 4f 00 00       	push   $0x4fa6
    1295:	ff 35 60 70 00 00    	pushl  0x7060
    129b:	e8 c0 3a 00 00       	call   4d60 <printf>
}
    12a0:	83 c4 10             	add    $0x10,%esp
    12a3:	c9                   	leave  
    12a4:	c3                   	ret    
    12a5:	8d 76 00             	lea    0x0(%esi),%esi
      printf(stdout, "unlink ../iputdir failed\n");
    12a8:	83 ec 08             	sub    $0x8,%esp
    12ab:	68 57 4f 00 00       	push   $0x4f57
    12b0:	ff 35 60 70 00 00    	pushl  0x7060
    12b6:	e8 a5 3a 00 00       	call   4d60 <printf>
      exit();
    12bb:	e8 0d 39 00 00       	call   4bcd <exit>
    printf(stdout, "fork failed\n");
    12c0:	51                   	push   %ecx
    12c1:	51                   	push   %ecx
    12c2:	68 6c 5e 00 00       	push   $0x5e6c
    12c7:	ff 35 60 70 00 00    	pushl  0x7060
    12cd:	e8 8e 3a 00 00       	call   4d60 <printf>
    exit();
    12d2:	e8 f6 38 00 00       	call   4bcd <exit>
      printf(stdout, "mkdir failed\n");
    12d7:	52                   	push   %edx
    12d8:	52                   	push   %edx
    12d9:	68 28 4f 00 00       	push   $0x4f28
    12de:	ff 35 60 70 00 00    	pushl  0x7060
    12e4:	e8 77 3a 00 00       	call   4d60 <printf>
      exit();
    12e9:	e8 df 38 00 00       	call   4bcd <exit>
      printf(stdout, "child chdir failed\n");
    12ee:	50                   	push   %eax
    12ef:	50                   	push   %eax
    12f0:	68 92 4f 00 00       	push   $0x4f92
    12f5:	ff 35 60 70 00 00    	pushl  0x7060
    12fb:	e8 60 3a 00 00       	call   4d60 <printf>
      exit();
    1300:	e8 c8 38 00 00       	call   4bcd <exit>
    1305:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    130c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001310 <openiputtest>:
{
    1310:	f3 0f 1e fb          	endbr32 
    1314:	55                   	push   %ebp
    1315:	89 e5                	mov    %esp,%ebp
    1317:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "openiput test\n");
    131a:	68 b8 4f 00 00       	push   $0x4fb8
    131f:	ff 35 60 70 00 00    	pushl  0x7060
    1325:	e8 36 3a 00 00       	call   4d60 <printf>
  if(mkdir("oidir") < 0){
    132a:	c7 04 24 c7 4f 00 00 	movl   $0x4fc7,(%esp)
    1331:	e8 ff 38 00 00       	call   4c35 <mkdir>
    1336:	83 c4 10             	add    $0x10,%esp
    1339:	85 c0                	test   %eax,%eax
    133b:	0f 88 9b 00 00 00    	js     13dc <openiputtest+0xcc>
  pid = fork();
    1341:	e8 7f 38 00 00       	call   4bc5 <fork>
  if(pid < 0){
    1346:	85 c0                	test   %eax,%eax
    1348:	78 7b                	js     13c5 <openiputtest+0xb5>
  if(pid == 0){
    134a:	75 34                	jne    1380 <openiputtest+0x70>
    int fd = open("oidir", O_RDWR);
    134c:	83 ec 08             	sub    $0x8,%esp
    134f:	6a 02                	push   $0x2
    1351:	68 c7 4f 00 00       	push   $0x4fc7
    1356:	e8 b2 38 00 00       	call   4c0d <open>
    if(fd >= 0){
    135b:	83 c4 10             	add    $0x10,%esp
    135e:	85 c0                	test   %eax,%eax
    1360:	78 5e                	js     13c0 <openiputtest+0xb0>
      printf(stdout, "open directory for write succeeded\n");
    1362:	83 ec 08             	sub    $0x8,%esp
    1365:	68 4c 5f 00 00       	push   $0x5f4c
    136a:	ff 35 60 70 00 00    	pushl  0x7060
    1370:	e8 eb 39 00 00       	call   4d60 <printf>
      exit();
    1375:	e8 53 38 00 00       	call   4bcd <exit>
    137a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  sleep(1);
    1380:	83 ec 0c             	sub    $0xc,%esp
    1383:	6a 01                	push   $0x1
    1385:	e8 d3 38 00 00       	call   4c5d <sleep>
  if(unlink("oidir") != 0){
    138a:	c7 04 24 c7 4f 00 00 	movl   $0x4fc7,(%esp)
    1391:	e8 87 38 00 00       	call   4c1d <unlink>
    1396:	83 c4 10             	add    $0x10,%esp
    1399:	85 c0                	test   %eax,%eax
    139b:	75 56                	jne    13f3 <openiputtest+0xe3>
  wait();
    139d:	e8 33 38 00 00       	call   4bd5 <wait>
  printf(stdout, "openiput test ok\n");
    13a2:	83 ec 08             	sub    $0x8,%esp
    13a5:	68 f0 4f 00 00       	push   $0x4ff0
    13aa:	ff 35 60 70 00 00    	pushl  0x7060
    13b0:	e8 ab 39 00 00       	call   4d60 <printf>
    13b5:	83 c4 10             	add    $0x10,%esp
}
    13b8:	c9                   	leave  
    13b9:	c3                   	ret    
    13ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    exit();
    13c0:	e8 08 38 00 00       	call   4bcd <exit>
    printf(stdout, "fork failed\n");
    13c5:	52                   	push   %edx
    13c6:	52                   	push   %edx
    13c7:	68 6c 5e 00 00       	push   $0x5e6c
    13cc:	ff 35 60 70 00 00    	pushl  0x7060
    13d2:	e8 89 39 00 00       	call   4d60 <printf>
    exit();
    13d7:	e8 f1 37 00 00       	call   4bcd <exit>
    printf(stdout, "mkdir oidir failed\n");
    13dc:	51                   	push   %ecx
    13dd:	51                   	push   %ecx
    13de:	68 cd 4f 00 00       	push   $0x4fcd
    13e3:	ff 35 60 70 00 00    	pushl  0x7060
    13e9:	e8 72 39 00 00       	call   4d60 <printf>
    exit();
    13ee:	e8 da 37 00 00       	call   4bcd <exit>
    printf(stdout, "unlink failed\n");
    13f3:	50                   	push   %eax
    13f4:	50                   	push   %eax
    13f5:	68 e1 4f 00 00       	push   $0x4fe1
    13fa:	ff 35 60 70 00 00    	pushl  0x7060
    1400:	e8 5b 39 00 00       	call   4d60 <printf>
    exit();
    1405:	e8 c3 37 00 00       	call   4bcd <exit>
    140a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001410 <opentest>:
{
    1410:	f3 0f 1e fb          	endbr32 
    1414:	55                   	push   %ebp
    1415:	89 e5                	mov    %esp,%ebp
    1417:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "open test\n");
    141a:	68 02 50 00 00       	push   $0x5002
    141f:	ff 35 60 70 00 00    	pushl  0x7060
    1425:	e8 36 39 00 00       	call   4d60 <printf>
  fd = open("echo", 0);
    142a:	58                   	pop    %eax
    142b:	5a                   	pop    %edx
    142c:	6a 00                	push   $0x0
    142e:	68 0d 50 00 00       	push   $0x500d
    1433:	e8 d5 37 00 00       	call   4c0d <open>
  if(fd < 0){
    1438:	83 c4 10             	add    $0x10,%esp
    143b:	85 c0                	test   %eax,%eax
    143d:	78 36                	js     1475 <opentest+0x65>
  close(fd);
    143f:	83 ec 0c             	sub    $0xc,%esp
    1442:	50                   	push   %eax
    1443:	e8 ad 37 00 00       	call   4bf5 <close>
  fd = open("doesnotexist", 0);
    1448:	5a                   	pop    %edx
    1449:	59                   	pop    %ecx
    144a:	6a 00                	push   $0x0
    144c:	68 25 50 00 00       	push   $0x5025
    1451:	e8 b7 37 00 00       	call   4c0d <open>
  if(fd >= 0){
    1456:	83 c4 10             	add    $0x10,%esp
    1459:	85 c0                	test   %eax,%eax
    145b:	79 2f                	jns    148c <opentest+0x7c>
  printf(stdout, "open test ok\n");
    145d:	83 ec 08             	sub    $0x8,%esp
    1460:	68 50 50 00 00       	push   $0x5050
    1465:	ff 35 60 70 00 00    	pushl  0x7060
    146b:	e8 f0 38 00 00       	call   4d60 <printf>
}
    1470:	83 c4 10             	add    $0x10,%esp
    1473:	c9                   	leave  
    1474:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
    1475:	50                   	push   %eax
    1476:	50                   	push   %eax
    1477:	68 12 50 00 00       	push   $0x5012
    147c:	ff 35 60 70 00 00    	pushl  0x7060
    1482:	e8 d9 38 00 00       	call   4d60 <printf>
    exit();
    1487:	e8 41 37 00 00       	call   4bcd <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
    148c:	50                   	push   %eax
    148d:	50                   	push   %eax
    148e:	68 32 50 00 00       	push   $0x5032
    1493:	ff 35 60 70 00 00    	pushl  0x7060
    1499:	e8 c2 38 00 00       	call   4d60 <printf>
    exit();
    149e:	e8 2a 37 00 00       	call   4bcd <exit>
    14a3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000014b0 <writetest>:
{
    14b0:	f3 0f 1e fb          	endbr32 
    14b4:	55                   	push   %ebp
    14b5:	89 e5                	mov    %esp,%ebp
    14b7:	56                   	push   %esi
    14b8:	53                   	push   %ebx
  printf(stdout, "small file test\n");
    14b9:	83 ec 08             	sub    $0x8,%esp
    14bc:	68 5e 50 00 00       	push   $0x505e
    14c1:	ff 35 60 70 00 00    	pushl  0x7060
    14c7:	e8 94 38 00 00       	call   4d60 <printf>
  fd = open("small", O_CREATE|O_RDWR);
    14cc:	58                   	pop    %eax
    14cd:	5a                   	pop    %edx
    14ce:	68 02 02 00 00       	push   $0x202
    14d3:	68 6f 50 00 00       	push   $0x506f
    14d8:	e8 30 37 00 00       	call   4c0d <open>
  if(fd >= 0){
    14dd:	83 c4 10             	add    $0x10,%esp
    14e0:	85 c0                	test   %eax,%eax
    14e2:	0f 88 8c 01 00 00    	js     1674 <writetest+0x1c4>
    printf(stdout, "creat small succeeded; ok\n");
    14e8:	83 ec 08             	sub    $0x8,%esp
    14eb:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 100; i++){
    14ed:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
    14ef:	68 75 50 00 00       	push   $0x5075
    14f4:	ff 35 60 70 00 00    	pushl  0x7060
    14fa:	e8 61 38 00 00       	call   4d60 <printf>
    14ff:	83 c4 10             	add    $0x10,%esp
    1502:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(write(fd, "aaaaaaaaaa", 10) != 10){
    1508:	83 ec 04             	sub    $0x4,%esp
    150b:	6a 0a                	push   $0xa
    150d:	68 ac 50 00 00       	push   $0x50ac
    1512:	56                   	push   %esi
    1513:	e8 d5 36 00 00       	call   4bed <write>
    1518:	83 c4 10             	add    $0x10,%esp
    151b:	83 f8 0a             	cmp    $0xa,%eax
    151e:	0f 85 d9 00 00 00    	jne    15fd <writetest+0x14d>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
    1524:	83 ec 04             	sub    $0x4,%esp
    1527:	6a 0a                	push   $0xa
    1529:	68 b7 50 00 00       	push   $0x50b7
    152e:	56                   	push   %esi
    152f:	e8 b9 36 00 00       	call   4bed <write>
    1534:	83 c4 10             	add    $0x10,%esp
    1537:	83 f8 0a             	cmp    $0xa,%eax
    153a:	0f 85 d6 00 00 00    	jne    1616 <writetest+0x166>
  for(i = 0; i < 100; i++){
    1540:	83 c3 01             	add    $0x1,%ebx
    1543:	83 fb 64             	cmp    $0x64,%ebx
    1546:	75 c0                	jne    1508 <writetest+0x58>
  printf(stdout, "writes ok\n");
    1548:	83 ec 08             	sub    $0x8,%esp
    154b:	68 c2 50 00 00       	push   $0x50c2
    1550:	ff 35 60 70 00 00    	pushl  0x7060
    1556:	e8 05 38 00 00       	call   4d60 <printf>
  close(fd);
    155b:	89 34 24             	mov    %esi,(%esp)
    155e:	e8 92 36 00 00       	call   4bf5 <close>
  fd = open("small", O_RDONLY);
    1563:	5b                   	pop    %ebx
    1564:	5e                   	pop    %esi
    1565:	6a 00                	push   $0x0
    1567:	68 6f 50 00 00       	push   $0x506f
    156c:	e8 9c 36 00 00       	call   4c0d <open>
  if(fd >= 0){
    1571:	83 c4 10             	add    $0x10,%esp
  fd = open("small", O_RDONLY);
    1574:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
    1576:	85 c0                	test   %eax,%eax
    1578:	0f 88 b1 00 00 00    	js     162f <writetest+0x17f>
    printf(stdout, "open small succeeded ok\n");
    157e:	83 ec 08             	sub    $0x8,%esp
    1581:	68 cd 50 00 00       	push   $0x50cd
    1586:	ff 35 60 70 00 00    	pushl  0x7060
    158c:	e8 cf 37 00 00       	call   4d60 <printf>
  i = read(fd, buf, 2000);
    1591:	83 c4 0c             	add    $0xc,%esp
    1594:	68 d0 07 00 00       	push   $0x7d0
    1599:	68 40 98 00 00       	push   $0x9840
    159e:	53                   	push   %ebx
    159f:	e8 41 36 00 00       	call   4be5 <read>
  if(i == 2000){
    15a4:	83 c4 10             	add    $0x10,%esp
    15a7:	3d d0 07 00 00       	cmp    $0x7d0,%eax
    15ac:	0f 85 94 00 00 00    	jne    1646 <writetest+0x196>
    printf(stdout, "read succeeded ok\n");
    15b2:	83 ec 08             	sub    $0x8,%esp
    15b5:	68 01 51 00 00       	push   $0x5101
    15ba:	ff 35 60 70 00 00    	pushl  0x7060
    15c0:	e8 9b 37 00 00       	call   4d60 <printf>
  close(fd);
    15c5:	89 1c 24             	mov    %ebx,(%esp)
    15c8:	e8 28 36 00 00       	call   4bf5 <close>
  if(unlink("small") < 0){
    15cd:	c7 04 24 6f 50 00 00 	movl   $0x506f,(%esp)
    15d4:	e8 44 36 00 00       	call   4c1d <unlink>
    15d9:	83 c4 10             	add    $0x10,%esp
    15dc:	85 c0                	test   %eax,%eax
    15de:	78 7d                	js     165d <writetest+0x1ad>
  printf(stdout, "small file test ok\n");
    15e0:	83 ec 08             	sub    $0x8,%esp
    15e3:	68 29 51 00 00       	push   $0x5129
    15e8:	ff 35 60 70 00 00    	pushl  0x7060
    15ee:	e8 6d 37 00 00       	call   4d60 <printf>
}
    15f3:	83 c4 10             	add    $0x10,%esp
    15f6:	8d 65 f8             	lea    -0x8(%ebp),%esp
    15f9:	5b                   	pop    %ebx
    15fa:	5e                   	pop    %esi
    15fb:	5d                   	pop    %ebp
    15fc:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
    15fd:	83 ec 04             	sub    $0x4,%esp
    1600:	53                   	push   %ebx
    1601:	68 70 5f 00 00       	push   $0x5f70
    1606:	ff 35 60 70 00 00    	pushl  0x7060
    160c:	e8 4f 37 00 00       	call   4d60 <printf>
      exit();
    1611:	e8 b7 35 00 00       	call   4bcd <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
    1616:	83 ec 04             	sub    $0x4,%esp
    1619:	53                   	push   %ebx
    161a:	68 94 5f 00 00       	push   $0x5f94
    161f:	ff 35 60 70 00 00    	pushl  0x7060
    1625:	e8 36 37 00 00       	call   4d60 <printf>
      exit();
    162a:	e8 9e 35 00 00       	call   4bcd <exit>
    printf(stdout, "error: open small failed!\n");
    162f:	51                   	push   %ecx
    1630:	51                   	push   %ecx
    1631:	68 e6 50 00 00       	push   $0x50e6
    1636:	ff 35 60 70 00 00    	pushl  0x7060
    163c:	e8 1f 37 00 00       	call   4d60 <printf>
    exit();
    1641:	e8 87 35 00 00       	call   4bcd <exit>
    printf(stdout, "read failed\n");
    1646:	52                   	push   %edx
    1647:	52                   	push   %edx
    1648:	68 2d 54 00 00       	push   $0x542d
    164d:	ff 35 60 70 00 00    	pushl  0x7060
    1653:	e8 08 37 00 00       	call   4d60 <printf>
    exit();
    1658:	e8 70 35 00 00       	call   4bcd <exit>
    printf(stdout, "unlink small failed\n");
    165d:	50                   	push   %eax
    165e:	50                   	push   %eax
    165f:	68 14 51 00 00       	push   $0x5114
    1664:	ff 35 60 70 00 00    	pushl  0x7060
    166a:	e8 f1 36 00 00       	call   4d60 <printf>
    exit();
    166f:	e8 59 35 00 00       	call   4bcd <exit>
    printf(stdout, "error: creat small failed!\n");
    1674:	50                   	push   %eax
    1675:	50                   	push   %eax
    1676:	68 90 50 00 00       	push   $0x5090
    167b:	ff 35 60 70 00 00    	pushl  0x7060
    1681:	e8 da 36 00 00       	call   4d60 <printf>
    exit();
    1686:	e8 42 35 00 00       	call   4bcd <exit>
    168b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    168f:	90                   	nop

00001690 <writetest1>:
{
    1690:	f3 0f 1e fb          	endbr32 
    1694:	55                   	push   %ebp
    1695:	89 e5                	mov    %esp,%ebp
    1697:	56                   	push   %esi
    1698:	53                   	push   %ebx
  printf(stdout, "big files test\n");
    1699:	83 ec 08             	sub    $0x8,%esp
    169c:	68 3d 51 00 00       	push   $0x513d
    16a1:	ff 35 60 70 00 00    	pushl  0x7060
    16a7:	e8 b4 36 00 00       	call   4d60 <printf>
  fd = open("big", O_CREATE|O_RDWR);
    16ac:	58                   	pop    %eax
    16ad:	5a                   	pop    %edx
    16ae:	68 02 02 00 00       	push   $0x202
    16b3:	68 b7 51 00 00       	push   $0x51b7
    16b8:	e8 50 35 00 00       	call   4c0d <open>
  if(fd < 0){
    16bd:	83 c4 10             	add    $0x10,%esp
    16c0:	85 c0                	test   %eax,%eax
    16c2:	0f 88 5d 01 00 00    	js     1825 <writetest1+0x195>
    16c8:	89 c6                	mov    %eax,%esi
  for(i = 0; i < MAXFILE; i++){
    16ca:	31 db                	xor    %ebx,%ebx
    16cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(write(fd, buf, 512) != 512){
    16d0:	83 ec 04             	sub    $0x4,%esp
    ((int*)buf)[0] = i;
    16d3:	89 1d 40 98 00 00    	mov    %ebx,0x9840
    if(write(fd, buf, 512) != 512){
    16d9:	68 00 02 00 00       	push   $0x200
    16de:	68 40 98 00 00       	push   $0x9840
    16e3:	56                   	push   %esi
    16e4:	e8 04 35 00 00       	call   4bed <write>
    16e9:	83 c4 10             	add    $0x10,%esp
    16ec:	3d 00 02 00 00       	cmp    $0x200,%eax
    16f1:	0f 85 b3 00 00 00    	jne    17aa <writetest1+0x11a>
  for(i = 0; i < MAXFILE; i++){
    16f7:	83 c3 01             	add    $0x1,%ebx
    16fa:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
    1700:	75 ce                	jne    16d0 <writetest1+0x40>
  close(fd);
    1702:	83 ec 0c             	sub    $0xc,%esp
    1705:	56                   	push   %esi
    1706:	e8 ea 34 00 00       	call   4bf5 <close>
  fd = open("big", O_RDONLY);
    170b:	5b                   	pop    %ebx
    170c:	5e                   	pop    %esi
    170d:	6a 00                	push   $0x0
    170f:	68 b7 51 00 00       	push   $0x51b7
    1714:	e8 f4 34 00 00       	call   4c0d <open>
  if(fd < 0){
    1719:	83 c4 10             	add    $0x10,%esp
  fd = open("big", O_RDONLY);
    171c:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    171e:	85 c0                	test   %eax,%eax
    1720:	0f 88 e8 00 00 00    	js     180e <writetest1+0x17e>
  n = 0;
    1726:	31 f6                	xor    %esi,%esi
    1728:	eb 1d                	jmp    1747 <writetest1+0xb7>
    172a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    } else if(i != 512){
    1730:	3d 00 02 00 00       	cmp    $0x200,%eax
    1735:	0f 85 9f 00 00 00    	jne    17da <writetest1+0x14a>
    if(((int*)buf)[0] != n){
    173b:	a1 40 98 00 00       	mov    0x9840,%eax
    1740:	39 f0                	cmp    %esi,%eax
    1742:	75 7f                	jne    17c3 <writetest1+0x133>
    n++;
    1744:	83 c6 01             	add    $0x1,%esi
    i = read(fd, buf, 512);
    1747:	83 ec 04             	sub    $0x4,%esp
    174a:	68 00 02 00 00       	push   $0x200
    174f:	68 40 98 00 00       	push   $0x9840
    1754:	53                   	push   %ebx
    1755:	e8 8b 34 00 00       	call   4be5 <read>
    if(i == 0){
    175a:	83 c4 10             	add    $0x10,%esp
    175d:	85 c0                	test   %eax,%eax
    175f:	75 cf                	jne    1730 <writetest1+0xa0>
      if(n == MAXFILE - 1){
    1761:	81 fe 8b 00 00 00    	cmp    $0x8b,%esi
    1767:	0f 84 86 00 00 00    	je     17f3 <writetest1+0x163>
  close(fd);
    176d:	83 ec 0c             	sub    $0xc,%esp
    1770:	53                   	push   %ebx
    1771:	e8 7f 34 00 00       	call   4bf5 <close>
  if(unlink("big") < 0){
    1776:	c7 04 24 b7 51 00 00 	movl   $0x51b7,(%esp)
    177d:	e8 9b 34 00 00       	call   4c1d <unlink>
    1782:	83 c4 10             	add    $0x10,%esp
    1785:	85 c0                	test   %eax,%eax
    1787:	0f 88 af 00 00 00    	js     183c <writetest1+0x1ac>
  printf(stdout, "big files ok\n");
    178d:	83 ec 08             	sub    $0x8,%esp
    1790:	68 de 51 00 00       	push   $0x51de
    1795:	ff 35 60 70 00 00    	pushl  0x7060
    179b:	e8 c0 35 00 00       	call   4d60 <printf>
}
    17a0:	83 c4 10             	add    $0x10,%esp
    17a3:	8d 65 f8             	lea    -0x8(%ebp),%esp
    17a6:	5b                   	pop    %ebx
    17a7:	5e                   	pop    %esi
    17a8:	5d                   	pop    %ebp
    17a9:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
    17aa:	83 ec 04             	sub    $0x4,%esp
    17ad:	53                   	push   %ebx
    17ae:	68 67 51 00 00       	push   $0x5167
    17b3:	ff 35 60 70 00 00    	pushl  0x7060
    17b9:	e8 a2 35 00 00       	call   4d60 <printf>
      exit();
    17be:	e8 0a 34 00 00       	call   4bcd <exit>
      printf(stdout, "read content of block %d is %d\n",
    17c3:	50                   	push   %eax
    17c4:	56                   	push   %esi
    17c5:	68 b8 5f 00 00       	push   $0x5fb8
    17ca:	ff 35 60 70 00 00    	pushl  0x7060
    17d0:	e8 8b 35 00 00       	call   4d60 <printf>
      exit();
    17d5:	e8 f3 33 00 00       	call   4bcd <exit>
      printf(stdout, "read failed %d\n", i);
    17da:	83 ec 04             	sub    $0x4,%esp
    17dd:	50                   	push   %eax
    17de:	68 bb 51 00 00       	push   $0x51bb
    17e3:	ff 35 60 70 00 00    	pushl  0x7060
    17e9:	e8 72 35 00 00       	call   4d60 <printf>
      exit();
    17ee:	e8 da 33 00 00       	call   4bcd <exit>
        printf(stdout, "read only %d blocks from big", n);
    17f3:	52                   	push   %edx
    17f4:	68 8b 00 00 00       	push   $0x8b
    17f9:	68 9e 51 00 00       	push   $0x519e
    17fe:	ff 35 60 70 00 00    	pushl  0x7060
    1804:	e8 57 35 00 00       	call   4d60 <printf>
        exit();
    1809:	e8 bf 33 00 00       	call   4bcd <exit>
    printf(stdout, "error: open big failed!\n");
    180e:	51                   	push   %ecx
    180f:	51                   	push   %ecx
    1810:	68 85 51 00 00       	push   $0x5185
    1815:	ff 35 60 70 00 00    	pushl  0x7060
    181b:	e8 40 35 00 00       	call   4d60 <printf>
    exit();
    1820:	e8 a8 33 00 00       	call   4bcd <exit>
    printf(stdout, "error: creat big failed!\n");
    1825:	50                   	push   %eax
    1826:	50                   	push   %eax
    1827:	68 4d 51 00 00       	push   $0x514d
    182c:	ff 35 60 70 00 00    	pushl  0x7060
    1832:	e8 29 35 00 00       	call   4d60 <printf>
    exit();
    1837:	e8 91 33 00 00       	call   4bcd <exit>
    printf(stdout, "unlink big failed\n");
    183c:	50                   	push   %eax
    183d:	50                   	push   %eax
    183e:	68 cb 51 00 00       	push   $0x51cb
    1843:	ff 35 60 70 00 00    	pushl  0x7060
    1849:	e8 12 35 00 00       	call   4d60 <printf>
    exit();
    184e:	e8 7a 33 00 00       	call   4bcd <exit>
    1853:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    185a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001860 <createtest>:
{
    1860:	f3 0f 1e fb          	endbr32 
    1864:	55                   	push   %ebp
    1865:	89 e5                	mov    %esp,%ebp
    1867:	53                   	push   %ebx
  name[2] = '\0';
    1868:	bb 30 00 00 00       	mov    $0x30,%ebx
{
    186d:	83 ec 0c             	sub    $0xc,%esp
  printf(stdout, "many creates, followed by unlink test\n");
    1870:	68 d8 5f 00 00       	push   $0x5fd8
    1875:	ff 35 60 70 00 00    	pushl  0x7060
    187b:	e8 e0 34 00 00       	call   4d60 <printf>
  name[0] = 'a';
    1880:	c6 05 40 b8 00 00 61 	movb   $0x61,0xb840
  name[2] = '\0';
    1887:	83 c4 10             	add    $0x10,%esp
    188a:	c6 05 42 b8 00 00 00 	movb   $0x0,0xb842
  for(i = 0; i < 52; i++){
    1891:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    fd = open(name, O_CREATE|O_RDWR);
    1898:	83 ec 08             	sub    $0x8,%esp
    name[1] = '0' + i;
    189b:	88 1d 41 b8 00 00    	mov    %bl,0xb841
    fd = open(name, O_CREATE|O_RDWR);
    18a1:	83 c3 01             	add    $0x1,%ebx
    18a4:	68 02 02 00 00       	push   $0x202
    18a9:	68 40 b8 00 00       	push   $0xb840
    18ae:	e8 5a 33 00 00       	call   4c0d <open>
    close(fd);
    18b3:	89 04 24             	mov    %eax,(%esp)
    18b6:	e8 3a 33 00 00       	call   4bf5 <close>
  for(i = 0; i < 52; i++){
    18bb:	83 c4 10             	add    $0x10,%esp
    18be:	80 fb 64             	cmp    $0x64,%bl
    18c1:	75 d5                	jne    1898 <createtest+0x38>
  name[0] = 'a';
    18c3:	c6 05 40 b8 00 00 61 	movb   $0x61,0xb840
  name[2] = '\0';
    18ca:	bb 30 00 00 00       	mov    $0x30,%ebx
    18cf:	c6 05 42 b8 00 00 00 	movb   $0x0,0xb842
  for(i = 0; i < 52; i++){
    18d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18dd:	8d 76 00             	lea    0x0(%esi),%esi
    unlink(name);
    18e0:	83 ec 0c             	sub    $0xc,%esp
    name[1] = '0' + i;
    18e3:	88 1d 41 b8 00 00    	mov    %bl,0xb841
    unlink(name);
    18e9:	83 c3 01             	add    $0x1,%ebx
    18ec:	68 40 b8 00 00       	push   $0xb840
    18f1:	e8 27 33 00 00       	call   4c1d <unlink>
  for(i = 0; i < 52; i++){
    18f6:	83 c4 10             	add    $0x10,%esp
    18f9:	80 fb 64             	cmp    $0x64,%bl
    18fc:	75 e2                	jne    18e0 <createtest+0x80>
  printf(stdout, "many creates, followed by unlink; ok\n");
    18fe:	83 ec 08             	sub    $0x8,%esp
    1901:	68 00 60 00 00       	push   $0x6000
    1906:	ff 35 60 70 00 00    	pushl  0x7060
    190c:	e8 4f 34 00 00       	call   4d60 <printf>
}
    1911:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1914:	83 c4 10             	add    $0x10,%esp
    1917:	c9                   	leave  
    1918:	c3                   	ret    
    1919:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001920 <dirtest>:
{
    1920:	f3 0f 1e fb          	endbr32 
    1924:	55                   	push   %ebp
    1925:	89 e5                	mov    %esp,%ebp
    1927:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "mkdir test\n");
    192a:	68 ec 51 00 00       	push   $0x51ec
    192f:	ff 35 60 70 00 00    	pushl  0x7060
    1935:	e8 26 34 00 00       	call   4d60 <printf>
  if(mkdir("dir0") < 0){
    193a:	c7 04 24 f8 51 00 00 	movl   $0x51f8,(%esp)
    1941:	e8 ef 32 00 00       	call   4c35 <mkdir>
    1946:	83 c4 10             	add    $0x10,%esp
    1949:	85 c0                	test   %eax,%eax
    194b:	78 58                	js     19a5 <dirtest+0x85>
  if(chdir("dir0") < 0){
    194d:	83 ec 0c             	sub    $0xc,%esp
    1950:	68 f8 51 00 00       	push   $0x51f8
    1955:	e8 e3 32 00 00       	call   4c3d <chdir>
    195a:	83 c4 10             	add    $0x10,%esp
    195d:	85 c0                	test   %eax,%eax
    195f:	0f 88 85 00 00 00    	js     19ea <dirtest+0xca>
  if(chdir("..") < 0){
    1965:	83 ec 0c             	sub    $0xc,%esp
    1968:	68 9d 57 00 00       	push   $0x579d
    196d:	e8 cb 32 00 00       	call   4c3d <chdir>
    1972:	83 c4 10             	add    $0x10,%esp
    1975:	85 c0                	test   %eax,%eax
    1977:	78 5a                	js     19d3 <dirtest+0xb3>
  if(unlink("dir0") < 0){
    1979:	83 ec 0c             	sub    $0xc,%esp
    197c:	68 f8 51 00 00       	push   $0x51f8
    1981:	e8 97 32 00 00       	call   4c1d <unlink>
    1986:	83 c4 10             	add    $0x10,%esp
    1989:	85 c0                	test   %eax,%eax
    198b:	78 2f                	js     19bc <dirtest+0x9c>
  printf(stdout, "mkdir test ok\n");
    198d:	83 ec 08             	sub    $0x8,%esp
    1990:	68 35 52 00 00       	push   $0x5235
    1995:	ff 35 60 70 00 00    	pushl  0x7060
    199b:	e8 c0 33 00 00       	call   4d60 <printf>
}
    19a0:	83 c4 10             	add    $0x10,%esp
    19a3:	c9                   	leave  
    19a4:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
    19a5:	50                   	push   %eax
    19a6:	50                   	push   %eax
    19a7:	68 28 4f 00 00       	push   $0x4f28
    19ac:	ff 35 60 70 00 00    	pushl  0x7060
    19b2:	e8 a9 33 00 00       	call   4d60 <printf>
    exit();
    19b7:	e8 11 32 00 00       	call   4bcd <exit>
    printf(stdout, "unlink dir0 failed\n");
    19bc:	50                   	push   %eax
    19bd:	50                   	push   %eax
    19be:	68 21 52 00 00       	push   $0x5221
    19c3:	ff 35 60 70 00 00    	pushl  0x7060
    19c9:	e8 92 33 00 00       	call   4d60 <printf>
    exit();
    19ce:	e8 fa 31 00 00       	call   4bcd <exit>
    printf(stdout, "chdir .. failed\n");
    19d3:	52                   	push   %edx
    19d4:	52                   	push   %edx
    19d5:	68 10 52 00 00       	push   $0x5210
    19da:	ff 35 60 70 00 00    	pushl  0x7060
    19e0:	e8 7b 33 00 00       	call   4d60 <printf>
    exit();
    19e5:	e8 e3 31 00 00       	call   4bcd <exit>
    printf(stdout, "chdir dir0 failed\n");
    19ea:	51                   	push   %ecx
    19eb:	51                   	push   %ecx
    19ec:	68 fd 51 00 00       	push   $0x51fd
    19f1:	ff 35 60 70 00 00    	pushl  0x7060
    19f7:	e8 64 33 00 00       	call   4d60 <printf>
    exit();
    19fc:	e8 cc 31 00 00       	call   4bcd <exit>
    1a01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1a08:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1a0f:	90                   	nop

00001a10 <exectest>:
{
    1a10:	f3 0f 1e fb          	endbr32 
    1a14:	55                   	push   %ebp
    1a15:	89 e5                	mov    %esp,%ebp
    1a17:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "exec test\n");
    1a1a:	68 44 52 00 00       	push   $0x5244
    1a1f:	ff 35 60 70 00 00    	pushl  0x7060
    1a25:	e8 36 33 00 00       	call   4d60 <printf>
  if(exec("echo", echoargv) < 0){
    1a2a:	5a                   	pop    %edx
    1a2b:	59                   	pop    %ecx
    1a2c:	68 64 70 00 00       	push   $0x7064
    1a31:	68 0d 50 00 00       	push   $0x500d
    1a36:	e8 ca 31 00 00       	call   4c05 <exec>
    1a3b:	83 c4 10             	add    $0x10,%esp
    1a3e:	85 c0                	test   %eax,%eax
    1a40:	78 02                	js     1a44 <exectest+0x34>
}
    1a42:	c9                   	leave  
    1a43:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
    1a44:	50                   	push   %eax
    1a45:	50                   	push   %eax
    1a46:	68 4f 52 00 00       	push   $0x524f
    1a4b:	ff 35 60 70 00 00    	pushl  0x7060
    1a51:	e8 0a 33 00 00       	call   4d60 <printf>
    exit();
    1a56:	e8 72 31 00 00       	call   4bcd <exit>
    1a5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1a5f:	90                   	nop

00001a60 <pipe1>:
{
    1a60:	f3 0f 1e fb          	endbr32 
    1a64:	55                   	push   %ebp
    1a65:	89 e5                	mov    %esp,%ebp
    1a67:	57                   	push   %edi
    1a68:	56                   	push   %esi
  if(pipe(fds) != 0){
    1a69:	8d 45 e0             	lea    -0x20(%ebp),%eax
{
    1a6c:	53                   	push   %ebx
    1a6d:	83 ec 38             	sub    $0x38,%esp
  if(pipe(fds) != 0){
    1a70:	50                   	push   %eax
    1a71:	e8 67 31 00 00       	call   4bdd <pipe>
    1a76:	83 c4 10             	add    $0x10,%esp
    1a79:	85 c0                	test   %eax,%eax
    1a7b:	0f 85 38 01 00 00    	jne    1bb9 <pipe1+0x159>
  pid = fork();
    1a81:	e8 3f 31 00 00       	call   4bc5 <fork>
  if(pid == 0){
    1a86:	85 c0                	test   %eax,%eax
    1a88:	0f 84 8d 00 00 00    	je     1b1b <pipe1+0xbb>
  } else if(pid > 0){
    1a8e:	0f 8e 38 01 00 00    	jle    1bcc <pipe1+0x16c>
    close(fds[1]);
    1a94:	83 ec 0c             	sub    $0xc,%esp
    1a97:	ff 75 e4             	pushl  -0x1c(%ebp)
  seq = 0;
    1a9a:	31 db                	xor    %ebx,%ebx
    cc = 1;
    1a9c:	be 01 00 00 00       	mov    $0x1,%esi
    close(fds[1]);
    1aa1:	e8 4f 31 00 00       	call   4bf5 <close>
    total = 0;
    1aa6:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
    1aad:	83 c4 10             	add    $0x10,%esp
    1ab0:	83 ec 04             	sub    $0x4,%esp
    1ab3:	56                   	push   %esi
    1ab4:	68 40 98 00 00       	push   $0x9840
    1ab9:	ff 75 e0             	pushl  -0x20(%ebp)
    1abc:	e8 24 31 00 00       	call   4be5 <read>
    1ac1:	83 c4 10             	add    $0x10,%esp
    1ac4:	89 c7                	mov    %eax,%edi
    1ac6:	85 c0                	test   %eax,%eax
    1ac8:	0f 8e a7 00 00 00    	jle    1b75 <pipe1+0x115>
    1ace:	8d 0c 3b             	lea    (%ebx,%edi,1),%ecx
      for(i = 0; i < n; i++){
    1ad1:	31 c0                	xor    %eax,%eax
    1ad3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1ad7:	90                   	nop
        if((buf[i] & 0xff) != (seq++ & 0xff)){
    1ad8:	89 da                	mov    %ebx,%edx
    1ada:	83 c3 01             	add    $0x1,%ebx
    1add:	38 90 40 98 00 00    	cmp    %dl,0x9840(%eax)
    1ae3:	75 1c                	jne    1b01 <pipe1+0xa1>
      for(i = 0; i < n; i++){
    1ae5:	83 c0 01             	add    $0x1,%eax
    1ae8:	39 d9                	cmp    %ebx,%ecx
    1aea:	75 ec                	jne    1ad8 <pipe1+0x78>
      cc = cc * 2;
    1aec:	01 f6                	add    %esi,%esi
      total += n;
    1aee:	01 7d d4             	add    %edi,-0x2c(%ebp)
    1af1:	b8 00 20 00 00       	mov    $0x2000,%eax
    1af6:	81 fe 00 20 00 00    	cmp    $0x2000,%esi
    1afc:	0f 4f f0             	cmovg  %eax,%esi
    1aff:	eb af                	jmp    1ab0 <pipe1+0x50>
          printf(1, "pipe1 oops 2\n");
    1b01:	83 ec 08             	sub    $0x8,%esp
    1b04:	68 7e 52 00 00       	push   $0x527e
    1b09:	6a 01                	push   $0x1
    1b0b:	e8 50 32 00 00       	call   4d60 <printf>
          return;
    1b10:	83 c4 10             	add    $0x10,%esp
}
    1b13:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1b16:	5b                   	pop    %ebx
    1b17:	5e                   	pop    %esi
    1b18:	5f                   	pop    %edi
    1b19:	5d                   	pop    %ebp
    1b1a:	c3                   	ret    
    close(fds[0]);
    1b1b:	83 ec 0c             	sub    $0xc,%esp
    1b1e:	ff 75 e0             	pushl  -0x20(%ebp)
  seq = 0;
    1b21:	31 db                	xor    %ebx,%ebx
    close(fds[0]);
    1b23:	e8 cd 30 00 00       	call   4bf5 <close>
    1b28:	83 c4 10             	add    $0x10,%esp
      for(i = 0; i < 1033; i++)
    1b2b:	31 c0                	xor    %eax,%eax
    1b2d:	8d 76 00             	lea    0x0(%esi),%esi
        buf[i] = seq++;
    1b30:	8d 14 18             	lea    (%eax,%ebx,1),%edx
      for(i = 0; i < 1033; i++)
    1b33:	83 c0 01             	add    $0x1,%eax
        buf[i] = seq++;
    1b36:	88 90 3f 98 00 00    	mov    %dl,0x983f(%eax)
      for(i = 0; i < 1033; i++)
    1b3c:	3d 09 04 00 00       	cmp    $0x409,%eax
    1b41:	75 ed                	jne    1b30 <pipe1+0xd0>
      if(write(fds[1], buf, 1033) != 1033){
    1b43:	83 ec 04             	sub    $0x4,%esp
    1b46:	81 c3 09 04 00 00    	add    $0x409,%ebx
    1b4c:	68 09 04 00 00       	push   $0x409
    1b51:	68 40 98 00 00       	push   $0x9840
    1b56:	ff 75 e4             	pushl  -0x1c(%ebp)
    1b59:	e8 8f 30 00 00       	call   4bed <write>
    1b5e:	83 c4 10             	add    $0x10,%esp
    1b61:	3d 09 04 00 00       	cmp    $0x409,%eax
    1b66:	75 77                	jne    1bdf <pipe1+0x17f>
    for(n = 0; n < 5; n++){
    1b68:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
    1b6e:	75 bb                	jne    1b2b <pipe1+0xcb>
    exit();
    1b70:	e8 58 30 00 00       	call   4bcd <exit>
    if(total != 5 * 1033){
    1b75:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
    1b7c:	75 26                	jne    1ba4 <pipe1+0x144>
    close(fds[0]);
    1b7e:	83 ec 0c             	sub    $0xc,%esp
    1b81:	ff 75 e0             	pushl  -0x20(%ebp)
    1b84:	e8 6c 30 00 00       	call   4bf5 <close>
    wait();
    1b89:	e8 47 30 00 00       	call   4bd5 <wait>
  printf(1, "pipe1 ok\n");
    1b8e:	5a                   	pop    %edx
    1b8f:	59                   	pop    %ecx
    1b90:	68 a3 52 00 00       	push   $0x52a3
    1b95:	6a 01                	push   $0x1
    1b97:	e8 c4 31 00 00       	call   4d60 <printf>
    1b9c:	83 c4 10             	add    $0x10,%esp
    1b9f:	e9 6f ff ff ff       	jmp    1b13 <pipe1+0xb3>
      printf(1, "pipe1 oops 3 total %d\n", total);
    1ba4:	53                   	push   %ebx
    1ba5:	ff 75 d4             	pushl  -0x2c(%ebp)
    1ba8:	68 8c 52 00 00       	push   $0x528c
    1bad:	6a 01                	push   $0x1
    1baf:	e8 ac 31 00 00       	call   4d60 <printf>
      exit();
    1bb4:	e8 14 30 00 00       	call   4bcd <exit>
    printf(1, "pipe() failed\n");
    1bb9:	57                   	push   %edi
    1bba:	57                   	push   %edi
    1bbb:	68 61 52 00 00       	push   $0x5261
    1bc0:	6a 01                	push   $0x1
    1bc2:	e8 99 31 00 00       	call   4d60 <printf>
    exit();
    1bc7:	e8 01 30 00 00       	call   4bcd <exit>
    printf(1, "fork() failed\n");
    1bcc:	50                   	push   %eax
    1bcd:	50                   	push   %eax
    1bce:	68 ad 52 00 00       	push   $0x52ad
    1bd3:	6a 01                	push   $0x1
    1bd5:	e8 86 31 00 00       	call   4d60 <printf>
    exit();
    1bda:	e8 ee 2f 00 00       	call   4bcd <exit>
        printf(1, "pipe1 oops 1\n");
    1bdf:	56                   	push   %esi
    1be0:	56                   	push   %esi
    1be1:	68 70 52 00 00       	push   $0x5270
    1be6:	6a 01                	push   $0x1
    1be8:	e8 73 31 00 00       	call   4d60 <printf>
        exit();
    1bed:	e8 db 2f 00 00       	call   4bcd <exit>
    1bf2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1bf9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001c00 <preempt>:
{
    1c00:	f3 0f 1e fb          	endbr32 
    1c04:	55                   	push   %ebp
    1c05:	89 e5                	mov    %esp,%ebp
    1c07:	57                   	push   %edi
    1c08:	56                   	push   %esi
    1c09:	53                   	push   %ebx
    1c0a:	83 ec 24             	sub    $0x24,%esp
  printf(1, "preempt: ");
    1c0d:	68 bc 52 00 00       	push   $0x52bc
    1c12:	6a 01                	push   $0x1
    1c14:	e8 47 31 00 00       	call   4d60 <printf>
  pid1 = fork();
    1c19:	e8 a7 2f 00 00       	call   4bc5 <fork>
  if(pid1 == 0)
    1c1e:	83 c4 10             	add    $0x10,%esp
    1c21:	85 c0                	test   %eax,%eax
    1c23:	75 0b                	jne    1c30 <preempt+0x30>
    for(;;)
    1c25:	eb fe                	jmp    1c25 <preempt+0x25>
    1c27:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1c2e:	66 90                	xchg   %ax,%ax
    1c30:	89 c7                	mov    %eax,%edi
  pid2 = fork();
    1c32:	e8 8e 2f 00 00       	call   4bc5 <fork>
    1c37:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
    1c39:	85 c0                	test   %eax,%eax
    1c3b:	75 03                	jne    1c40 <preempt+0x40>
    for(;;)
    1c3d:	eb fe                	jmp    1c3d <preempt+0x3d>
    1c3f:	90                   	nop
  pipe(pfds);
    1c40:	83 ec 0c             	sub    $0xc,%esp
    1c43:	8d 45 e0             	lea    -0x20(%ebp),%eax
    1c46:	50                   	push   %eax
    1c47:	e8 91 2f 00 00       	call   4bdd <pipe>
  pid3 = fork();
    1c4c:	e8 74 2f 00 00       	call   4bc5 <fork>
  if(pid3 == 0){
    1c51:	83 c4 10             	add    $0x10,%esp
  pid3 = fork();
    1c54:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
    1c56:	85 c0                	test   %eax,%eax
    1c58:	75 3e                	jne    1c98 <preempt+0x98>
    close(pfds[0]);
    1c5a:	83 ec 0c             	sub    $0xc,%esp
    1c5d:	ff 75 e0             	pushl  -0x20(%ebp)
    1c60:	e8 90 2f 00 00       	call   4bf5 <close>
    if(write(pfds[1], "x", 1) != 1)
    1c65:	83 c4 0c             	add    $0xc,%esp
    1c68:	6a 01                	push   $0x1
    1c6a:	68 81 58 00 00       	push   $0x5881
    1c6f:	ff 75 e4             	pushl  -0x1c(%ebp)
    1c72:	e8 76 2f 00 00       	call   4bed <write>
    1c77:	83 c4 10             	add    $0x10,%esp
    1c7a:	83 f8 01             	cmp    $0x1,%eax
    1c7d:	0f 85 a4 00 00 00    	jne    1d27 <preempt+0x127>
    close(pfds[1]);
    1c83:	83 ec 0c             	sub    $0xc,%esp
    1c86:	ff 75 e4             	pushl  -0x1c(%ebp)
    1c89:	e8 67 2f 00 00       	call   4bf5 <close>
    1c8e:	83 c4 10             	add    $0x10,%esp
    for(;;)
    1c91:	eb fe                	jmp    1c91 <preempt+0x91>
    1c93:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1c97:	90                   	nop
  close(pfds[1]);
    1c98:	83 ec 0c             	sub    $0xc,%esp
    1c9b:	ff 75 e4             	pushl  -0x1c(%ebp)
    1c9e:	e8 52 2f 00 00       	call   4bf5 <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
    1ca3:	83 c4 0c             	add    $0xc,%esp
    1ca6:	68 00 20 00 00       	push   $0x2000
    1cab:	68 40 98 00 00       	push   $0x9840
    1cb0:	ff 75 e0             	pushl  -0x20(%ebp)
    1cb3:	e8 2d 2f 00 00       	call   4be5 <read>
    1cb8:	83 c4 10             	add    $0x10,%esp
    1cbb:	83 f8 01             	cmp    $0x1,%eax
    1cbe:	75 7e                	jne    1d3e <preempt+0x13e>
  close(pfds[0]);
    1cc0:	83 ec 0c             	sub    $0xc,%esp
    1cc3:	ff 75 e0             	pushl  -0x20(%ebp)
    1cc6:	e8 2a 2f 00 00       	call   4bf5 <close>
  printf(1, "kill... ");
    1ccb:	58                   	pop    %eax
    1ccc:	5a                   	pop    %edx
    1ccd:	68 ed 52 00 00       	push   $0x52ed
    1cd2:	6a 01                	push   $0x1
    1cd4:	e8 87 30 00 00       	call   4d60 <printf>
  kill(pid1);
    1cd9:	89 3c 24             	mov    %edi,(%esp)
    1cdc:	e8 1c 2f 00 00       	call   4bfd <kill>
  kill(pid2);
    1ce1:	89 34 24             	mov    %esi,(%esp)
    1ce4:	e8 14 2f 00 00       	call   4bfd <kill>
  kill(pid3);
    1ce9:	89 1c 24             	mov    %ebx,(%esp)
    1cec:	e8 0c 2f 00 00       	call   4bfd <kill>
  printf(1, "wait... ");
    1cf1:	59                   	pop    %ecx
    1cf2:	5b                   	pop    %ebx
    1cf3:	68 f6 52 00 00       	push   $0x52f6
    1cf8:	6a 01                	push   $0x1
    1cfa:	e8 61 30 00 00       	call   4d60 <printf>
  wait();
    1cff:	e8 d1 2e 00 00       	call   4bd5 <wait>
  wait();
    1d04:	e8 cc 2e 00 00       	call   4bd5 <wait>
  wait();
    1d09:	e8 c7 2e 00 00       	call   4bd5 <wait>
  printf(1, "preempt ok\n");
    1d0e:	5e                   	pop    %esi
    1d0f:	5f                   	pop    %edi
    1d10:	68 ff 52 00 00       	push   $0x52ff
    1d15:	6a 01                	push   $0x1
    1d17:	e8 44 30 00 00       	call   4d60 <printf>
    1d1c:	83 c4 10             	add    $0x10,%esp
}
    1d1f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1d22:	5b                   	pop    %ebx
    1d23:	5e                   	pop    %esi
    1d24:	5f                   	pop    %edi
    1d25:	5d                   	pop    %ebp
    1d26:	c3                   	ret    
      printf(1, "preempt write error");
    1d27:	83 ec 08             	sub    $0x8,%esp
    1d2a:	68 c6 52 00 00       	push   $0x52c6
    1d2f:	6a 01                	push   $0x1
    1d31:	e8 2a 30 00 00       	call   4d60 <printf>
    1d36:	83 c4 10             	add    $0x10,%esp
    1d39:	e9 45 ff ff ff       	jmp    1c83 <preempt+0x83>
    printf(1, "preempt read error");
    1d3e:	83 ec 08             	sub    $0x8,%esp
    1d41:	68 da 52 00 00       	push   $0x52da
    1d46:	6a 01                	push   $0x1
    1d48:	e8 13 30 00 00       	call   4d60 <printf>
    return;
    1d4d:	83 c4 10             	add    $0x10,%esp
    1d50:	eb cd                	jmp    1d1f <preempt+0x11f>
    1d52:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1d59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001d60 <exitwait>:
{
    1d60:	f3 0f 1e fb          	endbr32 
    1d64:	55                   	push   %ebp
    1d65:	89 e5                	mov    %esp,%ebp
    1d67:	56                   	push   %esi
    1d68:	be 64 00 00 00       	mov    $0x64,%esi
    1d6d:	53                   	push   %ebx
    1d6e:	eb 10                	jmp    1d80 <exitwait+0x20>
    if(pid){
    1d70:	74 68                	je     1dda <exitwait+0x7a>
      if(wait() != pid){
    1d72:	e8 5e 2e 00 00       	call   4bd5 <wait>
    1d77:	39 d8                	cmp    %ebx,%eax
    1d79:	75 2d                	jne    1da8 <exitwait+0x48>
  for(i = 0; i < 100; i++){
    1d7b:	83 ee 01             	sub    $0x1,%esi
    1d7e:	74 41                	je     1dc1 <exitwait+0x61>
    pid = fork();
    1d80:	e8 40 2e 00 00       	call   4bc5 <fork>
    1d85:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
    1d87:	85 c0                	test   %eax,%eax
    1d89:	79 e5                	jns    1d70 <exitwait+0x10>
      printf(1, "fork failed\n");
    1d8b:	83 ec 08             	sub    $0x8,%esp
    1d8e:	68 6c 5e 00 00       	push   $0x5e6c
    1d93:	6a 01                	push   $0x1
    1d95:	e8 c6 2f 00 00       	call   4d60 <printf>
      return;
    1d9a:	83 c4 10             	add    $0x10,%esp
}
    1d9d:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1da0:	5b                   	pop    %ebx
    1da1:	5e                   	pop    %esi
    1da2:	5d                   	pop    %ebp
    1da3:	c3                   	ret    
    1da4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        printf(1, "wait wrong pid\n");
    1da8:	83 ec 08             	sub    $0x8,%esp
    1dab:	68 0b 53 00 00       	push   $0x530b
    1db0:	6a 01                	push   $0x1
    1db2:	e8 a9 2f 00 00       	call   4d60 <printf>
        return;
    1db7:	83 c4 10             	add    $0x10,%esp
}
    1dba:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1dbd:	5b                   	pop    %ebx
    1dbe:	5e                   	pop    %esi
    1dbf:	5d                   	pop    %ebp
    1dc0:	c3                   	ret    
  printf(1, "exitwait ok\n");
    1dc1:	83 ec 08             	sub    $0x8,%esp
    1dc4:	68 1b 53 00 00       	push   $0x531b
    1dc9:	6a 01                	push   $0x1
    1dcb:	e8 90 2f 00 00       	call   4d60 <printf>
    1dd0:	83 c4 10             	add    $0x10,%esp
}
    1dd3:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1dd6:	5b                   	pop    %ebx
    1dd7:	5e                   	pop    %esi
    1dd8:	5d                   	pop    %ebp
    1dd9:	c3                   	ret    
      exit();
    1dda:	e8 ee 2d 00 00       	call   4bcd <exit>
    1ddf:	90                   	nop

00001de0 <mem>:
{
    1de0:	f3 0f 1e fb          	endbr32 
    1de4:	55                   	push   %ebp
    1de5:	89 e5                	mov    %esp,%ebp
    1de7:	56                   	push   %esi
    1de8:	31 f6                	xor    %esi,%esi
    1dea:	53                   	push   %ebx
  printf(1, "mem test\n");
    1deb:	83 ec 08             	sub    $0x8,%esp
    1dee:	68 28 53 00 00       	push   $0x5328
    1df3:	6a 01                	push   $0x1
    1df5:	e8 66 2f 00 00       	call   4d60 <printf>
  ppid = getpid();
    1dfa:	e8 4e 2e 00 00       	call   4c4d <getpid>
    1dff:	89 c3                	mov    %eax,%ebx
  if((pid = fork()) == 0){
    1e01:	e8 bf 2d 00 00       	call   4bc5 <fork>
    1e06:	83 c4 10             	add    $0x10,%esp
    1e09:	85 c0                	test   %eax,%eax
    1e0b:	74 0f                	je     1e1c <mem+0x3c>
    1e0d:	e9 8e 00 00 00       	jmp    1ea0 <mem+0xc0>
    1e12:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *(char**)m2 = m1;
    1e18:	89 30                	mov    %esi,(%eax)
    1e1a:	89 c6                	mov    %eax,%esi
    while((m2 = malloc(10001)) != 0){
    1e1c:	83 ec 0c             	sub    $0xc,%esp
    1e1f:	68 11 27 00 00       	push   $0x2711
    1e24:	e8 67 2c 00 00       	call   4a90 <malloc>
    1e29:	83 c4 10             	add    $0x10,%esp
    1e2c:	85 c0                	test   %eax,%eax
    1e2e:	75 e8                	jne    1e18 <mem+0x38>
    while(m1){
    1e30:	85 f6                	test   %esi,%esi
    1e32:	74 18                	je     1e4c <mem+0x6c>
    1e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      m2 = *(char**)m1;
    1e38:	89 f0                	mov    %esi,%eax
      free(m1);
    1e3a:	83 ec 0c             	sub    $0xc,%esp
      m2 = *(char**)m1;
    1e3d:	8b 36                	mov    (%esi),%esi
      free(m1);
    1e3f:	50                   	push   %eax
    1e40:	e8 bb 2b 00 00       	call   4a00 <free>
    while(m1){
    1e45:	83 c4 10             	add    $0x10,%esp
    1e48:	85 f6                	test   %esi,%esi
    1e4a:	75 ec                	jne    1e38 <mem+0x58>
    m1 = malloc(1024*20);
    1e4c:	83 ec 0c             	sub    $0xc,%esp
    1e4f:	68 00 50 00 00       	push   $0x5000
    1e54:	e8 37 2c 00 00       	call   4a90 <malloc>
    if(m1 == 0){
    1e59:	83 c4 10             	add    $0x10,%esp
    1e5c:	85 c0                	test   %eax,%eax
    1e5e:	74 20                	je     1e80 <mem+0xa0>
    free(m1);
    1e60:	83 ec 0c             	sub    $0xc,%esp
    1e63:	50                   	push   %eax
    1e64:	e8 97 2b 00 00       	call   4a00 <free>
    printf(1, "mem ok\n");
    1e69:	58                   	pop    %eax
    1e6a:	5a                   	pop    %edx
    1e6b:	68 4c 53 00 00       	push   $0x534c
    1e70:	6a 01                	push   $0x1
    1e72:	e8 e9 2e 00 00       	call   4d60 <printf>
    exit();
    1e77:	e8 51 2d 00 00       	call   4bcd <exit>
    1e7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
    1e80:	83 ec 08             	sub    $0x8,%esp
    1e83:	68 32 53 00 00       	push   $0x5332
    1e88:	6a 01                	push   $0x1
    1e8a:	e8 d1 2e 00 00       	call   4d60 <printf>
      kill(ppid);
    1e8f:	89 1c 24             	mov    %ebx,(%esp)
    1e92:	e8 66 2d 00 00       	call   4bfd <kill>
      exit();
    1e97:	e8 31 2d 00 00       	call   4bcd <exit>
    1e9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
    1ea0:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1ea3:	5b                   	pop    %ebx
    1ea4:	5e                   	pop    %esi
    1ea5:	5d                   	pop    %ebp
    wait();
    1ea6:	e9 2a 2d 00 00       	jmp    4bd5 <wait>
    1eab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1eaf:	90                   	nop

00001eb0 <sharedfd>:
{
    1eb0:	f3 0f 1e fb          	endbr32 
    1eb4:	55                   	push   %ebp
    1eb5:	89 e5                	mov    %esp,%ebp
    1eb7:	57                   	push   %edi
    1eb8:	56                   	push   %esi
    1eb9:	53                   	push   %ebx
    1eba:	83 ec 34             	sub    $0x34,%esp
  printf(1, "sharedfd test\n");
    1ebd:	68 54 53 00 00       	push   $0x5354
    1ec2:	6a 01                	push   $0x1
    1ec4:	e8 97 2e 00 00       	call   4d60 <printf>
  unlink("sharedfd");
    1ec9:	c7 04 24 63 53 00 00 	movl   $0x5363,(%esp)
    1ed0:	e8 48 2d 00 00       	call   4c1d <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
    1ed5:	5b                   	pop    %ebx
    1ed6:	5e                   	pop    %esi
    1ed7:	68 02 02 00 00       	push   $0x202
    1edc:	68 63 53 00 00       	push   $0x5363
    1ee1:	e8 27 2d 00 00       	call   4c0d <open>
  if(fd < 0){
    1ee6:	83 c4 10             	add    $0x10,%esp
    1ee9:	85 c0                	test   %eax,%eax
    1eeb:	0f 88 26 01 00 00    	js     2017 <sharedfd+0x167>
    1ef1:	89 c7                	mov    %eax,%edi
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1ef3:	8d 75 de             	lea    -0x22(%ebp),%esi
    1ef6:	bb e8 03 00 00       	mov    $0x3e8,%ebx
  pid = fork();
    1efb:	e8 c5 2c 00 00       	call   4bc5 <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1f00:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
    1f03:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
    1f06:	19 c0                	sbb    %eax,%eax
    1f08:	83 ec 04             	sub    $0x4,%esp
    1f0b:	83 e0 f3             	and    $0xfffffff3,%eax
    1f0e:	6a 0a                	push   $0xa
    1f10:	83 c0 70             	add    $0x70,%eax
    1f13:	50                   	push   %eax
    1f14:	56                   	push   %esi
    1f15:	e8 c6 28 00 00       	call   47e0 <memset>
    1f1a:	83 c4 10             	add    $0x10,%esp
    1f1d:	eb 06                	jmp    1f25 <sharedfd+0x75>
    1f1f:	90                   	nop
  for(i = 0; i < 1000; i++){
    1f20:	83 eb 01             	sub    $0x1,%ebx
    1f23:	74 26                	je     1f4b <sharedfd+0x9b>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
    1f25:	83 ec 04             	sub    $0x4,%esp
    1f28:	6a 0a                	push   $0xa
    1f2a:	56                   	push   %esi
    1f2b:	57                   	push   %edi
    1f2c:	e8 bc 2c 00 00       	call   4bed <write>
    1f31:	83 c4 10             	add    $0x10,%esp
    1f34:	83 f8 0a             	cmp    $0xa,%eax
    1f37:	74 e7                	je     1f20 <sharedfd+0x70>
      printf(1, "fstests: write sharedfd failed\n");
    1f39:	83 ec 08             	sub    $0x8,%esp
    1f3c:	68 54 60 00 00       	push   $0x6054
    1f41:	6a 01                	push   $0x1
    1f43:	e8 18 2e 00 00       	call   4d60 <printf>
      break;
    1f48:	83 c4 10             	add    $0x10,%esp
  if(pid == 0)
    1f4b:	8b 4d d4             	mov    -0x2c(%ebp),%ecx
    1f4e:	85 c9                	test   %ecx,%ecx
    1f50:	0f 84 f5 00 00 00    	je     204b <sharedfd+0x19b>
    wait();
    1f56:	e8 7a 2c 00 00       	call   4bd5 <wait>
  close(fd);
    1f5b:	83 ec 0c             	sub    $0xc,%esp
  nc = np = 0;
    1f5e:	31 db                	xor    %ebx,%ebx
  close(fd);
    1f60:	57                   	push   %edi
    1f61:	8d 7d e8             	lea    -0x18(%ebp),%edi
    1f64:	e8 8c 2c 00 00       	call   4bf5 <close>
  fd = open("sharedfd", 0);
    1f69:	58                   	pop    %eax
    1f6a:	5a                   	pop    %edx
    1f6b:	6a 00                	push   $0x0
    1f6d:	68 63 53 00 00       	push   $0x5363
    1f72:	e8 96 2c 00 00       	call   4c0d <open>
  if(fd < 0){
    1f77:	83 c4 10             	add    $0x10,%esp
  nc = np = 0;
    1f7a:	31 d2                	xor    %edx,%edx
  fd = open("sharedfd", 0);
    1f7c:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
    1f7f:	85 c0                	test   %eax,%eax
    1f81:	0f 88 aa 00 00 00    	js     2031 <sharedfd+0x181>
    1f87:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1f8e:	66 90                	xchg   %ax,%ax
  while((n = read(fd, buf, sizeof(buf))) > 0){
    1f90:	83 ec 04             	sub    $0x4,%esp
    1f93:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1f96:	6a 0a                	push   $0xa
    1f98:	56                   	push   %esi
    1f99:	ff 75 d0             	pushl  -0x30(%ebp)
    1f9c:	e8 44 2c 00 00       	call   4be5 <read>
    1fa1:	83 c4 10             	add    $0x10,%esp
    1fa4:	85 c0                	test   %eax,%eax
    1fa6:	7e 28                	jle    1fd0 <sharedfd+0x120>
    for(i = 0; i < sizeof(buf); i++){
    1fa8:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1fab:	89 f0                	mov    %esi,%eax
    1fad:	eb 13                	jmp    1fc2 <sharedfd+0x112>
    1faf:	90                   	nop
        np++;
    1fb0:	80 f9 70             	cmp    $0x70,%cl
    1fb3:	0f 94 c1             	sete   %cl
    1fb6:	0f b6 c9             	movzbl %cl,%ecx
    1fb9:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
    1fbb:	83 c0 01             	add    $0x1,%eax
    1fbe:	39 c7                	cmp    %eax,%edi
    1fc0:	74 ce                	je     1f90 <sharedfd+0xe0>
      if(buf[i] == 'c')
    1fc2:	0f b6 08             	movzbl (%eax),%ecx
    1fc5:	80 f9 63             	cmp    $0x63,%cl
    1fc8:	75 e6                	jne    1fb0 <sharedfd+0x100>
        nc++;
    1fca:	83 c2 01             	add    $0x1,%edx
      if(buf[i] == 'p')
    1fcd:	eb ec                	jmp    1fbb <sharedfd+0x10b>
    1fcf:	90                   	nop
  close(fd);
    1fd0:	83 ec 0c             	sub    $0xc,%esp
    1fd3:	ff 75 d0             	pushl  -0x30(%ebp)
    1fd6:	e8 1a 2c 00 00       	call   4bf5 <close>
  unlink("sharedfd");
    1fdb:	c7 04 24 63 53 00 00 	movl   $0x5363,(%esp)
    1fe2:	e8 36 2c 00 00       	call   4c1d <unlink>
  if(nc == 10000 && np == 10000){
    1fe7:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1fea:	83 c4 10             	add    $0x10,%esp
    1fed:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1ff3:	75 5b                	jne    2050 <sharedfd+0x1a0>
    1ff5:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    1ffb:	75 53                	jne    2050 <sharedfd+0x1a0>
    printf(1, "sharedfd ok\n");
    1ffd:	83 ec 08             	sub    $0x8,%esp
    2000:	68 6c 53 00 00       	push   $0x536c
    2005:	6a 01                	push   $0x1
    2007:	e8 54 2d 00 00       	call   4d60 <printf>
    200c:	83 c4 10             	add    $0x10,%esp
}
    200f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2012:	5b                   	pop    %ebx
    2013:	5e                   	pop    %esi
    2014:	5f                   	pop    %edi
    2015:	5d                   	pop    %ebp
    2016:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    2017:	83 ec 08             	sub    $0x8,%esp
    201a:	68 28 60 00 00       	push   $0x6028
    201f:	6a 01                	push   $0x1
    2021:	e8 3a 2d 00 00       	call   4d60 <printf>
    return;
    2026:	83 c4 10             	add    $0x10,%esp
}
    2029:	8d 65 f4             	lea    -0xc(%ebp),%esp
    202c:	5b                   	pop    %ebx
    202d:	5e                   	pop    %esi
    202e:	5f                   	pop    %edi
    202f:	5d                   	pop    %ebp
    2030:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    2031:	83 ec 08             	sub    $0x8,%esp
    2034:	68 74 60 00 00       	push   $0x6074
    2039:	6a 01                	push   $0x1
    203b:	e8 20 2d 00 00       	call   4d60 <printf>
    return;
    2040:	83 c4 10             	add    $0x10,%esp
}
    2043:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2046:	5b                   	pop    %ebx
    2047:	5e                   	pop    %esi
    2048:	5f                   	pop    %edi
    2049:	5d                   	pop    %ebp
    204a:	c3                   	ret    
    exit();
    204b:	e8 7d 2b 00 00       	call   4bcd <exit>
    printf(1, "sharedfd oops %d %d\n", nc, np);
    2050:	53                   	push   %ebx
    2051:	52                   	push   %edx
    2052:	68 79 53 00 00       	push   $0x5379
    2057:	6a 01                	push   $0x1
    2059:	e8 02 2d 00 00       	call   4d60 <printf>
    exit();
    205e:	e8 6a 2b 00 00       	call   4bcd <exit>
    2063:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    206a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00002070 <fourfiles>:
{
    2070:	f3 0f 1e fb          	endbr32 
    2074:	55                   	push   %ebp
    2075:	89 e5                	mov    %esp,%ebp
    2077:	57                   	push   %edi
    2078:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    2079:	be 8e 53 00 00       	mov    $0x538e,%esi
{
    207e:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    207f:	31 db                	xor    %ebx,%ebx
{
    2081:	83 ec 34             	sub    $0x34,%esp
  char *names[] = { "f0", "f1", "f2", "f3" };
    2084:	c7 45 d8 8e 53 00 00 	movl   $0x538e,-0x28(%ebp)
  printf(1, "fourfiles test\n");
    208b:	68 94 53 00 00       	push   $0x5394
    2090:	6a 01                	push   $0x1
  char *names[] = { "f0", "f1", "f2", "f3" };
    2092:	c7 45 dc d7 54 00 00 	movl   $0x54d7,-0x24(%ebp)
    2099:	c7 45 e0 db 54 00 00 	movl   $0x54db,-0x20(%ebp)
    20a0:	c7 45 e4 91 53 00 00 	movl   $0x5391,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    20a7:	e8 b4 2c 00 00       	call   4d60 <printf>
    20ac:	83 c4 10             	add    $0x10,%esp
    unlink(fname);
    20af:	83 ec 0c             	sub    $0xc,%esp
    20b2:	56                   	push   %esi
    20b3:	e8 65 2b 00 00       	call   4c1d <unlink>
    pid = fork();
    20b8:	e8 08 2b 00 00       	call   4bc5 <fork>
    if(pid < 0){
    20bd:	83 c4 10             	add    $0x10,%esp
    20c0:	85 c0                	test   %eax,%eax
    20c2:	0f 88 60 01 00 00    	js     2228 <fourfiles+0x1b8>
    if(pid == 0){
    20c8:	0f 84 e5 00 00 00    	je     21b3 <fourfiles+0x143>
  for(pi = 0; pi < 4; pi++){
    20ce:	83 c3 01             	add    $0x1,%ebx
    20d1:	83 fb 04             	cmp    $0x4,%ebx
    20d4:	74 06                	je     20dc <fourfiles+0x6c>
    20d6:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    20da:	eb d3                	jmp    20af <fourfiles+0x3f>
    wait();
    20dc:	e8 f4 2a 00 00       	call   4bd5 <wait>
  for(i = 0; i < 2; i++){
    20e1:	31 f6                	xor    %esi,%esi
    wait();
    20e3:	e8 ed 2a 00 00       	call   4bd5 <wait>
    20e8:	e8 e8 2a 00 00       	call   4bd5 <wait>
    20ed:	e8 e3 2a 00 00       	call   4bd5 <wait>
    fname = names[i];
    20f2:	8b 44 b5 d8          	mov    -0x28(%ebp,%esi,4),%eax
    fd = open(fname, 0);
    20f6:	83 ec 08             	sub    $0x8,%esp
    total = 0;
    20f9:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    20fb:	6a 00                	push   $0x0
    20fd:	50                   	push   %eax
    fname = names[i];
    20fe:	89 45 d0             	mov    %eax,-0x30(%ebp)
    fd = open(fname, 0);
    2101:	e8 07 2b 00 00       	call   4c0d <open>
    while((n = read(fd, buf, sizeof(buf))) > 0){
    2106:	83 c4 10             	add    $0x10,%esp
    fd = open(fname, 0);
    2109:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    while((n = read(fd, buf, sizeof(buf))) > 0){
    210c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    2110:	83 ec 04             	sub    $0x4,%esp
    2113:	68 00 20 00 00       	push   $0x2000
    2118:	68 40 98 00 00       	push   $0x9840
    211d:	ff 75 d4             	pushl  -0x2c(%ebp)
    2120:	e8 c0 2a 00 00       	call   4be5 <read>
    2125:	83 c4 10             	add    $0x10,%esp
    2128:	85 c0                	test   %eax,%eax
    212a:	7e 22                	jle    214e <fourfiles+0xde>
      for(j = 0; j < n; j++){
    212c:	31 d2                	xor    %edx,%edx
    212e:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    2130:	83 fe 01             	cmp    $0x1,%esi
    2133:	0f be ba 40 98 00 00 	movsbl 0x9840(%edx),%edi
    213a:	19 c9                	sbb    %ecx,%ecx
    213c:	83 c1 31             	add    $0x31,%ecx
    213f:	39 cf                	cmp    %ecx,%edi
    2141:	75 5c                	jne    219f <fourfiles+0x12f>
      for(j = 0; j < n; j++){
    2143:	83 c2 01             	add    $0x1,%edx
    2146:	39 d0                	cmp    %edx,%eax
    2148:	75 e6                	jne    2130 <fourfiles+0xc0>
      total += n;
    214a:	01 c3                	add    %eax,%ebx
    214c:	eb c2                	jmp    2110 <fourfiles+0xa0>
    close(fd);
    214e:	83 ec 0c             	sub    $0xc,%esp
    2151:	ff 75 d4             	pushl  -0x2c(%ebp)
    2154:	e8 9c 2a 00 00       	call   4bf5 <close>
    if(total != 12*500){
    2159:	83 c4 10             	add    $0x10,%esp
    215c:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    2162:	0f 85 d4 00 00 00    	jne    223c <fourfiles+0x1cc>
    unlink(fname);
    2168:	83 ec 0c             	sub    $0xc,%esp
    216b:	ff 75 d0             	pushl  -0x30(%ebp)
    216e:	e8 aa 2a 00 00       	call   4c1d <unlink>
  for(i = 0; i < 2; i++){
    2173:	83 c4 10             	add    $0x10,%esp
    2176:	83 fe 01             	cmp    $0x1,%esi
    2179:	75 1a                	jne    2195 <fourfiles+0x125>
  printf(1, "fourfiles ok\n");
    217b:	83 ec 08             	sub    $0x8,%esp
    217e:	68 d2 53 00 00       	push   $0x53d2
    2183:	6a 01                	push   $0x1
    2185:	e8 d6 2b 00 00       	call   4d60 <printf>
}
    218a:	83 c4 10             	add    $0x10,%esp
    218d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2190:	5b                   	pop    %ebx
    2191:	5e                   	pop    %esi
    2192:	5f                   	pop    %edi
    2193:	5d                   	pop    %ebp
    2194:	c3                   	ret    
    2195:	be 01 00 00 00       	mov    $0x1,%esi
    219a:	e9 53 ff ff ff       	jmp    20f2 <fourfiles+0x82>
          printf(1, "wrong char\n");
    219f:	83 ec 08             	sub    $0x8,%esp
    21a2:	68 b5 53 00 00       	push   $0x53b5
    21a7:	6a 01                	push   $0x1
    21a9:	e8 b2 2b 00 00       	call   4d60 <printf>
          exit();
    21ae:	e8 1a 2a 00 00       	call   4bcd <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    21b3:	83 ec 08             	sub    $0x8,%esp
    21b6:	68 02 02 00 00       	push   $0x202
    21bb:	56                   	push   %esi
    21bc:	e8 4c 2a 00 00       	call   4c0d <open>
      if(fd < 0){
    21c1:	83 c4 10             	add    $0x10,%esp
      fd = open(fname, O_CREATE | O_RDWR);
    21c4:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    21c6:	85 c0                	test   %eax,%eax
    21c8:	78 45                	js     220f <fourfiles+0x19f>
      memset(buf, '0'+pi, 512);
    21ca:	83 ec 04             	sub    $0x4,%esp
    21cd:	83 c3 30             	add    $0x30,%ebx
    21d0:	68 00 02 00 00       	push   $0x200
    21d5:	53                   	push   %ebx
    21d6:	bb 0c 00 00 00       	mov    $0xc,%ebx
    21db:	68 40 98 00 00       	push   $0x9840
    21e0:	e8 fb 25 00 00       	call   47e0 <memset>
    21e5:	83 c4 10             	add    $0x10,%esp
        if((n = write(fd, buf, 500)) != 500){
    21e8:	83 ec 04             	sub    $0x4,%esp
    21eb:	68 f4 01 00 00       	push   $0x1f4
    21f0:	68 40 98 00 00       	push   $0x9840
    21f5:	56                   	push   %esi
    21f6:	e8 f2 29 00 00       	call   4bed <write>
    21fb:	83 c4 10             	add    $0x10,%esp
    21fe:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    2203:	75 4a                	jne    224f <fourfiles+0x1df>
      for(i = 0; i < 12; i++){
    2205:	83 eb 01             	sub    $0x1,%ebx
    2208:	75 de                	jne    21e8 <fourfiles+0x178>
      exit();
    220a:	e8 be 29 00 00       	call   4bcd <exit>
        printf(1, "create failed\n");
    220f:	51                   	push   %ecx
    2210:	51                   	push   %ecx
    2211:	68 2f 56 00 00       	push   $0x562f
    2216:	6a 01                	push   $0x1
    2218:	e8 43 2b 00 00       	call   4d60 <printf>
        exit();
    221d:	e8 ab 29 00 00       	call   4bcd <exit>
    2222:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      printf(1, "fork failed\n");
    2228:	83 ec 08             	sub    $0x8,%esp
    222b:	68 6c 5e 00 00       	push   $0x5e6c
    2230:	6a 01                	push   $0x1
    2232:	e8 29 2b 00 00       	call   4d60 <printf>
      exit();
    2237:	e8 91 29 00 00       	call   4bcd <exit>
      printf(1, "wrong length %d\n", total);
    223c:	50                   	push   %eax
    223d:	53                   	push   %ebx
    223e:	68 c1 53 00 00       	push   $0x53c1
    2243:	6a 01                	push   $0x1
    2245:	e8 16 2b 00 00       	call   4d60 <printf>
      exit();
    224a:	e8 7e 29 00 00       	call   4bcd <exit>
          printf(1, "write failed %d\n", n);
    224f:	52                   	push   %edx
    2250:	50                   	push   %eax
    2251:	68 a4 53 00 00       	push   $0x53a4
    2256:	6a 01                	push   $0x1
    2258:	e8 03 2b 00 00       	call   4d60 <printf>
          exit();
    225d:	e8 6b 29 00 00       	call   4bcd <exit>
    2262:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002270 <createdelete>:
{
    2270:	f3 0f 1e fb          	endbr32 
    2274:	55                   	push   %ebp
    2275:	89 e5                	mov    %esp,%ebp
    2277:	57                   	push   %edi
    2278:	56                   	push   %esi
    2279:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    227a:	31 db                	xor    %ebx,%ebx
{
    227c:	83 ec 44             	sub    $0x44,%esp
  printf(1, "createdelete test\n");
    227f:	68 e0 53 00 00       	push   $0x53e0
    2284:	6a 01                	push   $0x1
    2286:	e8 d5 2a 00 00       	call   4d60 <printf>
    228b:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    228e:	e8 32 29 00 00       	call   4bc5 <fork>
    if(pid < 0){
    2293:	85 c0                	test   %eax,%eax
    2295:	0f 88 ce 01 00 00    	js     2469 <createdelete+0x1f9>
    if(pid == 0){
    229b:	0f 84 17 01 00 00    	je     23b8 <createdelete+0x148>
  for(pi = 0; pi < 4; pi++){
    22a1:	83 c3 01             	add    $0x1,%ebx
    22a4:	83 fb 04             	cmp    $0x4,%ebx
    22a7:	75 e5                	jne    228e <createdelete+0x1e>
    wait();
    22a9:	e8 27 29 00 00       	call   4bd5 <wait>
    22ae:	8d 7d c8             	lea    -0x38(%ebp),%edi
  name[0] = name[1] = name[2] = 0;
    22b1:	be ff ff ff ff       	mov    $0xffffffff,%esi
    wait();
    22b6:	e8 1a 29 00 00       	call   4bd5 <wait>
    22bb:	e8 15 29 00 00       	call   4bd5 <wait>
    22c0:	e8 10 29 00 00       	call   4bd5 <wait>
  name[0] = name[1] = name[2] = 0;
    22c5:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
  for(i = 0; i < N; i++){
    22c9:	89 7d c0             	mov    %edi,-0x40(%ebp)
    22cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    for(pi = 0; pi < 4; pi++){
    22d0:	8d 46 31             	lea    0x31(%esi),%eax
    22d3:	89 f7                	mov    %esi,%edi
    22d5:	83 c6 01             	add    $0x1,%esi
    22d8:	83 fe 09             	cmp    $0x9,%esi
    22db:	88 45 c7             	mov    %al,-0x39(%ebp)
    22de:	0f 9f c3             	setg   %bl
    22e1:	85 f6                	test   %esi,%esi
    22e3:	0f 94 c0             	sete   %al
    22e6:	09 c3                	or     %eax,%ebx
    22e8:	88 5d c6             	mov    %bl,-0x3a(%ebp)
      name[2] = '\0';
    22eb:	bb 70 00 00 00       	mov    $0x70,%ebx
      fd = open(name, 0);
    22f0:	83 ec 08             	sub    $0x8,%esp
      name[1] = '0' + i;
    22f3:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      name[0] = 'p' + pi;
    22f7:	88 5d c8             	mov    %bl,-0x38(%ebp)
      fd = open(name, 0);
    22fa:	6a 00                	push   $0x0
    22fc:	ff 75 c0             	pushl  -0x40(%ebp)
      name[1] = '0' + i;
    22ff:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    2302:	e8 06 29 00 00       	call   4c0d <open>
      if((i == 0 || i >= N/2) && fd < 0){
    2307:	83 c4 10             	add    $0x10,%esp
    230a:	80 7d c6 00          	cmpb   $0x0,-0x3a(%ebp)
    230e:	0f 84 8c 00 00 00    	je     23a0 <createdelete+0x130>
    2314:	85 c0                	test   %eax,%eax
    2316:	0f 88 21 01 00 00    	js     243d <createdelete+0x1cd>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    231c:	83 ff 08             	cmp    $0x8,%edi
    231f:	0f 86 60 01 00 00    	jbe    2485 <createdelete+0x215>
        close(fd);
    2325:	83 ec 0c             	sub    $0xc,%esp
    2328:	50                   	push   %eax
    2329:	e8 c7 28 00 00       	call   4bf5 <close>
    232e:	83 c4 10             	add    $0x10,%esp
    for(pi = 0; pi < 4; pi++){
    2331:	83 c3 01             	add    $0x1,%ebx
    2334:	80 fb 74             	cmp    $0x74,%bl
    2337:	75 b7                	jne    22f0 <createdelete+0x80>
  for(i = 0; i < N; i++){
    2339:	83 fe 13             	cmp    $0x13,%esi
    233c:	75 92                	jne    22d0 <createdelete+0x60>
    233e:	8b 7d c0             	mov    -0x40(%ebp),%edi
    2341:	be 70 00 00 00       	mov    $0x70,%esi
    2346:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    234d:	8d 76 00             	lea    0x0(%esi),%esi
    for(pi = 0; pi < 4; pi++){
    2350:	8d 46 c0             	lea    -0x40(%esi),%eax
  name[0] = name[1] = name[2] = 0;
    2353:	bb 04 00 00 00       	mov    $0x4,%ebx
    2358:	88 45 c7             	mov    %al,-0x39(%ebp)
      unlink(name);
    235b:	83 ec 0c             	sub    $0xc,%esp
      name[0] = 'p' + i;
    235e:	89 f0                	mov    %esi,%eax
      unlink(name);
    2360:	57                   	push   %edi
      name[0] = 'p' + i;
    2361:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    2364:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
    2368:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    236b:	e8 ad 28 00 00       	call   4c1d <unlink>
    for(pi = 0; pi < 4; pi++){
    2370:	83 c4 10             	add    $0x10,%esp
    2373:	83 eb 01             	sub    $0x1,%ebx
    2376:	75 e3                	jne    235b <createdelete+0xeb>
  for(i = 0; i < N; i++){
    2378:	83 c6 01             	add    $0x1,%esi
    237b:	89 f0                	mov    %esi,%eax
    237d:	3c 84                	cmp    $0x84,%al
    237f:	75 cf                	jne    2350 <createdelete+0xe0>
  printf(1, "createdelete ok\n");
    2381:	83 ec 08             	sub    $0x8,%esp
    2384:	68 f3 53 00 00       	push   $0x53f3
    2389:	6a 01                	push   $0x1
    238b:	e8 d0 29 00 00       	call   4d60 <printf>
}
    2390:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2393:	5b                   	pop    %ebx
    2394:	5e                   	pop    %esi
    2395:	5f                   	pop    %edi
    2396:	5d                   	pop    %ebp
    2397:	c3                   	ret    
    2398:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    239f:	90                   	nop
      } else if((i >= 1 && i < N/2) && fd >= 0){
    23a0:	83 ff 08             	cmp    $0x8,%edi
    23a3:	0f 86 d4 00 00 00    	jbe    247d <createdelete+0x20d>
      if(fd >= 0)
    23a9:	85 c0                	test   %eax,%eax
    23ab:	78 84                	js     2331 <createdelete+0xc1>
    23ad:	e9 73 ff ff ff       	jmp    2325 <createdelete+0xb5>
    23b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      name[0] = 'p' + pi;
    23b8:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    23bb:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    23bf:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[0] = 'p' + pi;
    23c2:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[2] = '\0';
    23c5:	31 db                	xor    %ebx,%ebx
    23c7:	eb 0f                	jmp    23d8 <createdelete+0x168>
    23c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for(i = 0; i < N; i++){
    23d0:	83 fb 13             	cmp    $0x13,%ebx
    23d3:	74 63                	je     2438 <createdelete+0x1c8>
    23d5:	83 c3 01             	add    $0x1,%ebx
        fd = open(name, O_CREATE | O_RDWR);
    23d8:	83 ec 08             	sub    $0x8,%esp
        name[1] = '0' + i;
    23db:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    23de:	68 02 02 00 00       	push   $0x202
    23e3:	57                   	push   %edi
        name[1] = '0' + i;
    23e4:	88 45 c9             	mov    %al,-0x37(%ebp)
        fd = open(name, O_CREATE | O_RDWR);
    23e7:	e8 21 28 00 00       	call   4c0d <open>
        if(fd < 0){
    23ec:	83 c4 10             	add    $0x10,%esp
    23ef:	85 c0                	test   %eax,%eax
    23f1:	78 62                	js     2455 <createdelete+0x1e5>
        close(fd);
    23f3:	83 ec 0c             	sub    $0xc,%esp
    23f6:	50                   	push   %eax
    23f7:	e8 f9 27 00 00       	call   4bf5 <close>
        if(i > 0 && (i % 2 ) == 0){
    23fc:	83 c4 10             	add    $0x10,%esp
    23ff:	85 db                	test   %ebx,%ebx
    2401:	74 d2                	je     23d5 <createdelete+0x165>
    2403:	f6 c3 01             	test   $0x1,%bl
    2406:	75 c8                	jne    23d0 <createdelete+0x160>
          if(unlink(name) < 0){
    2408:	83 ec 0c             	sub    $0xc,%esp
          name[1] = '0' + (i / 2);
    240b:	89 d8                	mov    %ebx,%eax
          if(unlink(name) < 0){
    240d:	57                   	push   %edi
          name[1] = '0' + (i / 2);
    240e:	d1 f8                	sar    %eax
    2410:	83 c0 30             	add    $0x30,%eax
    2413:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    2416:	e8 02 28 00 00       	call   4c1d <unlink>
    241b:	83 c4 10             	add    $0x10,%esp
    241e:	85 c0                	test   %eax,%eax
    2420:	79 ae                	jns    23d0 <createdelete+0x160>
            printf(1, "unlink failed\n");
    2422:	52                   	push   %edx
    2423:	52                   	push   %edx
    2424:	68 e1 4f 00 00       	push   $0x4fe1
    2429:	6a 01                	push   $0x1
    242b:	e8 30 29 00 00       	call   4d60 <printf>
            exit();
    2430:	e8 98 27 00 00       	call   4bcd <exit>
    2435:	8d 76 00             	lea    0x0(%esi),%esi
      exit();
    2438:	e8 90 27 00 00       	call   4bcd <exit>
    243d:	8b 7d c0             	mov    -0x40(%ebp),%edi
        printf(1, "oops createdelete %s didn't exist\n", name);
    2440:	83 ec 04             	sub    $0x4,%esp
    2443:	57                   	push   %edi
    2444:	68 a0 60 00 00       	push   $0x60a0
    2449:	6a 01                	push   $0x1
    244b:	e8 10 29 00 00       	call   4d60 <printf>
        exit();
    2450:	e8 78 27 00 00       	call   4bcd <exit>
          printf(1, "create failed\n");
    2455:	83 ec 08             	sub    $0x8,%esp
    2458:	68 2f 56 00 00       	push   $0x562f
    245d:	6a 01                	push   $0x1
    245f:	e8 fc 28 00 00       	call   4d60 <printf>
          exit();
    2464:	e8 64 27 00 00       	call   4bcd <exit>
      printf(1, "fork failed\n");
    2469:	83 ec 08             	sub    $0x8,%esp
    246c:	68 6c 5e 00 00       	push   $0x5e6c
    2471:	6a 01                	push   $0x1
    2473:	e8 e8 28 00 00       	call   4d60 <printf>
      exit();
    2478:	e8 50 27 00 00       	call   4bcd <exit>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    247d:	85 c0                	test   %eax,%eax
    247f:	0f 88 ac fe ff ff    	js     2331 <createdelete+0xc1>
    2485:	8b 7d c0             	mov    -0x40(%ebp),%edi
        printf(1, "oops createdelete %s did exist\n", name);
    2488:	50                   	push   %eax
    2489:	57                   	push   %edi
    248a:	68 c4 60 00 00       	push   $0x60c4
    248f:	6a 01                	push   $0x1
    2491:	e8 ca 28 00 00       	call   4d60 <printf>
        exit();
    2496:	e8 32 27 00 00       	call   4bcd <exit>
    249b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    249f:	90                   	nop

000024a0 <unlinkread>:
{
    24a0:	f3 0f 1e fb          	endbr32 
    24a4:	55                   	push   %ebp
    24a5:	89 e5                	mov    %esp,%ebp
    24a7:	56                   	push   %esi
    24a8:	53                   	push   %ebx
  printf(1, "unlinkread test\n");
    24a9:	83 ec 08             	sub    $0x8,%esp
    24ac:	68 04 54 00 00       	push   $0x5404
    24b1:	6a 01                	push   $0x1
    24b3:	e8 a8 28 00 00       	call   4d60 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    24b8:	5b                   	pop    %ebx
    24b9:	5e                   	pop    %esi
    24ba:	68 02 02 00 00       	push   $0x202
    24bf:	68 15 54 00 00       	push   $0x5415
    24c4:	e8 44 27 00 00       	call   4c0d <open>
  if(fd < 0){
    24c9:	83 c4 10             	add    $0x10,%esp
    24cc:	85 c0                	test   %eax,%eax
    24ce:	0f 88 e6 00 00 00    	js     25ba <unlinkread+0x11a>
  write(fd, "hello", 5);
    24d4:	83 ec 04             	sub    $0x4,%esp
    24d7:	89 c3                	mov    %eax,%ebx
    24d9:	6a 05                	push   $0x5
    24db:	68 3a 54 00 00       	push   $0x543a
    24e0:	50                   	push   %eax
    24e1:	e8 07 27 00 00       	call   4bed <write>
  close(fd);
    24e6:	89 1c 24             	mov    %ebx,(%esp)
    24e9:	e8 07 27 00 00       	call   4bf5 <close>
  fd = open("unlinkread", O_RDWR);
    24ee:	58                   	pop    %eax
    24ef:	5a                   	pop    %edx
    24f0:	6a 02                	push   $0x2
    24f2:	68 15 54 00 00       	push   $0x5415
    24f7:	e8 11 27 00 00       	call   4c0d <open>
  if(fd < 0){
    24fc:	83 c4 10             	add    $0x10,%esp
  fd = open("unlinkread", O_RDWR);
    24ff:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2501:	85 c0                	test   %eax,%eax
    2503:	0f 88 10 01 00 00    	js     2619 <unlinkread+0x179>
  if(unlink("unlinkread") != 0){
    2509:	83 ec 0c             	sub    $0xc,%esp
    250c:	68 15 54 00 00       	push   $0x5415
    2511:	e8 07 27 00 00       	call   4c1d <unlink>
    2516:	83 c4 10             	add    $0x10,%esp
    2519:	85 c0                	test   %eax,%eax
    251b:	0f 85 e5 00 00 00    	jne    2606 <unlinkread+0x166>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    2521:	83 ec 08             	sub    $0x8,%esp
    2524:	68 02 02 00 00       	push   $0x202
    2529:	68 15 54 00 00       	push   $0x5415
    252e:	e8 da 26 00 00       	call   4c0d <open>
  write(fd1, "yyy", 3);
    2533:	83 c4 0c             	add    $0xc,%esp
    2536:	6a 03                	push   $0x3
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    2538:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    253a:	68 72 54 00 00       	push   $0x5472
    253f:	50                   	push   %eax
    2540:	e8 a8 26 00 00       	call   4bed <write>
  close(fd1);
    2545:	89 34 24             	mov    %esi,(%esp)
    2548:	e8 a8 26 00 00       	call   4bf5 <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    254d:	83 c4 0c             	add    $0xc,%esp
    2550:	68 00 20 00 00       	push   $0x2000
    2555:	68 40 98 00 00       	push   $0x9840
    255a:	53                   	push   %ebx
    255b:	e8 85 26 00 00       	call   4be5 <read>
    2560:	83 c4 10             	add    $0x10,%esp
    2563:	83 f8 05             	cmp    $0x5,%eax
    2566:	0f 85 87 00 00 00    	jne    25f3 <unlinkread+0x153>
  if(buf[0] != 'h'){
    256c:	80 3d 40 98 00 00 68 	cmpb   $0x68,0x9840
    2573:	75 6b                	jne    25e0 <unlinkread+0x140>
  if(write(fd, buf, 10) != 10){
    2575:	83 ec 04             	sub    $0x4,%esp
    2578:	6a 0a                	push   $0xa
    257a:	68 40 98 00 00       	push   $0x9840
    257f:	53                   	push   %ebx
    2580:	e8 68 26 00 00       	call   4bed <write>
    2585:	83 c4 10             	add    $0x10,%esp
    2588:	83 f8 0a             	cmp    $0xa,%eax
    258b:	75 40                	jne    25cd <unlinkread+0x12d>
  close(fd);
    258d:	83 ec 0c             	sub    $0xc,%esp
    2590:	53                   	push   %ebx
    2591:	e8 5f 26 00 00       	call   4bf5 <close>
  unlink("unlinkread");
    2596:	c7 04 24 15 54 00 00 	movl   $0x5415,(%esp)
    259d:	e8 7b 26 00 00       	call   4c1d <unlink>
  printf(1, "unlinkread ok\n");
    25a2:	58                   	pop    %eax
    25a3:	5a                   	pop    %edx
    25a4:	68 bd 54 00 00       	push   $0x54bd
    25a9:	6a 01                	push   $0x1
    25ab:	e8 b0 27 00 00       	call   4d60 <printf>
}
    25b0:	83 c4 10             	add    $0x10,%esp
    25b3:	8d 65 f8             	lea    -0x8(%ebp),%esp
    25b6:	5b                   	pop    %ebx
    25b7:	5e                   	pop    %esi
    25b8:	5d                   	pop    %ebp
    25b9:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    25ba:	51                   	push   %ecx
    25bb:	51                   	push   %ecx
    25bc:	68 20 54 00 00       	push   $0x5420
    25c1:	6a 01                	push   $0x1
    25c3:	e8 98 27 00 00       	call   4d60 <printf>
    exit();
    25c8:	e8 00 26 00 00       	call   4bcd <exit>
    printf(1, "unlinkread write failed\n");
    25cd:	51                   	push   %ecx
    25ce:	51                   	push   %ecx
    25cf:	68 a4 54 00 00       	push   $0x54a4
    25d4:	6a 01                	push   $0x1
    25d6:	e8 85 27 00 00       	call   4d60 <printf>
    exit();
    25db:	e8 ed 25 00 00       	call   4bcd <exit>
    printf(1, "unlinkread wrong data\n");
    25e0:	53                   	push   %ebx
    25e1:	53                   	push   %ebx
    25e2:	68 8d 54 00 00       	push   $0x548d
    25e7:	6a 01                	push   $0x1
    25e9:	e8 72 27 00 00       	call   4d60 <printf>
    exit();
    25ee:	e8 da 25 00 00       	call   4bcd <exit>
    printf(1, "unlinkread read failed");
    25f3:	56                   	push   %esi
    25f4:	56                   	push   %esi
    25f5:	68 76 54 00 00       	push   $0x5476
    25fa:	6a 01                	push   $0x1
    25fc:	e8 5f 27 00 00       	call   4d60 <printf>
    exit();
    2601:	e8 c7 25 00 00       	call   4bcd <exit>
    printf(1, "unlink unlinkread failed\n");
    2606:	50                   	push   %eax
    2607:	50                   	push   %eax
    2608:	68 58 54 00 00       	push   $0x5458
    260d:	6a 01                	push   $0x1
    260f:	e8 4c 27 00 00       	call   4d60 <printf>
    exit();
    2614:	e8 b4 25 00 00       	call   4bcd <exit>
    printf(1, "open unlinkread failed\n");
    2619:	50                   	push   %eax
    261a:	50                   	push   %eax
    261b:	68 40 54 00 00       	push   $0x5440
    2620:	6a 01                	push   $0x1
    2622:	e8 39 27 00 00       	call   4d60 <printf>
    exit();
    2627:	e8 a1 25 00 00       	call   4bcd <exit>
    262c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00002630 <linktest>:
{
    2630:	f3 0f 1e fb          	endbr32 
    2634:	55                   	push   %ebp
    2635:	89 e5                	mov    %esp,%ebp
    2637:	53                   	push   %ebx
    2638:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "linktest\n");
    263b:	68 cc 54 00 00       	push   $0x54cc
    2640:	6a 01                	push   $0x1
    2642:	e8 19 27 00 00       	call   4d60 <printf>
  unlink("lf1");
    2647:	c7 04 24 d6 54 00 00 	movl   $0x54d6,(%esp)
    264e:	e8 ca 25 00 00       	call   4c1d <unlink>
  unlink("lf2");
    2653:	c7 04 24 da 54 00 00 	movl   $0x54da,(%esp)
    265a:	e8 be 25 00 00       	call   4c1d <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    265f:	58                   	pop    %eax
    2660:	5a                   	pop    %edx
    2661:	68 02 02 00 00       	push   $0x202
    2666:	68 d6 54 00 00       	push   $0x54d6
    266b:	e8 9d 25 00 00       	call   4c0d <open>
  if(fd < 0){
    2670:	83 c4 10             	add    $0x10,%esp
    2673:	85 c0                	test   %eax,%eax
    2675:	0f 88 1e 01 00 00    	js     2799 <linktest+0x169>
  if(write(fd, "hello", 5) != 5){
    267b:	83 ec 04             	sub    $0x4,%esp
    267e:	89 c3                	mov    %eax,%ebx
    2680:	6a 05                	push   $0x5
    2682:	68 3a 54 00 00       	push   $0x543a
    2687:	50                   	push   %eax
    2688:	e8 60 25 00 00       	call   4bed <write>
    268d:	83 c4 10             	add    $0x10,%esp
    2690:	83 f8 05             	cmp    $0x5,%eax
    2693:	0f 85 98 01 00 00    	jne    2831 <linktest+0x201>
  close(fd);
    2699:	83 ec 0c             	sub    $0xc,%esp
    269c:	53                   	push   %ebx
    269d:	e8 53 25 00 00       	call   4bf5 <close>
  if(link("lf1", "lf2") < 0){
    26a2:	5b                   	pop    %ebx
    26a3:	58                   	pop    %eax
    26a4:	68 da 54 00 00       	push   $0x54da
    26a9:	68 d6 54 00 00       	push   $0x54d6
    26ae:	e8 7a 25 00 00       	call   4c2d <link>
    26b3:	83 c4 10             	add    $0x10,%esp
    26b6:	85 c0                	test   %eax,%eax
    26b8:	0f 88 60 01 00 00    	js     281e <linktest+0x1ee>
  unlink("lf1");
    26be:	83 ec 0c             	sub    $0xc,%esp
    26c1:	68 d6 54 00 00       	push   $0x54d6
    26c6:	e8 52 25 00 00       	call   4c1d <unlink>
  if(open("lf1", 0) >= 0){
    26cb:	58                   	pop    %eax
    26cc:	5a                   	pop    %edx
    26cd:	6a 00                	push   $0x0
    26cf:	68 d6 54 00 00       	push   $0x54d6
    26d4:	e8 34 25 00 00       	call   4c0d <open>
    26d9:	83 c4 10             	add    $0x10,%esp
    26dc:	85 c0                	test   %eax,%eax
    26de:	0f 89 27 01 00 00    	jns    280b <linktest+0x1db>
  fd = open("lf2", 0);
    26e4:	83 ec 08             	sub    $0x8,%esp
    26e7:	6a 00                	push   $0x0
    26e9:	68 da 54 00 00       	push   $0x54da
    26ee:	e8 1a 25 00 00       	call   4c0d <open>
  if(fd < 0){
    26f3:	83 c4 10             	add    $0x10,%esp
  fd = open("lf2", 0);
    26f6:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    26f8:	85 c0                	test   %eax,%eax
    26fa:	0f 88 f8 00 00 00    	js     27f8 <linktest+0x1c8>
  if(read(fd, buf, sizeof(buf)) != 5){
    2700:	83 ec 04             	sub    $0x4,%esp
    2703:	68 00 20 00 00       	push   $0x2000
    2708:	68 40 98 00 00       	push   $0x9840
    270d:	50                   	push   %eax
    270e:	e8 d2 24 00 00       	call   4be5 <read>
    2713:	83 c4 10             	add    $0x10,%esp
    2716:	83 f8 05             	cmp    $0x5,%eax
    2719:	0f 85 c6 00 00 00    	jne    27e5 <linktest+0x1b5>
  close(fd);
    271f:	83 ec 0c             	sub    $0xc,%esp
    2722:	53                   	push   %ebx
    2723:	e8 cd 24 00 00       	call   4bf5 <close>
  if(link("lf2", "lf2") >= 0){
    2728:	58                   	pop    %eax
    2729:	5a                   	pop    %edx
    272a:	68 da 54 00 00       	push   $0x54da
    272f:	68 da 54 00 00       	push   $0x54da
    2734:	e8 f4 24 00 00       	call   4c2d <link>
    2739:	83 c4 10             	add    $0x10,%esp
    273c:	85 c0                	test   %eax,%eax
    273e:	0f 89 8e 00 00 00    	jns    27d2 <linktest+0x1a2>
  unlink("lf2");
    2744:	83 ec 0c             	sub    $0xc,%esp
    2747:	68 da 54 00 00       	push   $0x54da
    274c:	e8 cc 24 00 00       	call   4c1d <unlink>
  if(link("lf2", "lf1") >= 0){
    2751:	59                   	pop    %ecx
    2752:	5b                   	pop    %ebx
    2753:	68 d6 54 00 00       	push   $0x54d6
    2758:	68 da 54 00 00       	push   $0x54da
    275d:	e8 cb 24 00 00       	call   4c2d <link>
    2762:	83 c4 10             	add    $0x10,%esp
    2765:	85 c0                	test   %eax,%eax
    2767:	79 56                	jns    27bf <linktest+0x18f>
  if(link(".", "lf1") >= 0){
    2769:	83 ec 08             	sub    $0x8,%esp
    276c:	68 d6 54 00 00       	push   $0x54d6
    2771:	68 9e 57 00 00       	push   $0x579e
    2776:	e8 b2 24 00 00       	call   4c2d <link>
    277b:	83 c4 10             	add    $0x10,%esp
    277e:	85 c0                	test   %eax,%eax
    2780:	79 2a                	jns    27ac <linktest+0x17c>
  printf(1, "linktest ok\n");
    2782:	83 ec 08             	sub    $0x8,%esp
    2785:	68 74 55 00 00       	push   $0x5574
    278a:	6a 01                	push   $0x1
    278c:	e8 cf 25 00 00       	call   4d60 <printf>
}
    2791:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2794:	83 c4 10             	add    $0x10,%esp
    2797:	c9                   	leave  
    2798:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    2799:	50                   	push   %eax
    279a:	50                   	push   %eax
    279b:	68 de 54 00 00       	push   $0x54de
    27a0:	6a 01                	push   $0x1
    27a2:	e8 b9 25 00 00       	call   4d60 <printf>
    exit();
    27a7:	e8 21 24 00 00       	call   4bcd <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    27ac:	50                   	push   %eax
    27ad:	50                   	push   %eax
    27ae:	68 58 55 00 00       	push   $0x5558
    27b3:	6a 01                	push   $0x1
    27b5:	e8 a6 25 00 00       	call   4d60 <printf>
    exit();
    27ba:	e8 0e 24 00 00       	call   4bcd <exit>
    printf(1, "link non-existant succeeded! oops\n");
    27bf:	52                   	push   %edx
    27c0:	52                   	push   %edx
    27c1:	68 0c 61 00 00       	push   $0x610c
    27c6:	6a 01                	push   $0x1
    27c8:	e8 93 25 00 00       	call   4d60 <printf>
    exit();
    27cd:	e8 fb 23 00 00       	call   4bcd <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    27d2:	50                   	push   %eax
    27d3:	50                   	push   %eax
    27d4:	68 3a 55 00 00       	push   $0x553a
    27d9:	6a 01                	push   $0x1
    27db:	e8 80 25 00 00       	call   4d60 <printf>
    exit();
    27e0:	e8 e8 23 00 00       	call   4bcd <exit>
    printf(1, "read lf2 failed\n");
    27e5:	51                   	push   %ecx
    27e6:	51                   	push   %ecx
    27e7:	68 29 55 00 00       	push   $0x5529
    27ec:	6a 01                	push   $0x1
    27ee:	e8 6d 25 00 00       	call   4d60 <printf>
    exit();
    27f3:	e8 d5 23 00 00       	call   4bcd <exit>
    printf(1, "open lf2 failed\n");
    27f8:	53                   	push   %ebx
    27f9:	53                   	push   %ebx
    27fa:	68 18 55 00 00       	push   $0x5518
    27ff:	6a 01                	push   $0x1
    2801:	e8 5a 25 00 00       	call   4d60 <printf>
    exit();
    2806:	e8 c2 23 00 00       	call   4bcd <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    280b:	50                   	push   %eax
    280c:	50                   	push   %eax
    280d:	68 e4 60 00 00       	push   $0x60e4
    2812:	6a 01                	push   $0x1
    2814:	e8 47 25 00 00       	call   4d60 <printf>
    exit();
    2819:	e8 af 23 00 00       	call   4bcd <exit>
    printf(1, "link lf1 lf2 failed\n");
    281e:	51                   	push   %ecx
    281f:	51                   	push   %ecx
    2820:	68 03 55 00 00       	push   $0x5503
    2825:	6a 01                	push   $0x1
    2827:	e8 34 25 00 00       	call   4d60 <printf>
    exit();
    282c:	e8 9c 23 00 00       	call   4bcd <exit>
    printf(1, "write lf1 failed\n");
    2831:	50                   	push   %eax
    2832:	50                   	push   %eax
    2833:	68 f1 54 00 00       	push   $0x54f1
    2838:	6a 01                	push   $0x1
    283a:	e8 21 25 00 00       	call   4d60 <printf>
    exit();
    283f:	e8 89 23 00 00       	call   4bcd <exit>
    2844:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    284b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    284f:	90                   	nop

00002850 <concreate>:
{
    2850:	f3 0f 1e fb          	endbr32 
    2854:	55                   	push   %ebp
    2855:	89 e5                	mov    %esp,%ebp
    2857:	57                   	push   %edi
    2858:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    2859:	31 f6                	xor    %esi,%esi
{
    285b:	53                   	push   %ebx
    285c:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    285f:	83 ec 64             	sub    $0x64,%esp
  printf(1, "concreate test\n");
    2862:	68 81 55 00 00       	push   $0x5581
    2867:	6a 01                	push   $0x1
    2869:	e8 f2 24 00 00       	call   4d60 <printf>
  file[0] = 'C';
    286e:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    2872:	83 c4 10             	add    $0x10,%esp
    2875:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
  for(i = 0; i < 40; i++){
    2879:	eb 48                	jmp    28c3 <concreate+0x73>
    287b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    287f:	90                   	nop
    2880:	69 c6 ab aa aa aa    	imul   $0xaaaaaaab,%esi,%eax
    if(pid && (i % 3) == 1){
    2886:	3d ab aa aa aa       	cmp    $0xaaaaaaab,%eax
    288b:	0f 83 af 00 00 00    	jae    2940 <concreate+0xf0>
      fd = open(file, O_CREATE | O_RDWR);
    2891:	83 ec 08             	sub    $0x8,%esp
    2894:	68 02 02 00 00       	push   $0x202
    2899:	53                   	push   %ebx
    289a:	e8 6e 23 00 00       	call   4c0d <open>
      if(fd < 0){
    289f:	83 c4 10             	add    $0x10,%esp
    28a2:	85 c0                	test   %eax,%eax
    28a4:	78 5f                	js     2905 <concreate+0xb5>
      close(fd);
    28a6:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 40; i++){
    28a9:	83 c6 01             	add    $0x1,%esi
      close(fd);
    28ac:	50                   	push   %eax
    28ad:	e8 43 23 00 00       	call   4bf5 <close>
    28b2:	83 c4 10             	add    $0x10,%esp
      wait();
    28b5:	e8 1b 23 00 00       	call   4bd5 <wait>
  for(i = 0; i < 40; i++){
    28ba:	83 fe 28             	cmp    $0x28,%esi
    28bd:	0f 84 9f 00 00 00    	je     2962 <concreate+0x112>
    unlink(file);
    28c3:	83 ec 0c             	sub    $0xc,%esp
    file[1] = '0' + i;
    28c6:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    28c9:	53                   	push   %ebx
    file[1] = '0' + i;
    28ca:	88 45 ae             	mov    %al,-0x52(%ebp)
    unlink(file);
    28cd:	e8 4b 23 00 00       	call   4c1d <unlink>
    pid = fork();
    28d2:	e8 ee 22 00 00       	call   4bc5 <fork>
    if(pid && (i % 3) == 1){
    28d7:	83 c4 10             	add    $0x10,%esp
    28da:	85 c0                	test   %eax,%eax
    28dc:	75 a2                	jne    2880 <concreate+0x30>
      link("C0", file);
    28de:	69 f6 cd cc cc cc    	imul   $0xcccccccd,%esi,%esi
    } else if(pid == 0 && (i % 5) == 1){
    28e4:	81 fe cd cc cc cc    	cmp    $0xcccccccd,%esi
    28ea:	73 34                	jae    2920 <concreate+0xd0>
      fd = open(file, O_CREATE | O_RDWR);
    28ec:	83 ec 08             	sub    $0x8,%esp
    28ef:	68 02 02 00 00       	push   $0x202
    28f4:	53                   	push   %ebx
    28f5:	e8 13 23 00 00       	call   4c0d <open>
      if(fd < 0){
    28fa:	83 c4 10             	add    $0x10,%esp
    28fd:	85 c0                	test   %eax,%eax
    28ff:	0f 89 39 02 00 00    	jns    2b3e <concreate+0x2ee>
        printf(1, "concreate create %s failed\n", file);
    2905:	83 ec 04             	sub    $0x4,%esp
    2908:	53                   	push   %ebx
    2909:	68 94 55 00 00       	push   $0x5594
    290e:	6a 01                	push   $0x1
    2910:	e8 4b 24 00 00       	call   4d60 <printf>
        exit();
    2915:	e8 b3 22 00 00       	call   4bcd <exit>
    291a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      link("C0", file);
    2920:	83 ec 08             	sub    $0x8,%esp
    2923:	53                   	push   %ebx
    2924:	68 91 55 00 00       	push   $0x5591
    2929:	e8 ff 22 00 00       	call   4c2d <link>
    292e:	83 c4 10             	add    $0x10,%esp
      exit();
    2931:	e8 97 22 00 00       	call   4bcd <exit>
    2936:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    293d:	8d 76 00             	lea    0x0(%esi),%esi
      link("C0", file);
    2940:	83 ec 08             	sub    $0x8,%esp
  for(i = 0; i < 40; i++){
    2943:	83 c6 01             	add    $0x1,%esi
      link("C0", file);
    2946:	53                   	push   %ebx
    2947:	68 91 55 00 00       	push   $0x5591
    294c:	e8 dc 22 00 00       	call   4c2d <link>
    2951:	83 c4 10             	add    $0x10,%esp
      wait();
    2954:	e8 7c 22 00 00       	call   4bd5 <wait>
  for(i = 0; i < 40; i++){
    2959:	83 fe 28             	cmp    $0x28,%esi
    295c:	0f 85 61 ff ff ff    	jne    28c3 <concreate+0x73>
  memset(fa, 0, sizeof(fa));
    2962:	83 ec 04             	sub    $0x4,%esp
    2965:	8d 45 c0             	lea    -0x40(%ebp),%eax
    2968:	6a 28                	push   $0x28
    296a:	6a 00                	push   $0x0
    296c:	50                   	push   %eax
    296d:	e8 6e 1e 00 00       	call   47e0 <memset>
  fd = open(".", 0);
    2972:	5e                   	pop    %esi
    2973:	5f                   	pop    %edi
    2974:	6a 00                	push   $0x0
    2976:	68 9e 57 00 00       	push   $0x579e
    297b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    297e:	e8 8a 22 00 00       	call   4c0d <open>
  n = 0;
    2983:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  while(read(fd, &de, sizeof(de)) > 0){
    298a:	83 c4 10             	add    $0x10,%esp
  fd = open(".", 0);
    298d:	89 c6                	mov    %eax,%esi
  while(read(fd, &de, sizeof(de)) > 0){
    298f:	90                   	nop
    2990:	83 ec 04             	sub    $0x4,%esp
    2993:	6a 10                	push   $0x10
    2995:	57                   	push   %edi
    2996:	56                   	push   %esi
    2997:	e8 49 22 00 00       	call   4be5 <read>
    299c:	83 c4 10             	add    $0x10,%esp
    299f:	85 c0                	test   %eax,%eax
    29a1:	7e 3d                	jle    29e0 <concreate+0x190>
    if(de.inum == 0)
    29a3:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    29a8:	74 e6                	je     2990 <concreate+0x140>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    29aa:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    29ae:	75 e0                	jne    2990 <concreate+0x140>
    29b0:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    29b4:	75 da                	jne    2990 <concreate+0x140>
      i = de.name[1] - '0';
    29b6:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    29ba:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    29bd:	83 f8 27             	cmp    $0x27,%eax
    29c0:	0f 87 60 01 00 00    	ja     2b26 <concreate+0x2d6>
      if(fa[i]){
    29c6:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    29cb:	0f 85 3d 01 00 00    	jne    2b0e <concreate+0x2be>
      n++;
    29d1:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
      fa[i] = 1;
    29d5:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    29da:	eb b4                	jmp    2990 <concreate+0x140>
    29dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    29e0:	83 ec 0c             	sub    $0xc,%esp
    29e3:	56                   	push   %esi
    29e4:	e8 0c 22 00 00       	call   4bf5 <close>
  if(n != 40){
    29e9:	83 c4 10             	add    $0x10,%esp
    29ec:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    29f0:	0f 85 05 01 00 00    	jne    2afb <concreate+0x2ab>
  for(i = 0; i < 40; i++){
    29f6:	31 f6                	xor    %esi,%esi
    29f8:	eb 4c                	jmp    2a46 <concreate+0x1f6>
    29fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
       ((i % 3) == 1 && pid != 0)){
    2a00:	85 ff                	test   %edi,%edi
    2a02:	74 05                	je     2a09 <concreate+0x1b9>
    2a04:	83 f8 01             	cmp    $0x1,%eax
    2a07:	74 6c                	je     2a75 <concreate+0x225>
      unlink(file);
    2a09:	83 ec 0c             	sub    $0xc,%esp
    2a0c:	53                   	push   %ebx
    2a0d:	e8 0b 22 00 00       	call   4c1d <unlink>
      unlink(file);
    2a12:	89 1c 24             	mov    %ebx,(%esp)
    2a15:	e8 03 22 00 00       	call   4c1d <unlink>
      unlink(file);
    2a1a:	89 1c 24             	mov    %ebx,(%esp)
    2a1d:	e8 fb 21 00 00       	call   4c1d <unlink>
      unlink(file);
    2a22:	89 1c 24             	mov    %ebx,(%esp)
    2a25:	e8 f3 21 00 00       	call   4c1d <unlink>
    2a2a:	83 c4 10             	add    $0x10,%esp
    if(pid == 0)
    2a2d:	85 ff                	test   %edi,%edi
    2a2f:	0f 84 fc fe ff ff    	je     2931 <concreate+0xe1>
      wait();
    2a35:	e8 9b 21 00 00       	call   4bd5 <wait>
  for(i = 0; i < 40; i++){
    2a3a:	83 c6 01             	add    $0x1,%esi
    2a3d:	83 fe 28             	cmp    $0x28,%esi
    2a40:	0f 84 8a 00 00 00    	je     2ad0 <concreate+0x280>
    file[1] = '0' + i;
    2a46:	8d 46 30             	lea    0x30(%esi),%eax
    2a49:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    2a4c:	e8 74 21 00 00       	call   4bc5 <fork>
    2a51:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    2a53:	85 c0                	test   %eax,%eax
    2a55:	0f 88 8c 00 00 00    	js     2ae7 <concreate+0x297>
    if(((i % 3) == 0 && pid == 0) ||
    2a5b:	b8 ab aa aa aa       	mov    $0xaaaaaaab,%eax
    2a60:	f7 e6                	mul    %esi
    2a62:	89 d0                	mov    %edx,%eax
    2a64:	83 e2 fe             	and    $0xfffffffe,%edx
    2a67:	d1 e8                	shr    %eax
    2a69:	01 c2                	add    %eax,%edx
    2a6b:	89 f0                	mov    %esi,%eax
    2a6d:	29 d0                	sub    %edx,%eax
    2a6f:	89 c1                	mov    %eax,%ecx
    2a71:	09 f9                	or     %edi,%ecx
    2a73:	75 8b                	jne    2a00 <concreate+0x1b0>
      close(open(file, 0));
    2a75:	83 ec 08             	sub    $0x8,%esp
    2a78:	6a 00                	push   $0x0
    2a7a:	53                   	push   %ebx
    2a7b:	e8 8d 21 00 00       	call   4c0d <open>
    2a80:	89 04 24             	mov    %eax,(%esp)
    2a83:	e8 6d 21 00 00       	call   4bf5 <close>
      close(open(file, 0));
    2a88:	58                   	pop    %eax
    2a89:	5a                   	pop    %edx
    2a8a:	6a 00                	push   $0x0
    2a8c:	53                   	push   %ebx
    2a8d:	e8 7b 21 00 00       	call   4c0d <open>
    2a92:	89 04 24             	mov    %eax,(%esp)
    2a95:	e8 5b 21 00 00       	call   4bf5 <close>
      close(open(file, 0));
    2a9a:	59                   	pop    %ecx
    2a9b:	58                   	pop    %eax
    2a9c:	6a 00                	push   $0x0
    2a9e:	53                   	push   %ebx
    2a9f:	e8 69 21 00 00       	call   4c0d <open>
    2aa4:	89 04 24             	mov    %eax,(%esp)
    2aa7:	e8 49 21 00 00       	call   4bf5 <close>
      close(open(file, 0));
    2aac:	58                   	pop    %eax
    2aad:	5a                   	pop    %edx
    2aae:	6a 00                	push   $0x0
    2ab0:	53                   	push   %ebx
    2ab1:	e8 57 21 00 00       	call   4c0d <open>
    2ab6:	89 04 24             	mov    %eax,(%esp)
    2ab9:	e8 37 21 00 00       	call   4bf5 <close>
    2abe:	83 c4 10             	add    $0x10,%esp
    2ac1:	e9 67 ff ff ff       	jmp    2a2d <concreate+0x1dd>
    2ac6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2acd:	8d 76 00             	lea    0x0(%esi),%esi
  printf(1, "concreate ok\n");
    2ad0:	83 ec 08             	sub    $0x8,%esp
    2ad3:	68 e6 55 00 00       	push   $0x55e6
    2ad8:	6a 01                	push   $0x1
    2ada:	e8 81 22 00 00       	call   4d60 <printf>
}
    2adf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2ae2:	5b                   	pop    %ebx
    2ae3:	5e                   	pop    %esi
    2ae4:	5f                   	pop    %edi
    2ae5:	5d                   	pop    %ebp
    2ae6:	c3                   	ret    
      printf(1, "fork failed\n");
    2ae7:	83 ec 08             	sub    $0x8,%esp
    2aea:	68 6c 5e 00 00       	push   $0x5e6c
    2aef:	6a 01                	push   $0x1
    2af1:	e8 6a 22 00 00       	call   4d60 <printf>
      exit();
    2af6:	e8 d2 20 00 00       	call   4bcd <exit>
    printf(1, "concreate not enough files in directory listing\n");
    2afb:	51                   	push   %ecx
    2afc:	51                   	push   %ecx
    2afd:	68 30 61 00 00       	push   $0x6130
    2b02:	6a 01                	push   $0x1
    2b04:	e8 57 22 00 00       	call   4d60 <printf>
    exit();
    2b09:	e8 bf 20 00 00       	call   4bcd <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    2b0e:	83 ec 04             	sub    $0x4,%esp
    2b11:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    2b14:	50                   	push   %eax
    2b15:	68 c9 55 00 00       	push   $0x55c9
    2b1a:	6a 01                	push   $0x1
    2b1c:	e8 3f 22 00 00       	call   4d60 <printf>
        exit();
    2b21:	e8 a7 20 00 00       	call   4bcd <exit>
        printf(1, "concreate weird file %s\n", de.name);
    2b26:	83 ec 04             	sub    $0x4,%esp
    2b29:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    2b2c:	50                   	push   %eax
    2b2d:	68 b0 55 00 00       	push   $0x55b0
    2b32:	6a 01                	push   $0x1
    2b34:	e8 27 22 00 00       	call   4d60 <printf>
        exit();
    2b39:	e8 8f 20 00 00       	call   4bcd <exit>
      close(fd);
    2b3e:	83 ec 0c             	sub    $0xc,%esp
    2b41:	50                   	push   %eax
    2b42:	e8 ae 20 00 00       	call   4bf5 <close>
    2b47:	83 c4 10             	add    $0x10,%esp
    2b4a:	e9 e2 fd ff ff       	jmp    2931 <concreate+0xe1>
    2b4f:	90                   	nop

00002b50 <linkunlink>:
{
    2b50:	f3 0f 1e fb          	endbr32 
    2b54:	55                   	push   %ebp
    2b55:	89 e5                	mov    %esp,%ebp
    2b57:	57                   	push   %edi
    2b58:	56                   	push   %esi
    2b59:	53                   	push   %ebx
    2b5a:	83 ec 24             	sub    $0x24,%esp
  printf(1, "linkunlink test\n");
    2b5d:	68 f4 55 00 00       	push   $0x55f4
    2b62:	6a 01                	push   $0x1
    2b64:	e8 f7 21 00 00       	call   4d60 <printf>
  unlink("x");
    2b69:	c7 04 24 81 58 00 00 	movl   $0x5881,(%esp)
    2b70:	e8 a8 20 00 00       	call   4c1d <unlink>
  pid = fork();
    2b75:	e8 4b 20 00 00       	call   4bc5 <fork>
  if(pid < 0){
    2b7a:	83 c4 10             	add    $0x10,%esp
  pid = fork();
    2b7d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    2b80:	85 c0                	test   %eax,%eax
    2b82:	0f 88 b2 00 00 00    	js     2c3a <linkunlink+0xea>
  unsigned int x = (pid ? 1 : 97);
    2b88:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    2b8c:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    2b91:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    2b96:	19 ff                	sbb    %edi,%edi
    2b98:	83 e7 60             	and    $0x60,%edi
    2b9b:	83 c7 01             	add    $0x1,%edi
    2b9e:	eb 1a                	jmp    2bba <linkunlink+0x6a>
    } else if((x % 3) == 1){
    2ba0:	83 f8 01             	cmp    $0x1,%eax
    2ba3:	74 7b                	je     2c20 <linkunlink+0xd0>
      unlink("x");
    2ba5:	83 ec 0c             	sub    $0xc,%esp
    2ba8:	68 81 58 00 00       	push   $0x5881
    2bad:	e8 6b 20 00 00       	call   4c1d <unlink>
    2bb2:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    2bb5:	83 eb 01             	sub    $0x1,%ebx
    2bb8:	74 41                	je     2bfb <linkunlink+0xab>
    x = x * 1103515245 + 12345;
    2bba:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    2bc0:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    2bc6:	89 f8                	mov    %edi,%eax
    2bc8:	f7 e6                	mul    %esi
    2bca:	89 d0                	mov    %edx,%eax
    2bcc:	83 e2 fe             	and    $0xfffffffe,%edx
    2bcf:	d1 e8                	shr    %eax
    2bd1:	01 c2                	add    %eax,%edx
    2bd3:	89 f8                	mov    %edi,%eax
    2bd5:	29 d0                	sub    %edx,%eax
    2bd7:	75 c7                	jne    2ba0 <linkunlink+0x50>
      close(open("x", O_RDWR | O_CREATE));
    2bd9:	83 ec 08             	sub    $0x8,%esp
    2bdc:	68 02 02 00 00       	push   $0x202
    2be1:	68 81 58 00 00       	push   $0x5881
    2be6:	e8 22 20 00 00       	call   4c0d <open>
    2beb:	89 04 24             	mov    %eax,(%esp)
    2bee:	e8 02 20 00 00       	call   4bf5 <close>
    2bf3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < 100; i++){
    2bf6:	83 eb 01             	sub    $0x1,%ebx
    2bf9:	75 bf                	jne    2bba <linkunlink+0x6a>
  if(pid)
    2bfb:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    2bfe:	85 c0                	test   %eax,%eax
    2c00:	74 4b                	je     2c4d <linkunlink+0xfd>
    wait();
    2c02:	e8 ce 1f 00 00       	call   4bd5 <wait>
  printf(1, "linkunlink ok\n");
    2c07:	83 ec 08             	sub    $0x8,%esp
    2c0a:	68 09 56 00 00       	push   $0x5609
    2c0f:	6a 01                	push   $0x1
    2c11:	e8 4a 21 00 00       	call   4d60 <printf>
}
    2c16:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2c19:	5b                   	pop    %ebx
    2c1a:	5e                   	pop    %esi
    2c1b:	5f                   	pop    %edi
    2c1c:	5d                   	pop    %ebp
    2c1d:	c3                   	ret    
    2c1e:	66 90                	xchg   %ax,%ax
      link("cat", "x");
    2c20:	83 ec 08             	sub    $0x8,%esp
    2c23:	68 81 58 00 00       	push   $0x5881
    2c28:	68 05 56 00 00       	push   $0x5605
    2c2d:	e8 fb 1f 00 00       	call   4c2d <link>
    2c32:	83 c4 10             	add    $0x10,%esp
    2c35:	e9 7b ff ff ff       	jmp    2bb5 <linkunlink+0x65>
    printf(1, "fork failed\n");
    2c3a:	52                   	push   %edx
    2c3b:	52                   	push   %edx
    2c3c:	68 6c 5e 00 00       	push   $0x5e6c
    2c41:	6a 01                	push   $0x1
    2c43:	e8 18 21 00 00       	call   4d60 <printf>
    exit();
    2c48:	e8 80 1f 00 00       	call   4bcd <exit>
    exit();
    2c4d:	e8 7b 1f 00 00       	call   4bcd <exit>
    2c52:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2c59:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002c60 <bigdir>:
{
    2c60:	f3 0f 1e fb          	endbr32 
    2c64:	55                   	push   %ebp
    2c65:	89 e5                	mov    %esp,%ebp
    2c67:	57                   	push   %edi
    2c68:	56                   	push   %esi
    2c69:	53                   	push   %ebx
    2c6a:	83 ec 24             	sub    $0x24,%esp
  printf(1, "bigdir test\n");
    2c6d:	68 18 56 00 00       	push   $0x5618
    2c72:	6a 01                	push   $0x1
    2c74:	e8 e7 20 00 00       	call   4d60 <printf>
  unlink("bd");
    2c79:	c7 04 24 25 56 00 00 	movl   $0x5625,(%esp)
    2c80:	e8 98 1f 00 00       	call   4c1d <unlink>
  fd = open("bd", O_CREATE);
    2c85:	5a                   	pop    %edx
    2c86:	59                   	pop    %ecx
    2c87:	68 00 02 00 00       	push   $0x200
    2c8c:	68 25 56 00 00       	push   $0x5625
    2c91:	e8 77 1f 00 00       	call   4c0d <open>
  if(fd < 0){
    2c96:	83 c4 10             	add    $0x10,%esp
    2c99:	85 c0                	test   %eax,%eax
    2c9b:	0f 88 ea 00 00 00    	js     2d8b <bigdir+0x12b>
  close(fd);
    2ca1:	83 ec 0c             	sub    $0xc,%esp
  for(i = 0; i < 500; i++){
    2ca4:	31 f6                	xor    %esi,%esi
    2ca6:	8d 7d de             	lea    -0x22(%ebp),%edi
  close(fd);
    2ca9:	50                   	push   %eax
    2caa:	e8 46 1f 00 00       	call   4bf5 <close>
    2caf:	83 c4 10             	add    $0x10,%esp
    2cb2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    name[1] = '0' + (i / 64);
    2cb8:	89 f0                	mov    %esi,%eax
    if(link("bd", name) != 0){
    2cba:	83 ec 08             	sub    $0x8,%esp
    name[0] = 'x';
    2cbd:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    2cc1:	c1 f8 06             	sar    $0x6,%eax
    if(link("bd", name) != 0){
    2cc4:	57                   	push   %edi
    name[1] = '0' + (i / 64);
    2cc5:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    2cc8:	68 25 56 00 00       	push   $0x5625
    name[1] = '0' + (i / 64);
    2ccd:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    2cd0:	89 f0                	mov    %esi,%eax
    2cd2:	83 e0 3f             	and    $0x3f,%eax
    name[3] = '\0';
    2cd5:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[2] = '0' + (i % 64);
    2cd9:	83 c0 30             	add    $0x30,%eax
    2cdc:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(link("bd", name) != 0){
    2cdf:	e8 49 1f 00 00       	call   4c2d <link>
    2ce4:	83 c4 10             	add    $0x10,%esp
    2ce7:	89 c3                	mov    %eax,%ebx
    2ce9:	85 c0                	test   %eax,%eax
    2ceb:	75 76                	jne    2d63 <bigdir+0x103>
  for(i = 0; i < 500; i++){
    2ced:	83 c6 01             	add    $0x1,%esi
    2cf0:	81 fe f4 01 00 00    	cmp    $0x1f4,%esi
    2cf6:	75 c0                	jne    2cb8 <bigdir+0x58>
  unlink("bd");
    2cf8:	83 ec 0c             	sub    $0xc,%esp
    2cfb:	68 25 56 00 00       	push   $0x5625
    2d00:	e8 18 1f 00 00       	call   4c1d <unlink>
    2d05:	83 c4 10             	add    $0x10,%esp
    2d08:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2d0f:	90                   	nop
    name[1] = '0' + (i / 64);
    2d10:	89 d8                	mov    %ebx,%eax
    if(unlink(name) != 0){
    2d12:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'x';
    2d15:	c6 45 de 78          	movb   $0x78,-0x22(%ebp)
    name[1] = '0' + (i / 64);
    2d19:	c1 f8 06             	sar    $0x6,%eax
    if(unlink(name) != 0){
    2d1c:	57                   	push   %edi
    name[1] = '0' + (i / 64);
    2d1d:	83 c0 30             	add    $0x30,%eax
    name[3] = '\0';
    2d20:	c6 45 e1 00          	movb   $0x0,-0x1f(%ebp)
    name[1] = '0' + (i / 64);
    2d24:	88 45 df             	mov    %al,-0x21(%ebp)
    name[2] = '0' + (i % 64);
    2d27:	89 d8                	mov    %ebx,%eax
    2d29:	83 e0 3f             	and    $0x3f,%eax
    2d2c:	83 c0 30             	add    $0x30,%eax
    2d2f:	88 45 e0             	mov    %al,-0x20(%ebp)
    if(unlink(name) != 0){
    2d32:	e8 e6 1e 00 00       	call   4c1d <unlink>
    2d37:	83 c4 10             	add    $0x10,%esp
    2d3a:	85 c0                	test   %eax,%eax
    2d3c:	75 39                	jne    2d77 <bigdir+0x117>
  for(i = 0; i < 500; i++){
    2d3e:	83 c3 01             	add    $0x1,%ebx
    2d41:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    2d47:	75 c7                	jne    2d10 <bigdir+0xb0>
  printf(1, "bigdir ok\n");
    2d49:	83 ec 08             	sub    $0x8,%esp
    2d4c:	68 67 56 00 00       	push   $0x5667
    2d51:	6a 01                	push   $0x1
    2d53:	e8 08 20 00 00       	call   4d60 <printf>
    2d58:	83 c4 10             	add    $0x10,%esp
}
    2d5b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2d5e:	5b                   	pop    %ebx
    2d5f:	5e                   	pop    %esi
    2d60:	5f                   	pop    %edi
    2d61:	5d                   	pop    %ebp
    2d62:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    2d63:	83 ec 08             	sub    $0x8,%esp
    2d66:	68 3e 56 00 00       	push   $0x563e
    2d6b:	6a 01                	push   $0x1
    2d6d:	e8 ee 1f 00 00       	call   4d60 <printf>
      exit();
    2d72:	e8 56 1e 00 00       	call   4bcd <exit>
      printf(1, "bigdir unlink failed");
    2d77:	83 ec 08             	sub    $0x8,%esp
    2d7a:	68 52 56 00 00       	push   $0x5652
    2d7f:	6a 01                	push   $0x1
    2d81:	e8 da 1f 00 00       	call   4d60 <printf>
      exit();
    2d86:	e8 42 1e 00 00       	call   4bcd <exit>
    printf(1, "bigdir create failed\n");
    2d8b:	50                   	push   %eax
    2d8c:	50                   	push   %eax
    2d8d:	68 28 56 00 00       	push   $0x5628
    2d92:	6a 01                	push   $0x1
    2d94:	e8 c7 1f 00 00       	call   4d60 <printf>
    exit();
    2d99:	e8 2f 1e 00 00       	call   4bcd <exit>
    2d9e:	66 90                	xchg   %ax,%ax

00002da0 <subdir>:
{
    2da0:	f3 0f 1e fb          	endbr32 
    2da4:	55                   	push   %ebp
    2da5:	89 e5                	mov    %esp,%ebp
    2da7:	53                   	push   %ebx
    2da8:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "subdir test\n");
    2dab:	68 72 56 00 00       	push   $0x5672
    2db0:	6a 01                	push   $0x1
    2db2:	e8 a9 1f 00 00       	call   4d60 <printf>
  unlink("ff");
    2db7:	c7 04 24 fb 56 00 00 	movl   $0x56fb,(%esp)
    2dbe:	e8 5a 1e 00 00       	call   4c1d <unlink>
  if(mkdir("dd") != 0){
    2dc3:	c7 04 24 98 57 00 00 	movl   $0x5798,(%esp)
    2dca:	e8 66 1e 00 00       	call   4c35 <mkdir>
    2dcf:	83 c4 10             	add    $0x10,%esp
    2dd2:	85 c0                	test   %eax,%eax
    2dd4:	0f 85 b3 05 00 00    	jne    338d <subdir+0x5ed>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2dda:	83 ec 08             	sub    $0x8,%esp
    2ddd:	68 02 02 00 00       	push   $0x202
    2de2:	68 d1 56 00 00       	push   $0x56d1
    2de7:	e8 21 1e 00 00       	call   4c0d <open>
  if(fd < 0){
    2dec:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2def:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2df1:	85 c0                	test   %eax,%eax
    2df3:	0f 88 81 05 00 00    	js     337a <subdir+0x5da>
  write(fd, "ff", 2);
    2df9:	83 ec 04             	sub    $0x4,%esp
    2dfc:	6a 02                	push   $0x2
    2dfe:	68 fb 56 00 00       	push   $0x56fb
    2e03:	50                   	push   %eax
    2e04:	e8 e4 1d 00 00       	call   4bed <write>
  close(fd);
    2e09:	89 1c 24             	mov    %ebx,(%esp)
    2e0c:	e8 e4 1d 00 00       	call   4bf5 <close>
  if(unlink("dd") >= 0){
    2e11:	c7 04 24 98 57 00 00 	movl   $0x5798,(%esp)
    2e18:	e8 00 1e 00 00       	call   4c1d <unlink>
    2e1d:	83 c4 10             	add    $0x10,%esp
    2e20:	85 c0                	test   %eax,%eax
    2e22:	0f 89 3f 05 00 00    	jns    3367 <subdir+0x5c7>
  if(mkdir("/dd/dd") != 0){
    2e28:	83 ec 0c             	sub    $0xc,%esp
    2e2b:	68 ac 56 00 00       	push   $0x56ac
    2e30:	e8 00 1e 00 00       	call   4c35 <mkdir>
    2e35:	83 c4 10             	add    $0x10,%esp
    2e38:	85 c0                	test   %eax,%eax
    2e3a:	0f 85 14 05 00 00    	jne    3354 <subdir+0x5b4>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2e40:	83 ec 08             	sub    $0x8,%esp
    2e43:	68 02 02 00 00       	push   $0x202
    2e48:	68 ce 56 00 00       	push   $0x56ce
    2e4d:	e8 bb 1d 00 00       	call   4c0d <open>
  if(fd < 0){
    2e52:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    2e55:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2e57:	85 c0                	test   %eax,%eax
    2e59:	0f 88 24 04 00 00    	js     3283 <subdir+0x4e3>
  write(fd, "FF", 2);
    2e5f:	83 ec 04             	sub    $0x4,%esp
    2e62:	6a 02                	push   $0x2
    2e64:	68 ef 56 00 00       	push   $0x56ef
    2e69:	50                   	push   %eax
    2e6a:	e8 7e 1d 00 00       	call   4bed <write>
  close(fd);
    2e6f:	89 1c 24             	mov    %ebx,(%esp)
    2e72:	e8 7e 1d 00 00       	call   4bf5 <close>
  fd = open("dd/dd/../ff", 0);
    2e77:	58                   	pop    %eax
    2e78:	5a                   	pop    %edx
    2e79:	6a 00                	push   $0x0
    2e7b:	68 f2 56 00 00       	push   $0x56f2
    2e80:	e8 88 1d 00 00       	call   4c0d <open>
  if(fd < 0){
    2e85:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/../ff", 0);
    2e88:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2e8a:	85 c0                	test   %eax,%eax
    2e8c:	0f 88 de 03 00 00    	js     3270 <subdir+0x4d0>
  cc = read(fd, buf, sizeof(buf));
    2e92:	83 ec 04             	sub    $0x4,%esp
    2e95:	68 00 20 00 00       	push   $0x2000
    2e9a:	68 40 98 00 00       	push   $0x9840
    2e9f:	50                   	push   %eax
    2ea0:	e8 40 1d 00 00       	call   4be5 <read>
  if(cc != 2 || buf[0] != 'f'){
    2ea5:	83 c4 10             	add    $0x10,%esp
    2ea8:	83 f8 02             	cmp    $0x2,%eax
    2eab:	0f 85 3a 03 00 00    	jne    31eb <subdir+0x44b>
    2eb1:	80 3d 40 98 00 00 66 	cmpb   $0x66,0x9840
    2eb8:	0f 85 2d 03 00 00    	jne    31eb <subdir+0x44b>
  close(fd);
    2ebe:	83 ec 0c             	sub    $0xc,%esp
    2ec1:	53                   	push   %ebx
    2ec2:	e8 2e 1d 00 00       	call   4bf5 <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2ec7:	59                   	pop    %ecx
    2ec8:	5b                   	pop    %ebx
    2ec9:	68 32 57 00 00       	push   $0x5732
    2ece:	68 ce 56 00 00       	push   $0x56ce
    2ed3:	e8 55 1d 00 00       	call   4c2d <link>
    2ed8:	83 c4 10             	add    $0x10,%esp
    2edb:	85 c0                	test   %eax,%eax
    2edd:	0f 85 c6 03 00 00    	jne    32a9 <subdir+0x509>
  if(unlink("dd/dd/ff") != 0){
    2ee3:	83 ec 0c             	sub    $0xc,%esp
    2ee6:	68 ce 56 00 00       	push   $0x56ce
    2eeb:	e8 2d 1d 00 00       	call   4c1d <unlink>
    2ef0:	83 c4 10             	add    $0x10,%esp
    2ef3:	85 c0                	test   %eax,%eax
    2ef5:	0f 85 16 03 00 00    	jne    3211 <subdir+0x471>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2efb:	83 ec 08             	sub    $0x8,%esp
    2efe:	6a 00                	push   $0x0
    2f00:	68 ce 56 00 00       	push   $0x56ce
    2f05:	e8 03 1d 00 00       	call   4c0d <open>
    2f0a:	83 c4 10             	add    $0x10,%esp
    2f0d:	85 c0                	test   %eax,%eax
    2f0f:	0f 89 2c 04 00 00    	jns    3341 <subdir+0x5a1>
  if(chdir("dd") != 0){
    2f15:	83 ec 0c             	sub    $0xc,%esp
    2f18:	68 98 57 00 00       	push   $0x5798
    2f1d:	e8 1b 1d 00 00       	call   4c3d <chdir>
    2f22:	83 c4 10             	add    $0x10,%esp
    2f25:	85 c0                	test   %eax,%eax
    2f27:	0f 85 01 04 00 00    	jne    332e <subdir+0x58e>
  if(chdir("dd/../../dd") != 0){
    2f2d:	83 ec 0c             	sub    $0xc,%esp
    2f30:	68 66 57 00 00       	push   $0x5766
    2f35:	e8 03 1d 00 00       	call   4c3d <chdir>
    2f3a:	83 c4 10             	add    $0x10,%esp
    2f3d:	85 c0                	test   %eax,%eax
    2f3f:	0f 85 b9 02 00 00    	jne    31fe <subdir+0x45e>
  if(chdir("dd/../../../dd") != 0){
    2f45:	83 ec 0c             	sub    $0xc,%esp
    2f48:	68 8c 57 00 00       	push   $0x578c
    2f4d:	e8 eb 1c 00 00       	call   4c3d <chdir>
    2f52:	83 c4 10             	add    $0x10,%esp
    2f55:	85 c0                	test   %eax,%eax
    2f57:	0f 85 a1 02 00 00    	jne    31fe <subdir+0x45e>
  if(chdir("./..") != 0){
    2f5d:	83 ec 0c             	sub    $0xc,%esp
    2f60:	68 9b 57 00 00       	push   $0x579b
    2f65:	e8 d3 1c 00 00       	call   4c3d <chdir>
    2f6a:	83 c4 10             	add    $0x10,%esp
    2f6d:	85 c0                	test   %eax,%eax
    2f6f:	0f 85 21 03 00 00    	jne    3296 <subdir+0x4f6>
  fd = open("dd/dd/ffff", 0);
    2f75:	83 ec 08             	sub    $0x8,%esp
    2f78:	6a 00                	push   $0x0
    2f7a:	68 32 57 00 00       	push   $0x5732
    2f7f:	e8 89 1c 00 00       	call   4c0d <open>
  if(fd < 0){
    2f84:	83 c4 10             	add    $0x10,%esp
  fd = open("dd/dd/ffff", 0);
    2f87:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2f89:	85 c0                	test   %eax,%eax
    2f8b:	0f 88 e0 04 00 00    	js     3471 <subdir+0x6d1>
  if(read(fd, buf, sizeof(buf)) != 2){
    2f91:	83 ec 04             	sub    $0x4,%esp
    2f94:	68 00 20 00 00       	push   $0x2000
    2f99:	68 40 98 00 00       	push   $0x9840
    2f9e:	50                   	push   %eax
    2f9f:	e8 41 1c 00 00       	call   4be5 <read>
    2fa4:	83 c4 10             	add    $0x10,%esp
    2fa7:	83 f8 02             	cmp    $0x2,%eax
    2faa:	0f 85 ae 04 00 00    	jne    345e <subdir+0x6be>
  close(fd);
    2fb0:	83 ec 0c             	sub    $0xc,%esp
    2fb3:	53                   	push   %ebx
    2fb4:	e8 3c 1c 00 00       	call   4bf5 <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2fb9:	58                   	pop    %eax
    2fba:	5a                   	pop    %edx
    2fbb:	6a 00                	push   $0x0
    2fbd:	68 ce 56 00 00       	push   $0x56ce
    2fc2:	e8 46 1c 00 00       	call   4c0d <open>
    2fc7:	83 c4 10             	add    $0x10,%esp
    2fca:	85 c0                	test   %eax,%eax
    2fcc:	0f 89 65 02 00 00    	jns    3237 <subdir+0x497>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2fd2:	83 ec 08             	sub    $0x8,%esp
    2fd5:	68 02 02 00 00       	push   $0x202
    2fda:	68 e6 57 00 00       	push   $0x57e6
    2fdf:	e8 29 1c 00 00       	call   4c0d <open>
    2fe4:	83 c4 10             	add    $0x10,%esp
    2fe7:	85 c0                	test   %eax,%eax
    2fe9:	0f 89 35 02 00 00    	jns    3224 <subdir+0x484>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    2fef:	83 ec 08             	sub    $0x8,%esp
    2ff2:	68 02 02 00 00       	push   $0x202
    2ff7:	68 0b 58 00 00       	push   $0x580b
    2ffc:	e8 0c 1c 00 00       	call   4c0d <open>
    3001:	83 c4 10             	add    $0x10,%esp
    3004:	85 c0                	test   %eax,%eax
    3006:	0f 89 0f 03 00 00    	jns    331b <subdir+0x57b>
  if(open("dd", O_CREATE) >= 0){
    300c:	83 ec 08             	sub    $0x8,%esp
    300f:	68 00 02 00 00       	push   $0x200
    3014:	68 98 57 00 00       	push   $0x5798
    3019:	e8 ef 1b 00 00       	call   4c0d <open>
    301e:	83 c4 10             	add    $0x10,%esp
    3021:	85 c0                	test   %eax,%eax
    3023:	0f 89 df 02 00 00    	jns    3308 <subdir+0x568>
  if(open("dd", O_RDWR) >= 0){
    3029:	83 ec 08             	sub    $0x8,%esp
    302c:	6a 02                	push   $0x2
    302e:	68 98 57 00 00       	push   $0x5798
    3033:	e8 d5 1b 00 00       	call   4c0d <open>
    3038:	83 c4 10             	add    $0x10,%esp
    303b:	85 c0                	test   %eax,%eax
    303d:	0f 89 b2 02 00 00    	jns    32f5 <subdir+0x555>
  if(open("dd", O_WRONLY) >= 0){
    3043:	83 ec 08             	sub    $0x8,%esp
    3046:	6a 01                	push   $0x1
    3048:	68 98 57 00 00       	push   $0x5798
    304d:	e8 bb 1b 00 00       	call   4c0d <open>
    3052:	83 c4 10             	add    $0x10,%esp
    3055:	85 c0                	test   %eax,%eax
    3057:	0f 89 85 02 00 00    	jns    32e2 <subdir+0x542>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    305d:	83 ec 08             	sub    $0x8,%esp
    3060:	68 7a 58 00 00       	push   $0x587a
    3065:	68 e6 57 00 00       	push   $0x57e6
    306a:	e8 be 1b 00 00       	call   4c2d <link>
    306f:	83 c4 10             	add    $0x10,%esp
    3072:	85 c0                	test   %eax,%eax
    3074:	0f 84 55 02 00 00    	je     32cf <subdir+0x52f>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    307a:	83 ec 08             	sub    $0x8,%esp
    307d:	68 7a 58 00 00       	push   $0x587a
    3082:	68 0b 58 00 00       	push   $0x580b
    3087:	e8 a1 1b 00 00       	call   4c2d <link>
    308c:	83 c4 10             	add    $0x10,%esp
    308f:	85 c0                	test   %eax,%eax
    3091:	0f 84 25 02 00 00    	je     32bc <subdir+0x51c>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    3097:	83 ec 08             	sub    $0x8,%esp
    309a:	68 32 57 00 00       	push   $0x5732
    309f:	68 d1 56 00 00       	push   $0x56d1
    30a4:	e8 84 1b 00 00       	call   4c2d <link>
    30a9:	83 c4 10             	add    $0x10,%esp
    30ac:	85 c0                	test   %eax,%eax
    30ae:	0f 84 a9 01 00 00    	je     325d <subdir+0x4bd>
  if(mkdir("dd/ff/ff") == 0){
    30b4:	83 ec 0c             	sub    $0xc,%esp
    30b7:	68 e6 57 00 00       	push   $0x57e6
    30bc:	e8 74 1b 00 00       	call   4c35 <mkdir>
    30c1:	83 c4 10             	add    $0x10,%esp
    30c4:	85 c0                	test   %eax,%eax
    30c6:	0f 84 7e 01 00 00    	je     324a <subdir+0x4aa>
  if(mkdir("dd/xx/ff") == 0){
    30cc:	83 ec 0c             	sub    $0xc,%esp
    30cf:	68 0b 58 00 00       	push   $0x580b
    30d4:	e8 5c 1b 00 00       	call   4c35 <mkdir>
    30d9:	83 c4 10             	add    $0x10,%esp
    30dc:	85 c0                	test   %eax,%eax
    30de:	0f 84 67 03 00 00    	je     344b <subdir+0x6ab>
  if(mkdir("dd/dd/ffff") == 0){
    30e4:	83 ec 0c             	sub    $0xc,%esp
    30e7:	68 32 57 00 00       	push   $0x5732
    30ec:	e8 44 1b 00 00       	call   4c35 <mkdir>
    30f1:	83 c4 10             	add    $0x10,%esp
    30f4:	85 c0                	test   %eax,%eax
    30f6:	0f 84 3c 03 00 00    	je     3438 <subdir+0x698>
  if(unlink("dd/xx/ff") == 0){
    30fc:	83 ec 0c             	sub    $0xc,%esp
    30ff:	68 0b 58 00 00       	push   $0x580b
    3104:	e8 14 1b 00 00       	call   4c1d <unlink>
    3109:	83 c4 10             	add    $0x10,%esp
    310c:	85 c0                	test   %eax,%eax
    310e:	0f 84 11 03 00 00    	je     3425 <subdir+0x685>
  if(unlink("dd/ff/ff") == 0){
    3114:	83 ec 0c             	sub    $0xc,%esp
    3117:	68 e6 57 00 00       	push   $0x57e6
    311c:	e8 fc 1a 00 00       	call   4c1d <unlink>
    3121:	83 c4 10             	add    $0x10,%esp
    3124:	85 c0                	test   %eax,%eax
    3126:	0f 84 e6 02 00 00    	je     3412 <subdir+0x672>
  if(chdir("dd/ff") == 0){
    312c:	83 ec 0c             	sub    $0xc,%esp
    312f:	68 d1 56 00 00       	push   $0x56d1
    3134:	e8 04 1b 00 00       	call   4c3d <chdir>
    3139:	83 c4 10             	add    $0x10,%esp
    313c:	85 c0                	test   %eax,%eax
    313e:	0f 84 bb 02 00 00    	je     33ff <subdir+0x65f>
  if(chdir("dd/xx") == 0){
    3144:	83 ec 0c             	sub    $0xc,%esp
    3147:	68 7d 58 00 00       	push   $0x587d
    314c:	e8 ec 1a 00 00       	call   4c3d <chdir>
    3151:	83 c4 10             	add    $0x10,%esp
    3154:	85 c0                	test   %eax,%eax
    3156:	0f 84 90 02 00 00    	je     33ec <subdir+0x64c>
  if(unlink("dd/dd/ffff") != 0){
    315c:	83 ec 0c             	sub    $0xc,%esp
    315f:	68 32 57 00 00       	push   $0x5732
    3164:	e8 b4 1a 00 00       	call   4c1d <unlink>
    3169:	83 c4 10             	add    $0x10,%esp
    316c:	85 c0                	test   %eax,%eax
    316e:	0f 85 9d 00 00 00    	jne    3211 <subdir+0x471>
  if(unlink("dd/ff") != 0){
    3174:	83 ec 0c             	sub    $0xc,%esp
    3177:	68 d1 56 00 00       	push   $0x56d1
    317c:	e8 9c 1a 00 00       	call   4c1d <unlink>
    3181:	83 c4 10             	add    $0x10,%esp
    3184:	85 c0                	test   %eax,%eax
    3186:	0f 85 4d 02 00 00    	jne    33d9 <subdir+0x639>
  if(unlink("dd") == 0){
    318c:	83 ec 0c             	sub    $0xc,%esp
    318f:	68 98 57 00 00       	push   $0x5798
    3194:	e8 84 1a 00 00       	call   4c1d <unlink>
    3199:	83 c4 10             	add    $0x10,%esp
    319c:	85 c0                	test   %eax,%eax
    319e:	0f 84 22 02 00 00    	je     33c6 <subdir+0x626>
  if(unlink("dd/dd") < 0){
    31a4:	83 ec 0c             	sub    $0xc,%esp
    31a7:	68 ad 56 00 00       	push   $0x56ad
    31ac:	e8 6c 1a 00 00       	call   4c1d <unlink>
    31b1:	83 c4 10             	add    $0x10,%esp
    31b4:	85 c0                	test   %eax,%eax
    31b6:	0f 88 f7 01 00 00    	js     33b3 <subdir+0x613>
  if(unlink("dd") < 0){
    31bc:	83 ec 0c             	sub    $0xc,%esp
    31bf:	68 98 57 00 00       	push   $0x5798
    31c4:	e8 54 1a 00 00       	call   4c1d <unlink>
    31c9:	83 c4 10             	add    $0x10,%esp
    31cc:	85 c0                	test   %eax,%eax
    31ce:	0f 88 cc 01 00 00    	js     33a0 <subdir+0x600>
  printf(1, "subdir ok\n");
    31d4:	83 ec 08             	sub    $0x8,%esp
    31d7:	68 7a 59 00 00       	push   $0x597a
    31dc:	6a 01                	push   $0x1
    31de:	e8 7d 1b 00 00       	call   4d60 <printf>
}
    31e3:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    31e6:	83 c4 10             	add    $0x10,%esp
    31e9:	c9                   	leave  
    31ea:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    31eb:	50                   	push   %eax
    31ec:	50                   	push   %eax
    31ed:	68 17 57 00 00       	push   $0x5717
    31f2:	6a 01                	push   $0x1
    31f4:	e8 67 1b 00 00       	call   4d60 <printf>
    exit();
    31f9:	e8 cf 19 00 00       	call   4bcd <exit>
    printf(1, "chdir dd/../../dd failed\n");
    31fe:	50                   	push   %eax
    31ff:	50                   	push   %eax
    3200:	68 72 57 00 00       	push   $0x5772
    3205:	6a 01                	push   $0x1
    3207:	e8 54 1b 00 00       	call   4d60 <printf>
    exit();
    320c:	e8 bc 19 00 00       	call   4bcd <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    3211:	50                   	push   %eax
    3212:	50                   	push   %eax
    3213:	68 3d 57 00 00       	push   $0x573d
    3218:	6a 01                	push   $0x1
    321a:	e8 41 1b 00 00       	call   4d60 <printf>
    exit();
    321f:	e8 a9 19 00 00       	call   4bcd <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    3224:	51                   	push   %ecx
    3225:	51                   	push   %ecx
    3226:	68 ef 57 00 00       	push   $0x57ef
    322b:	6a 01                	push   $0x1
    322d:	e8 2e 1b 00 00       	call   4d60 <printf>
    exit();
    3232:	e8 96 19 00 00       	call   4bcd <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    3237:	53                   	push   %ebx
    3238:	53                   	push   %ebx
    3239:	68 d4 61 00 00       	push   $0x61d4
    323e:	6a 01                	push   $0x1
    3240:	e8 1b 1b 00 00       	call   4d60 <printf>
    exit();
    3245:	e8 83 19 00 00       	call   4bcd <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    324a:	51                   	push   %ecx
    324b:	51                   	push   %ecx
    324c:	68 83 58 00 00       	push   $0x5883
    3251:	6a 01                	push   $0x1
    3253:	e8 08 1b 00 00       	call   4d60 <printf>
    exit();
    3258:	e8 70 19 00 00       	call   4bcd <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    325d:	53                   	push   %ebx
    325e:	53                   	push   %ebx
    325f:	68 44 62 00 00       	push   $0x6244
    3264:	6a 01                	push   $0x1
    3266:	e8 f5 1a 00 00       	call   4d60 <printf>
    exit();
    326b:	e8 5d 19 00 00       	call   4bcd <exit>
    printf(1, "open dd/dd/../ff failed\n");
    3270:	50                   	push   %eax
    3271:	50                   	push   %eax
    3272:	68 fe 56 00 00       	push   $0x56fe
    3277:	6a 01                	push   $0x1
    3279:	e8 e2 1a 00 00       	call   4d60 <printf>
    exit();
    327e:	e8 4a 19 00 00       	call   4bcd <exit>
    printf(1, "create dd/dd/ff failed\n");
    3283:	51                   	push   %ecx
    3284:	51                   	push   %ecx
    3285:	68 d7 56 00 00       	push   $0x56d7
    328a:	6a 01                	push   $0x1
    328c:	e8 cf 1a 00 00       	call   4d60 <printf>
    exit();
    3291:	e8 37 19 00 00       	call   4bcd <exit>
    printf(1, "chdir ./.. failed\n");
    3296:	50                   	push   %eax
    3297:	50                   	push   %eax
    3298:	68 a0 57 00 00       	push   $0x57a0
    329d:	6a 01                	push   $0x1
    329f:	e8 bc 1a 00 00       	call   4d60 <printf>
    exit();
    32a4:	e8 24 19 00 00       	call   4bcd <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    32a9:	52                   	push   %edx
    32aa:	52                   	push   %edx
    32ab:	68 8c 61 00 00       	push   $0x618c
    32b0:	6a 01                	push   $0x1
    32b2:	e8 a9 1a 00 00       	call   4d60 <printf>
    exit();
    32b7:	e8 11 19 00 00       	call   4bcd <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    32bc:	50                   	push   %eax
    32bd:	50                   	push   %eax
    32be:	68 20 62 00 00       	push   $0x6220
    32c3:	6a 01                	push   $0x1
    32c5:	e8 96 1a 00 00       	call   4d60 <printf>
    exit();
    32ca:	e8 fe 18 00 00       	call   4bcd <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    32cf:	50                   	push   %eax
    32d0:	50                   	push   %eax
    32d1:	68 fc 61 00 00       	push   $0x61fc
    32d6:	6a 01                	push   $0x1
    32d8:	e8 83 1a 00 00       	call   4d60 <printf>
    exit();
    32dd:	e8 eb 18 00 00       	call   4bcd <exit>
    printf(1, "open dd wronly succeeded!\n");
    32e2:	50                   	push   %eax
    32e3:	50                   	push   %eax
    32e4:	68 5f 58 00 00       	push   $0x585f
    32e9:	6a 01                	push   $0x1
    32eb:	e8 70 1a 00 00       	call   4d60 <printf>
    exit();
    32f0:	e8 d8 18 00 00       	call   4bcd <exit>
    printf(1, "open dd rdwr succeeded!\n");
    32f5:	50                   	push   %eax
    32f6:	50                   	push   %eax
    32f7:	68 46 58 00 00       	push   $0x5846
    32fc:	6a 01                	push   $0x1
    32fe:	e8 5d 1a 00 00       	call   4d60 <printf>
    exit();
    3303:	e8 c5 18 00 00       	call   4bcd <exit>
    printf(1, "create dd succeeded!\n");
    3308:	50                   	push   %eax
    3309:	50                   	push   %eax
    330a:	68 30 58 00 00       	push   $0x5830
    330f:	6a 01                	push   $0x1
    3311:	e8 4a 1a 00 00       	call   4d60 <printf>
    exit();
    3316:	e8 b2 18 00 00       	call   4bcd <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    331b:	52                   	push   %edx
    331c:	52                   	push   %edx
    331d:	68 14 58 00 00       	push   $0x5814
    3322:	6a 01                	push   $0x1
    3324:	e8 37 1a 00 00       	call   4d60 <printf>
    exit();
    3329:	e8 9f 18 00 00       	call   4bcd <exit>
    printf(1, "chdir dd failed\n");
    332e:	50                   	push   %eax
    332f:	50                   	push   %eax
    3330:	68 55 57 00 00       	push   $0x5755
    3335:	6a 01                	push   $0x1
    3337:	e8 24 1a 00 00       	call   4d60 <printf>
    exit();
    333c:	e8 8c 18 00 00       	call   4bcd <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    3341:	50                   	push   %eax
    3342:	50                   	push   %eax
    3343:	68 b0 61 00 00       	push   $0x61b0
    3348:	6a 01                	push   $0x1
    334a:	e8 11 1a 00 00       	call   4d60 <printf>
    exit();
    334f:	e8 79 18 00 00       	call   4bcd <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    3354:	53                   	push   %ebx
    3355:	53                   	push   %ebx
    3356:	68 b3 56 00 00       	push   $0x56b3
    335b:	6a 01                	push   $0x1
    335d:	e8 fe 19 00 00       	call   4d60 <printf>
    exit();
    3362:	e8 66 18 00 00       	call   4bcd <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    3367:	50                   	push   %eax
    3368:	50                   	push   %eax
    3369:	68 64 61 00 00       	push   $0x6164
    336e:	6a 01                	push   $0x1
    3370:	e8 eb 19 00 00       	call   4d60 <printf>
    exit();
    3375:	e8 53 18 00 00       	call   4bcd <exit>
    printf(1, "create dd/ff failed\n");
    337a:	50                   	push   %eax
    337b:	50                   	push   %eax
    337c:	68 97 56 00 00       	push   $0x5697
    3381:	6a 01                	push   $0x1
    3383:	e8 d8 19 00 00       	call   4d60 <printf>
    exit();
    3388:	e8 40 18 00 00       	call   4bcd <exit>
    printf(1, "subdir mkdir dd failed\n");
    338d:	50                   	push   %eax
    338e:	50                   	push   %eax
    338f:	68 7f 56 00 00       	push   $0x567f
    3394:	6a 01                	push   $0x1
    3396:	e8 c5 19 00 00       	call   4d60 <printf>
    exit();
    339b:	e8 2d 18 00 00       	call   4bcd <exit>
    printf(1, "unlink dd failed\n");
    33a0:	50                   	push   %eax
    33a1:	50                   	push   %eax
    33a2:	68 68 59 00 00       	push   $0x5968
    33a7:	6a 01                	push   $0x1
    33a9:	e8 b2 19 00 00       	call   4d60 <printf>
    exit();
    33ae:	e8 1a 18 00 00       	call   4bcd <exit>
    printf(1, "unlink dd/dd failed\n");
    33b3:	52                   	push   %edx
    33b4:	52                   	push   %edx
    33b5:	68 53 59 00 00       	push   $0x5953
    33ba:	6a 01                	push   $0x1
    33bc:	e8 9f 19 00 00       	call   4d60 <printf>
    exit();
    33c1:	e8 07 18 00 00       	call   4bcd <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    33c6:	51                   	push   %ecx
    33c7:	51                   	push   %ecx
    33c8:	68 68 62 00 00       	push   $0x6268
    33cd:	6a 01                	push   $0x1
    33cf:	e8 8c 19 00 00       	call   4d60 <printf>
    exit();
    33d4:	e8 f4 17 00 00       	call   4bcd <exit>
    printf(1, "unlink dd/ff failed\n");
    33d9:	53                   	push   %ebx
    33da:	53                   	push   %ebx
    33db:	68 3e 59 00 00       	push   $0x593e
    33e0:	6a 01                	push   $0x1
    33e2:	e8 79 19 00 00       	call   4d60 <printf>
    exit();
    33e7:	e8 e1 17 00 00       	call   4bcd <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    33ec:	50                   	push   %eax
    33ed:	50                   	push   %eax
    33ee:	68 26 59 00 00       	push   $0x5926
    33f3:	6a 01                	push   $0x1
    33f5:	e8 66 19 00 00       	call   4d60 <printf>
    exit();
    33fa:	e8 ce 17 00 00       	call   4bcd <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    33ff:	50                   	push   %eax
    3400:	50                   	push   %eax
    3401:	68 0e 59 00 00       	push   $0x590e
    3406:	6a 01                	push   $0x1
    3408:	e8 53 19 00 00       	call   4d60 <printf>
    exit();
    340d:	e8 bb 17 00 00       	call   4bcd <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    3412:	50                   	push   %eax
    3413:	50                   	push   %eax
    3414:	68 f2 58 00 00       	push   $0x58f2
    3419:	6a 01                	push   $0x1
    341b:	e8 40 19 00 00       	call   4d60 <printf>
    exit();
    3420:	e8 a8 17 00 00       	call   4bcd <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    3425:	50                   	push   %eax
    3426:	50                   	push   %eax
    3427:	68 d6 58 00 00       	push   $0x58d6
    342c:	6a 01                	push   $0x1
    342e:	e8 2d 19 00 00       	call   4d60 <printf>
    exit();
    3433:	e8 95 17 00 00       	call   4bcd <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    3438:	50                   	push   %eax
    3439:	50                   	push   %eax
    343a:	68 b9 58 00 00       	push   $0x58b9
    343f:	6a 01                	push   $0x1
    3441:	e8 1a 19 00 00       	call   4d60 <printf>
    exit();
    3446:	e8 82 17 00 00       	call   4bcd <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    344b:	52                   	push   %edx
    344c:	52                   	push   %edx
    344d:	68 9e 58 00 00       	push   $0x589e
    3452:	6a 01                	push   $0x1
    3454:	e8 07 19 00 00       	call   4d60 <printf>
    exit();
    3459:	e8 6f 17 00 00       	call   4bcd <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    345e:	51                   	push   %ecx
    345f:	51                   	push   %ecx
    3460:	68 cb 57 00 00       	push   $0x57cb
    3465:	6a 01                	push   $0x1
    3467:	e8 f4 18 00 00       	call   4d60 <printf>
    exit();
    346c:	e8 5c 17 00 00       	call   4bcd <exit>
    printf(1, "open dd/dd/ffff failed\n");
    3471:	53                   	push   %ebx
    3472:	53                   	push   %ebx
    3473:	68 b3 57 00 00       	push   $0x57b3
    3478:	6a 01                	push   $0x1
    347a:	e8 e1 18 00 00       	call   4d60 <printf>
    exit();
    347f:	e8 49 17 00 00       	call   4bcd <exit>
    3484:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    348b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    348f:	90                   	nop

00003490 <bigwrite>:
{
    3490:	f3 0f 1e fb          	endbr32 
    3494:	55                   	push   %ebp
    3495:	89 e5                	mov    %esp,%ebp
    3497:	56                   	push   %esi
    3498:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    3499:	bb f3 01 00 00       	mov    $0x1f3,%ebx
  printf(1, "bigwrite test\n");
    349e:	83 ec 08             	sub    $0x8,%esp
    34a1:	68 85 59 00 00       	push   $0x5985
    34a6:	6a 01                	push   $0x1
    34a8:	e8 b3 18 00 00       	call   4d60 <printf>
  unlink("bigwrite");
    34ad:	c7 04 24 94 59 00 00 	movl   $0x5994,(%esp)
    34b4:	e8 64 17 00 00       	call   4c1d <unlink>
    34b9:	83 c4 10             	add    $0x10,%esp
    34bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    34c0:	83 ec 08             	sub    $0x8,%esp
    34c3:	68 02 02 00 00       	push   $0x202
    34c8:	68 94 59 00 00       	push   $0x5994
    34cd:	e8 3b 17 00 00       	call   4c0d <open>
    if(fd < 0){
    34d2:	83 c4 10             	add    $0x10,%esp
    fd = open("bigwrite", O_CREATE | O_RDWR);
    34d5:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    34d7:	85 c0                	test   %eax,%eax
    34d9:	78 7e                	js     3559 <bigwrite+0xc9>
      int cc = write(fd, buf, sz);
    34db:	83 ec 04             	sub    $0x4,%esp
    34de:	53                   	push   %ebx
    34df:	68 40 98 00 00       	push   $0x9840
    34e4:	50                   	push   %eax
    34e5:	e8 03 17 00 00       	call   4bed <write>
      if(cc != sz){
    34ea:	83 c4 10             	add    $0x10,%esp
    34ed:	39 d8                	cmp    %ebx,%eax
    34ef:	75 55                	jne    3546 <bigwrite+0xb6>
      int cc = write(fd, buf, sz);
    34f1:	83 ec 04             	sub    $0x4,%esp
    34f4:	53                   	push   %ebx
    34f5:	68 40 98 00 00       	push   $0x9840
    34fa:	56                   	push   %esi
    34fb:	e8 ed 16 00 00       	call   4bed <write>
      if(cc != sz){
    3500:	83 c4 10             	add    $0x10,%esp
    3503:	39 d8                	cmp    %ebx,%eax
    3505:	75 3f                	jne    3546 <bigwrite+0xb6>
    close(fd);
    3507:	83 ec 0c             	sub    $0xc,%esp
  for(sz = 499; sz < 12*512; sz += 471){
    350a:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    3510:	56                   	push   %esi
    3511:	e8 df 16 00 00       	call   4bf5 <close>
    unlink("bigwrite");
    3516:	c7 04 24 94 59 00 00 	movl   $0x5994,(%esp)
    351d:	e8 fb 16 00 00       	call   4c1d <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    3522:	83 c4 10             	add    $0x10,%esp
    3525:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    352b:	75 93                	jne    34c0 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    352d:	83 ec 08             	sub    $0x8,%esp
    3530:	68 c7 59 00 00       	push   $0x59c7
    3535:	6a 01                	push   $0x1
    3537:	e8 24 18 00 00       	call   4d60 <printf>
}
    353c:	83 c4 10             	add    $0x10,%esp
    353f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    3542:	5b                   	pop    %ebx
    3543:	5e                   	pop    %esi
    3544:	5d                   	pop    %ebp
    3545:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    3546:	50                   	push   %eax
    3547:	53                   	push   %ebx
    3548:	68 b5 59 00 00       	push   $0x59b5
    354d:	6a 01                	push   $0x1
    354f:	e8 0c 18 00 00       	call   4d60 <printf>
        exit();
    3554:	e8 74 16 00 00       	call   4bcd <exit>
      printf(1, "cannot create bigwrite\n");
    3559:	83 ec 08             	sub    $0x8,%esp
    355c:	68 9d 59 00 00       	push   $0x599d
    3561:	6a 01                	push   $0x1
    3563:	e8 f8 17 00 00       	call   4d60 <printf>
      exit();
    3568:	e8 60 16 00 00       	call   4bcd <exit>
    356d:	8d 76 00             	lea    0x0(%esi),%esi

00003570 <bigfile>:
{
    3570:	f3 0f 1e fb          	endbr32 
    3574:	55                   	push   %ebp
    3575:	89 e5                	mov    %esp,%ebp
    3577:	57                   	push   %edi
    3578:	56                   	push   %esi
    3579:	53                   	push   %ebx
    357a:	83 ec 14             	sub    $0x14,%esp
  printf(1, "bigfile test\n");
    357d:	68 d4 59 00 00       	push   $0x59d4
    3582:	6a 01                	push   $0x1
    3584:	e8 d7 17 00 00       	call   4d60 <printf>
  unlink("bigfile");
    3589:	c7 04 24 f0 59 00 00 	movl   $0x59f0,(%esp)
    3590:	e8 88 16 00 00       	call   4c1d <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    3595:	58                   	pop    %eax
    3596:	5a                   	pop    %edx
    3597:	68 02 02 00 00       	push   $0x202
    359c:	68 f0 59 00 00       	push   $0x59f0
    35a1:	e8 67 16 00 00       	call   4c0d <open>
  if(fd < 0){
    35a6:	83 c4 10             	add    $0x10,%esp
    35a9:	85 c0                	test   %eax,%eax
    35ab:	0f 88 5a 01 00 00    	js     370b <bigfile+0x19b>
    35b1:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 20; i++){
    35b3:	31 db                	xor    %ebx,%ebx
    35b5:	8d 76 00             	lea    0x0(%esi),%esi
    memset(buf, i, 600);
    35b8:	83 ec 04             	sub    $0x4,%esp
    35bb:	68 58 02 00 00       	push   $0x258
    35c0:	53                   	push   %ebx
    35c1:	68 40 98 00 00       	push   $0x9840
    35c6:	e8 15 12 00 00       	call   47e0 <memset>
    if(write(fd, buf, 600) != 600){
    35cb:	83 c4 0c             	add    $0xc,%esp
    35ce:	68 58 02 00 00       	push   $0x258
    35d3:	68 40 98 00 00       	push   $0x9840
    35d8:	56                   	push   %esi
    35d9:	e8 0f 16 00 00       	call   4bed <write>
    35de:	83 c4 10             	add    $0x10,%esp
    35e1:	3d 58 02 00 00       	cmp    $0x258,%eax
    35e6:	0f 85 f8 00 00 00    	jne    36e4 <bigfile+0x174>
  for(i = 0; i < 20; i++){
    35ec:	83 c3 01             	add    $0x1,%ebx
    35ef:	83 fb 14             	cmp    $0x14,%ebx
    35f2:	75 c4                	jne    35b8 <bigfile+0x48>
  close(fd);
    35f4:	83 ec 0c             	sub    $0xc,%esp
    35f7:	56                   	push   %esi
    35f8:	e8 f8 15 00 00       	call   4bf5 <close>
  fd = open("bigfile", 0);
    35fd:	5e                   	pop    %esi
    35fe:	5f                   	pop    %edi
    35ff:	6a 00                	push   $0x0
    3601:	68 f0 59 00 00       	push   $0x59f0
    3606:	e8 02 16 00 00       	call   4c0d <open>
  if(fd < 0){
    360b:	83 c4 10             	add    $0x10,%esp
  fd = open("bigfile", 0);
    360e:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    3610:	85 c0                	test   %eax,%eax
    3612:	0f 88 e0 00 00 00    	js     36f8 <bigfile+0x188>
  total = 0;
    3618:	31 db                	xor    %ebx,%ebx
  for(i = 0; ; i++){
    361a:	31 ff                	xor    %edi,%edi
    361c:	eb 30                	jmp    364e <bigfile+0xde>
    361e:	66 90                	xchg   %ax,%ax
    if(cc != 300){
    3620:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    3625:	0f 85 91 00 00 00    	jne    36bc <bigfile+0x14c>
    if(buf[0] != i/2 || buf[299] != i/2){
    362b:	89 fa                	mov    %edi,%edx
    362d:	0f be 05 40 98 00 00 	movsbl 0x9840,%eax
    3634:	d1 fa                	sar    %edx
    3636:	39 d0                	cmp    %edx,%eax
    3638:	75 6e                	jne    36a8 <bigfile+0x138>
    363a:	0f be 15 6b 99 00 00 	movsbl 0x996b,%edx
    3641:	39 d0                	cmp    %edx,%eax
    3643:	75 63                	jne    36a8 <bigfile+0x138>
    total += cc;
    3645:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    364b:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    364e:	83 ec 04             	sub    $0x4,%esp
    3651:	68 2c 01 00 00       	push   $0x12c
    3656:	68 40 98 00 00       	push   $0x9840
    365b:	56                   	push   %esi
    365c:	e8 84 15 00 00       	call   4be5 <read>
    if(cc < 0){
    3661:	83 c4 10             	add    $0x10,%esp
    3664:	85 c0                	test   %eax,%eax
    3666:	78 68                	js     36d0 <bigfile+0x160>
    if(cc == 0)
    3668:	75 b6                	jne    3620 <bigfile+0xb0>
  close(fd);
    366a:	83 ec 0c             	sub    $0xc,%esp
    366d:	56                   	push   %esi
    366e:	e8 82 15 00 00       	call   4bf5 <close>
  if(total != 20*600){
    3673:	83 c4 10             	add    $0x10,%esp
    3676:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    367c:	0f 85 9c 00 00 00    	jne    371e <bigfile+0x1ae>
  unlink("bigfile");
    3682:	83 ec 0c             	sub    $0xc,%esp
    3685:	68 f0 59 00 00       	push   $0x59f0
    368a:	e8 8e 15 00 00       	call   4c1d <unlink>
  printf(1, "bigfile test ok\n");
    368f:	58                   	pop    %eax
    3690:	5a                   	pop    %edx
    3691:	68 7f 5a 00 00       	push   $0x5a7f
    3696:	6a 01                	push   $0x1
    3698:	e8 c3 16 00 00       	call   4d60 <printf>
}
    369d:	83 c4 10             	add    $0x10,%esp
    36a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    36a3:	5b                   	pop    %ebx
    36a4:	5e                   	pop    %esi
    36a5:	5f                   	pop    %edi
    36a6:	5d                   	pop    %ebp
    36a7:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    36a8:	83 ec 08             	sub    $0x8,%esp
    36ab:	68 4c 5a 00 00       	push   $0x5a4c
    36b0:	6a 01                	push   $0x1
    36b2:	e8 a9 16 00 00       	call   4d60 <printf>
      exit();
    36b7:	e8 11 15 00 00       	call   4bcd <exit>
      printf(1, "short read bigfile\n");
    36bc:	83 ec 08             	sub    $0x8,%esp
    36bf:	68 38 5a 00 00       	push   $0x5a38
    36c4:	6a 01                	push   $0x1
    36c6:	e8 95 16 00 00       	call   4d60 <printf>
      exit();
    36cb:	e8 fd 14 00 00       	call   4bcd <exit>
      printf(1, "read bigfile failed\n");
    36d0:	83 ec 08             	sub    $0x8,%esp
    36d3:	68 23 5a 00 00       	push   $0x5a23
    36d8:	6a 01                	push   $0x1
    36da:	e8 81 16 00 00       	call   4d60 <printf>
      exit();
    36df:	e8 e9 14 00 00       	call   4bcd <exit>
      printf(1, "write bigfile failed\n");
    36e4:	83 ec 08             	sub    $0x8,%esp
    36e7:	68 f8 59 00 00       	push   $0x59f8
    36ec:	6a 01                	push   $0x1
    36ee:	e8 6d 16 00 00       	call   4d60 <printf>
      exit();
    36f3:	e8 d5 14 00 00       	call   4bcd <exit>
    printf(1, "cannot open bigfile\n");
    36f8:	53                   	push   %ebx
    36f9:	53                   	push   %ebx
    36fa:	68 0e 5a 00 00       	push   $0x5a0e
    36ff:	6a 01                	push   $0x1
    3701:	e8 5a 16 00 00       	call   4d60 <printf>
    exit();
    3706:	e8 c2 14 00 00       	call   4bcd <exit>
    printf(1, "cannot create bigfile");
    370b:	50                   	push   %eax
    370c:	50                   	push   %eax
    370d:	68 e2 59 00 00       	push   $0x59e2
    3712:	6a 01                	push   $0x1
    3714:	e8 47 16 00 00       	call   4d60 <printf>
    exit();
    3719:	e8 af 14 00 00       	call   4bcd <exit>
    printf(1, "read bigfile wrong total\n");
    371e:	51                   	push   %ecx
    371f:	51                   	push   %ecx
    3720:	68 65 5a 00 00       	push   $0x5a65
    3725:	6a 01                	push   $0x1
    3727:	e8 34 16 00 00       	call   4d60 <printf>
    exit();
    372c:	e8 9c 14 00 00       	call   4bcd <exit>
    3731:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3738:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    373f:	90                   	nop

00003740 <fourteen>:
{
    3740:	f3 0f 1e fb          	endbr32 
    3744:	55                   	push   %ebp
    3745:	89 e5                	mov    %esp,%ebp
    3747:	83 ec 10             	sub    $0x10,%esp
  printf(1, "fourteen test\n");
    374a:	68 90 5a 00 00       	push   $0x5a90
    374f:	6a 01                	push   $0x1
    3751:	e8 0a 16 00 00       	call   4d60 <printf>
  if(mkdir("12345678901234") != 0){
    3756:	c7 04 24 cb 5a 00 00 	movl   $0x5acb,(%esp)
    375d:	e8 d3 14 00 00       	call   4c35 <mkdir>
    3762:	83 c4 10             	add    $0x10,%esp
    3765:	85 c0                	test   %eax,%eax
    3767:	0f 85 97 00 00 00    	jne    3804 <fourteen+0xc4>
  if(mkdir("12345678901234/123456789012345") != 0){
    376d:	83 ec 0c             	sub    $0xc,%esp
    3770:	68 88 62 00 00       	push   $0x6288
    3775:	e8 bb 14 00 00       	call   4c35 <mkdir>
    377a:	83 c4 10             	add    $0x10,%esp
    377d:	85 c0                	test   %eax,%eax
    377f:	0f 85 de 00 00 00    	jne    3863 <fourteen+0x123>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    3785:	83 ec 08             	sub    $0x8,%esp
    3788:	68 00 02 00 00       	push   $0x200
    378d:	68 d8 62 00 00       	push   $0x62d8
    3792:	e8 76 14 00 00       	call   4c0d <open>
  if(fd < 0){
    3797:	83 c4 10             	add    $0x10,%esp
    379a:	85 c0                	test   %eax,%eax
    379c:	0f 88 ae 00 00 00    	js     3850 <fourteen+0x110>
  close(fd);
    37a2:	83 ec 0c             	sub    $0xc,%esp
    37a5:	50                   	push   %eax
    37a6:	e8 4a 14 00 00       	call   4bf5 <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    37ab:	58                   	pop    %eax
    37ac:	5a                   	pop    %edx
    37ad:	6a 00                	push   $0x0
    37af:	68 48 63 00 00       	push   $0x6348
    37b4:	e8 54 14 00 00       	call   4c0d <open>
  if(fd < 0){
    37b9:	83 c4 10             	add    $0x10,%esp
    37bc:	85 c0                	test   %eax,%eax
    37be:	78 7d                	js     383d <fourteen+0xfd>
  close(fd);
    37c0:	83 ec 0c             	sub    $0xc,%esp
    37c3:	50                   	push   %eax
    37c4:	e8 2c 14 00 00       	call   4bf5 <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    37c9:	c7 04 24 bc 5a 00 00 	movl   $0x5abc,(%esp)
    37d0:	e8 60 14 00 00       	call   4c35 <mkdir>
    37d5:	83 c4 10             	add    $0x10,%esp
    37d8:	85 c0                	test   %eax,%eax
    37da:	74 4e                	je     382a <fourteen+0xea>
  if(mkdir("123456789012345/12345678901234") == 0){
    37dc:	83 ec 0c             	sub    $0xc,%esp
    37df:	68 e4 63 00 00       	push   $0x63e4
    37e4:	e8 4c 14 00 00       	call   4c35 <mkdir>
    37e9:	83 c4 10             	add    $0x10,%esp
    37ec:	85 c0                	test   %eax,%eax
    37ee:	74 27                	je     3817 <fourteen+0xd7>
  printf(1, "fourteen ok\n");
    37f0:	83 ec 08             	sub    $0x8,%esp
    37f3:	68 da 5a 00 00       	push   $0x5ada
    37f8:	6a 01                	push   $0x1
    37fa:	e8 61 15 00 00       	call   4d60 <printf>
}
    37ff:	83 c4 10             	add    $0x10,%esp
    3802:	c9                   	leave  
    3803:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    3804:	50                   	push   %eax
    3805:	50                   	push   %eax
    3806:	68 9f 5a 00 00       	push   $0x5a9f
    380b:	6a 01                	push   $0x1
    380d:	e8 4e 15 00 00       	call   4d60 <printf>
    exit();
    3812:	e8 b6 13 00 00       	call   4bcd <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    3817:	50                   	push   %eax
    3818:	50                   	push   %eax
    3819:	68 04 64 00 00       	push   $0x6404
    381e:	6a 01                	push   $0x1
    3820:	e8 3b 15 00 00       	call   4d60 <printf>
    exit();
    3825:	e8 a3 13 00 00       	call   4bcd <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    382a:	52                   	push   %edx
    382b:	52                   	push   %edx
    382c:	68 b4 63 00 00       	push   $0x63b4
    3831:	6a 01                	push   $0x1
    3833:	e8 28 15 00 00       	call   4d60 <printf>
    exit();
    3838:	e8 90 13 00 00       	call   4bcd <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    383d:	51                   	push   %ecx
    383e:	51                   	push   %ecx
    383f:	68 78 63 00 00       	push   $0x6378
    3844:	6a 01                	push   $0x1
    3846:	e8 15 15 00 00       	call   4d60 <printf>
    exit();
    384b:	e8 7d 13 00 00       	call   4bcd <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    3850:	51                   	push   %ecx
    3851:	51                   	push   %ecx
    3852:	68 08 63 00 00       	push   $0x6308
    3857:	6a 01                	push   $0x1
    3859:	e8 02 15 00 00       	call   4d60 <printf>
    exit();
    385e:	e8 6a 13 00 00       	call   4bcd <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    3863:	50                   	push   %eax
    3864:	50                   	push   %eax
    3865:	68 a8 62 00 00       	push   $0x62a8
    386a:	6a 01                	push   $0x1
    386c:	e8 ef 14 00 00       	call   4d60 <printf>
    exit();
    3871:	e8 57 13 00 00       	call   4bcd <exit>
    3876:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    387d:	8d 76 00             	lea    0x0(%esi),%esi

00003880 <rmdot>:
{
    3880:	f3 0f 1e fb          	endbr32 
    3884:	55                   	push   %ebp
    3885:	89 e5                	mov    %esp,%ebp
    3887:	83 ec 10             	sub    $0x10,%esp
  printf(1, "rmdot test\n");
    388a:	68 e7 5a 00 00       	push   $0x5ae7
    388f:	6a 01                	push   $0x1
    3891:	e8 ca 14 00 00       	call   4d60 <printf>
  if(mkdir("dots") != 0){
    3896:	c7 04 24 f3 5a 00 00 	movl   $0x5af3,(%esp)
    389d:	e8 93 13 00 00       	call   4c35 <mkdir>
    38a2:	83 c4 10             	add    $0x10,%esp
    38a5:	85 c0                	test   %eax,%eax
    38a7:	0f 85 b0 00 00 00    	jne    395d <rmdot+0xdd>
  if(chdir("dots") != 0){
    38ad:	83 ec 0c             	sub    $0xc,%esp
    38b0:	68 f3 5a 00 00       	push   $0x5af3
    38b5:	e8 83 13 00 00       	call   4c3d <chdir>
    38ba:	83 c4 10             	add    $0x10,%esp
    38bd:	85 c0                	test   %eax,%eax
    38bf:	0f 85 1d 01 00 00    	jne    39e2 <rmdot+0x162>
  if(unlink(".") == 0){
    38c5:	83 ec 0c             	sub    $0xc,%esp
    38c8:	68 9e 57 00 00       	push   $0x579e
    38cd:	e8 4b 13 00 00       	call   4c1d <unlink>
    38d2:	83 c4 10             	add    $0x10,%esp
    38d5:	85 c0                	test   %eax,%eax
    38d7:	0f 84 f2 00 00 00    	je     39cf <rmdot+0x14f>
  if(unlink("..") == 0){
    38dd:	83 ec 0c             	sub    $0xc,%esp
    38e0:	68 9d 57 00 00       	push   $0x579d
    38e5:	e8 33 13 00 00       	call   4c1d <unlink>
    38ea:	83 c4 10             	add    $0x10,%esp
    38ed:	85 c0                	test   %eax,%eax
    38ef:	0f 84 c7 00 00 00    	je     39bc <rmdot+0x13c>
  if(chdir("/") != 0){
    38f5:	83 ec 0c             	sub    $0xc,%esp
    38f8:	68 71 4f 00 00       	push   $0x4f71
    38fd:	e8 3b 13 00 00       	call   4c3d <chdir>
    3902:	83 c4 10             	add    $0x10,%esp
    3905:	85 c0                	test   %eax,%eax
    3907:	0f 85 9c 00 00 00    	jne    39a9 <rmdot+0x129>
  if(unlink("dots/.") == 0){
    390d:	83 ec 0c             	sub    $0xc,%esp
    3910:	68 3b 5b 00 00       	push   $0x5b3b
    3915:	e8 03 13 00 00       	call   4c1d <unlink>
    391a:	83 c4 10             	add    $0x10,%esp
    391d:	85 c0                	test   %eax,%eax
    391f:	74 75                	je     3996 <rmdot+0x116>
  if(unlink("dots/..") == 0){
    3921:	83 ec 0c             	sub    $0xc,%esp
    3924:	68 59 5b 00 00       	push   $0x5b59
    3929:	e8 ef 12 00 00       	call   4c1d <unlink>
    392e:	83 c4 10             	add    $0x10,%esp
    3931:	85 c0                	test   %eax,%eax
    3933:	74 4e                	je     3983 <rmdot+0x103>
  if(unlink("dots") != 0){
    3935:	83 ec 0c             	sub    $0xc,%esp
    3938:	68 f3 5a 00 00       	push   $0x5af3
    393d:	e8 db 12 00 00       	call   4c1d <unlink>
    3942:	83 c4 10             	add    $0x10,%esp
    3945:	85 c0                	test   %eax,%eax
    3947:	75 27                	jne    3970 <rmdot+0xf0>
  printf(1, "rmdot ok\n");
    3949:	83 ec 08             	sub    $0x8,%esp
    394c:	68 8e 5b 00 00       	push   $0x5b8e
    3951:	6a 01                	push   $0x1
    3953:	e8 08 14 00 00       	call   4d60 <printf>
}
    3958:	83 c4 10             	add    $0x10,%esp
    395b:	c9                   	leave  
    395c:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    395d:	50                   	push   %eax
    395e:	50                   	push   %eax
    395f:	68 f8 5a 00 00       	push   $0x5af8
    3964:	6a 01                	push   $0x1
    3966:	e8 f5 13 00 00       	call   4d60 <printf>
    exit();
    396b:	e8 5d 12 00 00       	call   4bcd <exit>
    printf(1, "unlink dots failed!\n");
    3970:	50                   	push   %eax
    3971:	50                   	push   %eax
    3972:	68 79 5b 00 00       	push   $0x5b79
    3977:	6a 01                	push   $0x1
    3979:	e8 e2 13 00 00       	call   4d60 <printf>
    exit();
    397e:	e8 4a 12 00 00       	call   4bcd <exit>
    printf(1, "unlink dots/.. worked!\n");
    3983:	52                   	push   %edx
    3984:	52                   	push   %edx
    3985:	68 61 5b 00 00       	push   $0x5b61
    398a:	6a 01                	push   $0x1
    398c:	e8 cf 13 00 00       	call   4d60 <printf>
    exit();
    3991:	e8 37 12 00 00       	call   4bcd <exit>
    printf(1, "unlink dots/. worked!\n");
    3996:	51                   	push   %ecx
    3997:	51                   	push   %ecx
    3998:	68 42 5b 00 00       	push   $0x5b42
    399d:	6a 01                	push   $0x1
    399f:	e8 bc 13 00 00       	call   4d60 <printf>
    exit();
    39a4:	e8 24 12 00 00       	call   4bcd <exit>
    printf(1, "chdir / failed\n");
    39a9:	50                   	push   %eax
    39aa:	50                   	push   %eax
    39ab:	68 73 4f 00 00       	push   $0x4f73
    39b0:	6a 01                	push   $0x1
    39b2:	e8 a9 13 00 00       	call   4d60 <printf>
    exit();
    39b7:	e8 11 12 00 00       	call   4bcd <exit>
    printf(1, "rm .. worked!\n");
    39bc:	50                   	push   %eax
    39bd:	50                   	push   %eax
    39be:	68 2c 5b 00 00       	push   $0x5b2c
    39c3:	6a 01                	push   $0x1
    39c5:	e8 96 13 00 00       	call   4d60 <printf>
    exit();
    39ca:	e8 fe 11 00 00       	call   4bcd <exit>
    printf(1, "rm . worked!\n");
    39cf:	50                   	push   %eax
    39d0:	50                   	push   %eax
    39d1:	68 1e 5b 00 00       	push   $0x5b1e
    39d6:	6a 01                	push   $0x1
    39d8:	e8 83 13 00 00       	call   4d60 <printf>
    exit();
    39dd:	e8 eb 11 00 00       	call   4bcd <exit>
    printf(1, "chdir dots failed\n");
    39e2:	50                   	push   %eax
    39e3:	50                   	push   %eax
    39e4:	68 0b 5b 00 00       	push   $0x5b0b
    39e9:	6a 01                	push   $0x1
    39eb:	e8 70 13 00 00       	call   4d60 <printf>
    exit();
    39f0:	e8 d8 11 00 00       	call   4bcd <exit>
    39f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    39fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003a00 <dirfile>:
{
    3a00:	f3 0f 1e fb          	endbr32 
    3a04:	55                   	push   %ebp
    3a05:	89 e5                	mov    %esp,%ebp
    3a07:	53                   	push   %ebx
    3a08:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "dir vs file\n");
    3a0b:	68 98 5b 00 00       	push   $0x5b98
    3a10:	6a 01                	push   $0x1
    3a12:	e8 49 13 00 00       	call   4d60 <printf>
  fd = open("dirfile", O_CREATE);
    3a17:	5b                   	pop    %ebx
    3a18:	58                   	pop    %eax
    3a19:	68 00 02 00 00       	push   $0x200
    3a1e:	68 a5 5b 00 00       	push   $0x5ba5
    3a23:	e8 e5 11 00 00       	call   4c0d <open>
  if(fd < 0){
    3a28:	83 c4 10             	add    $0x10,%esp
    3a2b:	85 c0                	test   %eax,%eax
    3a2d:	0f 88 43 01 00 00    	js     3b76 <dirfile+0x176>
  close(fd);
    3a33:	83 ec 0c             	sub    $0xc,%esp
    3a36:	50                   	push   %eax
    3a37:	e8 b9 11 00 00       	call   4bf5 <close>
  if(chdir("dirfile") == 0){
    3a3c:	c7 04 24 a5 5b 00 00 	movl   $0x5ba5,(%esp)
    3a43:	e8 f5 11 00 00       	call   4c3d <chdir>
    3a48:	83 c4 10             	add    $0x10,%esp
    3a4b:	85 c0                	test   %eax,%eax
    3a4d:	0f 84 10 01 00 00    	je     3b63 <dirfile+0x163>
  fd = open("dirfile/xx", 0);
    3a53:	83 ec 08             	sub    $0x8,%esp
    3a56:	6a 00                	push   $0x0
    3a58:	68 de 5b 00 00       	push   $0x5bde
    3a5d:	e8 ab 11 00 00       	call   4c0d <open>
  if(fd >= 0){
    3a62:	83 c4 10             	add    $0x10,%esp
    3a65:	85 c0                	test   %eax,%eax
    3a67:	0f 89 e3 00 00 00    	jns    3b50 <dirfile+0x150>
  fd = open("dirfile/xx", O_CREATE);
    3a6d:	83 ec 08             	sub    $0x8,%esp
    3a70:	68 00 02 00 00       	push   $0x200
    3a75:	68 de 5b 00 00       	push   $0x5bde
    3a7a:	e8 8e 11 00 00       	call   4c0d <open>
  if(fd >= 0){
    3a7f:	83 c4 10             	add    $0x10,%esp
    3a82:	85 c0                	test   %eax,%eax
    3a84:	0f 89 c6 00 00 00    	jns    3b50 <dirfile+0x150>
  if(mkdir("dirfile/xx") == 0){
    3a8a:	83 ec 0c             	sub    $0xc,%esp
    3a8d:	68 de 5b 00 00       	push   $0x5bde
    3a92:	e8 9e 11 00 00       	call   4c35 <mkdir>
    3a97:	83 c4 10             	add    $0x10,%esp
    3a9a:	85 c0                	test   %eax,%eax
    3a9c:	0f 84 46 01 00 00    	je     3be8 <dirfile+0x1e8>
  if(unlink("dirfile/xx") == 0){
    3aa2:	83 ec 0c             	sub    $0xc,%esp
    3aa5:	68 de 5b 00 00       	push   $0x5bde
    3aaa:	e8 6e 11 00 00       	call   4c1d <unlink>
    3aaf:	83 c4 10             	add    $0x10,%esp
    3ab2:	85 c0                	test   %eax,%eax
    3ab4:	0f 84 1b 01 00 00    	je     3bd5 <dirfile+0x1d5>
  if(link("README.md", "dirfile/xx") == 0){
    3aba:	83 ec 08             	sub    $0x8,%esp
    3abd:	68 de 5b 00 00       	push   $0x5bde
    3ac2:	68 42 5c 00 00       	push   $0x5c42
    3ac7:	e8 61 11 00 00       	call   4c2d <link>
    3acc:	83 c4 10             	add    $0x10,%esp
    3acf:	85 c0                	test   %eax,%eax
    3ad1:	0f 84 eb 00 00 00    	je     3bc2 <dirfile+0x1c2>
  if(unlink("dirfile") != 0){
    3ad7:	83 ec 0c             	sub    $0xc,%esp
    3ada:	68 a5 5b 00 00       	push   $0x5ba5
    3adf:	e8 39 11 00 00       	call   4c1d <unlink>
    3ae4:	83 c4 10             	add    $0x10,%esp
    3ae7:	85 c0                	test   %eax,%eax
    3ae9:	0f 85 c0 00 00 00    	jne    3baf <dirfile+0x1af>
  fd = open(".", O_RDWR);
    3aef:	83 ec 08             	sub    $0x8,%esp
    3af2:	6a 02                	push   $0x2
    3af4:	68 9e 57 00 00       	push   $0x579e
    3af9:	e8 0f 11 00 00       	call   4c0d <open>
  if(fd >= 0){
    3afe:	83 c4 10             	add    $0x10,%esp
    3b01:	85 c0                	test   %eax,%eax
    3b03:	0f 89 93 00 00 00    	jns    3b9c <dirfile+0x19c>
  fd = open(".", 0);
    3b09:	83 ec 08             	sub    $0x8,%esp
    3b0c:	6a 00                	push   $0x0
    3b0e:	68 9e 57 00 00       	push   $0x579e
    3b13:	e8 f5 10 00 00       	call   4c0d <open>
  if(write(fd, "x", 1) > 0){
    3b18:	83 c4 0c             	add    $0xc,%esp
    3b1b:	6a 01                	push   $0x1
  fd = open(".", 0);
    3b1d:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    3b1f:	68 81 58 00 00       	push   $0x5881
    3b24:	50                   	push   %eax
    3b25:	e8 c3 10 00 00       	call   4bed <write>
    3b2a:	83 c4 10             	add    $0x10,%esp
    3b2d:	85 c0                	test   %eax,%eax
    3b2f:	7f 58                	jg     3b89 <dirfile+0x189>
  close(fd);
    3b31:	83 ec 0c             	sub    $0xc,%esp
    3b34:	53                   	push   %ebx
    3b35:	e8 bb 10 00 00       	call   4bf5 <close>
  printf(1, "dir vs file OK\n");
    3b3a:	58                   	pop    %eax
    3b3b:	5a                   	pop    %edx
    3b3c:	68 78 5c 00 00       	push   $0x5c78
    3b41:	6a 01                	push   $0x1
    3b43:	e8 18 12 00 00       	call   4d60 <printf>
}
    3b48:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3b4b:	83 c4 10             	add    $0x10,%esp
    3b4e:	c9                   	leave  
    3b4f:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    3b50:	50                   	push   %eax
    3b51:	50                   	push   %eax
    3b52:	68 e9 5b 00 00       	push   $0x5be9
    3b57:	6a 01                	push   $0x1
    3b59:	e8 02 12 00 00       	call   4d60 <printf>
    exit();
    3b5e:	e8 6a 10 00 00       	call   4bcd <exit>
    printf(1, "chdir dirfile succeeded!\n");
    3b63:	52                   	push   %edx
    3b64:	52                   	push   %edx
    3b65:	68 c4 5b 00 00       	push   $0x5bc4
    3b6a:	6a 01                	push   $0x1
    3b6c:	e8 ef 11 00 00       	call   4d60 <printf>
    exit();
    3b71:	e8 57 10 00 00       	call   4bcd <exit>
    printf(1, "create dirfile failed\n");
    3b76:	51                   	push   %ecx
    3b77:	51                   	push   %ecx
    3b78:	68 ad 5b 00 00       	push   $0x5bad
    3b7d:	6a 01                	push   $0x1
    3b7f:	e8 dc 11 00 00       	call   4d60 <printf>
    exit();
    3b84:	e8 44 10 00 00       	call   4bcd <exit>
    printf(1, "write . succeeded!\n");
    3b89:	51                   	push   %ecx
    3b8a:	51                   	push   %ecx
    3b8b:	68 64 5c 00 00       	push   $0x5c64
    3b90:	6a 01                	push   $0x1
    3b92:	e8 c9 11 00 00       	call   4d60 <printf>
    exit();
    3b97:	e8 31 10 00 00       	call   4bcd <exit>
    printf(1, "open . for writing succeeded!\n");
    3b9c:	53                   	push   %ebx
    3b9d:	53                   	push   %ebx
    3b9e:	68 58 64 00 00       	push   $0x6458
    3ba3:	6a 01                	push   $0x1
    3ba5:	e8 b6 11 00 00       	call   4d60 <printf>
    exit();
    3baa:	e8 1e 10 00 00       	call   4bcd <exit>
    printf(1, "unlink dirfile failed!\n");
    3baf:	50                   	push   %eax
    3bb0:	50                   	push   %eax
    3bb1:	68 4c 5c 00 00       	push   $0x5c4c
    3bb6:	6a 01                	push   $0x1
    3bb8:	e8 a3 11 00 00       	call   4d60 <printf>
    exit();
    3bbd:	e8 0b 10 00 00       	call   4bcd <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    3bc2:	50                   	push   %eax
    3bc3:	50                   	push   %eax
    3bc4:	68 38 64 00 00       	push   $0x6438
    3bc9:	6a 01                	push   $0x1
    3bcb:	e8 90 11 00 00       	call   4d60 <printf>
    exit();
    3bd0:	e8 f8 0f 00 00       	call   4bcd <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    3bd5:	50                   	push   %eax
    3bd6:	50                   	push   %eax
    3bd7:	68 24 5c 00 00       	push   $0x5c24
    3bdc:	6a 01                	push   $0x1
    3bde:	e8 7d 11 00 00       	call   4d60 <printf>
    exit();
    3be3:	e8 e5 0f 00 00       	call   4bcd <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3be8:	50                   	push   %eax
    3be9:	50                   	push   %eax
    3bea:	68 07 5c 00 00       	push   $0x5c07
    3bef:	6a 01                	push   $0x1
    3bf1:	e8 6a 11 00 00       	call   4d60 <printf>
    exit();
    3bf6:	e8 d2 0f 00 00       	call   4bcd <exit>
    3bfb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3bff:	90                   	nop

00003c00 <iref>:
{
    3c00:	f3 0f 1e fb          	endbr32 
    3c04:	55                   	push   %ebp
    3c05:	89 e5                	mov    %esp,%ebp
    3c07:	53                   	push   %ebx
  printf(1, "empty file name\n");
    3c08:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    3c0d:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "empty file name\n");
    3c10:	68 88 5c 00 00       	push   $0x5c88
    3c15:	6a 01                	push   $0x1
    3c17:	e8 44 11 00 00       	call   4d60 <printf>
    3c1c:	83 c4 10             	add    $0x10,%esp
    3c1f:	90                   	nop
    if(mkdir("irefd") != 0){
    3c20:	83 ec 0c             	sub    $0xc,%esp
    3c23:	68 99 5c 00 00       	push   $0x5c99
    3c28:	e8 08 10 00 00       	call   4c35 <mkdir>
    3c2d:	83 c4 10             	add    $0x10,%esp
    3c30:	85 c0                	test   %eax,%eax
    3c32:	0f 85 bb 00 00 00    	jne    3cf3 <iref+0xf3>
    if(chdir("irefd") != 0){
    3c38:	83 ec 0c             	sub    $0xc,%esp
    3c3b:	68 99 5c 00 00       	push   $0x5c99
    3c40:	e8 f8 0f 00 00       	call   4c3d <chdir>
    3c45:	83 c4 10             	add    $0x10,%esp
    3c48:	85 c0                	test   %eax,%eax
    3c4a:	0f 85 b7 00 00 00    	jne    3d07 <iref+0x107>
    mkdir("");
    3c50:	83 ec 0c             	sub    $0xc,%esp
    3c53:	68 4b 53 00 00       	push   $0x534b
    3c58:	e8 d8 0f 00 00       	call   4c35 <mkdir>
    link("README.md", "");
    3c5d:	59                   	pop    %ecx
    3c5e:	58                   	pop    %eax
    3c5f:	68 4b 53 00 00       	push   $0x534b
    3c64:	68 42 5c 00 00       	push   $0x5c42
    3c69:	e8 bf 0f 00 00       	call   4c2d <link>
    fd = open("", O_CREATE);
    3c6e:	58                   	pop    %eax
    3c6f:	5a                   	pop    %edx
    3c70:	68 00 02 00 00       	push   $0x200
    3c75:	68 4b 53 00 00       	push   $0x534b
    3c7a:	e8 8e 0f 00 00       	call   4c0d <open>
    if(fd >= 0)
    3c7f:	83 c4 10             	add    $0x10,%esp
    3c82:	85 c0                	test   %eax,%eax
    3c84:	78 0c                	js     3c92 <iref+0x92>
      close(fd);
    3c86:	83 ec 0c             	sub    $0xc,%esp
    3c89:	50                   	push   %eax
    3c8a:	e8 66 0f 00 00       	call   4bf5 <close>
    3c8f:	83 c4 10             	add    $0x10,%esp
    fd = open("xx", O_CREATE);
    3c92:	83 ec 08             	sub    $0x8,%esp
    3c95:	68 00 02 00 00       	push   $0x200
    3c9a:	68 80 58 00 00       	push   $0x5880
    3c9f:	e8 69 0f 00 00       	call   4c0d <open>
    if(fd >= 0)
    3ca4:	83 c4 10             	add    $0x10,%esp
    3ca7:	85 c0                	test   %eax,%eax
    3ca9:	78 0c                	js     3cb7 <iref+0xb7>
      close(fd);
    3cab:	83 ec 0c             	sub    $0xc,%esp
    3cae:	50                   	push   %eax
    3caf:	e8 41 0f 00 00       	call   4bf5 <close>
    3cb4:	83 c4 10             	add    $0x10,%esp
    unlink("xx");
    3cb7:	83 ec 0c             	sub    $0xc,%esp
    3cba:	68 80 58 00 00       	push   $0x5880
    3cbf:	e8 59 0f 00 00       	call   4c1d <unlink>
  for(i = 0; i < 50 + 1; i++){
    3cc4:	83 c4 10             	add    $0x10,%esp
    3cc7:	83 eb 01             	sub    $0x1,%ebx
    3cca:	0f 85 50 ff ff ff    	jne    3c20 <iref+0x20>
  chdir("/");
    3cd0:	83 ec 0c             	sub    $0xc,%esp
    3cd3:	68 71 4f 00 00       	push   $0x4f71
    3cd8:	e8 60 0f 00 00       	call   4c3d <chdir>
  printf(1, "empty file name OK\n");
    3cdd:	58                   	pop    %eax
    3cde:	5a                   	pop    %edx
    3cdf:	68 c7 5c 00 00       	push   $0x5cc7
    3ce4:	6a 01                	push   $0x1
    3ce6:	e8 75 10 00 00       	call   4d60 <printf>
}
    3ceb:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3cee:	83 c4 10             	add    $0x10,%esp
    3cf1:	c9                   	leave  
    3cf2:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    3cf3:	83 ec 08             	sub    $0x8,%esp
    3cf6:	68 9f 5c 00 00       	push   $0x5c9f
    3cfb:	6a 01                	push   $0x1
    3cfd:	e8 5e 10 00 00       	call   4d60 <printf>
      exit();
    3d02:	e8 c6 0e 00 00       	call   4bcd <exit>
      printf(1, "chdir irefd failed\n");
    3d07:	83 ec 08             	sub    $0x8,%esp
    3d0a:	68 b3 5c 00 00       	push   $0x5cb3
    3d0f:	6a 01                	push   $0x1
    3d11:	e8 4a 10 00 00       	call   4d60 <printf>
      exit();
    3d16:	e8 b2 0e 00 00       	call   4bcd <exit>
    3d1b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3d1f:	90                   	nop

00003d20 <forktest>:
{
    3d20:	f3 0f 1e fb          	endbr32 
    3d24:	55                   	push   %ebp
    3d25:	89 e5                	mov    %esp,%ebp
    3d27:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    3d28:	31 db                	xor    %ebx,%ebx
{
    3d2a:	83 ec 0c             	sub    $0xc,%esp
  printf(1, "fork test\n");
    3d2d:	68 db 5c 00 00       	push   $0x5cdb
    3d32:	6a 01                	push   $0x1
    3d34:	e8 27 10 00 00       	call   4d60 <printf>
    3d39:	83 c4 10             	add    $0x10,%esp
    3d3c:	eb 0f                	jmp    3d4d <forktest+0x2d>
    3d3e:	66 90                	xchg   %ax,%ax
    if(pid == 0)
    3d40:	74 4a                	je     3d8c <forktest+0x6c>
  for(n=0; n<1000; n++){
    3d42:	83 c3 01             	add    $0x1,%ebx
    3d45:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    3d4b:	74 6b                	je     3db8 <forktest+0x98>
    pid = fork();
    3d4d:	e8 73 0e 00 00       	call   4bc5 <fork>
    if(pid < 0)
    3d52:	85 c0                	test   %eax,%eax
    3d54:	79 ea                	jns    3d40 <forktest+0x20>
  for(; n > 0; n--){
    3d56:	85 db                	test   %ebx,%ebx
    3d58:	74 14                	je     3d6e <forktest+0x4e>
    3d5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait() < 0){
    3d60:	e8 70 0e 00 00       	call   4bd5 <wait>
    3d65:	85 c0                	test   %eax,%eax
    3d67:	78 28                	js     3d91 <forktest+0x71>
  for(; n > 0; n--){
    3d69:	83 eb 01             	sub    $0x1,%ebx
    3d6c:	75 f2                	jne    3d60 <forktest+0x40>
  if(wait() != -1){
    3d6e:	e8 62 0e 00 00       	call   4bd5 <wait>
    3d73:	83 f8 ff             	cmp    $0xffffffff,%eax
    3d76:	75 2d                	jne    3da5 <forktest+0x85>
  printf(1, "fork test OK\n");
    3d78:	83 ec 08             	sub    $0x8,%esp
    3d7b:	68 0d 5d 00 00       	push   $0x5d0d
    3d80:	6a 01                	push   $0x1
    3d82:	e8 d9 0f 00 00       	call   4d60 <printf>
}
    3d87:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    3d8a:	c9                   	leave  
    3d8b:	c3                   	ret    
      exit();
    3d8c:	e8 3c 0e 00 00       	call   4bcd <exit>
      printf(1, "wait stopped early\n");
    3d91:	83 ec 08             	sub    $0x8,%esp
    3d94:	68 e6 5c 00 00       	push   $0x5ce6
    3d99:	6a 01                	push   $0x1
    3d9b:	e8 c0 0f 00 00       	call   4d60 <printf>
      exit();
    3da0:	e8 28 0e 00 00       	call   4bcd <exit>
    printf(1, "wait got too many\n");
    3da5:	52                   	push   %edx
    3da6:	52                   	push   %edx
    3da7:	68 fa 5c 00 00       	push   $0x5cfa
    3dac:	6a 01                	push   $0x1
    3dae:	e8 ad 0f 00 00       	call   4d60 <printf>
    exit();
    3db3:	e8 15 0e 00 00       	call   4bcd <exit>
    printf(1, "fork claimed to work 1000 times!\n");
    3db8:	50                   	push   %eax
    3db9:	50                   	push   %eax
    3dba:	68 78 64 00 00       	push   $0x6478
    3dbf:	6a 01                	push   $0x1
    3dc1:	e8 9a 0f 00 00       	call   4d60 <printf>
    exit();
    3dc6:	e8 02 0e 00 00       	call   4bcd <exit>
    3dcb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3dcf:	90                   	nop

00003dd0 <sbrktest>:
{
    3dd0:	f3 0f 1e fb          	endbr32 
    3dd4:	55                   	push   %ebp
    3dd5:	89 e5                	mov    %esp,%ebp
    3dd7:	57                   	push   %edi
  for(i = 0; i < 5000; i++){
    3dd8:	31 ff                	xor    %edi,%edi
{
    3dda:	56                   	push   %esi
    3ddb:	53                   	push   %ebx
    3ddc:	83 ec 54             	sub    $0x54,%esp
  printf(stdout, "sbrk test\n");
    3ddf:	68 1b 5d 00 00       	push   $0x5d1b
    3de4:	ff 35 60 70 00 00    	pushl  0x7060
    3dea:	e8 71 0f 00 00       	call   4d60 <printf>
  oldbrk = sbrk(0);
    3def:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3df6:	e8 5a 0e 00 00       	call   4c55 <sbrk>
  a = sbrk(0);
    3dfb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    3e02:	89 c3                	mov    %eax,%ebx
  a = sbrk(0);
    3e04:	e8 4c 0e 00 00       	call   4c55 <sbrk>
    3e09:	83 c4 10             	add    $0x10,%esp
    3e0c:	89 c6                	mov    %eax,%esi
  for(i = 0; i < 5000; i++){
    3e0e:	eb 02                	jmp    3e12 <sbrktest+0x42>
    a = b + 1;
    3e10:	89 c6                	mov    %eax,%esi
    b = sbrk(1);
    3e12:	83 ec 0c             	sub    $0xc,%esp
    3e15:	6a 01                	push   $0x1
    3e17:	e8 39 0e 00 00       	call   4c55 <sbrk>
    if(b != a){
    3e1c:	83 c4 10             	add    $0x10,%esp
    3e1f:	39 f0                	cmp    %esi,%eax
    3e21:	0f 85 84 02 00 00    	jne    40ab <sbrktest+0x2db>
  for(i = 0; i < 5000; i++){
    3e27:	83 c7 01             	add    $0x1,%edi
    *b = 1;
    3e2a:	c6 06 01             	movb   $0x1,(%esi)
    a = b + 1;
    3e2d:	8d 46 01             	lea    0x1(%esi),%eax
  for(i = 0; i < 5000; i++){
    3e30:	81 ff 88 13 00 00    	cmp    $0x1388,%edi
    3e36:	75 d8                	jne    3e10 <sbrktest+0x40>
  pid = fork();
    3e38:	e8 88 0d 00 00       	call   4bc5 <fork>
    3e3d:	89 c7                	mov    %eax,%edi
  if(pid < 0){
    3e3f:	85 c0                	test   %eax,%eax
    3e41:	0f 88 91 03 00 00    	js     41d8 <sbrktest+0x408>
  c = sbrk(1);
    3e47:	83 ec 0c             	sub    $0xc,%esp
  if(c != a + 1){
    3e4a:	83 c6 02             	add    $0x2,%esi
  c = sbrk(1);
    3e4d:	6a 01                	push   $0x1
    3e4f:	e8 01 0e 00 00       	call   4c55 <sbrk>
  c = sbrk(1);
    3e54:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3e5b:	e8 f5 0d 00 00       	call   4c55 <sbrk>
  if(c != a + 1){
    3e60:	83 c4 10             	add    $0x10,%esp
    3e63:	39 c6                	cmp    %eax,%esi
    3e65:	0f 85 56 03 00 00    	jne    41c1 <sbrktest+0x3f1>
  if(pid == 0)
    3e6b:	85 ff                	test   %edi,%edi
    3e6d:	0f 84 49 03 00 00    	je     41bc <sbrktest+0x3ec>
  wait();
    3e73:	e8 5d 0d 00 00       	call   4bd5 <wait>
  a = sbrk(0);
    3e78:	83 ec 0c             	sub    $0xc,%esp
    3e7b:	6a 00                	push   $0x0
    3e7d:	e8 d3 0d 00 00       	call   4c55 <sbrk>
    3e82:	89 c6                	mov    %eax,%esi
  amt = (BIG) - (uint)a;
    3e84:	b8 00 00 40 06       	mov    $0x6400000,%eax
    3e89:	29 f0                	sub    %esi,%eax
  p = sbrk(amt);
    3e8b:	89 04 24             	mov    %eax,(%esp)
    3e8e:	e8 c2 0d 00 00       	call   4c55 <sbrk>
  if (p != a) {
    3e93:	83 c4 10             	add    $0x10,%esp
    3e96:	39 c6                	cmp    %eax,%esi
    3e98:	0f 85 07 03 00 00    	jne    41a5 <sbrktest+0x3d5>
  a = sbrk(0);
    3e9e:	83 ec 0c             	sub    $0xc,%esp
  *lastaddr = 99;
    3ea1:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    3ea8:	6a 00                	push   $0x0
    3eaa:	e8 a6 0d 00 00       	call   4c55 <sbrk>
  c = sbrk(-4096);
    3eaf:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    3eb6:	89 c6                	mov    %eax,%esi
  c = sbrk(-4096);
    3eb8:	e8 98 0d 00 00       	call   4c55 <sbrk>
  if(c == (char*)0xffffffff){
    3ebd:	83 c4 10             	add    $0x10,%esp
    3ec0:	83 f8 ff             	cmp    $0xffffffff,%eax
    3ec3:	0f 84 c5 02 00 00    	je     418e <sbrktest+0x3be>
  c = sbrk(0);
    3ec9:	83 ec 0c             	sub    $0xc,%esp
    3ecc:	6a 00                	push   $0x0
    3ece:	e8 82 0d 00 00       	call   4c55 <sbrk>
  if(c != a - 4096){
    3ed3:	8d 96 00 f0 ff ff    	lea    -0x1000(%esi),%edx
    3ed9:	83 c4 10             	add    $0x10,%esp
    3edc:	39 d0                	cmp    %edx,%eax
    3ede:	0f 85 93 02 00 00    	jne    4177 <sbrktest+0x3a7>
  a = sbrk(0);
    3ee4:	83 ec 0c             	sub    $0xc,%esp
    3ee7:	6a 00                	push   $0x0
    3ee9:	e8 67 0d 00 00       	call   4c55 <sbrk>
  c = sbrk(4096);
    3eee:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    3ef5:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    3ef7:	e8 59 0d 00 00       	call   4c55 <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3efc:	83 c4 10             	add    $0x10,%esp
  c = sbrk(4096);
    3eff:	89 c7                	mov    %eax,%edi
  if(c != a || sbrk(0) != a + 4096){
    3f01:	39 c6                	cmp    %eax,%esi
    3f03:	0f 85 57 02 00 00    	jne    4160 <sbrktest+0x390>
    3f09:	83 ec 0c             	sub    $0xc,%esp
    3f0c:	6a 00                	push   $0x0
    3f0e:	e8 42 0d 00 00       	call   4c55 <sbrk>
    3f13:	8d 96 00 10 00 00    	lea    0x1000(%esi),%edx
    3f19:	83 c4 10             	add    $0x10,%esp
    3f1c:	39 c2                	cmp    %eax,%edx
    3f1e:	0f 85 3c 02 00 00    	jne    4160 <sbrktest+0x390>
  if(*lastaddr == 99){
    3f24:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    3f2b:	0f 84 18 02 00 00    	je     4149 <sbrktest+0x379>
  a = sbrk(0);
    3f31:	83 ec 0c             	sub    $0xc,%esp
    3f34:	6a 00                	push   $0x0
    3f36:	e8 1a 0d 00 00       	call   4c55 <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    3f3b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3f42:	89 c6                	mov    %eax,%esi
  c = sbrk(-(sbrk(0) - oldbrk));
    3f44:	e8 0c 0d 00 00       	call   4c55 <sbrk>
    3f49:	89 d9                	mov    %ebx,%ecx
    3f4b:	29 c1                	sub    %eax,%ecx
    3f4d:	89 0c 24             	mov    %ecx,(%esp)
    3f50:	e8 00 0d 00 00       	call   4c55 <sbrk>
  if(c != a){
    3f55:	83 c4 10             	add    $0x10,%esp
    3f58:	39 c6                	cmp    %eax,%esi
    3f5a:	0f 85 d2 01 00 00    	jne    4132 <sbrktest+0x362>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3f60:	be 00 00 00 80       	mov    $0x80000000,%esi
    3f65:	8d 76 00             	lea    0x0(%esi),%esi
    ppid = getpid();
    3f68:	e8 e0 0c 00 00       	call   4c4d <getpid>
    3f6d:	89 c7                	mov    %eax,%edi
    pid = fork();
    3f6f:	e8 51 0c 00 00       	call   4bc5 <fork>
    if(pid < 0){
    3f74:	85 c0                	test   %eax,%eax
    3f76:	0f 88 9e 01 00 00    	js     411a <sbrktest+0x34a>
    if(pid == 0){
    3f7c:	0f 84 76 01 00 00    	je     40f8 <sbrktest+0x328>
    wait();
    3f82:	e8 4e 0c 00 00       	call   4bd5 <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    3f87:	81 c6 50 c3 00 00    	add    $0xc350,%esi
    3f8d:	81 fe 80 84 1e 80    	cmp    $0x801e8480,%esi
    3f93:	75 d3                	jne    3f68 <sbrktest+0x198>
  if(pipe(fds) != 0){
    3f95:	83 ec 0c             	sub    $0xc,%esp
    3f98:	8d 45 b8             	lea    -0x48(%ebp),%eax
    3f9b:	50                   	push   %eax
    3f9c:	e8 3c 0c 00 00       	call   4bdd <pipe>
    3fa1:	83 c4 10             	add    $0x10,%esp
    3fa4:	85 c0                	test   %eax,%eax
    3fa6:	0f 85 34 01 00 00    	jne    40e0 <sbrktest+0x310>
    3fac:	8d 75 c0             	lea    -0x40(%ebp),%esi
    3faf:	89 f7                	mov    %esi,%edi
    if((pids[i] = fork()) == 0){
    3fb1:	e8 0f 0c 00 00       	call   4bc5 <fork>
    3fb6:	89 07                	mov    %eax,(%edi)
    3fb8:	85 c0                	test   %eax,%eax
    3fba:	0f 84 8f 00 00 00    	je     404f <sbrktest+0x27f>
    if(pids[i] != -1)
    3fc0:	83 f8 ff             	cmp    $0xffffffff,%eax
    3fc3:	74 14                	je     3fd9 <sbrktest+0x209>
      read(fds[0], &scratch, 1);
    3fc5:	83 ec 04             	sub    $0x4,%esp
    3fc8:	8d 45 b7             	lea    -0x49(%ebp),%eax
    3fcb:	6a 01                	push   $0x1
    3fcd:	50                   	push   %eax
    3fce:	ff 75 b8             	pushl  -0x48(%ebp)
    3fd1:	e8 0f 0c 00 00       	call   4be5 <read>
    3fd6:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    3fd9:	83 c7 04             	add    $0x4,%edi
    3fdc:	8d 45 e8             	lea    -0x18(%ebp),%eax
    3fdf:	39 c7                	cmp    %eax,%edi
    3fe1:	75 ce                	jne    3fb1 <sbrktest+0x1e1>
  c = sbrk(4096);
    3fe3:	83 ec 0c             	sub    $0xc,%esp
    3fe6:	68 00 10 00 00       	push   $0x1000
    3feb:	e8 65 0c 00 00       	call   4c55 <sbrk>
    3ff0:	83 c4 10             	add    $0x10,%esp
    3ff3:	89 c7                	mov    %eax,%edi
    if(pids[i] == -1)
    3ff5:	8b 06                	mov    (%esi),%eax
    3ff7:	83 f8 ff             	cmp    $0xffffffff,%eax
    3ffa:	74 11                	je     400d <sbrktest+0x23d>
    kill(pids[i]);
    3ffc:	83 ec 0c             	sub    $0xc,%esp
    3fff:	50                   	push   %eax
    4000:	e8 f8 0b 00 00       	call   4bfd <kill>
    wait();
    4005:	e8 cb 0b 00 00       	call   4bd5 <wait>
    400a:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    400d:	83 c6 04             	add    $0x4,%esi
    4010:	8d 45 e8             	lea    -0x18(%ebp),%eax
    4013:	39 f0                	cmp    %esi,%eax
    4015:	75 de                	jne    3ff5 <sbrktest+0x225>
  if(c == (char*)0xffffffff){
    4017:	83 ff ff             	cmp    $0xffffffff,%edi
    401a:	0f 84 a9 00 00 00    	je     40c9 <sbrktest+0x2f9>
  if(sbrk(0) > oldbrk)
    4020:	83 ec 0c             	sub    $0xc,%esp
    4023:	6a 00                	push   $0x0
    4025:	e8 2b 0c 00 00       	call   4c55 <sbrk>
    402a:	83 c4 10             	add    $0x10,%esp
    402d:	39 c3                	cmp    %eax,%ebx
    402f:	72 61                	jb     4092 <sbrktest+0x2c2>
  printf(stdout, "sbrk test OK\n");
    4031:	83 ec 08             	sub    $0x8,%esp
    4034:	68 c3 5d 00 00       	push   $0x5dc3
    4039:	ff 35 60 70 00 00    	pushl  0x7060
    403f:	e8 1c 0d 00 00       	call   4d60 <printf>
}
    4044:	83 c4 10             	add    $0x10,%esp
    4047:	8d 65 f4             	lea    -0xc(%ebp),%esp
    404a:	5b                   	pop    %ebx
    404b:	5e                   	pop    %esi
    404c:	5f                   	pop    %edi
    404d:	5d                   	pop    %ebp
    404e:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    404f:	83 ec 0c             	sub    $0xc,%esp
    4052:	6a 00                	push   $0x0
    4054:	e8 fc 0b 00 00       	call   4c55 <sbrk>
    4059:	89 c2                	mov    %eax,%edx
    405b:	b8 00 00 40 06       	mov    $0x6400000,%eax
    4060:	29 d0                	sub    %edx,%eax
    4062:	89 04 24             	mov    %eax,(%esp)
    4065:	e8 eb 0b 00 00       	call   4c55 <sbrk>
      write(fds[1], "x", 1);
    406a:	83 c4 0c             	add    $0xc,%esp
    406d:	6a 01                	push   $0x1
    406f:	68 81 58 00 00       	push   $0x5881
    4074:	ff 75 bc             	pushl  -0x44(%ebp)
    4077:	e8 71 0b 00 00       	call   4bed <write>
    407c:	83 c4 10             	add    $0x10,%esp
    407f:	90                   	nop
      for(;;) sleep(1000);
    4080:	83 ec 0c             	sub    $0xc,%esp
    4083:	68 e8 03 00 00       	push   $0x3e8
    4088:	e8 d0 0b 00 00       	call   4c5d <sleep>
    408d:	83 c4 10             	add    $0x10,%esp
    4090:	eb ee                	jmp    4080 <sbrktest+0x2b0>
    sbrk(-(sbrk(0) - oldbrk));
    4092:	83 ec 0c             	sub    $0xc,%esp
    4095:	6a 00                	push   $0x0
    4097:	e8 b9 0b 00 00       	call   4c55 <sbrk>
    409c:	29 c3                	sub    %eax,%ebx
    409e:	89 1c 24             	mov    %ebx,(%esp)
    40a1:	e8 af 0b 00 00       	call   4c55 <sbrk>
    40a6:	83 c4 10             	add    $0x10,%esp
    40a9:	eb 86                	jmp    4031 <sbrktest+0x261>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    40ab:	83 ec 0c             	sub    $0xc,%esp
    40ae:	50                   	push   %eax
    40af:	56                   	push   %esi
    40b0:	57                   	push   %edi
    40b1:	68 26 5d 00 00       	push   $0x5d26
    40b6:	ff 35 60 70 00 00    	pushl  0x7060
    40bc:	e8 9f 0c 00 00       	call   4d60 <printf>
      exit();
    40c1:	83 c4 20             	add    $0x20,%esp
    40c4:	e8 04 0b 00 00       	call   4bcd <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    40c9:	50                   	push   %eax
    40ca:	50                   	push   %eax
    40cb:	68 a8 5d 00 00       	push   $0x5da8
    40d0:	ff 35 60 70 00 00    	pushl  0x7060
    40d6:	e8 85 0c 00 00       	call   4d60 <printf>
    exit();
    40db:	e8 ed 0a 00 00       	call   4bcd <exit>
    printf(1, "pipe() failed\n");
    40e0:	52                   	push   %edx
    40e1:	52                   	push   %edx
    40e2:	68 61 52 00 00       	push   $0x5261
    40e7:	6a 01                	push   $0x1
    40e9:	e8 72 0c 00 00       	call   4d60 <printf>
    exit();
    40ee:	e8 da 0a 00 00       	call   4bcd <exit>
    40f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    40f7:	90                   	nop
      printf(stdout, "oops could read %x = %x\n", a, *a);
    40f8:	0f be 06             	movsbl (%esi),%eax
    40fb:	50                   	push   %eax
    40fc:	56                   	push   %esi
    40fd:	68 8f 5d 00 00       	push   $0x5d8f
    4102:	ff 35 60 70 00 00    	pushl  0x7060
    4108:	e8 53 0c 00 00       	call   4d60 <printf>
      kill(ppid);
    410d:	89 3c 24             	mov    %edi,(%esp)
    4110:	e8 e8 0a 00 00       	call   4bfd <kill>
      exit();
    4115:	e8 b3 0a 00 00       	call   4bcd <exit>
      printf(stdout, "fork failed\n");
    411a:	83 ec 08             	sub    $0x8,%esp
    411d:	68 6c 5e 00 00       	push   $0x5e6c
    4122:	ff 35 60 70 00 00    	pushl  0x7060
    4128:	e8 33 0c 00 00       	call   4d60 <printf>
      exit();
    412d:	e8 9b 0a 00 00       	call   4bcd <exit>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    4132:	50                   	push   %eax
    4133:	56                   	push   %esi
    4134:	68 6c 65 00 00       	push   $0x656c
    4139:	ff 35 60 70 00 00    	pushl  0x7060
    413f:	e8 1c 0c 00 00       	call   4d60 <printf>
    exit();
    4144:	e8 84 0a 00 00       	call   4bcd <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    4149:	51                   	push   %ecx
    414a:	51                   	push   %ecx
    414b:	68 3c 65 00 00       	push   $0x653c
    4150:	ff 35 60 70 00 00    	pushl  0x7060
    4156:	e8 05 0c 00 00       	call   4d60 <printf>
    exit();
    415b:	e8 6d 0a 00 00       	call   4bcd <exit>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    4160:	57                   	push   %edi
    4161:	56                   	push   %esi
    4162:	68 14 65 00 00       	push   $0x6514
    4167:	ff 35 60 70 00 00    	pushl  0x7060
    416d:	e8 ee 0b 00 00       	call   4d60 <printf>
    exit();
    4172:	e8 56 0a 00 00       	call   4bcd <exit>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    4177:	50                   	push   %eax
    4178:	56                   	push   %esi
    4179:	68 dc 64 00 00       	push   $0x64dc
    417e:	ff 35 60 70 00 00    	pushl  0x7060
    4184:	e8 d7 0b 00 00       	call   4d60 <printf>
    exit();
    4189:	e8 3f 0a 00 00       	call   4bcd <exit>
    printf(stdout, "sbrk could not deallocate\n");
    418e:	53                   	push   %ebx
    418f:	53                   	push   %ebx
    4190:	68 74 5d 00 00       	push   $0x5d74
    4195:	ff 35 60 70 00 00    	pushl  0x7060
    419b:	e8 c0 0b 00 00       	call   4d60 <printf>
    exit();
    41a0:	e8 28 0a 00 00       	call   4bcd <exit>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    41a5:	56                   	push   %esi
    41a6:	56                   	push   %esi
    41a7:	68 9c 64 00 00       	push   $0x649c
    41ac:	ff 35 60 70 00 00    	pushl  0x7060
    41b2:	e8 a9 0b 00 00       	call   4d60 <printf>
    exit();
    41b7:	e8 11 0a 00 00       	call   4bcd <exit>
    exit();
    41bc:	e8 0c 0a 00 00       	call   4bcd <exit>
    printf(stdout, "sbrk test failed post-fork\n");
    41c1:	57                   	push   %edi
    41c2:	57                   	push   %edi
    41c3:	68 58 5d 00 00       	push   $0x5d58
    41c8:	ff 35 60 70 00 00    	pushl  0x7060
    41ce:	e8 8d 0b 00 00       	call   4d60 <printf>
    exit();
    41d3:	e8 f5 09 00 00       	call   4bcd <exit>
    printf(stdout, "sbrk test fork failed\n");
    41d8:	50                   	push   %eax
    41d9:	50                   	push   %eax
    41da:	68 41 5d 00 00       	push   $0x5d41
    41df:	ff 35 60 70 00 00    	pushl  0x7060
    41e5:	e8 76 0b 00 00       	call   4d60 <printf>
    exit();
    41ea:	e8 de 09 00 00       	call   4bcd <exit>
    41ef:	90                   	nop

000041f0 <validateint>:
{
    41f0:	f3 0f 1e fb          	endbr32 
}
    41f4:	c3                   	ret    
    41f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    41fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004200 <validatetest>:
{
    4200:	f3 0f 1e fb          	endbr32 
    4204:	55                   	push   %ebp
    4205:	89 e5                	mov    %esp,%ebp
    4207:	56                   	push   %esi
  for(p = PGSIZE; p <= (uint)hi; p += PGSIZE){
    4208:	be 00 10 00 00       	mov    $0x1000,%esi
{
    420d:	53                   	push   %ebx
  printf(stdout, "validate test\n");
    420e:	83 ec 08             	sub    $0x8,%esp
    4211:	68 d1 5d 00 00       	push   $0x5dd1
    4216:	ff 35 60 70 00 00    	pushl  0x7060
    421c:	e8 3f 0b 00 00       	call   4d60 <printf>
    4221:	83 c4 10             	add    $0x10,%esp
    4224:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if((pid = fork()) == 0){
    4228:	e8 98 09 00 00       	call   4bc5 <fork>
    422d:	89 c3                	mov    %eax,%ebx
    422f:	85 c0                	test   %eax,%eax
    4231:	74 63                	je     4296 <validatetest+0x96>
    sleep(0);
    4233:	83 ec 0c             	sub    $0xc,%esp
    4236:	6a 00                	push   $0x0
    4238:	e8 20 0a 00 00       	call   4c5d <sleep>
    sleep(0);
    423d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4244:	e8 14 0a 00 00       	call   4c5d <sleep>
    kill(pid);
    4249:	89 1c 24             	mov    %ebx,(%esp)
    424c:	e8 ac 09 00 00       	call   4bfd <kill>
    wait();
    4251:	e8 7f 09 00 00       	call   4bd5 <wait>
    if(link("nosuchfile", (char*)p) != -1){
    4256:	58                   	pop    %eax
    4257:	5a                   	pop    %edx
    4258:	56                   	push   %esi
    4259:	68 e0 5d 00 00       	push   $0x5de0
    425e:	e8 ca 09 00 00       	call   4c2d <link>
    4263:	83 c4 10             	add    $0x10,%esp
    4266:	83 f8 ff             	cmp    $0xffffffff,%eax
    4269:	75 30                	jne    429b <validatetest+0x9b>
  for(p = PGSIZE; p <= (uint)hi; p += PGSIZE){
    426b:	81 c6 00 10 00 00    	add    $0x1000,%esi
    4271:	81 fe 00 40 11 00    	cmp    $0x114000,%esi
    4277:	75 af                	jne    4228 <validatetest+0x28>
  printf(stdout, "validate ok\n");
    4279:	83 ec 08             	sub    $0x8,%esp
    427c:	68 04 5e 00 00       	push   $0x5e04
    4281:	ff 35 60 70 00 00    	pushl  0x7060
    4287:	e8 d4 0a 00 00       	call   4d60 <printf>
}
    428c:	83 c4 10             	add    $0x10,%esp
    428f:	8d 65 f8             	lea    -0x8(%ebp),%esp
    4292:	5b                   	pop    %ebx
    4293:	5e                   	pop    %esi
    4294:	5d                   	pop    %ebp
    4295:	c3                   	ret    
      exit();
    4296:	e8 32 09 00 00       	call   4bcd <exit>
      printf(stdout, "link should not succeed\n");
    429b:	83 ec 08             	sub    $0x8,%esp
    429e:	68 eb 5d 00 00       	push   $0x5deb
    42a3:	ff 35 60 70 00 00    	pushl  0x7060
    42a9:	e8 b2 0a 00 00       	call   4d60 <printf>
      exit();
    42ae:	e8 1a 09 00 00       	call   4bcd <exit>
    42b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    42ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000042c0 <bsstest>:
{
    42c0:	f3 0f 1e fb          	endbr32 
    42c4:	55                   	push   %ebp
    42c5:	89 e5                	mov    %esp,%ebp
    42c7:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "bss test\n");
    42ca:	68 11 5e 00 00       	push   $0x5e11
    42cf:	ff 35 60 70 00 00    	pushl  0x7060
    42d5:	e8 86 0a 00 00       	call   4d60 <printf>
    42da:	83 c4 10             	add    $0x10,%esp
  for(i = 0; i < sizeof(uninit); i++){
    42dd:	31 c0                	xor    %eax,%eax
    42df:	90                   	nop
    if(uninit[i] != '\0'){
    42e0:	80 b8 20 71 00 00 00 	cmpb   $0x0,0x7120(%eax)
    42e7:	75 22                	jne    430b <bsstest+0x4b>
  for(i = 0; i < sizeof(uninit); i++){
    42e9:	83 c0 01             	add    $0x1,%eax
    42ec:	3d 10 27 00 00       	cmp    $0x2710,%eax
    42f1:	75 ed                	jne    42e0 <bsstest+0x20>
  printf(stdout, "bss test ok\n");
    42f3:	83 ec 08             	sub    $0x8,%esp
    42f6:	68 2c 5e 00 00       	push   $0x5e2c
    42fb:	ff 35 60 70 00 00    	pushl  0x7060
    4301:	e8 5a 0a 00 00       	call   4d60 <printf>
}
    4306:	83 c4 10             	add    $0x10,%esp
    4309:	c9                   	leave  
    430a:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    430b:	83 ec 08             	sub    $0x8,%esp
    430e:	68 1b 5e 00 00       	push   $0x5e1b
    4313:	ff 35 60 70 00 00    	pushl  0x7060
    4319:	e8 42 0a 00 00       	call   4d60 <printf>
      exit();
    431e:	e8 aa 08 00 00       	call   4bcd <exit>
    4323:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    432a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00004330 <bigargtest>:
{
    4330:	f3 0f 1e fb          	endbr32 
    4334:	55                   	push   %ebp
    4335:	89 e5                	mov    %esp,%ebp
    4337:	83 ec 14             	sub    $0x14,%esp
  unlink("bigarg-ok");
    433a:	68 39 5e 00 00       	push   $0x5e39
    433f:	e8 d9 08 00 00       	call   4c1d <unlink>
  pid = fork();
    4344:	e8 7c 08 00 00       	call   4bc5 <fork>
  if(pid == 0){
    4349:	83 c4 10             	add    $0x10,%esp
    434c:	85 c0                	test   %eax,%eax
    434e:	74 40                	je     4390 <bigargtest+0x60>
  } else if(pid < 0){
    4350:	0f 88 c1 00 00 00    	js     4417 <bigargtest+0xe7>
  wait();
    4356:	e8 7a 08 00 00       	call   4bd5 <wait>
  fd = open("bigarg-ok", 0);
    435b:	83 ec 08             	sub    $0x8,%esp
    435e:	6a 00                	push   $0x0
    4360:	68 39 5e 00 00       	push   $0x5e39
    4365:	e8 a3 08 00 00       	call   4c0d <open>
  if(fd < 0){
    436a:	83 c4 10             	add    $0x10,%esp
    436d:	85 c0                	test   %eax,%eax
    436f:	0f 88 8b 00 00 00    	js     4400 <bigargtest+0xd0>
  close(fd);
    4375:	83 ec 0c             	sub    $0xc,%esp
    4378:	50                   	push   %eax
    4379:	e8 77 08 00 00       	call   4bf5 <close>
  unlink("bigarg-ok");
    437e:	c7 04 24 39 5e 00 00 	movl   $0x5e39,(%esp)
    4385:	e8 93 08 00 00       	call   4c1d <unlink>
}
    438a:	83 c4 10             	add    $0x10,%esp
    438d:	c9                   	leave  
    438e:	c3                   	ret    
    438f:	90                   	nop
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    4390:	c7 04 85 80 70 00 00 	movl   $0x6590,0x7080(,%eax,4)
    4397:	90 65 00 00 
    for(i = 0; i < MAXARG-1; i++)
    439b:	83 c0 01             	add    $0x1,%eax
    439e:	83 f8 1f             	cmp    $0x1f,%eax
    43a1:	75 ed                	jne    4390 <bigargtest+0x60>
    printf(stdout, "bigarg test\n");
    43a3:	51                   	push   %ecx
    43a4:	51                   	push   %ecx
    43a5:	68 43 5e 00 00       	push   $0x5e43
    43aa:	ff 35 60 70 00 00    	pushl  0x7060
    args[MAXARG-1] = 0;
    43b0:	c7 05 fc 70 00 00 00 	movl   $0x0,0x70fc
    43b7:	00 00 00 
    printf(stdout, "bigarg test\n");
    43ba:	e8 a1 09 00 00       	call   4d60 <printf>
    exec("echo", args);
    43bf:	58                   	pop    %eax
    43c0:	5a                   	pop    %edx
    43c1:	68 80 70 00 00       	push   $0x7080
    43c6:	68 0d 50 00 00       	push   $0x500d
    43cb:	e8 35 08 00 00       	call   4c05 <exec>
    printf(stdout, "bigarg test ok\n");
    43d0:	59                   	pop    %ecx
    43d1:	58                   	pop    %eax
    43d2:	68 50 5e 00 00       	push   $0x5e50
    43d7:	ff 35 60 70 00 00    	pushl  0x7060
    43dd:	e8 7e 09 00 00       	call   4d60 <printf>
    fd = open("bigarg-ok", O_CREATE);
    43e2:	58                   	pop    %eax
    43e3:	5a                   	pop    %edx
    43e4:	68 00 02 00 00       	push   $0x200
    43e9:	68 39 5e 00 00       	push   $0x5e39
    43ee:	e8 1a 08 00 00       	call   4c0d <open>
    close(fd);
    43f3:	89 04 24             	mov    %eax,(%esp)
    43f6:	e8 fa 07 00 00       	call   4bf5 <close>
    exit();
    43fb:	e8 cd 07 00 00       	call   4bcd <exit>
    printf(stdout, "bigarg test failed!\n");
    4400:	50                   	push   %eax
    4401:	50                   	push   %eax
    4402:	68 79 5e 00 00       	push   $0x5e79
    4407:	ff 35 60 70 00 00    	pushl  0x7060
    440d:	e8 4e 09 00 00       	call   4d60 <printf>
    exit();
    4412:	e8 b6 07 00 00       	call   4bcd <exit>
    printf(stdout, "bigargtest: fork failed\n");
    4417:	52                   	push   %edx
    4418:	52                   	push   %edx
    4419:	68 60 5e 00 00       	push   $0x5e60
    441e:	ff 35 60 70 00 00    	pushl  0x7060
    4424:	e8 37 09 00 00       	call   4d60 <printf>
    exit();
    4429:	e8 9f 07 00 00       	call   4bcd <exit>
    442e:	66 90                	xchg   %ax,%ax

00004430 <fsfull>:
{
    4430:	f3 0f 1e fb          	endbr32 
    4434:	55                   	push   %ebp
    4435:	89 e5                	mov    %esp,%ebp
    4437:	57                   	push   %edi
    4438:	56                   	push   %esi
  for(nfiles = 0; ; nfiles++){
    4439:	31 f6                	xor    %esi,%esi
{
    443b:	53                   	push   %ebx
    443c:	83 ec 54             	sub    $0x54,%esp
  printf(1, "fsfull test\n");
    443f:	68 8e 5e 00 00       	push   $0x5e8e
    4444:	6a 01                	push   $0x1
    4446:	e8 15 09 00 00       	call   4d60 <printf>
    444b:	83 c4 10             	add    $0x10,%esp
    444e:	66 90                	xchg   %ax,%ax
    name[1] = '0' + nfiles / 1000;
    4450:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    4455:	b9 cd cc cc cc       	mov    $0xcccccccd,%ecx
    printf(1, "writing %s\n", name);
    445a:	83 ec 04             	sub    $0x4,%esp
    name[0] = 'f';
    445d:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    4461:	f7 e6                	mul    %esi
    name[5] = '\0';
    4463:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    4467:	c1 ea 06             	shr    $0x6,%edx
    446a:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    446d:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    4473:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    4476:	89 f0                	mov    %esi,%eax
    4478:	29 d0                	sub    %edx,%eax
    447a:	89 c2                	mov    %eax,%edx
    447c:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    4481:	f7 e2                	mul    %edx
    name[3] = '0' + (nfiles % 100) / 10;
    4483:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    4488:	c1 ea 05             	shr    $0x5,%edx
    448b:	83 c2 30             	add    $0x30,%edx
    448e:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    4491:	f7 e6                	mul    %esi
    4493:	89 f0                	mov    %esi,%eax
    4495:	c1 ea 05             	shr    $0x5,%edx
    4498:	6b d2 64             	imul   $0x64,%edx,%edx
    449b:	29 d0                	sub    %edx,%eax
    449d:	f7 e1                	mul    %ecx
    name[4] = '0' + (nfiles % 10);
    449f:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    44a1:	c1 ea 03             	shr    $0x3,%edx
    44a4:	83 c2 30             	add    $0x30,%edx
    44a7:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    44aa:	f7 e1                	mul    %ecx
    44ac:	89 f1                	mov    %esi,%ecx
    44ae:	c1 ea 03             	shr    $0x3,%edx
    44b1:	8d 04 92             	lea    (%edx,%edx,4),%eax
    44b4:	01 c0                	add    %eax,%eax
    44b6:	29 c1                	sub    %eax,%ecx
    44b8:	89 c8                	mov    %ecx,%eax
    44ba:	83 c0 30             	add    $0x30,%eax
    44bd:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    44c0:	8d 45 a8             	lea    -0x58(%ebp),%eax
    44c3:	50                   	push   %eax
    44c4:	68 9b 5e 00 00       	push   $0x5e9b
    44c9:	6a 01                	push   $0x1
    44cb:	e8 90 08 00 00       	call   4d60 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    44d0:	58                   	pop    %eax
    44d1:	8d 45 a8             	lea    -0x58(%ebp),%eax
    44d4:	5a                   	pop    %edx
    44d5:	68 02 02 00 00       	push   $0x202
    44da:	50                   	push   %eax
    44db:	e8 2d 07 00 00       	call   4c0d <open>
    if(fd < 0){
    44e0:	83 c4 10             	add    $0x10,%esp
    int fd = open(name, O_CREATE|O_RDWR);
    44e3:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    44e5:	85 c0                	test   %eax,%eax
    44e7:	78 4d                	js     4536 <fsfull+0x106>
    int total = 0;
    44e9:	31 db                	xor    %ebx,%ebx
    44eb:	eb 05                	jmp    44f2 <fsfull+0xc2>
    44ed:	8d 76 00             	lea    0x0(%esi),%esi
      total += cc;
    44f0:	01 c3                	add    %eax,%ebx
      int cc = write(fd, buf, 512);
    44f2:	83 ec 04             	sub    $0x4,%esp
    44f5:	68 00 02 00 00       	push   $0x200
    44fa:	68 40 98 00 00       	push   $0x9840
    44ff:	57                   	push   %edi
    4500:	e8 e8 06 00 00       	call   4bed <write>
      if(cc < 512)
    4505:	83 c4 10             	add    $0x10,%esp
    4508:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    450d:	7f e1                	jg     44f0 <fsfull+0xc0>
    printf(1, "wrote %d bytes\n", total);
    450f:	83 ec 04             	sub    $0x4,%esp
    4512:	53                   	push   %ebx
    4513:	68 b7 5e 00 00       	push   $0x5eb7
    4518:	6a 01                	push   $0x1
    451a:	e8 41 08 00 00       	call   4d60 <printf>
    close(fd);
    451f:	89 3c 24             	mov    %edi,(%esp)
    4522:	e8 ce 06 00 00       	call   4bf5 <close>
    if(total == 0)
    4527:	83 c4 10             	add    $0x10,%esp
    452a:	85 db                	test   %ebx,%ebx
    452c:	74 1e                	je     454c <fsfull+0x11c>
  for(nfiles = 0; ; nfiles++){
    452e:	83 c6 01             	add    $0x1,%esi
    4531:	e9 1a ff ff ff       	jmp    4450 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    4536:	83 ec 04             	sub    $0x4,%esp
    4539:	8d 45 a8             	lea    -0x58(%ebp),%eax
    453c:	50                   	push   %eax
    453d:	68 a7 5e 00 00       	push   $0x5ea7
    4542:	6a 01                	push   $0x1
    4544:	e8 17 08 00 00       	call   4d60 <printf>
      break;
    4549:	83 c4 10             	add    $0x10,%esp
    name[1] = '0' + nfiles / 1000;
    454c:	bf d3 4d 62 10       	mov    $0x10624dd3,%edi
    name[2] = '0' + (nfiles % 1000) / 100;
    4551:	bb 1f 85 eb 51       	mov    $0x51eb851f,%ebx
    4556:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    455d:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + nfiles / 1000;
    4560:	89 f0                	mov    %esi,%eax
    4562:	89 f1                	mov    %esi,%ecx
    unlink(name);
    4564:	83 ec 0c             	sub    $0xc,%esp
    name[0] = 'f';
    4567:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[1] = '0' + nfiles / 1000;
    456b:	f7 ef                	imul   %edi
    456d:	c1 f9 1f             	sar    $0x1f,%ecx
    name[5] = '\0';
    4570:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    4574:	c1 fa 06             	sar    $0x6,%edx
    4577:	29 ca                	sub    %ecx,%edx
    4579:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    457c:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    4582:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    4585:	89 f0                	mov    %esi,%eax
    4587:	29 d0                	sub    %edx,%eax
    4589:	f7 e3                	mul    %ebx
    name[3] = '0' + (nfiles % 100) / 10;
    458b:	89 f0                	mov    %esi,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    458d:	c1 ea 05             	shr    $0x5,%edx
    4590:	83 c2 30             	add    $0x30,%edx
    4593:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    4596:	f7 eb                	imul   %ebx
    4598:	89 f0                	mov    %esi,%eax
    459a:	c1 fa 05             	sar    $0x5,%edx
    459d:	29 ca                	sub    %ecx,%edx
    459f:	6b d2 64             	imul   $0x64,%edx,%edx
    45a2:	29 d0                	sub    %edx,%eax
    45a4:	ba cd cc cc cc       	mov    $0xcccccccd,%edx
    45a9:	f7 e2                	mul    %edx
    name[4] = '0' + (nfiles % 10);
    45ab:	89 f0                	mov    %esi,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    45ad:	c1 ea 03             	shr    $0x3,%edx
    45b0:	83 c2 30             	add    $0x30,%edx
    45b3:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    45b6:	ba 67 66 66 66       	mov    $0x66666667,%edx
    45bb:	f7 ea                	imul   %edx
    45bd:	c1 fa 02             	sar    $0x2,%edx
    45c0:	29 ca                	sub    %ecx,%edx
    45c2:	89 f1                	mov    %esi,%ecx
    nfiles--;
    45c4:	83 ee 01             	sub    $0x1,%esi
    name[4] = '0' + (nfiles % 10);
    45c7:	8d 04 92             	lea    (%edx,%edx,4),%eax
    45ca:	01 c0                	add    %eax,%eax
    45cc:	29 c1                	sub    %eax,%ecx
    45ce:	89 c8                	mov    %ecx,%eax
    45d0:	83 c0 30             	add    $0x30,%eax
    45d3:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    45d6:	8d 45 a8             	lea    -0x58(%ebp),%eax
    45d9:	50                   	push   %eax
    45da:	e8 3e 06 00 00       	call   4c1d <unlink>
  while(nfiles >= 0){
    45df:	83 c4 10             	add    $0x10,%esp
    45e2:	83 fe ff             	cmp    $0xffffffff,%esi
    45e5:	0f 85 75 ff ff ff    	jne    4560 <fsfull+0x130>
  printf(1, "fsfull test finished\n");
    45eb:	83 ec 08             	sub    $0x8,%esp
    45ee:	68 c7 5e 00 00       	push   $0x5ec7
    45f3:	6a 01                	push   $0x1
    45f5:	e8 66 07 00 00       	call   4d60 <printf>
}
    45fa:	83 c4 10             	add    $0x10,%esp
    45fd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4600:	5b                   	pop    %ebx
    4601:	5e                   	pop    %esi
    4602:	5f                   	pop    %edi
    4603:	5d                   	pop    %ebp
    4604:	c3                   	ret    
    4605:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    460c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004610 <uio>:
{
    4610:	f3 0f 1e fb          	endbr32 
    4614:	55                   	push   %ebp
    4615:	89 e5                	mov    %esp,%ebp
    4617:	83 ec 10             	sub    $0x10,%esp
  printf(1, "uio test\n");
    461a:	68 dd 5e 00 00       	push   $0x5edd
    461f:	6a 01                	push   $0x1
    4621:	e8 3a 07 00 00       	call   4d60 <printf>
  pid = fork();
    4626:	e8 9a 05 00 00       	call   4bc5 <fork>
  if(pid == 0){
    462b:	83 c4 10             	add    $0x10,%esp
    462e:	85 c0                	test   %eax,%eax
    4630:	74 1b                	je     464d <uio+0x3d>
  } else if(pid < 0){
    4632:	78 3d                	js     4671 <uio+0x61>
  wait();
    4634:	e8 9c 05 00 00       	call   4bd5 <wait>
  printf(1, "uio test done\n");
    4639:	83 ec 08             	sub    $0x8,%esp
    463c:	68 e7 5e 00 00       	push   $0x5ee7
    4641:	6a 01                	push   $0x1
    4643:	e8 18 07 00 00       	call   4d60 <printf>
}
    4648:	83 c4 10             	add    $0x10,%esp
    464b:	c9                   	leave  
    464c:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    464d:	b8 09 00 00 00       	mov    $0x9,%eax
    4652:	ba 70 00 00 00       	mov    $0x70,%edx
    4657:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    4658:	ba 71 00 00 00       	mov    $0x71,%edx
    465d:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    465e:	52                   	push   %edx
    465f:	52                   	push   %edx
    4660:	68 70 66 00 00       	push   $0x6670
    4665:	6a 01                	push   $0x1
    4667:	e8 f4 06 00 00       	call   4d60 <printf>
    exit();
    466c:	e8 5c 05 00 00       	call   4bcd <exit>
    printf (1, "fork failed\n");
    4671:	50                   	push   %eax
    4672:	50                   	push   %eax
    4673:	68 6c 5e 00 00       	push   $0x5e6c
    4678:	6a 01                	push   $0x1
    467a:	e8 e1 06 00 00       	call   4d60 <printf>
    exit();
    467f:	e8 49 05 00 00       	call   4bcd <exit>
    4684:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    468b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    468f:	90                   	nop

00004690 <argptest>:
{
    4690:	f3 0f 1e fb          	endbr32 
    4694:	55                   	push   %ebp
    4695:	89 e5                	mov    %esp,%ebp
    4697:	53                   	push   %ebx
    4698:	83 ec 0c             	sub    $0xc,%esp
  fd = open("init", O_RDONLY);
    469b:	6a 00                	push   $0x0
    469d:	68 f6 5e 00 00       	push   $0x5ef6
    46a2:	e8 66 05 00 00       	call   4c0d <open>
  if (fd < 0) {
    46a7:	83 c4 10             	add    $0x10,%esp
    46aa:	85 c0                	test   %eax,%eax
    46ac:	78 39                	js     46e7 <argptest+0x57>
  read(fd, sbrk(0) - 1, -1);
    46ae:	83 ec 0c             	sub    $0xc,%esp
    46b1:	89 c3                	mov    %eax,%ebx
    46b3:	6a 00                	push   $0x0
    46b5:	e8 9b 05 00 00       	call   4c55 <sbrk>
    46ba:	83 c4 0c             	add    $0xc,%esp
    46bd:	83 e8 01             	sub    $0x1,%eax
    46c0:	6a ff                	push   $0xffffffff
    46c2:	50                   	push   %eax
    46c3:	53                   	push   %ebx
    46c4:	e8 1c 05 00 00       	call   4be5 <read>
  close(fd);
    46c9:	89 1c 24             	mov    %ebx,(%esp)
    46cc:	e8 24 05 00 00       	call   4bf5 <close>
  printf(1, "arg test passed\n");
    46d1:	58                   	pop    %eax
    46d2:	5a                   	pop    %edx
    46d3:	68 08 5f 00 00       	push   $0x5f08
    46d8:	6a 01                	push   $0x1
    46da:	e8 81 06 00 00       	call   4d60 <printf>
}
    46df:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    46e2:	83 c4 10             	add    $0x10,%esp
    46e5:	c9                   	leave  
    46e6:	c3                   	ret    
    printf(2, "open failed\n");
    46e7:	51                   	push   %ecx
    46e8:	51                   	push   %ecx
    46e9:	68 fb 5e 00 00       	push   $0x5efb
    46ee:	6a 02                	push   $0x2
    46f0:	e8 6b 06 00 00       	call   4d60 <printf>
    exit();
    46f5:	e8 d3 04 00 00       	call   4bcd <exit>
    46fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00004700 <rand>:
{
    4700:	f3 0f 1e fb          	endbr32 
  randstate = randstate * 1664525 + 1013904223;
    4704:	69 05 5c 70 00 00 0d 	imul   $0x19660d,0x705c,%eax
    470b:	66 19 00 
    470e:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    4713:	a3 5c 70 00 00       	mov    %eax,0x705c
}
    4718:	c3                   	ret    
    4719:	66 90                	xchg   %ax,%ax
    471b:	66 90                	xchg   %ax,%ax
    471d:	66 90                	xchg   %ax,%ax
    471f:	90                   	nop

00004720 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    4720:	f3 0f 1e fb          	endbr32 
    4724:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    4725:	31 c0                	xor    %eax,%eax
{
    4727:	89 e5                	mov    %esp,%ebp
    4729:	53                   	push   %ebx
    472a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    472d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    4730:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    4734:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    4737:	83 c0 01             	add    $0x1,%eax
    473a:	84 d2                	test   %dl,%dl
    473c:	75 f2                	jne    4730 <strcpy+0x10>
    ;
  return os;
}
    473e:	89 c8                	mov    %ecx,%eax
    4740:	5b                   	pop    %ebx
    4741:	5d                   	pop    %ebp
    4742:	c3                   	ret    
    4743:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    474a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00004750 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    4750:	f3 0f 1e fb          	endbr32 
    4754:	55                   	push   %ebp
    4755:	89 e5                	mov    %esp,%ebp
    4757:	53                   	push   %ebx
    4758:	8b 4d 08             	mov    0x8(%ebp),%ecx
    475b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    475e:	0f b6 01             	movzbl (%ecx),%eax
    4761:	0f b6 1a             	movzbl (%edx),%ebx
    4764:	84 c0                	test   %al,%al
    4766:	75 19                	jne    4781 <strcmp+0x31>
    4768:	eb 26                	jmp    4790 <strcmp+0x40>
    476a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4770:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    4774:	83 c1 01             	add    $0x1,%ecx
    4777:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    477a:	0f b6 1a             	movzbl (%edx),%ebx
    477d:	84 c0                	test   %al,%al
    477f:	74 0f                	je     4790 <strcmp+0x40>
    4781:	38 d8                	cmp    %bl,%al
    4783:	74 eb                	je     4770 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    4785:	29 d8                	sub    %ebx,%eax
}
    4787:	5b                   	pop    %ebx
    4788:	5d                   	pop    %ebp
    4789:	c3                   	ret    
    478a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4790:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    4792:	29 d8                	sub    %ebx,%eax
}
    4794:	5b                   	pop    %ebx
    4795:	5d                   	pop    %ebp
    4796:	c3                   	ret    
    4797:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    479e:	66 90                	xchg   %ax,%ax

000047a0 <strlen>:

uint
strlen(const char *s)
{
    47a0:	f3 0f 1e fb          	endbr32 
    47a4:	55                   	push   %ebp
    47a5:	89 e5                	mov    %esp,%ebp
    47a7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    47aa:	80 3a 00             	cmpb   $0x0,(%edx)
    47ad:	74 21                	je     47d0 <strlen+0x30>
    47af:	31 c0                	xor    %eax,%eax
    47b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    47b8:	83 c0 01             	add    $0x1,%eax
    47bb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    47bf:	89 c1                	mov    %eax,%ecx
    47c1:	75 f5                	jne    47b8 <strlen+0x18>
    ;
  return n;
}
    47c3:	89 c8                	mov    %ecx,%eax
    47c5:	5d                   	pop    %ebp
    47c6:	c3                   	ret    
    47c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    47ce:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    47d0:	31 c9                	xor    %ecx,%ecx
}
    47d2:	5d                   	pop    %ebp
    47d3:	89 c8                	mov    %ecx,%eax
    47d5:	c3                   	ret    
    47d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    47dd:	8d 76 00             	lea    0x0(%esi),%esi

000047e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    47e0:	f3 0f 1e fb          	endbr32 
    47e4:	55                   	push   %ebp
    47e5:	89 e5                	mov    %esp,%ebp
    47e7:	57                   	push   %edi
    47e8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    47eb:	8b 4d 10             	mov    0x10(%ebp),%ecx
    47ee:	8b 45 0c             	mov    0xc(%ebp),%eax
    47f1:	89 d7                	mov    %edx,%edi
    47f3:	fc                   	cld    
    47f4:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    47f6:	89 d0                	mov    %edx,%eax
    47f8:	5f                   	pop    %edi
    47f9:	5d                   	pop    %ebp
    47fa:	c3                   	ret    
    47fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    47ff:	90                   	nop

00004800 <strchr>:

char*
strchr(const char *s, char c)
{
    4800:	f3 0f 1e fb          	endbr32 
    4804:	55                   	push   %ebp
    4805:	89 e5                	mov    %esp,%ebp
    4807:	8b 45 08             	mov    0x8(%ebp),%eax
    480a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    480e:	0f b6 10             	movzbl (%eax),%edx
    4811:	84 d2                	test   %dl,%dl
    4813:	75 16                	jne    482b <strchr+0x2b>
    4815:	eb 21                	jmp    4838 <strchr+0x38>
    4817:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    481e:	66 90                	xchg   %ax,%ax
    4820:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    4824:	83 c0 01             	add    $0x1,%eax
    4827:	84 d2                	test   %dl,%dl
    4829:	74 0d                	je     4838 <strchr+0x38>
    if(*s == c)
    482b:	38 d1                	cmp    %dl,%cl
    482d:	75 f1                	jne    4820 <strchr+0x20>
      return (char*)s;
  return 0;
}
    482f:	5d                   	pop    %ebp
    4830:	c3                   	ret    
    4831:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    4838:	31 c0                	xor    %eax,%eax
}
    483a:	5d                   	pop    %ebp
    483b:	c3                   	ret    
    483c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004840 <gets>:

char*
gets(char *buf, int max)
{
    4840:	f3 0f 1e fb          	endbr32 
    4844:	55                   	push   %ebp
    4845:	89 e5                	mov    %esp,%ebp
    4847:	57                   	push   %edi
    4848:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    4849:	31 f6                	xor    %esi,%esi
{
    484b:	53                   	push   %ebx
    484c:	89 f3                	mov    %esi,%ebx
    484e:	83 ec 1c             	sub    $0x1c,%esp
    4851:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    4854:	eb 33                	jmp    4889 <gets+0x49>
    4856:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    485d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    4860:	83 ec 04             	sub    $0x4,%esp
    4863:	8d 45 e7             	lea    -0x19(%ebp),%eax
    4866:	6a 01                	push   $0x1
    4868:	50                   	push   %eax
    4869:	6a 00                	push   $0x0
    486b:	e8 75 03 00 00       	call   4be5 <read>
    if(cc < 1)
    4870:	83 c4 10             	add    $0x10,%esp
    4873:	85 c0                	test   %eax,%eax
    4875:	7e 1c                	jle    4893 <gets+0x53>
      break;
    buf[i++] = c;
    4877:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    487b:	83 c7 01             	add    $0x1,%edi
    487e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    4881:	3c 0a                	cmp    $0xa,%al
    4883:	74 23                	je     48a8 <gets+0x68>
    4885:	3c 0d                	cmp    $0xd,%al
    4887:	74 1f                	je     48a8 <gets+0x68>
  for(i=0; i+1 < max; ){
    4889:	83 c3 01             	add    $0x1,%ebx
    488c:	89 fe                	mov    %edi,%esi
    488e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    4891:	7c cd                	jl     4860 <gets+0x20>
    4893:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    4895:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    4898:	c6 03 00             	movb   $0x0,(%ebx)
}
    489b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    489e:	5b                   	pop    %ebx
    489f:	5e                   	pop    %esi
    48a0:	5f                   	pop    %edi
    48a1:	5d                   	pop    %ebp
    48a2:	c3                   	ret    
    48a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    48a7:	90                   	nop
    48a8:	8b 75 08             	mov    0x8(%ebp),%esi
    48ab:	8b 45 08             	mov    0x8(%ebp),%eax
    48ae:	01 de                	add    %ebx,%esi
    48b0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    48b2:	c6 03 00             	movb   $0x0,(%ebx)
}
    48b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    48b8:	5b                   	pop    %ebx
    48b9:	5e                   	pop    %esi
    48ba:	5f                   	pop    %edi
    48bb:	5d                   	pop    %ebp
    48bc:	c3                   	ret    
    48bd:	8d 76 00             	lea    0x0(%esi),%esi

000048c0 <stat>:

int
stat(const char *n, struct stat *st)
{
    48c0:	f3 0f 1e fb          	endbr32 
    48c4:	55                   	push   %ebp
    48c5:	89 e5                	mov    %esp,%ebp
    48c7:	56                   	push   %esi
    48c8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    48c9:	83 ec 08             	sub    $0x8,%esp
    48cc:	6a 00                	push   $0x0
    48ce:	ff 75 08             	pushl  0x8(%ebp)
    48d1:	e8 37 03 00 00       	call   4c0d <open>
  if(fd < 0)
    48d6:	83 c4 10             	add    $0x10,%esp
    48d9:	85 c0                	test   %eax,%eax
    48db:	78 2b                	js     4908 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    48dd:	83 ec 08             	sub    $0x8,%esp
    48e0:	ff 75 0c             	pushl  0xc(%ebp)
    48e3:	89 c3                	mov    %eax,%ebx
    48e5:	50                   	push   %eax
    48e6:	e8 3a 03 00 00       	call   4c25 <fstat>
  close(fd);
    48eb:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    48ee:	89 c6                	mov    %eax,%esi
  close(fd);
    48f0:	e8 00 03 00 00       	call   4bf5 <close>
  return r;
    48f5:	83 c4 10             	add    $0x10,%esp
}
    48f8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    48fb:	89 f0                	mov    %esi,%eax
    48fd:	5b                   	pop    %ebx
    48fe:	5e                   	pop    %esi
    48ff:	5d                   	pop    %ebp
    4900:	c3                   	ret    
    4901:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    4908:	be ff ff ff ff       	mov    $0xffffffff,%esi
    490d:	eb e9                	jmp    48f8 <stat+0x38>
    490f:	90                   	nop

00004910 <atoi>:

int
atoi(const char *s)
{
    4910:	f3 0f 1e fb          	endbr32 
    4914:	55                   	push   %ebp
    4915:	89 e5                	mov    %esp,%ebp
    4917:	53                   	push   %ebx
    4918:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    491b:	0f be 02             	movsbl (%edx),%eax
    491e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    4921:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    4924:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    4929:	77 1a                	ja     4945 <atoi+0x35>
    492b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    492f:	90                   	nop
    n = n*10 + *s++ - '0';
    4930:	83 c2 01             	add    $0x1,%edx
    4933:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    4936:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    493a:	0f be 02             	movsbl (%edx),%eax
    493d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    4940:	80 fb 09             	cmp    $0x9,%bl
    4943:	76 eb                	jbe    4930 <atoi+0x20>
  return n;
}
    4945:	89 c8                	mov    %ecx,%eax
    4947:	5b                   	pop    %ebx
    4948:	5d                   	pop    %ebp
    4949:	c3                   	ret    
    494a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00004950 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    4950:	f3 0f 1e fb          	endbr32 
    4954:	55                   	push   %ebp
    4955:	89 e5                	mov    %esp,%ebp
    4957:	57                   	push   %edi
    4958:	8b 45 10             	mov    0x10(%ebp),%eax
    495b:	8b 55 08             	mov    0x8(%ebp),%edx
    495e:	56                   	push   %esi
    495f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    4962:	85 c0                	test   %eax,%eax
    4964:	7e 0f                	jle    4975 <memmove+0x25>
    4966:	01 d0                	add    %edx,%eax
  dst = vdst;
    4968:	89 d7                	mov    %edx,%edi
    496a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    4970:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    4971:	39 f8                	cmp    %edi,%eax
    4973:	75 fb                	jne    4970 <memmove+0x20>
  return vdst;
}
    4975:	5e                   	pop    %esi
    4976:	89 d0                	mov    %edx,%eax
    4978:	5f                   	pop    %edi
    4979:	5d                   	pop    %ebp
    497a:	c3                   	ret    
    497b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    497f:	90                   	nop

00004980 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    4980:	f3 0f 1e fb          	endbr32 
    4984:	55                   	push   %ebp
    4985:	89 e5                	mov    %esp,%ebp
    4987:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    498a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    498d:	50                   	push   %eax
    498e:	e8 0a 03 00 00       	call   4c9d <join>
  
  return x;
}
    4993:	c9                   	leave  
    4994:	c3                   	ret    
    4995:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    499c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000049a0 <lock_init>:

void lock_init(struct lock_t *lk){
    49a0:	f3 0f 1e fb          	endbr32 
    49a4:	55                   	push   %ebp
    49a5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    49a7:	8b 45 08             	mov    0x8(%ebp),%eax
    49aa:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    49b0:	5d                   	pop    %ebp
    49b1:	c3                   	ret    
    49b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    49b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000049c0 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    49c0:	f3 0f 1e fb          	endbr32 
    49c4:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    49c5:	b9 01 00 00 00       	mov    $0x1,%ecx
    49ca:	89 e5                	mov    %esp,%ebp
    49cc:	8b 55 08             	mov    0x8(%ebp),%edx
    49cf:	90                   	nop
    49d0:	89 c8                	mov    %ecx,%eax
    49d2:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    49d5:	85 c0                	test   %eax,%eax
    49d7:	75 f7                	jne    49d0 <lock_acquire+0x10>
}
    49d9:	5d                   	pop    %ebp
    49da:	c3                   	ret    
    49db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    49df:	90                   	nop

000049e0 <lock_release>:
void lock_release(struct lock_t *lk){
    49e0:	f3 0f 1e fb          	endbr32 
    49e4:	55                   	push   %ebp
    49e5:	31 c0                	xor    %eax,%eax
    49e7:	89 e5                	mov    %esp,%ebp
    49e9:	8b 55 08             	mov    0x8(%ebp),%edx
    49ec:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    49ef:	5d                   	pop    %ebp
    49f0:	c3                   	ret    
    49f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    49f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    49ff:	90                   	nop

00004a00 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    4a00:	f3 0f 1e fb          	endbr32 
    4a04:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4a05:	a1 00 71 00 00       	mov    0x7100,%eax
{
    4a0a:	89 e5                	mov    %esp,%ebp
    4a0c:	57                   	push   %edi
    4a0d:	56                   	push   %esi
    4a0e:	53                   	push   %ebx
    4a0f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    4a12:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    4a14:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4a17:	39 c8                	cmp    %ecx,%eax
    4a19:	73 15                	jae    4a30 <free+0x30>
    4a1b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4a1f:	90                   	nop
    4a20:	39 d1                	cmp    %edx,%ecx
    4a22:	72 14                	jb     4a38 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4a24:	39 d0                	cmp    %edx,%eax
    4a26:	73 10                	jae    4a38 <free+0x38>
{
    4a28:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4a2a:	8b 10                	mov    (%eax),%edx
    4a2c:	39 c8                	cmp    %ecx,%eax
    4a2e:	72 f0                	jb     4a20 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4a30:	39 d0                	cmp    %edx,%eax
    4a32:	72 f4                	jb     4a28 <free+0x28>
    4a34:	39 d1                	cmp    %edx,%ecx
    4a36:	73 f0                	jae    4a28 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    4a38:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4a3b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    4a3e:	39 fa                	cmp    %edi,%edx
    4a40:	74 1e                	je     4a60 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    4a42:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4a45:	8b 50 04             	mov    0x4(%eax),%edx
    4a48:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4a4b:	39 f1                	cmp    %esi,%ecx
    4a4d:	74 28                	je     4a77 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4a4f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    4a51:	5b                   	pop    %ebx
  freep = p;
    4a52:	a3 00 71 00 00       	mov    %eax,0x7100
}
    4a57:	5e                   	pop    %esi
    4a58:	5f                   	pop    %edi
    4a59:	5d                   	pop    %ebp
    4a5a:	c3                   	ret    
    4a5b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4a5f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    4a60:	03 72 04             	add    0x4(%edx),%esi
    4a63:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    4a66:	8b 10                	mov    (%eax),%edx
    4a68:	8b 12                	mov    (%edx),%edx
    4a6a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4a6d:	8b 50 04             	mov    0x4(%eax),%edx
    4a70:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    4a73:	39 f1                	cmp    %esi,%ecx
    4a75:	75 d8                	jne    4a4f <free+0x4f>
    p->s.size += bp->s.size;
    4a77:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    4a7a:	a3 00 71 00 00       	mov    %eax,0x7100
    p->s.size += bp->s.size;
    4a7f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    4a82:	8b 53 f8             	mov    -0x8(%ebx),%edx
    4a85:	89 10                	mov    %edx,(%eax)
}
    4a87:	5b                   	pop    %ebx
    4a88:	5e                   	pop    %esi
    4a89:	5f                   	pop    %edi
    4a8a:	5d                   	pop    %ebp
    4a8b:	c3                   	ret    
    4a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00004a90 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    4a90:	f3 0f 1e fb          	endbr32 
    4a94:	55                   	push   %ebp
    4a95:	89 e5                	mov    %esp,%ebp
    4a97:	57                   	push   %edi
    4a98:	56                   	push   %esi
    4a99:	53                   	push   %ebx
    4a9a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4a9d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    4aa0:	8b 3d 00 71 00 00    	mov    0x7100,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    4aa6:	8d 70 07             	lea    0x7(%eax),%esi
    4aa9:	c1 ee 03             	shr    $0x3,%esi
    4aac:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    4aaf:	85 ff                	test   %edi,%edi
    4ab1:	0f 84 a9 00 00 00    	je     4b60 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4ab7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    4ab9:	8b 48 04             	mov    0x4(%eax),%ecx
    4abc:	39 f1                	cmp    %esi,%ecx
    4abe:	73 6d                	jae    4b2d <malloc+0x9d>
    4ac0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    4ac6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    4acb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    4ace:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    4ad5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    4ad8:	eb 17                	jmp    4af1 <malloc+0x61>
    4ada:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4ae0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    4ae2:	8b 4a 04             	mov    0x4(%edx),%ecx
    4ae5:	39 f1                	cmp    %esi,%ecx
    4ae7:	73 4f                	jae    4b38 <malloc+0xa8>
    4ae9:	8b 3d 00 71 00 00    	mov    0x7100,%edi
    4aef:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    4af1:	39 c7                	cmp    %eax,%edi
    4af3:	75 eb                	jne    4ae0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    4af5:	83 ec 0c             	sub    $0xc,%esp
    4af8:	ff 75 e4             	pushl  -0x1c(%ebp)
    4afb:	e8 55 01 00 00       	call   4c55 <sbrk>
  if(p == (char*)-1)
    4b00:	83 c4 10             	add    $0x10,%esp
    4b03:	83 f8 ff             	cmp    $0xffffffff,%eax
    4b06:	74 1b                	je     4b23 <malloc+0x93>
  hp->s.size = nu;
    4b08:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    4b0b:	83 ec 0c             	sub    $0xc,%esp
    4b0e:	83 c0 08             	add    $0x8,%eax
    4b11:	50                   	push   %eax
    4b12:	e8 e9 fe ff ff       	call   4a00 <free>
  return freep;
    4b17:	a1 00 71 00 00       	mov    0x7100,%eax
      if((p = morecore(nunits)) == 0)
    4b1c:	83 c4 10             	add    $0x10,%esp
    4b1f:	85 c0                	test   %eax,%eax
    4b21:	75 bd                	jne    4ae0 <malloc+0x50>
        return 0;
  }
}
    4b23:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    4b26:	31 c0                	xor    %eax,%eax
}
    4b28:	5b                   	pop    %ebx
    4b29:	5e                   	pop    %esi
    4b2a:	5f                   	pop    %edi
    4b2b:	5d                   	pop    %ebp
    4b2c:	c3                   	ret    
    if(p->s.size >= nunits){
    4b2d:	89 c2                	mov    %eax,%edx
    4b2f:	89 f8                	mov    %edi,%eax
    4b31:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    4b38:	39 ce                	cmp    %ecx,%esi
    4b3a:	74 54                	je     4b90 <malloc+0x100>
        p->s.size -= nunits;
    4b3c:	29 f1                	sub    %esi,%ecx
    4b3e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    4b41:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    4b44:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    4b47:	a3 00 71 00 00       	mov    %eax,0x7100
}
    4b4c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    4b4f:	8d 42 08             	lea    0x8(%edx),%eax
}
    4b52:	5b                   	pop    %ebx
    4b53:	5e                   	pop    %esi
    4b54:	5f                   	pop    %edi
    4b55:	5d                   	pop    %ebp
    4b56:	c3                   	ret    
    4b57:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4b5e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    4b60:	c7 05 00 71 00 00 04 	movl   $0x7104,0x7100
    4b67:	71 00 00 
    base.s.size = 0;
    4b6a:	bf 04 71 00 00       	mov    $0x7104,%edi
    base.s.ptr = freep = prevp = &base;
    4b6f:	c7 05 04 71 00 00 04 	movl   $0x7104,0x7104
    4b76:	71 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    4b79:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    4b7b:	c7 05 08 71 00 00 00 	movl   $0x0,0x7108
    4b82:	00 00 00 
    if(p->s.size >= nunits){
    4b85:	e9 36 ff ff ff       	jmp    4ac0 <malloc+0x30>
    4b8a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    4b90:	8b 0a                	mov    (%edx),%ecx
    4b92:	89 08                	mov    %ecx,(%eax)
    4b94:	eb b1                	jmp    4b47 <malloc+0xb7>
    4b96:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4b9d:	8d 76 00             	lea    0x0(%esi),%esi

00004ba0 <thread_create>:
{
    4ba0:	f3 0f 1e fb          	endbr32 
    4ba4:	55                   	push   %ebp
    4ba5:	89 e5                	mov    %esp,%ebp
    4ba7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    4baa:	68 00 10 00 00       	push   $0x1000
    4baf:	e8 dc fe ff ff       	call   4a90 <malloc>
return clone(start_routine,arg1,arg2,stack);
    4bb4:	50                   	push   %eax
    4bb5:	ff 75 10             	pushl  0x10(%ebp)
    4bb8:	ff 75 0c             	pushl  0xc(%ebp)
    4bbb:	ff 75 08             	pushl  0x8(%ebp)
    4bbe:	e8 d2 00 00 00       	call   4c95 <clone>
}
    4bc3:	c9                   	leave  
    4bc4:	c3                   	ret    

00004bc5 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    4bc5:	b8 01 00 00 00       	mov    $0x1,%eax
    4bca:	cd 40                	int    $0x40
    4bcc:	c3                   	ret    

00004bcd <exit>:
SYSCALL(exit)
    4bcd:	b8 02 00 00 00       	mov    $0x2,%eax
    4bd2:	cd 40                	int    $0x40
    4bd4:	c3                   	ret    

00004bd5 <wait>:
SYSCALL(wait)
    4bd5:	b8 03 00 00 00       	mov    $0x3,%eax
    4bda:	cd 40                	int    $0x40
    4bdc:	c3                   	ret    

00004bdd <pipe>:
SYSCALL(pipe)
    4bdd:	b8 04 00 00 00       	mov    $0x4,%eax
    4be2:	cd 40                	int    $0x40
    4be4:	c3                   	ret    

00004be5 <read>:
SYSCALL(read)
    4be5:	b8 05 00 00 00       	mov    $0x5,%eax
    4bea:	cd 40                	int    $0x40
    4bec:	c3                   	ret    

00004bed <write>:
SYSCALL(write)
    4bed:	b8 10 00 00 00       	mov    $0x10,%eax
    4bf2:	cd 40                	int    $0x40
    4bf4:	c3                   	ret    

00004bf5 <close>:
SYSCALL(close)
    4bf5:	b8 15 00 00 00       	mov    $0x15,%eax
    4bfa:	cd 40                	int    $0x40
    4bfc:	c3                   	ret    

00004bfd <kill>:
SYSCALL(kill)
    4bfd:	b8 06 00 00 00       	mov    $0x6,%eax
    4c02:	cd 40                	int    $0x40
    4c04:	c3                   	ret    

00004c05 <exec>:
SYSCALL(exec)
    4c05:	b8 07 00 00 00       	mov    $0x7,%eax
    4c0a:	cd 40                	int    $0x40
    4c0c:	c3                   	ret    

00004c0d <open>:
SYSCALL(open)
    4c0d:	b8 0f 00 00 00       	mov    $0xf,%eax
    4c12:	cd 40                	int    $0x40
    4c14:	c3                   	ret    

00004c15 <mknod>:
SYSCALL(mknod)
    4c15:	b8 11 00 00 00       	mov    $0x11,%eax
    4c1a:	cd 40                	int    $0x40
    4c1c:	c3                   	ret    

00004c1d <unlink>:
SYSCALL(unlink)
    4c1d:	b8 12 00 00 00       	mov    $0x12,%eax
    4c22:	cd 40                	int    $0x40
    4c24:	c3                   	ret    

00004c25 <fstat>:
SYSCALL(fstat)
    4c25:	b8 08 00 00 00       	mov    $0x8,%eax
    4c2a:	cd 40                	int    $0x40
    4c2c:	c3                   	ret    

00004c2d <link>:
SYSCALL(link)
    4c2d:	b8 13 00 00 00       	mov    $0x13,%eax
    4c32:	cd 40                	int    $0x40
    4c34:	c3                   	ret    

00004c35 <mkdir>:
SYSCALL(mkdir)
    4c35:	b8 14 00 00 00       	mov    $0x14,%eax
    4c3a:	cd 40                	int    $0x40
    4c3c:	c3                   	ret    

00004c3d <chdir>:
SYSCALL(chdir)
    4c3d:	b8 09 00 00 00       	mov    $0x9,%eax
    4c42:	cd 40                	int    $0x40
    4c44:	c3                   	ret    

00004c45 <dup>:
SYSCALL(dup)
    4c45:	b8 0a 00 00 00       	mov    $0xa,%eax
    4c4a:	cd 40                	int    $0x40
    4c4c:	c3                   	ret    

00004c4d <getpid>:
SYSCALL(getpid)
    4c4d:	b8 0b 00 00 00       	mov    $0xb,%eax
    4c52:	cd 40                	int    $0x40
    4c54:	c3                   	ret    

00004c55 <sbrk>:
SYSCALL(sbrk)
    4c55:	b8 0c 00 00 00       	mov    $0xc,%eax
    4c5a:	cd 40                	int    $0x40
    4c5c:	c3                   	ret    

00004c5d <sleep>:
SYSCALL(sleep)
    4c5d:	b8 0d 00 00 00       	mov    $0xd,%eax
    4c62:	cd 40                	int    $0x40
    4c64:	c3                   	ret    

00004c65 <uptime>:
SYSCALL(uptime)
    4c65:	b8 0e 00 00 00       	mov    $0xe,%eax
    4c6a:	cd 40                	int    $0x40
    4c6c:	c3                   	ret    

00004c6d <count>:
SYSCALL(count)
    4c6d:	b8 16 00 00 00       	mov    $0x16,%eax
    4c72:	cd 40                	int    $0x40
    4c74:	c3                   	ret    

00004c75 <settickets>:

SYSCALL(settickets)
    4c75:	b8 17 00 00 00       	mov    $0x17,%eax
    4c7a:	cd 40                	int    $0x40
    4c7c:	c3                   	ret    

00004c7d <getpinfo>:
SYSCALL(getpinfo)
    4c7d:	b8 18 00 00 00       	mov    $0x18,%eax
    4c82:	cd 40                	int    $0x40
    4c84:	c3                   	ret    

00004c85 <mprotect>:

SYSCALL(mprotect)
    4c85:	b8 19 00 00 00       	mov    $0x19,%eax
    4c8a:	cd 40                	int    $0x40
    4c8c:	c3                   	ret    

00004c8d <munprotect>:
SYSCALL(munprotect)
    4c8d:	b8 1a 00 00 00       	mov    $0x1a,%eax
    4c92:	cd 40                	int    $0x40
    4c94:	c3                   	ret    

00004c95 <clone>:

SYSCALL(clone)
    4c95:	b8 1b 00 00 00       	mov    $0x1b,%eax
    4c9a:	cd 40                	int    $0x40
    4c9c:	c3                   	ret    

00004c9d <join>:
SYSCALL(join)
    4c9d:	b8 1c 00 00 00       	mov    $0x1c,%eax
    4ca2:	cd 40                	int    $0x40
    4ca4:	c3                   	ret    
    4ca5:	66 90                	xchg   %ax,%ax
    4ca7:	66 90                	xchg   %ax,%ax
    4ca9:	66 90                	xchg   %ax,%ax
    4cab:	66 90                	xchg   %ax,%ax
    4cad:	66 90                	xchg   %ax,%ax
    4caf:	90                   	nop

00004cb0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4cb0:	55                   	push   %ebp
    4cb1:	89 e5                	mov    %esp,%ebp
    4cb3:	57                   	push   %edi
    4cb4:	56                   	push   %esi
    4cb5:	53                   	push   %ebx
    4cb6:	83 ec 3c             	sub    $0x3c,%esp
    4cb9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    4cbc:	89 d1                	mov    %edx,%ecx
{
    4cbe:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    4cc1:	85 d2                	test   %edx,%edx
    4cc3:	0f 89 7f 00 00 00    	jns    4d48 <printint+0x98>
    4cc9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    4ccd:	74 79                	je     4d48 <printint+0x98>
    neg = 1;
    4ccf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    4cd6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    4cd8:	31 db                	xor    %ebx,%ebx
    4cda:	8d 75 d7             	lea    -0x29(%ebp),%esi
    4cdd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    4ce0:	89 c8                	mov    %ecx,%eax
    4ce2:	31 d2                	xor    %edx,%edx
    4ce4:	89 cf                	mov    %ecx,%edi
    4ce6:	f7 75 c4             	divl   -0x3c(%ebp)
    4ce9:	0f b6 92 c8 66 00 00 	movzbl 0x66c8(%edx),%edx
    4cf0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    4cf3:	89 d8                	mov    %ebx,%eax
    4cf5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    4cf8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    4cfb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    4cfe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    4d01:	76 dd                	jbe    4ce0 <printint+0x30>
  if(neg)
    4d03:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    4d06:	85 c9                	test   %ecx,%ecx
    4d08:	74 0c                	je     4d16 <printint+0x66>
    buf[i++] = '-';
    4d0a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    4d0f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    4d11:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    4d16:	8b 7d b8             	mov    -0x48(%ebp),%edi
    4d19:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    4d1d:	eb 07                	jmp    4d26 <printint+0x76>
    4d1f:	90                   	nop
    4d20:	0f b6 13             	movzbl (%ebx),%edx
    4d23:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    4d26:	83 ec 04             	sub    $0x4,%esp
    4d29:	88 55 d7             	mov    %dl,-0x29(%ebp)
    4d2c:	6a 01                	push   $0x1
    4d2e:	56                   	push   %esi
    4d2f:	57                   	push   %edi
    4d30:	e8 b8 fe ff ff       	call   4bed <write>
  while(--i >= 0)
    4d35:	83 c4 10             	add    $0x10,%esp
    4d38:	39 de                	cmp    %ebx,%esi
    4d3a:	75 e4                	jne    4d20 <printint+0x70>
    putc(fd, buf[i]);
}
    4d3c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4d3f:	5b                   	pop    %ebx
    4d40:	5e                   	pop    %esi
    4d41:	5f                   	pop    %edi
    4d42:	5d                   	pop    %ebp
    4d43:	c3                   	ret    
    4d44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    4d48:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    4d4f:	eb 87                	jmp    4cd8 <printint+0x28>
    4d51:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4d58:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4d5f:	90                   	nop

00004d60 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    4d60:	f3 0f 1e fb          	endbr32 
    4d64:	55                   	push   %ebp
    4d65:	89 e5                	mov    %esp,%ebp
    4d67:	57                   	push   %edi
    4d68:	56                   	push   %esi
    4d69:	53                   	push   %ebx
    4d6a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    4d6d:	8b 75 0c             	mov    0xc(%ebp),%esi
    4d70:	0f b6 1e             	movzbl (%esi),%ebx
    4d73:	84 db                	test   %bl,%bl
    4d75:	0f 84 b4 00 00 00    	je     4e2f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    4d7b:	8d 45 10             	lea    0x10(%ebp),%eax
    4d7e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    4d81:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    4d84:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    4d86:	89 45 d0             	mov    %eax,-0x30(%ebp)
    4d89:	eb 33                	jmp    4dbe <printf+0x5e>
    4d8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4d8f:	90                   	nop
    4d90:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    4d93:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    4d98:	83 f8 25             	cmp    $0x25,%eax
    4d9b:	74 17                	je     4db4 <printf+0x54>
  write(fd, &c, 1);
    4d9d:	83 ec 04             	sub    $0x4,%esp
    4da0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    4da3:	6a 01                	push   $0x1
    4da5:	57                   	push   %edi
    4da6:	ff 75 08             	pushl  0x8(%ebp)
    4da9:	e8 3f fe ff ff       	call   4bed <write>
    4dae:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    4db1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    4db4:	0f b6 1e             	movzbl (%esi),%ebx
    4db7:	83 c6 01             	add    $0x1,%esi
    4dba:	84 db                	test   %bl,%bl
    4dbc:	74 71                	je     4e2f <printf+0xcf>
    c = fmt[i] & 0xff;
    4dbe:	0f be cb             	movsbl %bl,%ecx
    4dc1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    4dc4:	85 d2                	test   %edx,%edx
    4dc6:	74 c8                	je     4d90 <printf+0x30>
      }
    } else if(state == '%'){
    4dc8:	83 fa 25             	cmp    $0x25,%edx
    4dcb:	75 e7                	jne    4db4 <printf+0x54>
      if(c == 'd'){
    4dcd:	83 f8 64             	cmp    $0x64,%eax
    4dd0:	0f 84 9a 00 00 00    	je     4e70 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    4dd6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    4ddc:	83 f9 70             	cmp    $0x70,%ecx
    4ddf:	74 5f                	je     4e40 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    4de1:	83 f8 73             	cmp    $0x73,%eax
    4de4:	0f 84 d6 00 00 00    	je     4ec0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    4dea:	83 f8 63             	cmp    $0x63,%eax
    4ded:	0f 84 8d 00 00 00    	je     4e80 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    4df3:	83 f8 25             	cmp    $0x25,%eax
    4df6:	0f 84 b4 00 00 00    	je     4eb0 <printf+0x150>
  write(fd, &c, 1);
    4dfc:	83 ec 04             	sub    $0x4,%esp
    4dff:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    4e03:	6a 01                	push   $0x1
    4e05:	57                   	push   %edi
    4e06:	ff 75 08             	pushl  0x8(%ebp)
    4e09:	e8 df fd ff ff       	call   4bed <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    4e0e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    4e11:	83 c4 0c             	add    $0xc,%esp
    4e14:	6a 01                	push   $0x1
    4e16:	83 c6 01             	add    $0x1,%esi
    4e19:	57                   	push   %edi
    4e1a:	ff 75 08             	pushl  0x8(%ebp)
    4e1d:	e8 cb fd ff ff       	call   4bed <write>
  for(i = 0; fmt[i]; i++){
    4e22:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    4e26:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    4e29:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    4e2b:	84 db                	test   %bl,%bl
    4e2d:	75 8f                	jne    4dbe <printf+0x5e>
    }
  }
}
    4e2f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    4e32:	5b                   	pop    %ebx
    4e33:	5e                   	pop    %esi
    4e34:	5f                   	pop    %edi
    4e35:	5d                   	pop    %ebp
    4e36:	c3                   	ret    
    4e37:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4e3e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    4e40:	83 ec 0c             	sub    $0xc,%esp
    4e43:	b9 10 00 00 00       	mov    $0x10,%ecx
    4e48:	6a 00                	push   $0x0
    4e4a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    4e4d:	8b 45 08             	mov    0x8(%ebp),%eax
    4e50:	8b 13                	mov    (%ebx),%edx
    4e52:	e8 59 fe ff ff       	call   4cb0 <printint>
        ap++;
    4e57:	89 d8                	mov    %ebx,%eax
    4e59:	83 c4 10             	add    $0x10,%esp
      state = 0;
    4e5c:	31 d2                	xor    %edx,%edx
        ap++;
    4e5e:	83 c0 04             	add    $0x4,%eax
    4e61:	89 45 d0             	mov    %eax,-0x30(%ebp)
    4e64:	e9 4b ff ff ff       	jmp    4db4 <printf+0x54>
    4e69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    4e70:	83 ec 0c             	sub    $0xc,%esp
    4e73:	b9 0a 00 00 00       	mov    $0xa,%ecx
    4e78:	6a 01                	push   $0x1
    4e7a:	eb ce                	jmp    4e4a <printf+0xea>
    4e7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    4e80:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    4e83:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    4e86:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    4e88:	6a 01                	push   $0x1
        ap++;
    4e8a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    4e8d:	57                   	push   %edi
    4e8e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    4e91:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    4e94:	e8 54 fd ff ff       	call   4bed <write>
        ap++;
    4e99:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    4e9c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    4e9f:	31 d2                	xor    %edx,%edx
    4ea1:	e9 0e ff ff ff       	jmp    4db4 <printf+0x54>
    4ea6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4ead:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    4eb0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    4eb3:	83 ec 04             	sub    $0x4,%esp
    4eb6:	e9 59 ff ff ff       	jmp    4e14 <printf+0xb4>
    4ebb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    4ebf:	90                   	nop
        s = (char*)*ap;
    4ec0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    4ec3:	8b 18                	mov    (%eax),%ebx
        ap++;
    4ec5:	83 c0 04             	add    $0x4,%eax
    4ec8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    4ecb:	85 db                	test   %ebx,%ebx
    4ecd:	74 17                	je     4ee6 <printf+0x186>
        while(*s != 0){
    4ecf:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    4ed2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    4ed4:	84 c0                	test   %al,%al
    4ed6:	0f 84 d8 fe ff ff    	je     4db4 <printf+0x54>
    4edc:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    4edf:	89 de                	mov    %ebx,%esi
    4ee1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    4ee4:	eb 1a                	jmp    4f00 <printf+0x1a0>
          s = "(null)";
    4ee6:	bb be 66 00 00       	mov    $0x66be,%ebx
        while(*s != 0){
    4eeb:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    4eee:	b8 28 00 00 00       	mov    $0x28,%eax
    4ef3:	89 de                	mov    %ebx,%esi
    4ef5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    4ef8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    4eff:	90                   	nop
  write(fd, &c, 1);
    4f00:	83 ec 04             	sub    $0x4,%esp
          s++;
    4f03:	83 c6 01             	add    $0x1,%esi
    4f06:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    4f09:	6a 01                	push   $0x1
    4f0b:	57                   	push   %edi
    4f0c:	53                   	push   %ebx
    4f0d:	e8 db fc ff ff       	call   4bed <write>
        while(*s != 0){
    4f12:	0f b6 06             	movzbl (%esi),%eax
    4f15:	83 c4 10             	add    $0x10,%esp
    4f18:	84 c0                	test   %al,%al
    4f1a:	75 e4                	jne    4f00 <printf+0x1a0>
    4f1c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    4f1f:	31 d2                	xor    %edx,%edx
    4f21:	e9 8e fe ff ff       	jmp    4db4 <printf+0x54>
