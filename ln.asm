
_ln:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char *argv[])
{
    1000:	f3 0f 1e fb          	endbr32 
    1004:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1008:	83 e4 f0             	and    $0xfffffff0,%esp
    100b:	ff 71 fc             	pushl  -0x4(%ecx)
  if(argc != 3){
    100e:	83 39 03             	cmpl   $0x3,(%ecx)
{
    1011:	55                   	push   %ebp
    1012:	89 e5                	mov    %esp,%ebp
    1014:	53                   	push   %ebx
    1015:	51                   	push   %ecx
    1016:	8b 59 04             	mov    0x4(%ecx),%ebx
  if(argc != 3){
    1019:	74 13                	je     102e <main+0x2e>
    printf(2, "Usage: ln old new\n");
    101b:	52                   	push   %edx
    101c:	52                   	push   %edx
    101d:	68 68 18 00 00       	push   $0x1868
    1022:	6a 02                	push   $0x2
    1024:	e8 77 06 00 00       	call   16a0 <printf>
    exit();
    1029:	e8 df 04 00 00       	call   150d <exit>
  }
  if(link(argv[1], argv[2]) < 0)
    102e:	50                   	push   %eax
    102f:	50                   	push   %eax
    1030:	ff 73 08             	pushl  0x8(%ebx)
    1033:	ff 73 04             	pushl  0x4(%ebx)
    1036:	e8 32 05 00 00       	call   156d <link>
    103b:	83 c4 10             	add    $0x10,%esp
    103e:	85 c0                	test   %eax,%eax
    1040:	78 05                	js     1047 <main+0x47>
    printf(2, "link %s %s: failed\n", argv[1], argv[2]);
  exit();
    1042:	e8 c6 04 00 00       	call   150d <exit>
    printf(2, "link %s %s: failed\n", argv[1], argv[2]);
    1047:	ff 73 08             	pushl  0x8(%ebx)
    104a:	ff 73 04             	pushl  0x4(%ebx)
    104d:	68 7b 18 00 00       	push   $0x187b
    1052:	6a 02                	push   $0x2
    1054:	e8 47 06 00 00       	call   16a0 <printf>
    1059:	83 c4 10             	add    $0x10,%esp
    105c:	eb e4                	jmp    1042 <main+0x42>
    105e:	66 90                	xchg   %ax,%ax

00001060 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1060:	f3 0f 1e fb          	endbr32 
    1064:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1065:	31 c0                	xor    %eax,%eax
{
    1067:	89 e5                	mov    %esp,%ebp
    1069:	53                   	push   %ebx
    106a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    106d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1070:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1074:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1077:	83 c0 01             	add    $0x1,%eax
    107a:	84 d2                	test   %dl,%dl
    107c:	75 f2                	jne    1070 <strcpy+0x10>
    ;
  return os;
}
    107e:	89 c8                	mov    %ecx,%eax
    1080:	5b                   	pop    %ebx
    1081:	5d                   	pop    %ebp
    1082:	c3                   	ret    
    1083:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    108a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001090 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1090:	f3 0f 1e fb          	endbr32 
    1094:	55                   	push   %ebp
    1095:	89 e5                	mov    %esp,%ebp
    1097:	53                   	push   %ebx
    1098:	8b 4d 08             	mov    0x8(%ebp),%ecx
    109b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    109e:	0f b6 01             	movzbl (%ecx),%eax
    10a1:	0f b6 1a             	movzbl (%edx),%ebx
    10a4:	84 c0                	test   %al,%al
    10a6:	75 19                	jne    10c1 <strcmp+0x31>
    10a8:	eb 26                	jmp    10d0 <strcmp+0x40>
    10aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10b0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    10b4:	83 c1 01             	add    $0x1,%ecx
    10b7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    10ba:	0f b6 1a             	movzbl (%edx),%ebx
    10bd:	84 c0                	test   %al,%al
    10bf:	74 0f                	je     10d0 <strcmp+0x40>
    10c1:	38 d8                	cmp    %bl,%al
    10c3:	74 eb                	je     10b0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    10c5:	29 d8                	sub    %ebx,%eax
}
    10c7:	5b                   	pop    %ebx
    10c8:	5d                   	pop    %ebp
    10c9:	c3                   	ret    
    10ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10d0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    10d2:	29 d8                	sub    %ebx,%eax
}
    10d4:	5b                   	pop    %ebx
    10d5:	5d                   	pop    %ebp
    10d6:	c3                   	ret    
    10d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10de:	66 90                	xchg   %ax,%ax

000010e0 <strlen>:

uint
strlen(const char *s)
{
    10e0:	f3 0f 1e fb          	endbr32 
    10e4:	55                   	push   %ebp
    10e5:	89 e5                	mov    %esp,%ebp
    10e7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    10ea:	80 3a 00             	cmpb   $0x0,(%edx)
    10ed:	74 21                	je     1110 <strlen+0x30>
    10ef:	31 c0                	xor    %eax,%eax
    10f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10f8:	83 c0 01             	add    $0x1,%eax
    10fb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    10ff:	89 c1                	mov    %eax,%ecx
    1101:	75 f5                	jne    10f8 <strlen+0x18>
    ;
  return n;
}
    1103:	89 c8                	mov    %ecx,%eax
    1105:	5d                   	pop    %ebp
    1106:	c3                   	ret    
    1107:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    110e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1110:	31 c9                	xor    %ecx,%ecx
}
    1112:	5d                   	pop    %ebp
    1113:	89 c8                	mov    %ecx,%eax
    1115:	c3                   	ret    
    1116:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    111d:	8d 76 00             	lea    0x0(%esi),%esi

00001120 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1120:	f3 0f 1e fb          	endbr32 
    1124:	55                   	push   %ebp
    1125:	89 e5                	mov    %esp,%ebp
    1127:	57                   	push   %edi
    1128:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    112b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    112e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1131:	89 d7                	mov    %edx,%edi
    1133:	fc                   	cld    
    1134:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1136:	89 d0                	mov    %edx,%eax
    1138:	5f                   	pop    %edi
    1139:	5d                   	pop    %ebp
    113a:	c3                   	ret    
    113b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    113f:	90                   	nop

00001140 <strchr>:

char*
strchr(const char *s, char c)
{
    1140:	f3 0f 1e fb          	endbr32 
    1144:	55                   	push   %ebp
    1145:	89 e5                	mov    %esp,%ebp
    1147:	8b 45 08             	mov    0x8(%ebp),%eax
    114a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    114e:	0f b6 10             	movzbl (%eax),%edx
    1151:	84 d2                	test   %dl,%dl
    1153:	75 16                	jne    116b <strchr+0x2b>
    1155:	eb 21                	jmp    1178 <strchr+0x38>
    1157:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    115e:	66 90                	xchg   %ax,%ax
    1160:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1164:	83 c0 01             	add    $0x1,%eax
    1167:	84 d2                	test   %dl,%dl
    1169:	74 0d                	je     1178 <strchr+0x38>
    if(*s == c)
    116b:	38 d1                	cmp    %dl,%cl
    116d:	75 f1                	jne    1160 <strchr+0x20>
      return (char*)s;
  return 0;
}
    116f:	5d                   	pop    %ebp
    1170:	c3                   	ret    
    1171:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1178:	31 c0                	xor    %eax,%eax
}
    117a:	5d                   	pop    %ebp
    117b:	c3                   	ret    
    117c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001180 <gets>:

char*
gets(char *buf, int max)
{
    1180:	f3 0f 1e fb          	endbr32 
    1184:	55                   	push   %ebp
    1185:	89 e5                	mov    %esp,%ebp
    1187:	57                   	push   %edi
    1188:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1189:	31 f6                	xor    %esi,%esi
{
    118b:	53                   	push   %ebx
    118c:	89 f3                	mov    %esi,%ebx
    118e:	83 ec 1c             	sub    $0x1c,%esp
    1191:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1194:	eb 33                	jmp    11c9 <gets+0x49>
    1196:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    119d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    11a0:	83 ec 04             	sub    $0x4,%esp
    11a3:	8d 45 e7             	lea    -0x19(%ebp),%eax
    11a6:	6a 01                	push   $0x1
    11a8:	50                   	push   %eax
    11a9:	6a 00                	push   $0x0
    11ab:	e8 75 03 00 00       	call   1525 <read>
    if(cc < 1)
    11b0:	83 c4 10             	add    $0x10,%esp
    11b3:	85 c0                	test   %eax,%eax
    11b5:	7e 1c                	jle    11d3 <gets+0x53>
      break;
    buf[i++] = c;
    11b7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    11bb:	83 c7 01             	add    $0x1,%edi
    11be:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    11c1:	3c 0a                	cmp    $0xa,%al
    11c3:	74 23                	je     11e8 <gets+0x68>
    11c5:	3c 0d                	cmp    $0xd,%al
    11c7:	74 1f                	je     11e8 <gets+0x68>
  for(i=0; i+1 < max; ){
    11c9:	83 c3 01             	add    $0x1,%ebx
    11cc:	89 fe                	mov    %edi,%esi
    11ce:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    11d1:	7c cd                	jl     11a0 <gets+0x20>
    11d3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    11d5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    11d8:	c6 03 00             	movb   $0x0,(%ebx)
}
    11db:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11de:	5b                   	pop    %ebx
    11df:	5e                   	pop    %esi
    11e0:	5f                   	pop    %edi
    11e1:	5d                   	pop    %ebp
    11e2:	c3                   	ret    
    11e3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11e7:	90                   	nop
    11e8:	8b 75 08             	mov    0x8(%ebp),%esi
    11eb:	8b 45 08             	mov    0x8(%ebp),%eax
    11ee:	01 de                	add    %ebx,%esi
    11f0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    11f2:	c6 03 00             	movb   $0x0,(%ebx)
}
    11f5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11f8:	5b                   	pop    %ebx
    11f9:	5e                   	pop    %esi
    11fa:	5f                   	pop    %edi
    11fb:	5d                   	pop    %ebp
    11fc:	c3                   	ret    
    11fd:	8d 76 00             	lea    0x0(%esi),%esi

00001200 <stat>:

int
stat(const char *n, struct stat *st)
{
    1200:	f3 0f 1e fb          	endbr32 
    1204:	55                   	push   %ebp
    1205:	89 e5                	mov    %esp,%ebp
    1207:	56                   	push   %esi
    1208:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1209:	83 ec 08             	sub    $0x8,%esp
    120c:	6a 00                	push   $0x0
    120e:	ff 75 08             	pushl  0x8(%ebp)
    1211:	e8 37 03 00 00       	call   154d <open>
  if(fd < 0)
    1216:	83 c4 10             	add    $0x10,%esp
    1219:	85 c0                	test   %eax,%eax
    121b:	78 2b                	js     1248 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    121d:	83 ec 08             	sub    $0x8,%esp
    1220:	ff 75 0c             	pushl  0xc(%ebp)
    1223:	89 c3                	mov    %eax,%ebx
    1225:	50                   	push   %eax
    1226:	e8 3a 03 00 00       	call   1565 <fstat>
  close(fd);
    122b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    122e:	89 c6                	mov    %eax,%esi
  close(fd);
    1230:	e8 00 03 00 00       	call   1535 <close>
  return r;
    1235:	83 c4 10             	add    $0x10,%esp
}
    1238:	8d 65 f8             	lea    -0x8(%ebp),%esp
    123b:	89 f0                	mov    %esi,%eax
    123d:	5b                   	pop    %ebx
    123e:	5e                   	pop    %esi
    123f:	5d                   	pop    %ebp
    1240:	c3                   	ret    
    1241:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1248:	be ff ff ff ff       	mov    $0xffffffff,%esi
    124d:	eb e9                	jmp    1238 <stat+0x38>
    124f:	90                   	nop

00001250 <atoi>:

int
atoi(const char *s)
{
    1250:	f3 0f 1e fb          	endbr32 
    1254:	55                   	push   %ebp
    1255:	89 e5                	mov    %esp,%ebp
    1257:	53                   	push   %ebx
    1258:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    125b:	0f be 02             	movsbl (%edx),%eax
    125e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1261:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1264:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1269:	77 1a                	ja     1285 <atoi+0x35>
    126b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    126f:	90                   	nop
    n = n*10 + *s++ - '0';
    1270:	83 c2 01             	add    $0x1,%edx
    1273:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1276:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    127a:	0f be 02             	movsbl (%edx),%eax
    127d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1280:	80 fb 09             	cmp    $0x9,%bl
    1283:	76 eb                	jbe    1270 <atoi+0x20>
  return n;
}
    1285:	89 c8                	mov    %ecx,%eax
    1287:	5b                   	pop    %ebx
    1288:	5d                   	pop    %ebp
    1289:	c3                   	ret    
    128a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001290 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1290:	f3 0f 1e fb          	endbr32 
    1294:	55                   	push   %ebp
    1295:	89 e5                	mov    %esp,%ebp
    1297:	57                   	push   %edi
    1298:	8b 45 10             	mov    0x10(%ebp),%eax
    129b:	8b 55 08             	mov    0x8(%ebp),%edx
    129e:	56                   	push   %esi
    129f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    12a2:	85 c0                	test   %eax,%eax
    12a4:	7e 0f                	jle    12b5 <memmove+0x25>
    12a6:	01 d0                	add    %edx,%eax
  dst = vdst;
    12a8:	89 d7                	mov    %edx,%edi
    12aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    12b0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    12b1:	39 f8                	cmp    %edi,%eax
    12b3:	75 fb                	jne    12b0 <memmove+0x20>
  return vdst;
}
    12b5:	5e                   	pop    %esi
    12b6:	89 d0                	mov    %edx,%eax
    12b8:	5f                   	pop    %edi
    12b9:	5d                   	pop    %ebp
    12ba:	c3                   	ret    
    12bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12bf:	90                   	nop

000012c0 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    12c0:	f3 0f 1e fb          	endbr32 
    12c4:	55                   	push   %ebp
    12c5:	89 e5                	mov    %esp,%ebp
    12c7:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    12ca:	8d 45 f4             	lea    -0xc(%ebp),%eax
    12cd:	50                   	push   %eax
    12ce:	e8 0a 03 00 00       	call   15dd <join>
  
  return x;
}
    12d3:	c9                   	leave  
    12d4:	c3                   	ret    
    12d5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000012e0 <lock_init>:

void lock_init(struct lock_t *lk){
    12e0:	f3 0f 1e fb          	endbr32 
    12e4:	55                   	push   %ebp
    12e5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    12e7:	8b 45 08             	mov    0x8(%ebp),%eax
    12ea:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    12f0:	5d                   	pop    %ebp
    12f1:	c3                   	ret    
    12f2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001300 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    1300:	f3 0f 1e fb          	endbr32 
    1304:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1305:	b9 01 00 00 00       	mov    $0x1,%ecx
    130a:	89 e5                	mov    %esp,%ebp
    130c:	8b 55 08             	mov    0x8(%ebp),%edx
    130f:	90                   	nop
    1310:	89 c8                	mov    %ecx,%eax
    1312:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1315:	85 c0                	test   %eax,%eax
    1317:	75 f7                	jne    1310 <lock_acquire+0x10>
}
    1319:	5d                   	pop    %ebp
    131a:	c3                   	ret    
    131b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    131f:	90                   	nop

00001320 <lock_release>:
void lock_release(struct lock_t *lk){
    1320:	f3 0f 1e fb          	endbr32 
    1324:	55                   	push   %ebp
    1325:	31 c0                	xor    %eax,%eax
    1327:	89 e5                	mov    %esp,%ebp
    1329:	8b 55 08             	mov    0x8(%ebp),%edx
    132c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    132f:	5d                   	pop    %ebp
    1330:	c3                   	ret    
    1331:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1338:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    133f:	90                   	nop

00001340 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1340:	f3 0f 1e fb          	endbr32 
    1344:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1345:	a1 e4 1b 00 00       	mov    0x1be4,%eax
{
    134a:	89 e5                	mov    %esp,%ebp
    134c:	57                   	push   %edi
    134d:	56                   	push   %esi
    134e:	53                   	push   %ebx
    134f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1352:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1354:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1357:	39 c8                	cmp    %ecx,%eax
    1359:	73 15                	jae    1370 <free+0x30>
    135b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    135f:	90                   	nop
    1360:	39 d1                	cmp    %edx,%ecx
    1362:	72 14                	jb     1378 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1364:	39 d0                	cmp    %edx,%eax
    1366:	73 10                	jae    1378 <free+0x38>
{
    1368:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    136a:	8b 10                	mov    (%eax),%edx
    136c:	39 c8                	cmp    %ecx,%eax
    136e:	72 f0                	jb     1360 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1370:	39 d0                	cmp    %edx,%eax
    1372:	72 f4                	jb     1368 <free+0x28>
    1374:	39 d1                	cmp    %edx,%ecx
    1376:	73 f0                	jae    1368 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1378:	8b 73 fc             	mov    -0x4(%ebx),%esi
    137b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    137e:	39 fa                	cmp    %edi,%edx
    1380:	74 1e                	je     13a0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1382:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1385:	8b 50 04             	mov    0x4(%eax),%edx
    1388:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    138b:	39 f1                	cmp    %esi,%ecx
    138d:	74 28                	je     13b7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    138f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1391:	5b                   	pop    %ebx
  freep = p;
    1392:	a3 e4 1b 00 00       	mov    %eax,0x1be4
}
    1397:	5e                   	pop    %esi
    1398:	5f                   	pop    %edi
    1399:	5d                   	pop    %ebp
    139a:	c3                   	ret    
    139b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    139f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    13a0:	03 72 04             	add    0x4(%edx),%esi
    13a3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    13a6:	8b 10                	mov    (%eax),%edx
    13a8:	8b 12                	mov    (%edx),%edx
    13aa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    13ad:	8b 50 04             	mov    0x4(%eax),%edx
    13b0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    13b3:	39 f1                	cmp    %esi,%ecx
    13b5:	75 d8                	jne    138f <free+0x4f>
    p->s.size += bp->s.size;
    13b7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    13ba:	a3 e4 1b 00 00       	mov    %eax,0x1be4
    p->s.size += bp->s.size;
    13bf:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    13c2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    13c5:	89 10                	mov    %edx,(%eax)
}
    13c7:	5b                   	pop    %ebx
    13c8:	5e                   	pop    %esi
    13c9:	5f                   	pop    %edi
    13ca:	5d                   	pop    %ebp
    13cb:	c3                   	ret    
    13cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000013d0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    13d0:	f3 0f 1e fb          	endbr32 
    13d4:	55                   	push   %ebp
    13d5:	89 e5                	mov    %esp,%ebp
    13d7:	57                   	push   %edi
    13d8:	56                   	push   %esi
    13d9:	53                   	push   %ebx
    13da:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    13dd:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    13e0:	8b 3d e4 1b 00 00    	mov    0x1be4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    13e6:	8d 70 07             	lea    0x7(%eax),%esi
    13e9:	c1 ee 03             	shr    $0x3,%esi
    13ec:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    13ef:	85 ff                	test   %edi,%edi
    13f1:	0f 84 a9 00 00 00    	je     14a0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    13f7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    13f9:	8b 48 04             	mov    0x4(%eax),%ecx
    13fc:	39 f1                	cmp    %esi,%ecx
    13fe:	73 6d                	jae    146d <malloc+0x9d>
    1400:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1406:	bb 00 10 00 00       	mov    $0x1000,%ebx
    140b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    140e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1415:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1418:	eb 17                	jmp    1431 <malloc+0x61>
    141a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1420:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1422:	8b 4a 04             	mov    0x4(%edx),%ecx
    1425:	39 f1                	cmp    %esi,%ecx
    1427:	73 4f                	jae    1478 <malloc+0xa8>
    1429:	8b 3d e4 1b 00 00    	mov    0x1be4,%edi
    142f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1431:	39 c7                	cmp    %eax,%edi
    1433:	75 eb                	jne    1420 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1435:	83 ec 0c             	sub    $0xc,%esp
    1438:	ff 75 e4             	pushl  -0x1c(%ebp)
    143b:	e8 55 01 00 00       	call   1595 <sbrk>
  if(p == (char*)-1)
    1440:	83 c4 10             	add    $0x10,%esp
    1443:	83 f8 ff             	cmp    $0xffffffff,%eax
    1446:	74 1b                	je     1463 <malloc+0x93>
  hp->s.size = nu;
    1448:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    144b:	83 ec 0c             	sub    $0xc,%esp
    144e:	83 c0 08             	add    $0x8,%eax
    1451:	50                   	push   %eax
    1452:	e8 e9 fe ff ff       	call   1340 <free>
  return freep;
    1457:	a1 e4 1b 00 00       	mov    0x1be4,%eax
      if((p = morecore(nunits)) == 0)
    145c:	83 c4 10             	add    $0x10,%esp
    145f:	85 c0                	test   %eax,%eax
    1461:	75 bd                	jne    1420 <malloc+0x50>
        return 0;
  }
}
    1463:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1466:	31 c0                	xor    %eax,%eax
}
    1468:	5b                   	pop    %ebx
    1469:	5e                   	pop    %esi
    146a:	5f                   	pop    %edi
    146b:	5d                   	pop    %ebp
    146c:	c3                   	ret    
    if(p->s.size >= nunits){
    146d:	89 c2                	mov    %eax,%edx
    146f:	89 f8                	mov    %edi,%eax
    1471:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1478:	39 ce                	cmp    %ecx,%esi
    147a:	74 54                	je     14d0 <malloc+0x100>
        p->s.size -= nunits;
    147c:	29 f1                	sub    %esi,%ecx
    147e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1481:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1484:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1487:	a3 e4 1b 00 00       	mov    %eax,0x1be4
}
    148c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    148f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1492:	5b                   	pop    %ebx
    1493:	5e                   	pop    %esi
    1494:	5f                   	pop    %edi
    1495:	5d                   	pop    %ebp
    1496:	c3                   	ret    
    1497:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    149e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    14a0:	c7 05 e4 1b 00 00 e8 	movl   $0x1be8,0x1be4
    14a7:	1b 00 00 
    base.s.size = 0;
    14aa:	bf e8 1b 00 00       	mov    $0x1be8,%edi
    base.s.ptr = freep = prevp = &base;
    14af:	c7 05 e8 1b 00 00 e8 	movl   $0x1be8,0x1be8
    14b6:	1b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    14b9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    14bb:	c7 05 ec 1b 00 00 00 	movl   $0x0,0x1bec
    14c2:	00 00 00 
    if(p->s.size >= nunits){
    14c5:	e9 36 ff ff ff       	jmp    1400 <malloc+0x30>
    14ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    14d0:	8b 0a                	mov    (%edx),%ecx
    14d2:	89 08                	mov    %ecx,(%eax)
    14d4:	eb b1                	jmp    1487 <malloc+0xb7>
    14d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14dd:	8d 76 00             	lea    0x0(%esi),%esi

000014e0 <thread_create>:
{
    14e0:	f3 0f 1e fb          	endbr32 
    14e4:	55                   	push   %ebp
    14e5:	89 e5                	mov    %esp,%ebp
    14e7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    14ea:	68 00 10 00 00       	push   $0x1000
    14ef:	e8 dc fe ff ff       	call   13d0 <malloc>
return clone(start_routine,arg1,arg2,stack);
    14f4:	50                   	push   %eax
    14f5:	ff 75 10             	pushl  0x10(%ebp)
    14f8:	ff 75 0c             	pushl  0xc(%ebp)
    14fb:	ff 75 08             	pushl  0x8(%ebp)
    14fe:	e8 d2 00 00 00       	call   15d5 <clone>
}
    1503:	c9                   	leave  
    1504:	c3                   	ret    

00001505 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1505:	b8 01 00 00 00       	mov    $0x1,%eax
    150a:	cd 40                	int    $0x40
    150c:	c3                   	ret    

0000150d <exit>:
SYSCALL(exit)
    150d:	b8 02 00 00 00       	mov    $0x2,%eax
    1512:	cd 40                	int    $0x40
    1514:	c3                   	ret    

00001515 <wait>:
SYSCALL(wait)
    1515:	b8 03 00 00 00       	mov    $0x3,%eax
    151a:	cd 40                	int    $0x40
    151c:	c3                   	ret    

0000151d <pipe>:
SYSCALL(pipe)
    151d:	b8 04 00 00 00       	mov    $0x4,%eax
    1522:	cd 40                	int    $0x40
    1524:	c3                   	ret    

00001525 <read>:
SYSCALL(read)
    1525:	b8 05 00 00 00       	mov    $0x5,%eax
    152a:	cd 40                	int    $0x40
    152c:	c3                   	ret    

0000152d <write>:
SYSCALL(write)
    152d:	b8 10 00 00 00       	mov    $0x10,%eax
    1532:	cd 40                	int    $0x40
    1534:	c3                   	ret    

00001535 <close>:
SYSCALL(close)
    1535:	b8 15 00 00 00       	mov    $0x15,%eax
    153a:	cd 40                	int    $0x40
    153c:	c3                   	ret    

0000153d <kill>:
SYSCALL(kill)
    153d:	b8 06 00 00 00       	mov    $0x6,%eax
    1542:	cd 40                	int    $0x40
    1544:	c3                   	ret    

00001545 <exec>:
SYSCALL(exec)
    1545:	b8 07 00 00 00       	mov    $0x7,%eax
    154a:	cd 40                	int    $0x40
    154c:	c3                   	ret    

0000154d <open>:
SYSCALL(open)
    154d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1552:	cd 40                	int    $0x40
    1554:	c3                   	ret    

00001555 <mknod>:
SYSCALL(mknod)
    1555:	b8 11 00 00 00       	mov    $0x11,%eax
    155a:	cd 40                	int    $0x40
    155c:	c3                   	ret    

0000155d <unlink>:
SYSCALL(unlink)
    155d:	b8 12 00 00 00       	mov    $0x12,%eax
    1562:	cd 40                	int    $0x40
    1564:	c3                   	ret    

00001565 <fstat>:
SYSCALL(fstat)
    1565:	b8 08 00 00 00       	mov    $0x8,%eax
    156a:	cd 40                	int    $0x40
    156c:	c3                   	ret    

0000156d <link>:
SYSCALL(link)
    156d:	b8 13 00 00 00       	mov    $0x13,%eax
    1572:	cd 40                	int    $0x40
    1574:	c3                   	ret    

00001575 <mkdir>:
SYSCALL(mkdir)
    1575:	b8 14 00 00 00       	mov    $0x14,%eax
    157a:	cd 40                	int    $0x40
    157c:	c3                   	ret    

0000157d <chdir>:
SYSCALL(chdir)
    157d:	b8 09 00 00 00       	mov    $0x9,%eax
    1582:	cd 40                	int    $0x40
    1584:	c3                   	ret    

00001585 <dup>:
SYSCALL(dup)
    1585:	b8 0a 00 00 00       	mov    $0xa,%eax
    158a:	cd 40                	int    $0x40
    158c:	c3                   	ret    

0000158d <getpid>:
SYSCALL(getpid)
    158d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1592:	cd 40                	int    $0x40
    1594:	c3                   	ret    

00001595 <sbrk>:
SYSCALL(sbrk)
    1595:	b8 0c 00 00 00       	mov    $0xc,%eax
    159a:	cd 40                	int    $0x40
    159c:	c3                   	ret    

0000159d <sleep>:
SYSCALL(sleep)
    159d:	b8 0d 00 00 00       	mov    $0xd,%eax
    15a2:	cd 40                	int    $0x40
    15a4:	c3                   	ret    

000015a5 <uptime>:
SYSCALL(uptime)
    15a5:	b8 0e 00 00 00       	mov    $0xe,%eax
    15aa:	cd 40                	int    $0x40
    15ac:	c3                   	ret    

000015ad <count>:
SYSCALL(count)
    15ad:	b8 16 00 00 00       	mov    $0x16,%eax
    15b2:	cd 40                	int    $0x40
    15b4:	c3                   	ret    

000015b5 <settickets>:

SYSCALL(settickets)
    15b5:	b8 17 00 00 00       	mov    $0x17,%eax
    15ba:	cd 40                	int    $0x40
    15bc:	c3                   	ret    

000015bd <getpinfo>:
SYSCALL(getpinfo)
    15bd:	b8 18 00 00 00       	mov    $0x18,%eax
    15c2:	cd 40                	int    $0x40
    15c4:	c3                   	ret    

000015c5 <mprotect>:

SYSCALL(mprotect)
    15c5:	b8 19 00 00 00       	mov    $0x19,%eax
    15ca:	cd 40                	int    $0x40
    15cc:	c3                   	ret    

000015cd <munprotect>:
SYSCALL(munprotect)
    15cd:	b8 1a 00 00 00       	mov    $0x1a,%eax
    15d2:	cd 40                	int    $0x40
    15d4:	c3                   	ret    

000015d5 <clone>:

SYSCALL(clone)
    15d5:	b8 1b 00 00 00       	mov    $0x1b,%eax
    15da:	cd 40                	int    $0x40
    15dc:	c3                   	ret    

000015dd <join>:
SYSCALL(join)
    15dd:	b8 1c 00 00 00       	mov    $0x1c,%eax
    15e2:	cd 40                	int    $0x40
    15e4:	c3                   	ret    
    15e5:	66 90                	xchg   %ax,%ax
    15e7:	66 90                	xchg   %ax,%ax
    15e9:	66 90                	xchg   %ax,%ax
    15eb:	66 90                	xchg   %ax,%ax
    15ed:	66 90                	xchg   %ax,%ax
    15ef:	90                   	nop

000015f0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    15f0:	55                   	push   %ebp
    15f1:	89 e5                	mov    %esp,%ebp
    15f3:	57                   	push   %edi
    15f4:	56                   	push   %esi
    15f5:	53                   	push   %ebx
    15f6:	83 ec 3c             	sub    $0x3c,%esp
    15f9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    15fc:	89 d1                	mov    %edx,%ecx
{
    15fe:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    1601:	85 d2                	test   %edx,%edx
    1603:	0f 89 7f 00 00 00    	jns    1688 <printint+0x98>
    1609:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    160d:	74 79                	je     1688 <printint+0x98>
    neg = 1;
    160f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1616:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1618:	31 db                	xor    %ebx,%ebx
    161a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    161d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1620:	89 c8                	mov    %ecx,%eax
    1622:	31 d2                	xor    %edx,%edx
    1624:	89 cf                	mov    %ecx,%edi
    1626:	f7 75 c4             	divl   -0x3c(%ebp)
    1629:	0f b6 92 98 18 00 00 	movzbl 0x1898(%edx),%edx
    1630:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1633:	89 d8                	mov    %ebx,%eax
    1635:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1638:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    163b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    163e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1641:	76 dd                	jbe    1620 <printint+0x30>
  if(neg)
    1643:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1646:	85 c9                	test   %ecx,%ecx
    1648:	74 0c                	je     1656 <printint+0x66>
    buf[i++] = '-';
    164a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    164f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1651:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1656:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1659:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    165d:	eb 07                	jmp    1666 <printint+0x76>
    165f:	90                   	nop
    1660:	0f b6 13             	movzbl (%ebx),%edx
    1663:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1666:	83 ec 04             	sub    $0x4,%esp
    1669:	88 55 d7             	mov    %dl,-0x29(%ebp)
    166c:	6a 01                	push   $0x1
    166e:	56                   	push   %esi
    166f:	57                   	push   %edi
    1670:	e8 b8 fe ff ff       	call   152d <write>
  while(--i >= 0)
    1675:	83 c4 10             	add    $0x10,%esp
    1678:	39 de                	cmp    %ebx,%esi
    167a:	75 e4                	jne    1660 <printint+0x70>
    putc(fd, buf[i]);
}
    167c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    167f:	5b                   	pop    %ebx
    1680:	5e                   	pop    %esi
    1681:	5f                   	pop    %edi
    1682:	5d                   	pop    %ebp
    1683:	c3                   	ret    
    1684:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1688:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    168f:	eb 87                	jmp    1618 <printint+0x28>
    1691:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1698:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    169f:	90                   	nop

000016a0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    16a0:	f3 0f 1e fb          	endbr32 
    16a4:	55                   	push   %ebp
    16a5:	89 e5                	mov    %esp,%ebp
    16a7:	57                   	push   %edi
    16a8:	56                   	push   %esi
    16a9:	53                   	push   %ebx
    16aa:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    16ad:	8b 75 0c             	mov    0xc(%ebp),%esi
    16b0:	0f b6 1e             	movzbl (%esi),%ebx
    16b3:	84 db                	test   %bl,%bl
    16b5:	0f 84 b4 00 00 00    	je     176f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    16bb:	8d 45 10             	lea    0x10(%ebp),%eax
    16be:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    16c1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    16c4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    16c6:	89 45 d0             	mov    %eax,-0x30(%ebp)
    16c9:	eb 33                	jmp    16fe <printf+0x5e>
    16cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    16cf:	90                   	nop
    16d0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    16d3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    16d8:	83 f8 25             	cmp    $0x25,%eax
    16db:	74 17                	je     16f4 <printf+0x54>
  write(fd, &c, 1);
    16dd:	83 ec 04             	sub    $0x4,%esp
    16e0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    16e3:	6a 01                	push   $0x1
    16e5:	57                   	push   %edi
    16e6:	ff 75 08             	pushl  0x8(%ebp)
    16e9:	e8 3f fe ff ff       	call   152d <write>
    16ee:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    16f1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    16f4:	0f b6 1e             	movzbl (%esi),%ebx
    16f7:	83 c6 01             	add    $0x1,%esi
    16fa:	84 db                	test   %bl,%bl
    16fc:	74 71                	je     176f <printf+0xcf>
    c = fmt[i] & 0xff;
    16fe:	0f be cb             	movsbl %bl,%ecx
    1701:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1704:	85 d2                	test   %edx,%edx
    1706:	74 c8                	je     16d0 <printf+0x30>
      }
    } else if(state == '%'){
    1708:	83 fa 25             	cmp    $0x25,%edx
    170b:	75 e7                	jne    16f4 <printf+0x54>
      if(c == 'd'){
    170d:	83 f8 64             	cmp    $0x64,%eax
    1710:	0f 84 9a 00 00 00    	je     17b0 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1716:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    171c:	83 f9 70             	cmp    $0x70,%ecx
    171f:	74 5f                	je     1780 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1721:	83 f8 73             	cmp    $0x73,%eax
    1724:	0f 84 d6 00 00 00    	je     1800 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    172a:	83 f8 63             	cmp    $0x63,%eax
    172d:	0f 84 8d 00 00 00    	je     17c0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1733:	83 f8 25             	cmp    $0x25,%eax
    1736:	0f 84 b4 00 00 00    	je     17f0 <printf+0x150>
  write(fd, &c, 1);
    173c:	83 ec 04             	sub    $0x4,%esp
    173f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1743:	6a 01                	push   $0x1
    1745:	57                   	push   %edi
    1746:	ff 75 08             	pushl  0x8(%ebp)
    1749:	e8 df fd ff ff       	call   152d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    174e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1751:	83 c4 0c             	add    $0xc,%esp
    1754:	6a 01                	push   $0x1
    1756:	83 c6 01             	add    $0x1,%esi
    1759:	57                   	push   %edi
    175a:	ff 75 08             	pushl  0x8(%ebp)
    175d:	e8 cb fd ff ff       	call   152d <write>
  for(i = 0; fmt[i]; i++){
    1762:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1766:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1769:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    176b:	84 db                	test   %bl,%bl
    176d:	75 8f                	jne    16fe <printf+0x5e>
    }
  }
}
    176f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1772:	5b                   	pop    %ebx
    1773:	5e                   	pop    %esi
    1774:	5f                   	pop    %edi
    1775:	5d                   	pop    %ebp
    1776:	c3                   	ret    
    1777:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    177e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1780:	83 ec 0c             	sub    $0xc,%esp
    1783:	b9 10 00 00 00       	mov    $0x10,%ecx
    1788:	6a 00                	push   $0x0
    178a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    178d:	8b 45 08             	mov    0x8(%ebp),%eax
    1790:	8b 13                	mov    (%ebx),%edx
    1792:	e8 59 fe ff ff       	call   15f0 <printint>
        ap++;
    1797:	89 d8                	mov    %ebx,%eax
    1799:	83 c4 10             	add    $0x10,%esp
      state = 0;
    179c:	31 d2                	xor    %edx,%edx
        ap++;
    179e:	83 c0 04             	add    $0x4,%eax
    17a1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    17a4:	e9 4b ff ff ff       	jmp    16f4 <printf+0x54>
    17a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    17b0:	83 ec 0c             	sub    $0xc,%esp
    17b3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    17b8:	6a 01                	push   $0x1
    17ba:	eb ce                	jmp    178a <printf+0xea>
    17bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    17c0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    17c3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    17c6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    17c8:	6a 01                	push   $0x1
        ap++;
    17ca:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    17cd:	57                   	push   %edi
    17ce:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    17d1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    17d4:	e8 54 fd ff ff       	call   152d <write>
        ap++;
    17d9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    17dc:	83 c4 10             	add    $0x10,%esp
      state = 0;
    17df:	31 d2                	xor    %edx,%edx
    17e1:	e9 0e ff ff ff       	jmp    16f4 <printf+0x54>
    17e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17ed:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    17f0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    17f3:	83 ec 04             	sub    $0x4,%esp
    17f6:	e9 59 ff ff ff       	jmp    1754 <printf+0xb4>
    17fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17ff:	90                   	nop
        s = (char*)*ap;
    1800:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1803:	8b 18                	mov    (%eax),%ebx
        ap++;
    1805:	83 c0 04             	add    $0x4,%eax
    1808:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    180b:	85 db                	test   %ebx,%ebx
    180d:	74 17                	je     1826 <printf+0x186>
        while(*s != 0){
    180f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1812:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1814:	84 c0                	test   %al,%al
    1816:	0f 84 d8 fe ff ff    	je     16f4 <printf+0x54>
    181c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    181f:	89 de                	mov    %ebx,%esi
    1821:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1824:	eb 1a                	jmp    1840 <printf+0x1a0>
          s = "(null)";
    1826:	bb 8f 18 00 00       	mov    $0x188f,%ebx
        while(*s != 0){
    182b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    182e:	b8 28 00 00 00       	mov    $0x28,%eax
    1833:	89 de                	mov    %ebx,%esi
    1835:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1838:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    183f:	90                   	nop
  write(fd, &c, 1);
    1840:	83 ec 04             	sub    $0x4,%esp
          s++;
    1843:	83 c6 01             	add    $0x1,%esi
    1846:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1849:	6a 01                	push   $0x1
    184b:	57                   	push   %edi
    184c:	53                   	push   %ebx
    184d:	e8 db fc ff ff       	call   152d <write>
        while(*s != 0){
    1852:	0f b6 06             	movzbl (%esi),%eax
    1855:	83 c4 10             	add    $0x10,%esp
    1858:	84 c0                	test   %al,%al
    185a:	75 e4                	jne    1840 <printf+0x1a0>
    185c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    185f:	31 d2                	xor    %edx,%edx
    1861:	e9 8e fe ff ff       	jmp    16f4 <printf+0x54>
