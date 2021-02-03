clean:
	rm -f a.out A03 *.pdf

A03:	A03.c rng.c
	cc -Wall -O2 A03.c -o A03
	
A03_RT:	A03 rng.c
	cc -DN=1 -Wall -O2 A03.c -o A03