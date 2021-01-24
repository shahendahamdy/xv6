
_zombie:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "stat.h"
#include "user.h"

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
  if(fork() > 0)
    1015:	e8 bb 04 00 00       	call   14d5 <fork>
    101a:	85 c0                	test   %eax,%eax
    101c:	7e 0d                	jle    102b <main+0x2b>
    sleep(5);  // Let child exit before parent.
    101e:	83 ec 0c             	sub    $0xc,%esp
    1021:	6a 05                	push   $0x5
    1023:	e8 45 05 00 00       	call   156d <sleep>
    1028:	83 c4 10             	add    $0x10,%esp
  exit();
    102b:	e8 ad 04 00 00       	call   14dd <exit>

00001030 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1030:	f3 0f 1e fb          	endbr32 
    1034:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1035:	31 c0                	xor    %eax,%eax
{
    1037:	89 e5                	mov    %esp,%ebp
    1039:	53                   	push   %ebx
    103a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    103d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1040:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1044:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1047:	83 c0 01             	add    $0x1,%eax
    104a:	84 d2                	test   %dl,%dl
    104c:	75 f2                	jne    1040 <strcpy+0x10>
    ;
  return os;
}
    104e:	89 c8                	mov    %ecx,%eax
    1050:	5b                   	pop    %ebx
    1051:	5d                   	pop    %ebp
    1052:	c3                   	ret    
    1053:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    105a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001060 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1060:	f3 0f 1e fb          	endbr32 
    1064:	55                   	push   %ebp
    1065:	89 e5                	mov    %esp,%ebp
    1067:	53                   	push   %ebx
    1068:	8b 4d 08             	mov    0x8(%ebp),%ecx
    106b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    106e:	0f b6 01             	movzbl (%ecx),%eax
    1071:	0f b6 1a             	movzbl (%edx),%ebx
    1074:	84 c0                	test   %al,%al
    1076:	75 19                	jne    1091 <strcmp+0x31>
    1078:	eb 26                	jmp    10a0 <strcmp+0x40>
    107a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1080:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    1084:	83 c1 01             	add    $0x1,%ecx
    1087:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    108a:	0f b6 1a             	movzbl (%edx),%ebx
    108d:	84 c0                	test   %al,%al
    108f:	74 0f                	je     10a0 <strcmp+0x40>
    1091:	38 d8                	cmp    %bl,%al
    1093:	74 eb                	je     1080 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1095:	29 d8                	sub    %ebx,%eax
}
    1097:	5b                   	pop    %ebx
    1098:	5d                   	pop    %ebp
    1099:	c3                   	ret    
    109a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10a0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    10a2:	29 d8                	sub    %ebx,%eax
}
    10a4:	5b                   	pop    %ebx
    10a5:	5d                   	pop    %ebp
    10a6:	c3                   	ret    
    10a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10ae:	66 90                	xchg   %ax,%ax

000010b0 <strlen>:

uint
strlen(const char *s)
{
    10b0:	f3 0f 1e fb          	endbr32 
    10b4:	55                   	push   %ebp
    10b5:	89 e5                	mov    %esp,%ebp
    10b7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    10ba:	80 3a 00             	cmpb   $0x0,(%edx)
    10bd:	74 21                	je     10e0 <strlen+0x30>
    10bf:	31 c0                	xor    %eax,%eax
    10c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10c8:	83 c0 01             	add    $0x1,%eax
    10cb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    10cf:	89 c1                	mov    %eax,%ecx
    10d1:	75 f5                	jne    10c8 <strlen+0x18>
    ;
  return n;
}
    10d3:	89 c8                	mov    %ecx,%eax
    10d5:	5d                   	pop    %ebp
    10d6:	c3                   	ret    
    10d7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10de:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    10e0:	31 c9                	xor    %ecx,%ecx
}
    10e2:	5d                   	pop    %ebp
    10e3:	89 c8                	mov    %ecx,%eax
    10e5:	c3                   	ret    
    10e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10ed:	8d 76 00             	lea    0x0(%esi),%esi

000010f0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    10f0:	f3 0f 1e fb          	endbr32 
    10f4:	55                   	push   %ebp
    10f5:	89 e5                	mov    %esp,%ebp
    10f7:	57                   	push   %edi
    10f8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    10fb:	8b 4d 10             	mov    0x10(%ebp),%ecx
    10fe:	8b 45 0c             	mov    0xc(%ebp),%eax
    1101:	89 d7                	mov    %edx,%edi
    1103:	fc                   	cld    
    1104:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1106:	89 d0                	mov    %edx,%eax
    1108:	5f                   	pop    %edi
    1109:	5d                   	pop    %ebp
    110a:	c3                   	ret    
    110b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    110f:	90                   	nop

00001110 <strchr>:

char*
strchr(const char *s, char c)
{
    1110:	f3 0f 1e fb          	endbr32 
    1114:	55                   	push   %ebp
    1115:	89 e5                	mov    %esp,%ebp
    1117:	8b 45 08             	mov    0x8(%ebp),%eax
    111a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    111e:	0f b6 10             	movzbl (%eax),%edx
    1121:	84 d2                	test   %dl,%dl
    1123:	75 16                	jne    113b <strchr+0x2b>
    1125:	eb 21                	jmp    1148 <strchr+0x38>
    1127:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    112e:	66 90                	xchg   %ax,%ax
    1130:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1134:	83 c0 01             	add    $0x1,%eax
    1137:	84 d2                	test   %dl,%dl
    1139:	74 0d                	je     1148 <strchr+0x38>
    if(*s == c)
    113b:	38 d1                	cmp    %dl,%cl
    113d:	75 f1                	jne    1130 <strchr+0x20>
      return (char*)s;
  return 0;
}
    113f:	5d                   	pop    %ebp
    1140:	c3                   	ret    
    1141:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1148:	31 c0                	xor    %eax,%eax
}
    114a:	5d                   	pop    %ebp
    114b:	c3                   	ret    
    114c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001150 <gets>:

char*
gets(char *buf, int max)
{
    1150:	f3 0f 1e fb          	endbr32 
    1154:	55                   	push   %ebp
    1155:	89 e5                	mov    %esp,%ebp
    1157:	57                   	push   %edi
    1158:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1159:	31 f6                	xor    %esi,%esi
{
    115b:	53                   	push   %ebx
    115c:	89 f3                	mov    %esi,%ebx
    115e:	83 ec 1c             	sub    $0x1c,%esp
    1161:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1164:	eb 33                	jmp    1199 <gets+0x49>
    1166:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    116d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1170:	83 ec 04             	sub    $0x4,%esp
    1173:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1176:	6a 01                	push   $0x1
    1178:	50                   	push   %eax
    1179:	6a 00                	push   $0x0
    117b:	e8 75 03 00 00       	call   14f5 <read>
    if(cc < 1)
    1180:	83 c4 10             	add    $0x10,%esp
    1183:	85 c0                	test   %eax,%eax
    1185:	7e 1c                	jle    11a3 <gets+0x53>
      break;
    buf[i++] = c;
    1187:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    118b:	83 c7 01             	add    $0x1,%edi
    118e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1191:	3c 0a                	cmp    $0xa,%al
    1193:	74 23                	je     11b8 <gets+0x68>
    1195:	3c 0d                	cmp    $0xd,%al
    1197:	74 1f                	je     11b8 <gets+0x68>
  for(i=0; i+1 < max; ){
    1199:	83 c3 01             	add    $0x1,%ebx
    119c:	89 fe                	mov    %edi,%esi
    119e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    11a1:	7c cd                	jl     1170 <gets+0x20>
    11a3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    11a5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    11a8:	c6 03 00             	movb   $0x0,(%ebx)
}
    11ab:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11ae:	5b                   	pop    %ebx
    11af:	5e                   	pop    %esi
    11b0:	5f                   	pop    %edi
    11b1:	5d                   	pop    %ebp
    11b2:	c3                   	ret    
    11b3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11b7:	90                   	nop
    11b8:	8b 75 08             	mov    0x8(%ebp),%esi
    11bb:	8b 45 08             	mov    0x8(%ebp),%eax
    11be:	01 de                	add    %ebx,%esi
    11c0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    11c2:	c6 03 00             	movb   $0x0,(%ebx)
}
    11c5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11c8:	5b                   	pop    %ebx
    11c9:	5e                   	pop    %esi
    11ca:	5f                   	pop    %edi
    11cb:	5d                   	pop    %ebp
    11cc:	c3                   	ret    
    11cd:	8d 76 00             	lea    0x0(%esi),%esi

000011d0 <stat>:

int
stat(const char *n, struct stat *st)
{
    11d0:	f3 0f 1e fb          	endbr32 
    11d4:	55                   	push   %ebp
    11d5:	89 e5                	mov    %esp,%ebp
    11d7:	56                   	push   %esi
    11d8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    11d9:	83 ec 08             	sub    $0x8,%esp
    11dc:	6a 00                	push   $0x0
    11de:	ff 75 08             	pushl  0x8(%ebp)
    11e1:	e8 37 03 00 00       	call   151d <open>
  if(fd < 0)
    11e6:	83 c4 10             	add    $0x10,%esp
    11e9:	85 c0                	test   %eax,%eax
    11eb:	78 2b                	js     1218 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    11ed:	83 ec 08             	sub    $0x8,%esp
    11f0:	ff 75 0c             	pushl  0xc(%ebp)
    11f3:	89 c3                	mov    %eax,%ebx
    11f5:	50                   	push   %eax
    11f6:	e8 3a 03 00 00       	call   1535 <fstat>
  close(fd);
    11fb:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    11fe:	89 c6                	mov    %eax,%esi
  close(fd);
    1200:	e8 00 03 00 00       	call   1505 <close>
  return r;
    1205:	83 c4 10             	add    $0x10,%esp
}
    1208:	8d 65 f8             	lea    -0x8(%ebp),%esp
    120b:	89 f0                	mov    %esi,%eax
    120d:	5b                   	pop    %ebx
    120e:	5e                   	pop    %esi
    120f:	5d                   	pop    %ebp
    1210:	c3                   	ret    
    1211:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1218:	be ff ff ff ff       	mov    $0xffffffff,%esi
    121d:	eb e9                	jmp    1208 <stat+0x38>
    121f:	90                   	nop

00001220 <atoi>:

int
atoi(const char *s)
{
    1220:	f3 0f 1e fb          	endbr32 
    1224:	55                   	push   %ebp
    1225:	89 e5                	mov    %esp,%ebp
    1227:	53                   	push   %ebx
    1228:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    122b:	0f be 02             	movsbl (%edx),%eax
    122e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1231:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1234:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1239:	77 1a                	ja     1255 <atoi+0x35>
    123b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    123f:	90                   	nop
    n = n*10 + *s++ - '0';
    1240:	83 c2 01             	add    $0x1,%edx
    1243:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1246:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    124a:	0f be 02             	movsbl (%edx),%eax
    124d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1250:	80 fb 09             	cmp    $0x9,%bl
    1253:	76 eb                	jbe    1240 <atoi+0x20>
  return n;
}
    1255:	89 c8                	mov    %ecx,%eax
    1257:	5b                   	pop    %ebx
    1258:	5d                   	pop    %ebp
    1259:	c3                   	ret    
    125a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001260 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1260:	f3 0f 1e fb          	endbr32 
    1264:	55                   	push   %ebp
    1265:	89 e5                	mov    %esp,%ebp
    1267:	57                   	push   %edi
    1268:	8b 45 10             	mov    0x10(%ebp),%eax
    126b:	8b 55 08             	mov    0x8(%ebp),%edx
    126e:	56                   	push   %esi
    126f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1272:	85 c0                	test   %eax,%eax
    1274:	7e 0f                	jle    1285 <memmove+0x25>
    1276:	01 d0                	add    %edx,%eax
  dst = vdst;
    1278:	89 d7                	mov    %edx,%edi
    127a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    1280:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    1281:	39 f8                	cmp    %edi,%eax
    1283:	75 fb                	jne    1280 <memmove+0x20>
  return vdst;
}
    1285:	5e                   	pop    %esi
    1286:	89 d0                	mov    %edx,%eax
    1288:	5f                   	pop    %edi
    1289:	5d                   	pop    %ebp
    128a:	c3                   	ret    
    128b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    128f:	90                   	nop

00001290 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    1290:	f3 0f 1e fb          	endbr32 
    1294:	55                   	push   %ebp
    1295:	89 e5                	mov    %esp,%ebp
    1297:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    129a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    129d:	50                   	push   %eax
    129e:	e8 0a 03 00 00       	call   15ad <join>
  
  return x;
}
    12a3:	c9                   	leave  
    12a4:	c3                   	ret    
    12a5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000012b0 <lock_init>:

void lock_init(struct lock_t *lk){
    12b0:	f3 0f 1e fb          	endbr32 
    12b4:	55                   	push   %ebp
    12b5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    12b7:	8b 45 08             	mov    0x8(%ebp),%eax
    12ba:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    12c0:	5d                   	pop    %ebp
    12c1:	c3                   	ret    
    12c2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000012d0 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    12d0:	f3 0f 1e fb          	endbr32 
    12d4:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    12d5:	b9 01 00 00 00       	mov    $0x1,%ecx
    12da:	89 e5                	mov    %esp,%ebp
    12dc:	8b 55 08             	mov    0x8(%ebp),%edx
    12df:	90                   	nop
    12e0:	89 c8                	mov    %ecx,%eax
    12e2:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    12e5:	85 c0                	test   %eax,%eax
    12e7:	75 f7                	jne    12e0 <lock_acquire+0x10>
}
    12e9:	5d                   	pop    %ebp
    12ea:	c3                   	ret    
    12eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12ef:	90                   	nop

000012f0 <lock_release>:
void lock_release(struct lock_t *lk){
    12f0:	f3 0f 1e fb          	endbr32 
    12f4:	55                   	push   %ebp
    12f5:	31 c0                	xor    %eax,%eax
    12f7:	89 e5                	mov    %esp,%ebp
    12f9:	8b 55 08             	mov    0x8(%ebp),%edx
    12fc:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    12ff:	5d                   	pop    %ebp
    1300:	c3                   	ret    
    1301:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1308:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    130f:	90                   	nop

00001310 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1310:	f3 0f 1e fb          	endbr32 
    1314:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1315:	a1 88 1b 00 00       	mov    0x1b88,%eax
{
    131a:	89 e5                	mov    %esp,%ebp
    131c:	57                   	push   %edi
    131d:	56                   	push   %esi
    131e:	53                   	push   %ebx
    131f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1322:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1324:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1327:	39 c8                	cmp    %ecx,%eax
    1329:	73 15                	jae    1340 <free+0x30>
    132b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    132f:	90                   	nop
    1330:	39 d1                	cmp    %edx,%ecx
    1332:	72 14                	jb     1348 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1334:	39 d0                	cmp    %edx,%eax
    1336:	73 10                	jae    1348 <free+0x38>
{
    1338:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    133a:	8b 10                	mov    (%eax),%edx
    133c:	39 c8                	cmp    %ecx,%eax
    133e:	72 f0                	jb     1330 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1340:	39 d0                	cmp    %edx,%eax
    1342:	72 f4                	jb     1338 <free+0x28>
    1344:	39 d1                	cmp    %edx,%ecx
    1346:	73 f0                	jae    1338 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1348:	8b 73 fc             	mov    -0x4(%ebx),%esi
    134b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    134e:	39 fa                	cmp    %edi,%edx
    1350:	74 1e                	je     1370 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1352:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1355:	8b 50 04             	mov    0x4(%eax),%edx
    1358:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    135b:	39 f1                	cmp    %esi,%ecx
    135d:	74 28                	je     1387 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    135f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1361:	5b                   	pop    %ebx
  freep = p;
    1362:	a3 88 1b 00 00       	mov    %eax,0x1b88
}
    1367:	5e                   	pop    %esi
    1368:	5f                   	pop    %edi
    1369:	5d                   	pop    %ebp
    136a:	c3                   	ret    
    136b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    136f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1370:	03 72 04             	add    0x4(%edx),%esi
    1373:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1376:	8b 10                	mov    (%eax),%edx
    1378:	8b 12                	mov    (%edx),%edx
    137a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    137d:	8b 50 04             	mov    0x4(%eax),%edx
    1380:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1383:	39 f1                	cmp    %esi,%ecx
    1385:	75 d8                	jne    135f <free+0x4f>
    p->s.size += bp->s.size;
    1387:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    138a:	a3 88 1b 00 00       	mov    %eax,0x1b88
    p->s.size += bp->s.size;
    138f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1392:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1395:	89 10                	mov    %edx,(%eax)
}
    1397:	5b                   	pop    %ebx
    1398:	5e                   	pop    %esi
    1399:	5f                   	pop    %edi
    139a:	5d                   	pop    %ebp
    139b:	c3                   	ret    
    139c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000013a0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    13a0:	f3 0f 1e fb          	endbr32 
    13a4:	55                   	push   %ebp
    13a5:	89 e5                	mov    %esp,%ebp
    13a7:	57                   	push   %edi
    13a8:	56                   	push   %esi
    13a9:	53                   	push   %ebx
    13aa:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    13ad:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    13b0:	8b 3d 88 1b 00 00    	mov    0x1b88,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    13b6:	8d 70 07             	lea    0x7(%eax),%esi
    13b9:	c1 ee 03             	shr    $0x3,%esi
    13bc:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    13bf:	85 ff                	test   %edi,%edi
    13c1:	0f 84 a9 00 00 00    	je     1470 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    13c7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    13c9:	8b 48 04             	mov    0x4(%eax),%ecx
    13cc:	39 f1                	cmp    %esi,%ecx
    13ce:	73 6d                	jae    143d <malloc+0x9d>
    13d0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    13d6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    13db:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    13de:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    13e5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    13e8:	eb 17                	jmp    1401 <malloc+0x61>
    13ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    13f0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    13f2:	8b 4a 04             	mov    0x4(%edx),%ecx
    13f5:	39 f1                	cmp    %esi,%ecx
    13f7:	73 4f                	jae    1448 <malloc+0xa8>
    13f9:	8b 3d 88 1b 00 00    	mov    0x1b88,%edi
    13ff:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1401:	39 c7                	cmp    %eax,%edi
    1403:	75 eb                	jne    13f0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1405:	83 ec 0c             	sub    $0xc,%esp
    1408:	ff 75 e4             	pushl  -0x1c(%ebp)
    140b:	e8 55 01 00 00       	call   1565 <sbrk>
  if(p == (char*)-1)
    1410:	83 c4 10             	add    $0x10,%esp
    1413:	83 f8 ff             	cmp    $0xffffffff,%eax
    1416:	74 1b                	je     1433 <malloc+0x93>
  hp->s.size = nu;
    1418:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    141b:	83 ec 0c             	sub    $0xc,%esp
    141e:	83 c0 08             	add    $0x8,%eax
    1421:	50                   	push   %eax
    1422:	e8 e9 fe ff ff       	call   1310 <free>
  return freep;
    1427:	a1 88 1b 00 00       	mov    0x1b88,%eax
      if((p = morecore(nunits)) == 0)
    142c:	83 c4 10             	add    $0x10,%esp
    142f:	85 c0                	test   %eax,%eax
    1431:	75 bd                	jne    13f0 <malloc+0x50>
        return 0;
  }
}
    1433:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1436:	31 c0                	xor    %eax,%eax
}
    1438:	5b                   	pop    %ebx
    1439:	5e                   	pop    %esi
    143a:	5f                   	pop    %edi
    143b:	5d                   	pop    %ebp
    143c:	c3                   	ret    
    if(p->s.size >= nunits){
    143d:	89 c2                	mov    %eax,%edx
    143f:	89 f8                	mov    %edi,%eax
    1441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1448:	39 ce                	cmp    %ecx,%esi
    144a:	74 54                	je     14a0 <malloc+0x100>
        p->s.size -= nunits;
    144c:	29 f1                	sub    %esi,%ecx
    144e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1451:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1454:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1457:	a3 88 1b 00 00       	mov    %eax,0x1b88
}
    145c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    145f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1462:	5b                   	pop    %ebx
    1463:	5e                   	pop    %esi
    1464:	5f                   	pop    %edi
    1465:	5d                   	pop    %ebp
    1466:	c3                   	ret    
    1467:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    146e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1470:	c7 05 88 1b 00 00 8c 	movl   $0x1b8c,0x1b88
    1477:	1b 00 00 
    base.s.size = 0;
    147a:	bf 8c 1b 00 00       	mov    $0x1b8c,%edi
    base.s.ptr = freep = prevp = &base;
    147f:	c7 05 8c 1b 00 00 8c 	movl   $0x1b8c,0x1b8c
    1486:	1b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1489:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    148b:	c7 05 90 1b 00 00 00 	movl   $0x0,0x1b90
    1492:	00 00 00 
    if(p->s.size >= nunits){
    1495:	e9 36 ff ff ff       	jmp    13d0 <malloc+0x30>
    149a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    14a0:	8b 0a                	mov    (%edx),%ecx
    14a2:	89 08                	mov    %ecx,(%eax)
    14a4:	eb b1                	jmp    1457 <malloc+0xb7>
    14a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14ad:	8d 76 00             	lea    0x0(%esi),%esi

000014b0 <thread_create>:
{
    14b0:	f3 0f 1e fb          	endbr32 
    14b4:	55                   	push   %ebp
    14b5:	89 e5                	mov    %esp,%ebp
    14b7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    14ba:	68 00 10 00 00       	push   $0x1000
    14bf:	e8 dc fe ff ff       	call   13a0 <malloc>
return clone(start_routine,arg1,arg2,stack);
    14c4:	50                   	push   %eax
    14c5:	ff 75 10             	pushl  0x10(%ebp)
    14c8:	ff 75 0c             	pushl  0xc(%ebp)
    14cb:	ff 75 08             	pushl  0x8(%ebp)
    14ce:	e8 d2 00 00 00       	call   15a5 <clone>
}
    14d3:	c9                   	leave  
    14d4:	c3                   	ret    

000014d5 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    14d5:	b8 01 00 00 00       	mov    $0x1,%eax
    14da:	cd 40                	int    $0x40
    14dc:	c3                   	ret    

000014dd <exit>:
SYSCALL(exit)
    14dd:	b8 02 00 00 00       	mov    $0x2,%eax
    14e2:	cd 40                	int    $0x40
    14e4:	c3                   	ret    

000014e5 <wait>:
SYSCALL(wait)
    14e5:	b8 03 00 00 00       	mov    $0x3,%eax
    14ea:	cd 40                	int    $0x40
    14ec:	c3                   	ret    

000014ed <pipe>:
SYSCALL(pipe)
    14ed:	b8 04 00 00 00       	mov    $0x4,%eax
    14f2:	cd 40                	int    $0x40
    14f4:	c3                   	ret    

000014f5 <read>:
SYSCALL(read)
    14f5:	b8 05 00 00 00       	mov    $0x5,%eax
    14fa:	cd 40                	int    $0x40
    14fc:	c3                   	ret    

000014fd <write>:
SYSCALL(write)
    14fd:	b8 10 00 00 00       	mov    $0x10,%eax
    1502:	cd 40                	int    $0x40
    1504:	c3                   	ret    

00001505 <close>:
SYSCALL(close)
    1505:	b8 15 00 00 00       	mov    $0x15,%eax
    150a:	cd 40                	int    $0x40
    150c:	c3                   	ret    

0000150d <kill>:
SYSCALL(kill)
    150d:	b8 06 00 00 00       	mov    $0x6,%eax
    1512:	cd 40                	int    $0x40
    1514:	c3                   	ret    

00001515 <exec>:
SYSCALL(exec)
    1515:	b8 07 00 00 00       	mov    $0x7,%eax
    151a:	cd 40                	int    $0x40
    151c:	c3                   	ret    

0000151d <open>:
SYSCALL(open)
    151d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1522:	cd 40                	int    $0x40
    1524:	c3                   	ret    

00001525 <mknod>:
SYSCALL(mknod)
    1525:	b8 11 00 00 00       	mov    $0x11,%eax
    152a:	cd 40                	int    $0x40
    152c:	c3                   	ret    

0000152d <unlink>:
SYSCALL(unlink)
    152d:	b8 12 00 00 00       	mov    $0x12,%eax
    1532:	cd 40                	int    $0x40
    1534:	c3                   	ret    

00001535 <fstat>:
SYSCALL(fstat)
    1535:	b8 08 00 00 00       	mov    $0x8,%eax
    153a:	cd 40                	int    $0x40
    153c:	c3                   	ret    

0000153d <link>:
SYSCALL(link)
    153d:	b8 13 00 00 00       	mov    $0x13,%eax
    1542:	cd 40                	int    $0x40
    1544:	c3                   	ret    

00001545 <mkdir>:
SYSCALL(mkdir)
    1545:	b8 14 00 00 00       	mov    $0x14,%eax
    154a:	cd 40                	int    $0x40
    154c:	c3                   	ret    

0000154d <chdir>:
SYSCALL(chdir)
    154d:	b8 09 00 00 00       	mov    $0x9,%eax
    1552:	cd 40                	int    $0x40
    1554:	c3                   	ret    

00001555 <dup>:
SYSCALL(dup)
    1555:	b8 0a 00 00 00       	mov    $0xa,%eax
    155a:	cd 40                	int    $0x40
    155c:	c3                   	ret    

0000155d <getpid>:
SYSCALL(getpid)
    155d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1562:	cd 40                	int    $0x40
    1564:	c3                   	ret    

00001565 <sbrk>:
SYSCALL(sbrk)
    1565:	b8 0c 00 00 00       	mov    $0xc,%eax
    156a:	cd 40                	int    $0x40
    156c:	c3                   	ret    

0000156d <sleep>:
SYSCALL(sleep)
    156d:	b8 0d 00 00 00       	mov    $0xd,%eax
    1572:	cd 40                	int    $0x40
    1574:	c3                   	ret    

00001575 <uptime>:
SYSCALL(uptime)
    1575:	b8 0e 00 00 00       	mov    $0xe,%eax
    157a:	cd 40                	int    $0x40
    157c:	c3                   	ret    

0000157d <count>:
SYSCALL(count)
    157d:	b8 16 00 00 00       	mov    $0x16,%eax
    1582:	cd 40                	int    $0x40
    1584:	c3                   	ret    

00001585 <settickets>:

SYSCALL(settickets)
    1585:	b8 17 00 00 00       	mov    $0x17,%eax
    158a:	cd 40                	int    $0x40
    158c:	c3                   	ret    

0000158d <getpinfo>:
SYSCALL(getpinfo)
    158d:	b8 18 00 00 00       	mov    $0x18,%eax
    1592:	cd 40                	int    $0x40
    1594:	c3                   	ret    

00001595 <mprotect>:

SYSCALL(mprotect)
    1595:	b8 19 00 00 00       	mov    $0x19,%eax
    159a:	cd 40                	int    $0x40
    159c:	c3                   	ret    

0000159d <munprotect>:
SYSCALL(munprotect)
    159d:	b8 1a 00 00 00       	mov    $0x1a,%eax
    15a2:	cd 40                	int    $0x40
    15a4:	c3                   	ret    

000015a5 <clone>:

SYSCALL(clone)
    15a5:	b8 1b 00 00 00       	mov    $0x1b,%eax
    15aa:	cd 40                	int    $0x40
    15ac:	c3                   	ret    

000015ad <join>:
SYSCALL(join)
    15ad:	b8 1c 00 00 00       	mov    $0x1c,%eax
    15b2:	cd 40                	int    $0x40
    15b4:	c3                   	ret    
    15b5:	66 90                	xchg   %ax,%ax
    15b7:	66 90                	xchg   %ax,%ax
    15b9:	66 90                	xchg   %ax,%ax
    15bb:	66 90                	xchg   %ax,%ax
    15bd:	66 90                	xchg   %ax,%ax
    15bf:	90                   	nop

000015c0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    15c0:	55                   	push   %ebp
    15c1:	89 e5                	mov    %esp,%ebp
    15c3:	57                   	push   %edi
    15c4:	56                   	push   %esi
    15c5:	53                   	push   %ebx
    15c6:	83 ec 3c             	sub    $0x3c,%esp
    15c9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    15cc:	89 d1                	mov    %edx,%ecx
{
    15ce:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    15d1:	85 d2                	test   %edx,%edx
    15d3:	0f 89 7f 00 00 00    	jns    1658 <printint+0x98>
    15d9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    15dd:	74 79                	je     1658 <printint+0x98>
    neg = 1;
    15df:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    15e6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    15e8:	31 db                	xor    %ebx,%ebx
    15ea:	8d 75 d7             	lea    -0x29(%ebp),%esi
    15ed:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    15f0:	89 c8                	mov    %ecx,%eax
    15f2:	31 d2                	xor    %edx,%edx
    15f4:	89 cf                	mov    %ecx,%edi
    15f6:	f7 75 c4             	divl   -0x3c(%ebp)
    15f9:	0f b6 92 40 18 00 00 	movzbl 0x1840(%edx),%edx
    1600:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1603:	89 d8                	mov    %ebx,%eax
    1605:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1608:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    160b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    160e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1611:	76 dd                	jbe    15f0 <printint+0x30>
  if(neg)
    1613:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1616:	85 c9                	test   %ecx,%ecx
    1618:	74 0c                	je     1626 <printint+0x66>
    buf[i++] = '-';
    161a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    161f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1621:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1626:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1629:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    162d:	eb 07                	jmp    1636 <printint+0x76>
    162f:	90                   	nop
    1630:	0f b6 13             	movzbl (%ebx),%edx
    1633:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1636:	83 ec 04             	sub    $0x4,%esp
    1639:	88 55 d7             	mov    %dl,-0x29(%ebp)
    163c:	6a 01                	push   $0x1
    163e:	56                   	push   %esi
    163f:	57                   	push   %edi
    1640:	e8 b8 fe ff ff       	call   14fd <write>
  while(--i >= 0)
    1645:	83 c4 10             	add    $0x10,%esp
    1648:	39 de                	cmp    %ebx,%esi
    164a:	75 e4                	jne    1630 <printint+0x70>
    putc(fd, buf[i]);
}
    164c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    164f:	5b                   	pop    %ebx
    1650:	5e                   	pop    %esi
    1651:	5f                   	pop    %edi
    1652:	5d                   	pop    %ebp
    1653:	c3                   	ret    
    1654:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1658:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    165f:	eb 87                	jmp    15e8 <printint+0x28>
    1661:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1668:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    166f:	90                   	nop

00001670 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1670:	f3 0f 1e fb          	endbr32 
    1674:	55                   	push   %ebp
    1675:	89 e5                	mov    %esp,%ebp
    1677:	57                   	push   %edi
    1678:	56                   	push   %esi
    1679:	53                   	push   %ebx
    167a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    167d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1680:	0f b6 1e             	movzbl (%esi),%ebx
    1683:	84 db                	test   %bl,%bl
    1685:	0f 84 b4 00 00 00    	je     173f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    168b:	8d 45 10             	lea    0x10(%ebp),%eax
    168e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1691:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    1694:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    1696:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1699:	eb 33                	jmp    16ce <printf+0x5e>
    169b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    169f:	90                   	nop
    16a0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    16a3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    16a8:	83 f8 25             	cmp    $0x25,%eax
    16ab:	74 17                	je     16c4 <printf+0x54>
  write(fd, &c, 1);
    16ad:	83 ec 04             	sub    $0x4,%esp
    16b0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    16b3:	6a 01                	push   $0x1
    16b5:	57                   	push   %edi
    16b6:	ff 75 08             	pushl  0x8(%ebp)
    16b9:	e8 3f fe ff ff       	call   14fd <write>
    16be:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    16c1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    16c4:	0f b6 1e             	movzbl (%esi),%ebx
    16c7:	83 c6 01             	add    $0x1,%esi
    16ca:	84 db                	test   %bl,%bl
    16cc:	74 71                	je     173f <printf+0xcf>
    c = fmt[i] & 0xff;
    16ce:	0f be cb             	movsbl %bl,%ecx
    16d1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    16d4:	85 d2                	test   %edx,%edx
    16d6:	74 c8                	je     16a0 <printf+0x30>
      }
    } else if(state == '%'){
    16d8:	83 fa 25             	cmp    $0x25,%edx
    16db:	75 e7                	jne    16c4 <printf+0x54>
      if(c == 'd'){
    16dd:	83 f8 64             	cmp    $0x64,%eax
    16e0:	0f 84 9a 00 00 00    	je     1780 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    16e6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    16ec:	83 f9 70             	cmp    $0x70,%ecx
    16ef:	74 5f                	je     1750 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    16f1:	83 f8 73             	cmp    $0x73,%eax
    16f4:	0f 84 d6 00 00 00    	je     17d0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    16fa:	83 f8 63             	cmp    $0x63,%eax
    16fd:	0f 84 8d 00 00 00    	je     1790 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1703:	83 f8 25             	cmp    $0x25,%eax
    1706:	0f 84 b4 00 00 00    	je     17c0 <printf+0x150>
  write(fd, &c, 1);
    170c:	83 ec 04             	sub    $0x4,%esp
    170f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1713:	6a 01                	push   $0x1
    1715:	57                   	push   %edi
    1716:	ff 75 08             	pushl  0x8(%ebp)
    1719:	e8 df fd ff ff       	call   14fd <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    171e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1721:	83 c4 0c             	add    $0xc,%esp
    1724:	6a 01                	push   $0x1
    1726:	83 c6 01             	add    $0x1,%esi
    1729:	57                   	push   %edi
    172a:	ff 75 08             	pushl  0x8(%ebp)
    172d:	e8 cb fd ff ff       	call   14fd <write>
  for(i = 0; fmt[i]; i++){
    1732:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1736:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1739:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    173b:	84 db                	test   %bl,%bl
    173d:	75 8f                	jne    16ce <printf+0x5e>
    }
  }
}
    173f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1742:	5b                   	pop    %ebx
    1743:	5e                   	pop    %esi
    1744:	5f                   	pop    %edi
    1745:	5d                   	pop    %ebp
    1746:	c3                   	ret    
    1747:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    174e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1750:	83 ec 0c             	sub    $0xc,%esp
    1753:	b9 10 00 00 00       	mov    $0x10,%ecx
    1758:	6a 00                	push   $0x0
    175a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    175d:	8b 45 08             	mov    0x8(%ebp),%eax
    1760:	8b 13                	mov    (%ebx),%edx
    1762:	e8 59 fe ff ff       	call   15c0 <printint>
        ap++;
    1767:	89 d8                	mov    %ebx,%eax
    1769:	83 c4 10             	add    $0x10,%esp
      state = 0;
    176c:	31 d2                	xor    %edx,%edx
        ap++;
    176e:	83 c0 04             	add    $0x4,%eax
    1771:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1774:	e9 4b ff ff ff       	jmp    16c4 <printf+0x54>
    1779:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1780:	83 ec 0c             	sub    $0xc,%esp
    1783:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1788:	6a 01                	push   $0x1
    178a:	eb ce                	jmp    175a <printf+0xea>
    178c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1790:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1793:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1796:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1798:	6a 01                	push   $0x1
        ap++;
    179a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    179d:	57                   	push   %edi
    179e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    17a1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    17a4:	e8 54 fd ff ff       	call   14fd <write>
        ap++;
    17a9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    17ac:	83 c4 10             	add    $0x10,%esp
      state = 0;
    17af:	31 d2                	xor    %edx,%edx
    17b1:	e9 0e ff ff ff       	jmp    16c4 <printf+0x54>
    17b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17bd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    17c0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    17c3:	83 ec 04             	sub    $0x4,%esp
    17c6:	e9 59 ff ff ff       	jmp    1724 <printf+0xb4>
    17cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17cf:	90                   	nop
        s = (char*)*ap;
    17d0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    17d3:	8b 18                	mov    (%eax),%ebx
        ap++;
    17d5:	83 c0 04             	add    $0x4,%eax
    17d8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    17db:	85 db                	test   %ebx,%ebx
    17dd:	74 17                	je     17f6 <printf+0x186>
        while(*s != 0){
    17df:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    17e2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    17e4:	84 c0                	test   %al,%al
    17e6:	0f 84 d8 fe ff ff    	je     16c4 <printf+0x54>
    17ec:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    17ef:	89 de                	mov    %ebx,%esi
    17f1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    17f4:	eb 1a                	jmp    1810 <printf+0x1a0>
          s = "(null)";
    17f6:	bb 38 18 00 00       	mov    $0x1838,%ebx
        while(*s != 0){
    17fb:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    17fe:	b8 28 00 00 00       	mov    $0x28,%eax
    1803:	89 de                	mov    %ebx,%esi
    1805:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1808:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    180f:	90                   	nop
  write(fd, &c, 1);
    1810:	83 ec 04             	sub    $0x4,%esp
          s++;
    1813:	83 c6 01             	add    $0x1,%esi
    1816:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1819:	6a 01                	push   $0x1
    181b:	57                   	push   %edi
    181c:	53                   	push   %ebx
    181d:	e8 db fc ff ff       	call   14fd <write>
        while(*s != 0){
    1822:	0f b6 06             	movzbl (%esi),%eax
    1825:	83 c4 10             	add    $0x10,%esp
    1828:	84 c0                	test   %al,%al
    182a:	75 e4                	jne    1810 <printf+0x1a0>
    182c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    182f:	31 d2                	xor    %edx,%edx
    1831:	e9 8e fe ff ff       	jmp    16c4 <printf+0x54>
