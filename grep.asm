
_grep:     file format elf32-i386


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
    1013:	53                   	push   %ebx
    1014:	51                   	push   %ecx
    1015:	83 ec 18             	sub    $0x18,%esp
    1018:	8b 01                	mov    (%ecx),%eax
    101a:	8b 59 04             	mov    0x4(%ecx),%ebx
    101d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  int fd, i;
  char *pattern;

  if(argc <= 1){
    1020:	83 f8 01             	cmp    $0x1,%eax
    1023:	7e 6b                	jle    1090 <main+0x90>
    printf(2, "usage: grep pattern [file ...]\n");
    exit();
  }
  pattern = argv[1];
    1025:	8b 43 04             	mov    0x4(%ebx),%eax
    1028:	83 c3 08             	add    $0x8,%ebx

  if(argc <= 2){
    102b:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
    grep(pattern, 0);
    exit();
  }

  for(i = 2; i < argc; i++){
    102f:	be 02 00 00 00       	mov    $0x2,%esi
  pattern = argv[1];
    1034:	89 45 e0             	mov    %eax,-0x20(%ebp)
  if(argc <= 2){
    1037:	75 29                	jne    1062 <main+0x62>
    1039:	eb 68                	jmp    10a3 <main+0xa3>
    103b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    103f:	90                   	nop
    if((fd = open(argv[i], 0)) < 0){
      printf(1, "grep: cannot open %s\n", argv[i]);
      exit();
    }
    grep(pattern, fd);
    1040:	83 ec 08             	sub    $0x8,%esp
  for(i = 2; i < argc; i++){
    1043:	83 c6 01             	add    $0x1,%esi
    1046:	83 c3 04             	add    $0x4,%ebx
    grep(pattern, fd);
    1049:	50                   	push   %eax
    104a:	ff 75 e0             	pushl  -0x20(%ebp)
    104d:	e8 de 01 00 00       	call   1230 <grep>
    close(fd);
    1052:	89 3c 24             	mov    %edi,(%esp)
    1055:	e8 bb 07 00 00       	call   1815 <close>
  for(i = 2; i < argc; i++){
    105a:	83 c4 10             	add    $0x10,%esp
    105d:	39 75 e4             	cmp    %esi,-0x1c(%ebp)
    1060:	7e 29                	jle    108b <main+0x8b>
    if((fd = open(argv[i], 0)) < 0){
    1062:	83 ec 08             	sub    $0x8,%esp
    1065:	6a 00                	push   $0x0
    1067:	ff 33                	pushl  (%ebx)
    1069:	e8 bf 07 00 00       	call   182d <open>
    106e:	83 c4 10             	add    $0x10,%esp
    1071:	89 c7                	mov    %eax,%edi
    1073:	85 c0                	test   %eax,%eax
    1075:	79 c9                	jns    1040 <main+0x40>
      printf(1, "grep: cannot open %s\n", argv[i]);
    1077:	50                   	push   %eax
    1078:	ff 33                	pushl  (%ebx)
    107a:	68 68 1b 00 00       	push   $0x1b68
    107f:	6a 01                	push   $0x1
    1081:	e8 fa 08 00 00       	call   1980 <printf>
      exit();
    1086:	e8 62 07 00 00       	call   17ed <exit>
  }
  exit();
    108b:	e8 5d 07 00 00       	call   17ed <exit>
    printf(2, "usage: grep pattern [file ...]\n");
    1090:	51                   	push   %ecx
    1091:	51                   	push   %ecx
    1092:	68 48 1b 00 00       	push   $0x1b48
    1097:	6a 02                	push   $0x2
    1099:	e8 e2 08 00 00       	call   1980 <printf>
    exit();
    109e:	e8 4a 07 00 00       	call   17ed <exit>
    grep(pattern, 0);
    10a3:	52                   	push   %edx
    10a4:	52                   	push   %edx
    10a5:	6a 00                	push   $0x0
    10a7:	50                   	push   %eax
    10a8:	e8 83 01 00 00       	call   1230 <grep>
    exit();
    10ad:	e8 3b 07 00 00       	call   17ed <exit>
    10b2:	66 90                	xchg   %ax,%ax
    10b4:	66 90                	xchg   %ax,%ax
    10b6:	66 90                	xchg   %ax,%ax
    10b8:	66 90                	xchg   %ax,%ax
    10ba:	66 90                	xchg   %ax,%ax
    10bc:	66 90                	xchg   %ax,%ax
    10be:	66 90                	xchg   %ax,%ax

000010c0 <matchstar>:
  return 0;
}

// matchstar: search for c*re at beginning of text
int matchstar(int c, char *re, char *text)
{
    10c0:	f3 0f 1e fb          	endbr32 
    10c4:	55                   	push   %ebp
    10c5:	89 e5                	mov    %esp,%ebp
    10c7:	57                   	push   %edi
    10c8:	56                   	push   %esi
    10c9:	53                   	push   %ebx
    10ca:	83 ec 0c             	sub    $0xc,%esp
    10cd:	8b 5d 08             	mov    0x8(%ebp),%ebx
    10d0:	8b 75 0c             	mov    0xc(%ebp),%esi
    10d3:	8b 7d 10             	mov    0x10(%ebp),%edi
    10d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    10dd:	8d 76 00             	lea    0x0(%esi),%esi
  do{  // a * matches zero or more instances
    if(matchhere(re, text))
    10e0:	83 ec 08             	sub    $0x8,%esp
    10e3:	57                   	push   %edi
    10e4:	56                   	push   %esi
    10e5:	e8 36 00 00 00       	call   1120 <matchhere>
    10ea:	83 c4 10             	add    $0x10,%esp
    10ed:	85 c0                	test   %eax,%eax
    10ef:	75 1f                	jne    1110 <matchstar+0x50>
      return 1;
  }while(*text!='\0' && (*text++==c || c=='.'));
    10f1:	0f be 17             	movsbl (%edi),%edx
    10f4:	84 d2                	test   %dl,%dl
    10f6:	74 0c                	je     1104 <matchstar+0x44>
    10f8:	83 c7 01             	add    $0x1,%edi
    10fb:	39 da                	cmp    %ebx,%edx
    10fd:	74 e1                	je     10e0 <matchstar+0x20>
    10ff:	83 fb 2e             	cmp    $0x2e,%ebx
    1102:	74 dc                	je     10e0 <matchstar+0x20>
  return 0;
}
    1104:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1107:	5b                   	pop    %ebx
    1108:	5e                   	pop    %esi
    1109:	5f                   	pop    %edi
    110a:	5d                   	pop    %ebp
    110b:	c3                   	ret    
    110c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1110:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return 1;
    1113:	b8 01 00 00 00       	mov    $0x1,%eax
}
    1118:	5b                   	pop    %ebx
    1119:	5e                   	pop    %esi
    111a:	5f                   	pop    %edi
    111b:	5d                   	pop    %ebp
    111c:	c3                   	ret    
    111d:	8d 76 00             	lea    0x0(%esi),%esi

00001120 <matchhere>:
{
    1120:	f3 0f 1e fb          	endbr32 
    1124:	55                   	push   %ebp
    1125:	89 e5                	mov    %esp,%ebp
    1127:	57                   	push   %edi
    1128:	56                   	push   %esi
    1129:	53                   	push   %ebx
    112a:	83 ec 0c             	sub    $0xc,%esp
    112d:	8b 4d 08             	mov    0x8(%ebp),%ecx
    1130:	8b 7d 0c             	mov    0xc(%ebp),%edi
  if(re[0] == '\0')
    1133:	0f b6 01             	movzbl (%ecx),%eax
    1136:	84 c0                	test   %al,%al
    1138:	75 2b                	jne    1165 <matchhere+0x45>
    113a:	eb 64                	jmp    11a0 <matchhere+0x80>
    113c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(re[0] == '$' && re[1] == '\0')
    1140:	0f b6 37             	movzbl (%edi),%esi
    1143:	80 fa 24             	cmp    $0x24,%dl
    1146:	75 04                	jne    114c <matchhere+0x2c>
    1148:	84 c0                	test   %al,%al
    114a:	74 61                	je     11ad <matchhere+0x8d>
  if(*text!='\0' && (re[0]=='.' || re[0]==*text))
    114c:	89 f3                	mov    %esi,%ebx
    114e:	84 db                	test   %bl,%bl
    1150:	74 3e                	je     1190 <matchhere+0x70>
    1152:	80 fa 2e             	cmp    $0x2e,%dl
    1155:	74 04                	je     115b <matchhere+0x3b>
    1157:	38 d3                	cmp    %dl,%bl
    1159:	75 35                	jne    1190 <matchhere+0x70>
    return matchhere(re+1, text+1);
    115b:	83 c7 01             	add    $0x1,%edi
    115e:	83 c1 01             	add    $0x1,%ecx
  if(re[0] == '\0')
    1161:	84 c0                	test   %al,%al
    1163:	74 3b                	je     11a0 <matchhere+0x80>
  if(re[1] == '*')
    1165:	0f be d0             	movsbl %al,%edx
    1168:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    116c:	3c 2a                	cmp    $0x2a,%al
    116e:	75 d0                	jne    1140 <matchhere+0x20>
    return matchstar(re[0], re+2, text);
    1170:	83 ec 04             	sub    $0x4,%esp
    1173:	83 c1 02             	add    $0x2,%ecx
    1176:	57                   	push   %edi
    1177:	51                   	push   %ecx
    1178:	52                   	push   %edx
    1179:	e8 42 ff ff ff       	call   10c0 <matchstar>
    117e:	83 c4 10             	add    $0x10,%esp
}
    1181:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1184:	5b                   	pop    %ebx
    1185:	5e                   	pop    %esi
    1186:	5f                   	pop    %edi
    1187:	5d                   	pop    %ebp
    1188:	c3                   	ret    
    1189:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1190:	8d 65 f4             	lea    -0xc(%ebp),%esp
  return 0;
    1193:	31 c0                	xor    %eax,%eax
}
    1195:	5b                   	pop    %ebx
    1196:	5e                   	pop    %esi
    1197:	5f                   	pop    %edi
    1198:	5d                   	pop    %ebp
    1199:	c3                   	ret    
    119a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11a0:	8d 65 f4             	lea    -0xc(%ebp),%esp
    return 1;
    11a3:	b8 01 00 00 00       	mov    $0x1,%eax
}
    11a8:	5b                   	pop    %ebx
    11a9:	5e                   	pop    %esi
    11aa:	5f                   	pop    %edi
    11ab:	5d                   	pop    %ebp
    11ac:	c3                   	ret    
    return *text == '\0';
    11ad:	89 f0                	mov    %esi,%eax
    11af:	84 c0                	test   %al,%al
    11b1:	0f 94 c0             	sete   %al
    11b4:	0f b6 c0             	movzbl %al,%eax
    11b7:	eb c8                	jmp    1181 <matchhere+0x61>
    11b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000011c0 <match>:
{
    11c0:	f3 0f 1e fb          	endbr32 
    11c4:	55                   	push   %ebp
    11c5:	89 e5                	mov    %esp,%ebp
    11c7:	56                   	push   %esi
    11c8:	53                   	push   %ebx
    11c9:	8b 5d 08             	mov    0x8(%ebp),%ebx
    11cc:	8b 75 0c             	mov    0xc(%ebp),%esi
  if(re[0] == '^')
    11cf:	80 3b 5e             	cmpb   $0x5e,(%ebx)
    11d2:	75 15                	jne    11e9 <match+0x29>
    11d4:	eb 3a                	jmp    1210 <match+0x50>
    11d6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11dd:	8d 76 00             	lea    0x0(%esi),%esi
  }while(*text++ != '\0');
    11e0:	83 c6 01             	add    $0x1,%esi
    11e3:	80 7e ff 00          	cmpb   $0x0,-0x1(%esi)
    11e7:	74 16                	je     11ff <match+0x3f>
    if(matchhere(re, text))
    11e9:	83 ec 08             	sub    $0x8,%esp
    11ec:	56                   	push   %esi
    11ed:	53                   	push   %ebx
    11ee:	e8 2d ff ff ff       	call   1120 <matchhere>
    11f3:	83 c4 10             	add    $0x10,%esp
    11f6:	85 c0                	test   %eax,%eax
    11f8:	74 e6                	je     11e0 <match+0x20>
      return 1;
    11fa:	b8 01 00 00 00       	mov    $0x1,%eax
}
    11ff:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1202:	5b                   	pop    %ebx
    1203:	5e                   	pop    %esi
    1204:	5d                   	pop    %ebp
    1205:	c3                   	ret    
    1206:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    120d:	8d 76 00             	lea    0x0(%esi),%esi
    return matchhere(re+1, text);
    1210:	83 c3 01             	add    $0x1,%ebx
    1213:	89 5d 08             	mov    %ebx,0x8(%ebp)
}
    1216:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1219:	5b                   	pop    %ebx
    121a:	5e                   	pop    %esi
    121b:	5d                   	pop    %ebp
    return matchhere(re+1, text);
    121c:	e9 ff fe ff ff       	jmp    1120 <matchhere>
    1221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1228:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    122f:	90                   	nop

00001230 <grep>:
{
    1230:	f3 0f 1e fb          	endbr32 
    1234:	55                   	push   %ebp
    1235:	89 e5                	mov    %esp,%ebp
    1237:	57                   	push   %edi
    1238:	56                   	push   %esi
    1239:	53                   	push   %ebx
    123a:	83 ec 1c             	sub    $0x1c,%esp
  m = 0;
    123d:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
{
    1244:	8b 75 08             	mov    0x8(%ebp),%esi
    1247:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    124e:	66 90                	xchg   %ax,%ax
  while((n = read(fd, buf+m, sizeof(buf)-m-1)) > 0){
    1250:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
    1253:	b8 ff 03 00 00       	mov    $0x3ff,%eax
    1258:	83 ec 04             	sub    $0x4,%esp
    125b:	29 c8                	sub    %ecx,%eax
    125d:	50                   	push   %eax
    125e:	8d 81 00 20 00 00    	lea    0x2000(%ecx),%eax
    1264:	50                   	push   %eax
    1265:	ff 75 0c             	pushl  0xc(%ebp)
    1268:	e8 98 05 00 00       	call   1805 <read>
    126d:	83 c4 10             	add    $0x10,%esp
    1270:	85 c0                	test   %eax,%eax
    1272:	0f 8e b8 00 00 00    	jle    1330 <grep+0x100>
    m += n;
    1278:	01 45 e4             	add    %eax,-0x1c(%ebp)
    127b:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
    p = buf;
    127e:	bb 00 20 00 00       	mov    $0x2000,%ebx
    buf[m] = '\0';
    1283:	c6 81 00 20 00 00 00 	movb   $0x0,0x2000(%ecx)
    while((q = strchr(p, '\n')) != 0){
    128a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1290:	83 ec 08             	sub    $0x8,%esp
    1293:	6a 0a                	push   $0xa
    1295:	53                   	push   %ebx
    1296:	e8 85 01 00 00       	call   1420 <strchr>
    129b:	83 c4 10             	add    $0x10,%esp
    129e:	89 c7                	mov    %eax,%edi
    12a0:	85 c0                	test   %eax,%eax
    12a2:	74 3c                	je     12e0 <grep+0xb0>
      if(match(pattern, p)){
    12a4:	83 ec 08             	sub    $0x8,%esp
      *q = 0;
    12a7:	c6 07 00             	movb   $0x0,(%edi)
      if(match(pattern, p)){
    12aa:	53                   	push   %ebx
    12ab:	56                   	push   %esi
    12ac:	e8 0f ff ff ff       	call   11c0 <match>
    12b1:	83 c4 10             	add    $0x10,%esp
    12b4:	8d 57 01             	lea    0x1(%edi),%edx
    12b7:	85 c0                	test   %eax,%eax
    12b9:	75 05                	jne    12c0 <grep+0x90>
      p = q+1;
    12bb:	89 d3                	mov    %edx,%ebx
    12bd:	eb d1                	jmp    1290 <grep+0x60>
    12bf:	90                   	nop
        write(1, p, q+1 - p);
    12c0:	89 d0                	mov    %edx,%eax
    12c2:	83 ec 04             	sub    $0x4,%esp
        *q = '\n';
    12c5:	c6 07 0a             	movb   $0xa,(%edi)
        write(1, p, q+1 - p);
    12c8:	29 d8                	sub    %ebx,%eax
    12ca:	89 55 e0             	mov    %edx,-0x20(%ebp)
    12cd:	50                   	push   %eax
    12ce:	53                   	push   %ebx
    12cf:	6a 01                	push   $0x1
    12d1:	e8 37 05 00 00       	call   180d <write>
    12d6:	8b 55 e0             	mov    -0x20(%ebp),%edx
    12d9:	83 c4 10             	add    $0x10,%esp
      p = q+1;
    12dc:	89 d3                	mov    %edx,%ebx
    12de:	eb b0                	jmp    1290 <grep+0x60>
    if(p == buf)
    12e0:	81 fb 00 20 00 00    	cmp    $0x2000,%ebx
    12e6:	74 38                	je     1320 <grep+0xf0>
    if(m > 0){
    12e8:	8b 4d e4             	mov    -0x1c(%ebp),%ecx
    12eb:	85 c9                	test   %ecx,%ecx
    12ed:	0f 8e 5d ff ff ff    	jle    1250 <grep+0x20>
      m -= p - buf;
    12f3:	89 d8                	mov    %ebx,%eax
      memmove(buf, p, m);
    12f5:	83 ec 04             	sub    $0x4,%esp
      m -= p - buf;
    12f8:	2d 00 20 00 00       	sub    $0x2000,%eax
    12fd:	29 c1                	sub    %eax,%ecx
      memmove(buf, p, m);
    12ff:	51                   	push   %ecx
    1300:	53                   	push   %ebx
    1301:	68 00 20 00 00       	push   $0x2000
      m -= p - buf;
    1306:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
      memmove(buf, p, m);
    1309:	e8 62 02 00 00       	call   1570 <memmove>
    130e:	83 c4 10             	add    $0x10,%esp
    1311:	e9 3a ff ff ff       	jmp    1250 <grep+0x20>
    1316:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    131d:	8d 76 00             	lea    0x0(%esi),%esi
      m = 0;
    1320:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%ebp)
    1327:	e9 24 ff ff ff       	jmp    1250 <grep+0x20>
    132c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
}
    1330:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1333:	5b                   	pop    %ebx
    1334:	5e                   	pop    %esi
    1335:	5f                   	pop    %edi
    1336:	5d                   	pop    %ebp
    1337:	c3                   	ret    
    1338:	66 90                	xchg   %ax,%ax
    133a:	66 90                	xchg   %ax,%ax
    133c:	66 90                	xchg   %ax,%ax
    133e:	66 90                	xchg   %ax,%ax

00001340 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1340:	f3 0f 1e fb          	endbr32 
    1344:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1345:	31 c0                	xor    %eax,%eax
{
    1347:	89 e5                	mov    %esp,%ebp
    1349:	53                   	push   %ebx
    134a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    134d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1350:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1354:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1357:	83 c0 01             	add    $0x1,%eax
    135a:	84 d2                	test   %dl,%dl
    135c:	75 f2                	jne    1350 <strcpy+0x10>
    ;
  return os;
}
    135e:	89 c8                	mov    %ecx,%eax
    1360:	5b                   	pop    %ebx
    1361:	5d                   	pop    %ebp
    1362:	c3                   	ret    
    1363:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    136a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001370 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    1370:	f3 0f 1e fb          	endbr32 
    1374:	55                   	push   %ebp
    1375:	89 e5                	mov    %esp,%ebp
    1377:	53                   	push   %ebx
    1378:	8b 4d 08             	mov    0x8(%ebp),%ecx
    137b:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    137e:	0f b6 01             	movzbl (%ecx),%eax
    1381:	0f b6 1a             	movzbl (%edx),%ebx
    1384:	84 c0                	test   %al,%al
    1386:	75 19                	jne    13a1 <strcmp+0x31>
    1388:	eb 26                	jmp    13b0 <strcmp+0x40>
    138a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1390:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    1394:	83 c1 01             	add    $0x1,%ecx
    1397:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    139a:	0f b6 1a             	movzbl (%edx),%ebx
    139d:	84 c0                	test   %al,%al
    139f:	74 0f                	je     13b0 <strcmp+0x40>
    13a1:	38 d8                	cmp    %bl,%al
    13a3:	74 eb                	je     1390 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    13a5:	29 d8                	sub    %ebx,%eax
}
    13a7:	5b                   	pop    %ebx
    13a8:	5d                   	pop    %ebp
    13a9:	c3                   	ret    
    13aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    13b0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    13b2:	29 d8                	sub    %ebx,%eax
}
    13b4:	5b                   	pop    %ebx
    13b5:	5d                   	pop    %ebp
    13b6:	c3                   	ret    
    13b7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13be:	66 90                	xchg   %ax,%ax

000013c0 <strlen>:

uint
strlen(const char *s)
{
    13c0:	f3 0f 1e fb          	endbr32 
    13c4:	55                   	push   %ebp
    13c5:	89 e5                	mov    %esp,%ebp
    13c7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    13ca:	80 3a 00             	cmpb   $0x0,(%edx)
    13cd:	74 21                	je     13f0 <strlen+0x30>
    13cf:	31 c0                	xor    %eax,%eax
    13d1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13d8:	83 c0 01             	add    $0x1,%eax
    13db:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    13df:	89 c1                	mov    %eax,%ecx
    13e1:	75 f5                	jne    13d8 <strlen+0x18>
    ;
  return n;
}
    13e3:	89 c8                	mov    %ecx,%eax
    13e5:	5d                   	pop    %ebp
    13e6:	c3                   	ret    
    13e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13ee:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    13f0:	31 c9                	xor    %ecx,%ecx
}
    13f2:	5d                   	pop    %ebp
    13f3:	89 c8                	mov    %ecx,%eax
    13f5:	c3                   	ret    
    13f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13fd:	8d 76 00             	lea    0x0(%esi),%esi

00001400 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1400:	f3 0f 1e fb          	endbr32 
    1404:	55                   	push   %ebp
    1405:	89 e5                	mov    %esp,%ebp
    1407:	57                   	push   %edi
    1408:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    140b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    140e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1411:	89 d7                	mov    %edx,%edi
    1413:	fc                   	cld    
    1414:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1416:	89 d0                	mov    %edx,%eax
    1418:	5f                   	pop    %edi
    1419:	5d                   	pop    %ebp
    141a:	c3                   	ret    
    141b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    141f:	90                   	nop

00001420 <strchr>:

char*
strchr(const char *s, char c)
{
    1420:	f3 0f 1e fb          	endbr32 
    1424:	55                   	push   %ebp
    1425:	89 e5                	mov    %esp,%ebp
    1427:	8b 45 08             	mov    0x8(%ebp),%eax
    142a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    142e:	0f b6 10             	movzbl (%eax),%edx
    1431:	84 d2                	test   %dl,%dl
    1433:	75 16                	jne    144b <strchr+0x2b>
    1435:	eb 21                	jmp    1458 <strchr+0x38>
    1437:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    143e:	66 90                	xchg   %ax,%ax
    1440:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1444:	83 c0 01             	add    $0x1,%eax
    1447:	84 d2                	test   %dl,%dl
    1449:	74 0d                	je     1458 <strchr+0x38>
    if(*s == c)
    144b:	38 d1                	cmp    %dl,%cl
    144d:	75 f1                	jne    1440 <strchr+0x20>
      return (char*)s;
  return 0;
}
    144f:	5d                   	pop    %ebp
    1450:	c3                   	ret    
    1451:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1458:	31 c0                	xor    %eax,%eax
}
    145a:	5d                   	pop    %ebp
    145b:	c3                   	ret    
    145c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001460 <gets>:

char*
gets(char *buf, int max)
{
    1460:	f3 0f 1e fb          	endbr32 
    1464:	55                   	push   %ebp
    1465:	89 e5                	mov    %esp,%ebp
    1467:	57                   	push   %edi
    1468:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1469:	31 f6                	xor    %esi,%esi
{
    146b:	53                   	push   %ebx
    146c:	89 f3                	mov    %esi,%ebx
    146e:	83 ec 1c             	sub    $0x1c,%esp
    1471:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1474:	eb 33                	jmp    14a9 <gets+0x49>
    1476:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    147d:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1480:	83 ec 04             	sub    $0x4,%esp
    1483:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1486:	6a 01                	push   $0x1
    1488:	50                   	push   %eax
    1489:	6a 00                	push   $0x0
    148b:	e8 75 03 00 00       	call   1805 <read>
    if(cc < 1)
    1490:	83 c4 10             	add    $0x10,%esp
    1493:	85 c0                	test   %eax,%eax
    1495:	7e 1c                	jle    14b3 <gets+0x53>
      break;
    buf[i++] = c;
    1497:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    149b:	83 c7 01             	add    $0x1,%edi
    149e:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    14a1:	3c 0a                	cmp    $0xa,%al
    14a3:	74 23                	je     14c8 <gets+0x68>
    14a5:	3c 0d                	cmp    $0xd,%al
    14a7:	74 1f                	je     14c8 <gets+0x68>
  for(i=0; i+1 < max; ){
    14a9:	83 c3 01             	add    $0x1,%ebx
    14ac:	89 fe                	mov    %edi,%esi
    14ae:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    14b1:	7c cd                	jl     1480 <gets+0x20>
    14b3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    14b5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    14b8:	c6 03 00             	movb   $0x0,(%ebx)
}
    14bb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    14be:	5b                   	pop    %ebx
    14bf:	5e                   	pop    %esi
    14c0:	5f                   	pop    %edi
    14c1:	5d                   	pop    %ebp
    14c2:	c3                   	ret    
    14c3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14c7:	90                   	nop
    14c8:	8b 75 08             	mov    0x8(%ebp),%esi
    14cb:	8b 45 08             	mov    0x8(%ebp),%eax
    14ce:	01 de                	add    %ebx,%esi
    14d0:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    14d2:	c6 03 00             	movb   $0x0,(%ebx)
}
    14d5:	8d 65 f4             	lea    -0xc(%ebp),%esp
    14d8:	5b                   	pop    %ebx
    14d9:	5e                   	pop    %esi
    14da:	5f                   	pop    %edi
    14db:	5d                   	pop    %ebp
    14dc:	c3                   	ret    
    14dd:	8d 76 00             	lea    0x0(%esi),%esi

000014e0 <stat>:

int
stat(const char *n, struct stat *st)
{
    14e0:	f3 0f 1e fb          	endbr32 
    14e4:	55                   	push   %ebp
    14e5:	89 e5                	mov    %esp,%ebp
    14e7:	56                   	push   %esi
    14e8:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    14e9:	83 ec 08             	sub    $0x8,%esp
    14ec:	6a 00                	push   $0x0
    14ee:	ff 75 08             	pushl  0x8(%ebp)
    14f1:	e8 37 03 00 00       	call   182d <open>
  if(fd < 0)
    14f6:	83 c4 10             	add    $0x10,%esp
    14f9:	85 c0                	test   %eax,%eax
    14fb:	78 2b                	js     1528 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    14fd:	83 ec 08             	sub    $0x8,%esp
    1500:	ff 75 0c             	pushl  0xc(%ebp)
    1503:	89 c3                	mov    %eax,%ebx
    1505:	50                   	push   %eax
    1506:	e8 3a 03 00 00       	call   1845 <fstat>
  close(fd);
    150b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    150e:	89 c6                	mov    %eax,%esi
  close(fd);
    1510:	e8 00 03 00 00       	call   1815 <close>
  return r;
    1515:	83 c4 10             	add    $0x10,%esp
}
    1518:	8d 65 f8             	lea    -0x8(%ebp),%esp
    151b:	89 f0                	mov    %esi,%eax
    151d:	5b                   	pop    %ebx
    151e:	5e                   	pop    %esi
    151f:	5d                   	pop    %ebp
    1520:	c3                   	ret    
    1521:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1528:	be ff ff ff ff       	mov    $0xffffffff,%esi
    152d:	eb e9                	jmp    1518 <stat+0x38>
    152f:	90                   	nop

00001530 <atoi>:

int
atoi(const char *s)
{
    1530:	f3 0f 1e fb          	endbr32 
    1534:	55                   	push   %ebp
    1535:	89 e5                	mov    %esp,%ebp
    1537:	53                   	push   %ebx
    1538:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    153b:	0f be 02             	movsbl (%edx),%eax
    153e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1541:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1544:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1549:	77 1a                	ja     1565 <atoi+0x35>
    154b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    154f:	90                   	nop
    n = n*10 + *s++ - '0';
    1550:	83 c2 01             	add    $0x1,%edx
    1553:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1556:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    155a:	0f be 02             	movsbl (%edx),%eax
    155d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1560:	80 fb 09             	cmp    $0x9,%bl
    1563:	76 eb                	jbe    1550 <atoi+0x20>
  return n;
}
    1565:	89 c8                	mov    %ecx,%eax
    1567:	5b                   	pop    %ebx
    1568:	5d                   	pop    %ebp
    1569:	c3                   	ret    
    156a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00001570 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1570:	f3 0f 1e fb          	endbr32 
    1574:	55                   	push   %ebp
    1575:	89 e5                	mov    %esp,%ebp
    1577:	57                   	push   %edi
    1578:	8b 45 10             	mov    0x10(%ebp),%eax
    157b:	8b 55 08             	mov    0x8(%ebp),%edx
    157e:	56                   	push   %esi
    157f:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    1582:	85 c0                	test   %eax,%eax
    1584:	7e 0f                	jle    1595 <memmove+0x25>
    1586:	01 d0                	add    %edx,%eax
  dst = vdst;
    1588:	89 d7                	mov    %edx,%edi
    158a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    1590:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    1591:	39 f8                	cmp    %edi,%eax
    1593:	75 fb                	jne    1590 <memmove+0x20>
  return vdst;
}
    1595:	5e                   	pop    %esi
    1596:	89 d0                	mov    %edx,%eax
    1598:	5f                   	pop    %edi
    1599:	5d                   	pop    %ebp
    159a:	c3                   	ret    
    159b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    159f:	90                   	nop

000015a0 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    15a0:	f3 0f 1e fb          	endbr32 
    15a4:	55                   	push   %ebp
    15a5:	89 e5                	mov    %esp,%ebp
    15a7:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    15aa:	8d 45 f4             	lea    -0xc(%ebp),%eax
    15ad:	50                   	push   %eax
    15ae:	e8 0a 03 00 00       	call   18bd <join>
  
  return x;
}
    15b3:	c9                   	leave  
    15b4:	c3                   	ret    
    15b5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000015c0 <lock_init>:

void lock_init(struct lock_t *lk){
    15c0:	f3 0f 1e fb          	endbr32 
    15c4:	55                   	push   %ebp
    15c5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    15c7:	8b 45 08             	mov    0x8(%ebp),%eax
    15ca:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    15d0:	5d                   	pop    %ebp
    15d1:	c3                   	ret    
    15d2:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000015e0 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    15e0:	f3 0f 1e fb          	endbr32 
    15e4:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    15e5:	b9 01 00 00 00       	mov    $0x1,%ecx
    15ea:	89 e5                	mov    %esp,%ebp
    15ec:	8b 55 08             	mov    0x8(%ebp),%edx
    15ef:	90                   	nop
    15f0:	89 c8                	mov    %ecx,%eax
    15f2:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    15f5:	85 c0                	test   %eax,%eax
    15f7:	75 f7                	jne    15f0 <lock_acquire+0x10>
}
    15f9:	5d                   	pop    %ebp
    15fa:	c3                   	ret    
    15fb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    15ff:	90                   	nop

00001600 <lock_release>:
void lock_release(struct lock_t *lk){
    1600:	f3 0f 1e fb          	endbr32 
    1604:	55                   	push   %ebp
    1605:	31 c0                	xor    %eax,%eax
    1607:	89 e5                	mov    %esp,%ebp
    1609:	8b 55 08             	mov    0x8(%ebp),%edx
    160c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    160f:	5d                   	pop    %ebp
    1610:	c3                   	ret    
    1611:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1618:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    161f:	90                   	nop

00001620 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1620:	f3 0f 1e fb          	endbr32 
    1624:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1625:	a1 e0 1f 00 00       	mov    0x1fe0,%eax
{
    162a:	89 e5                	mov    %esp,%ebp
    162c:	57                   	push   %edi
    162d:	56                   	push   %esi
    162e:	53                   	push   %ebx
    162f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1632:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1634:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1637:	39 c8                	cmp    %ecx,%eax
    1639:	73 15                	jae    1650 <free+0x30>
    163b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    163f:	90                   	nop
    1640:	39 d1                	cmp    %edx,%ecx
    1642:	72 14                	jb     1658 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1644:	39 d0                	cmp    %edx,%eax
    1646:	73 10                	jae    1658 <free+0x38>
{
    1648:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    164a:	8b 10                	mov    (%eax),%edx
    164c:	39 c8                	cmp    %ecx,%eax
    164e:	72 f0                	jb     1640 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1650:	39 d0                	cmp    %edx,%eax
    1652:	72 f4                	jb     1648 <free+0x28>
    1654:	39 d1                	cmp    %edx,%ecx
    1656:	73 f0                	jae    1648 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1658:	8b 73 fc             	mov    -0x4(%ebx),%esi
    165b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    165e:	39 fa                	cmp    %edi,%edx
    1660:	74 1e                	je     1680 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1662:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1665:	8b 50 04             	mov    0x4(%eax),%edx
    1668:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    166b:	39 f1                	cmp    %esi,%ecx
    166d:	74 28                	je     1697 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    166f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    1671:	5b                   	pop    %ebx
  freep = p;
    1672:	a3 e0 1f 00 00       	mov    %eax,0x1fe0
}
    1677:	5e                   	pop    %esi
    1678:	5f                   	pop    %edi
    1679:	5d                   	pop    %ebp
    167a:	c3                   	ret    
    167b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    167f:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    1680:	03 72 04             	add    0x4(%edx),%esi
    1683:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1686:	8b 10                	mov    (%eax),%edx
    1688:	8b 12                	mov    (%edx),%edx
    168a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    168d:	8b 50 04             	mov    0x4(%eax),%edx
    1690:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1693:	39 f1                	cmp    %esi,%ecx
    1695:	75 d8                	jne    166f <free+0x4f>
    p->s.size += bp->s.size;
    1697:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    169a:	a3 e0 1f 00 00       	mov    %eax,0x1fe0
    p->s.size += bp->s.size;
    169f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    16a2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    16a5:	89 10                	mov    %edx,(%eax)
}
    16a7:	5b                   	pop    %ebx
    16a8:	5e                   	pop    %esi
    16a9:	5f                   	pop    %edi
    16aa:	5d                   	pop    %ebp
    16ab:	c3                   	ret    
    16ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000016b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    16b0:	f3 0f 1e fb          	endbr32 
    16b4:	55                   	push   %ebp
    16b5:	89 e5                	mov    %esp,%ebp
    16b7:	57                   	push   %edi
    16b8:	56                   	push   %esi
    16b9:	53                   	push   %ebx
    16ba:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    16bd:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    16c0:	8b 3d e0 1f 00 00    	mov    0x1fe0,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    16c6:	8d 70 07             	lea    0x7(%eax),%esi
    16c9:	c1 ee 03             	shr    $0x3,%esi
    16cc:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    16cf:	85 ff                	test   %edi,%edi
    16d1:	0f 84 a9 00 00 00    	je     1780 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    16d7:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    16d9:	8b 48 04             	mov    0x4(%eax),%ecx
    16dc:	39 f1                	cmp    %esi,%ecx
    16de:	73 6d                	jae    174d <malloc+0x9d>
    16e0:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    16e6:	bb 00 10 00 00       	mov    $0x1000,%ebx
    16eb:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    16ee:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    16f5:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    16f8:	eb 17                	jmp    1711 <malloc+0x61>
    16fa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1700:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1702:	8b 4a 04             	mov    0x4(%edx),%ecx
    1705:	39 f1                	cmp    %esi,%ecx
    1707:	73 4f                	jae    1758 <malloc+0xa8>
    1709:	8b 3d e0 1f 00 00    	mov    0x1fe0,%edi
    170f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1711:	39 c7                	cmp    %eax,%edi
    1713:	75 eb                	jne    1700 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1715:	83 ec 0c             	sub    $0xc,%esp
    1718:	ff 75 e4             	pushl  -0x1c(%ebp)
    171b:	e8 55 01 00 00       	call   1875 <sbrk>
  if(p == (char*)-1)
    1720:	83 c4 10             	add    $0x10,%esp
    1723:	83 f8 ff             	cmp    $0xffffffff,%eax
    1726:	74 1b                	je     1743 <malloc+0x93>
  hp->s.size = nu;
    1728:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    172b:	83 ec 0c             	sub    $0xc,%esp
    172e:	83 c0 08             	add    $0x8,%eax
    1731:	50                   	push   %eax
    1732:	e8 e9 fe ff ff       	call   1620 <free>
  return freep;
    1737:	a1 e0 1f 00 00       	mov    0x1fe0,%eax
      if((p = morecore(nunits)) == 0)
    173c:	83 c4 10             	add    $0x10,%esp
    173f:	85 c0                	test   %eax,%eax
    1741:	75 bd                	jne    1700 <malloc+0x50>
        return 0;
  }
}
    1743:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1746:	31 c0                	xor    %eax,%eax
}
    1748:	5b                   	pop    %ebx
    1749:	5e                   	pop    %esi
    174a:	5f                   	pop    %edi
    174b:	5d                   	pop    %ebp
    174c:	c3                   	ret    
    if(p->s.size >= nunits){
    174d:	89 c2                	mov    %eax,%edx
    174f:	89 f8                	mov    %edi,%eax
    1751:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1758:	39 ce                	cmp    %ecx,%esi
    175a:	74 54                	je     17b0 <malloc+0x100>
        p->s.size -= nunits;
    175c:	29 f1                	sub    %esi,%ecx
    175e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1761:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1764:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1767:	a3 e0 1f 00 00       	mov    %eax,0x1fe0
}
    176c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    176f:	8d 42 08             	lea    0x8(%edx),%eax
}
    1772:	5b                   	pop    %ebx
    1773:	5e                   	pop    %esi
    1774:	5f                   	pop    %edi
    1775:	5d                   	pop    %ebp
    1776:	c3                   	ret    
    1777:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    177e:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    1780:	c7 05 e0 1f 00 00 e4 	movl   $0x1fe4,0x1fe0
    1787:	1f 00 00 
    base.s.size = 0;
    178a:	bf e4 1f 00 00       	mov    $0x1fe4,%edi
    base.s.ptr = freep = prevp = &base;
    178f:	c7 05 e4 1f 00 00 e4 	movl   $0x1fe4,0x1fe4
    1796:	1f 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1799:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    179b:	c7 05 e8 1f 00 00 00 	movl   $0x0,0x1fe8
    17a2:	00 00 00 
    if(p->s.size >= nunits){
    17a5:	e9 36 ff ff ff       	jmp    16e0 <malloc+0x30>
    17aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    17b0:	8b 0a                	mov    (%edx),%ecx
    17b2:	89 08                	mov    %ecx,(%eax)
    17b4:	eb b1                	jmp    1767 <malloc+0xb7>
    17b6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17bd:	8d 76 00             	lea    0x0(%esi),%esi

000017c0 <thread_create>:
{
    17c0:	f3 0f 1e fb          	endbr32 
    17c4:	55                   	push   %ebp
    17c5:	89 e5                	mov    %esp,%ebp
    17c7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    17ca:	68 00 10 00 00       	push   $0x1000
    17cf:	e8 dc fe ff ff       	call   16b0 <malloc>
return clone(start_routine,arg1,arg2,stack);
    17d4:	50                   	push   %eax
    17d5:	ff 75 10             	pushl  0x10(%ebp)
    17d8:	ff 75 0c             	pushl  0xc(%ebp)
    17db:	ff 75 08             	pushl  0x8(%ebp)
    17de:	e8 d2 00 00 00       	call   18b5 <clone>
}
    17e3:	c9                   	leave  
    17e4:	c3                   	ret    

000017e5 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    17e5:	b8 01 00 00 00       	mov    $0x1,%eax
    17ea:	cd 40                	int    $0x40
    17ec:	c3                   	ret    

000017ed <exit>:
SYSCALL(exit)
    17ed:	b8 02 00 00 00       	mov    $0x2,%eax
    17f2:	cd 40                	int    $0x40
    17f4:	c3                   	ret    

000017f5 <wait>:
SYSCALL(wait)
    17f5:	b8 03 00 00 00       	mov    $0x3,%eax
    17fa:	cd 40                	int    $0x40
    17fc:	c3                   	ret    

000017fd <pipe>:
SYSCALL(pipe)
    17fd:	b8 04 00 00 00       	mov    $0x4,%eax
    1802:	cd 40                	int    $0x40
    1804:	c3                   	ret    

00001805 <read>:
SYSCALL(read)
    1805:	b8 05 00 00 00       	mov    $0x5,%eax
    180a:	cd 40                	int    $0x40
    180c:	c3                   	ret    

0000180d <write>:
SYSCALL(write)
    180d:	b8 10 00 00 00       	mov    $0x10,%eax
    1812:	cd 40                	int    $0x40
    1814:	c3                   	ret    

00001815 <close>:
SYSCALL(close)
    1815:	b8 15 00 00 00       	mov    $0x15,%eax
    181a:	cd 40                	int    $0x40
    181c:	c3                   	ret    

0000181d <kill>:
SYSCALL(kill)
    181d:	b8 06 00 00 00       	mov    $0x6,%eax
    1822:	cd 40                	int    $0x40
    1824:	c3                   	ret    

00001825 <exec>:
SYSCALL(exec)
    1825:	b8 07 00 00 00       	mov    $0x7,%eax
    182a:	cd 40                	int    $0x40
    182c:	c3                   	ret    

0000182d <open>:
SYSCALL(open)
    182d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1832:	cd 40                	int    $0x40
    1834:	c3                   	ret    

00001835 <mknod>:
SYSCALL(mknod)
    1835:	b8 11 00 00 00       	mov    $0x11,%eax
    183a:	cd 40                	int    $0x40
    183c:	c3                   	ret    

0000183d <unlink>:
SYSCALL(unlink)
    183d:	b8 12 00 00 00       	mov    $0x12,%eax
    1842:	cd 40                	int    $0x40
    1844:	c3                   	ret    

00001845 <fstat>:
SYSCALL(fstat)
    1845:	b8 08 00 00 00       	mov    $0x8,%eax
    184a:	cd 40                	int    $0x40
    184c:	c3                   	ret    

0000184d <link>:
SYSCALL(link)
    184d:	b8 13 00 00 00       	mov    $0x13,%eax
    1852:	cd 40                	int    $0x40
    1854:	c3                   	ret    

00001855 <mkdir>:
SYSCALL(mkdir)
    1855:	b8 14 00 00 00       	mov    $0x14,%eax
    185a:	cd 40                	int    $0x40
    185c:	c3                   	ret    

0000185d <chdir>:
SYSCALL(chdir)
    185d:	b8 09 00 00 00       	mov    $0x9,%eax
    1862:	cd 40                	int    $0x40
    1864:	c3                   	ret    

00001865 <dup>:
SYSCALL(dup)
    1865:	b8 0a 00 00 00       	mov    $0xa,%eax
    186a:	cd 40                	int    $0x40
    186c:	c3                   	ret    

0000186d <getpid>:
SYSCALL(getpid)
    186d:	b8 0b 00 00 00       	mov    $0xb,%eax
    1872:	cd 40                	int    $0x40
    1874:	c3                   	ret    

00001875 <sbrk>:
SYSCALL(sbrk)
    1875:	b8 0c 00 00 00       	mov    $0xc,%eax
    187a:	cd 40                	int    $0x40
    187c:	c3                   	ret    

0000187d <sleep>:
SYSCALL(sleep)
    187d:	b8 0d 00 00 00       	mov    $0xd,%eax
    1882:	cd 40                	int    $0x40
    1884:	c3                   	ret    

00001885 <uptime>:
SYSCALL(uptime)
    1885:	b8 0e 00 00 00       	mov    $0xe,%eax
    188a:	cd 40                	int    $0x40
    188c:	c3                   	ret    

0000188d <count>:
SYSCALL(count)
    188d:	b8 16 00 00 00       	mov    $0x16,%eax
    1892:	cd 40                	int    $0x40
    1894:	c3                   	ret    

00001895 <settickets>:

SYSCALL(settickets)
    1895:	b8 17 00 00 00       	mov    $0x17,%eax
    189a:	cd 40                	int    $0x40
    189c:	c3                   	ret    

0000189d <getpinfo>:
SYSCALL(getpinfo)
    189d:	b8 18 00 00 00       	mov    $0x18,%eax
    18a2:	cd 40                	int    $0x40
    18a4:	c3                   	ret    

000018a5 <mprotect>:

SYSCALL(mprotect)
    18a5:	b8 19 00 00 00       	mov    $0x19,%eax
    18aa:	cd 40                	int    $0x40
    18ac:	c3                   	ret    

000018ad <munprotect>:
SYSCALL(munprotect)
    18ad:	b8 1a 00 00 00       	mov    $0x1a,%eax
    18b2:	cd 40                	int    $0x40
    18b4:	c3                   	ret    

000018b5 <clone>:

SYSCALL(clone)
    18b5:	b8 1b 00 00 00       	mov    $0x1b,%eax
    18ba:	cd 40                	int    $0x40
    18bc:	c3                   	ret    

000018bd <join>:
SYSCALL(join)
    18bd:	b8 1c 00 00 00       	mov    $0x1c,%eax
    18c2:	cd 40                	int    $0x40
    18c4:	c3                   	ret    
    18c5:	66 90                	xchg   %ax,%ax
    18c7:	66 90                	xchg   %ax,%ax
    18c9:	66 90                	xchg   %ax,%ax
    18cb:	66 90                	xchg   %ax,%ax
    18cd:	66 90                	xchg   %ax,%ax
    18cf:	90                   	nop

000018d0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    18d0:	55                   	push   %ebp
    18d1:	89 e5                	mov    %esp,%ebp
    18d3:	57                   	push   %edi
    18d4:	56                   	push   %esi
    18d5:	53                   	push   %ebx
    18d6:	83 ec 3c             	sub    $0x3c,%esp
    18d9:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    18dc:	89 d1                	mov    %edx,%ecx
{
    18de:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    18e1:	85 d2                	test   %edx,%edx
    18e3:	0f 89 7f 00 00 00    	jns    1968 <printint+0x98>
    18e9:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    18ed:	74 79                	je     1968 <printint+0x98>
    neg = 1;
    18ef:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    18f6:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    18f8:	31 db                	xor    %ebx,%ebx
    18fa:	8d 75 d7             	lea    -0x29(%ebp),%esi
    18fd:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1900:	89 c8                	mov    %ecx,%eax
    1902:	31 d2                	xor    %edx,%edx
    1904:	89 cf                	mov    %ecx,%edi
    1906:	f7 75 c4             	divl   -0x3c(%ebp)
    1909:	0f b6 92 88 1b 00 00 	movzbl 0x1b88(%edx),%edx
    1910:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1913:	89 d8                	mov    %ebx,%eax
    1915:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1918:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    191b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    191e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1921:	76 dd                	jbe    1900 <printint+0x30>
  if(neg)
    1923:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1926:	85 c9                	test   %ecx,%ecx
    1928:	74 0c                	je     1936 <printint+0x66>
    buf[i++] = '-';
    192a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    192f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1931:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1936:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1939:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    193d:	eb 07                	jmp    1946 <printint+0x76>
    193f:	90                   	nop
    1940:	0f b6 13             	movzbl (%ebx),%edx
    1943:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1946:	83 ec 04             	sub    $0x4,%esp
    1949:	88 55 d7             	mov    %dl,-0x29(%ebp)
    194c:	6a 01                	push   $0x1
    194e:	56                   	push   %esi
    194f:	57                   	push   %edi
    1950:	e8 b8 fe ff ff       	call   180d <write>
  while(--i >= 0)
    1955:	83 c4 10             	add    $0x10,%esp
    1958:	39 de                	cmp    %ebx,%esi
    195a:	75 e4                	jne    1940 <printint+0x70>
    putc(fd, buf[i]);
}
    195c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    195f:	5b                   	pop    %ebx
    1960:	5e                   	pop    %esi
    1961:	5f                   	pop    %edi
    1962:	5d                   	pop    %ebp
    1963:	c3                   	ret    
    1964:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1968:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    196f:	eb 87                	jmp    18f8 <printint+0x28>
    1971:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1978:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    197f:	90                   	nop

00001980 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    1980:	f3 0f 1e fb          	endbr32 
    1984:	55                   	push   %ebp
    1985:	89 e5                	mov    %esp,%ebp
    1987:	57                   	push   %edi
    1988:	56                   	push   %esi
    1989:	53                   	push   %ebx
    198a:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    198d:	8b 75 0c             	mov    0xc(%ebp),%esi
    1990:	0f b6 1e             	movzbl (%esi),%ebx
    1993:	84 db                	test   %bl,%bl
    1995:	0f 84 b4 00 00 00    	je     1a4f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    199b:	8d 45 10             	lea    0x10(%ebp),%eax
    199e:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    19a1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    19a4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    19a6:	89 45 d0             	mov    %eax,-0x30(%ebp)
    19a9:	eb 33                	jmp    19de <printf+0x5e>
    19ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    19af:	90                   	nop
    19b0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    19b3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    19b8:	83 f8 25             	cmp    $0x25,%eax
    19bb:	74 17                	je     19d4 <printf+0x54>
  write(fd, &c, 1);
    19bd:	83 ec 04             	sub    $0x4,%esp
    19c0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    19c3:	6a 01                	push   $0x1
    19c5:	57                   	push   %edi
    19c6:	ff 75 08             	pushl  0x8(%ebp)
    19c9:	e8 3f fe ff ff       	call   180d <write>
    19ce:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    19d1:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    19d4:	0f b6 1e             	movzbl (%esi),%ebx
    19d7:	83 c6 01             	add    $0x1,%esi
    19da:	84 db                	test   %bl,%bl
    19dc:	74 71                	je     1a4f <printf+0xcf>
    c = fmt[i] & 0xff;
    19de:	0f be cb             	movsbl %bl,%ecx
    19e1:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    19e4:	85 d2                	test   %edx,%edx
    19e6:	74 c8                	je     19b0 <printf+0x30>
      }
    } else if(state == '%'){
    19e8:	83 fa 25             	cmp    $0x25,%edx
    19eb:	75 e7                	jne    19d4 <printf+0x54>
      if(c == 'd'){
    19ed:	83 f8 64             	cmp    $0x64,%eax
    19f0:	0f 84 9a 00 00 00    	je     1a90 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    19f6:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    19fc:	83 f9 70             	cmp    $0x70,%ecx
    19ff:	74 5f                	je     1a60 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1a01:	83 f8 73             	cmp    $0x73,%eax
    1a04:	0f 84 d6 00 00 00    	je     1ae0 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    1a0a:	83 f8 63             	cmp    $0x63,%eax
    1a0d:	0f 84 8d 00 00 00    	je     1aa0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1a13:	83 f8 25             	cmp    $0x25,%eax
    1a16:	0f 84 b4 00 00 00    	je     1ad0 <printf+0x150>
  write(fd, &c, 1);
    1a1c:	83 ec 04             	sub    $0x4,%esp
    1a1f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1a23:	6a 01                	push   $0x1
    1a25:	57                   	push   %edi
    1a26:	ff 75 08             	pushl  0x8(%ebp)
    1a29:	e8 df fd ff ff       	call   180d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    1a2e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1a31:	83 c4 0c             	add    $0xc,%esp
    1a34:	6a 01                	push   $0x1
    1a36:	83 c6 01             	add    $0x1,%esi
    1a39:	57                   	push   %edi
    1a3a:	ff 75 08             	pushl  0x8(%ebp)
    1a3d:	e8 cb fd ff ff       	call   180d <write>
  for(i = 0; fmt[i]; i++){
    1a42:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1a46:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1a49:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    1a4b:	84 db                	test   %bl,%bl
    1a4d:	75 8f                	jne    19de <printf+0x5e>
    }
  }
}
    1a4f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1a52:	5b                   	pop    %ebx
    1a53:	5e                   	pop    %esi
    1a54:	5f                   	pop    %edi
    1a55:	5d                   	pop    %ebp
    1a56:	c3                   	ret    
    1a57:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1a5e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1a60:	83 ec 0c             	sub    $0xc,%esp
    1a63:	b9 10 00 00 00       	mov    $0x10,%ecx
    1a68:	6a 00                	push   $0x0
    1a6a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    1a6d:	8b 45 08             	mov    0x8(%ebp),%eax
    1a70:	8b 13                	mov    (%ebx),%edx
    1a72:	e8 59 fe ff ff       	call   18d0 <printint>
        ap++;
    1a77:	89 d8                	mov    %ebx,%eax
    1a79:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1a7c:	31 d2                	xor    %edx,%edx
        ap++;
    1a7e:	83 c0 04             	add    $0x4,%eax
    1a81:	89 45 d0             	mov    %eax,-0x30(%ebp)
    1a84:	e9 4b ff ff ff       	jmp    19d4 <printf+0x54>
    1a89:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    1a90:	83 ec 0c             	sub    $0xc,%esp
    1a93:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1a98:	6a 01                	push   $0x1
    1a9a:	eb ce                	jmp    1a6a <printf+0xea>
    1a9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    1aa0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    1aa3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1aa6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    1aa8:	6a 01                	push   $0x1
        ap++;
    1aaa:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    1aad:	57                   	push   %edi
    1aae:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    1ab1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1ab4:	e8 54 fd ff ff       	call   180d <write>
        ap++;
    1ab9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    1abc:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1abf:	31 d2                	xor    %edx,%edx
    1ac1:	e9 0e ff ff ff       	jmp    19d4 <printf+0x54>
    1ac6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1acd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1ad0:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1ad3:	83 ec 04             	sub    $0x4,%esp
    1ad6:	e9 59 ff ff ff       	jmp    1a34 <printf+0xb4>
    1adb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1adf:	90                   	nop
        s = (char*)*ap;
    1ae0:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1ae3:	8b 18                	mov    (%eax),%ebx
        ap++;
    1ae5:	83 c0 04             	add    $0x4,%eax
    1ae8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    1aeb:	85 db                	test   %ebx,%ebx
    1aed:	74 17                	je     1b06 <printf+0x186>
        while(*s != 0){
    1aef:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1af2:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1af4:	84 c0                	test   %al,%al
    1af6:	0f 84 d8 fe ff ff    	je     19d4 <printf+0x54>
    1afc:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    1aff:	89 de                	mov    %ebx,%esi
    1b01:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1b04:	eb 1a                	jmp    1b20 <printf+0x1a0>
          s = "(null)";
    1b06:	bb 7e 1b 00 00       	mov    $0x1b7e,%ebx
        while(*s != 0){
    1b0b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    1b0e:	b8 28 00 00 00       	mov    $0x28,%eax
    1b13:	89 de                	mov    %ebx,%esi
    1b15:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1b18:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1b1f:	90                   	nop
  write(fd, &c, 1);
    1b20:	83 ec 04             	sub    $0x4,%esp
          s++;
    1b23:	83 c6 01             	add    $0x1,%esi
    1b26:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1b29:	6a 01                	push   $0x1
    1b2b:	57                   	push   %edi
    1b2c:	53                   	push   %ebx
    1b2d:	e8 db fc ff ff       	call   180d <write>
        while(*s != 0){
    1b32:	0f b6 06             	movzbl (%esi),%eax
    1b35:	83 c4 10             	add    $0x10,%esp
    1b38:	84 c0                	test   %al,%al
    1b3a:	75 e4                	jne    1b20 <printf+0x1a0>
    1b3c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    1b3f:	31 d2                	xor    %edx,%edx
    1b41:	e9 8e fe ff ff       	jmp    19d4 <printf+0x54>
