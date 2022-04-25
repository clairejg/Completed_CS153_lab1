
_usertests:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
  return randstate;
}

int
main(int argc, char *argv[])
{
       0:	55                   	push   %ebp
       1:	89 e5                	mov    %esp,%ebp
       3:	83 e4 f0             	and    $0xfffffff0,%esp
       6:	83 ec 10             	sub    $0x10,%esp
  printf(1, "usertests starting\n");
       9:	c7 44 24 04 86 54 00 	movl   $0x5486,0x4(%esp)
      10:	00 
      11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      18:	e8 13 41 00 00       	call   4130 <printf>

  if(open("usertests.ran", 0) >= 0){
      1d:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
      24:	00 
      25:	c7 04 24 9a 54 00 00 	movl   $0x549a,(%esp)
      2c:	e8 f1 3f 00 00       	call   4022 <open>
      31:	85 c0                	test   %eax,%eax
      33:	78 20                	js     55 <main+0x55>
    printf(1, "already ran user tests -- rebuild fs.img\n");
      35:	c7 44 24 04 04 5c 00 	movl   $0x5c04,0x4(%esp)
      3c:	00 
      3d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
      44:	e8 e7 40 00 00       	call   4130 <printf>
    exit(0);
      49:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
      50:	e8 8d 3f 00 00       	call   3fe2 <exit>
  }
  close(open("usertests.ran", O_CREATE));
      55:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
      5c:	00 
      5d:	c7 04 24 9a 54 00 00 	movl   $0x549a,(%esp)
      64:	e8 b9 3f 00 00       	call   4022 <open>
      69:	89 04 24             	mov    %eax,(%esp)
      6c:	e8 99 3f 00 00       	call   400a <close>

  argptest();
      71:	e8 9a 3c 00 00       	call   3d10 <argptest>
  createdelete();
      76:	e8 c5 12 00 00       	call   1340 <createdelete>
      7b:	90                   	nop
      7c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  linkunlink();
      80:	e8 2b 1d 00 00       	call   1db0 <linkunlink>
  concreate();
      85:	e8 d6 19 00 00       	call   1a60 <concreate>
  fourfiles();
      8a:	e8 51 10 00 00       	call   10e0 <fourfiles>
      8f:	90                   	nop
  sharedfd();
      90:	e8 5b 0e 00 00       	call   ef0 <sharedfd>

  bigargtest();
      95:	e8 b6 38 00 00       	call   3950 <bigargtest>
  bigwrite();
      9a:	e8 11 28 00 00       	call   28b0 <bigwrite>
      9f:	90                   	nop
  bigargtest();
      a0:	e8 ab 38 00 00       	call   3950 <bigargtest>
  bsstest();
      a5:	e8 26 38 00 00       	call   38d0 <bsstest>
  sbrktest();
      aa:	e8 31 33 00 00       	call   33e0 <sbrktest>
      af:	90                   	nop
  validatetest();
      b0:	e8 5b 37 00 00       	call   3810 <validatetest>

  opentest();
      b5:	e8 26 03 00 00       	call   3e0 <opentest>
  writetest();
      ba:	e8 d1 03 00 00       	call   490 <writetest>
      bf:	90                   	nop
  writetest1();
      c0:	e8 9b 05 00 00       	call   660 <writetest1>
  createtest();
      c5:	e8 86 07 00 00       	call   850 <createtest>

  openiputtest();
      ca:	e8 11 02 00 00       	call   2e0 <openiputtest>
      cf:	90                   	nop
  exitiputtest();
      d0:	e8 2b 01 00 00       	call   200 <exitiputtest>
  iputtest();
      d5:	e8 66 00 00 00       	call   140 <iputtest>

  mem();
      da:	e8 31 0d 00 00       	call   e10 <mem>
      df:	90                   	nop
  pipe1();
      e0:	e8 3b 09 00 00       	call   a20 <pipe1>
  preempt();
      e5:	e8 26 0b 00 00       	call   c10 <preempt>
  exitwait();
      ea:	e8 91 0c 00 00       	call   d80 <exitwait>
      ef:	90                   	nop

  rmdot();
      f0:	e8 7b 2c 00 00       	call   2d70 <rmdot>
  fourteen();
      f5:	e8 f6 2a 00 00       	call   2bf0 <fourteen>
  bigfile();
      fa:	e8 c1 28 00 00       	call   29c0 <bigfile>
      ff:	90                   	nop
  subdir();
     100:	e8 2b 1f 00 00       	call   2030 <subdir>
  linktest();
     105:	e8 b6 16 00 00       	call   17c0 <linktest>
  unlinkread();
     10a:	e8 b1 14 00 00       	call   15c0 <unlinkread>
     10f:	90                   	nop
  dirfile();
     110:	e8 2b 2e 00 00       	call   2f40 <dirfile>
  iref();
     115:	e8 a6 30 00 00       	call   31c0 <iref>
  forktest();
     11a:	e8 d1 31 00 00       	call   32f0 <forktest>
     11f:	90                   	nop
  bigdir(); // slow
     120:	e8 ab 1d 00 00       	call   1ed0 <bigdir>

  uio();
     125:	e8 46 3b 00 00       	call   3c70 <uio>

  exectest();
     12a:	e8 91 08 00 00       	call   9c0 <exectest>

  exit(0);
     12f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     136:	e8 a7 3e 00 00       	call   3fe2 <exit>
     13b:	66 90                	xchg   %ax,%ax
     13d:	66 90                	xchg   %ax,%ax
     13f:	90                   	nop

00000140 <iputtest>:
{
     140:	55                   	push   %ebp
     141:	89 e5                	mov    %esp,%ebp
     143:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "iput test\n");
     146:	a1 14 65 00 00       	mov    0x6514,%eax
     14b:	c7 44 24 04 2c 45 00 	movl   $0x452c,0x4(%esp)
     152:	00 
     153:	89 04 24             	mov    %eax,(%esp)
     156:	e8 d5 3f 00 00       	call   4130 <printf>
  if(mkdir("iputdir") < 0){
     15b:	c7 04 24 bf 44 00 00 	movl   $0x44bf,(%esp)
     162:	e8 e3 3e 00 00       	call   404a <mkdir>
     167:	85 c0                	test   %eax,%eax
     169:	78 47                	js     1b2 <iputtest+0x72>
  if(chdir("iputdir") < 0){
     16b:	c7 04 24 bf 44 00 00 	movl   $0x44bf,(%esp)
     172:	e8 db 3e 00 00       	call   4052 <chdir>
     177:	85 c0                	test   %eax,%eax
     179:	78 6c                	js     1e7 <iputtest+0xa7>
  if(unlink("../iputdir") < 0){
     17b:	c7 04 24 bc 44 00 00 	movl   $0x44bc,(%esp)
     182:	e8 ab 3e 00 00       	call   4032 <unlink>
     187:	85 c0                	test   %eax,%eax
     189:	78 52                	js     1dd <iputtest+0x9d>
  if(chdir("/") < 0){
     18b:	c7 04 24 e1 44 00 00 	movl   $0x44e1,(%esp)
     192:	e8 bb 3e 00 00       	call   4052 <chdir>
     197:	85 c0                	test   %eax,%eax
     199:	78 38                	js     1d3 <iputtest+0x93>
  printf(stdout, "iput test ok\n");
     19b:	a1 14 65 00 00       	mov    0x6514,%eax
     1a0:	c7 44 24 04 64 45 00 	movl   $0x4564,0x4(%esp)
     1a7:	00 
     1a8:	89 04 24             	mov    %eax,(%esp)
     1ab:	e8 80 3f 00 00       	call   4130 <printf>
}
     1b0:	c9                   	leave  
     1b1:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     1b2:	c7 44 24 04 98 44 00 	movl   $0x4498,0x4(%esp)
     1b9:	00 
    printf(stdout, "chdir iputdir failed\n");
     1ba:	a1 14 65 00 00       	mov    0x6514,%eax
     1bf:	89 04 24             	mov    %eax,(%esp)
     1c2:	e8 69 3f 00 00       	call   4130 <printf>
    exit(EXIT_FAILURE);
     1c7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     1ce:	e8 0f 3e 00 00       	call   3fe2 <exit>
    printf(stdout, "chdir / failed\n");
     1d3:	c7 44 24 04 e3 44 00 	movl   $0x44e3,0x4(%esp)
     1da:	00 
     1db:	eb dd                	jmp    1ba <iputtest+0x7a>
    printf(stdout, "unlink ../iputdir failed\n");
     1dd:	c7 44 24 04 c7 44 00 	movl   $0x44c7,0x4(%esp)
     1e4:	00 
     1e5:	eb d3                	jmp    1ba <iputtest+0x7a>
    printf(stdout, "chdir iputdir failed\n");
     1e7:	c7 44 24 04 a6 44 00 	movl   $0x44a6,0x4(%esp)
     1ee:	00 
     1ef:	eb c9                	jmp    1ba <iputtest+0x7a>
     1f1:	eb 0d                	jmp    200 <exitiputtest>
     1f3:	90                   	nop
     1f4:	90                   	nop
     1f5:	90                   	nop
     1f6:	90                   	nop
     1f7:	90                   	nop
     1f8:	90                   	nop
     1f9:	90                   	nop
     1fa:	90                   	nop
     1fb:	90                   	nop
     1fc:	90                   	nop
     1fd:	90                   	nop
     1fe:	90                   	nop
     1ff:	90                   	nop

00000200 <exitiputtest>:
{
     200:	55                   	push   %ebp
     201:	89 e5                	mov    %esp,%ebp
     203:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exitiput test\n");
     206:	a1 14 65 00 00       	mov    0x6514,%eax
     20b:	c7 44 24 04 f3 44 00 	movl   $0x44f3,0x4(%esp)
     212:	00 
     213:	89 04 24             	mov    %eax,(%esp)
     216:	e8 15 3f 00 00       	call   4130 <printf>
  pid = fork();
     21b:	e8 ba 3d 00 00       	call   3fda <fork>
  if(pid < 0){
     220:	85 c0                	test   %eax,%eax
     222:	0f 88 91 00 00 00    	js     2b9 <exitiputtest+0xb9>
  if(pid == 0){
     228:	75 46                	jne    270 <exitiputtest+0x70>
    if(mkdir("iputdir") < 0){
     22a:	c7 04 24 bf 44 00 00 	movl   $0x44bf,(%esp)
     231:	e8 14 3e 00 00       	call   404a <mkdir>
     236:	85 c0                	test   %eax,%eax
     238:	0f 88 8f 00 00 00    	js     2cd <exitiputtest+0xcd>
    if(chdir("iputdir") < 0){
     23e:	c7 04 24 bf 44 00 00 	movl   $0x44bf,(%esp)
     245:	e8 08 3e 00 00       	call   4052 <chdir>
     24a:	85 c0                	test   %eax,%eax
     24c:	78 75                	js     2c3 <exitiputtest+0xc3>
    if(unlink("../iputdir") < 0){
     24e:	c7 04 24 bc 44 00 00 	movl   $0x44bc,(%esp)
     255:	e8 d8 3d 00 00       	call   4032 <unlink>
     25a:	85 c0                	test   %eax,%eax
     25c:	78 3a                	js     298 <exitiputtest+0x98>
    exit(EXIT_SUCCESS);
     25e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     265:	e8 78 3d 00 00       	call   3fe2 <exit>
     26a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  wait(0);
     270:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     277:	e8 6e 3d 00 00       	call   3fea <wait>
  printf(stdout, "exitiput test ok\n");
     27c:	a1 14 65 00 00       	mov    0x6514,%eax
     281:	c7 44 24 04 16 45 00 	movl   $0x4516,0x4(%esp)
     288:	00 
     289:	89 04 24             	mov    %eax,(%esp)
     28c:	e8 9f 3e 00 00       	call   4130 <printf>
}
     291:	c9                   	leave  
     292:	c3                   	ret    
     293:	90                   	nop
     294:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(stdout, "unlink ../iputdir failed\n");
     298:	c7 44 24 04 c7 44 00 	movl   $0x44c7,0x4(%esp)
     29f:	00 
      printf(stdout, "mkdir failed\n");
     2a0:	a1 14 65 00 00       	mov    0x6514,%eax
     2a5:	89 04 24             	mov    %eax,(%esp)
     2a8:	e8 83 3e 00 00       	call   4130 <printf>
      exit(EXIT_FAILURE);
     2ad:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     2b4:	e8 29 3d 00 00       	call   3fe2 <exit>
    printf(stdout, "fork failed\n");
     2b9:	c7 44 24 04 d9 53 00 	movl   $0x53d9,0x4(%esp)
     2c0:	00 
     2c1:	eb dd                	jmp    2a0 <exitiputtest+0xa0>
      printf(stdout, "child chdir failed\n");
     2c3:	c7 44 24 04 02 45 00 	movl   $0x4502,0x4(%esp)
     2ca:	00 
     2cb:	eb d3                	jmp    2a0 <exitiputtest+0xa0>
      printf(stdout, "mkdir failed\n");
     2cd:	c7 44 24 04 98 44 00 	movl   $0x4498,0x4(%esp)
     2d4:	00 
     2d5:	eb c9                	jmp    2a0 <exitiputtest+0xa0>
     2d7:	89 f6                	mov    %esi,%esi
     2d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002e0 <openiputtest>:
{
     2e0:	55                   	push   %ebp
     2e1:	89 e5                	mov    %esp,%ebp
     2e3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "openiput test\n");
     2e6:	a1 14 65 00 00       	mov    0x6514,%eax
     2eb:	c7 44 24 04 28 45 00 	movl   $0x4528,0x4(%esp)
     2f2:	00 
     2f3:	89 04 24             	mov    %eax,(%esp)
     2f6:	e8 35 3e 00 00       	call   4130 <printf>
  if(mkdir("oidir") < 0){
     2fb:	c7 04 24 37 45 00 00 	movl   $0x4537,(%esp)
     302:	e8 43 3d 00 00       	call   404a <mkdir>
     307:	85 c0                	test   %eax,%eax
     309:	0f 88 90 00 00 00    	js     39f <openiputtest+0xbf>
  pid = fork();
     30f:	e8 c6 3c 00 00       	call   3fda <fork>
  if(pid < 0){
     314:	85 c0                	test   %eax,%eax
     316:	0f 88 a8 00 00 00    	js     3c4 <openiputtest+0xe4>
     31c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  if(pid == 0){
     320:	75 3e                	jne    360 <openiputtest+0x80>
    int fd = open("oidir", O_RDWR);
     322:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
     329:	00 
     32a:	c7 04 24 37 45 00 00 	movl   $0x4537,(%esp)
     331:	e8 ec 3c 00 00       	call   4022 <open>
    if(fd >= 0){
     336:	85 c0                	test   %eax,%eax
     338:	78 7e                	js     3b8 <openiputtest+0xd8>
      printf(stdout, "open directory for write succeeded\n");
     33a:	a1 14 65 00 00       	mov    0x6514,%eax
     33f:	c7 44 24 04 bc 54 00 	movl   $0x54bc,0x4(%esp)
     346:	00 
     347:	89 04 24             	mov    %eax,(%esp)
     34a:	e8 e1 3d 00 00       	call   4130 <printf>
      exit(EXIT_SUCCESS);
     34f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     356:	e8 87 3c 00 00       	call   3fe2 <exit>
     35b:	90                   	nop
     35c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  sleep(1);
     360:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     367:	e8 06 3d 00 00       	call   4072 <sleep>
  if(unlink("oidir") != 0){
     36c:	c7 04 24 37 45 00 00 	movl   $0x4537,(%esp)
     373:	e8 ba 3c 00 00       	call   4032 <unlink>
     378:	85 c0                	test   %eax,%eax
     37a:	75 52                	jne    3ce <openiputtest+0xee>
  wait(0);
     37c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     383:	e8 62 3c 00 00       	call   3fea <wait>
  printf(stdout, "openiput test ok\n");
     388:	a1 14 65 00 00       	mov    0x6514,%eax
     38d:	c7 44 24 04 60 45 00 	movl   $0x4560,0x4(%esp)
     394:	00 
     395:	89 04 24             	mov    %eax,(%esp)
     398:	e8 93 3d 00 00       	call   4130 <printf>
}
     39d:	c9                   	leave  
     39e:	c3                   	ret    
    printf(stdout, "mkdir oidir failed\n");
     39f:	c7 44 24 04 3d 45 00 	movl   $0x453d,0x4(%esp)
     3a6:	00 
    printf(stdout, "fork failed\n");
     3a7:	a1 14 65 00 00       	mov    0x6514,%eax
     3ac:	89 04 24             	mov    %eax,(%esp)
     3af:	e8 7c 3d 00 00       	call   4130 <printf>
     3b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    exit(EXIT_FAILURE);
     3b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     3bf:	e8 1e 3c 00 00       	call   3fe2 <exit>
    printf(stdout, "fork failed\n");
     3c4:	c7 44 24 04 d9 53 00 	movl   $0x53d9,0x4(%esp)
     3cb:	00 
     3cc:	eb d9                	jmp    3a7 <openiputtest+0xc7>
    printf(stdout, "unlink failed\n");
     3ce:	c7 44 24 04 51 45 00 	movl   $0x4551,0x4(%esp)
     3d5:	00 
     3d6:	eb cf                	jmp    3a7 <openiputtest+0xc7>
     3d8:	90                   	nop
     3d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000003e0 <opentest>:
{
     3e0:	55                   	push   %ebp
     3e1:	89 e5                	mov    %esp,%ebp
     3e3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "open test\n");
     3e6:	a1 14 65 00 00       	mov    0x6514,%eax
     3eb:	c7 44 24 04 72 45 00 	movl   $0x4572,0x4(%esp)
     3f2:	00 
     3f3:	89 04 24             	mov    %eax,(%esp)
     3f6:	e8 35 3d 00 00       	call   4130 <printf>
  fd = open("echo", 0);
     3fb:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     402:	00 
     403:	c7 04 24 7d 45 00 00 	movl   $0x457d,(%esp)
     40a:	e8 13 3c 00 00       	call   4022 <open>
  if(fd < 0){
     40f:	85 c0                	test   %eax,%eax
     411:	78 37                	js     44a <opentest+0x6a>
  close(fd);
     413:	89 04 24             	mov    %eax,(%esp)
     416:	e8 ef 3b 00 00       	call   400a <close>
  fd = open("doesnotexist", 0);
     41b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     422:	00 
     423:	c7 04 24 95 45 00 00 	movl   $0x4595,(%esp)
     42a:	e8 f3 3b 00 00       	call   4022 <open>
  if(fd >= 0){
     42f:	85 c0                	test   %eax,%eax
     431:	79 38                	jns    46b <opentest+0x8b>
  printf(stdout, "open test ok\n");
     433:	a1 14 65 00 00       	mov    0x6514,%eax
     438:	c7 44 24 04 c0 45 00 	movl   $0x45c0,0x4(%esp)
     43f:	00 
     440:	89 04 24             	mov    %eax,(%esp)
     443:	e8 e8 3c 00 00       	call   4130 <printf>
}
     448:	c9                   	leave  
     449:	c3                   	ret    
    printf(stdout, "open echo failed!\n");
     44a:	a1 14 65 00 00       	mov    0x6514,%eax
     44f:	c7 44 24 04 82 45 00 	movl   $0x4582,0x4(%esp)
     456:	00 
     457:	89 04 24             	mov    %eax,(%esp)
     45a:	e8 d1 3c 00 00       	call   4130 <printf>
    exit(EXIT_FAILURE);
     45f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     466:	e8 77 3b 00 00       	call   3fe2 <exit>
    printf(stdout, "open doesnotexist succeeded!\n");
     46b:	a1 14 65 00 00       	mov    0x6514,%eax
     470:	c7 44 24 04 a2 45 00 	movl   $0x45a2,0x4(%esp)
     477:	00 
     478:	89 04 24             	mov    %eax,(%esp)
     47b:	e8 b0 3c 00 00       	call   4130 <printf>
    exit(EXIT_SUCCESS);
     480:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     487:	e8 56 3b 00 00       	call   3fe2 <exit>
     48c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000490 <writetest>:
{
     490:	55                   	push   %ebp
     491:	89 e5                	mov    %esp,%ebp
     493:	56                   	push   %esi
     494:	53                   	push   %ebx
     495:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "small file test\n");
     498:	a1 14 65 00 00       	mov    0x6514,%eax
     49d:	c7 44 24 04 ce 45 00 	movl   $0x45ce,0x4(%esp)
     4a4:	00 
     4a5:	89 04 24             	mov    %eax,(%esp)
     4a8:	e8 83 3c 00 00       	call   4130 <printf>
  fd = open("small", O_CREATE|O_RDWR);
     4ad:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     4b4:	00 
     4b5:	c7 04 24 df 45 00 00 	movl   $0x45df,(%esp)
     4bc:	e8 61 3b 00 00       	call   4022 <open>
  if(fd >= 0){
     4c1:	85 c0                	test   %eax,%eax
  fd = open("small", O_CREATE|O_RDWR);
     4c3:	89 c6                	mov    %eax,%esi
  if(fd >= 0){
     4c5:	0f 88 8b 01 00 00    	js     656 <writetest+0x1c6>
    printf(stdout, "creat small succeeded; ok\n");
     4cb:	a1 14 65 00 00       	mov    0x6514,%eax
  for(i = 0; i < 100; i++){
     4d0:	31 db                	xor    %ebx,%ebx
    printf(stdout, "creat small succeeded; ok\n");
     4d2:	c7 44 24 04 e5 45 00 	movl   $0x45e5,0x4(%esp)
     4d9:	00 
     4da:	89 04 24             	mov    %eax,(%esp)
     4dd:	e8 4e 3c 00 00       	call   4130 <printf>
     4e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(write(fd, "aaaaaaaaaa", 10) != 10){
     4e8:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     4ef:	00 
     4f0:	c7 44 24 04 1c 46 00 	movl   $0x461c,0x4(%esp)
     4f7:	00 
     4f8:	89 34 24             	mov    %esi,(%esp)
     4fb:	e8 02 3b 00 00       	call   4002 <write>
     500:	83 f8 0a             	cmp    $0xa,%eax
     503:	0f 85 e5 00 00 00    	jne    5ee <writetest+0x15e>
    if(write(fd, "bbbbbbbbbb", 10) != 10){
     509:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     510:	00 
     511:	c7 44 24 04 27 46 00 	movl   $0x4627,0x4(%esp)
     518:	00 
     519:	89 34 24             	mov    %esi,(%esp)
     51c:	e8 e1 3a 00 00       	call   4002 <write>
     521:	83 f8 0a             	cmp    $0xa,%eax
     524:	0f 85 e9 00 00 00    	jne    613 <writetest+0x183>
  for(i = 0; i < 100; i++){
     52a:	83 c3 01             	add    $0x1,%ebx
     52d:	83 fb 64             	cmp    $0x64,%ebx
     530:	75 b6                	jne    4e8 <writetest+0x58>
  printf(stdout, "writes ok\n");
     532:	a1 14 65 00 00       	mov    0x6514,%eax
     537:	c7 44 24 04 32 46 00 	movl   $0x4632,0x4(%esp)
     53e:	00 
     53f:	89 04 24             	mov    %eax,(%esp)
     542:	e8 e9 3b 00 00       	call   4130 <printf>
  close(fd);
     547:	89 34 24             	mov    %esi,(%esp)
     54a:	e8 bb 3a 00 00       	call   400a <close>
  fd = open("small", O_RDONLY);
     54f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     556:	00 
     557:	c7 04 24 df 45 00 00 	movl   $0x45df,(%esp)
     55e:	e8 bf 3a 00 00       	call   4022 <open>
  if(fd >= 0){
     563:	85 c0                	test   %eax,%eax
  fd = open("small", O_RDONLY);
     565:	89 c3                	mov    %eax,%ebx
  if(fd >= 0){
     567:	0f 88 b4 00 00 00    	js     621 <writetest+0x191>
    printf(stdout, "open small succeeded ok\n");
     56d:	a1 14 65 00 00       	mov    0x6514,%eax
     572:	c7 44 24 04 3d 46 00 	movl   $0x463d,0x4(%esp)
     579:	00 
     57a:	89 04 24             	mov    %eax,(%esp)
     57d:	e8 ae 3b 00 00       	call   4130 <printf>
  i = read(fd, buf, 2000);
     582:	c7 44 24 08 d0 07 00 	movl   $0x7d0,0x8(%esp)
     589:	00 
     58a:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
     591:	00 
     592:	89 1c 24             	mov    %ebx,(%esp)
     595:	e8 60 3a 00 00       	call   3ffa <read>
  if(i == 2000){
     59a:	3d d0 07 00 00       	cmp    $0x7d0,%eax
     59f:	0f 85 9d 00 00 00    	jne    642 <writetest+0x1b2>
    printf(stdout, "read succeeded ok\n");
     5a5:	a1 14 65 00 00       	mov    0x6514,%eax
     5aa:	c7 44 24 04 71 46 00 	movl   $0x4671,0x4(%esp)
     5b1:	00 
     5b2:	89 04 24             	mov    %eax,(%esp)
     5b5:	e8 76 3b 00 00       	call   4130 <printf>
  close(fd);
     5ba:	89 1c 24             	mov    %ebx,(%esp)
     5bd:	e8 48 3a 00 00       	call   400a <close>
  if(unlink("small") < 0){
     5c2:	c7 04 24 df 45 00 00 	movl   $0x45df,(%esp)
     5c9:	e8 64 3a 00 00       	call   4032 <unlink>
     5ce:	85 c0                	test   %eax,%eax
     5d0:	78 7a                	js     64c <writetest+0x1bc>
  printf(stdout, "small file test ok\n");
     5d2:	a1 14 65 00 00       	mov    0x6514,%eax
     5d7:	c7 44 24 04 99 46 00 	movl   $0x4699,0x4(%esp)
     5de:	00 
     5df:	89 04 24             	mov    %eax,(%esp)
     5e2:	e8 49 3b 00 00       	call   4130 <printf>
}
     5e7:	83 c4 10             	add    $0x10,%esp
     5ea:	5b                   	pop    %ebx
     5eb:	5e                   	pop    %esi
     5ec:	5d                   	pop    %ebp
     5ed:	c3                   	ret    
      printf(stdout, "error: write aa %d new file failed\n", i);
     5ee:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     5f2:	c7 44 24 04 e0 54 00 	movl   $0x54e0,0x4(%esp)
     5f9:	00 
      printf(stdout, "error: write bb %d new file failed\n", i);
     5fa:	a1 14 65 00 00       	mov    0x6514,%eax
     5ff:	89 04 24             	mov    %eax,(%esp)
     602:	e8 29 3b 00 00       	call   4130 <printf>
      exit(EXIT_FAILURE);
     607:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     60e:	e8 cf 39 00 00       	call   3fe2 <exit>
      printf(stdout, "error: write bb %d new file failed\n", i);
     613:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     617:	c7 44 24 04 04 55 00 	movl   $0x5504,0x4(%esp)
     61e:	00 
     61f:	eb d9                	jmp    5fa <writetest+0x16a>
    printf(stdout, "error: open small failed!\n");
     621:	c7 44 24 04 56 46 00 	movl   $0x4656,0x4(%esp)
     628:	00 
     629:	a1 14 65 00 00       	mov    0x6514,%eax
     62e:	89 04 24             	mov    %eax,(%esp)
     631:	e8 fa 3a 00 00       	call   4130 <printf>
    exit(EXIT_FAILURE);
     636:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     63d:	e8 a0 39 00 00       	call   3fe2 <exit>
    printf(stdout, "read failed\n");
     642:	c7 44 24 04 9d 49 00 	movl   $0x499d,0x4(%esp)
     649:	00 
     64a:	eb dd                	jmp    629 <writetest+0x199>
    printf(stdout, "unlink small failed\n");
     64c:	c7 44 24 04 84 46 00 	movl   $0x4684,0x4(%esp)
     653:	00 
     654:	eb d3                	jmp    629 <writetest+0x199>
    printf(stdout, "error: creat small failed!\n");
     656:	c7 44 24 04 00 46 00 	movl   $0x4600,0x4(%esp)
     65d:	00 
     65e:	eb c9                	jmp    629 <writetest+0x199>

00000660 <writetest1>:
{
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	56                   	push   %esi
     664:	53                   	push   %ebx
     665:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "big files test\n");
     668:	a1 14 65 00 00       	mov    0x6514,%eax
     66d:	c7 44 24 04 ad 46 00 	movl   $0x46ad,0x4(%esp)
     674:	00 
     675:	89 04 24             	mov    %eax,(%esp)
     678:	e8 b3 3a 00 00       	call   4130 <printf>
  fd = open("big", O_CREATE|O_RDWR);
     67d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     684:	00 
     685:	c7 04 24 27 47 00 00 	movl   $0x4727,(%esp)
     68c:	e8 91 39 00 00       	call   4022 <open>
  if(fd < 0){
     691:	85 c0                	test   %eax,%eax
  fd = open("big", O_CREATE|O_RDWR);
     693:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     695:	0f 88 86 01 00 00    	js     821 <writetest1+0x1c1>
     69b:	31 db                	xor    %ebx,%ebx
     69d:	8d 76 00             	lea    0x0(%esi),%esi
    if(write(fd, buf, 512) != 512){
     6a0:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     6a7:	00 
     6a8:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
     6af:	00 
     6b0:	89 34 24             	mov    %esi,(%esp)
    ((int*)buf)[0] = i;
     6b3:	89 1d 00 8d 00 00    	mov    %ebx,0x8d00
    if(write(fd, buf, 512) != 512){
     6b9:	e8 44 39 00 00       	call   4002 <write>
     6be:	3d 00 02 00 00       	cmp    $0x200,%eax
     6c3:	0f 85 b2 00 00 00    	jne    77b <writetest1+0x11b>
  for(i = 0; i < MAXFILE; i++){
     6c9:	83 c3 01             	add    $0x1,%ebx
     6cc:	81 fb 8c 00 00 00    	cmp    $0x8c,%ebx
     6d2:	75 cc                	jne    6a0 <writetest1+0x40>
  close(fd);
     6d4:	89 34 24             	mov    %esi,(%esp)
     6d7:	e8 2e 39 00 00       	call   400a <close>
  fd = open("big", O_RDONLY);
     6dc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     6e3:	00 
     6e4:	c7 04 24 27 47 00 00 	movl   $0x4727,(%esp)
     6eb:	e8 32 39 00 00       	call   4022 <open>
  if(fd < 0){
     6f0:	85 c0                	test   %eax,%eax
  fd = open("big", O_RDONLY);
     6f2:	89 c6                	mov    %eax,%esi
  if(fd < 0){
     6f4:	0f 88 06 01 00 00    	js     800 <writetest1+0x1a0>
     6fa:	31 db                	xor    %ebx,%ebx
     6fc:	eb 1d                	jmp    71b <writetest1+0xbb>
     6fe:	66 90                	xchg   %ax,%ax
    } else if(i != 512){
     700:	3d 00 02 00 00       	cmp    $0x200,%eax
     705:	0f 85 be 00 00 00    	jne    7c9 <writetest1+0x169>
    if(((int*)buf)[0] != n){
     70b:	a1 00 8d 00 00       	mov    0x8d00,%eax
     710:	39 d8                	cmp    %ebx,%eax
     712:	0f 85 88 00 00 00    	jne    7a0 <writetest1+0x140>
    n++;
     718:	83 c3 01             	add    $0x1,%ebx
    i = read(fd, buf, 512);
     71b:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
     722:	00 
     723:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
     72a:	00 
     72b:	89 34 24             	mov    %esi,(%esp)
     72e:	e8 c7 38 00 00       	call   3ffa <read>
    if(i == 0){
     733:	85 c0                	test   %eax,%eax
     735:	75 c9                	jne    700 <writetest1+0xa0>
      if(n == MAXFILE - 1){
     737:	81 fb 8b 00 00 00    	cmp    $0x8b,%ebx
     73d:	0f 84 94 00 00 00    	je     7d7 <writetest1+0x177>
  close(fd);
     743:	89 34 24             	mov    %esi,(%esp)
     746:	e8 bf 38 00 00       	call   400a <close>
  if(unlink("big") < 0){
     74b:	c7 04 24 27 47 00 00 	movl   $0x4727,(%esp)
     752:	e8 db 38 00 00       	call   4032 <unlink>
     757:	85 c0                	test   %eax,%eax
     759:	0f 88 cc 00 00 00    	js     82b <writetest1+0x1cb>
  printf(stdout, "big files ok\n");
     75f:	a1 14 65 00 00       	mov    0x6514,%eax
     764:	c7 44 24 04 4e 47 00 	movl   $0x474e,0x4(%esp)
     76b:	00 
     76c:	89 04 24             	mov    %eax,(%esp)
     76f:	e8 bc 39 00 00       	call   4130 <printf>
}
     774:	83 c4 10             	add    $0x10,%esp
     777:	5b                   	pop    %ebx
     778:	5e                   	pop    %esi
     779:	5d                   	pop    %ebp
     77a:	c3                   	ret    
      printf(stdout, "error: write big file failed\n", i);
     77b:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     77f:	c7 44 24 04 d7 46 00 	movl   $0x46d7,0x4(%esp)
     786:	00 
      printf(stdout, "read failed %d\n", i);
     787:	a1 14 65 00 00       	mov    0x6514,%eax
     78c:	89 04 24             	mov    %eax,(%esp)
     78f:	e8 9c 39 00 00       	call   4130 <printf>
      exit(EXIT_FAILURE);
     794:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     79b:	e8 42 38 00 00       	call   3fe2 <exit>
      printf(stdout, "read content of block %d is %d\n",
     7a0:	89 44 24 0c          	mov    %eax,0xc(%esp)
     7a4:	a1 14 65 00 00       	mov    0x6514,%eax
     7a9:	89 5c 24 08          	mov    %ebx,0x8(%esp)
     7ad:	c7 44 24 04 28 55 00 	movl   $0x5528,0x4(%esp)
     7b4:	00 
     7b5:	89 04 24             	mov    %eax,(%esp)
     7b8:	e8 73 39 00 00       	call   4130 <printf>
      exit(0);
     7bd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7c4:	e8 19 38 00 00       	call   3fe2 <exit>
      printf(stdout, "read failed %d\n", i);
     7c9:	89 44 24 08          	mov    %eax,0x8(%esp)
     7cd:	c7 44 24 04 2b 47 00 	movl   $0x472b,0x4(%esp)
     7d4:	00 
     7d5:	eb b0                	jmp    787 <writetest1+0x127>
        printf(stdout, "read only %d blocks from big", n);
     7d7:	a1 14 65 00 00       	mov    0x6514,%eax
     7dc:	c7 44 24 08 8b 00 00 	movl   $0x8b,0x8(%esp)
     7e3:	00 
     7e4:	c7 44 24 04 0e 47 00 	movl   $0x470e,0x4(%esp)
     7eb:	00 
     7ec:	89 04 24             	mov    %eax,(%esp)
     7ef:	e8 3c 39 00 00       	call   4130 <printf>
        exit(0);
     7f4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     7fb:	e8 e2 37 00 00       	call   3fe2 <exit>
    printf(stdout, "error: open big failed!\n");
     800:	c7 44 24 04 f5 46 00 	movl   $0x46f5,0x4(%esp)
     807:	00 
     808:	a1 14 65 00 00       	mov    0x6514,%eax
     80d:	89 04 24             	mov    %eax,(%esp)
     810:	e8 1b 39 00 00       	call   4130 <printf>
    exit(EXIT_FAILURE);
     815:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     81c:	e8 c1 37 00 00       	call   3fe2 <exit>
    printf(stdout, "error: creat big failed!\n");
     821:	c7 44 24 04 bd 46 00 	movl   $0x46bd,0x4(%esp)
     828:	00 
     829:	eb dd                	jmp    808 <writetest1+0x1a8>
    printf(stdout, "unlink big failed\n");
     82b:	a1 14 65 00 00       	mov    0x6514,%eax
     830:	c7 44 24 04 3b 47 00 	movl   $0x473b,0x4(%esp)
     837:	00 
     838:	89 04 24             	mov    %eax,(%esp)
     83b:	e8 f0 38 00 00       	call   4130 <printf>
    exit(EXIT_SUCCESS);
     840:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     847:	e8 96 37 00 00       	call   3fe2 <exit>
     84c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000850 <createtest>:
{
     850:	55                   	push   %ebp
     851:	89 e5                	mov    %esp,%ebp
     853:	53                   	push   %ebx
  name[2] = '\0';
     854:	bb 30 00 00 00       	mov    $0x30,%ebx
{
     859:	83 ec 14             	sub    $0x14,%esp
  printf(stdout, "many creates, followed by unlink test\n");
     85c:	a1 14 65 00 00       	mov    0x6514,%eax
     861:	c7 44 24 04 48 55 00 	movl   $0x5548,0x4(%esp)
     868:	00 
     869:	89 04 24             	mov    %eax,(%esp)
     86c:	e8 bf 38 00 00       	call   4130 <printf>
  name[0] = 'a';
     871:	c6 05 00 ad 00 00 61 	movb   $0x61,0xad00
  name[2] = '\0';
     878:	c6 05 02 ad 00 00 00 	movb   $0x0,0xad02
     87f:	90                   	nop
    fd = open(name, O_CREATE|O_RDWR);
     880:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     887:	00 
     888:	c7 04 24 00 ad 00 00 	movl   $0xad00,(%esp)
    name[1] = '0' + i;
     88f:	88 1d 01 ad 00 00    	mov    %bl,0xad01
     895:	83 c3 01             	add    $0x1,%ebx
    fd = open(name, O_CREATE|O_RDWR);
     898:	e8 85 37 00 00       	call   4022 <open>
    close(fd);
     89d:	89 04 24             	mov    %eax,(%esp)
     8a0:	e8 65 37 00 00       	call   400a <close>
  for(i = 0; i < 52; i++){
     8a5:	80 fb 64             	cmp    $0x64,%bl
     8a8:	75 d6                	jne    880 <createtest+0x30>
  name[0] = 'a';
     8aa:	c6 05 00 ad 00 00 61 	movb   $0x61,0xad00
  name[2] = '\0';
     8b1:	bb 30 00 00 00       	mov    $0x30,%ebx
     8b6:	c6 05 02 ad 00 00 00 	movb   $0x0,0xad02
     8bd:	8d 76 00             	lea    0x0(%esi),%esi
    name[1] = '0' + i;
     8c0:	88 1d 01 ad 00 00    	mov    %bl,0xad01
     8c6:	83 c3 01             	add    $0x1,%ebx
    unlink(name);
     8c9:	c7 04 24 00 ad 00 00 	movl   $0xad00,(%esp)
     8d0:	e8 5d 37 00 00       	call   4032 <unlink>
  for(i = 0; i < 52; i++){
     8d5:	80 fb 64             	cmp    $0x64,%bl
     8d8:	75 e6                	jne    8c0 <createtest+0x70>
  printf(stdout, "many creates, followed by unlink; ok\n");
     8da:	a1 14 65 00 00       	mov    0x6514,%eax
     8df:	c7 44 24 04 70 55 00 	movl   $0x5570,0x4(%esp)
     8e6:	00 
     8e7:	89 04 24             	mov    %eax,(%esp)
     8ea:	e8 41 38 00 00       	call   4130 <printf>
}
     8ef:	83 c4 14             	add    $0x14,%esp
     8f2:	5b                   	pop    %ebx
     8f3:	5d                   	pop    %ebp
     8f4:	c3                   	ret    
     8f5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     8f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000900 <dirtest>:
{
     900:	55                   	push   %ebp
     901:	89 e5                	mov    %esp,%ebp
     903:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "mkdir test\n");
     906:	a1 14 65 00 00       	mov    0x6514,%eax
     90b:	c7 44 24 04 5c 47 00 	movl   $0x475c,0x4(%esp)
     912:	00 
     913:	89 04 24             	mov    %eax,(%esp)
     916:	e8 15 38 00 00       	call   4130 <printf>
  if(mkdir("dir0") < 0){
     91b:	c7 04 24 68 47 00 00 	movl   $0x4768,(%esp)
     922:	e8 23 37 00 00       	call   404a <mkdir>
     927:	85 c0                	test   %eax,%eax
     929:	78 47                	js     972 <dirtest+0x72>
  if(chdir("dir0") < 0){
     92b:	c7 04 24 68 47 00 00 	movl   $0x4768,(%esp)
     932:	e8 1b 37 00 00       	call   4052 <chdir>
     937:	85 c0                	test   %eax,%eax
     939:	78 6c                	js     9a7 <dirtest+0xa7>
  if(chdir("..") < 0){
     93b:	c7 04 24 0d 4d 00 00 	movl   $0x4d0d,(%esp)
     942:	e8 0b 37 00 00       	call   4052 <chdir>
     947:	85 c0                	test   %eax,%eax
     949:	78 52                	js     99d <dirtest+0x9d>
  if(unlink("dir0") < 0){
     94b:	c7 04 24 68 47 00 00 	movl   $0x4768,(%esp)
     952:	e8 db 36 00 00       	call   4032 <unlink>
     957:	85 c0                	test   %eax,%eax
     959:	78 38                	js     993 <dirtest+0x93>
  printf(stdout, "mkdir test ok\n");
     95b:	a1 14 65 00 00       	mov    0x6514,%eax
     960:	c7 44 24 04 a5 47 00 	movl   $0x47a5,0x4(%esp)
     967:	00 
     968:	89 04 24             	mov    %eax,(%esp)
     96b:	e8 c0 37 00 00       	call   4130 <printf>
}
     970:	c9                   	leave  
     971:	c3                   	ret    
    printf(stdout, "mkdir failed\n");
     972:	c7 44 24 04 98 44 00 	movl   $0x4498,0x4(%esp)
     979:	00 
    printf(stdout, "chdir dir0 failed\n");
     97a:	a1 14 65 00 00       	mov    0x6514,%eax
     97f:	89 04 24             	mov    %eax,(%esp)
     982:	e8 a9 37 00 00       	call   4130 <printf>
    exit(EXIT_FAILURE);
     987:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     98e:	e8 4f 36 00 00       	call   3fe2 <exit>
    printf(stdout, "unlink dir0 failed\n");
     993:	c7 44 24 04 91 47 00 	movl   $0x4791,0x4(%esp)
     99a:	00 
     99b:	eb dd                	jmp    97a <dirtest+0x7a>
    printf(stdout, "chdir .. failed\n");
     99d:	c7 44 24 04 80 47 00 	movl   $0x4780,0x4(%esp)
     9a4:	00 
     9a5:	eb d3                	jmp    97a <dirtest+0x7a>
    printf(stdout, "chdir dir0 failed\n");
     9a7:	c7 44 24 04 6d 47 00 	movl   $0x476d,0x4(%esp)
     9ae:	00 
     9af:	eb c9                	jmp    97a <dirtest+0x7a>
     9b1:	eb 0d                	jmp    9c0 <exectest>
     9b3:	90                   	nop
     9b4:	90                   	nop
     9b5:	90                   	nop
     9b6:	90                   	nop
     9b7:	90                   	nop
     9b8:	90                   	nop
     9b9:	90                   	nop
     9ba:	90                   	nop
     9bb:	90                   	nop
     9bc:	90                   	nop
     9bd:	90                   	nop
     9be:	90                   	nop
     9bf:	90                   	nop

000009c0 <exectest>:
{
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "exec test\n");
     9c6:	a1 14 65 00 00       	mov    0x6514,%eax
     9cb:	c7 44 24 04 b4 47 00 	movl   $0x47b4,0x4(%esp)
     9d2:	00 
     9d3:	89 04 24             	mov    %eax,(%esp)
     9d6:	e8 55 37 00 00       	call   4130 <printf>
  if(exec("echo", echoargv) < 0){
     9db:	c7 44 24 04 18 65 00 	movl   $0x6518,0x4(%esp)
     9e2:	00 
     9e3:	c7 04 24 7d 45 00 00 	movl   $0x457d,(%esp)
     9ea:	e8 2b 36 00 00       	call   401a <exec>
     9ef:	85 c0                	test   %eax,%eax
     9f1:	78 02                	js     9f5 <exectest+0x35>
}
     9f3:	c9                   	leave  
     9f4:	c3                   	ret    
    printf(stdout, "exec echo failed\n");
     9f5:	a1 14 65 00 00       	mov    0x6514,%eax
     9fa:	c7 44 24 04 bf 47 00 	movl   $0x47bf,0x4(%esp)
     a01:	00 
     a02:	89 04 24             	mov    %eax,(%esp)
     a05:	e8 26 37 00 00       	call   4130 <printf>
    exit(EXIT_FAILURE);
     a0a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     a11:	e8 cc 35 00 00       	call   3fe2 <exit>
     a16:	8d 76 00             	lea    0x0(%esi),%esi
     a19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a20 <pipe1>:
{
     a20:	55                   	push   %ebp
     a21:	89 e5                	mov    %esp,%ebp
     a23:	57                   	push   %edi
     a24:	56                   	push   %esi
     a25:	53                   	push   %ebx
     a26:	83 ec 2c             	sub    $0x2c,%esp
  if(pipe(fds) != 0){
     a29:	8d 45 e0             	lea    -0x20(%ebp),%eax
     a2c:	89 04 24             	mov    %eax,(%esp)
     a2f:	e8 be 35 00 00       	call   3ff2 <pipe>
     a34:	85 c0                	test   %eax,%eax
     a36:	0f 85 66 01 00 00    	jne    ba2 <pipe1+0x182>
  pid = fork();
     a3c:	e8 99 35 00 00       	call   3fda <fork>
  if(pid == 0){
     a41:	83 f8 00             	cmp    $0x0,%eax
     a44:	0f 84 93 00 00 00    	je     add <pipe1+0xbd>
  } else if(pid > 0){
     a4a:	0f 8e 72 01 00 00    	jle    bc2 <pipe1+0x1a2>
    close(fds[1]);
     a50:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    cc = 1;
     a53:	bf 01 00 00 00       	mov    $0x1,%edi
  seq = 0;
     a58:	31 db                	xor    %ebx,%ebx
    close(fds[1]);
     a5a:	89 04 24             	mov    %eax,(%esp)
     a5d:	e8 a8 35 00 00       	call   400a <close>
    total = 0;
     a62:	c7 45 d4 00 00 00 00 	movl   $0x0,-0x2c(%ebp)
    while((n = read(fds[0], buf, cc)) > 0){
     a69:	8b 45 e0             	mov    -0x20(%ebp),%eax
     a6c:	89 7c 24 08          	mov    %edi,0x8(%esp)
     a70:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
     a77:	00 
     a78:	89 04 24             	mov    %eax,(%esp)
     a7b:	e8 7a 35 00 00       	call   3ffa <read>
     a80:	85 c0                	test   %eax,%eax
     a82:	0f 8e ba 00 00 00    	jle    b42 <pipe1+0x122>
     a88:	89 d9                	mov    %ebx,%ecx
     a8a:	8d 34 03             	lea    (%ebx,%eax,1),%esi
     a8d:	f7 d9                	neg    %ecx
     a8f:	eb 09                	jmp    a9a <pipe1+0x7a>
     a91:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     a98:	89 d3                	mov    %edx,%ebx
     a9a:	38 9c 0b 00 8d 00 00 	cmp    %bl,0x8d00(%ebx,%ecx,1)
     aa1:	8d 53 01             	lea    0x1(%ebx),%edx
     aa4:	75 1b                	jne    ac1 <pipe1+0xa1>
      for(i = 0; i < n; i++){
     aa6:	39 f2                	cmp    %esi,%edx
     aa8:	75 ee                	jne    a98 <pipe1+0x78>
      cc = cc * 2;
     aaa:	01 ff                	add    %edi,%edi
        if((buf[i] & 0xff) != (seq++ & 0xff)){
     aac:	89 f3                	mov    %esi,%ebx
      total += n;
     aae:	01 45 d4             	add    %eax,-0x2c(%ebp)
        cc = sizeof(buf);
     ab1:	81 ff 01 20 00 00    	cmp    $0x2001,%edi
     ab7:	b8 00 20 00 00       	mov    $0x2000,%eax
     abc:	0f 43 f8             	cmovae %eax,%edi
     abf:	eb a8                	jmp    a69 <pipe1+0x49>
          printf(1, "pipe1 oops 2\n");
     ac1:	c7 44 24 04 ee 47 00 	movl   $0x47ee,0x4(%esp)
     ac8:	00 
     ac9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ad0:	e8 5b 36 00 00       	call   4130 <printf>
}
     ad5:	83 c4 2c             	add    $0x2c,%esp
     ad8:	5b                   	pop    %ebx
     ad9:	5e                   	pop    %esi
     ada:	5f                   	pop    %edi
     adb:	5d                   	pop    %ebp
     adc:	c3                   	ret    
    close(fds[0]);
     add:	8b 45 e0             	mov    -0x20(%ebp),%eax
  seq = 0;
     ae0:	31 f6                	xor    %esi,%esi
    close(fds[0]);
     ae2:	89 04 24             	mov    %eax,(%esp)
     ae5:	e8 20 35 00 00       	call   400a <close>
     aea:	89 f0                	mov    %esi,%eax
{
     aec:	89 f3                	mov    %esi,%ebx
     aee:	8d 96 09 04 00 00    	lea    0x409(%esi),%edx
     af4:	f7 d8                	neg    %eax
     af6:	66 90                	xchg   %ax,%ax
        buf[i] = seq++;
     af8:	88 9c 18 00 8d 00 00 	mov    %bl,0x8d00(%eax,%ebx,1)
     aff:	83 c3 01             	add    $0x1,%ebx
      for(i = 0; i < 1033; i++)
     b02:	39 d3                	cmp    %edx,%ebx
     b04:	75 f2                	jne    af8 <pipe1+0xd8>
      if(write(fds[1], buf, 1033) != 1033){
     b06:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     b09:	89 de                	mov    %ebx,%esi
     b0b:	c7 44 24 08 09 04 00 	movl   $0x409,0x8(%esp)
     b12:	00 
     b13:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
     b1a:	00 
     b1b:	89 04 24             	mov    %eax,(%esp)
     b1e:	e8 df 34 00 00       	call   4002 <write>
     b23:	3d 09 04 00 00       	cmp    $0x409,%eax
     b28:	0f 85 b4 00 00 00    	jne    be2 <pipe1+0x1c2>
    for(n = 0; n < 5; n++){
     b2e:	81 fb 2d 14 00 00    	cmp    $0x142d,%ebx
     b34:	75 b4                	jne    aea <pipe1+0xca>
    exit(EXIT_SUCCESS);
     b36:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b3d:	e8 a0 34 00 00       	call   3fe2 <exit>
    if(total != 5 * 1033){
     b42:	81 7d d4 2d 14 00 00 	cmpl   $0x142d,-0x2c(%ebp)
     b49:	75 30                	jne    b7b <pipe1+0x15b>
    close(fds[0]);
     b4b:	8b 45 e0             	mov    -0x20(%ebp),%eax
     b4e:	89 04 24             	mov    %eax,(%esp)
     b51:	e8 b4 34 00 00       	call   400a <close>
    wait(0);
     b56:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     b5d:	e8 88 34 00 00       	call   3fea <wait>
  printf(1, "pipe1 ok\n");
     b62:	c7 44 24 04 13 48 00 	movl   $0x4813,0x4(%esp)
     b69:	00 
     b6a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b71:	e8 ba 35 00 00       	call   4130 <printf>
     b76:	e9 5a ff ff ff       	jmp    ad5 <pipe1+0xb5>
      printf(1, "pipe1 oops 3 total %d\n", total);
     b7b:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     b7e:	c7 44 24 04 fc 47 00 	movl   $0x47fc,0x4(%esp)
     b85:	00 
     b86:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b8d:	89 44 24 08          	mov    %eax,0x8(%esp)
     b91:	e8 9a 35 00 00       	call   4130 <printf>
      exit(EXIT_FAILURE);
     b96:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     b9d:	e8 40 34 00 00       	call   3fe2 <exit>
    printf(1, "pipe() failed\n");
     ba2:	c7 44 24 04 d1 47 00 	movl   $0x47d1,0x4(%esp)
     ba9:	00 
     baa:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bb1:	e8 7a 35 00 00       	call   4130 <printf>
    exit(EXIT_FAILURE);
     bb6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bbd:	e8 20 34 00 00       	call   3fe2 <exit>
    printf(1, "fork() failed\n");
     bc2:	c7 44 24 04 1d 48 00 	movl   $0x481d,0x4(%esp)
     bc9:	00 
     bca:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bd1:	e8 5a 35 00 00       	call   4130 <printf>
    exit(EXIT_FAILURE);
     bd6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bdd:	e8 00 34 00 00       	call   3fe2 <exit>
        printf(1, "pipe1 oops 1\n");
     be2:	c7 44 24 04 e0 47 00 	movl   $0x47e0,0x4(%esp)
     be9:	00 
     bea:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bf1:	e8 3a 35 00 00       	call   4130 <printf>
        exit(EXIT_FAILURE);
     bf6:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     bfd:	e8 e0 33 00 00       	call   3fe2 <exit>
     c02:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c10 <preempt>:
{
     c10:	55                   	push   %ebp
     c11:	89 e5                	mov    %esp,%ebp
     c13:	57                   	push   %edi
     c14:	56                   	push   %esi
     c15:	53                   	push   %ebx
     c16:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "preempt: ");
     c19:	c7 44 24 04 2c 48 00 	movl   $0x482c,0x4(%esp)
     c20:	00 
     c21:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c28:	e8 03 35 00 00       	call   4130 <printf>
  pid1 = fork();
     c2d:	e8 a8 33 00 00       	call   3fda <fork>
  if(pid1 == 0)
     c32:	85 c0                	test   %eax,%eax
  pid1 = fork();
     c34:	89 c7                	mov    %eax,%edi
  if(pid1 == 0)
     c36:	75 02                	jne    c3a <preempt+0x2a>
     c38:	eb fe                	jmp    c38 <preempt+0x28>
     c3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  pid2 = fork();
     c40:	e8 95 33 00 00       	call   3fda <fork>
  if(pid2 == 0)
     c45:	85 c0                	test   %eax,%eax
  pid2 = fork();
     c47:	89 c6                	mov    %eax,%esi
  if(pid2 == 0)
     c49:	75 02                	jne    c4d <preempt+0x3d>
     c4b:	eb fe                	jmp    c4b <preempt+0x3b>
  pipe(pfds);
     c4d:	8d 45 e0             	lea    -0x20(%ebp),%eax
     c50:	89 04 24             	mov    %eax,(%esp)
     c53:	e8 9a 33 00 00       	call   3ff2 <pipe>
  pid3 = fork();
     c58:	e8 7d 33 00 00       	call   3fda <fork>
  if(pid3 == 0){
     c5d:	85 c0                	test   %eax,%eax
  pid3 = fork();
     c5f:	89 c3                	mov    %eax,%ebx
  if(pid3 == 0){
     c61:	75 4c                	jne    caf <preempt+0x9f>
    close(pfds[0]);
     c63:	8b 45 e0             	mov    -0x20(%ebp),%eax
     c66:	89 04 24             	mov    %eax,(%esp)
     c69:	e8 9c 33 00 00       	call   400a <close>
    if(write(pfds[1], "x", 1) != 1)
     c6e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c71:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
     c78:	00 
     c79:	c7 44 24 04 f1 4d 00 	movl   $0x4df1,0x4(%esp)
     c80:	00 
     c81:	89 04 24             	mov    %eax,(%esp)
     c84:	e8 79 33 00 00       	call   4002 <write>
     c89:	83 f8 01             	cmp    $0x1,%eax
     c8c:	74 14                	je     ca2 <preempt+0x92>
      printf(1, "preempt write error");
     c8e:	c7 44 24 04 36 48 00 	movl   $0x4836,0x4(%esp)
     c95:	00 
     c96:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     c9d:	e8 8e 34 00 00       	call   4130 <printf>
    close(pfds[1]);
     ca2:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     ca5:	89 04 24             	mov    %eax,(%esp)
     ca8:	e8 5d 33 00 00       	call   400a <close>
     cad:	eb fe                	jmp    cad <preempt+0x9d>
  close(pfds[1]);
     caf:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     cb2:	89 04 24             	mov    %eax,(%esp)
     cb5:	e8 50 33 00 00       	call   400a <close>
  if(read(pfds[0], buf, sizeof(buf)) != 1){
     cba:	8b 45 e0             	mov    -0x20(%ebp),%eax
     cbd:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
     cc4:	00 
     cc5:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
     ccc:	00 
     ccd:	89 04 24             	mov    %eax,(%esp)
     cd0:	e8 25 33 00 00       	call   3ffa <read>
     cd5:	83 f8 01             	cmp    $0x1,%eax
     cd8:	74 1c                	je     cf6 <preempt+0xe6>
    printf(1, "preempt read error");
     cda:	c7 44 24 04 4a 48 00 	movl   $0x484a,0x4(%esp)
     ce1:	00 
     ce2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ce9:	e8 42 34 00 00       	call   4130 <printf>
}
     cee:	83 c4 2c             	add    $0x2c,%esp
     cf1:	5b                   	pop    %ebx
     cf2:	5e                   	pop    %esi
     cf3:	5f                   	pop    %edi
     cf4:	5d                   	pop    %ebp
     cf5:	c3                   	ret    
  close(pfds[0]);
     cf6:	8b 45 e0             	mov    -0x20(%ebp),%eax
     cf9:	89 04 24             	mov    %eax,(%esp)
     cfc:	e8 09 33 00 00       	call   400a <close>
  printf(1, "kill... ");
     d01:	c7 44 24 04 5d 48 00 	movl   $0x485d,0x4(%esp)
     d08:	00 
     d09:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d10:	e8 1b 34 00 00       	call   4130 <printf>
  kill(pid1);
     d15:	89 3c 24             	mov    %edi,(%esp)
     d18:	e8 f5 32 00 00       	call   4012 <kill>
  kill(pid2);
     d1d:	89 34 24             	mov    %esi,(%esp)
     d20:	e8 ed 32 00 00       	call   4012 <kill>
  kill(pid3);
     d25:	89 1c 24             	mov    %ebx,(%esp)
     d28:	e8 e5 32 00 00       	call   4012 <kill>
  printf(1, "wait... ");
     d2d:	c7 44 24 04 66 48 00 	movl   $0x4866,0x4(%esp)
     d34:	00 
     d35:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d3c:	e8 ef 33 00 00       	call   4130 <printf>
  wait(0);
     d41:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d48:	e8 9d 32 00 00       	call   3fea <wait>
  wait(0);
     d4d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d54:	e8 91 32 00 00       	call   3fea <wait>
  wait(0);
     d59:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     d60:	e8 85 32 00 00       	call   3fea <wait>
  printf(1, "preempt ok\n");
     d65:	c7 44 24 04 6f 48 00 	movl   $0x486f,0x4(%esp)
     d6c:	00 
     d6d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     d74:	e8 b7 33 00 00       	call   4130 <printf>
     d79:	e9 70 ff ff ff       	jmp    cee <preempt+0xde>
     d7e:	66 90                	xchg   %ax,%ax

00000d80 <exitwait>:
{
     d80:	55                   	push   %ebp
     d81:	89 e5                	mov    %esp,%ebp
     d83:	56                   	push   %esi
     d84:	be 64 00 00 00       	mov    $0x64,%esi
     d89:	53                   	push   %ebx
     d8a:	83 ec 10             	sub    $0x10,%esp
     d8d:	eb 18                	jmp    da7 <exitwait+0x27>
     d8f:	90                   	nop
      if(wait(0) != pid){
     d90:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    if(pid){
     d97:	74 72                	je     e0b <exitwait+0x8b>
      if(wait(0) != pid){
     d99:	e8 4c 32 00 00       	call   3fea <wait>
     d9e:	39 d8                	cmp    %ebx,%eax
     da0:	75 2e                	jne    dd0 <exitwait+0x50>
  for(i = 0; i < 100; i++){
     da2:	83 ee 01             	sub    $0x1,%esi
     da5:	74 49                	je     df0 <exitwait+0x70>
    pid = fork();
     da7:	e8 2e 32 00 00       	call   3fda <fork>
    if(pid < 0){
     dac:	85 c0                	test   %eax,%eax
    pid = fork();
     dae:	89 c3                	mov    %eax,%ebx
    if(pid < 0){
     db0:	79 de                	jns    d90 <exitwait+0x10>
      printf(1, "fork failed\n");
     db2:	c7 44 24 04 d9 53 00 	movl   $0x53d9,0x4(%esp)
     db9:	00 
     dba:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     dc1:	e8 6a 33 00 00       	call   4130 <printf>
}
     dc6:	83 c4 10             	add    $0x10,%esp
     dc9:	5b                   	pop    %ebx
     dca:	5e                   	pop    %esi
     dcb:	5d                   	pop    %ebp
     dcc:	c3                   	ret    
     dcd:	8d 76 00             	lea    0x0(%esi),%esi
        printf(1, "wait wrong pid\n");
     dd0:	c7 44 24 04 7b 48 00 	movl   $0x487b,0x4(%esp)
     dd7:	00 
     dd8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ddf:	e8 4c 33 00 00       	call   4130 <printf>
}
     de4:	83 c4 10             	add    $0x10,%esp
     de7:	5b                   	pop    %ebx
     de8:	5e                   	pop    %esi
     de9:	5d                   	pop    %ebp
     dea:	c3                   	ret    
     deb:	90                   	nop
     dec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  printf(1, "exitwait ok\n");
     df0:	c7 44 24 04 8b 48 00 	movl   $0x488b,0x4(%esp)
     df7:	00 
     df8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     dff:	e8 2c 33 00 00       	call   4130 <printf>
}
     e04:	83 c4 10             	add    $0x10,%esp
     e07:	5b                   	pop    %ebx
     e08:	5e                   	pop    %esi
     e09:	5d                   	pop    %ebp
     e0a:	c3                   	ret    
      exit(EXIT_SUCCESS);
     e0b:	e8 d2 31 00 00       	call   3fe2 <exit>

00000e10 <mem>:
{
     e10:	55                   	push   %ebp
     e11:	89 e5                	mov    %esp,%ebp
     e13:	57                   	push   %edi
     e14:	56                   	push   %esi
     e15:	53                   	push   %ebx
     e16:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "mem test\n");
     e19:	c7 44 24 04 98 48 00 	movl   $0x4898,0x4(%esp)
     e20:	00 
     e21:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e28:	e8 03 33 00 00       	call   4130 <printf>
  ppid = getpid();
     e2d:	e8 30 32 00 00       	call   4062 <getpid>
     e32:	89 c6                	mov    %eax,%esi
  if((pid = fork()) == 0){
     e34:	e8 a1 31 00 00       	call   3fda <fork>
     e39:	85 c0                	test   %eax,%eax
     e3b:	75 73                	jne    eb0 <mem+0xa0>
     e3d:	31 db                	xor    %ebx,%ebx
     e3f:	90                   	nop
     e40:	eb 0a                	jmp    e4c <mem+0x3c>
     e42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      *(char**)m2 = m1;
     e48:	89 18                	mov    %ebx,(%eax)
     e4a:	89 c3                	mov    %eax,%ebx
    while((m2 = malloc(10001)) != 0){
     e4c:	c7 04 24 11 27 00 00 	movl   $0x2711,(%esp)
     e53:	e8 58 35 00 00       	call   43b0 <malloc>
     e58:	85 c0                	test   %eax,%eax
     e5a:	75 ec                	jne    e48 <mem+0x38>
    while(m1){
     e5c:	85 db                	test   %ebx,%ebx
     e5e:	75 0a                	jne    e6a <mem+0x5a>
     e60:	eb 16                	jmp    e78 <mem+0x68>
     e62:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      m1 = m2;
     e68:	89 fb                	mov    %edi,%ebx
      m2 = *(char**)m1;
     e6a:	8b 3b                	mov    (%ebx),%edi
      free(m1);
     e6c:	89 1c 24             	mov    %ebx,(%esp)
     e6f:	e8 ac 34 00 00       	call   4320 <free>
    while(m1){
     e74:	85 ff                	test   %edi,%edi
     e76:	75 f0                	jne    e68 <mem+0x58>
    m1 = malloc(1024*20);
     e78:	c7 04 24 00 50 00 00 	movl   $0x5000,(%esp)
     e7f:	e8 2c 35 00 00       	call   43b0 <malloc>
    if(m1 == 0){
     e84:	85 c0                	test   %eax,%eax
     e86:	74 40                	je     ec8 <mem+0xb8>
    free(m1);
     e88:	89 04 24             	mov    %eax,(%esp)
     e8b:	e8 90 34 00 00       	call   4320 <free>
    printf(1, "mem ok\n");
     e90:	c7 44 24 04 bc 48 00 	movl   $0x48bc,0x4(%esp)
     e97:	00 
     e98:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     e9f:	e8 8c 32 00 00       	call   4130 <printf>
    exit(EXIT_SUCCESS);
     ea4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     eab:	e8 32 31 00 00       	call   3fe2 <exit>
    wait(0);
     eb0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
     eb7:	e8 2e 31 00 00       	call   3fea <wait>
}
     ebc:	83 c4 1c             	add    $0x1c,%esp
     ebf:	5b                   	pop    %ebx
     ec0:	5e                   	pop    %esi
     ec1:	5f                   	pop    %edi
     ec2:	5d                   	pop    %ebp
     ec3:	c3                   	ret    
     ec4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      printf(1, "couldn't allocate mem?!!\n");
     ec8:	c7 44 24 04 a2 48 00 	movl   $0x48a2,0x4(%esp)
     ecf:	00 
     ed0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     ed7:	e8 54 32 00 00       	call   4130 <printf>
      kill(ppid);
     edc:	89 34 24             	mov    %esi,(%esp)
     edf:	e8 2e 31 00 00       	call   4012 <kill>
      exit(EXIT_FAILURE);
     ee4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     eeb:	e8 f2 30 00 00       	call   3fe2 <exit>

00000ef0 <sharedfd>:
{
     ef0:	55                   	push   %ebp
     ef1:	89 e5                	mov    %esp,%ebp
     ef3:	57                   	push   %edi
     ef4:	56                   	push   %esi
     ef5:	53                   	push   %ebx
     ef6:	83 ec 3c             	sub    $0x3c,%esp
  printf(1, "sharedfd test\n");
     ef9:	c7 44 24 04 c4 48 00 	movl   $0x48c4,0x4(%esp)
     f00:	00 
     f01:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f08:	e8 23 32 00 00       	call   4130 <printf>
  unlink("sharedfd");
     f0d:	c7 04 24 d3 48 00 00 	movl   $0x48d3,(%esp)
     f14:	e8 19 31 00 00       	call   4032 <unlink>
  fd = open("sharedfd", O_CREATE|O_RDWR);
     f19:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
     f20:	00 
     f21:	c7 04 24 d3 48 00 00 	movl   $0x48d3,(%esp)
     f28:	e8 f5 30 00 00       	call   4022 <open>
  if(fd < 0){
     f2d:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", O_CREATE|O_RDWR);
     f2f:	89 c7                	mov    %eax,%edi
  if(fd < 0){
     f31:	0f 88 48 01 00 00    	js     107f <sharedfd+0x18f>
  pid = fork();
     f37:	e8 9e 30 00 00       	call   3fda <fork>
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f3c:	8d 75 de             	lea    -0x22(%ebp),%esi
     f3f:	bb e8 03 00 00       	mov    $0x3e8,%ebx
     f44:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f4b:	00 
     f4c:	89 34 24             	mov    %esi,(%esp)
     f4f:	83 f8 01             	cmp    $0x1,%eax
  pid = fork();
     f52:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  memset(buf, pid==0?'c':'p', sizeof(buf));
     f55:	19 c0                	sbb    %eax,%eax
     f57:	83 e0 f3             	and    $0xfffffff3,%eax
     f5a:	83 c0 70             	add    $0x70,%eax
     f5d:	89 44 24 04          	mov    %eax,0x4(%esp)
     f61:	e8 0a 2f 00 00       	call   3e70 <memset>
     f66:	eb 05                	jmp    f6d <sharedfd+0x7d>
  for(i = 0; i < 1000; i++){
     f68:	83 eb 01             	sub    $0x1,%ebx
     f6b:	74 2d                	je     f9a <sharedfd+0xaa>
    if(write(fd, buf, sizeof(buf)) != sizeof(buf)){
     f6d:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     f74:	00 
     f75:	89 74 24 04          	mov    %esi,0x4(%esp)
     f79:	89 3c 24             	mov    %edi,(%esp)
     f7c:	e8 81 30 00 00       	call   4002 <write>
     f81:	83 f8 0a             	cmp    $0xa,%eax
     f84:	74 e2                	je     f68 <sharedfd+0x78>
      printf(1, "fstests: write sharedfd failed\n");
     f86:	c7 44 24 04 c4 55 00 	movl   $0x55c4,0x4(%esp)
     f8d:	00 
     f8e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
     f95:	e8 96 31 00 00       	call   4130 <printf>
  if(pid == 0)
     f9a:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    exit(0);
     f9d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid == 0)
     fa4:	85 c0                	test   %eax,%eax
     fa6:	0f 84 2e 01 00 00    	je     10da <sharedfd+0x1ea>
    wait(0);
     fac:	e8 39 30 00 00       	call   3fea <wait>
  close(fd);
     fb1:	89 3c 24             	mov    %edi,(%esp)
     fb4:	e8 51 30 00 00       	call   400a <close>
  fd = open("sharedfd", 0);
     fb9:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
     fc0:	00 
     fc1:	c7 04 24 d3 48 00 00 	movl   $0x48d3,(%esp)
     fc8:	e8 55 30 00 00       	call   4022 <open>
  if(fd < 0){
     fcd:	85 c0                	test   %eax,%eax
  fd = open("sharedfd", 0);
     fcf:	89 45 d0             	mov    %eax,-0x30(%ebp)
  if(fd < 0){
     fd2:	0f 88 c3 00 00 00    	js     109b <sharedfd+0x1ab>
     fd8:	31 d2                	xor    %edx,%edx
     fda:	31 db                	xor    %ebx,%ebx
     fdc:	8d 7d e8             	lea    -0x18(%ebp),%edi
     fdf:	89 55 d4             	mov    %edx,-0x2c(%ebp)
     fe2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  while((n = read(fd, buf, sizeof(buf))) > 0){
     fe8:	8b 45 d0             	mov    -0x30(%ebp),%eax
     feb:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
     ff2:	00 
     ff3:	89 74 24 04          	mov    %esi,0x4(%esp)
     ff7:	89 04 24             	mov    %eax,(%esp)
     ffa:	e8 fb 2f 00 00       	call   3ffa <read>
     fff:	85 c0                	test   %eax,%eax
    1001:	7e 36                	jle    1039 <sharedfd+0x149>
    1003:	89 f0                	mov    %esi,%eax
    1005:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1008:	eb 18                	jmp    1022 <sharedfd+0x132>
    100a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        np++;
    1010:	80 f9 70             	cmp    $0x70,%cl
    1013:	0f 94 c1             	sete   %cl
    1016:	83 c0 01             	add    $0x1,%eax
    1019:	0f b6 c9             	movzbl %cl,%ecx
    101c:	01 cb                	add    %ecx,%ebx
    for(i = 0; i < sizeof(buf); i++){
    101e:	39 f8                	cmp    %edi,%eax
    1020:	74 12                	je     1034 <sharedfd+0x144>
      if(buf[i] == 'c')
    1022:	0f b6 08             	movzbl (%eax),%ecx
    1025:	80 f9 63             	cmp    $0x63,%cl
    1028:	75 e6                	jne    1010 <sharedfd+0x120>
    102a:	83 c0 01             	add    $0x1,%eax
        nc++;
    102d:	83 c2 01             	add    $0x1,%edx
    for(i = 0; i < sizeof(buf); i++){
    1030:	39 f8                	cmp    %edi,%eax
    1032:	75 ee                	jne    1022 <sharedfd+0x132>
    1034:	89 55 d4             	mov    %edx,-0x2c(%ebp)
    1037:	eb af                	jmp    fe8 <sharedfd+0xf8>
  close(fd);
    1039:	8b 45 d0             	mov    -0x30(%ebp),%eax
    103c:	89 04 24             	mov    %eax,(%esp)
    103f:	e8 c6 2f 00 00       	call   400a <close>
  unlink("sharedfd");
    1044:	c7 04 24 d3 48 00 00 	movl   $0x48d3,(%esp)
    104b:	e8 e2 2f 00 00       	call   4032 <unlink>
  if(nc == 10000 && np == 10000){
    1050:	81 fb 10 27 00 00    	cmp    $0x2710,%ebx
    1056:	8b 55 d4             	mov    -0x2c(%ebp),%edx
    1059:	75 5c                	jne    10b7 <sharedfd+0x1c7>
    105b:	81 fa 10 27 00 00    	cmp    $0x2710,%edx
    1061:	75 54                	jne    10b7 <sharedfd+0x1c7>
    printf(1, "sharedfd ok\n");
    1063:	c7 44 24 04 dc 48 00 	movl   $0x48dc,0x4(%esp)
    106a:	00 
    106b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1072:	e8 b9 30 00 00       	call   4130 <printf>
}
    1077:	83 c4 3c             	add    $0x3c,%esp
    107a:	5b                   	pop    %ebx
    107b:	5e                   	pop    %esi
    107c:	5f                   	pop    %edi
    107d:	5d                   	pop    %ebp
    107e:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for writing");
    107f:	c7 44 24 04 98 55 00 	movl   $0x5598,0x4(%esp)
    1086:	00 
    1087:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    108e:	e8 9d 30 00 00       	call   4130 <printf>
}
    1093:	83 c4 3c             	add    $0x3c,%esp
    1096:	5b                   	pop    %ebx
    1097:	5e                   	pop    %esi
    1098:	5f                   	pop    %edi
    1099:	5d                   	pop    %ebp
    109a:	c3                   	ret    
    printf(1, "fstests: cannot open sharedfd for reading\n");
    109b:	c7 44 24 04 e4 55 00 	movl   $0x55e4,0x4(%esp)
    10a2:	00 
    10a3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10aa:	e8 81 30 00 00       	call   4130 <printf>
}
    10af:	83 c4 3c             	add    $0x3c,%esp
    10b2:	5b                   	pop    %ebx
    10b3:	5e                   	pop    %esi
    10b4:	5f                   	pop    %edi
    10b5:	5d                   	pop    %ebp
    10b6:	c3                   	ret    
    printf(1, "sharedfd oops %d %d\n", nc, np);
    10b7:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    10bb:	89 54 24 08          	mov    %edx,0x8(%esp)
    10bf:	c7 44 24 04 e9 48 00 	movl   $0x48e9,0x4(%esp)
    10c6:	00 
    10c7:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10ce:	e8 5d 30 00 00       	call   4130 <printf>
    exit(EXIT_FAILURE);
    10d3:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    10da:	e8 03 2f 00 00       	call   3fe2 <exit>
    10df:	90                   	nop

000010e0 <fourfiles>:
{
    10e0:	55                   	push   %ebp
    10e1:	89 e5                	mov    %esp,%ebp
    10e3:	57                   	push   %edi
    10e4:	56                   	push   %esi
  printf(1, "fourfiles test\n");
    10e5:	be fe 48 00 00       	mov    $0x48fe,%esi
{
    10ea:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    10eb:	31 db                	xor    %ebx,%ebx
{
    10ed:	83 ec 2c             	sub    $0x2c,%esp
  printf(1, "fourfiles test\n");
    10f0:	c7 44 24 04 04 49 00 	movl   $0x4904,0x4(%esp)
    10f7:	00 
    10f8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
  char *names[] = { "f0", "f1", "f2", "f3" };
    10ff:	c7 45 d8 fe 48 00 00 	movl   $0x48fe,-0x28(%ebp)
    1106:	c7 45 dc 47 4a 00 00 	movl   $0x4a47,-0x24(%ebp)
    110d:	c7 45 e0 4b 4a 00 00 	movl   $0x4a4b,-0x20(%ebp)
    1114:	c7 45 e4 01 49 00 00 	movl   $0x4901,-0x1c(%ebp)
  printf(1, "fourfiles test\n");
    111b:	e8 10 30 00 00       	call   4130 <printf>
    unlink(fname);
    1120:	89 34 24             	mov    %esi,(%esp)
    1123:	e8 0a 2f 00 00       	call   4032 <unlink>
    pid = fork();
    1128:	e8 ad 2e 00 00       	call   3fda <fork>
    if(pid < 0){
    112d:	85 c0                	test   %eax,%eax
    112f:	0f 88 bb 01 00 00    	js     12f0 <fourfiles+0x210>
    if(pid == 0){
    1135:	0f 84 0b 01 00 00    	je     1246 <fourfiles+0x166>
  for(pi = 0; pi < 4; pi++){
    113b:	83 c3 01             	add    $0x1,%ebx
    113e:	83 fb 04             	cmp    $0x4,%ebx
    1141:	74 06                	je     1149 <fourfiles+0x69>
    1143:	8b 74 9d d8          	mov    -0x28(%ebp,%ebx,4),%esi
    1147:	eb d7                	jmp    1120 <fourfiles+0x40>
    wait(0);
    1149:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1150:	bf 30 00 00 00       	mov    $0x30,%edi
    1155:	e8 90 2e 00 00       	call   3fea <wait>
    115a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1161:	e8 84 2e 00 00       	call   3fea <wait>
    1166:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    116d:	e8 78 2e 00 00       	call   3fea <wait>
    1172:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1179:	e8 6c 2e 00 00       	call   3fea <wait>
    117e:	c7 45 d4 fe 48 00 00 	movl   $0x48fe,-0x2c(%ebp)
    fd = open(fname, 0);
    1185:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    total = 0;
    1188:	31 db                	xor    %ebx,%ebx
    fd = open(fname, 0);
    118a:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1191:	00 
    1192:	89 04 24             	mov    %eax,(%esp)
    1195:	e8 88 2e 00 00       	call   4022 <open>
    119a:	89 c6                	mov    %eax,%esi
    119c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    while((n = read(fd, buf, sizeof(buf))) > 0){
    11a0:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    11a7:	00 
    11a8:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    11af:	00 
    11b0:	89 34 24             	mov    %esi,(%esp)
    11b3:	e8 42 2e 00 00       	call   3ffa <read>
    11b8:	85 c0                	test   %eax,%eax
    11ba:	7e 1a                	jle    11d6 <fourfiles+0xf6>
    11bc:	31 d2                	xor    %edx,%edx
    11be:	66 90                	xchg   %ax,%ax
        if(buf[j] != '0'+i){
    11c0:	0f be 8a 00 8d 00 00 	movsbl 0x8d00(%edx),%ecx
    11c7:	39 f9                	cmp    %edi,%ecx
    11c9:	75 5b                	jne    1226 <fourfiles+0x146>
      for(j = 0; j < n; j++){
    11cb:	83 c2 01             	add    $0x1,%edx
    11ce:	39 c2                	cmp    %eax,%edx
    11d0:	75 ee                	jne    11c0 <fourfiles+0xe0>
      total += n;
    11d2:	01 d3                	add    %edx,%ebx
    11d4:	eb ca                	jmp    11a0 <fourfiles+0xc0>
    close(fd);
    11d6:	89 34 24             	mov    %esi,(%esp)
    11d9:	e8 2c 2e 00 00       	call   400a <close>
    if(total != 12*500){
    11de:	81 fb 70 17 00 00    	cmp    $0x1770,%ebx
    11e4:	0f 85 26 01 00 00    	jne    1310 <fourfiles+0x230>
    unlink(fname);
    11ea:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    11ed:	89 04 24             	mov    %eax,(%esp)
    11f0:	e8 3d 2e 00 00       	call   4032 <unlink>
  for(i = 0; i < 2; i++){
    11f5:	83 ff 31             	cmp    $0x31,%edi
    11f8:	75 1c                	jne    1216 <fourfiles+0x136>
  printf(1, "fourfiles ok\n");
    11fa:	c7 44 24 04 42 49 00 	movl   $0x4942,0x4(%esp)
    1201:	00 
    1202:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1209:	e8 22 2f 00 00       	call   4130 <printf>
}
    120e:	83 c4 2c             	add    $0x2c,%esp
    1211:	5b                   	pop    %ebx
    1212:	5e                   	pop    %esi
    1213:	5f                   	pop    %edi
    1214:	5d                   	pop    %ebp
    1215:	c3                   	ret    
    1216:	8b 45 dc             	mov    -0x24(%ebp),%eax
    1219:	bf 31 00 00 00       	mov    $0x31,%edi
    121e:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1221:	e9 5f ff ff ff       	jmp    1185 <fourfiles+0xa5>
          printf(1, "wrong char\n");
    1226:	c7 44 24 04 25 49 00 	movl   $0x4925,0x4(%esp)
    122d:	00 
    122e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1235:	e8 f6 2e 00 00       	call   4130 <printf>
          exit(EXIT_FAILURE);
    123a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1241:	e8 9c 2d 00 00       	call   3fe2 <exit>
      fd = open(fname, O_CREATE | O_RDWR);
    1246:	89 34 24             	mov    %esi,(%esp)
    1249:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1250:	00 
    1251:	e8 cc 2d 00 00       	call   4022 <open>
      if(fd < 0){
    1256:	85 c0                	test   %eax,%eax
      fd = open(fname, O_CREATE | O_RDWR);
    1258:	89 c6                	mov    %eax,%esi
      if(fd < 0){
    125a:	78 74                	js     12d0 <fourfiles+0x1f0>
      memset(buf, '0'+pi, 512);
    125c:	83 c3 30             	add    $0x30,%ebx
    125f:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1263:	bb 0c 00 00 00       	mov    $0xc,%ebx
    1268:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    126f:	00 
    1270:	c7 04 24 00 8d 00 00 	movl   $0x8d00,(%esp)
    1277:	e8 f4 2b 00 00       	call   3e70 <memset>
        if((n = write(fd, buf, 500)) != 500){
    127c:	c7 44 24 08 f4 01 00 	movl   $0x1f4,0x8(%esp)
    1283:	00 
    1284:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    128b:	00 
    128c:	89 34 24             	mov    %esi,(%esp)
    128f:	e8 6e 2d 00 00       	call   4002 <write>
    1294:	3d f4 01 00 00       	cmp    $0x1f4,%eax
    1299:	75 11                	jne    12ac <fourfiles+0x1cc>
      for(i = 0; i < 12; i++){
    129b:	83 eb 01             	sub    $0x1,%ebx
    129e:	75 dc                	jne    127c <fourfiles+0x19c>
      exit(EXIT_SUCCESS);
    12a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    12a7:	e8 36 2d 00 00       	call   3fe2 <exit>
          printf(1, "write failed %d\n", n);
    12ac:	89 44 24 08          	mov    %eax,0x8(%esp)
    12b0:	c7 44 24 04 14 49 00 	movl   $0x4914,0x4(%esp)
    12b7:	00 
    12b8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12bf:	e8 6c 2e 00 00       	call   4130 <printf>
          exit(EXIT_FAILURE);
    12c4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12cb:	e8 12 2d 00 00       	call   3fe2 <exit>
        printf(1, "create failed\n");
    12d0:	c7 44 24 04 9f 4b 00 	movl   $0x4b9f,0x4(%esp)
    12d7:	00 
    12d8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12df:	e8 4c 2e 00 00       	call   4130 <printf>
        exit(EXIT_FAILURE);
    12e4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12eb:	e8 f2 2c 00 00       	call   3fe2 <exit>
      printf(1, "fork failed\n");
    12f0:	c7 44 24 04 d9 53 00 	movl   $0x53d9,0x4(%esp)
    12f7:	00 
    12f8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    12ff:	e8 2c 2e 00 00       	call   4130 <printf>
      exit(EXIT_FAILURE);
    1304:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    130b:	e8 d2 2c 00 00       	call   3fe2 <exit>
      printf(1, "wrong length %d\n", total);
    1310:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1314:	c7 44 24 04 31 49 00 	movl   $0x4931,0x4(%esp)
    131b:	00 
    131c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1323:	e8 08 2e 00 00       	call   4130 <printf>
      exit(EXIT_FAILURE);
    1328:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    132f:	e8 ae 2c 00 00       	call   3fe2 <exit>
    1334:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    133a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00001340 <createdelete>:
{
    1340:	55                   	push   %ebp
    1341:	89 e5                	mov    %esp,%ebp
    1343:	57                   	push   %edi
    1344:	56                   	push   %esi
    1345:	53                   	push   %ebx
  for(pi = 0; pi < 4; pi++){
    1346:	31 db                	xor    %ebx,%ebx
{
    1348:	83 ec 4c             	sub    $0x4c,%esp
  printf(1, "createdelete test\n");
    134b:	c7 44 24 04 50 49 00 	movl   $0x4950,0x4(%esp)
    1352:	00 
    1353:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    135a:	e8 d1 2d 00 00       	call   4130 <printf>
    pid = fork();
    135f:	e8 76 2c 00 00       	call   3fda <fork>
    if(pid < 0){
    1364:	85 c0                	test   %eax,%eax
    1366:	0f 88 0c 02 00 00    	js     1578 <createdelete+0x238>
    136c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    1370:	0f 84 2c 01 00 00    	je     14a2 <createdelete+0x162>
  for(pi = 0; pi < 4; pi++){
    1376:	83 c3 01             	add    $0x1,%ebx
    1379:	83 fb 04             	cmp    $0x4,%ebx
    137c:	75 e1                	jne    135f <createdelete+0x1f>
    wait(0);
    137e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < N; i++){
    1385:	31 f6                	xor    %esi,%esi
    wait(0);
    1387:	e8 5e 2c 00 00       	call   3fea <wait>
    138c:	8d 7d c8             	lea    -0x38(%ebp),%edi
    138f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1396:	e8 4f 2c 00 00       	call   3fea <wait>
    139b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13a2:	e8 43 2c 00 00       	call   3fea <wait>
    13a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    13ae:	e8 37 2c 00 00       	call   3fea <wait>
  name[0] = name[1] = name[2] = 0;
    13b3:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    13b7:	90                   	nop
    13b8:	83 fe 09             	cmp    $0x9,%esi
      name[2] = '\0';
    13bb:	bb 70 00 00 00       	mov    $0x70,%ebx
    13c0:	8d 46 30             	lea    0x30(%esi),%eax
    13c3:	0f 9f 45 c7          	setg   -0x39(%ebp)
    13c7:	85 f6                	test   %esi,%esi
    13c9:	88 45 c6             	mov    %al,-0x3a(%ebp)
    13cc:	0f 94 c0             	sete   %al
    13cf:	08 45 c7             	or     %al,-0x39(%ebp)
    13d2:	8d 46 ff             	lea    -0x1(%esi),%eax
    13d5:	89 45 c0             	mov    %eax,-0x40(%ebp)
      name[1] = '0' + i;
    13d8:	0f b6 45 c6          	movzbl -0x3a(%ebp),%eax
      fd = open(name, 0);
    13dc:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    13e3:	00 
    13e4:	89 3c 24             	mov    %edi,(%esp)
      name[0] = 'p' + pi;
    13e7:	88 5d c8             	mov    %bl,-0x38(%ebp)
      name[1] = '0' + i;
    13ea:	88 45 c9             	mov    %al,-0x37(%ebp)
      fd = open(name, 0);
    13ed:	e8 30 2c 00 00       	call   4022 <open>
      if((i == 0 || i >= N/2) && fd < 0){
    13f2:	80 7d c7 00          	cmpb   $0x0,-0x39(%ebp)
    13f6:	0f 84 84 00 00 00    	je     1480 <createdelete+0x140>
    13fc:	85 c0                	test   %eax,%eax
    13fe:	0f 88 30 01 00 00    	js     1534 <createdelete+0x1f4>
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1404:	83 7d c0 08          	cmpl   $0x8,-0x40(%ebp)
    1408:	0f 86 8a 01 00 00    	jbe    1598 <createdelete+0x258>
        close(fd);
    140e:	89 04 24             	mov    %eax,(%esp)
    1411:	83 c3 01             	add    $0x1,%ebx
    1414:	e8 f1 2b 00 00       	call   400a <close>
    for(pi = 0; pi < 4; pi++){
    1419:	80 fb 74             	cmp    $0x74,%bl
    141c:	75 ba                	jne    13d8 <createdelete+0x98>
  for(i = 0; i < N; i++){
    141e:	83 c6 01             	add    $0x1,%esi
    1421:	83 fe 14             	cmp    $0x14,%esi
    1424:	75 92                	jne    13b8 <createdelete+0x78>
    1426:	be 70 00 00 00       	mov    $0x70,%esi
    142b:	90                   	nop
    142c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    1430:	8d 46 c0             	lea    -0x40(%esi),%eax
    1433:	bb 04 00 00 00       	mov    $0x4,%ebx
    1438:	88 45 c7             	mov    %al,-0x39(%ebp)
      name[0] = 'p' + i;
    143b:	89 f0                	mov    %esi,%eax
    143d:	88 45 c8             	mov    %al,-0x38(%ebp)
      name[1] = '0' + i;
    1440:	0f b6 45 c7          	movzbl -0x39(%ebp),%eax
      unlink(name);
    1444:	89 3c 24             	mov    %edi,(%esp)
      name[1] = '0' + i;
    1447:	88 45 c9             	mov    %al,-0x37(%ebp)
      unlink(name);
    144a:	e8 e3 2b 00 00       	call   4032 <unlink>
    for(pi = 0; pi < 4; pi++){
    144f:	83 eb 01             	sub    $0x1,%ebx
    1452:	75 e7                	jne    143b <createdelete+0xfb>
    1454:	83 c6 01             	add    $0x1,%esi
  for(i = 0; i < N; i++){
    1457:	89 f0                	mov    %esi,%eax
    1459:	3c 84                	cmp    $0x84,%al
    145b:	75 d3                	jne    1430 <createdelete+0xf0>
  printf(1, "createdelete ok\n");
    145d:	c7 44 24 04 63 49 00 	movl   $0x4963,0x4(%esp)
    1464:	00 
    1465:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    146c:	e8 bf 2c 00 00       	call   4130 <printf>
}
    1471:	83 c4 4c             	add    $0x4c,%esp
    1474:	5b                   	pop    %ebx
    1475:	5e                   	pop    %esi
    1476:	5f                   	pop    %edi
    1477:	5d                   	pop    %ebp
    1478:	c3                   	ret    
    1479:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if((i >= 1 && i < N/2) && fd >= 0){
    1480:	85 c0                	test   %eax,%eax
    1482:	0f 89 10 01 00 00    	jns    1598 <createdelete+0x258>
    1488:	83 c3 01             	add    $0x1,%ebx
    for(pi = 0; pi < 4; pi++){
    148b:	80 fb 74             	cmp    $0x74,%bl
    148e:	0f 85 44 ff ff ff    	jne    13d8 <createdelete+0x98>
  for(i = 0; i < N; i++){
    1494:	83 c6 01             	add    $0x1,%esi
    1497:	83 fe 14             	cmp    $0x14,%esi
    149a:	0f 85 18 ff ff ff    	jne    13b8 <createdelete+0x78>
    14a0:	eb 84                	jmp    1426 <createdelete+0xe6>
      name[0] = 'p' + pi;
    14a2:	83 c3 70             	add    $0x70,%ebx
      name[2] = '\0';
    14a5:	be 01 00 00 00       	mov    $0x1,%esi
      name[0] = 'p' + pi;
    14aa:	88 5d c8             	mov    %bl,-0x38(%ebp)
    14ad:	8d 7d c8             	lea    -0x38(%ebp),%edi
      name[2] = '\0';
    14b0:	31 db                	xor    %ebx,%ebx
    14b2:	c6 45 ca 00          	movb   $0x0,-0x36(%ebp)
    14b6:	eb 0b                	jmp    14c3 <createdelete+0x183>
      for(i = 0; i < N; i++){
    14b8:	83 fe 14             	cmp    $0x14,%esi
    14bb:	74 6b                	je     1528 <createdelete+0x1e8>
    14bd:	83 c3 01             	add    $0x1,%ebx
    14c0:	83 c6 01             	add    $0x1,%esi
    14c3:	8d 43 30             	lea    0x30(%ebx),%eax
        fd = open(name, O_CREATE | O_RDWR);
    14c6:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    14cd:	00 
    14ce:	89 3c 24             	mov    %edi,(%esp)
    14d1:	88 45 c9             	mov    %al,-0x37(%ebp)
    14d4:	e8 49 2b 00 00       	call   4022 <open>
        if(fd < 0){
    14d9:	85 c0                	test   %eax,%eax
    14db:	78 7b                	js     1558 <createdelete+0x218>
        close(fd);
    14dd:	89 04 24             	mov    %eax,(%esp)
    14e0:	e8 25 2b 00 00       	call   400a <close>
        if(i > 0 && (i % 2 ) == 0){
    14e5:	85 db                	test   %ebx,%ebx
    14e7:	74 d4                	je     14bd <createdelete+0x17d>
    14e9:	f6 c3 01             	test   $0x1,%bl
    14ec:	75 ca                	jne    14b8 <createdelete+0x178>
          name[1] = '0' + (i / 2);
    14ee:	89 d8                	mov    %ebx,%eax
    14f0:	d1 f8                	sar    %eax
    14f2:	83 c0 30             	add    $0x30,%eax
          if(unlink(name) < 0){
    14f5:	89 3c 24             	mov    %edi,(%esp)
          name[1] = '0' + (i / 2);
    14f8:	88 45 c9             	mov    %al,-0x37(%ebp)
          if(unlink(name) < 0){
    14fb:	e8 32 2b 00 00       	call   4032 <unlink>
    1500:	85 c0                	test   %eax,%eax
    1502:	79 b4                	jns    14b8 <createdelete+0x178>
            printf(1, "unlink failed\n");
    1504:	c7 44 24 04 51 45 00 	movl   $0x4551,0x4(%esp)
    150b:	00 
    150c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1513:	e8 18 2c 00 00       	call   4130 <printf>
            exit(EXIT_FAILURE);
    1518:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    151f:	e8 be 2a 00 00       	call   3fe2 <exit>
    1524:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      exit(EXIT_SUCCESS);
    1528:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    152f:	e8 ae 2a 00 00       	call   3fe2 <exit>
        printf(1, "oops createdelete %s didn't exist\n", name);
    1534:	89 7c 24 08          	mov    %edi,0x8(%esp)
    1538:	c7 44 24 04 10 56 00 	movl   $0x5610,0x4(%esp)
    153f:	00 
    1540:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1547:	e8 e4 2b 00 00       	call   4130 <printf>
        exit(EXIT_FAILURE);
    154c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1553:	e8 8a 2a 00 00       	call   3fe2 <exit>
          printf(1, "create failed\n");
    1558:	c7 44 24 04 9f 4b 00 	movl   $0x4b9f,0x4(%esp)
    155f:	00 
    1560:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1567:	e8 c4 2b 00 00       	call   4130 <printf>
          exit(EXIT_FAILURE);
    156c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1573:	e8 6a 2a 00 00       	call   3fe2 <exit>
      printf(1, "fork failed\n");
    1578:	c7 44 24 04 d9 53 00 	movl   $0x53d9,0x4(%esp)
    157f:	00 
    1580:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1587:	e8 a4 2b 00 00       	call   4130 <printf>
      exit(EXIT_FAILURE);
    158c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1593:	e8 4a 2a 00 00       	call   3fe2 <exit>
        printf(1, "oops createdelete %s did exist\n", name);
    1598:	89 7c 24 08          	mov    %edi,0x8(%esp)
    159c:	c7 44 24 04 34 56 00 	movl   $0x5634,0x4(%esp)
    15a3:	00 
    15a4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15ab:	e8 80 2b 00 00       	call   4130 <printf>
        exit(EXIT_FAILURE);
    15b0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15b7:	e8 26 2a 00 00       	call   3fe2 <exit>
    15bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000015c0 <unlinkread>:
{
    15c0:	55                   	push   %ebp
    15c1:	89 e5                	mov    %esp,%ebp
    15c3:	56                   	push   %esi
    15c4:	53                   	push   %ebx
    15c5:	83 ec 10             	sub    $0x10,%esp
  printf(1, "unlinkread test\n");
    15c8:	c7 44 24 04 74 49 00 	movl   $0x4974,0x4(%esp)
    15cf:	00 
    15d0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    15d7:	e8 54 2b 00 00       	call   4130 <printf>
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15dc:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    15e3:	00 
    15e4:	c7 04 24 85 49 00 00 	movl   $0x4985,(%esp)
    15eb:	e8 32 2a 00 00       	call   4022 <open>
  if(fd < 0){
    15f0:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_CREATE | O_RDWR);
    15f2:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    15f4:	0f 88 02 01 00 00    	js     16fc <unlinkread+0x13c>
  write(fd, "hello", 5);
    15fa:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1601:	00 
    1602:	c7 44 24 04 aa 49 00 	movl   $0x49aa,0x4(%esp)
    1609:	00 
    160a:	89 04 24             	mov    %eax,(%esp)
    160d:	e8 f0 29 00 00       	call   4002 <write>
  close(fd);
    1612:	89 1c 24             	mov    %ebx,(%esp)
    1615:	e8 f0 29 00 00       	call   400a <close>
  fd = open("unlinkread", O_RDWR);
    161a:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    1621:	00 
    1622:	c7 04 24 85 49 00 00 	movl   $0x4985,(%esp)
    1629:	e8 f4 29 00 00       	call   4022 <open>
  if(fd < 0){
    162e:	85 c0                	test   %eax,%eax
  fd = open("unlinkread", O_RDWR);
    1630:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1632:	0f 88 64 01 00 00    	js     179c <unlinkread+0x1dc>
  if(unlink("unlinkread") != 0){
    1638:	c7 04 24 85 49 00 00 	movl   $0x4985,(%esp)
    163f:	e8 ee 29 00 00       	call   4032 <unlink>
    1644:	85 c0                	test   %eax,%eax
    1646:	0f 85 30 01 00 00    	jne    177c <unlinkread+0x1bc>
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    164c:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1653:	00 
    1654:	c7 04 24 85 49 00 00 	movl   $0x4985,(%esp)
    165b:	e8 c2 29 00 00       	call   4022 <open>
  write(fd1, "yyy", 3);
    1660:	c7 44 24 08 03 00 00 	movl   $0x3,0x8(%esp)
    1667:	00 
    1668:	c7 44 24 04 e2 49 00 	movl   $0x49e2,0x4(%esp)
    166f:	00 
  fd1 = open("unlinkread", O_CREATE | O_RDWR);
    1670:	89 c6                	mov    %eax,%esi
  write(fd1, "yyy", 3);
    1672:	89 04 24             	mov    %eax,(%esp)
    1675:	e8 88 29 00 00       	call   4002 <write>
  close(fd1);
    167a:	89 34 24             	mov    %esi,(%esp)
    167d:	e8 88 29 00 00       	call   400a <close>
  if(read(fd, buf, sizeof(buf)) != 5){
    1682:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    1689:	00 
    168a:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    1691:	00 
    1692:	89 1c 24             	mov    %ebx,(%esp)
    1695:	e8 60 29 00 00       	call   3ffa <read>
    169a:	83 f8 05             	cmp    $0x5,%eax
    169d:	0f 85 b9 00 00 00    	jne    175c <unlinkread+0x19c>
  if(buf[0] != 'h'){
    16a3:	80 3d 00 8d 00 00 68 	cmpb   $0x68,0x8d00
    16aa:	0f 85 8c 00 00 00    	jne    173c <unlinkread+0x17c>
  if(write(fd, buf, 10) != 10){
    16b0:	c7 44 24 08 0a 00 00 	movl   $0xa,0x8(%esp)
    16b7:	00 
    16b8:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    16bf:	00 
    16c0:	89 1c 24             	mov    %ebx,(%esp)
    16c3:	e8 3a 29 00 00       	call   4002 <write>
    16c8:	83 f8 0a             	cmp    $0xa,%eax
    16cb:	75 4f                	jne    171c <unlinkread+0x15c>
  close(fd);
    16cd:	89 1c 24             	mov    %ebx,(%esp)
    16d0:	e8 35 29 00 00       	call   400a <close>
  unlink("unlinkread");
    16d5:	c7 04 24 85 49 00 00 	movl   $0x4985,(%esp)
    16dc:	e8 51 29 00 00       	call   4032 <unlink>
  printf(1, "unlinkread ok\n");
    16e1:	c7 44 24 04 2d 4a 00 	movl   $0x4a2d,0x4(%esp)
    16e8:	00 
    16e9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    16f0:	e8 3b 2a 00 00       	call   4130 <printf>
}
    16f5:	83 c4 10             	add    $0x10,%esp
    16f8:	5b                   	pop    %ebx
    16f9:	5e                   	pop    %esi
    16fa:	5d                   	pop    %ebp
    16fb:	c3                   	ret    
    printf(1, "create unlinkread failed\n");
    16fc:	c7 44 24 04 90 49 00 	movl   $0x4990,0x4(%esp)
    1703:	00 
    1704:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    170b:	e8 20 2a 00 00       	call   4130 <printf>
    exit(0);
    1710:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1717:	e8 c6 28 00 00       	call   3fe2 <exit>
    printf(1, "unlinkread write failed\n");
    171c:	c7 44 24 04 14 4a 00 	movl   $0x4a14,0x4(%esp)
    1723:	00 
    1724:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    172b:	e8 00 2a 00 00       	call   4130 <printf>
    exit(0);
    1730:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1737:	e8 a6 28 00 00       	call   3fe2 <exit>
    printf(1, "unlinkread wrong data\n");
    173c:	c7 44 24 04 fd 49 00 	movl   $0x49fd,0x4(%esp)
    1743:	00 
    1744:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    174b:	e8 e0 29 00 00       	call   4130 <printf>
    exit(0);
    1750:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1757:	e8 86 28 00 00       	call   3fe2 <exit>
    printf(1, "unlinkread read failed");
    175c:	c7 44 24 04 e6 49 00 	movl   $0x49e6,0x4(%esp)
    1763:	00 
    1764:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    176b:	e8 c0 29 00 00       	call   4130 <printf>
    exit(0);
    1770:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1777:	e8 66 28 00 00       	call   3fe2 <exit>
    printf(1, "unlink unlinkread failed\n");
    177c:	c7 44 24 04 c8 49 00 	movl   $0x49c8,0x4(%esp)
    1783:	00 
    1784:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    178b:	e8 a0 29 00 00       	call   4130 <printf>
    exit(0);
    1790:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1797:	e8 46 28 00 00       	call   3fe2 <exit>
    printf(1, "open unlinkread failed\n");
    179c:	c7 44 24 04 b0 49 00 	movl   $0x49b0,0x4(%esp)
    17a3:	00 
    17a4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17ab:	e8 80 29 00 00       	call   4130 <printf>
    exit(0);
    17b0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    17b7:	e8 26 28 00 00       	call   3fe2 <exit>
    17bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000017c0 <linktest>:
{
    17c0:	55                   	push   %ebp
    17c1:	89 e5                	mov    %esp,%ebp
    17c3:	53                   	push   %ebx
    17c4:	83 ec 14             	sub    $0x14,%esp
  printf(1, "linktest\n");
    17c7:	c7 44 24 04 3c 4a 00 	movl   $0x4a3c,0x4(%esp)
    17ce:	00 
    17cf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    17d6:	e8 55 29 00 00       	call   4130 <printf>
  unlink("lf1");
    17db:	c7 04 24 46 4a 00 00 	movl   $0x4a46,(%esp)
    17e2:	e8 4b 28 00 00       	call   4032 <unlink>
  unlink("lf2");
    17e7:	c7 04 24 4a 4a 00 00 	movl   $0x4a4a,(%esp)
    17ee:	e8 3f 28 00 00       	call   4032 <unlink>
  fd = open("lf1", O_CREATE|O_RDWR);
    17f3:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    17fa:	00 
    17fb:	c7 04 24 46 4a 00 00 	movl   $0x4a46,(%esp)
    1802:	e8 1b 28 00 00       	call   4022 <open>
  if(fd < 0){
    1807:	85 c0                	test   %eax,%eax
  fd = open("lf1", O_CREATE|O_RDWR);
    1809:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    180b:	0f 88 26 01 00 00    	js     1937 <linktest+0x177>
  if(write(fd, "hello", 5) != 5){
    1811:	c7 44 24 08 05 00 00 	movl   $0x5,0x8(%esp)
    1818:	00 
    1819:	c7 44 24 04 aa 49 00 	movl   $0x49aa,0x4(%esp)
    1820:	00 
    1821:	89 04 24             	mov    %eax,(%esp)
    1824:	e8 d9 27 00 00       	call   4002 <write>
    1829:	83 f8 05             	cmp    $0x5,%eax
    182c:	0f 85 05 02 00 00    	jne    1a37 <linktest+0x277>
  close(fd);
    1832:	89 1c 24             	mov    %ebx,(%esp)
    1835:	e8 d0 27 00 00       	call   400a <close>
  if(link("lf1", "lf2") < 0){
    183a:	c7 44 24 04 4a 4a 00 	movl   $0x4a4a,0x4(%esp)
    1841:	00 
    1842:	c7 04 24 46 4a 00 00 	movl   $0x4a46,(%esp)
    1849:	e8 f4 27 00 00       	call   4042 <link>
    184e:	85 c0                	test   %eax,%eax
    1850:	0f 88 c1 01 00 00    	js     1a17 <linktest+0x257>
  unlink("lf1");
    1856:	c7 04 24 46 4a 00 00 	movl   $0x4a46,(%esp)
    185d:	e8 d0 27 00 00       	call   4032 <unlink>
  if(open("lf1", 0) >= 0){
    1862:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1869:	00 
    186a:	c7 04 24 46 4a 00 00 	movl   $0x4a46,(%esp)
    1871:	e8 ac 27 00 00       	call   4022 <open>
    1876:	85 c0                	test   %eax,%eax
    1878:	0f 89 79 01 00 00    	jns    19f7 <linktest+0x237>
  fd = open("lf2", 0);
    187e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1885:	00 
    1886:	c7 04 24 4a 4a 00 00 	movl   $0x4a4a,(%esp)
    188d:	e8 90 27 00 00       	call   4022 <open>
  if(fd < 0){
    1892:	85 c0                	test   %eax,%eax
  fd = open("lf2", 0);
    1894:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    1896:	0f 88 3b 01 00 00    	js     19d7 <linktest+0x217>
  if(read(fd, buf, sizeof(buf)) != 5){
    189c:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    18a3:	00 
    18a4:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    18ab:	00 
    18ac:	89 04 24             	mov    %eax,(%esp)
    18af:	e8 46 27 00 00       	call   3ffa <read>
    18b4:	83 f8 05             	cmp    $0x5,%eax
    18b7:	0f 85 fa 00 00 00    	jne    19b7 <linktest+0x1f7>
  close(fd);
    18bd:	89 1c 24             	mov    %ebx,(%esp)
    18c0:	e8 45 27 00 00       	call   400a <close>
  if(link("lf2", "lf2") >= 0){
    18c5:	c7 44 24 04 4a 4a 00 	movl   $0x4a4a,0x4(%esp)
    18cc:	00 
    18cd:	c7 04 24 4a 4a 00 00 	movl   $0x4a4a,(%esp)
    18d4:	e8 69 27 00 00       	call   4042 <link>
    18d9:	85 c0                	test   %eax,%eax
    18db:	0f 89 b6 00 00 00    	jns    1997 <linktest+0x1d7>
  unlink("lf2");
    18e1:	c7 04 24 4a 4a 00 00 	movl   $0x4a4a,(%esp)
    18e8:	e8 45 27 00 00       	call   4032 <unlink>
  if(link("lf2", "lf1") >= 0){
    18ed:	c7 44 24 04 46 4a 00 	movl   $0x4a46,0x4(%esp)
    18f4:	00 
    18f5:	c7 04 24 4a 4a 00 00 	movl   $0x4a4a,(%esp)
    18fc:	e8 41 27 00 00       	call   4042 <link>
    1901:	85 c0                	test   %eax,%eax
    1903:	79 72                	jns    1977 <linktest+0x1b7>
  if(link(".", "lf1") >= 0){
    1905:	c7 44 24 04 46 4a 00 	movl   $0x4a46,0x4(%esp)
    190c:	00 
    190d:	c7 04 24 0e 4d 00 00 	movl   $0x4d0e,(%esp)
    1914:	e8 29 27 00 00       	call   4042 <link>
    1919:	85 c0                	test   %eax,%eax
    191b:	79 3a                	jns    1957 <linktest+0x197>
  printf(1, "linktest ok\n");
    191d:	c7 44 24 04 e4 4a 00 	movl   $0x4ae4,0x4(%esp)
    1924:	00 
    1925:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    192c:	e8 ff 27 00 00       	call   4130 <printf>
}
    1931:	83 c4 14             	add    $0x14,%esp
    1934:	5b                   	pop    %ebx
    1935:	5d                   	pop    %ebp
    1936:	c3                   	ret    
    printf(1, "create lf1 failed\n");
    1937:	c7 44 24 04 4e 4a 00 	movl   $0x4a4e,0x4(%esp)
    193e:	00 
    193f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1946:	e8 e5 27 00 00       	call   4130 <printf>
    exit(0);
    194b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1952:	e8 8b 26 00 00       	call   3fe2 <exit>
    printf(1, "link . lf1 succeeded! oops\n");
    1957:	c7 44 24 04 c8 4a 00 	movl   $0x4ac8,0x4(%esp)
    195e:	00 
    195f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1966:	e8 c5 27 00 00       	call   4130 <printf>
    exit(0);
    196b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1972:	e8 6b 26 00 00       	call   3fe2 <exit>
    printf(1, "link non-existant succeeded! oops\n");
    1977:	c7 44 24 04 7c 56 00 	movl   $0x567c,0x4(%esp)
    197e:	00 
    197f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1986:	e8 a5 27 00 00       	call   4130 <printf>
    exit(0);
    198b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1992:	e8 4b 26 00 00       	call   3fe2 <exit>
    printf(1, "link lf2 lf2 succeeded! oops\n");
    1997:	c7 44 24 04 aa 4a 00 	movl   $0x4aaa,0x4(%esp)
    199e:	00 
    199f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19a6:	e8 85 27 00 00       	call   4130 <printf>
    exit(0);
    19ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19b2:	e8 2b 26 00 00       	call   3fe2 <exit>
    printf(1, "read lf2 failed\n");
    19b7:	c7 44 24 04 99 4a 00 	movl   $0x4a99,0x4(%esp)
    19be:	00 
    19bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19c6:	e8 65 27 00 00       	call   4130 <printf>
    exit(0);
    19cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19d2:	e8 0b 26 00 00       	call   3fe2 <exit>
    printf(1, "open lf2 failed\n");
    19d7:	c7 44 24 04 88 4a 00 	movl   $0x4a88,0x4(%esp)
    19de:	00 
    19df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    19e6:	e8 45 27 00 00       	call   4130 <printf>
    exit(0);
    19eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    19f2:	e8 eb 25 00 00       	call   3fe2 <exit>
    printf(1, "unlinked lf1 but it is still there!\n");
    19f7:	c7 44 24 04 54 56 00 	movl   $0x5654,0x4(%esp)
    19fe:	00 
    19ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a06:	e8 25 27 00 00       	call   4130 <printf>
    exit(0);
    1a0b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a12:	e8 cb 25 00 00       	call   3fe2 <exit>
    printf(1, "link lf1 lf2 failed\n");
    1a17:	c7 44 24 04 73 4a 00 	movl   $0x4a73,0x4(%esp)
    1a1e:	00 
    1a1f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a26:	e8 05 27 00 00       	call   4130 <printf>
    exit(0);
    1a2b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a32:	e8 ab 25 00 00       	call   3fe2 <exit>
    printf(1, "write lf1 failed\n");
    1a37:	c7 44 24 04 61 4a 00 	movl   $0x4a61,0x4(%esp)
    1a3e:	00 
    1a3f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a46:	e8 e5 26 00 00       	call   4130 <printf>
    exit(0);
    1a4b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1a52:	e8 8b 25 00 00       	call   3fe2 <exit>
    1a57:	89 f6                	mov    %esi,%esi
    1a59:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001a60 <concreate>:
{
    1a60:	55                   	push   %ebp
    1a61:	89 e5                	mov    %esp,%ebp
    1a63:	57                   	push   %edi
    1a64:	56                   	push   %esi
  for(i = 0; i < 40; i++){
    1a65:	31 f6                	xor    %esi,%esi
{
    1a67:	53                   	push   %ebx
    1a68:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "concreate test\n");
    1a6b:	c7 44 24 04 f1 4a 00 	movl   $0x4af1,0x4(%esp)
    1a72:	00 
    1a73:	8d 5d ad             	lea    -0x53(%ebp),%ebx
    1a76:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1a7d:	e8 ae 26 00 00       	call   4130 <printf>
  file[0] = 'C';
    1a82:	c6 45 ad 43          	movb   $0x43,-0x53(%ebp)
  file[2] = '\0';
    1a86:	c6 45 af 00          	movb   $0x0,-0x51(%ebp)
    1a8a:	eb 5a                	jmp    1ae6 <concreate+0x86>
    1a8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid && (i % 3) == 1){
    1a90:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1a95:	89 f1                	mov    %esi,%ecx
    1a97:	f7 ee                	imul   %esi
    1a99:	89 f0                	mov    %esi,%eax
    1a9b:	c1 f8 1f             	sar    $0x1f,%eax
    1a9e:	29 c2                	sub    %eax,%edx
    1aa0:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1aa3:	29 c1                	sub    %eax,%ecx
    1aa5:	83 f9 01             	cmp    $0x1,%ecx
    1aa8:	0f 84 8a 00 00 00    	je     1b38 <concreate+0xd8>
      fd = open(file, O_CREATE | O_RDWR);
    1aae:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1ab5:	00 
    1ab6:	89 1c 24             	mov    %ebx,(%esp)
    1ab9:	e8 64 25 00 00       	call   4022 <open>
      if(fd < 0){
    1abe:	85 c0                	test   %eax,%eax
    1ac0:	0f 88 5e 02 00 00    	js     1d24 <concreate+0x2c4>
      close(fd);
    1ac6:	89 04 24             	mov    %eax,(%esp)
    1ac9:	e8 3c 25 00 00       	call   400a <close>
    if(pid == 0)
    1ace:	85 ff                	test   %edi,%edi
    1ad0:	74 59                	je     1b2b <concreate+0xcb>
      wait(0);
    1ad2:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1ad9:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1adc:	e8 09 25 00 00       	call   3fea <wait>
  for(i = 0; i < 40; i++){
    1ae1:	83 fe 28             	cmp    $0x28,%esi
    1ae4:	74 6a                	je     1b50 <concreate+0xf0>
    1ae6:	8d 46 30             	lea    0x30(%esi),%eax
    unlink(file);
    1ae9:	89 1c 24             	mov    %ebx,(%esp)
    1aec:	88 45 ae             	mov    %al,-0x52(%ebp)
    1aef:	e8 3e 25 00 00       	call   4032 <unlink>
    pid = fork();
    1af4:	e8 e1 24 00 00       	call   3fda <fork>
    if(pid && (i % 3) == 1){
    1af9:	85 c0                	test   %eax,%eax
    pid = fork();
    1afb:	89 c7                	mov    %eax,%edi
    if(pid && (i % 3) == 1){
    1afd:	75 91                	jne    1a90 <concreate+0x30>
    } else if(pid == 0 && (i % 5) == 1){
    1aff:	b8 67 66 66 66       	mov    $0x66666667,%eax
    1b04:	89 f1                	mov    %esi,%ecx
    1b06:	f7 ee                	imul   %esi
    1b08:	89 f0                	mov    %esi,%eax
    1b0a:	c1 f8 1f             	sar    $0x1f,%eax
    1b0d:	d1 fa                	sar    %edx
    1b0f:	29 c2                	sub    %eax,%edx
    1b11:	8d 04 92             	lea    (%edx,%edx,4),%eax
    1b14:	29 c1                	sub    %eax,%ecx
    1b16:	83 f9 01             	cmp    $0x1,%ecx
    1b19:	75 93                	jne    1aae <concreate+0x4e>
      link("C0", file);
    1b1b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1b1f:	c7 04 24 01 4b 00 00 	movl   $0x4b01,(%esp)
    1b26:	e8 17 25 00 00       	call   4042 <link>
        exit(0);
    1b2b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1b32:	e8 ab 24 00 00       	call   3fe2 <exit>
    1b37:	90                   	nop
      link("C0", file);
    1b38:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    1b3c:	c7 04 24 01 4b 00 00 	movl   $0x4b01,(%esp)
    1b43:	e8 fa 24 00 00       	call   4042 <link>
    1b48:	eb 88                	jmp    1ad2 <concreate+0x72>
    1b4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  memset(fa, 0, sizeof(fa));
    1b50:	8d 45 c0             	lea    -0x40(%ebp),%eax
    1b53:	c7 44 24 08 28 00 00 	movl   $0x28,0x8(%esp)
    1b5a:	00 
    1b5b:	8d 7d b0             	lea    -0x50(%ebp),%edi
    1b5e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b65:	00 
    1b66:	89 04 24             	mov    %eax,(%esp)
    1b69:	e8 02 23 00 00       	call   3e70 <memset>
  fd = open(".", 0);
    1b6e:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1b75:	00 
    1b76:	c7 04 24 0e 4d 00 00 	movl   $0x4d0e,(%esp)
    1b7d:	e8 a0 24 00 00       	call   4022 <open>
  n = 0;
    1b82:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%ebp)
  fd = open(".", 0);
    1b89:	89 c6                	mov    %eax,%esi
    1b8b:	90                   	nop
    1b8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  while(read(fd, &de, sizeof(de)) > 0){
    1b90:	c7 44 24 08 10 00 00 	movl   $0x10,0x8(%esp)
    1b97:	00 
    1b98:	89 7c 24 04          	mov    %edi,0x4(%esp)
    1b9c:	89 34 24             	mov    %esi,(%esp)
    1b9f:	e8 56 24 00 00       	call   3ffa <read>
    1ba4:	85 c0                	test   %eax,%eax
    1ba6:	7e 40                	jle    1be8 <concreate+0x188>
    if(de.inum == 0)
    1ba8:	66 83 7d b0 00       	cmpw   $0x0,-0x50(%ebp)
    1bad:	74 e1                	je     1b90 <concreate+0x130>
    if(de.name[0] == 'C' && de.name[2] == '\0'){
    1baf:	80 7d b2 43          	cmpb   $0x43,-0x4e(%ebp)
    1bb3:	75 db                	jne    1b90 <concreate+0x130>
    1bb5:	80 7d b4 00          	cmpb   $0x0,-0x4c(%ebp)
    1bb9:	75 d5                	jne    1b90 <concreate+0x130>
      i = de.name[1] - '0';
    1bbb:	0f be 45 b3          	movsbl -0x4d(%ebp),%eax
    1bbf:	83 e8 30             	sub    $0x30,%eax
      if(i < 0 || i >= sizeof(fa)){
    1bc2:	83 f8 27             	cmp    $0x27,%eax
    1bc5:	0f 87 7d 01 00 00    	ja     1d48 <concreate+0x2e8>
      if(fa[i]){
    1bcb:	80 7c 05 c0 00       	cmpb   $0x0,-0x40(%ebp,%eax,1)
    1bd0:	0f 85 b2 01 00 00    	jne    1d88 <concreate+0x328>
      fa[i] = 1;
    1bd6:	c6 44 05 c0 01       	movb   $0x1,-0x40(%ebp,%eax,1)
      n++;
    1bdb:	83 45 a4 01          	addl   $0x1,-0x5c(%ebp)
    1bdf:	eb af                	jmp    1b90 <concreate+0x130>
    1be1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  close(fd);
    1be8:	89 34 24             	mov    %esi,(%esp)
    1beb:	e8 1a 24 00 00       	call   400a <close>
  if(n != 40){
    1bf0:	83 7d a4 28          	cmpl   $0x28,-0x5c(%ebp)
    1bf4:	0f 85 6e 01 00 00    	jne    1d68 <concreate+0x308>
    1bfa:	31 f6                	xor    %esi,%esi
    1bfc:	e9 8b 00 00 00       	jmp    1c8c <concreate+0x22c>
    1c01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
       ((i % 3) == 1 && pid != 0)){
    1c08:	85 ff                	test   %edi,%edi
    1c0a:	0f 84 b5 00 00 00    	je     1cc5 <concreate+0x265>
      close(open(file, 0));
    1c10:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c17:	00 
    1c18:	89 1c 24             	mov    %ebx,(%esp)
    1c1b:	e8 02 24 00 00       	call   4022 <open>
    1c20:	89 04 24             	mov    %eax,(%esp)
    1c23:	e8 e2 23 00 00       	call   400a <close>
      close(open(file, 0));
    1c28:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c2f:	00 
    1c30:	89 1c 24             	mov    %ebx,(%esp)
    1c33:	e8 ea 23 00 00       	call   4022 <open>
    1c38:	89 04 24             	mov    %eax,(%esp)
    1c3b:	e8 ca 23 00 00       	call   400a <close>
      close(open(file, 0));
    1c40:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c47:	00 
    1c48:	89 1c 24             	mov    %ebx,(%esp)
    1c4b:	e8 d2 23 00 00       	call   4022 <open>
    1c50:	89 04 24             	mov    %eax,(%esp)
    1c53:	e8 b2 23 00 00       	call   400a <close>
      close(open(file, 0));
    1c58:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    1c5f:	00 
    1c60:	89 1c 24             	mov    %ebx,(%esp)
    1c63:	e8 ba 23 00 00       	call   4022 <open>
    1c68:	89 04 24             	mov    %eax,(%esp)
    1c6b:	e8 9a 23 00 00       	call   400a <close>
    if(pid == 0)
    1c70:	85 ff                	test   %edi,%edi
    1c72:	0f 84 b3 fe ff ff    	je     1b2b <concreate+0xcb>
      wait(0);
    1c78:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(i = 0; i < 40; i++){
    1c7f:	83 c6 01             	add    $0x1,%esi
      wait(0);
    1c82:	e8 63 23 00 00       	call   3fea <wait>
  for(i = 0; i < 40; i++){
    1c87:	83 fe 28             	cmp    $0x28,%esi
    1c8a:	74 5c                	je     1ce8 <concreate+0x288>
    1c8c:	8d 46 30             	lea    0x30(%esi),%eax
    1c8f:	88 45 ae             	mov    %al,-0x52(%ebp)
    pid = fork();
    1c92:	e8 43 23 00 00       	call   3fda <fork>
    if(pid < 0){
    1c97:	85 c0                	test   %eax,%eax
    pid = fork();
    1c99:	89 c7                	mov    %eax,%edi
    if(pid < 0){
    1c9b:	78 67                	js     1d04 <concreate+0x2a4>
    if(((i % 3) == 0 && pid == 0) ||
    1c9d:	b8 56 55 55 55       	mov    $0x55555556,%eax
    1ca2:	f7 ee                	imul   %esi
    1ca4:	89 f0                	mov    %esi,%eax
    1ca6:	c1 f8 1f             	sar    $0x1f,%eax
    1ca9:	29 c2                	sub    %eax,%edx
    1cab:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1cae:	89 f2                	mov    %esi,%edx
    1cb0:	29 c2                	sub    %eax,%edx
    1cb2:	89 d0                	mov    %edx,%eax
    1cb4:	09 f8                	or     %edi,%eax
    1cb6:	0f 84 54 ff ff ff    	je     1c10 <concreate+0x1b0>
    1cbc:	83 fa 01             	cmp    $0x1,%edx
    1cbf:	0f 84 43 ff ff ff    	je     1c08 <concreate+0x1a8>
      unlink(file);
    1cc5:	89 1c 24             	mov    %ebx,(%esp)
    1cc8:	e8 65 23 00 00       	call   4032 <unlink>
      unlink(file);
    1ccd:	89 1c 24             	mov    %ebx,(%esp)
    1cd0:	e8 5d 23 00 00       	call   4032 <unlink>
      unlink(file);
    1cd5:	89 1c 24             	mov    %ebx,(%esp)
    1cd8:	e8 55 23 00 00       	call   4032 <unlink>
      unlink(file);
    1cdd:	89 1c 24             	mov    %ebx,(%esp)
    1ce0:	e8 4d 23 00 00       	call   4032 <unlink>
    1ce5:	eb 89                	jmp    1c70 <concreate+0x210>
    1ce7:	90                   	nop
  printf(1, "concreate ok\n");
    1ce8:	c7 44 24 04 56 4b 00 	movl   $0x4b56,0x4(%esp)
    1cef:	00 
    1cf0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1cf7:	e8 34 24 00 00       	call   4130 <printf>
}
    1cfc:	83 c4 5c             	add    $0x5c,%esp
    1cff:	5b                   	pop    %ebx
    1d00:	5e                   	pop    %esi
    1d01:	5f                   	pop    %edi
    1d02:	5d                   	pop    %ebp
    1d03:	c3                   	ret    
      printf(1, "fork failed\n");
    1d04:	c7 44 24 04 d9 53 00 	movl   $0x53d9,0x4(%esp)
    1d0b:	00 
    1d0c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d13:	e8 18 24 00 00       	call   4130 <printf>
      exit(0);
    1d18:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d1f:	e8 be 22 00 00       	call   3fe2 <exit>
        printf(1, "concreate create %s failed\n", file);
    1d24:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    1d28:	c7 44 24 04 04 4b 00 	movl   $0x4b04,0x4(%esp)
    1d2f:	00 
    1d30:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d37:	e8 f4 23 00 00       	call   4130 <printf>
        exit(0);
    1d3c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d43:	e8 9a 22 00 00       	call   3fe2 <exit>
        printf(1, "concreate weird file %s\n", de.name);
    1d48:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d4b:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d4f:	c7 44 24 04 20 4b 00 	movl   $0x4b20,0x4(%esp)
    1d56:	00 
    1d57:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d5e:	e8 cd 23 00 00       	call   4130 <printf>
    1d63:	e9 c3 fd ff ff       	jmp    1b2b <concreate+0xcb>
    printf(1, "concreate not enough files in directory listing\n");
    1d68:	c7 44 24 04 a0 56 00 	movl   $0x56a0,0x4(%esp)
    1d6f:	00 
    1d70:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d77:	e8 b4 23 00 00       	call   4130 <printf>
    exit(0);
    1d7c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1d83:	e8 5a 22 00 00       	call   3fe2 <exit>
        printf(1, "concreate duplicate file %s\n", de.name);
    1d88:	8d 45 b2             	lea    -0x4e(%ebp),%eax
    1d8b:	89 44 24 08          	mov    %eax,0x8(%esp)
    1d8f:	c7 44 24 04 39 4b 00 	movl   $0x4b39,0x4(%esp)
    1d96:	00 
    1d97:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1d9e:	e8 8d 23 00 00       	call   4130 <printf>
        exit(0);
    1da3:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1daa:	e8 33 22 00 00       	call   3fe2 <exit>
    1daf:	90                   	nop

00001db0 <linkunlink>:
{
    1db0:	55                   	push   %ebp
    1db1:	89 e5                	mov    %esp,%ebp
    1db3:	57                   	push   %edi
    1db4:	56                   	push   %esi
    1db5:	53                   	push   %ebx
    1db6:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "linkunlink test\n");
    1db9:	c7 44 24 04 64 4b 00 	movl   $0x4b64,0x4(%esp)
    1dc0:	00 
    1dc1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1dc8:	e8 63 23 00 00       	call   4130 <printf>
  unlink("x");
    1dcd:	c7 04 24 f1 4d 00 00 	movl   $0x4df1,(%esp)
    1dd4:	e8 59 22 00 00       	call   4032 <unlink>
  pid = fork();
    1dd9:	e8 fc 21 00 00       	call   3fda <fork>
  if(pid < 0){
    1dde:	85 c0                	test   %eax,%eax
  pid = fork();
    1de0:	89 45 e4             	mov    %eax,-0x1c(%ebp)
  if(pid < 0){
    1de3:	0f 88 c0 00 00 00    	js     1ea9 <linkunlink+0xf9>
  unsigned int x = (pid ? 1 : 97);
    1de9:	83 7d e4 01          	cmpl   $0x1,-0x1c(%ebp)
    1ded:	bb 64 00 00 00       	mov    $0x64,%ebx
    if((x % 3) == 0){
    1df2:	be ab aa aa aa       	mov    $0xaaaaaaab,%esi
  unsigned int x = (pid ? 1 : 97);
    1df7:	19 ff                	sbb    %edi,%edi
    1df9:	83 e7 60             	and    $0x60,%edi
    1dfc:	83 c7 01             	add    $0x1,%edi
    1dff:	eb 21                	jmp    1e22 <linkunlink+0x72>
    1e01:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    } else if((x % 3) == 1){
    1e08:	83 fa 01             	cmp    $0x1,%edx
    1e0b:	0f 84 7f 00 00 00    	je     1e90 <linkunlink+0xe0>
      unlink("x");
    1e11:	c7 04 24 f1 4d 00 00 	movl   $0x4df1,(%esp)
    1e18:	e8 15 22 00 00       	call   4032 <unlink>
  for(i = 0; i < 100; i++){
    1e1d:	83 eb 01             	sub    $0x1,%ebx
    1e20:	74 3c                	je     1e5e <linkunlink+0xae>
    x = x * 1103515245 + 12345;
    1e22:	69 cf 6d 4e c6 41    	imul   $0x41c64e6d,%edi,%ecx
    1e28:	8d b9 39 30 00 00    	lea    0x3039(%ecx),%edi
    if((x % 3) == 0){
    1e2e:	89 f8                	mov    %edi,%eax
    1e30:	f7 e6                	mul    %esi
    1e32:	d1 ea                	shr    %edx
    1e34:	8d 04 52             	lea    (%edx,%edx,2),%eax
    1e37:	89 fa                	mov    %edi,%edx
    1e39:	29 c2                	sub    %eax,%edx
    1e3b:	75 cb                	jne    1e08 <linkunlink+0x58>
      close(open("x", O_RDWR | O_CREATE));
    1e3d:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    1e44:	00 
    1e45:	c7 04 24 f1 4d 00 00 	movl   $0x4df1,(%esp)
    1e4c:	e8 d1 21 00 00       	call   4022 <open>
    1e51:	89 04 24             	mov    %eax,(%esp)
    1e54:	e8 b1 21 00 00       	call   400a <close>
  for(i = 0; i < 100; i++){
    1e59:	83 eb 01             	sub    $0x1,%ebx
    1e5c:	75 c4                	jne    1e22 <linkunlink+0x72>
  if(pid)
    1e5e:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    wait(0);
    1e61:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid)
    1e68:	85 c0                	test   %eax,%eax
    1e6a:	74 5d                	je     1ec9 <linkunlink+0x119>
    wait(0);
    1e6c:	e8 79 21 00 00       	call   3fea <wait>
  printf(1, "linkunlink ok\n");
    1e71:	c7 44 24 04 79 4b 00 	movl   $0x4b79,0x4(%esp)
    1e78:	00 
    1e79:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1e80:	e8 ab 22 00 00       	call   4130 <printf>
}
    1e85:	83 c4 1c             	add    $0x1c,%esp
    1e88:	5b                   	pop    %ebx
    1e89:	5e                   	pop    %esi
    1e8a:	5f                   	pop    %edi
    1e8b:	5d                   	pop    %ebp
    1e8c:	c3                   	ret    
    1e8d:	8d 76 00             	lea    0x0(%esi),%esi
      link("cat", "x");
    1e90:	c7 44 24 04 f1 4d 00 	movl   $0x4df1,0x4(%esp)
    1e97:	00 
    1e98:	c7 04 24 75 4b 00 00 	movl   $0x4b75,(%esp)
    1e9f:	e8 9e 21 00 00       	call   4042 <link>
    1ea4:	e9 74 ff ff ff       	jmp    1e1d <linkunlink+0x6d>
    printf(1, "fork failed\n");
    1ea9:	c7 44 24 04 d9 53 00 	movl   $0x53d9,0x4(%esp)
    1eb0:	00 
    1eb1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1eb8:	e8 73 22 00 00       	call   4130 <printf>
    exit(0);
    1ebd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1ec4:	e8 19 21 00 00       	call   3fe2 <exit>
    exit(0);
    1ec9:	e8 14 21 00 00       	call   3fe2 <exit>
    1ece:	66 90                	xchg   %ax,%ax

00001ed0 <bigdir>:
{
    1ed0:	55                   	push   %ebp
    1ed1:	89 e5                	mov    %esp,%ebp
    1ed3:	56                   	push   %esi
    1ed4:	53                   	push   %ebx
    1ed5:	83 ec 20             	sub    $0x20,%esp
  printf(1, "bigdir test\n");
    1ed8:	c7 44 24 04 88 4b 00 	movl   $0x4b88,0x4(%esp)
    1edf:	00 
    1ee0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ee7:	e8 44 22 00 00       	call   4130 <printf>
  unlink("bd");
    1eec:	c7 04 24 95 4b 00 00 	movl   $0x4b95,(%esp)
    1ef3:	e8 3a 21 00 00       	call   4032 <unlink>
  fd = open("bd", O_CREATE);
    1ef8:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    1eff:	00 
    1f00:	c7 04 24 95 4b 00 00 	movl   $0x4b95,(%esp)
    1f07:	e8 16 21 00 00       	call   4022 <open>
  if(fd < 0){
    1f0c:	85 c0                	test   %eax,%eax
    1f0e:	0f 88 f4 00 00 00    	js     2008 <bigdir+0x138>
  close(fd);
    1f14:	89 04 24             	mov    %eax,(%esp)
  for(i = 0; i < 500; i++){
    1f17:	31 db                	xor    %ebx,%ebx
  close(fd);
    1f19:	e8 ec 20 00 00       	call   400a <close>
    1f1e:	8d 75 ee             	lea    -0x12(%ebp),%esi
    1f21:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1f28:	89 d8                	mov    %ebx,%eax
    1f2a:	c1 f8 06             	sar    $0x6,%eax
    1f2d:	83 c0 30             	add    $0x30,%eax
    1f30:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f33:	89 d8                	mov    %ebx,%eax
    1f35:	83 e0 3f             	and    $0x3f,%eax
    1f38:	83 c0 30             	add    $0x30,%eax
    if(link("bd", name) != 0){
    1f3b:	89 74 24 04          	mov    %esi,0x4(%esp)
    1f3f:	c7 04 24 95 4b 00 00 	movl   $0x4b95,(%esp)
    name[0] = 'x';
    1f46:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1f4a:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1f4d:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(link("bd", name) != 0){
    1f51:	e8 ec 20 00 00       	call   4042 <link>
    1f56:	85 c0                	test   %eax,%eax
    1f58:	75 6e                	jne    1fc8 <bigdir+0xf8>
  for(i = 0; i < 500; i++){
    1f5a:	83 c3 01             	add    $0x1,%ebx
    1f5d:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1f63:	75 c3                	jne    1f28 <bigdir+0x58>
  unlink("bd");
    1f65:	c7 04 24 95 4b 00 00 	movl   $0x4b95,(%esp)
  for(i = 0; i < 500; i++){
    1f6c:	66 31 db             	xor    %bx,%bx
  unlink("bd");
    1f6f:	e8 be 20 00 00       	call   4032 <unlink>
    1f74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    name[1] = '0' + (i / 64);
    1f78:	89 d8                	mov    %ebx,%eax
    1f7a:	c1 f8 06             	sar    $0x6,%eax
    1f7d:	83 c0 30             	add    $0x30,%eax
    1f80:	88 45 ef             	mov    %al,-0x11(%ebp)
    name[2] = '0' + (i % 64);
    1f83:	89 d8                	mov    %ebx,%eax
    1f85:	83 e0 3f             	and    $0x3f,%eax
    1f88:	83 c0 30             	add    $0x30,%eax
    if(unlink(name) != 0){
    1f8b:	89 34 24             	mov    %esi,(%esp)
    name[0] = 'x';
    1f8e:	c6 45 ee 78          	movb   $0x78,-0x12(%ebp)
    name[2] = '0' + (i % 64);
    1f92:	88 45 f0             	mov    %al,-0x10(%ebp)
    name[3] = '\0';
    1f95:	c6 45 f1 00          	movb   $0x0,-0xf(%ebp)
    if(unlink(name) != 0){
    1f99:	e8 94 20 00 00       	call   4032 <unlink>
    1f9e:	85 c0                	test   %eax,%eax
    1fa0:	75 46                	jne    1fe8 <bigdir+0x118>
  for(i = 0; i < 500; i++){
    1fa2:	83 c3 01             	add    $0x1,%ebx
    1fa5:	81 fb f4 01 00 00    	cmp    $0x1f4,%ebx
    1fab:	75 cb                	jne    1f78 <bigdir+0xa8>
  printf(1, "bigdir ok\n");
    1fad:	c7 44 24 04 d7 4b 00 	movl   $0x4bd7,0x4(%esp)
    1fb4:	00 
    1fb5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fbc:	e8 6f 21 00 00       	call   4130 <printf>
}
    1fc1:	83 c4 20             	add    $0x20,%esp
    1fc4:	5b                   	pop    %ebx
    1fc5:	5e                   	pop    %esi
    1fc6:	5d                   	pop    %ebp
    1fc7:	c3                   	ret    
      printf(1, "bigdir link failed\n");
    1fc8:	c7 44 24 04 ae 4b 00 	movl   $0x4bae,0x4(%esp)
    1fcf:	00 
    1fd0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1fd7:	e8 54 21 00 00       	call   4130 <printf>
      exit(0);
    1fdc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    1fe3:	e8 fa 1f 00 00       	call   3fe2 <exit>
      printf(1, "bigdir unlink failed");
    1fe8:	c7 44 24 04 c2 4b 00 	movl   $0x4bc2,0x4(%esp)
    1fef:	00 
    1ff0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    1ff7:	e8 34 21 00 00       	call   4130 <printf>
      exit(0);
    1ffc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2003:	e8 da 1f 00 00       	call   3fe2 <exit>
    printf(1, "bigdir create failed\n");
    2008:	c7 44 24 04 98 4b 00 	movl   $0x4b98,0x4(%esp)
    200f:	00 
    2010:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2017:	e8 14 21 00 00       	call   4130 <printf>
    exit(0);
    201c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2023:	e8 ba 1f 00 00       	call   3fe2 <exit>
    2028:	90                   	nop
    2029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002030 <subdir>:
{
    2030:	55                   	push   %ebp
    2031:	89 e5                	mov    %esp,%ebp
    2033:	53                   	push   %ebx
    2034:	83 ec 14             	sub    $0x14,%esp
  printf(1, "subdir test\n");
    2037:	c7 44 24 04 e2 4b 00 	movl   $0x4be2,0x4(%esp)
    203e:	00 
    203f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2046:	e8 e5 20 00 00       	call   4130 <printf>
  unlink("ff");
    204b:	c7 04 24 6b 4c 00 00 	movl   $0x4c6b,(%esp)
    2052:	e8 db 1f 00 00       	call   4032 <unlink>
  if(mkdir("dd") != 0){
    2057:	c7 04 24 08 4d 00 00 	movl   $0x4d08,(%esp)
    205e:	e8 e7 1f 00 00       	call   404a <mkdir>
    2063:	85 c0                	test   %eax,%eax
    2065:	0f 85 a1 06 00 00    	jne    270c <subdir+0x6dc>
  fd = open("dd/ff", O_CREATE | O_RDWR);
    206b:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2072:	00 
    2073:	c7 04 24 41 4c 00 00 	movl   $0x4c41,(%esp)
    207a:	e8 a3 1f 00 00       	call   4022 <open>
  if(fd < 0){
    207f:	85 c0                	test   %eax,%eax
  fd = open("dd/ff", O_CREATE | O_RDWR);
    2081:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2083:	0f 88 63 06 00 00    	js     26ec <subdir+0x6bc>
  write(fd, "ff", 2);
    2089:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    2090:	00 
    2091:	c7 44 24 04 6b 4c 00 	movl   $0x4c6b,0x4(%esp)
    2098:	00 
    2099:	89 04 24             	mov    %eax,(%esp)
    209c:	e8 61 1f 00 00       	call   4002 <write>
  close(fd);
    20a1:	89 1c 24             	mov    %ebx,(%esp)
    20a4:	e8 61 1f 00 00       	call   400a <close>
  if(unlink("dd") >= 0){
    20a9:	c7 04 24 08 4d 00 00 	movl   $0x4d08,(%esp)
    20b0:	e8 7d 1f 00 00       	call   4032 <unlink>
    20b5:	85 c0                	test   %eax,%eax
    20b7:	0f 89 0f 06 00 00    	jns    26cc <subdir+0x69c>
  if(mkdir("/dd/dd") != 0){
    20bd:	c7 04 24 1c 4c 00 00 	movl   $0x4c1c,(%esp)
    20c4:	e8 81 1f 00 00       	call   404a <mkdir>
    20c9:	85 c0                	test   %eax,%eax
    20cb:	0f 85 db 05 00 00    	jne    26ac <subdir+0x67c>
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    20d1:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    20d8:	00 
    20d9:	c7 04 24 3e 4c 00 00 	movl   $0x4c3e,(%esp)
    20e0:	e8 3d 1f 00 00       	call   4022 <open>
  if(fd < 0){
    20e5:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ff", O_CREATE | O_RDWR);
    20e7:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    20e9:	0f 88 5d 04 00 00    	js     254c <subdir+0x51c>
  write(fd, "FF", 2);
    20ef:	c7 44 24 08 02 00 00 	movl   $0x2,0x8(%esp)
    20f6:	00 
    20f7:	c7 44 24 04 5f 4c 00 	movl   $0x4c5f,0x4(%esp)
    20fe:	00 
    20ff:	89 04 24             	mov    %eax,(%esp)
    2102:	e8 fb 1e 00 00       	call   4002 <write>
  close(fd);
    2107:	89 1c 24             	mov    %ebx,(%esp)
    210a:	e8 fb 1e 00 00       	call   400a <close>
  fd = open("dd/dd/../ff", 0);
    210f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2116:	00 
    2117:	c7 04 24 62 4c 00 00 	movl   $0x4c62,(%esp)
    211e:	e8 ff 1e 00 00       	call   4022 <open>
  if(fd < 0){
    2123:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/../ff", 0);
    2125:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2127:	0f 88 ff 03 00 00    	js     252c <subdir+0x4fc>
  cc = read(fd, buf, sizeof(buf));
    212d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2134:	00 
    2135:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    213c:	00 
    213d:	89 04 24             	mov    %eax,(%esp)
    2140:	e8 b5 1e 00 00       	call   3ffa <read>
  if(cc != 2 || buf[0] != 'f'){
    2145:	83 f8 02             	cmp    $0x2,%eax
    2148:	0f 85 fe 02 00 00    	jne    244c <subdir+0x41c>
    214e:	80 3d 00 8d 00 00 66 	cmpb   $0x66,0x8d00
    2155:	0f 85 f1 02 00 00    	jne    244c <subdir+0x41c>
  close(fd);
    215b:	89 1c 24             	mov    %ebx,(%esp)
    215e:	e8 a7 1e 00 00       	call   400a <close>
  if(link("dd/dd/ff", "dd/dd/ffff") != 0){
    2163:	c7 44 24 04 a2 4c 00 	movl   $0x4ca2,0x4(%esp)
    216a:	00 
    216b:	c7 04 24 3e 4c 00 00 	movl   $0x4c3e,(%esp)
    2172:	e8 cb 1e 00 00       	call   4042 <link>
    2177:	85 c0                	test   %eax,%eax
    2179:	0f 85 0d 04 00 00    	jne    258c <subdir+0x55c>
  if(unlink("dd/dd/ff") != 0){
    217f:	c7 04 24 3e 4c 00 00 	movl   $0x4c3e,(%esp)
    2186:	e8 a7 1e 00 00       	call   4032 <unlink>
    218b:	85 c0                	test   %eax,%eax
    218d:	0f 85 f9 02 00 00    	jne    248c <subdir+0x45c>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2193:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    219a:	00 
    219b:	c7 04 24 3e 4c 00 00 	movl   $0x4c3e,(%esp)
    21a2:	e8 7b 1e 00 00       	call   4022 <open>
    21a7:	85 c0                	test   %eax,%eax
    21a9:	0f 89 dd 04 00 00    	jns    268c <subdir+0x65c>
  if(chdir("dd") != 0){
    21af:	c7 04 24 08 4d 00 00 	movl   $0x4d08,(%esp)
    21b6:	e8 97 1e 00 00       	call   4052 <chdir>
    21bb:	85 c0                	test   %eax,%eax
    21bd:	0f 85 a9 04 00 00    	jne    266c <subdir+0x63c>
  if(chdir("dd/../../dd") != 0){
    21c3:	c7 04 24 d6 4c 00 00 	movl   $0x4cd6,(%esp)
    21ca:	e8 83 1e 00 00       	call   4052 <chdir>
    21cf:	85 c0                	test   %eax,%eax
    21d1:	0f 85 95 02 00 00    	jne    246c <subdir+0x43c>
  if(chdir("dd/../../../dd") != 0){
    21d7:	c7 04 24 fc 4c 00 00 	movl   $0x4cfc,(%esp)
    21de:	e8 6f 1e 00 00       	call   4052 <chdir>
    21e3:	85 c0                	test   %eax,%eax
    21e5:	0f 85 81 02 00 00    	jne    246c <subdir+0x43c>
  if(chdir("./..") != 0){
    21eb:	c7 04 24 0b 4d 00 00 	movl   $0x4d0b,(%esp)
    21f2:	e8 5b 1e 00 00       	call   4052 <chdir>
    21f7:	85 c0                	test   %eax,%eax
    21f9:	0f 85 6d 03 00 00    	jne    256c <subdir+0x53c>
  fd = open("dd/dd/ffff", 0);
    21ff:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2206:	00 
    2207:	c7 04 24 a2 4c 00 00 	movl   $0x4ca2,(%esp)
    220e:	e8 0f 1e 00 00       	call   4022 <open>
  if(fd < 0){
    2213:	85 c0                	test   %eax,%eax
  fd = open("dd/dd/ffff", 0);
    2215:	89 c3                	mov    %eax,%ebx
  if(fd < 0){
    2217:	0f 88 6f 06 00 00    	js     288c <subdir+0x85c>
  if(read(fd, buf, sizeof(buf)) != 2){
    221d:	c7 44 24 08 00 20 00 	movl   $0x2000,0x8(%esp)
    2224:	00 
    2225:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    222c:	00 
    222d:	89 04 24             	mov    %eax,(%esp)
    2230:	e8 c5 1d 00 00       	call   3ffa <read>
    2235:	83 f8 02             	cmp    $0x2,%eax
    2238:	0f 85 2e 06 00 00    	jne    286c <subdir+0x83c>
  close(fd);
    223e:	89 1c 24             	mov    %ebx,(%esp)
    2241:	e8 c4 1d 00 00       	call   400a <close>
  if(open("dd/dd/ff", O_RDONLY) >= 0){
    2246:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    224d:	00 
    224e:	c7 04 24 3e 4c 00 00 	movl   $0x4c3e,(%esp)
    2255:	e8 c8 1d 00 00       	call   4022 <open>
    225a:	85 c0                	test   %eax,%eax
    225c:	0f 89 6a 02 00 00    	jns    24cc <subdir+0x49c>
  if(open("dd/ff/ff", O_CREATE|O_RDWR) >= 0){
    2262:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2269:	00 
    226a:	c7 04 24 56 4d 00 00 	movl   $0x4d56,(%esp)
    2271:	e8 ac 1d 00 00       	call   4022 <open>
    2276:	85 c0                	test   %eax,%eax
    2278:	0f 89 2e 02 00 00    	jns    24ac <subdir+0x47c>
  if(open("dd/xx/ff", O_CREATE|O_RDWR) >= 0){
    227e:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    2285:	00 
    2286:	c7 04 24 7b 4d 00 00 	movl   $0x4d7b,(%esp)
    228d:	e8 90 1d 00 00       	call   4022 <open>
    2292:	85 c0                	test   %eax,%eax
    2294:	0f 89 b2 03 00 00    	jns    264c <subdir+0x61c>
  if(open("dd", O_CREATE) >= 0){
    229a:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    22a1:	00 
    22a2:	c7 04 24 08 4d 00 00 	movl   $0x4d08,(%esp)
    22a9:	e8 74 1d 00 00       	call   4022 <open>
    22ae:	85 c0                	test   %eax,%eax
    22b0:	0f 89 76 03 00 00    	jns    262c <subdir+0x5fc>
  if(open("dd", O_RDWR) >= 0){
    22b6:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    22bd:	00 
    22be:	c7 04 24 08 4d 00 00 	movl   $0x4d08,(%esp)
    22c5:	e8 58 1d 00 00       	call   4022 <open>
    22ca:	85 c0                	test   %eax,%eax
    22cc:	0f 89 3a 03 00 00    	jns    260c <subdir+0x5dc>
  if(open("dd", O_WRONLY) >= 0){
    22d2:	c7 44 24 04 01 00 00 	movl   $0x1,0x4(%esp)
    22d9:	00 
    22da:	c7 04 24 08 4d 00 00 	movl   $0x4d08,(%esp)
    22e1:	e8 3c 1d 00 00       	call   4022 <open>
    22e6:	85 c0                	test   %eax,%eax
    22e8:	0f 89 fe 02 00 00    	jns    25ec <subdir+0x5bc>
  if(link("dd/ff/ff", "dd/dd/xx") == 0){
    22ee:	c7 44 24 04 ea 4d 00 	movl   $0x4dea,0x4(%esp)
    22f5:	00 
    22f6:	c7 04 24 56 4d 00 00 	movl   $0x4d56,(%esp)
    22fd:	e8 40 1d 00 00       	call   4042 <link>
    2302:	85 c0                	test   %eax,%eax
    2304:	0f 84 c2 02 00 00    	je     25cc <subdir+0x59c>
  if(link("dd/xx/ff", "dd/dd/xx") == 0){
    230a:	c7 44 24 04 ea 4d 00 	movl   $0x4dea,0x4(%esp)
    2311:	00 
    2312:	c7 04 24 7b 4d 00 00 	movl   $0x4d7b,(%esp)
    2319:	e8 24 1d 00 00       	call   4042 <link>
    231e:	85 c0                	test   %eax,%eax
    2320:	0f 84 86 02 00 00    	je     25ac <subdir+0x57c>
  if(link("dd/ff", "dd/dd/ffff") == 0){
    2326:	c7 44 24 04 a2 4c 00 	movl   $0x4ca2,0x4(%esp)
    232d:	00 
    232e:	c7 04 24 41 4c 00 00 	movl   $0x4c41,(%esp)
    2335:	e8 08 1d 00 00       	call   4042 <link>
    233a:	85 c0                	test   %eax,%eax
    233c:	0f 84 ca 01 00 00    	je     250c <subdir+0x4dc>
  if(mkdir("dd/ff/ff") == 0){
    2342:	c7 04 24 56 4d 00 00 	movl   $0x4d56,(%esp)
    2349:	e8 fc 1c 00 00       	call   404a <mkdir>
    234e:	85 c0                	test   %eax,%eax
    2350:	0f 84 96 01 00 00    	je     24ec <subdir+0x4bc>
  if(mkdir("dd/xx/ff") == 0){
    2356:	c7 04 24 7b 4d 00 00 	movl   $0x4d7b,(%esp)
    235d:	e8 e8 1c 00 00       	call   404a <mkdir>
    2362:	85 c0                	test   %eax,%eax
    2364:	0f 84 e2 04 00 00    	je     284c <subdir+0x81c>
  if(mkdir("dd/dd/ffff") == 0){
    236a:	c7 04 24 a2 4c 00 00 	movl   $0x4ca2,(%esp)
    2371:	e8 d4 1c 00 00       	call   404a <mkdir>
    2376:	85 c0                	test   %eax,%eax
    2378:	0f 84 ae 04 00 00    	je     282c <subdir+0x7fc>
  if(unlink("dd/xx/ff") == 0){
    237e:	c7 04 24 7b 4d 00 00 	movl   $0x4d7b,(%esp)
    2385:	e8 a8 1c 00 00       	call   4032 <unlink>
    238a:	85 c0                	test   %eax,%eax
    238c:	0f 84 7a 04 00 00    	je     280c <subdir+0x7dc>
  if(unlink("dd/ff/ff") == 0){
    2392:	c7 04 24 56 4d 00 00 	movl   $0x4d56,(%esp)
    2399:	e8 94 1c 00 00       	call   4032 <unlink>
    239e:	85 c0                	test   %eax,%eax
    23a0:	0f 84 46 04 00 00    	je     27ec <subdir+0x7bc>
  if(chdir("dd/ff") == 0){
    23a6:	c7 04 24 41 4c 00 00 	movl   $0x4c41,(%esp)
    23ad:	e8 a0 1c 00 00       	call   4052 <chdir>
    23b2:	85 c0                	test   %eax,%eax
    23b4:	0f 84 12 04 00 00    	je     27cc <subdir+0x79c>
  if(chdir("dd/xx") == 0){
    23ba:	c7 04 24 ed 4d 00 00 	movl   $0x4ded,(%esp)
    23c1:	e8 8c 1c 00 00       	call   4052 <chdir>
    23c6:	85 c0                	test   %eax,%eax
    23c8:	0f 84 de 03 00 00    	je     27ac <subdir+0x77c>
  if(unlink("dd/dd/ffff") != 0){
    23ce:	c7 04 24 a2 4c 00 00 	movl   $0x4ca2,(%esp)
    23d5:	e8 58 1c 00 00       	call   4032 <unlink>
    23da:	85 c0                	test   %eax,%eax
    23dc:	0f 85 aa 00 00 00    	jne    248c <subdir+0x45c>
  if(unlink("dd/ff") != 0){
    23e2:	c7 04 24 41 4c 00 00 	movl   $0x4c41,(%esp)
    23e9:	e8 44 1c 00 00       	call   4032 <unlink>
    23ee:	85 c0                	test   %eax,%eax
    23f0:	0f 85 96 03 00 00    	jne    278c <subdir+0x75c>
  if(unlink("dd") == 0){
    23f6:	c7 04 24 08 4d 00 00 	movl   $0x4d08,(%esp)
    23fd:	e8 30 1c 00 00       	call   4032 <unlink>
    2402:	85 c0                	test   %eax,%eax
    2404:	0f 84 62 03 00 00    	je     276c <subdir+0x73c>
  if(unlink("dd/dd") < 0){
    240a:	c7 04 24 1d 4c 00 00 	movl   $0x4c1d,(%esp)
    2411:	e8 1c 1c 00 00       	call   4032 <unlink>
    2416:	85 c0                	test   %eax,%eax
    2418:	0f 88 2e 03 00 00    	js     274c <subdir+0x71c>
  if(unlink("dd") < 0){
    241e:	c7 04 24 08 4d 00 00 	movl   $0x4d08,(%esp)
    2425:	e8 08 1c 00 00       	call   4032 <unlink>
    242a:	85 c0                	test   %eax,%eax
    242c:	0f 88 fa 02 00 00    	js     272c <subdir+0x6fc>
  printf(1, "subdir ok\n");
    2432:	c7 44 24 04 ea 4e 00 	movl   $0x4eea,0x4(%esp)
    2439:	00 
    243a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2441:	e8 ea 1c 00 00       	call   4130 <printf>
}
    2446:	83 c4 14             	add    $0x14,%esp
    2449:	5b                   	pop    %ebx
    244a:	5d                   	pop    %ebp
    244b:	c3                   	ret    
    printf(1, "dd/dd/../ff wrong content\n");
    244c:	c7 44 24 04 87 4c 00 	movl   $0x4c87,0x4(%esp)
    2453:	00 
    2454:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    245b:	e8 d0 1c 00 00       	call   4130 <printf>
    exit(0);
    2460:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2467:	e8 76 1b 00 00       	call   3fe2 <exit>
    printf(1, "chdir dd/../../dd failed\n");
    246c:	c7 44 24 04 e2 4c 00 	movl   $0x4ce2,0x4(%esp)
    2473:	00 
    2474:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    247b:	e8 b0 1c 00 00       	call   4130 <printf>
    exit(0);
    2480:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2487:	e8 56 1b 00 00       	call   3fe2 <exit>
    printf(1, "unlink dd/dd/ff failed\n");
    248c:	c7 44 24 04 ad 4c 00 	movl   $0x4cad,0x4(%esp)
    2493:	00 
    2494:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    249b:	e8 90 1c 00 00       	call   4130 <printf>
    exit(0);
    24a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24a7:	e8 36 1b 00 00       	call   3fe2 <exit>
    printf(1, "create dd/ff/ff succeeded!\n");
    24ac:	c7 44 24 04 5f 4d 00 	movl   $0x4d5f,0x4(%esp)
    24b3:	00 
    24b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24bb:	e8 70 1c 00 00       	call   4130 <printf>
    exit(0);
    24c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24c7:	e8 16 1b 00 00       	call   3fe2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded!\n");
    24cc:	c7 44 24 04 44 57 00 	movl   $0x5744,0x4(%esp)
    24d3:	00 
    24d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24db:	e8 50 1c 00 00       	call   4130 <printf>
    exit(0);
    24e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    24e7:	e8 f6 1a 00 00       	call   3fe2 <exit>
    printf(1, "mkdir dd/ff/ff succeeded!\n");
    24ec:	c7 44 24 04 f3 4d 00 	movl   $0x4df3,0x4(%esp)
    24f3:	00 
    24f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    24fb:	e8 30 1c 00 00       	call   4130 <printf>
    exit(0);
    2500:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2507:	e8 d6 1a 00 00       	call   3fe2 <exit>
    printf(1, "link dd/ff dd/dd/ffff succeeded!\n");
    250c:	c7 44 24 04 b4 57 00 	movl   $0x57b4,0x4(%esp)
    2513:	00 
    2514:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    251b:	e8 10 1c 00 00       	call   4130 <printf>
    exit(0);
    2520:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2527:	e8 b6 1a 00 00       	call   3fe2 <exit>
    printf(1, "open dd/dd/../ff failed\n");
    252c:	c7 44 24 04 6e 4c 00 	movl   $0x4c6e,0x4(%esp)
    2533:	00 
    2534:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    253b:	e8 f0 1b 00 00       	call   4130 <printf>
    exit(0);
    2540:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2547:	e8 96 1a 00 00       	call   3fe2 <exit>
    printf(1, "create dd/dd/ff failed\n");
    254c:	c7 44 24 04 47 4c 00 	movl   $0x4c47,0x4(%esp)
    2553:	00 
    2554:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    255b:	e8 d0 1b 00 00       	call   4130 <printf>
    exit(0);
    2560:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2567:	e8 76 1a 00 00       	call   3fe2 <exit>
    printf(1, "chdir ./.. failed\n");
    256c:	c7 44 24 04 10 4d 00 	movl   $0x4d10,0x4(%esp)
    2573:	00 
    2574:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    257b:	e8 b0 1b 00 00       	call   4130 <printf>
    exit(0);
    2580:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2587:	e8 56 1a 00 00       	call   3fe2 <exit>
    printf(1, "link dd/dd/ff dd/dd/ffff failed\n");
    258c:	c7 44 24 04 fc 56 00 	movl   $0x56fc,0x4(%esp)
    2593:	00 
    2594:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    259b:	e8 90 1b 00 00       	call   4130 <printf>
    exit(0);
    25a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25a7:	e8 36 1a 00 00       	call   3fe2 <exit>
    printf(1, "link dd/xx/ff dd/dd/xx succeeded!\n");
    25ac:	c7 44 24 04 90 57 00 	movl   $0x5790,0x4(%esp)
    25b3:	00 
    25b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25bb:	e8 70 1b 00 00       	call   4130 <printf>
    exit(0);
    25c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25c7:	e8 16 1a 00 00       	call   3fe2 <exit>
    printf(1, "link dd/ff/ff dd/dd/xx succeeded!\n");
    25cc:	c7 44 24 04 6c 57 00 	movl   $0x576c,0x4(%esp)
    25d3:	00 
    25d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25db:	e8 50 1b 00 00       	call   4130 <printf>
    exit(0);
    25e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    25e7:	e8 f6 19 00 00       	call   3fe2 <exit>
    printf(1, "open dd wronly succeeded!\n");
    25ec:	c7 44 24 04 cf 4d 00 	movl   $0x4dcf,0x4(%esp)
    25f3:	00 
    25f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    25fb:	e8 30 1b 00 00       	call   4130 <printf>
    exit(0);
    2600:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2607:	e8 d6 19 00 00       	call   3fe2 <exit>
    printf(1, "open dd rdwr succeeded!\n");
    260c:	c7 44 24 04 b6 4d 00 	movl   $0x4db6,0x4(%esp)
    2613:	00 
    2614:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    261b:	e8 10 1b 00 00       	call   4130 <printf>
    exit(0);
    2620:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2627:	e8 b6 19 00 00       	call   3fe2 <exit>
    printf(1, "create dd succeeded!\n");
    262c:	c7 44 24 04 a0 4d 00 	movl   $0x4da0,0x4(%esp)
    2633:	00 
    2634:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    263b:	e8 f0 1a 00 00       	call   4130 <printf>
    exit(0);
    2640:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2647:	e8 96 19 00 00       	call   3fe2 <exit>
    printf(1, "create dd/xx/ff succeeded!\n");
    264c:	c7 44 24 04 84 4d 00 	movl   $0x4d84,0x4(%esp)
    2653:	00 
    2654:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    265b:	e8 d0 1a 00 00       	call   4130 <printf>
    exit(0);
    2660:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2667:	e8 76 19 00 00       	call   3fe2 <exit>
    printf(1, "chdir dd failed\n");
    266c:	c7 44 24 04 c5 4c 00 	movl   $0x4cc5,0x4(%esp)
    2673:	00 
    2674:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    267b:	e8 b0 1a 00 00       	call   4130 <printf>
    exit(0);
    2680:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2687:	e8 56 19 00 00       	call   3fe2 <exit>
    printf(1, "open (unlinked) dd/dd/ff succeeded\n");
    268c:	c7 44 24 04 20 57 00 	movl   $0x5720,0x4(%esp)
    2693:	00 
    2694:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    269b:	e8 90 1a 00 00       	call   4130 <printf>
    exit(0);
    26a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26a7:	e8 36 19 00 00       	call   3fe2 <exit>
    printf(1, "subdir mkdir dd/dd failed\n");
    26ac:	c7 44 24 04 23 4c 00 	movl   $0x4c23,0x4(%esp)
    26b3:	00 
    26b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26bb:	e8 70 1a 00 00       	call   4130 <printf>
    exit(0);
    26c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26c7:	e8 16 19 00 00       	call   3fe2 <exit>
    printf(1, "unlink dd (non-empty dir) succeeded!\n");
    26cc:	c7 44 24 04 d4 56 00 	movl   $0x56d4,0x4(%esp)
    26d3:	00 
    26d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26db:	e8 50 1a 00 00       	call   4130 <printf>
    exit(0);
    26e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    26e7:	e8 f6 18 00 00       	call   3fe2 <exit>
    printf(1, "create dd/ff failed\n");
    26ec:	c7 44 24 04 07 4c 00 	movl   $0x4c07,0x4(%esp)
    26f3:	00 
    26f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    26fb:	e8 30 1a 00 00       	call   4130 <printf>
    exit(0);
    2700:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2707:	e8 d6 18 00 00       	call   3fe2 <exit>
    printf(1, "subdir mkdir dd failed\n");
    270c:	c7 44 24 04 ef 4b 00 	movl   $0x4bef,0x4(%esp)
    2713:	00 
    2714:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    271b:	e8 10 1a 00 00       	call   4130 <printf>
    exit(0);
    2720:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2727:	e8 b6 18 00 00       	call   3fe2 <exit>
    printf(1, "unlink dd failed\n");
    272c:	c7 44 24 04 d8 4e 00 	movl   $0x4ed8,0x4(%esp)
    2733:	00 
    2734:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    273b:	e8 f0 19 00 00       	call   4130 <printf>
    exit(0);
    2740:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2747:	e8 96 18 00 00       	call   3fe2 <exit>
    printf(1, "unlink dd/dd failed\n");
    274c:	c7 44 24 04 c3 4e 00 	movl   $0x4ec3,0x4(%esp)
    2753:	00 
    2754:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    275b:	e8 d0 19 00 00       	call   4130 <printf>
    exit(0);
    2760:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2767:	e8 76 18 00 00       	call   3fe2 <exit>
    printf(1, "unlink non-empty dd succeeded!\n");
    276c:	c7 44 24 04 d8 57 00 	movl   $0x57d8,0x4(%esp)
    2773:	00 
    2774:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    277b:	e8 b0 19 00 00       	call   4130 <printf>
    exit(0);
    2780:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2787:	e8 56 18 00 00       	call   3fe2 <exit>
    printf(1, "unlink dd/ff failed\n");
    278c:	c7 44 24 04 ae 4e 00 	movl   $0x4eae,0x4(%esp)
    2793:	00 
    2794:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    279b:	e8 90 19 00 00       	call   4130 <printf>
    exit(0);
    27a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27a7:	e8 36 18 00 00       	call   3fe2 <exit>
    printf(1, "chdir dd/xx succeeded!\n");
    27ac:	c7 44 24 04 96 4e 00 	movl   $0x4e96,0x4(%esp)
    27b3:	00 
    27b4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27bb:	e8 70 19 00 00       	call   4130 <printf>
    exit(0);
    27c0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27c7:	e8 16 18 00 00       	call   3fe2 <exit>
    printf(1, "chdir dd/ff succeeded!\n");
    27cc:	c7 44 24 04 7e 4e 00 	movl   $0x4e7e,0x4(%esp)
    27d3:	00 
    27d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27db:	e8 50 19 00 00       	call   4130 <printf>
    exit(0);
    27e0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    27e7:	e8 f6 17 00 00       	call   3fe2 <exit>
    printf(1, "unlink dd/ff/ff succeeded!\n");
    27ec:	c7 44 24 04 62 4e 00 	movl   $0x4e62,0x4(%esp)
    27f3:	00 
    27f4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    27fb:	e8 30 19 00 00       	call   4130 <printf>
    exit(0);
    2800:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2807:	e8 d6 17 00 00       	call   3fe2 <exit>
    printf(1, "unlink dd/xx/ff succeeded!\n");
    280c:	c7 44 24 04 46 4e 00 	movl   $0x4e46,0x4(%esp)
    2813:	00 
    2814:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    281b:	e8 10 19 00 00       	call   4130 <printf>
    exit(0);
    2820:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2827:	e8 b6 17 00 00       	call   3fe2 <exit>
    printf(1, "mkdir dd/dd/ffff succeeded!\n");
    282c:	c7 44 24 04 29 4e 00 	movl   $0x4e29,0x4(%esp)
    2833:	00 
    2834:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    283b:	e8 f0 18 00 00       	call   4130 <printf>
    exit(0);
    2840:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2847:	e8 96 17 00 00       	call   3fe2 <exit>
    printf(1, "mkdir dd/xx/ff succeeded!\n");
    284c:	c7 44 24 04 0e 4e 00 	movl   $0x4e0e,0x4(%esp)
    2853:	00 
    2854:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    285b:	e8 d0 18 00 00       	call   4130 <printf>
    exit(0);
    2860:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2867:	e8 76 17 00 00       	call   3fe2 <exit>
    printf(1, "read dd/dd/ffff wrong len\n");
    286c:	c7 44 24 04 3b 4d 00 	movl   $0x4d3b,0x4(%esp)
    2873:	00 
    2874:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    287b:	e8 b0 18 00 00       	call   4130 <printf>
    exit(0);
    2880:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2887:	e8 56 17 00 00       	call   3fe2 <exit>
    printf(1, "open dd/dd/ffff failed\n");
    288c:	c7 44 24 04 23 4d 00 	movl   $0x4d23,0x4(%esp)
    2893:	00 
    2894:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    289b:	e8 90 18 00 00       	call   4130 <printf>
    exit(0);
    28a0:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    28a7:	e8 36 17 00 00       	call   3fe2 <exit>
    28ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000028b0 <bigwrite>:
{
    28b0:	55                   	push   %ebp
    28b1:	89 e5                	mov    %esp,%ebp
    28b3:	56                   	push   %esi
    28b4:	53                   	push   %ebx
  for(sz = 499; sz < 12*512; sz += 471){
    28b5:	bb f3 01 00 00       	mov    $0x1f3,%ebx
{
    28ba:	83 ec 10             	sub    $0x10,%esp
  printf(1, "bigwrite test\n");
    28bd:	c7 44 24 04 f5 4e 00 	movl   $0x4ef5,0x4(%esp)
    28c4:	00 
    28c5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    28cc:	e8 5f 18 00 00       	call   4130 <printf>
  unlink("bigwrite");
    28d1:	c7 04 24 04 4f 00 00 	movl   $0x4f04,(%esp)
    28d8:	e8 55 17 00 00       	call   4032 <unlink>
    28dd:	8d 76 00             	lea    0x0(%esi),%esi
    fd = open("bigwrite", O_CREATE | O_RDWR);
    28e0:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    28e7:	00 
    28e8:	c7 04 24 04 4f 00 00 	movl   $0x4f04,(%esp)
    28ef:	e8 2e 17 00 00       	call   4022 <open>
    if(fd < 0){
    28f4:	85 c0                	test   %eax,%eax
    fd = open("bigwrite", O_CREATE | O_RDWR);
    28f6:	89 c6                	mov    %eax,%esi
    if(fd < 0){
    28f8:	0f 88 95 00 00 00    	js     2993 <bigwrite+0xe3>
      int cc = write(fd, buf, sz);
    28fe:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2902:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    2909:	00 
    290a:	89 04 24             	mov    %eax,(%esp)
    290d:	e8 f0 16 00 00       	call   4002 <write>
      if(cc != sz){
    2912:	39 d8                	cmp    %ebx,%eax
    2914:	75 55                	jne    296b <bigwrite+0xbb>
      int cc = write(fd, buf, sz);
    2916:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    291a:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    2921:	00 
    2922:	89 34 24             	mov    %esi,(%esp)
    2925:	e8 d8 16 00 00       	call   4002 <write>
      if(cc != sz){
    292a:	39 c3                	cmp    %eax,%ebx
    292c:	75 3d                	jne    296b <bigwrite+0xbb>
    close(fd);
    292e:	89 34 24             	mov    %esi,(%esp)
  for(sz = 499; sz < 12*512; sz += 471){
    2931:	81 c3 d7 01 00 00    	add    $0x1d7,%ebx
    close(fd);
    2937:	e8 ce 16 00 00       	call   400a <close>
    unlink("bigwrite");
    293c:	c7 04 24 04 4f 00 00 	movl   $0x4f04,(%esp)
    2943:	e8 ea 16 00 00       	call   4032 <unlink>
  for(sz = 499; sz < 12*512; sz += 471){
    2948:	81 fb 07 18 00 00    	cmp    $0x1807,%ebx
    294e:	75 90                	jne    28e0 <bigwrite+0x30>
  printf(1, "bigwrite ok\n");
    2950:	c7 44 24 04 37 4f 00 	movl   $0x4f37,0x4(%esp)
    2957:	00 
    2958:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    295f:	e8 cc 17 00 00       	call   4130 <printf>
}
    2964:	83 c4 10             	add    $0x10,%esp
    2967:	5b                   	pop    %ebx
    2968:	5e                   	pop    %esi
    2969:	5d                   	pop    %ebp
    296a:	c3                   	ret    
        printf(1, "write(%d) ret %d\n", sz, cc);
    296b:	89 44 24 0c          	mov    %eax,0xc(%esp)
    296f:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    2973:	c7 44 24 04 25 4f 00 	movl   $0x4f25,0x4(%esp)
    297a:	00 
    297b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2982:	e8 a9 17 00 00       	call   4130 <printf>
        exit(0);
    2987:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    298e:	e8 4f 16 00 00       	call   3fe2 <exit>
      printf(1, "cannot create bigwrite\n");
    2993:	c7 44 24 04 0d 4f 00 	movl   $0x4f0d,0x4(%esp)
    299a:	00 
    299b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29a2:	e8 89 17 00 00       	call   4130 <printf>
      exit(0);
    29a7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    29ae:	e8 2f 16 00 00       	call   3fe2 <exit>
    29b3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    29b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000029c0 <bigfile>:
{
    29c0:	55                   	push   %ebp
    29c1:	89 e5                	mov    %esp,%ebp
    29c3:	57                   	push   %edi
    29c4:	56                   	push   %esi
    29c5:	53                   	push   %ebx
    29c6:	83 ec 1c             	sub    $0x1c,%esp
  printf(1, "bigfile test\n");
    29c9:	c7 44 24 04 44 4f 00 	movl   $0x4f44,0x4(%esp)
    29d0:	00 
    29d1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29d8:	e8 53 17 00 00       	call   4130 <printf>
  unlink("bigfile");
    29dd:	c7 04 24 60 4f 00 00 	movl   $0x4f60,(%esp)
    29e4:	e8 49 16 00 00       	call   4032 <unlink>
  fd = open("bigfile", O_CREATE | O_RDWR);
    29e9:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    29f0:	00 
    29f1:	c7 04 24 60 4f 00 00 	movl   $0x4f60,(%esp)
    29f8:	e8 25 16 00 00       	call   4022 <open>
  if(fd < 0){
    29fd:	85 c0                	test   %eax,%eax
  fd = open("bigfile", O_CREATE | O_RDWR);
    29ff:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2a01:	0f 88 a2 01 00 00    	js     2ba9 <bigfile+0x1e9>
    2a07:	31 db                	xor    %ebx,%ebx
    2a09:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    memset(buf, i, 600);
    2a10:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2a17:	00 
    2a18:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    2a1c:	c7 04 24 00 8d 00 00 	movl   $0x8d00,(%esp)
    2a23:	e8 48 14 00 00       	call   3e70 <memset>
    if(write(fd, buf, 600) != 600){
    2a28:	c7 44 24 08 58 02 00 	movl   $0x258,0x8(%esp)
    2a2f:	00 
    2a30:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    2a37:	00 
    2a38:	89 34 24             	mov    %esi,(%esp)
    2a3b:	e8 c2 15 00 00       	call   4002 <write>
    2a40:	3d 58 02 00 00       	cmp    $0x258,%eax
    2a45:	0f 85 1e 01 00 00    	jne    2b69 <bigfile+0x1a9>
  for(i = 0; i < 20; i++){
    2a4b:	83 c3 01             	add    $0x1,%ebx
    2a4e:	83 fb 14             	cmp    $0x14,%ebx
    2a51:	75 bd                	jne    2a10 <bigfile+0x50>
  close(fd);
    2a53:	89 34 24             	mov    %esi,(%esp)
    2a56:	e8 af 15 00 00       	call   400a <close>
  fd = open("bigfile", 0);
    2a5b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2a62:	00 
    2a63:	c7 04 24 60 4f 00 00 	movl   $0x4f60,(%esp)
    2a6a:	e8 b3 15 00 00       	call   4022 <open>
  if(fd < 0){
    2a6f:	85 c0                	test   %eax,%eax
  fd = open("bigfile", 0);
    2a71:	89 c6                	mov    %eax,%esi
  if(fd < 0){
    2a73:	0f 88 10 01 00 00    	js     2b89 <bigfile+0x1c9>
    2a79:	31 db                	xor    %ebx,%ebx
    2a7b:	31 ff                	xor    %edi,%edi
    2a7d:	eb 2f                	jmp    2aae <bigfile+0xee>
    2a7f:	90                   	nop
    if(cc != 300){
    2a80:	3d 2c 01 00 00       	cmp    $0x12c,%eax
    2a85:	0f 85 9e 00 00 00    	jne    2b29 <bigfile+0x169>
    if(buf[0] != i/2 || buf[299] != i/2){
    2a8b:	0f be 05 00 8d 00 00 	movsbl 0x8d00,%eax
    2a92:	89 fa                	mov    %edi,%edx
    2a94:	d1 fa                	sar    %edx
    2a96:	39 d0                	cmp    %edx,%eax
    2a98:	75 6f                	jne    2b09 <bigfile+0x149>
    2a9a:	0f be 15 2b 8e 00 00 	movsbl 0x8e2b,%edx
    2aa1:	39 d0                	cmp    %edx,%eax
    2aa3:	75 64                	jne    2b09 <bigfile+0x149>
    total += cc;
    2aa5:	81 c3 2c 01 00 00    	add    $0x12c,%ebx
  for(i = 0; ; i++){
    2aab:	83 c7 01             	add    $0x1,%edi
    cc = read(fd, buf, 300);
    2aae:	c7 44 24 08 2c 01 00 	movl   $0x12c,0x8(%esp)
    2ab5:	00 
    2ab6:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    2abd:	00 
    2abe:	89 34 24             	mov    %esi,(%esp)
    2ac1:	e8 34 15 00 00       	call   3ffa <read>
    if(cc < 0){
    2ac6:	85 c0                	test   %eax,%eax
    2ac8:	78 7f                	js     2b49 <bigfile+0x189>
    if(cc == 0)
    2aca:	75 b4                	jne    2a80 <bigfile+0xc0>
  close(fd);
    2acc:	89 34 24             	mov    %esi,(%esp)
    2acf:	90                   	nop
    2ad0:	e8 35 15 00 00       	call   400a <close>
  if(total != 20*600){
    2ad5:	81 fb e0 2e 00 00    	cmp    $0x2ee0,%ebx
    2adb:	0f 85 e8 00 00 00    	jne    2bc9 <bigfile+0x209>
  unlink("bigfile");
    2ae1:	c7 04 24 60 4f 00 00 	movl   $0x4f60,(%esp)
    2ae8:	e8 45 15 00 00       	call   4032 <unlink>
  printf(1, "bigfile test ok\n");
    2aed:	c7 44 24 04 ef 4f 00 	movl   $0x4fef,0x4(%esp)
    2af4:	00 
    2af5:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2afc:	e8 2f 16 00 00       	call   4130 <printf>
}
    2b01:	83 c4 1c             	add    $0x1c,%esp
    2b04:	5b                   	pop    %ebx
    2b05:	5e                   	pop    %esi
    2b06:	5f                   	pop    %edi
    2b07:	5d                   	pop    %ebp
    2b08:	c3                   	ret    
      printf(1, "read bigfile wrong data\n");
    2b09:	c7 44 24 04 bc 4f 00 	movl   $0x4fbc,0x4(%esp)
    2b10:	00 
    2b11:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b18:	e8 13 16 00 00       	call   4130 <printf>
      exit(0);
    2b1d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b24:	e8 b9 14 00 00       	call   3fe2 <exit>
      printf(1, "short read bigfile\n");
    2b29:	c7 44 24 04 a8 4f 00 	movl   $0x4fa8,0x4(%esp)
    2b30:	00 
    2b31:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b38:	e8 f3 15 00 00       	call   4130 <printf>
      exit(0);
    2b3d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b44:	e8 99 14 00 00       	call   3fe2 <exit>
      printf(1, "read bigfile failed\n");
    2b49:	c7 44 24 04 93 4f 00 	movl   $0x4f93,0x4(%esp)
    2b50:	00 
    2b51:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b58:	e8 d3 15 00 00       	call   4130 <printf>
      exit(0);
    2b5d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b64:	e8 79 14 00 00       	call   3fe2 <exit>
      printf(1, "write bigfile failed\n");
    2b69:	c7 44 24 04 68 4f 00 	movl   $0x4f68,0x4(%esp)
    2b70:	00 
    2b71:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b78:	e8 b3 15 00 00       	call   4130 <printf>
      exit(0);
    2b7d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2b84:	e8 59 14 00 00       	call   3fe2 <exit>
    printf(1, "cannot open bigfile\n");
    2b89:	c7 44 24 04 7e 4f 00 	movl   $0x4f7e,0x4(%esp)
    2b90:	00 
    2b91:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2b98:	e8 93 15 00 00       	call   4130 <printf>
    exit(0);
    2b9d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ba4:	e8 39 14 00 00       	call   3fe2 <exit>
    printf(1, "cannot create bigfile");
    2ba9:	c7 44 24 04 52 4f 00 	movl   $0x4f52,0x4(%esp)
    2bb0:	00 
    2bb1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bb8:	e8 73 15 00 00       	call   4130 <printf>
    exit(0);
    2bbd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2bc4:	e8 19 14 00 00       	call   3fe2 <exit>
    printf(1, "read bigfile wrong total\n");
    2bc9:	c7 44 24 04 d5 4f 00 	movl   $0x4fd5,0x4(%esp)
    2bd0:	00 
    2bd1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2bd8:	e8 53 15 00 00       	call   4130 <printf>
    exit(0);
    2bdd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2be4:	e8 f9 13 00 00       	call   3fe2 <exit>
    2be9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002bf0 <fourteen>:
{
    2bf0:	55                   	push   %ebp
    2bf1:	89 e5                	mov    %esp,%ebp
    2bf3:	83 ec 18             	sub    $0x18,%esp
  printf(1, "fourteen test\n");
    2bf6:	c7 44 24 04 00 50 00 	movl   $0x5000,0x4(%esp)
    2bfd:	00 
    2bfe:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2c05:	e8 26 15 00 00       	call   4130 <printf>
  if(mkdir("12345678901234") != 0){
    2c0a:	c7 04 24 3b 50 00 00 	movl   $0x503b,(%esp)
    2c11:	e8 34 14 00 00       	call   404a <mkdir>
    2c16:	85 c0                	test   %eax,%eax
    2c18:	0f 85 92 00 00 00    	jne    2cb0 <fourteen+0xc0>
  if(mkdir("12345678901234/123456789012345") != 0){
    2c1e:	c7 04 24 f8 57 00 00 	movl   $0x57f8,(%esp)
    2c25:	e8 20 14 00 00       	call   404a <mkdir>
    2c2a:	85 c0                	test   %eax,%eax
    2c2c:	0f 85 1e 01 00 00    	jne    2d50 <fourteen+0x160>
  fd = open("123456789012345/123456789012345/123456789012345", O_CREATE);
    2c32:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2c39:	00 
    2c3a:	c7 04 24 48 58 00 00 	movl   $0x5848,(%esp)
    2c41:	e8 dc 13 00 00       	call   4022 <open>
  if(fd < 0){
    2c46:	85 c0                	test   %eax,%eax
    2c48:	0f 88 e2 00 00 00    	js     2d30 <fourteen+0x140>
  close(fd);
    2c4e:	89 04 24             	mov    %eax,(%esp)
    2c51:	e8 b4 13 00 00       	call   400a <close>
  fd = open("12345678901234/12345678901234/12345678901234", 0);
    2c56:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2c5d:	00 
    2c5e:	c7 04 24 b8 58 00 00 	movl   $0x58b8,(%esp)
    2c65:	e8 b8 13 00 00       	call   4022 <open>
  if(fd < 0){
    2c6a:	85 c0                	test   %eax,%eax
    2c6c:	0f 88 9e 00 00 00    	js     2d10 <fourteen+0x120>
  close(fd);
    2c72:	89 04 24             	mov    %eax,(%esp)
    2c75:	e8 90 13 00 00       	call   400a <close>
  if(mkdir("12345678901234/12345678901234") == 0){
    2c7a:	c7 04 24 2c 50 00 00 	movl   $0x502c,(%esp)
    2c81:	e8 c4 13 00 00       	call   404a <mkdir>
    2c86:	85 c0                	test   %eax,%eax
    2c88:	74 66                	je     2cf0 <fourteen+0x100>
  if(mkdir("123456789012345/12345678901234") == 0){
    2c8a:	c7 04 24 54 59 00 00 	movl   $0x5954,(%esp)
    2c91:	e8 b4 13 00 00       	call   404a <mkdir>
    2c96:	85 c0                	test   %eax,%eax
    2c98:	74 36                	je     2cd0 <fourteen+0xe0>
  printf(1, "fourteen ok\n");
    2c9a:	c7 44 24 04 4a 50 00 	movl   $0x504a,0x4(%esp)
    2ca1:	00 
    2ca2:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ca9:	e8 82 14 00 00       	call   4130 <printf>
}
    2cae:	c9                   	leave  
    2caf:	c3                   	ret    
    printf(1, "mkdir 12345678901234 failed\n");
    2cb0:	c7 44 24 04 0f 50 00 	movl   $0x500f,0x4(%esp)
    2cb7:	00 
    2cb8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cbf:	e8 6c 14 00 00       	call   4130 <printf>
    exit(0);
    2cc4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ccb:	e8 12 13 00 00       	call   3fe2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 succeeded!\n");
    2cd0:	c7 44 24 04 74 59 00 	movl   $0x5974,0x4(%esp)
    2cd7:	00 
    2cd8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cdf:	e8 4c 14 00 00       	call   4130 <printf>
    exit(0);
    2ce4:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ceb:	e8 f2 12 00 00       	call   3fe2 <exit>
    printf(1, "mkdir 12345678901234/12345678901234 succeeded!\n");
    2cf0:	c7 44 24 04 24 59 00 	movl   $0x5924,0x4(%esp)
    2cf7:	00 
    2cf8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2cff:	e8 2c 14 00 00       	call   4130 <printf>
    exit(0);
    2d04:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d0b:	e8 d2 12 00 00       	call   3fe2 <exit>
    printf(1, "open 12345678901234/12345678901234/12345678901234 failed\n");
    2d10:	c7 44 24 04 e8 58 00 	movl   $0x58e8,0x4(%esp)
    2d17:	00 
    2d18:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d1f:	e8 0c 14 00 00       	call   4130 <printf>
    exit(0);
    2d24:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d2b:	e8 b2 12 00 00       	call   3fe2 <exit>
    printf(1, "create 123456789012345/123456789012345/123456789012345 failed\n");
    2d30:	c7 44 24 04 78 58 00 	movl   $0x5878,0x4(%esp)
    2d37:	00 
    2d38:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d3f:	e8 ec 13 00 00       	call   4130 <printf>
    exit(0);
    2d44:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d4b:	e8 92 12 00 00       	call   3fe2 <exit>
    printf(1, "mkdir 12345678901234/123456789012345 failed\n");
    2d50:	c7 44 24 04 18 58 00 	movl   $0x5818,0x4(%esp)
    2d57:	00 
    2d58:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d5f:	e8 cc 13 00 00       	call   4130 <printf>
    exit(0);
    2d64:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d6b:	e8 72 12 00 00       	call   3fe2 <exit>

00002d70 <rmdot>:
{
    2d70:	55                   	push   %ebp
    2d71:	89 e5                	mov    %esp,%ebp
    2d73:	83 ec 18             	sub    $0x18,%esp
  printf(1, "rmdot test\n");
    2d76:	c7 44 24 04 57 50 00 	movl   $0x5057,0x4(%esp)
    2d7d:	00 
    2d7e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2d85:	e8 a6 13 00 00       	call   4130 <printf>
  if(mkdir("dots") != 0){
    2d8a:	c7 04 24 63 50 00 00 	movl   $0x5063,(%esp)
    2d91:	e8 b4 12 00 00       	call   404a <mkdir>
    2d96:	85 c0                	test   %eax,%eax
    2d98:	0f 85 9a 00 00 00    	jne    2e38 <rmdot+0xc8>
  if(chdir("dots") != 0){
    2d9e:	c7 04 24 63 50 00 00 	movl   $0x5063,(%esp)
    2da5:	e8 a8 12 00 00       	call   4052 <chdir>
    2daa:	85 c0                	test   %eax,%eax
    2dac:	0f 85 66 01 00 00    	jne    2f18 <rmdot+0x1a8>
  if(unlink(".") == 0){
    2db2:	c7 04 24 0e 4d 00 00 	movl   $0x4d0e,(%esp)
    2db9:	e8 74 12 00 00       	call   4032 <unlink>
    2dbe:	85 c0                	test   %eax,%eax
    2dc0:	0f 84 32 01 00 00    	je     2ef8 <rmdot+0x188>
  if(unlink("..") == 0){
    2dc6:	c7 04 24 0d 4d 00 00 	movl   $0x4d0d,(%esp)
    2dcd:	e8 60 12 00 00       	call   4032 <unlink>
    2dd2:	85 c0                	test   %eax,%eax
    2dd4:	0f 84 fe 00 00 00    	je     2ed8 <rmdot+0x168>
  if(chdir("/") != 0){
    2dda:	c7 04 24 e1 44 00 00 	movl   $0x44e1,(%esp)
    2de1:	e8 6c 12 00 00       	call   4052 <chdir>
    2de6:	85 c0                	test   %eax,%eax
    2de8:	0f 85 ca 00 00 00    	jne    2eb8 <rmdot+0x148>
  if(unlink("dots/.") == 0){
    2dee:	c7 04 24 ab 50 00 00 	movl   $0x50ab,(%esp)
    2df5:	e8 38 12 00 00       	call   4032 <unlink>
    2dfa:	85 c0                	test   %eax,%eax
    2dfc:	0f 84 96 00 00 00    	je     2e98 <rmdot+0x128>
  if(unlink("dots/..") == 0){
    2e02:	c7 04 24 c9 50 00 00 	movl   $0x50c9,(%esp)
    2e09:	e8 24 12 00 00       	call   4032 <unlink>
    2e0e:	85 c0                	test   %eax,%eax
    2e10:	74 66                	je     2e78 <rmdot+0x108>
  if(unlink("dots") != 0){
    2e12:	c7 04 24 63 50 00 00 	movl   $0x5063,(%esp)
    2e19:	e8 14 12 00 00       	call   4032 <unlink>
    2e1e:	85 c0                	test   %eax,%eax
    2e20:	75 36                	jne    2e58 <rmdot+0xe8>
  printf(1, "rmdot ok\n");
    2e22:	c7 44 24 04 fe 50 00 	movl   $0x50fe,0x4(%esp)
    2e29:	00 
    2e2a:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e31:	e8 fa 12 00 00       	call   4130 <printf>
}
    2e36:	c9                   	leave  
    2e37:	c3                   	ret    
    printf(1, "mkdir dots failed\n");
    2e38:	c7 44 24 04 68 50 00 	movl   $0x5068,0x4(%esp)
    2e3f:	00 
    2e40:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e47:	e8 e4 12 00 00       	call   4130 <printf>
    exit(0);
    2e4c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e53:	e8 8a 11 00 00       	call   3fe2 <exit>
    printf(1, "unlink dots failed!\n");
    2e58:	c7 44 24 04 e9 50 00 	movl   $0x50e9,0x4(%esp)
    2e5f:	00 
    2e60:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e67:	e8 c4 12 00 00       	call   4130 <printf>
    exit(0);
    2e6c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e73:	e8 6a 11 00 00       	call   3fe2 <exit>
    printf(1, "unlink dots/.. worked!\n");
    2e78:	c7 44 24 04 d1 50 00 	movl   $0x50d1,0x4(%esp)
    2e7f:	00 
    2e80:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e87:	e8 a4 12 00 00       	call   4130 <printf>
    exit(0);
    2e8c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2e93:	e8 4a 11 00 00       	call   3fe2 <exit>
    printf(1, "unlink dots/. worked!\n");
    2e98:	c7 44 24 04 b2 50 00 	movl   $0x50b2,0x4(%esp)
    2e9f:	00 
    2ea0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ea7:	e8 84 12 00 00       	call   4130 <printf>
    exit(0);
    2eac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2eb3:	e8 2a 11 00 00       	call   3fe2 <exit>
    printf(1, "chdir / failed\n");
    2eb8:	c7 44 24 04 e3 44 00 	movl   $0x44e3,0x4(%esp)
    2ebf:	00 
    2ec0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ec7:	e8 64 12 00 00       	call   4130 <printf>
    exit(0);
    2ecc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ed3:	e8 0a 11 00 00       	call   3fe2 <exit>
    printf(1, "rm .. worked!\n");
    2ed8:	c7 44 24 04 9c 50 00 	movl   $0x509c,0x4(%esp)
    2edf:	00 
    2ee0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2ee7:	e8 44 12 00 00       	call   4130 <printf>
    exit(0);
    2eec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2ef3:	e8 ea 10 00 00       	call   3fe2 <exit>
    printf(1, "rm . worked!\n");
    2ef8:	c7 44 24 04 8e 50 00 	movl   $0x508e,0x4(%esp)
    2eff:	00 
    2f00:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f07:	e8 24 12 00 00       	call   4130 <printf>
    exit(0);
    2f0c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f13:	e8 ca 10 00 00       	call   3fe2 <exit>
    printf(1, "chdir dots failed\n");
    2f18:	c7 44 24 04 7b 50 00 	movl   $0x507b,0x4(%esp)
    2f1f:	00 
    2f20:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f27:	e8 04 12 00 00       	call   4130 <printf>
    exit(0);
    2f2c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2f33:	e8 aa 10 00 00       	call   3fe2 <exit>
    2f38:	90                   	nop
    2f39:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00002f40 <dirfile>:
{
    2f40:	55                   	push   %ebp
    2f41:	89 e5                	mov    %esp,%ebp
    2f43:	53                   	push   %ebx
    2f44:	83 ec 14             	sub    $0x14,%esp
  printf(1, "dir vs file\n");
    2f47:	c7 44 24 04 08 51 00 	movl   $0x5108,0x4(%esp)
    2f4e:	00 
    2f4f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2f56:	e8 d5 11 00 00       	call   4130 <printf>
  fd = open("dirfile", O_CREATE);
    2f5b:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2f62:	00 
    2f63:	c7 04 24 15 51 00 00 	movl   $0x5115,(%esp)
    2f6a:	e8 b3 10 00 00       	call   4022 <open>
  if(fd < 0){
    2f6f:	85 c0                	test   %eax,%eax
    2f71:	0f 88 60 01 00 00    	js     30d7 <dirfile+0x197>
  close(fd);
    2f77:	89 04 24             	mov    %eax,(%esp)
    2f7a:	e8 8b 10 00 00       	call   400a <close>
  if(chdir("dirfile") == 0){
    2f7f:	c7 04 24 15 51 00 00 	movl   $0x5115,(%esp)
    2f86:	e8 c7 10 00 00       	call   4052 <chdir>
    2f8b:	85 c0                	test   %eax,%eax
    2f8d:	0f 84 24 01 00 00    	je     30b7 <dirfile+0x177>
  fd = open("dirfile/xx", 0);
    2f93:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    2f9a:	00 
    2f9b:	c7 04 24 4e 51 00 00 	movl   $0x514e,(%esp)
    2fa2:	e8 7b 10 00 00       	call   4022 <open>
  if(fd >= 0){
    2fa7:	85 c0                	test   %eax,%eax
    2fa9:	0f 89 e8 00 00 00    	jns    3097 <dirfile+0x157>
  fd = open("dirfile/xx", O_CREATE);
    2faf:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    2fb6:	00 
    2fb7:	c7 04 24 4e 51 00 00 	movl   $0x514e,(%esp)
    2fbe:	e8 5f 10 00 00       	call   4022 <open>
  if(fd >= 0){
    2fc3:	85 c0                	test   %eax,%eax
    2fc5:	0f 89 cc 00 00 00    	jns    3097 <dirfile+0x157>
  if(mkdir("dirfile/xx") == 0){
    2fcb:	c7 04 24 4e 51 00 00 	movl   $0x514e,(%esp)
    2fd2:	e8 73 10 00 00       	call   404a <mkdir>
    2fd7:	85 c0                	test   %eax,%eax
    2fd9:	0f 84 b8 01 00 00    	je     3197 <dirfile+0x257>
  if(unlink("dirfile/xx") == 0){
    2fdf:	c7 04 24 4e 51 00 00 	movl   $0x514e,(%esp)
    2fe6:	e8 47 10 00 00       	call   4032 <unlink>
    2feb:	85 c0                	test   %eax,%eax
    2fed:	0f 84 84 01 00 00    	je     3177 <dirfile+0x237>
  if(link("README", "dirfile/xx") == 0){
    2ff3:	c7 44 24 04 4e 51 00 	movl   $0x514e,0x4(%esp)
    2ffa:	00 
    2ffb:	c7 04 24 b2 51 00 00 	movl   $0x51b2,(%esp)
    3002:	e8 3b 10 00 00       	call   4042 <link>
    3007:	85 c0                	test   %eax,%eax
    3009:	0f 84 48 01 00 00    	je     3157 <dirfile+0x217>
  if(unlink("dirfile") != 0){
    300f:	c7 04 24 15 51 00 00 	movl   $0x5115,(%esp)
    3016:	e8 17 10 00 00       	call   4032 <unlink>
    301b:	85 c0                	test   %eax,%eax
    301d:	0f 85 14 01 00 00    	jne    3137 <dirfile+0x1f7>
  fd = open(".", O_RDWR);
    3023:	c7 44 24 04 02 00 00 	movl   $0x2,0x4(%esp)
    302a:	00 
    302b:	c7 04 24 0e 4d 00 00 	movl   $0x4d0e,(%esp)
    3032:	e8 eb 0f 00 00       	call   4022 <open>
  if(fd >= 0){
    3037:	85 c0                	test   %eax,%eax
    3039:	0f 89 d8 00 00 00    	jns    3117 <dirfile+0x1d7>
  fd = open(".", 0);
    303f:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3046:	00 
    3047:	c7 04 24 0e 4d 00 00 	movl   $0x4d0e,(%esp)
    304e:	e8 cf 0f 00 00       	call   4022 <open>
  if(write(fd, "x", 1) > 0){
    3053:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    305a:	00 
    305b:	c7 44 24 04 f1 4d 00 	movl   $0x4df1,0x4(%esp)
    3062:	00 
    3063:	89 04 24             	mov    %eax,(%esp)
  fd = open(".", 0);
    3066:	89 c3                	mov    %eax,%ebx
  if(write(fd, "x", 1) > 0){
    3068:	e8 95 0f 00 00       	call   4002 <write>
    306d:	85 c0                	test   %eax,%eax
    306f:	0f 8f 82 00 00 00    	jg     30f7 <dirfile+0x1b7>
  close(fd);
    3075:	89 1c 24             	mov    %ebx,(%esp)
    3078:	e8 8d 0f 00 00       	call   400a <close>
  printf(1, "dir vs file OK\n");
    307d:	c7 44 24 04 e5 51 00 	movl   $0x51e5,0x4(%esp)
    3084:	00 
    3085:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    308c:	e8 9f 10 00 00       	call   4130 <printf>
}
    3091:	83 c4 14             	add    $0x14,%esp
    3094:	5b                   	pop    %ebx
    3095:	5d                   	pop    %ebp
    3096:	c3                   	ret    
    printf(1, "create dirfile/xx succeeded!\n");
    3097:	c7 44 24 04 59 51 00 	movl   $0x5159,0x4(%esp)
    309e:	00 
    309f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30a6:	e8 85 10 00 00       	call   4130 <printf>
    exit(0);
    30ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30b2:	e8 2b 0f 00 00       	call   3fe2 <exit>
    printf(1, "chdir dirfile succeeded!\n");
    30b7:	c7 44 24 04 34 51 00 	movl   $0x5134,0x4(%esp)
    30be:	00 
    30bf:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30c6:	e8 65 10 00 00       	call   4130 <printf>
    exit(0);
    30cb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30d2:	e8 0b 0f 00 00       	call   3fe2 <exit>
    printf(1, "create dirfile failed\n");
    30d7:	c7 44 24 04 1d 51 00 	movl   $0x511d,0x4(%esp)
    30de:	00 
    30df:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    30e6:	e8 45 10 00 00       	call   4130 <printf>
    exit(0);
    30eb:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    30f2:	e8 eb 0e 00 00       	call   3fe2 <exit>
    printf(1, "write . succeeded!\n");
    30f7:	c7 44 24 04 d1 51 00 	movl   $0x51d1,0x4(%esp)
    30fe:	00 
    30ff:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3106:	e8 25 10 00 00       	call   4130 <printf>
    exit(0);
    310b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3112:	e8 cb 0e 00 00       	call   3fe2 <exit>
    printf(1, "open . for writing succeeded!\n");
    3117:	c7 44 24 04 c8 59 00 	movl   $0x59c8,0x4(%esp)
    311e:	00 
    311f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3126:	e8 05 10 00 00       	call   4130 <printf>
    exit(0);
    312b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3132:	e8 ab 0e 00 00       	call   3fe2 <exit>
    printf(1, "unlink dirfile failed!\n");
    3137:	c7 44 24 04 b9 51 00 	movl   $0x51b9,0x4(%esp)
    313e:	00 
    313f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3146:	e8 e5 0f 00 00       	call   4130 <printf>
    exit(0);
    314b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3152:	e8 8b 0e 00 00       	call   3fe2 <exit>
    printf(1, "link to dirfile/xx succeeded!\n");
    3157:	c7 44 24 04 a8 59 00 	movl   $0x59a8,0x4(%esp)
    315e:	00 
    315f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3166:	e8 c5 0f 00 00       	call   4130 <printf>
    exit(0);
    316b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3172:	e8 6b 0e 00 00       	call   3fe2 <exit>
    printf(1, "unlink dirfile/xx succeeded!\n");
    3177:	c7 44 24 04 94 51 00 	movl   $0x5194,0x4(%esp)
    317e:	00 
    317f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3186:	e8 a5 0f 00 00       	call   4130 <printf>
    exit(0);
    318b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3192:	e8 4b 0e 00 00       	call   3fe2 <exit>
    printf(1, "mkdir dirfile/xx succeeded!\n");
    3197:	c7 44 24 04 77 51 00 	movl   $0x5177,0x4(%esp)
    319e:	00 
    319f:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31a6:	e8 85 0f 00 00       	call   4130 <printf>
    exit(0);
    31ab:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    31b2:	e8 2b 0e 00 00       	call   3fe2 <exit>
    31b7:	89 f6                	mov    %esi,%esi
    31b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000031c0 <iref>:
{
    31c0:	55                   	push   %ebp
    31c1:	89 e5                	mov    %esp,%ebp
    31c3:	53                   	push   %ebx
  printf(1, "empty file name\n");
    31c4:	bb 33 00 00 00       	mov    $0x33,%ebx
{
    31c9:	83 ec 14             	sub    $0x14,%esp
  printf(1, "empty file name\n");
    31cc:	c7 44 24 04 f5 51 00 	movl   $0x51f5,0x4(%esp)
    31d3:	00 
    31d4:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    31db:	e8 50 0f 00 00       	call   4130 <printf>
    if(mkdir("irefd") != 0){
    31e0:	c7 04 24 06 52 00 00 	movl   $0x5206,(%esp)
    31e7:	e8 5e 0e 00 00       	call   404a <mkdir>
    31ec:	85 c0                	test   %eax,%eax
    31ee:	0f 85 af 00 00 00    	jne    32a3 <iref+0xe3>
    if(chdir("irefd") != 0){
    31f4:	c7 04 24 06 52 00 00 	movl   $0x5206,(%esp)
    31fb:	e8 52 0e 00 00       	call   4052 <chdir>
    3200:	85 c0                	test   %eax,%eax
    3202:	0f 85 bb 00 00 00    	jne    32c3 <iref+0x103>
    mkdir("");
    3208:	c7 04 24 bb 48 00 00 	movl   $0x48bb,(%esp)
    320f:	e8 36 0e 00 00       	call   404a <mkdir>
    link("README", "");
    3214:	c7 44 24 04 bb 48 00 	movl   $0x48bb,0x4(%esp)
    321b:	00 
    321c:	c7 04 24 b2 51 00 00 	movl   $0x51b2,(%esp)
    3223:	e8 1a 0e 00 00       	call   4042 <link>
    fd = open("", O_CREATE);
    3228:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    322f:	00 
    3230:	c7 04 24 bb 48 00 00 	movl   $0x48bb,(%esp)
    3237:	e8 e6 0d 00 00       	call   4022 <open>
    if(fd >= 0)
    323c:	85 c0                	test   %eax,%eax
    323e:	78 08                	js     3248 <iref+0x88>
      close(fd);
    3240:	89 04 24             	mov    %eax,(%esp)
    3243:	e8 c2 0d 00 00       	call   400a <close>
    fd = open("xx", O_CREATE);
    3248:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    324f:	00 
    3250:	c7 04 24 f0 4d 00 00 	movl   $0x4df0,(%esp)
    3257:	e8 c6 0d 00 00       	call   4022 <open>
    if(fd >= 0)
    325c:	85 c0                	test   %eax,%eax
    325e:	78 08                	js     3268 <iref+0xa8>
      close(fd);
    3260:	89 04 24             	mov    %eax,(%esp)
    3263:	e8 a2 0d 00 00       	call   400a <close>
    unlink("xx");
    3268:	c7 04 24 f0 4d 00 00 	movl   $0x4df0,(%esp)
    326f:	e8 be 0d 00 00       	call   4032 <unlink>
  for(i = 0; i < 50 + 1; i++){
    3274:	83 eb 01             	sub    $0x1,%ebx
    3277:	0f 85 63 ff ff ff    	jne    31e0 <iref+0x20>
  chdir("/");
    327d:	c7 04 24 e1 44 00 00 	movl   $0x44e1,(%esp)
    3284:	e8 c9 0d 00 00       	call   4052 <chdir>
  printf(1, "empty file name OK\n");
    3289:	c7 44 24 04 34 52 00 	movl   $0x5234,0x4(%esp)
    3290:	00 
    3291:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3298:	e8 93 0e 00 00       	call   4130 <printf>
}
    329d:	83 c4 14             	add    $0x14,%esp
    32a0:	5b                   	pop    %ebx
    32a1:	5d                   	pop    %ebp
    32a2:	c3                   	ret    
      printf(1, "mkdir irefd failed\n");
    32a3:	c7 44 24 04 0c 52 00 	movl   $0x520c,0x4(%esp)
    32aa:	00 
    32ab:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32b2:	e8 79 0e 00 00       	call   4130 <printf>
      exit(0);
    32b7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32be:	e8 1f 0d 00 00       	call   3fe2 <exit>
      printf(1, "chdir irefd failed\n");
    32c3:	c7 44 24 04 20 52 00 	movl   $0x5220,0x4(%esp)
    32ca:	00 
    32cb:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    32d2:	e8 59 0e 00 00       	call   4130 <printf>
      exit(0);
    32d7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    32de:	e8 ff 0c 00 00       	call   3fe2 <exit>
    32e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    32e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000032f0 <forktest>:
{
    32f0:	55                   	push   %ebp
    32f1:	89 e5                	mov    %esp,%ebp
    32f3:	53                   	push   %ebx
  for(n=0; n<1000; n++){
    32f4:	31 db                	xor    %ebx,%ebx
{
    32f6:	83 ec 14             	sub    $0x14,%esp
  printf(1, "fork test\n");
    32f9:	c7 44 24 04 48 52 00 	movl   $0x5248,0x4(%esp)
    3300:	00 
    3301:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3308:	e8 23 0e 00 00       	call   4130 <printf>
    330d:	eb 13                	jmp    3322 <forktest+0x32>
    330f:	90                   	nop
    if(pid == 0)
    3310:	0f 84 96 00 00 00    	je     33ac <forktest+0xbc>
  for(n=0; n<1000; n++){
    3316:	83 c3 01             	add    $0x1,%ebx
    3319:	81 fb e8 03 00 00    	cmp    $0x3e8,%ebx
    331f:	90                   	nop
    3320:	74 56                	je     3378 <forktest+0x88>
    pid = fork();
    3322:	e8 b3 0c 00 00       	call   3fda <fork>
    if(pid < 0)
    3327:	85 c0                	test   %eax,%eax
    3329:	79 e5                	jns    3310 <forktest+0x20>
  for(; n > 0; n--){
    332b:	85 db                	test   %ebx,%ebx
    332d:	8d 76 00             	lea    0x0(%esi),%esi
    3330:	74 1b                	je     334d <forktest+0x5d>
    3332:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    if(wait(0) < 0){
    3338:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    333f:	e8 a6 0c 00 00       	call   3fea <wait>
    3344:	85 c0                	test   %eax,%eax
    3346:	78 50                	js     3398 <forktest+0xa8>
  for(; n > 0; n--){
    3348:	83 eb 01             	sub    $0x1,%ebx
    334b:	75 eb                	jne    3338 <forktest+0x48>
  if(wait(0) != -1){
    334d:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3354:	e8 91 0c 00 00       	call   3fea <wait>
    3359:	83 f8 ff             	cmp    $0xffffffff,%eax
    335c:	75 5a                	jne    33b8 <forktest+0xc8>
  printf(1, "fork test OK\n");
    335e:	c7 44 24 04 7a 52 00 	movl   $0x527a,0x4(%esp)
    3365:	00 
    3366:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    336d:	e8 be 0d 00 00       	call   4130 <printf>
}
    3372:	83 c4 14             	add    $0x14,%esp
    3375:	5b                   	pop    %ebx
    3376:	5d                   	pop    %ebp
    3377:	c3                   	ret    
    printf(1, "fork claimed to work 1000 times!\n");
    3378:	c7 44 24 04 e8 59 00 	movl   $0x59e8,0x4(%esp)
    337f:	00 
    3380:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3387:	e8 a4 0d 00 00       	call   4130 <printf>
    exit(0);
    338c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3393:	e8 4a 0c 00 00       	call   3fe2 <exit>
      printf(1, "wait stopped early\n");
    3398:	c7 44 24 04 53 52 00 	movl   $0x5253,0x4(%esp)
    339f:	00 
    33a0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33a7:	e8 84 0d 00 00       	call   4130 <printf>
      exit(0);
    33ac:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33b3:	e8 2a 0c 00 00       	call   3fe2 <exit>
    printf(1, "wait got too many\n");
    33b8:	c7 44 24 04 67 52 00 	movl   $0x5267,0x4(%esp)
    33bf:	00 
    33c0:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    33c7:	e8 64 0d 00 00       	call   4130 <printf>
    exit(0);
    33cc:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    33d3:	e8 0a 0c 00 00       	call   3fe2 <exit>
    33d8:	90                   	nop
    33d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000033e0 <sbrktest>:
{
    33e0:	55                   	push   %ebp
    33e1:	89 e5                	mov    %esp,%ebp
    33e3:	57                   	push   %edi
    33e4:	56                   	push   %esi
  for(i = 0; i < 5000; i++){
    33e5:	31 f6                	xor    %esi,%esi
{
    33e7:	53                   	push   %ebx
    33e8:	83 ec 6c             	sub    $0x6c,%esp
  printf(stdout, "sbrk test\n");
    33eb:	a1 14 65 00 00       	mov    0x6514,%eax
    33f0:	c7 44 24 04 88 52 00 	movl   $0x5288,0x4(%esp)
    33f7:	00 
    33f8:	89 04 24             	mov    %eax,(%esp)
    33fb:	e8 30 0d 00 00       	call   4130 <printf>
  oldbrk = sbrk(0);
    3400:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3407:	e8 5e 0c 00 00       	call   406a <sbrk>
  a = sbrk(0);
    340c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  oldbrk = sbrk(0);
    3413:	89 45 a4             	mov    %eax,-0x5c(%ebp)
  a = sbrk(0);
    3416:	e8 4f 0c 00 00       	call   406a <sbrk>
    341b:	89 c3                	mov    %eax,%ebx
    341d:	8d 76 00             	lea    0x0(%esi),%esi
    b = sbrk(1);
    3420:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3427:	e8 3e 0c 00 00       	call   406a <sbrk>
    if(b != a){
    342c:	39 d8                	cmp    %ebx,%eax
    b = sbrk(1);
    342e:	89 c7                	mov    %eax,%edi
    if(b != a){
    3430:	0f 85 90 02 00 00    	jne    36c6 <sbrktest+0x2e6>
  for(i = 0; i < 5000; i++){
    3436:	83 c6 01             	add    $0x1,%esi
    a = b + 1;
    3439:	83 c3 01             	add    $0x1,%ebx
    *b = 1;
    343c:	c6 43 ff 01          	movb   $0x1,-0x1(%ebx)
  for(i = 0; i < 5000; i++){
    3440:	81 fe 88 13 00 00    	cmp    $0x1388,%esi
    3446:	75 d8                	jne    3420 <sbrktest+0x40>
  pid = fork();
    3448:	e8 8d 0b 00 00       	call   3fda <fork>
  if(pid < 0){
    344d:	85 c0                	test   %eax,%eax
  pid = fork();
    344f:	89 c3                	mov    %eax,%ebx
  if(pid < 0){
    3451:	0f 88 9c 03 00 00    	js     37f3 <sbrktest+0x413>
  c = sbrk(1);
    3457:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    345e:	e8 07 0c 00 00       	call   406a <sbrk>
  c = sbrk(1);
    3463:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    346a:	e8 fb 0b 00 00       	call   406a <sbrk>
  if(c != a + 1){
    346f:	8d 57 02             	lea    0x2(%edi),%edx
    3472:	39 d0                	cmp    %edx,%eax
    3474:	0f 85 6c 03 00 00    	jne    37e6 <sbrktest+0x406>
  if(pid == 0)
    347a:	85 db                	test   %ebx,%ebx
    exit(0);
    347c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  if(pid == 0)
    3483:	0f 84 a6 02 00 00    	je     372f <sbrktest+0x34f>
  wait(0);
    3489:	e8 5c 0b 00 00       	call   3fea <wait>
  a = sbrk(0);
    348e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3495:	e8 d0 0b 00 00       	call   406a <sbrk>
  amt = (BIG) - (uint)a;
    349a:	ba 00 00 40 06       	mov    $0x6400000,%edx
    349f:	29 c2                	sub    %eax,%edx
  a = sbrk(0);
    34a1:	89 c3                	mov    %eax,%ebx
  p = sbrk(amt);
    34a3:	89 14 24             	mov    %edx,(%esp)
    34a6:	e8 bf 0b 00 00       	call   406a <sbrk>
  if (p != a) {
    34ab:	39 d8                	cmp    %ebx,%eax
    34ad:	0f 85 07 03 00 00    	jne    37ba <sbrktest+0x3da>
  *lastaddr = 99;
    34b3:	c6 05 ff ff 3f 06 63 	movb   $0x63,0x63fffff
  a = sbrk(0);
    34ba:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34c1:	e8 a4 0b 00 00       	call   406a <sbrk>
  c = sbrk(-4096);
    34c6:	c7 04 24 00 f0 ff ff 	movl   $0xfffff000,(%esp)
  a = sbrk(0);
    34cd:	89 c3                	mov    %eax,%ebx
  c = sbrk(-4096);
    34cf:	e8 96 0b 00 00       	call   406a <sbrk>
  if(c == (char*)0xffffffff){
    34d4:	83 f8 ff             	cmp    $0xffffffff,%eax
    34d7:	0f 84 fc 02 00 00    	je     37d9 <sbrktest+0x3f9>
  c = sbrk(0);
    34dd:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34e4:	e8 81 0b 00 00       	call   406a <sbrk>
  if(c != a - 4096){
    34e9:	8d 93 00 f0 ff ff    	lea    -0x1000(%ebx),%edx
    34ef:	39 d0                	cmp    %edx,%eax
    34f1:	0f 85 d0 02 00 00    	jne    37c7 <sbrktest+0x3e7>
  a = sbrk(0);
    34f7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    34fe:	e8 67 0b 00 00       	call   406a <sbrk>
  c = sbrk(4096);
    3503:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
  a = sbrk(0);
    350a:	89 c6                	mov    %eax,%esi
  c = sbrk(4096);
    350c:	e8 59 0b 00 00       	call   406a <sbrk>
  if(c != a || sbrk(0) != a + 4096){
    3511:	39 f0                	cmp    %esi,%eax
  c = sbrk(4096);
    3513:	89 c3                	mov    %eax,%ebx
  if(c != a || sbrk(0) != a + 4096){
    3515:	0f 85 8d 02 00 00    	jne    37a8 <sbrktest+0x3c8>
    351b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3522:	e8 43 0b 00 00       	call   406a <sbrk>
    3527:	8d 93 00 10 00 00    	lea    0x1000(%ebx),%edx
    352d:	39 d0                	cmp    %edx,%eax
    352f:	0f 85 73 02 00 00    	jne    37a8 <sbrktest+0x3c8>
  if(*lastaddr == 99){
    3535:	80 3d ff ff 3f 06 63 	cmpb   $0x63,0x63fffff
    353c:	0f 84 59 02 00 00    	je     379b <sbrktest+0x3bb>
  a = sbrk(0);
    3542:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3549:	e8 1c 0b 00 00       	call   406a <sbrk>
  c = sbrk(-(sbrk(0) - oldbrk));
    354e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  a = sbrk(0);
    3555:	89 c3                	mov    %eax,%ebx
  c = sbrk(-(sbrk(0) - oldbrk));
    3557:	e8 0e 0b 00 00       	call   406a <sbrk>
    355c:	8b 4d a4             	mov    -0x5c(%ebp),%ecx
    355f:	29 c1                	sub    %eax,%ecx
    3561:	89 0c 24             	mov    %ecx,(%esp)
    3564:	e8 01 0b 00 00       	call   406a <sbrk>
  if(c != a){
    3569:	39 d8                	cmp    %ebx,%eax
    356b:	0f 85 01 02 00 00    	jne    3772 <sbrktest+0x392>
    3571:	bb 00 00 00 80       	mov    $0x80000000,%ebx
    3576:	66 90                	xchg   %ax,%ax
    ppid = getpid();
    3578:	e8 e5 0a 00 00       	call   4062 <getpid>
    357d:	89 c6                	mov    %eax,%esi
    pid = fork();
    357f:	e8 56 0a 00 00       	call   3fda <fork>
    if(pid < 0){
    3584:	85 c0                	test   %eax,%eax
    3586:	0f 88 dc 01 00 00    	js     3768 <sbrktest+0x388>
    358c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    if(pid == 0){
    3590:	0f 84 9e 01 00 00    	je     3734 <sbrktest+0x354>
    wait(0);
    3596:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    359d:	81 c3 50 c3 00 00    	add    $0xc350,%ebx
    wait(0);
    35a3:	e8 42 0a 00 00       	call   3fea <wait>
  for(a = (char*)(KERNBASE); a < (char*) (KERNBASE+2000000); a += 50000){
    35a8:	81 fb 80 84 1e 80    	cmp    $0x801e8480,%ebx
    35ae:	75 c8                	jne    3578 <sbrktest+0x198>
  if(pipe(fds) != 0){
    35b0:	8d 45 b8             	lea    -0x48(%ebp),%eax
    35b3:	89 04 24             	mov    %eax,(%esp)
    35b6:	e8 37 0a 00 00       	call   3ff2 <pipe>
    35bb:	85 c0                	test   %eax,%eax
    35bd:	0f 85 51 01 00 00    	jne    3714 <sbrktest+0x334>
    35c3:	8d 5d e8             	lea    -0x18(%ebp),%ebx
    35c6:	8d 75 c0             	lea    -0x40(%ebp),%esi
      read(fds[0], &scratch, 1);
    35c9:	8d 7d b7             	lea    -0x49(%ebp),%edi
    if((pids[i] = fork()) == 0){
    35cc:	e8 09 0a 00 00       	call   3fda <fork>
    35d1:	85 c0                	test   %eax,%eax
    35d3:	89 06                	mov    %eax,(%esi)
    35d5:	0f 84 a6 00 00 00    	je     3681 <sbrktest+0x2a1>
    if(pids[i] != -1)
    35db:	83 f8 ff             	cmp    $0xffffffff,%eax
    35de:	74 17                	je     35f7 <sbrktest+0x217>
      read(fds[0], &scratch, 1);
    35e0:	8b 45 b8             	mov    -0x48(%ebp),%eax
    35e3:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    35ea:	00 
    35eb:	89 7c 24 04          	mov    %edi,0x4(%esp)
    35ef:	89 04 24             	mov    %eax,(%esp)
    35f2:	e8 03 0a 00 00       	call   3ffa <read>
    35f7:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    35fa:	39 de                	cmp    %ebx,%esi
    35fc:	75 ce                	jne    35cc <sbrktest+0x1ec>
  c = sbrk(4096);
    35fe:	c7 04 24 00 10 00 00 	movl   $0x1000,(%esp)
    3605:	8d 75 c0             	lea    -0x40(%ebp),%esi
    3608:	e8 5d 0a 00 00       	call   406a <sbrk>
    360d:	89 c7                	mov    %eax,%edi
    if(pids[i] == -1)
    360f:	8b 06                	mov    (%esi),%eax
    3611:	83 f8 ff             	cmp    $0xffffffff,%eax
    3614:	74 14                	je     362a <sbrktest+0x24a>
    kill(pids[i]);
    3616:	89 04 24             	mov    %eax,(%esp)
    3619:	e8 f4 09 00 00       	call   4012 <kill>
    wait(0);
    361e:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3625:	e8 c0 09 00 00       	call   3fea <wait>
    362a:	83 c6 04             	add    $0x4,%esi
  for(i = 0; i < sizeof(pids)/sizeof(pids[0]); i++){
    362d:	39 f3                	cmp    %esi,%ebx
    362f:	75 de                	jne    360f <sbrktest+0x22f>
  if(c == (char*)0xffffffff){
    3631:	83 ff ff             	cmp    $0xffffffff,%edi
    3634:	0f 84 b9 00 00 00    	je     36f3 <sbrktest+0x313>
  if(sbrk(0) > oldbrk)
    363a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3641:	e8 24 0a 00 00       	call   406a <sbrk>
    3646:	39 45 a4             	cmp    %eax,-0x5c(%ebp)
    3649:	73 19                	jae    3664 <sbrktest+0x284>
    sbrk(-(sbrk(0) - oldbrk));
    364b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3652:	e8 13 0a 00 00       	call   406a <sbrk>
    3657:	8b 7d a4             	mov    -0x5c(%ebp),%edi
    365a:	29 c7                	sub    %eax,%edi
    365c:	89 3c 24             	mov    %edi,(%esp)
    365f:	e8 06 0a 00 00       	call   406a <sbrk>
  printf(stdout, "sbrk test OK\n");
    3664:	a1 14 65 00 00       	mov    0x6514,%eax
    3669:	c7 44 24 04 30 53 00 	movl   $0x5330,0x4(%esp)
    3670:	00 
    3671:	89 04 24             	mov    %eax,(%esp)
    3674:	e8 b7 0a 00 00       	call   4130 <printf>
}
    3679:	83 c4 6c             	add    $0x6c,%esp
    367c:	5b                   	pop    %ebx
    367d:	5e                   	pop    %esi
    367e:	5f                   	pop    %edi
    367f:	5d                   	pop    %ebp
    3680:	c3                   	ret    
      sbrk(BIG - (uint)sbrk(0));
    3681:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3688:	e8 dd 09 00 00       	call   406a <sbrk>
    368d:	ba 00 00 40 06       	mov    $0x6400000,%edx
    3692:	29 c2                	sub    %eax,%edx
    3694:	89 14 24             	mov    %edx,(%esp)
    3697:	e8 ce 09 00 00       	call   406a <sbrk>
      write(fds[1], "x", 1);
    369c:	8b 45 bc             	mov    -0x44(%ebp),%eax
    369f:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    36a6:	00 
    36a7:	c7 44 24 04 f1 4d 00 	movl   $0x4df1,0x4(%esp)
    36ae:	00 
    36af:	89 04 24             	mov    %eax,(%esp)
    36b2:	e8 4b 09 00 00       	call   4002 <write>
    36b7:	90                   	nop
      for(;;) sleep(1000);
    36b8:	c7 04 24 e8 03 00 00 	movl   $0x3e8,(%esp)
    36bf:	e8 ae 09 00 00       	call   4072 <sleep>
    36c4:	eb f2                	jmp    36b8 <sbrktest+0x2d8>
      printf(stdout, "sbrk test failed %d %x %x\n", i, a, b);
    36c6:	89 44 24 10          	mov    %eax,0x10(%esp)
    36ca:	a1 14 65 00 00       	mov    0x6514,%eax
    36cf:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    36d3:	89 74 24 08          	mov    %esi,0x8(%esp)
    36d7:	c7 44 24 04 93 52 00 	movl   $0x5293,0x4(%esp)
    36de:	00 
    36df:	89 04 24             	mov    %eax,(%esp)
    36e2:	e8 49 0a 00 00       	call   4130 <printf>
      exit(0);
    36e7:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    36ee:	e8 ef 08 00 00       	call   3fe2 <exit>
    printf(stdout, "failed sbrk leaked memory\n");
    36f3:	c7 44 24 04 15 53 00 	movl   $0x5315,0x4(%esp)
    36fa:	00 
    printf(stdout, "sbrk test failed post-fork\n");
    36fb:	a1 14 65 00 00       	mov    0x6514,%eax
    3700:	89 04 24             	mov    %eax,(%esp)
    3703:	e8 28 0a 00 00       	call   4130 <printf>
    exit(0);
    3708:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    370f:	e8 ce 08 00 00       	call   3fe2 <exit>
    printf(1, "pipe() failed\n");
    3714:	c7 44 24 04 d1 47 00 	movl   $0x47d1,0x4(%esp)
    371b:	00 
    371c:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3723:	e8 08 0a 00 00       	call   4130 <printf>
    exit(0);
    3728:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    372f:	e8 ae 08 00 00       	call   3fe2 <exit>
      printf(stdout, "oops could read %x = %x\n", a, *a);
    3734:	0f be 03             	movsbl (%ebx),%eax
    3737:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    373b:	c7 44 24 04 fc 52 00 	movl   $0x52fc,0x4(%esp)
    3742:	00 
    3743:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3747:	a1 14 65 00 00       	mov    0x6514,%eax
    374c:	89 04 24             	mov    %eax,(%esp)
    374f:	e8 dc 09 00 00       	call   4130 <printf>
      kill(ppid);
    3754:	89 34 24             	mov    %esi,(%esp)
    3757:	e8 b6 08 00 00       	call   4012 <kill>
      exit(0);
    375c:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3763:	e8 7a 08 00 00       	call   3fe2 <exit>
      printf(stdout, "fork failed\n");
    3768:	c7 44 24 04 d9 53 00 	movl   $0x53d9,0x4(%esp)
    376f:	00 
    3770:	eb 89                	jmp    36fb <sbrktest+0x31b>
    printf(stdout, "sbrk downsize failed, a %x c %x\n", a, c);
    3772:	89 44 24 0c          	mov    %eax,0xc(%esp)
    3776:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    377a:	c7 44 24 04 dc 5a 00 	movl   $0x5adc,0x4(%esp)
    3781:	00 
    3782:	a1 14 65 00 00       	mov    0x6514,%eax
    3787:	89 04 24             	mov    %eax,(%esp)
    378a:	e8 a1 09 00 00       	call   4130 <printf>
    exit(0);
    378f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3796:	e8 47 08 00 00       	call   3fe2 <exit>
    printf(stdout, "sbrk de-allocation didn't really deallocate\n");
    379b:	c7 44 24 04 ac 5a 00 	movl   $0x5aac,0x4(%esp)
    37a2:	00 
    37a3:	e9 53 ff ff ff       	jmp    36fb <sbrktest+0x31b>
    printf(stdout, "sbrk re-allocation failed, a %x c %x\n", a, c);
    37a8:	89 5c 24 0c          	mov    %ebx,0xc(%esp)
    37ac:	89 74 24 08          	mov    %esi,0x8(%esp)
    37b0:	c7 44 24 04 84 5a 00 	movl   $0x5a84,0x4(%esp)
    37b7:	00 
    37b8:	eb c8                	jmp    3782 <sbrktest+0x3a2>
    printf(stdout, "sbrk test failed to grow big address space; enough phys mem?\n");
    37ba:	c7 44 24 04 0c 5a 00 	movl   $0x5a0c,0x4(%esp)
    37c1:	00 
    37c2:	e9 34 ff ff ff       	jmp    36fb <sbrktest+0x31b>
    printf(stdout, "sbrk deallocation produced wrong address, a %x c %x\n", a, c);
    37c7:	89 44 24 0c          	mov    %eax,0xc(%esp)
    37cb:	89 5c 24 08          	mov    %ebx,0x8(%esp)
    37cf:	c7 44 24 04 4c 5a 00 	movl   $0x5a4c,0x4(%esp)
    37d6:	00 
    37d7:	eb a9                	jmp    3782 <sbrktest+0x3a2>
    printf(stdout, "sbrk could not deallocate\n");
    37d9:	c7 44 24 04 e1 52 00 	movl   $0x52e1,0x4(%esp)
    37e0:	00 
    37e1:	e9 15 ff ff ff       	jmp    36fb <sbrktest+0x31b>
    printf(stdout, "sbrk test failed post-fork\n");
    37e6:	c7 44 24 04 c5 52 00 	movl   $0x52c5,0x4(%esp)
    37ed:	00 
    37ee:	e9 08 ff ff ff       	jmp    36fb <sbrktest+0x31b>
    printf(stdout, "sbrk test fork failed\n");
    37f3:	c7 44 24 04 ae 52 00 	movl   $0x52ae,0x4(%esp)
    37fa:	00 
    37fb:	e9 fb fe ff ff       	jmp    36fb <sbrktest+0x31b>

00003800 <validateint>:
{
    3800:	55                   	push   %ebp
    3801:	89 e5                	mov    %esp,%ebp
}
    3803:	5d                   	pop    %ebp
    3804:	c3                   	ret    
    3805:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3809:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003810 <validatetest>:
{
    3810:	55                   	push   %ebp
    3811:	89 e5                	mov    %esp,%ebp
    3813:	56                   	push   %esi
    3814:	53                   	push   %ebx
  for(p = 0; p <= (uint)hi; p += 4096){
    3815:	31 db                	xor    %ebx,%ebx
{
    3817:	83 ec 10             	sub    $0x10,%esp
  printf(stdout, "validate test\n");
    381a:	a1 14 65 00 00       	mov    0x6514,%eax
    381f:	c7 44 24 04 3e 53 00 	movl   $0x533e,0x4(%esp)
    3826:	00 
    3827:	89 04 24             	mov    %eax,(%esp)
    382a:	e8 01 09 00 00       	call   4130 <printf>
    382f:	90                   	nop
    if((pid = fork()) == 0){
    3830:	e8 a5 07 00 00       	call   3fda <fork>
      exit(0);
    3835:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    if((pid = fork()) == 0){
    383c:	85 c0                	test   %eax,%eax
    383e:	89 c6                	mov    %eax,%esi
    3840:	0f 84 80 00 00 00    	je     38c6 <validatetest+0xb6>
    sleep(0);
    3846:	e8 27 08 00 00       	call   4072 <sleep>
    sleep(0);
    384b:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3852:	e8 1b 08 00 00       	call   4072 <sleep>
    kill(pid);
    3857:	89 34 24             	mov    %esi,(%esp)
    385a:	e8 b3 07 00 00       	call   4012 <kill>
    wait(0);
    385f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3866:	e8 7f 07 00 00       	call   3fea <wait>
    if(link("nosuchfile", (char*)p) != -1){
    386b:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    386f:	c7 04 24 4d 53 00 00 	movl   $0x534d,(%esp)
    3876:	e8 c7 07 00 00       	call   4042 <link>
    387b:	83 f8 ff             	cmp    $0xffffffff,%eax
    387e:	75 2a                	jne    38aa <validatetest+0x9a>
  for(p = 0; p <= (uint)hi; p += 4096){
    3880:	81 c3 00 10 00 00    	add    $0x1000,%ebx
    3886:	81 fb 00 40 11 00    	cmp    $0x114000,%ebx
    388c:	75 a2                	jne    3830 <validatetest+0x20>
  printf(stdout, "validate ok\n");
    388e:	a1 14 65 00 00       	mov    0x6514,%eax
    3893:	c7 44 24 04 71 53 00 	movl   $0x5371,0x4(%esp)
    389a:	00 
    389b:	89 04 24             	mov    %eax,(%esp)
    389e:	e8 8d 08 00 00       	call   4130 <printf>
}
    38a3:	83 c4 10             	add    $0x10,%esp
    38a6:	5b                   	pop    %ebx
    38a7:	5e                   	pop    %esi
    38a8:	5d                   	pop    %ebp
    38a9:	c3                   	ret    
      printf(stdout, "link should not succeed\n");
    38aa:	a1 14 65 00 00       	mov    0x6514,%eax
    38af:	c7 44 24 04 58 53 00 	movl   $0x5358,0x4(%esp)
    38b6:	00 
    38b7:	89 04 24             	mov    %eax,(%esp)
    38ba:	e8 71 08 00 00       	call   4130 <printf>
      exit(0);
    38bf:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    38c6:	e8 17 07 00 00       	call   3fe2 <exit>
    38cb:	90                   	nop
    38cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000038d0 <bsstest>:
{
    38d0:	55                   	push   %ebp
    38d1:	89 e5                	mov    %esp,%ebp
    38d3:	83 ec 18             	sub    $0x18,%esp
  printf(stdout, "bss test\n");
    38d6:	a1 14 65 00 00       	mov    0x6514,%eax
    38db:	c7 44 24 04 7e 53 00 	movl   $0x537e,0x4(%esp)
    38e2:	00 
    38e3:	89 04 24             	mov    %eax,(%esp)
    38e6:	e8 45 08 00 00       	call   4130 <printf>
    if(uninit[i] != '\0'){
    38eb:	80 3d e0 65 00 00 00 	cmpb   $0x0,0x65e0
    38f2:	75 36                	jne    392a <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    38f4:	b8 01 00 00 00       	mov    $0x1,%eax
    38f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(uninit[i] != '\0'){
    3900:	80 b8 e0 65 00 00 00 	cmpb   $0x0,0x65e0(%eax)
    3907:	75 21                	jne    392a <bsstest+0x5a>
  for(i = 0; i < sizeof(uninit); i++){
    3909:	83 c0 01             	add    $0x1,%eax
    390c:	3d 10 27 00 00       	cmp    $0x2710,%eax
    3911:	75 ed                	jne    3900 <bsstest+0x30>
  printf(stdout, "bss test ok\n");
    3913:	a1 14 65 00 00       	mov    0x6514,%eax
    3918:	c7 44 24 04 99 53 00 	movl   $0x5399,0x4(%esp)
    391f:	00 
    3920:	89 04 24             	mov    %eax,(%esp)
    3923:	e8 08 08 00 00       	call   4130 <printf>
}
    3928:	c9                   	leave  
    3929:	c3                   	ret    
      printf(stdout, "bss test failed\n");
    392a:	a1 14 65 00 00       	mov    0x6514,%eax
    392f:	c7 44 24 04 88 53 00 	movl   $0x5388,0x4(%esp)
    3936:	00 
    3937:	89 04 24             	mov    %eax,(%esp)
    393a:	e8 f1 07 00 00       	call   4130 <printf>
      exit(0);
    393f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3946:	e8 97 06 00 00       	call   3fe2 <exit>
    394b:	90                   	nop
    394c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00003950 <bigargtest>:
{
    3950:	55                   	push   %ebp
    3951:	89 e5                	mov    %esp,%ebp
    3953:	83 ec 18             	sub    $0x18,%esp
  unlink("bigarg-ok");
    3956:	c7 04 24 a6 53 00 00 	movl   $0x53a6,(%esp)
    395d:	e8 d0 06 00 00       	call   4032 <unlink>
  pid = fork();
    3962:	e8 73 06 00 00       	call   3fda <fork>
  if(pid == 0){
    3967:	85 c0                	test   %eax,%eax
    3969:	74 4d                	je     39b8 <bigargtest+0x68>
    396b:	90                   	nop
    396c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  } else if(pid < 0){
    3970:	0f 88 e6 00 00 00    	js     3a5c <bigargtest+0x10c>
  wait(0);
    3976:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    397d:	e8 68 06 00 00       	call   3fea <wait>
  fd = open("bigarg-ok", 0);
    3982:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3989:	00 
    398a:	c7 04 24 a6 53 00 00 	movl   $0x53a6,(%esp)
    3991:	e8 8c 06 00 00       	call   4022 <open>
  if(fd < 0){
    3996:	85 c0                	test   %eax,%eax
    3998:	0f 88 9d 00 00 00    	js     3a3b <bigargtest+0xeb>
  close(fd);
    399e:	89 04 24             	mov    %eax,(%esp)
    39a1:	e8 64 06 00 00       	call   400a <close>
  unlink("bigarg-ok");
    39a6:	c7 04 24 a6 53 00 00 	movl   $0x53a6,(%esp)
    39ad:	e8 80 06 00 00       	call   4032 <unlink>
}
    39b2:	c9                   	leave  
    39b3:	c3                   	ret    
    39b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      args[i] = "bigargs test: failed\n                                                                                                                                                                                                       ";
    39b8:	c7 04 85 40 65 00 00 	movl   $0x5b00,0x6540(,%eax,4)
    39bf:	00 5b 00 00 
    for(i = 0; i < MAXARG-1; i++)
    39c3:	83 c0 01             	add    $0x1,%eax
    39c6:	83 f8 1f             	cmp    $0x1f,%eax
    39c9:	75 ed                	jne    39b8 <bigargtest+0x68>
    printf(stdout, "bigarg test\n");
    39cb:	a1 14 65 00 00       	mov    0x6514,%eax
    39d0:	c7 44 24 04 b0 53 00 	movl   $0x53b0,0x4(%esp)
    39d7:	00 
    args[MAXARG-1] = 0;
    39d8:	c7 05 bc 65 00 00 00 	movl   $0x0,0x65bc
    39df:	00 00 00 
    printf(stdout, "bigarg test\n");
    39e2:	89 04 24             	mov    %eax,(%esp)
    39e5:	e8 46 07 00 00       	call   4130 <printf>
    exec("echo", args);
    39ea:	c7 44 24 04 40 65 00 	movl   $0x6540,0x4(%esp)
    39f1:	00 
    39f2:	c7 04 24 7d 45 00 00 	movl   $0x457d,(%esp)
    39f9:	e8 1c 06 00 00       	call   401a <exec>
    printf(stdout, "bigarg test ok\n");
    39fe:	a1 14 65 00 00       	mov    0x6514,%eax
    3a03:	c7 44 24 04 bd 53 00 	movl   $0x53bd,0x4(%esp)
    3a0a:	00 
    3a0b:	89 04 24             	mov    %eax,(%esp)
    3a0e:	e8 1d 07 00 00       	call   4130 <printf>
    fd = open("bigarg-ok", O_CREATE);
    3a13:	c7 44 24 04 00 02 00 	movl   $0x200,0x4(%esp)
    3a1a:	00 
    3a1b:	c7 04 24 a6 53 00 00 	movl   $0x53a6,(%esp)
    3a22:	e8 fb 05 00 00       	call   4022 <open>
    close(fd);
    3a27:	89 04 24             	mov    %eax,(%esp)
    3a2a:	e8 db 05 00 00       	call   400a <close>
    exit(0);
    3a2f:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a36:	e8 a7 05 00 00       	call   3fe2 <exit>
    printf(stdout, "bigarg test failed!\n");
    3a3b:	c7 44 24 04 e6 53 00 	movl   $0x53e6,0x4(%esp)
    3a42:	00 
    3a43:	a1 14 65 00 00       	mov    0x6514,%eax
    3a48:	89 04 24             	mov    %eax,(%esp)
    3a4b:	e8 e0 06 00 00       	call   4130 <printf>
    exit(0);
    3a50:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3a57:	e8 86 05 00 00       	call   3fe2 <exit>
    printf(stdout, "bigargtest: fork failed\n");
    3a5c:	c7 44 24 04 cd 53 00 	movl   $0x53cd,0x4(%esp)
    3a63:	00 
    3a64:	eb dd                	jmp    3a43 <bigargtest+0xf3>
    3a66:	8d 76 00             	lea    0x0(%esi),%esi
    3a69:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003a70 <fsfull>:
{
    3a70:	55                   	push   %ebp
    3a71:	89 e5                	mov    %esp,%ebp
    3a73:	57                   	push   %edi
    3a74:	56                   	push   %esi
    3a75:	53                   	push   %ebx
  for(nfiles = 0; ; nfiles++){
    3a76:	31 db                	xor    %ebx,%ebx
{
    3a78:	83 ec 5c             	sub    $0x5c,%esp
  printf(1, "fsfull test\n");
    3a7b:	c7 44 24 04 fb 53 00 	movl   $0x53fb,0x4(%esp)
    3a82:	00 
    3a83:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3a8a:	e8 a1 06 00 00       	call   4130 <printf>
    3a8f:	90                   	nop
    name[1] = '0' + nfiles / 1000;
    3a90:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3a95:	89 d9                	mov    %ebx,%ecx
    3a97:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3a99:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    3a9b:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3a9e:	89 df                	mov    %ebx,%edi
    printf(1, "writing %s\n", name);
    3aa0:	c7 44 24 04 08 54 00 	movl   $0x5408,0x4(%esp)
    3aa7:	00 
    3aa8:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    name[1] = '0' + nfiles / 1000;
    3aaf:	c1 fa 06             	sar    $0x6,%edx
    3ab2:	29 ca                	sub    %ecx,%edx
    3ab4:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3ab7:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3abd:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3ac0:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[0] = 'f';
    3ac5:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3ac9:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3acd:	29 d6                	sub    %edx,%esi
    3acf:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3ad1:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3ad6:	c1 fe 1f             	sar    $0x1f,%esi
    3ad9:	c1 fa 05             	sar    $0x5,%edx
    3adc:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3ade:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3ae3:	83 c2 30             	add    $0x30,%edx
    3ae6:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3ae9:	f7 eb                	imul   %ebx
    3aeb:	c1 fa 05             	sar    $0x5,%edx
    3aee:	29 ca                	sub    %ecx,%edx
    3af0:	6b d2 64             	imul   $0x64,%edx,%edx
    3af3:	29 d7                	sub    %edx,%edi
    3af5:	89 f8                	mov    %edi,%eax
    3af7:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3af9:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3afb:	c1 ff 1f             	sar    $0x1f,%edi
    3afe:	c1 fa 02             	sar    $0x2,%edx
    3b01:	29 fa                	sub    %edi,%edx
    3b03:	83 c2 30             	add    $0x30,%edx
    3b06:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3b09:	f7 ee                	imul   %esi
    3b0b:	c1 fa 02             	sar    $0x2,%edx
    3b0e:	29 ca                	sub    %ecx,%edx
    3b10:	89 d9                	mov    %ebx,%ecx
    3b12:	8d 04 92             	lea    (%edx,%edx,4),%eax
    3b15:	01 c0                	add    %eax,%eax
    3b17:	29 c1                	sub    %eax,%ecx
    3b19:	89 c8                	mov    %ecx,%eax
    3b1b:	83 c0 30             	add    $0x30,%eax
    3b1e:	88 45 ac             	mov    %al,-0x54(%ebp)
    printf(1, "writing %s\n", name);
    3b21:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b24:	89 44 24 08          	mov    %eax,0x8(%esp)
    3b28:	e8 03 06 00 00       	call   4130 <printf>
    int fd = open(name, O_CREATE|O_RDWR);
    3b2d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3b30:	c7 44 24 04 02 02 00 	movl   $0x202,0x4(%esp)
    3b37:	00 
    3b38:	89 04 24             	mov    %eax,(%esp)
    3b3b:	e8 e2 04 00 00       	call   4022 <open>
    if(fd < 0){
    3b40:	85 c0                	test   %eax,%eax
    int fd = open(name, O_CREATE|O_RDWR);
    3b42:	89 c7                	mov    %eax,%edi
    if(fd < 0){
    3b44:	78 57                	js     3b9d <fsfull+0x12d>
    3b46:	31 f6                	xor    %esi,%esi
    3b48:	eb 08                	jmp    3b52 <fsfull+0xe2>
    3b4a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      total += cc;
    3b50:	01 c6                	add    %eax,%esi
      int cc = write(fd, buf, 512);
    3b52:	c7 44 24 08 00 02 00 	movl   $0x200,0x8(%esp)
    3b59:	00 
    3b5a:	c7 44 24 04 00 8d 00 	movl   $0x8d00,0x4(%esp)
    3b61:	00 
    3b62:	89 3c 24             	mov    %edi,(%esp)
    3b65:	e8 98 04 00 00       	call   4002 <write>
      if(cc < 512)
    3b6a:	3d ff 01 00 00       	cmp    $0x1ff,%eax
    3b6f:	7f df                	jg     3b50 <fsfull+0xe0>
    printf(1, "wrote %d bytes\n", total);
    3b71:	89 74 24 08          	mov    %esi,0x8(%esp)
    3b75:	c7 44 24 04 24 54 00 	movl   $0x5424,0x4(%esp)
    3b7c:	00 
    3b7d:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3b84:	e8 a7 05 00 00       	call   4130 <printf>
    close(fd);
    3b89:	89 3c 24             	mov    %edi,(%esp)
    3b8c:	e8 79 04 00 00       	call   400a <close>
    if(total == 0)
    3b91:	85 f6                	test   %esi,%esi
    3b93:	74 23                	je     3bb8 <fsfull+0x148>
  for(nfiles = 0; ; nfiles++){
    3b95:	83 c3 01             	add    $0x1,%ebx
  }
    3b98:	e9 f3 fe ff ff       	jmp    3a90 <fsfull+0x20>
      printf(1, "open %s failed\n", name);
    3b9d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3ba0:	89 44 24 08          	mov    %eax,0x8(%esp)
    3ba4:	c7 44 24 04 14 54 00 	movl   $0x5414,0x4(%esp)
    3bab:	00 
    3bac:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3bb3:	e8 78 05 00 00       	call   4130 <printf>
    name[1] = '0' + nfiles / 1000;
    3bb8:	b8 d3 4d 62 10       	mov    $0x10624dd3,%eax
    3bbd:	89 d9                	mov    %ebx,%ecx
    3bbf:	f7 eb                	imul   %ebx
    name[2] = '0' + (nfiles % 1000) / 100;
    3bc1:	89 de                	mov    %ebx,%esi
    name[1] = '0' + nfiles / 1000;
    3bc3:	c1 f9 1f             	sar    $0x1f,%ecx
    name[3] = '0' + (nfiles % 100) / 10;
    3bc6:	89 df                	mov    %ebx,%edi
    name[0] = 'f';
    3bc8:	c6 45 a8 66          	movb   $0x66,-0x58(%ebp)
    name[5] = '\0';
    3bcc:	c6 45 ad 00          	movb   $0x0,-0x53(%ebp)
    name[1] = '0' + nfiles / 1000;
    3bd0:	c1 fa 06             	sar    $0x6,%edx
    3bd3:	29 ca                	sub    %ecx,%edx
    3bd5:	8d 42 30             	lea    0x30(%edx),%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3bd8:	69 d2 e8 03 00 00    	imul   $0x3e8,%edx,%edx
    name[1] = '0' + nfiles / 1000;
    3bde:	88 45 a9             	mov    %al,-0x57(%ebp)
    name[2] = '0' + (nfiles % 1000) / 100;
    3be1:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    3be6:	29 d6                	sub    %edx,%esi
    3be8:	f7 ee                	imul   %esi
    name[3] = '0' + (nfiles % 100) / 10;
    3bea:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
    name[2] = '0' + (nfiles % 1000) / 100;
    3bef:	c1 fe 1f             	sar    $0x1f,%esi
    3bf2:	c1 fa 05             	sar    $0x5,%edx
    3bf5:	29 f2                	sub    %esi,%edx
    name[3] = '0' + (nfiles % 100) / 10;
    3bf7:	be 67 66 66 66       	mov    $0x66666667,%esi
    name[2] = '0' + (nfiles % 1000) / 100;
    3bfc:	83 c2 30             	add    $0x30,%edx
    3bff:	88 55 aa             	mov    %dl,-0x56(%ebp)
    name[3] = '0' + (nfiles % 100) / 10;
    3c02:	f7 eb                	imul   %ebx
    3c04:	c1 fa 05             	sar    $0x5,%edx
    3c07:	29 ca                	sub    %ecx,%edx
    3c09:	6b d2 64             	imul   $0x64,%edx,%edx
    3c0c:	29 d7                	sub    %edx,%edi
    3c0e:	89 f8                	mov    %edi,%eax
    3c10:	f7 ee                	imul   %esi
    name[4] = '0' + (nfiles % 10);
    3c12:	89 d8                	mov    %ebx,%eax
    name[3] = '0' + (nfiles % 100) / 10;
    3c14:	c1 ff 1f             	sar    $0x1f,%edi
    3c17:	c1 fa 02             	sar    $0x2,%edx
    3c1a:	29 fa                	sub    %edi,%edx
    3c1c:	83 c2 30             	add    $0x30,%edx
    3c1f:	88 55 ab             	mov    %dl,-0x55(%ebp)
    name[4] = '0' + (nfiles % 10);
    3c22:	f7 ee                	imul   %esi
    3c24:	c1 fa 02             	sar    $0x2,%edx
    3c27:	29 ca                	sub    %ecx,%edx
    3c29:	89 d9                	mov    %ebx,%ecx
    3c2b:	8d 04 92             	lea    (%edx,%edx,4),%eax
    nfiles--;
    3c2e:	83 eb 01             	sub    $0x1,%ebx
    name[4] = '0' + (nfiles % 10);
    3c31:	01 c0                	add    %eax,%eax
    3c33:	29 c1                	sub    %eax,%ecx
    3c35:	89 c8                	mov    %ecx,%eax
    3c37:	83 c0 30             	add    $0x30,%eax
    3c3a:	88 45 ac             	mov    %al,-0x54(%ebp)
    unlink(name);
    3c3d:	8d 45 a8             	lea    -0x58(%ebp),%eax
    3c40:	89 04 24             	mov    %eax,(%esp)
    3c43:	e8 ea 03 00 00       	call   4032 <unlink>
  while(nfiles >= 0){
    3c48:	83 fb ff             	cmp    $0xffffffff,%ebx
    3c4b:	0f 85 67 ff ff ff    	jne    3bb8 <fsfull+0x148>
  printf(1, "fsfull test finished\n");
    3c51:	c7 44 24 04 34 54 00 	movl   $0x5434,0x4(%esp)
    3c58:	00 
    3c59:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c60:	e8 cb 04 00 00       	call   4130 <printf>
}
    3c65:	83 c4 5c             	add    $0x5c,%esp
    3c68:	5b                   	pop    %ebx
    3c69:	5e                   	pop    %esi
    3c6a:	5f                   	pop    %edi
    3c6b:	5d                   	pop    %ebp
    3c6c:	c3                   	ret    
    3c6d:	8d 76 00             	lea    0x0(%esi),%esi

00003c70 <uio>:
{
    3c70:	55                   	push   %ebp
    3c71:	89 e5                	mov    %esp,%ebp
    3c73:	83 ec 18             	sub    $0x18,%esp
  printf(1, "uio test\n");
    3c76:	c7 44 24 04 4a 54 00 	movl   $0x544a,0x4(%esp)
    3c7d:	00 
    3c7e:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3c85:	e8 a6 04 00 00       	call   4130 <printf>
  pid = fork();
    3c8a:	e8 4b 03 00 00       	call   3fda <fork>
  if(pid == 0){
    3c8f:	85 c0                	test   %eax,%eax
    3c91:	74 24                	je     3cb7 <uio+0x47>
  } else if(pid < 0){
    3c93:	78 50                	js     3ce5 <uio+0x75>
  wait(0);
    3c95:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3c9c:	e8 49 03 00 00       	call   3fea <wait>
  printf(1, "uio test done\n");
    3ca1:	c7 44 24 04 54 54 00 	movl   $0x5454,0x4(%esp)
    3ca8:	00 
    3ca9:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3cb0:	e8 7b 04 00 00       	call   4130 <printf>
}
    3cb5:	c9                   	leave  
    3cb6:	c3                   	ret    
    asm volatile("outb %0,%1"::"a"(val), "d" (port));
    3cb7:	ba 70 00 00 00       	mov    $0x70,%edx
    3cbc:	b8 09 00 00 00       	mov    $0x9,%eax
    3cc1:	ee                   	out    %al,(%dx)
    asm volatile("inb %1,%0" : "=a" (val) : "d" (port));
    3cc2:	b2 71                	mov    $0x71,%dl
    3cc4:	ec                   	in     (%dx),%al
    printf(1, "uio: uio succeeded; test FAILED\n");
    3cc5:	c7 44 24 04 e0 5b 00 	movl   $0x5be0,0x4(%esp)
    3ccc:	00 
    3ccd:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3cd4:	e8 57 04 00 00       	call   4130 <printf>
    exit(0);
    3cd9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ce0:	e8 fd 02 00 00       	call   3fe2 <exit>
    printf (1, "fork failed\n");
    3ce5:	c7 44 24 04 d9 53 00 	movl   $0x53d9,0x4(%esp)
    3cec:	00 
    3ced:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3cf4:	e8 37 04 00 00       	call   4130 <printf>
    exit(0);
    3cf9:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d00:	e8 dd 02 00 00       	call   3fe2 <exit>
    3d05:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3d09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003d10 <argptest>:
{
    3d10:	55                   	push   %ebp
    3d11:	89 e5                	mov    %esp,%ebp
    3d13:	53                   	push   %ebx
    3d14:	83 ec 14             	sub    $0x14,%esp
  fd = open("init", O_RDONLY);
    3d17:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3d1e:	00 
    3d1f:	c7 04 24 63 54 00 00 	movl   $0x5463,(%esp)
    3d26:	e8 f7 02 00 00       	call   4022 <open>
  if (fd < 0) {
    3d2b:	85 c0                	test   %eax,%eax
  fd = open("init", O_RDONLY);
    3d2d:	89 c3                	mov    %eax,%ebx
  if (fd < 0) {
    3d2f:	78 45                	js     3d76 <argptest+0x66>
  read(fd, sbrk(0) - 1, -1);
    3d31:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d38:	e8 2d 03 00 00       	call   406a <sbrk>
    3d3d:	89 1c 24             	mov    %ebx,(%esp)
    3d40:	c7 44 24 08 ff ff ff 	movl   $0xffffffff,0x8(%esp)
    3d47:	ff 
    3d48:	83 e8 01             	sub    $0x1,%eax
    3d4b:	89 44 24 04          	mov    %eax,0x4(%esp)
    3d4f:	e8 a6 02 00 00       	call   3ffa <read>
  close(fd);
    3d54:	89 1c 24             	mov    %ebx,(%esp)
    3d57:	e8 ae 02 00 00       	call   400a <close>
  printf(1, "arg test passed\n");
    3d5c:	c7 44 24 04 75 54 00 	movl   $0x5475,0x4(%esp)
    3d63:	00 
    3d64:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    3d6b:	e8 c0 03 00 00       	call   4130 <printf>
}
    3d70:	83 c4 14             	add    $0x14,%esp
    3d73:	5b                   	pop    %ebx
    3d74:	5d                   	pop    %ebp
    3d75:	c3                   	ret    
    printf(2, "open failed\n");
    3d76:	c7 44 24 04 68 54 00 	movl   $0x5468,0x4(%esp)
    3d7d:	00 
    3d7e:	c7 04 24 02 00 00 00 	movl   $0x2,(%esp)
    3d85:	e8 a6 03 00 00       	call   4130 <printf>
    exit(0);
    3d8a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3d91:	e8 4c 02 00 00       	call   3fe2 <exit>
    3d96:	8d 76 00             	lea    0x0(%esi),%esi
    3d99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003da0 <rand>:
  randstate = randstate * 1664525 + 1013904223;
    3da0:	69 05 10 65 00 00 0d 	imul   $0x19660d,0x6510,%eax
    3da7:	66 19 00 
{
    3daa:	55                   	push   %ebp
    3dab:	89 e5                	mov    %esp,%ebp
}
    3dad:	5d                   	pop    %ebp
  randstate = randstate * 1664525 + 1013904223;
    3dae:	05 5f f3 6e 3c       	add    $0x3c6ef35f,%eax
    3db3:	a3 10 65 00 00       	mov    %eax,0x6510
}
    3db8:	c3                   	ret    
    3db9:	66 90                	xchg   %ax,%ax
    3dbb:	66 90                	xchg   %ax,%ax
    3dbd:	66 90                	xchg   %ax,%ax
    3dbf:	90                   	nop

00003dc0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
    3dc0:	55                   	push   %ebp
    3dc1:	89 e5                	mov    %esp,%ebp
    3dc3:	8b 45 08             	mov    0x8(%ebp),%eax
    3dc6:	8b 4d 0c             	mov    0xc(%ebp),%ecx
    3dc9:	53                   	push   %ebx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
    3dca:	89 c2                	mov    %eax,%edx
    3dcc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    3dd0:	83 c1 01             	add    $0x1,%ecx
    3dd3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
    3dd7:	83 c2 01             	add    $0x1,%edx
    3dda:	84 db                	test   %bl,%bl
    3ddc:	88 5a ff             	mov    %bl,-0x1(%edx)
    3ddf:	75 ef                	jne    3dd0 <strcpy+0x10>
    ;
  return os;
}
    3de1:	5b                   	pop    %ebx
    3de2:	5d                   	pop    %ebp
    3de3:	c3                   	ret    
    3de4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3dea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00003df0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
    3df0:	55                   	push   %ebp
    3df1:	89 e5                	mov    %esp,%ebp
    3df3:	8b 55 08             	mov    0x8(%ebp),%edx
    3df6:	53                   	push   %ebx
    3df7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
    3dfa:	0f b6 02             	movzbl (%edx),%eax
    3dfd:	84 c0                	test   %al,%al
    3dff:	74 2d                	je     3e2e <strcmp+0x3e>
    3e01:	0f b6 19             	movzbl (%ecx),%ebx
    3e04:	38 d8                	cmp    %bl,%al
    3e06:	74 0e                	je     3e16 <strcmp+0x26>
    3e08:	eb 2b                	jmp    3e35 <strcmp+0x45>
    3e0a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3e10:	38 c8                	cmp    %cl,%al
    3e12:	75 15                	jne    3e29 <strcmp+0x39>
    p++, q++;
    3e14:	89 d9                	mov    %ebx,%ecx
    3e16:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
    3e19:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
    3e1c:	8d 59 01             	lea    0x1(%ecx),%ebx
  while(*p && *p == *q)
    3e1f:	0f b6 49 01          	movzbl 0x1(%ecx),%ecx
    3e23:	84 c0                	test   %al,%al
    3e25:	75 e9                	jne    3e10 <strcmp+0x20>
    3e27:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
    3e29:	29 c8                	sub    %ecx,%eax
}
    3e2b:	5b                   	pop    %ebx
    3e2c:	5d                   	pop    %ebp
    3e2d:	c3                   	ret    
    3e2e:	0f b6 09             	movzbl (%ecx),%ecx
  while(*p && *p == *q)
    3e31:	31 c0                	xor    %eax,%eax
    3e33:	eb f4                	jmp    3e29 <strcmp+0x39>
    3e35:	0f b6 cb             	movzbl %bl,%ecx
    3e38:	eb ef                	jmp    3e29 <strcmp+0x39>
    3e3a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi

00003e40 <strlen>:

uint
strlen(const char *s)
{
    3e40:	55                   	push   %ebp
    3e41:	89 e5                	mov    %esp,%ebp
    3e43:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
    3e46:	80 39 00             	cmpb   $0x0,(%ecx)
    3e49:	74 12                	je     3e5d <strlen+0x1d>
    3e4b:	31 d2                	xor    %edx,%edx
    3e4d:	8d 76 00             	lea    0x0(%esi),%esi
    3e50:	83 c2 01             	add    $0x1,%edx
    3e53:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
    3e57:	89 d0                	mov    %edx,%eax
    3e59:	75 f5                	jne    3e50 <strlen+0x10>
    ;
  return n;
}
    3e5b:	5d                   	pop    %ebp
    3e5c:	c3                   	ret    
  for(n = 0; s[n]; n++)
    3e5d:	31 c0                	xor    %eax,%eax
}
    3e5f:	5d                   	pop    %ebp
    3e60:	c3                   	ret    
    3e61:	eb 0d                	jmp    3e70 <memset>
    3e63:	90                   	nop
    3e64:	90                   	nop
    3e65:	90                   	nop
    3e66:	90                   	nop
    3e67:	90                   	nop
    3e68:	90                   	nop
    3e69:	90                   	nop
    3e6a:	90                   	nop
    3e6b:	90                   	nop
    3e6c:	90                   	nop
    3e6d:	90                   	nop
    3e6e:	90                   	nop
    3e6f:	90                   	nop

00003e70 <memset>:

void*
memset(void *dst, int c, uint n)
{
    3e70:	55                   	push   %ebp
    3e71:	89 e5                	mov    %esp,%ebp
    3e73:	8b 55 08             	mov    0x8(%ebp),%edx
    3e76:	57                   	push   %edi
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
    3e77:	8b 4d 10             	mov    0x10(%ebp),%ecx
    3e7a:	8b 45 0c             	mov    0xc(%ebp),%eax
    3e7d:	89 d7                	mov    %edx,%edi
    3e7f:	fc                   	cld    
    3e80:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    3e82:	89 d0                	mov    %edx,%eax
    3e84:	5f                   	pop    %edi
    3e85:	5d                   	pop    %ebp
    3e86:	c3                   	ret    
    3e87:	89 f6                	mov    %esi,%esi
    3e89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003e90 <strchr>:

char*
strchr(const char *s, char c)
{
    3e90:	55                   	push   %ebp
    3e91:	89 e5                	mov    %esp,%ebp
    3e93:	8b 45 08             	mov    0x8(%ebp),%eax
    3e96:	53                   	push   %ebx
    3e97:	8b 55 0c             	mov    0xc(%ebp),%edx
  for(; *s; s++)
    3e9a:	0f b6 18             	movzbl (%eax),%ebx
    3e9d:	84 db                	test   %bl,%bl
    3e9f:	74 1d                	je     3ebe <strchr+0x2e>
    if(*s == c)
    3ea1:	38 d3                	cmp    %dl,%bl
    3ea3:	89 d1                	mov    %edx,%ecx
    3ea5:	75 0d                	jne    3eb4 <strchr+0x24>
    3ea7:	eb 17                	jmp    3ec0 <strchr+0x30>
    3ea9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    3eb0:	38 ca                	cmp    %cl,%dl
    3eb2:	74 0c                	je     3ec0 <strchr+0x30>
  for(; *s; s++)
    3eb4:	83 c0 01             	add    $0x1,%eax
    3eb7:	0f b6 10             	movzbl (%eax),%edx
    3eba:	84 d2                	test   %dl,%dl
    3ebc:	75 f2                	jne    3eb0 <strchr+0x20>
      return (char*)s;
  return 0;
    3ebe:	31 c0                	xor    %eax,%eax
}
    3ec0:	5b                   	pop    %ebx
    3ec1:	5d                   	pop    %ebp
    3ec2:	c3                   	ret    
    3ec3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    3ec9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00003ed0 <gets>:

char*
gets(char *buf, int max)
{
    3ed0:	55                   	push   %ebp
    3ed1:	89 e5                	mov    %esp,%ebp
    3ed3:	57                   	push   %edi
    3ed4:	56                   	push   %esi
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    3ed5:	31 f6                	xor    %esi,%esi
{
    3ed7:	53                   	push   %ebx
    3ed8:	83 ec 2c             	sub    $0x2c,%esp
    cc = read(0, &c, 1);
    3edb:	8d 7d e7             	lea    -0x19(%ebp),%edi
  for(i=0; i+1 < max; ){
    3ede:	eb 31                	jmp    3f11 <gets+0x41>
    cc = read(0, &c, 1);
    3ee0:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    3ee7:	00 
    3ee8:	89 7c 24 04          	mov    %edi,0x4(%esp)
    3eec:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3ef3:	e8 02 01 00 00       	call   3ffa <read>
    if(cc < 1)
    3ef8:	85 c0                	test   %eax,%eax
    3efa:	7e 1d                	jle    3f19 <gets+0x49>
      break;
    buf[i++] = c;
    3efc:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
  for(i=0; i+1 < max; ){
    3f00:	89 de                	mov    %ebx,%esi
    buf[i++] = c;
    3f02:	8b 55 08             	mov    0x8(%ebp),%edx
    if(c == '\n' || c == '\r')
    3f05:	3c 0d                	cmp    $0xd,%al
    buf[i++] = c;
    3f07:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
    if(c == '\n' || c == '\r')
    3f0b:	74 0c                	je     3f19 <gets+0x49>
    3f0d:	3c 0a                	cmp    $0xa,%al
    3f0f:	74 08                	je     3f19 <gets+0x49>
  for(i=0; i+1 < max; ){
    3f11:	8d 5e 01             	lea    0x1(%esi),%ebx
    3f14:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    3f17:	7c c7                	jl     3ee0 <gets+0x10>
      break;
  }
  buf[i] = '\0';
    3f19:	8b 45 08             	mov    0x8(%ebp),%eax
    3f1c:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
  return buf;
}
    3f20:	83 c4 2c             	add    $0x2c,%esp
    3f23:	5b                   	pop    %ebx
    3f24:	5e                   	pop    %esi
    3f25:	5f                   	pop    %edi
    3f26:	5d                   	pop    %ebp
    3f27:	c3                   	ret    
    3f28:	90                   	nop
    3f29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00003f30 <stat>:

int
stat(const char *n, struct stat *st)
{
    3f30:	55                   	push   %ebp
    3f31:	89 e5                	mov    %esp,%ebp
    3f33:	56                   	push   %esi
    3f34:	53                   	push   %ebx
    3f35:	83 ec 10             	sub    $0x10,%esp
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    3f38:	8b 45 08             	mov    0x8(%ebp),%eax
    3f3b:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3f42:	00 
    3f43:	89 04 24             	mov    %eax,(%esp)
    3f46:	e8 d7 00 00 00       	call   4022 <open>
  if(fd < 0)
    3f4b:	85 c0                	test   %eax,%eax
  fd = open(n, O_RDONLY);
    3f4d:	89 c3                	mov    %eax,%ebx
  if(fd < 0)
    3f4f:	78 27                	js     3f78 <stat+0x48>
    return -1;
  r = fstat(fd, st);
    3f51:	8b 45 0c             	mov    0xc(%ebp),%eax
    3f54:	89 1c 24             	mov    %ebx,(%esp)
    3f57:	89 44 24 04          	mov    %eax,0x4(%esp)
    3f5b:	e8 da 00 00 00       	call   403a <fstat>
  close(fd);
    3f60:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    3f63:	89 c6                	mov    %eax,%esi
  close(fd);
    3f65:	e8 a0 00 00 00       	call   400a <close>
  return r;
    3f6a:	89 f0                	mov    %esi,%eax
}
    3f6c:	83 c4 10             	add    $0x10,%esp
    3f6f:	5b                   	pop    %ebx
    3f70:	5e                   	pop    %esi
    3f71:	5d                   	pop    %ebp
    3f72:	c3                   	ret    
    3f73:	90                   	nop
    3f74:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    return -1;
    3f78:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3f7d:	eb ed                	jmp    3f6c <stat+0x3c>
    3f7f:	90                   	nop

00003f80 <atoi>:

int
atoi(const char *s)
{
    3f80:	55                   	push   %ebp
    3f81:	89 e5                	mov    %esp,%ebp
    3f83:	8b 4d 08             	mov    0x8(%ebp),%ecx
    3f86:	53                   	push   %ebx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    3f87:	0f be 11             	movsbl (%ecx),%edx
    3f8a:	8d 42 d0             	lea    -0x30(%edx),%eax
    3f8d:	3c 09                	cmp    $0x9,%al
  n = 0;
    3f8f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    3f94:	77 17                	ja     3fad <atoi+0x2d>
    3f96:	66 90                	xchg   %ax,%ax
    n = n*10 + *s++ - '0';
    3f98:	83 c1 01             	add    $0x1,%ecx
    3f9b:	8d 04 80             	lea    (%eax,%eax,4),%eax
    3f9e:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    3fa2:	0f be 11             	movsbl (%ecx),%edx
    3fa5:	8d 5a d0             	lea    -0x30(%edx),%ebx
    3fa8:	80 fb 09             	cmp    $0x9,%bl
    3fab:	76 eb                	jbe    3f98 <atoi+0x18>
  return n;
}
    3fad:	5b                   	pop    %ebx
    3fae:	5d                   	pop    %ebp
    3faf:	c3                   	ret    

00003fb0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    3fb0:	55                   	push   %ebp
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    3fb1:	31 d2                	xor    %edx,%edx
{
    3fb3:	89 e5                	mov    %esp,%ebp
    3fb5:	56                   	push   %esi
    3fb6:	8b 45 08             	mov    0x8(%ebp),%eax
    3fb9:	53                   	push   %ebx
    3fba:	8b 5d 10             	mov    0x10(%ebp),%ebx
    3fbd:	8b 75 0c             	mov    0xc(%ebp),%esi
  while(n-- > 0)
    3fc0:	85 db                	test   %ebx,%ebx
    3fc2:	7e 12                	jle    3fd6 <memmove+0x26>
    3fc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    3fc8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    3fcc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    3fcf:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    3fd2:	39 da                	cmp    %ebx,%edx
    3fd4:	75 f2                	jne    3fc8 <memmove+0x18>
  return vdst;
}
    3fd6:	5b                   	pop    %ebx
    3fd7:	5e                   	pop    %esi
    3fd8:	5d                   	pop    %ebp
    3fd9:	c3                   	ret    

00003fda <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    3fda:	b8 01 00 00 00       	mov    $0x1,%eax
    3fdf:	cd 40                	int    $0x40
    3fe1:	c3                   	ret    

00003fe2 <exit>:
SYSCALL(exit)
    3fe2:	b8 02 00 00 00       	mov    $0x2,%eax
    3fe7:	cd 40                	int    $0x40
    3fe9:	c3                   	ret    

00003fea <wait>:
SYSCALL(wait)
    3fea:	b8 03 00 00 00       	mov    $0x3,%eax
    3fef:	cd 40                	int    $0x40
    3ff1:	c3                   	ret    

00003ff2 <pipe>:
SYSCALL(pipe)
    3ff2:	b8 04 00 00 00       	mov    $0x4,%eax
    3ff7:	cd 40                	int    $0x40
    3ff9:	c3                   	ret    

00003ffa <read>:
SYSCALL(read)
    3ffa:	b8 05 00 00 00       	mov    $0x5,%eax
    3fff:	cd 40                	int    $0x40
    4001:	c3                   	ret    

00004002 <write>:
SYSCALL(write)
    4002:	b8 10 00 00 00       	mov    $0x10,%eax
    4007:	cd 40                	int    $0x40
    4009:	c3                   	ret    

0000400a <close>:
SYSCALL(close)
    400a:	b8 15 00 00 00       	mov    $0x15,%eax
    400f:	cd 40                	int    $0x40
    4011:	c3                   	ret    

00004012 <kill>:
SYSCALL(kill)
    4012:	b8 06 00 00 00       	mov    $0x6,%eax
    4017:	cd 40                	int    $0x40
    4019:	c3                   	ret    

0000401a <exec>:
SYSCALL(exec)
    401a:	b8 07 00 00 00       	mov    $0x7,%eax
    401f:	cd 40                	int    $0x40
    4021:	c3                   	ret    

00004022 <open>:
SYSCALL(open)
    4022:	b8 0f 00 00 00       	mov    $0xf,%eax
    4027:	cd 40                	int    $0x40
    4029:	c3                   	ret    

0000402a <mknod>:
SYSCALL(mknod)
    402a:	b8 11 00 00 00       	mov    $0x11,%eax
    402f:	cd 40                	int    $0x40
    4031:	c3                   	ret    

00004032 <unlink>:
SYSCALL(unlink)
    4032:	b8 12 00 00 00       	mov    $0x12,%eax
    4037:	cd 40                	int    $0x40
    4039:	c3                   	ret    

0000403a <fstat>:
SYSCALL(fstat)
    403a:	b8 08 00 00 00       	mov    $0x8,%eax
    403f:	cd 40                	int    $0x40
    4041:	c3                   	ret    

00004042 <link>:
SYSCALL(link)
    4042:	b8 13 00 00 00       	mov    $0x13,%eax
    4047:	cd 40                	int    $0x40
    4049:	c3                   	ret    

0000404a <mkdir>:
SYSCALL(mkdir)
    404a:	b8 14 00 00 00       	mov    $0x14,%eax
    404f:	cd 40                	int    $0x40
    4051:	c3                   	ret    

00004052 <chdir>:
SYSCALL(chdir)
    4052:	b8 09 00 00 00       	mov    $0x9,%eax
    4057:	cd 40                	int    $0x40
    4059:	c3                   	ret    

0000405a <dup>:
SYSCALL(dup)
    405a:	b8 0a 00 00 00       	mov    $0xa,%eax
    405f:	cd 40                	int    $0x40
    4061:	c3                   	ret    

00004062 <getpid>:
SYSCALL(getpid)
    4062:	b8 0b 00 00 00       	mov    $0xb,%eax
    4067:	cd 40                	int    $0x40
    4069:	c3                   	ret    

0000406a <sbrk>:
SYSCALL(sbrk)
    406a:	b8 0c 00 00 00       	mov    $0xc,%eax
    406f:	cd 40                	int    $0x40
    4071:	c3                   	ret    

00004072 <sleep>:
SYSCALL(sleep)
    4072:	b8 0d 00 00 00       	mov    $0xd,%eax
    4077:	cd 40                	int    $0x40
    4079:	c3                   	ret    

0000407a <uptime>:
SYSCALL(uptime)
    407a:	b8 0e 00 00 00       	mov    $0xe,%eax
    407f:	cd 40                	int    $0x40
    4081:	c3                   	ret    

00004082 <waitpid>:
SYSCALL(waitpid)
    4082:	b8 16 00 00 00       	mov    $0x16,%eax
    4087:	cd 40                	int    $0x40
    4089:	c3                   	ret    
    408a:	66 90                	xchg   %ax,%ax
    408c:	66 90                	xchg   %ax,%ax
    408e:	66 90                	xchg   %ax,%ax

00004090 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    4090:	55                   	push   %ebp
    4091:	89 e5                	mov    %esp,%ebp
    4093:	57                   	push   %edi
    4094:	56                   	push   %esi
    4095:	89 c6                	mov    %eax,%esi
    4097:	53                   	push   %ebx
    4098:	83 ec 4c             	sub    $0x4c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    409b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    409e:	85 db                	test   %ebx,%ebx
    40a0:	74 09                	je     40ab <printint+0x1b>
    40a2:	89 d0                	mov    %edx,%eax
    40a4:	c1 e8 1f             	shr    $0x1f,%eax
    40a7:	84 c0                	test   %al,%al
    40a9:	75 75                	jne    4120 <printint+0x90>
    neg = 1;
    x = -xx;
  } else {
    x = xx;
    40ab:	89 d0                	mov    %edx,%eax
  neg = 0;
    40ad:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    40b4:	89 75 c0             	mov    %esi,-0x40(%ebp)
  }

  i = 0;
    40b7:	31 ff                	xor    %edi,%edi
    40b9:	89 ce                	mov    %ecx,%esi
    40bb:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    40be:	eb 02                	jmp    40c2 <printint+0x32>
  do{
    buf[i++] = digits[x % base];
    40c0:	89 cf                	mov    %ecx,%edi
    40c2:	31 d2                	xor    %edx,%edx
    40c4:	f7 f6                	div    %esi
    40c6:	8d 4f 01             	lea    0x1(%edi),%ecx
    40c9:	0f b6 92 37 5c 00 00 	movzbl 0x5c37(%edx),%edx
  }while((x /= base) != 0);
    40d0:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    40d2:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
    40d5:	75 e9                	jne    40c0 <printint+0x30>
  if(neg)
    40d7:	8b 55 c4             	mov    -0x3c(%ebp),%edx
    buf[i++] = digits[x % base];
    40da:	89 c8                	mov    %ecx,%eax
    40dc:	8b 75 c0             	mov    -0x40(%ebp),%esi
  if(neg)
    40df:	85 d2                	test   %edx,%edx
    40e1:	74 08                	je     40eb <printint+0x5b>
    buf[i++] = '-';
    40e3:	8d 4f 02             	lea    0x2(%edi),%ecx
    40e6:	c6 44 05 d8 2d       	movb   $0x2d,-0x28(%ebp,%eax,1)

  while(--i >= 0)
    40eb:	8d 79 ff             	lea    -0x1(%ecx),%edi
    40ee:	66 90                	xchg   %ax,%ax
    40f0:	0f b6 44 3d d8       	movzbl -0x28(%ebp,%edi,1),%eax
    40f5:	83 ef 01             	sub    $0x1,%edi
  write(fd, &c, 1);
    40f8:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    40ff:	00 
    4100:	89 5c 24 04          	mov    %ebx,0x4(%esp)
    4104:	89 34 24             	mov    %esi,(%esp)
    4107:	88 45 d7             	mov    %al,-0x29(%ebp)
    410a:	e8 f3 fe ff ff       	call   4002 <write>
  while(--i >= 0)
    410f:	83 ff ff             	cmp    $0xffffffff,%edi
    4112:	75 dc                	jne    40f0 <printint+0x60>
    putc(fd, buf[i]);
}
    4114:	83 c4 4c             	add    $0x4c,%esp
    4117:	5b                   	pop    %ebx
    4118:	5e                   	pop    %esi
    4119:	5f                   	pop    %edi
    411a:	5d                   	pop    %ebp
    411b:	c3                   	ret    
    411c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    x = -xx;
    4120:	89 d0                	mov    %edx,%eax
    4122:	f7 d8                	neg    %eax
    neg = 1;
    4124:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    412b:	eb 87                	jmp    40b4 <printint+0x24>
    412d:	8d 76 00             	lea    0x0(%esi),%esi

00004130 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    4130:	55                   	push   %ebp
    4131:	89 e5                	mov    %esp,%ebp
    4133:	57                   	push   %edi
  char *s;
  int c, i, state;
  uint *ap;

  state = 0;
    4134:	31 ff                	xor    %edi,%edi
{
    4136:	56                   	push   %esi
    4137:	53                   	push   %ebx
    4138:	83 ec 3c             	sub    $0x3c,%esp
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    413b:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  ap = (uint*)(void*)&fmt + 1;
    413e:	8d 45 10             	lea    0x10(%ebp),%eax
{
    4141:	8b 75 08             	mov    0x8(%ebp),%esi
  ap = (uint*)(void*)&fmt + 1;
    4144:	89 45 d4             	mov    %eax,-0x2c(%ebp)
  for(i = 0; fmt[i]; i++){
    4147:	0f b6 13             	movzbl (%ebx),%edx
    414a:	83 c3 01             	add    $0x1,%ebx
    414d:	84 d2                	test   %dl,%dl
    414f:	75 39                	jne    418a <printf+0x5a>
    4151:	e9 c2 00 00 00       	jmp    4218 <printf+0xe8>
    4156:	66 90                	xchg   %ax,%ax
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    4158:	83 fa 25             	cmp    $0x25,%edx
    415b:	0f 84 bf 00 00 00    	je     4220 <printf+0xf0>
  write(fd, &c, 1);
    4161:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    4164:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    416b:	00 
    416c:	89 44 24 04          	mov    %eax,0x4(%esp)
    4170:	89 34 24             	mov    %esi,(%esp)
        state = '%';
      } else {
        putc(fd, c);
    4173:	88 55 e2             	mov    %dl,-0x1e(%ebp)
  write(fd, &c, 1);
    4176:	e8 87 fe ff ff       	call   4002 <write>
    417b:	83 c3 01             	add    $0x1,%ebx
  for(i = 0; fmt[i]; i++){
    417e:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    4182:	84 d2                	test   %dl,%dl
    4184:	0f 84 8e 00 00 00    	je     4218 <printf+0xe8>
    if(state == 0){
    418a:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    418c:	0f be c2             	movsbl %dl,%eax
    if(state == 0){
    418f:	74 c7                	je     4158 <printf+0x28>
      }
    } else if(state == '%'){
    4191:	83 ff 25             	cmp    $0x25,%edi
    4194:	75 e5                	jne    417b <printf+0x4b>
      if(c == 'd'){
    4196:	83 fa 64             	cmp    $0x64,%edx
    4199:	0f 84 31 01 00 00    	je     42d0 <printf+0x1a0>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    419f:	25 f7 00 00 00       	and    $0xf7,%eax
    41a4:	83 f8 70             	cmp    $0x70,%eax
    41a7:	0f 84 83 00 00 00    	je     4230 <printf+0x100>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    41ad:	83 fa 73             	cmp    $0x73,%edx
    41b0:	0f 84 a2 00 00 00    	je     4258 <printf+0x128>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    41b6:	83 fa 63             	cmp    $0x63,%edx
    41b9:	0f 84 35 01 00 00    	je     42f4 <printf+0x1c4>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    41bf:	83 fa 25             	cmp    $0x25,%edx
    41c2:	0f 84 e0 00 00 00    	je     42a8 <printf+0x178>
  write(fd, &c, 1);
    41c8:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    41cb:	83 c3 01             	add    $0x1,%ebx
    41ce:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    41d5:	00 
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    41d6:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    41d8:	89 44 24 04          	mov    %eax,0x4(%esp)
    41dc:	89 34 24             	mov    %esi,(%esp)
    41df:	89 55 d0             	mov    %edx,-0x30(%ebp)
    41e2:	c6 45 e6 25          	movb   $0x25,-0x1a(%ebp)
    41e6:	e8 17 fe ff ff       	call   4002 <write>
        putc(fd, c);
    41eb:	8b 55 d0             	mov    -0x30(%ebp),%edx
  write(fd, &c, 1);
    41ee:	8d 45 e7             	lea    -0x19(%ebp),%eax
    41f1:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    41f8:	00 
    41f9:	89 44 24 04          	mov    %eax,0x4(%esp)
    41fd:	89 34 24             	mov    %esi,(%esp)
        putc(fd, c);
    4200:	88 55 e7             	mov    %dl,-0x19(%ebp)
  write(fd, &c, 1);
    4203:	e8 fa fd ff ff       	call   4002 <write>
  for(i = 0; fmt[i]; i++){
    4208:	0f b6 53 ff          	movzbl -0x1(%ebx),%edx
    420c:	84 d2                	test   %dl,%dl
    420e:	0f 85 76 ff ff ff    	jne    418a <printf+0x5a>
    4214:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    }
  }
}
    4218:	83 c4 3c             	add    $0x3c,%esp
    421b:	5b                   	pop    %ebx
    421c:	5e                   	pop    %esi
    421d:	5f                   	pop    %edi
    421e:	5d                   	pop    %ebp
    421f:	c3                   	ret    
        state = '%';
    4220:	bf 25 00 00 00       	mov    $0x25,%edi
    4225:	e9 51 ff ff ff       	jmp    417b <printf+0x4b>
    422a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    4230:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    4233:	b9 10 00 00 00       	mov    $0x10,%ecx
      state = 0;
    4238:	31 ff                	xor    %edi,%edi
        printint(fd, *ap, 16, 0);
    423a:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    4241:	8b 10                	mov    (%eax),%edx
    4243:	89 f0                	mov    %esi,%eax
    4245:	e8 46 fe ff ff       	call   4090 <printint>
        ap++;
    424a:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    424e:	e9 28 ff ff ff       	jmp    417b <printf+0x4b>
    4253:	90                   	nop
    4254:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    4258:	8b 45 d4             	mov    -0x2c(%ebp),%eax
        ap++;
    425b:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
        s = (char*)*ap;
    425f:	8b 38                	mov    (%eax),%edi
          s = "(null)";
    4261:	b8 30 5c 00 00       	mov    $0x5c30,%eax
    4266:	85 ff                	test   %edi,%edi
    4268:	0f 44 f8             	cmove  %eax,%edi
        while(*s != 0){
    426b:	0f b6 07             	movzbl (%edi),%eax
    426e:	84 c0                	test   %al,%al
    4270:	74 2a                	je     429c <printf+0x16c>
    4272:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    4278:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    427b:	8d 45 e3             	lea    -0x1d(%ebp),%eax
          s++;
    427e:	83 c7 01             	add    $0x1,%edi
  write(fd, &c, 1);
    4281:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4288:	00 
    4289:	89 44 24 04          	mov    %eax,0x4(%esp)
    428d:	89 34 24             	mov    %esi,(%esp)
    4290:	e8 6d fd ff ff       	call   4002 <write>
        while(*s != 0){
    4295:	0f b6 07             	movzbl (%edi),%eax
    4298:	84 c0                	test   %al,%al
    429a:	75 dc                	jne    4278 <printf+0x148>
      state = 0;
    429c:	31 ff                	xor    %edi,%edi
    429e:	e9 d8 fe ff ff       	jmp    417b <printf+0x4b>
    42a3:	90                   	nop
    42a4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  write(fd, &c, 1);
    42a8:	8d 45 e5             	lea    -0x1b(%ebp),%eax
      state = 0;
    42ab:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    42ad:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    42b4:	00 
    42b5:	89 44 24 04          	mov    %eax,0x4(%esp)
    42b9:	89 34 24             	mov    %esi,(%esp)
    42bc:	c6 45 e5 25          	movb   $0x25,-0x1b(%ebp)
    42c0:	e8 3d fd ff ff       	call   4002 <write>
    42c5:	e9 b1 fe ff ff       	jmp    417b <printf+0x4b>
    42ca:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 10, 1);
    42d0:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    42d3:	b9 0a 00 00 00       	mov    $0xa,%ecx
      state = 0;
    42d8:	66 31 ff             	xor    %di,%di
        printint(fd, *ap, 10, 1);
    42db:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    42e2:	8b 10                	mov    (%eax),%edx
    42e4:	89 f0                	mov    %esi,%eax
    42e6:	e8 a5 fd ff ff       	call   4090 <printint>
        ap++;
    42eb:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    42ef:	e9 87 fe ff ff       	jmp    417b <printf+0x4b>
        putc(fd, *ap);
    42f4:	8b 45 d4             	mov    -0x2c(%ebp),%eax
      state = 0;
    42f7:	31 ff                	xor    %edi,%edi
        putc(fd, *ap);
    42f9:	8b 00                	mov    (%eax),%eax
  write(fd, &c, 1);
    42fb:	c7 44 24 08 01 00 00 	movl   $0x1,0x8(%esp)
    4302:	00 
    4303:	89 34 24             	mov    %esi,(%esp)
        putc(fd, *ap);
    4306:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    4309:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    430c:	89 44 24 04          	mov    %eax,0x4(%esp)
    4310:	e8 ed fc ff ff       	call   4002 <write>
        ap++;
    4315:	83 45 d4 04          	addl   $0x4,-0x2c(%ebp)
    4319:	e9 5d fe ff ff       	jmp    417b <printf+0x4b>
    431e:	66 90                	xchg   %ax,%ax

00004320 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    4320:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4321:	a1 c0 65 00 00       	mov    0x65c0,%eax
{
    4326:	89 e5                	mov    %esp,%ebp
    4328:	57                   	push   %edi
    4329:	56                   	push   %esi
    432a:	53                   	push   %ebx
    432b:	8b 5d 08             	mov    0x8(%ebp),%ebx
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    432e:	8b 08                	mov    (%eax),%ecx
  bp = (Header*)ap - 1;
    4330:	8d 53 f8             	lea    -0x8(%ebx),%edx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4333:	39 d0                	cmp    %edx,%eax
    4335:	72 11                	jb     4348 <free+0x28>
    4337:	90                   	nop
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4338:	39 c8                	cmp    %ecx,%eax
    433a:	72 04                	jb     4340 <free+0x20>
    433c:	39 ca                	cmp    %ecx,%edx
    433e:	72 10                	jb     4350 <free+0x30>
    4340:	89 c8                	mov    %ecx,%eax
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4342:	39 d0                	cmp    %edx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    4344:	8b 08                	mov    (%eax),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    4346:	73 f0                	jae    4338 <free+0x18>
    4348:	39 ca                	cmp    %ecx,%edx
    434a:	72 04                	jb     4350 <free+0x30>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    434c:	39 c8                	cmp    %ecx,%eax
    434e:	72 f0                	jb     4340 <free+0x20>
      break;
  if(bp + bp->s.size == p->s.ptr){
    4350:	8b 73 fc             	mov    -0x4(%ebx),%esi
    4353:	8d 3c f2             	lea    (%edx,%esi,8),%edi
    4356:	39 cf                	cmp    %ecx,%edi
    4358:	74 1e                	je     4378 <free+0x58>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    435a:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    435d:	8b 48 04             	mov    0x4(%eax),%ecx
    4360:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    4363:	39 f2                	cmp    %esi,%edx
    4365:	74 28                	je     438f <free+0x6f>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    4367:	89 10                	mov    %edx,(%eax)
  freep = p;
    4369:	a3 c0 65 00 00       	mov    %eax,0x65c0
}
    436e:	5b                   	pop    %ebx
    436f:	5e                   	pop    %esi
    4370:	5f                   	pop    %edi
    4371:	5d                   	pop    %ebp
    4372:	c3                   	ret    
    4373:	90                   	nop
    4374:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    4378:	03 71 04             	add    0x4(%ecx),%esi
    437b:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    437e:	8b 08                	mov    (%eax),%ecx
    4380:	8b 09                	mov    (%ecx),%ecx
    4382:	89 4b f8             	mov    %ecx,-0x8(%ebx)
  if(p + p->s.size == bp){
    4385:	8b 48 04             	mov    0x4(%eax),%ecx
    4388:	8d 34 c8             	lea    (%eax,%ecx,8),%esi
    438b:	39 f2                	cmp    %esi,%edx
    438d:	75 d8                	jne    4367 <free+0x47>
    p->s.size += bp->s.size;
    438f:	03 4b fc             	add    -0x4(%ebx),%ecx
  freep = p;
    4392:	a3 c0 65 00 00       	mov    %eax,0x65c0
    p->s.size += bp->s.size;
    4397:	89 48 04             	mov    %ecx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    439a:	8b 53 f8             	mov    -0x8(%ebx),%edx
    439d:	89 10                	mov    %edx,(%eax)
}
    439f:	5b                   	pop    %ebx
    43a0:	5e                   	pop    %esi
    43a1:	5f                   	pop    %edi
    43a2:	5d                   	pop    %ebp
    43a3:	c3                   	ret    
    43a4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    43aa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000043b0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    43b0:	55                   	push   %ebp
    43b1:	89 e5                	mov    %esp,%ebp
    43b3:	57                   	push   %edi
    43b4:	56                   	push   %esi
    43b5:	53                   	push   %ebx
    43b6:	83 ec 1c             	sub    $0x1c,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    43b9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    43bc:	8b 1d c0 65 00 00    	mov    0x65c0,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    43c2:	8d 48 07             	lea    0x7(%eax),%ecx
    43c5:	c1 e9 03             	shr    $0x3,%ecx
  if((prevp = freep) == 0){
    43c8:	85 db                	test   %ebx,%ebx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    43ca:	8d 71 01             	lea    0x1(%ecx),%esi
  if((prevp = freep) == 0){
    43cd:	0f 84 9b 00 00 00    	je     446e <malloc+0xbe>
    43d3:	8b 13                	mov    (%ebx),%edx
    43d5:	8b 7a 04             	mov    0x4(%edx),%edi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    43d8:	39 fe                	cmp    %edi,%esi
    43da:	76 64                	jbe    4440 <malloc+0x90>
    43dc:	8d 04 f5 00 00 00 00 	lea    0x0(,%esi,8),%eax
  if(nu < 4096)
    43e3:	bb 00 80 00 00       	mov    $0x8000,%ebx
    43e8:	89 45 e4             	mov    %eax,-0x1c(%ebp)
    43eb:	eb 0e                	jmp    43fb <malloc+0x4b>
    43ed:	8d 76 00             	lea    0x0(%esi),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    43f0:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    43f2:	8b 78 04             	mov    0x4(%eax),%edi
    43f5:	39 fe                	cmp    %edi,%esi
    43f7:	76 4f                	jbe    4448 <malloc+0x98>
    43f9:	89 c2                	mov    %eax,%edx
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    43fb:	3b 15 c0 65 00 00    	cmp    0x65c0,%edx
    4401:	75 ed                	jne    43f0 <malloc+0x40>
  if(nu < 4096)
    4403:	8b 45 e4             	mov    -0x1c(%ebp),%eax
    4406:	81 fe 00 10 00 00    	cmp    $0x1000,%esi
    440c:	bf 00 10 00 00       	mov    $0x1000,%edi
    4411:	0f 43 fe             	cmovae %esi,%edi
    4414:	0f 42 c3             	cmovb  %ebx,%eax
  p = sbrk(nu * sizeof(Header));
    4417:	89 04 24             	mov    %eax,(%esp)
    441a:	e8 4b fc ff ff       	call   406a <sbrk>
  if(p == (char*)-1)
    441f:	83 f8 ff             	cmp    $0xffffffff,%eax
    4422:	74 18                	je     443c <malloc+0x8c>
  hp->s.size = nu;
    4424:	89 78 04             	mov    %edi,0x4(%eax)
  free((void*)(hp + 1));
    4427:	83 c0 08             	add    $0x8,%eax
    442a:	89 04 24             	mov    %eax,(%esp)
    442d:	e8 ee fe ff ff       	call   4320 <free>
  return freep;
    4432:	8b 15 c0 65 00 00    	mov    0x65c0,%edx
      if((p = morecore(nunits)) == 0)
    4438:	85 d2                	test   %edx,%edx
    443a:	75 b4                	jne    43f0 <malloc+0x40>
        return 0;
    443c:	31 c0                	xor    %eax,%eax
    443e:	eb 20                	jmp    4460 <malloc+0xb0>
    if(p->s.size >= nunits){
    4440:	89 d0                	mov    %edx,%eax
    4442:	89 da                	mov    %ebx,%edx
    4444:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
      if(p->s.size == nunits)
    4448:	39 fe                	cmp    %edi,%esi
    444a:	74 1c                	je     4468 <malloc+0xb8>
        p->s.size -= nunits;
    444c:	29 f7                	sub    %esi,%edi
    444e:	89 78 04             	mov    %edi,0x4(%eax)
        p += p->s.size;
    4451:	8d 04 f8             	lea    (%eax,%edi,8),%eax
        p->s.size = nunits;
    4454:	89 70 04             	mov    %esi,0x4(%eax)
      freep = prevp;
    4457:	89 15 c0 65 00 00    	mov    %edx,0x65c0
      return (void*)(p + 1);
    445d:	83 c0 08             	add    $0x8,%eax
  }
}
    4460:	83 c4 1c             	add    $0x1c,%esp
    4463:	5b                   	pop    %ebx
    4464:	5e                   	pop    %esi
    4465:	5f                   	pop    %edi
    4466:	5d                   	pop    %ebp
    4467:	c3                   	ret    
        prevp->s.ptr = p->s.ptr;
    4468:	8b 08                	mov    (%eax),%ecx
    446a:	89 0a                	mov    %ecx,(%edx)
    446c:	eb e9                	jmp    4457 <malloc+0xa7>
    base.s.ptr = freep = prevp = &base;
    446e:	c7 05 c0 65 00 00 c4 	movl   $0x65c4,0x65c0
    4475:	65 00 00 
    base.s.size = 0;
    4478:	ba c4 65 00 00       	mov    $0x65c4,%edx
    base.s.ptr = freep = prevp = &base;
    447d:	c7 05 c4 65 00 00 c4 	movl   $0x65c4,0x65c4
    4484:	65 00 00 
    base.s.size = 0;
    4487:	c7 05 c8 65 00 00 00 	movl   $0x0,0x65c8
    448e:	00 00 00 
    4491:	e9 46 ff ff ff       	jmp    43dc <malloc+0x2c>
