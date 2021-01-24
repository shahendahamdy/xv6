
_count:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"

int main(int args,char *argv[]){
    1000:	f3 0f 1e fb          	endbr32 
    1004:	55                   	push   %ebp
    1005:	89 e5                	mov    %esp,%ebp
    1007:	83 e4 f0             	and    $0xfffffff0,%esp
    count();
    100a:	e8 5e 05 00 00       	call   156d <count>
    exit();
    100f:	e8 b9 04 00 00       	call   14cd <exit>
    1014:	66 90                	xchg   %ax,%ax
    1016:	66 90                	xchg   %ax,%ax
    1018:	66 90                	xchg   %ax,%ax
    101a:	66 90                	xchg   %ax,%ax
    101c:	66 90                	xchg   %ax,%ax
    101e:	66 90                	xchg   %ax,%ax

00001020 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1020:	f3 0f 1e fb          	endbr32 
    1024:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1025:	31 c0                	xor    %eax,%eax
{
    1027:	89 e5                	mov    %esp,%ebp
    1029:	53                   	push   %ebx
    102a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    102d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1030:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1034:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1037:	83 c0 01             	add    $0x1,%eax
    103a:	84 d2                	test   %dl,%dl
    103c:	75 f2                	jne    1030 <strcpy+0x10>
    ;
  return os;
}
    103e:	89 c8                	mov    %ecx,%eax
    1040:	5b                   	pop    %ebx
    1041:	5d                   	pop    %ebp
    1042:	c3                   	ret    
    1043:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    104a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001050 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1050:	f3 0f 1e fb          	endbr32 
    1054:	55                   	push   %ebp
    1055:	89 e5                	mov    %esp,%ebp
    1057:	53                   	push   %ebx
    1058:	8b 4d 08             	mov    0x8(%ebp),%ecx
    105b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    105e:	0f b6 01             	movzbl (%ecx),%eax
    1061:	0f b6 1a             	movzbl (%edx),%ebx
    1064:	84 c0                	test   %al,%al
    1066:	75 19                	jne    1081 <strcmp+0x31>
    1068:	eb 26                	jmp    1090 <strcmp+0x40>
    106a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1070:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    1074:	83 c1 01             	add    $0x1,%ecx
    1077:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    107a:	0f b6 1a             	movzbl (%edx),%ebx
    107d:	84 c0                	test   %al,%al
    107f:	74 0f                	je     1090 <strcmp+0x40>
    1081:	38 d8                	cmp    %bl,%al
    1083:	74 eb                	je     1070 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1085:	29 d8                	sub    %ebx,%eax
}
    1087:	5b                   	pop    %ebx
    1088:	5d                   	pop    %ebp
    1089:	c3                   	ret    
    108a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1090:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1092:	29 d8                	sub    %ebx,%eax
}
    1094:	5b                   	pop    %ebx
    1095:	5d                   	pop    %ebp
    1096:	c3                   	ret    
    1097:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    109e:	66 90                	xchg   %ax,%ax

000010a0 <strlen>:

uint
strlen(const char *s)
{
    10a0:	f3 0f 1e fb          	endbr32 
    10a4:	55                   	push   %ebp
    10a5:	89 e5                	mov    %esp,%ebp
    10a7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    10aa:	80 3a 00             	cmpb   $0x0,(%edx)
    10ad:	74 21                	je     10d0 <strlen+0x30>
    10af:	31 c0                	xor    %eax,%eax
    10b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10b8:	83 c0 01             	add    $0x1,%eax
    10bb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    10bf:	89 c1                	mov    %eax,%ecx
    10c1:	75 f5                	jne    10b8 <strlen+0x18>
    ;
  return n;
}
    10c3:	89 c8                	mov    %ecx,%eax
    10c5:	5d                   	pop    %ebp
    10c6:	c3                   	ret    
    10c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10ce:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    10d0:	31 c9                	xor    %ecx,%ecx
}
    10d2:	5d                   	pop    %ebp
    10d3:	89 c8                	mov    %ecx,%eax
    10d5:	c3                   	ret    
    10d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10dd:	8d 76 00             	lea    0x0(%esi),%esi

000010e0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    10e0:	f3 0f 1e fb          	endbr32 
    10e4:	55                   	push   %ebp
    10e5:	89 e5                	mov    %esp,%ebp
    10e7:	57                   	push   %edi
    10e8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    10eb:	8b 4d 10             	mov    0x10(%ebp),%ecx
    10ee:	8b 45 0c             	mov    0xc(%ebp),%eax
    10f1:	89 d7                	mov    %edx,%edi
    10f3:	fc                   	cld    
    10f4:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    10f6:	89 d0                	mov    %edx,%eax
    10f8:	5f                   	pop    %edi
    10f9:	5d                   	pop    %ebp
    10fa:	c3                   	ret    
    10fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10ff:	90                   	nop

00001100 <strchr>:

char*
strchr(const char *s, char c)
{
    1100:	f3 0f 1e fb          	endbr32 
    1104:	55                   	push   %ebp
    1105:	89 e5                	mov    %esp,%ebp
    1107:	8b 45 08             	mov    0x8(%ebp),%eax
    110a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    110e:	0f b6 10             	movzbl (%eax),%edx
    1111:	84 d2                	test   %dl,%dl
    1113:	75 16                	jne    112b <strchr+0x2b>
    1115:	eb 21                	jmp    1138 <strchr+0x38>
    1117:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    111e:	66 90                	xchg   %ax,%ax
    1120:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1124:	83 c0 01             	add    $0x1,%eax
    1127:	84 d2                	test   %dl,%dl
    1129:	74 0d                	je     1138 <strchr+0x38>
    if(*s == c)
    112b:	38 d1                	cmp    %dl,%cl
    112d:	75 f1                	jne    1120 <strchr+0x20>
      return (char*)s;
  return 0;
}
    112f:	5d                   	pop    %ebp
    1130:	c3                   	ret    
    1131:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1138:	31 c0                	xor    %eax,%eax
}
    113a:	5d                   	pop    %ebp
    113b:	c3                   	ret    
    113c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001140 <gets>:

char*
gets(char *buf, int max)
{
    1140:	f3 0f 1e fb          	endbr32 
    1144:	55                   	push   %ebp
    1145:	89 e5                	mov    %esp,%ebp
    1147:	57                   	push   %edi
    1148:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1149:	31 f6                	xor    %esi,%esi
{
    114b:	53                   	push   %ebx
    114c:	89 f3                	mov    %esi,%ebx
    114e:	83 ec 1c             	sub    $0x1c,%esp
    1151:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1154:	eb 33                	jmp    1189 <gets+0x49>
    1156:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    115d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1160:	83 ec 04             	sub    $0x4,%esp
    1163:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1166:	6a 01                	push   $0x1
    1168:	50                   	push   %eax
    1169:	6a 00                	push   $0x0
    116b:	e8 75 03 00 00       	call   14e5 <read>
    if(cc < 1)
    1170:	83 c4 10             	add    $0x10,%esp
    1173:	85 c0                	test   %eax,%eax
    1175:	7e 1c                	jle    1193 <gets+0x53>
      break;
    buf[i++] = c;
    1177:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    117b:	83 c7 01             	add    $0x1,%edi
    117e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1181:	3c 0a                	cmp    $0xa,%al
    1183:	74 23                	je     11a8 <gets+0x68>
    1185:	3c 0d                	cmp    $0xd,%al
    1187:	74 1f                	je     11a8 <gets+0x68>
  for(i=0; i+1 < max; ){
    1189:	83 c3 01             	add    $0x1,%ebx
    118c:	89 fe                	mov    %edi,%esi
    118e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1191:	7c cd                	jl     1160 <gets+0x20>
    1193:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    1195:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1198:	c6 03 00             	movb   $0x0,(%ebx)
}
    119b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    119e:	5b                   	pop    %ebx
    119f:	5e                   	pop    %esi
    11a0:	5f                   	pop    %edi
    11a1:	5d                   	pop    %ebp
    11a2:	c3                   	ret    
    11a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11a7:	90                   	nop
    11a8:	8b 75 08             	mov    0x8(%ebp),%esi
    11ab:	8b 45 08             	mov    0x8(%ebp),%eax
    11ae:	01 de                	add    %ebx,%esi
    11b0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    11b2:	c6 03 00             	movb   $0x0,(%ebx)
}
    11b5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11b8:	5b                   	pop    %ebx
    11b9:	5e                   	pop    %esi
    11ba:	5f                   	pop    %edi
    11bb:	5d                   	pop    %ebp
    11bc:	c3                   	ret    
    11bd:	8d 76 00             	lea    0x0(%esi),%esi

000011c0 <stat>:

int
stat(const char *n, struct stat *st)
{
    11c0:	f3 0f 1e fb          	endbr32 
    11c4:	55                   	push   %ebp
    11c5:	89 e5                	mov    %esp,%ebp
    11c7:	56                   	push   %esi
    11c8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    11c9:	83 ec 08             	sub    $0x8,%esp
    11cc:	6a 00                	push   $0x0
    11ce:	ff 75 08             	pushl  0x8(%ebp)
    11d1:	e8 37 03 00 00       	call   150d <open>
  if(fd < 0)
    11d6:	83 c4 10             	add    $0x10,%esp
    11d9:	85 c0                	test   %eax,%eax
    11db:	78 2b                	js     1208 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    11dd:	83 ec 08             	sub    $0x8,%esp
    11e0:	ff 75 0c             	pushl  0xc(%ebp)
    11e3:	89 c3                	mov    %eax,%ebx
    11e5:	50                   	push   %eax
    11e6:	e8 3a 03 00 00       	call   1525 <fstat>
  close(fd);
    11eb:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    11ee:	89 c6                	mov    %eax,%esi
  close(fd);
    11f0:	e8 00 03 00 00       	call   14f5 <close>
  return r;
    11f5:	83 c4 10             	add    $0x10,%esp
}
    11f8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    11fb:	89 f0                	mov    %esi,%eax
    11fd:	5b                   	pop    %ebx
    11fe:	5e                   	pop    %esi
    11ff:	5d                   	pop    %ebp
    1200:	c3                   	ret    
    1201:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1208:	be ff ff ff ff       	mov    $0xffffffff,%esi
    120d:	eb e9                	jmp    11f8 <stat+0x38>
    120f:	90                   	nop

00001210 <atoi>:

int
atoi(const char *s)
{
    1210:	f3 0f 1e fb          	endbr32 
    1214:	55                   	push   %ebp
    1215:	89 e5                	mov    %esp,%ebp
    1217:	53                   	push   %ebx
    1218:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    121b:	0f be 02             	movsbl (%edx),%eax
    121e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1221:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1224:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1229:	77 1a                	ja     1245 <atoi+0x35>
    122b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    122f:	90                   	nop
    n = n*10 + *s++ - '0';
    1230:	83 c2 01             	add    $0x1,%edx
    1233:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1236:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    123a:	0f be 02             	movsbl (%edx),%eax
    123d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1240:	80 fb 09             	cmp    $0x9,%bl
    1243:	76 eb                	jbe    1230 <atoi+0x20>
  return n;
}
    1245:	89 c8                	mov    %ecx,%eax
    1247:	5b                   	pop    %ebx
    1248:	5d                   	pop    %ebp
    1249:	c3                   	ret    
    124a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001250 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1250:	f3 0f 1e fb          	endbr32 
    1254:	55                   	push   %ebp
    1255:	89 e5                	mov    %esp,%ebp
    1257:	57                   	push   %edi
    1258:	8b 45 10             	mov    0x10(%ebp),%eax
    125b:	8b 55 08             	mov    0x8(%ebp),%edx
    125e:	56                   	push   %esi
    125f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1262:	85 c0                	test   %eax,%eax
    1264:	7e 0f                	jle    1275 <memmove+0x25>
    1266:	01 d0                	add    %edx,%eax
  dst = vdst;
    1268:	89 d7                	mov    %edx,%edi
    126a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    1270:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    1271:	39 f8                	cmp    %edi,%eax
    1273:	75 fb                	jne    1270 <memmove+0x20>
  return vdst;
}
    1275:	5e                   	pop    %esi
    1276:	89 d0                	mov    %edx,%eax
    1278:	5f                   	pop    %edi
    1279:	5d                   	pop    %ebp
    127a:	c3                   	ret    
    127b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    127f:	90                   	nop

00001280 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    1280:	f3 0f 1e fb          	endbr32 
    1284:	55                   	push   %ebp
    1285:	89 e5                	mov    %esp,%ebp
    1287:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    128a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    128d:	50                   	push   %eax
    128e:	e8 0a 03 00 00       	call   159d <join>
  
  return x;
}
    1293:	c9                   	leave  
    1294:	c3                   	ret    
    1295:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    129c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000012a0 <lock_init>:

void lock_init(struct lock_t *lk){
    12a0:	f3 0f 1e fb          	endbr32 
    12a4:	55                   	push   %ebp
    12a5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    12a7:	8b 45 08             	mov    0x8(%ebp),%eax
    12aa:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    12b0:	5d                   	pop    %ebp
    12b1:	c3                   	ret    
    12b2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000012c0 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    12c0:	f3 0f 1e fb          	endbr32 
    12c4:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    12c5:	b9 01 00 00 00       	mov    $0x1,%ecx
    12ca:	89 e5                	mov    %esp,%ebp
    12cc:	8b 55 08             	mov    0x8(%ebp),%edx
    12cf:	90                   	nop
    12d0:	89 c8                	mov    %ecx,%eax
    12d2:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    12d5:	85 c0                	test   %eax,%eax
    12d7:	75 f7                	jne    12d0 <lock_acquire+0x10>
}
    12d9:	5d                   	pop    %ebp
    12da:	c3                   	ret    
    12db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12df:	90                   	nop

000012e0 <lock_release>:
void lock_release(struct lock_t *lk){
    12e0:	f3 0f 1e fb          	endbr32 
    12e4:	55                   	push   %ebp
    12e5:	31 c0                	xor    %eax,%eax
    12e7:	89 e5                	mov    %esp,%ebp
    12e9:	8b 55 08             	mov    0x8(%ebp),%edx
    12ec:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    12ef:	5d                   	pop    %ebp
    12f0:	c3                   	ret    
    12f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12ff:	90                   	nop

00001300 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1300:	f3 0f 1e fb          	endbr32 
    1304:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1305:	a1 70 1b 00 00       	mov    0x1b70,%eax
{
    130a:	89 e5                	mov    %esp,%ebp
    130c:	57                   	push   %edi
    130d:	56                   	push   %esi
    130e:	53                   	push   %ebx
    130f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1312:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1314:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1317:	39 c8                	cmp    %ecx,%eax
    1319:	73 15                	jae    1330 <free+0x30>
    131b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    131f:	90                   	nop
    1320:	39 d1                	cmp    %edx,%ecx
    1322:	72 14                	jb     1338 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1324:	39 d0                	cmp    %edx,%eax
    1326:	73 10                	jae    1338 <free+0x38>
{
    1328:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    132a:	8b 10                	mov    (%eax),%edx
    132c:	39 c8                	cmp    %ecx,%eax
    132e:	72 f0                	jb     1320 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1330:	39 d0                	cmp    %edx,%eax
    1332:	72 f4                	jb     1328 <free+0x28>
    1334:	39 d1                	cmp    %edx,%ecx
    1336:	73 f0                	jae    1328 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1338:	8b 73 fc             	mov    -0x4(%ebx),%esi
    133b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    133e:	39 fa                	cmp    %edi,%edx
    1340:	74 1e                	je     1360 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1342:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1345:	8b 50 04             	mov    0x4(%eax),%edx
    1348:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    134b:	39 f1                	cmp    %esi,%ecx
    134d:	74 28                	je     1377 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    134f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1351:	5b                   	pop    %ebx
  freep = p;
    1352:	a3 70 1b 00 00       	mov    %eax,0x1b70
}
    1357:	5e                   	pop    %esi
    1358:	5f                   	pop    %edi
    1359:	5d                   	pop    %ebp
    135a:	c3                   	ret    
    135b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    135f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1360:	03 72 04             	add    0x4(%edx),%esi
    1363:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1366:	8b 10                	mov    (%eax),%edx
    1368:	8b 12                	mov    (%edx),%edx
    136a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    136d:	8b 50 04             	mov    0x4(%eax),%edx
    1370:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1373:	39 f1                	cmp    %esi,%ecx
    1375:	75 d8                	jne    134f <free+0x4f>
    p->s.size += bp->s.size;
    1377:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    137a:	a3 70 1b 00 00       	mov    %eax,0x1b70
    p->s.size += bp->s.size;
    137f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1382:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1385:	89 10                	mov    %edx,(%eax)
}
    1387:	5b                   	pop    %ebx
    1388:	5e                   	pop    %esi
    1389:	5f                   	pop    %edi
    138a:	5d                   	pop    %ebp
    138b:	c3                   	ret    
    138c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001390 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1390:	f3 0f 1e fb          	endbr32 
    1394:	55                   	push   %ebp
    1395:	89 e5                	mov    %esp,%ebp
    1397:	57                   	push   %edi
    1398:	56                   	push   %esi
    1399:	53                   	push   %ebx
    139a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    139d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    13a0:	8b 3d 70 1b 00 00    	mov    0x1b70,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    13a6:	8d 70 07             	lea    0x7(%eax),%esi
    13a9:	c1 ee 03             	shr    $0x3,%esi
    13ac:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    13af:	85 ff                	test   %edi,%edi
    13b1:	0f 84 a9 00 00 00    	je     1460 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    13b7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    13b9:	8b 48 04             	mov    0x4(%eax),%ecx
    13bc:	39 f1                	cmp    %esi,%ecx
    13be:	73 6d                	jae    142d <malloc+0x9d>
    13c0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    13c6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    13cb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    13ce:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    13d5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    13d8:	eb 17                	jmp    13f1 <malloc+0x61>
    13da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    13e0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    13e2:	8b 4a 04             	mov    0x4(%edx),%ecx
    13e5:	39 f1                	cmp    %esi,%ecx
    13e7:	73 4f                	jae    1438 <malloc+0xa8>
    13e9:	8b 3d 70 1b 00 00    	mov    0x1b70,%edi
    13ef:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    13f1:	39 c7                	cmp    %eax,%edi
    13f3:	75 eb                	jne    13e0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    13f5:	83 ec 0c             	sub    $0xc,%esp
    13f8:	ff 75 e4             	pushl  -0x1c(%ebp)
    13fb:	e8 55 01 00 00       	call   1555 <sbrk>
  if(p == (char*)-1)
    1400:	83 c4 10             	add    $0x10,%esp
    1403:	83 f8 ff             	cmp    $0xffffffff,%eax
    1406:	74 1b                	je     1423 <malloc+0x93>
  hp->s.size = nu;
    1408:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    140b:	83 ec 0c             	sub    $0xc,%esp
    140e:	83 c0 08             	add    $0x8,%eax
    1411:	50                   	push   %eax
    1412:	e8 e9 fe ff ff       	call   1300 <free>
  return freep;
    1417:	a1 70 1b 00 00       	mov    0x1b70,%eax
      if((p = morecore(nunits)) == 0)
    141c:	83 c4 10             	add    $0x10,%esp
    141f:	85 c0                	test   %eax,%eax
    1421:	75 bd                	jne    13e0 <malloc+0x50>
        return 0;
  }
}
    1423:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1426:	31 c0                	xor    %eax,%eax
}
    1428:	5b                   	pop    %ebx
    1429:	5e                   	pop    %esi
    142a:	5f                   	pop    %edi
    142b:	5d                   	pop    %ebp
    142c:	c3                   	ret    
    if(p->s.size >= nunits){
    142d:	89 c2                	mov    %eax,%edx
    142f:	89 f8                	mov    %edi,%eax
    1431:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1438:	39 ce                	cmp    %ecx,%esi
    143a:	74 54                	je     1490 <malloc+0x100>
        p->s.size -= nunits;
    143c:	29 f1                	sub    %esi,%ecx
    143e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1441:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1444:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1447:	a3 70 1b 00 00       	mov    %eax,0x1b70
}
    144c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    144f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1452:	5b                   	pop    %ebx
    1453:	5e                   	pop    %esi
    1454:	5f                   	pop    %edi
    1455:	5d                   	pop    %ebp
    1456:	c3                   	ret    
    1457:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    145e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1460:	c7 05 70 1b 00 00 74 	movl   $0x1b74,0x1b70
    1467:	1b 00 00 
    base.s.size = 0;
    146a:	bf 74 1b 00 00       	mov    $0x1b74,%edi
    base.s.ptr = freep = prevp = &base;
    146f:	c7 05 74 1b 00 00 74 	movl   $0x1b74,0x1b74
    1476:	1b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1479:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    147b:	c7 05 78 1b 00 00 00 	movl   $0x0,0x1b78
    1482:	00 00 00 
    if(p->s.size >= nunits){
    1485:	e9 36 ff ff ff       	jmp    13c0 <malloc+0x30>
    148a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1490:	8b 0a                	mov    (%edx),%ecx
    1492:	89 08                	mov    %ecx,(%eax)
    1494:	eb b1                	jmp    1447 <malloc+0xb7>
    1496:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    149d:	8d 76 00             	lea    0x0(%esi),%esi

000014a0 <thread_create>:
{
    14a0:	f3 0f 1e fb          	endbr32 
    14a4:	55                   	push   %ebp
    14a5:	89 e5                	mov    %esp,%ebp
    14a7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    14aa:	68 00 10 00 00       	push   $0x1000
    14af:	e8 dc fe ff ff       	call   1390 <malloc>
return clone(start_routine,arg1,arg2,stack);
    14b4:	50                   	push   %eax
    14b5:	ff 75 10             	pushl  0x10(%ebp)
    14b8:	ff 75 0c             	pushl  0xc(%ebp)
    14bb:	ff 75 08             	pushl  0x8(%ebp)
    14be:	e8 d2 00 00 00       	call   1595 <clone>
}
    14c3:	c9                   	leave  
    14c4:	c3                   	ret    

000014c5 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    14c5:	b8 01 00 00 00       	mov    $0x1,%eax
    14ca:	cd 40                	int    $0x40
    14cc:	c3                   	ret    

000014cd <exit>:
SYSCALL(exit)
    14cd:	b8 02 00 00 00       	mov    $0x2,%eax
    14d2:	cd 40                	int    $0x40
    14d4:	c3                   	ret    

000014d5 <wait>:
SYSCALL(wait)
    14d5:	b8 03 00 00 00       	mov    $0x3,%eax
    14da:	cd 40                	int    $0x40
    14dc:	c3                   	ret    

000014dd <pipe>:
SYSCALL(pipe)
    14dd:	b8 04 00 00 00       	mov    $0x4,%eax
    14e2:	cd 40                	int    $0x40
    14e4:	c3                   	ret    

000014e5 <read>:
SYSCALL(read)
    14e5:	b8 05 00 00 00       	mov    $0x5,%eax
    14ea:	cd 40                	int    $0x40
    14ec:	c3                   	ret    

000014ed <write>:
SYSCALL(write)
    14ed:	b8 10 00 00 00       	mov    $0x10,%eax
    14f2:	cd 40                	int    $0x40
    14f4:	c3                   	ret    

000014f5 <close>:
SYSCALL(close)
    14f5:	b8 15 00 00 00       	mov    $0x15,%eax
    14fa:	cd 40                	int    $0x40
    14fc:	c3                   	ret    

000014fd <kill>:
SYSCALL(kill)
    14fd:	b8 06 00 00 00       	mov    $0x6,%eax
    1502:	cd 40                	int    $0x40
    1504:	c3                   	ret    

00001505 <exec>:
SYSCALL(exec)
    1505:	b8 07 00 00 00       	mov    $0x7,%eax
    150a:	cd 40                	int    $0x40
    150c:	c3                   	ret    

0000150d <open>:
SYSCALL(open)
    150d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1512:	cd 40                	int    $0x40
    1514:	c3                   	ret    

00001515 <mknod>:
SYSCALL(mknod)
    1515:	b8 11 00 00 00       	mov    $0x11,%eax
    151a:	cd 40                	int    $0x40
    151c:	c3                   	ret    

0000151d <unlink>:
SYSCALL(unlink)
    151d:	b8 12 00 00 00       	mov    $0x12,%eax
    1522:	cd 40                	int    $0x40
    1524:	c3                   	ret    

00001525 <fstat>:
SYSCALL(fstat)
    1525:	b8 08 00 00 00       	mov    $0x8,%eax
    152a:	cd 40                	int    $0x40
    152c:	c3                   	ret    

0000152d <link>:
SYSCALL(link)
    152d:	b8 13 00 00 00       	mov    $0x13,%eax
    1532:	cd 40                	int    $0x40
    1534:	c3                   	ret    

00001535 <mkdir>:
SYSCALL(mkdir)
    1535:	b8 14 00 00 00       	mov    $0x14,%eax
    153a:	cd 40                	int    $0x40
    153c:	c3                   	ret    

0000153d <chdir>:
SYSCALL(chdir)
    153d:	b8 09 00 00 00       	mov    $0x9,%eax
    1542:	cd 40                	int    $0x40
    1544:	c3                   	ret    

00001545 <dup>:
SYSCALL(dup)
    1545:	b8 0a 00 00 00       	mov    $0xa,%eax
    154a:	cd 40                	int    $0x40
    154c:	c3                   	ret    

0000154d <getpid>:
SYSCALL(getpid)
    154d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1552:	cd 40                	int    $0x40
    1554:	c3                   	ret    

00001555 <sbrk>:
SYSCALL(sbrk)
    1555:	b8 0c 00 00 00       	mov    $0xc,%eax
    155a:	cd 40                	int    $0x40
    155c:	c3                   	ret    

0000155d <sleep>:
SYSCALL(sleep)
    155d:	b8 0d 00 00 00       	mov    $0xd,%eax
    1562:	cd 40                	int    $0x40
    1564:	c3                   	ret    

00001565 <uptime>:
SYSCALL(uptime)
    1565:	b8 0e 00 00 00       	mov    $0xe,%eax
    156a:	cd 40                	int    $0x40
    156c:	c3                   	ret    

0000156d <count>:
SYSCALL(count)
    156d:	b8 16 00 00 00       	mov    $0x16,%eax
    1572:	cd 40                	int    $0x40
    1574:	c3                   	ret    

00001575 <settickets>:

SYSCALL(settickets)
    1575:	b8 17 00 00 00       	mov    $0x17,%eax
    157a:	cd 40                	int    $0x40
    157c:	c3                   	ret    

0000157d <getpinfo>:
SYSCALL(getpinfo)
    157d:	b8 18 00 00 00       	mov    $0x18,%eax
    1582:	cd 40                	int    $0x40
    1584:	c3                   	ret    

00001585 <mprotect>:

SYSCALL(mprotect)
    1585:	b8 19 00 00 00       	mov    $0x19,%eax
    158a:	cd 40                	int    $0x40
    158c:	c3                   	ret    

0000158d <munprotect>:
SYSCALL(munprotect)
    158d:	b8 1a 00 00 00       	mov    $0x1a,%eax
    1592:	cd 40                	int    $0x40
    1594:	c3                   	ret    

00001595 <clone>:

SYSCALL(clone)
    1595:	b8 1b 00 00 00       	mov    $0x1b,%eax
    159a:	cd 40                	int    $0x40
    159c:	c3                   	ret    

0000159d <join>:
SYSCALL(join)
    159d:	b8 1c 00 00 00       	mov    $0x1c,%eax
    15a2:	cd 40                	int    $0x40
    15a4:	c3                   	ret    
    15a5:	66 90                	xchg   %ax,%ax
    15a7:	66 90                	xchg   %ax,%ax
    15a9:	66 90                	xchg   %ax,%ax
    15ab:	66 90                	xchg   %ax,%ax
    15ad:	66 90                	xchg   %ax,%ax
    15af:	90                   	nop

000015b0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    15b0:	55                   	push   %ebp
    15b1:	89 e5                	mov    %esp,%ebp
    15b3:	57                   	push   %edi
    15b4:	56                   	push   %esi
    15b5:	53                   	push   %ebx
    15b6:	83 ec 3c             	sub    $0x3c,%esp
    15b9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    15bc:	89 d1                	mov    %edx,%ecx
{
    15be:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    15c1:	85 d2                	test   %edx,%edx
    15c3:	0f 89 7f 00 00 00    	jns    1648 <printint+0x98>
    15c9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    15cd:	74 79                	je     1648 <printint+0x98>
    neg = 1;
    15cf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    15d6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    15d8:	31 db                	xor    %ebx,%ebx
    15da:	8d 75 d7             	lea    -0x29(%ebp),%esi
    15dd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    15e0:	89 c8                	mov    %ecx,%eax
    15e2:	31 d2                	xor    %edx,%edx
    15e4:	89 cf                	mov    %ecx,%edi
    15e6:	f7 75 c4             	divl   -0x3c(%ebp)
    15e9:	0f b6 92 30 18 00 00 	movzbl 0x1830(%edx),%edx
    15f0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    15f3:	89 d8                	mov    %ebx,%eax
    15f5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    15f8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    15fb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    15fe:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1601:	76 dd                	jbe    15e0 <printint+0x30>
  if(neg)
    1603:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1606:	85 c9                	test   %ecx,%ecx
    1608:	74 0c                	je     1616 <printint+0x66>
    buf[i++] = '-';
    160a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    160f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1611:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1616:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1619:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    161d:	eb 07                	jmp    1626 <printint+0x76>
    161f:	90                   	nop
    1620:	0f b6 13             	movzbl (%ebx),%edx
    1623:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1626:	83 ec 04             	sub    $0x4,%esp
    1629:	88 55 d7             	mov    %dl,-0x29(%ebp)
    162c:	6a 01                	push   $0x1
    162e:	56                   	push   %esi
    162f:	57                   	push   %edi
    1630:	e8 b8 fe ff ff       	call   14ed <write>
  while(--i >= 0)
    1635:	83 c4 10             	add    $0x10,%esp
    1638:	39 de                	cmp    %ebx,%esi
    163a:	75 e4                	jne    1620 <printint+0x70>
    putc(fd, buf[i]);
}
    163c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    163f:	5b                   	pop    %ebx
    1640:	5e                   	pop    %esi
    1641:	5f                   	pop    %edi
    1642:	5d                   	pop    %ebp
    1643:	c3                   	ret    
    1644:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1648:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    164f:	eb 87                	jmp    15d8 <printint+0x28>
    1651:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1658:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    165f:	90                   	nop

00001660 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1660:	f3 0f 1e fb          	endbr32 
    1664:	55                   	push   %ebp
    1665:	89 e5                	mov    %esp,%ebp
    1667:	57                   	push   %edi
    1668:	56                   	push   %esi
    1669:	53                   	push   %ebx
    166a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    166d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1670:	0f b6 1e             	movzbl (%esi),%ebx
    1673:	84 db                	test   %bl,%bl
    1675:	0f 84 b4 00 00 00    	je     172f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    167b:	8d 45 10             	lea    0x10(%ebp),%eax
    167e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1681:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    1684:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    1686:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1689:	eb 33                	jmp    16be <printf+0x5e>
    168b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    168f:	90                   	nop
    1690:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1693:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1698:	83 f8 25             	cmp    $0x25,%eax
    169b:	74 17                	je     16b4 <printf+0x54>
  write(fd, &c, 1);
    169d:	83 ec 04             	sub    $0x4,%esp
    16a0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    16a3:	6a 01                	push   $0x1
    16a5:	57                   	push   %edi
    16a6:	ff 75 08             	pushl  0x8(%ebp)
    16a9:	e8 3f fe ff ff       	call   14ed <write>
    16ae:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    16b1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    16b4:	0f b6 1e             	movzbl (%esi),%ebx
    16b7:	83 c6 01             	add    $0x1,%esi
    16ba:	84 db                	test   %bl,%bl
    16bc:	74 71                	je     172f <printf+0xcf>
    c = fmt[i] & 0xff;
    16be:	0f be cb             	movsbl %bl,%ecx
    16c1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    16c4:	85 d2                	test   %edx,%edx
    16c6:	74 c8                	je     1690 <printf+0x30>
      }
    } else if(state == '%'){
    16c8:	83 fa 25             	cmp    $0x25,%edx
    16cb:	75 e7                	jne    16b4 <printf+0x54>
      if(c == 'd'){
    16cd:	83 f8 64             	cmp    $0x64,%eax
    16d0:	0f 84 9a 00 00 00    	je     1770 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    16d6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    16dc:	83 f9 70             	cmp    $0x70,%ecx
    16df:	74 5f                	je     1740 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    16e1:	83 f8 73             	cmp    $0x73,%eax
    16e4:	0f 84 d6 00 00 00    	je     17c0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    16ea:	83 f8 63             	cmp    $0x63,%eax
    16ed:	0f 84 8d 00 00 00    	je     1780 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    16f3:	83 f8 25             	cmp    $0x25,%eax
    16f6:	0f 84 b4 00 00 00    	je     17b0 <printf+0x150>
  write(fd, &c, 1);
    16fc:	83 ec 04             	sub    $0x4,%esp
    16ff:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1703:	6a 01                	push   $0x1
    1705:	57                   	push   %edi
    1706:	ff 75 08             	pushl  0x8(%ebp)
    1709:	e8 df fd ff ff       	call   14ed <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    170e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1711:	83 c4 0c             	add    $0xc,%esp
    1714:	6a 01                	push   $0x1
    1716:	83 c6 01             	add    $0x1,%esi
    1719:	57                   	push   %edi
    171a:	ff 75 08             	pushl  0x8(%ebp)
    171d:	e8 cb fd ff ff       	call   14ed <write>
  for(i = 0; fmt[i]; i++){
    1722:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1726:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1729:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    172b:	84 db                	test   %bl,%bl
    172d:	75 8f                	jne    16be <printf+0x5e>
    }
  }
}
    172f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1732:	5b                   	pop    %ebx
    1733:	5e                   	pop    %esi
    1734:	5f                   	pop    %edi
    1735:	5d                   	pop    %ebp
    1736:	c3                   	ret    
    1737:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    173e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1740:	83 ec 0c             	sub    $0xc,%esp
    1743:	b9 10 00 00 00       	mov    $0x10,%ecx
    1748:	6a 00                	push   $0x0
    174a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    174d:	8b 45 08             	mov    0x8(%ebp),%eax
    1750:	8b 13                	mov    (%ebx),%edx
    1752:	e8 59 fe ff ff       	call   15b0 <printint>
        ap++;
    1757:	89 d8                	mov    %ebx,%eax
    1759:	83 c4 10             	add    $0x10,%esp
      state = 0;
    175c:	31 d2                	xor    %edx,%edx
        ap++;
    175e:	83 c0 04             	add    $0x4,%eax
    1761:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1764:	e9 4b ff ff ff       	jmp    16b4 <printf+0x54>
    1769:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1770:	83 ec 0c             	sub    $0xc,%esp
    1773:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1778:	6a 01                	push   $0x1
    177a:	eb ce                	jmp    174a <printf+0xea>
    177c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1780:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1783:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1786:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1788:	6a 01                	push   $0x1
        ap++;
    178a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    178d:	57                   	push   %edi
    178e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1791:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1794:	e8 54 fd ff ff       	call   14ed <write>
        ap++;
    1799:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    179c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    179f:	31 d2                	xor    %edx,%edx
    17a1:	e9 0e ff ff ff       	jmp    16b4 <printf+0x54>
    17a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17ad:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    17b0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    17b3:	83 ec 04             	sub    $0x4,%esp
    17b6:	e9 59 ff ff ff       	jmp    1714 <printf+0xb4>
    17bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17bf:	90                   	nop
        s = (char*)*ap;
    17c0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    17c3:	8b 18                	mov    (%eax),%ebx
        ap++;
    17c5:	83 c0 04             	add    $0x4,%eax
    17c8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    17cb:	85 db                	test   %ebx,%ebx
    17cd:	74 17                	je     17e6 <printf+0x186>
        while(*s != 0){
    17cf:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    17d2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    17d4:	84 c0                	test   %al,%al
    17d6:	0f 84 d8 fe ff ff    	je     16b4 <printf+0x54>
    17dc:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    17df:	89 de                	mov    %ebx,%esi
    17e1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    17e4:	eb 1a                	jmp    1800 <printf+0x1a0>
          s = "(null)";
    17e6:	bb 28 18 00 00       	mov    $0x1828,%ebx
        while(*s != 0){
    17eb:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    17ee:	b8 28 00 00 00       	mov    $0x28,%eax
    17f3:	89 de                	mov    %ebx,%esi
    17f5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    17f8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17ff:	90                   	nop
  write(fd, &c, 1);
    1800:	83 ec 04             	sub    $0x4,%esp
          s++;
    1803:	83 c6 01             	add    $0x1,%esi
    1806:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1809:	6a 01                	push   $0x1
    180b:	57                   	push   %edi
    180c:	53                   	push   %ebx
    180d:	e8 db fc ff ff       	call   14ed <write>
        while(*s != 0){
    1812:	0f b6 06             	movzbl (%esi),%eax
    1815:	83 c4 10             	add    $0x10,%esp
    1818:	84 c0                	test   %al,%al
    181a:	75 e4                	jne    1800 <printf+0x1a0>
    181c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    181f:	31 d2                	xor    %edx,%edx
    1821:	e9 8e fe ff ff       	jmp    16b4 <printf+0x54>
