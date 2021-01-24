
_lottery_test1:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
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
    1011:	57                   	push   %edi
    1012:	56                   	push   %esi
    1013:	53                   	push   %ebx
    1014:	51                   	push   %ecx
    1015:	81 ec 20 05 00 00    	sub    $0x520,%esp
   struct pstat st;
   int count = 0;
   int i = 0;
   int pid[NPROC];
   printf(1,"Spinning...\n");
    101b:	68 a8 19 00 00       	push   $0x19a8
    1020:	6a 01                	push   $0x1
    1022:	e8 b9 07 00 00       	call   17e0 <printf>
   while(i < PROC)
    1027:	8d 85 e8 fa ff ff    	lea    -0x518(%ebp),%eax
    102d:	83 c4 10             	add    $0x10,%esp
    1030:	89 85 e4 fa ff ff    	mov    %eax,-0x51c(%ebp)
   printf(1,"Spinning...\n");
    1036:	89 c3                	mov    %eax,%ebx
    1038:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    103f:	90                   	nop
   {
      pid[i] = fork();
    1040:	e8 00 06 00 00       	call   1645 <fork>
    1045:	89 03                	mov    %eax,(%ebx)
	    if(pid[i] == 0)
    1047:	85 c0                	test   %eax,%eax
    1049:	0f 84 21 01 00 00    	je     1170 <main+0x170>
   while(i < PROC)
    104f:	83 c3 04             	add    $0x4,%ebx
    1052:	8d 85 04 fb ff ff    	lea    -0x4fc(%ebp),%eax
    1058:	39 c3                	cmp    %eax,%ebx
    105a:	75 e4                	jne    1040 <main+0x40>
		    spin();
		    exit();
      }
	  i++;
   }
   sleep(500);
    105c:	83 ec 0c             	sub    $0xc,%esp
   //spin();
   check(getpinfo(&st) == 0, "getpinfo");
    105f:	8d b5 e8 fb ff ff    	lea    -0x418(%ebp),%esi
   sleep(500);
    1065:	68 f4 01 00 00       	push   $0x1f4
    106a:	e8 6e 06 00 00       	call   16dd <sleep>
   check(getpinfo(&st) == 0, "getpinfo");
    106f:	89 34 24             	mov    %esi,(%esp)
    1072:	e8 86 06 00 00       	call   16fd <getpinfo>
    1077:	83 c4 10             	add    $0x10,%esp
    107a:	89 c3                	mov    %eax,%ebx
    107c:	85 c0                	test   %eax,%eax
    107e:	0f 85 ce 00 00 00    	jne    1152 <main+0x152>
   printf(1, "\n**** PInfo ****\n");
    1084:	57                   	push   %edi
    1085:	57                   	push   %edi
    1086:	8d bd e8 fc ff ff    	lea    -0x318(%ebp),%edi
    108c:	68 ce 19 00 00       	push   $0x19ce
    1091:	6a 01                	push   $0x1
    1093:	e8 48 07 00 00       	call   17e0 <printf>
   for(i = 0; i < NPROC; i++) {
    1098:	83 c4 10             	add    $0x10,%esp
    109b:	eb 0a                	jmp    10a7 <main+0xa7>
    109d:	8d 76 00             	lea    0x0(%esi),%esi
    10a0:	83 c6 04             	add    $0x4,%esi
    10a3:	39 fe                	cmp    %edi,%esi
    10a5:	74 39                	je     10e0 <main+0xe0>
      if (st.inuse[i]) {
    10a7:	8b 0e                	mov    (%esi),%ecx
    10a9:	85 c9                	test   %ecx,%ecx
    10ab:	74 f3                	je     10a0 <main+0xa0>
	       count++;
         printf(1, "pid: %d tickets: %d ticks: %d\n", st.pid[i], st.tickets[i], st.ticks[i]);
    10ad:	83 ec 0c             	sub    $0xc,%esp
    10b0:	ff b6 00 03 00 00    	pushl  0x300(%esi)
    10b6:	83 c6 04             	add    $0x4,%esi
	       count++;
    10b9:	83 c3 01             	add    $0x1,%ebx
         printf(1, "pid: %d tickets: %d ticks: %d\n", st.pid[i], st.tickets[i], st.ticks[i]);
    10bc:	ff b6 fc 00 00 00    	pushl  0xfc(%esi)
    10c2:	ff b6 fc 01 00 00    	pushl  0x1fc(%esi)
    10c8:	68 28 1a 00 00       	push   $0x1a28
    10cd:	6a 01                	push   $0x1
    10cf:	e8 0c 07 00 00       	call   17e0 <printf>
    10d4:	83 c4 20             	add    $0x20,%esp
   for(i = 0; i < NPROC; i++) {
    10d7:	39 fe                	cmp    %edi,%esi
    10d9:	75 cc                	jne    10a7 <main+0xa7>
    10db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10df:	90                   	nop
      }
   }
   for(i = 0; i < PROC; i++)
   {
	    kill(pid[i]);
    10e0:	8b bd e4 fa ff ff    	mov    -0x51c(%ebp),%edi
    10e6:	83 ec 0c             	sub    $0xc,%esp
    10e9:	ff 37                	pushl  (%edi)
    10eb:	e8 8d 05 00 00       	call   167d <kill>
   for(i = 0; i < PROC; i++)
    10f0:	89 f8                	mov    %edi,%eax
    10f2:	8d 95 04 fb ff ff    	lea    -0x4fc(%ebp),%edx
    10f8:	83 c4 10             	add    $0x10,%esp
    10fb:	83 c0 04             	add    $0x4,%eax
    10fe:	89 85 e4 fa ff ff    	mov    %eax,-0x51c(%ebp)
    1104:	39 d0                	cmp    %edx,%eax
    1106:	75 d8                	jne    10e0 <main+0xe0>
    1108:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    110f:	90                   	nop
   }
   while (wait() > 0);
    1110:	e8 40 05 00 00       	call   1655 <wait>
    1115:	85 c0                	test   %eax,%eax
    1117:	7f f7                	jg     1110 <main+0x110>
   printf(1,"Number of processes in use %d\n", count);
    1119:	52                   	push   %edx
    111a:	53                   	push   %ebx
    111b:	68 48 1a 00 00       	push   $0x1a48
    1120:	6a 01                	push   $0x1
    1122:	e8 b9 06 00 00       	call   17e0 <printf>
   check(count == 10, "getpinfo should return 10 processes in use\n");
    1127:	83 c4 10             	add    $0x10,%esp
    112a:	83 fb 0a             	cmp    $0xa,%ebx
    112d:	74 46                	je     1175 <main+0x175>
    112f:	83 ec 0c             	sub    $0xc,%esp
    1132:	68 68 1a 00 00       	push   $0x1a68
    1137:	6a 3c                	push   $0x3c
    1139:	68 be 19 00 00       	push   $0x19be
    113e:	68 94 1a 00 00       	push   $0x1a94
    1143:	6a 01                	push   $0x1
    1145:	e8 96 06 00 00       	call   17e0 <printf>
    114a:	83 c4 20             	add    $0x20,%esp
    114d:	e8 fb 04 00 00       	call   164d <exit>
   check(getpinfo(&st) == 0, "getpinfo");
    1152:	83 ec 0c             	sub    $0xc,%esp
    1155:	68 b5 19 00 00       	push   $0x19b5
    115a:	6a 2e                	push   $0x2e
    115c:	68 be 19 00 00       	push   $0x19be
    1161:	68 f8 19 00 00       	push   $0x19f8
    1166:	6a 01                	push   $0x1
    1168:	e8 73 06 00 00       	call   17e0 <printf>
    116d:	83 c4 20             	add    $0x20,%esp
    1170:	e8 d8 04 00 00       	call   164d <exit>
   printf(1, "Should print 1 then 2");
    1175:	50                   	push   %eax
    1176:	50                   	push   %eax
    1177:	68 e0 19 00 00       	push   $0x19e0
    117c:	6a 01                	push   $0x1
    117e:	e8 5d 06 00 00       	call   17e0 <printf>
   exit();
    1183:	e8 c5 04 00 00       	call   164d <exit>
    1188:	66 90                	xchg   %ax,%ax
    118a:	66 90                	xchg   %ax,%ax
    118c:	66 90                	xchg   %ax,%ax
    118e:	66 90                	xchg   %ax,%ax

00001190 <spin>:
{
    1190:	f3 0f 1e fb          	endbr32 
}
    1194:	c3                   	ret    
    1195:	66 90                	xchg   %ax,%ax
    1197:	66 90                	xchg   %ax,%ax
    1199:	66 90                	xchg   %ax,%ax
    119b:	66 90                	xchg   %ax,%ax
    119d:	66 90                	xchg   %ax,%ax
    119f:	90                   	nop

000011a0 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    11a0:	f3 0f 1e fb          	endbr32 
    11a4:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    11a5:	31 c0                	xor    %eax,%eax
{
    11a7:	89 e5                	mov    %esp,%ebp
    11a9:	53                   	push   %ebx
    11aa:	8b 4d 08             	mov    0x8(%ebp),%ecx
    11ad:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    11b0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    11b4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    11b7:	83 c0 01             	add    $0x1,%eax
    11ba:	84 d2                	test   %dl,%dl
    11bc:	75 f2                	jne    11b0 <strcpy+0x10>
    ;
  return os;
}
    11be:	89 c8                	mov    %ecx,%eax
    11c0:	5b                   	pop    %ebx
    11c1:	5d                   	pop    %ebp
    11c2:	c3                   	ret    
    11c3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000011d0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    11d0:	f3 0f 1e fb          	endbr32 
    11d4:	55                   	push   %ebp
    11d5:	89 e5                	mov    %esp,%ebp
    11d7:	53                   	push   %ebx
    11d8:	8b 4d 08             	mov    0x8(%ebp),%ecx
    11db:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    11de:	0f b6 01             	movzbl (%ecx),%eax
    11e1:	0f b6 1a             	movzbl (%edx),%ebx
    11e4:	84 c0                	test   %al,%al
    11e6:	75 19                	jne    1201 <strcmp+0x31>
    11e8:	eb 26                	jmp    1210 <strcmp+0x40>
    11ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11f0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    11f4:	83 c1 01             	add    $0x1,%ecx
    11f7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    11fa:	0f b6 1a             	movzbl (%edx),%ebx
    11fd:	84 c0                	test   %al,%al
    11ff:	74 0f                	je     1210 <strcmp+0x40>
    1201:	38 d8                	cmp    %bl,%al
    1203:	74 eb                	je     11f0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1205:	29 d8                	sub    %ebx,%eax
}
    1207:	5b                   	pop    %ebx
    1208:	5d                   	pop    %ebp
    1209:	c3                   	ret    
    120a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1210:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1212:	29 d8                	sub    %ebx,%eax
}
    1214:	5b                   	pop    %ebx
    1215:	5d                   	pop    %ebp
    1216:	c3                   	ret    
    1217:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    121e:	66 90                	xchg   %ax,%ax

00001220 <strlen>:

uint
strlen(const char *s)
{
    1220:	f3 0f 1e fb          	endbr32 
    1224:	55                   	push   %ebp
    1225:	89 e5                	mov    %esp,%ebp
    1227:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    122a:	80 3a 00             	cmpb   $0x0,(%edx)
    122d:	74 21                	je     1250 <strlen+0x30>
    122f:	31 c0                	xor    %eax,%eax
    1231:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1238:	83 c0 01             	add    $0x1,%eax
    123b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    123f:	89 c1                	mov    %eax,%ecx
    1241:	75 f5                	jne    1238 <strlen+0x18>
    ;
  return n;
}
    1243:	89 c8                	mov    %ecx,%eax
    1245:	5d                   	pop    %ebp
    1246:	c3                   	ret    
    1247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    124e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1250:	31 c9                	xor    %ecx,%ecx
}
    1252:	5d                   	pop    %ebp
    1253:	89 c8                	mov    %ecx,%eax
    1255:	c3                   	ret    
    1256:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    125d:	8d 76 00             	lea    0x0(%esi),%esi

00001260 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1260:	f3 0f 1e fb          	endbr32 
    1264:	55                   	push   %ebp
    1265:	89 e5                	mov    %esp,%ebp
    1267:	57                   	push   %edi
    1268:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    126b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    126e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1271:	89 d7                	mov    %edx,%edi
    1273:	fc                   	cld    
    1274:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1276:	89 d0                	mov    %edx,%eax
    1278:	5f                   	pop    %edi
    1279:	5d                   	pop    %ebp
    127a:	c3                   	ret    
    127b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    127f:	90                   	nop

00001280 <strchr>:

char*
strchr(const char *s, char c)
{
    1280:	f3 0f 1e fb          	endbr32 
    1284:	55                   	push   %ebp
    1285:	89 e5                	mov    %esp,%ebp
    1287:	8b 45 08             	mov    0x8(%ebp),%eax
    128a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    128e:	0f b6 10             	movzbl (%eax),%edx
    1291:	84 d2                	test   %dl,%dl
    1293:	75 16                	jne    12ab <strchr+0x2b>
    1295:	eb 21                	jmp    12b8 <strchr+0x38>
    1297:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    129e:	66 90                	xchg   %ax,%ax
    12a0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    12a4:	83 c0 01             	add    $0x1,%eax
    12a7:	84 d2                	test   %dl,%dl
    12a9:	74 0d                	je     12b8 <strchr+0x38>
    if(*s == c)
    12ab:	38 d1                	cmp    %dl,%cl
    12ad:	75 f1                	jne    12a0 <strchr+0x20>
      return (char*)s;
  return 0;
}
    12af:	5d                   	pop    %ebp
    12b0:	c3                   	ret    
    12b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    12b8:	31 c0                	xor    %eax,%eax
}
    12ba:	5d                   	pop    %ebp
    12bb:	c3                   	ret    
    12bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000012c0 <gets>:

char*
gets(char *buf, int max)
{
    12c0:	f3 0f 1e fb          	endbr32 
    12c4:	55                   	push   %ebp
    12c5:	89 e5                	mov    %esp,%ebp
    12c7:	57                   	push   %edi
    12c8:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    12c9:	31 f6                	xor    %esi,%esi
{
    12cb:	53                   	push   %ebx
    12cc:	89 f3                	mov    %esi,%ebx
    12ce:	83 ec 1c             	sub    $0x1c,%esp
    12d1:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    12d4:	eb 33                	jmp    1309 <gets+0x49>
    12d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12dd:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    12e0:	83 ec 04             	sub    $0x4,%esp
    12e3:	8d 45 e7             	lea    -0x19(%ebp),%eax
    12e6:	6a 01                	push   $0x1
    12e8:	50                   	push   %eax
    12e9:	6a 00                	push   $0x0
    12eb:	e8 75 03 00 00       	call   1665 <read>
    if(cc < 1)
    12f0:	83 c4 10             	add    $0x10,%esp
    12f3:	85 c0                	test   %eax,%eax
    12f5:	7e 1c                	jle    1313 <gets+0x53>
      break;
    buf[i++] = c;
    12f7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    12fb:	83 c7 01             	add    $0x1,%edi
    12fe:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1301:	3c 0a                	cmp    $0xa,%al
    1303:	74 23                	je     1328 <gets+0x68>
    1305:	3c 0d                	cmp    $0xd,%al
    1307:	74 1f                	je     1328 <gets+0x68>
  for(i=0; i+1 < max; ){
    1309:	83 c3 01             	add    $0x1,%ebx
    130c:	89 fe                	mov    %edi,%esi
    130e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1311:	7c cd                	jl     12e0 <gets+0x20>
    1313:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    1315:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1318:	c6 03 00             	movb   $0x0,(%ebx)
}
    131b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    131e:	5b                   	pop    %ebx
    131f:	5e                   	pop    %esi
    1320:	5f                   	pop    %edi
    1321:	5d                   	pop    %ebp
    1322:	c3                   	ret    
    1323:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1327:	90                   	nop
    1328:	8b 75 08             	mov    0x8(%ebp),%esi
    132b:	8b 45 08             	mov    0x8(%ebp),%eax
    132e:	01 de                	add    %ebx,%esi
    1330:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    1332:	c6 03 00             	movb   $0x0,(%ebx)
}
    1335:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1338:	5b                   	pop    %ebx
    1339:	5e                   	pop    %esi
    133a:	5f                   	pop    %edi
    133b:	5d                   	pop    %ebp
    133c:	c3                   	ret    
    133d:	8d 76 00             	lea    0x0(%esi),%esi

00001340 <stat>:

int
stat(const char *n, struct stat *st)
{
    1340:	f3 0f 1e fb          	endbr32 
    1344:	55                   	push   %ebp
    1345:	89 e5                	mov    %esp,%ebp
    1347:	56                   	push   %esi
    1348:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1349:	83 ec 08             	sub    $0x8,%esp
    134c:	6a 00                	push   $0x0
    134e:	ff 75 08             	pushl  0x8(%ebp)
    1351:	e8 37 03 00 00       	call   168d <open>
  if(fd < 0)
    1356:	83 c4 10             	add    $0x10,%esp
    1359:	85 c0                	test   %eax,%eax
    135b:	78 2b                	js     1388 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    135d:	83 ec 08             	sub    $0x8,%esp
    1360:	ff 75 0c             	pushl  0xc(%ebp)
    1363:	89 c3                	mov    %eax,%ebx
    1365:	50                   	push   %eax
    1366:	e8 3a 03 00 00       	call   16a5 <fstat>
  close(fd);
    136b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    136e:	89 c6                	mov    %eax,%esi
  close(fd);
    1370:	e8 00 03 00 00       	call   1675 <close>
  return r;
    1375:	83 c4 10             	add    $0x10,%esp
}
    1378:	8d 65 f8             	lea    -0x8(%ebp),%esp
    137b:	89 f0                	mov    %esi,%eax
    137d:	5b                   	pop    %ebx
    137e:	5e                   	pop    %esi
    137f:	5d                   	pop    %ebp
    1380:	c3                   	ret    
    1381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1388:	be ff ff ff ff       	mov    $0xffffffff,%esi
    138d:	eb e9                	jmp    1378 <stat+0x38>
    138f:	90                   	nop

00001390 <atoi>:

int
atoi(const char *s)
{
    1390:	f3 0f 1e fb          	endbr32 
    1394:	55                   	push   %ebp
    1395:	89 e5                	mov    %esp,%ebp
    1397:	53                   	push   %ebx
    1398:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    139b:	0f be 02             	movsbl (%edx),%eax
    139e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    13a1:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    13a4:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    13a9:	77 1a                	ja     13c5 <atoi+0x35>
    13ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13af:	90                   	nop
    n = n*10 + *s++ - '0';
    13b0:	83 c2 01             	add    $0x1,%edx
    13b3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    13b6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    13ba:	0f be 02             	movsbl (%edx),%eax
    13bd:	8d 58 d0             	lea    -0x30(%eax),%ebx
    13c0:	80 fb 09             	cmp    $0x9,%bl
    13c3:	76 eb                	jbe    13b0 <atoi+0x20>
  return n;
}
    13c5:	89 c8                	mov    %ecx,%eax
    13c7:	5b                   	pop    %ebx
    13c8:	5d                   	pop    %ebp
    13c9:	c3                   	ret    
    13ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000013d0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    13d0:	f3 0f 1e fb          	endbr32 
    13d4:	55                   	push   %ebp
    13d5:	89 e5                	mov    %esp,%ebp
    13d7:	57                   	push   %edi
    13d8:	8b 45 10             	mov    0x10(%ebp),%eax
    13db:	8b 55 08             	mov    0x8(%ebp),%edx
    13de:	56                   	push   %esi
    13df:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    13e2:	85 c0                	test   %eax,%eax
    13e4:	7e 0f                	jle    13f5 <memmove+0x25>
    13e6:	01 d0                	add    %edx,%eax
  dst = vdst;
    13e8:	89 d7                	mov    %edx,%edi
    13ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    13f0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    13f1:	39 f8                	cmp    %edi,%eax
    13f3:	75 fb                	jne    13f0 <memmove+0x20>
  return vdst;
}
    13f5:	5e                   	pop    %esi
    13f6:	89 d0                	mov    %edx,%eax
    13f8:	5f                   	pop    %edi
    13f9:	5d                   	pop    %ebp
    13fa:	c3                   	ret    
    13fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13ff:	90                   	nop

00001400 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    1400:	f3 0f 1e fb          	endbr32 
    1404:	55                   	push   %ebp
    1405:	89 e5                	mov    %esp,%ebp
    1407:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    140a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    140d:	50                   	push   %eax
    140e:	e8 0a 03 00 00       	call   171d <join>
  
  return x;
}
    1413:	c9                   	leave  
    1414:	c3                   	ret    
    1415:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    141c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001420 <lock_init>:

void lock_init(struct lock_t *lk){
    1420:	f3 0f 1e fb          	endbr32 
    1424:	55                   	push   %ebp
    1425:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    1427:	8b 45 08             	mov    0x8(%ebp),%eax
    142a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1430:	5d                   	pop    %ebp
    1431:	c3                   	ret    
    1432:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1439:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001440 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    1440:	f3 0f 1e fb          	endbr32 
    1444:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1445:	b9 01 00 00 00       	mov    $0x1,%ecx
    144a:	89 e5                	mov    %esp,%ebp
    144c:	8b 55 08             	mov    0x8(%ebp),%edx
    144f:	90                   	nop
    1450:	89 c8                	mov    %ecx,%eax
    1452:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1455:	85 c0                	test   %eax,%eax
    1457:	75 f7                	jne    1450 <lock_acquire+0x10>
}
    1459:	5d                   	pop    %ebp
    145a:	c3                   	ret    
    145b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    145f:	90                   	nop

00001460 <lock_release>:
void lock_release(struct lock_t *lk){
    1460:	f3 0f 1e fb          	endbr32 
    1464:	55                   	push   %ebp
    1465:	31 c0                	xor    %eax,%eax
    1467:	89 e5                	mov    %esp,%ebp
    1469:	8b 55 08             	mov    0x8(%ebp),%edx
    146c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    146f:	5d                   	pop    %ebp
    1470:	c3                   	ret    
    1471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1478:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    147f:	90                   	nop

00001480 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1480:	f3 0f 1e fb          	endbr32 
    1484:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1485:	a1 2c 1e 00 00       	mov    0x1e2c,%eax
{
    148a:	89 e5                	mov    %esp,%ebp
    148c:	57                   	push   %edi
    148d:	56                   	push   %esi
    148e:	53                   	push   %ebx
    148f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1492:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1494:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1497:	39 c8                	cmp    %ecx,%eax
    1499:	73 15                	jae    14b0 <free+0x30>
    149b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    149f:	90                   	nop
    14a0:	39 d1                	cmp    %edx,%ecx
    14a2:	72 14                	jb     14b8 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    14a4:	39 d0                	cmp    %edx,%eax
    14a6:	73 10                	jae    14b8 <free+0x38>
{
    14a8:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    14aa:	8b 10                	mov    (%eax),%edx
    14ac:	39 c8                	cmp    %ecx,%eax
    14ae:	72 f0                	jb     14a0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    14b0:	39 d0                	cmp    %edx,%eax
    14b2:	72 f4                	jb     14a8 <free+0x28>
    14b4:	39 d1                	cmp    %edx,%ecx
    14b6:	73 f0                	jae    14a8 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    14b8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    14bb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    14be:	39 fa                	cmp    %edi,%edx
    14c0:	74 1e                	je     14e0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    14c2:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    14c5:	8b 50 04             	mov    0x4(%eax),%edx
    14c8:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    14cb:	39 f1                	cmp    %esi,%ecx
    14cd:	74 28                	je     14f7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    14cf:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    14d1:	5b                   	pop    %ebx
  freep = p;
    14d2:	a3 2c 1e 00 00       	mov    %eax,0x1e2c
}
    14d7:	5e                   	pop    %esi
    14d8:	5f                   	pop    %edi
    14d9:	5d                   	pop    %ebp
    14da:	c3                   	ret    
    14db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14df:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    14e0:	03 72 04             	add    0x4(%edx),%esi
    14e3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    14e6:	8b 10                	mov    (%eax),%edx
    14e8:	8b 12                	mov    (%edx),%edx
    14ea:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    14ed:	8b 50 04             	mov    0x4(%eax),%edx
    14f0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    14f3:	39 f1                	cmp    %esi,%ecx
    14f5:	75 d8                	jne    14cf <free+0x4f>
    p->s.size += bp->s.size;
    14f7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    14fa:	a3 2c 1e 00 00       	mov    %eax,0x1e2c
    p->s.size += bp->s.size;
    14ff:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1502:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1505:	89 10                	mov    %edx,(%eax)
}
    1507:	5b                   	pop    %ebx
    1508:	5e                   	pop    %esi
    1509:	5f                   	pop    %edi
    150a:	5d                   	pop    %ebp
    150b:	c3                   	ret    
    150c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001510 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1510:	f3 0f 1e fb          	endbr32 
    1514:	55                   	push   %ebp
    1515:	89 e5                	mov    %esp,%ebp
    1517:	57                   	push   %edi
    1518:	56                   	push   %esi
    1519:	53                   	push   %ebx
    151a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    151d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1520:	8b 3d 2c 1e 00 00    	mov    0x1e2c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1526:	8d 70 07             	lea    0x7(%eax),%esi
    1529:	c1 ee 03             	shr    $0x3,%esi
    152c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    152f:	85 ff                	test   %edi,%edi
    1531:	0f 84 a9 00 00 00    	je     15e0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1537:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    1539:	8b 48 04             	mov    0x4(%eax),%ecx
    153c:	39 f1                	cmp    %esi,%ecx
    153e:	73 6d                	jae    15ad <malloc+0x9d>
    1540:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1546:	bb 00 10 00 00       	mov    $0x1000,%ebx
    154b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    154e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1555:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1558:	eb 17                	jmp    1571 <malloc+0x61>
    155a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1560:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1562:	8b 4a 04             	mov    0x4(%edx),%ecx
    1565:	39 f1                	cmp    %esi,%ecx
    1567:	73 4f                	jae    15b8 <malloc+0xa8>
    1569:	8b 3d 2c 1e 00 00    	mov    0x1e2c,%edi
    156f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1571:	39 c7                	cmp    %eax,%edi
    1573:	75 eb                	jne    1560 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1575:	83 ec 0c             	sub    $0xc,%esp
    1578:	ff 75 e4             	pushl  -0x1c(%ebp)
    157b:	e8 55 01 00 00       	call   16d5 <sbrk>
  if(p == (char*)-1)
    1580:	83 c4 10             	add    $0x10,%esp
    1583:	83 f8 ff             	cmp    $0xffffffff,%eax
    1586:	74 1b                	je     15a3 <malloc+0x93>
  hp->s.size = nu;
    1588:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    158b:	83 ec 0c             	sub    $0xc,%esp
    158e:	83 c0 08             	add    $0x8,%eax
    1591:	50                   	push   %eax
    1592:	e8 e9 fe ff ff       	call   1480 <free>
  return freep;
    1597:	a1 2c 1e 00 00       	mov    0x1e2c,%eax
      if((p = morecore(nunits)) == 0)
    159c:	83 c4 10             	add    $0x10,%esp
    159f:	85 c0                	test   %eax,%eax
    15a1:	75 bd                	jne    1560 <malloc+0x50>
        return 0;
  }
}
    15a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    15a6:	31 c0                	xor    %eax,%eax
}
    15a8:	5b                   	pop    %ebx
    15a9:	5e                   	pop    %esi
    15aa:	5f                   	pop    %edi
    15ab:	5d                   	pop    %ebp
    15ac:	c3                   	ret    
    if(p->s.size >= nunits){
    15ad:	89 c2                	mov    %eax,%edx
    15af:	89 f8                	mov    %edi,%eax
    15b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    15b8:	39 ce                	cmp    %ecx,%esi
    15ba:	74 54                	je     1610 <malloc+0x100>
        p->s.size -= nunits;
    15bc:	29 f1                	sub    %esi,%ecx
    15be:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    15c1:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    15c4:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    15c7:	a3 2c 1e 00 00       	mov    %eax,0x1e2c
}
    15cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    15cf:	8d 42 08             	lea    0x8(%edx),%eax
}
    15d2:	5b                   	pop    %ebx
    15d3:	5e                   	pop    %esi
    15d4:	5f                   	pop    %edi
    15d5:	5d                   	pop    %ebp
    15d6:	c3                   	ret    
    15d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15de:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    15e0:	c7 05 2c 1e 00 00 30 	movl   $0x1e30,0x1e2c
    15e7:	1e 00 00 
    base.s.size = 0;
    15ea:	bf 30 1e 00 00       	mov    $0x1e30,%edi
    base.s.ptr = freep = prevp = &base;
    15ef:	c7 05 30 1e 00 00 30 	movl   $0x1e30,0x1e30
    15f6:	1e 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    15f9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    15fb:	c7 05 34 1e 00 00 00 	movl   $0x0,0x1e34
    1602:	00 00 00 
    if(p->s.size >= nunits){
    1605:	e9 36 ff ff ff       	jmp    1540 <malloc+0x30>
    160a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1610:	8b 0a                	mov    (%edx),%ecx
    1612:	89 08                	mov    %ecx,(%eax)
    1614:	eb b1                	jmp    15c7 <malloc+0xb7>
    1616:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    161d:	8d 76 00             	lea    0x0(%esi),%esi

00001620 <thread_create>:
{
    1620:	f3 0f 1e fb          	endbr32 
    1624:	55                   	push   %ebp
    1625:	89 e5                	mov    %esp,%ebp
    1627:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    162a:	68 00 10 00 00       	push   $0x1000
    162f:	e8 dc fe ff ff       	call   1510 <malloc>
return clone(start_routine,arg1,arg2,stack);
    1634:	50                   	push   %eax
    1635:	ff 75 10             	pushl  0x10(%ebp)
    1638:	ff 75 0c             	pushl  0xc(%ebp)
    163b:	ff 75 08             	pushl  0x8(%ebp)
    163e:	e8 d2 00 00 00       	call   1715 <clone>
}
    1643:	c9                   	leave  
    1644:	c3                   	ret    

00001645 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1645:	b8 01 00 00 00       	mov    $0x1,%eax
    164a:	cd 40                	int    $0x40
    164c:	c3                   	ret    

0000164d <exit>:
SYSCALL(exit)
    164d:	b8 02 00 00 00       	mov    $0x2,%eax
    1652:	cd 40                	int    $0x40
    1654:	c3                   	ret    

00001655 <wait>:
SYSCALL(wait)
    1655:	b8 03 00 00 00       	mov    $0x3,%eax
    165a:	cd 40                	int    $0x40
    165c:	c3                   	ret    

0000165d <pipe>:
SYSCALL(pipe)
    165d:	b8 04 00 00 00       	mov    $0x4,%eax
    1662:	cd 40                	int    $0x40
    1664:	c3                   	ret    

00001665 <read>:
SYSCALL(read)
    1665:	b8 05 00 00 00       	mov    $0x5,%eax
    166a:	cd 40                	int    $0x40
    166c:	c3                   	ret    

0000166d <write>:
SYSCALL(write)
    166d:	b8 10 00 00 00       	mov    $0x10,%eax
    1672:	cd 40                	int    $0x40
    1674:	c3                   	ret    

00001675 <close>:
SYSCALL(close)
    1675:	b8 15 00 00 00       	mov    $0x15,%eax
    167a:	cd 40                	int    $0x40
    167c:	c3                   	ret    

0000167d <kill>:
SYSCALL(kill)
    167d:	b8 06 00 00 00       	mov    $0x6,%eax
    1682:	cd 40                	int    $0x40
    1684:	c3                   	ret    

00001685 <exec>:
SYSCALL(exec)
    1685:	b8 07 00 00 00       	mov    $0x7,%eax
    168a:	cd 40                	int    $0x40
    168c:	c3                   	ret    

0000168d <open>:
SYSCALL(open)
    168d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1692:	cd 40                	int    $0x40
    1694:	c3                   	ret    

00001695 <mknod>:
SYSCALL(mknod)
    1695:	b8 11 00 00 00       	mov    $0x11,%eax
    169a:	cd 40                	int    $0x40
    169c:	c3                   	ret    

0000169d <unlink>:
SYSCALL(unlink)
    169d:	b8 12 00 00 00       	mov    $0x12,%eax
    16a2:	cd 40                	int    $0x40
    16a4:	c3                   	ret    

000016a5 <fstat>:
SYSCALL(fstat)
    16a5:	b8 08 00 00 00       	mov    $0x8,%eax
    16aa:	cd 40                	int    $0x40
    16ac:	c3                   	ret    

000016ad <link>:
SYSCALL(link)
    16ad:	b8 13 00 00 00       	mov    $0x13,%eax
    16b2:	cd 40                	int    $0x40
    16b4:	c3                   	ret    

000016b5 <mkdir>:
SYSCALL(mkdir)
    16b5:	b8 14 00 00 00       	mov    $0x14,%eax
    16ba:	cd 40                	int    $0x40
    16bc:	c3                   	ret    

000016bd <chdir>:
SYSCALL(chdir)
    16bd:	b8 09 00 00 00       	mov    $0x9,%eax
    16c2:	cd 40                	int    $0x40
    16c4:	c3                   	ret    

000016c5 <dup>:
SYSCALL(dup)
    16c5:	b8 0a 00 00 00       	mov    $0xa,%eax
    16ca:	cd 40                	int    $0x40
    16cc:	c3                   	ret    

000016cd <getpid>:
SYSCALL(getpid)
    16cd:	b8 0b 00 00 00       	mov    $0xb,%eax
    16d2:	cd 40                	int    $0x40
    16d4:	c3                   	ret    

000016d5 <sbrk>:
SYSCALL(sbrk)
    16d5:	b8 0c 00 00 00       	mov    $0xc,%eax
    16da:	cd 40                	int    $0x40
    16dc:	c3                   	ret    

000016dd <sleep>:
SYSCALL(sleep)
    16dd:	b8 0d 00 00 00       	mov    $0xd,%eax
    16e2:	cd 40                	int    $0x40
    16e4:	c3                   	ret    

000016e5 <uptime>:
SYSCALL(uptime)
    16e5:	b8 0e 00 00 00       	mov    $0xe,%eax
    16ea:	cd 40                	int    $0x40
    16ec:	c3                   	ret    

000016ed <count>:
SYSCALL(count)
    16ed:	b8 16 00 00 00       	mov    $0x16,%eax
    16f2:	cd 40                	int    $0x40
    16f4:	c3                   	ret    

000016f5 <settickets>:

SYSCALL(settickets)
    16f5:	b8 17 00 00 00       	mov    $0x17,%eax
    16fa:	cd 40                	int    $0x40
    16fc:	c3                   	ret    

000016fd <getpinfo>:
SYSCALL(getpinfo)
    16fd:	b8 18 00 00 00       	mov    $0x18,%eax
    1702:	cd 40                	int    $0x40
    1704:	c3                   	ret    

00001705 <mprotect>:

SYSCALL(mprotect)
    1705:	b8 19 00 00 00       	mov    $0x19,%eax
    170a:	cd 40                	int    $0x40
    170c:	c3                   	ret    

0000170d <munprotect>:
SYSCALL(munprotect)
    170d:	b8 1a 00 00 00       	mov    $0x1a,%eax
    1712:	cd 40                	int    $0x40
    1714:	c3                   	ret    

00001715 <clone>:

SYSCALL(clone)
    1715:	b8 1b 00 00 00       	mov    $0x1b,%eax
    171a:	cd 40                	int    $0x40
    171c:	c3                   	ret    

0000171d <join>:
SYSCALL(join)
    171d:	b8 1c 00 00 00       	mov    $0x1c,%eax
    1722:	cd 40                	int    $0x40
    1724:	c3                   	ret    
    1725:	66 90                	xchg   %ax,%ax
    1727:	66 90                	xchg   %ax,%ax
    1729:	66 90                	xchg   %ax,%ax
    172b:	66 90                	xchg   %ax,%ax
    172d:	66 90                	xchg   %ax,%ax
    172f:	90                   	nop

00001730 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1730:	55                   	push   %ebp
    1731:	89 e5                	mov    %esp,%ebp
    1733:	57                   	push   %edi
    1734:	56                   	push   %esi
    1735:	53                   	push   %ebx
    1736:	83 ec 3c             	sub    $0x3c,%esp
    1739:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    173c:	89 d1                	mov    %edx,%ecx
{
    173e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    1741:	85 d2                	test   %edx,%edx
    1743:	0f 89 7f 00 00 00    	jns    17c8 <printint+0x98>
    1749:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    174d:	74 79                	je     17c8 <printint+0x98>
    neg = 1;
    174f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1756:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1758:	31 db                	xor    %ebx,%ebx
    175a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    175d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1760:	89 c8                	mov    %ecx,%eax
    1762:	31 d2                	xor    %edx,%edx
    1764:	89 cf                	mov    %ecx,%edi
    1766:	f7 75 c4             	divl   -0x3c(%ebp)
    1769:	0f b6 92 c4 1a 00 00 	movzbl 0x1ac4(%edx),%edx
    1770:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1773:	89 d8                	mov    %ebx,%eax
    1775:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1778:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    177b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    177e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1781:	76 dd                	jbe    1760 <printint+0x30>
  if(neg)
    1783:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1786:	85 c9                	test   %ecx,%ecx
    1788:	74 0c                	je     1796 <printint+0x66>
    buf[i++] = '-';
    178a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    178f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1791:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1796:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1799:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    179d:	eb 07                	jmp    17a6 <printint+0x76>
    179f:	90                   	nop
    17a0:	0f b6 13             	movzbl (%ebx),%edx
    17a3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    17a6:	83 ec 04             	sub    $0x4,%esp
    17a9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    17ac:	6a 01                	push   $0x1
    17ae:	56                   	push   %esi
    17af:	57                   	push   %edi
    17b0:	e8 b8 fe ff ff       	call   166d <write>
  while(--i >= 0)
    17b5:	83 c4 10             	add    $0x10,%esp
    17b8:	39 de                	cmp    %ebx,%esi
    17ba:	75 e4                	jne    17a0 <printint+0x70>
    putc(fd, buf[i]);
}
    17bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    17bf:	5b                   	pop    %ebx
    17c0:	5e                   	pop    %esi
    17c1:	5f                   	pop    %edi
    17c2:	5d                   	pop    %ebp
    17c3:	c3                   	ret    
    17c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    17c8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    17cf:	eb 87                	jmp    1758 <printint+0x28>
    17d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17d8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17df:	90                   	nop

000017e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    17e0:	f3 0f 1e fb          	endbr32 
    17e4:	55                   	push   %ebp
    17e5:	89 e5                	mov    %esp,%ebp
    17e7:	57                   	push   %edi
    17e8:	56                   	push   %esi
    17e9:	53                   	push   %ebx
    17ea:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    17ed:	8b 75 0c             	mov    0xc(%ebp),%esi
    17f0:	0f b6 1e             	movzbl (%esi),%ebx
    17f3:	84 db                	test   %bl,%bl
    17f5:	0f 84 b4 00 00 00    	je     18af <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    17fb:	8d 45 10             	lea    0x10(%ebp),%eax
    17fe:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1801:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    1804:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    1806:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1809:	eb 33                	jmp    183e <printf+0x5e>
    180b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    180f:	90                   	nop
    1810:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1813:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1818:	83 f8 25             	cmp    $0x25,%eax
    181b:	74 17                	je     1834 <printf+0x54>
  write(fd, &c, 1);
    181d:	83 ec 04             	sub    $0x4,%esp
    1820:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1823:	6a 01                	push   $0x1
    1825:	57                   	push   %edi
    1826:	ff 75 08             	pushl  0x8(%ebp)
    1829:	e8 3f fe ff ff       	call   166d <write>
    182e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    1831:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1834:	0f b6 1e             	movzbl (%esi),%ebx
    1837:	83 c6 01             	add    $0x1,%esi
    183a:	84 db                	test   %bl,%bl
    183c:	74 71                	je     18af <printf+0xcf>
    c = fmt[i] & 0xff;
    183e:	0f be cb             	movsbl %bl,%ecx
    1841:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1844:	85 d2                	test   %edx,%edx
    1846:	74 c8                	je     1810 <printf+0x30>
      }
    } else if(state == '%'){
    1848:	83 fa 25             	cmp    $0x25,%edx
    184b:	75 e7                	jne    1834 <printf+0x54>
      if(c == 'd'){
    184d:	83 f8 64             	cmp    $0x64,%eax
    1850:	0f 84 9a 00 00 00    	je     18f0 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1856:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    185c:	83 f9 70             	cmp    $0x70,%ecx
    185f:	74 5f                	je     18c0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1861:	83 f8 73             	cmp    $0x73,%eax
    1864:	0f 84 d6 00 00 00    	je     1940 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    186a:	83 f8 63             	cmp    $0x63,%eax
    186d:	0f 84 8d 00 00 00    	je     1900 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1873:	83 f8 25             	cmp    $0x25,%eax
    1876:	0f 84 b4 00 00 00    	je     1930 <printf+0x150>
  write(fd, &c, 1);
    187c:	83 ec 04             	sub    $0x4,%esp
    187f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1883:	6a 01                	push   $0x1
    1885:	57                   	push   %edi
    1886:	ff 75 08             	pushl  0x8(%ebp)
    1889:	e8 df fd ff ff       	call   166d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    188e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1891:	83 c4 0c             	add    $0xc,%esp
    1894:	6a 01                	push   $0x1
    1896:	83 c6 01             	add    $0x1,%esi
    1899:	57                   	push   %edi
    189a:	ff 75 08             	pushl  0x8(%ebp)
    189d:	e8 cb fd ff ff       	call   166d <write>
  for(i = 0; fmt[i]; i++){
    18a2:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    18a6:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    18a9:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    18ab:	84 db                	test   %bl,%bl
    18ad:	75 8f                	jne    183e <printf+0x5e>
    }
  }
}
    18af:	8d 65 f4             	lea    -0xc(%ebp),%esp
    18b2:	5b                   	pop    %ebx
    18b3:	5e                   	pop    %esi
    18b4:	5f                   	pop    %edi
    18b5:	5d                   	pop    %ebp
    18b6:	c3                   	ret    
    18b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18be:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    18c0:	83 ec 0c             	sub    $0xc,%esp
    18c3:	b9 10 00 00 00       	mov    $0x10,%ecx
    18c8:	6a 00                	push   $0x0
    18ca:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    18cd:	8b 45 08             	mov    0x8(%ebp),%eax
    18d0:	8b 13                	mov    (%ebx),%edx
    18d2:	e8 59 fe ff ff       	call   1730 <printint>
        ap++;
    18d7:	89 d8                	mov    %ebx,%eax
    18d9:	83 c4 10             	add    $0x10,%esp
      state = 0;
    18dc:	31 d2                	xor    %edx,%edx
        ap++;
    18de:	83 c0 04             	add    $0x4,%eax
    18e1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    18e4:	e9 4b ff ff ff       	jmp    1834 <printf+0x54>
    18e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    18f0:	83 ec 0c             	sub    $0xc,%esp
    18f3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    18f8:	6a 01                	push   $0x1
    18fa:	eb ce                	jmp    18ca <printf+0xea>
    18fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1900:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1903:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1906:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1908:	6a 01                	push   $0x1
        ap++;
    190a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    190d:	57                   	push   %edi
    190e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1911:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1914:	e8 54 fd ff ff       	call   166d <write>
        ap++;
    1919:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    191c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    191f:	31 d2                	xor    %edx,%edx
    1921:	e9 0e ff ff ff       	jmp    1834 <printf+0x54>
    1926:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    192d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1930:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1933:	83 ec 04             	sub    $0x4,%esp
    1936:	e9 59 ff ff ff       	jmp    1894 <printf+0xb4>
    193b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    193f:	90                   	nop
        s = (char*)*ap;
    1940:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1943:	8b 18                	mov    (%eax),%ebx
        ap++;
    1945:	83 c0 04             	add    $0x4,%eax
    1948:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    194b:	85 db                	test   %ebx,%ebx
    194d:	74 17                	je     1966 <printf+0x186>
        while(*s != 0){
    194f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1952:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1954:	84 c0                	test   %al,%al
    1956:	0f 84 d8 fe ff ff    	je     1834 <printf+0x54>
    195c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    195f:	89 de                	mov    %ebx,%esi
    1961:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1964:	eb 1a                	jmp    1980 <printf+0x1a0>
          s = "(null)";
    1966:	bb ba 1a 00 00       	mov    $0x1aba,%ebx
        while(*s != 0){
    196b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    196e:	b8 28 00 00 00       	mov    $0x28,%eax
    1973:	89 de                	mov    %ebx,%esi
    1975:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1978:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    197f:	90                   	nop
  write(fd, &c, 1);
    1980:	83 ec 04             	sub    $0x4,%esp
          s++;
    1983:	83 c6 01             	add    $0x1,%esi
    1986:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1989:	6a 01                	push   $0x1
    198b:	57                   	push   %edi
    198c:	53                   	push   %ebx
    198d:	e8 db fc ff ff       	call   166d <write>
        while(*s != 0){
    1992:	0f b6 06             	movzbl (%esi),%eax
    1995:	83 c4 10             	add    $0x10,%esp
    1998:	84 c0                	test   %al,%al
    199a:	75 e4                	jne    1980 <printf+0x1a0>
    199c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    199f:	31 d2                	xor    %edx,%edx
    19a1:	e9 8e fe ff ff       	jmp    1834 <printf+0x54>
