
_pro_test2:     file format elf32-i386


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
      char *first = sbrk(0);
    1013:	83 ec 0c             	sub    $0xc,%esp
    1016:	6a 00                	push   $0x0
    1018:	e8 68 06 00 00       	call   1685 <sbrk>
      sbrk(PGSIZE << 1);
    101d:	c7 04 24 00 20 00 00 	movl   $0x2000,(%esp)
      char *first = sbrk(0);
    1024:	89 c3                	mov    %eax,%ebx
      sbrk(PGSIZE << 1);
    1026:	e8 5a 06 00 00       	call   1685 <sbrk>
      char *second = first + PGSIZE;
      *first = 10;
    102b:	c6 03 0a             	movb   $0xa,(%ebx)
      *second = 20;
    102e:	c6 83 00 10 00 00 14 	movb   $0x14,0x1000(%ebx)
      printf(1, "make the 2 pages read only\n");
    1035:	59                   	pop    %ecx
    1036:	58                   	pop    %eax
    1037:	68 58 19 00 00       	push   $0x1958
    103c:	6a 01                	push   $0x1
    103e:	e8 4d 07 00 00       	call   1790 <printf>
      mprotect(first, 2);
    1043:	58                   	pop    %eax
    1044:	5a                   	pop    %edx
    1045:	6a 02                	push   $0x2
    1047:	53                   	push   %ebx
    1048:	e8 68 06 00 00       	call   16b5 <mprotect>
      printf(1, "make the second page read/write\n");
    104d:	59                   	pop    %ecx
    104e:	58                   	pop    %eax
    104f:	68 f4 19 00 00       	push   $0x19f4
    1054:	6a 01                	push   $0x1
    1056:	e8 35 07 00 00       	call   1790 <printf>
      munprotect(second, 1);
    105b:	58                   	pop    %eax
      char *second = first + PGSIZE;
    105c:	8d 83 00 10 00 00    	lea    0x1000(%ebx),%eax
      munprotect(second, 1);
    1062:	5a                   	pop    %edx
    1063:	6a 01                	push   $0x1
    1065:	50                   	push   %eax
    1066:	e8 52 06 00 00       	call   16bd <munprotect>
      printf(1, "first = %d\nsecond = %d\n", *first,*second);
    106b:	0f be 83 00 10 00 00 	movsbl 0x1000(%ebx),%eax
    1072:	50                   	push   %eax
    1073:	0f be 03             	movsbl (%ebx),%eax
    1076:	50                   	push   %eax
    1077:	68 74 19 00 00       	push   $0x1974
    107c:	6a 01                	push   $0x1
    107e:	e8 0d 07 00 00       	call   1790 <printf>
      int pid = fork();
    1083:	83 c4 20             	add    $0x20,%esp
    1086:	e8 6a 05 00 00       	call   15f5 <fork>
      if (pid == 0){
    108b:	85 c0                	test   %eax,%eax
    108d:	74 66                	je     10f5 <main+0xf5>
            *first = 1;
            *second  = 2;
            printf(1, "first = %d\nsecond = %d\n", *first,*second);
            exit();
      }
      else if (pid > 0){
    108f:	7e 5f                	jle    10f0 <main+0xf0>
            wait();
    1091:	e8 6f 05 00 00       	call   1605 <wait>
            printf(1, "-----parent-----\n");
    1096:	50                   	push   %eax
    1097:	50                   	push   %eax
    1098:	68 b9 19 00 00       	push   $0x19b9
    109d:	6a 01                	push   $0x1
    109f:	e8 ec 06 00 00       	call   1790 <printf>
            printf(1, "write on the second page\n");
    10a4:	5a                   	pop    %edx
    10a5:	59                   	pop    %ecx
    10a6:	68 cb 19 00 00       	push   $0x19cb
    10ab:	6a 01                	push   $0x1
    10ad:	e8 de 06 00 00       	call   1790 <printf>
            *second = 22;
    10b2:	c6 83 00 10 00 00 16 	movb   $0x16,0x1000(%ebx)
            printf(1, "first = %d\nsecond = %d\n", *first,*second);
    10b9:	6a 16                	push   $0x16
    10bb:	0f be 03             	movsbl (%ebx),%eax
    10be:	50                   	push   %eax
    10bf:	68 74 19 00 00       	push   $0x1974
    10c4:	6a 01                	push   $0x1
    10c6:	e8 c5 06 00 00       	call   1790 <printf>
            printf(1, "write on the first page \n'still read only **will trap**'\n");
    10cb:	83 c4 18             	add    $0x18,%esp
    10ce:	68 48 1a 00 00       	push   $0x1a48
    10d3:	6a 01                	push   $0x1
    10d5:	e8 b6 06 00 00       	call   1790 <printf>
            *first = 11;
    10da:	c6 03 0b             	movb   $0xb,(%ebx)
            printf(1, "\nTEST FAILED\n");
    10dd:	5b                   	pop    %ebx
    10de:	58                   	pop    %eax
    10df:	68 e5 19 00 00       	push   $0x19e5
    10e4:	6a 01                	push   $0x1
    10e6:	e8 a5 06 00 00       	call   1790 <printf>
            exit();
    10eb:	e8 0d 05 00 00       	call   15fd <exit>
      }
      exit();
    10f0:	e8 08 05 00 00       	call   15fd <exit>
            printf(1, "-----child-----\n");
    10f5:	50                   	push   %eax
    10f6:	50                   	push   %eax
    10f7:	68 8c 19 00 00       	push   $0x198c
    10fc:	6a 01                	push   $0x1
    10fe:	e8 8d 06 00 00       	call   1790 <printf>
            printf(1, "make the first page read/write on the child\n");
    1103:	58                   	pop    %eax
    1104:	5a                   	pop    %edx
    1105:	68 18 1a 00 00       	push   $0x1a18
    110a:	6a 01                	push   $0x1
    110c:	e8 7f 06 00 00       	call   1790 <printf>
            munprotect(first, 1);
    1111:	59                   	pop    %ecx
    1112:	58                   	pop    %eax
    1113:	6a 01                	push   $0x1
    1115:	53                   	push   %ebx
    1116:	e8 a2 05 00 00       	call   16bd <munprotect>
            printf(1, "write on both of the pages\n");
    111b:	58                   	pop    %eax
    111c:	5a                   	pop    %edx
    111d:	68 9d 19 00 00       	push   $0x199d
    1122:	6a 01                	push   $0x1
    1124:	e8 67 06 00 00       	call   1790 <printf>
            *first = 1;
    1129:	c6 03 01             	movb   $0x1,(%ebx)
            *second  = 2;
    112c:	c6 83 00 10 00 00 02 	movb   $0x2,0x1000(%ebx)
            printf(1, "first = %d\nsecond = %d\n", *first,*second);
    1133:	6a 02                	push   $0x2
    1135:	6a 01                	push   $0x1
    1137:	68 74 19 00 00       	push   $0x1974
    113c:	6a 01                	push   $0x1
    113e:	e8 4d 06 00 00       	call   1790 <printf>
            exit();
    1143:	83 c4 20             	add    $0x20,%esp
    1146:	e8 b2 04 00 00       	call   15fd <exit>
    114b:	66 90                	xchg   %ax,%ax
    114d:	66 90                	xchg   %ax,%ax
    114f:	90                   	nop

00001150 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1150:	f3 0f 1e fb          	endbr32 
    1154:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1155:	31 c0                	xor    %eax,%eax
{
    1157:	89 e5                	mov    %esp,%ebp
    1159:	53                   	push   %ebx
    115a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    115d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1160:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1164:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1167:	83 c0 01             	add    $0x1,%eax
    116a:	84 d2                	test   %dl,%dl
    116c:	75 f2                	jne    1160 <strcpy+0x10>
    ;
  return os;
}
    116e:	89 c8                	mov    %ecx,%eax
    1170:	5b                   	pop    %ebx
    1171:	5d                   	pop    %ebp
    1172:	c3                   	ret    
    1173:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    117a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001180 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1180:	f3 0f 1e fb          	endbr32 
    1184:	55                   	push   %ebp
    1185:	89 e5                	mov    %esp,%ebp
    1187:	53                   	push   %ebx
    1188:	8b 4d 08             	mov    0x8(%ebp),%ecx
    118b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    118e:	0f b6 01             	movzbl (%ecx),%eax
    1191:	0f b6 1a             	movzbl (%edx),%ebx
    1194:	84 c0                	test   %al,%al
    1196:	75 19                	jne    11b1 <strcmp+0x31>
    1198:	eb 26                	jmp    11c0 <strcmp+0x40>
    119a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11a0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    11a4:	83 c1 01             	add    $0x1,%ecx
    11a7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    11aa:	0f b6 1a             	movzbl (%edx),%ebx
    11ad:	84 c0                	test   %al,%al
    11af:	74 0f                	je     11c0 <strcmp+0x40>
    11b1:	38 d8                	cmp    %bl,%al
    11b3:	74 eb                	je     11a0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    11b5:	29 d8                	sub    %ebx,%eax
}
    11b7:	5b                   	pop    %ebx
    11b8:	5d                   	pop    %ebp
    11b9:	c3                   	ret    
    11ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11c0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    11c2:	29 d8                	sub    %ebx,%eax
}
    11c4:	5b                   	pop    %ebx
    11c5:	5d                   	pop    %ebp
    11c6:	c3                   	ret    
    11c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ce:	66 90                	xchg   %ax,%ax

000011d0 <strlen>:

uint
strlen(const char *s)
{
    11d0:	f3 0f 1e fb          	endbr32 
    11d4:	55                   	push   %ebp
    11d5:	89 e5                	mov    %esp,%ebp
    11d7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    11da:	80 3a 00             	cmpb   $0x0,(%edx)
    11dd:	74 21                	je     1200 <strlen+0x30>
    11df:	31 c0                	xor    %eax,%eax
    11e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11e8:	83 c0 01             	add    $0x1,%eax
    11eb:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    11ef:	89 c1                	mov    %eax,%ecx
    11f1:	75 f5                	jne    11e8 <strlen+0x18>
    ;
  return n;
}
    11f3:	89 c8                	mov    %ecx,%eax
    11f5:	5d                   	pop    %ebp
    11f6:	c3                   	ret    
    11f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11fe:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1200:	31 c9                	xor    %ecx,%ecx
}
    1202:	5d                   	pop    %ebp
    1203:	89 c8                	mov    %ecx,%eax
    1205:	c3                   	ret    
    1206:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    120d:	8d 76 00             	lea    0x0(%esi),%esi

00001210 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1210:	f3 0f 1e fb          	endbr32 
    1214:	55                   	push   %ebp
    1215:	89 e5                	mov    %esp,%ebp
    1217:	57                   	push   %edi
    1218:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    121b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    121e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1221:	89 d7                	mov    %edx,%edi
    1223:	fc                   	cld    
    1224:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1226:	89 d0                	mov    %edx,%eax
    1228:	5f                   	pop    %edi
    1229:	5d                   	pop    %ebp
    122a:	c3                   	ret    
    122b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    122f:	90                   	nop

00001230 <strchr>:

char*
strchr(const char *s, char c)
{
    1230:	f3 0f 1e fb          	endbr32 
    1234:	55                   	push   %ebp
    1235:	89 e5                	mov    %esp,%ebp
    1237:	8b 45 08             	mov    0x8(%ebp),%eax
    123a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    123e:	0f b6 10             	movzbl (%eax),%edx
    1241:	84 d2                	test   %dl,%dl
    1243:	75 16                	jne    125b <strchr+0x2b>
    1245:	eb 21                	jmp    1268 <strchr+0x38>
    1247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    124e:	66 90                	xchg   %ax,%ax
    1250:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1254:	83 c0 01             	add    $0x1,%eax
    1257:	84 d2                	test   %dl,%dl
    1259:	74 0d                	je     1268 <strchr+0x38>
    if(*s == c)
    125b:	38 d1                	cmp    %dl,%cl
    125d:	75 f1                	jne    1250 <strchr+0x20>
      return (char*)s;
  return 0;
}
    125f:	5d                   	pop    %ebp
    1260:	c3                   	ret    
    1261:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1268:	31 c0                	xor    %eax,%eax
}
    126a:	5d                   	pop    %ebp
    126b:	c3                   	ret    
    126c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001270 <gets>:

char*
gets(char *buf, int max)
{
    1270:	f3 0f 1e fb          	endbr32 
    1274:	55                   	push   %ebp
    1275:	89 e5                	mov    %esp,%ebp
    1277:	57                   	push   %edi
    1278:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1279:	31 f6                	xor    %esi,%esi
{
    127b:	53                   	push   %ebx
    127c:	89 f3                	mov    %esi,%ebx
    127e:	83 ec 1c             	sub    $0x1c,%esp
    1281:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1284:	eb 33                	jmp    12b9 <gets+0x49>
    1286:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    128d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1290:	83 ec 04             	sub    $0x4,%esp
    1293:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1296:	6a 01                	push   $0x1
    1298:	50                   	push   %eax
    1299:	6a 00                	push   $0x0
    129b:	e8 75 03 00 00       	call   1615 <read>
    if(cc < 1)
    12a0:	83 c4 10             	add    $0x10,%esp
    12a3:	85 c0                	test   %eax,%eax
    12a5:	7e 1c                	jle    12c3 <gets+0x53>
      break;
    buf[i++] = c;
    12a7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    12ab:	83 c7 01             	add    $0x1,%edi
    12ae:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    12b1:	3c 0a                	cmp    $0xa,%al
    12b3:	74 23                	je     12d8 <gets+0x68>
    12b5:	3c 0d                	cmp    $0xd,%al
    12b7:	74 1f                	je     12d8 <gets+0x68>
  for(i=0; i+1 < max; ){
    12b9:	83 c3 01             	add    $0x1,%ebx
    12bc:	89 fe                	mov    %edi,%esi
    12be:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    12c1:	7c cd                	jl     1290 <gets+0x20>
    12c3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    12c5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    12c8:	c6 03 00             	movb   $0x0,(%ebx)
}
    12cb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12ce:	5b                   	pop    %ebx
    12cf:	5e                   	pop    %esi
    12d0:	5f                   	pop    %edi
    12d1:	5d                   	pop    %ebp
    12d2:	c3                   	ret    
    12d3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12d7:	90                   	nop
    12d8:	8b 75 08             	mov    0x8(%ebp),%esi
    12db:	8b 45 08             	mov    0x8(%ebp),%eax
    12de:	01 de                	add    %ebx,%esi
    12e0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    12e2:	c6 03 00             	movb   $0x0,(%ebx)
}
    12e5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12e8:	5b                   	pop    %ebx
    12e9:	5e                   	pop    %esi
    12ea:	5f                   	pop    %edi
    12eb:	5d                   	pop    %ebp
    12ec:	c3                   	ret    
    12ed:	8d 76 00             	lea    0x0(%esi),%esi

000012f0 <stat>:

int
stat(const char *n, struct stat *st)
{
    12f0:	f3 0f 1e fb          	endbr32 
    12f4:	55                   	push   %ebp
    12f5:	89 e5                	mov    %esp,%ebp
    12f7:	56                   	push   %esi
    12f8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    12f9:	83 ec 08             	sub    $0x8,%esp
    12fc:	6a 00                	push   $0x0
    12fe:	ff 75 08             	pushl  0x8(%ebp)
    1301:	e8 37 03 00 00       	call   163d <open>
  if(fd < 0)
    1306:	83 c4 10             	add    $0x10,%esp
    1309:	85 c0                	test   %eax,%eax
    130b:	78 2b                	js     1338 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    130d:	83 ec 08             	sub    $0x8,%esp
    1310:	ff 75 0c             	pushl  0xc(%ebp)
    1313:	89 c3                	mov    %eax,%ebx
    1315:	50                   	push   %eax
    1316:	e8 3a 03 00 00       	call   1655 <fstat>
  close(fd);
    131b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    131e:	89 c6                	mov    %eax,%esi
  close(fd);
    1320:	e8 00 03 00 00       	call   1625 <close>
  return r;
    1325:	83 c4 10             	add    $0x10,%esp
}
    1328:	8d 65 f8             	lea    -0x8(%ebp),%esp
    132b:	89 f0                	mov    %esi,%eax
    132d:	5b                   	pop    %ebx
    132e:	5e                   	pop    %esi
    132f:	5d                   	pop    %ebp
    1330:	c3                   	ret    
    1331:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1338:	be ff ff ff ff       	mov    $0xffffffff,%esi
    133d:	eb e9                	jmp    1328 <stat+0x38>
    133f:	90                   	nop

00001340 <atoi>:

int
atoi(const char *s)
{
    1340:	f3 0f 1e fb          	endbr32 
    1344:	55                   	push   %ebp
    1345:	89 e5                	mov    %esp,%ebp
    1347:	53                   	push   %ebx
    1348:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    134b:	0f be 02             	movsbl (%edx),%eax
    134e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1351:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1354:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1359:	77 1a                	ja     1375 <atoi+0x35>
    135b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    135f:	90                   	nop
    n = n*10 + *s++ - '0';
    1360:	83 c2 01             	add    $0x1,%edx
    1363:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1366:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    136a:	0f be 02             	movsbl (%edx),%eax
    136d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1370:	80 fb 09             	cmp    $0x9,%bl
    1373:	76 eb                	jbe    1360 <atoi+0x20>
  return n;
}
    1375:	89 c8                	mov    %ecx,%eax
    1377:	5b                   	pop    %ebx
    1378:	5d                   	pop    %ebp
    1379:	c3                   	ret    
    137a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001380 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1380:	f3 0f 1e fb          	endbr32 
    1384:	55                   	push   %ebp
    1385:	89 e5                	mov    %esp,%ebp
    1387:	57                   	push   %edi
    1388:	8b 45 10             	mov    0x10(%ebp),%eax
    138b:	8b 55 08             	mov    0x8(%ebp),%edx
    138e:	56                   	push   %esi
    138f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1392:	85 c0                	test   %eax,%eax
    1394:	7e 0f                	jle    13a5 <memmove+0x25>
    1396:	01 d0                	add    %edx,%eax
  dst = vdst;
    1398:	89 d7                	mov    %edx,%edi
    139a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    13a0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    13a1:	39 f8                	cmp    %edi,%eax
    13a3:	75 fb                	jne    13a0 <memmove+0x20>
  return vdst;
}
    13a5:	5e                   	pop    %esi
    13a6:	89 d0                	mov    %edx,%eax
    13a8:	5f                   	pop    %edi
    13a9:	5d                   	pop    %ebp
    13aa:	c3                   	ret    
    13ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13af:	90                   	nop

000013b0 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    13b0:	f3 0f 1e fb          	endbr32 
    13b4:	55                   	push   %ebp
    13b5:	89 e5                	mov    %esp,%ebp
    13b7:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    13ba:	8d 45 f4             	lea    -0xc(%ebp),%eax
    13bd:	50                   	push   %eax
    13be:	e8 0a 03 00 00       	call   16cd <join>
  
  return x;
}
    13c3:	c9                   	leave  
    13c4:	c3                   	ret    
    13c5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000013d0 <lock_init>:

void lock_init(struct lock_t *lk){
    13d0:	f3 0f 1e fb          	endbr32 
    13d4:	55                   	push   %ebp
    13d5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    13d7:	8b 45 08             	mov    0x8(%ebp),%eax
    13da:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    13e0:	5d                   	pop    %ebp
    13e1:	c3                   	ret    
    13e2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000013f0 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    13f0:	f3 0f 1e fb          	endbr32 
    13f4:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    13f5:	b9 01 00 00 00       	mov    $0x1,%ecx
    13fa:	89 e5                	mov    %esp,%ebp
    13fc:	8b 55 08             	mov    0x8(%ebp),%edx
    13ff:	90                   	nop
    1400:	89 c8                	mov    %ecx,%eax
    1402:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1405:	85 c0                	test   %eax,%eax
    1407:	75 f7                	jne    1400 <lock_acquire+0x10>
}
    1409:	5d                   	pop    %ebp
    140a:	c3                   	ret    
    140b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    140f:	90                   	nop

00001410 <lock_release>:
void lock_release(struct lock_t *lk){
    1410:	f3 0f 1e fb          	endbr32 
    1414:	55                   	push   %ebp
    1415:	31 c0                	xor    %eax,%eax
    1417:	89 e5                	mov    %esp,%ebp
    1419:	8b 55 08             	mov    0x8(%ebp),%edx
    141c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    141f:	5d                   	pop    %ebp
    1420:	c3                   	ret    
    1421:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1428:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    142f:	90                   	nop

00001430 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1430:	f3 0f 1e fb          	endbr32 
    1434:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1435:	a1 d8 1d 00 00       	mov    0x1dd8,%eax
{
    143a:	89 e5                	mov    %esp,%ebp
    143c:	57                   	push   %edi
    143d:	56                   	push   %esi
    143e:	53                   	push   %ebx
    143f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1442:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1444:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1447:	39 c8                	cmp    %ecx,%eax
    1449:	73 15                	jae    1460 <free+0x30>
    144b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    144f:	90                   	nop
    1450:	39 d1                	cmp    %edx,%ecx
    1452:	72 14                	jb     1468 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1454:	39 d0                	cmp    %edx,%eax
    1456:	73 10                	jae    1468 <free+0x38>
{
    1458:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    145a:	8b 10                	mov    (%eax),%edx
    145c:	39 c8                	cmp    %ecx,%eax
    145e:	72 f0                	jb     1450 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1460:	39 d0                	cmp    %edx,%eax
    1462:	72 f4                	jb     1458 <free+0x28>
    1464:	39 d1                	cmp    %edx,%ecx
    1466:	73 f0                	jae    1458 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1468:	8b 73 fc             	mov    -0x4(%ebx),%esi
    146b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    146e:	39 fa                	cmp    %edi,%edx
    1470:	74 1e                	je     1490 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1472:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1475:	8b 50 04             	mov    0x4(%eax),%edx
    1478:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    147b:	39 f1                	cmp    %esi,%ecx
    147d:	74 28                	je     14a7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    147f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1481:	5b                   	pop    %ebx
  freep = p;
    1482:	a3 d8 1d 00 00       	mov    %eax,0x1dd8
}
    1487:	5e                   	pop    %esi
    1488:	5f                   	pop    %edi
    1489:	5d                   	pop    %ebp
    148a:	c3                   	ret    
    148b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    148f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1490:	03 72 04             	add    0x4(%edx),%esi
    1493:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1496:	8b 10                	mov    (%eax),%edx
    1498:	8b 12                	mov    (%edx),%edx
    149a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    149d:	8b 50 04             	mov    0x4(%eax),%edx
    14a0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    14a3:	39 f1                	cmp    %esi,%ecx
    14a5:	75 d8                	jne    147f <free+0x4f>
    p->s.size += bp->s.size;
    14a7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    14aa:	a3 d8 1d 00 00       	mov    %eax,0x1dd8
    p->s.size += bp->s.size;
    14af:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    14b2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    14b5:	89 10                	mov    %edx,(%eax)
}
    14b7:	5b                   	pop    %ebx
    14b8:	5e                   	pop    %esi
    14b9:	5f                   	pop    %edi
    14ba:	5d                   	pop    %ebp
    14bb:	c3                   	ret    
    14bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000014c0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    14c0:	f3 0f 1e fb          	endbr32 
    14c4:	55                   	push   %ebp
    14c5:	89 e5                	mov    %esp,%ebp
    14c7:	57                   	push   %edi
    14c8:	56                   	push   %esi
    14c9:	53                   	push   %ebx
    14ca:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    14cd:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    14d0:	8b 3d d8 1d 00 00    	mov    0x1dd8,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    14d6:	8d 70 07             	lea    0x7(%eax),%esi
    14d9:	c1 ee 03             	shr    $0x3,%esi
    14dc:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    14df:	85 ff                	test   %edi,%edi
    14e1:	0f 84 a9 00 00 00    	je     1590 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    14e7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    14e9:	8b 48 04             	mov    0x4(%eax),%ecx
    14ec:	39 f1                	cmp    %esi,%ecx
    14ee:	73 6d                	jae    155d <malloc+0x9d>
    14f0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    14f6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    14fb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    14fe:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1505:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1508:	eb 17                	jmp    1521 <malloc+0x61>
    150a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1510:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1512:	8b 4a 04             	mov    0x4(%edx),%ecx
    1515:	39 f1                	cmp    %esi,%ecx
    1517:	73 4f                	jae    1568 <malloc+0xa8>
    1519:	8b 3d d8 1d 00 00    	mov    0x1dd8,%edi
    151f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1521:	39 c7                	cmp    %eax,%edi
    1523:	75 eb                	jne    1510 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1525:	83 ec 0c             	sub    $0xc,%esp
    1528:	ff 75 e4             	pushl  -0x1c(%ebp)
    152b:	e8 55 01 00 00       	call   1685 <sbrk>
  if(p == (char*)-1)
    1530:	83 c4 10             	add    $0x10,%esp
    1533:	83 f8 ff             	cmp    $0xffffffff,%eax
    1536:	74 1b                	je     1553 <malloc+0x93>
  hp->s.size = nu;
    1538:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    153b:	83 ec 0c             	sub    $0xc,%esp
    153e:	83 c0 08             	add    $0x8,%eax
    1541:	50                   	push   %eax
    1542:	e8 e9 fe ff ff       	call   1430 <free>
  return freep;
    1547:	a1 d8 1d 00 00       	mov    0x1dd8,%eax
      if((p = morecore(nunits)) == 0)
    154c:	83 c4 10             	add    $0x10,%esp
    154f:	85 c0                	test   %eax,%eax
    1551:	75 bd                	jne    1510 <malloc+0x50>
        return 0;
  }
}
    1553:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1556:	31 c0                	xor    %eax,%eax
}
    1558:	5b                   	pop    %ebx
    1559:	5e                   	pop    %esi
    155a:	5f                   	pop    %edi
    155b:	5d                   	pop    %ebp
    155c:	c3                   	ret    
    if(p->s.size >= nunits){
    155d:	89 c2                	mov    %eax,%edx
    155f:	89 f8                	mov    %edi,%eax
    1561:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1568:	39 ce                	cmp    %ecx,%esi
    156a:	74 54                	je     15c0 <malloc+0x100>
        p->s.size -= nunits;
    156c:	29 f1                	sub    %esi,%ecx
    156e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1571:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1574:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1577:	a3 d8 1d 00 00       	mov    %eax,0x1dd8
}
    157c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    157f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1582:	5b                   	pop    %ebx
    1583:	5e                   	pop    %esi
    1584:	5f                   	pop    %edi
    1585:	5d                   	pop    %ebp
    1586:	c3                   	ret    
    1587:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    158e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1590:	c7 05 d8 1d 00 00 dc 	movl   $0x1ddc,0x1dd8
    1597:	1d 00 00 
    base.s.size = 0;
    159a:	bf dc 1d 00 00       	mov    $0x1ddc,%edi
    base.s.ptr = freep = prevp = &base;
    159f:	c7 05 dc 1d 00 00 dc 	movl   $0x1ddc,0x1ddc
    15a6:	1d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    15a9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    15ab:	c7 05 e0 1d 00 00 00 	movl   $0x0,0x1de0
    15b2:	00 00 00 
    if(p->s.size >= nunits){
    15b5:	e9 36 ff ff ff       	jmp    14f0 <malloc+0x30>
    15ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    15c0:	8b 0a                	mov    (%edx),%ecx
    15c2:	89 08                	mov    %ecx,(%eax)
    15c4:	eb b1                	jmp    1577 <malloc+0xb7>
    15c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15cd:	8d 76 00             	lea    0x0(%esi),%esi

000015d0 <thread_create>:
{
    15d0:	f3 0f 1e fb          	endbr32 
    15d4:	55                   	push   %ebp
    15d5:	89 e5                	mov    %esp,%ebp
    15d7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    15da:	68 00 10 00 00       	push   $0x1000
    15df:	e8 dc fe ff ff       	call   14c0 <malloc>
return clone(start_routine,arg1,arg2,stack);
    15e4:	50                   	push   %eax
    15e5:	ff 75 10             	pushl  0x10(%ebp)
    15e8:	ff 75 0c             	pushl  0xc(%ebp)
    15eb:	ff 75 08             	pushl  0x8(%ebp)
    15ee:	e8 d2 00 00 00       	call   16c5 <clone>
}
    15f3:	c9                   	leave  
    15f4:	c3                   	ret    

000015f5 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    15f5:	b8 01 00 00 00       	mov    $0x1,%eax
    15fa:	cd 40                	int    $0x40
    15fc:	c3                   	ret    

000015fd <exit>:
SYSCALL(exit)
    15fd:	b8 02 00 00 00       	mov    $0x2,%eax
    1602:	cd 40                	int    $0x40
    1604:	c3                   	ret    

00001605 <wait>:
SYSCALL(wait)
    1605:	b8 03 00 00 00       	mov    $0x3,%eax
    160a:	cd 40                	int    $0x40
    160c:	c3                   	ret    

0000160d <pipe>:
SYSCALL(pipe)
    160d:	b8 04 00 00 00       	mov    $0x4,%eax
    1612:	cd 40                	int    $0x40
    1614:	c3                   	ret    

00001615 <read>:
SYSCALL(read)
    1615:	b8 05 00 00 00       	mov    $0x5,%eax
    161a:	cd 40                	int    $0x40
    161c:	c3                   	ret    

0000161d <write>:
SYSCALL(write)
    161d:	b8 10 00 00 00       	mov    $0x10,%eax
    1622:	cd 40                	int    $0x40
    1624:	c3                   	ret    

00001625 <close>:
SYSCALL(close)
    1625:	b8 15 00 00 00       	mov    $0x15,%eax
    162a:	cd 40                	int    $0x40
    162c:	c3                   	ret    

0000162d <kill>:
SYSCALL(kill)
    162d:	b8 06 00 00 00       	mov    $0x6,%eax
    1632:	cd 40                	int    $0x40
    1634:	c3                   	ret    

00001635 <exec>:
SYSCALL(exec)
    1635:	b8 07 00 00 00       	mov    $0x7,%eax
    163a:	cd 40                	int    $0x40
    163c:	c3                   	ret    

0000163d <open>:
SYSCALL(open)
    163d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1642:	cd 40                	int    $0x40
    1644:	c3                   	ret    

00001645 <mknod>:
SYSCALL(mknod)
    1645:	b8 11 00 00 00       	mov    $0x11,%eax
    164a:	cd 40                	int    $0x40
    164c:	c3                   	ret    

0000164d <unlink>:
SYSCALL(unlink)
    164d:	b8 12 00 00 00       	mov    $0x12,%eax
    1652:	cd 40                	int    $0x40
    1654:	c3                   	ret    

00001655 <fstat>:
SYSCALL(fstat)
    1655:	b8 08 00 00 00       	mov    $0x8,%eax
    165a:	cd 40                	int    $0x40
    165c:	c3                   	ret    

0000165d <link>:
SYSCALL(link)
    165d:	b8 13 00 00 00       	mov    $0x13,%eax
    1662:	cd 40                	int    $0x40
    1664:	c3                   	ret    

00001665 <mkdir>:
SYSCALL(mkdir)
    1665:	b8 14 00 00 00       	mov    $0x14,%eax
    166a:	cd 40                	int    $0x40
    166c:	c3                   	ret    

0000166d <chdir>:
SYSCALL(chdir)
    166d:	b8 09 00 00 00       	mov    $0x9,%eax
    1672:	cd 40                	int    $0x40
    1674:	c3                   	ret    

00001675 <dup>:
SYSCALL(dup)
    1675:	b8 0a 00 00 00       	mov    $0xa,%eax
    167a:	cd 40                	int    $0x40
    167c:	c3                   	ret    

0000167d <getpid>:
SYSCALL(getpid)
    167d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1682:	cd 40                	int    $0x40
    1684:	c3                   	ret    

00001685 <sbrk>:
SYSCALL(sbrk)
    1685:	b8 0c 00 00 00       	mov    $0xc,%eax
    168a:	cd 40                	int    $0x40
    168c:	c3                   	ret    

0000168d <sleep>:
SYSCALL(sleep)
    168d:	b8 0d 00 00 00       	mov    $0xd,%eax
    1692:	cd 40                	int    $0x40
    1694:	c3                   	ret    

00001695 <uptime>:
SYSCALL(uptime)
    1695:	b8 0e 00 00 00       	mov    $0xe,%eax
    169a:	cd 40                	int    $0x40
    169c:	c3                   	ret    

0000169d <count>:
SYSCALL(count)
    169d:	b8 16 00 00 00       	mov    $0x16,%eax
    16a2:	cd 40                	int    $0x40
    16a4:	c3                   	ret    

000016a5 <settickets>:

SYSCALL(settickets)
    16a5:	b8 17 00 00 00       	mov    $0x17,%eax
    16aa:	cd 40                	int    $0x40
    16ac:	c3                   	ret    

000016ad <getpinfo>:
SYSCALL(getpinfo)
    16ad:	b8 18 00 00 00       	mov    $0x18,%eax
    16b2:	cd 40                	int    $0x40
    16b4:	c3                   	ret    

000016b5 <mprotect>:

SYSCALL(mprotect)
    16b5:	b8 19 00 00 00       	mov    $0x19,%eax
    16ba:	cd 40                	int    $0x40
    16bc:	c3                   	ret    

000016bd <munprotect>:
SYSCALL(munprotect)
    16bd:	b8 1a 00 00 00       	mov    $0x1a,%eax
    16c2:	cd 40                	int    $0x40
    16c4:	c3                   	ret    

000016c5 <clone>:

SYSCALL(clone)
    16c5:	b8 1b 00 00 00       	mov    $0x1b,%eax
    16ca:	cd 40                	int    $0x40
    16cc:	c3                   	ret    

000016cd <join>:
SYSCALL(join)
    16cd:	b8 1c 00 00 00       	mov    $0x1c,%eax
    16d2:	cd 40                	int    $0x40
    16d4:	c3                   	ret    
    16d5:	66 90                	xchg   %ax,%ax
    16d7:	66 90                	xchg   %ax,%ax
    16d9:	66 90                	xchg   %ax,%ax
    16db:	66 90                	xchg   %ax,%ax
    16dd:	66 90                	xchg   %ax,%ax
    16df:	90                   	nop

000016e0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    16e0:	55                   	push   %ebp
    16e1:	89 e5                	mov    %esp,%ebp
    16e3:	57                   	push   %edi
    16e4:	56                   	push   %esi
    16e5:	53                   	push   %ebx
    16e6:	83 ec 3c             	sub    $0x3c,%esp
    16e9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    16ec:	89 d1                	mov    %edx,%ecx
{
    16ee:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    16f1:	85 d2                	test   %edx,%edx
    16f3:	0f 89 7f 00 00 00    	jns    1778 <printint+0x98>
    16f9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    16fd:	74 79                	je     1778 <printint+0x98>
    neg = 1;
    16ff:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1706:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1708:	31 db                	xor    %ebx,%ebx
    170a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    170d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1710:	89 c8                	mov    %ecx,%eax
    1712:	31 d2                	xor    %edx,%edx
    1714:	89 cf                	mov    %ecx,%edi
    1716:	f7 75 c4             	divl   -0x3c(%ebp)
    1719:	0f b6 92 8c 1a 00 00 	movzbl 0x1a8c(%edx),%edx
    1720:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1723:	89 d8                	mov    %ebx,%eax
    1725:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1728:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    172b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    172e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1731:	76 dd                	jbe    1710 <printint+0x30>
  if(neg)
    1733:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1736:	85 c9                	test   %ecx,%ecx
    1738:	74 0c                	je     1746 <printint+0x66>
    buf[i++] = '-';
    173a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    173f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1741:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1746:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1749:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    174d:	eb 07                	jmp    1756 <printint+0x76>
    174f:	90                   	nop
    1750:	0f b6 13             	movzbl (%ebx),%edx
    1753:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1756:	83 ec 04             	sub    $0x4,%esp
    1759:	88 55 d7             	mov    %dl,-0x29(%ebp)
    175c:	6a 01                	push   $0x1
    175e:	56                   	push   %esi
    175f:	57                   	push   %edi
    1760:	e8 b8 fe ff ff       	call   161d <write>
  while(--i >= 0)
    1765:	83 c4 10             	add    $0x10,%esp
    1768:	39 de                	cmp    %ebx,%esi
    176a:	75 e4                	jne    1750 <printint+0x70>
    putc(fd, buf[i]);
}
    176c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    176f:	5b                   	pop    %ebx
    1770:	5e                   	pop    %esi
    1771:	5f                   	pop    %edi
    1772:	5d                   	pop    %ebp
    1773:	c3                   	ret    
    1774:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1778:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    177f:	eb 87                	jmp    1708 <printint+0x28>
    1781:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1788:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    178f:	90                   	nop

00001790 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1790:	f3 0f 1e fb          	endbr32 
    1794:	55                   	push   %ebp
    1795:	89 e5                	mov    %esp,%ebp
    1797:	57                   	push   %edi
    1798:	56                   	push   %esi
    1799:	53                   	push   %ebx
    179a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    179d:	8b 75 0c             	mov    0xc(%ebp),%esi
    17a0:	0f b6 1e             	movzbl (%esi),%ebx
    17a3:	84 db                	test   %bl,%bl
    17a5:	0f 84 b4 00 00 00    	je     185f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    17ab:	8d 45 10             	lea    0x10(%ebp),%eax
    17ae:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    17b1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    17b4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    17b6:	89 45 d0             	mov    %eax,-0x30(%ebp)
    17b9:	eb 33                	jmp    17ee <printf+0x5e>
    17bb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17bf:	90                   	nop
    17c0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    17c3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    17c8:	83 f8 25             	cmp    $0x25,%eax
    17cb:	74 17                	je     17e4 <printf+0x54>
  write(fd, &c, 1);
    17cd:	83 ec 04             	sub    $0x4,%esp
    17d0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    17d3:	6a 01                	push   $0x1
    17d5:	57                   	push   %edi
    17d6:	ff 75 08             	pushl  0x8(%ebp)
    17d9:	e8 3f fe ff ff       	call   161d <write>
    17de:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    17e1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    17e4:	0f b6 1e             	movzbl (%esi),%ebx
    17e7:	83 c6 01             	add    $0x1,%esi
    17ea:	84 db                	test   %bl,%bl
    17ec:	74 71                	je     185f <printf+0xcf>
    c = fmt[i] & 0xff;
    17ee:	0f be cb             	movsbl %bl,%ecx
    17f1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    17f4:	85 d2                	test   %edx,%edx
    17f6:	74 c8                	je     17c0 <printf+0x30>
      }
    } else if(state == '%'){
    17f8:	83 fa 25             	cmp    $0x25,%edx
    17fb:	75 e7                	jne    17e4 <printf+0x54>
      if(c == 'd'){
    17fd:	83 f8 64             	cmp    $0x64,%eax
    1800:	0f 84 9a 00 00 00    	je     18a0 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1806:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    180c:	83 f9 70             	cmp    $0x70,%ecx
    180f:	74 5f                	je     1870 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1811:	83 f8 73             	cmp    $0x73,%eax
    1814:	0f 84 d6 00 00 00    	je     18f0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    181a:	83 f8 63             	cmp    $0x63,%eax
    181d:	0f 84 8d 00 00 00    	je     18b0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1823:	83 f8 25             	cmp    $0x25,%eax
    1826:	0f 84 b4 00 00 00    	je     18e0 <printf+0x150>
  write(fd, &c, 1);
    182c:	83 ec 04             	sub    $0x4,%esp
    182f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1833:	6a 01                	push   $0x1
    1835:	57                   	push   %edi
    1836:	ff 75 08             	pushl  0x8(%ebp)
    1839:	e8 df fd ff ff       	call   161d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    183e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1841:	83 c4 0c             	add    $0xc,%esp
    1844:	6a 01                	push   $0x1
    1846:	83 c6 01             	add    $0x1,%esi
    1849:	57                   	push   %edi
    184a:	ff 75 08             	pushl  0x8(%ebp)
    184d:	e8 cb fd ff ff       	call   161d <write>
  for(i = 0; fmt[i]; i++){
    1852:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1856:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1859:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    185b:	84 db                	test   %bl,%bl
    185d:	75 8f                	jne    17ee <printf+0x5e>
    }
  }
}
    185f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1862:	5b                   	pop    %ebx
    1863:	5e                   	pop    %esi
    1864:	5f                   	pop    %edi
    1865:	5d                   	pop    %ebp
    1866:	c3                   	ret    
    1867:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    186e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1870:	83 ec 0c             	sub    $0xc,%esp
    1873:	b9 10 00 00 00       	mov    $0x10,%ecx
    1878:	6a 00                	push   $0x0
    187a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    187d:	8b 45 08             	mov    0x8(%ebp),%eax
    1880:	8b 13                	mov    (%ebx),%edx
    1882:	e8 59 fe ff ff       	call   16e0 <printint>
        ap++;
    1887:	89 d8                	mov    %ebx,%eax
    1889:	83 c4 10             	add    $0x10,%esp
      state = 0;
    188c:	31 d2                	xor    %edx,%edx
        ap++;
    188e:	83 c0 04             	add    $0x4,%eax
    1891:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1894:	e9 4b ff ff ff       	jmp    17e4 <printf+0x54>
    1899:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    18a0:	83 ec 0c             	sub    $0xc,%esp
    18a3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    18a8:	6a 01                	push   $0x1
    18aa:	eb ce                	jmp    187a <printf+0xea>
    18ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    18b0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    18b3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    18b6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    18b8:	6a 01                	push   $0x1
        ap++;
    18ba:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    18bd:	57                   	push   %edi
    18be:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    18c1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    18c4:	e8 54 fd ff ff       	call   161d <write>
        ap++;
    18c9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    18cc:	83 c4 10             	add    $0x10,%esp
      state = 0;
    18cf:	31 d2                	xor    %edx,%edx
    18d1:	e9 0e ff ff ff       	jmp    17e4 <printf+0x54>
    18d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18dd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    18e0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    18e3:	83 ec 04             	sub    $0x4,%esp
    18e6:	e9 59 ff ff ff       	jmp    1844 <printf+0xb4>
    18eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    18ef:	90                   	nop
        s = (char*)*ap;
    18f0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    18f3:	8b 18                	mov    (%eax),%ebx
        ap++;
    18f5:	83 c0 04             	add    $0x4,%eax
    18f8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    18fb:	85 db                	test   %ebx,%ebx
    18fd:	74 17                	je     1916 <printf+0x186>
        while(*s != 0){
    18ff:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1902:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1904:	84 c0                	test   %al,%al
    1906:	0f 84 d8 fe ff ff    	je     17e4 <printf+0x54>
    190c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    190f:	89 de                	mov    %ebx,%esi
    1911:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1914:	eb 1a                	jmp    1930 <printf+0x1a0>
          s = "(null)";
    1916:	bb 82 1a 00 00       	mov    $0x1a82,%ebx
        while(*s != 0){
    191b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    191e:	b8 28 00 00 00       	mov    $0x28,%eax
    1923:	89 de                	mov    %ebx,%esi
    1925:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1928:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    192f:	90                   	nop
  write(fd, &c, 1);
    1930:	83 ec 04             	sub    $0x4,%esp
          s++;
    1933:	83 c6 01             	add    $0x1,%esi
    1936:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1939:	6a 01                	push   $0x1
    193b:	57                   	push   %edi
    193c:	53                   	push   %ebx
    193d:	e8 db fc ff ff       	call   161d <write>
        while(*s != 0){
    1942:	0f b6 06             	movzbl (%esi),%eax
    1945:	83 c4 10             	add    $0x10,%esp
    1948:	84 c0                	test   %al,%al
    194a:	75 e4                	jne    1930 <printf+0x1a0>
    194c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    194f:	31 d2                	xor    %edx,%edx
    1951:	e9 8e fe ff ff       	jmp    17e4 <printf+0x54>
