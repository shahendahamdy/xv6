
_null_test2:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "user.h"
#define NULL ((void*)0)

int
main(int argc, char *argv[])
{
    1000:	f3 0f 1e fb          	endbr32 

a = 5;
pi = &a; // pi points to a
b = *pi; // b is now 5
pi=NULL;
c = *pi;
    1004:	a1 00 00 00 00       	mov    0x0,%eax
    1009:	0f 0b                	ud2    
    100b:	66 90                	xchg   %ax,%ax
    100d:	66 90                	xchg   %ax,%ax
    100f:	90                   	nop

00001010 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1010:	f3 0f 1e fb          	endbr32 
    1014:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1015:	31 c0                	xor    %eax,%eax
{
    1017:	89 e5                	mov    %esp,%ebp
    1019:	53                   	push   %ebx
    101a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    101d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1020:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1024:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1027:	83 c0 01             	add    $0x1,%eax
    102a:	84 d2                	test   %dl,%dl
    102c:	75 f2                	jne    1020 <strcpy+0x10>
    ;
  return os;
}
    102e:	89 c8                	mov    %ecx,%eax
    1030:	5b                   	pop    %ebx
    1031:	5d                   	pop    %ebp
    1032:	c3                   	ret    
    1033:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    103a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001040 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1040:	f3 0f 1e fb          	endbr32 
    1044:	55                   	push   %ebp
    1045:	89 e5                	mov    %esp,%ebp
    1047:	53                   	push   %ebx
    1048:	8b 4d 08             	mov    0x8(%ebp),%ecx
    104b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    104e:	0f b6 01             	movzbl (%ecx),%eax
    1051:	0f b6 1a             	movzbl (%edx),%ebx
    1054:	84 c0                	test   %al,%al
    1056:	75 19                	jne    1071 <strcmp+0x31>
    1058:	eb 26                	jmp    1080 <strcmp+0x40>
    105a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1060:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    1064:	83 c1 01             	add    $0x1,%ecx
    1067:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    106a:	0f b6 1a             	movzbl (%edx),%ebx
    106d:	84 c0                	test   %al,%al
    106f:	74 0f                	je     1080 <strcmp+0x40>
    1071:	38 d8                	cmp    %bl,%al
    1073:	74 eb                	je     1060 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1075:	29 d8                	sub    %ebx,%eax
}
    1077:	5b                   	pop    %ebx
    1078:	5d                   	pop    %ebp
    1079:	c3                   	ret    
    107a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1080:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1082:	29 d8                	sub    %ebx,%eax
}
    1084:	5b                   	pop    %ebx
    1085:	5d                   	pop    %ebp
    1086:	c3                   	ret    
    1087:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    108e:	66 90                	xchg   %ax,%ax

00001090 <strlen>:

uint
strlen(const char *s)
{
    1090:	f3 0f 1e fb          	endbr32 
    1094:	55                   	push   %ebp
    1095:	89 e5                	mov    %esp,%ebp
    1097:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    109a:	80 3a 00             	cmpb   $0x0,(%edx)
    109d:	74 21                	je     10c0 <strlen+0x30>
    109f:	31 c0                	xor    %eax,%eax
    10a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10a8:	83 c0 01             	add    $0x1,%eax
    10ab:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    10af:	89 c1                	mov    %eax,%ecx
    10b1:	75 f5                	jne    10a8 <strlen+0x18>
    ;
  return n;
}
    10b3:	89 c8                	mov    %ecx,%eax
    10b5:	5d                   	pop    %ebp
    10b6:	c3                   	ret    
    10b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10be:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    10c0:	31 c9                	xor    %ecx,%ecx
}
    10c2:	5d                   	pop    %ebp
    10c3:	89 c8                	mov    %ecx,%eax
    10c5:	c3                   	ret    
    10c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10cd:	8d 76 00             	lea    0x0(%esi),%esi

000010d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    10d0:	f3 0f 1e fb          	endbr32 
    10d4:	55                   	push   %ebp
    10d5:	89 e5                	mov    %esp,%ebp
    10d7:	57                   	push   %edi
    10d8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    10db:	8b 4d 10             	mov    0x10(%ebp),%ecx
    10de:	8b 45 0c             	mov    0xc(%ebp),%eax
    10e1:	89 d7                	mov    %edx,%edi
    10e3:	fc                   	cld    
    10e4:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    10e6:	89 d0                	mov    %edx,%eax
    10e8:	5f                   	pop    %edi
    10e9:	5d                   	pop    %ebp
    10ea:	c3                   	ret    
    10eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10ef:	90                   	nop

000010f0 <strchr>:

char*
strchr(const char *s, char c)
{
    10f0:	f3 0f 1e fb          	endbr32 
    10f4:	55                   	push   %ebp
    10f5:	89 e5                	mov    %esp,%ebp
    10f7:	8b 45 08             	mov    0x8(%ebp),%eax
    10fa:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    10fe:	0f b6 10             	movzbl (%eax),%edx
    1101:	84 d2                	test   %dl,%dl
    1103:	75 16                	jne    111b <strchr+0x2b>
    1105:	eb 21                	jmp    1128 <strchr+0x38>
    1107:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    110e:	66 90                	xchg   %ax,%ax
    1110:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1114:	83 c0 01             	add    $0x1,%eax
    1117:	84 d2                	test   %dl,%dl
    1119:	74 0d                	je     1128 <strchr+0x38>
    if(*s == c)
    111b:	38 d1                	cmp    %dl,%cl
    111d:	75 f1                	jne    1110 <strchr+0x20>
      return (char*)s;
  return 0;
}
    111f:	5d                   	pop    %ebp
    1120:	c3                   	ret    
    1121:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1128:	31 c0                	xor    %eax,%eax
}
    112a:	5d                   	pop    %ebp
    112b:	c3                   	ret    
    112c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001130 <gets>:

char*
gets(char *buf, int max)
{
    1130:	f3 0f 1e fb          	endbr32 
    1134:	55                   	push   %ebp
    1135:	89 e5                	mov    %esp,%ebp
    1137:	57                   	push   %edi
    1138:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1139:	31 f6                	xor    %esi,%esi
{
    113b:	53                   	push   %ebx
    113c:	89 f3                	mov    %esi,%ebx
    113e:	83 ec 1c             	sub    $0x1c,%esp
    1141:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1144:	eb 33                	jmp    1179 <gets+0x49>
    1146:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    114d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1150:	83 ec 04             	sub    $0x4,%esp
    1153:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1156:	6a 01                	push   $0x1
    1158:	50                   	push   %eax
    1159:	6a 00                	push   $0x0
    115b:	e8 75 03 00 00       	call   14d5 <read>
    if(cc < 1)
    1160:	83 c4 10             	add    $0x10,%esp
    1163:	85 c0                	test   %eax,%eax
    1165:	7e 1c                	jle    1183 <gets+0x53>
      break;
    buf[i++] = c;
    1167:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    116b:	83 c7 01             	add    $0x1,%edi
    116e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1171:	3c 0a                	cmp    $0xa,%al
    1173:	74 23                	je     1198 <gets+0x68>
    1175:	3c 0d                	cmp    $0xd,%al
    1177:	74 1f                	je     1198 <gets+0x68>
  for(i=0; i+1 < max; ){
    1179:	83 c3 01             	add    $0x1,%ebx
    117c:	89 fe                	mov    %edi,%esi
    117e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1181:	7c cd                	jl     1150 <gets+0x20>
    1183:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    1185:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1188:	c6 03 00             	movb   $0x0,(%ebx)
}
    118b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    118e:	5b                   	pop    %ebx
    118f:	5e                   	pop    %esi
    1190:	5f                   	pop    %edi
    1191:	5d                   	pop    %ebp
    1192:	c3                   	ret    
    1193:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1197:	90                   	nop
    1198:	8b 75 08             	mov    0x8(%ebp),%esi
    119b:	8b 45 08             	mov    0x8(%ebp),%eax
    119e:	01 de                	add    %ebx,%esi
    11a0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    11a2:	c6 03 00             	movb   $0x0,(%ebx)
}
    11a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11a8:	5b                   	pop    %ebx
    11a9:	5e                   	pop    %esi
    11aa:	5f                   	pop    %edi
    11ab:	5d                   	pop    %ebp
    11ac:	c3                   	ret    
    11ad:	8d 76 00             	lea    0x0(%esi),%esi

000011b0 <stat>:

int
stat(const char *n, struct stat *st)
{
    11b0:	f3 0f 1e fb          	endbr32 
    11b4:	55                   	push   %ebp
    11b5:	89 e5                	mov    %esp,%ebp
    11b7:	56                   	push   %esi
    11b8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    11b9:	83 ec 08             	sub    $0x8,%esp
    11bc:	6a 00                	push   $0x0
    11be:	ff 75 08             	pushl  0x8(%ebp)
    11c1:	e8 37 03 00 00       	call   14fd <open>
  if(fd < 0)
    11c6:	83 c4 10             	add    $0x10,%esp
    11c9:	85 c0                	test   %eax,%eax
    11cb:	78 2b                	js     11f8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    11cd:	83 ec 08             	sub    $0x8,%esp
    11d0:	ff 75 0c             	pushl  0xc(%ebp)
    11d3:	89 c3                	mov    %eax,%ebx
    11d5:	50                   	push   %eax
    11d6:	e8 3a 03 00 00       	call   1515 <fstat>
  close(fd);
    11db:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    11de:	89 c6                	mov    %eax,%esi
  close(fd);
    11e0:	e8 00 03 00 00       	call   14e5 <close>
  return r;
    11e5:	83 c4 10             	add    $0x10,%esp
}
    11e8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    11eb:	89 f0                	mov    %esi,%eax
    11ed:	5b                   	pop    %ebx
    11ee:	5e                   	pop    %esi
    11ef:	5d                   	pop    %ebp
    11f0:	c3                   	ret    
    11f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    11f8:	be ff ff ff ff       	mov    $0xffffffff,%esi
    11fd:	eb e9                	jmp    11e8 <stat+0x38>
    11ff:	90                   	nop

00001200 <atoi>:

int
atoi(const char *s)
{
    1200:	f3 0f 1e fb          	endbr32 
    1204:	55                   	push   %ebp
    1205:	89 e5                	mov    %esp,%ebp
    1207:	53                   	push   %ebx
    1208:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    120b:	0f be 02             	movsbl (%edx),%eax
    120e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1211:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1214:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1219:	77 1a                	ja     1235 <atoi+0x35>
    121b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    121f:	90                   	nop
    n = n*10 + *s++ - '0';
    1220:	83 c2 01             	add    $0x1,%edx
    1223:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1226:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    122a:	0f be 02             	movsbl (%edx),%eax
    122d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1230:	80 fb 09             	cmp    $0x9,%bl
    1233:	76 eb                	jbe    1220 <atoi+0x20>
  return n;
}
    1235:	89 c8                	mov    %ecx,%eax
    1237:	5b                   	pop    %ebx
    1238:	5d                   	pop    %ebp
    1239:	c3                   	ret    
    123a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001240 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1240:	f3 0f 1e fb          	endbr32 
    1244:	55                   	push   %ebp
    1245:	89 e5                	mov    %esp,%ebp
    1247:	57                   	push   %edi
    1248:	8b 45 10             	mov    0x10(%ebp),%eax
    124b:	8b 55 08             	mov    0x8(%ebp),%edx
    124e:	56                   	push   %esi
    124f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1252:	85 c0                	test   %eax,%eax
    1254:	7e 0f                	jle    1265 <memmove+0x25>
    1256:	01 d0                	add    %edx,%eax
  dst = vdst;
    1258:	89 d7                	mov    %edx,%edi
    125a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    1260:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    1261:	39 f8                	cmp    %edi,%eax
    1263:	75 fb                	jne    1260 <memmove+0x20>
  return vdst;
}
    1265:	5e                   	pop    %esi
    1266:	89 d0                	mov    %edx,%eax
    1268:	5f                   	pop    %edi
    1269:	5d                   	pop    %ebp
    126a:	c3                   	ret    
    126b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    126f:	90                   	nop

00001270 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    1270:	f3 0f 1e fb          	endbr32 
    1274:	55                   	push   %ebp
    1275:	89 e5                	mov    %esp,%ebp
    1277:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    127a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    127d:	50                   	push   %eax
    127e:	e8 0a 03 00 00       	call   158d <join>
  
  return x;
}
    1283:	c9                   	leave  
    1284:	c3                   	ret    
    1285:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    128c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001290 <lock_init>:

void lock_init(struct lock_t *lk){
    1290:	f3 0f 1e fb          	endbr32 
    1294:	55                   	push   %ebp
    1295:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    1297:	8b 45 08             	mov    0x8(%ebp),%eax
    129a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    12a0:	5d                   	pop    %ebp
    12a1:	c3                   	ret    
    12a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000012b0 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    12b0:	f3 0f 1e fb          	endbr32 
    12b4:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    12b5:	b9 01 00 00 00       	mov    $0x1,%ecx
    12ba:	89 e5                	mov    %esp,%ebp
    12bc:	8b 55 08             	mov    0x8(%ebp),%edx
    12bf:	90                   	nop
    12c0:	89 c8                	mov    %ecx,%eax
    12c2:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    12c5:	85 c0                	test   %eax,%eax
    12c7:	75 f7                	jne    12c0 <lock_acquire+0x10>
}
    12c9:	5d                   	pop    %ebp
    12ca:	c3                   	ret    
    12cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12cf:	90                   	nop

000012d0 <lock_release>:
void lock_release(struct lock_t *lk){
    12d0:	f3 0f 1e fb          	endbr32 
    12d4:	55                   	push   %ebp
    12d5:	31 c0                	xor    %eax,%eax
    12d7:	89 e5                	mov    %esp,%ebp
    12d9:	8b 55 08             	mov    0x8(%ebp),%edx
    12dc:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    12df:	5d                   	pop    %ebp
    12e0:	c3                   	ret    
    12e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12ef:	90                   	nop

000012f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    12f0:	f3 0f 1e fb          	endbr32 
    12f4:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    12f5:	a1 58 1b 00 00       	mov    0x1b58,%eax
{
    12fa:	89 e5                	mov    %esp,%ebp
    12fc:	57                   	push   %edi
    12fd:	56                   	push   %esi
    12fe:	53                   	push   %ebx
    12ff:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1302:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1304:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1307:	39 c8                	cmp    %ecx,%eax
    1309:	73 15                	jae    1320 <free+0x30>
    130b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    130f:	90                   	nop
    1310:	39 d1                	cmp    %edx,%ecx
    1312:	72 14                	jb     1328 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1314:	39 d0                	cmp    %edx,%eax
    1316:	73 10                	jae    1328 <free+0x38>
{
    1318:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    131a:	8b 10                	mov    (%eax),%edx
    131c:	39 c8                	cmp    %ecx,%eax
    131e:	72 f0                	jb     1310 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1320:	39 d0                	cmp    %edx,%eax
    1322:	72 f4                	jb     1318 <free+0x28>
    1324:	39 d1                	cmp    %edx,%ecx
    1326:	73 f0                	jae    1318 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1328:	8b 73 fc             	mov    -0x4(%ebx),%esi
    132b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    132e:	39 fa                	cmp    %edi,%edx
    1330:	74 1e                	je     1350 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1332:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1335:	8b 50 04             	mov    0x4(%eax),%edx
    1338:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    133b:	39 f1                	cmp    %esi,%ecx
    133d:	74 28                	je     1367 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    133f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1341:	5b                   	pop    %ebx
  freep = p;
    1342:	a3 58 1b 00 00       	mov    %eax,0x1b58
}
    1347:	5e                   	pop    %esi
    1348:	5f                   	pop    %edi
    1349:	5d                   	pop    %ebp
    134a:	c3                   	ret    
    134b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    134f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1350:	03 72 04             	add    0x4(%edx),%esi
    1353:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1356:	8b 10                	mov    (%eax),%edx
    1358:	8b 12                	mov    (%edx),%edx
    135a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    135d:	8b 50 04             	mov    0x4(%eax),%edx
    1360:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1363:	39 f1                	cmp    %esi,%ecx
    1365:	75 d8                	jne    133f <free+0x4f>
    p->s.size += bp->s.size;
    1367:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    136a:	a3 58 1b 00 00       	mov    %eax,0x1b58
    p->s.size += bp->s.size;
    136f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1372:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1375:	89 10                	mov    %edx,(%eax)
}
    1377:	5b                   	pop    %ebx
    1378:	5e                   	pop    %esi
    1379:	5f                   	pop    %edi
    137a:	5d                   	pop    %ebp
    137b:	c3                   	ret    
    137c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001380 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1380:	f3 0f 1e fb          	endbr32 
    1384:	55                   	push   %ebp
    1385:	89 e5                	mov    %esp,%ebp
    1387:	57                   	push   %edi
    1388:	56                   	push   %esi
    1389:	53                   	push   %ebx
    138a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    138d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1390:	8b 3d 58 1b 00 00    	mov    0x1b58,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1396:	8d 70 07             	lea    0x7(%eax),%esi
    1399:	c1 ee 03             	shr    $0x3,%esi
    139c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    139f:	85 ff                	test   %edi,%edi
    13a1:	0f 84 a9 00 00 00    	je     1450 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    13a7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    13a9:	8b 48 04             	mov    0x4(%eax),%ecx
    13ac:	39 f1                	cmp    %esi,%ecx
    13ae:	73 6d                	jae    141d <malloc+0x9d>
    13b0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    13b6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    13bb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    13be:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    13c5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    13c8:	eb 17                	jmp    13e1 <malloc+0x61>
    13ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    13d0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    13d2:	8b 4a 04             	mov    0x4(%edx),%ecx
    13d5:	39 f1                	cmp    %esi,%ecx
    13d7:	73 4f                	jae    1428 <malloc+0xa8>
    13d9:	8b 3d 58 1b 00 00    	mov    0x1b58,%edi
    13df:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    13e1:	39 c7                	cmp    %eax,%edi
    13e3:	75 eb                	jne    13d0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    13e5:	83 ec 0c             	sub    $0xc,%esp
    13e8:	ff 75 e4             	pushl  -0x1c(%ebp)
    13eb:	e8 55 01 00 00       	call   1545 <sbrk>
  if(p == (char*)-1)
    13f0:	83 c4 10             	add    $0x10,%esp
    13f3:	83 f8 ff             	cmp    $0xffffffff,%eax
    13f6:	74 1b                	je     1413 <malloc+0x93>
  hp->s.size = nu;
    13f8:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    13fb:	83 ec 0c             	sub    $0xc,%esp
    13fe:	83 c0 08             	add    $0x8,%eax
    1401:	50                   	push   %eax
    1402:	e8 e9 fe ff ff       	call   12f0 <free>
  return freep;
    1407:	a1 58 1b 00 00       	mov    0x1b58,%eax
      if((p = morecore(nunits)) == 0)
    140c:	83 c4 10             	add    $0x10,%esp
    140f:	85 c0                	test   %eax,%eax
    1411:	75 bd                	jne    13d0 <malloc+0x50>
        return 0;
  }
}
    1413:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1416:	31 c0                	xor    %eax,%eax
}
    1418:	5b                   	pop    %ebx
    1419:	5e                   	pop    %esi
    141a:	5f                   	pop    %edi
    141b:	5d                   	pop    %ebp
    141c:	c3                   	ret    
    if(p->s.size >= nunits){
    141d:	89 c2                	mov    %eax,%edx
    141f:	89 f8                	mov    %edi,%eax
    1421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1428:	39 ce                	cmp    %ecx,%esi
    142a:	74 54                	je     1480 <malloc+0x100>
        p->s.size -= nunits;
    142c:	29 f1                	sub    %esi,%ecx
    142e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1431:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1434:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1437:	a3 58 1b 00 00       	mov    %eax,0x1b58
}
    143c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    143f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1442:	5b                   	pop    %ebx
    1443:	5e                   	pop    %esi
    1444:	5f                   	pop    %edi
    1445:	5d                   	pop    %ebp
    1446:	c3                   	ret    
    1447:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    144e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1450:	c7 05 58 1b 00 00 5c 	movl   $0x1b5c,0x1b58
    1457:	1b 00 00 
    base.s.size = 0;
    145a:	bf 5c 1b 00 00       	mov    $0x1b5c,%edi
    base.s.ptr = freep = prevp = &base;
    145f:	c7 05 5c 1b 00 00 5c 	movl   $0x1b5c,0x1b5c
    1466:	1b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1469:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    146b:	c7 05 60 1b 00 00 00 	movl   $0x0,0x1b60
    1472:	00 00 00 
    if(p->s.size >= nunits){
    1475:	e9 36 ff ff ff       	jmp    13b0 <malloc+0x30>
    147a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1480:	8b 0a                	mov    (%edx),%ecx
    1482:	89 08                	mov    %ecx,(%eax)
    1484:	eb b1                	jmp    1437 <malloc+0xb7>
    1486:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    148d:	8d 76 00             	lea    0x0(%esi),%esi

00001490 <thread_create>:
{
    1490:	f3 0f 1e fb          	endbr32 
    1494:	55                   	push   %ebp
    1495:	89 e5                	mov    %esp,%ebp
    1497:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    149a:	68 00 10 00 00       	push   $0x1000
    149f:	e8 dc fe ff ff       	call   1380 <malloc>
return clone(start_routine,arg1,arg2,stack);
    14a4:	50                   	push   %eax
    14a5:	ff 75 10             	pushl  0x10(%ebp)
    14a8:	ff 75 0c             	pushl  0xc(%ebp)
    14ab:	ff 75 08             	pushl  0x8(%ebp)
    14ae:	e8 d2 00 00 00       	call   1585 <clone>
}
    14b3:	c9                   	leave  
    14b4:	c3                   	ret    

000014b5 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    14b5:	b8 01 00 00 00       	mov    $0x1,%eax
    14ba:	cd 40                	int    $0x40
    14bc:	c3                   	ret    

000014bd <exit>:
SYSCALL(exit)
    14bd:	b8 02 00 00 00       	mov    $0x2,%eax
    14c2:	cd 40                	int    $0x40
    14c4:	c3                   	ret    

000014c5 <wait>:
SYSCALL(wait)
    14c5:	b8 03 00 00 00       	mov    $0x3,%eax
    14ca:	cd 40                	int    $0x40
    14cc:	c3                   	ret    

000014cd <pipe>:
SYSCALL(pipe)
    14cd:	b8 04 00 00 00       	mov    $0x4,%eax
    14d2:	cd 40                	int    $0x40
    14d4:	c3                   	ret    

000014d5 <read>:
SYSCALL(read)
    14d5:	b8 05 00 00 00       	mov    $0x5,%eax
    14da:	cd 40                	int    $0x40
    14dc:	c3                   	ret    

000014dd <write>:
SYSCALL(write)
    14dd:	b8 10 00 00 00       	mov    $0x10,%eax
    14e2:	cd 40                	int    $0x40
    14e4:	c3                   	ret    

000014e5 <close>:
SYSCALL(close)
    14e5:	b8 15 00 00 00       	mov    $0x15,%eax
    14ea:	cd 40                	int    $0x40
    14ec:	c3                   	ret    

000014ed <kill>:
SYSCALL(kill)
    14ed:	b8 06 00 00 00       	mov    $0x6,%eax
    14f2:	cd 40                	int    $0x40
    14f4:	c3                   	ret    

000014f5 <exec>:
SYSCALL(exec)
    14f5:	b8 07 00 00 00       	mov    $0x7,%eax
    14fa:	cd 40                	int    $0x40
    14fc:	c3                   	ret    

000014fd <open>:
SYSCALL(open)
    14fd:	b8 0f 00 00 00       	mov    $0xf,%eax
    1502:	cd 40                	int    $0x40
    1504:	c3                   	ret    

00001505 <mknod>:
SYSCALL(mknod)
    1505:	b8 11 00 00 00       	mov    $0x11,%eax
    150a:	cd 40                	int    $0x40
    150c:	c3                   	ret    

0000150d <unlink>:
SYSCALL(unlink)
    150d:	b8 12 00 00 00       	mov    $0x12,%eax
    1512:	cd 40                	int    $0x40
    1514:	c3                   	ret    

00001515 <fstat>:
SYSCALL(fstat)
    1515:	b8 08 00 00 00       	mov    $0x8,%eax
    151a:	cd 40                	int    $0x40
    151c:	c3                   	ret    

0000151d <link>:
SYSCALL(link)
    151d:	b8 13 00 00 00       	mov    $0x13,%eax
    1522:	cd 40                	int    $0x40
    1524:	c3                   	ret    

00001525 <mkdir>:
SYSCALL(mkdir)
    1525:	b8 14 00 00 00       	mov    $0x14,%eax
    152a:	cd 40                	int    $0x40
    152c:	c3                   	ret    

0000152d <chdir>:
SYSCALL(chdir)
    152d:	b8 09 00 00 00       	mov    $0x9,%eax
    1532:	cd 40                	int    $0x40
    1534:	c3                   	ret    

00001535 <dup>:
SYSCALL(dup)
    1535:	b8 0a 00 00 00       	mov    $0xa,%eax
    153a:	cd 40                	int    $0x40
    153c:	c3                   	ret    

0000153d <getpid>:
SYSCALL(getpid)
    153d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1542:	cd 40                	int    $0x40
    1544:	c3                   	ret    

00001545 <sbrk>:
SYSCALL(sbrk)
    1545:	b8 0c 00 00 00       	mov    $0xc,%eax
    154a:	cd 40                	int    $0x40
    154c:	c3                   	ret    

0000154d <sleep>:
SYSCALL(sleep)
    154d:	b8 0d 00 00 00       	mov    $0xd,%eax
    1552:	cd 40                	int    $0x40
    1554:	c3                   	ret    

00001555 <uptime>:
SYSCALL(uptime)
    1555:	b8 0e 00 00 00       	mov    $0xe,%eax
    155a:	cd 40                	int    $0x40
    155c:	c3                   	ret    

0000155d <count>:
SYSCALL(count)
    155d:	b8 16 00 00 00       	mov    $0x16,%eax
    1562:	cd 40                	int    $0x40
    1564:	c3                   	ret    

00001565 <settickets>:

SYSCALL(settickets)
    1565:	b8 17 00 00 00       	mov    $0x17,%eax
    156a:	cd 40                	int    $0x40
    156c:	c3                   	ret    

0000156d <getpinfo>:
SYSCALL(getpinfo)
    156d:	b8 18 00 00 00       	mov    $0x18,%eax
    1572:	cd 40                	int    $0x40
    1574:	c3                   	ret    

00001575 <mprotect>:

SYSCALL(mprotect)
    1575:	b8 19 00 00 00       	mov    $0x19,%eax
    157a:	cd 40                	int    $0x40
    157c:	c3                   	ret    

0000157d <munprotect>:
SYSCALL(munprotect)
    157d:	b8 1a 00 00 00       	mov    $0x1a,%eax
    1582:	cd 40                	int    $0x40
    1584:	c3                   	ret    

00001585 <clone>:

SYSCALL(clone)
    1585:	b8 1b 00 00 00       	mov    $0x1b,%eax
    158a:	cd 40                	int    $0x40
    158c:	c3                   	ret    

0000158d <join>:
SYSCALL(join)
    158d:	b8 1c 00 00 00       	mov    $0x1c,%eax
    1592:	cd 40                	int    $0x40
    1594:	c3                   	ret    
    1595:	66 90                	xchg   %ax,%ax
    1597:	66 90                	xchg   %ax,%ax
    1599:	66 90                	xchg   %ax,%ax
    159b:	66 90                	xchg   %ax,%ax
    159d:	66 90                	xchg   %ax,%ax
    159f:	90                   	nop

000015a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    15a0:	55                   	push   %ebp
    15a1:	89 e5                	mov    %esp,%ebp
    15a3:	57                   	push   %edi
    15a4:	56                   	push   %esi
    15a5:	53                   	push   %ebx
    15a6:	83 ec 3c             	sub    $0x3c,%esp
    15a9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    15ac:	89 d1                	mov    %edx,%ecx
{
    15ae:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    15b1:	85 d2                	test   %edx,%edx
    15b3:	0f 89 7f 00 00 00    	jns    1638 <printint+0x98>
    15b9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    15bd:	74 79                	je     1638 <printint+0x98>
    neg = 1;
    15bf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    15c6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    15c8:	31 db                	xor    %ebx,%ebx
    15ca:	8d 75 d7             	lea    -0x29(%ebp),%esi
    15cd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    15d0:	89 c8                	mov    %ecx,%eax
    15d2:	31 d2                	xor    %edx,%edx
    15d4:	89 cf                	mov    %ecx,%edi
    15d6:	f7 75 c4             	divl   -0x3c(%ebp)
    15d9:	0f b6 92 20 18 00 00 	movzbl 0x1820(%edx),%edx
    15e0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    15e3:	89 d8                	mov    %ebx,%eax
    15e5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    15e8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    15eb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    15ee:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    15f1:	76 dd                	jbe    15d0 <printint+0x30>
  if(neg)
    15f3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    15f6:	85 c9                	test   %ecx,%ecx
    15f8:	74 0c                	je     1606 <printint+0x66>
    buf[i++] = '-';
    15fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    15ff:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1601:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1606:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1609:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    160d:	eb 07                	jmp    1616 <printint+0x76>
    160f:	90                   	nop
    1610:	0f b6 13             	movzbl (%ebx),%edx
    1613:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1616:	83 ec 04             	sub    $0x4,%esp
    1619:	88 55 d7             	mov    %dl,-0x29(%ebp)
    161c:	6a 01                	push   $0x1
    161e:	56                   	push   %esi
    161f:	57                   	push   %edi
    1620:	e8 b8 fe ff ff       	call   14dd <write>
  while(--i >= 0)
    1625:	83 c4 10             	add    $0x10,%esp
    1628:	39 de                	cmp    %ebx,%esi
    162a:	75 e4                	jne    1610 <printint+0x70>
    putc(fd, buf[i]);
}
    162c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    162f:	5b                   	pop    %ebx
    1630:	5e                   	pop    %esi
    1631:	5f                   	pop    %edi
    1632:	5d                   	pop    %ebp
    1633:	c3                   	ret    
    1634:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1638:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    163f:	eb 87                	jmp    15c8 <printint+0x28>
    1641:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1648:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    164f:	90                   	nop

00001650 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1650:	f3 0f 1e fb          	endbr32 
    1654:	55                   	push   %ebp
    1655:	89 e5                	mov    %esp,%ebp
    1657:	57                   	push   %edi
    1658:	56                   	push   %esi
    1659:	53                   	push   %ebx
    165a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    165d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1660:	0f b6 1e             	movzbl (%esi),%ebx
    1663:	84 db                	test   %bl,%bl
    1665:	0f 84 b4 00 00 00    	je     171f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    166b:	8d 45 10             	lea    0x10(%ebp),%eax
    166e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1671:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    1674:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    1676:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1679:	eb 33                	jmp    16ae <printf+0x5e>
    167b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    167f:	90                   	nop
    1680:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1683:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1688:	83 f8 25             	cmp    $0x25,%eax
    168b:	74 17                	je     16a4 <printf+0x54>
  write(fd, &c, 1);
    168d:	83 ec 04             	sub    $0x4,%esp
    1690:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1693:	6a 01                	push   $0x1
    1695:	57                   	push   %edi
    1696:	ff 75 08             	pushl  0x8(%ebp)
    1699:	e8 3f fe ff ff       	call   14dd <write>
    169e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    16a1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    16a4:	0f b6 1e             	movzbl (%esi),%ebx
    16a7:	83 c6 01             	add    $0x1,%esi
    16aa:	84 db                	test   %bl,%bl
    16ac:	74 71                	je     171f <printf+0xcf>
    c = fmt[i] & 0xff;
    16ae:	0f be cb             	movsbl %bl,%ecx
    16b1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    16b4:	85 d2                	test   %edx,%edx
    16b6:	74 c8                	je     1680 <printf+0x30>
      }
    } else if(state == '%'){
    16b8:	83 fa 25             	cmp    $0x25,%edx
    16bb:	75 e7                	jne    16a4 <printf+0x54>
      if(c == 'd'){
    16bd:	83 f8 64             	cmp    $0x64,%eax
    16c0:	0f 84 9a 00 00 00    	je     1760 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    16c6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    16cc:	83 f9 70             	cmp    $0x70,%ecx
    16cf:	74 5f                	je     1730 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    16d1:	83 f8 73             	cmp    $0x73,%eax
    16d4:	0f 84 d6 00 00 00    	je     17b0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    16da:	83 f8 63             	cmp    $0x63,%eax
    16dd:	0f 84 8d 00 00 00    	je     1770 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    16e3:	83 f8 25             	cmp    $0x25,%eax
    16e6:	0f 84 b4 00 00 00    	je     17a0 <printf+0x150>
  write(fd, &c, 1);
    16ec:	83 ec 04             	sub    $0x4,%esp
    16ef:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    16f3:	6a 01                	push   $0x1
    16f5:	57                   	push   %edi
    16f6:	ff 75 08             	pushl  0x8(%ebp)
    16f9:	e8 df fd ff ff       	call   14dd <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    16fe:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1701:	83 c4 0c             	add    $0xc,%esp
    1704:	6a 01                	push   $0x1
    1706:	83 c6 01             	add    $0x1,%esi
    1709:	57                   	push   %edi
    170a:	ff 75 08             	pushl  0x8(%ebp)
    170d:	e8 cb fd ff ff       	call   14dd <write>
  for(i = 0; fmt[i]; i++){
    1712:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1716:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1719:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    171b:	84 db                	test   %bl,%bl
    171d:	75 8f                	jne    16ae <printf+0x5e>
    }
  }
}
    171f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1722:	5b                   	pop    %ebx
    1723:	5e                   	pop    %esi
    1724:	5f                   	pop    %edi
    1725:	5d                   	pop    %ebp
    1726:	c3                   	ret    
    1727:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    172e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1730:	83 ec 0c             	sub    $0xc,%esp
    1733:	b9 10 00 00 00       	mov    $0x10,%ecx
    1738:	6a 00                	push   $0x0
    173a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    173d:	8b 45 08             	mov    0x8(%ebp),%eax
    1740:	8b 13                	mov    (%ebx),%edx
    1742:	e8 59 fe ff ff       	call   15a0 <printint>
        ap++;
    1747:	89 d8                	mov    %ebx,%eax
    1749:	83 c4 10             	add    $0x10,%esp
      state = 0;
    174c:	31 d2                	xor    %edx,%edx
        ap++;
    174e:	83 c0 04             	add    $0x4,%eax
    1751:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1754:	e9 4b ff ff ff       	jmp    16a4 <printf+0x54>
    1759:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1760:	83 ec 0c             	sub    $0xc,%esp
    1763:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1768:	6a 01                	push   $0x1
    176a:	eb ce                	jmp    173a <printf+0xea>
    176c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1770:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1773:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1776:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1778:	6a 01                	push   $0x1
        ap++;
    177a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    177d:	57                   	push   %edi
    177e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1781:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1784:	e8 54 fd ff ff       	call   14dd <write>
        ap++;
    1789:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    178c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    178f:	31 d2                	xor    %edx,%edx
    1791:	e9 0e ff ff ff       	jmp    16a4 <printf+0x54>
    1796:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    179d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    17a0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    17a3:	83 ec 04             	sub    $0x4,%esp
    17a6:	e9 59 ff ff ff       	jmp    1704 <printf+0xb4>
    17ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17af:	90                   	nop
        s = (char*)*ap;
    17b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    17b3:	8b 18                	mov    (%eax),%ebx
        ap++;
    17b5:	83 c0 04             	add    $0x4,%eax
    17b8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    17bb:	85 db                	test   %ebx,%ebx
    17bd:	74 17                	je     17d6 <printf+0x186>
        while(*s != 0){
    17bf:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    17c2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    17c4:	84 c0                	test   %al,%al
    17c6:	0f 84 d8 fe ff ff    	je     16a4 <printf+0x54>
    17cc:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    17cf:	89 de                	mov    %ebx,%esi
    17d1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    17d4:	eb 1a                	jmp    17f0 <printf+0x1a0>
          s = "(null)";
    17d6:	bb 18 18 00 00       	mov    $0x1818,%ebx
        while(*s != 0){
    17db:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    17de:	b8 28 00 00 00       	mov    $0x28,%eax
    17e3:	89 de                	mov    %ebx,%esi
    17e5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    17e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17ef:	90                   	nop
  write(fd, &c, 1);
    17f0:	83 ec 04             	sub    $0x4,%esp
          s++;
    17f3:	83 c6 01             	add    $0x1,%esi
    17f6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    17f9:	6a 01                	push   $0x1
    17fb:	57                   	push   %edi
    17fc:	53                   	push   %ebx
    17fd:	e8 db fc ff ff       	call   14dd <write>
        while(*s != 0){
    1802:	0f b6 06             	movzbl (%esi),%eax
    1805:	83 c4 10             	add    $0x10,%esp
    1808:	84 c0                	test   %al,%al
    180a:	75 e4                	jne    17f0 <printf+0x1a0>
    180c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    180f:	31 d2                	xor    %edx,%edx
    1811:	e9 8e fe ff ff       	jmp    16a4 <printf+0x54>
