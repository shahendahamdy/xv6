
_cat:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
  }
}

int
main(int argc, char *argv[])
{
    1000:	f3 0f 1e fb          	endbr32 
    1004:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    1008:	83 e4 f0             	and    $0xfffffff0,%esp
    100b:	ff 71 fc             	pushl  -0x4(%ecx)
    100e:	55                   	push   %ebp
    100f:	89 e5                	mov    %esp,%ebp
    1011:	57                   	push   %edi
    1012:	56                   	push   %esi
    1013:	be 01 00 00 00       	mov    $0x1,%esi
    1018:	53                   	push   %ebx
    1019:	51                   	push   %ecx
    101a:	83 ec 18             	sub    $0x18,%esp
    101d:	8b 01                	mov    (%ecx),%eax
    101f:	8b 59 04             	mov    0x4(%ecx),%ebx
    1022:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    1025:	83 c3 04             	add    $0x4,%ebx
  int fd, i;

  if(argc <= 1){
    1028:	83 f8 01             	cmp    $0x1,%eax
    102b:	7e 50                	jle    107d <main+0x7d>
    102d:	8d 76 00             	lea    0x0(%esi),%esi
    cat(0);
    exit();
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
    1030:	83 ec 08             	sub    $0x8,%esp
    1033:	6a 00                	push   $0x0
    1035:	ff 33                	pushl  (%ebx)
    1037:	e8 c1 05 00 00       	call   15fd <open>
    103c:	83 c4 10             	add    $0x10,%esp
    103f:	89 c7                	mov    %eax,%edi
    1041:	85 c0                	test   %eax,%eax
    1043:	78 24                	js     1069 <main+0x69>
      printf(1, "cat: cannot open %s\n", argv[i]);
      exit();
    }
    cat(fd);
    1045:	83 ec 0c             	sub    $0xc,%esp
  for(i = 1; i < argc; i++){
    1048:	83 c6 01             	add    $0x1,%esi
    104b:	83 c3 04             	add    $0x4,%ebx
    cat(fd);
    104e:	50                   	push   %eax
    104f:	e8 3c 00 00 00       	call   1090 <cat>
    close(fd);
    1054:	89 3c 24             	mov    %edi,(%esp)
    1057:	e8 89 05 00 00       	call   15e5 <close>
  for(i = 1; i < argc; i++){
    105c:	83 c4 10             	add    $0x10,%esp
    105f:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
    1062:	75 cc                	jne    1030 <main+0x30>
  }
  exit();
    1064:	e8 54 05 00 00       	call   15bd <exit>
      printf(1, "cat: cannot open %s\n", argv[i]);
    1069:	50                   	push   %eax
    106a:	ff 33                	pushl  (%ebx)
    106c:	68 3b 19 00 00       	push   $0x193b
    1071:	6a 01                	push   $0x1
    1073:	e8 d8 06 00 00       	call   1750 <printf>
      exit();
    1078:	e8 40 05 00 00       	call   15bd <exit>
    cat(0);
    107d:	83 ec 0c             	sub    $0xc,%esp
    1080:	6a 00                	push   $0x0
    1082:	e8 09 00 00 00       	call   1090 <cat>
    exit();
    1087:	e8 31 05 00 00       	call   15bd <exit>
    108c:	66 90                	xchg   %ax,%ax
    108e:	66 90                	xchg   %ax,%ax

00001090 <cat>:
{
    1090:	f3 0f 1e fb          	endbr32 
    1094:	55                   	push   %ebp
    1095:	89 e5                	mov    %esp,%ebp
    1097:	56                   	push   %esi
    1098:	8b 75 08             	mov    0x8(%ebp),%esi
    109b:	53                   	push   %ebx
  while((n = read(fd, buf, sizeof(buf))) > 0) {
    109c:	eb 19                	jmp    10b7 <cat+0x27>
    109e:	66 90                	xchg   %ax,%ax
    if (write(1, buf, n) != n) {
    10a0:	83 ec 04             	sub    $0x4,%esp
    10a3:	53                   	push   %ebx
    10a4:	68 00 1d 00 00       	push   $0x1d00
    10a9:	6a 01                	push   $0x1
    10ab:	e8 2d 05 00 00       	call   15dd <write>
    10b0:	83 c4 10             	add    $0x10,%esp
    10b3:	39 d8                	cmp    %ebx,%eax
    10b5:	75 25                	jne    10dc <cat+0x4c>
  while((n = read(fd, buf, sizeof(buf))) > 0) {
    10b7:	83 ec 04             	sub    $0x4,%esp
    10ba:	68 00 02 00 00       	push   $0x200
    10bf:	68 00 1d 00 00       	push   $0x1d00
    10c4:	56                   	push   %esi
    10c5:	e8 0b 05 00 00       	call   15d5 <read>
    10ca:	83 c4 10             	add    $0x10,%esp
    10cd:	89 c3                	mov    %eax,%ebx
    10cf:	85 c0                	test   %eax,%eax
    10d1:	7f cd                	jg     10a0 <cat+0x10>
  if(n < 0){
    10d3:	75 1b                	jne    10f0 <cat+0x60>
}
    10d5:	8d 65 f8             	lea    -0x8(%ebp),%esp
    10d8:	5b                   	pop    %ebx
    10d9:	5e                   	pop    %esi
    10da:	5d                   	pop    %ebp
    10db:	c3                   	ret    
      printf(1, "cat: write error\n");
    10dc:	83 ec 08             	sub    $0x8,%esp
    10df:	68 18 19 00 00       	push   $0x1918
    10e4:	6a 01                	push   $0x1
    10e6:	e8 65 06 00 00       	call   1750 <printf>
      exit();
    10eb:	e8 cd 04 00 00       	call   15bd <exit>
    printf(1, "cat: read error\n");
    10f0:	50                   	push   %eax
    10f1:	50                   	push   %eax
    10f2:	68 2a 19 00 00       	push   $0x192a
    10f7:	6a 01                	push   $0x1
    10f9:	e8 52 06 00 00       	call   1750 <printf>
    exit();
    10fe:	e8 ba 04 00 00       	call   15bd <exit>
    1103:	66 90                	xchg   %ax,%ax
    1105:	66 90                	xchg   %ax,%ax
    1107:	66 90                	xchg   %ax,%ax
    1109:	66 90                	xchg   %ax,%ax
    110b:	66 90                	xchg   %ax,%ax
    110d:	66 90                	xchg   %ax,%ax
    110f:	90                   	nop

00001110 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1110:	f3 0f 1e fb          	endbr32 
    1114:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1115:	31 c0                	xor    %eax,%eax
{
    1117:	89 e5                	mov    %esp,%ebp
    1119:	53                   	push   %ebx
    111a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    111d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1120:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1124:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1127:	83 c0 01             	add    $0x1,%eax
    112a:	84 d2                	test   %dl,%dl
    112c:	75 f2                	jne    1120 <strcpy+0x10>
    ;
  return os;
}
    112e:	89 c8                	mov    %ecx,%eax
    1130:	5b                   	pop    %ebx
    1131:	5d                   	pop    %ebp
    1132:	c3                   	ret    
    1133:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    113a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001140 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1140:	f3 0f 1e fb          	endbr32 
    1144:	55                   	push   %ebp
    1145:	89 e5                	mov    %esp,%ebp
    1147:	53                   	push   %ebx
    1148:	8b 4d 08             	mov    0x8(%ebp),%ecx
    114b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    114e:	0f b6 01             	movzbl (%ecx),%eax
    1151:	0f b6 1a             	movzbl (%edx),%ebx
    1154:	84 c0                	test   %al,%al
    1156:	75 19                	jne    1171 <strcmp+0x31>
    1158:	eb 26                	jmp    1180 <strcmp+0x40>
    115a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1160:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    1164:	83 c1 01             	add    $0x1,%ecx
    1167:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    116a:	0f b6 1a             	movzbl (%edx),%ebx
    116d:	84 c0                	test   %al,%al
    116f:	74 0f                	je     1180 <strcmp+0x40>
    1171:	38 d8                	cmp    %bl,%al
    1173:	74 eb                	je     1160 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    1175:	29 d8                	sub    %ebx,%eax
}
    1177:	5b                   	pop    %ebx
    1178:	5d                   	pop    %ebp
    1179:	c3                   	ret    
    117a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1180:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1182:	29 d8                	sub    %ebx,%eax
}
    1184:	5b                   	pop    %ebx
    1185:	5d                   	pop    %ebp
    1186:	c3                   	ret    
    1187:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    118e:	66 90                	xchg   %ax,%ax

00001190 <strlen>:

uint
strlen(const char *s)
{
    1190:	f3 0f 1e fb          	endbr32 
    1194:	55                   	push   %ebp
    1195:	89 e5                	mov    %esp,%ebp
    1197:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    119a:	80 3a 00             	cmpb   $0x0,(%edx)
    119d:	74 21                	je     11c0 <strlen+0x30>
    119f:	31 c0                	xor    %eax,%eax
    11a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11a8:	83 c0 01             	add    $0x1,%eax
    11ab:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    11af:	89 c1                	mov    %eax,%ecx
    11b1:	75 f5                	jne    11a8 <strlen+0x18>
    ;
  return n;
}
    11b3:	89 c8                	mov    %ecx,%eax
    11b5:	5d                   	pop    %ebp
    11b6:	c3                   	ret    
    11b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11be:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    11c0:	31 c9                	xor    %ecx,%ecx
}
    11c2:	5d                   	pop    %ebp
    11c3:	89 c8                	mov    %ecx,%eax
    11c5:	c3                   	ret    
    11c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11cd:	8d 76 00             	lea    0x0(%esi),%esi

000011d0 <memset>:

void*
memset(void *dst, int c, uint n)
{
    11d0:	f3 0f 1e fb          	endbr32 
    11d4:	55                   	push   %ebp
    11d5:	89 e5                	mov    %esp,%ebp
    11d7:	57                   	push   %edi
    11d8:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    11db:	8b 4d 10             	mov    0x10(%ebp),%ecx
    11de:	8b 45 0c             	mov    0xc(%ebp),%eax
    11e1:	89 d7                	mov    %edx,%edi
    11e3:	fc                   	cld    
    11e4:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    11e6:	89 d0                	mov    %edx,%eax
    11e8:	5f                   	pop    %edi
    11e9:	5d                   	pop    %ebp
    11ea:	c3                   	ret    
    11eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    11ef:	90                   	nop

000011f0 <strchr>:

char*
strchr(const char *s, char c)
{
    11f0:	f3 0f 1e fb          	endbr32 
    11f4:	55                   	push   %ebp
    11f5:	89 e5                	mov    %esp,%ebp
    11f7:	8b 45 08             	mov    0x8(%ebp),%eax
    11fa:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    11fe:	0f b6 10             	movzbl (%eax),%edx
    1201:	84 d2                	test   %dl,%dl
    1203:	75 16                	jne    121b <strchr+0x2b>
    1205:	eb 21                	jmp    1228 <strchr+0x38>
    1207:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    120e:	66 90                	xchg   %ax,%ax
    1210:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1214:	83 c0 01             	add    $0x1,%eax
    1217:	84 d2                	test   %dl,%dl
    1219:	74 0d                	je     1228 <strchr+0x38>
    if(*s == c)
    121b:	38 d1                	cmp    %dl,%cl
    121d:	75 f1                	jne    1210 <strchr+0x20>
      return (char*)s;
  return 0;
}
    121f:	5d                   	pop    %ebp
    1220:	c3                   	ret    
    1221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1228:	31 c0                	xor    %eax,%eax
}
    122a:	5d                   	pop    %ebp
    122b:	c3                   	ret    
    122c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001230 <gets>:

char*
gets(char *buf, int max)
{
    1230:	f3 0f 1e fb          	endbr32 
    1234:	55                   	push   %ebp
    1235:	89 e5                	mov    %esp,%ebp
    1237:	57                   	push   %edi
    1238:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1239:	31 f6                	xor    %esi,%esi
{
    123b:	53                   	push   %ebx
    123c:	89 f3                	mov    %esi,%ebx
    123e:	83 ec 1c             	sub    $0x1c,%esp
    1241:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1244:	eb 33                	jmp    1279 <gets+0x49>
    1246:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    124d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1250:	83 ec 04             	sub    $0x4,%esp
    1253:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1256:	6a 01                	push   $0x1
    1258:	50                   	push   %eax
    1259:	6a 00                	push   $0x0
    125b:	e8 75 03 00 00       	call   15d5 <read>
    if(cc < 1)
    1260:	83 c4 10             	add    $0x10,%esp
    1263:	85 c0                	test   %eax,%eax
    1265:	7e 1c                	jle    1283 <gets+0x53>
      break;
    buf[i++] = c;
    1267:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    126b:	83 c7 01             	add    $0x1,%edi
    126e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1271:	3c 0a                	cmp    $0xa,%al
    1273:	74 23                	je     1298 <gets+0x68>
    1275:	3c 0d                	cmp    $0xd,%al
    1277:	74 1f                	je     1298 <gets+0x68>
  for(i=0; i+1 < max; ){
    1279:	83 c3 01             	add    $0x1,%ebx
    127c:	89 fe                	mov    %edi,%esi
    127e:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1281:	7c cd                	jl     1250 <gets+0x20>
    1283:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    1285:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1288:	c6 03 00             	movb   $0x0,(%ebx)
}
    128b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    128e:	5b                   	pop    %ebx
    128f:	5e                   	pop    %esi
    1290:	5f                   	pop    %edi
    1291:	5d                   	pop    %ebp
    1292:	c3                   	ret    
    1293:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1297:	90                   	nop
    1298:	8b 75 08             	mov    0x8(%ebp),%esi
    129b:	8b 45 08             	mov    0x8(%ebp),%eax
    129e:	01 de                	add    %ebx,%esi
    12a0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    12a2:	c6 03 00             	movb   $0x0,(%ebx)
}
    12a5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12a8:	5b                   	pop    %ebx
    12a9:	5e                   	pop    %esi
    12aa:	5f                   	pop    %edi
    12ab:	5d                   	pop    %ebp
    12ac:	c3                   	ret    
    12ad:	8d 76 00             	lea    0x0(%esi),%esi

000012b0 <stat>:

int
stat(const char *n, struct stat *st)
{
    12b0:	f3 0f 1e fb          	endbr32 
    12b4:	55                   	push   %ebp
    12b5:	89 e5                	mov    %esp,%ebp
    12b7:	56                   	push   %esi
    12b8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    12b9:	83 ec 08             	sub    $0x8,%esp
    12bc:	6a 00                	push   $0x0
    12be:	ff 75 08             	pushl  0x8(%ebp)
    12c1:	e8 37 03 00 00       	call   15fd <open>
  if(fd < 0)
    12c6:	83 c4 10             	add    $0x10,%esp
    12c9:	85 c0                	test   %eax,%eax
    12cb:	78 2b                	js     12f8 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    12cd:	83 ec 08             	sub    $0x8,%esp
    12d0:	ff 75 0c             	pushl  0xc(%ebp)
    12d3:	89 c3                	mov    %eax,%ebx
    12d5:	50                   	push   %eax
    12d6:	e8 3a 03 00 00       	call   1615 <fstat>
  close(fd);
    12db:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    12de:	89 c6                	mov    %eax,%esi
  close(fd);
    12e0:	e8 00 03 00 00       	call   15e5 <close>
  return r;
    12e5:	83 c4 10             	add    $0x10,%esp
}
    12e8:	8d 65 f8             	lea    -0x8(%ebp),%esp
    12eb:	89 f0                	mov    %esi,%eax
    12ed:	5b                   	pop    %ebx
    12ee:	5e                   	pop    %esi
    12ef:	5d                   	pop    %ebp
    12f0:	c3                   	ret    
    12f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    12f8:	be ff ff ff ff       	mov    $0xffffffff,%esi
    12fd:	eb e9                	jmp    12e8 <stat+0x38>
    12ff:	90                   	nop

00001300 <atoi>:

int
atoi(const char *s)
{
    1300:	f3 0f 1e fb          	endbr32 
    1304:	55                   	push   %ebp
    1305:	89 e5                	mov    %esp,%ebp
    1307:	53                   	push   %ebx
    1308:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    130b:	0f be 02             	movsbl (%edx),%eax
    130e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1311:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1314:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1319:	77 1a                	ja     1335 <atoi+0x35>
    131b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    131f:	90                   	nop
    n = n*10 + *s++ - '0';
    1320:	83 c2 01             	add    $0x1,%edx
    1323:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1326:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    132a:	0f be 02             	movsbl (%edx),%eax
    132d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1330:	80 fb 09             	cmp    $0x9,%bl
    1333:	76 eb                	jbe    1320 <atoi+0x20>
  return n;
}
    1335:	89 c8                	mov    %ecx,%eax
    1337:	5b                   	pop    %ebx
    1338:	5d                   	pop    %ebp
    1339:	c3                   	ret    
    133a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001340 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1340:	f3 0f 1e fb          	endbr32 
    1344:	55                   	push   %ebp
    1345:	89 e5                	mov    %esp,%ebp
    1347:	57                   	push   %edi
    1348:	8b 45 10             	mov    0x10(%ebp),%eax
    134b:	8b 55 08             	mov    0x8(%ebp),%edx
    134e:	56                   	push   %esi
    134f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1352:	85 c0                	test   %eax,%eax
    1354:	7e 0f                	jle    1365 <memmove+0x25>
    1356:	01 d0                	add    %edx,%eax
  dst = vdst;
    1358:	89 d7                	mov    %edx,%edi
    135a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    1360:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    1361:	39 f8                	cmp    %edi,%eax
    1363:	75 fb                	jne    1360 <memmove+0x20>
  return vdst;
}
    1365:	5e                   	pop    %esi
    1366:	89 d0                	mov    %edx,%eax
    1368:	5f                   	pop    %edi
    1369:	5d                   	pop    %ebp
    136a:	c3                   	ret    
    136b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    136f:	90                   	nop

00001370 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    1370:	f3 0f 1e fb          	endbr32 
    1374:	55                   	push   %ebp
    1375:	89 e5                	mov    %esp,%ebp
    1377:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    137a:	8d 45 f4             	lea    -0xc(%ebp),%eax
    137d:	50                   	push   %eax
    137e:	e8 0a 03 00 00       	call   168d <join>
  
  return x;
}
    1383:	c9                   	leave  
    1384:	c3                   	ret    
    1385:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    138c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001390 <lock_init>:

void lock_init(struct lock_t *lk){
    1390:	f3 0f 1e fb          	endbr32 
    1394:	55                   	push   %ebp
    1395:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    1397:	8b 45 08             	mov    0x8(%ebp),%eax
    139a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    13a0:	5d                   	pop    %ebp
    13a1:	c3                   	ret    
    13a2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000013b0 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    13b0:	f3 0f 1e fb          	endbr32 
    13b4:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    13b5:	b9 01 00 00 00       	mov    $0x1,%ecx
    13ba:	89 e5                	mov    %esp,%ebp
    13bc:	8b 55 08             	mov    0x8(%ebp),%edx
    13bf:	90                   	nop
    13c0:	89 c8                	mov    %ecx,%eax
    13c2:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    13c5:	85 c0                	test   %eax,%eax
    13c7:	75 f7                	jne    13c0 <lock_acquire+0x10>
}
    13c9:	5d                   	pop    %ebp
    13ca:	c3                   	ret    
    13cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13cf:	90                   	nop

000013d0 <lock_release>:
void lock_release(struct lock_t *lk){
    13d0:	f3 0f 1e fb          	endbr32 
    13d4:	55                   	push   %ebp
    13d5:	31 c0                	xor    %eax,%eax
    13d7:	89 e5                	mov    %esp,%ebp
    13d9:	8b 55 08             	mov    0x8(%ebp),%edx
    13dc:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    13df:	5d                   	pop    %ebp
    13e0:	c3                   	ret    
    13e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13ef:	90                   	nop

000013f0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    13f0:	f3 0f 1e fb          	endbr32 
    13f4:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    13f5:	a1 e0 1c 00 00       	mov    0x1ce0,%eax
{
    13fa:	89 e5                	mov    %esp,%ebp
    13fc:	57                   	push   %edi
    13fd:	56                   	push   %esi
    13fe:	53                   	push   %ebx
    13ff:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1402:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1404:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1407:	39 c8                	cmp    %ecx,%eax
    1409:	73 15                	jae    1420 <free+0x30>
    140b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    140f:	90                   	nop
    1410:	39 d1                	cmp    %edx,%ecx
    1412:	72 14                	jb     1428 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1414:	39 d0                	cmp    %edx,%eax
    1416:	73 10                	jae    1428 <free+0x38>
{
    1418:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    141a:	8b 10                	mov    (%eax),%edx
    141c:	39 c8                	cmp    %ecx,%eax
    141e:	72 f0                	jb     1410 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1420:	39 d0                	cmp    %edx,%eax
    1422:	72 f4                	jb     1418 <free+0x28>
    1424:	39 d1                	cmp    %edx,%ecx
    1426:	73 f0                	jae    1418 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1428:	8b 73 fc             	mov    -0x4(%ebx),%esi
    142b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    142e:	39 fa                	cmp    %edi,%edx
    1430:	74 1e                	je     1450 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1432:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1435:	8b 50 04             	mov    0x4(%eax),%edx
    1438:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    143b:	39 f1                	cmp    %esi,%ecx
    143d:	74 28                	je     1467 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    143f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1441:	5b                   	pop    %ebx
  freep = p;
    1442:	a3 e0 1c 00 00       	mov    %eax,0x1ce0
}
    1447:	5e                   	pop    %esi
    1448:	5f                   	pop    %edi
    1449:	5d                   	pop    %ebp
    144a:	c3                   	ret    
    144b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    144f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1450:	03 72 04             	add    0x4(%edx),%esi
    1453:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1456:	8b 10                	mov    (%eax),%edx
    1458:	8b 12                	mov    (%edx),%edx
    145a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    145d:	8b 50 04             	mov    0x4(%eax),%edx
    1460:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1463:	39 f1                	cmp    %esi,%ecx
    1465:	75 d8                	jne    143f <free+0x4f>
    p->s.size += bp->s.size;
    1467:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    146a:	a3 e0 1c 00 00       	mov    %eax,0x1ce0
    p->s.size += bp->s.size;
    146f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1472:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1475:	89 10                	mov    %edx,(%eax)
}
    1477:	5b                   	pop    %ebx
    1478:	5e                   	pop    %esi
    1479:	5f                   	pop    %edi
    147a:	5d                   	pop    %ebp
    147b:	c3                   	ret    
    147c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001480 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1480:	f3 0f 1e fb          	endbr32 
    1484:	55                   	push   %ebp
    1485:	89 e5                	mov    %esp,%ebp
    1487:	57                   	push   %edi
    1488:	56                   	push   %esi
    1489:	53                   	push   %ebx
    148a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    148d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1490:	8b 3d e0 1c 00 00    	mov    0x1ce0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1496:	8d 70 07             	lea    0x7(%eax),%esi
    1499:	c1 ee 03             	shr    $0x3,%esi
    149c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    149f:	85 ff                	test   %edi,%edi
    14a1:	0f 84 a9 00 00 00    	je     1550 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    14a7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    14a9:	8b 48 04             	mov    0x4(%eax),%ecx
    14ac:	39 f1                	cmp    %esi,%ecx
    14ae:	73 6d                	jae    151d <malloc+0x9d>
    14b0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    14b6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    14bb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    14be:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    14c5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    14c8:	eb 17                	jmp    14e1 <malloc+0x61>
    14ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    14d0:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    14d2:	8b 4a 04             	mov    0x4(%edx),%ecx
    14d5:	39 f1                	cmp    %esi,%ecx
    14d7:	73 4f                	jae    1528 <malloc+0xa8>
    14d9:	8b 3d e0 1c 00 00    	mov    0x1ce0,%edi
    14df:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    14e1:	39 c7                	cmp    %eax,%edi
    14e3:	75 eb                	jne    14d0 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    14e5:	83 ec 0c             	sub    $0xc,%esp
    14e8:	ff 75 e4             	pushl  -0x1c(%ebp)
    14eb:	e8 55 01 00 00       	call   1645 <sbrk>
  if(p == (char*)-1)
    14f0:	83 c4 10             	add    $0x10,%esp
    14f3:	83 f8 ff             	cmp    $0xffffffff,%eax
    14f6:	74 1b                	je     1513 <malloc+0x93>
  hp->s.size = nu;
    14f8:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    14fb:	83 ec 0c             	sub    $0xc,%esp
    14fe:	83 c0 08             	add    $0x8,%eax
    1501:	50                   	push   %eax
    1502:	e8 e9 fe ff ff       	call   13f0 <free>
  return freep;
    1507:	a1 e0 1c 00 00       	mov    0x1ce0,%eax
      if((p = morecore(nunits)) == 0)
    150c:	83 c4 10             	add    $0x10,%esp
    150f:	85 c0                	test   %eax,%eax
    1511:	75 bd                	jne    14d0 <malloc+0x50>
        return 0;
  }
}
    1513:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1516:	31 c0                	xor    %eax,%eax
}
    1518:	5b                   	pop    %ebx
    1519:	5e                   	pop    %esi
    151a:	5f                   	pop    %edi
    151b:	5d                   	pop    %ebp
    151c:	c3                   	ret    
    if(p->s.size >= nunits){
    151d:	89 c2                	mov    %eax,%edx
    151f:	89 f8                	mov    %edi,%eax
    1521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1528:	39 ce                	cmp    %ecx,%esi
    152a:	74 54                	je     1580 <malloc+0x100>
        p->s.size -= nunits;
    152c:	29 f1                	sub    %esi,%ecx
    152e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1531:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1534:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1537:	a3 e0 1c 00 00       	mov    %eax,0x1ce0
}
    153c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    153f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1542:	5b                   	pop    %ebx
    1543:	5e                   	pop    %esi
    1544:	5f                   	pop    %edi
    1545:	5d                   	pop    %ebp
    1546:	c3                   	ret    
    1547:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    154e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1550:	c7 05 e0 1c 00 00 e4 	movl   $0x1ce4,0x1ce0
    1557:	1c 00 00 
    base.s.size = 0;
    155a:	bf e4 1c 00 00       	mov    $0x1ce4,%edi
    base.s.ptr = freep = prevp = &base;
    155f:	c7 05 e4 1c 00 00 e4 	movl   $0x1ce4,0x1ce4
    1566:	1c 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1569:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    156b:	c7 05 e8 1c 00 00 00 	movl   $0x0,0x1ce8
    1572:	00 00 00 
    if(p->s.size >= nunits){
    1575:	e9 36 ff ff ff       	jmp    14b0 <malloc+0x30>
    157a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1580:	8b 0a                	mov    (%edx),%ecx
    1582:	89 08                	mov    %ecx,(%eax)
    1584:	eb b1                	jmp    1537 <malloc+0xb7>
    1586:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    158d:	8d 76 00             	lea    0x0(%esi),%esi

00001590 <thread_create>:
{
    1590:	f3 0f 1e fb          	endbr32 
    1594:	55                   	push   %ebp
    1595:	89 e5                	mov    %esp,%ebp
    1597:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    159a:	68 00 10 00 00       	push   $0x1000
    159f:	e8 dc fe ff ff       	call   1480 <malloc>
return clone(start_routine,arg1,arg2,stack);
    15a4:	50                   	push   %eax
    15a5:	ff 75 10             	pushl  0x10(%ebp)
    15a8:	ff 75 0c             	pushl  0xc(%ebp)
    15ab:	ff 75 08             	pushl  0x8(%ebp)
    15ae:	e8 d2 00 00 00       	call   1685 <clone>
}
    15b3:	c9                   	leave  
    15b4:	c3                   	ret    

000015b5 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    15b5:	b8 01 00 00 00       	mov    $0x1,%eax
    15ba:	cd 40                	int    $0x40
    15bc:	c3                   	ret    

000015bd <exit>:
SYSCALL(exit)
    15bd:	b8 02 00 00 00       	mov    $0x2,%eax
    15c2:	cd 40                	int    $0x40
    15c4:	c3                   	ret    

000015c5 <wait>:
SYSCALL(wait)
    15c5:	b8 03 00 00 00       	mov    $0x3,%eax
    15ca:	cd 40                	int    $0x40
    15cc:	c3                   	ret    

000015cd <pipe>:
SYSCALL(pipe)
    15cd:	b8 04 00 00 00       	mov    $0x4,%eax
    15d2:	cd 40                	int    $0x40
    15d4:	c3                   	ret    

000015d5 <read>:
SYSCALL(read)
    15d5:	b8 05 00 00 00       	mov    $0x5,%eax
    15da:	cd 40                	int    $0x40
    15dc:	c3                   	ret    

000015dd <write>:
SYSCALL(write)
    15dd:	b8 10 00 00 00       	mov    $0x10,%eax
    15e2:	cd 40                	int    $0x40
    15e4:	c3                   	ret    

000015e5 <close>:
SYSCALL(close)
    15e5:	b8 15 00 00 00       	mov    $0x15,%eax
    15ea:	cd 40                	int    $0x40
    15ec:	c3                   	ret    

000015ed <kill>:
SYSCALL(kill)
    15ed:	b8 06 00 00 00       	mov    $0x6,%eax
    15f2:	cd 40                	int    $0x40
    15f4:	c3                   	ret    

000015f5 <exec>:
SYSCALL(exec)
    15f5:	b8 07 00 00 00       	mov    $0x7,%eax
    15fa:	cd 40                	int    $0x40
    15fc:	c3                   	ret    

000015fd <open>:
SYSCALL(open)
    15fd:	b8 0f 00 00 00       	mov    $0xf,%eax
    1602:	cd 40                	int    $0x40
    1604:	c3                   	ret    

00001605 <mknod>:
SYSCALL(mknod)
    1605:	b8 11 00 00 00       	mov    $0x11,%eax
    160a:	cd 40                	int    $0x40
    160c:	c3                   	ret    

0000160d <unlink>:
SYSCALL(unlink)
    160d:	b8 12 00 00 00       	mov    $0x12,%eax
    1612:	cd 40                	int    $0x40
    1614:	c3                   	ret    

00001615 <fstat>:
SYSCALL(fstat)
    1615:	b8 08 00 00 00       	mov    $0x8,%eax
    161a:	cd 40                	int    $0x40
    161c:	c3                   	ret    

0000161d <link>:
SYSCALL(link)
    161d:	b8 13 00 00 00       	mov    $0x13,%eax
    1622:	cd 40                	int    $0x40
    1624:	c3                   	ret    

00001625 <mkdir>:
SYSCALL(mkdir)
    1625:	b8 14 00 00 00       	mov    $0x14,%eax
    162a:	cd 40                	int    $0x40
    162c:	c3                   	ret    

0000162d <chdir>:
SYSCALL(chdir)
    162d:	b8 09 00 00 00       	mov    $0x9,%eax
    1632:	cd 40                	int    $0x40
    1634:	c3                   	ret    

00001635 <dup>:
SYSCALL(dup)
    1635:	b8 0a 00 00 00       	mov    $0xa,%eax
    163a:	cd 40                	int    $0x40
    163c:	c3                   	ret    

0000163d <getpid>:
SYSCALL(getpid)
    163d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1642:	cd 40                	int    $0x40
    1644:	c3                   	ret    

00001645 <sbrk>:
SYSCALL(sbrk)
    1645:	b8 0c 00 00 00       	mov    $0xc,%eax
    164a:	cd 40                	int    $0x40
    164c:	c3                   	ret    

0000164d <sleep>:
SYSCALL(sleep)
    164d:	b8 0d 00 00 00       	mov    $0xd,%eax
    1652:	cd 40                	int    $0x40
    1654:	c3                   	ret    

00001655 <uptime>:
SYSCALL(uptime)
    1655:	b8 0e 00 00 00       	mov    $0xe,%eax
    165a:	cd 40                	int    $0x40
    165c:	c3                   	ret    

0000165d <count>:
SYSCALL(count)
    165d:	b8 16 00 00 00       	mov    $0x16,%eax
    1662:	cd 40                	int    $0x40
    1664:	c3                   	ret    

00001665 <settickets>:

SYSCALL(settickets)
    1665:	b8 17 00 00 00       	mov    $0x17,%eax
    166a:	cd 40                	int    $0x40
    166c:	c3                   	ret    

0000166d <getpinfo>:
SYSCALL(getpinfo)
    166d:	b8 18 00 00 00       	mov    $0x18,%eax
    1672:	cd 40                	int    $0x40
    1674:	c3                   	ret    

00001675 <mprotect>:

SYSCALL(mprotect)
    1675:	b8 19 00 00 00       	mov    $0x19,%eax
    167a:	cd 40                	int    $0x40
    167c:	c3                   	ret    

0000167d <munprotect>:
SYSCALL(munprotect)
    167d:	b8 1a 00 00 00       	mov    $0x1a,%eax
    1682:	cd 40                	int    $0x40
    1684:	c3                   	ret    

00001685 <clone>:

SYSCALL(clone)
    1685:	b8 1b 00 00 00       	mov    $0x1b,%eax
    168a:	cd 40                	int    $0x40
    168c:	c3                   	ret    

0000168d <join>:
SYSCALL(join)
    168d:	b8 1c 00 00 00       	mov    $0x1c,%eax
    1692:	cd 40                	int    $0x40
    1694:	c3                   	ret    
    1695:	66 90                	xchg   %ax,%ax
    1697:	66 90                	xchg   %ax,%ax
    1699:	66 90                	xchg   %ax,%ax
    169b:	66 90                	xchg   %ax,%ax
    169d:	66 90                	xchg   %ax,%ax
    169f:	90                   	nop

000016a0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    16a0:	55                   	push   %ebp
    16a1:	89 e5                	mov    %esp,%ebp
    16a3:	57                   	push   %edi
    16a4:	56                   	push   %esi
    16a5:	53                   	push   %ebx
    16a6:	83 ec 3c             	sub    $0x3c,%esp
    16a9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    16ac:	89 d1                	mov    %edx,%ecx
{
    16ae:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    16b1:	85 d2                	test   %edx,%edx
    16b3:	0f 89 7f 00 00 00    	jns    1738 <printint+0x98>
    16b9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    16bd:	74 79                	je     1738 <printint+0x98>
    neg = 1;
    16bf:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    16c6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    16c8:	31 db                	xor    %ebx,%ebx
    16ca:	8d 75 d7             	lea    -0x29(%ebp),%esi
    16cd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    16d0:	89 c8                	mov    %ecx,%eax
    16d2:	31 d2                	xor    %edx,%edx
    16d4:	89 cf                	mov    %ecx,%edi
    16d6:	f7 75 c4             	divl   -0x3c(%ebp)
    16d9:	0f b6 92 58 19 00 00 	movzbl 0x1958(%edx),%edx
    16e0:	89 45 c0             	mov    %eax,-0x40(%ebp)
    16e3:	89 d8                	mov    %ebx,%eax
    16e5:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    16e8:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    16eb:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    16ee:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    16f1:	76 dd                	jbe    16d0 <printint+0x30>
  if(neg)
    16f3:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    16f6:	85 c9                	test   %ecx,%ecx
    16f8:	74 0c                	je     1706 <printint+0x66>
    buf[i++] = '-';
    16fa:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    16ff:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1701:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1706:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1709:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    170d:	eb 07                	jmp    1716 <printint+0x76>
    170f:	90                   	nop
    1710:	0f b6 13             	movzbl (%ebx),%edx
    1713:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1716:	83 ec 04             	sub    $0x4,%esp
    1719:	88 55 d7             	mov    %dl,-0x29(%ebp)
    171c:	6a 01                	push   $0x1
    171e:	56                   	push   %esi
    171f:	57                   	push   %edi
    1720:	e8 b8 fe ff ff       	call   15dd <write>
  while(--i >= 0)
    1725:	83 c4 10             	add    $0x10,%esp
    1728:	39 de                	cmp    %ebx,%esi
    172a:	75 e4                	jne    1710 <printint+0x70>
    putc(fd, buf[i]);
}
    172c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    172f:	5b                   	pop    %ebx
    1730:	5e                   	pop    %esi
    1731:	5f                   	pop    %edi
    1732:	5d                   	pop    %ebp
    1733:	c3                   	ret    
    1734:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1738:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    173f:	eb 87                	jmp    16c8 <printint+0x28>
    1741:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1748:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    174f:	90                   	nop

00001750 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1750:	f3 0f 1e fb          	endbr32 
    1754:	55                   	push   %ebp
    1755:	89 e5                	mov    %esp,%ebp
    1757:	57                   	push   %edi
    1758:	56                   	push   %esi
    1759:	53                   	push   %ebx
    175a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    175d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1760:	0f b6 1e             	movzbl (%esi),%ebx
    1763:	84 db                	test   %bl,%bl
    1765:	0f 84 b4 00 00 00    	je     181f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    176b:	8d 45 10             	lea    0x10(%ebp),%eax
    176e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    1771:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    1774:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    1776:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1779:	eb 33                	jmp    17ae <printf+0x5e>
    177b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    177f:	90                   	nop
    1780:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1783:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1788:	83 f8 25             	cmp    $0x25,%eax
    178b:	74 17                	je     17a4 <printf+0x54>
  write(fd, &c, 1);
    178d:	83 ec 04             	sub    $0x4,%esp
    1790:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1793:	6a 01                	push   $0x1
    1795:	57                   	push   %edi
    1796:	ff 75 08             	pushl  0x8(%ebp)
    1799:	e8 3f fe ff ff       	call   15dd <write>
    179e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    17a1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    17a4:	0f b6 1e             	movzbl (%esi),%ebx
    17a7:	83 c6 01             	add    $0x1,%esi
    17aa:	84 db                	test   %bl,%bl
    17ac:	74 71                	je     181f <printf+0xcf>
    c = fmt[i] & 0xff;
    17ae:	0f be cb             	movsbl %bl,%ecx
    17b1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    17b4:	85 d2                	test   %edx,%edx
    17b6:	74 c8                	je     1780 <printf+0x30>
      }
    } else if(state == '%'){
    17b8:	83 fa 25             	cmp    $0x25,%edx
    17bb:	75 e7                	jne    17a4 <printf+0x54>
      if(c == 'd'){
    17bd:	83 f8 64             	cmp    $0x64,%eax
    17c0:	0f 84 9a 00 00 00    	je     1860 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    17c6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    17cc:	83 f9 70             	cmp    $0x70,%ecx
    17cf:	74 5f                	je     1830 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    17d1:	83 f8 73             	cmp    $0x73,%eax
    17d4:	0f 84 d6 00 00 00    	je     18b0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    17da:	83 f8 63             	cmp    $0x63,%eax
    17dd:	0f 84 8d 00 00 00    	je     1870 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    17e3:	83 f8 25             	cmp    $0x25,%eax
    17e6:	0f 84 b4 00 00 00    	je     18a0 <printf+0x150>
  write(fd, &c, 1);
    17ec:	83 ec 04             	sub    $0x4,%esp
    17ef:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    17f3:	6a 01                	push   $0x1
    17f5:	57                   	push   %edi
    17f6:	ff 75 08             	pushl  0x8(%ebp)
    17f9:	e8 df fd ff ff       	call   15dd <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    17fe:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1801:	83 c4 0c             	add    $0xc,%esp
    1804:	6a 01                	push   $0x1
    1806:	83 c6 01             	add    $0x1,%esi
    1809:	57                   	push   %edi
    180a:	ff 75 08             	pushl  0x8(%ebp)
    180d:	e8 cb fd ff ff       	call   15dd <write>
  for(i = 0; fmt[i]; i++){
    1812:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1816:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1819:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    181b:	84 db                	test   %bl,%bl
    181d:	75 8f                	jne    17ae <printf+0x5e>
    }
  }
}
    181f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1822:	5b                   	pop    %ebx
    1823:	5e                   	pop    %esi
    1824:	5f                   	pop    %edi
    1825:	5d                   	pop    %ebp
    1826:	c3                   	ret    
    1827:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    182e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1830:	83 ec 0c             	sub    $0xc,%esp
    1833:	b9 10 00 00 00       	mov    $0x10,%ecx
    1838:	6a 00                	push   $0x0
    183a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    183d:	8b 45 08             	mov    0x8(%ebp),%eax
    1840:	8b 13                	mov    (%ebx),%edx
    1842:	e8 59 fe ff ff       	call   16a0 <printint>
        ap++;
    1847:	89 d8                	mov    %ebx,%eax
    1849:	83 c4 10             	add    $0x10,%esp
      state = 0;
    184c:	31 d2                	xor    %edx,%edx
        ap++;
    184e:	83 c0 04             	add    $0x4,%eax
    1851:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1854:	e9 4b ff ff ff       	jmp    17a4 <printf+0x54>
    1859:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1860:	83 ec 0c             	sub    $0xc,%esp
    1863:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1868:	6a 01                	push   $0x1
    186a:	eb ce                	jmp    183a <printf+0xea>
    186c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1870:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1873:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1876:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1878:	6a 01                	push   $0x1
        ap++;
    187a:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    187d:	57                   	push   %edi
    187e:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1881:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1884:	e8 54 fd ff ff       	call   15dd <write>
        ap++;
    1889:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    188c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    188f:	31 d2                	xor    %edx,%edx
    1891:	e9 0e ff ff ff       	jmp    17a4 <printf+0x54>
    1896:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    189d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    18a0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    18a3:	83 ec 04             	sub    $0x4,%esp
    18a6:	e9 59 ff ff ff       	jmp    1804 <printf+0xb4>
    18ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    18af:	90                   	nop
        s = (char*)*ap;
    18b0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    18b3:	8b 18                	mov    (%eax),%ebx
        ap++;
    18b5:	83 c0 04             	add    $0x4,%eax
    18b8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    18bb:	85 db                	test   %ebx,%ebx
    18bd:	74 17                	je     18d6 <printf+0x186>
        while(*s != 0){
    18bf:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    18c2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    18c4:	84 c0                	test   %al,%al
    18c6:	0f 84 d8 fe ff ff    	je     17a4 <printf+0x54>
    18cc:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    18cf:	89 de                	mov    %ebx,%esi
    18d1:	8b 5d 08             	mov    0x8(%ebp),%ebx
    18d4:	eb 1a                	jmp    18f0 <printf+0x1a0>
          s = "(null)";
    18d6:	bb 50 19 00 00       	mov    $0x1950,%ebx
        while(*s != 0){
    18db:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    18de:	b8 28 00 00 00       	mov    $0x28,%eax
    18e3:	89 de                	mov    %ebx,%esi
    18e5:	8b 5d 08             	mov    0x8(%ebp),%ebx
    18e8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18ef:	90                   	nop
  write(fd, &c, 1);
    18f0:	83 ec 04             	sub    $0x4,%esp
          s++;
    18f3:	83 c6 01             	add    $0x1,%esi
    18f6:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    18f9:	6a 01                	push   $0x1
    18fb:	57                   	push   %edi
    18fc:	53                   	push   %ebx
    18fd:	e8 db fc ff ff       	call   15dd <write>
        while(*s != 0){
    1902:	0f b6 06             	movzbl (%esi),%eax
    1905:	83 c4 10             	add    $0x10,%esp
    1908:	84 c0                	test   %al,%al
    190a:	75 e4                	jne    18f0 <printf+0x1a0>
    190c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    190f:	31 d2                	xor    %edx,%edx
    1911:	e9 8e fe ff ff       	jmp    17a4 <printf+0x54>
