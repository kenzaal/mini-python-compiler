0	g521	=	(g522)
1	g522	=	(prog Eof)
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
13	expr	=	(for)
14	expr	=	(print)
15	declaration	=	(Lid Lassign sexpr)
16	declaration	=	(Ldef Lid Lopar fargs Lcpar Lcol expr)
17	fargs	=	(Lid Lcomma fargs)
18	fargs	=	(Lid)
19	fargs	=	(Lnil)
20	callargs	=	(sexpr Lcomma fargs)
21	callargs	=	(sexpr)
22	callargs	=	(Lnil)
23	return	=	(Lret sexpr)
24	funcall	=	(Lid Lopar callargs Lcpar)
25	print	=	(Lprint Lopar Lcot expr Lcot Lcpar)
26	print	=	(Lprint Lopar sexpr Lcpar)
27	print	=	(Lprint Lopar val Lcpar)
28	operation	=	(sexpr Lplus sexpr)
29	operation	=	(sexpr Lminus sexpr)
30	operation	=	(sexpr Lstar sexpr)
31	operation	=	(sexpr Lslash sexpr)
32	operation	=	(sexpr Lmod sexpr)
33	operation	=	(sexpr Lsup sexpr)
34	operation	=	(sexpr Linf sexpr)
35	operation	=	(sexpr Lseq sexpr)
36	operation	=	(sexpr Lieq sexpr)
37	operation	=	(sexpr Leq sexpr)
38	operation	=	(sexpr Lneq sexpr)
39	operation	=	(sexpr Land sexpr)
40	operation	=	(sexpr Lor sexpr)
41	nt	=	(Lnot sexpr)
42	val	=	(Lnum)
43	val	=	(Lid)
44	val	=	(Lbool)
45	test	=	(Lif expr Lcol expr Lelse Lcol expr)
46	loop	=	(Lwhile expr Lcol expr)
47	for	=	(Lfor Lid Lin Lrange Lopar Lnum Lcomma Lnum Lcpar Lcol expr)
48	sexpr	=	(val)
49	sexpr	=	(operation)
50	sexpr	=	(nt)
State 0
	g521 -> . g522 

	Lbool					shift	17
	Lret					shift	24
	prog					goto	2
	g522					goto	1
	Lif					shift	19
	for					goto	13
	Lwhile					shift	22
	Lprint					shift	20
	print					goto	7
	expr					goto	3
	funcall					goto	6
	Lid					shift	18
	sexpr					goto	14
	val					goto	10
	Lnum					shift	16
	Lnot					shift	15
	Lfor					shift	21
	Ldef					shift	23
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	declaration					goto	4
	loop					goto	12

State 1
	g521 -> g522 . 


State 2
	g522 -> prog . Eof 

	Eof					accept	

State 3
	prog -> expr . 
	prog -> expr . prog 

	Lbool					shift	17
	Lret					shift	24
	prog					goto	26
	expr					goto	3
	nt					goto	9
	Lif					shift	19
	for					goto	13
	Lwhile					shift	22
	Lprint					shift	20
	print					goto	7
	funcall					goto	6
	Lid					shift	18
	sexpr					goto	14
	val					goto	10
	Lnum					shift	16
	Lnot					shift	15
	Lfor					shift	21
	Ldef					shift	23
	Eof					reduce	2
	operation					goto	8
	test					goto	11
	return					goto	5
	declaration					goto	4
	loop					goto	12

State 4
	prog -> declaration . 
	prog -> declaration . prog 

	Lbool					shift	17
	Lret					shift	24
	prog					goto	27
	expr					goto	3
	nt					goto	9
	Lif					shift	19
	for					goto	13
	Lwhile					shift	22
	Lprint					shift	20
	print					goto	7
	funcall					goto	6
	Lid					shift	18
	sexpr					goto	14
	val					goto	10
	Lnum					shift	16
	Lnot					shift	15
	Lfor					shift	21
	Ldef					shift	23
	Eof					reduce	3
	operation					goto	8
	test					goto	11
	return					goto	5
	declaration					goto	4
	loop					goto	12

State 5
	expr -> return . 

	Lbool					reduce	10
	Lcot					reduce	10
	Lid					reduce	10
	Lret					reduce	10
	Lnum					reduce	10
	Lfor					reduce	10
	Ldef					reduce	10
	Eof					reduce	10
	Lif					reduce	10
	Lnot					reduce	10
	Lcol					reduce	10
	Lwhile					reduce	10
	Lprint					reduce	10
	Lelse					reduce	10

State 6
	expr -> funcall . 

	Lbool					reduce	8
	Lcot					reduce	8
	Lid					reduce	8
	Lret					reduce	8
	Lnum					reduce	8
	Lfor					reduce	8
	Ldef					reduce	8
	Eof					reduce	8
	Lif					reduce	8
	Lnot					reduce	8
	Lcol					reduce	8
	Lwhile					reduce	8
	Lprint					reduce	8
	Lelse					reduce	8

State 7
	expr -> print . 

	Lbool					reduce	14
	Lcot					reduce	14
	Lid					reduce	14
	Lret					reduce	14
	Lnum					reduce	14
	Lfor					reduce	14
	Ldef					reduce	14
	Eof					reduce	14
	Lif					reduce	14
	Lnot					reduce	14
	Lcol					reduce	14
	Lwhile					reduce	14
	Lprint					reduce	14
	Lelse					reduce	14

State 8
	expr -> operation . 
	sexpr -> operation . 

	Lbool					reduce	7
	Lcot					reduce	7
	Lret					reduce	7
	Lminus					reduce	49
	Lid					reduce	7
	Lstar					reduce	49
	Lnum					reduce	7
	Lseq					reduce	49
	Lif					reduce	7
	Lmod					reduce	49
	Lplus					reduce	49
	Lwhile					reduce	7
	Lprint					reduce	7
	Lneq					reduce	49
	Lieq					reduce	49
	Eof					reduce	7
	Land					reduce	49
	Lor					reduce	49
	Lfor					reduce	7
	Ldef					reduce	7
	Lslash					reduce	49
	Lsup					reduce	49
	Lnot					reduce	7
	Leq					reduce	49
	Lcol					reduce	7
	Linf					reduce	49
	Lelse					reduce	7

State 9
	expr -> nt . 
	sexpr -> nt . 

	Lbool					reduce	9
	Lcot					reduce	9
	Lret					reduce	9
	Lminus					reduce	50
	Lid					reduce	9
	Lstar					reduce	50
	Lnum					reduce	9
	Lseq					reduce	50
	Lif					reduce	9
	Lmod					reduce	50
	Lplus					reduce	50
	Lwhile					reduce	9
	Lprint					reduce	9
	Lneq					reduce	50
	Lieq					reduce	50
	Eof					reduce	9
	Land					reduce	50
	Lor					reduce	50
	Lfor					reduce	9
	Ldef					reduce	9
	Lslash					reduce	50
	Lsup					reduce	50
	Lnot					reduce	9
	Leq					reduce	50
	Lcol					reduce	9
	Linf					reduce	50
	Lelse					reduce	9

State 10
	expr -> val . 
	sexpr -> val . 

	Lbool					reduce	6
	Lcot					reduce	6
	Lret					reduce	6
	Lminus					reduce	48
	Lid					reduce	6
	Lstar					reduce	48
	Lnum					reduce	6
	Lseq					reduce	48
	Lif					reduce	6
	Lmod					reduce	48
	Lplus					reduce	48
	Lwhile					reduce	6
	Lprint					reduce	6
	Lneq					reduce	48
	Lieq					reduce	48
	Eof					reduce	6
	Land					reduce	48
	Lor					reduce	48
	Lfor					reduce	6
	Ldef					reduce	6
	Lslash					reduce	48
	Lsup					reduce	48
	Lnot					reduce	6
	Leq					reduce	48
	Lcol					reduce	6
	Linf					reduce	48
	Lelse					reduce	6

State 11
	expr -> test . 

	Lbool					reduce	11
	Lcot					reduce	11
	Lid					reduce	11
	Lret					reduce	11
	Lnum					reduce	11
	Lfor					reduce	11
	Ldef					reduce	11
	Eof					reduce	11
	Lif					reduce	11
	Lnot					reduce	11
	Lcol					reduce	11
	Lwhile					reduce	11
	Lprint					reduce	11
	Lelse					reduce	11

State 12
	expr -> loop . 

	Lbool					reduce	12
	Lcot					reduce	12
	Lid					reduce	12
	Lret					reduce	12
	Lnum					reduce	12
	Lfor					reduce	12
	Ldef					reduce	12
	Eof					reduce	12
	Lif					reduce	12
	Lnot					reduce	12
	Lcol					reduce	12
	Lwhile					reduce	12
	Lprint					reduce	12
	Lelse					reduce	12

State 13
	expr -> for . 

	Lbool					reduce	13
	Lcot					reduce	13
	Lid					reduce	13
	Lret					reduce	13
	Lnum					reduce	13
	Lfor					reduce	13
	Ldef					reduce	13
	Eof					reduce	13
	Lif					reduce	13
	Lnot					reduce	13
	Lcol					reduce	13
	Lwhile					reduce	13
	Lprint					reduce	13
	Lelse					reduce	13

State 14
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

	Lieq					shift	38
	Lminus					shift	29
	Lmod					shift	31
	Lstar					shift	30
	Lor					shift	33
	Lseq					shift	37
	Land					shift	32
	Linf					shift	36
	Lsup					shift	35
	Leq					shift	39
	Lslash					shift	34
	Lneq					shift	40
	Lplus					shift	28

State 15
	nt -> Lnot . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	44
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 16
	val -> Lnum . 

	Lbool					reduce	42
	Lcot					reduce	42
	Lret					reduce	42
	Lseq					reduce	42
	Lminus					reduce	42
	Lstar					reduce	42
	Lcomma					reduce	42
	Lif					reduce	42
	Land					reduce	42
	Lmod					reduce	42
	Lplus					reduce	42
	Lwhile					reduce	42
	Lprint					reduce	42
	Lcpar					reduce	42
	Lneq					reduce	42
	Lieq					reduce	42
	Lid					reduce	42
	Lor					reduce	42
	Lnum					reduce	42
	Lfor					reduce	42
	Ldef					reduce	42
	Eof					reduce	42
	Linf					reduce	42
	Lsup					reduce	42
	Lnot					reduce	42
	Leq					reduce	42
	Lcol					reduce	42
	Lslash					reduce	42
	Lelse					reduce	42

State 17
	val -> Lbool . 

	Lbool					reduce	44
	Lcot					reduce	44
	Lret					reduce	44
	Lseq					reduce	44
	Lminus					reduce	44
	Lstar					reduce	44
	Lcomma					reduce	44
	Lif					reduce	44
	Land					reduce	44
	Lmod					reduce	44
	Lplus					reduce	44
	Lwhile					reduce	44
	Lprint					reduce	44
	Lcpar					reduce	44
	Lneq					reduce	44
	Lieq					reduce	44
	Lid					reduce	44
	Lor					reduce	44
	Lnum					reduce	44
	Lfor					reduce	44
	Ldef					reduce	44
	Eof					reduce	44
	Linf					reduce	44
	Lsup					reduce	44
	Lnot					reduce	44
	Leq					reduce	44
	Lcol					reduce	44
	Lslash					reduce	44
	Lelse					reduce	44

State 18
	declaration -> Lid . Lassign sexpr 
	funcall -> Lid . Lopar callargs Lcpar 
	val -> Lid . 

	Lbool					reduce	43
	Lassign					shift	46
	Lret					reduce	43
	Lminus					reduce	43
	Lid					reduce	43
	Lopar					shift	47
	Lstar					reduce	43
	Lnum					reduce	43
	Lseq					reduce	43
	Lif					reduce	43
	Lmod					reduce	43
	Lplus					reduce	43
	Lwhile					reduce	43
	Lprint					reduce	43
	Lneq					reduce	43
	Lieq					reduce	43
	Land					reduce	43
	Lor					reduce	43
	Lfor					reduce	43
	Ldef					reduce	43
	Eof					reduce	43
	Linf					reduce	43
	Lsup					reduce	43
	Lnot					reduce	43
	Leq					reduce	43
	Lslash					reduce	43

State 19
	test -> Lif . expr Lcol expr Lelse Lcol expr 

	Lbool					shift	17
	Lret					shift	24
	Lid					shift	49
	sexpr					goto	14
	expr					goto	48
	val					goto	10
	Lnum					shift	16
	funcall					goto	6
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lnot					shift	15
	loop					goto	12
	Lif					shift	19
	for					goto	13
	Lfor					shift	21
	Lprint					shift	20
	print					goto	7
	Lwhile					shift	22

State 20
	print -> Lprint . Lopar Lcot expr Lcot Lcpar 
	print -> Lprint . Lopar sexpr Lcpar 
	print -> Lprint . Lopar val Lcpar 

	Lopar					shift	50

State 21
	for -> Lfor . Lid Lin Lrange Lopar Lnum Lcomma Lnum Lcpar Lcol expr 

	Lid					shift	51

State 22
	loop -> Lwhile . expr Lcol expr 

	Lbool					shift	17
	Lret					shift	24
	Lid					shift	49
	sexpr					goto	14
	expr					goto	52
	val					goto	10
	Lnum					shift	16
	funcall					goto	6
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lnot					shift	15
	loop					goto	12
	Lif					shift	19
	for					goto	13
	Lfor					shift	21
	Lprint					shift	20
	print					goto	7
	Lwhile					shift	22

State 23
	declaration -> Ldef . Lid Lopar fargs Lcpar Lcol expr 

	Lid					shift	53

State 24
	return -> Lret . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	54
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 25
	g522 -> prog Eof . 


State 26
	prog -> expr prog . 

	Eof					reduce	5

State 27
	prog -> declaration prog . 

	Eof					reduce	4

State 28
	operation -> sexpr Lplus . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	55
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 29
	operation -> sexpr Lminus . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	56
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 30
	operation -> sexpr Lstar . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	57
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 31
	operation -> sexpr Lmod . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	58
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 32
	operation -> sexpr Land . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	59
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 33
	operation -> sexpr Lor . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	60
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 34
	operation -> sexpr Lslash . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	61
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 35
	operation -> sexpr Lsup . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	62
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 36
	operation -> sexpr Linf . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	63
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 37
	operation -> sexpr Lseq . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	64
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 38
	operation -> sexpr Lieq . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	65
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 39
	operation -> sexpr Leq . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	66
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 40
	operation -> sexpr Lneq . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	67
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 41
	sexpr -> operation . 

	Lbool					reduce	49
	Lcot					reduce	49
	Lret					reduce	49
	Lseq					reduce	49
	Lminus					reduce	49
	Lstar					reduce	49
	Lcomma					reduce	49
	Lif					reduce	49
	Land					reduce	49
	Lmod					reduce	49
	Lplus					reduce	49
	Lwhile					reduce	49
	Lprint					reduce	49
	Lcpar					reduce	49
	Lneq					reduce	49
	Lieq					reduce	49
	Lid					reduce	49
	Lor					reduce	49
	Lnum					reduce	49
	Lfor					reduce	49
	Ldef					reduce	49
	Eof					reduce	49
	Linf					reduce	49
	Lsup					reduce	49
	Lnot					reduce	49
	Leq					reduce	49
	Lcol					reduce	49
	Lslash					reduce	49
	Lelse					reduce	49

State 42
	sexpr -> nt . 

	Lbool					reduce	50
	Lcot					reduce	50
	Lret					reduce	50
	Lseq					reduce	50
	Lminus					reduce	50
	Lstar					reduce	50
	Lcomma					reduce	50
	Lif					reduce	50
	Land					reduce	50
	Lmod					reduce	50
	Lplus					reduce	50
	Lwhile					reduce	50
	Lprint					reduce	50
	Lcpar					reduce	50
	Lneq					reduce	50
	Lieq					reduce	50
	Lid					reduce	50
	Lor					reduce	50
	Lnum					reduce	50
	Lfor					reduce	50
	Ldef					reduce	50
	Eof					reduce	50
	Linf					reduce	50
	Lsup					reduce	50
	Lnot					reduce	50
	Leq					reduce	50
	Lcol					reduce	50
	Lslash					reduce	50
	Lelse					reduce	50

State 43
	sexpr -> val . 

	Lbool					reduce	48
	Lcot					reduce	48
	Lret					reduce	48
	Lseq					reduce	48
	Lminus					reduce	48
	Lstar					reduce	48
	Lcomma					reduce	48
	Lif					reduce	48
	Land					reduce	48
	Lmod					reduce	48
	Lplus					reduce	48
	Lwhile					reduce	48
	Lprint					reduce	48
	Lcpar					reduce	48
	Lneq					reduce	48
	Lieq					reduce	48
	Lid					reduce	48
	Lor					reduce	48
	Lnum					reduce	48
	Lfor					reduce	48
	Ldef					reduce	48
	Eof					reduce	48
	Linf					reduce	48
	Lsup					reduce	48
	Lnot					reduce	48
	Leq					reduce	48
	Lcol					reduce	48
	Lslash					reduce	48
	Lelse					reduce	48

State 44
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

	Lbool					reduce	41
	Lcot					reduce	41
	Lret					reduce	41
	Lseq					reduce	41
	Lminus					reduce	41
	Lstar					reduce	41
	Lcomma					reduce	41
	Lif					reduce	41
	Land					reduce	41
	Lmod					reduce	41
	Lplus					reduce	41
	Lwhile					reduce	41
	Lprint					reduce	41
	Lcpar					reduce	41
	Lneq					reduce	41
	Lieq					reduce	41
	Lid					reduce	41
	Lor					shift	33
	Lnum					reduce	41
	Lfor					reduce	41
	Ldef					reduce	41
	Eof					reduce	41
	Linf					reduce	41
	Lsup					reduce	41
	Lnot					reduce	41
	Leq					reduce	41
	Lcol					reduce	41
	Lslash					reduce	41
	Lelse					reduce	41

State 45
	val -> Lid . 

	Lbool					reduce	43
	Lcot					reduce	43
	Lret					reduce	43
	Lseq					reduce	43
	Lminus					reduce	43
	Lstar					reduce	43
	Lcomma					reduce	43
	Lif					reduce	43
	Land					reduce	43
	Lmod					reduce	43
	Lplus					reduce	43
	Lwhile					reduce	43
	Lprint					reduce	43
	Lcpar					reduce	43
	Lneq					reduce	43
	Lieq					reduce	43
	Lid					reduce	43
	Lor					reduce	43
	Lnum					reduce	43
	Lfor					reduce	43
	Ldef					reduce	43
	Eof					reduce	43
	Linf					reduce	43
	Lsup					reduce	43
	Lnot					reduce	43
	Leq					reduce	43
	Lcol					reduce	43
	Lslash					reduce	43
	Lelse					reduce	43

State 46
	declaration -> Lid Lassign . sexpr 

	Lnot					shift	15
	Lbool					shift	17
	Lid					shift	45
	sexpr					goto	68
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 47
	funcall -> Lid Lopar . callargs Lcpar 

	Lnot					shift	15
	Lbool					shift	17
	callargs					goto	69
	Lid					shift	45
	sexpr					goto	70
	Lnil					shift	71
	val					goto	43
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 48
	test -> Lif expr . Lcol expr Lelse Lcol expr 

	Lcol					shift	72

State 49
	funcall -> Lid . Lopar callargs Lcpar 
	val -> Lid . 

	Lbool					reduce	43
	Lcot					reduce	43
	Lret					reduce	43
	Lminus					reduce	43
	Lid					reduce	43
	Lopar					shift	47
	Lstar					reduce	43
	Lnum					reduce	43
	Lseq					reduce	43
	Lif					reduce	43
	Lmod					reduce	43
	Lplus					reduce	43
	Lwhile					reduce	43
	Lprint					reduce	43
	Lneq					reduce	43
	Lieq					reduce	43
	Land					reduce	43
	Lor					reduce	43
	Lfor					reduce	43
	Ldef					reduce	43
	Eof					reduce	43
	Linf					reduce	43
	Lsup					reduce	43
	Lnot					reduce	43
	Leq					reduce	43
	Lcol					reduce	43
	Lslash					reduce	43
	Lelse					reduce	43

State 50
	print -> Lprint Lopar . Lcot expr Lcot Lcpar 
	print -> Lprint Lopar . sexpr Lcpar 
	print -> Lprint Lopar . val Lcpar 

	Lnot					shift	15
	Lbool					shift	17
	Lcot					shift	75
	Lid					shift	45
	sexpr					goto	74
	val					goto	73
	Lnum					shift	16
	operation					goto	41
	nt					goto	42

State 51
	for -> Lfor Lid . Lin Lrange Lopar Lnum Lcomma Lnum Lcpar Lcol expr 

	Lin					shift	76

State 52
	loop -> Lwhile expr . Lcol expr 

	Lcol					shift	77

State 53
	declaration -> Ldef Lid . Lopar fargs Lcpar Lcol expr 

	Lopar					shift	78

State 54
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

	Lbool					reduce	23
	Lcot					reduce	23
	Lret					reduce	23
	Lminus					shift	29
	Lstar					shift	30
	Lseq					shift	37
	Lif					reduce	23
	Lmod					shift	31
	Lplus					shift	28
	Lwhile					reduce	23
	Lprint					reduce	23
	Lneq					shift	40
	Ldef					reduce	23
	Lieq					shift	38
	Lid					reduce	23
	Lor					shift	33
	Lnum					reduce	23
	Lfor					reduce	23
	Land					shift	32
	Eof					reduce	23
	Linf					shift	36
	Lsup					shift	35
	Lnot					reduce	23
	Leq					shift	39
	Lcol					reduce	23
	Lslash					shift	34
	Lelse					reduce	23

State 55
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

	Lbool					reduce	28
	Lcot					reduce	28
	Lret					reduce	28
	Lseq					shift	37
	Lminus					shift	29
	Lstar					shift	30
	Lcomma					reduce	28
	Lif					reduce	28
	Land					shift	32
	Lmod					shift	31
	Lplus					reduce	28
	Lwhile					reduce	28
	Lprint					reduce	28
	Lcpar					reduce	28
	Lneq					shift	40
	Lieq					shift	38
	Lid					reduce	28
	Lor					shift	33
	Lnum					reduce	28
	Lfor					reduce	28
	Ldef					reduce	28
	Eof					reduce	28
	Linf					shift	36
	Lsup					shift	35
	Lnot					reduce	28
	Leq					shift	39
	Lcol					reduce	28
	Lslash					shift	34
	Lelse					reduce	28

State 56
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

	Lbool					reduce	29
	Lcot					reduce	29
	Lret					reduce	29
	Lseq					shift	37
	Lminus					reduce	29
	Lstar					shift	30
	Lcomma					reduce	29
	Lif					reduce	29
	Land					shift	32
	Lmod					shift	31
	Lplus					reduce	29
	Lwhile					reduce	29
	Lprint					reduce	29
	Lcpar					reduce	29
	Lneq					shift	40
	Lieq					shift	38
	Lid					reduce	29
	Lor					shift	33
	Lnum					reduce	29
	Lfor					reduce	29
	Ldef					reduce	29
	Eof					reduce	29
	Linf					shift	36
	Lsup					shift	35
	Lnot					reduce	29
	Leq					shift	39
	Lcol					reduce	29
	Lslash					shift	34
	Lelse					reduce	29

State 57
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

	Lbool					reduce	30
	Lcot					reduce	30
	Lret					reduce	30
	Lseq					shift	37
	Lminus					reduce	30
	Lstar					reduce	30
	Lcomma					reduce	30
	Lif					reduce	30
	Land					shift	32
	Lmod					shift	31
	Lplus					reduce	30
	Lwhile					reduce	30
	Lprint					reduce	30
	Lcpar					reduce	30
	Lneq					shift	40
	Lieq					shift	38
	Lid					reduce	30
	Lor					shift	33
	Lnum					reduce	30
	Lfor					reduce	30
	Ldef					reduce	30
	Eof					reduce	30
	Linf					shift	36
	Lsup					shift	35
	Lnot					reduce	30
	Leq					shift	39
	Lcol					reduce	30
	Lslash					shift	34
	Lelse					reduce	30

State 58
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

	Lbool					reduce	32
	Lcot					reduce	32
	Lret					reduce	32
	Lseq					reduce	32
	Lminus					reduce	32
	Lstar					reduce	32
	Lcomma					reduce	32
	Lif					reduce	32
	Land					shift	32
	Lmod					reduce	32
	Lplus					reduce	32
	Lwhile					reduce	32
	Lprint					reduce	32
	Lcpar					reduce	32
	Lneq					reduce	32
	Lieq					reduce	32
	Lid					reduce	32
	Lor					shift	33
	Lnum					reduce	32
	Lfor					reduce	32
	Ldef					reduce	32
	Eof					reduce	32
	Linf					reduce	32
	Lsup					reduce	32
	Lnot					reduce	32
	Leq					reduce	32
	Lcol					reduce	32
	Lslash					reduce	32
	Lelse					reduce	32

State 59
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

	Lbool					reduce	39
	Lcot					reduce	39
	Lret					reduce	39
	Lseq					reduce	39
	Lminus					reduce	39
	Lstar					reduce	39
	Lcomma					reduce	39
	Lif					reduce	39
	Land					reduce	39
	Lmod					reduce	39
	Lplus					reduce	39
	Lwhile					reduce	39
	Lprint					reduce	39
	Lcpar					reduce	39
	Lneq					reduce	39
	Lieq					reduce	39
	Lid					reduce	39
	Lor					shift	33
	Lnum					reduce	39
	Lfor					reduce	39
	Ldef					reduce	39
	Eof					reduce	39
	Linf					reduce	39
	Lsup					reduce	39
	Lnot					reduce	39
	Leq					reduce	39
	Lcol					reduce	39
	Lslash					reduce	39
	Lelse					reduce	39

State 60
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

	Lbool					reduce	40
	Lcot					reduce	40
	Lret					reduce	40
	Lseq					reduce	40
	Lminus					reduce	40
	Lstar					reduce	40
	Lcomma					reduce	40
	Lif					reduce	40
	Land					reduce	40
	Lmod					reduce	40
	Lplus					reduce	40
	Lwhile					reduce	40
	Lprint					reduce	40
	Lcpar					reduce	40
	Lneq					reduce	40
	Lieq					reduce	40
	Lid					reduce	40
	Lor					reduce	40
	Lnum					reduce	40
	Lfor					reduce	40
	Ldef					reduce	40
	Eof					reduce	40
	Linf					reduce	40
	Lsup					reduce	40
	Lnot					reduce	40
	Leq					reduce	40
	Lcol					reduce	40
	Lslash					reduce	40
	Lelse					reduce	40

State 61
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

	Lbool					reduce	31
	Lcot					reduce	31
	Lret					reduce	31
	Lseq					shift	37
	Lminus					reduce	31
	Lstar					reduce	31
	Lcomma					reduce	31
	Lif					reduce	31
	Land					shift	32
	Lmod					shift	31
	Lplus					reduce	31
	Lwhile					reduce	31
	Lprint					reduce	31
	Lcpar					reduce	31
	Lneq					shift	40
	Lieq					shift	38
	Lid					reduce	31
	Lor					shift	33
	Lnum					reduce	31
	Lfor					reduce	31
	Ldef					reduce	31
	Eof					reduce	31
	Linf					shift	36
	Lsup					shift	35
	Lnot					reduce	31
	Leq					shift	39
	Lcol					reduce	31
	Lslash					reduce	31
	Lelse					reduce	31

State 62
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

	Lbool					reduce	33
	Lcot					reduce	33
	Lret					reduce	33
	Lseq					shift	37
	Lminus					reduce	33
	Lstar					reduce	33
	Lcomma					reduce	33
	Lif					reduce	33
	Land					shift	32
	Lmod					shift	31
	Lplus					reduce	33
	Lwhile					reduce	33
	Lprint					reduce	33
	Lcpar					reduce	33
	Lneq					shift	40
	Lieq					shift	38
	Lid					reduce	33
	Lor					shift	33
	Lnum					reduce	33
	Lfor					reduce	33
	Ldef					reduce	33
	Eof					reduce	33
	Linf					shift	36
	Lsup					reduce	33
	Lnot					reduce	33
	Leq					shift	39
	Lcol					reduce	33
	Lslash					reduce	33
	Lelse					reduce	33

State 63
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

	Lbool					reduce	34
	Lcot					reduce	34
	Lret					reduce	34
	Lseq					shift	37
	Lminus					reduce	34
	Lstar					reduce	34
	Lcomma					reduce	34
	Lif					reduce	34
	Land					shift	32
	Lmod					shift	31
	Lplus					reduce	34
	Lwhile					reduce	34
	Lprint					reduce	34
	Lcpar					reduce	34
	Lneq					shift	40
	Lieq					shift	38
	Lid					reduce	34
	Lor					shift	33
	Lnum					reduce	34
	Lfor					reduce	34
	Ldef					reduce	34
	Eof					reduce	34
	Linf					reduce	34
	Lsup					reduce	34
	Lnot					reduce	34
	Leq					shift	39
	Lcol					reduce	34
	Lslash					reduce	34
	Lelse					reduce	34

State 64
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

	Lbool					reduce	35
	Lcot					reduce	35
	Lret					reduce	35
	Lseq					reduce	35
	Lminus					reduce	35
	Lstar					reduce	35
	Lcomma					reduce	35
	Lif					reduce	35
	Land					shift	32
	Lmod					shift	31
	Lplus					reduce	35
	Lwhile					reduce	35
	Lprint					reduce	35
	Lcpar					reduce	35
	Lneq					shift	40
	Lieq					shift	38
	Lid					reduce	35
	Lor					shift	33
	Lnum					reduce	35
	Lfor					reduce	35
	Ldef					reduce	35
	Eof					reduce	35
	Linf					reduce	35
	Lsup					reduce	35
	Lnot					reduce	35
	Leq					shift	39
	Lcol					reduce	35
	Lslash					reduce	35
	Lelse					reduce	35

State 65
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

	Lbool					reduce	36
	Lcot					reduce	36
	Lret					reduce	36
	Lseq					reduce	36
	Lminus					reduce	36
	Lstar					reduce	36
	Lcomma					reduce	36
	Lif					reduce	36
	Land					shift	32
	Lmod					shift	31
	Lplus					reduce	36
	Lwhile					reduce	36
	Lprint					reduce	36
	Lcpar					reduce	36
	Lneq					shift	40
	Lieq					reduce	36
	Lid					reduce	36
	Lor					shift	33
	Lnum					reduce	36
	Lfor					reduce	36
	Ldef					reduce	36
	Eof					reduce	36
	Linf					reduce	36
	Lsup					reduce	36
	Lnot					reduce	36
	Leq					shift	39
	Lcol					reduce	36
	Lslash					reduce	36
	Lelse					reduce	36

State 66
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

	Lbool					reduce	37
	Lcot					reduce	37
	Lret					reduce	37
	Lseq					reduce	37
	Lminus					reduce	37
	Lstar					reduce	37
	Lcomma					reduce	37
	Lif					reduce	37
	Land					shift	32
	Lmod					shift	31
	Lplus					reduce	37
	Lwhile					reduce	37
	Lprint					reduce	37
	Lcpar					reduce	37
	Lneq					shift	40
	Lieq					reduce	37
	Lid					reduce	37
	Lor					shift	33
	Lnum					reduce	37
	Lfor					reduce	37
	Ldef					reduce	37
	Eof					reduce	37
	Linf					reduce	37
	Lsup					reduce	37
	Lnot					reduce	37
	Leq					reduce	37
	Lcol					reduce	37
	Lslash					reduce	37
	Lelse					reduce	37

State 67
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

	Lbool					reduce	38
	Lcot					reduce	38
	Lret					reduce	38
	Lseq					reduce	38
	Lminus					reduce	38
	Lstar					reduce	38
	Lcomma					reduce	38
	Lif					reduce	38
	Land					shift	32
	Lmod					shift	31
	Lplus					reduce	38
	Lwhile					reduce	38
	Lprint					reduce	38
	Lcpar					reduce	38
	Lneq					reduce	38
	Lieq					reduce	38
	Lid					reduce	38
	Lor					shift	33
	Lnum					reduce	38
	Lfor					reduce	38
	Ldef					reduce	38
	Eof					reduce	38
	Linf					reduce	38
	Lsup					reduce	38
	Lnot					reduce	38
	Leq					reduce	38
	Lcol					reduce	38
	Lslash					reduce	38
	Lelse					reduce	38

State 68
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

	Lbool					reduce	15
	Lret					reduce	15
	Lminus					shift	29
	Lstar					shift	30
	Lseq					shift	37
	Lif					reduce	15
	Lmod					shift	31
	Lplus					shift	28
	Lwhile					reduce	15
	Lprint					reduce	15
	Lneq					shift	40
	Ldef					reduce	15
	Lieq					shift	38
	Lid					reduce	15
	Lor					shift	33
	Lnum					reduce	15
	Lfor					reduce	15
	Land					shift	32
	Eof					reduce	15
	Linf					shift	36
	Lsup					shift	35
	Lnot					reduce	15
	Leq					shift	39
	Lslash					shift	34

State 69
	funcall -> Lid Lopar callargs . Lcpar 

	Lcpar					shift	79

State 70
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

	Lieq					shift	38
	Lminus					shift	29
	Lmod					shift	31
	Lstar					shift	30
	Lor					shift	33
	Lseq					shift	37
	Land					shift	32
	Leq					shift	39
	Linf					shift	36
	Lsup					shift	35
	Lplus					shift	28
	Lcomma					shift	80
	Lslash					shift	34
	Lcpar					reduce	21
	Lneq					shift	40

State 71
	callargs -> Lnil . 

	Lcpar					reduce	22

State 72
	test -> Lif expr Lcol . expr Lelse Lcol expr 

	Lbool					shift	17
	Lret					shift	24
	Lid					shift	49
	sexpr					goto	14
	expr					goto	81
	val					goto	10
	Lnum					shift	16
	funcall					goto	6
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lnot					shift	15
	loop					goto	12
	Lif					shift	19
	for					goto	13
	Lfor					shift	21
	Lprint					shift	20
	print					goto	7
	Lwhile					shift	22

State 73
	print -> Lprint Lopar val . Lcpar 
	sexpr -> val . 

	Lieq					reduce	48
	Lminus					reduce	48
	Lsup					reduce	48
	Lstar					reduce	48
	Lor					reduce	48
	Lseq					reduce	48
	Land					reduce	48
	Lslash					reduce	48
	Lmod					reduce	48
	Leq					reduce	48
	Linf					reduce	48
begin conflict:
	Lcpar					shift	82
	Lcpar					reduce	48
end conflict
	Lneq					reduce	48
	Lplus					reduce	48

State 74
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

	Lieq					shift	38
	Lminus					shift	29
	Lmod					shift	31
	Lstar					shift	30
	Lor					shift	33
	Lseq					shift	37
	Land					shift	32
	Linf					shift	36
	Lsup					shift	35
	Leq					shift	39
	Lslash					shift	34
	Lcpar					shift	83
	Lneq					shift	40
	Lplus					shift	28

State 75
	print -> Lprint Lopar Lcot . expr Lcot Lcpar 

	Lbool					shift	17
	Lret					shift	24
	Lid					shift	49
	sexpr					goto	14
	expr					goto	84
	val					goto	10
	Lnum					shift	16
	funcall					goto	6
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lnot					shift	15
	loop					goto	12
	Lif					shift	19
	for					goto	13
	Lfor					shift	21
	Lprint					shift	20
	print					goto	7
	Lwhile					shift	22

State 76
	for -> Lfor Lid Lin . Lrange Lopar Lnum Lcomma Lnum Lcpar Lcol expr 

	Lrange					shift	85

State 77
	loop -> Lwhile expr Lcol . expr 

	Lbool					shift	17
	Lret					shift	24
	Lid					shift	49
	sexpr					goto	14
	expr					goto	86
	val					goto	10
	Lnum					shift	16
	funcall					goto	6
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lnot					shift	15
	loop					goto	12
	Lif					shift	19
	for					goto	13
	Lfor					shift	21
	Lprint					shift	20
	print					goto	7
	Lwhile					shift	22

State 78
	declaration -> Ldef Lid Lopar . fargs Lcpar Lcol expr 

	Lnil					shift	89
	fargs					goto	87
	Lid					shift	88

State 79
	funcall -> Lid Lopar callargs Lcpar . 

	Lbool					reduce	24
	Lcot					reduce	24
	Lid					reduce	24
	Lret					reduce	24
	Lnum					reduce	24
	Lfor					reduce	24
	Ldef					reduce	24
	Eof					reduce	24
	Lif					reduce	24
	Lnot					reduce	24
	Lcol					reduce	24
	Lwhile					reduce	24
	Lprint					reduce	24
	Lelse					reduce	24

State 80
	callargs -> sexpr Lcomma . fargs 

	Lnil					shift	89
	fargs					goto	90
	Lid					shift	88

State 81
	test -> Lif expr Lcol expr . Lelse Lcol expr 

	Lelse					shift	91

State 82
	print -> Lprint Lopar val Lcpar . 

	Lbool					reduce	27
	Lcot					reduce	27
	Lid					reduce	27
	Lret					reduce	27
	Lnum					reduce	27
	Lfor					reduce	27
	Ldef					reduce	27
	Eof					reduce	27
	Lif					reduce	27
	Lnot					reduce	27
	Lcol					reduce	27
	Lwhile					reduce	27
	Lprint					reduce	27
	Lelse					reduce	27

State 83
	print -> Lprint Lopar sexpr Lcpar . 

	Lbool					reduce	26
	Lcot					reduce	26
	Lid					reduce	26
	Lret					reduce	26
	Lnum					reduce	26
	Lfor					reduce	26
	Ldef					reduce	26
	Eof					reduce	26
	Lif					reduce	26
	Lnot					reduce	26
	Lcol					reduce	26
	Lwhile					reduce	26
	Lprint					reduce	26
	Lelse					reduce	26

State 84
	print -> Lprint Lopar Lcot expr . Lcot Lcpar 

	Lcot					shift	92

State 85
	for -> Lfor Lid Lin Lrange . Lopar Lnum Lcomma Lnum Lcpar Lcol expr 

	Lopar					shift	93

State 86
	loop -> Lwhile expr Lcol expr . 

	Lbool					reduce	46
	Lcot					reduce	46
	Lid					reduce	46
	Lret					reduce	46
	Lnum					reduce	46
	Lfor					reduce	46
	Ldef					reduce	46
	Eof					reduce	46
	Lif					reduce	46
	Lnot					reduce	46
	Lcol					reduce	46
	Lwhile					reduce	46
	Lprint					reduce	46
	Lelse					reduce	46

State 87
	declaration -> Ldef Lid Lopar fargs . Lcpar Lcol expr 

	Lcpar					shift	94

State 88
	fargs -> Lid . Lcomma fargs 
	fargs -> Lid . 

	Lcomma					shift	95
	Lcpar					reduce	18

State 89
	fargs -> Lnil . 

	Lcpar					reduce	19

State 90
	callargs -> sexpr Lcomma fargs . 

	Lcpar					reduce	20

State 91
	test -> Lif expr Lcol expr Lelse . Lcol expr 

	Lcol					shift	96

State 92
	print -> Lprint Lopar Lcot expr Lcot . Lcpar 

	Lcpar					shift	97

State 93
	for -> Lfor Lid Lin Lrange Lopar . Lnum Lcomma Lnum Lcpar Lcol expr 

	Lnum					shift	98

State 94
	declaration -> Ldef Lid Lopar fargs Lcpar . Lcol expr 

	Lcol					shift	99

State 95
	fargs -> Lid Lcomma . fargs 

	Lnil					shift	89
	fargs					goto	100
	Lid					shift	88

State 96
	test -> Lif expr Lcol expr Lelse Lcol . expr 

	Lbool					shift	17
	Lret					shift	24
	Lid					shift	49
	sexpr					goto	14
	expr					goto	101
	val					goto	10
	Lnum					shift	16
	funcall					goto	6
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lnot					shift	15
	loop					goto	12
	Lif					shift	19
	for					goto	13
	Lfor					shift	21
	Lprint					shift	20
	print					goto	7
	Lwhile					shift	22

State 97
	print -> Lprint Lopar Lcot expr Lcot Lcpar . 

	Lbool					reduce	25
	Lcot					reduce	25
	Lid					reduce	25
	Lret					reduce	25
	Lnum					reduce	25
	Lfor					reduce	25
	Ldef					reduce	25
	Eof					reduce	25
	Lif					reduce	25
	Lnot					reduce	25
	Lcol					reduce	25
	Lwhile					reduce	25
	Lprint					reduce	25
	Lelse					reduce	25

State 98
	for -> Lfor Lid Lin Lrange Lopar Lnum . Lcomma Lnum Lcpar Lcol expr 

	Lcomma					shift	102

State 99
	declaration -> Ldef Lid Lopar fargs Lcpar Lcol . expr 

	Lbool					shift	17
	Lret					shift	24
	Lid					shift	49
	sexpr					goto	14
	expr					goto	103
	val					goto	10
	Lnum					shift	16
	funcall					goto	6
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lnot					shift	15
	loop					goto	12
	Lif					shift	19
	for					goto	13
	Lfor					shift	21
	Lprint					shift	20
	print					goto	7
	Lwhile					shift	22

State 100
	fargs -> Lid Lcomma fargs . 

	Lcpar					reduce	17

State 101
	test -> Lif expr Lcol expr Lelse Lcol expr . 

	Lbool					reduce	45
	Lcot					reduce	45
	Lid					reduce	45
	Lret					reduce	45
	Lnum					reduce	45
	Lfor					reduce	45
	Ldef					reduce	45
	Eof					reduce	45
	Lif					reduce	45
	Lnot					reduce	45
	Lcol					reduce	45
	Lwhile					reduce	45
	Lprint					reduce	45
	Lelse					reduce	45

State 102
	for -> Lfor Lid Lin Lrange Lopar Lnum Lcomma . Lnum Lcpar Lcol expr 

	Lnum					shift	104

State 103
	declaration -> Ldef Lid Lopar fargs Lcpar Lcol expr . 

	Lif					reduce	16
	Lbool					reduce	16
	Lret					reduce	16
	Lnot					reduce	16
	Lid					reduce	16
	Lwhile					reduce	16
	Lnum					reduce	16
	Lprint					reduce	16
	Lfor					reduce	16
	Ldef					reduce	16
	Eof					reduce	16

State 104
	for -> Lfor Lid Lin Lrange Lopar Lnum Lcomma Lnum . Lcpar Lcol expr 

	Lcpar					shift	105

State 105
	for -> Lfor Lid Lin Lrange Lopar Lnum Lcomma Lnum Lcpar . Lcol expr 

	Lcol					shift	106

State 106
	for -> Lfor Lid Lin Lrange Lopar Lnum Lcomma Lnum Lcpar Lcol . expr 

	Lbool					shift	17
	Lret					shift	24
	Lid					shift	49
	sexpr					goto	14
	expr					goto	107
	val					goto	10
	Lnum					shift	16
	funcall					goto	6
	nt					goto	9
	operation					goto	8
	test					goto	11
	return					goto	5
	Lnot					shift	15
	loop					goto	12
	Lif					shift	19
	for					goto	13
	Lfor					shift	21
	Lprint					shift	20
	print					goto	7
	Lwhile					shift	22

State 107
	for -> Lfor Lid Lin Lrange Lopar Lnum Lcomma Lnum Lcpar Lcol expr . 

	Lbool					reduce	47
	Lcot					reduce	47
	Lid					reduce	47
	Lret					reduce	47
	Lnum					reduce	47
	Lfor					reduce	47
	Ldef					reduce	47
	Eof					reduce	47
	Lif					reduce	47
	Lnot					reduce	47
	Lcol					reduce	47
	Lwhile					reduce	47
	Lprint					reduce	47
	Lelse					reduce	47

1 shift/reduce conflict
