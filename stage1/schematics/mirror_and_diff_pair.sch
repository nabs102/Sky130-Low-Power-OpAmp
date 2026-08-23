v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -280 -200 -280 -180 {lab=Vdd}
N -280 -200 -120 -200 {lab=Vdd}
N -120 -200 -80 -200 {lab=Vdd}
N -80 -200 -80 -180 {lab=Vdd}
N -160 -200 -160 -180 {lab=Vdd}
N -230 -180 -160 -180 {lab=Vdd}
N -230 -180 -230 -150 {lab=Vdd}
N -230 -150 -160 -150 {lab=Vdd}
N -80 -150 -10 -150 {lab=Vdd}
N -10 -180 -10 -150 {lab=Vdd}
N -80 -180 -10 -180 {lab=Vdd}
N -160 -120 -120 -120 {lab=#net1}
N -120 -150 -120 -120 {lab=#net1}
N -180 40 -90 40 {lab=#net2}
N -260 40 -180 40 {lab=#net2}
N -180 20 -180 40 {lab=#net2}
N -260 40 -260 50 {lab=#net2}
N -90 40 -90 50 {lab=#net2}
N -80 -90 -80 10 {lab=#net2}
N -180 10 -80 10 {lab=#net2}
N -180 10 -180 20 {lab=#net2}
N -160 -220 -160 -200 {lab=Vdd}
N -180 80 -180 120 {lab=Vdd}
N -260 80 -180 80 {lab=Vdd}
N -180 80 -90 80 {lab=Vdd}
N -260 110 -260 140 {lab=Vd1}
N -260 130 -250 130 {lab=Vd1}
N -90 110 -90 140 {lab=Vd2}
N -90 130 -80 130 {lab=Vd2}
N -50 80 -10 80 {lab=Vcm}
N -340 80 -340 100 {lab=Vcm}
N -340 80 -300 80 {lab=Vcm}
N -80 -120 -80 -90 {lab=#net2}
N -360 80 -340 80 {lab=Vcm}
C {isource.sym} -160 -90 0 0 {name=I0 value=5u}
C {sky130_fd_pr/pfet_01v8.sym} -140 -150 0 1 {name=M1
W=10
L=1
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
C {sky130_fd_pr/pfet_01v8.sym} -100 -150 0 0 {name=M2
W=10
L=1
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
C {vsource.sym} -280 -150 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -280 -120 0 0 {name=l1 lab=0}
C {gnd.sym} -160 -60 0 0 {name=l3 lab=0}
C {lab_pin.sym} -160 -220 2 0 {name=p2 sig_type=std_logic lab=Vdd}
C {sky130_fd_pr/pfet_01v8.sym} -280 80 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} -70 80 0 1 {name=M4
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
C {lab_pin.sym} -180 120 2 0 {name=p1 sig_type=std_logic lab=Vdd}
C {vsource.sym} -260 170 0 0 {name=V2 value=0 savecurrent=false}
C {vsource.sym} -90 170 0 0 {name=V3 value=0 savecurrent=false}
C {lab_pin.sym} -80 130 2 0 {name=p3 sig_type=std_logic lab=Vd2}
C {lab_pin.sym} -250 130 2 0 {name=p4 sig_type=std_logic lab=Vd1}
C {gnd.sym} -260 200 0 0 {name=l2 lab=0}
C {gnd.sym} -90 200 0 0 {name=l4 lab=0}
C {code.sym} 10 -120 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code.sym} 40 30 0 0 {name=s1 only_toplevel=false value=".include mirror_and_diff_pair.save
.options savecurrents

.control
	save all
	dc Vcm 0 1.8 0.01
	let i_mirror = V2#branch + V3#branch
	plot i_mirror vs Vcm
.endc"}
C {vsource.sym} -340 130 0 0 {name=Vcm value=0.6 savecurrent=false}
C {gnd.sym} -340 160 0 0 {name=l6 lab=0}
C {lab_pin.sym} -360 80 0 0 {name=p5 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} -10 80 2 0 {name=p6 sig_type=std_logic lab=Vcm}
