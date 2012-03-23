# Convenience Makefile

C_SIM = ../riscv-rocket/emulator/emulator
R_SIM = ../riscv-rocket/vlsi-generic/build/vcs-sim-rtl/simv

.phony: gen ctest rtest itest

gen:
	sbt 'generator/run'

itest:
	sbt 'testrun/run'

ctest:
	sbt 'testrun/run -c ../riscv-rocket/emulator/emulator'

rtest:
	sbt 'testrun/run -r ../riscv-rocket/vlsi-generic/build/vcs-sim-rtl/simv'
