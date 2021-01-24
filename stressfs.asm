
_stressfs:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "fs.h"
#include "fcntl.h"

int
main(int argc, char *argv[])
{
    1000:	f3 0f 1e fb          	endbr32 
    1004:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1008:	83 e4 f0             	and    $0xfffffff0,%esp
  int fd, i;
  char path[] = "stressfs0";
    100b:	b8 30 00 00 00       	mov    $0x30,%eax
{
    1010:	ff 71 fc             	pushl  -0x4(%ecx)
    1013:	55                   	push   %ebp
    1014:	89 e5                	mov    %esp,%ebp
    1016:	57                   	push   %edi
    1017:	56                   	push   %esi
  char data[512];

  printf(1, "stressfs starting\n");
  memset(data, 'a', sizeof(data));
    1018:	8d b5 e8 fd ff ff    	lea    -0x218(%ebp),%esi
{
    101e:	53                   	push   %ebx

  for(i = 0; i < 4; i++)
    101f:	31 db                	xor    %ebx,%ebx
{
    1021:	51                   	push   %ecx
    1022:	81 ec 20 02 00 00    	sub    $0x220,%esp
  char path[] = "stressfs0";
    1028:	66 89 85 e6 fd ff ff 	mov    %ax,-0x21a(%ebp)
  printf(1, "stressfs starting\n");
    102f:	68 48 19 00 00       	push   $0x1948
    1034:	6a 01                	push   $0x1
  char path[] = "stressfs0";
    1036:	c7 85 de fd ff ff 73 	movl   $0x65727473,-0x222(%ebp)
    103d:	74 72 65 
    1040:	c7 85 e2 fd ff ff 73 	movl   $0x73667373,-0x21e(%ebp)
    1047:	73 66 73 
  printf(1, "stressfs starting\n");
    104a:	e8 31 07 00 00       	call   1780 <printf>
  memset(data, 'a', sizeof(data));
    104f:	83 c4 0c             	add    $0xc,%esp
    1052:	68 00 02 00 00       	push   $0x200
    1057:	6a 61                	push   $0x61
    1059:	56                   	push   %esi
    105a:	e8 a1 01 00 00       	call   1200 <memset>
    105f:	83 c4 10             	add    $0x10,%esp
    if(fork() > 0)
    1062:	e8 7e 05 00 00       	call   15e5 <fork>
    1067:	85 c0                	test   %eax,%eax
    1069:	0f 8f bb 00 00 00    	jg     112a <main+0x12a>
  for(i = 0; i < 4; i++)
    106f:	83 c3 01             	add    $0x1,%ebx
    1072:	83 fb 04             	cmp    $0x4,%ebx
    1075:	75 eb                	jne    1062 <main+0x62>
    1077:	bf 04 00 00 00       	mov    $0x4,%edi
      break;

  printf(1, "write %d\n", i);
    107c:	83 ec 04             	sub    $0x4,%esp
    107f:	53                   	push   %ebx

  path[8] += i;
  fd = open(path, O_CREATE | O_RDWR);
    1080:	bb 14 00 00 00       	mov    $0x14,%ebx
  printf(1, "write %d\n", i);
    1085:	68 5b 19 00 00       	push   $0x195b
    108a:	6a 01                	push   $0x1
    108c:	e8 ef 06 00 00       	call   1780 <printf>
  path[8] += i;
    1091:	89 f8                	mov    %edi,%eax
  fd = open(path, O_CREATE | O_RDWR);
    1093:	5f                   	pop    %edi
  path[8] += i;
    1094:	00 85 e6 fd ff ff    	add    %al,-0x21a(%ebp)
  fd = open(path, O_CREATE | O_RDWR);
    109a:	58                   	pop    %eax
    109b:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
    10a1:	68 02 02 00 00       	push   $0x202
    10a6:	50                   	push   %eax
    10a7:	e8 81 05 00 00       	call   162d <open>
    10ac:	83 c4 10             	add    $0x10,%esp
    10af:	89 c7                	mov    %eax,%edi
  for(i = 0; i < 20; i++)
    10b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
//    printf(fd, "%d\n", i);
    write(fd, data, sizeof(data));
    10b8:	83 ec 04             	sub    $0x4,%esp
    10bb:	68 00 02 00 00       	push   $0x200
    10c0:	56                   	push   %esi
    10c1:	57                   	push   %edi
    10c2:	e8 46 05 00 00       	call   160d <write>
  for(i = 0; i < 20; i++)
    10c7:	83 c4 10             	add    $0x10,%esp
    10ca:	83 eb 01             	sub    $0x1,%ebx
    10cd:	75 e9                	jne    10b8 <main+0xb8>
  close(fd);
    10cf:	83 ec 0c             	sub    $0xc,%esp
    10d2:	57                   	push   %edi
    10d3:	e8 3d 05 00 00       	call   1615 <close>

  printf(1, "read\n");
    10d8:	58                   	pop    %eax
    10d9:	5a                   	pop    %edx
    10da:	68 65 19 00 00       	push   $0x1965
    10df:	6a 01                	push   $0x1
    10e1:	e8 9a 06 00 00       	call   1780 <printf>

  fd = open(path, O_RDONLY);
    10e6:	8d 85 de fd ff ff    	lea    -0x222(%ebp),%eax
    10ec:	59                   	pop    %ecx
    10ed:	5b                   	pop    %ebx
    10ee:	6a 00                	push   $0x0
    10f0:	bb 14 00 00 00       	mov    $0x14,%ebx
    10f5:	50                   	push   %eax
    10f6:	e8 32 05 00 00       	call   162d <open>
    10fb:	83 c4 10             	add    $0x10,%esp
    10fe:	89 c7                	mov    %eax,%edi
  for (i = 0; i < 20; i++)
    read(fd, data, sizeof(data));
    1100:	83 ec 04             	sub    $0x4,%esp
    1103:	68 00 02 00 00       	push   $0x200
    1108:	56                   	push   %esi
    1109:	57                   	push   %edi
    110a:	e8 f6 04 00 00       	call   1605 <read>
  for (i = 0; i < 20; i++)
    110f:	83 c4 10             	add    $0x10,%esp
    1112:	83 eb 01             	sub    $0x1,%ebx
    1115:	75 e9                	jne    1100 <main+0x100>
  close(fd);
    1117:	83 ec 0c             	sub    $0xc,%esp
    111a:	57                   	push   %edi
    111b:	e8 f5 04 00 00       	call   1615 <close>

  wait();
    1120:	e8 d0 04 00 00       	call   15f5 <wait>

  exit();
    1125:	e8 c3 04 00 00       	call   15ed <exit>
    112a:	89 df                	mov    %ebx,%edi
    112c:	e9 4b ff ff ff       	jmp    107c <main+0x7c>
    1131:	66 90                	xchg   %ax,%ax
    1133:	66 90                	xchg   %ax,%ax
    1135:	66 90                	xchg   %ax,%ax
    1137:	66 90                	xchg   %ax,%ax
    1139:	66 90                	xchg   %ax,%ax
    113b:	66 90                	xchg   %ax,%ax
    113d:	66 90                	xchg   %ax,%ax
    113f:	90                   	nop

00001140 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1140:	f3 0f 1e fb          	endbr32 
    1144:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1145:	31 c0                	xor    %eax,%eax
{
    1147:	89 e5                	mov    %esp,%ebp
    1149:	53                   	push   %ebx
    114a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    114d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1150:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1154:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1157:	83 c0 01             	add    $0x1,%eax
    115a:	84 d2                	test   %dl,%dl
    115c:	75 f2                	jne    1150 <strcpy+0x10>
    ;
  return os;
}
    115e:	89 c8                	mov    %ecx,%eax
    1160:	5b                   	pop    %ebx
    1161:	5d                   	pop    %ebp
    1162:	c3                   	ret    
    1163:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    116a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001170 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1170:	f3 0f 1e fb          	endbr32 
    1174:	55                   	push   %ebp
    1175:	89 e5                	mov    %esp,%ebp
    1177:	53                   	push   %ebx
    1178:	8b 4d 08             	mov    0x8(%ebp),%ecx
    117b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    117e:	0f b6 01             	movzbl (%ecx),%eax
    1181:	0f b6 1a             	movzbl (%edx),%ebx
    1184:	84 c0                	test   %al,%al
    1186:	75 19                	jne    11a1 <strcmp+0x31>
    1188:	eb 26                	jmp    11b0 <strcmp+0x40>
    118a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1190:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    1194:	83 c1 01             	add    $0x1,%ecx
    1197:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    119a:	0f b6 1a             	movzbl (%edx),%ebx
    119d:	84 c0                	test   %al,%al
    119f:	74 0f                	je     11b0 <strcmp+0x40>
    11a1:	38 d8                	cmp    %bl,%al
    11a3:	74 eb                	je     1190 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    11a5:	29 d8                	sub    %ebx,%eax
}
    11a7:	5b                   	pop    %ebx
    11a8:	5d                   	pop    %ebp
    11a9:	c3                   	ret    
    11aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11b0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    11b2:	29 d8                	sub    %ebx,%eax
}
    11b4:	5b                   	pop    %ebx
    11b5:	5d                   	pop    %ebp
    11b6:	c3                   	ret    
    11b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11be:	66 90                	xchg   %ax,%ax

000011c0 <strlen>:

uint
strlen(const char *s)
{
    11c0:	f3 0f 1e fb          	endbr32 
    11c4:	55                   	push   %ebp
    11c5:	89 e5                	mov    %esp,%ebp
    11c7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    11ca:	80 3a 00             	cmpb   $0x0,(%edx)
    11cd:	74 21                	je     11f0 <strlen+0x30>
    11cf:	31 c0                	xor    %eax,%eax
    11d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11d8:	83 c0 01             	add    $0x1,%eax
    11db:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    11df:	89 c1                	mov    %eax,%ecx
    11e1:	75 f5                	jne    11d8 <strlen+0x18>
    ;
  return n;
}
    11e3:	89 c8                	mov    %ecx,%eax
    11e5:	5d                   	pop    %ebp
    11e6:	c3                   	ret    
    11e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ee:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    11f0:	31 c9                	xor    %ecx,%ecx
}
    11f2:	5d                   	pop    %ebp
    11f3:	89 c8                	mov    %ecx,%eax
    11f5:	c3                   	ret    
    11f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11fd:	8d 76 00             	lea    0x0(%esi),%esi

00001200 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1200:	f3 0f 1e fb          	endbr32 
    1204:	55                   	push   %ebp
    1205:	89 e5                	mov    %esp,%ebp
    1207:	57                   	push   %edi
    1208:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    120b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    120e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1211:	89 d7                	mov    %edx,%edi
    1213:	fc                   	cld    
    1214:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1216:	89 d0                	mov    %edx,%eax
    1218:	5f                   	pop    %edi
    1219:	5d                   	pop    %ebp
    121a:	c3                   	ret    
    121b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    121f:	90                   	nop

00001220 <strchr>:

char*
strchr(const char *s, char c)
{
    1220:	f3 0f 1e fb          	endbr32 
    1224:	55                   	push   %ebp
    1225:	89 e5                	mov    %esp,%ebp
    1227:	8b 45 08             	mov    0x8(%ebp),%eax
    122a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    122e:	0f b6 10             	movzbl (%eax),%edx
    1231:	84 d2                	test   %dl,%dl
    1233:	75 16                	jne    124b <strchr+0x2b>
    1235:	eb 21                	jmp    1258 <strchr+0x38>
    1237:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    123e:	66 90                	xchg   %ax,%ax
    1240:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1244:	83 c0 01             	add    $0x1,%eax
    1247:	84 d2                	test   %dl,%dl
    1249:	74 0d                	je     1258 <strchr+0x38>
    if(*s == c)
    124b:	38 d1                	cmp    %dl,%cl
    124d:	75 f1                	jne    1240 <strchr+0x20>
      return (char*)s;
  return 0;
}
    124f:	5d                   	pop    %ebp
    1250:	c3                   	ret    
    1251:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1258:	31 c0                	xor    %eax,%eax
}
    125a:	5d                   	pop    %ebp
    125b:	c3                   	ret    
    125c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001260 <gets>:

char*
gets(char *buf, int max)
{
    1260:	f3 0f 1e fb          	endbr32 
    1264:	55                   	push   %ebp
    1265:	89 e5                	mov    %esp,%ebp
    1267:	57                   	push   %edi
    1268:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1269:	31 f6                	xor    %esi,%esi
{
    126b:	53                   	push   %ebx
    126c:	89 f3                	mov    %esi,%ebx
    126e:	83 ec 1c             	sub    $0x1c,%esp
    1271:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1274:	eb 33                	jmp    12a9 <gets+0x49>
    1276:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    127d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1280:	83 ec 04             	sub    $0x4,%esp
    1283:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1286:	6a 01                	push   $0x1
    1288:	50                   	push   %eax
    1289:	6a 00                	push   $0x0
    128b:	e8 75 03 00 00       	call   1605 <read>
    if(cc < 1)
    1290:	83 c4 10             	add    $0x10,%esp
    1293:	85 c0                	test   %eax,%eax
    1295:	7e 1c                	jle    12b3 <gets+0x53>
      break;
    buf[i++] = c;
    1297:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    129b:	83 c7 01             	add    $0x1,%edi
    129e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    12a1:	3c 0a                	cmp    $0xa,%al
    12a3:	74 23                	je     12c8 <gets+0x68>
    12a5:	3c 0d                	cmp    $0xd,%al
    12a7:	74 1f                	je     12c8 <gets+0x68>
  for(i=0; i+1 < max; ){
    12a9:	83 c3 01             	add    $0x1,%ebx
    12ac:	89 fe                	mov    %edi,%esi
    12ae:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    12b1:	7c cd                	jl     1280 <gets+0x20>
    12b3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    12b5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    12b8:	c6 03 00             	movb   $0x0,(%ebx)
}
    12bb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12be:	5b                   	pop    %ebx
    12bf:	5e                   	pop    %esi
    12c0:	5f                   	pop    %edi
    12c1:	5d                   	pop    %ebp
    12c2:	c3                   	ret    
    12c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12c7:	90                   	nop
    12c8:	8b 75 08             	mov    0x8(%ebp),%esi
    12cb:	8b 45 08             	mov    0x8(%ebp),%eax
    12ce:	01 de                	add    %ebx,%esi
    12d0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    12d2:	c6 03 00             	movb   $0x0,(%ebx)
}
    12d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12d8:	5b                   	pop    %ebx
    12d9:	5e                   	pop    %esi
    12da:	5f                   	pop    %edi
    12db:	5d                   	pop    %ebp
    12dc:	c3                   	ret    
    12dd:	8d 76 00             	lea    0x0(%esi),%esi

000012e0 <stat>:

int
stat(const char *n, struct stat *st)
{
    12e0:	f3 0f 1e fb          	endbr32 
    12e4:	55                   	push   %ebp
    12e5:	89 e5                	mov    %esp,%ebp
    12e7:	56                   	push   %esi
    12e8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    12e9:	83 ec 08             	sub    $0x8,%esp
    12ec:	6a 00                	push   $0x0
    12ee:	ff 75 08             	pushl  0x8(%ebp)
    12f1:	e8 37 03 00 00       	call   162d <open>
  if(fd < 0)
    12f6:	83 c4 10             	add    $0x10,%esp
    12f9:	85 c0                	test   %eax,%eax
    12fb:	78 2b                	js     1328 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    12fd:	83 ec 08             	sub    $0x8,%esp
    1300:	ff 75 0c             	pushl  0xc(%ebp)
    1303:	89 c3                	mov    %eax,%ebx
    1305:	50                   	push   %eax
    1306:	e8 3a 03 00 00       	call   1645 <fstat>
  close(fd);
    130b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    130e:	89 c6                	mov    %eax,%esi
  close(fd);
    1310:	e8 00 03 00 00       	call   1615 <close>
  return r;
    1315:	83 c4 10             	add    $0x10,%esp
}
    1318:	8d 65 f8             	lea    -0x8(%ebp),%esp
    131b:	89 f0                	mov    %esi,%eax
    131d:	5b                   	pop    %ebx
    131e:	5e                   	pop    %esi
    131f:	5d                   	pop    %ebp
    1320:	c3                   	ret    
    1321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1328:	be ff ff ff ff       	mov    $0xffffffff,%esi
    132d:	eb e9                	jmp    1318 <stat+0x38>
    132f:	90                   	nop

00001330 <atoi>:

int
atoi(const char *s)
{
    1330:	f3 0f 1e fb          	endbr32 
    1334:	55                   	push   %ebp
    1335:	89 e5                	mov    %esp,%ebp
    1337:	53                   	push   %ebx
    1338:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    133b:	0f be 02             	movsbl (%edx),%eax
    133e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1341:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1344:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1349:	77 1a                	ja     1365 <atoi+0x35>
    134b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    134f:	90                   	nop
    n = n*10 + *s++ - '0';
    1350:	83 c2 01             	add    $0x1,%edx
    1353:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1356:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    135a:	0f be 02             	movsbl (%edx),%eax
    135d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1360:	80 fb 09             	cmp    $0x9,%bl
    1363:	76 eb                	jbe    1350 <atoi+0x20>
  return n;
}
    1365:	89 c8                	mov    %ecx,%eax
    1367:	5b                   	pop    %ebx
    1368:	5d                   	pop    %ebp
    1369:	c3                   	ret    
    136a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001370 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1370:	f3 0f 1e fb          	endbr32 
    1374:	55                   	push   %ebp
    1375:	89 e5                	mov    %esp,%ebp
    1377:	57                   	push   %edi
    1378:	8b 45 10             	mov    0x10(%ebp),%eax
    137b:	8b 55 08             	mov    0x8(%ebp),%edx
    137e:	56                   	push   %esi
    137f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1382:	85 c0                	test   %eax,%eax
    1384:	7e 0f                	jle    1395 <memmove+0x25>
    1386:	01 d0                	add    %edx,%eax
  dst = vdst;
    1388:	89 d7                	mov    %edx,%edi
    138a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    1390:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    1391:	39 f8                	cmp    %edi,%eax
    1393:	75 fb                	jne    1390 <memmove+0x20>
  return vdst;
}
    1395:	5e                   	pop    %esi
    1396:	89 d0                	mov    %edx,%eax
    1398:	5f                   	pop    %edi
    1399:	5d                   	pop    %ebp
    139a:	c3                   	ret    
    139b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    139f:	90                   	nop

000013a0 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    13a0:	f3 0f 1e fb          	endbr32 
    13a4:	55                   	push   %ebp
    13a5:	89 e5                	mov    %esp,%ebp
    13a7:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    13aa:	8d 45 f4             	lea    -0xc(%ebp),%eax
    13ad:	50                   	push   %eax
    13ae:	e8 0a 03 00 00       	call   16bd <join>
  
  return x;
}
    13b3:	c9                   	leave  
    13b4:	c3                   	ret    
    13b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000013c0 <lock_init>:

void lock_init(struct lock_t *lk){
    13c0:	f3 0f 1e fb          	endbr32 
    13c4:	55                   	push   %ebp
    13c5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    13c7:	8b 45 08             	mov    0x8(%ebp),%eax
    13ca:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    13d0:	5d                   	pop    %ebp
    13d1:	c3                   	ret    
    13d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000013e0 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    13e0:	f3 0f 1e fb          	endbr32 
    13e4:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    13e5:	b9 01 00 00 00       	mov    $0x1,%ecx
    13ea:	89 e5                	mov    %esp,%ebp
    13ec:	8b 55 08             	mov    0x8(%ebp),%edx
    13ef:	90                   	nop
    13f0:	89 c8                	mov    %ecx,%eax
    13f2:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    13f5:	85 c0                	test   %eax,%eax
    13f7:	75 f7                	jne    13f0 <lock_acquire+0x10>
}
    13f9:	5d                   	pop    %ebp
    13fa:	c3                   	ret    
    13fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13ff:	90                   	nop

00001400 <lock_release>:
void lock_release(struct lock_t *lk){
    1400:	f3 0f 1e fb          	endbr32 
    1404:	55                   	push   %ebp
    1405:	31 c0                	xor    %eax,%eax
    1407:	89 e5                	mov    %esp,%ebp
    1409:	8b 55 08             	mov    0x8(%ebp),%edx
    140c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    140f:	5d                   	pop    %ebp
    1410:	c3                   	ret    
    1411:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1418:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    141f:	90                   	nop

00001420 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1420:	f3 0f 1e fb          	endbr32 
    1424:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1425:	a1 cc 1c 00 00       	mov    0x1ccc,%eax
{
    142a:	89 e5                	mov    %esp,%ebp
    142c:	57                   	push   %edi
    142d:	56                   	push   %esi
    142e:	53                   	push   %ebx
    142f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1432:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1434:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1437:	39 c8                	cmp    %ecx,%eax
    1439:	73 15                	jae    1450 <free+0x30>
    143b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    143f:	90                   	nop
    1440:	39 d1                	cmp    %edx,%ecx
    1442:	72 14                	jb     1458 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1444:	39 d0                	cmp    %edx,%eax
    1446:	73 10                	jae    1458 <free+0x38>
{
    1448:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    144a:	8b 10                	mov    (%eax),%edx
    144c:	39 c8                	cmp    %ecx,%eax
    144e:	72 f0                	jb     1440 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1450:	39 d0                	cmp    %edx,%eax
    1452:	72 f4                	jb     1448 <free+0x28>
    1454:	39 d1                	cmp    %edx,%ecx
    1456:	73 f0                	jae    1448 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1458:	8b 73 fc             	mov    -0x4(%ebx),%esi
    145b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    145e:	39 fa                	cmp    %edi,%edx
    1460:	74 1e                	je     1480 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1462:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1465:	8b 50 04             	mov    0x4(%eax),%edx
    1468:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    146b:	39 f1                	cmp    %esi,%ecx
    146d:	74 28                	je     1497 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    146f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1471:	5b                   	pop    %ebx
  freep = p;
    1472:	a3 cc 1c 00 00       	mov    %eax,0x1ccc
}
    1477:	5e                   	pop    %esi
    1478:	5f                   	pop    %edi
    1479:	5d                   	pop    %ebp
    147a:	c3                   	ret    
    147b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    147f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1480:	03 72 04             	add    0x4(%edx),%esi
    1483:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1486:	8b 10                	mov    (%eax),%edx
    1488:	8b 12                	mov    (%edx),%edx
    148a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    148d:	8b 50 04             	mov    0x4(%eax),%edx
    1490:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1493:	39 f1                	cmp    %esi,%ecx
    1495:	75 d8                	jne    146f <free+0x4f>
    p->s.size += bp->s.size;
    1497:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    149a:	a3 cc 1c 00 00       	mov    %eax,0x1ccc
    p->s.size += bp->s.size;
    149f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    14a2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    14a5:	89 10                	mov    %edx,(%eax)
}
    14a7:	5b                   	pop    %ebx
    14a8:	5e                   	pop    %esi
    14a9:	5f                   	pop    %edi
    14aa:	5d                   	pop    %ebp
    14ab:	c3                   	ret    
    14ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000014b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    14b0:	f3 0f 1e fb          	endbr32 
    14b4:	55                   	push   %ebp
    14b5:	89 e5                	mov    %esp,%ebp
    14b7:	57                   	push   %edi
    14b8:	56                   	push   %esi
    14b9:	53                   	push   %ebx
    14ba:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    14bd:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    14c0:	8b 3d cc 1c 00 00    	mov    0x1ccc,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    14c6:	8d 70 07             	lea    0x7(%eax),%esi
    14c9:	c1 ee 03             	shr    $0x3,%esi
    14cc:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    14cf:	85 ff                	test   %edi,%edi
    14d1:	0f 84 a9 00 00 00    	je     1580 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    14d7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    14d9:	8b 48 04             	mov    0x4(%eax),%ecx
    14dc:	39 f1                	cmp    %esi,%ecx
    14de:	73 6d                	jae    154d <malloc+0x9d>
    14e0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    14e6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    14eb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    14ee:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    14f5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    14f8:	eb 17                	jmp    1511 <malloc+0x61>
    14fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1500:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1502:	8b 4a 04             	mov    0x4(%edx),%ecx
    1505:	39 f1                	cmp    %esi,%ecx
    1507:	73 4f                	jae    1558 <malloc+0xa8>
    1509:	8b 3d cc 1c 00 00    	mov    0x1ccc,%edi
    150f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1511:	39 c7                	cmp    %eax,%edi
    1513:	75 eb                	jne    1500 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1515:	83 ec 0c             	sub    $0xc,%esp
    1518:	ff 75 e4             	pushl  -0x1c(%ebp)
    151b:	e8 55 01 00 00       	call   1675 <sbrk>
  if(p == (char*)-1)
    1520:	83 c4 10             	add    $0x10,%esp
    1523:	83 f8 ff             	cmp    $0xffffffff,%eax
    1526:	74 1b                	je     1543 <malloc+0x93>
  hp->s.size = nu;
    1528:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    152b:	83 ec 0c             	sub    $0xc,%esp
    152e:	83 c0 08             	add    $0x8,%eax
    1531:	50                   	push   %eax
    1532:	e8 e9 fe ff ff       	call   1420 <free>
  return freep;
    1537:	a1 cc 1c 00 00       	mov    0x1ccc,%eax
      if((p = morecore(nunits)) == 0)
    153c:	83 c4 10             	add    $0x10,%esp
    153f:	85 c0                	test   %eax,%eax
    1541:	75 bd                	jne    1500 <malloc+0x50>
        return 0;
  }
}
    1543:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1546:	31 c0                	xor    %eax,%eax
}
    1548:	5b                   	pop    %ebx
    1549:	5e                   	pop    %esi
    154a:	5f                   	pop    %edi
    154b:	5d                   	pop    %ebp
    154c:	c3                   	ret    
    if(p->s.size >= nunits){
    154d:	89 c2                	mov    %eax,%edx
    154f:	89 f8                	mov    %edi,%eax
    1551:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1558:	39 ce                	cmp    %ecx,%esi
    155a:	74 54                	je     15b0 <malloc+0x100>
        p->s.size -= nunits;
    155c:	29 f1                	sub    %esi,%ecx
    155e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1561:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1564:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1567:	a3 cc 1c 00 00       	mov    %eax,0x1ccc
}
    156c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    156f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1572:	5b                   	pop    %ebx
    1573:	5e                   	pop    %esi
    1574:	5f                   	pop    %edi
    1575:	5d                   	pop    %ebp
    1576:	c3                   	ret    
    1577:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    157e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1580:	c7 05 cc 1c 00 00 d0 	movl   $0x1cd0,0x1ccc
    1587:	1c 00 00 
    base.s.size = 0;
    158a:	bf d0 1c 00 00       	mov    $0x1cd0,%edi
    base.s.ptr = freep = prevp = &base;
    158f:	c7 05 d0 1c 00 00 d0 	movl   $0x1cd0,0x1cd0
    1596:	1c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1599:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    159b:	c7 05 d4 1c 00 00 00 	movl   $0x0,0x1cd4
    15a2:	00 00 00 
    if(p->s.size >= nunits){
    15a5:	e9 36 ff ff ff       	jmp    14e0 <malloc+0x30>
    15aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    15b0:	8b 0a                	mov    (%edx),%ecx
    15b2:	89 08                	mov    %ecx,(%eax)
    15b4:	eb b1                	jmp    1567 <malloc+0xb7>
    15b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15bd:	8d 76 00             	lea    0x0(%esi),%esi

000015c0 <thread_create>:
{
    15c0:	f3 0f 1e fb          	endbr32 
    15c4:	55                   	push   %ebp
    15c5:	89 e5                	mov    %esp,%ebp
    15c7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    15ca:	68 00 10 00 00       	push   $0x1000
    15cf:	e8 dc fe ff ff       	call   14b0 <malloc>
return clone(start_routine,arg1,arg2,stack);
    15d4:	50                   	push   %eax
    15d5:	ff 75 10             	pushl  0x10(%ebp)
    15d8:	ff 75 0c             	pushl  0xc(%ebp)
    15db:	ff 75 08             	pushl  0x8(%ebp)
    15de:	e8 d2 00 00 00       	call   16b5 <clone>
}
    15e3:	c9                   	leave  
    15e4:	c3                   	ret    

000015e5 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    15e5:	b8 01 00 00 00       	mov    $0x1,%eax
    15ea:	cd 40                	int    $0x40
    15ec:	c3                   	ret    

000015ed <exit>:
SYSCALL(exit)
    15ed:	b8 02 00 00 00       	mov    $0x2,%eax
    15f2:	cd 40                	int    $0x40
    15f4:	c3                   	ret    

000015f5 <wait>:
SYSCALL(wait)
    15f5:	b8 03 00 00 00       	mov    $0x3,%eax
    15fa:	cd 40                	int    $0x40
    15fc:	c3                   	ret    

000015fd <pipe>:
SYSCALL(pipe)
    15fd:	b8 04 00 00 00       	mov    $0x4,%eax
    1602:	cd 40                	int    $0x40
    1604:	c3                   	ret    

00001605 <read>:
SYSCALL(read)
    1605:	b8 05 00 00 00       	mov    $0x5,%eax
    160a:	cd 40                	int    $0x40
    160c:	c3                   	ret    

0000160d <write>:
SYSCALL(write)
    160d:	b8 10 00 00 00       	mov    $0x10,%eax
    1612:	cd 40                	int    $0x40
    1614:	c3                   	ret    

00001615 <close>:
SYSCALL(close)
    1615:	b8 15 00 00 00       	mov    $0x15,%eax
    161a:	cd 40                	int    $0x40
    161c:	c3                   	ret    

0000161d <kill>:
SYSCALL(kill)
    161d:	b8 06 00 00 00       	mov    $0x6,%eax
    1622:	cd 40                	int    $0x40
    1624:	c3                   	ret    

00001625 <exec>:
SYSCALL(exec)
    1625:	b8 07 00 00 00       	mov    $0x7,%eax
    162a:	cd 40                	int    $0x40
    162c:	c3                   	ret    

0000162d <open>:
SYSCALL(open)
    162d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1632:	cd 40                	int    $0x40
    1634:	c3                   	ret    

00001635 <mknod>:
SYSCALL(mknod)
    1635:	b8 11 00 00 00       	mov    $0x11,%eax
    163a:	cd 40                	int    $0x40
    163c:	c3                   	ret    

0000163d <unlink>:
SYSCALL(unlink)
    163d:	b8 12 00 00 00       	mov    $0x12,%eax
    1642:	cd 40                	int    $0x40
    1644:	c3                   	ret    

00001645 <fstat>:
SYSCALL(fstat)
    1645:	b8 08 00 00 00       	mov    $0x8,%eax
    164a:	cd 40                	int    $0x40
    164c:	c3                   	ret    

0000164d <link>:
SYSCALL(link)
    164d:	b8 13 00 00 00       	mov    $0x13,%eax
    1652:	cd 40                	int    $0x40
    1654:	c3                   	ret    

00001655 <mkdir>:
SYSCALL(mkdir)
    1655:	b8 14 00 00 00       	mov    $0x14,%eax
    165a:	cd 40                	int    $0x40
    165c:	c3                   	ret    

0000165d <chdir>:
SYSCALL(chdir)
    165d:	b8 09 00 00 00       	mov    $0x9,%eax
    1662:	cd 40                	int    $0x40
    1664:	c3                   	ret    

00001665 <dup>:
SYSCALL(dup)
    1665:	b8 0a 00 00 00       	mov    $0xa,%eax
    166a:	cd 40                	int    $0x40
    166c:	c3                   	ret    

0000166d <getpid>:
SYSCALL(getpid)
    166d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1672:	cd 40                	int    $0x40
    1674:	c3                   	ret    

00001675 <sbrk>:
SYSCALL(sbrk)
    1675:	b8 0c 00 00 00       	mov    $0xc,%eax
    167a:	cd 40                	int    $0x40
    167c:	c3                   	ret    

0000167d <sleep>:
SYSCALL(sleep)
    167d:	b8 0d 00 00 00       	mov    $0xd,%eax
    1682:	cd 40                	int    $0x40
    1684:	c3                   	ret    

00001685 <uptime>:
SYSCALL(uptime)
    1685:	b8 0e 00 00 00       	mov    $0xe,%eax
    168a:	cd 40                	int    $0x40
    168c:	c3                   	ret    

0000168d <count>:
SYSCALL(count)
    168d:	b8 16 00 00 00       	mov    $0x16,%eax
    1692:	cd 40                	int    $0x40
    1694:	c3                   	ret    

00001695 <settickets>:

SYSCALL(settickets)
    1695:	b8 17 00 00 00       	mov    $0x17,%eax
    169a:	cd 40                	int    $0x40
    169c:	c3                   	ret    

0000169d <getpinfo>:
SYSCALL(getpinfo)
    169d:	b8 18 00 00 00       	mov    $0x18,%eax
    16a2:	cd 40                	int    $0x40
    16a4:	c3                   	ret    

000016a5 <mprotect>:

SYSCALL(mprotect)
    16a5:	b8 19 00 00 00       	mov    $0x19,%eax
    16aa:	cd 40                	int    $0x40
    16ac:	c3                   	ret    

000016ad <munprotect>:
SYSCALL(munprotect)
    16ad:	b8 1a 00 00 00       	mov    $0x1a,%eax
    16b2:	cd 40                	int    $0x40
    16b4:	c3                   	ret    

000016b5 <clone>:

SYSCALL(clone)
    16b5:	b8 1b 00 00 00       	mov    $0x1b,%eax
    16ba:	cd 40                	int    $0x40
    16bc:	c3                   	ret    

000016bd <join>:
SYSCALL(join)
    16bd:	b8 1c 00 00 00       	mov    $0x1c,%eax
    16c2:	cd 40                	int    $0x40
    16c4:	c3                   	ret    
    16c5:	66 90                	xchg   %ax,%ax
    16c7:	66 90                	xchg   %ax,%ax
    16c9:	66 90                	xchg   %ax,%ax
    16cb:	66 90                	xchg   %ax,%ax
    16cd:	66 90                	xchg   %ax,%ax
    16cf:	90                   	nop

000016d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    16d0:	55                   	push   %ebp
    16d1:	89 e5                	mov    %esp,%ebp
    16d3:	57                   	push   %edi
    16d4:	56                   	push   %esi
    16d5:	53                   	push   %ebx
    16d6:	83 ec 3c             	sub    $0x3c,%esp
    16d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    16dc:	89 d1                	mov    %edx,%ecx
{
    16de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    16e1:	85 d2                	test   %edx,%edx
    16e3:	0f 89 7f 00 00 00    	jns    1768 <printint+0x98>
    16e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    16ed:	74 79                	je     1768 <printint+0x98>
    neg = 1;
    16ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    16f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    16f8:	31 db                	xor    %ebx,%ebx
    16fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
    16fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1700:	89 c8                	mov    %ecx,%eax
    1702:	31 d2                	xor    %edx,%edx
    1704:	89 cf                	mov    %ecx,%edi
    1706:	f7 75 c4             	divl   -0x3c(%ebp)
    1709:	0f b6 92 74 19 00 00 	movzbl 0x1974(%edx),%edx
    1710:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1713:	89 d8                	mov    %ebx,%eax
    1715:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1718:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    171b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    171e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1721:	76 dd                	jbe    1700 <printint+0x30>
  if(neg)
    1723:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1726:	85 c9                	test   %ecx,%ecx
    1728:	74 0c                	je     1736 <printint+0x66>
    buf[i++] = '-';
    172a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    172f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1731:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1736:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1739:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    173d:	eb 07                	jmp    1746 <printint+0x76>
    173f:	90                   	nop
    1740:	0f b6 13             	movzbl (%ebx),%edx
    1743:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1746:	83 ec 04             	sub    $0x4,%esp
    1749:	88 55 d7             	mov    %dl,-0x29(%ebp)
    174c:	6a 01                	push   $0x1
    174e:	56                   	push   %esi
    174f:	57                   	push   %edi
    1750:	e8 b8 fe ff ff       	call   160d <write>
  while(--i >= 0)
    1755:	83 c4 10             	add    $0x10,%esp
    1758:	39 de                	cmp    %ebx,%esi
    175a:	75 e4                	jne    1740 <printint+0x70>
    putc(fd, buf[i]);
}
    175c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    175f:	5b                   	pop    %ebx
    1760:	5e                   	pop    %esi
    1761:	5f                   	pop    %edi
    1762:	5d                   	pop    %ebp
    1763:	c3                   	ret    
    1764:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1768:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    176f:	eb 87                	jmp    16f8 <printint+0x28>
    1771:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1778:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    177f:	90                   	nop

00001780 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1780:	f3 0f 1e fb          	endbr32 
    1784:	55                   	push   %ebp
    1785:	89 e5                	mov    %esp,%ebp
    1787:	57                   	push   %edi
    1788:	56                   	push   %esi
    1789:	53                   	push   %ebx
    178a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    178d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1790:	0f b6 1e             	movzbl (%esi),%ebx
    1793:	84 db                	test   %bl,%bl
    1795:	0f 84 b4 00 00 00    	je     184f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    179b:	8d 45 10             	lea    0x10(%ebp),%eax
    179e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    17a1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    17a4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    17a6:	89 45 d0             	mov    %eax,-0x30(%ebp)
    17a9:	eb 33                	jmp    17de <printf+0x5e>
    17ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17af:	90                   	nop
    17b0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    17b3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    17b8:	83 f8 25             	cmp    $0x25,%eax
    17bb:	74 17                	je     17d4 <printf+0x54>
  write(fd, &c, 1);
    17bd:	83 ec 04             	sub    $0x4,%esp
    17c0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    17c3:	6a 01                	push   $0x1
    17c5:	57                   	push   %edi
    17c6:	ff 75 08             	pushl  0x8(%ebp)
    17c9:	e8 3f fe ff ff       	call   160d <write>
    17ce:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    17d1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    17d4:	0f b6 1e             	movzbl (%esi),%ebx
    17d7:	83 c6 01             	add    $0x1,%esi
    17da:	84 db                	test   %bl,%bl
    17dc:	74 71                	je     184f <printf+0xcf>
    c = fmt[i] & 0xff;
    17de:	0f be cb             	movsbl %bl,%ecx
    17e1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    17e4:	85 d2                	test   %edx,%edx
    17e6:	74 c8                	je     17b0 <printf+0x30>
      }
    } else if(state == '%'){
    17e8:	83 fa 25             	cmp    $0x25,%edx
    17eb:	75 e7                	jne    17d4 <printf+0x54>
      if(c == 'd'){
    17ed:	83 f8 64             	cmp    $0x64,%eax
    17f0:	0f 84 9a 00 00 00    	je     1890 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    17f6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    17fc:	83 f9 70             	cmp    $0x70,%ecx
    17ff:	74 5f                	je     1860 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1801:	83 f8 73             	cmp    $0x73,%eax
    1804:	0f 84 d6 00 00 00    	je     18e0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    180a:	83 f8 63             	cmp    $0x63,%eax
    180d:	0f 84 8d 00 00 00    	je     18a0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1813:	83 f8 25             	cmp    $0x25,%eax
    1816:	0f 84 b4 00 00 00    	je     18d0 <printf+0x150>
  write(fd, &c, 1);
    181c:	83 ec 04             	sub    $0x4,%esp
    181f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1823:	6a 01                	push   $0x1
    1825:	57                   	push   %edi
    1826:	ff 75 08             	pushl  0x8(%ebp)
    1829:	e8 df fd ff ff       	call   160d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    182e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1831:	83 c4 0c             	add    $0xc,%esp
    1834:	6a 01                	push   $0x1
    1836:	83 c6 01             	add    $0x1,%esi
    1839:	57                   	push   %edi
    183a:	ff 75 08             	pushl  0x8(%ebp)
    183d:	e8 cb fd ff ff       	call   160d <write>
  for(i = 0; fmt[i]; i++){
    1842:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1846:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1849:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    184b:	84 db                	test   %bl,%bl
    184d:	75 8f                	jne    17de <printf+0x5e>
    }
  }
}
    184f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1852:	5b                   	pop    %ebx
    1853:	5e                   	pop    %esi
    1854:	5f                   	pop    %edi
    1855:	5d                   	pop    %ebp
    1856:	c3                   	ret    
    1857:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    185e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1860:	83 ec 0c             	sub    $0xc,%esp
    1863:	b9 10 00 00 00       	mov    $0x10,%ecx
    1868:	6a 00                	push   $0x0
    186a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    186d:	8b 45 08             	mov    0x8(%ebp),%eax
    1870:	8b 13                	mov    (%ebx),%edx
    1872:	e8 59 fe ff ff       	call   16d0 <printint>
        ap++;
    1877:	89 d8                	mov    %ebx,%eax
    1879:	83 c4 10             	add    $0x10,%esp
      state = 0;
    187c:	31 d2                	xor    %edx,%edx
        ap++;
    187e:	83 c0 04             	add    $0x4,%eax
    1881:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1884:	e9 4b ff ff ff       	jmp    17d4 <printf+0x54>
    1889:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1890:	83 ec 0c             	sub    $0xc,%esp
    1893:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1898:	6a 01                	push   $0x1
    189a:	eb ce                	jmp    186a <printf+0xea>
    189c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    18a0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    18a3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    18a6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    18a8:	6a 01                	push   $0x1
        ap++;
    18aa:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    18ad:	57                   	push   %edi
    18ae:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    18b1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    18b4:	e8 54 fd ff ff       	call   160d <write>
        ap++;
    18b9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    18bc:	83 c4 10             	add    $0x10,%esp
      state = 0;
    18bf:	31 d2                	xor    %edx,%edx
    18c1:	e9 0e ff ff ff       	jmp    17d4 <printf+0x54>
    18c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18cd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    18d0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    18d3:	83 ec 04             	sub    $0x4,%esp
    18d6:	e9 59 ff ff ff       	jmp    1834 <printf+0xb4>
    18db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    18df:	90                   	nop
        s = (char*)*ap;
    18e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    18e3:	8b 18                	mov    (%eax),%ebx
        ap++;
    18e5:	83 c0 04             	add    $0x4,%eax
    18e8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    18eb:	85 db                	test   %ebx,%ebx
    18ed:	74 17                	je     1906 <printf+0x186>
        while(*s != 0){
    18ef:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    18f2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    18f4:	84 c0                	test   %al,%al
    18f6:	0f 84 d8 fe ff ff    	je     17d4 <printf+0x54>
    18fc:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    18ff:	89 de                	mov    %ebx,%esi
    1901:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1904:	eb 1a                	jmp    1920 <printf+0x1a0>
          s = "(null)";
    1906:	bb 6b 19 00 00       	mov    $0x196b,%ebx
        while(*s != 0){
    190b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    190e:	b8 28 00 00 00       	mov    $0x28,%eax
    1913:	89 de                	mov    %ebx,%esi
    1915:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1918:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    191f:	90                   	nop
  write(fd, &c, 1);
    1920:	83 ec 04             	sub    $0x4,%esp
          s++;
    1923:	83 c6 01             	add    $0x1,%esi
    1926:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1929:	6a 01                	push   $0x1
    192b:	57                   	push   %edi
    192c:	53                   	push   %ebx
    192d:	e8 db fc ff ff       	call   160d <write>
        while(*s != 0){
    1932:	0f b6 06             	movzbl (%esi),%eax
    1935:	83 c4 10             	add    $0x10,%esp
    1938:	84 c0                	test   %al,%al
    193a:	75 e4                	jne    1920 <printf+0x1a0>
    193c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    193f:	31 d2                	xor    %edx,%edx
    1941:	e9 8e fe ff ff       	jmp    17d4 <printf+0x54>
