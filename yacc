0	g503	=	(g504)
1	g504	=	(prog Eof)
2	prog	=	(expr)
3	prog	=	(declaration)
4	prog	=	(declaration prog)
5	prog	=	(expr prog)
6	expr	=	(val)
7	expr	=	(operation)
8	expr	=	(funcall)
9	expr	=	(nt)
10	expr	=	(return)
11	expr	=	(test)
12	expr	=	(loop)
13	expr	=	(print)
14	declaration	=	(Lid Lassign sexpr)
15	declaration	=	(Ldef Lid Lopar fargs Lcpar Lcol expr)
16	fargs	=	(Lid Lcomma fargs)
17	fargs	=	(Lid)
18	fargs	=	(Lnil)
19	callargs	=	(sexpr Lcomma fargs)
20	callargs	=	(sexpr)
21	callargs	=	(Lnil)
22	return	=	(Lret sexpr)
23	funcall	=	(Lid Lopar callargs Lcpar)
24	print	=	(Lprint Lopar Lcot expr Lcot Lcpar)
25	print	=	(Lprint Lopar sexpr Lcpar)
26	print	=	(Lprint Lopar val Lcpar)
27	operation	=	(sexpr Lplus sexpr)
28	operation	=	(sexpr Lminus sexpr)
29	operation	=	(sexpr Lstar sexpr)
30	operation	=	(sexpr Lslash sexpr)
31	operation	=	(sexpr Lmod sexpr)
32	operation	=	(sexpr Lsup sexpr)
33	operation	=	(sexpr Linf sexpr)
34	operation	=	(sexpr Lseq sexpr)
35	operation	=	(sexpr Lieq sexpr)
36	operation	=	(sexpr Leq sexpr)
37	operation	=	(sexpr Lneq sexpr)
38	operation	=	(sexpr Land sexpr)
39	operation	=	(sexpr Lor sexpr)
40	nt	=	(Lnot sexpr)
41	val	=	(Lnum)
42	val	=	(Lid)
43	val	=	(Lbool)
44	test	=	(Lif expr Lcol expr Lelse Lcol expr)
45	loop	=	(Lwhile expr Lcol expr)
46	sexpr	=	(val)
47	sexpr	=	(operation)
48	sexpr	=	(nt)
State 0
	g503 -> . g504 

	Ldef					shift	21
	Lbool					shift	16
	Lwhile					shift	20
	Lid					shift	17
	expr					goto	3
	val					goto	10
	Lnum					shift	15
	Lnot					shift	14
	funcall					goto	6
	Lret					shift	22
	nt					goto	9
	operation					goto	8
	prog					goto	2
	return					goto	5
	test					goto	11
	declaration					goto	4
	loop					goto	12
	Lif					shift	18
	print					goto	7
	Lprint					shift	19
	g504					goto	1
	sexpr					goto	13

State 1
	g503 -> g504 . 


State 2
	g504 -> prog . Eof 

	Eof					accept	

State 3
	prog -> expr . 
	prog -> expr . prog 

	Ldef					shift	21
	Lbool					shift	16
	Lwhile					shift	20
	Lid					shift	17
	Eof					reduce	2
	expr					goto	3
	val					goto	10
	Lnum					shift	15
	Lnot					shift	14
	funcall					goto	6
	Lret					shift	22
	nt					goto	9
	operation					goto	8
	prog					goto	24
	return					goto	5
	test					goto	11
	declaration					goto	4
	loop					goto	12
	Lif					shift	18
	sexpr					goto	13
	Lprint					shift	19
	print					goto	7

State 4
	prog -> declaration . 
	prog -> declaration . prog 

	Ldef					shift	21
	Lbool					shift	16
	Lwhile					shift	20
	Lid					shift	17
	Eof					reduce	3
	expr					goto	3
	val					goto	10
	Lnum					shift	15
	Lnot					shift	14
	funcall					goto	6
	Lret					shift	22
	nt					goto	9
	operation					goto	8
	prog					goto	25
	return					goto	5
	test					goto	11
	declaration					goto	4
	loop					goto	12
	Lif					shift	18
	sexpr					goto	13
	Lprint					shift	19
	print					goto	7

State 5
	expr -> return . 

	Lbool					reduce	10
	Lcot					reduce	10
	Lid					reduce	10
	Eof					reduce	10
	Lnum					reduce	10
	Lnot					reduce	10
	Lret					reduce	10
	Lif					reduce	10
	Ldef					reduce	10
	Lwhile					reduce	10
	Lcol					reduce	10
	Lprint					reduce	10
	Lelse					reduce	10

State 6
	expr -> funcall . 

	Lbool					reduce	8
	Lcot					reduce	8
	Lid					reduce	8
	Eof					reduce	8
	Lnum					reduce	8
	Lnot					reduce	8
	Lret					reduce	8
	Lif					reduce	8
	Ldef					reduce	8
	Lwhile					reduce	8
	Lcol					reduce	8
	Lprint					reduce	8
	Lelse					reduce	8

State 7
	expr -> print . 

	Lbool					reduce	13
	Lcot					reduce	13
	Lid					reduce	13
	Eof					reduce	13
	Lnum					reduce	13
	Lnot					reduce	13
	Lret					reduce	13
	Lif					reduce	13
	Ldef					reduce	13
	Lwhile					reduce	13
	Lcol					reduce	13
	Lprint					reduce	13
	Lelse					reduce	13

State 8
	expr -> operation . 
	sexpr -> operation . 

	Lbool					reduce	7
	Lminus					reduce	47
	Lstar					reduce	47
	Lnum					reduce	7
	Lseq					reduce	47
	Lret					reduce	7
	Lif					reduce	7
	Lmod					reduce	47
	Lwhile					reduce	7
	Lplus					reduce	47
	Lprint					reduce	7
	Lneq					reduce	47
	Lieq					reduce	47
	Lcot					reduce	7
	Lid					reduce	7
	Eof					reduce	7
	Lor					reduce	47
	Land					reduce	47
	Lslash					reduce	47
	Ldef					reduce	7
	Lsup					reduce	47
	Lnot					reduce	7
	Leq					reduce	47
	Lcol					reduce	7
	Linf					reduce	47
	Lelse					reduce	7

State 9
	expr -> nt . 
	sexpr -> nt . 

	Lbool					reduce	9
	Lminus					reduce	48
	Lstar					reduce	48
	Lnum					reduce	9
	Lseq					reduce	48
	Lret					reduce	9
	Lif					reduce	9
	Lmod					reduce	48
	Lwhile					reduce	9
	Lplus					reduce	48
	Lprint					reduce	9
	Lneq					reduce	48
	Lieq					reduce	48
	Lcot					reduce	9
	Lid					reduce	9
	Eof					reduce	9
	Lor					reduce	48
	Land					reduce	48
	Lslash					reduce	48
	Ldef					reduce	9
	Lsup					reduce	48
	Lnot					reduce	9
	Leq					reduce	48
	Lcol					reduce	9
	Linf					reduce	48
	Lelse					reduce	9

State 10
	expr -> val . 
	sexpr -> val . 

	Lbool					reduce	6
	Lminus					reduce	46
	Lstar					reduce	46
	Lnum					reduce	6
	Lseq					reduce	46
	Lret					reduce	6
	Lif					reduce	6
	Lmod					reduce	46
	Lwhile					reduce	6
	Lplus					reduce	46
	Lprint					reduce	6
	Lneq					reduce	46
	Lieq					reduce	46
	Lcot					reduce	6
	Lid					reduce	6
	Eof					reduce	6
	Lor					reduce	46
	Land					reduce	46
	Lslash					reduce	46
	Ldef					reduce	6
	Lsup					reduce	46
	Lnot					reduce	6
	Leq					reduce	46
	Lcol					reduce	6
	Linf					reduce	46
	Lelse					reduce	6

State 11
	expr -> test . 

	Lbool					reduce	11
	Lcot					reduce	11
	Lid					reduce	11
	Eof					reduce	11
	Lnum					reduce	11
	Lnot					reduce	11
	Lret					reduce	11
	Lif					reduce	11
	Ldef					reduce	11
	Lwhile					reduce	11
	Lcol					reduce	11
	Lprint					reduce	11
	Lelse					reduce	11

State 12
	expr -> loop . 

	Lbool					reduce	12
	Lcot					reduce	12
	Lid					reduce	12
	Eof					reduce	12
	Lnum					reduce	12
	Lnot					reduce	12
	Lret					reduce	12
	Lif					reduce	12
	Ldef					reduce	12
	Lwhile					reduce	12
	Lcol					reduce	12
	Lprint					reduce	12
	Lelse					reduce	12

State 13
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

	Lieq					shift	36
	Lminus					shift	27
	Lmod					shift	29
	Lstar					shift	28
	Lor					shift	31
	Lseq					shift	35
	Land					shift	30
	Linf					shift	34
	Lsup					shift	33
	Leq					shift	37
	Lslash					shift	32
	Lneq					shift	38
	Lplus					shift	26

State 14
	nt -> Lnot . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	42
	Lnum					shift	15
	nt					goto	40

State 15
	val -> Lnum . 

	Lbool					reduce	41
	Lseq					reduce	41
	Lminus					reduce	41
	Lstar					reduce	41
	Lcomma					reduce	41
	Lret					reduce	41
	Lif					reduce	41
	Lmod					reduce	41
	Lwhile					reduce	41
	Lplus					reduce	41
	Lprint					reduce	41
	Lcpar					reduce	41
	Lneq					reduce	41
	Lieq					reduce	41
	Lcot					reduce	41
	Lid					reduce	41
	Lor					reduce	41
	Eof					reduce	41
	Lnum					reduce	41
	Land					reduce	41
	Lslash					reduce	41
	Ldef					reduce	41
	Lsup					reduce	41
	Lnot					reduce	41
	Leq					reduce	41
	Lcol					reduce	41
	Linf					reduce	41
	Lelse					reduce	41

State 16
	val -> Lbool . 

	Lbool					reduce	43
	Lseq					reduce	43
	Lminus					reduce	43
	Lstar					reduce	43
	Lcomma					reduce	43
	Lret					reduce	43
	Lif					reduce	43
	Lmod					reduce	43
	Lwhile					reduce	43
	Lplus					reduce	43
	Lprint					reduce	43
	Lcpar					reduce	43
	Lneq					reduce	43
	Lieq					reduce	43
	Lcot					reduce	43
	Lid					reduce	43
	Lor					reduce	43
	Eof					reduce	43
	Lnum					reduce	43
	Land					reduce	43
	Lslash					reduce	43
	Ldef					reduce	43
	Lsup					reduce	43
	Lnot					reduce	43
	Leq					reduce	43
	Lcol					reduce	43
	Linf					reduce	43
	Lelse					reduce	43

State 17
	declaration -> Lid . Lassign sexpr 
	funcall -> Lid . Lopar callargs Lcpar 
	val -> Lid . 

	Lbool					reduce	42
	Lassign					shift	44
	Lminus					reduce	42
	Lopar					shift	45
	Lstar					reduce	42
	Lseq					reduce	42
	Lret					reduce	42
	Lif					reduce	42
	Lmod					reduce	42
	Lwhile					reduce	42
	Lplus					reduce	42
	Lprint					reduce	42
	Lneq					reduce	42
	Lieq					reduce	42
	Lid					reduce	42
	Lor					reduce	42
	Eof					reduce	42
	Lnum					reduce	42
	Land					reduce	42
	Lslash					reduce	42
	Ldef					reduce	42
	Lsup					reduce	42
	Lnot					reduce	42
	Leq					reduce	42
	Linf					reduce	42

State 18
	test -> Lif . expr Lcol expr Lelse Lcol expr 

	Lbool					shift	16
	Lid					shift	47
	expr					goto	46
	val					goto	10
	Lnum					shift	15
	funcall					goto	6
	Lret					shift	22
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lwhile					shift	20
	Lnot					shift	14
	loop					goto	12
	Lif					shift	18
	sexpr					goto	13
	Lprint					shift	19
	print					goto	7

State 19
	print -> Lprint . Lopar Lcot expr Lcot Lcpar 
	print -> Lprint . Lopar sexpr Lcpar 
	print -> Lprint . Lopar val Lcpar 

	Lopar					shift	48

State 20
	loop -> Lwhile . expr Lcol expr 

	Lbool					shift	16
	Lid					shift	47
	expr					goto	49
	val					goto	10
	Lnum					shift	15
	funcall					goto	6
	Lret					shift	22
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lwhile					shift	20
	Lnot					shift	14
	loop					goto	12
	Lif					shift	18
	sexpr					goto	13
	Lprint					shift	19
	print					goto	7

State 21
	declaration -> Ldef . Lid Lopar fargs Lcpar Lcol expr 

	Lid					shift	50

State 22
	return -> Lret . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	51
	Lnum					shift	15
	nt					goto	40

State 23
	g504 -> prog Eof . 


State 24
	prog -> expr prog . 

	Eof					reduce	5

State 25
	prog -> declaration prog . 

	Eof					reduce	4

State 26
	operation -> sexpr Lplus . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	52
	Lnum					shift	15
	nt					goto	40

State 27
	operation -> sexpr Lminus . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	53
	Lnum					shift	15
	nt					goto	40

State 28
	operation -> sexpr Lstar . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	54
	Lnum					shift	15
	nt					goto	40

State 29
	operation -> sexpr Lmod . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	55
	Lnum					shift	15
	nt					goto	40

State 30
	operation -> sexpr Land . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	56
	Lnum					shift	15
	nt					goto	40

State 31
	operation -> sexpr Lor . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	57
	Lnum					shift	15
	nt					goto	40

State 32
	operation -> sexpr Lslash . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	58
	Lnum					shift	15
	nt					goto	40

State 33
	operation -> sexpr Lsup . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	59
	Lnum					shift	15
	nt					goto	40

State 34
	operation -> sexpr Linf . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	60
	Lnum					shift	15
	nt					goto	40

State 35
	operation -> sexpr Lseq . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	61
	Lnum					shift	15
	nt					goto	40

State 36
	operation -> sexpr Lieq . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	62
	Lnum					shift	15
	nt					goto	40

State 37
	operation -> sexpr Leq . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	63
	Lnum					shift	15
	nt					goto	40

State 38
	operation -> sexpr Lneq . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	64
	Lnum					shift	15
	nt					goto	40

State 39
	sexpr -> operation . 

	Lbool					reduce	47
	Lseq					reduce	47
	Lminus					reduce	47
	Lstar					reduce	47
	Lcomma					reduce	47
	Lret					reduce	47
	Lif					reduce	47
	Lmod					reduce	47
	Lwhile					reduce	47
	Lplus					reduce	47
	Lprint					reduce	47
	Lcpar					reduce	47
	Lneq					reduce	47
	Lieq					reduce	47
	Lcot					reduce	47
	Lid					reduce	47
	Lor					reduce	47
	Eof					reduce	47
	Lnum					reduce	47
	Land					reduce	47
	Lslash					reduce	47
	Ldef					reduce	47
	Lsup					reduce	47
	Lnot					reduce	47
	Leq					reduce	47
	Lcol					reduce	47
	Linf					reduce	47
	Lelse					reduce	47

State 40
	sexpr -> nt . 

	Lbool					reduce	48
	Lseq					reduce	48
	Lminus					reduce	48
	Lstar					reduce	48
	Lcomma					reduce	48
	Lret					reduce	48
	Lif					reduce	48
	Lmod					reduce	48
	Lwhile					reduce	48
	Lplus					reduce	48
	Lprint					reduce	48
	Lcpar					reduce	48
	Lneq					reduce	48
	Lieq					reduce	48
	Lcot					reduce	48
	Lid					reduce	48
	Lor					reduce	48
	Eof					reduce	48
	Lnum					reduce	48
	Land					reduce	48
	Lslash					reduce	48
	Ldef					reduce	48
	Lsup					reduce	48
	Lnot					reduce	48
	Leq					reduce	48
	Lcol					reduce	48
	Linf					reduce	48
	Lelse					reduce	48

State 41
	sexpr -> val . 

	Lbool					reduce	46
	Lseq					reduce	46
	Lminus					reduce	46
	Lstar					reduce	46
	Lcomma					reduce	46
	Lret					reduce	46
	Lif					reduce	46
	Lmod					reduce	46
	Lwhile					reduce	46
	Lplus					reduce	46
	Lprint					reduce	46
	Lcpar					reduce	46
	Lneq					reduce	46
	Lieq					reduce	46
	Lcot					reduce	46
	Lid					reduce	46
	Lor					reduce	46
	Eof					reduce	46
	Lnum					reduce	46
	Land					reduce	46
	Lslash					reduce	46
	Ldef					reduce	46
	Lsup					reduce	46
	Lnot					reduce	46
	Leq					reduce	46
	Lcol					reduce	46
	Linf					reduce	46
	Lelse					reduce	46

State 42
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

	Lbool					reduce	40
	Lseq					reduce	40
	Lminus					reduce	40
	Lstar					reduce	40
	Lcomma					reduce	40
	Lret					reduce	40
	Lif					reduce	40
	Lmod					reduce	40
	Lwhile					reduce	40
	Lplus					reduce	40
	Lprint					reduce	40
	Lcpar					reduce	40
	Lneq					reduce	40
	Lieq					reduce	40
	Lcot					reduce	40
	Lid					reduce	40
	Lor					shift	31
	Eof					reduce	40
	Lnum					reduce	40
	Land					reduce	40
	Lslash					reduce	40
	Ldef					reduce	40
	Lsup					reduce	40
	Lnot					reduce	40
	Leq					reduce	40
	Lcol					reduce	40
	Linf					reduce	40
	Lelse					reduce	40

State 43
	val -> Lid . 

	Lbool					reduce	42
	Lseq					reduce	42
	Lminus					reduce	42
	Lstar					reduce	42
	Lcomma					reduce	42
	Lret					reduce	42
	Lif					reduce	42
	Lmod					reduce	42
	Lwhile					reduce	42
	Lplus					reduce	42
	Lprint					reduce	42
	Lcpar					reduce	42
	Lneq					reduce	42
	Lieq					reduce	42
	Lcot					reduce	42
	Lid					reduce	42
	Lor					reduce	42
	Eof					reduce	42
	Lnum					reduce	42
	Land					reduce	42
	Lslash					reduce	42
	Ldef					reduce	42
	Lsup					reduce	42
	Lnot					reduce	42
	Leq					reduce	42
	Lcol					reduce	42
	Linf					reduce	42
	Lelse					reduce	42

State 44
	declaration -> Lid Lassign . sexpr 

	operation					goto	39
	Lbool					shift	16
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	sexpr					goto	65
	Lnum					shift	15
	nt					goto	40

State 45
	funcall -> Lid Lopar . callargs Lcpar 

	operation					goto	39
	Lbool					shift	16
	callargs					goto	66
	Lid					shift	43
	Lnot					shift	14
	val					goto	41
	Lnum					shift	15
	sexpr					goto	67
	nt					goto	40
	Lnil					shift	68

State 46
	test -> Lif expr . Lcol expr Lelse Lcol expr 

	Lcol					shift	69

State 47
	funcall -> Lid . Lopar callargs Lcpar 
	val -> Lid . 

	Lbool					reduce	42
	Lminus					reduce	42
	Lopar					shift	45
	Lstar					reduce	42
	Lseq					reduce	42
	Lret					reduce	42
	Lif					reduce	42
	Lmod					reduce	42
	Lwhile					reduce	42
	Lplus					reduce	42
	Lprint					reduce	42
	Lneq					reduce	42
	Lieq					reduce	42
	Lcot					reduce	42
	Lid					reduce	42
	Lor					reduce	42
	Eof					reduce	42
	Lnum					reduce	42
	Land					reduce	42
	Lslash					reduce	42
	Ldef					reduce	42
	Lsup					reduce	42
	Lnot					reduce	42
	Leq					reduce	42
	Lcol					reduce	42
	Linf					reduce	42
	Lelse					reduce	42

State 48
	print -> Lprint Lopar . Lcot expr Lcot Lcpar 
	print -> Lprint Lopar . sexpr Lcpar 
	print -> Lprint Lopar . val Lcpar 

	operation					goto	39
	Lbool					shift	16
	Lcot					shift	72
	Lid					shift	43
	Lnot					shift	14
	val					goto	70
	sexpr					goto	71
	Lnum					shift	15
	nt					goto	40

State 49
	loop -> Lwhile expr . Lcol expr 

	Lcol					shift	73

State 50
	declaration -> Ldef Lid . Lopar fargs Lcpar Lcol expr 

	Lopar					shift	74

State 51
	return -> Lret sexpr . 
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

	Lbool					reduce	22
	Lminus					shift	27
	Lstar					shift	28
	Lseq					shift	35
	Lret					reduce	22
	Lif					reduce	22
	Lmod					shift	29
	Lwhile					reduce	22
	Lplus					shift	26
	Lprint					reduce	22
	Lneq					shift	38
	Lieq					shift	36
	Lcot					reduce	22
	Lid					reduce	22
	Lor					shift	31
	Eof					reduce	22
	Lnum					reduce	22
	Land					shift	30
	Ldef					reduce	22
	Linf					shift	34
	Lsup					shift	33
	Lnot					reduce	22
	Leq					shift	37
	Lcol					reduce	22
	Lslash					shift	32
	Lelse					reduce	22

State 52
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

	Lbool					reduce	27
	Lseq					shift	35
	Lminus					shift	27
	Lstar					shift	28
	Lcomma					reduce	27
	Lret					reduce	27
	Lif					reduce	27
	Lmod					shift	29
	Lwhile					reduce	27
	Lplus					reduce	27
	Lprint					reduce	27
	Lcpar					reduce	27
	Lneq					shift	38
	Lieq					shift	36
	Lcot					reduce	27
	Lid					reduce	27
	Lor					shift	31
	Eof					reduce	27
	Lnum					reduce	27
	Land					shift	30
	Lslash					shift	32
	Ldef					reduce	27
	Lsup					shift	33
	Lnot					reduce	27
	Leq					shift	37
	Lcol					reduce	27
	Linf					shift	34
	Lelse					reduce	27

State 53
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

	Lbool					reduce	28
	Lseq					shift	35
	Lminus					reduce	28
	Lstar					shift	28
	Lcomma					reduce	28
	Lret					reduce	28
	Lif					reduce	28
	Lmod					shift	29
	Lwhile					reduce	28
	Lplus					reduce	28
	Lprint					reduce	28
	Lcpar					reduce	28
	Lneq					shift	38
	Lieq					shift	36
	Lcot					reduce	28
	Lid					reduce	28
	Lor					shift	31
	Eof					reduce	28
	Lnum					reduce	28
	Land					shift	30
	Lslash					shift	32
	Ldef					reduce	28
	Lsup					shift	33
	Lnot					reduce	28
	Leq					shift	37
	Lcol					reduce	28
	Linf					shift	34
	Lelse					reduce	28

State 54
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

	Lbool					reduce	29
	Lseq					shift	35
	Lminus					reduce	29
	Lstar					reduce	29
	Lcomma					reduce	29
	Lret					reduce	29
	Lif					reduce	29
	Lmod					shift	29
	Lwhile					reduce	29
	Lplus					reduce	29
	Lprint					reduce	29
	Lcpar					reduce	29
	Lneq					shift	38
	Lieq					shift	36
	Lcot					reduce	29
	Lid					reduce	29
	Lor					shift	31
	Eof					reduce	29
	Lnum					reduce	29
	Land					shift	30
	Lslash					shift	32
	Ldef					reduce	29
	Lsup					shift	33
	Lnot					reduce	29
	Leq					shift	37
	Lcol					reduce	29
	Linf					shift	34
	Lelse					reduce	29

State 55
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

	Lbool					reduce	31
	Lseq					reduce	31
	Lminus					reduce	31
	Lstar					reduce	31
	Lcomma					reduce	31
	Lret					reduce	31
	Lif					reduce	31
	Lmod					reduce	31
	Lwhile					reduce	31
	Lplus					reduce	31
	Lprint					reduce	31
	Lcpar					reduce	31
	Lneq					reduce	31
	Lieq					reduce	31
	Lcot					reduce	31
	Lid					reduce	31
	Lor					shift	31
	Eof					reduce	31
	Lnum					reduce	31
	Land					shift	30
	Lslash					reduce	31
	Ldef					reduce	31
	Lsup					reduce	31
	Lnot					reduce	31
	Leq					reduce	31
	Lcol					reduce	31
	Linf					reduce	31
	Lelse					reduce	31

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
	operation -> sexpr . Leq sexpr 
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr Land sexpr . 
	operation -> sexpr . Lor sexpr 

	Lbool					reduce	38
	Lseq					reduce	38
	Lminus					reduce	38
	Lstar					reduce	38
	Lcomma					reduce	38
	Lret					reduce	38
	Lif					reduce	38
	Lmod					reduce	38
	Lwhile					reduce	38
	Lplus					reduce	38
	Lprint					reduce	38
	Lcpar					reduce	38
	Lneq					reduce	38
	Lieq					reduce	38
	Lcot					reduce	38
	Lid					reduce	38
	Lor					shift	31
	Eof					reduce	38
	Lnum					reduce	38
	Land					reduce	38
	Lslash					reduce	38
	Ldef					reduce	38
	Lsup					reduce	38
	Lnot					reduce	38
	Leq					reduce	38
	Lcol					reduce	38
	Linf					reduce	38
	Lelse					reduce	38

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
	operation -> sexpr . Lneq sexpr 
	operation -> sexpr . Land sexpr 
	operation -> sexpr . Lor sexpr 
	operation -> sexpr Lor sexpr . 

	Lbool					reduce	39
	Lseq					reduce	39
	Lminus					reduce	39
	Lstar					reduce	39
	Lcomma					reduce	39
	Lret					reduce	39
	Lif					reduce	39
	Lmod					reduce	39
	Lwhile					reduce	39
	Lplus					reduce	39
	Lprint					reduce	39
	Lcpar					reduce	39
	Lneq					reduce	39
	Lieq					reduce	39
	Lcot					reduce	39
	Lid					reduce	39
	Lor					reduce	39
	Eof					reduce	39
	Lnum					reduce	39
	Land					reduce	39
	Lslash					reduce	39
	Ldef					reduce	39
	Lsup					reduce	39
	Lnot					reduce	39
	Leq					reduce	39
	Lcol					reduce	39
	Linf					reduce	39
	Lelse					reduce	39

State 58
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

	Lbool					reduce	30
	Lseq					shift	35
	Lminus					reduce	30
	Lstar					reduce	30
	Lcomma					reduce	30
	Lret					reduce	30
	Lif					reduce	30
	Lmod					shift	29
	Lwhile					reduce	30
	Lplus					reduce	30
	Lprint					reduce	30
	Lcpar					reduce	30
	Lneq					shift	38
	Lieq					shift	36
	Lcot					reduce	30
	Lid					reduce	30
	Lor					shift	31
	Eof					reduce	30
	Lnum					reduce	30
	Land					shift	30
	Lslash					reduce	30
	Ldef					reduce	30
	Lsup					shift	33
	Lnot					reduce	30
	Leq					shift	37
	Lcol					reduce	30
	Linf					shift	34
	Lelse					reduce	30

State 59
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

	Lbool					reduce	32
	Lseq					shift	35
	Lminus					reduce	32
	Lstar					reduce	32
	Lcomma					reduce	32
	Lret					reduce	32
	Lif					reduce	32
	Lmod					shift	29
	Lwhile					reduce	32
	Lplus					reduce	32
	Lprint					reduce	32
	Lcpar					reduce	32
	Lneq					shift	38
	Lieq					shift	36
	Lcot					reduce	32
	Lid					reduce	32
	Lor					shift	31
	Eof					reduce	32
	Lnum					reduce	32
	Land					shift	30
	Lslash					reduce	32
	Ldef					reduce	32
	Lsup					reduce	32
	Lnot					reduce	32
	Leq					shift	37
	Lcol					reduce	32
	Linf					shift	34
	Lelse					reduce	32

State 60
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

	Lbool					reduce	33
	Lseq					shift	35
	Lminus					reduce	33
	Lstar					reduce	33
	Lcomma					reduce	33
	Lret					reduce	33
	Lif					reduce	33
	Lmod					shift	29
	Lwhile					reduce	33
	Lplus					reduce	33
	Lprint					reduce	33
	Lcpar					reduce	33
	Lneq					shift	38
	Lieq					shift	36
	Lcot					reduce	33
	Lid					reduce	33
	Lor					shift	31
	Eof					reduce	33
	Lnum					reduce	33
	Land					shift	30
	Lslash					reduce	33
	Ldef					reduce	33
	Lsup					reduce	33
	Lnot					reduce	33
	Leq					shift	37
	Lcol					reduce	33
	Linf					reduce	33
	Lelse					reduce	33

State 61
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

	Lbool					reduce	34
	Lseq					reduce	34
	Lminus					reduce	34
	Lstar					reduce	34
	Lcomma					reduce	34
	Lret					reduce	34
	Lif					reduce	34
	Lmod					shift	29
	Lwhile					reduce	34
	Lplus					reduce	34
	Lprint					reduce	34
	Lcpar					reduce	34
	Lneq					shift	38
	Lieq					shift	36
	Lcot					reduce	34
	Lid					reduce	34
	Lor					shift	31
	Eof					reduce	34
	Lnum					reduce	34
	Land					shift	30
	Lslash					reduce	34
	Ldef					reduce	34
	Lsup					reduce	34
	Lnot					reduce	34
	Leq					shift	37
	Lcol					reduce	34
	Linf					reduce	34
	Lelse					reduce	34

State 62
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

	Lbool					reduce	35
	Lseq					reduce	35
	Lminus					reduce	35
	Lstar					reduce	35
	Lcomma					reduce	35
	Lret					reduce	35
	Lif					reduce	35
	Lmod					shift	29
	Lwhile					reduce	35
	Lplus					reduce	35
	Lprint					reduce	35
	Lcpar					reduce	35
	Lneq					shift	38
	Lieq					reduce	35
	Lcot					reduce	35
	Lid					reduce	35
	Lor					shift	31
	Eof					reduce	35
	Lnum					reduce	35
	Land					shift	30
	Lslash					reduce	35
	Ldef					reduce	35
	Lsup					reduce	35
	Lnot					reduce	35
	Leq					shift	37
	Lcol					reduce	35
	Linf					reduce	35
	Lelse					reduce	35

State 63
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

	Lbool					reduce	36
	Lseq					reduce	36
	Lminus					reduce	36
	Lstar					reduce	36
	Lcomma					reduce	36
	Lret					reduce	36
	Lif					reduce	36
	Lmod					shift	29
	Lwhile					reduce	36
	Lplus					reduce	36
	Lprint					reduce	36
	Lcpar					reduce	36
	Lneq					shift	38
	Lieq					reduce	36
	Lcot					reduce	36
	Lid					reduce	36
	Lor					shift	31
	Eof					reduce	36
	Lnum					reduce	36
	Land					shift	30
	Lslash					reduce	36
	Ldef					reduce	36
	Lsup					reduce	36
	Lnot					reduce	36
	Leq					reduce	36
	Lcol					reduce	36
	Linf					reduce	36
	Lelse					reduce	36

State 64
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

	Lbool					reduce	37
	Lseq					reduce	37
	Lminus					reduce	37
	Lstar					reduce	37
	Lcomma					reduce	37
	Lret					reduce	37
	Lif					reduce	37
	Lmod					shift	29
	Lwhile					reduce	37
	Lplus					reduce	37
	Lprint					reduce	37
	Lcpar					reduce	37
	Lneq					reduce	37
	Lieq					reduce	37
	Lcot					reduce	37
	Lid					reduce	37
	Lor					shift	31
	Eof					reduce	37
	Lnum					reduce	37
	Land					shift	30
	Lslash					reduce	37
	Ldef					reduce	37
	Lsup					reduce	37
	Lnot					reduce	37
	Leq					reduce	37
	Lcol					reduce	37
	Linf					reduce	37
	Lelse					reduce	37

State 65
	declaration -> Lid Lassign sexpr . 
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

	Ldef					reduce	14
	Lbool					reduce	14
	Lieq					shift	36
	Lwhile					reduce	14
	Lor					shift	31
	Eof					reduce	14
	Lid					reduce	14
	Lsup					shift	33
	Lstar					shift	28
	Lnum					reduce	14
	Lseq					shift	35
	Lret					reduce	14
	Lslash					shift	32
	Lif					reduce	14
	Lminus					shift	27
	Land					shift	30
	Lmod					shift	29
	Lnot					reduce	14
	Lplus					shift	26
	Linf					shift	34
	Lprint					reduce	14
	Lneq					shift	38
	Leq					shift	37

State 66
	funcall -> Lid Lopar callargs . Lcpar 

	Lcpar					shift	75

State 67
	callargs -> sexpr . Lcomma fargs 
	callargs -> sexpr . 
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

	Lieq					shift	36
	Lminus					shift	27
	Lmod					shift	29
	Lstar					shift	28
	Lor					shift	31
	Lseq					shift	35
	Land					shift	30
	Leq					shift	37
	Linf					shift	34
	Lsup					shift	33
	Lplus					shift	26
	Lcomma					shift	76
	Lslash					shift	32
	Lcpar					reduce	20
	Lneq					shift	38

State 68
	callargs -> Lnil . 

	Lcpar					reduce	21

State 69
	test -> Lif expr Lcol . expr Lelse Lcol expr 

	Lbool					shift	16
	Lid					shift	47
	expr					goto	77
	val					goto	10
	Lnum					shift	15
	funcall					goto	6
	Lret					shift	22
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lwhile					shift	20
	Lnot					shift	14
	loop					goto	12
	Lif					shift	18
	sexpr					goto	13
	Lprint					shift	19
	print					goto	7

State 70
	print -> Lprint Lopar val . Lcpar 
	sexpr -> val . 

	Lieq					reduce	46
	Lminus					reduce	46
	Lsup					reduce	46
	Lstar					reduce	46
	Lor					reduce	46
	Lseq					reduce	46
	Land					reduce	46
	Lslash					reduce	46
	Lmod					reduce	46
	Leq					reduce	46
	Linf					reduce	46
begin conflict:
	Lcpar					shift	78
	Lcpar					reduce	46
end conflict
	Lneq					reduce	46
	Lplus					reduce	46

State 71
	print -> Lprint Lopar sexpr . Lcpar 
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

	Lieq					shift	36
	Lminus					shift	27
	Lmod					shift	29
	Lstar					shift	28
	Lor					shift	31
	Lseq					shift	35
	Land					shift	30
	Linf					shift	34
	Lsup					shift	33
	Leq					shift	37
	Lslash					shift	32
	Lcpar					shift	79
	Lneq					shift	38
	Lplus					shift	26

State 72
	print -> Lprint Lopar Lcot . expr Lcot Lcpar 

	Lbool					shift	16
	Lid					shift	47
	expr					goto	80
	val					goto	10
	Lnum					shift	15
	funcall					goto	6
	Lret					shift	22
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lwhile					shift	20
	Lnot					shift	14
	loop					goto	12
	Lif					shift	18
	sexpr					goto	13
	Lprint					shift	19
	print					goto	7

State 73
	loop -> Lwhile expr Lcol . expr 

	Lbool					shift	16
	Lid					shift	47
	expr					goto	81
	val					goto	10
	Lnum					shift	15
	funcall					goto	6
	Lret					shift	22
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lwhile					shift	20
	Lnot					shift	14
	loop					goto	12
	Lif					shift	18
	sexpr					goto	13
	Lprint					shift	19
	print					goto	7

State 74
	declaration -> Ldef Lid Lopar . fargs Lcpar Lcol expr 

	fargs					goto	82
	Lid					shift	83
	Lnil					shift	84

State 75
	funcall -> Lid Lopar callargs Lcpar . 

	Lbool					reduce	23
	Lcot					reduce	23
	Lid					reduce	23
	Eof					reduce	23
	Lnum					reduce	23
	Lnot					reduce	23
	Lret					reduce	23
	Lif					reduce	23
	Ldef					reduce	23
	Lwhile					reduce	23
	Lcol					reduce	23
	Lprint					reduce	23
	Lelse					reduce	23

State 76
	callargs -> sexpr Lcomma . fargs 

	fargs					goto	85
	Lid					shift	83
	Lnil					shift	84

State 77
	test -> Lif expr Lcol expr . Lelse Lcol expr 

	Lelse					shift	86

State 78
	print -> Lprint Lopar val Lcpar . 

	Lbool					reduce	26
	Lcot					reduce	26
	Lid					reduce	26
	Eof					reduce	26
	Lnum					reduce	26
	Lnot					reduce	26
	Lret					reduce	26
	Lif					reduce	26
	Ldef					reduce	26
	Lwhile					reduce	26
	Lcol					reduce	26
	Lprint					reduce	26
	Lelse					reduce	26

State 79
	print -> Lprint Lopar sexpr Lcpar . 

	Lbool					reduce	25
	Lcot					reduce	25
	Lid					reduce	25
	Eof					reduce	25
	Lnum					reduce	25
	Lnot					reduce	25
	Lret					reduce	25
	Lif					reduce	25
	Ldef					reduce	25
	Lwhile					reduce	25
	Lcol					reduce	25
	Lprint					reduce	25
	Lelse					reduce	25

State 80
	print -> Lprint Lopar Lcot expr . Lcot Lcpar 

	Lcot					shift	87

State 81
	loop -> Lwhile expr Lcol expr . 

	Lbool					reduce	45
	Lcot					reduce	45
	Lid					reduce	45
	Eof					reduce	45
	Lnum					reduce	45
	Lnot					reduce	45
	Lret					reduce	45
	Lif					reduce	45
	Ldef					reduce	45
	Lwhile					reduce	45
	Lcol					reduce	45
	Lprint					reduce	45
	Lelse					reduce	45

State 82
	declaration -> Ldef Lid Lopar fargs . Lcpar Lcol expr 

	Lcpar					shift	88

State 83
	fargs -> Lid . Lcomma fargs 
	fargs -> Lid . 

	Lcomma					shift	89
	Lcpar					reduce	17

State 84
	fargs -> Lnil . 

	Lcpar					reduce	18

State 85
	callargs -> sexpr Lcomma fargs . 

	Lcpar					reduce	19

State 86
	test -> Lif expr Lcol expr Lelse . Lcol expr 

	Lcol					shift	90

State 87
	print -> Lprint Lopar Lcot expr Lcot . Lcpar 

	Lcpar					shift	91

State 88
	declaration -> Ldef Lid Lopar fargs Lcpar . Lcol expr 

	Lcol					shift	92

State 89
	fargs -> Lid Lcomma . fargs 

	fargs					goto	93
	Lid					shift	83
	Lnil					shift	84

State 90
	test -> Lif expr Lcol expr Lelse Lcol . expr 

	Lbool					shift	16
	Lid					shift	47
	expr					goto	94
	val					goto	10
	Lnum					shift	15
	funcall					goto	6
	Lret					shift	22
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lwhile					shift	20
	Lnot					shift	14
	loop					goto	12
	Lif					shift	18
	sexpr					goto	13
	Lprint					shift	19
	print					goto	7

State 91
	print -> Lprint Lopar Lcot expr Lcot Lcpar . 

	Lbool					reduce	24
	Lcot					reduce	24
	Lid					reduce	24
	Eof					reduce	24
	Lnum					reduce	24
	Lnot					reduce	24
	Lret					reduce	24
	Lif					reduce	24
	Ldef					reduce	24
	Lwhile					reduce	24
	Lcol					reduce	24
	Lprint					reduce	24
	Lelse					reduce	24

State 92
	declaration -> Ldef Lid Lopar fargs Lcpar Lcol . expr 

	Lbool					shift	16
	Lid					shift	47
	expr					goto	95
	val					goto	10
	Lnum					shift	15
	funcall					goto	6
	Lret					shift	22
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lwhile					shift	20
	Lnot					shift	14
	loop					goto	12
	Lif					shift	18
	sexpr					goto	13
	Lprint					shift	19
	print					goto	7

State 93
	fargs -> Lid Lcomma fargs . 

	Lcpar					reduce	16

State 94
	test -> Lif expr Lcol expr Lelse Lcol expr . 

	Lbool					reduce	44
	Lcot					reduce	44
	Lid					reduce	44
	Eof					reduce	44
	Lnum					reduce	44
	Lnot					reduce	44
	Lret					reduce	44
	Lif					reduce	44
	Ldef					reduce	44
	Lwhile					reduce	44
	Lcol					reduce	44
	Lprint					reduce	44
	Lelse					reduce	44

State 95
	declaration -> Ldef Lid Lopar fargs Lcpar Lcol expr . 

	Lif					reduce	15
	Ldef					reduce	15
	Lid					reduce	15
	Lwhile					reduce	15
	Eof					reduce	15
	Lbool					reduce	15
	Lnum					reduce	15
	Lprint					reduce	15
	Lnot					reduce	15
	Lret					reduce	15

1 shift/reduce conflict
