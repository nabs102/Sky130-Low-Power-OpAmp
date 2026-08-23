v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -220 -110 -220 -90 {lab=#net1}
N -220 -110 -60 -110 {lab=#net1}
N -60 -110 -20 -110 {lab=#net1}
N -20 -110 -20 -90 {lab=#net1}
N -100 -110 -100 -90 {lab=#net1}
N -170 -90 -100 -90 {lab=#net1}
N -170 -90 -170 -60 {lab=#net1}
N -170 -60 -100 -60 {lab=#net1}
N -20 -60 50 -60 {lab=#net1}
N 50 -90 50 -60 {lab=#net1}
N -20 -90 50 -90 {lab=#net1}
N -100 -30 -60 -30 {lab=#net2}
N -60 -60 -60 -30 {lab=#net2}
N -50 -30 -50 70 {lab=Vd}
N -50 -30 -20 -30 {lab=Vd}
C {isource.sym} -100 0 0 0 {name=I0 value=5u}
C {sky130_fd_pr/pfet_01v8.sym} -80 -60 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -40 -60 0 0 {name=M2
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
C {vsource.sym} -220 -60 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -220 -30 0 0 {name=l1 lab=0}
C {gnd.sym} -100 30 0 0 {name=l3 lab=0}
C {code.sym} 60 -170 0 0 {name=s1 only_toplevel=false value=".options savecurrents

.control
	save all
	dc V2 1.8 0 -0.01
	let vsd = 1.8 - v(Vd)
	let id = V2#branch
	plot id vs vsd
.endc"}
C {code.sym} 60 -30 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {vsource.sym} -20 0 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -20 30 0 0 {name=l2 lab=0}
C {lab_pin.sym} -50 70 0 0 {name=p1 sig_type=std_logic lab=Vd}
