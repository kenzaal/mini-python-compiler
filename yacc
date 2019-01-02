0	g468	=	(g469)
1	g469	=	(prog Eof)
2	prog	=	(expr)
3	prog	=	(declaration)
4	prog	=	(declaration prog)
5	prog	=	(expr prog)
6	expr	=	(Lopar expr Lcpar)
7	expr	=	(val)
8	expr	=	(operation)
9	expr	=	(nt)
10	expr	=	(test)
11	expr	=	(loop)
12	expr	=	(print)
13	declaration	=	(Lid Lassign expr)
14	print	=	(Lprint Lopar Lcot expr Lcot Lcpar)
15	print	=	(Lprint Lopar operation Lcpar)
16	print	=	(Lprint Lopar nt Lcpar)
17	operation	=	(sexpr Lplus sexpr)
18	operation	=	(sexpr Lminus sexpr)
19	operation	=	(sexpr Lstar sexpr)
20	operation	=	(sexpr Lslash sexpr)
21	operation	=	(sexpr Lmod sexpr)
22	operation	=	(sexpr Lsup sexpr)
23	operation	=	(sexpr Linf sexpr)
24	operation	=	(sexpr Lseq sexpr)
25	operation	=	(sexpr Lieq sexpr)
26	operation	=	(sexpr Leq sexpr)
27	operation	=	(sexpr Lneq sexpr)
28	operation	=	(sexpr Land sexpr)
29	operation	=	(sexpr Lor sexpr)
30	nt	=	(Lnot sexpr)
31	val	=	(Lnum)
32	val	=	(Lid)
33	val	=	(Lbool)
34	test	=	(Lif expr Lcol expr Lelse Lcol expr)
35	loop	=	(Lwhile expr Lcol expr)
36	sexpr	=	(val)
37	sexpr	=	(operation)
38	sexpr	=	(nt)
State 0
	g468 -> . g469 

	Lbool					shift	14
	val					goto	8
	Lprint					shift	17
	Lid					shift	15
	expr					goto	3
	nt					goto	7
	Lnum					shift	13
	declaration					goto	4
	Lopar					shift	18
	print					goto	5
	operation					goto	6
	Lif					shift	16
	Lnot					shift	12
	test					goto	9
	g469					goto	1
	loop					goto	10
	prog					goto	2
	sexpr					goto	11
	Lwhile					shift	19

State 1
	g468 -> g469 . 


State 2
	g469 -> prog . Eof 

	Eof					accept	

State 3
	prog -> expr . 
	prog -> expr . prog 

	Lbool					shift	14
	Lprint					shift	17
	Eof					reduce	2
	expr					goto	3
	nt					goto	7
	print					goto	5
	Lnum					shift	13
	Lid					shift	15
	Lnot					shift	12
	val					goto	8
	Lif					shift	16
	declaration					goto	4
	Lopar					shift	18
	test					goto	9
	operation					goto	6
	loop					goto	10
	prog					goto	21
	sexpr					goto	11
	Lwhile					shift	19

State 4
	prog -> declaration . 
	prog -> declaration . prog 

	Lbool					shift	14
	Lprint					shift	17
	Eof					reduce	3
	expr					goto	3
	nt					goto	7
	print					goto	5
	Lnum					shift	13
	Lid					shift	15
	Lnot					shift	12
	val					goto	8
	Lif					shift	16
	declaration					goto	4
	Lopar					shift	18
	test					goto	9
	operation					goto	6
	loop					goto	10
	prog					goto	22
	sexpr					goto	11
	Lwhile					shift	19

State 5
	expr -> print . 

	Lcot					reduce	12
	Lbool					reduce	12
	Lid					reduce	12
	Lelse					reduce	12
	Lnum					reduce	12
	Lopar					reduce	12
	Lnot					reduce	12
	Lcpar					reduce	12
	Lif					reduce	12
	Eof					reduce	12
	Lcol					reduce	12
	Lprint					reduce	12
	Lwhile					reduce	12

State 6
	expr -> operation . 
	sexpr -> operation . 

	Lif					reduce	8
	Lminus					reduce	37
	Lelse					reduce	8
	Lstar					reduce	37
	Lnum					reduce	8
	Lseq					reduce	37
	Lopar					reduce	8
	Lmod					reduce	37
	Eof					reduce	8
	Lplus					reduce	37
	Lprint					reduce	8
	Lneq					reduce	37
	Lwhile					reduce	8
	Lieq					reduce	37
	Lid					reduce	8
	Lor					reduce	37
	Lcpar					reduce	8
	Lcot					reduce	8
	Land					reduce	37
	Lslash					reduce	37
	Lbool					reduce	8
	Lsup					reduce	37
	Lnot					reduce	8
	Leq					reduce	37
	Lcol					reduce	8
	Linf					reduce	37

State 7
	expr -> nt . 
	sexpr -> nt . 

	Lif					reduce	9
	Lminus					reduce	38
	Lelse					reduce	9
	Lstar					reduce	38
	Lnum					reduce	9
	Lseq					reduce	38
	Lopar					reduce	9
	Lmod					reduce	38
	Eof					reduce	9
	Lplus					reduce	38
	Lprint					reduce	9
	Lneq					reduce	38
	Lwhile					reduce	9
	Lieq					reduce	38
	Lid					reduce	9
	Lor					reduce	38
	Lcpar					reduce	9
	Lcot					reduce	9
	Land					reduce	38
	Lslash					reduce	38
	Lbool					reduce	9
	Lsup					reduce	38
	Lnot					reduce	9
	Leq					reduce	38
	Lcol					reduce	9
	Linf					reduce	38

State 8
	expr -> val . 
	sexpr -> val . 

	Lif					reduce	7
	Lminus					reduce	36
	Lelse					reduce	7
	Lstar					reduce	36
	Lnum					reduce	7
	Lseq					reduce	36
	Lopar					reduce	7
	Lmod					reduce	36
	Eof					reduce	7
	Lplus					reduce	36
	Lprint					reduce	7
	Lneq					reduce	36
	Lwhile					reduce	7
	Lieq					reduce	36
	Lid					reduce	7
	Lor					reduce	36
	Lcpar					reduce	7
	Lcot					reduce	7
	Land					reduce	36
	Lslash					reduce	36
	Lbool					reduce	7
	Lsup					reduce	36
	Lnot					reduce	7
	Leq					reduce	36
	Lcol					reduce	7
	Linf					reduce	36

State 9
	expr -> test . 

	Lcot					reduce	10
	Lbool					reduce	10
	Lid					reduce	10
	Lelse					reduce	10
	Lnum					reduce	10
	Lopar					reduce	10
	Lnot					reduce	10
	Lcpar					reduce	10
	Lif					reduce	10
	Eof					reduce	10
	Lcol					reduce	10
	Lprint					reduce	10
	Lwhile					reduce	10

State 10
	expr -> loop . 

	Lcot					reduce	11
	Lbool					reduce	11
	Lid					reduce	11
	Lelse					reduce	11
	Lnum					reduce	11
	Lopar					reduce	11
	Lnot					reduce	11
	Lcpar					reduce	11
	Lif					reduce	11
	Eof					reduce	11
	Lcol					reduce	11
	Lprint					reduce	11
	Lwhile					reduce	11

State 11
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lieq					shift	33
	Lminus					shift	24
	Lmod					shift	26
	Lstar					shift	25
	Lor					shift	28
	Lseq					shift	32
	Land					shift	27
	Linf					shift	31
	Lsup					shift	30
	Leq					shift	34
	Lslash					shift	29
	Lneq					shift	35
	Lplus					shift	23

State 12
	nt -> Lnot . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	39

State 13
	val -> Lnum . 

	Lcot					reduce	31
	Lbool					reduce	31
	Lminus					reduce	31
	Lelse					reduce	31
	Lstar					reduce	31
	Lseq					reduce	31
	Lopar					reduce	31
	Lmod					reduce	31
	Eof					reduce	31
	Lplus					reduce	31
	Lprint					reduce	31
	Lneq					reduce	31
	Lwhile					reduce	31
	Lieq					reduce	31
	Lid					reduce	31
	Lor					reduce	31
	Lcpar					reduce	31
	Lsup					reduce	31
	Lnum					reduce	31
	Land					reduce	31
	Linf					reduce	31
	Lif					reduce	31
	Lnot					reduce	31
	Leq					reduce	31
	Lcol					reduce	31
	Lslash					reduce	31

State 14
	val -> Lbool . 

	Lcot					reduce	33
	Lbool					reduce	33
	Lminus					reduce	33
	Lelse					reduce	33
	Lstar					reduce	33
	Lseq					reduce	33
	Lopar					reduce	33
	Lmod					reduce	33
	Eof					reduce	33
	Lplus					reduce	33
	Lprint					reduce	33
	Lneq					reduce	33
	Lwhile					reduce	33
	Lieq					reduce	33
	Lid					reduce	33
	Lor					reduce	33
	Lcpar					reduce	33
	Lsup					reduce	33
	Lnum					reduce	33
	Land					reduce	33
	Linf					reduce	33
	Lif					reduce	33
	Lnot					reduce	33
	Leq					reduce	33
	Lcol					reduce	33
	Lslash					reduce	33

State 15
	declaration -> Lid . Lassign expr 
	val -> Lid . 

	Lieq					reduce	32
	Lbool					reduce	32
	Lassign					shift	41
	Lid					reduce	32
	Lor					reduce	32
	Lminus					reduce	32
	Lsup					reduce	32
	Lstar					reduce	32
	Lnum					reduce	32
	Lseq					reduce	32
	Lopar					reduce	32
	Lslash					reduce	32
	Lnot					reduce	32
	Lplus					reduce	32
	Land					reduce	32
	Lif					reduce	32
	Eof					reduce	32
	Leq					reduce	32
	Lprint					reduce	32
	Linf					reduce	32
	Lmod					reduce	32
	Lneq					reduce	32
	Lwhile					reduce	32

State 16
	test -> Lif . expr Lcol expr Lelse Lcol expr 

	Lbool					shift	14
	Lprint					shift	17
	Lid					shift	40
	expr					goto	42
	nt					goto	7
	Lnum					shift	13
	Lopar					shift	18
	print					goto	5
	val					goto	8
	Lif					shift	16
	Lnot					shift	12
	test					goto	9
	operation					goto	6
	loop					goto	10
	sexpr					goto	11
	Lwhile					shift	19

State 17
	print -> Lprint . Lopar Lcot expr Lcot Lcpar 
	print -> Lprint . Lopar operation Lcpar 
	print -> Lprint . Lopar nt Lcpar 

	Lopar					shift	43

State 18
	expr -> Lopar . expr Lcpar 

	Lbool					shift	14
	Lprint					shift	17
	Lid					shift	40
	expr					goto	44
	nt					goto	7
	Lnum					shift	13
	Lopar					shift	18
	print					goto	5
	val					goto	8
	Lif					shift	16
	Lnot					shift	12
	test					goto	9
	operation					goto	6
	loop					goto	10
	sexpr					goto	11
	Lwhile					shift	19

State 19
	loop -> Lwhile . expr Lcol expr 

	Lbool					shift	14
	Lprint					shift	17
	Lid					shift	40
	expr					goto	45
	nt					goto	7
	Lnum					shift	13
	Lopar					shift	18
	print					goto	5
	val					goto	8
	Lif					shift	16
	Lnot					shift	12
	test					goto	9
	operation					goto	6
	loop					goto	10
	sexpr					goto	11
	Lwhile					shift	19

State 20
	g469 -> prog Eof . 


State 21
	prog -> expr prog . 

	Eof					reduce	5

State 22
	prog -> declaration prog . 

	Eof					reduce	4

State 23
	operation -> sexpr Lplus . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	46

State 24
	operation -> sexpr Lminus . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	47

State 25
	operation -> sexpr Lstar . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	48

State 26
	operation -> sexpr Lmod . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	49

State 27
	operation -> sexpr Land . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	50

State 28
	operation -> sexpr Lor . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	51

State 29
	operation -> sexpr Lslash . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	52

State 30
	operation -> sexpr Lsup . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	53

State 31
	operation -> sexpr Linf . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	54

State 32
	operation -> sexpr Lseq . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	55

State 33
	operation -> sexpr Lieq . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	56

State 34
	operation -> sexpr Leq . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	57

State 35
	operation -> sexpr Lneq . sexpr 

	val					goto	38
	operation					goto	36
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	37
	Lnum					shift	13
	sexpr					goto	58

State 36
	sexpr -> operation . 

	Lcot					reduce	37
	Lbool					reduce	37
	Lminus					reduce	37
	Lelse					reduce	37
	Lstar					reduce	37
	Lseq					reduce	37
	Lopar					reduce	37
	Lmod					reduce	37
	Eof					reduce	37
	Lplus					reduce	37
	Lprint					reduce	37
	Lneq					reduce	37
	Lwhile					reduce	37
	Lieq					reduce	37
	Lid					reduce	37
	Lor					reduce	37
	Lcpar					reduce	37
	Lsup					reduce	37
	Lnum					reduce	37
	Land					reduce	37
	Linf					reduce	37
	Lif					reduce	37
	Lnot					reduce	37
	Leq					reduce	37
	Lcol					reduce	37
	Lslash					reduce	37

State 37
	sexpr -> nt . 

	Lcot					reduce	38
	Lbool					reduce	38
	Lminus					reduce	38
	Lelse					reduce	38
	Lstar					reduce	38
	Lseq					reduce	38
	Lopar					reduce	38
	Lmod					reduce	38
	Eof					reduce	38
	Lplus					reduce	38
	Lprint					reduce	38
	Lneq					reduce	38
	Lwhile					reduce	38
	Lieq					reduce	38
	Lid					reduce	38
	Lor					reduce	38
	Lcpar					reduce	38
	Lsup					reduce	38
	Lnum					reduce	38
	Land					reduce	38
	Linf					reduce	38
	Lif					reduce	38
	Lnot					reduce	38
	Leq					reduce	38
	Lcol					reduce	38
	Lslash					reduce	38

State 38
	sexpr -> val . 

	Lcot					reduce	36
	Lbool					reduce	36
	Lminus					reduce	36
	Lelse					reduce	36
	Lstar					reduce	36
	Lseq					reduce	36
	Lopar					reduce	36
	Lmod					reduce	36
	Eof					reduce	36
	Lplus					reduce	36
	Lprint					reduce	36
	Lneq					reduce	36
	Lwhile					reduce	36
	Lieq					reduce	36
	Lid					reduce	36
	Lor					reduce	36
	Lcpar					reduce	36
	Lsup					reduce	36
	Lnum					reduce	36
	Land					reduce	36
	Linf					reduce	36
	Lif					reduce	36
	Lnot					reduce	36
	Leq					reduce	36
	Lcol					reduce	36
	Lslash					reduce	36

State 39
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	nt -> Lnot sexpr . 

	Lcot					reduce	30
	Lbool					reduce	30
	Lminus					reduce	30
	Lelse					reduce	30
	Lstar					reduce	30
	Lseq					reduce	30
	Lopar					reduce	30
	Lmod					reduce	30
	Eof					reduce	30
	Lplus					reduce	30
	Lprint					reduce	30
	Lneq					reduce	30
	Lwhile					reduce	30
	Lieq					reduce	30
	Lid					reduce	30
	Lor					shift	28
	Lcpar					reduce	30
	Lsup					reduce	30
	Lnum					reduce	30
	Land					reduce	30
	Linf					reduce	30
	Lif					reduce	30
	Lnot					reduce	30
	Leq					reduce	30
	Lcol					reduce	30
	Lslash					reduce	30

State 40
	val -> Lid . 

	Lcot					reduce	32
	Lbool					reduce	32
	Lminus					reduce	32
	Lelse					reduce	32
	Lstar					reduce	32
	Lseq					reduce	32
	Lopar					reduce	32
	Lmod					reduce	32
	Eof					reduce	32
	Lplus					reduce	32
	Lprint					reduce	32
	Lneq					reduce	32
	Lwhile					reduce	32
	Lieq					reduce	32
	Lid					reduce	32
	Lor					reduce	32
	Lcpar					reduce	32
	Lsup					reduce	32
	Lnum					reduce	32
	Land					reduce	32
	Linf					reduce	32
	Lif					reduce	32
	Lnot					reduce	32
	Leq					reduce	32
	Lcol					reduce	32
	Lslash					reduce	32

State 41
	declaration -> Lid Lassign . expr 

	Lbool					shift	14
	Lprint					shift	17
	Lid					shift	40
	expr					goto	59
	nt					goto	7
	Lnum					shift	13
	Lopar					shift	18
	print					goto	5
	val					goto	8
	Lif					shift	16
	Lnot					shift	12
	test					goto	9
	operation					goto	6
	loop					goto	10
	sexpr					goto	11
	Lwhile					shift	19

State 42
	test -> Lif expr . Lcol expr Lelse Lcol expr 

	Lcol					shift	60

State 43
	print -> Lprint Lopar . Lcot expr Lcot Lcpar 
	print -> Lprint Lopar . operation Lcpar 
	print -> Lprint Lopar . nt Lcpar 

	Lcot					shift	63
	val					goto	38
	operation					goto	61
	Lbool					shift	14
	Lnot					shift	12
	Lid					shift	40
	nt					goto	62
	Lnum					shift	13
	sexpr					goto	11

State 44
	expr -> Lopar expr . Lcpar 

	Lcpar					shift	64

State 45
	loop -> Lwhile expr . Lcol expr 

	Lcol					shift	65

State 46
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr Lplus sexpr . 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	17
	Lbool					reduce	17
	Lminus					shift	24
	Lelse					reduce	17
	Lstar					shift	25
	Lseq					shift	32
	Lopar					reduce	17
	Lmod					shift	26
	Eof					reduce	17
	Lplus					reduce	17
	Lprint					reduce	17
	Lneq					shift	35
	Lwhile					reduce	17
	Lieq					shift	33
	Lid					reduce	17
	Lor					shift	28
	Lcpar					reduce	17
	Lsup					shift	30
	Lnum					reduce	17
	Land					shift	27
	Linf					shift	31
	Lif					reduce	17
	Lnot					reduce	17
	Leq					shift	34
	Lcol					reduce	17
	Lslash					shift	29

State 47
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr Lminus sexpr . 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	18
	Lbool					reduce	18
	Lminus					reduce	18
	Lelse					reduce	18
	Lstar					shift	25
	Lseq					shift	32
	Lopar					reduce	18
	Lmod					shift	26
	Eof					reduce	18
	Lplus					reduce	18
	Lprint					reduce	18
	Lneq					shift	35
	Lwhile					reduce	18
	Lieq					shift	33
	Lid					reduce	18
	Lor					shift	28
	Lcpar					reduce	18
	Lsup					shift	30
	Lnum					reduce	18
	Land					shift	27
	Linf					shift	31
	Lif					reduce	18
	Lnot					reduce	18
	Leq					shift	34
	Lcol					reduce	18
	Lslash					shift	29

State 48
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr Lstar sexpr . 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	19
	Lbool					reduce	19
	Lminus					reduce	19
	Lelse					reduce	19
	Lstar					reduce	19
	Lseq					shift	32
	Lopar					reduce	19
	Lmod					shift	26
	Eof					reduce	19
	Lplus					reduce	19
	Lprint					reduce	19
	Lneq					shift	35
	Lwhile					reduce	19
	Lieq					shift	33
	Lid					reduce	19
	Lor					shift	28
	Lcpar					reduce	19
	Lsup					shift	30
	Lnum					reduce	19
	Land					shift	27
	Linf					shift	31
	Lif					reduce	19
	Lnot					reduce	19
	Leq					shift	34
	Lcol					reduce	19
	Lslash					shift	29

State 49
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr Lmod sexpr . 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	21
	Lbool					reduce	21
	Lminus					reduce	21
	Lelse					reduce	21
	Lstar					reduce	21
	Lseq					reduce	21
	Lopar					reduce	21
	Lmod					reduce	21
	Eof					reduce	21
	Lplus					reduce	21
	Lprint					reduce	21
	Lneq					reduce	21
	Lwhile					reduce	21
	Lieq					reduce	21
	Lid					reduce	21
	Lor					shift	28
	Lcpar					reduce	21
	Lsup					reduce	21
	Lnum					reduce	21
	Land					shift	27
	Linf					reduce	21
	Lif					reduce	21
	Lnot					reduce	21
	Leq					reduce	21
	Lcol					reduce	21
	Lslash					reduce	21

State 50
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr Land sexpr . 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	28
	Lbool					reduce	28
	Lminus					reduce	28
	Lelse					reduce	28
	Lstar					reduce	28
	Lseq					reduce	28
	Lopar					reduce	28
	Lmod					reduce	28
	Eof					reduce	28
	Lplus					reduce	28
	Lprint					reduce	28
	Lneq					reduce	28
	Lwhile					reduce	28
	Lieq					reduce	28
	Lid					reduce	28
	Lor					shift	28
	Lcpar					reduce	28
	Lsup					reduce	28
	Lnum					reduce	28
	Land					reduce	28
	Linf					reduce	28
	Lif					reduce	28
	Lnot					reduce	28
	Leq					reduce	28
	Lcol					reduce	28
	Lslash					reduce	28

State 51
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr Lor sexpr . 

	Lcot					reduce	29
	Lbool					reduce	29
	Lminus					reduce	29
	Lelse					reduce	29
	Lstar					reduce	29
	Lseq					reduce	29
	Lopar					reduce	29
	Lmod					reduce	29
	Eof					reduce	29
	Lplus					reduce	29
	Lprint					reduce	29
	Lneq					reduce	29
	Lwhile					reduce	29
	Lieq					reduce	29
	Lid					reduce	29
	Lor					reduce	29
	Lcpar					reduce	29
	Lsup					reduce	29
	Lnum					reduce	29
	Land					reduce	29
	Linf					reduce	29
	Lif					reduce	29
	Lnot					reduce	29
	Leq					reduce	29
	Lcol					reduce	29
	Lslash					reduce	29

State 52
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr Lslash sexpr . 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	20
	Lbool					reduce	20
	Lminus					reduce	20
	Lelse					reduce	20
	Lstar					reduce	20
	Lseq					shift	32
	Lopar					reduce	20
	Lmod					shift	26
	Eof					reduce	20
	Lplus					reduce	20
	Lprint					reduce	20
	Lneq					shift	35
	Lwhile					reduce	20
	Lieq					shift	33
	Lid					reduce	20
	Lor					shift	28
	Lcpar					reduce	20
	Lsup					shift	30
	Lnum					reduce	20
	Land					shift	27
	Linf					shift	31
	Lif					reduce	20
	Lnot					reduce	20
	Leq					shift	34
	Lcol					reduce	20
	Lslash					reduce	20

State 53
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr Lsup sexpr . 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	22
	Lbool					reduce	22
	Lminus					reduce	22
	Lelse					reduce	22
	Lstar					reduce	22
	Lseq					shift	32
	Lopar					reduce	22
	Lmod					shift	26
	Eof					reduce	22
	Lplus					reduce	22
	Lprint					reduce	22
	Lneq					shift	35
	Lwhile					reduce	22
	Lieq					shift	33
	Lid					reduce	22
	Lor					shift	28
	Lcpar					reduce	22
	Lsup					reduce	22
	Lnum					reduce	22
	Land					shift	27
	Linf					shift	31
	Lif					reduce	22
	Lnot					reduce	22
	Leq					shift	34
	Lcol					reduce	22
	Lslash					reduce	22

State 54
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr Linf sexpr . 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	23
	Lbool					reduce	23
	Lminus					reduce	23
	Lelse					reduce	23
	Lstar					reduce	23
	Lseq					shift	32
	Lopar					reduce	23
	Lmod					shift	26
	Eof					reduce	23
	Lplus					reduce	23
	Lprint					reduce	23
	Lneq					shift	35
	Lwhile					reduce	23
	Lieq					shift	33
	Lid					reduce	23
	Lor					shift	28
	Lcpar					reduce	23
	Lsup					reduce	23
	Lnum					reduce	23
	Land					shift	27
	Linf					reduce	23
	Lif					reduce	23
	Lnot					reduce	23
	Leq					shift	34
	Lcol					reduce	23
	Lslash					reduce	23

State 55
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr Lseq sexpr . 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	24
	Lbool					reduce	24
	Lminus					reduce	24
	Lelse					reduce	24
	Lstar					reduce	24
	Lseq					reduce	24
	Lopar					reduce	24
	Lmod					shift	26
	Eof					reduce	24
	Lplus					reduce	24
	Lprint					reduce	24
	Lneq					shift	35
	Lwhile					reduce	24
	Lieq					shift	33
	Lid					reduce	24
	Lor					shift	28
	Lcpar					reduce	24
	Lsup					reduce	24
	Lnum					reduce	24
	Land					shift	27
	Linf					reduce	24
	Lif					reduce	24
	Lnot					reduce	24
	Leq					shift	34
	Lcol					reduce	24
	Lslash					reduce	24

State 56
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr Lieq sexpr . 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	25
	Lbool					reduce	25
	Lminus					reduce	25
	Lelse					reduce	25
	Lstar					reduce	25
	Lseq					reduce	25
	Lopar					reduce	25
	Lmod					shift	26
	Eof					reduce	25
	Lplus					reduce	25
	Lprint					reduce	25
	Lneq					shift	35
	Lwhile					reduce	25
	Lieq					reduce	25
	Lid					reduce	25
	Lor					shift	28
	Lcpar					reduce	25
	Lsup					reduce	25
	Lnum					reduce	25
	Land					shift	27
	Linf					reduce	25
	Lif					reduce	25
	Lnot					reduce	25
	Leq					shift	34
	Lcol					reduce	25
	Lslash					reduce	25

State 57
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr Leq sexpr . 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	26
	Lbool					reduce	26
	Lminus					reduce	26
	Lelse					reduce	26
	Lstar					reduce	26
	Lseq					reduce	26
	Lopar					reduce	26
	Lmod					shift	26
	Eof					reduce	26
	Lplus					reduce	26
	Lprint					reduce	26
	Lneq					shift	35
	Lwhile					reduce	26
	Lieq					reduce	26
	Lid					reduce	26
	Lor					shift	28
	Lcpar					reduce	26
	Lsup					reduce	26
	Lnum					reduce	26
	Land					shift	27
	Linf					reduce	26
	Lif					reduce	26
	Lnot					reduce	26
	Leq					reduce	26
	Lcol					reduce	26
	Lslash					reduce	26

State 58
	operation -> sexpr . Lplus sexpr 
	operation -> sexpr . Lminus sexpr 
	operation -> sexpr . Lstar sexpr 
	operation -> sexpr . Lslash sexpr 
	operation -> sexpr . Lmod sexpr 
	operation -> sexpr . Lsup sexpr 
	operation -> sexpr . Linf sexpr 
	operation -> sexpr . Lseq sexpr 
	operation -> sexpr . Lieq sexpr 
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr Lneq sexpr . 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 

	Lcot					reduce	27
	Lbool					reduce	27
	Lminus					reduce	27
	Lelse					reduce	27
	Lstar					reduce	27
	Lseq					reduce	27
	Lopar					reduce	27
	Lmod					shift	26
	Eof					reduce	27
	Lplus					reduce	27
	Lprint					reduce	27
	Lneq					reduce	27
	Lwhile					reduce	27
	Lieq					reduce	27
	Lid					reduce	27
	Lor					shift	28
	Lcpar					reduce	27
	Lsup					reduce	27
	Lnum					reduce	27
	Land					shift	27
	Linf					reduce	27
	Lif					reduce	27
	Lnot					reduce	27
	Leq					reduce	27
	Lcol					reduce	27
	Lslash					reduce	27

State 59
	declaration -> Lid Lassign expr . 

	Lnot					reduce	13
	Lbool					reduce	13
	Lif					reduce	13
	Lid					reduce	13
	Eof					reduce	13
	Lprint					reduce	13
	Lnum					reduce	13
	Lopar					reduce	13
	Lwhile					reduce	13

State 60
	test -> Lif expr Lcol . expr Lelse Lcol expr 

	Lbool					shift	14
	Lprint					shift	17
	Lid					shift	40
	expr					goto	66
	nt					goto	7
	Lnum					shift	13
	Lopar					shift	18
	print					goto	5
	val					goto	8
	Lif					shift	16
	Lnot					shift	12
	test					goto	9
	operation					goto	6
	loop					goto	10
	sexpr					goto	11
	Lwhile					shift	19

State 61
	print -> Lprint Lopar operation . Lcpar 
	sexpr -> operation . 

	Lieq					reduce	37
	Lminus					reduce	37
	Lcpar					shift	67
	Lsup					reduce	37
	Lstar					reduce	37
	Lor					reduce	37
	Lseq					reduce	37
	Land					reduce	37
	Lslash					reduce	37
	Lmod					reduce	37
	Leq					reduce	37
	Linf					reduce	37
	Lneq					reduce	37
	Lplus					reduce	37

State 62
	print -> Lprint Lopar nt . Lcpar 
	sexpr -> nt . 

	Lieq					reduce	38
	Lminus					reduce	38
	Lcpar					shift	68
	Lsup					reduce	38
	Lstar					reduce	38
	Lor					reduce	38
	Lseq					reduce	38
	Land					reduce	38
	Lslash					reduce	38
	Lmod					reduce	38
	Leq					reduce	38
	Linf					reduce	38
	Lneq					reduce	38
	Lplus					reduce	38

State 63
	print -> Lprint Lopar Lcot . expr Lcot Lcpar 

	Lbool					shift	14
	Lprint					shift	17
	Lid					shift	40
	expr					goto	69
	nt					goto	7
	Lnum					shift	13
	Lopar					shift	18
	print					goto	5
	val					goto	8
	Lif					shift	16
	Lnot					shift	12
	test					goto	9
	operation					goto	6
	loop					goto	10
	sexpr					goto	11
	Lwhile					shift	19

State 64
	expr -> Lopar expr Lcpar . 

	Lcot					reduce	6
	Lbool					reduce	6
	Lid					reduce	6
	Lelse					reduce	6
	Lnum					reduce	6
	Lopar					reduce	6
	Lnot					reduce	6
	Lcpar					reduce	6
	Lif					reduce	6
	Eof					reduce	6
	Lcol					reduce	6
	Lprint					reduce	6
	Lwhile					reduce	6

State 65
	loop -> Lwhile expr Lcol . expr 

	Lbool					shift	14
	Lprint					shift	17
	Lid					shift	40
	expr					goto	70
	nt					goto	7
	Lnum					shift	13
	Lopar					shift	18
	print					goto	5
	val					goto	8
	Lif					shift	16
	Lnot					shift	12
	test					goto	9
	operation					goto	6
	loop					goto	10
	sexpr					goto	11
	Lwhile					shift	19

State 66
	test -> Lif expr Lcol expr . Lelse Lcol expr 

	Lelse					shift	71

State 67
	print -> Lprint Lopar operation Lcpar . 

	Lcot					reduce	15
	Lbool					reduce	15
	Lid					reduce	15
	Lelse					reduce	15
	Lnum					reduce	15
	Lopar					reduce	15
	Lnot					reduce	15
	Lcpar					reduce	15
	Lif					reduce	15
	Eof					reduce	15
	Lcol					reduce	15
	Lprint					reduce	15
	Lwhile					reduce	15

State 68
	print -> Lprint Lopar nt Lcpar . 

	Lcot					reduce	16
	Lbool					reduce	16
	Lid					reduce	16
	Lelse					reduce	16
	Lnum					reduce	16
	Lopar					reduce	16
	Lnot					reduce	16
	Lcpar					reduce	16
	Lif					reduce	16
	Eof					reduce	16
	Lcol					reduce	16
	Lprint					reduce	16
	Lwhile					reduce	16

State 69
	print -> Lprint Lopar Lcot expr . Lcot Lcpar 

	Lcot					shift	72

State 70
	loop -> Lwhile expr Lcol expr . 

	Lcot					reduce	35
	Lbool					reduce	35
	Lid					reduce	35
	Lelse					reduce	35
	Lnum					reduce	35
	Lopar					reduce	35
	Lnot					reduce	35
	Lcpar					reduce	35
	Lif					reduce	35
	Eof					reduce	35
	Lcol					reduce	35
	Lprint					reduce	35
	Lwhile					reduce	35

State 71
	test -> Lif expr Lcol expr Lelse . Lcol expr 

	Lcol					shift	73

State 72
	print -> Lprint Lopar Lcot expr Lcot . Lcpar 

	Lcpar					shift	74

State 73
	test -> Lif expr Lcol expr Lelse Lcol . expr 

	Lbool					shift	14
	Lprint					shift	17
	Lid					shift	40
	expr					goto	75
	nt					goto	7
	Lnum					shift	13
	Lopar					shift	18
	print					goto	5
	val					goto	8
	Lif					shift	16
	Lnot					shift	12
	test					goto	9
	operation					goto	6
	loop					goto	10
	sexpr					goto	11
	Lwhile					shift	19

State 74
	print -> Lprint Lopar Lcot expr Lcot Lcpar . 

	Lcot					reduce	14
	Lbool					reduce	14
	Lid					reduce	14
	Lelse					reduce	14
	Lnum					reduce	14
	Lopar					reduce	14
	Lnot					reduce	14
	Lcpar					reduce	14
	Lif					reduce	14
	Eof					reduce	14
	Lcol					reduce	14
	Lprint					reduce	14
	Lwhile					reduce	14

State 75
	test -> Lif expr Lcol expr Lelse Lcol expr . 

	Lcot					reduce	34
	Lbool					reduce	34
	Lid					reduce	34
	Lelse					reduce	34
	Lnum					reduce	34
	Lopar					reduce	34
	Lnot					reduce	34
	Lcpar					reduce	34
	Lif					reduce	34
	Eof					reduce	34
	Lcol					reduce	34
	Lprint					reduce	34
	Lwhile					reduce	34

