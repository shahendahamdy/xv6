
_wc:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
  printf(1, "%d %d %d %s\n", l, w, c, name);
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
    102b:	7e 52                	jle    107f <main+0x7f>
    102d:	8d 76 00             	lea    0x0(%esi),%esi
    wc(0, "");
    exit();
  }

  for(i = 1; i < argc; i++){
    if((fd = open(argv[i], 0)) < 0){
    1030:	83 ec 08             	sub    $0x8,%esp
    1033:	6a 00                	push   $0x0
    1035:	ff 33                	pushl  (%ebx)
    1037:	e8 41 06 00 00       	call   167d <open>
    103c:	83 c4 10             	add    $0x10,%esp
    103f:	89 c7                	mov    %eax,%edi
    1041:	85 c0                	test   %eax,%eax
    1043:	78 26                	js     106b <main+0x6b>
      printf(1, "wc: cannot open %s\n", argv[i]);
      exit();
    }
    wc(fd, argv[i]);
    1045:	83 ec 08             	sub    $0x8,%esp
    1048:	ff 33                	pushl  (%ebx)
  for(i = 1; i < argc; i++){
    104a:	83 c6 01             	add    $0x1,%esi
    104d:	83 c3 04             	add    $0x4,%ebx
    wc(fd, argv[i]);
    1050:	50                   	push   %eax
    1051:	e8 4a 00 00 00       	call   10a0 <wc>
    close(fd);
    1056:	89 3c 24             	mov    %edi,(%esp)
    1059:	e8 07 06 00 00       	call   1665 <close>
  for(i = 1; i < argc; i++){
    105e:	83 c4 10             	add    $0x10,%esp
    1061:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
    1064:	75 ca                	jne    1030 <main+0x30>
  }
  exit();
    1066:	e8 d2 05 00 00       	call   163d <exit>
      printf(1, "wc: cannot open %s\n", argv[i]);
    106b:	50                   	push   %eax
    106c:	ff 33                	pushl  (%ebx)
    106e:	68 bb 19 00 00       	push   $0x19bb
    1073:	6a 01                	push   $0x1
    1075:	e8 56 07 00 00       	call   17d0 <printf>
      exit();
    107a:	e8 be 05 00 00       	call   163d <exit>
    wc(0, "");
    107f:	52                   	push   %edx
    1080:	52                   	push   %edx
    1081:	68 ad 19 00 00       	push   $0x19ad
    1086:	6a 00                	push   $0x0
    1088:	e8 13 00 00 00       	call   10a0 <wc>
    exit();
    108d:	e8 ab 05 00 00       	call   163d <exit>
    1092:	66 90                	xchg   %ax,%ax
    1094:	66 90                	xchg   %ax,%ax
    1096:	66 90                	xchg   %ax,%ax
    1098:	66 90                	xchg   %ax,%ax
    109a:	66 90                	xchg   %ax,%ax
    109c:	66 90                	xchg   %ax,%ax
    109e:	66 90                	xchg   %ax,%ax

000010a0 <wc>:
{
    10a0:	f3 0f 1e fb          	endbr32 
    10a4:	55                   	push   %ebp
    10a5:	89 e5                	mov    %esp,%ebp
    10a7:	57                   	push   %edi
    10a8:	56                   	push   %esi
    10a9:	53                   	push   %ebx
  l = w = c = 0;
    10aa:	31 db                	xor    %ebx,%ebx
{
    10ac:	83 ec 1c             	sub    $0x1c,%esp
  inword = 0;
    10af:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
  l = w = c = 0;
    10b6:	c7 45 dc 00 00 00 00 	movl   $0x0,-0x24(%ebp)
    10bd:	c7 45 e0 00 00 00 00 	movl   $0x0,-0x20(%ebp)
    10c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
    10c8:	83 ec 04             	sub    $0x4,%esp
    10cb:	68 00 02 00 00       	push   $0x200
    10d0:	68 80 1d 00 00       	push   $0x1d80
    10d5:	ff 75 08             	pushl  0x8(%ebp)
    10d8:	e8 78 05 00 00       	call   1655 <read>
    10dd:	83 c4 10             	add    $0x10,%esp
    10e0:	89 c6                	mov    %eax,%esi
    10e2:	85 c0                	test   %eax,%eax
    10e4:	7e 62                	jle    1148 <wc+0xa8>
    for(i=0; i<n; i++){
    10e6:	31 ff                	xor    %edi,%edi
    10e8:	eb 14                	jmp    10fe <wc+0x5e>
    10ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        inword = 0;
    10f0:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    for(i=0; i<n; i++){
    10f7:	83 c7 01             	add    $0x1,%edi
    10fa:	39 fe                	cmp    %edi,%esi
    10fc:	74 42                	je     1140 <wc+0xa0>
      if(buf[i] == '\n')
    10fe:	0f be 87 80 1d 00 00 	movsbl 0x1d80(%edi),%eax
        l++;
    1105:	31 c9                	xor    %ecx,%ecx
    1107:	3c 0a                	cmp    $0xa,%al
    1109:	0f 94 c1             	sete   %cl
      if(strchr(" \r\t\n\v", buf[i]))
    110c:	83 ec 08             	sub    $0x8,%esp
    110f:	50                   	push   %eax
        l++;
    1110:	01 cb                	add    %ecx,%ebx
      if(strchr(" \r\t\n\v", buf[i]))
    1112:	68 98 19 00 00       	push   $0x1998
    1117:	e8 54 01 00 00       	call   1270 <strchr>
    111c:	83 c4 10             	add    $0x10,%esp
    111f:	85 c0                	test   %eax,%eax
    1121:	75 cd                	jne    10f0 <wc+0x50>
      else if(!inword){
    1123:	8b 55 e4             	mov    -0x1c(%ebp),%edx
    1126:	85 d2                	test   %edx,%edx
    1128:	75 cd                	jne    10f7 <wc+0x57>
    for(i=0; i<n; i++){
    112a:	83 c7 01             	add    $0x1,%edi
        w++;
    112d:	83 45 e0 01          	addl   $0x1,-0x20(%ebp)
        inword = 1;
    1131:	c7 45 e4 01 00 00 00 	movl   $0x1,-0x1c(%ebp)
    for(i=0; i<n; i++){
    1138:	39 fe                	cmp    %edi,%esi
    113a:	75 c2                	jne    10fe <wc+0x5e>
    113c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1140:	01 75 dc             	add    %esi,-0x24(%ebp)
    1143:	eb 83                	jmp    10c8 <wc+0x28>
    1145:	8d 76 00             	lea    0x0(%esi),%esi
  if(n < 0){
    1148:	75 24                	jne    116e <wc+0xce>
  printf(1, "%d %d %d %s\n", l, w, c, name);
    114a:	83 ec 08             	sub    $0x8,%esp
    114d:	ff 75 0c             	pushl  0xc(%ebp)
    1150:	ff 75 dc             	pushl  -0x24(%ebp)
    1153:	ff 75 e0             	pushl  -0x20(%ebp)
    1156:	53                   	push   %ebx
    1157:	68 ae 19 00 00       	push   $0x19ae
    115c:	6a 01                	push   $0x1
    115e:	e8 6d 06 00 00       	call   17d0 <printf>
}
    1163:	83 c4 20             	add    $0x20,%esp
    1166:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1169:	5b                   	pop    %ebx
    116a:	5e                   	pop    %esi
    116b:	5f                   	pop    %edi
    116c:	5d                   	pop    %ebp
    116d:	c3                   	ret    
    printf(1, "wc: read error\n");
    116e:	50                   	push   %eax
    116f:	50                   	push   %eax
    1170:	68 9e 19 00 00       	push   $0x199e
    1175:	6a 01                	push   $0x1
    1177:	e8 54 06 00 00       	call   17d0 <printf>
    exit();
    117c:	e8 bc 04 00 00       	call   163d <exit>
    1181:	66 90                	xchg   %ax,%ax
    1183:	66 90                	xchg   %ax,%ax
    1185:	66 90                	xchg   %ax,%ax
    1187:	66 90                	xchg   %ax,%ax
    1189:	66 90                	xchg   %ax,%ax
    118b:	66 90                	xchg   %ax,%ax
    118d:	66 90                	xchg   %ax,%ax
    118f:	90                   	nop

00001190 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1190:	f3 0f 1e fb          	endbr32 
    1194:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1195:	31 c0                	xor    %eax,%eax
{
    1197:	89 e5                	mov    %esp,%ebp
    1199:	53                   	push   %ebx
    119a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    119d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    11a0:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    11a4:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    11a7:	83 c0 01             	add    $0x1,%eax
    11aa:	84 d2                	test   %dl,%dl
    11ac:	75 f2                	jne    11a0 <strcpy+0x10>
    ;
  return os;
}
    11ae:	89 c8                	mov    %ecx,%eax
    11b0:	5b                   	pop    %ebx
    11b1:	5d                   	pop    %ebp
    11b2:	c3                   	ret    
    11b3:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000011c0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    11c0:	f3 0f 1e fb          	endbr32 
    11c4:	55                   	push   %ebp
    11c5:	89 e5                	mov    %esp,%ebp
    11c7:	53                   	push   %ebx
    11c8:	8b 4d 08             	mov    0x8(%ebp),%ecx
    11cb:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    11ce:	0f b6 01             	movzbl (%ecx),%eax
    11d1:	0f b6 1a             	movzbl (%edx),%ebx
    11d4:	84 c0                	test   %al,%al
    11d6:	75 19                	jne    11f1 <strcmp+0x31>
    11d8:	eb 26                	jmp    1200 <strcmp+0x40>
    11da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11e0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    11e4:	83 c1 01             	add    $0x1,%ecx
    11e7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    11ea:	0f b6 1a             	movzbl (%edx),%ebx
    11ed:	84 c0                	test   %al,%al
    11ef:	74 0f                	je     1200 <strcmp+0x40>
    11f1:	38 d8                	cmp    %bl,%al
    11f3:	74 eb                	je     11e0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    11f5:	29 d8                	sub    %ebx,%eax
}
    11f7:	5b                   	pop    %ebx
    11f8:	5d                   	pop    %ebp
    11f9:	c3                   	ret    
    11fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1200:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    1202:	29 d8                	sub    %ebx,%eax
}
    1204:	5b                   	pop    %ebx
    1205:	5d                   	pop    %ebp
    1206:	c3                   	ret    
    1207:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    120e:	66 90                	xchg   %ax,%ax

00001210 <strlen>:

uint
strlen(const char *s)
{
    1210:	f3 0f 1e fb          	endbr32 
    1214:	55                   	push   %ebp
    1215:	89 e5                	mov    %esp,%ebp
    1217:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    121a:	80 3a 00             	cmpb   $0x0,(%edx)
    121d:	74 21                	je     1240 <strlen+0x30>
    121f:	31 c0                	xor    %eax,%eax
    1221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1228:	83 c0 01             	add    $0x1,%eax
    122b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    122f:	89 c1                	mov    %eax,%ecx
    1231:	75 f5                	jne    1228 <strlen+0x18>
    ;
  return n;
}
    1233:	89 c8                	mov    %ecx,%eax
    1235:	5d                   	pop    %ebp
    1236:	c3                   	ret    
    1237:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    123e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1240:	31 c9                	xor    %ecx,%ecx
}
    1242:	5d                   	pop    %ebp
    1243:	89 c8                	mov    %ecx,%eax
    1245:	c3                   	ret    
    1246:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    124d:	8d 76 00             	lea    0x0(%esi),%esi

00001250 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1250:	f3 0f 1e fb          	endbr32 
    1254:	55                   	push   %ebp
    1255:	89 e5                	mov    %esp,%ebp
    1257:	57                   	push   %edi
    1258:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    125b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    125e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1261:	89 d7                	mov    %edx,%edi
    1263:	fc                   	cld    
    1264:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1266:	89 d0                	mov    %edx,%eax
    1268:	5f                   	pop    %edi
    1269:	5d                   	pop    %ebp
    126a:	c3                   	ret    
    126b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    126f:	90                   	nop

00001270 <strchr>:

char*
strchr(const char *s, char c)
{
    1270:	f3 0f 1e fb          	endbr32 
    1274:	55                   	push   %ebp
    1275:	89 e5                	mov    %esp,%ebp
    1277:	8b 45 08             	mov    0x8(%ebp),%eax
    127a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    127e:	0f b6 10             	movzbl (%eax),%edx
    1281:	84 d2                	test   %dl,%dl
    1283:	75 16                	jne    129b <strchr+0x2b>
    1285:	eb 21                	jmp    12a8 <strchr+0x38>
    1287:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    128e:	66 90                	xchg   %ax,%ax
    1290:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1294:	83 c0 01             	add    $0x1,%eax
    1297:	84 d2                	test   %dl,%dl
    1299:	74 0d                	je     12a8 <strchr+0x38>
    if(*s == c)
    129b:	38 d1                	cmp    %dl,%cl
    129d:	75 f1                	jne    1290 <strchr+0x20>
      return (char*)s;
  return 0;
}
    129f:	5d                   	pop    %ebp
    12a0:	c3                   	ret    
    12a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    12a8:	31 c0                	xor    %eax,%eax
}
    12aa:	5d                   	pop    %ebp
    12ab:	c3                   	ret    
    12ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000012b0 <gets>:

char*
gets(char *buf, int max)
{
    12b0:	f3 0f 1e fb          	endbr32 
    12b4:	55                   	push   %ebp
    12b5:	89 e5                	mov    %esp,%ebp
    12b7:	57                   	push   %edi
    12b8:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    12b9:	31 f6                	xor    %esi,%esi
{
    12bb:	53                   	push   %ebx
    12bc:	89 f3                	mov    %esi,%ebx
    12be:	83 ec 1c             	sub    $0x1c,%esp
    12c1:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    12c4:	eb 33                	jmp    12f9 <gets+0x49>
    12c6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12cd:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    12d0:	83 ec 04             	sub    $0x4,%esp
    12d3:	8d 45 e7             	lea    -0x19(%ebp),%eax
    12d6:	6a 01                	push   $0x1
    12d8:	50                   	push   %eax
    12d9:	6a 00                	push   $0x0
    12db:	e8 75 03 00 00       	call   1655 <read>
    if(cc < 1)
    12e0:	83 c4 10             	add    $0x10,%esp
    12e3:	85 c0                	test   %eax,%eax
    12e5:	7e 1c                	jle    1303 <gets+0x53>
      break;
    buf[i++] = c;
    12e7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    12eb:	83 c7 01             	add    $0x1,%edi
    12ee:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    12f1:	3c 0a                	cmp    $0xa,%al
    12f3:	74 23                	je     1318 <gets+0x68>
    12f5:	3c 0d                	cmp    $0xd,%al
    12f7:	74 1f                	je     1318 <gets+0x68>
  for(i=0; i+1 < max; ){
    12f9:	83 c3 01             	add    $0x1,%ebx
    12fc:	89 fe                	mov    %edi,%esi
    12fe:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1301:	7c cd                	jl     12d0 <gets+0x20>
    1303:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    1305:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    1308:	c6 03 00             	movb   $0x0,(%ebx)
}
    130b:	8d 65 f4             	lea    -0xc(%ebp),%esp
    130e:	5b                   	pop    %ebx
    130f:	5e                   	pop    %esi
    1310:	5f                   	pop    %edi
    1311:	5d                   	pop    %ebp
    1312:	c3                   	ret    
    1313:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1317:	90                   	nop
    1318:	8b 75 08             	mov    0x8(%ebp),%esi
    131b:	8b 45 08             	mov    0x8(%ebp),%eax
    131e:	01 de                	add    %ebx,%esi
    1320:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    1322:	c6 03 00             	movb   $0x0,(%ebx)
}
    1325:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1328:	5b                   	pop    %ebx
    1329:	5e                   	pop    %esi
    132a:	5f                   	pop    %edi
    132b:	5d                   	pop    %ebp
    132c:	c3                   	ret    
    132d:	8d 76 00             	lea    0x0(%esi),%esi

00001330 <stat>:

int
stat(const char *n, struct stat *st)
{
    1330:	f3 0f 1e fb          	endbr32 
    1334:	55                   	push   %ebp
    1335:	89 e5                	mov    %esp,%ebp
    1337:	56                   	push   %esi
    1338:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1339:	83 ec 08             	sub    $0x8,%esp
    133c:	6a 00                	push   $0x0
    133e:	ff 75 08             	pushl  0x8(%ebp)
    1341:	e8 37 03 00 00       	call   167d <open>
  if(fd < 0)
    1346:	83 c4 10             	add    $0x10,%esp
    1349:	85 c0                	test   %eax,%eax
    134b:	78 2b                	js     1378 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    134d:	83 ec 08             	sub    $0x8,%esp
    1350:	ff 75 0c             	pushl  0xc(%ebp)
    1353:	89 c3                	mov    %eax,%ebx
    1355:	50                   	push   %eax
    1356:	e8 3a 03 00 00       	call   1695 <fstat>
  close(fd);
    135b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    135e:	89 c6                	mov    %eax,%esi
  close(fd);
    1360:	e8 00 03 00 00       	call   1665 <close>
  return r;
    1365:	83 c4 10             	add    $0x10,%esp
}
    1368:	8d 65 f8             	lea    -0x8(%ebp),%esp
    136b:	89 f0                	mov    %esi,%eax
    136d:	5b                   	pop    %ebx
    136e:	5e                   	pop    %esi
    136f:	5d                   	pop    %ebp
    1370:	c3                   	ret    
    1371:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1378:	be ff ff ff ff       	mov    $0xffffffff,%esi
    137d:	eb e9                	jmp    1368 <stat+0x38>
    137f:	90                   	nop

00001380 <atoi>:

int
atoi(const char *s)
{
    1380:	f3 0f 1e fb          	endbr32 
    1384:	55                   	push   %ebp
    1385:	89 e5                	mov    %esp,%ebp
    1387:	53                   	push   %ebx
    1388:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    138b:	0f be 02             	movsbl (%edx),%eax
    138e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1391:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1394:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1399:	77 1a                	ja     13b5 <atoi+0x35>
    139b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    139f:	90                   	nop
    n = n*10 + *s++ - '0';
    13a0:	83 c2 01             	add    $0x1,%edx
    13a3:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    13a6:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    13aa:	0f be 02             	movsbl (%edx),%eax
    13ad:	8d 58 d0             	lea    -0x30(%eax),%ebx
    13b0:	80 fb 09             	cmp    $0x9,%bl
    13b3:	76 eb                	jbe    13a0 <atoi+0x20>
  return n;
}
    13b5:	89 c8                	mov    %ecx,%eax
    13b7:	5b                   	pop    %ebx
    13b8:	5d                   	pop    %ebp
    13b9:	c3                   	ret    
    13ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000013c0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    13c0:	f3 0f 1e fb          	endbr32 
    13c4:	55                   	push   %ebp
    13c5:	89 e5                	mov    %esp,%ebp
    13c7:	57                   	push   %edi
    13c8:	8b 45 10             	mov    0x10(%ebp),%eax
    13cb:	8b 55 08             	mov    0x8(%ebp),%edx
    13ce:	56                   	push   %esi
    13cf:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    13d2:	85 c0                	test   %eax,%eax
    13d4:	7e 0f                	jle    13e5 <memmove+0x25>
    13d6:	01 d0                	add    %edx,%eax
  dst = vdst;
    13d8:	89 d7                	mov    %edx,%edi
    13da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    13e0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    13e1:	39 f8                	cmp    %edi,%eax
    13e3:	75 fb                	jne    13e0 <memmove+0x20>
  return vdst;
}
    13e5:	5e                   	pop    %esi
    13e6:	89 d0                	mov    %edx,%eax
    13e8:	5f                   	pop    %edi
    13e9:	5d                   	pop    %ebp
    13ea:	c3                   	ret    
    13eb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13ef:	90                   	nop

000013f0 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    13f0:	f3 0f 1e fb          	endbr32 
    13f4:	55                   	push   %ebp
    13f5:	89 e5                	mov    %esp,%ebp
    13f7:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    13fa:	8d 45 f4             	lea    -0xc(%ebp),%eax
    13fd:	50                   	push   %eax
    13fe:	e8 0a 03 00 00       	call   170d <join>
  
  return x;
}
    1403:	c9                   	leave  
    1404:	c3                   	ret    
    1405:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    140c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001410 <lock_init>:

void lock_init(struct lock_t *lk){
    1410:	f3 0f 1e fb          	endbr32 
    1414:	55                   	push   %ebp
    1415:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    1417:	8b 45 08             	mov    0x8(%ebp),%eax
    141a:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1420:	5d                   	pop    %ebp
    1421:	c3                   	ret    
    1422:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1429:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001430 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    1430:	f3 0f 1e fb          	endbr32 
    1434:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1435:	b9 01 00 00 00       	mov    $0x1,%ecx
    143a:	89 e5                	mov    %esp,%ebp
    143c:	8b 55 08             	mov    0x8(%ebp),%edx
    143f:	90                   	nop
    1440:	89 c8                	mov    %ecx,%eax
    1442:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1445:	85 c0                	test   %eax,%eax
    1447:	75 f7                	jne    1440 <lock_acquire+0x10>
}
    1449:	5d                   	pop    %ebp
    144a:	c3                   	ret    
    144b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    144f:	90                   	nop

00001450 <lock_release>:
void lock_release(struct lock_t *lk){
    1450:	f3 0f 1e fb          	endbr32 
    1454:	55                   	push   %ebp
    1455:	31 c0                	xor    %eax,%eax
    1457:	89 e5                	mov    %esp,%ebp
    1459:	8b 55 08             	mov    0x8(%ebp),%edx
    145c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    145f:	5d                   	pop    %ebp
    1460:	c3                   	ret    
    1461:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1468:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    146f:	90                   	nop

00001470 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1470:	f3 0f 1e fb          	endbr32 
    1474:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1475:	a1 60 1d 00 00       	mov    0x1d60,%eax
{
    147a:	89 e5                	mov    %esp,%ebp
    147c:	57                   	push   %edi
    147d:	56                   	push   %esi
    147e:	53                   	push   %ebx
    147f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1482:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1484:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1487:	39 c8                	cmp    %ecx,%eax
    1489:	73 15                	jae    14a0 <free+0x30>
    148b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    148f:	90                   	nop
    1490:	39 d1                	cmp    %edx,%ecx
    1492:	72 14                	jb     14a8 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1494:	39 d0                	cmp    %edx,%eax
    1496:	73 10                	jae    14a8 <free+0x38>
{
    1498:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    149a:	8b 10                	mov    (%eax),%edx
    149c:	39 c8                	cmp    %ecx,%eax
    149e:	72 f0                	jb     1490 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    14a0:	39 d0                	cmp    %edx,%eax
    14a2:	72 f4                	jb     1498 <free+0x28>
    14a4:	39 d1                	cmp    %edx,%ecx
    14a6:	73 f0                	jae    1498 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    14a8:	8b 73 fc             	mov    -0x4(%ebx),%esi
    14ab:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    14ae:	39 fa                	cmp    %edi,%edx
    14b0:	74 1e                	je     14d0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    14b2:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    14b5:	8b 50 04             	mov    0x4(%eax),%edx
    14b8:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    14bb:	39 f1                	cmp    %esi,%ecx
    14bd:	74 28                	je     14e7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    14bf:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    14c1:	5b                   	pop    %ebx
  freep = p;
    14c2:	a3 60 1d 00 00       	mov    %eax,0x1d60
}
    14c7:	5e                   	pop    %esi
    14c8:	5f                   	pop    %edi
    14c9:	5d                   	pop    %ebp
    14ca:	c3                   	ret    
    14cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14cf:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    14d0:	03 72 04             	add    0x4(%edx),%esi
    14d3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    14d6:	8b 10                	mov    (%eax),%edx
    14d8:	8b 12                	mov    (%edx),%edx
    14da:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    14dd:	8b 50 04             	mov    0x4(%eax),%edx
    14e0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    14e3:	39 f1                	cmp    %esi,%ecx
    14e5:	75 d8                	jne    14bf <free+0x4f>
    p->s.size += bp->s.size;
    14e7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    14ea:	a3 60 1d 00 00       	mov    %eax,0x1d60
    p->s.size += bp->s.size;
    14ef:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    14f2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    14f5:	89 10                	mov    %edx,(%eax)
}
    14f7:	5b                   	pop    %ebx
    14f8:	5e                   	pop    %esi
    14f9:	5f                   	pop    %edi
    14fa:	5d                   	pop    %ebp
    14fb:	c3                   	ret    
    14fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001500 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1500:	f3 0f 1e fb          	endbr32 
    1504:	55                   	push   %ebp
    1505:	89 e5                	mov    %esp,%ebp
    1507:	57                   	push   %edi
    1508:	56                   	push   %esi
    1509:	53                   	push   %ebx
    150a:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    150d:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    1510:	8b 3d 60 1d 00 00    	mov    0x1d60,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1516:	8d 70 07             	lea    0x7(%eax),%esi
    1519:	c1 ee 03             	shr    $0x3,%esi
    151c:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    151f:	85 ff                	test   %edi,%edi
    1521:	0f 84 a9 00 00 00    	je     15d0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1527:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    1529:	8b 48 04             	mov    0x4(%eax),%ecx
    152c:	39 f1                	cmp    %esi,%ecx
    152e:	73 6d                	jae    159d <malloc+0x9d>
    1530:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1536:	bb 00 10 00 00       	mov    $0x1000,%ebx
    153b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    153e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1545:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1548:	eb 17                	jmp    1561 <malloc+0x61>
    154a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1550:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1552:	8b 4a 04             	mov    0x4(%edx),%ecx
    1555:	39 f1                	cmp    %esi,%ecx
    1557:	73 4f                	jae    15a8 <malloc+0xa8>
    1559:	8b 3d 60 1d 00 00    	mov    0x1d60,%edi
    155f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1561:	39 c7                	cmp    %eax,%edi
    1563:	75 eb                	jne    1550 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1565:	83 ec 0c             	sub    $0xc,%esp
    1568:	ff 75 e4             	pushl  -0x1c(%ebp)
    156b:	e8 55 01 00 00       	call   16c5 <sbrk>
  if(p == (char*)-1)
    1570:	83 c4 10             	add    $0x10,%esp
    1573:	83 f8 ff             	cmp    $0xffffffff,%eax
    1576:	74 1b                	je     1593 <malloc+0x93>
  hp->s.size = nu;
    1578:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    157b:	83 ec 0c             	sub    $0xc,%esp
    157e:	83 c0 08             	add    $0x8,%eax
    1581:	50                   	push   %eax
    1582:	e8 e9 fe ff ff       	call   1470 <free>
  return freep;
    1587:	a1 60 1d 00 00       	mov    0x1d60,%eax
      if((p = morecore(nunits)) == 0)
    158c:	83 c4 10             	add    $0x10,%esp
    158f:	85 c0                	test   %eax,%eax
    1591:	75 bd                	jne    1550 <malloc+0x50>
        return 0;
  }
}
    1593:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1596:	31 c0                	xor    %eax,%eax
}
    1598:	5b                   	pop    %ebx
    1599:	5e                   	pop    %esi
    159a:	5f                   	pop    %edi
    159b:	5d                   	pop    %ebp
    159c:	c3                   	ret    
    if(p->s.size >= nunits){
    159d:	89 c2                	mov    %eax,%edx
    159f:	89 f8                	mov    %edi,%eax
    15a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    15a8:	39 ce                	cmp    %ecx,%esi
    15aa:	74 54                	je     1600 <malloc+0x100>
        p->s.size -= nunits;
    15ac:	29 f1                	sub    %esi,%ecx
    15ae:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    15b1:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    15b4:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    15b7:	a3 60 1d 00 00       	mov    %eax,0x1d60
}
    15bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    15bf:	8d 42 08             	lea    0x8(%edx),%eax
}
    15c2:	5b                   	pop    %ebx
    15c3:	5e                   	pop    %esi
    15c4:	5f                   	pop    %edi
    15c5:	5d                   	pop    %ebp
    15c6:	c3                   	ret    
    15c7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15ce:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    15d0:	c7 05 60 1d 00 00 64 	movl   $0x1d64,0x1d60
    15d7:	1d 00 00 
    base.s.size = 0;
    15da:	bf 64 1d 00 00       	mov    $0x1d64,%edi
    base.s.ptr = freep = prevp = &base;
    15df:	c7 05 64 1d 00 00 64 	movl   $0x1d64,0x1d64
    15e6:	1d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    15e9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    15eb:	c7 05 68 1d 00 00 00 	movl   $0x0,0x1d68
    15f2:	00 00 00 
    if(p->s.size >= nunits){
    15f5:	e9 36 ff ff ff       	jmp    1530 <malloc+0x30>
    15fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    1600:	8b 0a                	mov    (%edx),%ecx
    1602:	89 08                	mov    %ecx,(%eax)
    1604:	eb b1                	jmp    15b7 <malloc+0xb7>
    1606:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    160d:	8d 76 00             	lea    0x0(%esi),%esi

00001610 <thread_create>:
{
    1610:	f3 0f 1e fb          	endbr32 
    1614:	55                   	push   %ebp
    1615:	89 e5                	mov    %esp,%ebp
    1617:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    161a:	68 00 10 00 00       	push   $0x1000
    161f:	e8 dc fe ff ff       	call   1500 <malloc>
return clone(start_routine,arg1,arg2,stack);
    1624:	50                   	push   %eax
    1625:	ff 75 10             	pushl  0x10(%ebp)
    1628:	ff 75 0c             	pushl  0xc(%ebp)
    162b:	ff 75 08             	pushl  0x8(%ebp)
    162e:	e8 d2 00 00 00       	call   1705 <clone>
}
    1633:	c9                   	leave  
    1634:	c3                   	ret    

00001635 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1635:	b8 01 00 00 00       	mov    $0x1,%eax
    163a:	cd 40                	int    $0x40
    163c:	c3                   	ret    

0000163d <exit>:
SYSCALL(exit)
    163d:	b8 02 00 00 00       	mov    $0x2,%eax
    1642:	cd 40                	int    $0x40
    1644:	c3                   	ret    

00001645 <wait>:
SYSCALL(wait)
    1645:	b8 03 00 00 00       	mov    $0x3,%eax
    164a:	cd 40                	int    $0x40
    164c:	c3                   	ret    

0000164d <pipe>:
SYSCALL(pipe)
    164d:	b8 04 00 00 00       	mov    $0x4,%eax
    1652:	cd 40                	int    $0x40
    1654:	c3                   	ret    

00001655 <read>:
SYSCALL(read)
    1655:	b8 05 00 00 00       	mov    $0x5,%eax
    165a:	cd 40                	int    $0x40
    165c:	c3                   	ret    

0000165d <write>:
SYSCALL(write)
    165d:	b8 10 00 00 00       	mov    $0x10,%eax
    1662:	cd 40                	int    $0x40
    1664:	c3                   	ret    

00001665 <close>:
SYSCALL(close)
    1665:	b8 15 00 00 00       	mov    $0x15,%eax
    166a:	cd 40                	int    $0x40
    166c:	c3                   	ret    

0000166d <kill>:
SYSCALL(kill)
    166d:	b8 06 00 00 00       	mov    $0x6,%eax
    1672:	cd 40                	int    $0x40
    1674:	c3                   	ret    

00001675 <exec>:
SYSCALL(exec)
    1675:	b8 07 00 00 00       	mov    $0x7,%eax
    167a:	cd 40                	int    $0x40
    167c:	c3                   	ret    

0000167d <open>:
SYSCALL(open)
    167d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1682:	cd 40                	int    $0x40
    1684:	c3                   	ret    

00001685 <mknod>:
SYSCALL(mknod)
    1685:	b8 11 00 00 00       	mov    $0x11,%eax
    168a:	cd 40                	int    $0x40
    168c:	c3                   	ret    

0000168d <unlink>:
SYSCALL(unlink)
    168d:	b8 12 00 00 00       	mov    $0x12,%eax
    1692:	cd 40                	int    $0x40
    1694:	c3                   	ret    

00001695 <fstat>:
SYSCALL(fstat)
    1695:	b8 08 00 00 00       	mov    $0x8,%eax
    169a:	cd 40                	int    $0x40
    169c:	c3                   	ret    

0000169d <link>:
SYSCALL(link)
    169d:	b8 13 00 00 00       	mov    $0x13,%eax
    16a2:	cd 40                	int    $0x40
    16a4:	c3                   	ret    

000016a5 <mkdir>:
SYSCALL(mkdir)
    16a5:	b8 14 00 00 00       	mov    $0x14,%eax
    16aa:	cd 40                	int    $0x40
    16ac:	c3                   	ret    

000016ad <chdir>:
SYSCALL(chdir)
    16ad:	b8 09 00 00 00       	mov    $0x9,%eax
    16b2:	cd 40                	int    $0x40
    16b4:	c3                   	ret    

000016b5 <dup>:
SYSCALL(dup)
    16b5:	b8 0a 00 00 00       	mov    $0xa,%eax
    16ba:	cd 40                	int    $0x40
    16bc:	c3                   	ret    

000016bd <getpid>:
SYSCALL(getpid)
    16bd:	b8 0b 00 00 00       	mov    $0xb,%eax
    16c2:	cd 40                	int    $0x40
    16c4:	c3                   	ret    

000016c5 <sbrk>:
SYSCALL(sbrk)
    16c5:	b8 0c 00 00 00       	mov    $0xc,%eax
    16ca:	cd 40                	int    $0x40
    16cc:	c3                   	ret    

000016cd <sleep>:
SYSCALL(sleep)
    16cd:	b8 0d 00 00 00       	mov    $0xd,%eax
    16d2:	cd 40                	int    $0x40
    16d4:	c3                   	ret    

000016d5 <uptime>:
SYSCALL(uptime)
    16d5:	b8 0e 00 00 00       	mov    $0xe,%eax
    16da:	cd 40                	int    $0x40
    16dc:	c3                   	ret    

000016dd <count>:
SYSCALL(count)
    16dd:	b8 16 00 00 00       	mov    $0x16,%eax
    16e2:	cd 40                	int    $0x40
    16e4:	c3                   	ret    

000016e5 <settickets>:

SYSCALL(settickets)
    16e5:	b8 17 00 00 00       	mov    $0x17,%eax
    16ea:	cd 40                	int    $0x40
    16ec:	c3                   	ret    

000016ed <getpinfo>:
SYSCALL(getpinfo)
    16ed:	b8 18 00 00 00       	mov    $0x18,%eax
    16f2:	cd 40                	int    $0x40
    16f4:	c3                   	ret    

000016f5 <mprotect>:

SYSCALL(mprotect)
    16f5:	b8 19 00 00 00       	mov    $0x19,%eax
    16fa:	cd 40                	int    $0x40
    16fc:	c3                   	ret    

000016fd <munprotect>:
SYSCALL(munprotect)
    16fd:	b8 1a 00 00 00       	mov    $0x1a,%eax
    1702:	cd 40                	int    $0x40
    1704:	c3                   	ret    

00001705 <clone>:

SYSCALL(clone)
    1705:	b8 1b 00 00 00       	mov    $0x1b,%eax
    170a:	cd 40                	int    $0x40
    170c:	c3                   	ret    

0000170d <join>:
SYSCALL(join)
    170d:	b8 1c 00 00 00       	mov    $0x1c,%eax
    1712:	cd 40                	int    $0x40
    1714:	c3                   	ret    
    1715:	66 90                	xchg   %ax,%ax
    1717:	66 90                	xchg   %ax,%ax
    1719:	66 90                	xchg   %ax,%ax
    171b:	66 90                	xchg   %ax,%ax
    171d:	66 90                	xchg   %ax,%ax
    171f:	90                   	nop

00001720 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1720:	55                   	push   %ebp
    1721:	89 e5                	mov    %esp,%ebp
    1723:	57                   	push   %edi
    1724:	56                   	push   %esi
    1725:	53                   	push   %ebx
    1726:	83 ec 3c             	sub    $0x3c,%esp
    1729:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    172c:	89 d1                	mov    %edx,%ecx
{
    172e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    1731:	85 d2                	test   %edx,%edx
    1733:	0f 89 7f 00 00 00    	jns    17b8 <printint+0x98>
    1739:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    173d:	74 79                	je     17b8 <printint+0x98>
    neg = 1;
    173f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1746:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1748:	31 db                	xor    %ebx,%ebx
    174a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    174d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1750:	89 c8                	mov    %ecx,%eax
    1752:	31 d2                	xor    %edx,%edx
    1754:	89 cf                	mov    %ecx,%edi
    1756:	f7 75 c4             	divl   -0x3c(%ebp)
    1759:	0f b6 92 d8 19 00 00 	movzbl 0x19d8(%edx),%edx
    1760:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1763:	89 d8                	mov    %ebx,%eax
    1765:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1768:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    176b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    176e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1771:	76 dd                	jbe    1750 <printint+0x30>
  if(neg)
    1773:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1776:	85 c9                	test   %ecx,%ecx
    1778:	74 0c                	je     1786 <printint+0x66>
    buf[i++] = '-';
    177a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    177f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1781:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1786:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1789:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    178d:	eb 07                	jmp    1796 <printint+0x76>
    178f:	90                   	nop
    1790:	0f b6 13             	movzbl (%ebx),%edx
    1793:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1796:	83 ec 04             	sub    $0x4,%esp
    1799:	88 55 d7             	mov    %dl,-0x29(%ebp)
    179c:	6a 01                	push   $0x1
    179e:	56                   	push   %esi
    179f:	57                   	push   %edi
    17a0:	e8 b8 fe ff ff       	call   165d <write>
  while(--i >= 0)
    17a5:	83 c4 10             	add    $0x10,%esp
    17a8:	39 de                	cmp    %ebx,%esi
    17aa:	75 e4                	jne    1790 <printint+0x70>
    putc(fd, buf[i]);
}
    17ac:	8d 65 f4             	lea    -0xc(%ebp),%esp
    17af:	5b                   	pop    %ebx
    17b0:	5e                   	pop    %esi
    17b1:	5f                   	pop    %edi
    17b2:	5d                   	pop    %ebp
    17b3:	c3                   	ret    
    17b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    17b8:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    17bf:	eb 87                	jmp    1748 <printint+0x28>
    17c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17c8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17cf:	90                   	nop

000017d0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    17d0:	f3 0f 1e fb          	endbr32 
    17d4:	55                   	push   %ebp
    17d5:	89 e5                	mov    %esp,%ebp
    17d7:	57                   	push   %edi
    17d8:	56                   	push   %esi
    17d9:	53                   	push   %ebx
    17da:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    17dd:	8b 75 0c             	mov    0xc(%ebp),%esi
    17e0:	0f b6 1e             	movzbl (%esi),%ebx
    17e3:	84 db                	test   %bl,%bl
    17e5:	0f 84 b4 00 00 00    	je     189f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    17eb:	8d 45 10             	lea    0x10(%ebp),%eax
    17ee:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    17f1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    17f4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    17f6:	89 45 d0             	mov    %eax,-0x30(%ebp)
    17f9:	eb 33                	jmp    182e <printf+0x5e>
    17fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17ff:	90                   	nop
    1800:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    1803:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    1808:	83 f8 25             	cmp    $0x25,%eax
    180b:	74 17                	je     1824 <printf+0x54>
  write(fd, &c, 1);
    180d:	83 ec 04             	sub    $0x4,%esp
    1810:	88 5d e7             	mov    %bl,-0x19(%ebp)
    1813:	6a 01                	push   $0x1
    1815:	57                   	push   %edi
    1816:	ff 75 08             	pushl  0x8(%ebp)
    1819:	e8 3f fe ff ff       	call   165d <write>
    181e:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    1821:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1824:	0f b6 1e             	movzbl (%esi),%ebx
    1827:	83 c6 01             	add    $0x1,%esi
    182a:	84 db                	test   %bl,%bl
    182c:	74 71                	je     189f <printf+0xcf>
    c = fmt[i] & 0xff;
    182e:	0f be cb             	movsbl %bl,%ecx
    1831:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1834:	85 d2                	test   %edx,%edx
    1836:	74 c8                	je     1800 <printf+0x30>
      }
    } else if(state == '%'){
    1838:	83 fa 25             	cmp    $0x25,%edx
    183b:	75 e7                	jne    1824 <printf+0x54>
      if(c == 'd'){
    183d:	83 f8 64             	cmp    $0x64,%eax
    1840:	0f 84 9a 00 00 00    	je     18e0 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1846:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    184c:	83 f9 70             	cmp    $0x70,%ecx
    184f:	74 5f                	je     18b0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1851:	83 f8 73             	cmp    $0x73,%eax
    1854:	0f 84 d6 00 00 00    	je     1930 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    185a:	83 f8 63             	cmp    $0x63,%eax
    185d:	0f 84 8d 00 00 00    	je     18f0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1863:	83 f8 25             	cmp    $0x25,%eax
    1866:	0f 84 b4 00 00 00    	je     1920 <printf+0x150>
  write(fd, &c, 1);
    186c:	83 ec 04             	sub    $0x4,%esp
    186f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1873:	6a 01                	push   $0x1
    1875:	57                   	push   %edi
    1876:	ff 75 08             	pushl  0x8(%ebp)
    1879:	e8 df fd ff ff       	call   165d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    187e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1881:	83 c4 0c             	add    $0xc,%esp
    1884:	6a 01                	push   $0x1
    1886:	83 c6 01             	add    $0x1,%esi
    1889:	57                   	push   %edi
    188a:	ff 75 08             	pushl  0x8(%ebp)
    188d:	e8 cb fd ff ff       	call   165d <write>
  for(i = 0; fmt[i]; i++){
    1892:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1896:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1899:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    189b:	84 db                	test   %bl,%bl
    189d:	75 8f                	jne    182e <printf+0x5e>
    }
  }
}
    189f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    18a2:	5b                   	pop    %ebx
    18a3:	5e                   	pop    %esi
    18a4:	5f                   	pop    %edi
    18a5:	5d                   	pop    %ebp
    18a6:	c3                   	ret    
    18a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18ae:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    18b0:	83 ec 0c             	sub    $0xc,%esp
    18b3:	b9 10 00 00 00       	mov    $0x10,%ecx
    18b8:	6a 00                	push   $0x0
    18ba:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    18bd:	8b 45 08             	mov    0x8(%ebp),%eax
    18c0:	8b 13                	mov    (%ebx),%edx
    18c2:	e8 59 fe ff ff       	call   1720 <printint>
        ap++;
    18c7:	89 d8                	mov    %ebx,%eax
    18c9:	83 c4 10             	add    $0x10,%esp
      state = 0;
    18cc:	31 d2                	xor    %edx,%edx
        ap++;
    18ce:	83 c0 04             	add    $0x4,%eax
    18d1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    18d4:	e9 4b ff ff ff       	jmp    1824 <printf+0x54>
    18d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    18e0:	83 ec 0c             	sub    $0xc,%esp
    18e3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    18e8:	6a 01                	push   $0x1
    18ea:	eb ce                	jmp    18ba <printf+0xea>
    18ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    18f0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    18f3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    18f6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    18f8:	6a 01                	push   $0x1
        ap++;
    18fa:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    18fd:	57                   	push   %edi
    18fe:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1901:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1904:	e8 54 fd ff ff       	call   165d <write>
        ap++;
    1909:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    190c:	83 c4 10             	add    $0x10,%esp
      state = 0;
    190f:	31 d2                	xor    %edx,%edx
    1911:	e9 0e ff ff ff       	jmp    1824 <printf+0x54>
    1916:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    191d:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1920:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1923:	83 ec 04             	sub    $0x4,%esp
    1926:	e9 59 ff ff ff       	jmp    1884 <printf+0xb4>
    192b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    192f:	90                   	nop
        s = (char*)*ap;
    1930:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1933:	8b 18                	mov    (%eax),%ebx
        ap++;
    1935:	83 c0 04             	add    $0x4,%eax
    1938:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    193b:	85 db                	test   %ebx,%ebx
    193d:	74 17                	je     1956 <printf+0x186>
        while(*s != 0){
    193f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1942:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1944:	84 c0                	test   %al,%al
    1946:	0f 84 d8 fe ff ff    	je     1824 <printf+0x54>
    194c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    194f:	89 de                	mov    %ebx,%esi
    1951:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1954:	eb 1a                	jmp    1970 <printf+0x1a0>
          s = "(null)";
    1956:	bb cf 19 00 00       	mov    $0x19cf,%ebx
        while(*s != 0){
    195b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    195e:	b8 28 00 00 00       	mov    $0x28,%eax
    1963:	89 de                	mov    %ebx,%esi
    1965:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1968:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    196f:	90                   	nop
  write(fd, &c, 1);
    1970:	83 ec 04             	sub    $0x4,%esp
          s++;
    1973:	83 c6 01             	add    $0x1,%esi
    1976:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1979:	6a 01                	push   $0x1
    197b:	57                   	push   %edi
    197c:	53                   	push   %ebx
    197d:	e8 db fc ff ff       	call   165d <write>
        while(*s != 0){
    1982:	0f b6 06             	movzbl (%esi),%eax
    1985:	83 c4 10             	add    $0x10,%esp
    1988:	84 c0                	test   %al,%al
    198a:	75 e4                	jne    1970 <printf+0x1a0>
    198c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    198f:	31 d2                	xor    %edx,%edx
    1991:	e9 8e fe ff ff       	jmp    1824 <printf+0x54>
