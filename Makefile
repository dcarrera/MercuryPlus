FC=gfortran
FFLAGS=

all: mercury element close

close: close6.for
	$(FC) $(FFLAGS) close6.for       -o close

element: element6.for
	$(FC) $(FFLAGS) element6.for     -o element

mercury: mercury_plus.for
	$(FC) $(FFLAGS) mercury_plus.for -o mercury

clean:
	rm -f *.tmp *.out *.dmp *.aei *.clo

cleann: clean
	rm -f mercury element close
