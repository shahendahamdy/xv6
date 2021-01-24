
_init:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:

char *argv[] = { "sh", 0 };

int
main(void)
{
    1000:	f3 0f 1e fb          	endbr32 
    1004:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1008:	83 e4 f0             	and    $0xfffffff0,%esp
    100b:	ff 71 fc             	pushl  -0x4(%ecx)
    100e:	55                   	push   %ebp
    100f:	89 e5                	mov    %esp,%ebp
    1011:	53                   	push   %ebx
    1012:	51                   	push   %ecx
  int pid, wpid;

  if(open("console", O_RDWR) < 0){
    1013:	83 ec 08             	sub    $0x8,%esp
    1016:	6a 02                	push   $0x2
    1018:	68 f8 18 00 00       	push   $0x18f8
    101d:	e8 bb 05 00 00       	call   15dd <open>
    1022:	83 c4 10             	add    $0x10,%esp
    1025:	85 c0                	test   %eax,%eax
    1027:	0f 88 9b 00 00 00    	js     10c8 <main+0xc8>
    mknod("console", 1, 1);
    open("console", O_RDWR);
  }
  dup(0);  // stdout
    102d:	83 ec 0c             	sub    $0xc,%esp
    1030:	6a 00                	push   $0x0
    1032:	e8 de 05 00 00       	call   1615 <dup>
  dup(0);  // stderr
    1037:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    103e:	e8 d2 05 00 00       	call   1615 <dup>
    1043:	83 c4 10             	add    $0x10,%esp
    1046:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    104d:	8d 76 00             	lea    0x0(%esi),%esi

  for(;;){
    printf(1, "init: starting sh\n");
    1050:	83 ec 08             	sub    $0x8,%esp
    1053:	68 00 19 00 00       	push   $0x1900
    1058:	6a 01                	push   $0x1
    105a:	e8 d1 06 00 00       	call   1730 <printf>
    pid = fork();
    105f:	e8 31 05 00 00       	call   1595 <fork>
    if(pid < 0){
    1064:	83 c4 10             	add    $0x10,%esp
    pid = fork();
    1067:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
    1069:	85 c0                	test   %eax,%eax
    106b:	78 24                	js     1091 <main+0x91>
      printf(1, "init: fork failed\n");
      exit();
    }
    if(pid == 0){
    106d:	74 35                	je     10a4 <main+0xa4>
    106f:	90                   	nop
      exec("sh", argv);
      printf(1, "init: exec sh failed\n");
      exit();
    }
    while((wpid=wait()) >= 0 && wpid != pid)
    1070:	e8 30 05 00 00       	call   15a5 <wait>
    1075:	85 c0                	test   %eax,%eax
    1077:	78 d7                	js     1050 <main+0x50>
    1079:	39 c3                	cmp    %eax,%ebx
    107b:	74 d3                	je     1050 <main+0x50>
      printf(1, "zombie!\n");
    107d:	83 ec 08             	sub    $0x8,%esp
    1080:	68 3f 19 00 00       	push   $0x193f
    1085:	6a 01                	push   $0x1
    1087:	e8 a4 06 00 00       	call   1730 <printf>
    108c:	83 c4 10             	add    $0x10,%esp
    108f:	eb df                	jmp    1070 <main+0x70>
      printf(1, "init: fork failed\n");
    1091:	53                   	push   %ebx
    1092:	53                   	push   %ebx
    1093:	68 13 19 00 00       	push   $0x1913
    1098:	6a 01                	push   $0x1
    109a:	e8 91 06 00 00       	call   1730 <printf>
      exit();
    109f:	e8 f9 04 00 00       	call   159d <exit>
      exec("sh", argv);
    10a4:	50                   	push   %eax
    10a5:	50                   	push   %eax
    10a6:	68 9c 1c 00 00       	push   $0x1c9c
    10ab:	68 26 19 00 00       	push   $0x1926
    10b0:	e8 20 05 00 00       	call   15d5 <exec>
      printf(1, "init: exec sh failed\n");
    10b5:	5a                   	pop    %edx
    10b6:	59                   	pop    %ecx
    10b7:	68 29 19 00 00       	push   $0x1929
    10bc:	6a 01                	push   $0x1
    10be:	e8 6d 06 00 00       	call   1730 <printf>
      exit();
    10c3:	e8 d5 04 00 00       	call   159d <exit>
    mknod("console", 1, 1);
    10c8:	50                   	push   %eax
    10c9:	6a 01                	push   $0x1
    10cb:	6a 01                	push   $0x1
    10cd:	68 f8 18 00 00       	push   $0x18f8
    10d2:	e8 0e 05 00 00       	call   15e5 <mknod>
    open("console", O_RDWR);
    10d7:	58                   	pop    %eax
    10d8:	5a                   	pop    %edx
    10d9:	6a 02                	push   $0x2
    10db:	68 f8 18 00 00       	push   $0x18f8
    10e0:	e8 f8 04 00 00       	call   15dd <open>
    10e5:	83 c4 10             	add    $0x10,%esp
    10e8:	e9 40 ff ff ff       	jmp    102d <main+0x2d>
    10ed:	66 90                	xchg   %ax,%ax
    10ef:	90                   	nop

000010f0 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    10f0:	f3 0f 1e fb          	endbr32 
    10f4:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    10f5:	31 c0                	xor    %eax,%eax
{
    10f7:	89 e5                	mov    %esp,%ebp
    10f9:	53                   	push   %ebx
    10fa:	8b 4d 08             	mov    0x8(%ebp),%ecx
    10fd:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1100:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1104:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1107:	83 c0 01             	add    $0x1,%eax
    110a:	84 d2                	test   %dl,%dl
    110c:	75 f2                	jne    1100 <strcpy+0x10>
    ;
  return os;
}
    110e:	89 c8                	mov    %ecx,%eax
    1110:	5b                   	pop    %ebx
    1111:	5d                   	pop    %ebp
    1112:	c3                   	ret    
    1113:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    111a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001120 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1120:	f3 0f 1e fb          	endbr32 
    1124:	55                   	push   %ebp
    1125:	89 e5                	mov    %esp,%ebp
    1127:	53                   	push   %ebx
    1128:	8b 4d 08             	mov    0x8(%ebp),%ecx
    112b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    112e:	0f b6 01             	movzbl (%ecx),%eax
    1131:	0f b6 1a             	movzbl (%edx),%ebx
    1134:	84 c0                	test   %al,%al
    1136:	75 19                	jne    1151 <strcmp+0x31>
    1138:	eb 26                	jmp    1160 <strcmp+0x40>
    113a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1140:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    1144:	83 c1 01             	add    $0x1,%ecx
    1147:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    114a:	0f b6 1a             	movzbl (%edx),%ebx
    114d:	84 c0                	test   %al,%al
    114f:	74 0f                	je     1160 <strcmp+0x40>
    1151:	38 d8                	cmp    %bl,%al
    1153:	74 eb                	je     1140 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1155:	29 d8                	sub    %ebx,%eax
}
    1157:	5b                   	pop    %ebx
    1158:	5d                   	pop    %ebp
    1159:	c3                   	ret    
    115a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1160:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1162:	29 d8                	sub    %ebx,%eax
}
    1164:	5b                   	pop    %ebx
    1165:	5d                   	pop    %ebp
    1166:	c3                   	ret    
    1167:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    116e:	66 90                	xchg   %ax,%ax

00001170 <strlen>:

uint
strlen(const char *s)
{
    1170:	f3 0f 1e fb          	endbr32 
    1174:	55                   	push   %ebp
    1175:	89 e5                	mov    %esp,%ebp
    1177:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    117a:	80 3a 00             	cmpb   $0x0,(%edx)
    117d:	74 21                	je     11a0 <strlen+0x30>
    117f:	31 c0                	xor    %eax,%eax
    1181:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1188:	83 c0 01             	add    $0x1,%eax
    118b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    118f:	89 c1                	mov    %eax,%ecx
    1191:	75 f5                	jne    1188 <strlen+0x18>
    ;
  return n;
}
    1193:	89 c8                	mov    %ecx,%eax
    1195:	5d                   	pop    %ebp
    1196:	c3                   	ret    
    1197:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    119e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    11a0:	31 c9                	xor    %ecx,%ecx
}
    11a2:	5d                   	pop    %ebp
    11a3:	89 c8                	mov    %ecx,%eax
    11a5:	c3                   	ret    
    11a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ad:	8d 76 00             	lea    0x0(%esi),%esi

000011b0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    11b0:	f3 0f 1e fb          	endbr32 
    11b4:	55                   	push   %ebp
    11b5:	89 e5                	mov    %esp,%ebp
    11b7:	57                   	push   %edi
    11b8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    11bb:	8b 4d 10             	mov    0x10(%ebp),%ecx
    11be:	8b 45 0c             	mov    0xc(%ebp),%eax
    11c1:	89 d7                	mov    %edx,%edi
    11c3:	fc                   	cld    
    11c4:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    11c6:	89 d0                	mov    %edx,%eax
    11c8:	5f                   	pop    %edi
    11c9:	5d                   	pop    %ebp
    11ca:	c3                   	ret    
    11cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11cf:	90                   	nop

000011d0 <strchr>:

char*
strchr(const char *s, char c)
{
    11d0:	f3 0f 1e fb          	endbr32 
    11d4:	55                   	push   %ebp
    11d5:	89 e5                	mov    %esp,%ebp
    11d7:	8b 45 08             	mov    0x8(%ebp),%eax
    11da:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    11de:	0f b6 10             	movzbl (%eax),%edx
    11e1:	84 d2                	test   %dl,%dl
    11e3:	75 16                	jne    11fb <strchr+0x2b>
    11e5:	eb 21                	jmp    1208 <strchr+0x38>
    11e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ee:	66 90                	xchg   %ax,%ax
    11f0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    11f4:	83 c0 01             	add    $0x1,%eax
    11f7:	84 d2                	test   %dl,%dl
    11f9:	74 0d                	je     1208 <strchr+0x38>
    if(*s == c)
    11fb:	38 d1                	cmp    %dl,%cl
    11fd:	75 f1                	jne    11f0 <strchr+0x20>
      return (char*)s;
  return 0;
}
    11ff:	5d                   	pop    %ebp
    1200:	c3                   	ret    
    1201:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1208:	31 c0                	xor    %eax,%eax
}
    120a:	5d                   	pop    %ebp
    120b:	c3                   	ret    
    120c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001210 <gets>:

char*
gets(char *buf, int max)
{
    1210:	f3 0f 1e fb          	endbr32 
    1214:	55                   	push   %ebp
    1215:	89 e5                	mov    %esp,%ebp
    1217:	57                   	push   %edi
    1218:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1219:	31 f6                	xor    %esi,%esi
{
    121b:	53                   	push   %ebx
    121c:	89 f3                	mov    %esi,%ebx
    121e:	83 ec 1c             	sub    $0x1c,%esp
    1221:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1224:	eb 33                	jmp    1259 <gets+0x49>
    1226:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    122d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1230:	83 ec 04             	sub    $0x4,%esp
    1233:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1236:	6a 01                	push   $0x1
    1238:	50                   	push   %eax
    1239:	6a 00                	push   $0x0
    123b:	e8 75 03 00 00       	call   15b5 <read>
    if(cc < 1)
    1240:	83 c4 10             	add    $0x10,%esp
    1243:	85 c0                	test   %eax,%eax
    1245:	7e 1c                	jle    1263 <gets+0x53>
      break;
    buf[i++] = c;
    1247:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    124b:	83 c7 01             	add    $0x1,%edi
    124e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1251:	3c 0a                	cmp    $0xa,%al
    1253:	74 23                	je     1278 <gets+0x68>
    1255:	3c 0d                	cmp    $0xd,%al
    1257:	74 1f                	je     1278 <gets+0x68>
  for(i=0; i+1 < max; ){
    1259:	83 c3 01             	add    $0x1,%ebx
    125c:	89 fe                	mov    %edi,%esi
    125e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1261:	7c cd                	jl     1230 <gets+0x20>
    1263:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    1265:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1268:	c6 03 00             	movb   $0x0,(%ebx)
}
    126b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    126e:	5b                   	pop    %ebx
    126f:	5e                   	pop    %esi
    1270:	5f                   	pop    %edi
    1271:	5d                   	pop    %ebp
    1272:	c3                   	ret    
    1273:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1277:	90                   	nop
    1278:	8b 75 08             	mov    0x8(%ebp),%esi
    127b:	8b 45 08             	mov    0x8(%ebp),%eax
    127e:	01 de                	add    %ebx,%esi
    1280:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    1282:	c6 03 00             	movb   $0x0,(%ebx)
}
    1285:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1288:	5b                   	pop    %ebx
    1289:	5e                   	pop    %esi
    128a:	5f                   	pop    %edi
    128b:	5d                   	pop    %ebp
    128c:	c3                   	ret    
    128d:	8d 76 00             	lea    0x0(%esi),%esi

00001290 <stat>:

int
stat(const char *n, struct stat *st)
{
    1290:	f3 0f 1e fb          	endbr32 
    1294:	55                   	push   %ebp
    1295:	89 e5                	mov    %esp,%ebp
    1297:	56                   	push   %esi
    1298:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1299:	83 ec 08             	sub    $0x8,%esp
    129c:	6a 00                	push   $0x0
    129e:	ff 75 08             	pushl  0x8(%ebp)
    12a1:	e8 37 03 00 00       	call   15dd <open>
  if(fd < 0)
    12a6:	83 c4 10             	add    $0x10,%esp
    12a9:	85 c0                	test   %eax,%eax
    12ab:	78 2b                	js     12d8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    12ad:	83 ec 08             	sub    $0x8,%esp
    12b0:	ff 75 0c             	pushl  0xc(%ebp)
    12b3:	89 c3                	mov    %eax,%ebx
    12b5:	50                   	push   %eax
    12b6:	e8 3a 03 00 00       	call   15f5 <fstat>
  close(fd);
    12bb:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    12be:	89 c6                	mov    %eax,%esi
  close(fd);
    12c0:	e8 00 03 00 00       	call   15c5 <close>
  return r;
    12c5:	83 c4 10             	add    $0x10,%esp
}
    12c8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    12cb:	89 f0                	mov    %esi,%eax
    12cd:	5b                   	pop    %ebx
    12ce:	5e                   	pop    %esi
    12cf:	5d                   	pop    %ebp
    12d0:	c3                   	ret    
    12d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    12d8:	be ff ff ff ff       	mov    $0xffffffff,%esi
    12dd:	eb e9                	jmp    12c8 <stat+0x38>
    12df:	90                   	nop

000012e0 <atoi>:

int
atoi(const char *s)
{
    12e0:	f3 0f 1e fb          	endbr32 
    12e4:	55                   	push   %ebp
    12e5:	89 e5                	mov    %esp,%ebp
    12e7:	53                   	push   %ebx
    12e8:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    12eb:	0f be 02             	movsbl (%edx),%eax
    12ee:	8d 48 d0             	lea    -0x30(%eax),%ecx
    12f1:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    12f4:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    12f9:	77 1a                	ja     1315 <atoi+0x35>
    12fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12ff:	90                   	nop
    n = n*10 + *s++ - '0';
    1300:	83 c2 01             	add    $0x1,%edx
    1303:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1306:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    130a:	0f be 02             	movsbl (%edx),%eax
    130d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1310:	80 fb 09             	cmp    $0x9,%bl
    1313:	76 eb                	jbe    1300 <atoi+0x20>
  return n;
}
    1315:	89 c8                	mov    %ecx,%eax
    1317:	5b                   	pop    %ebx
    1318:	5d                   	pop    %ebp
    1319:	c3                   	ret    
    131a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001320 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1320:	f3 0f 1e fb          	endbr32 
    1324:	55                   	push   %ebp
    1325:	89 e5                	mov    %esp,%ebp
    1327:	57                   	push   %edi
    1328:	8b 45 10             	mov    0x10(%ebp),%eax
    132b:	8b 55 08             	mov    0x8(%ebp),%edx
    132e:	56                   	push   %esi
    132f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1332:	85 c0                	test   %eax,%eax
    1334:	7e 0f                	jle    1345 <memmove+0x25>
    1336:	01 d0                	add    %edx,%eax
  dst = vdst;
    1338:	89 d7                	mov    %edx,%edi
    133a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    1340:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    1341:	39 f8                	cmp    %edi,%eax
    1343:	75 fb                	jne    1340 <memmove+0x20>
  return vdst;
}
    1345:	5e                   	pop    %esi
    1346:	89 d0                	mov    %edx,%eax
    1348:	5f                   	pop    %edi
    1349:	5d                   	pop    %ebp
    134a:	c3                   	ret    
    134b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    134f:	90                   	nop

00001350 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    1350:	f3 0f 1e fb          	endbr32 
    1354:	55                   	push   %ebp
    1355:	89 e5                	mov    %esp,%ebp
    1357:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    135a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    135d:	50                   	push   %eax
    135e:	e8 0a 03 00 00       	call   166d <join>
  
  return x;
}
    1363:	c9                   	leave  
    1364:	c3                   	ret    
    1365:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    136c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001370 <lock_init>:

void lock_init(struct lock_t *lk){
    1370:	f3 0f 1e fb          	endbr32 
    1374:	55                   	push   %ebp
    1375:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    1377:	8b 45 08             	mov    0x8(%ebp),%eax
    137a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1380:	5d                   	pop    %ebp
    1381:	c3                   	ret    
    1382:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1389:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001390 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    1390:	f3 0f 1e fb          	endbr32 
    1394:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1395:	b9 01 00 00 00       	mov    $0x1,%ecx
    139a:	89 e5                	mov    %esp,%ebp
    139c:	8b 55 08             	mov    0x8(%ebp),%edx
    139f:	90                   	nop
    13a0:	89 c8                	mov    %ecx,%eax
    13a2:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    13a5:	85 c0                	test   %eax,%eax
    13a7:	75 f7                	jne    13a0 <lock_acquire+0x10>
}
    13a9:	5d                   	pop    %ebp
    13aa:	c3                   	ret    
    13ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13af:	90                   	nop

000013b0 <lock_release>:
void lock_release(struct lock_t *lk){
    13b0:	f3 0f 1e fb          	endbr32 
    13b4:	55                   	push   %ebp
    13b5:	31 c0                	xor    %eax,%eax
    13b7:	89 e5                	mov    %esp,%ebp
    13b9:	8b 55 08             	mov    0x8(%ebp),%edx
    13bc:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    13bf:	5d                   	pop    %ebp
    13c0:	c3                   	ret    
    13c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13cf:	90                   	nop

000013d0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    13d0:	f3 0f 1e fb          	endbr32 
    13d4:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    13d5:	a1 a4 1c 00 00       	mov    0x1ca4,%eax
{
    13da:	89 e5                	mov    %esp,%ebp
    13dc:	57                   	push   %edi
    13dd:	56                   	push   %esi
    13de:	53                   	push   %ebx
    13df:	8b 5d 08             	mov    0x8(%ebp),%ebx
    13e2:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    13e4:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    13e7:	39 c8                	cmp    %ecx,%eax
    13e9:	73 15                	jae    1400 <free+0x30>
    13eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13ef:	90                   	nop
    13f0:	39 d1                	cmp    %edx,%ecx
    13f2:	72 14                	jb     1408 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    13f4:	39 d0                	cmp    %edx,%eax
    13f6:	73 10                	jae    1408 <free+0x38>
{
    13f8:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    13fa:	8b 10                	mov    (%eax),%edx
    13fc:	39 c8                	cmp    %ecx,%eax
    13fe:	72 f0                	jb     13f0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1400:	39 d0                	cmp    %edx,%eax
    1402:	72 f4                	jb     13f8 <free+0x28>
    1404:	39 d1                	cmp    %edx,%ecx
    1406:	73 f0                	jae    13f8 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1408:	8b 73 fc             	mov    -0x4(%ebx),%esi
    140b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    140e:	39 fa                	cmp    %edi,%edx
    1410:	74 1e                	je     1430 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1412:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1415:	8b 50 04             	mov    0x4(%eax),%edx
    1418:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    141b:	39 f1                	cmp    %esi,%ecx
    141d:	74 28                	je     1447 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    141f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1421:	5b                   	pop    %ebx
  freep = p;
    1422:	a3 a4 1c 00 00       	mov    %eax,0x1ca4
}
    1427:	5e                   	pop    %esi
    1428:	5f                   	pop    %edi
    1429:	5d                   	pop    %ebp
    142a:	c3                   	ret    
    142b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    142f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1430:	03 72 04             	add    0x4(%edx),%esi
    1433:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1436:	8b 10                	mov    (%eax),%edx
    1438:	8b 12                	mov    (%edx),%edx
    143a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    143d:	8b 50 04             	mov    0x4(%eax),%edx
    1440:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1443:	39 f1                	cmp    %esi,%ecx
    1445:	75 d8                	jne    141f <free+0x4f>
    p->s.size += bp->s.size;
    1447:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    144a:	a3 a4 1c 00 00       	mov    %eax,0x1ca4
    p->s.size += bp->s.size;
    144f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1452:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1455:	89 10                	mov    %edx,(%eax)
}
    1457:	5b                   	pop    %ebx
    1458:	5e                   	pop    %esi
    1459:	5f                   	pop    %edi
    145a:	5d                   	pop    %ebp
    145b:	c3                   	ret    
    145c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001460 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1460:	f3 0f 1e fb          	endbr32 
    1464:	55                   	push   %ebp
    1465:	89 e5                	mov    %esp,%ebp
    1467:	57                   	push   %edi
    1468:	56                   	push   %esi
    1469:	53                   	push   %ebx
    146a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    146d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1470:	8b 3d a4 1c 00 00    	mov    0x1ca4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1476:	8d 70 07             	lea    0x7(%eax),%esi
    1479:	c1 ee 03             	shr    $0x3,%esi
    147c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    147f:	85 ff                	test   %edi,%edi
    1481:	0f 84 a9 00 00 00    	je     1530 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1487:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    1489:	8b 48 04             	mov    0x4(%eax),%ecx
    148c:	39 f1                	cmp    %esi,%ecx
    148e:	73 6d                	jae    14fd <malloc+0x9d>
    1490:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1496:	bb 00 10 00 00       	mov    $0x1000,%ebx
    149b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    149e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    14a5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    14a8:	eb 17                	jmp    14c1 <malloc+0x61>
    14aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    14b0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    14b2:	8b 4a 04             	mov    0x4(%edx),%ecx
    14b5:	39 f1                	cmp    %esi,%ecx
    14b7:	73 4f                	jae    1508 <malloc+0xa8>
    14b9:	8b 3d a4 1c 00 00    	mov    0x1ca4,%edi
    14bf:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    14c1:	39 c7                	cmp    %eax,%edi
    14c3:	75 eb                	jne    14b0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    14c5:	83 ec 0c             	sub    $0xc,%esp
    14c8:	ff 75 e4             	pushl  -0x1c(%ebp)
    14cb:	e8 55 01 00 00       	call   1625 <sbrk>
  if(p == (char*)-1)
    14d0:	83 c4 10             	add    $0x10,%esp
    14d3:	83 f8 ff             	cmp    $0xffffffff,%eax
    14d6:	74 1b                	je     14f3 <malloc+0x93>
  hp->s.size = nu;
    14d8:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    14db:	83 ec 0c             	sub    $0xc,%esp
    14de:	83 c0 08             	add    $0x8,%eax
    14e1:	50                   	push   %eax
    14e2:	e8 e9 fe ff ff       	call   13d0 <free>
  return freep;
    14e7:	a1 a4 1c 00 00       	mov    0x1ca4,%eax
      if((p = morecore(nunits)) == 0)
    14ec:	83 c4 10             	add    $0x10,%esp
    14ef:	85 c0                	test   %eax,%eax
    14f1:	75 bd                	jne    14b0 <malloc+0x50>
        return 0;
  }
}
    14f3:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    14f6:	31 c0                	xor    %eax,%eax
}
    14f8:	5b                   	pop    %ebx
    14f9:	5e                   	pop    %esi
    14fa:	5f                   	pop    %edi
    14fb:	5d                   	pop    %ebp
    14fc:	c3                   	ret    
    if(p->s.size >= nunits){
    14fd:	89 c2                	mov    %eax,%edx
    14ff:	89 f8                	mov    %edi,%eax
    1501:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1508:	39 ce                	cmp    %ecx,%esi
    150a:	74 54                	je     1560 <malloc+0x100>
        p->s.size -= nunits;
    150c:	29 f1                	sub    %esi,%ecx
    150e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1511:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1514:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1517:	a3 a4 1c 00 00       	mov    %eax,0x1ca4
}
    151c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    151f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1522:	5b                   	pop    %ebx
    1523:	5e                   	pop    %esi
    1524:	5f                   	pop    %edi
    1525:	5d                   	pop    %ebp
    1526:	c3                   	ret    
    1527:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    152e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1530:	c7 05 a4 1c 00 00 a8 	movl   $0x1ca8,0x1ca4
    1537:	1c 00 00 
    base.s.size = 0;
    153a:	bf a8 1c 00 00       	mov    $0x1ca8,%edi
    base.s.ptr = freep = prevp = &base;
    153f:	c7 05 a8 1c 00 00 a8 	movl   $0x1ca8,0x1ca8
    1546:	1c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1549:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    154b:	c7 05 ac 1c 00 00 00 	movl   $0x0,0x1cac
    1552:	00 00 00 
    if(p->s.size >= nunits){
    1555:	e9 36 ff ff ff       	jmp    1490 <malloc+0x30>
    155a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1560:	8b 0a                	mov    (%edx),%ecx
    1562:	89 08                	mov    %ecx,(%eax)
    1564:	eb b1                	jmp    1517 <malloc+0xb7>
    1566:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    156d:	8d 76 00             	lea    0x0(%esi),%esi

00001570 <thread_create>:
{
    1570:	f3 0f 1e fb          	endbr32 
    1574:	55                   	push   %ebp
    1575:	89 e5                	mov    %esp,%ebp
    1577:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    157a:	68 00 10 00 00       	push   $0x1000
    157f:	e8 dc fe ff ff       	call   1460 <malloc>
return clone(start_routine,arg1,arg2,stack);
    1584:	50                   	push   %eax
    1585:	ff 75 10             	pushl  0x10(%ebp)
    1588:	ff 75 0c             	pushl  0xc(%ebp)
    158b:	ff 75 08             	pushl  0x8(%ebp)
    158e:	e8 d2 00 00 00       	call   1665 <clone>
}
    1593:	c9                   	leave  
    1594:	c3                   	ret    

00001595 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1595:	b8 01 00 00 00       	mov    $0x1,%eax
    159a:	cd 40                	int    $0x40
    159c:	c3                   	ret    

0000159d <exit>:
SYSCALL(exit)
    159d:	b8 02 00 00 00       	mov    $0x2,%eax
    15a2:	cd 40                	int    $0x40
    15a4:	c3                   	ret    

000015a5 <wait>:
SYSCALL(wait)
    15a5:	b8 03 00 00 00       	mov    $0x3,%eax
    15aa:	cd 40                	int    $0x40
    15ac:	c3                   	ret    

000015ad <pipe>:
SYSCALL(pipe)
    15ad:	b8 04 00 00 00       	mov    $0x4,%eax
    15b2:	cd 40                	int    $0x40
    15b4:	c3                   	ret    

000015b5 <read>:
SYSCALL(read)
    15b5:	b8 05 00 00 00       	mov    $0x5,%eax
    15ba:	cd 40                	int    $0x40
    15bc:	c3                   	ret    

000015bd <write>:
SYSCALL(write)
    15bd:	b8 10 00 00 00       	mov    $0x10,%eax
    15c2:	cd 40                	int    $0x40
    15c4:	c3                   	ret    

000015c5 <close>:
SYSCALL(close)
    15c5:	b8 15 00 00 00       	mov    $0x15,%eax
    15ca:	cd 40                	int    $0x40
    15cc:	c3                   	ret    

000015cd <kill>:
SYSCALL(kill)
    15cd:	b8 06 00 00 00       	mov    $0x6,%eax
    15d2:	cd 40                	int    $0x40
    15d4:	c3                   	ret    

000015d5 <exec>:
SYSCALL(exec)
    15d5:	b8 07 00 00 00       	mov    $0x7,%eax
    15da:	cd 40                	int    $0x40
    15dc:	c3                   	ret    

000015dd <open>:
SYSCALL(open)
    15dd:	b8 0f 00 00 00       	mov    $0xf,%eax
    15e2:	cd 40                	int    $0x40
    15e4:	c3                   	ret    

000015e5 <mknod>:
SYSCALL(mknod)
    15e5:	b8 11 00 00 00       	mov    $0x11,%eax
    15ea:	cd 40                	int    $0x40
    15ec:	c3                   	ret    

000015ed <unlink>:
SYSCALL(unlink)
    15ed:	b8 12 00 00 00       	mov    $0x12,%eax
    15f2:	cd 40                	int    $0x40
    15f4:	c3                   	ret    

000015f5 <fstat>:
SYSCALL(fstat)
    15f5:	b8 08 00 00 00       	mov    $0x8,%eax
    15fa:	cd 40                	int    $0x40
    15fc:	c3                   	ret    

000015fd <link>:
SYSCALL(link)
    15fd:	b8 13 00 00 00       	mov    $0x13,%eax
    1602:	cd 40                	int    $0x40
    1604:	c3                   	ret    

00001605 <mkdir>:
SYSCALL(mkdir)
    1605:	b8 14 00 00 00       	mov    $0x14,%eax
    160a:	cd 40                	int    $0x40
    160c:	c3                   	ret    

0000160d <chdir>:
SYSCALL(chdir)
    160d:	b8 09 00 00 00       	mov    $0x9,%eax
    1612:	cd 40                	int    $0x40
    1614:	c3                   	ret    

00001615 <dup>:
SYSCALL(dup)
    1615:	b8 0a 00 00 00       	mov    $0xa,%eax
    161a:	cd 40                	int    $0x40
    161c:	c3                   	ret    

0000161d <getpid>:
SYSCALL(getpid)
    161d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1622:	cd 40                	int    $0x40
    1624:	c3                   	ret    

00001625 <sbrk>:
SYSCALL(sbrk)
    1625:	b8 0c 00 00 00       	mov    $0xc,%eax
    162a:	cd 40                	int    $0x40
    162c:	c3                   	ret    

0000162d <sleep>:
SYSCALL(sleep)
    162d:	b8 0d 00 00 00       	mov    $0xd,%eax
    1632:	cd 40                	int    $0x40
    1634:	c3                   	ret    

00001635 <uptime>:
SYSCALL(uptime)
    1635:	b8 0e 00 00 00       	mov    $0xe,%eax
    163a:	cd 40                	int    $0x40
    163c:	c3                   	ret    

0000163d <count>:
SYSCALL(count)
    163d:	b8 16 00 00 00       	mov    $0x16,%eax
    1642:	cd 40                	int    $0x40
    1644:	c3                   	ret    

00001645 <settickets>:

SYSCALL(settickets)
    1645:	b8 17 00 00 00       	mov    $0x17,%eax
    164a:	cd 40                	int    $0x40
    164c:	c3                   	ret    

0000164d <getpinfo>:
SYSCALL(getpinfo)
    164d:	b8 18 00 00 00       	mov    $0x18,%eax
    1652:	cd 40                	int    $0x40
    1654:	c3                   	ret    

00001655 <mprotect>:

SYSCALL(mprotect)
    1655:	b8 19 00 00 00       	mov    $0x19,%eax
    165a:	cd 40                	int    $0x40
    165c:	c3                   	ret    

0000165d <munprotect>:
SYSCALL(munprotect)
    165d:	b8 1a 00 00 00       	mov    $0x1a,%eax
    1662:	cd 40                	int    $0x40
    1664:	c3                   	ret    

00001665 <clone>:

SYSCALL(clone)
    1665:	b8 1b 00 00 00       	mov    $0x1b,%eax
    166a:	cd 40                	int    $0x40
    166c:	c3                   	ret    

0000166d <join>:
SYSCALL(join)
    166d:	b8 1c 00 00 00       	mov    $0x1c,%eax
    1672:	cd 40                	int    $0x40
    1674:	c3                   	ret    
    1675:	66 90                	xchg   %ax,%ax
    1677:	66 90                	xchg   %ax,%ax
    1679:	66 90                	xchg   %ax,%ax
    167b:	66 90                	xchg   %ax,%ax
    167d:	66 90                	xchg   %ax,%ax
    167f:	90                   	nop

00001680 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1680:	55                   	push   %ebp
    1681:	89 e5                	mov    %esp,%ebp
    1683:	57                   	push   %edi
    1684:	56                   	push   %esi
    1685:	53                   	push   %ebx
    1686:	83 ec 3c             	sub    $0x3c,%esp
    1689:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    168c:	89 d1                	mov    %edx,%ecx
{
    168e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    1691:	85 d2                	test   %edx,%edx
    1693:	0f 89 7f 00 00 00    	jns    1718 <printint+0x98>
    1699:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    169d:	74 79                	je     1718 <printint+0x98>
    neg = 1;
    169f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    16a6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    16a8:	31 db                	xor    %ebx,%ebx
    16aa:	8d 75 d7             	lea    -0x29(%ebp),%esi
    16ad:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    16b0:	89 c8                	mov    %ecx,%eax
    16b2:	31 d2                	xor    %edx,%edx
    16b4:	89 cf                	mov    %ecx,%edi
    16b6:	f7 75 c4             	divl   -0x3c(%ebp)
    16b9:	0f b6 92 50 19 00 00 	movzbl 0x1950(%edx),%edx
    16c0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    16c3:	89 d8                	mov    %ebx,%eax
    16c5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    16c8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    16cb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    16ce:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    16d1:	76 dd                	jbe    16b0 <printint+0x30>
  if(neg)
    16d3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    16d6:	85 c9                	test   %ecx,%ecx
    16d8:	74 0c                	je     16e6 <printint+0x66>
    buf[i++] = '-';
    16da:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    16df:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    16e1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    16e6:	8b 7d b8             	mov    -0x48(%ebp),%edi
    16e9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    16ed:	eb 07                	jmp    16f6 <printint+0x76>
    16ef:	90                   	nop
    16f0:	0f b6 13             	movzbl (%ebx),%edx
    16f3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    16f6:	83 ec 04             	sub    $0x4,%esp
    16f9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    16fc:	6a 01                	push   $0x1
    16fe:	56                   	push   %esi
    16ff:	57                   	push   %edi
    1700:	e8 b8 fe ff ff       	call   15bd <write>
  while(--i >= 0)
    1705:	83 c4 10             	add    $0x10,%esp
    1708:	39 de                	cmp    %ebx,%esi
    170a:	75 e4                	jne    16f0 <printint+0x70>
    putc(fd, buf[i]);
}
    170c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    170f:	5b                   	pop    %ebx
    1710:	5e                   	pop    %esi
    1711:	5f                   	pop    %edi
    1712:	5d                   	pop    %ebp
    1713:	c3                   	ret    
    1714:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1718:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    171f:	eb 87                	jmp    16a8 <printint+0x28>
    1721:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1728:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    172f:	90                   	nop

00001730 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1730:	f3 0f 1e fb          	endbr32 
    1734:	55                   	push   %ebp
    1735:	89 e5                	mov    %esp,%ebp
    1737:	57                   	push   %edi
    1738:	56                   	push   %esi
    1739:	53                   	push   %ebx
    173a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    173d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1740:	0f b6 1e             	movzbl (%esi),%ebx
    1743:	84 db                	test   %bl,%bl
    1745:	0f 84 b4 00 00 00    	je     17ff <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    174b:	8d 45 10             	lea    0x10(%ebp),%eax
    174e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1751:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    1754:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    1756:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1759:	eb 33                	jmp    178e <printf+0x5e>
    175b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    175f:	90                   	nop
    1760:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1763:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1768:	83 f8 25             	cmp    $0x25,%eax
    176b:	74 17                	je     1784 <printf+0x54>
  write(fd, &c, 1);
    176d:	83 ec 04             	sub    $0x4,%esp
    1770:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1773:	6a 01                	push   $0x1
    1775:	57                   	push   %edi
    1776:	ff 75 08             	pushl  0x8(%ebp)
    1779:	e8 3f fe ff ff       	call   15bd <write>
    177e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    1781:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1784:	0f b6 1e             	movzbl (%esi),%ebx
    1787:	83 c6 01             	add    $0x1,%esi
    178a:	84 db                	test   %bl,%bl
    178c:	74 71                	je     17ff <printf+0xcf>
    c = fmt[i] & 0xff;
    178e:	0f be cb             	movsbl %bl,%ecx
    1791:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1794:	85 d2                	test   %edx,%edx
    1796:	74 c8                	je     1760 <printf+0x30>
      }
    } else if(state == '%'){
    1798:	83 fa 25             	cmp    $0x25,%edx
    179b:	75 e7                	jne    1784 <printf+0x54>
      if(c == 'd'){
    179d:	83 f8 64             	cmp    $0x64,%eax
    17a0:	0f 84 9a 00 00 00    	je     1840 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    17a6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    17ac:	83 f9 70             	cmp    $0x70,%ecx
    17af:	74 5f                	je     1810 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    17b1:	83 f8 73             	cmp    $0x73,%eax
    17b4:	0f 84 d6 00 00 00    	je     1890 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    17ba:	83 f8 63             	cmp    $0x63,%eax
    17bd:	0f 84 8d 00 00 00    	je     1850 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    17c3:	83 f8 25             	cmp    $0x25,%eax
    17c6:	0f 84 b4 00 00 00    	je     1880 <printf+0x150>
  write(fd, &c, 1);
    17cc:	83 ec 04             	sub    $0x4,%esp
    17cf:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    17d3:	6a 01                	push   $0x1
    17d5:	57                   	push   %edi
    17d6:	ff 75 08             	pushl  0x8(%ebp)
    17d9:	e8 df fd ff ff       	call   15bd <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    17de:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    17e1:	83 c4 0c             	add    $0xc,%esp
    17e4:	6a 01                	push   $0x1
    17e6:	83 c6 01             	add    $0x1,%esi
    17e9:	57                   	push   %edi
    17ea:	ff 75 08             	pushl  0x8(%ebp)
    17ed:	e8 cb fd ff ff       	call   15bd <write>
  for(i = 0; fmt[i]; i++){
    17f2:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    17f6:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    17f9:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    17fb:	84 db                	test   %bl,%bl
    17fd:	75 8f                	jne    178e <printf+0x5e>
    }
  }
}
    17ff:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1802:	5b                   	pop    %ebx
    1803:	5e                   	pop    %esi
    1804:	5f                   	pop    %edi
    1805:	5d                   	pop    %ebp
    1806:	c3                   	ret    
    1807:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    180e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1810:	83 ec 0c             	sub    $0xc,%esp
    1813:	b9 10 00 00 00       	mov    $0x10,%ecx
    1818:	6a 00                	push   $0x0
    181a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    181d:	8b 45 08             	mov    0x8(%ebp),%eax
    1820:	8b 13                	mov    (%ebx),%edx
    1822:	e8 59 fe ff ff       	call   1680 <printint>
        ap++;
    1827:	89 d8                	mov    %ebx,%eax
    1829:	83 c4 10             	add    $0x10,%esp
      state = 0;
    182c:	31 d2                	xor    %edx,%edx
        ap++;
    182e:	83 c0 04             	add    $0x4,%eax
    1831:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1834:	e9 4b ff ff ff       	jmp    1784 <printf+0x54>
    1839:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1840:	83 ec 0c             	sub    $0xc,%esp
    1843:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1848:	6a 01                	push   $0x1
    184a:	eb ce                	jmp    181a <printf+0xea>
    184c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1850:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1853:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1856:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1858:	6a 01                	push   $0x1
        ap++;
    185a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    185d:	57                   	push   %edi
    185e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1861:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1864:	e8 54 fd ff ff       	call   15bd <write>
        ap++;
    1869:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    186c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    186f:	31 d2                	xor    %edx,%edx
    1871:	e9 0e ff ff ff       	jmp    1784 <printf+0x54>
    1876:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    187d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1880:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1883:	83 ec 04             	sub    $0x4,%esp
    1886:	e9 59 ff ff ff       	jmp    17e4 <printf+0xb4>
    188b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    188f:	90                   	nop
        s = (char*)*ap;
    1890:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1893:	8b 18                	mov    (%eax),%ebx
        ap++;
    1895:	83 c0 04             	add    $0x4,%eax
    1898:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    189b:	85 db                	test   %ebx,%ebx
    189d:	74 17                	je     18b6 <printf+0x186>
        while(*s != 0){
    189f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    18a2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    18a4:	84 c0                	test   %al,%al
    18a6:	0f 84 d8 fe ff ff    	je     1784 <printf+0x54>
    18ac:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    18af:	89 de                	mov    %ebx,%esi
    18b1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    18b4:	eb 1a                	jmp    18d0 <printf+0x1a0>
          s = "(null)";
    18b6:	bb 48 19 00 00       	mov    $0x1948,%ebx
        while(*s != 0){
    18bb:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    18be:	b8 28 00 00 00       	mov    $0x28,%eax
    18c3:	89 de                	mov    %ebx,%esi
    18c5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    18c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18cf:	90                   	nop
  write(fd, &c, 1);
    18d0:	83 ec 04             	sub    $0x4,%esp
          s++;
    18d3:	83 c6 01             	add    $0x1,%esi
    18d6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    18d9:	6a 01                	push   $0x1
    18db:	57                   	push   %edi
    18dc:	53                   	push   %ebx
    18dd:	e8 db fc ff ff       	call   15bd <write>
        while(*s != 0){
    18e2:	0f b6 06             	movzbl (%esi),%eax
    18e5:	83 c4 10             	add    $0x10,%esp
    18e8:	84 c0                	test   %al,%al
    18ea:	75 e4                	jne    18d0 <printf+0x1a0>
    18ec:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    18ef:	31 d2                	xor    %edx,%edx
    18f1:	e9 8e fe ff ff       	jmp    1784 <printf+0x54>
