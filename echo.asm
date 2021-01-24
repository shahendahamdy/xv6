
_echo:     file format elf32-i386


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
    1011:	56                   	push   %esi
    1012:	53                   	push   %ebx
    1013:	51                   	push   %ecx
    1014:	83 ec 0c             	sub    $0xc,%esp
    1017:	8b 01                	mov    (%ecx),%eax
    1019:	8b 51 04             	mov    0x4(%ecx),%edx
  int i;

  for(i = 1; i < argc; i++)
    101c:	83 f8 01             	cmp    $0x1,%eax
    101f:	7e 4b                	jle    106c <main+0x6c>
    1021:	8d 5a 04             	lea    0x4(%edx),%ebx
    1024:	8d 34 82             	lea    (%edx,%eax,4),%esi
    printf(1, "%s%s", argv[i], i+1 < argc ? " " : "\n");
    1027:	83 c3 04             	add    $0x4,%ebx
    102a:	8b 43 fc             	mov    -0x4(%ebx),%eax
    102d:	39 f3                	cmp    %esi,%ebx
    102f:	74 26                	je     1057 <main+0x57>
    1031:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1038:	68 88 18 00 00       	push   $0x1888
    103d:	83 c3 04             	add    $0x4,%ebx
    1040:	50                   	push   %eax
    1041:	68 8a 18 00 00       	push   $0x188a
    1046:	6a 01                	push   $0x1
    1048:	e8 73 06 00 00       	call   16c0 <printf>
  for(i = 1; i < argc; i++)
    104d:	8b 43 fc             	mov    -0x4(%ebx),%eax
    printf(1, "%s%s", argv[i], i+1 < argc ? " " : "\n");
    1050:	83 c4 10             	add    $0x10,%esp
    1053:	39 f3                	cmp    %esi,%ebx
    1055:	75 e1                	jne    1038 <main+0x38>
    1057:	68 8f 18 00 00       	push   $0x188f
    105c:	50                   	push   %eax
    105d:	68 8a 18 00 00       	push   $0x188a
    1062:	6a 01                	push   $0x1
    1064:	e8 57 06 00 00       	call   16c0 <printf>
    1069:	83 c4 10             	add    $0x10,%esp
  exit();
    106c:	e8 bc 04 00 00       	call   152d <exit>
    1071:	66 90                	xchg   %ax,%ax
    1073:	66 90                	xchg   %ax,%ax
    1075:	66 90                	xchg   %ax,%ax
    1077:	66 90                	xchg   %ax,%ax
    1079:	66 90                	xchg   %ax,%ax
    107b:	66 90                	xchg   %ax,%ax
    107d:	66 90                	xchg   %ax,%ax
    107f:	90                   	nop

00001080 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1080:	f3 0f 1e fb          	endbr32 
    1084:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1085:	31 c0                	xor    %eax,%eax
{
    1087:	89 e5                	mov    %esp,%ebp
    1089:	53                   	push   %ebx
    108a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    108d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1090:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1094:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1097:	83 c0 01             	add    $0x1,%eax
    109a:	84 d2                	test   %dl,%dl
    109c:	75 f2                	jne    1090 <strcpy+0x10>
    ;
  return os;
}
    109e:	89 c8                	mov    %ecx,%eax
    10a0:	5b                   	pop    %ebx
    10a1:	5d                   	pop    %ebp
    10a2:	c3                   	ret    
    10a3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000010b0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    10b0:	f3 0f 1e fb          	endbr32 
    10b4:	55                   	push   %ebp
    10b5:	89 e5                	mov    %esp,%ebp
    10b7:	53                   	push   %ebx
    10b8:	8b 4d 08             	mov    0x8(%ebp),%ecx
    10bb:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    10be:	0f b6 01             	movzbl (%ecx),%eax
    10c1:	0f b6 1a             	movzbl (%edx),%ebx
    10c4:	84 c0                	test   %al,%al
    10c6:	75 19                	jne    10e1 <strcmp+0x31>
    10c8:	eb 26                	jmp    10f0 <strcmp+0x40>
    10ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10d0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    10d4:	83 c1 01             	add    $0x1,%ecx
    10d7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    10da:	0f b6 1a             	movzbl (%edx),%ebx
    10dd:	84 c0                	test   %al,%al
    10df:	74 0f                	je     10f0 <strcmp+0x40>
    10e1:	38 d8                	cmp    %bl,%al
    10e3:	74 eb                	je     10d0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    10e5:	29 d8                	sub    %ebx,%eax
}
    10e7:	5b                   	pop    %ebx
    10e8:	5d                   	pop    %ebp
    10e9:	c3                   	ret    
    10ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    10f0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    10f2:	29 d8                	sub    %ebx,%eax
}
    10f4:	5b                   	pop    %ebx
    10f5:	5d                   	pop    %ebp
    10f6:	c3                   	ret    
    10f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10fe:	66 90                	xchg   %ax,%ax

00001100 <strlen>:

uint
strlen(const char *s)
{
    1100:	f3 0f 1e fb          	endbr32 
    1104:	55                   	push   %ebp
    1105:	89 e5                	mov    %esp,%ebp
    1107:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    110a:	80 3a 00             	cmpb   $0x0,(%edx)
    110d:	74 21                	je     1130 <strlen+0x30>
    110f:	31 c0                	xor    %eax,%eax
    1111:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1118:	83 c0 01             	add    $0x1,%eax
    111b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    111f:	89 c1                	mov    %eax,%ecx
    1121:	75 f5                	jne    1118 <strlen+0x18>
    ;
  return n;
}
    1123:	89 c8                	mov    %ecx,%eax
    1125:	5d                   	pop    %ebp
    1126:	c3                   	ret    
    1127:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    112e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1130:	31 c9                	xor    %ecx,%ecx
}
    1132:	5d                   	pop    %ebp
    1133:	89 c8                	mov    %ecx,%eax
    1135:	c3                   	ret    
    1136:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    113d:	8d 76 00             	lea    0x0(%esi),%esi

00001140 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1140:	f3 0f 1e fb          	endbr32 
    1144:	55                   	push   %ebp
    1145:	89 e5                	mov    %esp,%ebp
    1147:	57                   	push   %edi
    1148:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    114b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    114e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1151:	89 d7                	mov    %edx,%edi
    1153:	fc                   	cld    
    1154:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1156:	89 d0                	mov    %edx,%eax
    1158:	5f                   	pop    %edi
    1159:	5d                   	pop    %ebp
    115a:	c3                   	ret    
    115b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    115f:	90                   	nop

00001160 <strchr>:

char*
strchr(const char *s, char c)
{
    1160:	f3 0f 1e fb          	endbr32 
    1164:	55                   	push   %ebp
    1165:	89 e5                	mov    %esp,%ebp
    1167:	8b 45 08             	mov    0x8(%ebp),%eax
    116a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    116e:	0f b6 10             	movzbl (%eax),%edx
    1171:	84 d2                	test   %dl,%dl
    1173:	75 16                	jne    118b <strchr+0x2b>
    1175:	eb 21                	jmp    1198 <strchr+0x38>
    1177:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    117e:	66 90                	xchg   %ax,%ax
    1180:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1184:	83 c0 01             	add    $0x1,%eax
    1187:	84 d2                	test   %dl,%dl
    1189:	74 0d                	je     1198 <strchr+0x38>
    if(*s == c)
    118b:	38 d1                	cmp    %dl,%cl
    118d:	75 f1                	jne    1180 <strchr+0x20>
      return (char*)s;
  return 0;
}
    118f:	5d                   	pop    %ebp
    1190:	c3                   	ret    
    1191:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1198:	31 c0                	xor    %eax,%eax
}
    119a:	5d                   	pop    %ebp
    119b:	c3                   	ret    
    119c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000011a0 <gets>:

char*
gets(char *buf, int max)
{
    11a0:	f3 0f 1e fb          	endbr32 
    11a4:	55                   	push   %ebp
    11a5:	89 e5                	mov    %esp,%ebp
    11a7:	57                   	push   %edi
    11a8:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    11a9:	31 f6                	xor    %esi,%esi
{
    11ab:	53                   	push   %ebx
    11ac:	89 f3                	mov    %esi,%ebx
    11ae:	83 ec 1c             	sub    $0x1c,%esp
    11b1:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    11b4:	eb 33                	jmp    11e9 <gets+0x49>
    11b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11bd:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    11c0:	83 ec 04             	sub    $0x4,%esp
    11c3:	8d 45 e7             	lea    -0x19(%ebp),%eax
    11c6:	6a 01                	push   $0x1
    11c8:	50                   	push   %eax
    11c9:	6a 00                	push   $0x0
    11cb:	e8 75 03 00 00       	call   1545 <read>
    if(cc < 1)
    11d0:	83 c4 10             	add    $0x10,%esp
    11d3:	85 c0                	test   %eax,%eax
    11d5:	7e 1c                	jle    11f3 <gets+0x53>
      break;
    buf[i++] = c;
    11d7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    11db:	83 c7 01             	add    $0x1,%edi
    11de:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    11e1:	3c 0a                	cmp    $0xa,%al
    11e3:	74 23                	je     1208 <gets+0x68>
    11e5:	3c 0d                	cmp    $0xd,%al
    11e7:	74 1f                	je     1208 <gets+0x68>
  for(i=0; i+1 < max; ){
    11e9:	83 c3 01             	add    $0x1,%ebx
    11ec:	89 fe                	mov    %edi,%esi
    11ee:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    11f1:	7c cd                	jl     11c0 <gets+0x20>
    11f3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    11f5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    11f8:	c6 03 00             	movb   $0x0,(%ebx)
}
    11fb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    11fe:	5b                   	pop    %ebx
    11ff:	5e                   	pop    %esi
    1200:	5f                   	pop    %edi
    1201:	5d                   	pop    %ebp
    1202:	c3                   	ret    
    1203:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1207:	90                   	nop
    1208:	8b 75 08             	mov    0x8(%ebp),%esi
    120b:	8b 45 08             	mov    0x8(%ebp),%eax
    120e:	01 de                	add    %ebx,%esi
    1210:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    1212:	c6 03 00             	movb   $0x0,(%ebx)
}
    1215:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1218:	5b                   	pop    %ebx
    1219:	5e                   	pop    %esi
    121a:	5f                   	pop    %edi
    121b:	5d                   	pop    %ebp
    121c:	c3                   	ret    
    121d:	8d 76 00             	lea    0x0(%esi),%esi

00001220 <stat>:

int
stat(const char *n, struct stat *st)
{
    1220:	f3 0f 1e fb          	endbr32 
    1224:	55                   	push   %ebp
    1225:	89 e5                	mov    %esp,%ebp
    1227:	56                   	push   %esi
    1228:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1229:	83 ec 08             	sub    $0x8,%esp
    122c:	6a 00                	push   $0x0
    122e:	ff 75 08             	pushl  0x8(%ebp)
    1231:	e8 37 03 00 00       	call   156d <open>
  if(fd < 0)
    1236:	83 c4 10             	add    $0x10,%esp
    1239:	85 c0                	test   %eax,%eax
    123b:	78 2b                	js     1268 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    123d:	83 ec 08             	sub    $0x8,%esp
    1240:	ff 75 0c             	pushl  0xc(%ebp)
    1243:	89 c3                	mov    %eax,%ebx
    1245:	50                   	push   %eax
    1246:	e8 3a 03 00 00       	call   1585 <fstat>
  close(fd);
    124b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    124e:	89 c6                	mov    %eax,%esi
  close(fd);
    1250:	e8 00 03 00 00       	call   1555 <close>
  return r;
    1255:	83 c4 10             	add    $0x10,%esp
}
    1258:	8d 65 f8             	lea    -0x8(%ebp),%esp
    125b:	89 f0                	mov    %esi,%eax
    125d:	5b                   	pop    %ebx
    125e:	5e                   	pop    %esi
    125f:	5d                   	pop    %ebp
    1260:	c3                   	ret    
    1261:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1268:	be ff ff ff ff       	mov    $0xffffffff,%esi
    126d:	eb e9                	jmp    1258 <stat+0x38>
    126f:	90                   	nop

00001270 <atoi>:

int
atoi(const char *s)
{
    1270:	f3 0f 1e fb          	endbr32 
    1274:	55                   	push   %ebp
    1275:	89 e5                	mov    %esp,%ebp
    1277:	53                   	push   %ebx
    1278:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    127b:	0f be 02             	movsbl (%edx),%eax
    127e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1281:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1284:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1289:	77 1a                	ja     12a5 <atoi+0x35>
    128b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    128f:	90                   	nop
    n = n*10 + *s++ - '0';
    1290:	83 c2 01             	add    $0x1,%edx
    1293:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1296:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    129a:	0f be 02             	movsbl (%edx),%eax
    129d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    12a0:	80 fb 09             	cmp    $0x9,%bl
    12a3:	76 eb                	jbe    1290 <atoi+0x20>
  return n;
}
    12a5:	89 c8                	mov    %ecx,%eax
    12a7:	5b                   	pop    %ebx
    12a8:	5d                   	pop    %ebp
    12a9:	c3                   	ret    
    12aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000012b0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    12b0:	f3 0f 1e fb          	endbr32 
    12b4:	55                   	push   %ebp
    12b5:	89 e5                	mov    %esp,%ebp
    12b7:	57                   	push   %edi
    12b8:	8b 45 10             	mov    0x10(%ebp),%eax
    12bb:	8b 55 08             	mov    0x8(%ebp),%edx
    12be:	56                   	push   %esi
    12bf:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    12c2:	85 c0                	test   %eax,%eax
    12c4:	7e 0f                	jle    12d5 <memmove+0x25>
    12c6:	01 d0                	add    %edx,%eax
  dst = vdst;
    12c8:	89 d7                	mov    %edx,%edi
    12ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    12d0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    12d1:	39 f8                	cmp    %edi,%eax
    12d3:	75 fb                	jne    12d0 <memmove+0x20>
  return vdst;
}
    12d5:	5e                   	pop    %esi
    12d6:	89 d0                	mov    %edx,%eax
    12d8:	5f                   	pop    %edi
    12d9:	5d                   	pop    %ebp
    12da:	c3                   	ret    
    12db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12df:	90                   	nop

000012e0 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    12e0:	f3 0f 1e fb          	endbr32 
    12e4:	55                   	push   %ebp
    12e5:	89 e5                	mov    %esp,%ebp
    12e7:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    12ea:	8d 45 f4             	lea    -0xc(%ebp),%eax
    12ed:	50                   	push   %eax
    12ee:	e8 0a 03 00 00       	call   15fd <join>
  
  return x;
}
    12f3:	c9                   	leave  
    12f4:	c3                   	ret    
    12f5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001300 <lock_init>:

void lock_init(struct lock_t *lk){
    1300:	f3 0f 1e fb          	endbr32 
    1304:	55                   	push   %ebp
    1305:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    1307:	8b 45 08             	mov    0x8(%ebp),%eax
    130a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1310:	5d                   	pop    %ebp
    1311:	c3                   	ret    
    1312:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1319:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001320 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    1320:	f3 0f 1e fb          	endbr32 
    1324:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1325:	b9 01 00 00 00       	mov    $0x1,%ecx
    132a:	89 e5                	mov    %esp,%ebp
    132c:	8b 55 08             	mov    0x8(%ebp),%edx
    132f:	90                   	nop
    1330:	89 c8                	mov    %ecx,%eax
    1332:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1335:	85 c0                	test   %eax,%eax
    1337:	75 f7                	jne    1330 <lock_acquire+0x10>
}
    1339:	5d                   	pop    %ebp
    133a:	c3                   	ret    
    133b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    133f:	90                   	nop

00001340 <lock_release>:
void lock_release(struct lock_t *lk){
    1340:	f3 0f 1e fb          	endbr32 
    1344:	55                   	push   %ebp
    1345:	31 c0                	xor    %eax,%eax
    1347:	89 e5                	mov    %esp,%ebp
    1349:	8b 55 08             	mov    0x8(%ebp),%edx
    134c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    134f:	5d                   	pop    %ebp
    1350:	c3                   	ret    
    1351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1358:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    135f:	90                   	nop

00001360 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1360:	f3 0f 1e fb          	endbr32 
    1364:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1365:	a1 e8 1b 00 00       	mov    0x1be8,%eax
{
    136a:	89 e5                	mov    %esp,%ebp
    136c:	57                   	push   %edi
    136d:	56                   	push   %esi
    136e:	53                   	push   %ebx
    136f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1372:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1374:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1377:	39 c8                	cmp    %ecx,%eax
    1379:	73 15                	jae    1390 <free+0x30>
    137b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    137f:	90                   	nop
    1380:	39 d1                	cmp    %edx,%ecx
    1382:	72 14                	jb     1398 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1384:	39 d0                	cmp    %edx,%eax
    1386:	73 10                	jae    1398 <free+0x38>
{
    1388:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    138a:	8b 10                	mov    (%eax),%edx
    138c:	39 c8                	cmp    %ecx,%eax
    138e:	72 f0                	jb     1380 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1390:	39 d0                	cmp    %edx,%eax
    1392:	72 f4                	jb     1388 <free+0x28>
    1394:	39 d1                	cmp    %edx,%ecx
    1396:	73 f0                	jae    1388 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1398:	8b 73 fc             	mov    -0x4(%ebx),%esi
    139b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    139e:	39 fa                	cmp    %edi,%edx
    13a0:	74 1e                	je     13c0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    13a2:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    13a5:	8b 50 04             	mov    0x4(%eax),%edx
    13a8:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    13ab:	39 f1                	cmp    %esi,%ecx
    13ad:	74 28                	je     13d7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    13af:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    13b1:	5b                   	pop    %ebx
  freep = p;
    13b2:	a3 e8 1b 00 00       	mov    %eax,0x1be8
}
    13b7:	5e                   	pop    %esi
    13b8:	5f                   	pop    %edi
    13b9:	5d                   	pop    %ebp
    13ba:	c3                   	ret    
    13bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13bf:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    13c0:	03 72 04             	add    0x4(%edx),%esi
    13c3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    13c6:	8b 10                	mov    (%eax),%edx
    13c8:	8b 12                	mov    (%edx),%edx
    13ca:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    13cd:	8b 50 04             	mov    0x4(%eax),%edx
    13d0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    13d3:	39 f1                	cmp    %esi,%ecx
    13d5:	75 d8                	jne    13af <free+0x4f>
    p->s.size += bp->s.size;
    13d7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    13da:	a3 e8 1b 00 00       	mov    %eax,0x1be8
    p->s.size += bp->s.size;
    13df:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    13e2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    13e5:	89 10                	mov    %edx,(%eax)
}
    13e7:	5b                   	pop    %ebx
    13e8:	5e                   	pop    %esi
    13e9:	5f                   	pop    %edi
    13ea:	5d                   	pop    %ebp
    13eb:	c3                   	ret    
    13ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000013f0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    13f0:	f3 0f 1e fb          	endbr32 
    13f4:	55                   	push   %ebp
    13f5:	89 e5                	mov    %esp,%ebp
    13f7:	57                   	push   %edi
    13f8:	56                   	push   %esi
    13f9:	53                   	push   %ebx
    13fa:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    13fd:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1400:	8b 3d e8 1b 00 00    	mov    0x1be8,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1406:	8d 70 07             	lea    0x7(%eax),%esi
    1409:	c1 ee 03             	shr    $0x3,%esi
    140c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    140f:	85 ff                	test   %edi,%edi
    1411:	0f 84 a9 00 00 00    	je     14c0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1417:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    1419:	8b 48 04             	mov    0x4(%eax),%ecx
    141c:	39 f1                	cmp    %esi,%ecx
    141e:	73 6d                	jae    148d <malloc+0x9d>
    1420:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1426:	bb 00 10 00 00       	mov    $0x1000,%ebx
    142b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    142e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1435:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1438:	eb 17                	jmp    1451 <malloc+0x61>
    143a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1440:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1442:	8b 4a 04             	mov    0x4(%edx),%ecx
    1445:	39 f1                	cmp    %esi,%ecx
    1447:	73 4f                	jae    1498 <malloc+0xa8>
    1449:	8b 3d e8 1b 00 00    	mov    0x1be8,%edi
    144f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1451:	39 c7                	cmp    %eax,%edi
    1453:	75 eb                	jne    1440 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1455:	83 ec 0c             	sub    $0xc,%esp
    1458:	ff 75 e4             	pushl  -0x1c(%ebp)
    145b:	e8 55 01 00 00       	call   15b5 <sbrk>
  if(p == (char*)-1)
    1460:	83 c4 10             	add    $0x10,%esp
    1463:	83 f8 ff             	cmp    $0xffffffff,%eax
    1466:	74 1b                	je     1483 <malloc+0x93>
  hp->s.size = nu;
    1468:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    146b:	83 ec 0c             	sub    $0xc,%esp
    146e:	83 c0 08             	add    $0x8,%eax
    1471:	50                   	push   %eax
    1472:	e8 e9 fe ff ff       	call   1360 <free>
  return freep;
    1477:	a1 e8 1b 00 00       	mov    0x1be8,%eax
      if((p = morecore(nunits)) == 0)
    147c:	83 c4 10             	add    $0x10,%esp
    147f:	85 c0                	test   %eax,%eax
    1481:	75 bd                	jne    1440 <malloc+0x50>
        return 0;
  }
}
    1483:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1486:	31 c0                	xor    %eax,%eax
}
    1488:	5b                   	pop    %ebx
    1489:	5e                   	pop    %esi
    148a:	5f                   	pop    %edi
    148b:	5d                   	pop    %ebp
    148c:	c3                   	ret    
    if(p->s.size >= nunits){
    148d:	89 c2                	mov    %eax,%edx
    148f:	89 f8                	mov    %edi,%eax
    1491:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1498:	39 ce                	cmp    %ecx,%esi
    149a:	74 54                	je     14f0 <malloc+0x100>
        p->s.size -= nunits;
    149c:	29 f1                	sub    %esi,%ecx
    149e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    14a1:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    14a4:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    14a7:	a3 e8 1b 00 00       	mov    %eax,0x1be8
}
    14ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    14af:	8d 42 08             	lea    0x8(%edx),%eax
}
    14b2:	5b                   	pop    %ebx
    14b3:	5e                   	pop    %esi
    14b4:	5f                   	pop    %edi
    14b5:	5d                   	pop    %ebp
    14b6:	c3                   	ret    
    14b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14be:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    14c0:	c7 05 e8 1b 00 00 ec 	movl   $0x1bec,0x1be8
    14c7:	1b 00 00 
    base.s.size = 0;
    14ca:	bf ec 1b 00 00       	mov    $0x1bec,%edi
    base.s.ptr = freep = prevp = &base;
    14cf:	c7 05 ec 1b 00 00 ec 	movl   $0x1bec,0x1bec
    14d6:	1b 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    14d9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    14db:	c7 05 f0 1b 00 00 00 	movl   $0x0,0x1bf0
    14e2:	00 00 00 
    if(p->s.size >= nunits){
    14e5:	e9 36 ff ff ff       	jmp    1420 <malloc+0x30>
    14ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    14f0:	8b 0a                	mov    (%edx),%ecx
    14f2:	89 08                	mov    %ecx,(%eax)
    14f4:	eb b1                	jmp    14a7 <malloc+0xb7>
    14f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14fd:	8d 76 00             	lea    0x0(%esi),%esi

00001500 <thread_create>:
{
    1500:	f3 0f 1e fb          	endbr32 
    1504:	55                   	push   %ebp
    1505:	89 e5                	mov    %esp,%ebp
    1507:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    150a:	68 00 10 00 00       	push   $0x1000
    150f:	e8 dc fe ff ff       	call   13f0 <malloc>
return clone(start_routine,arg1,arg2,stack);
    1514:	50                   	push   %eax
    1515:	ff 75 10             	pushl  0x10(%ebp)
    1518:	ff 75 0c             	pushl  0xc(%ebp)
    151b:	ff 75 08             	pushl  0x8(%ebp)
    151e:	e8 d2 00 00 00       	call   15f5 <clone>
}
    1523:	c9                   	leave  
    1524:	c3                   	ret    

00001525 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1525:	b8 01 00 00 00       	mov    $0x1,%eax
    152a:	cd 40                	int    $0x40
    152c:	c3                   	ret    

0000152d <exit>:
SYSCALL(exit)
    152d:	b8 02 00 00 00       	mov    $0x2,%eax
    1532:	cd 40                	int    $0x40
    1534:	c3                   	ret    

00001535 <wait>:
SYSCALL(wait)
    1535:	b8 03 00 00 00       	mov    $0x3,%eax
    153a:	cd 40                	int    $0x40
    153c:	c3                   	ret    

0000153d <pipe>:
SYSCALL(pipe)
    153d:	b8 04 00 00 00       	mov    $0x4,%eax
    1542:	cd 40                	int    $0x40
    1544:	c3                   	ret    

00001545 <read>:
SYSCALL(read)
    1545:	b8 05 00 00 00       	mov    $0x5,%eax
    154a:	cd 40                	int    $0x40
    154c:	c3                   	ret    

0000154d <write>:
SYSCALL(write)
    154d:	b8 10 00 00 00       	mov    $0x10,%eax
    1552:	cd 40                	int    $0x40
    1554:	c3                   	ret    

00001555 <close>:
SYSCALL(close)
    1555:	b8 15 00 00 00       	mov    $0x15,%eax
    155a:	cd 40                	int    $0x40
    155c:	c3                   	ret    

0000155d <kill>:
SYSCALL(kill)
    155d:	b8 06 00 00 00       	mov    $0x6,%eax
    1562:	cd 40                	int    $0x40
    1564:	c3                   	ret    

00001565 <exec>:
SYSCALL(exec)
    1565:	b8 07 00 00 00       	mov    $0x7,%eax
    156a:	cd 40                	int    $0x40
    156c:	c3                   	ret    

0000156d <open>:
SYSCALL(open)
    156d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1572:	cd 40                	int    $0x40
    1574:	c3                   	ret    

00001575 <mknod>:
SYSCALL(mknod)
    1575:	b8 11 00 00 00       	mov    $0x11,%eax
    157a:	cd 40                	int    $0x40
    157c:	c3                   	ret    

0000157d <unlink>:
SYSCALL(unlink)
    157d:	b8 12 00 00 00       	mov    $0x12,%eax
    1582:	cd 40                	int    $0x40
    1584:	c3                   	ret    

00001585 <fstat>:
SYSCALL(fstat)
    1585:	b8 08 00 00 00       	mov    $0x8,%eax
    158a:	cd 40                	int    $0x40
    158c:	c3                   	ret    

0000158d <link>:
SYSCALL(link)
    158d:	b8 13 00 00 00       	mov    $0x13,%eax
    1592:	cd 40                	int    $0x40
    1594:	c3                   	ret    

00001595 <mkdir>:
SYSCALL(mkdir)
    1595:	b8 14 00 00 00       	mov    $0x14,%eax
    159a:	cd 40                	int    $0x40
    159c:	c3                   	ret    

0000159d <chdir>:
SYSCALL(chdir)
    159d:	b8 09 00 00 00       	mov    $0x9,%eax
    15a2:	cd 40                	int    $0x40
    15a4:	c3                   	ret    

000015a5 <dup>:
SYSCALL(dup)
    15a5:	b8 0a 00 00 00       	mov    $0xa,%eax
    15aa:	cd 40                	int    $0x40
    15ac:	c3                   	ret    

000015ad <getpid>:
SYSCALL(getpid)
    15ad:	b8 0b 00 00 00       	mov    $0xb,%eax
    15b2:	cd 40                	int    $0x40
    15b4:	c3                   	ret    

000015b5 <sbrk>:
SYSCALL(sbrk)
    15b5:	b8 0c 00 00 00       	mov    $0xc,%eax
    15ba:	cd 40                	int    $0x40
    15bc:	c3                   	ret    

000015bd <sleep>:
SYSCALL(sleep)
    15bd:	b8 0d 00 00 00       	mov    $0xd,%eax
    15c2:	cd 40                	int    $0x40
    15c4:	c3                   	ret    

000015c5 <uptime>:
SYSCALL(uptime)
    15c5:	b8 0e 00 00 00       	mov    $0xe,%eax
    15ca:	cd 40                	int    $0x40
    15cc:	c3                   	ret    

000015cd <count>:
SYSCALL(count)
    15cd:	b8 16 00 00 00       	mov    $0x16,%eax
    15d2:	cd 40                	int    $0x40
    15d4:	c3                   	ret    

000015d5 <settickets>:

SYSCALL(settickets)
    15d5:	b8 17 00 00 00       	mov    $0x17,%eax
    15da:	cd 40                	int    $0x40
    15dc:	c3                   	ret    

000015dd <getpinfo>:
SYSCALL(getpinfo)
    15dd:	b8 18 00 00 00       	mov    $0x18,%eax
    15e2:	cd 40                	int    $0x40
    15e4:	c3                   	ret    

000015e5 <mprotect>:

SYSCALL(mprotect)
    15e5:	b8 19 00 00 00       	mov    $0x19,%eax
    15ea:	cd 40                	int    $0x40
    15ec:	c3                   	ret    

000015ed <munprotect>:
SYSCALL(munprotect)
    15ed:	b8 1a 00 00 00       	mov    $0x1a,%eax
    15f2:	cd 40                	int    $0x40
    15f4:	c3                   	ret    

000015f5 <clone>:

SYSCALL(clone)
    15f5:	b8 1b 00 00 00       	mov    $0x1b,%eax
    15fa:	cd 40                	int    $0x40
    15fc:	c3                   	ret    

000015fd <join>:
SYSCALL(join)
    15fd:	b8 1c 00 00 00       	mov    $0x1c,%eax
    1602:	cd 40                	int    $0x40
    1604:	c3                   	ret    
    1605:	66 90                	xchg   %ax,%ax
    1607:	66 90                	xchg   %ax,%ax
    1609:	66 90                	xchg   %ax,%ax
    160b:	66 90                	xchg   %ax,%ax
    160d:	66 90                	xchg   %ax,%ax
    160f:	90                   	nop

00001610 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1610:	55                   	push   %ebp
    1611:	89 e5                	mov    %esp,%ebp
    1613:	57                   	push   %edi
    1614:	56                   	push   %esi
    1615:	53                   	push   %ebx
    1616:	83 ec 3c             	sub    $0x3c,%esp
    1619:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    161c:	89 d1                	mov    %edx,%ecx
{
    161e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    1621:	85 d2                	test   %edx,%edx
    1623:	0f 89 7f 00 00 00    	jns    16a8 <printint+0x98>
    1629:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    162d:	74 79                	je     16a8 <printint+0x98>
    neg = 1;
    162f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1636:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1638:	31 db                	xor    %ebx,%ebx
    163a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    163d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1640:	89 c8                	mov    %ecx,%eax
    1642:	31 d2                	xor    %edx,%edx
    1644:	89 cf                	mov    %ecx,%edi
    1646:	f7 75 c4             	divl   -0x3c(%ebp)
    1649:	0f b6 92 98 18 00 00 	movzbl 0x1898(%edx),%edx
    1650:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1653:	89 d8                	mov    %ebx,%eax
    1655:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1658:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    165b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    165e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1661:	76 dd                	jbe    1640 <printint+0x30>
  if(neg)
    1663:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1666:	85 c9                	test   %ecx,%ecx
    1668:	74 0c                	je     1676 <printint+0x66>
    buf[i++] = '-';
    166a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    166f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1671:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1676:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1679:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    167d:	eb 07                	jmp    1686 <printint+0x76>
    167f:	90                   	nop
    1680:	0f b6 13             	movzbl (%ebx),%edx
    1683:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1686:	83 ec 04             	sub    $0x4,%esp
    1689:	88 55 d7             	mov    %dl,-0x29(%ebp)
    168c:	6a 01                	push   $0x1
    168e:	56                   	push   %esi
    168f:	57                   	push   %edi
    1690:	e8 b8 fe ff ff       	call   154d <write>
  while(--i >= 0)
    1695:	83 c4 10             	add    $0x10,%esp
    1698:	39 de                	cmp    %ebx,%esi
    169a:	75 e4                	jne    1680 <printint+0x70>
    putc(fd, buf[i]);
}
    169c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    169f:	5b                   	pop    %ebx
    16a0:	5e                   	pop    %esi
    16a1:	5f                   	pop    %edi
    16a2:	5d                   	pop    %ebp
    16a3:	c3                   	ret    
    16a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    16a8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    16af:	eb 87                	jmp    1638 <printint+0x28>
    16b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    16b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    16bf:	90                   	nop

000016c0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    16c0:	f3 0f 1e fb          	endbr32 
    16c4:	55                   	push   %ebp
    16c5:	89 e5                	mov    %esp,%ebp
    16c7:	57                   	push   %edi
    16c8:	56                   	push   %esi
    16c9:	53                   	push   %ebx
    16ca:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    16cd:	8b 75 0c             	mov    0xc(%ebp),%esi
    16d0:	0f b6 1e             	movzbl (%esi),%ebx
    16d3:	84 db                	test   %bl,%bl
    16d5:	0f 84 b4 00 00 00    	je     178f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    16db:	8d 45 10             	lea    0x10(%ebp),%eax
    16de:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    16e1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    16e4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    16e6:	89 45 d0             	mov    %eax,-0x30(%ebp)
    16e9:	eb 33                	jmp    171e <printf+0x5e>
    16eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    16ef:	90                   	nop
    16f0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    16f3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    16f8:	83 f8 25             	cmp    $0x25,%eax
    16fb:	74 17                	je     1714 <printf+0x54>
  write(fd, &c, 1);
    16fd:	83 ec 04             	sub    $0x4,%esp
    1700:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1703:	6a 01                	push   $0x1
    1705:	57                   	push   %edi
    1706:	ff 75 08             	pushl  0x8(%ebp)
    1709:	e8 3f fe ff ff       	call   154d <write>
    170e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    1711:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1714:	0f b6 1e             	movzbl (%esi),%ebx
    1717:	83 c6 01             	add    $0x1,%esi
    171a:	84 db                	test   %bl,%bl
    171c:	74 71                	je     178f <printf+0xcf>
    c = fmt[i] & 0xff;
    171e:	0f be cb             	movsbl %bl,%ecx
    1721:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1724:	85 d2                	test   %edx,%edx
    1726:	74 c8                	je     16f0 <printf+0x30>
      }
    } else if(state == '%'){
    1728:	83 fa 25             	cmp    $0x25,%edx
    172b:	75 e7                	jne    1714 <printf+0x54>
      if(c == 'd'){
    172d:	83 f8 64             	cmp    $0x64,%eax
    1730:	0f 84 9a 00 00 00    	je     17d0 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1736:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    173c:	83 f9 70             	cmp    $0x70,%ecx
    173f:	74 5f                	je     17a0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1741:	83 f8 73             	cmp    $0x73,%eax
    1744:	0f 84 d6 00 00 00    	je     1820 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    174a:	83 f8 63             	cmp    $0x63,%eax
    174d:	0f 84 8d 00 00 00    	je     17e0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1753:	83 f8 25             	cmp    $0x25,%eax
    1756:	0f 84 b4 00 00 00    	je     1810 <printf+0x150>
  write(fd, &c, 1);
    175c:	83 ec 04             	sub    $0x4,%esp
    175f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1763:	6a 01                	push   $0x1
    1765:	57                   	push   %edi
    1766:	ff 75 08             	pushl  0x8(%ebp)
    1769:	e8 df fd ff ff       	call   154d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    176e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1771:	83 c4 0c             	add    $0xc,%esp
    1774:	6a 01                	push   $0x1
    1776:	83 c6 01             	add    $0x1,%esi
    1779:	57                   	push   %edi
    177a:	ff 75 08             	pushl  0x8(%ebp)
    177d:	e8 cb fd ff ff       	call   154d <write>
  for(i = 0; fmt[i]; i++){
    1782:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1786:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1789:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    178b:	84 db                	test   %bl,%bl
    178d:	75 8f                	jne    171e <printf+0x5e>
    }
  }
}
    178f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1792:	5b                   	pop    %ebx
    1793:	5e                   	pop    %esi
    1794:	5f                   	pop    %edi
    1795:	5d                   	pop    %ebp
    1796:	c3                   	ret    
    1797:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    179e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    17a0:	83 ec 0c             	sub    $0xc,%esp
    17a3:	b9 10 00 00 00       	mov    $0x10,%ecx
    17a8:	6a 00                	push   $0x0
    17aa:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    17ad:	8b 45 08             	mov    0x8(%ebp),%eax
    17b0:	8b 13                	mov    (%ebx),%edx
    17b2:	e8 59 fe ff ff       	call   1610 <printint>
        ap++;
    17b7:	89 d8                	mov    %ebx,%eax
    17b9:	83 c4 10             	add    $0x10,%esp
      state = 0;
    17bc:	31 d2                	xor    %edx,%edx
        ap++;
    17be:	83 c0 04             	add    $0x4,%eax
    17c1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    17c4:	e9 4b ff ff ff       	jmp    1714 <printf+0x54>
    17c9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    17d0:	83 ec 0c             	sub    $0xc,%esp
    17d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    17d8:	6a 01                	push   $0x1
    17da:	eb ce                	jmp    17aa <printf+0xea>
    17dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    17e0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    17e3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    17e6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    17e8:	6a 01                	push   $0x1
        ap++;
    17ea:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    17ed:	57                   	push   %edi
    17ee:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    17f1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    17f4:	e8 54 fd ff ff       	call   154d <write>
        ap++;
    17f9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    17fc:	83 c4 10             	add    $0x10,%esp
      state = 0;
    17ff:	31 d2                	xor    %edx,%edx
    1801:	e9 0e ff ff ff       	jmp    1714 <printf+0x54>
    1806:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    180d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1810:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1813:	83 ec 04             	sub    $0x4,%esp
    1816:	e9 59 ff ff ff       	jmp    1774 <printf+0xb4>
    181b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    181f:	90                   	nop
        s = (char*)*ap;
    1820:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1823:	8b 18                	mov    (%eax),%ebx
        ap++;
    1825:	83 c0 04             	add    $0x4,%eax
    1828:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    182b:	85 db                	test   %ebx,%ebx
    182d:	74 17                	je     1846 <printf+0x186>
        while(*s != 0){
    182f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1832:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1834:	84 c0                	test   %al,%al
    1836:	0f 84 d8 fe ff ff    	je     1714 <printf+0x54>
    183c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    183f:	89 de                	mov    %ebx,%esi
    1841:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1844:	eb 1a                	jmp    1860 <printf+0x1a0>
          s = "(null)";
    1846:	bb 91 18 00 00       	mov    $0x1891,%ebx
        while(*s != 0){
    184b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    184e:	b8 28 00 00 00       	mov    $0x28,%eax
    1853:	89 de                	mov    %ebx,%esi
    1855:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1858:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    185f:	90                   	nop
  write(fd, &c, 1);
    1860:	83 ec 04             	sub    $0x4,%esp
          s++;
    1863:	83 c6 01             	add    $0x1,%esi
    1866:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1869:	6a 01                	push   $0x1
    186b:	57                   	push   %edi
    186c:	53                   	push   %ebx
    186d:	e8 db fc ff ff       	call   154d <write>
        while(*s != 0){
    1872:	0f b6 06             	movzbl (%esi),%eax
    1875:	83 c4 10             	add    $0x10,%esp
    1878:	84 c0                	test   %al,%al
    187a:	75 e4                	jne    1860 <printf+0x1a0>
    187c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    187f:	31 d2                	xor    %edx,%edx
    1881:	e9 8e fe ff ff       	jmp    1714 <printf+0x54>
