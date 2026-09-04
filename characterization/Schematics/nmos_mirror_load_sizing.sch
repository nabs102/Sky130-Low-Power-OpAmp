v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -200 -210 -200 -190 {lab=Vdd}
N -200 -210 -40 -210 {lab=Vdd}
N -40 -210 0 -210 {lab=Vdd}
N 0 -210 0 -190 {lab=Vdd}
N -80 -210 -80 -190 {lab=Vdd}
N -150 -190 -80 -190 {lab=Vdd}
N -150 -190 -150 -160 {lab=Vdd}
N -150 -160 -80 -160 {lab=Vdd}
N 0 -160 70 -160 {lab=Vdd}
N 70 -190 70 -160 {lab=Vdd}
N 0 -190 70 -190 {lab=Vdd}
N -80 -130 -40 -130 {lab=#net1}
N -40 -160 -40 -130 {lab=#net1}
N -80 -230 -80 -210 {lab=Vdd}
N 0 -130 0 -100 {lab=#net2}
N -180 50 -140 50 {lab=#net3}
N -100 50 -20 50 {lab=Vdd}
N -250 20 -100 20 {lab=#net4}
N -250 20 -250 50 {lab=#net4}
N 170 100 170 130 {lab=Vgsds}
N 130 100 170 100 {lab=Vgsds}
N 130 130 130 160 {lab=0}
C {isource.sym} -80 -100 0 0 {name=I0 value=5u}
C {sky130_fd_pr/pfet_01v8.sym} -60 -160 0 1 {name=M1
W=10
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -20 -160 0 0 {name=M2
W=10
L=2
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -200 -160 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -200 -130 0 0 {name=l1 lab=0}
C {gnd.sym} -80 -70 0 0 {name=l3 lab=0}
C {lab_pin.sym} -80 -230 2 0 {name=p2 sig_type=std_logic lab=Vdd}
C {code.sym} 90 -130 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {vsource.sym} 0 -70 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} 0 -40 0 0 {name=l2 lab=0}
C {code.sym} 90 -280 0 0 {name=s1 only_toplevel=false value=".options savecurrents

.control
	save all
	#dc V2 0 1.5 0.01
	#let Vsd = v(Vdd)-v(net2)
	#let Id = V2#branch
	#let mirror_accuracy = Id/5u
	#plot Id vs Vsd
	#plot mirror_accuracy vs Vsd

	#dc Vd 1.473 0 -0.01
	#let Vsd2 = v(net4)-v(net5)
	#let Id2 = Vd#branch
	#plot Id2 vs Vsd2
	
	op
	print v(Vgsds)
	print 1/(@m.xm4.msky130_fd_pr__nfet_01v8[gds])

	alter Vd 0.673
	op
	print Vd#branch
	print 1/(@m.xm3.msky130_fd_pr__pfet_01v8[gds])
.endc"}
C {sky130_fd_pr/pfet_01v8.sym} -120 50 0 0 {name=M3
W=250
L=0.5
nf=25
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -180 80 0 0 {name=Vg value=0.6 savecurrent=false}
C {lab_pin.sym} -20 50 2 0 {name=p1 sig_type=std_logic lab=Vdd}
C {vsource.sym} -100 110 0 0 {name=Vd value=0 savecurrent=false}
C {gnd.sym} -100 140 0 0 {name=l5 lab=0}
C {gnd.sym} -180 110 0 0 {name=l4 lab=0}
C {vsource.sym} -250 80 0 0 {name=Vs value=1.473 savecurrent=false}
C {gnd.sym} -250 110 0 0 {name=Vs1 lab=0
value=1.473}
C {sky130_fd_pr/nfet_01v8.sym} 150 130 0 1 {name=M4
W=10
L=2
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 130 160 0 0 {name=l6 lab=0}
C {isource.sym} 130 70 0 0 {name=I1 value=2.455u}
C {gnd.sym} 130 40 1 0 {name=l7 lab=0}
C {lab_pin.sym} 170 110 2 0 {name=p3 sig_type=std_logic lab=Vgsds}
