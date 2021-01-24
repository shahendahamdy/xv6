
_lottery_test2:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
	}
    }
}

int
main(int argc, char *argv[]){
    1000:	f3 0f 1e fb          	endbr32 
    1004:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1008:	83 e4 f0             	and    $0xfffffff0,%esp
    100b:	ff 71 fc             	pushl  -0x4(%ecx)
    100e:	55                   	push   %ebp
    100f:	89 e5                	mov    %esp,%ebp
    1011:	57                   	push   %edi
    1012:	56                   	push   %esi
    1013:	53                   	push   %ebx
    1014:	51                   	push   %ecx
    1015:	81 ec 38 04 00 00    	sub    $0x438,%esp
  int numtickets[]={20,10,30};
  int pid_chds[3];

  pid_chds[0]=getpid();
    101b:	e8 ed 06 00 00       	call   170d <getpid>
  settickets(numtickets[0]);
    1020:	83 ec 0c             	sub    $0xc,%esp
    1023:	6a 14                	push   $0x14
  pid_chds[0]=getpid();
    1025:	89 85 c0 fb ff ff    	mov    %eax,-0x440(%ebp)
  settickets(numtickets[0]);
    102b:	e8 05 07 00 00       	call   1735 <settickets>

  int i;
  for(i=1;i<3;i++){
    pid_chds[i]=fork();
    1030:	e8 50 06 00 00       	call   1685 <fork>
    if(pid_chds[i]==0){
    1035:	83 c4 10             	add    $0x10,%esp
    pid_chds[i]=fork();
    1038:	89 85 d4 fb ff ff    	mov    %eax,-0x42c(%ebp)
    if(pid_chds[i]==0){
    103e:	85 c0                	test   %eax,%eax
    1040:	0f 84 87 01 00 00    	je     11cd <main+0x1cd>
      for (;;){
	spin();
      }
    }
    else{
      settickets(numtickets[i]);
    1046:	83 ec 0c             	sub    $0xc,%esp
    1049:	89 c3                	mov    %eax,%ebx
    104b:	6a 0a                	push   $0xa
    104d:	e8 e3 06 00 00       	call   1735 <settickets>
    pid_chds[i]=fork();
    1052:	e8 2e 06 00 00       	call   1685 <fork>
    if(pid_chds[i]==0){
    1057:	83 c4 10             	add    $0x10,%esp
    pid_chds[i]=fork();
    105a:	89 85 d8 fb ff ff    	mov    %eax,-0x428(%ebp)
    1060:	89 c6                	mov    %eax,%esi
    if(pid_chds[i]==0){
    1062:	85 c0                	test   %eax,%eax
    1064:	0f 84 63 01 00 00    	je     11cd <main+0x1cd>
      settickets(numtickets[i]);
    106a:	83 ec 0c             	sub    $0xc,%esp
    106d:	6a 1e                	push   $0x1e
    106f:	e8 c1 06 00 00       	call   1735 <settickets>
    
  struct pstat st;
  int time=0;
  int ticks[3]={0,0,0};

  printf(1,"pid:%d, pid:%d, pid:%d\n",pid_chds[0],pid_chds[1],pid_chds[2]);
    1074:	89 34 24             	mov    %esi,(%esp)
    1077:	53                   	push   %ebx
    1078:	ff b5 c0 fb ff ff    	pushl  -0x440(%ebp)
    107e:	68 e8 19 00 00       	push   $0x19e8
    1083:	6a 01                	push   $0x1
  int ticks[3]={0,0,0};
    1085:	c7 85 dc fb ff ff 00 	movl   $0x0,-0x424(%ebp)
    108c:	00 00 00 
    108f:	c7 85 e0 fb ff ff 00 	movl   $0x0,-0x420(%ebp)
    1096:	00 00 00 
    1099:	c7 85 e4 fb ff ff 00 	movl   $0x0,-0x41c(%ebp)
    10a0:	00 00 00 
  printf(1,"pid:%d, pid:%d, pid:%d\n",pid_chds[0],pid_chds[1],pid_chds[2]);
    10a3:	e8 78 07 00 00       	call   1820 <printf>
  printf(1,"tickets:%d, tickets:%d, tickets:%d\n",30,20,10);
    10a8:	83 c4 14             	add    $0x14,%esp
    10ab:	6a 0a                	push   $0xa
    10ad:	6a 14                	push   $0x14
    10af:	6a 1e                	push   $0x1e
    10b1:	68 20 1a 00 00       	push   $0x1a20
    10b6:	6a 01                	push   $0x1
    10b8:	e8 63 07 00 00       	call   1820 <printf>
    10bd:	83 c4 20             	add    $0x20,%esp
    10c0:	c7 85 bc fb ff ff c8 	movl   $0xc8,-0x444(%ebp)
    10c7:	00 00 00 

  while(time<200){
    if(getpinfo(&st)!=0){
    10ca:	83 ec 0c             	sub    $0xc,%esp
    10cd:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
    10d3:	50                   	push   %eax
    10d4:	e8 64 06 00 00       	call   173d <getpinfo>
    10d9:	83 c4 10             	add    $0x10,%esp
    10dc:	85 c0                	test   %eax,%eax
    10de:	0f 85 d5 00 00 00    	jne    11b9 <main+0x1b9>
    10e4:	8d b5 dc fb ff ff    	lea    -0x424(%ebp),%esi
  pid_chds[0]=getpid();
    10ea:	8b 95 c0 fb ff ff    	mov    -0x440(%ebp),%edx
    10f0:	8d bd d0 fb ff ff    	lea    -0x430(%ebp),%edi
    if(getpinfo(&st)!=0){
    10f6:	89 f3                	mov    %esi,%ebx
    10f8:	8d 8d e8 fe ff ff    	lea    -0x118(%ebp),%ecx
    
    int j;
    int pid;
    for(i=0;i<3;i++){
      pid=pid_chds[i];
      for(j=0;j<NPROC;j++){
    10fe:	89 b5 c4 fb ff ff    	mov    %esi,-0x43c(%ebp)
    1104:	8d 85 e8 fd ff ff    	lea    -0x218(%ebp),%eax
    110a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	if(st.pid[j]==pid){
    1110:	39 10                	cmp    %edx,(%eax)
    1112:	75 08                	jne    111c <main+0x11c>
      	  ticks[i]=st.ticks[j];
    1114:	8b b0 00 01 00 00    	mov    0x100(%eax),%esi
    111a:	89 33                	mov    %esi,(%ebx)
      for(j=0;j<NPROC;j++){
    111c:	83 c0 04             	add    $0x4,%eax
    111f:	39 c1                	cmp    %eax,%ecx
    1121:	75 ed                	jne    1110 <main+0x110>
    1123:	83 c3 04             	add    $0x4,%ebx
    for(i=0;i<3;i++){
    1126:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
    112c:	8b b5 c4 fb ff ff    	mov    -0x43c(%ebp),%esi
    1132:	83 c7 04             	add    $0x4,%edi
    1135:	39 c3                	cmp    %eax,%ebx
    1137:	74 07                	je     1140 <main+0x140>
    1139:	8b 17                	mov    (%edi),%edx
    113b:	eb c1                	jmp    10fe <main+0xfe>
    113d:	8d 76 00             	lea    0x0(%esi),%esi
      }
    }

   
   for(i=0;i<3;i++){
      printf(1,"%d, ",ticks[i]);
    1140:	83 ec 04             	sub    $0x4,%esp
    1143:	ff 36                	pushl  (%esi)
    1145:	83 c6 04             	add    $0x4,%esi
    1148:	68 18 1a 00 00       	push   $0x1a18
    114d:	6a 01                	push   $0x1
    114f:	e8 cc 06 00 00       	call   1820 <printf>
   for(i=0;i<3;i++){
    1154:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
    115a:	83 c4 10             	add    $0x10,%esp
    115d:	39 c6                	cmp    %eax,%esi
    115f:	75 df                	jne    1140 <main+0x140>
    }
    printf(1,"\n");
    1161:	83 ec 08             	sub    $0x8,%esp
    1164:	68 fe 19 00 00       	push   $0x19fe
    1169:	6a 01                	push   $0x1
    116b:	e8 b0 06 00 00       	call   1820 <printf>
  while(time<200){
    1170:	83 c4 10             	add    $0x10,%esp
    1173:	83 ad bc fb ff ff 01 	subl   $0x1,-0x444(%ebp)
    117a:	0f 85 4a ff ff ff    	jne    10ca <main+0xca>
    spin();
    time++;
  }
    
 Cleanup:
  for (i = 0; pid_chds[i] > 0; i++){
    1180:	8b 85 c0 fb ff ff    	mov    -0x440(%ebp),%eax
    1186:	8d 9d d0 fb ff ff    	lea    -0x430(%ebp),%ebx
    118c:	85 c0                	test   %eax,%eax
    118e:	7e 1b                	jle    11ab <main+0x1ab>
    1190:	8b 85 c0 fb ff ff    	mov    -0x440(%ebp),%eax
    kill(pid_chds[i]);
    1196:	83 ec 0c             	sub    $0xc,%esp
    1199:	83 c3 04             	add    $0x4,%ebx
    119c:	50                   	push   %eax
    119d:	e8 1b 05 00 00       	call   16bd <kill>
  for (i = 0; pid_chds[i] > 0; i++){
    11a2:	8b 03                	mov    (%ebx),%eax
    11a4:	83 c4 10             	add    $0x10,%esp
    11a7:	85 c0                	test   %eax,%eax
    11a9:	7f eb                	jg     1196 <main+0x196>
  }
  while(wait() > -1);
    11ab:	e8 e5 04 00 00       	call   1695 <wait>
    11b0:	85 c0                	test   %eax,%eax
    11b2:	79 f7                	jns    11ab <main+0x1ab>

  exit();
    11b4:	e8 d4 04 00 00       	call   168d <exit>
      printf(1,"check failed: getpinfo\n");
    11b9:	83 ec 08             	sub    $0x8,%esp
    11bc:	68 00 1a 00 00       	push   $0x1a00
    11c1:	6a 01                	push   $0x1
    11c3:	e8 58 06 00 00       	call   1820 <printf>
      goto Cleanup;
    11c8:	83 c4 10             	add    $0x10,%esp
    11cb:	eb b3                	jmp    1180 <main+0x180>
  for(i = 0; i < 50; ++i)
    11cd:	eb fe                	jmp    11cd <main+0x1cd>
    11cf:	90                   	nop

000011d0 <spin>:
{
    11d0:	f3 0f 1e fb          	endbr32 
}
    11d4:	c3                   	ret    
    11d5:	66 90                	xchg   %ax,%ax
    11d7:	66 90                	xchg   %ax,%ax
    11d9:	66 90                	xchg   %ax,%ax
    11db:	66 90                	xchg   %ax,%ax
    11dd:	66 90                	xchg   %ax,%ax
    11df:	90                   	nop

000011e0 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    11e0:	f3 0f 1e fb          	endbr32 
    11e4:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    11e5:	31 c0                	xor    %eax,%eax
{
    11e7:	89 e5                	mov    %esp,%ebp
    11e9:	53                   	push   %ebx
    11ea:	8b 4d 08             	mov    0x8(%ebp),%ecx
    11ed:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    11f0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    11f4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    11f7:	83 c0 01             	add    $0x1,%eax
    11fa:	84 d2                	test   %dl,%dl
    11fc:	75 f2                	jne    11f0 <strcpy+0x10>
    ;
  return os;
}
    11fe:	89 c8                	mov    %ecx,%eax
    1200:	5b                   	pop    %ebx
    1201:	5d                   	pop    %ebp
    1202:	c3                   	ret    
    1203:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    120a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001210 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1210:	f3 0f 1e fb          	endbr32 
    1214:	55                   	push   %ebp
    1215:	89 e5                	mov    %esp,%ebp
    1217:	53                   	push   %ebx
    1218:	8b 4d 08             	mov    0x8(%ebp),%ecx
    121b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    121e:	0f b6 01             	movzbl (%ecx),%eax
    1221:	0f b6 1a             	movzbl (%edx),%ebx
    1224:	84 c0                	test   %al,%al
    1226:	75 19                	jne    1241 <strcmp+0x31>
    1228:	eb 26                	jmp    1250 <strcmp+0x40>
    122a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1230:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    1234:	83 c1 01             	add    $0x1,%ecx
    1237:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    123a:	0f b6 1a             	movzbl (%edx),%ebx
    123d:	84 c0                	test   %al,%al
    123f:	74 0f                	je     1250 <strcmp+0x40>
    1241:	38 d8                	cmp    %bl,%al
    1243:	74 eb                	je     1230 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1245:	29 d8                	sub    %ebx,%eax
}
    1247:	5b                   	pop    %ebx
    1248:	5d                   	pop    %ebp
    1249:	c3                   	ret    
    124a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1250:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1252:	29 d8                	sub    %ebx,%eax
}
    1254:	5b                   	pop    %ebx
    1255:	5d                   	pop    %ebp
    1256:	c3                   	ret    
    1257:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    125e:	66 90                	xchg   %ax,%ax

00001260 <strlen>:

uint
strlen(const char *s)
{
    1260:	f3 0f 1e fb          	endbr32 
    1264:	55                   	push   %ebp
    1265:	89 e5                	mov    %esp,%ebp
    1267:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    126a:	80 3a 00             	cmpb   $0x0,(%edx)
    126d:	74 21                	je     1290 <strlen+0x30>
    126f:	31 c0                	xor    %eax,%eax
    1271:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1278:	83 c0 01             	add    $0x1,%eax
    127b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    127f:	89 c1                	mov    %eax,%ecx
    1281:	75 f5                	jne    1278 <strlen+0x18>
    ;
  return n;
}
    1283:	89 c8                	mov    %ecx,%eax
    1285:	5d                   	pop    %ebp
    1286:	c3                   	ret    
    1287:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    128e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1290:	31 c9                	xor    %ecx,%ecx
}
    1292:	5d                   	pop    %ebp
    1293:	89 c8                	mov    %ecx,%eax
    1295:	c3                   	ret    
    1296:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    129d:	8d 76 00             	lea    0x0(%esi),%esi

000012a0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    12a0:	f3 0f 1e fb          	endbr32 
    12a4:	55                   	push   %ebp
    12a5:	89 e5                	mov    %esp,%ebp
    12a7:	57                   	push   %edi
    12a8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    12ab:	8b 4d 10             	mov    0x10(%ebp),%ecx
    12ae:	8b 45 0c             	mov    0xc(%ebp),%eax
    12b1:	89 d7                	mov    %edx,%edi
    12b3:	fc                   	cld    
    12b4:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    12b6:	89 d0                	mov    %edx,%eax
    12b8:	5f                   	pop    %edi
    12b9:	5d                   	pop    %ebp
    12ba:	c3                   	ret    
    12bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12bf:	90                   	nop

000012c0 <strchr>:

char*
strchr(const char *s, char c)
{
    12c0:	f3 0f 1e fb          	endbr32 
    12c4:	55                   	push   %ebp
    12c5:	89 e5                	mov    %esp,%ebp
    12c7:	8b 45 08             	mov    0x8(%ebp),%eax
    12ca:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    12ce:	0f b6 10             	movzbl (%eax),%edx
    12d1:	84 d2                	test   %dl,%dl
    12d3:	75 16                	jne    12eb <strchr+0x2b>
    12d5:	eb 21                	jmp    12f8 <strchr+0x38>
    12d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12de:	66 90                	xchg   %ax,%ax
    12e0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    12e4:	83 c0 01             	add    $0x1,%eax
    12e7:	84 d2                	test   %dl,%dl
    12e9:	74 0d                	je     12f8 <strchr+0x38>
    if(*s == c)
    12eb:	38 d1                	cmp    %dl,%cl
    12ed:	75 f1                	jne    12e0 <strchr+0x20>
      return (char*)s;
  return 0;
}
    12ef:	5d                   	pop    %ebp
    12f0:	c3                   	ret    
    12f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    12f8:	31 c0                	xor    %eax,%eax
}
    12fa:	5d                   	pop    %ebp
    12fb:	c3                   	ret    
    12fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001300 <gets>:

char*
gets(char *buf, int max)
{
    1300:	f3 0f 1e fb          	endbr32 
    1304:	55                   	push   %ebp
    1305:	89 e5                	mov    %esp,%ebp
    1307:	57                   	push   %edi
    1308:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1309:	31 f6                	xor    %esi,%esi
{
    130b:	53                   	push   %ebx
    130c:	89 f3                	mov    %esi,%ebx
    130e:	83 ec 1c             	sub    $0x1c,%esp
    1311:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1314:	eb 33                	jmp    1349 <gets+0x49>
    1316:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    131d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1320:	83 ec 04             	sub    $0x4,%esp
    1323:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1326:	6a 01                	push   $0x1
    1328:	50                   	push   %eax
    1329:	6a 00                	push   $0x0
    132b:	e8 75 03 00 00       	call   16a5 <read>
    if(cc < 1)
    1330:	83 c4 10             	add    $0x10,%esp
    1333:	85 c0                	test   %eax,%eax
    1335:	7e 1c                	jle    1353 <gets+0x53>
      break;
    buf[i++] = c;
    1337:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    133b:	83 c7 01             	add    $0x1,%edi
    133e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1341:	3c 0a                	cmp    $0xa,%al
    1343:	74 23                	je     1368 <gets+0x68>
    1345:	3c 0d                	cmp    $0xd,%al
    1347:	74 1f                	je     1368 <gets+0x68>
  for(i=0; i+1 < max; ){
    1349:	83 c3 01             	add    $0x1,%ebx
    134c:	89 fe                	mov    %edi,%esi
    134e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1351:	7c cd                	jl     1320 <gets+0x20>
    1353:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    1355:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1358:	c6 03 00             	movb   $0x0,(%ebx)
}
    135b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    135e:	5b                   	pop    %ebx
    135f:	5e                   	pop    %esi
    1360:	5f                   	pop    %edi
    1361:	5d                   	pop    %ebp
    1362:	c3                   	ret    
    1363:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1367:	90                   	nop
    1368:	8b 75 08             	mov    0x8(%ebp),%esi
    136b:	8b 45 08             	mov    0x8(%ebp),%eax
    136e:	01 de                	add    %ebx,%esi
    1370:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    1372:	c6 03 00             	movb   $0x0,(%ebx)
}
    1375:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1378:	5b                   	pop    %ebx
    1379:	5e                   	pop    %esi
    137a:	5f                   	pop    %edi
    137b:	5d                   	pop    %ebp
    137c:	c3                   	ret    
    137d:	8d 76 00             	lea    0x0(%esi),%esi

00001380 <stat>:

int
stat(const char *n, struct stat *st)
{
    1380:	f3 0f 1e fb          	endbr32 
    1384:	55                   	push   %ebp
    1385:	89 e5                	mov    %esp,%ebp
    1387:	56                   	push   %esi
    1388:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1389:	83 ec 08             	sub    $0x8,%esp
    138c:	6a 00                	push   $0x0
    138e:	ff 75 08             	pushl  0x8(%ebp)
    1391:	e8 37 03 00 00       	call   16cd <open>
  if(fd < 0)
    1396:	83 c4 10             	add    $0x10,%esp
    1399:	85 c0                	test   %eax,%eax
    139b:	78 2b                	js     13c8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    139d:	83 ec 08             	sub    $0x8,%esp
    13a0:	ff 75 0c             	pushl  0xc(%ebp)
    13a3:	89 c3                	mov    %eax,%ebx
    13a5:	50                   	push   %eax
    13a6:	e8 3a 03 00 00       	call   16e5 <fstat>
  close(fd);
    13ab:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    13ae:	89 c6                	mov    %eax,%esi
  close(fd);
    13b0:	e8 00 03 00 00       	call   16b5 <close>
  return r;
    13b5:	83 c4 10             	add    $0x10,%esp
}
    13b8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    13bb:	89 f0                	mov    %esi,%eax
    13bd:	5b                   	pop    %ebx
    13be:	5e                   	pop    %esi
    13bf:	5d                   	pop    %ebp
    13c0:	c3                   	ret    
    13c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    13c8:	be ff ff ff ff       	mov    $0xffffffff,%esi
    13cd:	eb e9                	jmp    13b8 <stat+0x38>
    13cf:	90                   	nop

000013d0 <atoi>:

int
atoi(const char *s)
{
    13d0:	f3 0f 1e fb          	endbr32 
    13d4:	55                   	push   %ebp
    13d5:	89 e5                	mov    %esp,%ebp
    13d7:	53                   	push   %ebx
    13d8:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    13db:	0f be 02             	movsbl (%edx),%eax
    13de:	8d 48 d0             	lea    -0x30(%eax),%ecx
    13e1:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    13e4:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    13e9:	77 1a                	ja     1405 <atoi+0x35>
    13eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13ef:	90                   	nop
    n = n*10 + *s++ - '0';
    13f0:	83 c2 01             	add    $0x1,%edx
    13f3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    13f6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    13fa:	0f be 02             	movsbl (%edx),%eax
    13fd:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1400:	80 fb 09             	cmp    $0x9,%bl
    1403:	76 eb                	jbe    13f0 <atoi+0x20>
  return n;
}
    1405:	89 c8                	mov    %ecx,%eax
    1407:	5b                   	pop    %ebx
    1408:	5d                   	pop    %ebp
    1409:	c3                   	ret    
    140a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001410 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1410:	f3 0f 1e fb          	endbr32 
    1414:	55                   	push   %ebp
    1415:	89 e5                	mov    %esp,%ebp
    1417:	57                   	push   %edi
    1418:	8b 45 10             	mov    0x10(%ebp),%eax
    141b:	8b 55 08             	mov    0x8(%ebp),%edx
    141e:	56                   	push   %esi
    141f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1422:	85 c0                	test   %eax,%eax
    1424:	7e 0f                	jle    1435 <memmove+0x25>
    1426:	01 d0                	add    %edx,%eax
  dst = vdst;
    1428:	89 d7                	mov    %edx,%edi
    142a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    1430:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    1431:	39 f8                	cmp    %edi,%eax
    1433:	75 fb                	jne    1430 <memmove+0x20>
  return vdst;
}
    1435:	5e                   	pop    %esi
    1436:	89 d0                	mov    %edx,%eax
    1438:	5f                   	pop    %edi
    1439:	5d                   	pop    %ebp
    143a:	c3                   	ret    
    143b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    143f:	90                   	nop

00001440 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    1440:	f3 0f 1e fb          	endbr32 
    1444:	55                   	push   %ebp
    1445:	89 e5                	mov    %esp,%ebp
    1447:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    144a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    144d:	50                   	push   %eax
    144e:	e8 0a 03 00 00       	call   175d <join>
  
  return x;
}
    1453:	c9                   	leave  
    1454:	c3                   	ret    
    1455:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    145c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001460 <lock_init>:

void lock_init(struct lock_t *lk){
    1460:	f3 0f 1e fb          	endbr32 
    1464:	55                   	push   %ebp
    1465:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    1467:	8b 45 08             	mov    0x8(%ebp),%eax
    146a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1470:	5d                   	pop    %ebp
    1471:	c3                   	ret    
    1472:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001480 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    1480:	f3 0f 1e fb          	endbr32 
    1484:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1485:	b9 01 00 00 00       	mov    $0x1,%ecx
    148a:	89 e5                	mov    %esp,%ebp
    148c:	8b 55 08             	mov    0x8(%ebp),%edx
    148f:	90                   	nop
    1490:	89 c8                	mov    %ecx,%eax
    1492:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1495:	85 c0                	test   %eax,%eax
    1497:	75 f7                	jne    1490 <lock_acquire+0x10>
}
    1499:	5d                   	pop    %ebp
    149a:	c3                   	ret    
    149b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    149f:	90                   	nop

000014a0 <lock_release>:
void lock_release(struct lock_t *lk){
    14a0:	f3 0f 1e fb          	endbr32 
    14a4:	55                   	push   %ebp
    14a5:	31 c0                	xor    %eax,%eax
    14a7:	89 e5                	mov    %esp,%ebp
    14a9:	8b 55 08             	mov    0x8(%ebp),%edx
    14ac:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    14af:	5d                   	pop    %ebp
    14b0:	c3                   	ret    
    14b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14bf:	90                   	nop

000014c0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    14c0:	f3 0f 1e fb          	endbr32 
    14c4:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    14c5:	a1 b4 1d 00 00       	mov    0x1db4,%eax
{
    14ca:	89 e5                	mov    %esp,%ebp
    14cc:	57                   	push   %edi
    14cd:	56                   	push   %esi
    14ce:	53                   	push   %ebx
    14cf:	8b 5d 08             	mov    0x8(%ebp),%ebx
    14d2:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    14d4:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    14d7:	39 c8                	cmp    %ecx,%eax
    14d9:	73 15                	jae    14f0 <free+0x30>
    14db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14df:	90                   	nop
    14e0:	39 d1                	cmp    %edx,%ecx
    14e2:	72 14                	jb     14f8 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    14e4:	39 d0                	cmp    %edx,%eax
    14e6:	73 10                	jae    14f8 <free+0x38>
{
    14e8:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    14ea:	8b 10                	mov    (%eax),%edx
    14ec:	39 c8                	cmp    %ecx,%eax
    14ee:	72 f0                	jb     14e0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    14f0:	39 d0                	cmp    %edx,%eax
    14f2:	72 f4                	jb     14e8 <free+0x28>
    14f4:	39 d1                	cmp    %edx,%ecx
    14f6:	73 f0                	jae    14e8 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    14f8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    14fb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    14fe:	39 fa                	cmp    %edi,%edx
    1500:	74 1e                	je     1520 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1502:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1505:	8b 50 04             	mov    0x4(%eax),%edx
    1508:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    150b:	39 f1                	cmp    %esi,%ecx
    150d:	74 28                	je     1537 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    150f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1511:	5b                   	pop    %ebx
  freep = p;
    1512:	a3 b4 1d 00 00       	mov    %eax,0x1db4
}
    1517:	5e                   	pop    %esi
    1518:	5f                   	pop    %edi
    1519:	5d                   	pop    %ebp
    151a:	c3                   	ret    
    151b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    151f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1520:	03 72 04             	add    0x4(%edx),%esi
    1523:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1526:	8b 10                	mov    (%eax),%edx
    1528:	8b 12                	mov    (%edx),%edx
    152a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    152d:	8b 50 04             	mov    0x4(%eax),%edx
    1530:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1533:	39 f1                	cmp    %esi,%ecx
    1535:	75 d8                	jne    150f <free+0x4f>
    p->s.size += bp->s.size;
    1537:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    153a:	a3 b4 1d 00 00       	mov    %eax,0x1db4
    p->s.size += bp->s.size;
    153f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1542:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1545:	89 10                	mov    %edx,(%eax)
}
    1547:	5b                   	pop    %ebx
    1548:	5e                   	pop    %esi
    1549:	5f                   	pop    %edi
    154a:	5d                   	pop    %ebp
    154b:	c3                   	ret    
    154c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001550 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1550:	f3 0f 1e fb          	endbr32 
    1554:	55                   	push   %ebp
    1555:	89 e5                	mov    %esp,%ebp
    1557:	57                   	push   %edi
    1558:	56                   	push   %esi
    1559:	53                   	push   %ebx
    155a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    155d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1560:	8b 3d b4 1d 00 00    	mov    0x1db4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1566:	8d 70 07             	lea    0x7(%eax),%esi
    1569:	c1 ee 03             	shr    $0x3,%esi
    156c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    156f:	85 ff                	test   %edi,%edi
    1571:	0f 84 a9 00 00 00    	je     1620 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1577:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    1579:	8b 48 04             	mov    0x4(%eax),%ecx
    157c:	39 f1                	cmp    %esi,%ecx
    157e:	73 6d                	jae    15ed <malloc+0x9d>
    1580:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1586:	bb 00 10 00 00       	mov    $0x1000,%ebx
    158b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    158e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1595:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1598:	eb 17                	jmp    15b1 <malloc+0x61>
    159a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    15a0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    15a2:	8b 4a 04             	mov    0x4(%edx),%ecx
    15a5:	39 f1                	cmp    %esi,%ecx
    15a7:	73 4f                	jae    15f8 <malloc+0xa8>
    15a9:	8b 3d b4 1d 00 00    	mov    0x1db4,%edi
    15af:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    15b1:	39 c7                	cmp    %eax,%edi
    15b3:	75 eb                	jne    15a0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    15b5:	83 ec 0c             	sub    $0xc,%esp
    15b8:	ff 75 e4             	pushl  -0x1c(%ebp)
    15bb:	e8 55 01 00 00       	call   1715 <sbrk>
  if(p == (char*)-1)
    15c0:	83 c4 10             	add    $0x10,%esp
    15c3:	83 f8 ff             	cmp    $0xffffffff,%eax
    15c6:	74 1b                	je     15e3 <malloc+0x93>
  hp->s.size = nu;
    15c8:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    15cb:	83 ec 0c             	sub    $0xc,%esp
    15ce:	83 c0 08             	add    $0x8,%eax
    15d1:	50                   	push   %eax
    15d2:	e8 e9 fe ff ff       	call   14c0 <free>
  return freep;
    15d7:	a1 b4 1d 00 00       	mov    0x1db4,%eax
      if((p = morecore(nunits)) == 0)
    15dc:	83 c4 10             	add    $0x10,%esp
    15df:	85 c0                	test   %eax,%eax
    15e1:	75 bd                	jne    15a0 <malloc+0x50>
        return 0;
  }
}
    15e3:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    15e6:	31 c0                	xor    %eax,%eax
}
    15e8:	5b                   	pop    %ebx
    15e9:	5e                   	pop    %esi
    15ea:	5f                   	pop    %edi
    15eb:	5d                   	pop    %ebp
    15ec:	c3                   	ret    
    if(p->s.size >= nunits){
    15ed:	89 c2                	mov    %eax,%edx
    15ef:	89 f8                	mov    %edi,%eax
    15f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    15f8:	39 ce                	cmp    %ecx,%esi
    15fa:	74 54                	je     1650 <malloc+0x100>
        p->s.size -= nunits;
    15fc:	29 f1                	sub    %esi,%ecx
    15fe:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1601:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1604:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1607:	a3 b4 1d 00 00       	mov    %eax,0x1db4
}
    160c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    160f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1612:	5b                   	pop    %ebx
    1613:	5e                   	pop    %esi
    1614:	5f                   	pop    %edi
    1615:	5d                   	pop    %ebp
    1616:	c3                   	ret    
    1617:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    161e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1620:	c7 05 b4 1d 00 00 b8 	movl   $0x1db8,0x1db4
    1627:	1d 00 00 
    base.s.size = 0;
    162a:	bf b8 1d 00 00       	mov    $0x1db8,%edi
    base.s.ptr = freep = prevp = &base;
    162f:	c7 05 b8 1d 00 00 b8 	movl   $0x1db8,0x1db8
    1636:	1d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1639:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    163b:	c7 05 bc 1d 00 00 00 	movl   $0x0,0x1dbc
    1642:	00 00 00 
    if(p->s.size >= nunits){
    1645:	e9 36 ff ff ff       	jmp    1580 <malloc+0x30>
    164a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1650:	8b 0a                	mov    (%edx),%ecx
    1652:	89 08                	mov    %ecx,(%eax)
    1654:	eb b1                	jmp    1607 <malloc+0xb7>
    1656:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    165d:	8d 76 00             	lea    0x0(%esi),%esi

00001660 <thread_create>:
{
    1660:	f3 0f 1e fb          	endbr32 
    1664:	55                   	push   %ebp
    1665:	89 e5                	mov    %esp,%ebp
    1667:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    166a:	68 00 10 00 00       	push   $0x1000
    166f:	e8 dc fe ff ff       	call   1550 <malloc>
return clone(start_routine,arg1,arg2,stack);
    1674:	50                   	push   %eax
    1675:	ff 75 10             	pushl  0x10(%ebp)
    1678:	ff 75 0c             	pushl  0xc(%ebp)
    167b:	ff 75 08             	pushl  0x8(%ebp)
    167e:	e8 d2 00 00 00       	call   1755 <clone>
}
    1683:	c9                   	leave  
    1684:	c3                   	ret    

00001685 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1685:	b8 01 00 00 00       	mov    $0x1,%eax
    168a:	cd 40                	int    $0x40
    168c:	c3                   	ret    

0000168d <exit>:
SYSCALL(exit)
    168d:	b8 02 00 00 00       	mov    $0x2,%eax
    1692:	cd 40                	int    $0x40
    1694:	c3                   	ret    

00001695 <wait>:
SYSCALL(wait)
    1695:	b8 03 00 00 00       	mov    $0x3,%eax
    169a:	cd 40                	int    $0x40
    169c:	c3                   	ret    

0000169d <pipe>:
SYSCALL(pipe)
    169d:	b8 04 00 00 00       	mov    $0x4,%eax
    16a2:	cd 40                	int    $0x40
    16a4:	c3                   	ret    

000016a5 <read>:
SYSCALL(read)
    16a5:	b8 05 00 00 00       	mov    $0x5,%eax
    16aa:	cd 40                	int    $0x40
    16ac:	c3                   	ret    

000016ad <write>:
SYSCALL(write)
    16ad:	b8 10 00 00 00       	mov    $0x10,%eax
    16b2:	cd 40                	int    $0x40
    16b4:	c3                   	ret    

000016b5 <close>:
SYSCALL(close)
    16b5:	b8 15 00 00 00       	mov    $0x15,%eax
    16ba:	cd 40                	int    $0x40
    16bc:	c3                   	ret    

000016bd <kill>:
SYSCALL(kill)
    16bd:	b8 06 00 00 00       	mov    $0x6,%eax
    16c2:	cd 40                	int    $0x40
    16c4:	c3                   	ret    

000016c5 <exec>:
SYSCALL(exec)
    16c5:	b8 07 00 00 00       	mov    $0x7,%eax
    16ca:	cd 40                	int    $0x40
    16cc:	c3                   	ret    

000016cd <open>:
SYSCALL(open)
    16cd:	b8 0f 00 00 00       	mov    $0xf,%eax
    16d2:	cd 40                	int    $0x40
    16d4:	c3                   	ret    

000016d5 <mknod>:
SYSCALL(mknod)
    16d5:	b8 11 00 00 00       	mov    $0x11,%eax
    16da:	cd 40                	int    $0x40
    16dc:	c3                   	ret    

000016dd <unlink>:
SYSCALL(unlink)
    16dd:	b8 12 00 00 00       	mov    $0x12,%eax
    16e2:	cd 40                	int    $0x40
    16e4:	c3                   	ret    

000016e5 <fstat>:
SYSCALL(fstat)
    16e5:	b8 08 00 00 00       	mov    $0x8,%eax
    16ea:	cd 40                	int    $0x40
    16ec:	c3                   	ret    

000016ed <link>:
SYSCALL(link)
    16ed:	b8 13 00 00 00       	mov    $0x13,%eax
    16f2:	cd 40                	int    $0x40
    16f4:	c3                   	ret    

000016f5 <mkdir>:
SYSCALL(mkdir)
    16f5:	b8 14 00 00 00       	mov    $0x14,%eax
    16fa:	cd 40                	int    $0x40
    16fc:	c3                   	ret    

000016fd <chdir>:
SYSCALL(chdir)
    16fd:	b8 09 00 00 00       	mov    $0x9,%eax
    1702:	cd 40                	int    $0x40
    1704:	c3                   	ret    

00001705 <dup>:
SYSCALL(dup)
    1705:	b8 0a 00 00 00       	mov    $0xa,%eax
    170a:	cd 40                	int    $0x40
    170c:	c3                   	ret    

0000170d <getpid>:
SYSCALL(getpid)
    170d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1712:	cd 40                	int    $0x40
    1714:	c3                   	ret    

00001715 <sbrk>:
SYSCALL(sbrk)
    1715:	b8 0c 00 00 00       	mov    $0xc,%eax
    171a:	cd 40                	int    $0x40
    171c:	c3                   	ret    

0000171d <sleep>:
SYSCALL(sleep)
    171d:	b8 0d 00 00 00       	mov    $0xd,%eax
    1722:	cd 40                	int    $0x40
    1724:	c3                   	ret    

00001725 <uptime>:
SYSCALL(uptime)
    1725:	b8 0e 00 00 00       	mov    $0xe,%eax
    172a:	cd 40                	int    $0x40
    172c:	c3                   	ret    

0000172d <count>:
SYSCALL(count)
    172d:	b8 16 00 00 00       	mov    $0x16,%eax
    1732:	cd 40                	int    $0x40
    1734:	c3                   	ret    

00001735 <settickets>:

SYSCALL(settickets)
    1735:	b8 17 00 00 00       	mov    $0x17,%eax
    173a:	cd 40                	int    $0x40
    173c:	c3                   	ret    

0000173d <getpinfo>:
SYSCALL(getpinfo)
    173d:	b8 18 00 00 00       	mov    $0x18,%eax
    1742:	cd 40                	int    $0x40
    1744:	c3                   	ret    

00001745 <mprotect>:

SYSCALL(mprotect)
    1745:	b8 19 00 00 00       	mov    $0x19,%eax
    174a:	cd 40                	int    $0x40
    174c:	c3                   	ret    

0000174d <munprotect>:
SYSCALL(munprotect)
    174d:	b8 1a 00 00 00       	mov    $0x1a,%eax
    1752:	cd 40                	int    $0x40
    1754:	c3                   	ret    

00001755 <clone>:

SYSCALL(clone)
    1755:	b8 1b 00 00 00       	mov    $0x1b,%eax
    175a:	cd 40                	int    $0x40
    175c:	c3                   	ret    

0000175d <join>:
SYSCALL(join)
    175d:	b8 1c 00 00 00       	mov    $0x1c,%eax
    1762:	cd 40                	int    $0x40
    1764:	c3                   	ret    
    1765:	66 90                	xchg   %ax,%ax
    1767:	66 90                	xchg   %ax,%ax
    1769:	66 90                	xchg   %ax,%ax
    176b:	66 90                	xchg   %ax,%ax
    176d:	66 90                	xchg   %ax,%ax
    176f:	90                   	nop

00001770 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1770:	55                   	push   %ebp
    1771:	89 e5                	mov    %esp,%ebp
    1773:	57                   	push   %edi
    1774:	56                   	push   %esi
    1775:	53                   	push   %ebx
    1776:	83 ec 3c             	sub    $0x3c,%esp
    1779:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    177c:	89 d1                	mov    %edx,%ecx
{
    177e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    1781:	85 d2                	test   %edx,%edx
    1783:	0f 89 7f 00 00 00    	jns    1808 <printint+0x98>
    1789:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    178d:	74 79                	je     1808 <printint+0x98>
    neg = 1;
    178f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1796:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1798:	31 db                	xor    %ebx,%ebx
    179a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    179d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    17a0:	89 c8                	mov    %ecx,%eax
    17a2:	31 d2                	xor    %edx,%edx
    17a4:	89 cf                	mov    %ecx,%edi
    17a6:	f7 75 c4             	divl   -0x3c(%ebp)
    17a9:	0f b6 92 4c 1a 00 00 	movzbl 0x1a4c(%edx),%edx
    17b0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    17b3:	89 d8                	mov    %ebx,%eax
    17b5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    17b8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    17bb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    17be:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    17c1:	76 dd                	jbe    17a0 <printint+0x30>
  if(neg)
    17c3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    17c6:	85 c9                	test   %ecx,%ecx
    17c8:	74 0c                	je     17d6 <printint+0x66>
    buf[i++] = '-';
    17ca:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    17cf:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    17d1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    17d6:	8b 7d b8             	mov    -0x48(%ebp),%edi
    17d9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    17dd:	eb 07                	jmp    17e6 <printint+0x76>
    17df:	90                   	nop
    17e0:	0f b6 13             	movzbl (%ebx),%edx
    17e3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    17e6:	83 ec 04             	sub    $0x4,%esp
    17e9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    17ec:	6a 01                	push   $0x1
    17ee:	56                   	push   %esi
    17ef:	57                   	push   %edi
    17f0:	e8 b8 fe ff ff       	call   16ad <write>
  while(--i >= 0)
    17f5:	83 c4 10             	add    $0x10,%esp
    17f8:	39 de                	cmp    %ebx,%esi
    17fa:	75 e4                	jne    17e0 <printint+0x70>
    putc(fd, buf[i]);
}
    17fc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    17ff:	5b                   	pop    %ebx
    1800:	5e                   	pop    %esi
    1801:	5f                   	pop    %edi
    1802:	5d                   	pop    %ebp
    1803:	c3                   	ret    
    1804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1808:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    180f:	eb 87                	jmp    1798 <printint+0x28>
    1811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1818:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    181f:	90                   	nop

00001820 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1820:	f3 0f 1e fb          	endbr32 
    1824:	55                   	push   %ebp
    1825:	89 e5                	mov    %esp,%ebp
    1827:	57                   	push   %edi
    1828:	56                   	push   %esi
    1829:	53                   	push   %ebx
    182a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    182d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1830:	0f b6 1e             	movzbl (%esi),%ebx
    1833:	84 db                	test   %bl,%bl
    1835:	0f 84 b4 00 00 00    	je     18ef <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    183b:	8d 45 10             	lea    0x10(%ebp),%eax
    183e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1841:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    1844:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    1846:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1849:	eb 33                	jmp    187e <printf+0x5e>
    184b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    184f:	90                   	nop
    1850:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1853:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1858:	83 f8 25             	cmp    $0x25,%eax
    185b:	74 17                	je     1874 <printf+0x54>
  write(fd, &c, 1);
    185d:	83 ec 04             	sub    $0x4,%esp
    1860:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1863:	6a 01                	push   $0x1
    1865:	57                   	push   %edi
    1866:	ff 75 08             	pushl  0x8(%ebp)
    1869:	e8 3f fe ff ff       	call   16ad <write>
    186e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    1871:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1874:	0f b6 1e             	movzbl (%esi),%ebx
    1877:	83 c6 01             	add    $0x1,%esi
    187a:	84 db                	test   %bl,%bl
    187c:	74 71                	je     18ef <printf+0xcf>
    c = fmt[i] & 0xff;
    187e:	0f be cb             	movsbl %bl,%ecx
    1881:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1884:	85 d2                	test   %edx,%edx
    1886:	74 c8                	je     1850 <printf+0x30>
      }
    } else if(state == '%'){
    1888:	83 fa 25             	cmp    $0x25,%edx
    188b:	75 e7                	jne    1874 <printf+0x54>
      if(c == 'd'){
    188d:	83 f8 64             	cmp    $0x64,%eax
    1890:	0f 84 9a 00 00 00    	je     1930 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1896:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    189c:	83 f9 70             	cmp    $0x70,%ecx
    189f:	74 5f                	je     1900 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    18a1:	83 f8 73             	cmp    $0x73,%eax
    18a4:	0f 84 d6 00 00 00    	je     1980 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    18aa:	83 f8 63             	cmp    $0x63,%eax
    18ad:	0f 84 8d 00 00 00    	je     1940 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    18b3:	83 f8 25             	cmp    $0x25,%eax
    18b6:	0f 84 b4 00 00 00    	je     1970 <printf+0x150>
  write(fd, &c, 1);
    18bc:	83 ec 04             	sub    $0x4,%esp
    18bf:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    18c3:	6a 01                	push   $0x1
    18c5:	57                   	push   %edi
    18c6:	ff 75 08             	pushl  0x8(%ebp)
    18c9:	e8 df fd ff ff       	call   16ad <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    18ce:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    18d1:	83 c4 0c             	add    $0xc,%esp
    18d4:	6a 01                	push   $0x1
    18d6:	83 c6 01             	add    $0x1,%esi
    18d9:	57                   	push   %edi
    18da:	ff 75 08             	pushl  0x8(%ebp)
    18dd:	e8 cb fd ff ff       	call   16ad <write>
  for(i = 0; fmt[i]; i++){
    18e2:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    18e6:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    18e9:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    18eb:	84 db                	test   %bl,%bl
    18ed:	75 8f                	jne    187e <printf+0x5e>
    }
  }
}
    18ef:	8d 65 f4             	lea    -0xc(%ebp),%esp
    18f2:	5b                   	pop    %ebx
    18f3:	5e                   	pop    %esi
    18f4:	5f                   	pop    %edi
    18f5:	5d                   	pop    %ebp
    18f6:	c3                   	ret    
    18f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18fe:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1900:	83 ec 0c             	sub    $0xc,%esp
    1903:	b9 10 00 00 00       	mov    $0x10,%ecx
    1908:	6a 00                	push   $0x0
    190a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    190d:	8b 45 08             	mov    0x8(%ebp),%eax
    1910:	8b 13                	mov    (%ebx),%edx
    1912:	e8 59 fe ff ff       	call   1770 <printint>
        ap++;
    1917:	89 d8                	mov    %ebx,%eax
    1919:	83 c4 10             	add    $0x10,%esp
      state = 0;
    191c:	31 d2                	xor    %edx,%edx
        ap++;
    191e:	83 c0 04             	add    $0x4,%eax
    1921:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1924:	e9 4b ff ff ff       	jmp    1874 <printf+0x54>
    1929:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1930:	83 ec 0c             	sub    $0xc,%esp
    1933:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1938:	6a 01                	push   $0x1
    193a:	eb ce                	jmp    190a <printf+0xea>
    193c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1940:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1943:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1946:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1948:	6a 01                	push   $0x1
        ap++;
    194a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    194d:	57                   	push   %edi
    194e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1951:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1954:	e8 54 fd ff ff       	call   16ad <write>
        ap++;
    1959:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    195c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    195f:	31 d2                	xor    %edx,%edx
    1961:	e9 0e ff ff ff       	jmp    1874 <printf+0x54>
    1966:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    196d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1970:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1973:	83 ec 04             	sub    $0x4,%esp
    1976:	e9 59 ff ff ff       	jmp    18d4 <printf+0xb4>
    197b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    197f:	90                   	nop
        s = (char*)*ap;
    1980:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1983:	8b 18                	mov    (%eax),%ebx
        ap++;
    1985:	83 c0 04             	add    $0x4,%eax
    1988:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    198b:	85 db                	test   %ebx,%ebx
    198d:	74 17                	je     19a6 <printf+0x186>
        while(*s != 0){
    198f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1992:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1994:	84 c0                	test   %al,%al
    1996:	0f 84 d8 fe ff ff    	je     1874 <printf+0x54>
    199c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    199f:	89 de                	mov    %ebx,%esi
    19a1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    19a4:	eb 1a                	jmp    19c0 <printf+0x1a0>
          s = "(null)";
    19a6:	bb 44 1a 00 00       	mov    $0x1a44,%ebx
        while(*s != 0){
    19ab:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    19ae:	b8 28 00 00 00       	mov    $0x28,%eax
    19b3:	89 de                	mov    %ebx,%esi
    19b5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    19b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    19bf:	90                   	nop
  write(fd, &c, 1);
    19c0:	83 ec 04             	sub    $0x4,%esp
          s++;
    19c3:	83 c6 01             	add    $0x1,%esi
    19c6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    19c9:	6a 01                	push   $0x1
    19cb:	57                   	push   %edi
    19cc:	53                   	push   %ebx
    19cd:	e8 db fc ff ff       	call   16ad <write>
        while(*s != 0){
    19d2:	0f b6 06             	movzbl (%esi),%eax
    19d5:	83 c4 10             	add    $0x10,%esp
    19d8:	84 c0                	test   %al,%al
    19da:	75 e4                	jne    19c0 <printf+0x1a0>
    19dc:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    19df:	31 d2                	xor    %edx,%edx
    19e1:	e9 8e fe ff ff       	jmp    1874 <printf+0x54>
