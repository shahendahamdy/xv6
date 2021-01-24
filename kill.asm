
_kill:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
#include "stat.h"
#include "user.h"

int
main(int argc, char **argv)
{
    1000:	f3 0f 1e fb          	endbr32 
    1004:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1008:	83 e4 f0             	and    $0xfffffff0,%esp
    100b:	ff 71 fc             	pushl  -0x4(%ecx)
    100e:	55                   	push   %ebp
    100f:	89 e5                	mov    %esp,%ebp
    1011:	56                   	push   %esi
    1012:	53                   	push   %ebx
    1013:	51                   	push   %ecx
    1014:	83 ec 0c             	sub    $0xc,%esp
    1017:	8b 01                	mov    (%ecx),%eax
    1019:	8b 51 04             	mov    0x4(%ecx),%edx
  int i;

  if(argc < 2){
    101c:	83 f8 01             	cmp    $0x1,%eax
    101f:	7e 30                	jle    1051 <main+0x51>
    1021:	8d 5a 04             	lea    0x4(%edx),%ebx
    1024:	8d 34 82             	lea    (%edx,%eax,4),%esi
    1027:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    102e:	66 90                	xchg   %ax,%ax
    printf(2, "usage: kill pid...\n");
    exit();
  }
  for(i=1; i<argc; i++)
    kill(atoi(argv[i]));
    1030:	83 ec 0c             	sub    $0xc,%esp
    1033:	ff 33                	pushl  (%ebx)
    1035:	83 c3 04             	add    $0x4,%ebx
    1038:	e8 23 02 00 00       	call   1260 <atoi>
    103d:	89 04 24             	mov    %eax,(%esp)
    1040:	e8 08 05 00 00       	call   154d <kill>
  for(i=1; i<argc; i++)
    1045:	83 c4 10             	add    $0x10,%esp
    1048:	39 f3                	cmp    %esi,%ebx
    104a:	75 e4                	jne    1030 <main+0x30>
  exit();
    104c:	e8 cc 04 00 00       	call   151d <exit>
    printf(2, "usage: kill pid...\n");
    1051:	50                   	push   %eax
    1052:	50                   	push   %eax
    1053:	68 78 18 00 00       	push   $0x1878
    1058:	6a 02                	push   $0x2
    105a:	e8 51 06 00 00       	call   16b0 <printf>
    exit();
    105f:	e8 b9 04 00 00       	call   151d <exit>
    1064:	66 90                	xchg   %ax,%ax
    1066:	66 90                	xchg   %ax,%ax
    1068:	66 90                	xchg   %ax,%ax
    106a:	66 90                	xchg   %ax,%ax
    106c:	66 90                	xchg   %ax,%ax
    106e:	66 90                	xchg   %ax,%ax

00001070 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1070:	f3 0f 1e fb          	endbr32 
    1074:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1075:	31 c0                	xor    %eax,%eax
{
    1077:	89 e5                	mov    %esp,%ebp
    1079:	53                   	push   %ebx
    107a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    107d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1080:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1084:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1087:	83 c0 01             	add    $0x1,%eax
    108a:	84 d2                	test   %dl,%dl
    108c:	75 f2                	jne    1080 <strcpy+0x10>
    ;
  return os;
}
    108e:	89 c8                	mov    %ecx,%eax
    1090:	5b                   	pop    %ebx
    1091:	5d                   	pop    %ebp
    1092:	c3                   	ret    
    1093:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    109a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000010a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    10a0:	f3 0f 1e fb          	endbr32 
    10a4:	55                   	push   %ebp
    10a5:	89 e5                	mov    %esp,%ebp
    10a7:	53                   	push   %ebx
    10a8:	8b 4d 08             	mov    0x8(%ebp),%ecx
    10ab:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    10ae:	0f b6 01             	movzbl (%ecx),%eax
    10b1:	0f b6 1a             	movzbl (%edx),%ebx
    10b4:	84 c0                	test   %al,%al
    10b6:	75 19                	jne    10d1 <strcmp+0x31>
    10b8:	eb 26                	jmp    10e0 <strcmp+0x40>
    10ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10c0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    10c4:	83 c1 01             	add    $0x1,%ecx
    10c7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    10ca:	0f b6 1a             	movzbl (%edx),%ebx
    10cd:	84 c0                	test   %al,%al
    10cf:	74 0f                	je     10e0 <strcmp+0x40>
    10d1:	38 d8                	cmp    %bl,%al
    10d3:	74 eb                	je     10c0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    10d5:	29 d8                	sub    %ebx,%eax
}
    10d7:	5b                   	pop    %ebx
    10d8:	5d                   	pop    %ebp
    10d9:	c3                   	ret    
    10da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10e0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    10e2:	29 d8                	sub    %ebx,%eax
}
    10e4:	5b                   	pop    %ebx
    10e5:	5d                   	pop    %ebp
    10e6:	c3                   	ret    
    10e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10ee:	66 90                	xchg   %ax,%ax

000010f0 <strlen>:

uint
strlen(const char *s)
{
    10f0:	f3 0f 1e fb          	endbr32 
    10f4:	55                   	push   %ebp
    10f5:	89 e5                	mov    %esp,%ebp
    10f7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    10fa:	80 3a 00             	cmpb   $0x0,(%edx)
    10fd:	74 21                	je     1120 <strlen+0x30>
    10ff:	31 c0                	xor    %eax,%eax
    1101:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1108:	83 c0 01             	add    $0x1,%eax
    110b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    110f:	89 c1                	mov    %eax,%ecx
    1111:	75 f5                	jne    1108 <strlen+0x18>
    ;
  return n;
}
    1113:	89 c8                	mov    %ecx,%eax
    1115:	5d                   	pop    %ebp
    1116:	c3                   	ret    
    1117:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    111e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1120:	31 c9                	xor    %ecx,%ecx
}
    1122:	5d                   	pop    %ebp
    1123:	89 c8                	mov    %ecx,%eax
    1125:	c3                   	ret    
    1126:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    112d:	8d 76 00             	lea    0x0(%esi),%esi

00001130 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1130:	f3 0f 1e fb          	endbr32 
    1134:	55                   	push   %ebp
    1135:	89 e5                	mov    %esp,%ebp
    1137:	57                   	push   %edi
    1138:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    113b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    113e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1141:	89 d7                	mov    %edx,%edi
    1143:	fc                   	cld    
    1144:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1146:	89 d0                	mov    %edx,%eax
    1148:	5f                   	pop    %edi
    1149:	5d                   	pop    %ebp
    114a:	c3                   	ret    
    114b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    114f:	90                   	nop

00001150 <strchr>:

char*
strchr(const char *s, char c)
{
    1150:	f3 0f 1e fb          	endbr32 
    1154:	55                   	push   %ebp
    1155:	89 e5                	mov    %esp,%ebp
    1157:	8b 45 08             	mov    0x8(%ebp),%eax
    115a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    115e:	0f b6 10             	movzbl (%eax),%edx
    1161:	84 d2                	test   %dl,%dl
    1163:	75 16                	jne    117b <strchr+0x2b>
    1165:	eb 21                	jmp    1188 <strchr+0x38>
    1167:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    116e:	66 90                	xchg   %ax,%ax
    1170:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1174:	83 c0 01             	add    $0x1,%eax
    1177:	84 d2                	test   %dl,%dl
    1179:	74 0d                	je     1188 <strchr+0x38>
    if(*s == c)
    117b:	38 d1                	cmp    %dl,%cl
    117d:	75 f1                	jne    1170 <strchr+0x20>
      return (char*)s;
  return 0;
}
    117f:	5d                   	pop    %ebp
    1180:	c3                   	ret    
    1181:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1188:	31 c0                	xor    %eax,%eax
}
    118a:	5d                   	pop    %ebp
    118b:	c3                   	ret    
    118c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001190 <gets>:

char*
gets(char *buf, int max)
{
    1190:	f3 0f 1e fb          	endbr32 
    1194:	55                   	push   %ebp
    1195:	89 e5                	mov    %esp,%ebp
    1197:	57                   	push   %edi
    1198:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1199:	31 f6                	xor    %esi,%esi
{
    119b:	53                   	push   %ebx
    119c:	89 f3                	mov    %esi,%ebx
    119e:	83 ec 1c             	sub    $0x1c,%esp
    11a1:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    11a4:	eb 33                	jmp    11d9 <gets+0x49>
    11a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ad:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    11b0:	83 ec 04             	sub    $0x4,%esp
    11b3:	8d 45 e7             	lea    -0x19(%ebp),%eax
    11b6:	6a 01                	push   $0x1
    11b8:	50                   	push   %eax
    11b9:	6a 00                	push   $0x0
    11bb:	e8 75 03 00 00       	call   1535 <read>
    if(cc < 1)
    11c0:	83 c4 10             	add    $0x10,%esp
    11c3:	85 c0                	test   %eax,%eax
    11c5:	7e 1c                	jle    11e3 <gets+0x53>
      break;
    buf[i++] = c;
    11c7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    11cb:	83 c7 01             	add    $0x1,%edi
    11ce:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    11d1:	3c 0a                	cmp    $0xa,%al
    11d3:	74 23                	je     11f8 <gets+0x68>
    11d5:	3c 0d                	cmp    $0xd,%al
    11d7:	74 1f                	je     11f8 <gets+0x68>
  for(i=0; i+1 < max; ){
    11d9:	83 c3 01             	add    $0x1,%ebx
    11dc:	89 fe                	mov    %edi,%esi
    11de:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    11e1:	7c cd                	jl     11b0 <gets+0x20>
    11e3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    11e5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    11e8:	c6 03 00             	movb   $0x0,(%ebx)
}
    11eb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11ee:	5b                   	pop    %ebx
    11ef:	5e                   	pop    %esi
    11f0:	5f                   	pop    %edi
    11f1:	5d                   	pop    %ebp
    11f2:	c3                   	ret    
    11f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11f7:	90                   	nop
    11f8:	8b 75 08             	mov    0x8(%ebp),%esi
    11fb:	8b 45 08             	mov    0x8(%ebp),%eax
    11fe:	01 de                	add    %ebx,%esi
    1200:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    1202:	c6 03 00             	movb   $0x0,(%ebx)
}
    1205:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1208:	5b                   	pop    %ebx
    1209:	5e                   	pop    %esi
    120a:	5f                   	pop    %edi
    120b:	5d                   	pop    %ebp
    120c:	c3                   	ret    
    120d:	8d 76 00             	lea    0x0(%esi),%esi

00001210 <stat>:

int
stat(const char *n, struct stat *st)
{
    1210:	f3 0f 1e fb          	endbr32 
    1214:	55                   	push   %ebp
    1215:	89 e5                	mov    %esp,%ebp
    1217:	56                   	push   %esi
    1218:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1219:	83 ec 08             	sub    $0x8,%esp
    121c:	6a 00                	push   $0x0
    121e:	ff 75 08             	pushl  0x8(%ebp)
    1221:	e8 37 03 00 00       	call   155d <open>
  if(fd < 0)
    1226:	83 c4 10             	add    $0x10,%esp
    1229:	85 c0                	test   %eax,%eax
    122b:	78 2b                	js     1258 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    122d:	83 ec 08             	sub    $0x8,%esp
    1230:	ff 75 0c             	pushl  0xc(%ebp)
    1233:	89 c3                	mov    %eax,%ebx
    1235:	50                   	push   %eax
    1236:	e8 3a 03 00 00       	call   1575 <fstat>
  close(fd);
    123b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    123e:	89 c6                	mov    %eax,%esi
  close(fd);
    1240:	e8 00 03 00 00       	call   1545 <close>
  return r;
    1245:	83 c4 10             	add    $0x10,%esp
}
    1248:	8d 65 f8             	lea    -0x8(%ebp),%esp
    124b:	89 f0                	mov    %esi,%eax
    124d:	5b                   	pop    %ebx
    124e:	5e                   	pop    %esi
    124f:	5d                   	pop    %ebp
    1250:	c3                   	ret    
    1251:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1258:	be ff ff ff ff       	mov    $0xffffffff,%esi
    125d:	eb e9                	jmp    1248 <stat+0x38>
    125f:	90                   	nop

00001260 <atoi>:

int
atoi(const char *s)
{
    1260:	f3 0f 1e fb          	endbr32 
    1264:	55                   	push   %ebp
    1265:	89 e5                	mov    %esp,%ebp
    1267:	53                   	push   %ebx
    1268:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    126b:	0f be 02             	movsbl (%edx),%eax
    126e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1271:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1274:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1279:	77 1a                	ja     1295 <atoi+0x35>
    127b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    127f:	90                   	nop
    n = n*10 + *s++ - '0';
    1280:	83 c2 01             	add    $0x1,%edx
    1283:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1286:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    128a:	0f be 02             	movsbl (%edx),%eax
    128d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1290:	80 fb 09             	cmp    $0x9,%bl
    1293:	76 eb                	jbe    1280 <atoi+0x20>
  return n;
}
    1295:	89 c8                	mov    %ecx,%eax
    1297:	5b                   	pop    %ebx
    1298:	5d                   	pop    %ebp
    1299:	c3                   	ret    
    129a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000012a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    12a0:	f3 0f 1e fb          	endbr32 
    12a4:	55                   	push   %ebp
    12a5:	89 e5                	mov    %esp,%ebp
    12a7:	57                   	push   %edi
    12a8:	8b 45 10             	mov    0x10(%ebp),%eax
    12ab:	8b 55 08             	mov    0x8(%ebp),%edx
    12ae:	56                   	push   %esi
    12af:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    12b2:	85 c0                	test   %eax,%eax
    12b4:	7e 0f                	jle    12c5 <memmove+0x25>
    12b6:	01 d0                	add    %edx,%eax
  dst = vdst;
    12b8:	89 d7                	mov    %edx,%edi
    12ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    12c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    12c1:	39 f8                	cmp    %edi,%eax
    12c3:	75 fb                	jne    12c0 <memmove+0x20>
  return vdst;
}
    12c5:	5e                   	pop    %esi
    12c6:	89 d0                	mov    %edx,%eax
    12c8:	5f                   	pop    %edi
    12c9:	5d                   	pop    %ebp
    12ca:	c3                   	ret    
    12cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12cf:	90                   	nop

000012d0 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    12d0:	f3 0f 1e fb          	endbr32 
    12d4:	55                   	push   %ebp
    12d5:	89 e5                	mov    %esp,%ebp
    12d7:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    12da:	8d 45 f4             	lea    -0xc(%ebp),%eax
    12dd:	50                   	push   %eax
    12de:	e8 0a 03 00 00       	call   15ed <join>
  
  return x;
}
    12e3:	c9                   	leave  
    12e4:	c3                   	ret    
    12e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000012f0 <lock_init>:

void lock_init(struct lock_t *lk){
    12f0:	f3 0f 1e fb          	endbr32 
    12f4:	55                   	push   %ebp
    12f5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    12f7:	8b 45 08             	mov    0x8(%ebp),%eax
    12fa:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1300:	5d                   	pop    %ebp
    1301:	c3                   	ret    
    1302:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1309:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001310 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    1310:	f3 0f 1e fb          	endbr32 
    1314:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1315:	b9 01 00 00 00       	mov    $0x1,%ecx
    131a:	89 e5                	mov    %esp,%ebp
    131c:	8b 55 08             	mov    0x8(%ebp),%edx
    131f:	90                   	nop
    1320:	89 c8                	mov    %ecx,%eax
    1322:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1325:	85 c0                	test   %eax,%eax
    1327:	75 f7                	jne    1320 <lock_acquire+0x10>
}
    1329:	5d                   	pop    %ebp
    132a:	c3                   	ret    
    132b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    132f:	90                   	nop

00001330 <lock_release>:
void lock_release(struct lock_t *lk){
    1330:	f3 0f 1e fb          	endbr32 
    1334:	55                   	push   %ebp
    1335:	31 c0                	xor    %eax,%eax
    1337:	89 e5                	mov    %esp,%ebp
    1339:	8b 55 08             	mov    0x8(%ebp),%edx
    133c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    133f:	5d                   	pop    %ebp
    1340:	c3                   	ret    
    1341:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1348:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    134f:	90                   	nop

00001350 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1350:	f3 0f 1e fb          	endbr32 
    1354:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1355:	a1 e4 1b 00 00       	mov    0x1be4,%eax
{
    135a:	89 e5                	mov    %esp,%ebp
    135c:	57                   	push   %edi
    135d:	56                   	push   %esi
    135e:	53                   	push   %ebx
    135f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1362:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1364:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1367:	39 c8                	cmp    %ecx,%eax
    1369:	73 15                	jae    1380 <free+0x30>
    136b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    136f:	90                   	nop
    1370:	39 d1                	cmp    %edx,%ecx
    1372:	72 14                	jb     1388 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1374:	39 d0                	cmp    %edx,%eax
    1376:	73 10                	jae    1388 <free+0x38>
{
    1378:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    137a:	8b 10                	mov    (%eax),%edx
    137c:	39 c8                	cmp    %ecx,%eax
    137e:	72 f0                	jb     1370 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1380:	39 d0                	cmp    %edx,%eax
    1382:	72 f4                	jb     1378 <free+0x28>
    1384:	39 d1                	cmp    %edx,%ecx
    1386:	73 f0                	jae    1378 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1388:	8b 73 fc             	mov    -0x4(%ebx),%esi
    138b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    138e:	39 fa                	cmp    %edi,%edx
    1390:	74 1e                	je     13b0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1392:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1395:	8b 50 04             	mov    0x4(%eax),%edx
    1398:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    139b:	39 f1                	cmp    %esi,%ecx
    139d:	74 28                	je     13c7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    139f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    13a1:	5b                   	pop    %ebx
  freep = p;
    13a2:	a3 e4 1b 00 00       	mov    %eax,0x1be4
}
    13a7:	5e                   	pop    %esi
    13a8:	5f                   	pop    %edi
    13a9:	5d                   	pop    %ebp
    13aa:	c3                   	ret    
    13ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13af:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    13b0:	03 72 04             	add    0x4(%edx),%esi
    13b3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    13b6:	8b 10                	mov    (%eax),%edx
    13b8:	8b 12                	mov    (%edx),%edx
    13ba:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    13bd:	8b 50 04             	mov    0x4(%eax),%edx
    13c0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    13c3:	39 f1                	cmp    %esi,%ecx
    13c5:	75 d8                	jne    139f <free+0x4f>
    p->s.size += bp->s.size;
    13c7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    13ca:	a3 e4 1b 00 00       	mov    %eax,0x1be4
    p->s.size += bp->s.size;
    13cf:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    13d2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    13d5:	89 10                	mov    %edx,(%eax)
}
    13d7:	5b                   	pop    %ebx
    13d8:	5e                   	pop    %esi
    13d9:	5f                   	pop    %edi
    13da:	5d                   	pop    %ebp
    13db:	c3                   	ret    
    13dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000013e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    13e0:	f3 0f 1e fb          	endbr32 
    13e4:	55                   	push   %ebp
    13e5:	89 e5                	mov    %esp,%ebp
    13e7:	57                   	push   %edi
    13e8:	56                   	push   %esi
    13e9:	53                   	push   %ebx
    13ea:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    13ed:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    13f0:	8b 3d e4 1b 00 00    	mov    0x1be4,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    13f6:	8d 70 07             	lea    0x7(%eax),%esi
    13f9:	c1 ee 03             	shr    $0x3,%esi
    13fc:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    13ff:	85 ff                	test   %edi,%edi
    1401:	0f 84 a9 00 00 00    	je     14b0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1407:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    1409:	8b 48 04             	mov    0x4(%eax),%ecx
    140c:	39 f1                	cmp    %esi,%ecx
    140e:	73 6d                	jae    147d <malloc+0x9d>
    1410:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1416:	bb 00 10 00 00       	mov    $0x1000,%ebx
    141b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    141e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1425:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1428:	eb 17                	jmp    1441 <malloc+0x61>
    142a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1430:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1432:	8b 4a 04             	mov    0x4(%edx),%ecx
    1435:	39 f1                	cmp    %esi,%ecx
    1437:	73 4f                	jae    1488 <malloc+0xa8>
    1439:	8b 3d e4 1b 00 00    	mov    0x1be4,%edi
    143f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1441:	39 c7                	cmp    %eax,%edi
    1443:	75 eb                	jne    1430 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1445:	83 ec 0c             	sub    $0xc,%esp
    1448:	ff 75 e4             	pushl  -0x1c(%ebp)
    144b:	e8 55 01 00 00       	call   15a5 <sbrk>
  if(p == (char*)-1)
    1450:	83 c4 10             	add    $0x10,%esp
    1453:	83 f8 ff             	cmp    $0xffffffff,%eax
    1456:	74 1b                	je     1473 <malloc+0x93>
  hp->s.size = nu;
    1458:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    145b:	83 ec 0c             	sub    $0xc,%esp
    145e:	83 c0 08             	add    $0x8,%eax
    1461:	50                   	push   %eax
    1462:	e8 e9 fe ff ff       	call   1350 <free>
  return freep;
    1467:	a1 e4 1b 00 00       	mov    0x1be4,%eax
      if((p = morecore(nunits)) == 0)
    146c:	83 c4 10             	add    $0x10,%esp
    146f:	85 c0                	test   %eax,%eax
    1471:	75 bd                	jne    1430 <malloc+0x50>
        return 0;
  }
}
    1473:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1476:	31 c0                	xor    %eax,%eax
}
    1478:	5b                   	pop    %ebx
    1479:	5e                   	pop    %esi
    147a:	5f                   	pop    %edi
    147b:	5d                   	pop    %ebp
    147c:	c3                   	ret    
    if(p->s.size >= nunits){
    147d:	89 c2                	mov    %eax,%edx
    147f:	89 f8                	mov    %edi,%eax
    1481:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1488:	39 ce                	cmp    %ecx,%esi
    148a:	74 54                	je     14e0 <malloc+0x100>
        p->s.size -= nunits;
    148c:	29 f1                	sub    %esi,%ecx
    148e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1491:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1494:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1497:	a3 e4 1b 00 00       	mov    %eax,0x1be4
}
    149c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    149f:	8d 42 08             	lea    0x8(%edx),%eax
}
    14a2:	5b                   	pop    %ebx
    14a3:	5e                   	pop    %esi
    14a4:	5f                   	pop    %edi
    14a5:	5d                   	pop    %ebp
    14a6:	c3                   	ret    
    14a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14ae:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    14b0:	c7 05 e4 1b 00 00 e8 	movl   $0x1be8,0x1be4
    14b7:	1b 00 00 
    base.s.size = 0;
    14ba:	bf e8 1b 00 00       	mov    $0x1be8,%edi
    base.s.ptr = freep = prevp = &base;
    14bf:	c7 05 e8 1b 00 00 e8 	movl   $0x1be8,0x1be8
    14c6:	1b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    14c9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    14cb:	c7 05 ec 1b 00 00 00 	movl   $0x0,0x1bec
    14d2:	00 00 00 
    if(p->s.size >= nunits){
    14d5:	e9 36 ff ff ff       	jmp    1410 <malloc+0x30>
    14da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    14e0:	8b 0a                	mov    (%edx),%ecx
    14e2:	89 08                	mov    %ecx,(%eax)
    14e4:	eb b1                	jmp    1497 <malloc+0xb7>
    14e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14ed:	8d 76 00             	lea    0x0(%esi),%esi

000014f0 <thread_create>:
{
    14f0:	f3 0f 1e fb          	endbr32 
    14f4:	55                   	push   %ebp
    14f5:	89 e5                	mov    %esp,%ebp
    14f7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    14fa:	68 00 10 00 00       	push   $0x1000
    14ff:	e8 dc fe ff ff       	call   13e0 <malloc>
return clone(start_routine,arg1,arg2,stack);
    1504:	50                   	push   %eax
    1505:	ff 75 10             	pushl  0x10(%ebp)
    1508:	ff 75 0c             	pushl  0xc(%ebp)
    150b:	ff 75 08             	pushl  0x8(%ebp)
    150e:	e8 d2 00 00 00       	call   15e5 <clone>
}
    1513:	c9                   	leave  
    1514:	c3                   	ret    

00001515 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1515:	b8 01 00 00 00       	mov    $0x1,%eax
    151a:	cd 40                	int    $0x40
    151c:	c3                   	ret    

0000151d <exit>:
SYSCALL(exit)
    151d:	b8 02 00 00 00       	mov    $0x2,%eax
    1522:	cd 40                	int    $0x40
    1524:	c3                   	ret    

00001525 <wait>:
SYSCALL(wait)
    1525:	b8 03 00 00 00       	mov    $0x3,%eax
    152a:	cd 40                	int    $0x40
    152c:	c3                   	ret    

0000152d <pipe>:
SYSCALL(pipe)
    152d:	b8 04 00 00 00       	mov    $0x4,%eax
    1532:	cd 40                	int    $0x40
    1534:	c3                   	ret    

00001535 <read>:
SYSCALL(read)
    1535:	b8 05 00 00 00       	mov    $0x5,%eax
    153a:	cd 40                	int    $0x40
    153c:	c3                   	ret    

0000153d <write>:
SYSCALL(write)
    153d:	b8 10 00 00 00       	mov    $0x10,%eax
    1542:	cd 40                	int    $0x40
    1544:	c3                   	ret    

00001545 <close>:
SYSCALL(close)
    1545:	b8 15 00 00 00       	mov    $0x15,%eax
    154a:	cd 40                	int    $0x40
    154c:	c3                   	ret    

0000154d <kill>:
SYSCALL(kill)
    154d:	b8 06 00 00 00       	mov    $0x6,%eax
    1552:	cd 40                	int    $0x40
    1554:	c3                   	ret    

00001555 <exec>:
SYSCALL(exec)
    1555:	b8 07 00 00 00       	mov    $0x7,%eax
    155a:	cd 40                	int    $0x40
    155c:	c3                   	ret    

0000155d <open>:
SYSCALL(open)
    155d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1562:	cd 40                	int    $0x40
    1564:	c3                   	ret    

00001565 <mknod>:
SYSCALL(mknod)
    1565:	b8 11 00 00 00       	mov    $0x11,%eax
    156a:	cd 40                	int    $0x40
    156c:	c3                   	ret    

0000156d <unlink>:
SYSCALL(unlink)
    156d:	b8 12 00 00 00       	mov    $0x12,%eax
    1572:	cd 40                	int    $0x40
    1574:	c3                   	ret    

00001575 <fstat>:
SYSCALL(fstat)
    1575:	b8 08 00 00 00       	mov    $0x8,%eax
    157a:	cd 40                	int    $0x40
    157c:	c3                   	ret    

0000157d <link>:
SYSCALL(link)
    157d:	b8 13 00 00 00       	mov    $0x13,%eax
    1582:	cd 40                	int    $0x40
    1584:	c3                   	ret    

00001585 <mkdir>:
SYSCALL(mkdir)
    1585:	b8 14 00 00 00       	mov    $0x14,%eax
    158a:	cd 40                	int    $0x40
    158c:	c3                   	ret    

0000158d <chdir>:
SYSCALL(chdir)
    158d:	b8 09 00 00 00       	mov    $0x9,%eax
    1592:	cd 40                	int    $0x40
    1594:	c3                   	ret    

00001595 <dup>:
SYSCALL(dup)
    1595:	b8 0a 00 00 00       	mov    $0xa,%eax
    159a:	cd 40                	int    $0x40
    159c:	c3                   	ret    

0000159d <getpid>:
SYSCALL(getpid)
    159d:	b8 0b 00 00 00       	mov    $0xb,%eax
    15a2:	cd 40                	int    $0x40
    15a4:	c3                   	ret    

000015a5 <sbrk>:
SYSCALL(sbrk)
    15a5:	b8 0c 00 00 00       	mov    $0xc,%eax
    15aa:	cd 40                	int    $0x40
    15ac:	c3                   	ret    

000015ad <sleep>:
SYSCALL(sleep)
    15ad:	b8 0d 00 00 00       	mov    $0xd,%eax
    15b2:	cd 40                	int    $0x40
    15b4:	c3                   	ret    

000015b5 <uptime>:
SYSCALL(uptime)
    15b5:	b8 0e 00 00 00       	mov    $0xe,%eax
    15ba:	cd 40                	int    $0x40
    15bc:	c3                   	ret    

000015bd <count>:
SYSCALL(count)
    15bd:	b8 16 00 00 00       	mov    $0x16,%eax
    15c2:	cd 40                	int    $0x40
    15c4:	c3                   	ret    

000015c5 <settickets>:

SYSCALL(settickets)
    15c5:	b8 17 00 00 00       	mov    $0x17,%eax
    15ca:	cd 40                	int    $0x40
    15cc:	c3                   	ret    

000015cd <getpinfo>:
SYSCALL(getpinfo)
    15cd:	b8 18 00 00 00       	mov    $0x18,%eax
    15d2:	cd 40                	int    $0x40
    15d4:	c3                   	ret    

000015d5 <mprotect>:

SYSCALL(mprotect)
    15d5:	b8 19 00 00 00       	mov    $0x19,%eax
    15da:	cd 40                	int    $0x40
    15dc:	c3                   	ret    

000015dd <munprotect>:
SYSCALL(munprotect)
    15dd:	b8 1a 00 00 00       	mov    $0x1a,%eax
    15e2:	cd 40                	int    $0x40
    15e4:	c3                   	ret    

000015e5 <clone>:

SYSCALL(clone)
    15e5:	b8 1b 00 00 00       	mov    $0x1b,%eax
    15ea:	cd 40                	int    $0x40
    15ec:	c3                   	ret    

000015ed <join>:
SYSCALL(join)
    15ed:	b8 1c 00 00 00       	mov    $0x1c,%eax
    15f2:	cd 40                	int    $0x40
    15f4:	c3                   	ret    
    15f5:	66 90                	xchg   %ax,%ax
    15f7:	66 90                	xchg   %ax,%ax
    15f9:	66 90                	xchg   %ax,%ax
    15fb:	66 90                	xchg   %ax,%ax
    15fd:	66 90                	xchg   %ax,%ax
    15ff:	90                   	nop

00001600 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1600:	55                   	push   %ebp
    1601:	89 e5                	mov    %esp,%ebp
    1603:	57                   	push   %edi
    1604:	56                   	push   %esi
    1605:	53                   	push   %ebx
    1606:	83 ec 3c             	sub    $0x3c,%esp
    1609:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    160c:	89 d1                	mov    %edx,%ecx
{
    160e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    1611:	85 d2                	test   %edx,%edx
    1613:	0f 89 7f 00 00 00    	jns    1698 <printint+0x98>
    1619:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    161d:	74 79                	je     1698 <printint+0x98>
    neg = 1;
    161f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1626:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1628:	31 db                	xor    %ebx,%ebx
    162a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    162d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1630:	89 c8                	mov    %ecx,%eax
    1632:	31 d2                	xor    %edx,%edx
    1634:	89 cf                	mov    %ecx,%edi
    1636:	f7 75 c4             	divl   -0x3c(%ebp)
    1639:	0f b6 92 94 18 00 00 	movzbl 0x1894(%edx),%edx
    1640:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1643:	89 d8                	mov    %ebx,%eax
    1645:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1648:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    164b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    164e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1651:	76 dd                	jbe    1630 <printint+0x30>
  if(neg)
    1653:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1656:	85 c9                	test   %ecx,%ecx
    1658:	74 0c                	je     1666 <printint+0x66>
    buf[i++] = '-';
    165a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    165f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1661:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1666:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1669:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    166d:	eb 07                	jmp    1676 <printint+0x76>
    166f:	90                   	nop
    1670:	0f b6 13             	movzbl (%ebx),%edx
    1673:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1676:	83 ec 04             	sub    $0x4,%esp
    1679:	88 55 d7             	mov    %dl,-0x29(%ebp)
    167c:	6a 01                	push   $0x1
    167e:	56                   	push   %esi
    167f:	57                   	push   %edi
    1680:	e8 b8 fe ff ff       	call   153d <write>
  while(--i >= 0)
    1685:	83 c4 10             	add    $0x10,%esp
    1688:	39 de                	cmp    %ebx,%esi
    168a:	75 e4                	jne    1670 <printint+0x70>
    putc(fd, buf[i]);
}
    168c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    168f:	5b                   	pop    %ebx
    1690:	5e                   	pop    %esi
    1691:	5f                   	pop    %edi
    1692:	5d                   	pop    %ebp
    1693:	c3                   	ret    
    1694:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1698:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    169f:	eb 87                	jmp    1628 <printint+0x28>
    16a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    16a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    16af:	90                   	nop

000016b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    16b0:	f3 0f 1e fb          	endbr32 
    16b4:	55                   	push   %ebp
    16b5:	89 e5                	mov    %esp,%ebp
    16b7:	57                   	push   %edi
    16b8:	56                   	push   %esi
    16b9:	53                   	push   %ebx
    16ba:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    16bd:	8b 75 0c             	mov    0xc(%ebp),%esi
    16c0:	0f b6 1e             	movzbl (%esi),%ebx
    16c3:	84 db                	test   %bl,%bl
    16c5:	0f 84 b4 00 00 00    	je     177f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    16cb:	8d 45 10             	lea    0x10(%ebp),%eax
    16ce:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    16d1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    16d4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    16d6:	89 45 d0             	mov    %eax,-0x30(%ebp)
    16d9:	eb 33                	jmp    170e <printf+0x5e>
    16db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    16df:	90                   	nop
    16e0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    16e3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    16e8:	83 f8 25             	cmp    $0x25,%eax
    16eb:	74 17                	je     1704 <printf+0x54>
  write(fd, &c, 1);
    16ed:	83 ec 04             	sub    $0x4,%esp
    16f0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    16f3:	6a 01                	push   $0x1
    16f5:	57                   	push   %edi
    16f6:	ff 75 08             	pushl  0x8(%ebp)
    16f9:	e8 3f fe ff ff       	call   153d <write>
    16fe:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    1701:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1704:	0f b6 1e             	movzbl (%esi),%ebx
    1707:	83 c6 01             	add    $0x1,%esi
    170a:	84 db                	test   %bl,%bl
    170c:	74 71                	je     177f <printf+0xcf>
    c = fmt[i] & 0xff;
    170e:	0f be cb             	movsbl %bl,%ecx
    1711:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1714:	85 d2                	test   %edx,%edx
    1716:	74 c8                	je     16e0 <printf+0x30>
      }
    } else if(state == '%'){
    1718:	83 fa 25             	cmp    $0x25,%edx
    171b:	75 e7                	jne    1704 <printf+0x54>
      if(c == 'd'){
    171d:	83 f8 64             	cmp    $0x64,%eax
    1720:	0f 84 9a 00 00 00    	je     17c0 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1726:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    172c:	83 f9 70             	cmp    $0x70,%ecx
    172f:	74 5f                	je     1790 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1731:	83 f8 73             	cmp    $0x73,%eax
    1734:	0f 84 d6 00 00 00    	je     1810 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    173a:	83 f8 63             	cmp    $0x63,%eax
    173d:	0f 84 8d 00 00 00    	je     17d0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1743:	83 f8 25             	cmp    $0x25,%eax
    1746:	0f 84 b4 00 00 00    	je     1800 <printf+0x150>
  write(fd, &c, 1);
    174c:	83 ec 04             	sub    $0x4,%esp
    174f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1753:	6a 01                	push   $0x1
    1755:	57                   	push   %edi
    1756:	ff 75 08             	pushl  0x8(%ebp)
    1759:	e8 df fd ff ff       	call   153d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    175e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1761:	83 c4 0c             	add    $0xc,%esp
    1764:	6a 01                	push   $0x1
    1766:	83 c6 01             	add    $0x1,%esi
    1769:	57                   	push   %edi
    176a:	ff 75 08             	pushl  0x8(%ebp)
    176d:	e8 cb fd ff ff       	call   153d <write>
  for(i = 0; fmt[i]; i++){
    1772:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1776:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1779:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    177b:	84 db                	test   %bl,%bl
    177d:	75 8f                	jne    170e <printf+0x5e>
    }
  }
}
    177f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1782:	5b                   	pop    %ebx
    1783:	5e                   	pop    %esi
    1784:	5f                   	pop    %edi
    1785:	5d                   	pop    %ebp
    1786:	c3                   	ret    
    1787:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    178e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1790:	83 ec 0c             	sub    $0xc,%esp
    1793:	b9 10 00 00 00       	mov    $0x10,%ecx
    1798:	6a 00                	push   $0x0
    179a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    179d:	8b 45 08             	mov    0x8(%ebp),%eax
    17a0:	8b 13                	mov    (%ebx),%edx
    17a2:	e8 59 fe ff ff       	call   1600 <printint>
        ap++;
    17a7:	89 d8                	mov    %ebx,%eax
    17a9:	83 c4 10             	add    $0x10,%esp
      state = 0;
    17ac:	31 d2                	xor    %edx,%edx
        ap++;
    17ae:	83 c0 04             	add    $0x4,%eax
    17b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    17b4:	e9 4b ff ff ff       	jmp    1704 <printf+0x54>
    17b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    17c0:	83 ec 0c             	sub    $0xc,%esp
    17c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    17c8:	6a 01                	push   $0x1
    17ca:	eb ce                	jmp    179a <printf+0xea>
    17cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    17d0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    17d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    17d6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    17d8:	6a 01                	push   $0x1
        ap++;
    17da:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    17dd:	57                   	push   %edi
    17de:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    17e1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    17e4:	e8 54 fd ff ff       	call   153d <write>
        ap++;
    17e9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    17ec:	83 c4 10             	add    $0x10,%esp
      state = 0;
    17ef:	31 d2                	xor    %edx,%edx
    17f1:	e9 0e ff ff ff       	jmp    1704 <printf+0x54>
    17f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17fd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1800:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1803:	83 ec 04             	sub    $0x4,%esp
    1806:	e9 59 ff ff ff       	jmp    1764 <printf+0xb4>
    180b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    180f:	90                   	nop
        s = (char*)*ap;
    1810:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1813:	8b 18                	mov    (%eax),%ebx
        ap++;
    1815:	83 c0 04             	add    $0x4,%eax
    1818:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    181b:	85 db                	test   %ebx,%ebx
    181d:	74 17                	je     1836 <printf+0x186>
        while(*s != 0){
    181f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1822:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1824:	84 c0                	test   %al,%al
    1826:	0f 84 d8 fe ff ff    	je     1704 <printf+0x54>
    182c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    182f:	89 de                	mov    %ebx,%esi
    1831:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1834:	eb 1a                	jmp    1850 <printf+0x1a0>
          s = "(null)";
    1836:	bb 8c 18 00 00       	mov    $0x188c,%ebx
        while(*s != 0){
    183b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    183e:	b8 28 00 00 00       	mov    $0x28,%eax
    1843:	89 de                	mov    %ebx,%esi
    1845:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1848:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    184f:	90                   	nop
  write(fd, &c, 1);
    1850:	83 ec 04             	sub    $0x4,%esp
          s++;
    1853:	83 c6 01             	add    $0x1,%esi
    1856:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1859:	6a 01                	push   $0x1
    185b:	57                   	push   %edi
    185c:	53                   	push   %ebx
    185d:	e8 db fc ff ff       	call   153d <write>
        while(*s != 0){
    1862:	0f b6 06             	movzbl (%esi),%eax
    1865:	83 c4 10             	add    $0x10,%esp
    1868:	84 c0                	test   %al,%al
    186a:	75 e4                	jne    1850 <printf+0x1a0>
    186c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    186f:	31 d2                	xor    %edx,%edx
    1871:	e9 8e fe ff ff       	jmp    1704 <printf+0x54>
