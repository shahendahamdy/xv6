
_sh:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
  return 0;
}

int
main(void)
{
    1000:	f3 0f 1e fb          	endbr32 
    1004:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1008:	83 e4 f0             	and    $0xfffffff0,%esp
    100b:	ff 71 fc             	pushl  -0x4(%ecx)
    100e:	55                   	push   %ebp
    100f:	89 e5                	mov    %esp,%ebp
    1011:	51                   	push   %ecx
    1012:	83 ec 04             	sub    $0x4,%esp
  static char buf[100];
  int fd;

  // Ensure that three file descriptors are open.
  while((fd = open("console", O_RDWR)) >= 0){
    1015:	eb 12                	jmp    1029 <main+0x29>
    1017:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    101e:	66 90                	xchg   %ax,%ax
    if(fd >= 3){
    1020:	83 f8 02             	cmp    $0x2,%eax
    1023:	0f 8f b7 00 00 00    	jg     10e0 <main+0xe0>
  while((fd = open("console", O_RDWR)) >= 0){
    1029:	83 ec 08             	sub    $0x8,%esp
    102c:	6a 02                	push   $0x2
    102e:	68 d9 23 00 00       	push   $0x23d9
    1033:	e8 e5 0f 00 00       	call   201d <open>
    1038:	83 c4 10             	add    $0x10,%esp
    103b:	85 c0                	test   %eax,%eax
    103d:	79 e1                	jns    1020 <main+0x20>
    103f:	eb 32                	jmp    1073 <main+0x73>
    1041:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }

  // Read and run input commands.
  while(getcmd(buf, sizeof(buf)) >= 0){
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
    1048:	80 3d c2 2a 00 00 20 	cmpb   $0x20,0x2ac2
    104f:	74 51                	je     10a2 <main+0xa2>
    1051:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
int
fork1(void)
{
  int pid;

  pid = fork();
    1058:	e8 78 0f 00 00       	call   1fd5 <fork>
  if(pid == -1)
    105d:	83 f8 ff             	cmp    $0xffffffff,%eax
    1060:	0f 84 9d 00 00 00    	je     1103 <main+0x103>
    if(fork1() == 0)
    1066:	85 c0                	test   %eax,%eax
    1068:	0f 84 80 00 00 00    	je     10ee <main+0xee>
    wait();
    106e:	e8 72 0f 00 00       	call   1fe5 <wait>
  while(getcmd(buf, sizeof(buf)) >= 0){
    1073:	83 ec 08             	sub    $0x8,%esp
    1076:	6a 64                	push   $0x64
    1078:	68 c0 2a 00 00       	push   $0x2ac0
    107d:	e8 8e 00 00 00       	call   1110 <getcmd>
    1082:	83 c4 10             	add    $0x10,%esp
    1085:	85 c0                	test   %eax,%eax
    1087:	78 14                	js     109d <main+0x9d>
    if(buf[0] == 'c' && buf[1] == 'd' && buf[2] == ' '){
    1089:	80 3d c0 2a 00 00 63 	cmpb   $0x63,0x2ac0
    1090:	75 c6                	jne    1058 <main+0x58>
    1092:	80 3d c1 2a 00 00 64 	cmpb   $0x64,0x2ac1
    1099:	75 bd                	jne    1058 <main+0x58>
    109b:	eb ab                	jmp    1048 <main+0x48>
  exit();
    109d:	e8 3b 0f 00 00       	call   1fdd <exit>
      buf[strlen(buf)-1] = 0;  // chop \n
    10a2:	83 ec 0c             	sub    $0xc,%esp
    10a5:	68 c0 2a 00 00       	push   $0x2ac0
    10aa:	e8 01 0b 00 00       	call   1bb0 <strlen>
      if(chdir(buf+3) < 0)
    10af:	c7 04 24 c3 2a 00 00 	movl   $0x2ac3,(%esp)
      buf[strlen(buf)-1] = 0;  // chop \n
    10b6:	c6 80 bf 2a 00 00 00 	movb   $0x0,0x2abf(%eax)
      if(chdir(buf+3) < 0)
    10bd:	e8 8b 0f 00 00       	call   204d <chdir>
    10c2:	83 c4 10             	add    $0x10,%esp
    10c5:	85 c0                	test   %eax,%eax
    10c7:	79 aa                	jns    1073 <main+0x73>
        printf(2, "cannot cd %s\n", buf+3);
    10c9:	50                   	push   %eax
    10ca:	68 c3 2a 00 00       	push   $0x2ac3
    10cf:	68 e1 23 00 00       	push   $0x23e1
    10d4:	6a 02                	push   $0x2
    10d6:	e8 95 10 00 00       	call   2170 <printf>
    10db:	83 c4 10             	add    $0x10,%esp
    10de:	eb 93                	jmp    1073 <main+0x73>
      close(fd);
    10e0:	83 ec 0c             	sub    $0xc,%esp
    10e3:	50                   	push   %eax
    10e4:	e8 1c 0f 00 00       	call   2005 <close>
      break;
    10e9:	83 c4 10             	add    $0x10,%esp
    10ec:	eb 85                	jmp    1073 <main+0x73>
      runcmd(parsecmd(buf));
    10ee:	83 ec 0c             	sub    $0xc,%esp
    10f1:	68 c0 2a 00 00       	push   $0x2ac0
    10f6:	e8 c5 09 00 00       	call   1ac0 <parsecmd>
    10fb:	89 04 24             	mov    %eax,(%esp)
    10fe:	e8 7d 00 00 00       	call   1180 <runcmd>
    panic("fork");
    1103:	83 ec 0c             	sub    $0xc,%esp
    1106:	68 62 23 00 00       	push   $0x2362
    110b:	e8 50 00 00 00       	call   1160 <panic>

00001110 <getcmd>:
{
    1110:	f3 0f 1e fb          	endbr32 
    1114:	55                   	push   %ebp
    1115:	89 e5                	mov    %esp,%ebp
    1117:	56                   	push   %esi
    1118:	53                   	push   %ebx
    1119:	8b 75 0c             	mov    0xc(%ebp),%esi
    111c:	8b 5d 08             	mov    0x8(%ebp),%ebx
  printf(2, "$ ");
    111f:	83 ec 08             	sub    $0x8,%esp
    1122:	68 38 23 00 00       	push   $0x2338
    1127:	6a 02                	push   $0x2
    1129:	e8 42 10 00 00       	call   2170 <printf>
  memset(buf, 0, nbuf);
    112e:	83 c4 0c             	add    $0xc,%esp
    1131:	56                   	push   %esi
    1132:	6a 00                	push   $0x0
    1134:	53                   	push   %ebx
    1135:	e8 b6 0a 00 00       	call   1bf0 <memset>
  gets(buf, nbuf);
    113a:	58                   	pop    %eax
    113b:	5a                   	pop    %edx
    113c:	56                   	push   %esi
    113d:	53                   	push   %ebx
    113e:	e8 0d 0b 00 00       	call   1c50 <gets>
  if(buf[0] == 0) // EOF
    1143:	83 c4 10             	add    $0x10,%esp
    1146:	31 c0                	xor    %eax,%eax
    1148:	80 3b 00             	cmpb   $0x0,(%ebx)
    114b:	0f 94 c0             	sete   %al
}
    114e:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1151:	5b                   	pop    %ebx
  if(buf[0] == 0) // EOF
    1152:	f7 d8                	neg    %eax
}
    1154:	5e                   	pop    %esi
    1155:	5d                   	pop    %ebp
    1156:	c3                   	ret    
    1157:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    115e:	66 90                	xchg   %ax,%ax

00001160 <panic>:
{
    1160:	f3 0f 1e fb          	endbr32 
    1164:	55                   	push   %ebp
    1165:	89 e5                	mov    %esp,%ebp
    1167:	83 ec 0c             	sub    $0xc,%esp
  printf(2, "%s\n", s);
    116a:	ff 75 08             	pushl  0x8(%ebp)
    116d:	68 d5 23 00 00       	push   $0x23d5
    1172:	6a 02                	push   $0x2
    1174:	e8 f7 0f 00 00       	call   2170 <printf>
  exit();
    1179:	e8 5f 0e 00 00       	call   1fdd <exit>
    117e:	66 90                	xchg   %ax,%ax

00001180 <runcmd>:
{
    1180:	f3 0f 1e fb          	endbr32 
    1184:	55                   	push   %ebp
    1185:	89 e5                	mov    %esp,%ebp
    1187:	53                   	push   %ebx
    1188:	83 ec 14             	sub    $0x14,%esp
    118b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  if(cmd == 0)
    118e:	85 db                	test   %ebx,%ebx
    1190:	74 7e                	je     1210 <runcmd+0x90>
  switch(cmd->type){
    1192:	83 3b 05             	cmpl   $0x5,(%ebx)
    1195:	0f 87 04 01 00 00    	ja     129f <runcmd+0x11f>
    119b:	8b 03                	mov    (%ebx),%eax
    119d:	3e ff 24 85 f0 23 00 	notrack jmp *0x23f0(,%eax,4)
    11a4:	00 
    if(pipe(p) < 0)
    11a5:	83 ec 0c             	sub    $0xc,%esp
    11a8:	8d 45 f0             	lea    -0x10(%ebp),%eax
    11ab:	50                   	push   %eax
    11ac:	e8 3c 0e 00 00       	call   1fed <pipe>
    11b1:	83 c4 10             	add    $0x10,%esp
    11b4:	85 c0                	test   %eax,%eax
    11b6:	0f 88 05 01 00 00    	js     12c1 <runcmd+0x141>
  pid = fork();
    11bc:	e8 14 0e 00 00       	call   1fd5 <fork>
  if(pid == -1)
    11c1:	83 f8 ff             	cmp    $0xffffffff,%eax
    11c4:	0f 84 60 01 00 00    	je     132a <runcmd+0x1aa>
    if(fork1() == 0){
    11ca:	85 c0                	test   %eax,%eax
    11cc:	0f 84 fc 00 00 00    	je     12ce <runcmd+0x14e>
  pid = fork();
    11d2:	e8 fe 0d 00 00       	call   1fd5 <fork>
  if(pid == -1)
    11d7:	83 f8 ff             	cmp    $0xffffffff,%eax
    11da:	0f 84 4a 01 00 00    	je     132a <runcmd+0x1aa>
    if(fork1() == 0){
    11e0:	85 c0                	test   %eax,%eax
    11e2:	0f 84 14 01 00 00    	je     12fc <runcmd+0x17c>
    close(p[0]);
    11e8:	83 ec 0c             	sub    $0xc,%esp
    11eb:	ff 75 f0             	pushl  -0x10(%ebp)
    11ee:	e8 12 0e 00 00       	call   2005 <close>
    close(p[1]);
    11f3:	58                   	pop    %eax
    11f4:	ff 75 f4             	pushl  -0xc(%ebp)
    11f7:	e8 09 0e 00 00       	call   2005 <close>
    wait();
    11fc:	e8 e4 0d 00 00       	call   1fe5 <wait>
    wait();
    1201:	e8 df 0d 00 00       	call   1fe5 <wait>
    break;
    1206:	83 c4 10             	add    $0x10,%esp
    1209:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    exit();
    1210:	e8 c8 0d 00 00       	call   1fdd <exit>
  pid = fork();
    1215:	e8 bb 0d 00 00       	call   1fd5 <fork>
  if(pid == -1)
    121a:	83 f8 ff             	cmp    $0xffffffff,%eax
    121d:	0f 84 07 01 00 00    	je     132a <runcmd+0x1aa>
    if(fork1() == 0)
    1223:	85 c0                	test   %eax,%eax
    1225:	75 e9                	jne    1210 <runcmd+0x90>
    1227:	eb 6b                	jmp    1294 <runcmd+0x114>
    if(ecmd->argv[0] == 0)
    1229:	8b 43 04             	mov    0x4(%ebx),%eax
    122c:	85 c0                	test   %eax,%eax
    122e:	74 e0                	je     1210 <runcmd+0x90>
    exec(ecmd->argv[0], ecmd->argv);
    1230:	8d 53 04             	lea    0x4(%ebx),%edx
    1233:	51                   	push   %ecx
    1234:	51                   	push   %ecx
    1235:	52                   	push   %edx
    1236:	50                   	push   %eax
    1237:	e8 d9 0d 00 00       	call   2015 <exec>
    printf(2, "exec %s failed\n", ecmd->argv[0]);
    123c:	83 c4 0c             	add    $0xc,%esp
    123f:	ff 73 04             	pushl  0x4(%ebx)
    1242:	68 42 23 00 00       	push   $0x2342
    1247:	6a 02                	push   $0x2
    1249:	e8 22 0f 00 00       	call   2170 <printf>
    break;
    124e:	83 c4 10             	add    $0x10,%esp
    1251:	eb bd                	jmp    1210 <runcmd+0x90>
  pid = fork();
    1253:	e8 7d 0d 00 00       	call   1fd5 <fork>
  if(pid == -1)
    1258:	83 f8 ff             	cmp    $0xffffffff,%eax
    125b:	0f 84 c9 00 00 00    	je     132a <runcmd+0x1aa>
    if(fork1() == 0)
    1261:	85 c0                	test   %eax,%eax
    1263:	74 2f                	je     1294 <runcmd+0x114>
    wait();
    1265:	e8 7b 0d 00 00       	call   1fe5 <wait>
    runcmd(lcmd->right);
    126a:	83 ec 0c             	sub    $0xc,%esp
    126d:	ff 73 08             	pushl  0x8(%ebx)
    1270:	e8 0b ff ff ff       	call   1180 <runcmd>
    close(rcmd->fd);
    1275:	83 ec 0c             	sub    $0xc,%esp
    1278:	ff 73 14             	pushl  0x14(%ebx)
    127b:	e8 85 0d 00 00       	call   2005 <close>
    if(open(rcmd->file, rcmd->mode) < 0){
    1280:	58                   	pop    %eax
    1281:	5a                   	pop    %edx
    1282:	ff 73 10             	pushl  0x10(%ebx)
    1285:	ff 73 08             	pushl  0x8(%ebx)
    1288:	e8 90 0d 00 00       	call   201d <open>
    128d:	83 c4 10             	add    $0x10,%esp
    1290:	85 c0                	test   %eax,%eax
    1292:	78 18                	js     12ac <runcmd+0x12c>
      runcmd(bcmd->cmd);
    1294:	83 ec 0c             	sub    $0xc,%esp
    1297:	ff 73 04             	pushl  0x4(%ebx)
    129a:	e8 e1 fe ff ff       	call   1180 <runcmd>
    panic("runcmd");
    129f:	83 ec 0c             	sub    $0xc,%esp
    12a2:	68 3b 23 00 00       	push   $0x233b
    12a7:	e8 b4 fe ff ff       	call   1160 <panic>
      printf(2, "open %s failed\n", rcmd->file);
    12ac:	51                   	push   %ecx
    12ad:	ff 73 08             	pushl  0x8(%ebx)
    12b0:	68 52 23 00 00       	push   $0x2352
    12b5:	6a 02                	push   $0x2
    12b7:	e8 b4 0e 00 00       	call   2170 <printf>
      exit();
    12bc:	e8 1c 0d 00 00       	call   1fdd <exit>
      panic("pipe");
    12c1:	83 ec 0c             	sub    $0xc,%esp
    12c4:	68 67 23 00 00       	push   $0x2367
    12c9:	e8 92 fe ff ff       	call   1160 <panic>
      close(1);
    12ce:	83 ec 0c             	sub    $0xc,%esp
    12d1:	6a 01                	push   $0x1
    12d3:	e8 2d 0d 00 00       	call   2005 <close>
      dup(p[1]);
    12d8:	58                   	pop    %eax
    12d9:	ff 75 f4             	pushl  -0xc(%ebp)
    12dc:	e8 74 0d 00 00       	call   2055 <dup>
      close(p[0]);
    12e1:	58                   	pop    %eax
    12e2:	ff 75 f0             	pushl  -0x10(%ebp)
    12e5:	e8 1b 0d 00 00       	call   2005 <close>
      close(p[1]);
    12ea:	58                   	pop    %eax
    12eb:	ff 75 f4             	pushl  -0xc(%ebp)
    12ee:	e8 12 0d 00 00       	call   2005 <close>
      runcmd(pcmd->left);
    12f3:	5a                   	pop    %edx
    12f4:	ff 73 04             	pushl  0x4(%ebx)
    12f7:	e8 84 fe ff ff       	call   1180 <runcmd>
      close(0);
    12fc:	83 ec 0c             	sub    $0xc,%esp
    12ff:	6a 00                	push   $0x0
    1301:	e8 ff 0c 00 00       	call   2005 <close>
      dup(p[0]);
    1306:	5a                   	pop    %edx
    1307:	ff 75 f0             	pushl  -0x10(%ebp)
    130a:	e8 46 0d 00 00       	call   2055 <dup>
      close(p[0]);
    130f:	59                   	pop    %ecx
    1310:	ff 75 f0             	pushl  -0x10(%ebp)
    1313:	e8 ed 0c 00 00       	call   2005 <close>
      close(p[1]);
    1318:	58                   	pop    %eax
    1319:	ff 75 f4             	pushl  -0xc(%ebp)
    131c:	e8 e4 0c 00 00       	call   2005 <close>
      runcmd(pcmd->right);
    1321:	58                   	pop    %eax
    1322:	ff 73 08             	pushl  0x8(%ebx)
    1325:	e8 56 fe ff ff       	call   1180 <runcmd>
    panic("fork");
    132a:	83 ec 0c             	sub    $0xc,%esp
    132d:	68 62 23 00 00       	push   $0x2362
    1332:	e8 29 fe ff ff       	call   1160 <panic>
    1337:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    133e:	66 90                	xchg   %ax,%ax

00001340 <fork1>:
{
    1340:	f3 0f 1e fb          	endbr32 
    1344:	55                   	push   %ebp
    1345:	89 e5                	mov    %esp,%ebp
    1347:	83 ec 08             	sub    $0x8,%esp
  pid = fork();
    134a:	e8 86 0c 00 00       	call   1fd5 <fork>
  if(pid == -1)
    134f:	83 f8 ff             	cmp    $0xffffffff,%eax
    1352:	74 02                	je     1356 <fork1+0x16>
  return pid;
}
    1354:	c9                   	leave  
    1355:	c3                   	ret    
    panic("fork");
    1356:	83 ec 0c             	sub    $0xc,%esp
    1359:	68 62 23 00 00       	push   $0x2362
    135e:	e8 fd fd ff ff       	call   1160 <panic>
    1363:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    136a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001370 <execcmd>:
//PAGEBREAK!
// Constructors

struct cmd*
execcmd(void)
{
    1370:	f3 0f 1e fb          	endbr32 
    1374:	55                   	push   %ebp
    1375:	89 e5                	mov    %esp,%ebp
    1377:	53                   	push   %ebx
    1378:	83 ec 10             	sub    $0x10,%esp
  struct execcmd *cmd;

  cmd = malloc(sizeof(*cmd));
    137b:	6a 54                	push   $0x54
    137d:	e8 1e 0b 00 00       	call   1ea0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    1382:	83 c4 0c             	add    $0xc,%esp
    1385:	6a 54                	push   $0x54
  cmd = malloc(sizeof(*cmd));
    1387:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
    1389:	6a 00                	push   $0x0
    138b:	50                   	push   %eax
    138c:	e8 5f 08 00 00       	call   1bf0 <memset>
  cmd->type = EXEC;
    1391:	c7 03 01 00 00 00    	movl   $0x1,(%ebx)
  return (struct cmd*)cmd;
}
    1397:	89 d8                	mov    %ebx,%eax
    1399:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    139c:	c9                   	leave  
    139d:	c3                   	ret    
    139e:	66 90                	xchg   %ax,%ax

000013a0 <redircmd>:

struct cmd*
redircmd(struct cmd *subcmd, char *file, char *efile, int mode, int fd)
{
    13a0:	f3 0f 1e fb          	endbr32 
    13a4:	55                   	push   %ebp
    13a5:	89 e5                	mov    %esp,%ebp
    13a7:	53                   	push   %ebx
    13a8:	83 ec 10             	sub    $0x10,%esp
  struct redircmd *cmd;

  cmd = malloc(sizeof(*cmd));
    13ab:	6a 18                	push   $0x18
    13ad:	e8 ee 0a 00 00       	call   1ea0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    13b2:	83 c4 0c             	add    $0xc,%esp
    13b5:	6a 18                	push   $0x18
  cmd = malloc(sizeof(*cmd));
    13b7:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
    13b9:	6a 00                	push   $0x0
    13bb:	50                   	push   %eax
    13bc:	e8 2f 08 00 00       	call   1bf0 <memset>
  cmd->type = REDIR;
  cmd->cmd = subcmd;
    13c1:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = REDIR;
    13c4:	c7 03 02 00 00 00    	movl   $0x2,(%ebx)
  cmd->cmd = subcmd;
    13ca:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->file = file;
    13cd:	8b 45 0c             	mov    0xc(%ebp),%eax
    13d0:	89 43 08             	mov    %eax,0x8(%ebx)
  cmd->efile = efile;
    13d3:	8b 45 10             	mov    0x10(%ebp),%eax
    13d6:	89 43 0c             	mov    %eax,0xc(%ebx)
  cmd->mode = mode;
    13d9:	8b 45 14             	mov    0x14(%ebp),%eax
    13dc:	89 43 10             	mov    %eax,0x10(%ebx)
  cmd->fd = fd;
    13df:	8b 45 18             	mov    0x18(%ebp),%eax
    13e2:	89 43 14             	mov    %eax,0x14(%ebx)
  return (struct cmd*)cmd;
}
    13e5:	89 d8                	mov    %ebx,%eax
    13e7:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    13ea:	c9                   	leave  
    13eb:	c3                   	ret    
    13ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000013f0 <pipecmd>:

struct cmd*
pipecmd(struct cmd *left, struct cmd *right)
{
    13f0:	f3 0f 1e fb          	endbr32 
    13f4:	55                   	push   %ebp
    13f5:	89 e5                	mov    %esp,%ebp
    13f7:	53                   	push   %ebx
    13f8:	83 ec 10             	sub    $0x10,%esp
  struct pipecmd *cmd;

  cmd = malloc(sizeof(*cmd));
    13fb:	6a 0c                	push   $0xc
    13fd:	e8 9e 0a 00 00       	call   1ea0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    1402:	83 c4 0c             	add    $0xc,%esp
    1405:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
    1407:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
    1409:	6a 00                	push   $0x0
    140b:	50                   	push   %eax
    140c:	e8 df 07 00 00       	call   1bf0 <memset>
  cmd->type = PIPE;
  cmd->left = left;
    1411:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = PIPE;
    1414:	c7 03 03 00 00 00    	movl   $0x3,(%ebx)
  cmd->left = left;
    141a:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
    141d:	8b 45 0c             	mov    0xc(%ebp),%eax
    1420:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
    1423:	89 d8                	mov    %ebx,%eax
    1425:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1428:	c9                   	leave  
    1429:	c3                   	ret    
    142a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001430 <listcmd>:

struct cmd*
listcmd(struct cmd *left, struct cmd *right)
{
    1430:	f3 0f 1e fb          	endbr32 
    1434:	55                   	push   %ebp
    1435:	89 e5                	mov    %esp,%ebp
    1437:	53                   	push   %ebx
    1438:	83 ec 10             	sub    $0x10,%esp
  struct listcmd *cmd;

  cmd = malloc(sizeof(*cmd));
    143b:	6a 0c                	push   $0xc
    143d:	e8 5e 0a 00 00       	call   1ea0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    1442:	83 c4 0c             	add    $0xc,%esp
    1445:	6a 0c                	push   $0xc
  cmd = malloc(sizeof(*cmd));
    1447:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
    1449:	6a 00                	push   $0x0
    144b:	50                   	push   %eax
    144c:	e8 9f 07 00 00       	call   1bf0 <memset>
  cmd->type = LIST;
  cmd->left = left;
    1451:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = LIST;
    1454:	c7 03 04 00 00 00    	movl   $0x4,(%ebx)
  cmd->left = left;
    145a:	89 43 04             	mov    %eax,0x4(%ebx)
  cmd->right = right;
    145d:	8b 45 0c             	mov    0xc(%ebp),%eax
    1460:	89 43 08             	mov    %eax,0x8(%ebx)
  return (struct cmd*)cmd;
}
    1463:	89 d8                	mov    %ebx,%eax
    1465:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1468:	c9                   	leave  
    1469:	c3                   	ret    
    146a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001470 <backcmd>:

struct cmd*
backcmd(struct cmd *subcmd)
{
    1470:	f3 0f 1e fb          	endbr32 
    1474:	55                   	push   %ebp
    1475:	89 e5                	mov    %esp,%ebp
    1477:	53                   	push   %ebx
    1478:	83 ec 10             	sub    $0x10,%esp
  struct backcmd *cmd;

  cmd = malloc(sizeof(*cmd));
    147b:	6a 08                	push   $0x8
    147d:	e8 1e 0a 00 00       	call   1ea0 <malloc>
  memset(cmd, 0, sizeof(*cmd));
    1482:	83 c4 0c             	add    $0xc,%esp
    1485:	6a 08                	push   $0x8
  cmd = malloc(sizeof(*cmd));
    1487:	89 c3                	mov    %eax,%ebx
  memset(cmd, 0, sizeof(*cmd));
    1489:	6a 00                	push   $0x0
    148b:	50                   	push   %eax
    148c:	e8 5f 07 00 00       	call   1bf0 <memset>
  cmd->type = BACK;
  cmd->cmd = subcmd;
    1491:	8b 45 08             	mov    0x8(%ebp),%eax
  cmd->type = BACK;
    1494:	c7 03 05 00 00 00    	movl   $0x5,(%ebx)
  cmd->cmd = subcmd;
    149a:	89 43 04             	mov    %eax,0x4(%ebx)
  return (struct cmd*)cmd;
}
    149d:	89 d8                	mov    %ebx,%eax
    149f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    14a2:	c9                   	leave  
    14a3:	c3                   	ret    
    14a4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14af:	90                   	nop

000014b0 <gettoken>:
char whitespace[] = " \t\r\n\v";
char symbols[] = "<|>&;()";

int
gettoken(char **ps, char *es, char **q, char **eq)
{
    14b0:	f3 0f 1e fb          	endbr32 
    14b4:	55                   	push   %ebp
    14b5:	89 e5                	mov    %esp,%ebp
    14b7:	57                   	push   %edi
    14b8:	56                   	push   %esi
    14b9:	53                   	push   %ebx
    14ba:	83 ec 0c             	sub    $0xc,%esp
  char *s;
  int ret;

  s = *ps;
    14bd:	8b 45 08             	mov    0x8(%ebp),%eax
{
    14c0:	8b 5d 0c             	mov    0xc(%ebp),%ebx
    14c3:	8b 75 10             	mov    0x10(%ebp),%esi
  s = *ps;
    14c6:	8b 38                	mov    (%eax),%edi
  while(s < es && strchr(whitespace, *s))
    14c8:	39 df                	cmp    %ebx,%edi
    14ca:	72 0b                	jb     14d7 <gettoken+0x27>
    14cc:	eb 21                	jmp    14ef <gettoken+0x3f>
    14ce:	66 90                	xchg   %ax,%ax
    s++;
    14d0:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
    14d3:	39 fb                	cmp    %edi,%ebx
    14d5:	74 18                	je     14ef <gettoken+0x3f>
    14d7:	0f be 07             	movsbl (%edi),%eax
    14da:	83 ec 08             	sub    $0x8,%esp
    14dd:	50                   	push   %eax
    14de:	68 a0 2a 00 00       	push   $0x2aa0
    14e3:	e8 28 07 00 00       	call   1c10 <strchr>
    14e8:	83 c4 10             	add    $0x10,%esp
    14eb:	85 c0                	test   %eax,%eax
    14ed:	75 e1                	jne    14d0 <gettoken+0x20>
  if(q)
    14ef:	85 f6                	test   %esi,%esi
    14f1:	74 02                	je     14f5 <gettoken+0x45>
    *q = s;
    14f3:	89 3e                	mov    %edi,(%esi)
  ret = *s;
    14f5:	0f b6 07             	movzbl (%edi),%eax
  switch(*s){
    14f8:	3c 3c                	cmp    $0x3c,%al
    14fa:	0f 8f d0 00 00 00    	jg     15d0 <gettoken+0x120>
    1500:	3c 3a                	cmp    $0x3a,%al
    1502:	0f 8f b4 00 00 00    	jg     15bc <gettoken+0x10c>
    1508:	84 c0                	test   %al,%al
    150a:	75 44                	jne    1550 <gettoken+0xa0>
    150c:	31 f6                	xor    %esi,%esi
    ret = 'a';
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
      s++;
    break;
  }
  if(eq)
    150e:	8b 55 14             	mov    0x14(%ebp),%edx
    1511:	85 d2                	test   %edx,%edx
    1513:	74 05                	je     151a <gettoken+0x6a>
    *eq = s;
    1515:	8b 45 14             	mov    0x14(%ebp),%eax
    1518:	89 38                	mov    %edi,(%eax)

  while(s < es && strchr(whitespace, *s))
    151a:	39 df                	cmp    %ebx,%edi
    151c:	72 09                	jb     1527 <gettoken+0x77>
    151e:	eb 1f                	jmp    153f <gettoken+0x8f>
    s++;
    1520:	83 c7 01             	add    $0x1,%edi
  while(s < es && strchr(whitespace, *s))
    1523:	39 fb                	cmp    %edi,%ebx
    1525:	74 18                	je     153f <gettoken+0x8f>
    1527:	0f be 07             	movsbl (%edi),%eax
    152a:	83 ec 08             	sub    $0x8,%esp
    152d:	50                   	push   %eax
    152e:	68 a0 2a 00 00       	push   $0x2aa0
    1533:	e8 d8 06 00 00       	call   1c10 <strchr>
    1538:	83 c4 10             	add    $0x10,%esp
    153b:	85 c0                	test   %eax,%eax
    153d:	75 e1                	jne    1520 <gettoken+0x70>
  *ps = s;
    153f:	8b 45 08             	mov    0x8(%ebp),%eax
    1542:	89 38                	mov    %edi,(%eax)
  return ret;
}
    1544:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1547:	89 f0                	mov    %esi,%eax
    1549:	5b                   	pop    %ebx
    154a:	5e                   	pop    %esi
    154b:	5f                   	pop    %edi
    154c:	5d                   	pop    %ebp
    154d:	c3                   	ret    
    154e:	66 90                	xchg   %ax,%ax
  switch(*s){
    1550:	79 5e                	jns    15b0 <gettoken+0x100>
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
    1552:	39 fb                	cmp    %edi,%ebx
    1554:	77 34                	ja     158a <gettoken+0xda>
  if(eq)
    1556:	8b 45 14             	mov    0x14(%ebp),%eax
    1559:	be 61 00 00 00       	mov    $0x61,%esi
    155e:	85 c0                	test   %eax,%eax
    1560:	75 b3                	jne    1515 <gettoken+0x65>
    1562:	eb db                	jmp    153f <gettoken+0x8f>
    1564:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
    1568:	0f be 07             	movsbl (%edi),%eax
    156b:	83 ec 08             	sub    $0x8,%esp
    156e:	50                   	push   %eax
    156f:	68 98 2a 00 00       	push   $0x2a98
    1574:	e8 97 06 00 00       	call   1c10 <strchr>
    1579:	83 c4 10             	add    $0x10,%esp
    157c:	85 c0                	test   %eax,%eax
    157e:	75 22                	jne    15a2 <gettoken+0xf2>
      s++;
    1580:	83 c7 01             	add    $0x1,%edi
    while(s < es && !strchr(whitespace, *s) && !strchr(symbols, *s))
    1583:	39 fb                	cmp    %edi,%ebx
    1585:	74 cf                	je     1556 <gettoken+0xa6>
    1587:	0f b6 07             	movzbl (%edi),%eax
    158a:	83 ec 08             	sub    $0x8,%esp
    158d:	0f be f0             	movsbl %al,%esi
    1590:	56                   	push   %esi
    1591:	68 a0 2a 00 00       	push   $0x2aa0
    1596:	e8 75 06 00 00       	call   1c10 <strchr>
    159b:	83 c4 10             	add    $0x10,%esp
    159e:	85 c0                	test   %eax,%eax
    15a0:	74 c6                	je     1568 <gettoken+0xb8>
    ret = 'a';
    15a2:	be 61 00 00 00       	mov    $0x61,%esi
    15a7:	e9 62 ff ff ff       	jmp    150e <gettoken+0x5e>
    15ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
    15b0:	3c 26                	cmp    $0x26,%al
    15b2:	74 08                	je     15bc <gettoken+0x10c>
    15b4:	8d 48 d8             	lea    -0x28(%eax),%ecx
    15b7:	80 f9 01             	cmp    $0x1,%cl
    15ba:	77 96                	ja     1552 <gettoken+0xa2>
  ret = *s;
    15bc:	0f be f0             	movsbl %al,%esi
    s++;
    15bf:	83 c7 01             	add    $0x1,%edi
    break;
    15c2:	e9 47 ff ff ff       	jmp    150e <gettoken+0x5e>
    15c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15ce:	66 90                	xchg   %ax,%ax
  switch(*s){
    15d0:	3c 3e                	cmp    $0x3e,%al
    15d2:	75 1c                	jne    15f0 <gettoken+0x140>
    if(*s == '>'){
    15d4:	80 7f 01 3e          	cmpb   $0x3e,0x1(%edi)
    s++;
    15d8:	8d 47 01             	lea    0x1(%edi),%eax
    if(*s == '>'){
    15db:	74 1c                	je     15f9 <gettoken+0x149>
    s++;
    15dd:	89 c7                	mov    %eax,%edi
    15df:	be 3e 00 00 00       	mov    $0x3e,%esi
    15e4:	e9 25 ff ff ff       	jmp    150e <gettoken+0x5e>
    15e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  switch(*s){
    15f0:	3c 7c                	cmp    $0x7c,%al
    15f2:	74 c8                	je     15bc <gettoken+0x10c>
    15f4:	e9 59 ff ff ff       	jmp    1552 <gettoken+0xa2>
      s++;
    15f9:	83 c7 02             	add    $0x2,%edi
      ret = '+';
    15fc:	be 2b 00 00 00       	mov    $0x2b,%esi
    1601:	e9 08 ff ff ff       	jmp    150e <gettoken+0x5e>
    1606:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    160d:	8d 76 00             	lea    0x0(%esi),%esi

00001610 <peek>:

int
peek(char **ps, char *es, char *toks)
{
    1610:	f3 0f 1e fb          	endbr32 
    1614:	55                   	push   %ebp
    1615:	89 e5                	mov    %esp,%ebp
    1617:	57                   	push   %edi
    1618:	56                   	push   %esi
    1619:	53                   	push   %ebx
    161a:	83 ec 0c             	sub    $0xc,%esp
    161d:	8b 7d 08             	mov    0x8(%ebp),%edi
    1620:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *s;

  s = *ps;
    1623:	8b 1f                	mov    (%edi),%ebx
  while(s < es && strchr(whitespace, *s))
    1625:	39 f3                	cmp    %esi,%ebx
    1627:	72 0e                	jb     1637 <peek+0x27>
    1629:	eb 24                	jmp    164f <peek+0x3f>
    162b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    162f:	90                   	nop
    s++;
    1630:	83 c3 01             	add    $0x1,%ebx
  while(s < es && strchr(whitespace, *s))
    1633:	39 de                	cmp    %ebx,%esi
    1635:	74 18                	je     164f <peek+0x3f>
    1637:	0f be 03             	movsbl (%ebx),%eax
    163a:	83 ec 08             	sub    $0x8,%esp
    163d:	50                   	push   %eax
    163e:	68 a0 2a 00 00       	push   $0x2aa0
    1643:	e8 c8 05 00 00       	call   1c10 <strchr>
    1648:	83 c4 10             	add    $0x10,%esp
    164b:	85 c0                	test   %eax,%eax
    164d:	75 e1                	jne    1630 <peek+0x20>
  *ps = s;
    164f:	89 1f                	mov    %ebx,(%edi)
  return *s && strchr(toks, *s);
    1651:	0f be 03             	movsbl (%ebx),%eax
    1654:	31 d2                	xor    %edx,%edx
    1656:	84 c0                	test   %al,%al
    1658:	75 0e                	jne    1668 <peek+0x58>
}
    165a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    165d:	89 d0                	mov    %edx,%eax
    165f:	5b                   	pop    %ebx
    1660:	5e                   	pop    %esi
    1661:	5f                   	pop    %edi
    1662:	5d                   	pop    %ebp
    1663:	c3                   	ret    
    1664:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  return *s && strchr(toks, *s);
    1668:	83 ec 08             	sub    $0x8,%esp
    166b:	50                   	push   %eax
    166c:	ff 75 10             	pushl  0x10(%ebp)
    166f:	e8 9c 05 00 00       	call   1c10 <strchr>
    1674:	83 c4 10             	add    $0x10,%esp
    1677:	31 d2                	xor    %edx,%edx
    1679:	85 c0                	test   %eax,%eax
    167b:	0f 95 c2             	setne  %dl
}
    167e:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1681:	5b                   	pop    %ebx
    1682:	89 d0                	mov    %edx,%eax
    1684:	5e                   	pop    %esi
    1685:	5f                   	pop    %edi
    1686:	5d                   	pop    %ebp
    1687:	c3                   	ret    
    1688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    168f:	90                   	nop

00001690 <parseredirs>:
  return cmd;
}

struct cmd*
parseredirs(struct cmd *cmd, char **ps, char *es)
{
    1690:	f3 0f 1e fb          	endbr32 
    1694:	55                   	push   %ebp
    1695:	89 e5                	mov    %esp,%ebp
    1697:	57                   	push   %edi
    1698:	56                   	push   %esi
    1699:	53                   	push   %ebx
    169a:	83 ec 1c             	sub    $0x1c,%esp
    169d:	8b 75 0c             	mov    0xc(%ebp),%esi
    16a0:	8b 5d 10             	mov    0x10(%ebp),%ebx
  int tok;
  char *q, *eq;

  while(peek(ps, es, "<>")){
    16a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    16a7:	90                   	nop
    16a8:	83 ec 04             	sub    $0x4,%esp
    16ab:	68 89 23 00 00       	push   $0x2389
    16b0:	53                   	push   %ebx
    16b1:	56                   	push   %esi
    16b2:	e8 59 ff ff ff       	call   1610 <peek>
    16b7:	83 c4 10             	add    $0x10,%esp
    16ba:	85 c0                	test   %eax,%eax
    16bc:	74 6a                	je     1728 <parseredirs+0x98>
    tok = gettoken(ps, es, 0, 0);
    16be:	6a 00                	push   $0x0
    16c0:	6a 00                	push   $0x0
    16c2:	53                   	push   %ebx
    16c3:	56                   	push   %esi
    16c4:	e8 e7 fd ff ff       	call   14b0 <gettoken>
    16c9:	89 c7                	mov    %eax,%edi
    if(gettoken(ps, es, &q, &eq) != 'a')
    16cb:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    16ce:	50                   	push   %eax
    16cf:	8d 45 e0             	lea    -0x20(%ebp),%eax
    16d2:	50                   	push   %eax
    16d3:	53                   	push   %ebx
    16d4:	56                   	push   %esi
    16d5:	e8 d6 fd ff ff       	call   14b0 <gettoken>
    16da:	83 c4 20             	add    $0x20,%esp
    16dd:	83 f8 61             	cmp    $0x61,%eax
    16e0:	75 51                	jne    1733 <parseredirs+0xa3>
      panic("missing file for redirection");
    switch(tok){
    16e2:	83 ff 3c             	cmp    $0x3c,%edi
    16e5:	74 31                	je     1718 <parseredirs+0x88>
    16e7:	83 ff 3e             	cmp    $0x3e,%edi
    16ea:	74 05                	je     16f1 <parseredirs+0x61>
    16ec:	83 ff 2b             	cmp    $0x2b,%edi
    16ef:	75 b7                	jne    16a8 <parseredirs+0x18>
      break;
    case '>':
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
      break;
    case '+':  // >>
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
    16f1:	83 ec 0c             	sub    $0xc,%esp
    16f4:	6a 01                	push   $0x1
    16f6:	68 01 02 00 00       	push   $0x201
    16fb:	ff 75 e4             	pushl  -0x1c(%ebp)
    16fe:	ff 75 e0             	pushl  -0x20(%ebp)
    1701:	ff 75 08             	pushl  0x8(%ebp)
    1704:	e8 97 fc ff ff       	call   13a0 <redircmd>
      break;
    1709:	83 c4 20             	add    $0x20,%esp
      cmd = redircmd(cmd, q, eq, O_WRONLY|O_CREATE, 1);
    170c:	89 45 08             	mov    %eax,0x8(%ebp)
      break;
    170f:	eb 97                	jmp    16a8 <parseredirs+0x18>
    1711:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      cmd = redircmd(cmd, q, eq, O_RDONLY, 0);
    1718:	83 ec 0c             	sub    $0xc,%esp
    171b:	6a 00                	push   $0x0
    171d:	6a 00                	push   $0x0
    171f:	eb da                	jmp    16fb <parseredirs+0x6b>
    1721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    }
  }
  return cmd;
}
    1728:	8b 45 08             	mov    0x8(%ebp),%eax
    172b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    172e:	5b                   	pop    %ebx
    172f:	5e                   	pop    %esi
    1730:	5f                   	pop    %edi
    1731:	5d                   	pop    %ebp
    1732:	c3                   	ret    
      panic("missing file for redirection");
    1733:	83 ec 0c             	sub    $0xc,%esp
    1736:	68 6c 23 00 00       	push   $0x236c
    173b:	e8 20 fa ff ff       	call   1160 <panic>

00001740 <parseexec>:
  return cmd;
}

struct cmd*
parseexec(char **ps, char *es)
{
    1740:	f3 0f 1e fb          	endbr32 
    1744:	55                   	push   %ebp
    1745:	89 e5                	mov    %esp,%ebp
    1747:	57                   	push   %edi
    1748:	56                   	push   %esi
    1749:	53                   	push   %ebx
    174a:	83 ec 30             	sub    $0x30,%esp
    174d:	8b 75 08             	mov    0x8(%ebp),%esi
    1750:	8b 7d 0c             	mov    0xc(%ebp),%edi
  char *q, *eq;
  int tok, argc;
  struct execcmd *cmd;
  struct cmd *ret;

  if(peek(ps, es, "("))
    1753:	68 8c 23 00 00       	push   $0x238c
    1758:	57                   	push   %edi
    1759:	56                   	push   %esi
    175a:	e8 b1 fe ff ff       	call   1610 <peek>
    175f:	83 c4 10             	add    $0x10,%esp
    1762:	85 c0                	test   %eax,%eax
    1764:	0f 85 96 00 00 00    	jne    1800 <parseexec+0xc0>
    176a:	89 c3                	mov    %eax,%ebx
    return parseblock(ps, es);

  ret = execcmd();
    176c:	e8 ff fb ff ff       	call   1370 <execcmd>
  cmd = (struct execcmd*)ret;

  argc = 0;
  ret = parseredirs(ret, ps, es);
    1771:	83 ec 04             	sub    $0x4,%esp
    1774:	57                   	push   %edi
    1775:	56                   	push   %esi
    1776:	50                   	push   %eax
  ret = execcmd();
    1777:	89 45 d0             	mov    %eax,-0x30(%ebp)
  ret = parseredirs(ret, ps, es);
    177a:	e8 11 ff ff ff       	call   1690 <parseredirs>
  while(!peek(ps, es, "|)&;")){
    177f:	83 c4 10             	add    $0x10,%esp
  ret = parseredirs(ret, ps, es);
    1782:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
    1785:	eb 1c                	jmp    17a3 <parseexec+0x63>
    1787:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    178e:	66 90                	xchg   %ax,%ax
    cmd->argv[argc] = q;
    cmd->eargv[argc] = eq;
    argc++;
    if(argc >= MAXARGS)
      panic("too many args");
    ret = parseredirs(ret, ps, es);
    1790:	83 ec 04             	sub    $0x4,%esp
    1793:	57                   	push   %edi
    1794:	56                   	push   %esi
    1795:	ff 75 d4             	pushl  -0x2c(%ebp)
    1798:	e8 f3 fe ff ff       	call   1690 <parseredirs>
    179d:	83 c4 10             	add    $0x10,%esp
    17a0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  while(!peek(ps, es, "|)&;")){
    17a3:	83 ec 04             	sub    $0x4,%esp
    17a6:	68 a3 23 00 00       	push   $0x23a3
    17ab:	57                   	push   %edi
    17ac:	56                   	push   %esi
    17ad:	e8 5e fe ff ff       	call   1610 <peek>
    17b2:	83 c4 10             	add    $0x10,%esp
    17b5:	85 c0                	test   %eax,%eax
    17b7:	75 67                	jne    1820 <parseexec+0xe0>
    if((tok=gettoken(ps, es, &q, &eq)) == 0)
    17b9:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    17bc:	50                   	push   %eax
    17bd:	8d 45 e0             	lea    -0x20(%ebp),%eax
    17c0:	50                   	push   %eax
    17c1:	57                   	push   %edi
    17c2:	56                   	push   %esi
    17c3:	e8 e8 fc ff ff       	call   14b0 <gettoken>
    17c8:	83 c4 10             	add    $0x10,%esp
    17cb:	85 c0                	test   %eax,%eax
    17cd:	74 51                	je     1820 <parseexec+0xe0>
    if(tok != 'a')
    17cf:	83 f8 61             	cmp    $0x61,%eax
    17d2:	75 6b                	jne    183f <parseexec+0xff>
    cmd->argv[argc] = q;
    17d4:	8b 45 e0             	mov    -0x20(%ebp),%eax
    17d7:	8b 55 d0             	mov    -0x30(%ebp),%edx
    17da:	89 44 9a 04          	mov    %eax,0x4(%edx,%ebx,4)
    cmd->eargv[argc] = eq;
    17de:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    17e1:	89 44 9a 2c          	mov    %eax,0x2c(%edx,%ebx,4)
    argc++;
    17e5:	83 c3 01             	add    $0x1,%ebx
    if(argc >= MAXARGS)
    17e8:	83 fb 0a             	cmp    $0xa,%ebx
    17eb:	75 a3                	jne    1790 <parseexec+0x50>
      panic("too many args");
    17ed:	83 ec 0c             	sub    $0xc,%esp
    17f0:	68 95 23 00 00       	push   $0x2395
    17f5:	e8 66 f9 ff ff       	call   1160 <panic>
    17fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    return parseblock(ps, es);
    1800:	83 ec 08             	sub    $0x8,%esp
    1803:	57                   	push   %edi
    1804:	56                   	push   %esi
    1805:	e8 66 01 00 00       	call   1970 <parseblock>
    180a:	83 c4 10             	add    $0x10,%esp
    180d:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  }
  cmd->argv[argc] = 0;
  cmd->eargv[argc] = 0;
  return ret;
}
    1810:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1813:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1816:	5b                   	pop    %ebx
    1817:	5e                   	pop    %esi
    1818:	5f                   	pop    %edi
    1819:	5d                   	pop    %ebp
    181a:	c3                   	ret    
    181b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    181f:	90                   	nop
  cmd->argv[argc] = 0;
    1820:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1823:	8d 04 98             	lea    (%eax,%ebx,4),%eax
    1826:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
  cmd->eargv[argc] = 0;
    182d:	c7 40 2c 00 00 00 00 	movl   $0x0,0x2c(%eax)
}
    1834:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    1837:	8d 65 f4             	lea    -0xc(%ebp),%esp
    183a:	5b                   	pop    %ebx
    183b:	5e                   	pop    %esi
    183c:	5f                   	pop    %edi
    183d:	5d                   	pop    %ebp
    183e:	c3                   	ret    
      panic("syntax");
    183f:	83 ec 0c             	sub    $0xc,%esp
    1842:	68 8e 23 00 00       	push   $0x238e
    1847:	e8 14 f9 ff ff       	call   1160 <panic>
    184c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001850 <parsepipe>:
{
    1850:	f3 0f 1e fb          	endbr32 
    1854:	55                   	push   %ebp
    1855:	89 e5                	mov    %esp,%ebp
    1857:	57                   	push   %edi
    1858:	56                   	push   %esi
    1859:	53                   	push   %ebx
    185a:	83 ec 14             	sub    $0x14,%esp
    185d:	8b 75 08             	mov    0x8(%ebp),%esi
    1860:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parseexec(ps, es);
    1863:	57                   	push   %edi
    1864:	56                   	push   %esi
    1865:	e8 d6 fe ff ff       	call   1740 <parseexec>
  if(peek(ps, es, "|")){
    186a:	83 c4 0c             	add    $0xc,%esp
    186d:	68 a8 23 00 00       	push   $0x23a8
  cmd = parseexec(ps, es);
    1872:	89 c3                	mov    %eax,%ebx
  if(peek(ps, es, "|")){
    1874:	57                   	push   %edi
    1875:	56                   	push   %esi
    1876:	e8 95 fd ff ff       	call   1610 <peek>
    187b:	83 c4 10             	add    $0x10,%esp
    187e:	85 c0                	test   %eax,%eax
    1880:	75 0e                	jne    1890 <parsepipe+0x40>
}
    1882:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1885:	89 d8                	mov    %ebx,%eax
    1887:	5b                   	pop    %ebx
    1888:	5e                   	pop    %esi
    1889:	5f                   	pop    %edi
    188a:	5d                   	pop    %ebp
    188b:	c3                   	ret    
    188c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    gettoken(ps, es, 0, 0);
    1890:	6a 00                	push   $0x0
    1892:	6a 00                	push   $0x0
    1894:	57                   	push   %edi
    1895:	56                   	push   %esi
    1896:	e8 15 fc ff ff       	call   14b0 <gettoken>
    cmd = pipecmd(cmd, parsepipe(ps, es));
    189b:	58                   	pop    %eax
    189c:	5a                   	pop    %edx
    189d:	57                   	push   %edi
    189e:	56                   	push   %esi
    189f:	e8 ac ff ff ff       	call   1850 <parsepipe>
    18a4:	89 5d 08             	mov    %ebx,0x8(%ebp)
    18a7:	83 c4 10             	add    $0x10,%esp
    18aa:	89 45 0c             	mov    %eax,0xc(%ebp)
}
    18ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
    18b0:	5b                   	pop    %ebx
    18b1:	5e                   	pop    %esi
    18b2:	5f                   	pop    %edi
    18b3:	5d                   	pop    %ebp
    cmd = pipecmd(cmd, parsepipe(ps, es));
    18b4:	e9 37 fb ff ff       	jmp    13f0 <pipecmd>
    18b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000018c0 <parseline>:
{
    18c0:	f3 0f 1e fb          	endbr32 
    18c4:	55                   	push   %ebp
    18c5:	89 e5                	mov    %esp,%ebp
    18c7:	57                   	push   %edi
    18c8:	56                   	push   %esi
    18c9:	53                   	push   %ebx
    18ca:	83 ec 14             	sub    $0x14,%esp
    18cd:	8b 75 08             	mov    0x8(%ebp),%esi
    18d0:	8b 7d 0c             	mov    0xc(%ebp),%edi
  cmd = parsepipe(ps, es);
    18d3:	57                   	push   %edi
    18d4:	56                   	push   %esi
    18d5:	e8 76 ff ff ff       	call   1850 <parsepipe>
  while(peek(ps, es, "&")){
    18da:	83 c4 10             	add    $0x10,%esp
  cmd = parsepipe(ps, es);
    18dd:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
    18df:	eb 1f                	jmp    1900 <parseline+0x40>
    18e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    gettoken(ps, es, 0, 0);
    18e8:	6a 00                	push   $0x0
    18ea:	6a 00                	push   $0x0
    18ec:	57                   	push   %edi
    18ed:	56                   	push   %esi
    18ee:	e8 bd fb ff ff       	call   14b0 <gettoken>
    cmd = backcmd(cmd);
    18f3:	89 1c 24             	mov    %ebx,(%esp)
    18f6:	e8 75 fb ff ff       	call   1470 <backcmd>
    18fb:	83 c4 10             	add    $0x10,%esp
    18fe:	89 c3                	mov    %eax,%ebx
  while(peek(ps, es, "&")){
    1900:	83 ec 04             	sub    $0x4,%esp
    1903:	68 aa 23 00 00       	push   $0x23aa
    1908:	57                   	push   %edi
    1909:	56                   	push   %esi
    190a:	e8 01 fd ff ff       	call   1610 <peek>
    190f:	83 c4 10             	add    $0x10,%esp
    1912:	85 c0                	test   %eax,%eax
    1914:	75 d2                	jne    18e8 <parseline+0x28>
  if(peek(ps, es, ";")){
    1916:	83 ec 04             	sub    $0x4,%esp
    1919:	68 a6 23 00 00       	push   $0x23a6
    191e:	57                   	push   %edi
    191f:	56                   	push   %esi
    1920:	e8 eb fc ff ff       	call   1610 <peek>
    1925:	83 c4 10             	add    $0x10,%esp
    1928:	85 c0                	test   %eax,%eax
    192a:	75 14                	jne    1940 <parseline+0x80>
}
    192c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    192f:	89 d8                	mov    %ebx,%eax
    1931:	5b                   	pop    %ebx
    1932:	5e                   	pop    %esi
    1933:	5f                   	pop    %edi
    1934:	5d                   	pop    %ebp
    1935:	c3                   	ret    
    1936:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    193d:	8d 76 00             	lea    0x0(%esi),%esi
    gettoken(ps, es, 0, 0);
    1940:	6a 00                	push   $0x0
    1942:	6a 00                	push   $0x0
    1944:	57                   	push   %edi
    1945:	56                   	push   %esi
    1946:	e8 65 fb ff ff       	call   14b0 <gettoken>
    cmd = listcmd(cmd, parseline(ps, es));
    194b:	58                   	pop    %eax
    194c:	5a                   	pop    %edx
    194d:	57                   	push   %edi
    194e:	56                   	push   %esi
    194f:	e8 6c ff ff ff       	call   18c0 <parseline>
    1954:	89 5d 08             	mov    %ebx,0x8(%ebp)
    1957:	83 c4 10             	add    $0x10,%esp
    195a:	89 45 0c             	mov    %eax,0xc(%ebp)
}
    195d:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1960:	5b                   	pop    %ebx
    1961:	5e                   	pop    %esi
    1962:	5f                   	pop    %edi
    1963:	5d                   	pop    %ebp
    cmd = listcmd(cmd, parseline(ps, es));
    1964:	e9 c7 fa ff ff       	jmp    1430 <listcmd>
    1969:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001970 <parseblock>:
{
    1970:	f3 0f 1e fb          	endbr32 
    1974:	55                   	push   %ebp
    1975:	89 e5                	mov    %esp,%ebp
    1977:	57                   	push   %edi
    1978:	56                   	push   %esi
    1979:	53                   	push   %ebx
    197a:	83 ec 10             	sub    $0x10,%esp
    197d:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1980:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(!peek(ps, es, "("))
    1983:	68 8c 23 00 00       	push   $0x238c
    1988:	56                   	push   %esi
    1989:	53                   	push   %ebx
    198a:	e8 81 fc ff ff       	call   1610 <peek>
    198f:	83 c4 10             	add    $0x10,%esp
    1992:	85 c0                	test   %eax,%eax
    1994:	74 4a                	je     19e0 <parseblock+0x70>
  gettoken(ps, es, 0, 0);
    1996:	6a 00                	push   $0x0
    1998:	6a 00                	push   $0x0
    199a:	56                   	push   %esi
    199b:	53                   	push   %ebx
    199c:	e8 0f fb ff ff       	call   14b0 <gettoken>
  cmd = parseline(ps, es);
    19a1:	58                   	pop    %eax
    19a2:	5a                   	pop    %edx
    19a3:	56                   	push   %esi
    19a4:	53                   	push   %ebx
    19a5:	e8 16 ff ff ff       	call   18c0 <parseline>
  if(!peek(ps, es, ")"))
    19aa:	83 c4 0c             	add    $0xc,%esp
    19ad:	68 c8 23 00 00       	push   $0x23c8
  cmd = parseline(ps, es);
    19b2:	89 c7                	mov    %eax,%edi
  if(!peek(ps, es, ")"))
    19b4:	56                   	push   %esi
    19b5:	53                   	push   %ebx
    19b6:	e8 55 fc ff ff       	call   1610 <peek>
    19bb:	83 c4 10             	add    $0x10,%esp
    19be:	85 c0                	test   %eax,%eax
    19c0:	74 2b                	je     19ed <parseblock+0x7d>
  gettoken(ps, es, 0, 0);
    19c2:	6a 00                	push   $0x0
    19c4:	6a 00                	push   $0x0
    19c6:	56                   	push   %esi
    19c7:	53                   	push   %ebx
    19c8:	e8 e3 fa ff ff       	call   14b0 <gettoken>
  cmd = parseredirs(cmd, ps, es);
    19cd:	83 c4 0c             	add    $0xc,%esp
    19d0:	56                   	push   %esi
    19d1:	53                   	push   %ebx
    19d2:	57                   	push   %edi
    19d3:	e8 b8 fc ff ff       	call   1690 <parseredirs>
}
    19d8:	8d 65 f4             	lea    -0xc(%ebp),%esp
    19db:	5b                   	pop    %ebx
    19dc:	5e                   	pop    %esi
    19dd:	5f                   	pop    %edi
    19de:	5d                   	pop    %ebp
    19df:	c3                   	ret    
    panic("parseblock");
    19e0:	83 ec 0c             	sub    $0xc,%esp
    19e3:	68 ac 23 00 00       	push   $0x23ac
    19e8:	e8 73 f7 ff ff       	call   1160 <panic>
    panic("syntax - missing )");
    19ed:	83 ec 0c             	sub    $0xc,%esp
    19f0:	68 b7 23 00 00       	push   $0x23b7
    19f5:	e8 66 f7 ff ff       	call   1160 <panic>
    19fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001a00 <nulterminate>:

// NUL-terminate all the counted strings.
struct cmd*
nulterminate(struct cmd *cmd)
{
    1a00:	f3 0f 1e fb          	endbr32 
    1a04:	55                   	push   %ebp
    1a05:	89 e5                	mov    %esp,%ebp
    1a07:	53                   	push   %ebx
    1a08:	83 ec 04             	sub    $0x4,%esp
    1a0b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  struct execcmd *ecmd;
  struct listcmd *lcmd;
  struct pipecmd *pcmd;
  struct redircmd *rcmd;

  if(cmd == 0)
    1a0e:	85 db                	test   %ebx,%ebx
    1a10:	0f 84 9a 00 00 00    	je     1ab0 <nulterminate+0xb0>
    return 0;

  switch(cmd->type){
    1a16:	83 3b 05             	cmpl   $0x5,(%ebx)
    1a19:	77 6d                	ja     1a88 <nulterminate+0x88>
    1a1b:	8b 03                	mov    (%ebx),%eax
    1a1d:	3e ff 24 85 08 24 00 	notrack jmp *0x2408(,%eax,4)
    1a24:	00 
    1a25:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(pcmd->right);
    break;

  case LIST:
    lcmd = (struct listcmd*)cmd;
    nulterminate(lcmd->left);
    1a28:	83 ec 0c             	sub    $0xc,%esp
    1a2b:	ff 73 04             	pushl  0x4(%ebx)
    1a2e:	e8 cd ff ff ff       	call   1a00 <nulterminate>
    nulterminate(lcmd->right);
    1a33:	58                   	pop    %eax
    1a34:	ff 73 08             	pushl  0x8(%ebx)
    1a37:	e8 c4 ff ff ff       	call   1a00 <nulterminate>
    break;
    1a3c:	83 c4 10             	add    $0x10,%esp
    1a3f:	89 d8                	mov    %ebx,%eax
    bcmd = (struct backcmd*)cmd;
    nulterminate(bcmd->cmd);
    break;
  }
  return cmd;
}
    1a41:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1a44:	c9                   	leave  
    1a45:	c3                   	ret    
    1a46:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1a4d:	8d 76 00             	lea    0x0(%esi),%esi
    nulterminate(bcmd->cmd);
    1a50:	83 ec 0c             	sub    $0xc,%esp
    1a53:	ff 73 04             	pushl  0x4(%ebx)
    1a56:	e8 a5 ff ff ff       	call   1a00 <nulterminate>
    break;
    1a5b:	89 d8                	mov    %ebx,%eax
    1a5d:	83 c4 10             	add    $0x10,%esp
}
    1a60:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1a63:	c9                   	leave  
    1a64:	c3                   	ret    
    1a65:	8d 76 00             	lea    0x0(%esi),%esi
    for(i=0; ecmd->argv[i]; i++)
    1a68:	8b 4b 04             	mov    0x4(%ebx),%ecx
    1a6b:	8d 43 08             	lea    0x8(%ebx),%eax
    1a6e:	85 c9                	test   %ecx,%ecx
    1a70:	74 16                	je     1a88 <nulterminate+0x88>
    1a72:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *ecmd->eargv[i] = 0;
    1a78:	8b 50 24             	mov    0x24(%eax),%edx
    1a7b:	83 c0 04             	add    $0x4,%eax
    1a7e:	c6 02 00             	movb   $0x0,(%edx)
    for(i=0; ecmd->argv[i]; i++)
    1a81:	8b 50 fc             	mov    -0x4(%eax),%edx
    1a84:	85 d2                	test   %edx,%edx
    1a86:	75 f0                	jne    1a78 <nulterminate+0x78>
  switch(cmd->type){
    1a88:	89 d8                	mov    %ebx,%eax
}
    1a8a:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1a8d:	c9                   	leave  
    1a8e:	c3                   	ret    
    1a8f:	90                   	nop
    nulterminate(rcmd->cmd);
    1a90:	83 ec 0c             	sub    $0xc,%esp
    1a93:	ff 73 04             	pushl  0x4(%ebx)
    1a96:	e8 65 ff ff ff       	call   1a00 <nulterminate>
    *rcmd->efile = 0;
    1a9b:	8b 43 0c             	mov    0xc(%ebx),%eax
    break;
    1a9e:	83 c4 10             	add    $0x10,%esp
    *rcmd->efile = 0;
    1aa1:	c6 00 00             	movb   $0x0,(%eax)
    break;
    1aa4:	89 d8                	mov    %ebx,%eax
}
    1aa6:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    1aa9:	c9                   	leave  
    1aaa:	c3                   	ret    
    1aab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1aaf:	90                   	nop
    return 0;
    1ab0:	31 c0                	xor    %eax,%eax
    1ab2:	eb 8d                	jmp    1a41 <nulterminate+0x41>
    1ab4:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1abb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1abf:	90                   	nop

00001ac0 <parsecmd>:
{
    1ac0:	f3 0f 1e fb          	endbr32 
    1ac4:	55                   	push   %ebp
    1ac5:	89 e5                	mov    %esp,%ebp
    1ac7:	56                   	push   %esi
    1ac8:	53                   	push   %ebx
  es = s + strlen(s);
    1ac9:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1acc:	83 ec 0c             	sub    $0xc,%esp
    1acf:	53                   	push   %ebx
    1ad0:	e8 db 00 00 00       	call   1bb0 <strlen>
  cmd = parseline(&s, es);
    1ad5:	59                   	pop    %ecx
    1ad6:	5e                   	pop    %esi
  es = s + strlen(s);
    1ad7:	01 c3                	add    %eax,%ebx
  cmd = parseline(&s, es);
    1ad9:	8d 45 08             	lea    0x8(%ebp),%eax
    1adc:	53                   	push   %ebx
    1add:	50                   	push   %eax
    1ade:	e8 dd fd ff ff       	call   18c0 <parseline>
  peek(&s, es, "");
    1ae3:	83 c4 0c             	add    $0xc,%esp
  cmd = parseline(&s, es);
    1ae6:	89 c6                	mov    %eax,%esi
  peek(&s, es, "");
    1ae8:	8d 45 08             	lea    0x8(%ebp),%eax
    1aeb:	68 51 23 00 00       	push   $0x2351
    1af0:	53                   	push   %ebx
    1af1:	50                   	push   %eax
    1af2:	e8 19 fb ff ff       	call   1610 <peek>
  if(s != es){
    1af7:	8b 45 08             	mov    0x8(%ebp),%eax
    1afa:	83 c4 10             	add    $0x10,%esp
    1afd:	39 d8                	cmp    %ebx,%eax
    1aff:	75 12                	jne    1b13 <parsecmd+0x53>
  nulterminate(cmd);
    1b01:	83 ec 0c             	sub    $0xc,%esp
    1b04:	56                   	push   %esi
    1b05:	e8 f6 fe ff ff       	call   1a00 <nulterminate>
}
    1b0a:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1b0d:	89 f0                	mov    %esi,%eax
    1b0f:	5b                   	pop    %ebx
    1b10:	5e                   	pop    %esi
    1b11:	5d                   	pop    %ebp
    1b12:	c3                   	ret    
    printf(2, "leftovers: %s\n", s);
    1b13:	52                   	push   %edx
    1b14:	50                   	push   %eax
    1b15:	68 ca 23 00 00       	push   $0x23ca
    1b1a:	6a 02                	push   $0x2
    1b1c:	e8 4f 06 00 00       	call   2170 <printf>
    panic("syntax");
    1b21:	c7 04 24 8e 23 00 00 	movl   $0x238e,(%esp)
    1b28:	e8 33 f6 ff ff       	call   1160 <panic>
    1b2d:	66 90                	xchg   %ax,%ax
    1b2f:	90                   	nop

00001b30 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1b30:	f3 0f 1e fb          	endbr32 
    1b34:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1b35:	31 c0                	xor    %eax,%eax
{
    1b37:	89 e5                	mov    %esp,%ebp
    1b39:	53                   	push   %ebx
    1b3a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    1b3d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1b40:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1b44:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1b47:	83 c0 01             	add    $0x1,%eax
    1b4a:	84 d2                	test   %dl,%dl
    1b4c:	75 f2                	jne    1b40 <strcpy+0x10>
    ;
  return os;
}
    1b4e:	89 c8                	mov    %ecx,%eax
    1b50:	5b                   	pop    %ebx
    1b51:	5d                   	pop    %ebp
    1b52:	c3                   	ret    
    1b53:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1b5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001b60 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1b60:	f3 0f 1e fb          	endbr32 
    1b64:	55                   	push   %ebp
    1b65:	89 e5                	mov    %esp,%ebp
    1b67:	53                   	push   %ebx
    1b68:	8b 4d 08             	mov    0x8(%ebp),%ecx
    1b6b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    1b6e:	0f b6 01             	movzbl (%ecx),%eax
    1b71:	0f b6 1a             	movzbl (%edx),%ebx
    1b74:	84 c0                	test   %al,%al
    1b76:	75 19                	jne    1b91 <strcmp+0x31>
    1b78:	eb 26                	jmp    1ba0 <strcmp+0x40>
    1b7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1b80:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    1b84:	83 c1 01             	add    $0x1,%ecx
    1b87:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    1b8a:	0f b6 1a             	movzbl (%edx),%ebx
    1b8d:	84 c0                	test   %al,%al
    1b8f:	74 0f                	je     1ba0 <strcmp+0x40>
    1b91:	38 d8                	cmp    %bl,%al
    1b93:	74 eb                	je     1b80 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1b95:	29 d8                	sub    %ebx,%eax
}
    1b97:	5b                   	pop    %ebx
    1b98:	5d                   	pop    %ebp
    1b99:	c3                   	ret    
    1b9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1ba0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1ba2:	29 d8                	sub    %ebx,%eax
}
    1ba4:	5b                   	pop    %ebx
    1ba5:	5d                   	pop    %ebp
    1ba6:	c3                   	ret    
    1ba7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1bae:	66 90                	xchg   %ax,%ax

00001bb0 <strlen>:

uint
strlen(const char *s)
{
    1bb0:	f3 0f 1e fb          	endbr32 
    1bb4:	55                   	push   %ebp
    1bb5:	89 e5                	mov    %esp,%ebp
    1bb7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    1bba:	80 3a 00             	cmpb   $0x0,(%edx)
    1bbd:	74 21                	je     1be0 <strlen+0x30>
    1bbf:	31 c0                	xor    %eax,%eax
    1bc1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1bc8:	83 c0 01             	add    $0x1,%eax
    1bcb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    1bcf:	89 c1                	mov    %eax,%ecx
    1bd1:	75 f5                	jne    1bc8 <strlen+0x18>
    ;
  return n;
}
    1bd3:	89 c8                	mov    %ecx,%eax
    1bd5:	5d                   	pop    %ebp
    1bd6:	c3                   	ret    
    1bd7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1bde:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1be0:	31 c9                	xor    %ecx,%ecx
}
    1be2:	5d                   	pop    %ebp
    1be3:	89 c8                	mov    %ecx,%eax
    1be5:	c3                   	ret    
    1be6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1bed:	8d 76 00             	lea    0x0(%esi),%esi

00001bf0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1bf0:	f3 0f 1e fb          	endbr32 
    1bf4:	55                   	push   %ebp
    1bf5:	89 e5                	mov    %esp,%ebp
    1bf7:	57                   	push   %edi
    1bf8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    1bfb:	8b 4d 10             	mov    0x10(%ebp),%ecx
    1bfe:	8b 45 0c             	mov    0xc(%ebp),%eax
    1c01:	89 d7                	mov    %edx,%edi
    1c03:	fc                   	cld    
    1c04:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1c06:	89 d0                	mov    %edx,%eax
    1c08:	5f                   	pop    %edi
    1c09:	5d                   	pop    %ebp
    1c0a:	c3                   	ret    
    1c0b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1c0f:	90                   	nop

00001c10 <strchr>:

char*
strchr(const char *s, char c)
{
    1c10:	f3 0f 1e fb          	endbr32 
    1c14:	55                   	push   %ebp
    1c15:	89 e5                	mov    %esp,%ebp
    1c17:	8b 45 08             	mov    0x8(%ebp),%eax
    1c1a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    1c1e:	0f b6 10             	movzbl (%eax),%edx
    1c21:	84 d2                	test   %dl,%dl
    1c23:	75 16                	jne    1c3b <strchr+0x2b>
    1c25:	eb 21                	jmp    1c48 <strchr+0x38>
    1c27:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1c2e:	66 90                	xchg   %ax,%ax
    1c30:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1c34:	83 c0 01             	add    $0x1,%eax
    1c37:	84 d2                	test   %dl,%dl
    1c39:	74 0d                	je     1c48 <strchr+0x38>
    if(*s == c)
    1c3b:	38 d1                	cmp    %dl,%cl
    1c3d:	75 f1                	jne    1c30 <strchr+0x20>
      return (char*)s;
  return 0;
}
    1c3f:	5d                   	pop    %ebp
    1c40:	c3                   	ret    
    1c41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1c48:	31 c0                	xor    %eax,%eax
}
    1c4a:	5d                   	pop    %ebp
    1c4b:	c3                   	ret    
    1c4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001c50 <gets>:

char*
gets(char *buf, int max)
{
    1c50:	f3 0f 1e fb          	endbr32 
    1c54:	55                   	push   %ebp
    1c55:	89 e5                	mov    %esp,%ebp
    1c57:	57                   	push   %edi
    1c58:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1c59:	31 f6                	xor    %esi,%esi
{
    1c5b:	53                   	push   %ebx
    1c5c:	89 f3                	mov    %esi,%ebx
    1c5e:	83 ec 1c             	sub    $0x1c,%esp
    1c61:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1c64:	eb 33                	jmp    1c99 <gets+0x49>
    1c66:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1c6d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1c70:	83 ec 04             	sub    $0x4,%esp
    1c73:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1c76:	6a 01                	push   $0x1
    1c78:	50                   	push   %eax
    1c79:	6a 00                	push   $0x0
    1c7b:	e8 75 03 00 00       	call   1ff5 <read>
    if(cc < 1)
    1c80:	83 c4 10             	add    $0x10,%esp
    1c83:	85 c0                	test   %eax,%eax
    1c85:	7e 1c                	jle    1ca3 <gets+0x53>
      break;
    buf[i++] = c;
    1c87:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1c8b:	83 c7 01             	add    $0x1,%edi
    1c8e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1c91:	3c 0a                	cmp    $0xa,%al
    1c93:	74 23                	je     1cb8 <gets+0x68>
    1c95:	3c 0d                	cmp    $0xd,%al
    1c97:	74 1f                	je     1cb8 <gets+0x68>
  for(i=0; i+1 < max; ){
    1c99:	83 c3 01             	add    $0x1,%ebx
    1c9c:	89 fe                	mov    %edi,%esi
    1c9e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1ca1:	7c cd                	jl     1c70 <gets+0x20>
    1ca3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    1ca5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1ca8:	c6 03 00             	movb   $0x0,(%ebx)
}
    1cab:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1cae:	5b                   	pop    %ebx
    1caf:	5e                   	pop    %esi
    1cb0:	5f                   	pop    %edi
    1cb1:	5d                   	pop    %ebp
    1cb2:	c3                   	ret    
    1cb3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1cb7:	90                   	nop
    1cb8:	8b 75 08             	mov    0x8(%ebp),%esi
    1cbb:	8b 45 08             	mov    0x8(%ebp),%eax
    1cbe:	01 de                	add    %ebx,%esi
    1cc0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    1cc2:	c6 03 00             	movb   $0x0,(%ebx)
}
    1cc5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1cc8:	5b                   	pop    %ebx
    1cc9:	5e                   	pop    %esi
    1cca:	5f                   	pop    %edi
    1ccb:	5d                   	pop    %ebp
    1ccc:	c3                   	ret    
    1ccd:	8d 76 00             	lea    0x0(%esi),%esi

00001cd0 <stat>:

int
stat(const char *n, struct stat *st)
{
    1cd0:	f3 0f 1e fb          	endbr32 
    1cd4:	55                   	push   %ebp
    1cd5:	89 e5                	mov    %esp,%ebp
    1cd7:	56                   	push   %esi
    1cd8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1cd9:	83 ec 08             	sub    $0x8,%esp
    1cdc:	6a 00                	push   $0x0
    1cde:	ff 75 08             	pushl  0x8(%ebp)
    1ce1:	e8 37 03 00 00       	call   201d <open>
  if(fd < 0)
    1ce6:	83 c4 10             	add    $0x10,%esp
    1ce9:	85 c0                	test   %eax,%eax
    1ceb:	78 2b                	js     1d18 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    1ced:	83 ec 08             	sub    $0x8,%esp
    1cf0:	ff 75 0c             	pushl  0xc(%ebp)
    1cf3:	89 c3                	mov    %eax,%ebx
    1cf5:	50                   	push   %eax
    1cf6:	e8 3a 03 00 00       	call   2035 <fstat>
  close(fd);
    1cfb:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    1cfe:	89 c6                	mov    %eax,%esi
  close(fd);
    1d00:	e8 00 03 00 00       	call   2005 <close>
  return r;
    1d05:	83 c4 10             	add    $0x10,%esp
}
    1d08:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1d0b:	89 f0                	mov    %esi,%eax
    1d0d:	5b                   	pop    %ebx
    1d0e:	5e                   	pop    %esi
    1d0f:	5d                   	pop    %ebp
    1d10:	c3                   	ret    
    1d11:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1d18:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1d1d:	eb e9                	jmp    1d08 <stat+0x38>
    1d1f:	90                   	nop

00001d20 <atoi>:

int
atoi(const char *s)
{
    1d20:	f3 0f 1e fb          	endbr32 
    1d24:	55                   	push   %ebp
    1d25:	89 e5                	mov    %esp,%ebp
    1d27:	53                   	push   %ebx
    1d28:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1d2b:	0f be 02             	movsbl (%edx),%eax
    1d2e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1d31:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1d34:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1d39:	77 1a                	ja     1d55 <atoi+0x35>
    1d3b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1d3f:	90                   	nop
    n = n*10 + *s++ - '0';
    1d40:	83 c2 01             	add    $0x1,%edx
    1d43:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1d46:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    1d4a:	0f be 02             	movsbl (%edx),%eax
    1d4d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1d50:	80 fb 09             	cmp    $0x9,%bl
    1d53:	76 eb                	jbe    1d40 <atoi+0x20>
  return n;
}
    1d55:	89 c8                	mov    %ecx,%eax
    1d57:	5b                   	pop    %ebx
    1d58:	5d                   	pop    %ebp
    1d59:	c3                   	ret    
    1d5a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001d60 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1d60:	f3 0f 1e fb          	endbr32 
    1d64:	55                   	push   %ebp
    1d65:	89 e5                	mov    %esp,%ebp
    1d67:	57                   	push   %edi
    1d68:	8b 45 10             	mov    0x10(%ebp),%eax
    1d6b:	8b 55 08             	mov    0x8(%ebp),%edx
    1d6e:	56                   	push   %esi
    1d6f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1d72:	85 c0                	test   %eax,%eax
    1d74:	7e 0f                	jle    1d85 <memmove+0x25>
    1d76:	01 d0                	add    %edx,%eax
  dst = vdst;
    1d78:	89 d7                	mov    %edx,%edi
    1d7a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    1d80:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    1d81:	39 f8                	cmp    %edi,%eax
    1d83:	75 fb                	jne    1d80 <memmove+0x20>
  return vdst;
}
    1d85:	5e                   	pop    %esi
    1d86:	89 d0                	mov    %edx,%eax
    1d88:	5f                   	pop    %edi
    1d89:	5d                   	pop    %ebp
    1d8a:	c3                   	ret    
    1d8b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1d8f:	90                   	nop

00001d90 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    1d90:	f3 0f 1e fb          	endbr32 
    1d94:	55                   	push   %ebp
    1d95:	89 e5                	mov    %esp,%ebp
    1d97:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    1d9a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    1d9d:	50                   	push   %eax
    1d9e:	e8 0a 03 00 00       	call   20ad <join>
  
  return x;
}
    1da3:	c9                   	leave  
    1da4:	c3                   	ret    
    1da5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1dac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001db0 <lock_init>:

void lock_init(struct lock_t *lk){
    1db0:	f3 0f 1e fb          	endbr32 
    1db4:	55                   	push   %ebp
    1db5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    1db7:	8b 45 08             	mov    0x8(%ebp),%eax
    1dba:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1dc0:	5d                   	pop    %ebp
    1dc1:	c3                   	ret    
    1dc2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1dc9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001dd0 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    1dd0:	f3 0f 1e fb          	endbr32 
    1dd4:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1dd5:	b9 01 00 00 00       	mov    $0x1,%ecx
    1dda:	89 e5                	mov    %esp,%ebp
    1ddc:	8b 55 08             	mov    0x8(%ebp),%edx
    1ddf:	90                   	nop
    1de0:	89 c8                	mov    %ecx,%eax
    1de2:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1de5:	85 c0                	test   %eax,%eax
    1de7:	75 f7                	jne    1de0 <lock_acquire+0x10>
}
    1de9:	5d                   	pop    %ebp
    1dea:	c3                   	ret    
    1deb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1def:	90                   	nop

00001df0 <lock_release>:
void lock_release(struct lock_t *lk){
    1df0:	f3 0f 1e fb          	endbr32 
    1df4:	55                   	push   %ebp
    1df5:	31 c0                	xor    %eax,%eax
    1df7:	89 e5                	mov    %esp,%ebp
    1df9:	8b 55 08             	mov    0x8(%ebp),%edx
    1dfc:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    1dff:	5d                   	pop    %ebp
    1e00:	c3                   	ret    
    1e01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1e08:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1e0f:	90                   	nop

00001e10 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1e10:	f3 0f 1e fb          	endbr32 
    1e14:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1e15:	a1 24 2b 00 00       	mov    0x2b24,%eax
{
    1e1a:	89 e5                	mov    %esp,%ebp
    1e1c:	57                   	push   %edi
    1e1d:	56                   	push   %esi
    1e1e:	53                   	push   %ebx
    1e1f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1e22:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1e24:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1e27:	39 c8                	cmp    %ecx,%eax
    1e29:	73 15                	jae    1e40 <free+0x30>
    1e2b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1e2f:	90                   	nop
    1e30:	39 d1                	cmp    %edx,%ecx
    1e32:	72 14                	jb     1e48 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1e34:	39 d0                	cmp    %edx,%eax
    1e36:	73 10                	jae    1e48 <free+0x38>
{
    1e38:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1e3a:	8b 10                	mov    (%eax),%edx
    1e3c:	39 c8                	cmp    %ecx,%eax
    1e3e:	72 f0                	jb     1e30 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1e40:	39 d0                	cmp    %edx,%eax
    1e42:	72 f4                	jb     1e38 <free+0x28>
    1e44:	39 d1                	cmp    %edx,%ecx
    1e46:	73 f0                	jae    1e38 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1e48:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1e4b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    1e4e:	39 fa                	cmp    %edi,%edx
    1e50:	74 1e                	je     1e70 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1e52:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1e55:	8b 50 04             	mov    0x4(%eax),%edx
    1e58:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1e5b:	39 f1                	cmp    %esi,%ecx
    1e5d:	74 28                	je     1e87 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    1e5f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1e61:	5b                   	pop    %ebx
  freep = p;
    1e62:	a3 24 2b 00 00       	mov    %eax,0x2b24
}
    1e67:	5e                   	pop    %esi
    1e68:	5f                   	pop    %edi
    1e69:	5d                   	pop    %ebp
    1e6a:	c3                   	ret    
    1e6b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1e6f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1e70:	03 72 04             	add    0x4(%edx),%esi
    1e73:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1e76:	8b 10                	mov    (%eax),%edx
    1e78:	8b 12                	mov    (%edx),%edx
    1e7a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1e7d:	8b 50 04             	mov    0x4(%eax),%edx
    1e80:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1e83:	39 f1                	cmp    %esi,%ecx
    1e85:	75 d8                	jne    1e5f <free+0x4f>
    p->s.size += bp->s.size;
    1e87:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    1e8a:	a3 24 2b 00 00       	mov    %eax,0x2b24
    p->s.size += bp->s.size;
    1e8f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1e92:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1e95:	89 10                	mov    %edx,(%eax)
}
    1e97:	5b                   	pop    %ebx
    1e98:	5e                   	pop    %esi
    1e99:	5f                   	pop    %edi
    1e9a:	5d                   	pop    %ebp
    1e9b:	c3                   	ret    
    1e9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001ea0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1ea0:	f3 0f 1e fb          	endbr32 
    1ea4:	55                   	push   %ebp
    1ea5:	89 e5                	mov    %esp,%ebp
    1ea7:	57                   	push   %edi
    1ea8:	56                   	push   %esi
    1ea9:	53                   	push   %ebx
    1eaa:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1ead:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1eb0:	8b 3d 24 2b 00 00    	mov    0x2b24,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1eb6:	8d 70 07             	lea    0x7(%eax),%esi
    1eb9:	c1 ee 03             	shr    $0x3,%esi
    1ebc:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    1ebf:	85 ff                	test   %edi,%edi
    1ec1:	0f 84 a9 00 00 00    	je     1f70 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1ec7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    1ec9:	8b 48 04             	mov    0x4(%eax),%ecx
    1ecc:	39 f1                	cmp    %esi,%ecx
    1ece:	73 6d                	jae    1f3d <malloc+0x9d>
    1ed0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1ed6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1edb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    1ede:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1ee5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1ee8:	eb 17                	jmp    1f01 <malloc+0x61>
    1eea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1ef0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1ef2:	8b 4a 04             	mov    0x4(%edx),%ecx
    1ef5:	39 f1                	cmp    %esi,%ecx
    1ef7:	73 4f                	jae    1f48 <malloc+0xa8>
    1ef9:	8b 3d 24 2b 00 00    	mov    0x2b24,%edi
    1eff:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1f01:	39 c7                	cmp    %eax,%edi
    1f03:	75 eb                	jne    1ef0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1f05:	83 ec 0c             	sub    $0xc,%esp
    1f08:	ff 75 e4             	pushl  -0x1c(%ebp)
    1f0b:	e8 55 01 00 00       	call   2065 <sbrk>
  if(p == (char*)-1)
    1f10:	83 c4 10             	add    $0x10,%esp
    1f13:	83 f8 ff             	cmp    $0xffffffff,%eax
    1f16:	74 1b                	je     1f33 <malloc+0x93>
  hp->s.size = nu;
    1f18:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    1f1b:	83 ec 0c             	sub    $0xc,%esp
    1f1e:	83 c0 08             	add    $0x8,%eax
    1f21:	50                   	push   %eax
    1f22:	e8 e9 fe ff ff       	call   1e10 <free>
  return freep;
    1f27:	a1 24 2b 00 00       	mov    0x2b24,%eax
      if((p = morecore(nunits)) == 0)
    1f2c:	83 c4 10             	add    $0x10,%esp
    1f2f:	85 c0                	test   %eax,%eax
    1f31:	75 bd                	jne    1ef0 <malloc+0x50>
        return 0;
  }
}
    1f33:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1f36:	31 c0                	xor    %eax,%eax
}
    1f38:	5b                   	pop    %ebx
    1f39:	5e                   	pop    %esi
    1f3a:	5f                   	pop    %edi
    1f3b:	5d                   	pop    %ebp
    1f3c:	c3                   	ret    
    if(p->s.size >= nunits){
    1f3d:	89 c2                	mov    %eax,%edx
    1f3f:	89 f8                	mov    %edi,%eax
    1f41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1f48:	39 ce                	cmp    %ecx,%esi
    1f4a:	74 54                	je     1fa0 <malloc+0x100>
        p->s.size -= nunits;
    1f4c:	29 f1                	sub    %esi,%ecx
    1f4e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1f51:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1f54:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1f57:	a3 24 2b 00 00       	mov    %eax,0x2b24
}
    1f5c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1f5f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1f62:	5b                   	pop    %ebx
    1f63:	5e                   	pop    %esi
    1f64:	5f                   	pop    %edi
    1f65:	5d                   	pop    %ebp
    1f66:	c3                   	ret    
    1f67:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1f6e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1f70:	c7 05 24 2b 00 00 28 	movl   $0x2b28,0x2b24
    1f77:	2b 00 00 
    base.s.size = 0;
    1f7a:	bf 28 2b 00 00       	mov    $0x2b28,%edi
    base.s.ptr = freep = prevp = &base;
    1f7f:	c7 05 28 2b 00 00 28 	movl   $0x2b28,0x2b28
    1f86:	2b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1f89:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    1f8b:	c7 05 2c 2b 00 00 00 	movl   $0x0,0x2b2c
    1f92:	00 00 00 
    if(p->s.size >= nunits){
    1f95:	e9 36 ff ff ff       	jmp    1ed0 <malloc+0x30>
    1f9a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1fa0:	8b 0a                	mov    (%edx),%ecx
    1fa2:	89 08                	mov    %ecx,(%eax)
    1fa4:	eb b1                	jmp    1f57 <malloc+0xb7>
    1fa6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1fad:	8d 76 00             	lea    0x0(%esi),%esi

00001fb0 <thread_create>:
{
    1fb0:	f3 0f 1e fb          	endbr32 
    1fb4:	55                   	push   %ebp
    1fb5:	89 e5                	mov    %esp,%ebp
    1fb7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    1fba:	68 00 10 00 00       	push   $0x1000
    1fbf:	e8 dc fe ff ff       	call   1ea0 <malloc>
return clone(start_routine,arg1,arg2,stack);
    1fc4:	50                   	push   %eax
    1fc5:	ff 75 10             	pushl  0x10(%ebp)
    1fc8:	ff 75 0c             	pushl  0xc(%ebp)
    1fcb:	ff 75 08             	pushl  0x8(%ebp)
    1fce:	e8 d2 00 00 00       	call   20a5 <clone>
}
    1fd3:	c9                   	leave  
    1fd4:	c3                   	ret    

00001fd5 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1fd5:	b8 01 00 00 00       	mov    $0x1,%eax
    1fda:	cd 40                	int    $0x40
    1fdc:	c3                   	ret    

00001fdd <exit>:
SYSCALL(exit)
    1fdd:	b8 02 00 00 00       	mov    $0x2,%eax
    1fe2:	cd 40                	int    $0x40
    1fe4:	c3                   	ret    

00001fe5 <wait>:
SYSCALL(wait)
    1fe5:	b8 03 00 00 00       	mov    $0x3,%eax
    1fea:	cd 40                	int    $0x40
    1fec:	c3                   	ret    

00001fed <pipe>:
SYSCALL(pipe)
    1fed:	b8 04 00 00 00       	mov    $0x4,%eax
    1ff2:	cd 40                	int    $0x40
    1ff4:	c3                   	ret    

00001ff5 <read>:
SYSCALL(read)
    1ff5:	b8 05 00 00 00       	mov    $0x5,%eax
    1ffa:	cd 40                	int    $0x40
    1ffc:	c3                   	ret    

00001ffd <write>:
SYSCALL(write)
    1ffd:	b8 10 00 00 00       	mov    $0x10,%eax
    2002:	cd 40                	int    $0x40
    2004:	c3                   	ret    

00002005 <close>:
SYSCALL(close)
    2005:	b8 15 00 00 00       	mov    $0x15,%eax
    200a:	cd 40                	int    $0x40
    200c:	c3                   	ret    

0000200d <kill>:
SYSCALL(kill)
    200d:	b8 06 00 00 00       	mov    $0x6,%eax
    2012:	cd 40                	int    $0x40
    2014:	c3                   	ret    

00002015 <exec>:
SYSCALL(exec)
    2015:	b8 07 00 00 00       	mov    $0x7,%eax
    201a:	cd 40                	int    $0x40
    201c:	c3                   	ret    

0000201d <open>:
SYSCALL(open)
    201d:	b8 0f 00 00 00       	mov    $0xf,%eax
    2022:	cd 40                	int    $0x40
    2024:	c3                   	ret    

00002025 <mknod>:
SYSCALL(mknod)
    2025:	b8 11 00 00 00       	mov    $0x11,%eax
    202a:	cd 40                	int    $0x40
    202c:	c3                   	ret    

0000202d <unlink>:
SYSCALL(unlink)
    202d:	b8 12 00 00 00       	mov    $0x12,%eax
    2032:	cd 40                	int    $0x40
    2034:	c3                   	ret    

00002035 <fstat>:
SYSCALL(fstat)
    2035:	b8 08 00 00 00       	mov    $0x8,%eax
    203a:	cd 40                	int    $0x40
    203c:	c3                   	ret    

0000203d <link>:
SYSCALL(link)
    203d:	b8 13 00 00 00       	mov    $0x13,%eax
    2042:	cd 40                	int    $0x40
    2044:	c3                   	ret    

00002045 <mkdir>:
SYSCALL(mkdir)
    2045:	b8 14 00 00 00       	mov    $0x14,%eax
    204a:	cd 40                	int    $0x40
    204c:	c3                   	ret    

0000204d <chdir>:
SYSCALL(chdir)
    204d:	b8 09 00 00 00       	mov    $0x9,%eax
    2052:	cd 40                	int    $0x40
    2054:	c3                   	ret    

00002055 <dup>:
SYSCALL(dup)
    2055:	b8 0a 00 00 00       	mov    $0xa,%eax
    205a:	cd 40                	int    $0x40
    205c:	c3                   	ret    

0000205d <getpid>:
SYSCALL(getpid)
    205d:	b8 0b 00 00 00       	mov    $0xb,%eax
    2062:	cd 40                	int    $0x40
    2064:	c3                   	ret    

00002065 <sbrk>:
SYSCALL(sbrk)
    2065:	b8 0c 00 00 00       	mov    $0xc,%eax
    206a:	cd 40                	int    $0x40
    206c:	c3                   	ret    

0000206d <sleep>:
SYSCALL(sleep)
    206d:	b8 0d 00 00 00       	mov    $0xd,%eax
    2072:	cd 40                	int    $0x40
    2074:	c3                   	ret    

00002075 <uptime>:
SYSCALL(uptime)
    2075:	b8 0e 00 00 00       	mov    $0xe,%eax
    207a:	cd 40                	int    $0x40
    207c:	c3                   	ret    

0000207d <count>:
SYSCALL(count)
    207d:	b8 16 00 00 00       	mov    $0x16,%eax
    2082:	cd 40                	int    $0x40
    2084:	c3                   	ret    

00002085 <settickets>:

SYSCALL(settickets)
    2085:	b8 17 00 00 00       	mov    $0x17,%eax
    208a:	cd 40                	int    $0x40
    208c:	c3                   	ret    

0000208d <getpinfo>:
SYSCALL(getpinfo)
    208d:	b8 18 00 00 00       	mov    $0x18,%eax
    2092:	cd 40                	int    $0x40
    2094:	c3                   	ret    

00002095 <mprotect>:

SYSCALL(mprotect)
    2095:	b8 19 00 00 00       	mov    $0x19,%eax
    209a:	cd 40                	int    $0x40
    209c:	c3                   	ret    

0000209d <munprotect>:
SYSCALL(munprotect)
    209d:	b8 1a 00 00 00       	mov    $0x1a,%eax
    20a2:	cd 40                	int    $0x40
    20a4:	c3                   	ret    

000020a5 <clone>:

SYSCALL(clone)
    20a5:	b8 1b 00 00 00       	mov    $0x1b,%eax
    20aa:	cd 40                	int    $0x40
    20ac:	c3                   	ret    

000020ad <join>:
SYSCALL(join)
    20ad:	b8 1c 00 00 00       	mov    $0x1c,%eax
    20b2:	cd 40                	int    $0x40
    20b4:	c3                   	ret    
    20b5:	66 90                	xchg   %ax,%ax
    20b7:	66 90                	xchg   %ax,%ax
    20b9:	66 90                	xchg   %ax,%ax
    20bb:	66 90                	xchg   %ax,%ax
    20bd:	66 90                	xchg   %ax,%ax
    20bf:	90                   	nop

000020c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    20c0:	55                   	push   %ebp
    20c1:	89 e5                	mov    %esp,%ebp
    20c3:	57                   	push   %edi
    20c4:	56                   	push   %esi
    20c5:	53                   	push   %ebx
    20c6:	83 ec 3c             	sub    $0x3c,%esp
    20c9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    20cc:	89 d1                	mov    %edx,%ecx
{
    20ce:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    20d1:	85 d2                	test   %edx,%edx
    20d3:	0f 89 7f 00 00 00    	jns    2158 <printint+0x98>
    20d9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    20dd:	74 79                	je     2158 <printint+0x98>
    neg = 1;
    20df:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    20e6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    20e8:	31 db                	xor    %ebx,%ebx
    20ea:	8d 75 d7             	lea    -0x29(%ebp),%esi
    20ed:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    20f0:	89 c8                	mov    %ecx,%eax
    20f2:	31 d2                	xor    %edx,%edx
    20f4:	89 cf                	mov    %ecx,%edi
    20f6:	f7 75 c4             	divl   -0x3c(%ebp)
    20f9:	0f b6 92 28 24 00 00 	movzbl 0x2428(%edx),%edx
    2100:	89 45 c0             	mov    %eax,-0x40(%ebp)
    2103:	89 d8                	mov    %ebx,%eax
    2105:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    2108:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    210b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    210e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    2111:	76 dd                	jbe    20f0 <printint+0x30>
  if(neg)
    2113:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    2116:	85 c9                	test   %ecx,%ecx
    2118:	74 0c                	je     2126 <printint+0x66>
    buf[i++] = '-';
    211a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    211f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    2121:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    2126:	8b 7d b8             	mov    -0x48(%ebp),%edi
    2129:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    212d:	eb 07                	jmp    2136 <printint+0x76>
    212f:	90                   	nop
    2130:	0f b6 13             	movzbl (%ebx),%edx
    2133:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    2136:	83 ec 04             	sub    $0x4,%esp
    2139:	88 55 d7             	mov    %dl,-0x29(%ebp)
    213c:	6a 01                	push   $0x1
    213e:	56                   	push   %esi
    213f:	57                   	push   %edi
    2140:	e8 b8 fe ff ff       	call   1ffd <write>
  while(--i >= 0)
    2145:	83 c4 10             	add    $0x10,%esp
    2148:	39 de                	cmp    %ebx,%esi
    214a:	75 e4                	jne    2130 <printint+0x70>
    putc(fd, buf[i]);
}
    214c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    214f:	5b                   	pop    %ebx
    2150:	5e                   	pop    %esi
    2151:	5f                   	pop    %edi
    2152:	5d                   	pop    %ebp
    2153:	c3                   	ret    
    2154:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    2158:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    215f:	eb 87                	jmp    20e8 <printint+0x28>
    2161:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    2168:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    216f:	90                   	nop

00002170 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    2170:	f3 0f 1e fb          	endbr32 
    2174:	55                   	push   %ebp
    2175:	89 e5                	mov    %esp,%ebp
    2177:	57                   	push   %edi
    2178:	56                   	push   %esi
    2179:	53                   	push   %ebx
    217a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    217d:	8b 75 0c             	mov    0xc(%ebp),%esi
    2180:	0f b6 1e             	movzbl (%esi),%ebx
    2183:	84 db                	test   %bl,%bl
    2185:	0f 84 b4 00 00 00    	je     223f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    218b:	8d 45 10             	lea    0x10(%ebp),%eax
    218e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    2191:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    2194:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    2196:	89 45 d0             	mov    %eax,-0x30(%ebp)
    2199:	eb 33                	jmp    21ce <printf+0x5e>
    219b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    219f:	90                   	nop
    21a0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    21a3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    21a8:	83 f8 25             	cmp    $0x25,%eax
    21ab:	74 17                	je     21c4 <printf+0x54>
  write(fd, &c, 1);
    21ad:	83 ec 04             	sub    $0x4,%esp
    21b0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    21b3:	6a 01                	push   $0x1
    21b5:	57                   	push   %edi
    21b6:	ff 75 08             	pushl  0x8(%ebp)
    21b9:	e8 3f fe ff ff       	call   1ffd <write>
    21be:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    21c1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    21c4:	0f b6 1e             	movzbl (%esi),%ebx
    21c7:	83 c6 01             	add    $0x1,%esi
    21ca:	84 db                	test   %bl,%bl
    21cc:	74 71                	je     223f <printf+0xcf>
    c = fmt[i] & 0xff;
    21ce:	0f be cb             	movsbl %bl,%ecx
    21d1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    21d4:	85 d2                	test   %edx,%edx
    21d6:	74 c8                	je     21a0 <printf+0x30>
      }
    } else if(state == '%'){
    21d8:	83 fa 25             	cmp    $0x25,%edx
    21db:	75 e7                	jne    21c4 <printf+0x54>
      if(c == 'd'){
    21dd:	83 f8 64             	cmp    $0x64,%eax
    21e0:	0f 84 9a 00 00 00    	je     2280 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    21e6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    21ec:	83 f9 70             	cmp    $0x70,%ecx
    21ef:	74 5f                	je     2250 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    21f1:	83 f8 73             	cmp    $0x73,%eax
    21f4:	0f 84 d6 00 00 00    	je     22d0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    21fa:	83 f8 63             	cmp    $0x63,%eax
    21fd:	0f 84 8d 00 00 00    	je     2290 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    2203:	83 f8 25             	cmp    $0x25,%eax
    2206:	0f 84 b4 00 00 00    	je     22c0 <printf+0x150>
  write(fd, &c, 1);
    220c:	83 ec 04             	sub    $0x4,%esp
    220f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    2213:	6a 01                	push   $0x1
    2215:	57                   	push   %edi
    2216:	ff 75 08             	pushl  0x8(%ebp)
    2219:	e8 df fd ff ff       	call   1ffd <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    221e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    2221:	83 c4 0c             	add    $0xc,%esp
    2224:	6a 01                	push   $0x1
    2226:	83 c6 01             	add    $0x1,%esi
    2229:	57                   	push   %edi
    222a:	ff 75 08             	pushl  0x8(%ebp)
    222d:	e8 cb fd ff ff       	call   1ffd <write>
  for(i = 0; fmt[i]; i++){
    2232:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    2236:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    2239:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    223b:	84 db                	test   %bl,%bl
    223d:	75 8f                	jne    21ce <printf+0x5e>
    }
  }
}
    223f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    2242:	5b                   	pop    %ebx
    2243:	5e                   	pop    %esi
    2244:	5f                   	pop    %edi
    2245:	5d                   	pop    %ebp
    2246:	c3                   	ret    
    2247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    224e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    2250:	83 ec 0c             	sub    $0xc,%esp
    2253:	b9 10 00 00 00       	mov    $0x10,%ecx
    2258:	6a 00                	push   $0x0
    225a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    225d:	8b 45 08             	mov    0x8(%ebp),%eax
    2260:	8b 13                	mov    (%ebx),%edx
    2262:	e8 59 fe ff ff       	call   20c0 <printint>
        ap++;
    2267:	89 d8                	mov    %ebx,%eax
    2269:	83 c4 10             	add    $0x10,%esp
      state = 0;
    226c:	31 d2                	xor    %edx,%edx
        ap++;
    226e:	83 c0 04             	add    $0x4,%eax
    2271:	89 45 d0             	mov    %eax,-0x30(%ebp)
    2274:	e9 4b ff ff ff       	jmp    21c4 <printf+0x54>
    2279:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    2280:	83 ec 0c             	sub    $0xc,%esp
    2283:	b9 0a 00 00 00       	mov    $0xa,%ecx
    2288:	6a 01                	push   $0x1
    228a:	eb ce                	jmp    225a <printf+0xea>
    228c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    2290:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    2293:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    2296:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    2298:	6a 01                	push   $0x1
        ap++;
    229a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    229d:	57                   	push   %edi
    229e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    22a1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    22a4:	e8 54 fd ff ff       	call   1ffd <write>
        ap++;
    22a9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    22ac:	83 c4 10             	add    $0x10,%esp
      state = 0;
    22af:	31 d2                	xor    %edx,%edx
    22b1:	e9 0e ff ff ff       	jmp    21c4 <printf+0x54>
    22b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    22bd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    22c0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    22c3:	83 ec 04             	sub    $0x4,%esp
    22c6:	e9 59 ff ff ff       	jmp    2224 <printf+0xb4>
    22cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    22cf:	90                   	nop
        s = (char*)*ap;
    22d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    22d3:	8b 18                	mov    (%eax),%ebx
        ap++;
    22d5:	83 c0 04             	add    $0x4,%eax
    22d8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    22db:	85 db                	test   %ebx,%ebx
    22dd:	74 17                	je     22f6 <printf+0x186>
        while(*s != 0){
    22df:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    22e2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    22e4:	84 c0                	test   %al,%al
    22e6:	0f 84 d8 fe ff ff    	je     21c4 <printf+0x54>
    22ec:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    22ef:	89 de                	mov    %ebx,%esi
    22f1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    22f4:	eb 1a                	jmp    2310 <printf+0x1a0>
          s = "(null)";
    22f6:	bb 20 24 00 00       	mov    $0x2420,%ebx
        while(*s != 0){
    22fb:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    22fe:	b8 28 00 00 00       	mov    $0x28,%eax
    2303:	89 de                	mov    %ebx,%esi
    2305:	8b 5d 08             	mov    0x8(%ebp),%ebx
    2308:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    230f:	90                   	nop
  write(fd, &c, 1);
    2310:	83 ec 04             	sub    $0x4,%esp
          s++;
    2313:	83 c6 01             	add    $0x1,%esi
    2316:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    2319:	6a 01                	push   $0x1
    231b:	57                   	push   %edi
    231c:	53                   	push   %ebx
    231d:	e8 db fc ff ff       	call   1ffd <write>
        while(*s != 0){
    2322:	0f b6 06             	movzbl (%esi),%eax
    2325:	83 c4 10             	add    $0x10,%esp
    2328:	84 c0                	test   %al,%al
    232a:	75 e4                	jne    2310 <printf+0x1a0>
    232c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    232f:	31 d2                	xor    %edx,%edx
    2331:	e9 8e fe ff ff       	jmp    21c4 <printf+0x54>
