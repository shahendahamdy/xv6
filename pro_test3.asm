
_pro_test3:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:

#include "types.h"
#include "stat.h"
#include "user.h"
#include "mmu.h"
int main(int argc, char *argv[]){
    1000:	f3 0f 1e fb          	endbr32 
    1004:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1008:	83 e4 f0             	and    $0xfffffff0,%esp
    100b:	ff 71 fc             	pushl  -0x4(%ecx)
    100e:	55                   	push   %ebp
    100f:	89 e5                	mov    %esp,%ebp
    1011:	53                   	push   %ebx
    1012:	51                   	push   %ecx
      char *start = sbrk(0);
    1013:	83 ec 0c             	sub    $0xc,%esp
    1016:	6a 00                	push   $0x0
    1018:	e8 c8 05 00 00       	call   15e5 <sbrk>
      sbrk(PGSIZE);
    101d:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
      char *start = sbrk(0);
    1024:	89 c3                	mov    %eax,%ebx
      sbrk(PGSIZE);
    1026:	e8 ba 05 00 00       	call   15e5 <sbrk>
      *start = 100;
    102b:	c6 03 64             	movb   $0x64,(%ebx)
      printf(1, "make the page read only\n");
    102e:	58                   	pop    %eax
    102f:	5a                   	pop    %edx
    1030:	68 b8 18 00 00       	push   $0x18b8
    1035:	6a 01                	push   $0x1
    1037:	e8 b4 06 00 00       	call   16f0 <printf>
      mprotect(start, 1);
    103c:	59                   	pop    %ecx
    103d:	58                   	pop    %eax
    103e:	6a 01                	push   $0x1
    1040:	53                   	push   %ebx
    1041:	e8 cf 05 00 00       	call   1615 <mprotect>
      printf(1, "start = %d\n", *start);
    1046:	0f be 03             	movsbl (%ebx),%eax
    1049:	83 c4 0c             	add    $0xc,%esp
    104c:	50                   	push   %eax
    104d:	68 d1 18 00 00       	push   $0x18d1
    1052:	6a 01                	push   $0x1
    1054:	e8 97 06 00 00       	call   16f0 <printf>
      int pid = fork();
    1059:	e8 f7 04 00 00       	call   1555 <fork>
      if (pid == 0){
    105e:	83 c4 10             	add    $0x10,%esp
    1061:	85 c0                	test   %eax,%eax
    1063:	74 0e                	je     1073 <main+0x73>
            printf(1, "write on the page \n'still read only from the parent **trap will happen**'\n");
            *start = 5;
            printf(1, "TEST FAILED\n");
            exit();
      }
      else if(pid>0)wait();
    1065:	7f 05                	jg     106c <main+0x6c>
      exit();
    1067:	e8 f1 04 00 00       	call   155d <exit>
      else if(pid>0)wait();
    106c:	e8 f4 04 00 00       	call   1565 <wait>
    1071:	eb f4                	jmp    1067 <main+0x67>
            printf(1, "-----child-----\n");
    1073:	50                   	push   %eax
    1074:	50                   	push   %eax
    1075:	68 dd 18 00 00       	push   $0x18dd
    107a:	6a 01                	push   $0x1
    107c:	e8 6f 06 00 00       	call   16f0 <printf>
            printf(1, "write on the page \n'still read only from the parent **trap will happen**'\n");
    1081:	5a                   	pop    %edx
    1082:	59                   	pop    %ecx
    1083:	68 fc 18 00 00       	push   $0x18fc
    1088:	6a 01                	push   $0x1
    108a:	e8 61 06 00 00       	call   16f0 <printf>
            *start = 5;
    108f:	c6 03 05             	movb   $0x5,(%ebx)
            printf(1, "TEST FAILED\n");
    1092:	5b                   	pop    %ebx
    1093:	58                   	pop    %eax
    1094:	68 ee 18 00 00       	push   $0x18ee
    1099:	6a 01                	push   $0x1
    109b:	e8 50 06 00 00       	call   16f0 <printf>
            exit();
    10a0:	e8 b8 04 00 00       	call   155d <exit>
    10a5:	66 90                	xchg   %ax,%ax
    10a7:	66 90                	xchg   %ax,%ax
    10a9:	66 90                	xchg   %ax,%ax
    10ab:	66 90                	xchg   %ax,%ax
    10ad:	66 90                	xchg   %ax,%ax
    10af:	90                   	nop

000010b0 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    10b0:	f3 0f 1e fb          	endbr32 
    10b4:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    10b5:	31 c0                	xor    %eax,%eax
{
    10b7:	89 e5                	mov    %esp,%ebp
    10b9:	53                   	push   %ebx
    10ba:	8b 4d 08             	mov    0x8(%ebp),%ecx
    10bd:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    10c0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    10c4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    10c7:	83 c0 01             	add    $0x1,%eax
    10ca:	84 d2                	test   %dl,%dl
    10cc:	75 f2                	jne    10c0 <strcpy+0x10>
    ;
  return os;
}
    10ce:	89 c8                	mov    %ecx,%eax
    10d0:	5b                   	pop    %ebx
    10d1:	5d                   	pop    %ebp
    10d2:	c3                   	ret    
    10d3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000010e0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    10e0:	f3 0f 1e fb          	endbr32 
    10e4:	55                   	push   %ebp
    10e5:	89 e5                	mov    %esp,%ebp
    10e7:	53                   	push   %ebx
    10e8:	8b 4d 08             	mov    0x8(%ebp),%ecx
    10eb:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    10ee:	0f b6 01             	movzbl (%ecx),%eax
    10f1:	0f b6 1a             	movzbl (%edx),%ebx
    10f4:	84 c0                	test   %al,%al
    10f6:	75 19                	jne    1111 <strcmp+0x31>
    10f8:	eb 26                	jmp    1120 <strcmp+0x40>
    10fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1100:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    1104:	83 c1 01             	add    $0x1,%ecx
    1107:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    110a:	0f b6 1a             	movzbl (%edx),%ebx
    110d:	84 c0                	test   %al,%al
    110f:	74 0f                	je     1120 <strcmp+0x40>
    1111:	38 d8                	cmp    %bl,%al
    1113:	74 eb                	je     1100 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1115:	29 d8                	sub    %ebx,%eax
}
    1117:	5b                   	pop    %ebx
    1118:	5d                   	pop    %ebp
    1119:	c3                   	ret    
    111a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1120:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1122:	29 d8                	sub    %ebx,%eax
}
    1124:	5b                   	pop    %ebx
    1125:	5d                   	pop    %ebp
    1126:	c3                   	ret    
    1127:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    112e:	66 90                	xchg   %ax,%ax

00001130 <strlen>:

uint
strlen(const char *s)
{
    1130:	f3 0f 1e fb          	endbr32 
    1134:	55                   	push   %ebp
    1135:	89 e5                	mov    %esp,%ebp
    1137:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    113a:	80 3a 00             	cmpb   $0x0,(%edx)
    113d:	74 21                	je     1160 <strlen+0x30>
    113f:	31 c0                	xor    %eax,%eax
    1141:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1148:	83 c0 01             	add    $0x1,%eax
    114b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    114f:	89 c1                	mov    %eax,%ecx
    1151:	75 f5                	jne    1148 <strlen+0x18>
    ;
  return n;
}
    1153:	89 c8                	mov    %ecx,%eax
    1155:	5d                   	pop    %ebp
    1156:	c3                   	ret    
    1157:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    115e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1160:	31 c9                	xor    %ecx,%ecx
}
    1162:	5d                   	pop    %ebp
    1163:	89 c8                	mov    %ecx,%eax
    1165:	c3                   	ret    
    1166:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    116d:	8d 76 00             	lea    0x0(%esi),%esi

00001170 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1170:	f3 0f 1e fb          	endbr32 
    1174:	55                   	push   %ebp
    1175:	89 e5                	mov    %esp,%ebp
    1177:	57                   	push   %edi
    1178:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    117b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    117e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1181:	89 d7                	mov    %edx,%edi
    1183:	fc                   	cld    
    1184:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1186:	89 d0                	mov    %edx,%eax
    1188:	5f                   	pop    %edi
    1189:	5d                   	pop    %ebp
    118a:	c3                   	ret    
    118b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    118f:	90                   	nop

00001190 <strchr>:

char*
strchr(const char *s, char c)
{
    1190:	f3 0f 1e fb          	endbr32 
    1194:	55                   	push   %ebp
    1195:	89 e5                	mov    %esp,%ebp
    1197:	8b 45 08             	mov    0x8(%ebp),%eax
    119a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    119e:	0f b6 10             	movzbl (%eax),%edx
    11a1:	84 d2                	test   %dl,%dl
    11a3:	75 16                	jne    11bb <strchr+0x2b>
    11a5:	eb 21                	jmp    11c8 <strchr+0x38>
    11a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ae:	66 90                	xchg   %ax,%ax
    11b0:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    11b4:	83 c0 01             	add    $0x1,%eax
    11b7:	84 d2                	test   %dl,%dl
    11b9:	74 0d                	je     11c8 <strchr+0x38>
    if(*s == c)
    11bb:	38 d1                	cmp    %dl,%cl
    11bd:	75 f1                	jne    11b0 <strchr+0x20>
      return (char*)s;
  return 0;
}
    11bf:	5d                   	pop    %ebp
    11c0:	c3                   	ret    
    11c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    11c8:	31 c0                	xor    %eax,%eax
}
    11ca:	5d                   	pop    %ebp
    11cb:	c3                   	ret    
    11cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000011d0 <gets>:

char*
gets(char *buf, int max)
{
    11d0:	f3 0f 1e fb          	endbr32 
    11d4:	55                   	push   %ebp
    11d5:	89 e5                	mov    %esp,%ebp
    11d7:	57                   	push   %edi
    11d8:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    11d9:	31 f6                	xor    %esi,%esi
{
    11db:	53                   	push   %ebx
    11dc:	89 f3                	mov    %esi,%ebx
    11de:	83 ec 1c             	sub    $0x1c,%esp
    11e1:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    11e4:	eb 33                	jmp    1219 <gets+0x49>
    11e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ed:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    11f0:	83 ec 04             	sub    $0x4,%esp
    11f3:	8d 45 e7             	lea    -0x19(%ebp),%eax
    11f6:	6a 01                	push   $0x1
    11f8:	50                   	push   %eax
    11f9:	6a 00                	push   $0x0
    11fb:	e8 75 03 00 00       	call   1575 <read>
    if(cc < 1)
    1200:	83 c4 10             	add    $0x10,%esp
    1203:	85 c0                	test   %eax,%eax
    1205:	7e 1c                	jle    1223 <gets+0x53>
      break;
    buf[i++] = c;
    1207:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    120b:	83 c7 01             	add    $0x1,%edi
    120e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1211:	3c 0a                	cmp    $0xa,%al
    1213:	74 23                	je     1238 <gets+0x68>
    1215:	3c 0d                	cmp    $0xd,%al
    1217:	74 1f                	je     1238 <gets+0x68>
  for(i=0; i+1 < max; ){
    1219:	83 c3 01             	add    $0x1,%ebx
    121c:	89 fe                	mov    %edi,%esi
    121e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1221:	7c cd                	jl     11f0 <gets+0x20>
    1223:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    1225:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1228:	c6 03 00             	movb   $0x0,(%ebx)
}
    122b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    122e:	5b                   	pop    %ebx
    122f:	5e                   	pop    %esi
    1230:	5f                   	pop    %edi
    1231:	5d                   	pop    %ebp
    1232:	c3                   	ret    
    1233:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1237:	90                   	nop
    1238:	8b 75 08             	mov    0x8(%ebp),%esi
    123b:	8b 45 08             	mov    0x8(%ebp),%eax
    123e:	01 de                	add    %ebx,%esi
    1240:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    1242:	c6 03 00             	movb   $0x0,(%ebx)
}
    1245:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1248:	5b                   	pop    %ebx
    1249:	5e                   	pop    %esi
    124a:	5f                   	pop    %edi
    124b:	5d                   	pop    %ebp
    124c:	c3                   	ret    
    124d:	8d 76 00             	lea    0x0(%esi),%esi

00001250 <stat>:

int
stat(const char *n, struct stat *st)
{
    1250:	f3 0f 1e fb          	endbr32 
    1254:	55                   	push   %ebp
    1255:	89 e5                	mov    %esp,%ebp
    1257:	56                   	push   %esi
    1258:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1259:	83 ec 08             	sub    $0x8,%esp
    125c:	6a 00                	push   $0x0
    125e:	ff 75 08             	pushl  0x8(%ebp)
    1261:	e8 37 03 00 00       	call   159d <open>
  if(fd < 0)
    1266:	83 c4 10             	add    $0x10,%esp
    1269:	85 c0                	test   %eax,%eax
    126b:	78 2b                	js     1298 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    126d:	83 ec 08             	sub    $0x8,%esp
    1270:	ff 75 0c             	pushl  0xc(%ebp)
    1273:	89 c3                	mov    %eax,%ebx
    1275:	50                   	push   %eax
    1276:	e8 3a 03 00 00       	call   15b5 <fstat>
  close(fd);
    127b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    127e:	89 c6                	mov    %eax,%esi
  close(fd);
    1280:	e8 00 03 00 00       	call   1585 <close>
  return r;
    1285:	83 c4 10             	add    $0x10,%esp
}
    1288:	8d 65 f8             	lea    -0x8(%ebp),%esp
    128b:	89 f0                	mov    %esi,%eax
    128d:	5b                   	pop    %ebx
    128e:	5e                   	pop    %esi
    128f:	5d                   	pop    %ebp
    1290:	c3                   	ret    
    1291:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1298:	be ff ff ff ff       	mov    $0xffffffff,%esi
    129d:	eb e9                	jmp    1288 <stat+0x38>
    129f:	90                   	nop

000012a0 <atoi>:

int
atoi(const char *s)
{
    12a0:	f3 0f 1e fb          	endbr32 
    12a4:	55                   	push   %ebp
    12a5:	89 e5                	mov    %esp,%ebp
    12a7:	53                   	push   %ebx
    12a8:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    12ab:	0f be 02             	movsbl (%edx),%eax
    12ae:	8d 48 d0             	lea    -0x30(%eax),%ecx
    12b1:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    12b4:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    12b9:	77 1a                	ja     12d5 <atoi+0x35>
    12bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12bf:	90                   	nop
    n = n*10 + *s++ - '0';
    12c0:	83 c2 01             	add    $0x1,%edx
    12c3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    12c6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    12ca:	0f be 02             	movsbl (%edx),%eax
    12cd:	8d 58 d0             	lea    -0x30(%eax),%ebx
    12d0:	80 fb 09             	cmp    $0x9,%bl
    12d3:	76 eb                	jbe    12c0 <atoi+0x20>
  return n;
}
    12d5:	89 c8                	mov    %ecx,%eax
    12d7:	5b                   	pop    %ebx
    12d8:	5d                   	pop    %ebp
    12d9:	c3                   	ret    
    12da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000012e0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    12e0:	f3 0f 1e fb          	endbr32 
    12e4:	55                   	push   %ebp
    12e5:	89 e5                	mov    %esp,%ebp
    12e7:	57                   	push   %edi
    12e8:	8b 45 10             	mov    0x10(%ebp),%eax
    12eb:	8b 55 08             	mov    0x8(%ebp),%edx
    12ee:	56                   	push   %esi
    12ef:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    12f2:	85 c0                	test   %eax,%eax
    12f4:	7e 0f                	jle    1305 <memmove+0x25>
    12f6:	01 d0                	add    %edx,%eax
  dst = vdst;
    12f8:	89 d7                	mov    %edx,%edi
    12fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    1300:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    1301:	39 f8                	cmp    %edi,%eax
    1303:	75 fb                	jne    1300 <memmove+0x20>
  return vdst;
}
    1305:	5e                   	pop    %esi
    1306:	89 d0                	mov    %edx,%eax
    1308:	5f                   	pop    %edi
    1309:	5d                   	pop    %ebp
    130a:	c3                   	ret    
    130b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    130f:	90                   	nop

00001310 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    1310:	f3 0f 1e fb          	endbr32 
    1314:	55                   	push   %ebp
    1315:	89 e5                	mov    %esp,%ebp
    1317:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    131a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    131d:	50                   	push   %eax
    131e:	e8 0a 03 00 00       	call   162d <join>
  
  return x;
}
    1323:	c9                   	leave  
    1324:	c3                   	ret    
    1325:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    132c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001330 <lock_init>:

void lock_init(struct lock_t *lk){
    1330:	f3 0f 1e fb          	endbr32 
    1334:	55                   	push   %ebp
    1335:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    1337:	8b 45 08             	mov    0x8(%ebp),%eax
    133a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1340:	5d                   	pop    %ebp
    1341:	c3                   	ret    
    1342:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1349:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001350 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    1350:	f3 0f 1e fb          	endbr32 
    1354:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1355:	b9 01 00 00 00       	mov    $0x1,%ecx
    135a:	89 e5                	mov    %esp,%ebp
    135c:	8b 55 08             	mov    0x8(%ebp),%edx
    135f:	90                   	nop
    1360:	89 c8                	mov    %ecx,%eax
    1362:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1365:	85 c0                	test   %eax,%eax
    1367:	75 f7                	jne    1360 <lock_acquire+0x10>
}
    1369:	5d                   	pop    %ebp
    136a:	c3                   	ret    
    136b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    136f:	90                   	nop

00001370 <lock_release>:
void lock_release(struct lock_t *lk){
    1370:	f3 0f 1e fb          	endbr32 
    1374:	55                   	push   %ebp
    1375:	31 c0                	xor    %eax,%eax
    1377:	89 e5                	mov    %esp,%ebp
    1379:	8b 55 08             	mov    0x8(%ebp),%edx
    137c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    137f:	5d                   	pop    %ebp
    1380:	c3                   	ret    
    1381:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1388:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    138f:	90                   	nop

00001390 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1390:	f3 0f 1e fb          	endbr32 
    1394:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1395:	a1 9c 1c 00 00       	mov    0x1c9c,%eax
{
    139a:	89 e5                	mov    %esp,%ebp
    139c:	57                   	push   %edi
    139d:	56                   	push   %esi
    139e:	53                   	push   %ebx
    139f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    13a2:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    13a4:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    13a7:	39 c8                	cmp    %ecx,%eax
    13a9:	73 15                	jae    13c0 <free+0x30>
    13ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13af:	90                   	nop
    13b0:	39 d1                	cmp    %edx,%ecx
    13b2:	72 14                	jb     13c8 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    13b4:	39 d0                	cmp    %edx,%eax
    13b6:	73 10                	jae    13c8 <free+0x38>
{
    13b8:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    13ba:	8b 10                	mov    (%eax),%edx
    13bc:	39 c8                	cmp    %ecx,%eax
    13be:	72 f0                	jb     13b0 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    13c0:	39 d0                	cmp    %edx,%eax
    13c2:	72 f4                	jb     13b8 <free+0x28>
    13c4:	39 d1                	cmp    %edx,%ecx
    13c6:	73 f0                	jae    13b8 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    13c8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    13cb:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    13ce:	39 fa                	cmp    %edi,%edx
    13d0:	74 1e                	je     13f0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    13d2:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    13d5:	8b 50 04             	mov    0x4(%eax),%edx
    13d8:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    13db:	39 f1                	cmp    %esi,%ecx
    13dd:	74 28                	je     1407 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    13df:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    13e1:	5b                   	pop    %ebx
  freep = p;
    13e2:	a3 9c 1c 00 00       	mov    %eax,0x1c9c
}
    13e7:	5e                   	pop    %esi
    13e8:	5f                   	pop    %edi
    13e9:	5d                   	pop    %ebp
    13ea:	c3                   	ret    
    13eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13ef:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    13f0:	03 72 04             	add    0x4(%edx),%esi
    13f3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    13f6:	8b 10                	mov    (%eax),%edx
    13f8:	8b 12                	mov    (%edx),%edx
    13fa:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    13fd:	8b 50 04             	mov    0x4(%eax),%edx
    1400:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1403:	39 f1                	cmp    %esi,%ecx
    1405:	75 d8                	jne    13df <free+0x4f>
    p->s.size += bp->s.size;
    1407:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    140a:	a3 9c 1c 00 00       	mov    %eax,0x1c9c
    p->s.size += bp->s.size;
    140f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1412:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1415:	89 10                	mov    %edx,(%eax)
}
    1417:	5b                   	pop    %ebx
    1418:	5e                   	pop    %esi
    1419:	5f                   	pop    %edi
    141a:	5d                   	pop    %ebp
    141b:	c3                   	ret    
    141c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001420 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1420:	f3 0f 1e fb          	endbr32 
    1424:	55                   	push   %ebp
    1425:	89 e5                	mov    %esp,%ebp
    1427:	57                   	push   %edi
    1428:	56                   	push   %esi
    1429:	53                   	push   %ebx
    142a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    142d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1430:	8b 3d 9c 1c 00 00    	mov    0x1c9c,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1436:	8d 70 07             	lea    0x7(%eax),%esi
    1439:	c1 ee 03             	shr    $0x3,%esi
    143c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    143f:	85 ff                	test   %edi,%edi
    1441:	0f 84 a9 00 00 00    	je     14f0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1447:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    1449:	8b 48 04             	mov    0x4(%eax),%ecx
    144c:	39 f1                	cmp    %esi,%ecx
    144e:	73 6d                	jae    14bd <malloc+0x9d>
    1450:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1456:	bb 00 10 00 00       	mov    $0x1000,%ebx
    145b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    145e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1465:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1468:	eb 17                	jmp    1481 <malloc+0x61>
    146a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1470:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1472:	8b 4a 04             	mov    0x4(%edx),%ecx
    1475:	39 f1                	cmp    %esi,%ecx
    1477:	73 4f                	jae    14c8 <malloc+0xa8>
    1479:	8b 3d 9c 1c 00 00    	mov    0x1c9c,%edi
    147f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1481:	39 c7                	cmp    %eax,%edi
    1483:	75 eb                	jne    1470 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1485:	83 ec 0c             	sub    $0xc,%esp
    1488:	ff 75 e4             	pushl  -0x1c(%ebp)
    148b:	e8 55 01 00 00       	call   15e5 <sbrk>
  if(p == (char*)-1)
    1490:	83 c4 10             	add    $0x10,%esp
    1493:	83 f8 ff             	cmp    $0xffffffff,%eax
    1496:	74 1b                	je     14b3 <malloc+0x93>
  hp->s.size = nu;
    1498:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    149b:	83 ec 0c             	sub    $0xc,%esp
    149e:	83 c0 08             	add    $0x8,%eax
    14a1:	50                   	push   %eax
    14a2:	e8 e9 fe ff ff       	call   1390 <free>
  return freep;
    14a7:	a1 9c 1c 00 00       	mov    0x1c9c,%eax
      if((p = morecore(nunits)) == 0)
    14ac:	83 c4 10             	add    $0x10,%esp
    14af:	85 c0                	test   %eax,%eax
    14b1:	75 bd                	jne    1470 <malloc+0x50>
        return 0;
  }
}
    14b3:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    14b6:	31 c0                	xor    %eax,%eax
}
    14b8:	5b                   	pop    %ebx
    14b9:	5e                   	pop    %esi
    14ba:	5f                   	pop    %edi
    14bb:	5d                   	pop    %ebp
    14bc:	c3                   	ret    
    if(p->s.size >= nunits){
    14bd:	89 c2                	mov    %eax,%edx
    14bf:	89 f8                	mov    %edi,%eax
    14c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    14c8:	39 ce                	cmp    %ecx,%esi
    14ca:	74 54                	je     1520 <malloc+0x100>
        p->s.size -= nunits;
    14cc:	29 f1                	sub    %esi,%ecx
    14ce:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    14d1:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    14d4:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    14d7:	a3 9c 1c 00 00       	mov    %eax,0x1c9c
}
    14dc:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    14df:	8d 42 08             	lea    0x8(%edx),%eax
}
    14e2:	5b                   	pop    %ebx
    14e3:	5e                   	pop    %esi
    14e4:	5f                   	pop    %edi
    14e5:	5d                   	pop    %ebp
    14e6:	c3                   	ret    
    14e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    14ee:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    14f0:	c7 05 9c 1c 00 00 a0 	movl   $0x1ca0,0x1c9c
    14f7:	1c 00 00 
    base.s.size = 0;
    14fa:	bf a0 1c 00 00       	mov    $0x1ca0,%edi
    base.s.ptr = freep = prevp = &base;
    14ff:	c7 05 a0 1c 00 00 a0 	movl   $0x1ca0,0x1ca0
    1506:	1c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1509:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    150b:	c7 05 a4 1c 00 00 00 	movl   $0x0,0x1ca4
    1512:	00 00 00 
    if(p->s.size >= nunits){
    1515:	e9 36 ff ff ff       	jmp    1450 <malloc+0x30>
    151a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1520:	8b 0a                	mov    (%edx),%ecx
    1522:	89 08                	mov    %ecx,(%eax)
    1524:	eb b1                	jmp    14d7 <malloc+0xb7>
    1526:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    152d:	8d 76 00             	lea    0x0(%esi),%esi

00001530 <thread_create>:
{
    1530:	f3 0f 1e fb          	endbr32 
    1534:	55                   	push   %ebp
    1535:	89 e5                	mov    %esp,%ebp
    1537:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    153a:	68 00 10 00 00       	push   $0x1000
    153f:	e8 dc fe ff ff       	call   1420 <malloc>
return clone(start_routine,arg1,arg2,stack);
    1544:	50                   	push   %eax
    1545:	ff 75 10             	pushl  0x10(%ebp)
    1548:	ff 75 0c             	pushl  0xc(%ebp)
    154b:	ff 75 08             	pushl  0x8(%ebp)
    154e:	e8 d2 00 00 00       	call   1625 <clone>
}
    1553:	c9                   	leave  
    1554:	c3                   	ret    

00001555 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1555:	b8 01 00 00 00       	mov    $0x1,%eax
    155a:	cd 40                	int    $0x40
    155c:	c3                   	ret    

0000155d <exit>:
SYSCALL(exit)
    155d:	b8 02 00 00 00       	mov    $0x2,%eax
    1562:	cd 40                	int    $0x40
    1564:	c3                   	ret    

00001565 <wait>:
SYSCALL(wait)
    1565:	b8 03 00 00 00       	mov    $0x3,%eax
    156a:	cd 40                	int    $0x40
    156c:	c3                   	ret    

0000156d <pipe>:
SYSCALL(pipe)
    156d:	b8 04 00 00 00       	mov    $0x4,%eax
    1572:	cd 40                	int    $0x40
    1574:	c3                   	ret    

00001575 <read>:
SYSCALL(read)
    1575:	b8 05 00 00 00       	mov    $0x5,%eax
    157a:	cd 40                	int    $0x40
    157c:	c3                   	ret    

0000157d <write>:
SYSCALL(write)
    157d:	b8 10 00 00 00       	mov    $0x10,%eax
    1582:	cd 40                	int    $0x40
    1584:	c3                   	ret    

00001585 <close>:
SYSCALL(close)
    1585:	b8 15 00 00 00       	mov    $0x15,%eax
    158a:	cd 40                	int    $0x40
    158c:	c3                   	ret    

0000158d <kill>:
SYSCALL(kill)
    158d:	b8 06 00 00 00       	mov    $0x6,%eax
    1592:	cd 40                	int    $0x40
    1594:	c3                   	ret    

00001595 <exec>:
SYSCALL(exec)
    1595:	b8 07 00 00 00       	mov    $0x7,%eax
    159a:	cd 40                	int    $0x40
    159c:	c3                   	ret    

0000159d <open>:
SYSCALL(open)
    159d:	b8 0f 00 00 00       	mov    $0xf,%eax
    15a2:	cd 40                	int    $0x40
    15a4:	c3                   	ret    

000015a5 <mknod>:
SYSCALL(mknod)
    15a5:	b8 11 00 00 00       	mov    $0x11,%eax
    15aa:	cd 40                	int    $0x40
    15ac:	c3                   	ret    

000015ad <unlink>:
SYSCALL(unlink)
    15ad:	b8 12 00 00 00       	mov    $0x12,%eax
    15b2:	cd 40                	int    $0x40
    15b4:	c3                   	ret    

000015b5 <fstat>:
SYSCALL(fstat)
    15b5:	b8 08 00 00 00       	mov    $0x8,%eax
    15ba:	cd 40                	int    $0x40
    15bc:	c3                   	ret    

000015bd <link>:
SYSCALL(link)
    15bd:	b8 13 00 00 00       	mov    $0x13,%eax
    15c2:	cd 40                	int    $0x40
    15c4:	c3                   	ret    

000015c5 <mkdir>:
SYSCALL(mkdir)
    15c5:	b8 14 00 00 00       	mov    $0x14,%eax
    15ca:	cd 40                	int    $0x40
    15cc:	c3                   	ret    

000015cd <chdir>:
SYSCALL(chdir)
    15cd:	b8 09 00 00 00       	mov    $0x9,%eax
    15d2:	cd 40                	int    $0x40
    15d4:	c3                   	ret    

000015d5 <dup>:
SYSCALL(dup)
    15d5:	b8 0a 00 00 00       	mov    $0xa,%eax
    15da:	cd 40                	int    $0x40
    15dc:	c3                   	ret    

000015dd <getpid>:
SYSCALL(getpid)
    15dd:	b8 0b 00 00 00       	mov    $0xb,%eax
    15e2:	cd 40                	int    $0x40
    15e4:	c3                   	ret    

000015e5 <sbrk>:
SYSCALL(sbrk)
    15e5:	b8 0c 00 00 00       	mov    $0xc,%eax
    15ea:	cd 40                	int    $0x40
    15ec:	c3                   	ret    

000015ed <sleep>:
SYSCALL(sleep)
    15ed:	b8 0d 00 00 00       	mov    $0xd,%eax
    15f2:	cd 40                	int    $0x40
    15f4:	c3                   	ret    

000015f5 <uptime>:
SYSCALL(uptime)
    15f5:	b8 0e 00 00 00       	mov    $0xe,%eax
    15fa:	cd 40                	int    $0x40
    15fc:	c3                   	ret    

000015fd <count>:
SYSCALL(count)
    15fd:	b8 16 00 00 00       	mov    $0x16,%eax
    1602:	cd 40                	int    $0x40
    1604:	c3                   	ret    

00001605 <settickets>:

SYSCALL(settickets)
    1605:	b8 17 00 00 00       	mov    $0x17,%eax
    160a:	cd 40                	int    $0x40
    160c:	c3                   	ret    

0000160d <getpinfo>:
SYSCALL(getpinfo)
    160d:	b8 18 00 00 00       	mov    $0x18,%eax
    1612:	cd 40                	int    $0x40
    1614:	c3                   	ret    

00001615 <mprotect>:

SYSCALL(mprotect)
    1615:	b8 19 00 00 00       	mov    $0x19,%eax
    161a:	cd 40                	int    $0x40
    161c:	c3                   	ret    

0000161d <munprotect>:
SYSCALL(munprotect)
    161d:	b8 1a 00 00 00       	mov    $0x1a,%eax
    1622:	cd 40                	int    $0x40
    1624:	c3                   	ret    

00001625 <clone>:

SYSCALL(clone)
    1625:	b8 1b 00 00 00       	mov    $0x1b,%eax
    162a:	cd 40                	int    $0x40
    162c:	c3                   	ret    

0000162d <join>:
SYSCALL(join)
    162d:	b8 1c 00 00 00       	mov    $0x1c,%eax
    1632:	cd 40                	int    $0x40
    1634:	c3                   	ret    
    1635:	66 90                	xchg   %ax,%ax
    1637:	66 90                	xchg   %ax,%ax
    1639:	66 90                	xchg   %ax,%ax
    163b:	66 90                	xchg   %ax,%ax
    163d:	66 90                	xchg   %ax,%ax
    163f:	90                   	nop

00001640 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1640:	55                   	push   %ebp
    1641:	89 e5                	mov    %esp,%ebp
    1643:	57                   	push   %edi
    1644:	56                   	push   %esi
    1645:	53                   	push   %ebx
    1646:	83 ec 3c             	sub    $0x3c,%esp
    1649:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    164c:	89 d1                	mov    %edx,%ecx
{
    164e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    1651:	85 d2                	test   %edx,%edx
    1653:	0f 89 7f 00 00 00    	jns    16d8 <printint+0x98>
    1659:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    165d:	74 79                	je     16d8 <printint+0x98>
    neg = 1;
    165f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1666:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1668:	31 db                	xor    %ebx,%ebx
    166a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    166d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1670:	89 c8                	mov    %ecx,%eax
    1672:	31 d2                	xor    %edx,%edx
    1674:	89 cf                	mov    %ecx,%edi
    1676:	f7 75 c4             	divl   -0x3c(%ebp)
    1679:	0f b6 92 50 19 00 00 	movzbl 0x1950(%edx),%edx
    1680:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1683:	89 d8                	mov    %ebx,%eax
    1685:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1688:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    168b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    168e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1691:	76 dd                	jbe    1670 <printint+0x30>
  if(neg)
    1693:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1696:	85 c9                	test   %ecx,%ecx
    1698:	74 0c                	je     16a6 <printint+0x66>
    buf[i++] = '-';
    169a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    169f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    16a1:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    16a6:	8b 7d b8             	mov    -0x48(%ebp),%edi
    16a9:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    16ad:	eb 07                	jmp    16b6 <printint+0x76>
    16af:	90                   	nop
    16b0:	0f b6 13             	movzbl (%ebx),%edx
    16b3:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    16b6:	83 ec 04             	sub    $0x4,%esp
    16b9:	88 55 d7             	mov    %dl,-0x29(%ebp)
    16bc:	6a 01                	push   $0x1
    16be:	56                   	push   %esi
    16bf:	57                   	push   %edi
    16c0:	e8 b8 fe ff ff       	call   157d <write>
  while(--i >= 0)
    16c5:	83 c4 10             	add    $0x10,%esp
    16c8:	39 de                	cmp    %ebx,%esi
    16ca:	75 e4                	jne    16b0 <printint+0x70>
    putc(fd, buf[i]);
}
    16cc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    16cf:	5b                   	pop    %ebx
    16d0:	5e                   	pop    %esi
    16d1:	5f                   	pop    %edi
    16d2:	5d                   	pop    %ebp
    16d3:	c3                   	ret    
    16d4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    16d8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    16df:	eb 87                	jmp    1668 <printint+0x28>
    16e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    16e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    16ef:	90                   	nop

000016f0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    16f0:	f3 0f 1e fb          	endbr32 
    16f4:	55                   	push   %ebp
    16f5:	89 e5                	mov    %esp,%ebp
    16f7:	57                   	push   %edi
    16f8:	56                   	push   %esi
    16f9:	53                   	push   %ebx
    16fa:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    16fd:	8b 75 0c             	mov    0xc(%ebp),%esi
    1700:	0f b6 1e             	movzbl (%esi),%ebx
    1703:	84 db                	test   %bl,%bl
    1705:	0f 84 b4 00 00 00    	je     17bf <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    170b:	8d 45 10             	lea    0x10(%ebp),%eax
    170e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1711:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    1714:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    1716:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1719:	eb 33                	jmp    174e <printf+0x5e>
    171b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    171f:	90                   	nop
    1720:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1723:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1728:	83 f8 25             	cmp    $0x25,%eax
    172b:	74 17                	je     1744 <printf+0x54>
  write(fd, &c, 1);
    172d:	83 ec 04             	sub    $0x4,%esp
    1730:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1733:	6a 01                	push   $0x1
    1735:	57                   	push   %edi
    1736:	ff 75 08             	pushl  0x8(%ebp)
    1739:	e8 3f fe ff ff       	call   157d <write>
    173e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    1741:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1744:	0f b6 1e             	movzbl (%esi),%ebx
    1747:	83 c6 01             	add    $0x1,%esi
    174a:	84 db                	test   %bl,%bl
    174c:	74 71                	je     17bf <printf+0xcf>
    c = fmt[i] & 0xff;
    174e:	0f be cb             	movsbl %bl,%ecx
    1751:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1754:	85 d2                	test   %edx,%edx
    1756:	74 c8                	je     1720 <printf+0x30>
      }
    } else if(state == '%'){
    1758:	83 fa 25             	cmp    $0x25,%edx
    175b:	75 e7                	jne    1744 <printf+0x54>
      if(c == 'd'){
    175d:	83 f8 64             	cmp    $0x64,%eax
    1760:	0f 84 9a 00 00 00    	je     1800 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1766:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    176c:	83 f9 70             	cmp    $0x70,%ecx
    176f:	74 5f                	je     17d0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1771:	83 f8 73             	cmp    $0x73,%eax
    1774:	0f 84 d6 00 00 00    	je     1850 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    177a:	83 f8 63             	cmp    $0x63,%eax
    177d:	0f 84 8d 00 00 00    	je     1810 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1783:	83 f8 25             	cmp    $0x25,%eax
    1786:	0f 84 b4 00 00 00    	je     1840 <printf+0x150>
  write(fd, &c, 1);
    178c:	83 ec 04             	sub    $0x4,%esp
    178f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1793:	6a 01                	push   $0x1
    1795:	57                   	push   %edi
    1796:	ff 75 08             	pushl  0x8(%ebp)
    1799:	e8 df fd ff ff       	call   157d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    179e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    17a1:	83 c4 0c             	add    $0xc,%esp
    17a4:	6a 01                	push   $0x1
    17a6:	83 c6 01             	add    $0x1,%esi
    17a9:	57                   	push   %edi
    17aa:	ff 75 08             	pushl  0x8(%ebp)
    17ad:	e8 cb fd ff ff       	call   157d <write>
  for(i = 0; fmt[i]; i++){
    17b2:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    17b6:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    17b9:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    17bb:	84 db                	test   %bl,%bl
    17bd:	75 8f                	jne    174e <printf+0x5e>
    }
  }
}
    17bf:	8d 65 f4             	lea    -0xc(%ebp),%esp
    17c2:	5b                   	pop    %ebx
    17c3:	5e                   	pop    %esi
    17c4:	5f                   	pop    %edi
    17c5:	5d                   	pop    %ebp
    17c6:	c3                   	ret    
    17c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17ce:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    17d0:	83 ec 0c             	sub    $0xc,%esp
    17d3:	b9 10 00 00 00       	mov    $0x10,%ecx
    17d8:	6a 00                	push   $0x0
    17da:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    17dd:	8b 45 08             	mov    0x8(%ebp),%eax
    17e0:	8b 13                	mov    (%ebx),%edx
    17e2:	e8 59 fe ff ff       	call   1640 <printint>
        ap++;
    17e7:	89 d8                	mov    %ebx,%eax
    17e9:	83 c4 10             	add    $0x10,%esp
      state = 0;
    17ec:	31 d2                	xor    %edx,%edx
        ap++;
    17ee:	83 c0 04             	add    $0x4,%eax
    17f1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    17f4:	e9 4b ff ff ff       	jmp    1744 <printf+0x54>
    17f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1800:	83 ec 0c             	sub    $0xc,%esp
    1803:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1808:	6a 01                	push   $0x1
    180a:	eb ce                	jmp    17da <printf+0xea>
    180c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1810:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1813:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1816:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1818:	6a 01                	push   $0x1
        ap++;
    181a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    181d:	57                   	push   %edi
    181e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1821:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1824:	e8 54 fd ff ff       	call   157d <write>
        ap++;
    1829:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    182c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    182f:	31 d2                	xor    %edx,%edx
    1831:	e9 0e ff ff ff       	jmp    1744 <printf+0x54>
    1836:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    183d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1840:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1843:	83 ec 04             	sub    $0x4,%esp
    1846:	e9 59 ff ff ff       	jmp    17a4 <printf+0xb4>
    184b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    184f:	90                   	nop
        s = (char*)*ap;
    1850:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1853:	8b 18                	mov    (%eax),%ebx
        ap++;
    1855:	83 c0 04             	add    $0x4,%eax
    1858:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    185b:	85 db                	test   %ebx,%ebx
    185d:	74 17                	je     1876 <printf+0x186>
        while(*s != 0){
    185f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1862:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1864:	84 c0                	test   %al,%al
    1866:	0f 84 d8 fe ff ff    	je     1744 <printf+0x54>
    186c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    186f:	89 de                	mov    %ebx,%esi
    1871:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1874:	eb 1a                	jmp    1890 <printf+0x1a0>
          s = "(null)";
    1876:	bb 47 19 00 00       	mov    $0x1947,%ebx
        while(*s != 0){
    187b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    187e:	b8 28 00 00 00       	mov    $0x28,%eax
    1883:	89 de                	mov    %ebx,%esi
    1885:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1888:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    188f:	90                   	nop
  write(fd, &c, 1);
    1890:	83 ec 04             	sub    $0x4,%esp
          s++;
    1893:	83 c6 01             	add    $0x1,%esi
    1896:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1899:	6a 01                	push   $0x1
    189b:	57                   	push   %edi
    189c:	53                   	push   %ebx
    189d:	e8 db fc ff ff       	call   157d <write>
        while(*s != 0){
    18a2:	0f b6 06             	movzbl (%esi),%eax
    18a5:	83 c4 10             	add    $0x10,%esp
    18a8:	84 c0                	test   %al,%al
    18aa:	75 e4                	jne    1890 <printf+0x1a0>
    18ac:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    18af:	31 d2                	xor    %edx,%edx
    18b1:	e9 8e fe ff ff       	jmp    1744 <printf+0x54>
