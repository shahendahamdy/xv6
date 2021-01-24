
_null_test:     file format elf32-i386


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
    100e:	55                   	push   %ebp
    100f:	89 e5                	mov    %esp,%ebp
    1011:	51                   	push   %ecx
    1012:	83 ec 04             	sub    $0x4,%esp
   int ppid = getpid();
    1015:	e8 63 05 00 00       	call   157d <getpid>

   if (fork() == 0) {
    101a:	e8 d6 04 00 00       	call   14f5 <fork>
    101f:	85 c0                	test   %eax,%eax
    1021:	75 15                	jne    1038 <main+0x38>
      uint * nullp = (uint*)0;
      printf(1, "null dereference: ");
    1023:	52                   	push   %edx
    1024:	52                   	push   %edx
    1025:	68 58 18 00 00       	push   $0x1858
    102a:	6a 01                	push   $0x1
    102c:	e8 5f 06 00 00       	call   1690 <printf>
      printf(1, "%x %x\n", nullp, *nullp);
    1031:	a1 00 00 00 00       	mov    0x0,%eax
    1036:	0f 0b                	ud2    
      // this process should be killed
      printf(1, "TEST FAILED\n");
      kill(ppid);
      exit();
   } else {
      wait();
    1038:	e8 c8 04 00 00       	call   1505 <wait>
   }

   printf(1, "TEST PASSED\n");
    103d:	50                   	push   %eax
    103e:	50                   	push   %eax
    103f:	68 6b 18 00 00       	push   $0x186b
    1044:	6a 01                	push   $0x1
    1046:	e8 45 06 00 00       	call   1690 <printf>
   exit();
    104b:	e8 ad 04 00 00       	call   14fd <exit>

00001050 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1050:	f3 0f 1e fb          	endbr32 
    1054:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1055:	31 c0                	xor    %eax,%eax
{
    1057:	89 e5                	mov    %esp,%ebp
    1059:	53                   	push   %ebx
    105a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    105d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1060:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1064:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1067:	83 c0 01             	add    $0x1,%eax
    106a:	84 d2                	test   %dl,%dl
    106c:	75 f2                	jne    1060 <strcpy+0x10>
    ;
  return os;
}
    106e:	89 c8                	mov    %ecx,%eax
    1070:	5b                   	pop    %ebx
    1071:	5d                   	pop    %ebp
    1072:	c3                   	ret    
    1073:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    107a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001080 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1080:	f3 0f 1e fb          	endbr32 
    1084:	55                   	push   %ebp
    1085:	89 e5                	mov    %esp,%ebp
    1087:	53                   	push   %ebx
    1088:	8b 4d 08             	mov    0x8(%ebp),%ecx
    108b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    108e:	0f b6 01             	movzbl (%ecx),%eax
    1091:	0f b6 1a             	movzbl (%edx),%ebx
    1094:	84 c0                	test   %al,%al
    1096:	75 19                	jne    10b1 <strcmp+0x31>
    1098:	eb 26                	jmp    10c0 <strcmp+0x40>
    109a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10a0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    10a4:	83 c1 01             	add    $0x1,%ecx
    10a7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    10aa:	0f b6 1a             	movzbl (%edx),%ebx
    10ad:	84 c0                	test   %al,%al
    10af:	74 0f                	je     10c0 <strcmp+0x40>
    10b1:	38 d8                	cmp    %bl,%al
    10b3:	74 eb                	je     10a0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    10b5:	29 d8                	sub    %ebx,%eax
}
    10b7:	5b                   	pop    %ebx
    10b8:	5d                   	pop    %ebp
    10b9:	c3                   	ret    
    10ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10c0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    10c2:	29 d8                	sub    %ebx,%eax
}
    10c4:	5b                   	pop    %ebx
    10c5:	5d                   	pop    %ebp
    10c6:	c3                   	ret    
    10c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10ce:	66 90                	xchg   %ax,%ax

000010d0 <strlen>:

uint
strlen(const char *s)
{
    10d0:	f3 0f 1e fb          	endbr32 
    10d4:	55                   	push   %ebp
    10d5:	89 e5                	mov    %esp,%ebp
    10d7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    10da:	80 3a 00             	cmpb   $0x0,(%edx)
    10dd:	74 21                	je     1100 <strlen+0x30>
    10df:	31 c0                	xor    %eax,%eax
    10e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10e8:	83 c0 01             	add    $0x1,%eax
    10eb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    10ef:	89 c1                	mov    %eax,%ecx
    10f1:	75 f5                	jne    10e8 <strlen+0x18>
    ;
  return n;
}
    10f3:	89 c8                	mov    %ecx,%eax
    10f5:	5d                   	pop    %ebp
    10f6:	c3                   	ret    
    10f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10fe:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1100:	31 c9                	xor    %ecx,%ecx
}
    1102:	5d                   	pop    %ebp
    1103:	89 c8                	mov    %ecx,%eax
    1105:	c3                   	ret    
    1106:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    110d:	8d 76 00             	lea    0x0(%esi),%esi

00001110 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1110:	f3 0f 1e fb          	endbr32 
    1114:	55                   	push   %ebp
    1115:	89 e5                	mov    %esp,%ebp
    1117:	57                   	push   %edi
    1118:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    111b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    111e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1121:	89 d7                	mov    %edx,%edi
    1123:	fc                   	cld    
    1124:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1126:	89 d0                	mov    %edx,%eax
    1128:	5f                   	pop    %edi
    1129:	5d                   	pop    %ebp
    112a:	c3                   	ret    
    112b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    112f:	90                   	nop

00001130 <strchr>:

char*
strchr(const char *s, char c)
{
    1130:	f3 0f 1e fb          	endbr32 
    1134:	55                   	push   %ebp
    1135:	89 e5                	mov    %esp,%ebp
    1137:	8b 45 08             	mov    0x8(%ebp),%eax
    113a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    113e:	0f b6 10             	movzbl (%eax),%edx
    1141:	84 d2                	test   %dl,%dl
    1143:	75 16                	jne    115b <strchr+0x2b>
    1145:	eb 21                	jmp    1168 <strchr+0x38>
    1147:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    114e:	66 90                	xchg   %ax,%ax
    1150:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1154:	83 c0 01             	add    $0x1,%eax
    1157:	84 d2                	test   %dl,%dl
    1159:	74 0d                	je     1168 <strchr+0x38>
    if(*s == c)
    115b:	38 d1                	cmp    %dl,%cl
    115d:	75 f1                	jne    1150 <strchr+0x20>
      return (char*)s;
  return 0;
}
    115f:	5d                   	pop    %ebp
    1160:	c3                   	ret    
    1161:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1168:	31 c0                	xor    %eax,%eax
}
    116a:	5d                   	pop    %ebp
    116b:	c3                   	ret    
    116c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001170 <gets>:

char*
gets(char *buf, int max)
{
    1170:	f3 0f 1e fb          	endbr32 
    1174:	55                   	push   %ebp
    1175:	89 e5                	mov    %esp,%ebp
    1177:	57                   	push   %edi
    1178:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1179:	31 f6                	xor    %esi,%esi
{
    117b:	53                   	push   %ebx
    117c:	89 f3                	mov    %esi,%ebx
    117e:	83 ec 1c             	sub    $0x1c,%esp
    1181:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1184:	eb 33                	jmp    11b9 <gets+0x49>
    1186:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    118d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1190:	83 ec 04             	sub    $0x4,%esp
    1193:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1196:	6a 01                	push   $0x1
    1198:	50                   	push   %eax
    1199:	6a 00                	push   $0x0
    119b:	e8 75 03 00 00       	call   1515 <read>
    if(cc < 1)
    11a0:	83 c4 10             	add    $0x10,%esp
    11a3:	85 c0                	test   %eax,%eax
    11a5:	7e 1c                	jle    11c3 <gets+0x53>
      break;
    buf[i++] = c;
    11a7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    11ab:	83 c7 01             	add    $0x1,%edi
    11ae:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    11b1:	3c 0a                	cmp    $0xa,%al
    11b3:	74 23                	je     11d8 <gets+0x68>
    11b5:	3c 0d                	cmp    $0xd,%al
    11b7:	74 1f                	je     11d8 <gets+0x68>
  for(i=0; i+1 < max; ){
    11b9:	83 c3 01             	add    $0x1,%ebx
    11bc:	89 fe                	mov    %edi,%esi
    11be:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    11c1:	7c cd                	jl     1190 <gets+0x20>
    11c3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    11c5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    11c8:	c6 03 00             	movb   $0x0,(%ebx)
}
    11cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11ce:	5b                   	pop    %ebx
    11cf:	5e                   	pop    %esi
    11d0:	5f                   	pop    %edi
    11d1:	5d                   	pop    %ebp
    11d2:	c3                   	ret    
    11d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11d7:	90                   	nop
    11d8:	8b 75 08             	mov    0x8(%ebp),%esi
    11db:	8b 45 08             	mov    0x8(%ebp),%eax
    11de:	01 de                	add    %ebx,%esi
    11e0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    11e2:	c6 03 00             	movb   $0x0,(%ebx)
}
    11e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11e8:	5b                   	pop    %ebx
    11e9:	5e                   	pop    %esi
    11ea:	5f                   	pop    %edi
    11eb:	5d                   	pop    %ebp
    11ec:	c3                   	ret    
    11ed:	8d 76 00             	lea    0x0(%esi),%esi

000011f0 <stat>:

int
stat(const char *n, struct stat *st)
{
    11f0:	f3 0f 1e fb          	endbr32 
    11f4:	55                   	push   %ebp
    11f5:	89 e5                	mov    %esp,%ebp
    11f7:	56                   	push   %esi
    11f8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    11f9:	83 ec 08             	sub    $0x8,%esp
    11fc:	6a 00                	push   $0x0
    11fe:	ff 75 08             	pushl  0x8(%ebp)
    1201:	e8 37 03 00 00       	call   153d <open>
  if(fd < 0)
    1206:	83 c4 10             	add    $0x10,%esp
    1209:	85 c0                	test   %eax,%eax
    120b:	78 2b                	js     1238 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    120d:	83 ec 08             	sub    $0x8,%esp
    1210:	ff 75 0c             	pushl  0xc(%ebp)
    1213:	89 c3                	mov    %eax,%ebx
    1215:	50                   	push   %eax
    1216:	e8 3a 03 00 00       	call   1555 <fstat>
  close(fd);
    121b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    121e:	89 c6                	mov    %eax,%esi
  close(fd);
    1220:	e8 00 03 00 00       	call   1525 <close>
  return r;
    1225:	83 c4 10             	add    $0x10,%esp
}
    1228:	8d 65 f8             	lea    -0x8(%ebp),%esp
    122b:	89 f0                	mov    %esi,%eax
    122d:	5b                   	pop    %ebx
    122e:	5e                   	pop    %esi
    122f:	5d                   	pop    %ebp
    1230:	c3                   	ret    
    1231:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1238:	be ff ff ff ff       	mov    $0xffffffff,%esi
    123d:	eb e9                	jmp    1228 <stat+0x38>
    123f:	90                   	nop

00001240 <atoi>:

int
atoi(const char *s)
{
    1240:	f3 0f 1e fb          	endbr32 
    1244:	55                   	push   %ebp
    1245:	89 e5                	mov    %esp,%ebp
    1247:	53                   	push   %ebx
    1248:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    124b:	0f be 02             	movsbl (%edx),%eax
    124e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1251:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1254:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1259:	77 1a                	ja     1275 <atoi+0x35>
    125b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    125f:	90                   	nop
    n = n*10 + *s++ - '0';
    1260:	83 c2 01             	add    $0x1,%edx
    1263:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1266:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    126a:	0f be 02             	movsbl (%edx),%eax
    126d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1270:	80 fb 09             	cmp    $0x9,%bl
    1273:	76 eb                	jbe    1260 <atoi+0x20>
  return n;
}
    1275:	89 c8                	mov    %ecx,%eax
    1277:	5b                   	pop    %ebx
    1278:	5d                   	pop    %ebp
    1279:	c3                   	ret    
    127a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001280 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1280:	f3 0f 1e fb          	endbr32 
    1284:	55                   	push   %ebp
    1285:	89 e5                	mov    %esp,%ebp
    1287:	57                   	push   %edi
    1288:	8b 45 10             	mov    0x10(%ebp),%eax
    128b:	8b 55 08             	mov    0x8(%ebp),%edx
    128e:	56                   	push   %esi
    128f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1292:	85 c0                	test   %eax,%eax
    1294:	7e 0f                	jle    12a5 <memmove+0x25>
    1296:	01 d0                	add    %edx,%eax
  dst = vdst;
    1298:	89 d7                	mov    %edx,%edi
    129a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    12a0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    12a1:	39 f8                	cmp    %edi,%eax
    12a3:	75 fb                	jne    12a0 <memmove+0x20>
  return vdst;
}
    12a5:	5e                   	pop    %esi
    12a6:	89 d0                	mov    %edx,%eax
    12a8:	5f                   	pop    %edi
    12a9:	5d                   	pop    %ebp
    12aa:	c3                   	ret    
    12ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12af:	90                   	nop

000012b0 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    12b0:	f3 0f 1e fb          	endbr32 
    12b4:	55                   	push   %ebp
    12b5:	89 e5                	mov    %esp,%ebp
    12b7:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    12ba:	8d 45 f4             	lea    -0xc(%ebp),%eax
    12bd:	50                   	push   %eax
    12be:	e8 0a 03 00 00       	call   15cd <join>
  
  return x;
}
    12c3:	c9                   	leave  
    12c4:	c3                   	ret    
    12c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000012d0 <lock_init>:

void lock_init(struct lock_t *lk){
    12d0:	f3 0f 1e fb          	endbr32 
    12d4:	55                   	push   %ebp
    12d5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    12d7:	8b 45 08             	mov    0x8(%ebp),%eax
    12da:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    12e0:	5d                   	pop    %ebp
    12e1:	c3                   	ret    
    12e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000012f0 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    12f0:	f3 0f 1e fb          	endbr32 
    12f4:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    12f5:	b9 01 00 00 00       	mov    $0x1,%ecx
    12fa:	89 e5                	mov    %esp,%ebp
    12fc:	8b 55 08             	mov    0x8(%ebp),%edx
    12ff:	90                   	nop
    1300:	89 c8                	mov    %ecx,%eax
    1302:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1305:	85 c0                	test   %eax,%eax
    1307:	75 f7                	jne    1300 <lock_acquire+0x10>
}
    1309:	5d                   	pop    %ebp
    130a:	c3                   	ret    
    130b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    130f:	90                   	nop

00001310 <lock_release>:
void lock_release(struct lock_t *lk){
    1310:	f3 0f 1e fb          	endbr32 
    1314:	55                   	push   %ebp
    1315:	31 c0                	xor    %eax,%eax
    1317:	89 e5                	mov    %esp,%ebp
    1319:	8b 55 08             	mov    0x8(%ebp),%edx
    131c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    131f:	5d                   	pop    %ebp
    1320:	c3                   	ret    
    1321:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1328:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    132f:	90                   	nop

00001330 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1330:	f3 0f 1e fb          	endbr32 
    1334:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1335:	a1 c8 1b 00 00       	mov    0x1bc8,%eax
{
    133a:	89 e5                	mov    %esp,%ebp
    133c:	57                   	push   %edi
    133d:	56                   	push   %esi
    133e:	53                   	push   %ebx
    133f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1342:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1344:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1347:	39 c8                	cmp    %ecx,%eax
    1349:	73 15                	jae    1360 <free+0x30>
    134b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    134f:	90                   	nop
    1350:	39 d1                	cmp    %edx,%ecx
    1352:	72 14                	jb     1368 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1354:	39 d0                	cmp    %edx,%eax
    1356:	73 10                	jae    1368 <free+0x38>
{
    1358:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    135a:	8b 10                	mov    (%eax),%edx
    135c:	39 c8                	cmp    %ecx,%eax
    135e:	72 f0                	jb     1350 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1360:	39 d0                	cmp    %edx,%eax
    1362:	72 f4                	jb     1358 <free+0x28>
    1364:	39 d1                	cmp    %edx,%ecx
    1366:	73 f0                	jae    1358 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1368:	8b 73 fc             	mov    -0x4(%ebx),%esi
    136b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    136e:	39 fa                	cmp    %edi,%edx
    1370:	74 1e                	je     1390 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1372:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1375:	8b 50 04             	mov    0x4(%eax),%edx
    1378:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    137b:	39 f1                	cmp    %esi,%ecx
    137d:	74 28                	je     13a7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    137f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1381:	5b                   	pop    %ebx
  freep = p;
    1382:	a3 c8 1b 00 00       	mov    %eax,0x1bc8
}
    1387:	5e                   	pop    %esi
    1388:	5f                   	pop    %edi
    1389:	5d                   	pop    %ebp
    138a:	c3                   	ret    
    138b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    138f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1390:	03 72 04             	add    0x4(%edx),%esi
    1393:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1396:	8b 10                	mov    (%eax),%edx
    1398:	8b 12                	mov    (%edx),%edx
    139a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    139d:	8b 50 04             	mov    0x4(%eax),%edx
    13a0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    13a3:	39 f1                	cmp    %esi,%ecx
    13a5:	75 d8                	jne    137f <free+0x4f>
    p->s.size += bp->s.size;
    13a7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    13aa:	a3 c8 1b 00 00       	mov    %eax,0x1bc8
    p->s.size += bp->s.size;
    13af:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    13b2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    13b5:	89 10                	mov    %edx,(%eax)
}
    13b7:	5b                   	pop    %ebx
    13b8:	5e                   	pop    %esi
    13b9:	5f                   	pop    %edi
    13ba:	5d                   	pop    %ebp
    13bb:	c3                   	ret    
    13bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000013c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    13c0:	f3 0f 1e fb          	endbr32 
    13c4:	55                   	push   %ebp
    13c5:	89 e5                	mov    %esp,%ebp
    13c7:	57                   	push   %edi
    13c8:	56                   	push   %esi
    13c9:	53                   	push   %ebx
    13ca:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    13cd:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    13d0:	8b 3d c8 1b 00 00    	mov    0x1bc8,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    13d6:	8d 70 07             	lea    0x7(%eax),%esi
    13d9:	c1 ee 03             	shr    $0x3,%esi
    13dc:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    13df:	85 ff                	test   %edi,%edi
    13e1:	0f 84 a9 00 00 00    	je     1490 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    13e7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    13e9:	8b 48 04             	mov    0x4(%eax),%ecx
    13ec:	39 f1                	cmp    %esi,%ecx
    13ee:	73 6d                	jae    145d <malloc+0x9d>
    13f0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    13f6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    13fb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    13fe:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1405:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1408:	eb 17                	jmp    1421 <malloc+0x61>
    140a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1410:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1412:	8b 4a 04             	mov    0x4(%edx),%ecx
    1415:	39 f1                	cmp    %esi,%ecx
    1417:	73 4f                	jae    1468 <malloc+0xa8>
    1419:	8b 3d c8 1b 00 00    	mov    0x1bc8,%edi
    141f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1421:	39 c7                	cmp    %eax,%edi
    1423:	75 eb                	jne    1410 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1425:	83 ec 0c             	sub    $0xc,%esp
    1428:	ff 75 e4             	pushl  -0x1c(%ebp)
    142b:	e8 55 01 00 00       	call   1585 <sbrk>
  if(p == (char*)-1)
    1430:	83 c4 10             	add    $0x10,%esp
    1433:	83 f8 ff             	cmp    $0xffffffff,%eax
    1436:	74 1b                	je     1453 <malloc+0x93>
  hp->s.size = nu;
    1438:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    143b:	83 ec 0c             	sub    $0xc,%esp
    143e:	83 c0 08             	add    $0x8,%eax
    1441:	50                   	push   %eax
    1442:	e8 e9 fe ff ff       	call   1330 <free>
  return freep;
    1447:	a1 c8 1b 00 00       	mov    0x1bc8,%eax
      if((p = morecore(nunits)) == 0)
    144c:	83 c4 10             	add    $0x10,%esp
    144f:	85 c0                	test   %eax,%eax
    1451:	75 bd                	jne    1410 <malloc+0x50>
        return 0;
  }
}
    1453:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1456:	31 c0                	xor    %eax,%eax
}
    1458:	5b                   	pop    %ebx
    1459:	5e                   	pop    %esi
    145a:	5f                   	pop    %edi
    145b:	5d                   	pop    %ebp
    145c:	c3                   	ret    
    if(p->s.size >= nunits){
    145d:	89 c2                	mov    %eax,%edx
    145f:	89 f8                	mov    %edi,%eax
    1461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1468:	39 ce                	cmp    %ecx,%esi
    146a:	74 54                	je     14c0 <malloc+0x100>
        p->s.size -= nunits;
    146c:	29 f1                	sub    %esi,%ecx
    146e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1471:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1474:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1477:	a3 c8 1b 00 00       	mov    %eax,0x1bc8
}
    147c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    147f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1482:	5b                   	pop    %ebx
    1483:	5e                   	pop    %esi
    1484:	5f                   	pop    %edi
    1485:	5d                   	pop    %ebp
    1486:	c3                   	ret    
    1487:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    148e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1490:	c7 05 c8 1b 00 00 cc 	movl   $0x1bcc,0x1bc8
    1497:	1b 00 00 
    base.s.size = 0;
    149a:	bf cc 1b 00 00       	mov    $0x1bcc,%edi
    base.s.ptr = freep = prevp = &base;
    149f:	c7 05 cc 1b 00 00 cc 	movl   $0x1bcc,0x1bcc
    14a6:	1b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    14a9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    14ab:	c7 05 d0 1b 00 00 00 	movl   $0x0,0x1bd0
    14b2:	00 00 00 
    if(p->s.size >= nunits){
    14b5:	e9 36 ff ff ff       	jmp    13f0 <malloc+0x30>
    14ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    14c0:	8b 0a                	mov    (%edx),%ecx
    14c2:	89 08                	mov    %ecx,(%eax)
    14c4:	eb b1                	jmp    1477 <malloc+0xb7>
    14c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14cd:	8d 76 00             	lea    0x0(%esi),%esi

000014d0 <thread_create>:
{
    14d0:	f3 0f 1e fb          	endbr32 
    14d4:	55                   	push   %ebp
    14d5:	89 e5                	mov    %esp,%ebp
    14d7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    14da:	68 00 10 00 00       	push   $0x1000
    14df:	e8 dc fe ff ff       	call   13c0 <malloc>
return clone(start_routine,arg1,arg2,stack);
    14e4:	50                   	push   %eax
    14e5:	ff 75 10             	pushl  0x10(%ebp)
    14e8:	ff 75 0c             	pushl  0xc(%ebp)
    14eb:	ff 75 08             	pushl  0x8(%ebp)
    14ee:	e8 d2 00 00 00       	call   15c5 <clone>
}
    14f3:	c9                   	leave  
    14f4:	c3                   	ret    

000014f5 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    14f5:	b8 01 00 00 00       	mov    $0x1,%eax
    14fa:	cd 40                	int    $0x40
    14fc:	c3                   	ret    

000014fd <exit>:
SYSCALL(exit)
    14fd:	b8 02 00 00 00       	mov    $0x2,%eax
    1502:	cd 40                	int    $0x40
    1504:	c3                   	ret    

00001505 <wait>:
SYSCALL(wait)
    1505:	b8 03 00 00 00       	mov    $0x3,%eax
    150a:	cd 40                	int    $0x40
    150c:	c3                   	ret    

0000150d <pipe>:
SYSCALL(pipe)
    150d:	b8 04 00 00 00       	mov    $0x4,%eax
    1512:	cd 40                	int    $0x40
    1514:	c3                   	ret    

00001515 <read>:
SYSCALL(read)
    1515:	b8 05 00 00 00       	mov    $0x5,%eax
    151a:	cd 40                	int    $0x40
    151c:	c3                   	ret    

0000151d <write>:
SYSCALL(write)
    151d:	b8 10 00 00 00       	mov    $0x10,%eax
    1522:	cd 40                	int    $0x40
    1524:	c3                   	ret    

00001525 <close>:
SYSCALL(close)
    1525:	b8 15 00 00 00       	mov    $0x15,%eax
    152a:	cd 40                	int    $0x40
    152c:	c3                   	ret    

0000152d <kill>:
SYSCALL(kill)
    152d:	b8 06 00 00 00       	mov    $0x6,%eax
    1532:	cd 40                	int    $0x40
    1534:	c3                   	ret    

00001535 <exec>:
SYSCALL(exec)
    1535:	b8 07 00 00 00       	mov    $0x7,%eax
    153a:	cd 40                	int    $0x40
    153c:	c3                   	ret    

0000153d <open>:
SYSCALL(open)
    153d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1542:	cd 40                	int    $0x40
    1544:	c3                   	ret    

00001545 <mknod>:
SYSCALL(mknod)
    1545:	b8 11 00 00 00       	mov    $0x11,%eax
    154a:	cd 40                	int    $0x40
    154c:	c3                   	ret    

0000154d <unlink>:
SYSCALL(unlink)
    154d:	b8 12 00 00 00       	mov    $0x12,%eax
    1552:	cd 40                	int    $0x40
    1554:	c3                   	ret    

00001555 <fstat>:
SYSCALL(fstat)
    1555:	b8 08 00 00 00       	mov    $0x8,%eax
    155a:	cd 40                	int    $0x40
    155c:	c3                   	ret    

0000155d <link>:
SYSCALL(link)
    155d:	b8 13 00 00 00       	mov    $0x13,%eax
    1562:	cd 40                	int    $0x40
    1564:	c3                   	ret    

00001565 <mkdir>:
SYSCALL(mkdir)
    1565:	b8 14 00 00 00       	mov    $0x14,%eax
    156a:	cd 40                	int    $0x40
    156c:	c3                   	ret    

0000156d <chdir>:
SYSCALL(chdir)
    156d:	b8 09 00 00 00       	mov    $0x9,%eax
    1572:	cd 40                	int    $0x40
    1574:	c3                   	ret    

00001575 <dup>:
SYSCALL(dup)
    1575:	b8 0a 00 00 00       	mov    $0xa,%eax
    157a:	cd 40                	int    $0x40
    157c:	c3                   	ret    

0000157d <getpid>:
SYSCALL(getpid)
    157d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1582:	cd 40                	int    $0x40
    1584:	c3                   	ret    

00001585 <sbrk>:
SYSCALL(sbrk)
    1585:	b8 0c 00 00 00       	mov    $0xc,%eax
    158a:	cd 40                	int    $0x40
    158c:	c3                   	ret    

0000158d <sleep>:
SYSCALL(sleep)
    158d:	b8 0d 00 00 00       	mov    $0xd,%eax
    1592:	cd 40                	int    $0x40
    1594:	c3                   	ret    

00001595 <uptime>:
SYSCALL(uptime)
    1595:	b8 0e 00 00 00       	mov    $0xe,%eax
    159a:	cd 40                	int    $0x40
    159c:	c3                   	ret    

0000159d <count>:
SYSCALL(count)
    159d:	b8 16 00 00 00       	mov    $0x16,%eax
    15a2:	cd 40                	int    $0x40
    15a4:	c3                   	ret    

000015a5 <settickets>:

SYSCALL(settickets)
    15a5:	b8 17 00 00 00       	mov    $0x17,%eax
    15aa:	cd 40                	int    $0x40
    15ac:	c3                   	ret    

000015ad <getpinfo>:
SYSCALL(getpinfo)
    15ad:	b8 18 00 00 00       	mov    $0x18,%eax
    15b2:	cd 40                	int    $0x40
    15b4:	c3                   	ret    

000015b5 <mprotect>:

SYSCALL(mprotect)
    15b5:	b8 19 00 00 00       	mov    $0x19,%eax
    15ba:	cd 40                	int    $0x40
    15bc:	c3                   	ret    

000015bd <munprotect>:
SYSCALL(munprotect)
    15bd:	b8 1a 00 00 00       	mov    $0x1a,%eax
    15c2:	cd 40                	int    $0x40
    15c4:	c3                   	ret    

000015c5 <clone>:

SYSCALL(clone)
    15c5:	b8 1b 00 00 00       	mov    $0x1b,%eax
    15ca:	cd 40                	int    $0x40
    15cc:	c3                   	ret    

000015cd <join>:
SYSCALL(join)
    15cd:	b8 1c 00 00 00       	mov    $0x1c,%eax
    15d2:	cd 40                	int    $0x40
    15d4:	c3                   	ret    
    15d5:	66 90                	xchg   %ax,%ax
    15d7:	66 90                	xchg   %ax,%ax
    15d9:	66 90                	xchg   %ax,%ax
    15db:	66 90                	xchg   %ax,%ax
    15dd:	66 90                	xchg   %ax,%ax
    15df:	90                   	nop

000015e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    15e0:	55                   	push   %ebp
    15e1:	89 e5                	mov    %esp,%ebp
    15e3:	57                   	push   %edi
    15e4:	56                   	push   %esi
    15e5:	53                   	push   %ebx
    15e6:	83 ec 3c             	sub    $0x3c,%esp
    15e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    15ec:	89 d1                	mov    %edx,%ecx
{
    15ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    15f1:	85 d2                	test   %edx,%edx
    15f3:	0f 89 7f 00 00 00    	jns    1678 <printint+0x98>
    15f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    15fd:	74 79                	je     1678 <printint+0x98>
    neg = 1;
    15ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1606:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1608:	31 db                	xor    %ebx,%ebx
    160a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    160d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1610:	89 c8                	mov    %ecx,%eax
    1612:	31 d2                	xor    %edx,%edx
    1614:	89 cf                	mov    %ecx,%edi
    1616:	f7 75 c4             	divl   -0x3c(%ebp)
    1619:	0f b6 92 80 18 00 00 	movzbl 0x1880(%edx),%edx
    1620:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1623:	89 d8                	mov    %ebx,%eax
    1625:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1628:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    162b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    162e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1631:	76 dd                	jbe    1610 <printint+0x30>
  if(neg)
    1633:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1636:	85 c9                	test   %ecx,%ecx
    1638:	74 0c                	je     1646 <printint+0x66>
    buf[i++] = '-';
    163a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    163f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1641:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1646:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1649:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    164d:	eb 07                	jmp    1656 <printint+0x76>
    164f:	90                   	nop
    1650:	0f b6 13             	movzbl (%ebx),%edx
    1653:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1656:	83 ec 04             	sub    $0x4,%esp
    1659:	88 55 d7             	mov    %dl,-0x29(%ebp)
    165c:	6a 01                	push   $0x1
    165e:	56                   	push   %esi
    165f:	57                   	push   %edi
    1660:	e8 b8 fe ff ff       	call   151d <write>
  while(--i >= 0)
    1665:	83 c4 10             	add    $0x10,%esp
    1668:	39 de                	cmp    %ebx,%esi
    166a:	75 e4                	jne    1650 <printint+0x70>
    putc(fd, buf[i]);
}
    166c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    166f:	5b                   	pop    %ebx
    1670:	5e                   	pop    %esi
    1671:	5f                   	pop    %edi
    1672:	5d                   	pop    %ebp
    1673:	c3                   	ret    
    1674:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1678:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    167f:	eb 87                	jmp    1608 <printint+0x28>
    1681:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1688:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    168f:	90                   	nop

00001690 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1690:	f3 0f 1e fb          	endbr32 
    1694:	55                   	push   %ebp
    1695:	89 e5                	mov    %esp,%ebp
    1697:	57                   	push   %edi
    1698:	56                   	push   %esi
    1699:	53                   	push   %ebx
    169a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    169d:	8b 75 0c             	mov    0xc(%ebp),%esi
    16a0:	0f b6 1e             	movzbl (%esi),%ebx
    16a3:	84 db                	test   %bl,%bl
    16a5:	0f 84 b4 00 00 00    	je     175f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    16ab:	8d 45 10             	lea    0x10(%ebp),%eax
    16ae:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    16b1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    16b4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    16b6:	89 45 d0             	mov    %eax,-0x30(%ebp)
    16b9:	eb 33                	jmp    16ee <printf+0x5e>
    16bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    16bf:	90                   	nop
    16c0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    16c3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    16c8:	83 f8 25             	cmp    $0x25,%eax
    16cb:	74 17                	je     16e4 <printf+0x54>
  write(fd, &c, 1);
    16cd:	83 ec 04             	sub    $0x4,%esp
    16d0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    16d3:	6a 01                	push   $0x1
    16d5:	57                   	push   %edi
    16d6:	ff 75 08             	pushl  0x8(%ebp)
    16d9:	e8 3f fe ff ff       	call   151d <write>
    16de:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    16e1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    16e4:	0f b6 1e             	movzbl (%esi),%ebx
    16e7:	83 c6 01             	add    $0x1,%esi
    16ea:	84 db                	test   %bl,%bl
    16ec:	74 71                	je     175f <printf+0xcf>
    c = fmt[i] & 0xff;
    16ee:	0f be cb             	movsbl %bl,%ecx
    16f1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    16f4:	85 d2                	test   %edx,%edx
    16f6:	74 c8                	je     16c0 <printf+0x30>
      }
    } else if(state == '%'){
    16f8:	83 fa 25             	cmp    $0x25,%edx
    16fb:	75 e7                	jne    16e4 <printf+0x54>
      if(c == 'd'){
    16fd:	83 f8 64             	cmp    $0x64,%eax
    1700:	0f 84 9a 00 00 00    	je     17a0 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1706:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    170c:	83 f9 70             	cmp    $0x70,%ecx
    170f:	74 5f                	je     1770 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1711:	83 f8 73             	cmp    $0x73,%eax
    1714:	0f 84 d6 00 00 00    	je     17f0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    171a:	83 f8 63             	cmp    $0x63,%eax
    171d:	0f 84 8d 00 00 00    	je     17b0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1723:	83 f8 25             	cmp    $0x25,%eax
    1726:	0f 84 b4 00 00 00    	je     17e0 <printf+0x150>
  write(fd, &c, 1);
    172c:	83 ec 04             	sub    $0x4,%esp
    172f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1733:	6a 01                	push   $0x1
    1735:	57                   	push   %edi
    1736:	ff 75 08             	pushl  0x8(%ebp)
    1739:	e8 df fd ff ff       	call   151d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    173e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1741:	83 c4 0c             	add    $0xc,%esp
    1744:	6a 01                	push   $0x1
    1746:	83 c6 01             	add    $0x1,%esi
    1749:	57                   	push   %edi
    174a:	ff 75 08             	pushl  0x8(%ebp)
    174d:	e8 cb fd ff ff       	call   151d <write>
  for(i = 0; fmt[i]; i++){
    1752:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1756:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1759:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    175b:	84 db                	test   %bl,%bl
    175d:	75 8f                	jne    16ee <printf+0x5e>
    }
  }
}
    175f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1762:	5b                   	pop    %ebx
    1763:	5e                   	pop    %esi
    1764:	5f                   	pop    %edi
    1765:	5d                   	pop    %ebp
    1766:	c3                   	ret    
    1767:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    176e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1770:	83 ec 0c             	sub    $0xc,%esp
    1773:	b9 10 00 00 00       	mov    $0x10,%ecx
    1778:	6a 00                	push   $0x0
    177a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    177d:	8b 45 08             	mov    0x8(%ebp),%eax
    1780:	8b 13                	mov    (%ebx),%edx
    1782:	e8 59 fe ff ff       	call   15e0 <printint>
        ap++;
    1787:	89 d8                	mov    %ebx,%eax
    1789:	83 c4 10             	add    $0x10,%esp
      state = 0;
    178c:	31 d2                	xor    %edx,%edx
        ap++;
    178e:	83 c0 04             	add    $0x4,%eax
    1791:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1794:	e9 4b ff ff ff       	jmp    16e4 <printf+0x54>
    1799:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    17a0:	83 ec 0c             	sub    $0xc,%esp
    17a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    17a8:	6a 01                	push   $0x1
    17aa:	eb ce                	jmp    177a <printf+0xea>
    17ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    17b0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    17b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    17b6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    17b8:	6a 01                	push   $0x1
        ap++;
    17ba:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    17bd:	57                   	push   %edi
    17be:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    17c1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    17c4:	e8 54 fd ff ff       	call   151d <write>
        ap++;
    17c9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    17cc:	83 c4 10             	add    $0x10,%esp
      state = 0;
    17cf:	31 d2                	xor    %edx,%edx
    17d1:	e9 0e ff ff ff       	jmp    16e4 <printf+0x54>
    17d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17dd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    17e0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    17e3:	83 ec 04             	sub    $0x4,%esp
    17e6:	e9 59 ff ff ff       	jmp    1744 <printf+0xb4>
    17eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17ef:	90                   	nop
        s = (char*)*ap;
    17f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    17f3:	8b 18                	mov    (%eax),%ebx
        ap++;
    17f5:	83 c0 04             	add    $0x4,%eax
    17f8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    17fb:	85 db                	test   %ebx,%ebx
    17fd:	74 17                	je     1816 <printf+0x186>
        while(*s != 0){
    17ff:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1802:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1804:	84 c0                	test   %al,%al
    1806:	0f 84 d8 fe ff ff    	je     16e4 <printf+0x54>
    180c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    180f:	89 de                	mov    %ebx,%esi
    1811:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1814:	eb 1a                	jmp    1830 <printf+0x1a0>
          s = "(null)";
    1816:	bb 78 18 00 00       	mov    $0x1878,%ebx
        while(*s != 0){
    181b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    181e:	b8 28 00 00 00       	mov    $0x28,%eax
    1823:	89 de                	mov    %ebx,%esi
    1825:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1828:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    182f:	90                   	nop
  write(fd, &c, 1);
    1830:	83 ec 04             	sub    $0x4,%esp
          s++;
    1833:	83 c6 01             	add    $0x1,%esi
    1836:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1839:	6a 01                	push   $0x1
    183b:	57                   	push   %edi
    183c:	53                   	push   %ebx
    183d:	e8 db fc ff ff       	call   151d <write>
        while(*s != 0){
    1842:	0f b6 06             	movzbl (%esi),%eax
    1845:	83 c4 10             	add    $0x10,%esp
    1848:	84 c0                	test   %al,%al
    184a:	75 e4                	jne    1830 <printf+0x1a0>
    184c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    184f:	31 d2                	xor    %edx,%edx
    1851:	e9 8e fe ff ff       	jmp    16e4 <printf+0x54>
