
_pro_test4:     file format elf32-i386


Disassembly of section .text:

00001000 <main>:
      if (sign)
            ret *= -1;
      return ret;
}
int abs(int x) { return x < 0 ? -x : x; }
int main(int argc, char *argv[]){
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
    1015:	83 ec 08             	sub    $0x8,%esp
      if (argc != 3){
    1018:	83 39 03             	cmpl   $0x3,(%ecx)
int main(int argc, char *argv[]){
    101b:	8b 71 04             	mov    0x4(%ecx),%esi
      if (argc != 3){
    101e:	74 13                	je     1033 <main+0x33>
            printf(1, "enter the parameters of the test\npro_test4 offset len\nex: pro_test4 0 4\n");
    1020:	51                   	push   %ecx
    1021:	51                   	push   %ecx
    1022:	68 bc 19 00 00       	push   $0x19bc
    1027:	6a 01                	push   $0x1
    1029:	e8 82 07 00 00       	call   17b0 <printf>
            exit();
    102e:	e8 ea 05 00 00       	call   161d <exit>
      }

      int offset = toInt(argv[1]);
    1033:	83 ec 0c             	sub    $0xc,%esp
    1036:	ff 76 04             	pushl  0x4(%esi)
    1039:	e8 82 00 00 00       	call   10c0 <toInt>
      int len = toInt(argv[2]);
    103e:	5f                   	pop    %edi
    103f:	ff 76 08             	pushl  0x8(%esi)
      int offset = toInt(argv[1]);
    1042:	89 c3                	mov    %eax,%ebx
      int len = toInt(argv[2]);
    1044:	e8 77 00 00 00       	call   10c0 <toInt>

      char *start = sbrk(0);
    1049:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      int len = toInt(argv[2]);
    1050:	89 c6                	mov    %eax,%esi
      char *start = sbrk(0);
    1052:	e8 4e 06 00 00       	call   16a5 <sbrk>
int abs(int x) { return x < 0 ? -x : x; }
    1057:	89 f2                	mov    %esi,%edx
    1059:	c1 fa 1f             	sar    $0x1f,%edx
      char *start = sbrk(0);
    105c:	89 c7                	mov    %eax,%edi
int abs(int x) { return x < 0 ? -x : x; }
    105e:	89 d0                	mov    %edx,%eax
      sbrk(PGSIZE * abs(len)); // to show the error that will happent if we passed neg len

      int x = mprotect(start + offset, len);
    1060:	01 fb                	add    %edi,%ebx
int abs(int x) { return x < 0 ? -x : x; }
    1062:	31 f0                	xor    %esi,%eax
    1064:	29 d0                	sub    %edx,%eax
      sbrk(PGSIZE * abs(len)); // to show the error that will happent if we passed neg len
    1066:	c1 e0 0c             	shl    $0xc,%eax
    1069:	89 04 24             	mov    %eax,(%esp)
    106c:	e8 34 06 00 00       	call   16a5 <sbrk>
      int x = mprotect(start + offset, len);
    1071:	58                   	pop    %eax
    1072:	5a                   	pop    %edx
    1073:	56                   	push   %esi
    1074:	53                   	push   %ebx
    1075:	e8 5b 06 00 00       	call   16d5 <mprotect>

      if (x == 0)
    107a:	83 c4 10             	add    $0x10,%esp
    107d:	85 c0                	test   %eax,%eax
    107f:	74 27                	je     10a8 <main+0xa8>
            printf(1, "protection succeded i will trap after changing the value\n");
      else 
            printf(1, "protection failed\n");
    1081:	52                   	push   %edx
    1082:	52                   	push   %edx
    1083:	68 95 19 00 00       	push   $0x1995
    1088:	6a 01                	push   $0x1
    108a:	e8 21 07 00 00       	call   17b0 <printf>
    108f:	83 c4 10             	add    $0x10,%esp

      printf(1, "changing the value\n");
    1092:	50                   	push   %eax
    1093:	50                   	push   %eax
    1094:	68 a8 19 00 00       	push   $0x19a8
    1099:	6a 01                	push   $0x1
    109b:	e8 10 07 00 00       	call   17b0 <printf>
      *start = 5;
    10a0:	c6 07 05             	movb   $0x5,(%edi)
      exit();
    10a3:	e8 75 05 00 00       	call   161d <exit>
            printf(1, "protection succeded i will trap after changing the value\n");
    10a8:	51                   	push   %ecx
    10a9:	51                   	push   %ecx
    10aa:	68 08 1a 00 00       	push   $0x1a08
    10af:	6a 01                	push   $0x1
    10b1:	e8 fa 06 00 00       	call   17b0 <printf>
    10b6:	83 c4 10             	add    $0x10,%esp
    10b9:	eb d7                	jmp    1092 <main+0x92>
    10bb:	66 90                	xchg   %ax,%ax
    10bd:	66 90                	xchg   %ax,%ax
    10bf:	90                   	nop

000010c0 <toInt>:
int toInt(char *s){
    10c0:	f3 0f 1e fb          	endbr32 
    10c4:	55                   	push   %ebp
    10c5:	89 e5                	mov    %esp,%ebp
    10c7:	56                   	push   %esi
    10c8:	53                   	push   %ebx
    10c9:	8b 5d 08             	mov    0x8(%ebp),%ebx
      if (*s == '-'){
    10cc:	0f be 03             	movsbl (%ebx),%eax
    10cf:	3c 2d                	cmp    $0x2d,%al
    10d1:	74 65                	je     1138 <toInt+0x78>
      int sign = 0;
    10d3:	31 f6                	xor    %esi,%esi
      while (*s){
    10d5:	84 c0                	test   %al,%al
    10d7:	74 73                	je     114c <toInt+0x8c>
      int sign = 0;
    10d9:	31 d2                	xor    %edx,%edx
    10db:	eb 14                	jmp    10f1 <toInt+0x31>
    10dd:	8d 76 00             	lea    0x0(%esi),%esi
            ret = ret * 10 + (*s - '0');
    10e0:	8d 14 92             	lea    (%edx,%edx,4),%edx
            s++;
    10e3:	83 c3 01             	add    $0x1,%ebx
            ret = ret * 10 + (*s - '0');
    10e6:	8d 54 50 d0          	lea    -0x30(%eax,%edx,2),%edx
      while (*s){
    10ea:	0f be 03             	movsbl (%ebx),%eax
    10ed:	84 c0                	test   %al,%al
    10ef:	74 2f                	je     1120 <toInt+0x60>
            if (*s > '9' || *s < '0'){
    10f1:	8d 48 d0             	lea    -0x30(%eax),%ecx
    10f4:	80 f9 09             	cmp    $0x9,%cl
    10f7:	76 e7                	jbe    10e0 <toInt+0x20>
                  printf(1, "parameters are numbers only\n");
    10f9:	83 ec 08             	sub    $0x8,%esp
    10fc:	68 78 19 00 00       	push   $0x1978
    1101:	6a 01                	push   $0x1
    1103:	e8 a8 06 00 00       	call   17b0 <printf>
    1108:	83 c4 10             	add    $0x10,%esp
    110b:	ba ff ff ff ff       	mov    $0xffffffff,%edx
}
    1110:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1113:	89 d0                	mov    %edx,%eax
    1115:	5b                   	pop    %ebx
    1116:	5e                   	pop    %esi
    1117:	5d                   	pop    %ebp
    1118:	c3                   	ret    
    1119:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if (sign)
    1120:	89 d0                	mov    %edx,%eax
    1122:	f7 d8                	neg    %eax
    1124:	85 f6                	test   %esi,%esi
    1126:	0f 45 d0             	cmovne %eax,%edx
}
    1129:	8d 65 f8             	lea    -0x8(%ebp),%esp
    112c:	5b                   	pop    %ebx
    112d:	5e                   	pop    %esi
    112e:	89 d0                	mov    %edx,%eax
    1130:	5d                   	pop    %ebp
    1131:	c3                   	ret    
    1132:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      while (*s){
    1138:	0f be 43 01          	movsbl 0x1(%ebx),%eax
            s++;
    113c:	8d 53 01             	lea    0x1(%ebx),%edx
      while (*s){
    113f:	84 c0                	test   %al,%al
    1141:	74 09                	je     114c <toInt+0x8c>
            s++;
    1143:	89 d3                	mov    %edx,%ebx
            sign = 1;
    1145:	be 01 00 00 00       	mov    $0x1,%esi
    114a:	eb 8d                	jmp    10d9 <toInt+0x19>
      while (*s){
    114c:	31 d2                	xor    %edx,%edx
            ret *= -1;
    114e:	eb c0                	jmp    1110 <toInt+0x50>

00001150 <abs>:
int abs(int x) { return x < 0 ? -x : x; }
    1150:	f3 0f 1e fb          	endbr32 
    1154:	55                   	push   %ebp
    1155:	89 e5                	mov    %esp,%ebp
    1157:	8b 45 08             	mov    0x8(%ebp),%eax
    115a:	5d                   	pop    %ebp
    115b:	99                   	cltd   
    115c:	31 d0                	xor    %edx,%eax
    115e:	29 d0                	sub    %edx,%eax
    1160:	c3                   	ret    
    1161:	66 90                	xchg   %ax,%ax
    1163:	66 90                	xchg   %ax,%ax
    1165:	66 90                	xchg   %ax,%ax
    1167:	66 90                	xchg   %ax,%ax
    1169:	66 90                	xchg   %ax,%ax
    116b:	66 90                	xchg   %ax,%ax
    116d:	66 90                	xchg   %ax,%ax
    116f:	90                   	nop

00001170 <strcpy>:
};


char*
strcpy(char *s, const char *t)
{
    1170:	f3 0f 1e fb          	endbr32 
    1174:	55                   	push   %ebp
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    1175:	31 c0                	xor    %eax,%eax
{
    1177:	89 e5                	mov    %esp,%ebp
    1179:	53                   	push   %ebx
    117a:	8b 4d 08             	mov    0x8(%ebp),%ecx
    117d:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  while((*s++ = *t++) != 0)
    1180:	0f b6 14 03          	movzbl (%ebx,%eax,1),%edx
    1184:	88 14 01             	mov    %dl,(%ecx,%eax,1)
    1187:	83 c0 01             	add    $0x1,%eax
    118a:	84 d2                	test   %dl,%dl
    118c:	75 f2                	jne    1180 <strcpy+0x10>
    ;
  return os;
}
    118e:	89 c8                	mov    %ecx,%eax
    1190:	5b                   	pop    %ebx
    1191:	5d                   	pop    %ebp
    1192:	c3                   	ret    
    1193:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    119a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000011a0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    11a0:	f3 0f 1e fb          	endbr32 
    11a4:	55                   	push   %ebp
    11a5:	89 e5                	mov    %esp,%ebp
    11a7:	53                   	push   %ebx
    11a8:	8b 4d 08             	mov    0x8(%ebp),%ecx
    11ab:	8b 55 0c             	mov    0xc(%ebp),%edx
  while(*p && *p == *q)
    11ae:	0f b6 01             	movzbl (%ecx),%eax
    11b1:	0f b6 1a             	movzbl (%edx),%ebx
    11b4:	84 c0                	test   %al,%al
    11b6:	75 19                	jne    11d1 <strcmp+0x31>
    11b8:	eb 26                	jmp    11e0 <strcmp+0x40>
    11ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11c0:	0f b6 41 01          	movzbl 0x1(%ecx),%eax
    p++, q++;
    11c4:	83 c1 01             	add    $0x1,%ecx
    11c7:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    11ca:	0f b6 1a             	movzbl (%edx),%ebx
    11cd:	84 c0                	test   %al,%al
    11cf:	74 0f                	je     11e0 <strcmp+0x40>
    11d1:	38 d8                	cmp    %bl,%al
    11d3:	74 eb                	je     11c0 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
    11d5:	29 d8                	sub    %ebx,%eax
}
    11d7:	5b                   	pop    %ebx
    11d8:	5d                   	pop    %ebp
    11d9:	c3                   	ret    
    11da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    11e0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    11e2:	29 d8                	sub    %ebx,%eax
}
    11e4:	5b                   	pop    %ebx
    11e5:	5d                   	pop    %ebp
    11e6:	c3                   	ret    
    11e7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    11ee:	66 90                	xchg   %ax,%ax

000011f0 <strlen>:

uint
strlen(const char *s)
{
    11f0:	f3 0f 1e fb          	endbr32 
    11f4:	55                   	push   %ebp
    11f5:	89 e5                	mov    %esp,%ebp
    11f7:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  for(n = 0; s[n]; n++)
    11fa:	80 3a 00             	cmpb   $0x0,(%edx)
    11fd:	74 21                	je     1220 <strlen+0x30>
    11ff:	31 c0                	xor    %eax,%eax
    1201:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1208:	83 c0 01             	add    $0x1,%eax
    120b:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    120f:	89 c1                	mov    %eax,%ecx
    1211:	75 f5                	jne    1208 <strlen+0x18>
    ;
  return n;
}
    1213:	89 c8                	mov    %ecx,%eax
    1215:	5d                   	pop    %ebp
    1216:	c3                   	ret    
    1217:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    121e:	66 90                	xchg   %ax,%ax
  for(n = 0; s[n]; n++)
    1220:	31 c9                	xor    %ecx,%ecx
}
    1222:	5d                   	pop    %ebp
    1223:	89 c8                	mov    %ecx,%eax
    1225:	c3                   	ret    
    1226:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    122d:	8d 76 00             	lea    0x0(%esi),%esi

00001230 <memset>:

void*
memset(void *dst, int c, uint n)
{
    1230:	f3 0f 1e fb          	endbr32 
    1234:	55                   	push   %ebp
    1235:	89 e5                	mov    %esp,%ebp
    1237:	57                   	push   %edi
    1238:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    123b:	8b 4d 10             	mov    0x10(%ebp),%ecx
    123e:	8b 45 0c             	mov    0xc(%ebp),%eax
    1241:	89 d7                	mov    %edx,%edi
    1243:	fc                   	cld    
    1244:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1246:	89 d0                	mov    %edx,%eax
    1248:	5f                   	pop    %edi
    1249:	5d                   	pop    %ebp
    124a:	c3                   	ret    
    124b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    124f:	90                   	nop

00001250 <strchr>:

char*
strchr(const char *s, char c)
{
    1250:	f3 0f 1e fb          	endbr32 
    1254:	55                   	push   %ebp
    1255:	89 e5                	mov    %esp,%ebp
    1257:	8b 45 08             	mov    0x8(%ebp),%eax
    125a:	0f b6 4d 0c          	movzbl 0xc(%ebp),%ecx
  for(; *s; s++)
    125e:	0f b6 10             	movzbl (%eax),%edx
    1261:	84 d2                	test   %dl,%dl
    1263:	75 16                	jne    127b <strchr+0x2b>
    1265:	eb 21                	jmp    1288 <strchr+0x38>
    1267:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    126e:	66 90                	xchg   %ax,%ax
    1270:	0f b6 50 01          	movzbl 0x1(%eax),%edx
    1274:	83 c0 01             	add    $0x1,%eax
    1277:	84 d2                	test   %dl,%dl
    1279:	74 0d                	je     1288 <strchr+0x38>
    if(*s == c)
    127b:	38 d1                	cmp    %dl,%cl
    127d:	75 f1                	jne    1270 <strchr+0x20>
      return (char*)s;
  return 0;
}
    127f:	5d                   	pop    %ebp
    1280:	c3                   	ret    
    1281:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  return 0;
    1288:	31 c0                	xor    %eax,%eax
}
    128a:	5d                   	pop    %ebp
    128b:	c3                   	ret    
    128c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001290 <gets>:

char*
gets(char *buf, int max)
{
    1290:	f3 0f 1e fb          	endbr32 
    1294:	55                   	push   %ebp
    1295:	89 e5                	mov    %esp,%ebp
    1297:	57                   	push   %edi
    1298:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1299:	31 f6                	xor    %esi,%esi
{
    129b:	53                   	push   %ebx
    129c:	89 f3                	mov    %esi,%ebx
    129e:	83 ec 1c             	sub    $0x1c,%esp
    12a1:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    12a4:	eb 33                	jmp    12d9 <gets+0x49>
    12a6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    12ad:	8d 76 00             	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    12b0:	83 ec 04             	sub    $0x4,%esp
    12b3:	8d 45 e7             	lea    -0x19(%ebp),%eax
    12b6:	6a 01                	push   $0x1
    12b8:	50                   	push   %eax
    12b9:	6a 00                	push   $0x0
    12bb:	e8 75 03 00 00       	call   1635 <read>
    if(cc < 1)
    12c0:	83 c4 10             	add    $0x10,%esp
    12c3:	85 c0                	test   %eax,%eax
    12c5:	7e 1c                	jle    12e3 <gets+0x53>
      break;
    buf[i++] = c;
    12c7:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    12cb:	83 c7 01             	add    $0x1,%edi
    12ce:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    12d1:	3c 0a                	cmp    $0xa,%al
    12d3:	74 23                	je     12f8 <gets+0x68>
    12d5:	3c 0d                	cmp    $0xd,%al
    12d7:	74 1f                	je     12f8 <gets+0x68>
  for(i=0; i+1 < max; ){
    12d9:	83 c3 01             	add    $0x1,%ebx
    12dc:	89 fe                	mov    %edi,%esi
    12de:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    12e1:	7c cd                	jl     12b0 <gets+0x20>
    12e3:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    12e5:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    12e8:	c6 03 00             	movb   $0x0,(%ebx)
}
    12eb:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12ee:	5b                   	pop    %ebx
    12ef:	5e                   	pop    %esi
    12f0:	5f                   	pop    %edi
    12f1:	5d                   	pop    %ebp
    12f2:	c3                   	ret    
    12f3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    12f7:	90                   	nop
    12f8:	8b 75 08             	mov    0x8(%ebp),%esi
    12fb:	8b 45 08             	mov    0x8(%ebp),%eax
    12fe:	01 de                	add    %ebx,%esi
    1300:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    1302:	c6 03 00             	movb   $0x0,(%ebx)
}
    1305:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1308:	5b                   	pop    %ebx
    1309:	5e                   	pop    %esi
    130a:	5f                   	pop    %edi
    130b:	5d                   	pop    %ebp
    130c:	c3                   	ret    
    130d:	8d 76 00             	lea    0x0(%esi),%esi

00001310 <stat>:

int
stat(const char *n, struct stat *st)
{
    1310:	f3 0f 1e fb          	endbr32 
    1314:	55                   	push   %ebp
    1315:	89 e5                	mov    %esp,%ebp
    1317:	56                   	push   %esi
    1318:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    1319:	83 ec 08             	sub    $0x8,%esp
    131c:	6a 00                	push   $0x0
    131e:	ff 75 08             	pushl  0x8(%ebp)
    1321:	e8 37 03 00 00       	call   165d <open>
  if(fd < 0)
    1326:	83 c4 10             	add    $0x10,%esp
    1329:	85 c0                	test   %eax,%eax
    132b:	78 2b                	js     1358 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    132d:	83 ec 08             	sub    $0x8,%esp
    1330:	ff 75 0c             	pushl  0xc(%ebp)
    1333:	89 c3                	mov    %eax,%ebx
    1335:	50                   	push   %eax
    1336:	e8 3a 03 00 00       	call   1675 <fstat>
  close(fd);
    133b:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    133e:	89 c6                	mov    %eax,%esi
  close(fd);
    1340:	e8 00 03 00 00       	call   1645 <close>
  return r;
    1345:	83 c4 10             	add    $0x10,%esp
}
    1348:	8d 65 f8             	lea    -0x8(%ebp),%esp
    134b:	89 f0                	mov    %esi,%eax
    134d:	5b                   	pop    %ebx
    134e:	5e                   	pop    %esi
    134f:	5d                   	pop    %ebp
    1350:	c3                   	ret    
    1351:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    1358:	be ff ff ff ff       	mov    $0xffffffff,%esi
    135d:	eb e9                	jmp    1348 <stat+0x38>
    135f:	90                   	nop

00001360 <atoi>:

int
atoi(const char *s)
{
    1360:	f3 0f 1e fb          	endbr32 
    1364:	55                   	push   %ebp
    1365:	89 e5                	mov    %esp,%ebp
    1367:	53                   	push   %ebx
    1368:	8b 55 08             	mov    0x8(%ebp),%edx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    136b:	0f be 02             	movsbl (%edx),%eax
    136e:	8d 48 d0             	lea    -0x30(%eax),%ecx
    1371:	80 f9 09             	cmp    $0x9,%cl
  n = 0;
    1374:	b9 00 00 00 00       	mov    $0x0,%ecx
  while('0' <= *s && *s <= '9')
    1379:	77 1a                	ja     1395 <atoi+0x35>
    137b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    137f:	90                   	nop
    n = n*10 + *s++ - '0';
    1380:	83 c2 01             	add    $0x1,%edx
    1383:	8d 0c 89             	lea    (%ecx,%ecx,4),%ecx
    1386:	8d 4c 48 d0          	lea    -0x30(%eax,%ecx,2),%ecx
  while('0' <= *s && *s <= '9')
    138a:	0f be 02             	movsbl (%edx),%eax
    138d:	8d 58 d0             	lea    -0x30(%eax),%ebx
    1390:	80 fb 09             	cmp    $0x9,%bl
    1393:	76 eb                	jbe    1380 <atoi+0x20>
  return n;
}
    1395:	89 c8                	mov    %ecx,%eax
    1397:	5b                   	pop    %ebx
    1398:	5d                   	pop    %ebp
    1399:	c3                   	ret    
    139a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

000013a0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    13a0:	f3 0f 1e fb          	endbr32 
    13a4:	55                   	push   %ebp
    13a5:	89 e5                	mov    %esp,%ebp
    13a7:	57                   	push   %edi
    13a8:	8b 45 10             	mov    0x10(%ebp),%eax
    13ab:	8b 55 08             	mov    0x8(%ebp),%edx
    13ae:	56                   	push   %esi
    13af:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    13b2:	85 c0                	test   %eax,%eax
    13b4:	7e 0f                	jle    13c5 <memmove+0x25>
    13b6:	01 d0                	add    %edx,%eax
  dst = vdst;
    13b8:	89 d7                	mov    %edx,%edi
    13ba:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    *dst++ = *src++;
    13c0:	a4                   	movsb  %ds:(%esi),%es:(%edi)
  while(n-- > 0)
    13c1:	39 f8                	cmp    %edi,%eax
    13c3:	75 fb                	jne    13c0 <memmove+0x20>
  return vdst;
}
    13c5:	5e                   	pop    %esi
    13c6:	89 d0                	mov    %edx,%eax
    13c8:	5f                   	pop    %edi
    13c9:	5d                   	pop    %ebp
    13ca:	c3                   	ret    
    13cb:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    13cf:	90                   	nop

000013d0 <thread_join>:
void* stack;
stack =malloc(4096);  //pgsize
return clone(start_routine,arg1,arg2,stack);
}
int thread_join()
{
    13d0:	f3 0f 1e fb          	endbr32 
    13d4:	55                   	push   %ebp
    13d5:	89 e5                	mov    %esp,%ebp
    13d7:	83 ec 24             	sub    $0x24,%esp
  void * stackPtr;
  int x = join(&stackPtr);
    13da:	8d 45 f4             	lea    -0xc(%ebp),%eax
    13dd:	50                   	push   %eax
    13de:	e8 0a 03 00 00       	call   16ed <join>
  
  return x;
}
    13e3:	c9                   	leave  
    13e4:	c3                   	ret    
    13e5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    13ec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000013f0 <lock_init>:

void lock_init(struct lock_t *lk){
    13f0:	f3 0f 1e fb          	endbr32 
    13f4:	55                   	push   %ebp
    13f5:	89 e5                	mov    %esp,%ebp
lk->locked=0; //intialize as unnlocked
    13f7:	8b 45 08             	mov    0x8(%ebp),%eax
    13fa:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
}
    1400:	5d                   	pop    %ebp
    1401:	c3                   	ret    
    1402:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1409:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001410 <lock_acquire>:
void lock_acquire(struct lock_t *lk){
    1410:	f3 0f 1e fb          	endbr32 
    1414:	55                   	push   %ebp
xchg(volatile uint *addr, uint newval)
{
  uint result;

  // The + in "+m" denotes a read-modify-write operand.
  asm volatile("lock; xchgl %0, %1" :
    1415:	b9 01 00 00 00       	mov    $0x1,%ecx
    141a:	89 e5                	mov    %esp,%ebp
    141c:	8b 55 08             	mov    0x8(%ebp),%edx
    141f:	90                   	nop
    1420:	89 c8                	mov    %ecx,%eax
    1422:	f0 87 02             	lock xchg %eax,(%edx)
while(xchg(&lk->locked,1) != 0);
    1425:	85 c0                	test   %eax,%eax
    1427:	75 f7                	jne    1420 <lock_acquire+0x10>
}
    1429:	5d                   	pop    %ebp
    142a:	c3                   	ret    
    142b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    142f:	90                   	nop

00001430 <lock_release>:
void lock_release(struct lock_t *lk){
    1430:	f3 0f 1e fb          	endbr32 
    1434:	55                   	push   %ebp
    1435:	31 c0                	xor    %eax,%eax
    1437:	89 e5                	mov    %esp,%ebp
    1439:	8b 55 08             	mov    0x8(%ebp),%edx
    143c:	f0 87 02             	lock xchg %eax,(%edx)
  xchg(&lk->locked,0) ;
}
    143f:	5d                   	pop    %ebp
    1440:	c3                   	ret    
    1441:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1448:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    144f:	90                   	nop

00001450 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1450:	f3 0f 1e fb          	endbr32 
    1454:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1455:	a1 f8 1d 00 00       	mov    0x1df8,%eax
{
    145a:	89 e5                	mov    %esp,%ebp
    145c:	57                   	push   %edi
    145d:	56                   	push   %esi
    145e:	53                   	push   %ebx
    145f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1462:	8b 10                	mov    (%eax),%edx
  bp = (Header*)ap - 1;
    1464:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1467:	39 c8                	cmp    %ecx,%eax
    1469:	73 15                	jae    1480 <free+0x30>
    146b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    146f:	90                   	nop
    1470:	39 d1                	cmp    %edx,%ecx
    1472:	72 14                	jb     1488 <free+0x38>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1474:	39 d0                	cmp    %edx,%eax
    1476:	73 10                	jae    1488 <free+0x38>
{
    1478:	89 d0                	mov    %edx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    147a:	8b 10                	mov    (%eax),%edx
    147c:	39 c8                	cmp    %ecx,%eax
    147e:	72 f0                	jb     1470 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1480:	39 d0                	cmp    %edx,%eax
    1482:	72 f4                	jb     1478 <free+0x28>
    1484:	39 d1                	cmp    %edx,%ecx
    1486:	73 f0                	jae    1478 <free+0x28>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1488:	8b 73 fc             	mov    -0x4(%ebx),%esi
    148b:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    148e:	39 fa                	cmp    %edi,%edx
    1490:	74 1e                	je     14b0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    1492:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    1495:	8b 50 04             	mov    0x4(%eax),%edx
    1498:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    149b:	39 f1                	cmp    %esi,%ecx
    149d:	74 28                	je     14c7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    149f:	89 08                	mov    %ecx,(%eax)
  freep = p;
}
    14a1:	5b                   	pop    %ebx
  freep = p;
    14a2:	a3 f8 1d 00 00       	mov    %eax,0x1df8
}
    14a7:	5e                   	pop    %esi
    14a8:	5f                   	pop    %edi
    14a9:	5d                   	pop    %ebp
    14aa:	c3                   	ret    
    14ab:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    14af:	90                   	nop
    bp->s.size += p->s.ptr->s.size;
    14b0:	03 72 04             	add    0x4(%edx),%esi
    14b3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    14b6:	8b 10                	mov    (%eax),%edx
    14b8:	8b 12                	mov    (%edx),%edx
    14ba:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    14bd:	8b 50 04             	mov    0x4(%eax),%edx
    14c0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    14c3:	39 f1                	cmp    %esi,%ecx
    14c5:	75 d8                	jne    149f <free+0x4f>
    p->s.size += bp->s.size;
    14c7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    14ca:	a3 f8 1d 00 00       	mov    %eax,0x1df8
    p->s.size += bp->s.size;
    14cf:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    14d2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    14d5:	89 10                	mov    %edx,(%eax)
}
    14d7:	5b                   	pop    %ebx
    14d8:	5e                   	pop    %esi
    14d9:	5f                   	pop    %edi
    14da:	5d                   	pop    %ebp
    14db:	c3                   	ret    
    14dc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000014e0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    14e0:	f3 0f 1e fb          	endbr32 
    14e4:	55                   	push   %ebp
    14e5:	89 e5                	mov    %esp,%ebp
    14e7:	57                   	push   %edi
    14e8:	56                   	push   %esi
    14e9:	53                   	push   %ebx
    14ea:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    14ed:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    14f0:	8b 3d f8 1d 00 00    	mov    0x1df8,%edi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    14f6:	8d 70 07             	lea    0x7(%eax),%esi
    14f9:	c1 ee 03             	shr    $0x3,%esi
    14fc:	83 c6 01             	add    $0x1,%esi
  if((prevp = freep) == 0){
    14ff:	85 ff                	test   %edi,%edi
    1501:	0f 84 a9 00 00 00    	je     15b0 <malloc+0xd0>
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1507:	8b 07                	mov    (%edi),%eax
    if(p->s.size >= nunits){
    1509:	8b 48 04             	mov    0x4(%eax),%ecx
    150c:	39 f1                	cmp    %esi,%ecx
    150e:	73 6d                	jae    157d <malloc+0x9d>
    1510:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    1516:	bb 00 10 00 00       	mov    $0x1000,%ebx
    151b:	0f 43 de             	cmovae %esi,%ebx
  p = sbrk(nu * sizeof(Header));
    151e:	8d 0c dd 00 00 00 00 	lea    0x0(,%ebx,8),%ecx
    1525:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
    1528:	eb 17                	jmp    1541 <malloc+0x61>
    152a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1530:	8b 10                	mov    (%eax),%edx
    if(p->s.size >= nunits){
    1532:	8b 4a 04             	mov    0x4(%edx),%ecx
    1535:	39 f1                	cmp    %esi,%ecx
    1537:	73 4f                	jae    1588 <malloc+0xa8>
    1539:	8b 3d f8 1d 00 00    	mov    0x1df8,%edi
    153f:	89 d0                	mov    %edx,%eax
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1541:	39 c7                	cmp    %eax,%edi
    1543:	75 eb                	jne    1530 <malloc+0x50>
  p = sbrk(nu * sizeof(Header));
    1545:	83 ec 0c             	sub    $0xc,%esp
    1548:	ff 75 e4             	pushl  -0x1c(%ebp)
    154b:	e8 55 01 00 00       	call   16a5 <sbrk>
  if(p == (char*)-1)
    1550:	83 c4 10             	add    $0x10,%esp
    1553:	83 f8 ff             	cmp    $0xffffffff,%eax
    1556:	74 1b                	je     1573 <malloc+0x93>
  hp->s.size = nu;
    1558:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    155b:	83 ec 0c             	sub    $0xc,%esp
    155e:	83 c0 08             	add    $0x8,%eax
    1561:	50                   	push   %eax
    1562:	e8 e9 fe ff ff       	call   1450 <free>
  return freep;
    1567:	a1 f8 1d 00 00       	mov    0x1df8,%eax
      if((p = morecore(nunits)) == 0)
    156c:	83 c4 10             	add    $0x10,%esp
    156f:	85 c0                	test   %eax,%eax
    1571:	75 bd                	jne    1530 <malloc+0x50>
        return 0;
  }
}
    1573:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    1576:	31 c0                	xor    %eax,%eax
}
    1578:	5b                   	pop    %ebx
    1579:	5e                   	pop    %esi
    157a:	5f                   	pop    %edi
    157b:	5d                   	pop    %ebp
    157c:	c3                   	ret    
    if(p->s.size >= nunits){
    157d:	89 c2                	mov    %eax,%edx
    157f:	89 f8                	mov    %edi,%eax
    1581:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    1588:	39 ce                	cmp    %ecx,%esi
    158a:	74 54                	je     15e0 <malloc+0x100>
        p->s.size -= nunits;
    158c:	29 f1                	sub    %esi,%ecx
    158e:	89 4a 04             	mov    %ecx,0x4(%edx)
        p += p->s.size;
    1591:	8d 14 ca             	lea    (%edx,%ecx,8),%edx
        p->s.size = nunits;
    1594:	89 72 04             	mov    %esi,0x4(%edx)
      freep = prevp;
    1597:	a3 f8 1d 00 00       	mov    %eax,0x1df8
}
    159c:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    159f:	8d 42 08             	lea    0x8(%edx),%eax
}
    15a2:	5b                   	pop    %ebx
    15a3:	5e                   	pop    %esi
    15a4:	5f                   	pop    %edi
    15a5:	5d                   	pop    %ebp
    15a6:	c3                   	ret    
    15a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15ae:	66 90                	xchg   %ax,%ax
    base.s.ptr = freep = prevp = &base;
    15b0:	c7 05 f8 1d 00 00 fc 	movl   $0x1dfc,0x1df8
    15b7:	1d 00 00 
    base.s.size = 0;
    15ba:	bf fc 1d 00 00       	mov    $0x1dfc,%edi
    base.s.ptr = freep = prevp = &base;
    15bf:	c7 05 fc 1d 00 00 fc 	movl   $0x1dfc,0x1dfc
    15c6:	1d 00 00 
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    15c9:	89 f8                	mov    %edi,%eax
    base.s.size = 0;
    15cb:	c7 05 00 1e 00 00 00 	movl   $0x0,0x1e00
    15d2:	00 00 00 
    if(p->s.size >= nunits){
    15d5:	e9 36 ff ff ff       	jmp    1510 <malloc+0x30>
    15da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        prevp->s.ptr = p->s.ptr;
    15e0:	8b 0a                	mov    (%edx),%ecx
    15e2:	89 08                	mov    %ecx,(%eax)
    15e4:	eb b1                	jmp    1597 <malloc+0xb7>
    15e6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    15ed:	8d 76 00             	lea    0x0(%esi),%esi

000015f0 <thread_create>:
{
    15f0:	f3 0f 1e fb          	endbr32 
    15f4:	55                   	push   %ebp
    15f5:	89 e5                	mov    %esp,%ebp
    15f7:	83 ec 14             	sub    $0x14,%esp
stack =malloc(4096);  //pgsize
    15fa:	68 00 10 00 00       	push   $0x1000
    15ff:	e8 dc fe ff ff       	call   14e0 <malloc>
return clone(start_routine,arg1,arg2,stack);
    1604:	50                   	push   %eax
    1605:	ff 75 10             	pushl  0x10(%ebp)
    1608:	ff 75 0c             	pushl  0xc(%ebp)
    160b:	ff 75 08             	pushl  0x8(%ebp)
    160e:	e8 d2 00 00 00       	call   16e5 <clone>
}
    1613:	c9                   	leave  
    1614:	c3                   	ret    

00001615 <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    1615:	b8 01 00 00 00       	mov    $0x1,%eax
    161a:	cd 40                	int    $0x40
    161c:	c3                   	ret    

0000161d <exit>:
SYSCALL(exit)
    161d:	b8 02 00 00 00       	mov    $0x2,%eax
    1622:	cd 40                	int    $0x40
    1624:	c3                   	ret    

00001625 <wait>:
SYSCALL(wait)
    1625:	b8 03 00 00 00       	mov    $0x3,%eax
    162a:	cd 40                	int    $0x40
    162c:	c3                   	ret    

0000162d <pipe>:
SYSCALL(pipe)
    162d:	b8 04 00 00 00       	mov    $0x4,%eax
    1632:	cd 40                	int    $0x40
    1634:	c3                   	ret    

00001635 <read>:
SYSCALL(read)
    1635:	b8 05 00 00 00       	mov    $0x5,%eax
    163a:	cd 40                	int    $0x40
    163c:	c3                   	ret    

0000163d <write>:
SYSCALL(write)
    163d:	b8 10 00 00 00       	mov    $0x10,%eax
    1642:	cd 40                	int    $0x40
    1644:	c3                   	ret    

00001645 <close>:
SYSCALL(close)
    1645:	b8 15 00 00 00       	mov    $0x15,%eax
    164a:	cd 40                	int    $0x40
    164c:	c3                   	ret    

0000164d <kill>:
SYSCALL(kill)
    164d:	b8 06 00 00 00       	mov    $0x6,%eax
    1652:	cd 40                	int    $0x40
    1654:	c3                   	ret    

00001655 <exec>:
SYSCALL(exec)
    1655:	b8 07 00 00 00       	mov    $0x7,%eax
    165a:	cd 40                	int    $0x40
    165c:	c3                   	ret    

0000165d <open>:
SYSCALL(open)
    165d:	b8 0f 00 00 00       	mov    $0xf,%eax
    1662:	cd 40                	int    $0x40
    1664:	c3                   	ret    

00001665 <mknod>:
SYSCALL(mknod)
    1665:	b8 11 00 00 00       	mov    $0x11,%eax
    166a:	cd 40                	int    $0x40
    166c:	c3                   	ret    

0000166d <unlink>:
SYSCALL(unlink)
    166d:	b8 12 00 00 00       	mov    $0x12,%eax
    1672:	cd 40                	int    $0x40
    1674:	c3                   	ret    

00001675 <fstat>:
SYSCALL(fstat)
    1675:	b8 08 00 00 00       	mov    $0x8,%eax
    167a:	cd 40                	int    $0x40
    167c:	c3                   	ret    

0000167d <link>:
SYSCALL(link)
    167d:	b8 13 00 00 00       	mov    $0x13,%eax
    1682:	cd 40                	int    $0x40
    1684:	c3                   	ret    

00001685 <mkdir>:
SYSCALL(mkdir)
    1685:	b8 14 00 00 00       	mov    $0x14,%eax
    168a:	cd 40                	int    $0x40
    168c:	c3                   	ret    

0000168d <chdir>:
SYSCALL(chdir)
    168d:	b8 09 00 00 00       	mov    $0x9,%eax
    1692:	cd 40                	int    $0x40
    1694:	c3                   	ret    

00001695 <dup>:
SYSCALL(dup)
    1695:	b8 0a 00 00 00       	mov    $0xa,%eax
    169a:	cd 40                	int    $0x40
    169c:	c3                   	ret    

0000169d <getpid>:
SYSCALL(getpid)
    169d:	b8 0b 00 00 00       	mov    $0xb,%eax
    16a2:	cd 40                	int    $0x40
    16a4:	c3                   	ret    

000016a5 <sbrk>:
SYSCALL(sbrk)
    16a5:	b8 0c 00 00 00       	mov    $0xc,%eax
    16aa:	cd 40                	int    $0x40
    16ac:	c3                   	ret    

000016ad <sleep>:
SYSCALL(sleep)
    16ad:	b8 0d 00 00 00       	mov    $0xd,%eax
    16b2:	cd 40                	int    $0x40
    16b4:	c3                   	ret    

000016b5 <uptime>:
SYSCALL(uptime)
    16b5:	b8 0e 00 00 00       	mov    $0xe,%eax
    16ba:	cd 40                	int    $0x40
    16bc:	c3                   	ret    

000016bd <count>:
SYSCALL(count)
    16bd:	b8 16 00 00 00       	mov    $0x16,%eax
    16c2:	cd 40                	int    $0x40
    16c4:	c3                   	ret    

000016c5 <settickets>:

SYSCALL(settickets)
    16c5:	b8 17 00 00 00       	mov    $0x17,%eax
    16ca:	cd 40                	int    $0x40
    16cc:	c3                   	ret    

000016cd <getpinfo>:
SYSCALL(getpinfo)
    16cd:	b8 18 00 00 00       	mov    $0x18,%eax
    16d2:	cd 40                	int    $0x40
    16d4:	c3                   	ret    

000016d5 <mprotect>:

SYSCALL(mprotect)
    16d5:	b8 19 00 00 00       	mov    $0x19,%eax
    16da:	cd 40                	int    $0x40
    16dc:	c3                   	ret    

000016dd <munprotect>:
SYSCALL(munprotect)
    16dd:	b8 1a 00 00 00       	mov    $0x1a,%eax
    16e2:	cd 40                	int    $0x40
    16e4:	c3                   	ret    

000016e5 <clone>:

SYSCALL(clone)
    16e5:	b8 1b 00 00 00       	mov    $0x1b,%eax
    16ea:	cd 40                	int    $0x40
    16ec:	c3                   	ret    

000016ed <join>:
SYSCALL(join)
    16ed:	b8 1c 00 00 00       	mov    $0x1c,%eax
    16f2:	cd 40                	int    $0x40
    16f4:	c3                   	ret    
    16f5:	66 90                	xchg   %ax,%ax
    16f7:	66 90                	xchg   %ax,%ax
    16f9:	66 90                	xchg   %ax,%ax
    16fb:	66 90                	xchg   %ax,%ax
    16fd:	66 90                	xchg   %ax,%ax
    16ff:	90                   	nop

00001700 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1700:	55                   	push   %ebp
    1701:	89 e5                	mov    %esp,%ebp
    1703:	57                   	push   %edi
    1704:	56                   	push   %esi
    1705:	53                   	push   %ebx
    1706:	83 ec 3c             	sub    $0x3c,%esp
    1709:	89 4d c4             	mov    %ecx,-0x3c(%ebp)
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
    170c:	89 d1                	mov    %edx,%ecx
{
    170e:	89 45 b8             	mov    %eax,-0x48(%ebp)
  if(sgn && xx < 0){
    1711:	85 d2                	test   %edx,%edx
    1713:	0f 89 7f 00 00 00    	jns    1798 <printint+0x98>
    1719:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    171d:	74 79                	je     1798 <printint+0x98>
    neg = 1;
    171f:	c7 45 bc 01 00 00 00 	movl   $0x1,-0x44(%ebp)
    x = -xx;
    1726:	f7 d9                	neg    %ecx
  } else {
    x = xx;
  }

  i = 0;
    1728:	31 db                	xor    %ebx,%ebx
    172a:	8d 75 d7             	lea    -0x29(%ebp),%esi
    172d:	8d 76 00             	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
    1730:	89 c8                	mov    %ecx,%eax
    1732:	31 d2                	xor    %edx,%edx
    1734:	89 cf                	mov    %ecx,%edi
    1736:	f7 75 c4             	divl   -0x3c(%ebp)
    1739:	0f b6 92 4c 1a 00 00 	movzbl 0x1a4c(%edx),%edx
    1740:	89 45 c0             	mov    %eax,-0x40(%ebp)
    1743:	89 d8                	mov    %ebx,%eax
    1745:	8d 5b 01             	lea    0x1(%ebx),%ebx
  }while((x /= base) != 0);
    1748:	8b 4d c0             	mov    -0x40(%ebp),%ecx
    buf[i++] = digits[x % base];
    174b:	88 14 1e             	mov    %dl,(%esi,%ebx,1)
  }while((x /= base) != 0);
    174e:	39 7d c4             	cmp    %edi,-0x3c(%ebp)
    1751:	76 dd                	jbe    1730 <printint+0x30>
  if(neg)
    1753:	8b 4d bc             	mov    -0x44(%ebp),%ecx
    1756:	85 c9                	test   %ecx,%ecx
    1758:	74 0c                	je     1766 <printint+0x66>
    buf[i++] = '-';
    175a:	c6 44 1d d8 2d       	movb   $0x2d,-0x28(%ebp,%ebx,1)
    buf[i++] = digits[x % base];
    175f:	89 d8                	mov    %ebx,%eax
    buf[i++] = '-';
    1761:	ba 2d 00 00 00       	mov    $0x2d,%edx

  while(--i >= 0)
    1766:	8b 7d b8             	mov    -0x48(%ebp),%edi
    1769:	8d 5c 05 d7          	lea    -0x29(%ebp,%eax,1),%ebx
    176d:	eb 07                	jmp    1776 <printint+0x76>
    176f:	90                   	nop
    1770:	0f b6 13             	movzbl (%ebx),%edx
    1773:	83 eb 01             	sub    $0x1,%ebx
  write(fd, &c, 1);
    1776:	83 ec 04             	sub    $0x4,%esp
    1779:	88 55 d7             	mov    %dl,-0x29(%ebp)
    177c:	6a 01                	push   $0x1
    177e:	56                   	push   %esi
    177f:	57                   	push   %edi
    1780:	e8 b8 fe ff ff       	call   163d <write>
  while(--i >= 0)
    1785:	83 c4 10             	add    $0x10,%esp
    1788:	39 de                	cmp    %ebx,%esi
    178a:	75 e4                	jne    1770 <printint+0x70>
    putc(fd, buf[i]);
}
    178c:	8d 65 f4             	lea    -0xc(%ebp),%esp
    178f:	5b                   	pop    %ebx
    1790:	5e                   	pop    %esi
    1791:	5f                   	pop    %edi
    1792:	5d                   	pop    %ebp
    1793:	c3                   	ret    
    1794:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    1798:	c7 45 bc 00 00 00 00 	movl   $0x0,-0x44(%ebp)
    179f:	eb 87                	jmp    1728 <printint+0x28>
    17a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17a8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    17af:	90                   	nop

000017b0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    17b0:	f3 0f 1e fb          	endbr32 
    17b4:	55                   	push   %ebp
    17b5:	89 e5                	mov    %esp,%ebp
    17b7:	57                   	push   %edi
    17b8:	56                   	push   %esi
    17b9:	53                   	push   %ebx
    17ba:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    17bd:	8b 75 0c             	mov    0xc(%ebp),%esi
    17c0:	0f b6 1e             	movzbl (%esi),%ebx
    17c3:	84 db                	test   %bl,%bl
    17c5:	0f 84 b4 00 00 00    	je     187f <printf+0xcf>
  ap = (uint*)(void*)&fmt + 1;
    17cb:	8d 45 10             	lea    0x10(%ebp),%eax
    17ce:	83 c6 01             	add    $0x1,%esi
  write(fd, &c, 1);
    17d1:	8d 7d e7             	lea    -0x19(%ebp),%edi
  state = 0;
    17d4:	31 d2                	xor    %edx,%edx
  ap = (uint*)(void*)&fmt + 1;
    17d6:	89 45 d0             	mov    %eax,-0x30(%ebp)
    17d9:	eb 33                	jmp    180e <printf+0x5e>
    17db:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    17df:	90                   	nop
    17e0:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
        state = '%';
    17e3:	ba 25 00 00 00       	mov    $0x25,%edx
      if(c == '%'){
    17e8:	83 f8 25             	cmp    $0x25,%eax
    17eb:	74 17                	je     1804 <printf+0x54>
  write(fd, &c, 1);
    17ed:	83 ec 04             	sub    $0x4,%esp
    17f0:	88 5d e7             	mov    %bl,-0x19(%ebp)
    17f3:	6a 01                	push   $0x1
    17f5:	57                   	push   %edi
    17f6:	ff 75 08             	pushl  0x8(%ebp)
    17f9:	e8 3f fe ff ff       	call   163d <write>
    17fe:	8b 55 d4             	mov    -0x2c(%ebp),%edx
      } else {
        putc(fd, c);
    1801:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1804:	0f b6 1e             	movzbl (%esi),%ebx
    1807:	83 c6 01             	add    $0x1,%esi
    180a:	84 db                	test   %bl,%bl
    180c:	74 71                	je     187f <printf+0xcf>
    c = fmt[i] & 0xff;
    180e:	0f be cb             	movsbl %bl,%ecx
    1811:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    1814:	85 d2                	test   %edx,%edx
    1816:	74 c8                	je     17e0 <printf+0x30>
      }
    } else if(state == '%'){
    1818:	83 fa 25             	cmp    $0x25,%edx
    181b:	75 e7                	jne    1804 <printf+0x54>
      if(c == 'd'){
    181d:	83 f8 64             	cmp    $0x64,%eax
    1820:	0f 84 9a 00 00 00    	je     18c0 <printf+0x110>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    1826:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    182c:	83 f9 70             	cmp    $0x70,%ecx
    182f:	74 5f                	je     1890 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1831:	83 f8 73             	cmp    $0x73,%eax
    1834:	0f 84 d6 00 00 00    	je     1910 <printf+0x160>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    183a:	83 f8 63             	cmp    $0x63,%eax
    183d:	0f 84 8d 00 00 00    	je     18d0 <printf+0x120>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1843:	83 f8 25             	cmp    $0x25,%eax
    1846:	0f 84 b4 00 00 00    	je     1900 <printf+0x150>
  write(fd, &c, 1);
    184c:	83 ec 04             	sub    $0x4,%esp
    184f:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    1853:	6a 01                	push   $0x1
    1855:	57                   	push   %edi
    1856:	ff 75 08             	pushl  0x8(%ebp)
    1859:	e8 df fd ff ff       	call   163d <write>
        putc(fd, c);
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
    185e:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1861:	83 c4 0c             	add    $0xc,%esp
    1864:	6a 01                	push   $0x1
    1866:	83 c6 01             	add    $0x1,%esi
    1869:	57                   	push   %edi
    186a:	ff 75 08             	pushl  0x8(%ebp)
    186d:	e8 cb fd ff ff       	call   163d <write>
  for(i = 0; fmt[i]; i++){
    1872:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
        putc(fd, c);
    1876:	83 c4 10             	add    $0x10,%esp
      }
      state = 0;
    1879:	31 d2                	xor    %edx,%edx
  for(i = 0; fmt[i]; i++){
    187b:	84 db                	test   %bl,%bl
    187d:	75 8f                	jne    180e <printf+0x5e>
    }
  }
}
    187f:	8d 65 f4             	lea    -0xc(%ebp),%esp
    1882:	5b                   	pop    %ebx
    1883:	5e                   	pop    %esi
    1884:	5f                   	pop    %edi
    1885:	5d                   	pop    %ebp
    1886:	c3                   	ret    
    1887:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    188e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 16, 0);
    1890:	83 ec 0c             	sub    $0xc,%esp
    1893:	b9 10 00 00 00       	mov    $0x10,%ecx
    1898:	6a 00                	push   $0x0
    189a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
    189d:	8b 45 08             	mov    0x8(%ebp),%eax
    18a0:	8b 13                	mov    (%ebx),%edx
    18a2:	e8 59 fe ff ff       	call   1700 <printint>
        ap++;
    18a7:	89 d8                	mov    %ebx,%eax
    18a9:	83 c4 10             	add    $0x10,%esp
      state = 0;
    18ac:	31 d2                	xor    %edx,%edx
        ap++;
    18ae:	83 c0 04             	add    $0x4,%eax
    18b1:	89 45 d0             	mov    %eax,-0x30(%ebp)
    18b4:	e9 4b ff ff ff       	jmp    1804 <printf+0x54>
    18b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        printint(fd, *ap, 10, 1);
    18c0:	83 ec 0c             	sub    $0xc,%esp
    18c3:	b9 0a 00 00 00       	mov    $0xa,%ecx
    18c8:	6a 01                	push   $0x1
    18ca:	eb ce                	jmp    189a <printf+0xea>
    18cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        putc(fd, *ap);
    18d0:	8b 5d d0             	mov    -0x30(%ebp),%ebx
  write(fd, &c, 1);
    18d3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    18d6:	8b 03                	mov    (%ebx),%eax
  write(fd, &c, 1);
    18d8:	6a 01                	push   $0x1
        ap++;
    18da:	83 c3 04             	add    $0x4,%ebx
  write(fd, &c, 1);
    18dd:	57                   	push   %edi
    18de:	ff 75 08             	pushl  0x8(%ebp)
        putc(fd, *ap);
    18e1:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    18e4:	e8 54 fd ff ff       	call   163d <write>
        ap++;
    18e9:	89 5d d0             	mov    %ebx,-0x30(%ebp)
    18ec:	83 c4 10             	add    $0x10,%esp
      state = 0;
    18ef:	31 d2                	xor    %edx,%edx
    18f1:	e9 0e ff ff ff       	jmp    1804 <printf+0x54>
    18f6:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    18fd:	8d 76 00             	lea    0x0(%esi),%esi
        putc(fd, c);
    1900:	88 5d e7             	mov    %bl,-0x19(%ebp)
  write(fd, &c, 1);
    1903:	83 ec 04             	sub    $0x4,%esp
    1906:	e9 59 ff ff ff       	jmp    1864 <printf+0xb4>
    190b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    190f:	90                   	nop
        s = (char*)*ap;
    1910:	8b 45 d0             	mov    -0x30(%ebp),%eax
    1913:	8b 18                	mov    (%eax),%ebx
        ap++;
    1915:	83 c0 04             	add    $0x4,%eax
    1918:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
    191b:	85 db                	test   %ebx,%ebx
    191d:	74 17                	je     1936 <printf+0x186>
        while(*s != 0){
    191f:	0f b6 03             	movzbl (%ebx),%eax
      state = 0;
    1922:	31 d2                	xor    %edx,%edx
        while(*s != 0){
    1924:	84 c0                	test   %al,%al
    1926:	0f 84 d8 fe ff ff    	je     1804 <printf+0x54>
    192c:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    192f:	89 de                	mov    %ebx,%esi
    1931:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1934:	eb 1a                	jmp    1950 <printf+0x1a0>
          s = "(null)";
    1936:	bb 42 1a 00 00       	mov    $0x1a42,%ebx
        while(*s != 0){
    193b:	89 75 d4             	mov    %esi,-0x2c(%ebp)
    193e:	b8 28 00 00 00       	mov    $0x28,%eax
    1943:	89 de                	mov    %ebx,%esi
    1945:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1948:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    194f:	90                   	nop
  write(fd, &c, 1);
    1950:	83 ec 04             	sub    $0x4,%esp
          s++;
    1953:	83 c6 01             	add    $0x1,%esi
    1956:	88 45 e7             	mov    %al,-0x19(%ebp)
  write(fd, &c, 1);
    1959:	6a 01                	push   $0x1
    195b:	57                   	push   %edi
    195c:	53                   	push   %ebx
    195d:	e8 db fc ff ff       	call   163d <write>
        while(*s != 0){
    1962:	0f b6 06             	movzbl (%esi),%eax
    1965:	83 c4 10             	add    $0x10,%esp
    1968:	84 c0                	test   %al,%al
    196a:	75 e4                	jne    1950 <printf+0x1a0>
    196c:	8b 75 d4             	mov    -0x2c(%ebp),%esi
      state = 0;
    196f:	31 d2                	xor    %edx,%edx
    1971:	e9 8e fe ff ff       	jmp    1804 <printf+0x54>
