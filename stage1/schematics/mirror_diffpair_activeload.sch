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
N -180 40 -90 40 {lab=Vs}
N -260 40 -180 40 {lab=Vs}
N -180 20 -180 40 {lab=Vs}
N -260 40 -260 50 {lab=Vs}
N -90 40 -90 50 {lab=Vs}
N -80 -90 -80 10 {lab=Vs}
N -180 10 -80 10 {lab=Vs}
N -180 10 -180 20 {lab=Vs}
N -160 -220 -160 -200 {lab=Vdd}
N -180 80 -180 120 {lab=Vdd}
N -260 80 -180 80 {lab=Vdd}
N -180 80 -90 80 {lab=Vdd}
N -260 170 -260 200 {lab=Vd1}
N -260 130 -250 130 {lab=Vd1}
N -90 110 -90 140 {lab=Vd2}
N -90 130 -80 130 {lab=Vd2}
N -50 80 -10 80 {lab=Vin2}
N -340 80 -340 100 {lab=Vin1}
N -340 80 -300 80 {lab=Vin1}
N -80 -120 -80 -90 {lab=Vs}
N -360 80 -340 80 {lab=Vin1}
N -260 110 -260 170 {lab=Vd1}
N -330 230 -260 230 {lab=0}
N -330 230 -330 260 {lab=0}
N -330 260 -260 260 {lab=0}
N -220 200 -220 230 {lab=Vd1}
N -260 200 -220 200 {lab=Vd1}
N -90 140 -90 200 {lab=Vd2}
N -220 230 -130 230 {lab=Vd1}
N -90 230 -20 230 {lab=0}
N -20 230 -20 260 {lab=0}
N -90 260 -20 260 {lab=0}
N -10 80 -10 100 {lab=Vin2}
N -340 310 -180 310 {lab=Vcm}
N -340 160 -340 310 {lab=Vcm}
N -180 310 -10 310 {lab=Vcm}
N -10 160 -10 310 {lab=Vcm}
C {isource.sym} -160 -90 0 0 {name=I0 value=5u}
C {sky130_fd_pr/pfet_01v8.sym} -140 -150 0 1 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -100 -150 0 0 {name=M2
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
C {vsource.sym} -280 -150 0 0 {name=Vdd value=1.8 savecurrent=false}
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
C {lab_pin.sym} -80 130 2 0 {name=p3 sig_type=std_logic lab=Vd2}
C {lab_pin.sym} -250 130 2 0 {name=p4 sig_type=std_logic lab=Vd1}
C {code.sym} 290 -110 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code.sym} 110 -120 0 0 {spice_ignore=false name=mag_phase_analysis only_toplevel=false value=".include mirror_diffpair_activeload.save
.options savecurrents

.control
	save all
	ac dec 100 1 1G
	let H = v(Vd2) / (v(Vin1)-v(Vin2))
	let linear_differential_gain = mag(H)
	let phase = 180/PI*ph(H)
	let gain_db = db(H)
	
	plot gain_db
	plot phase
	plot linear_differential_gain

	meas ac gain_lf find gain_db at=1
	let gain_minus_3db = gain_lf - 3
	meas ac f3db when gain_db=$&gain_minus_3db fall=1

.endc"}
C {vsource.sym} -340 130 0 0 {name=Vin1 value="dc 0 ac 0.5m 0" savecurrent=false}
C {lab_pin.sym} -360 80 0 0 {name=p5 sig_type=std_logic lab=Vin1}
C {lab_pin.sym} -10 80 2 0 {name=p6 sig_type=std_logic lab=Vin2}
C {sky130_fd_pr/nfet_01v8.sym} -240 230 0 1 {name=M5
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
C {gnd.sym} -260 260 0 0 {name=l2 lab=0}
C {sky130_fd_pr/nfet_01v8.sym} -110 230 0 0 {name=M6
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
C {gnd.sym} -90 260 0 0 {name=l4 lab=0}
C {vsource.sym} -10 130 0 0 {name=Vin2 value="dc 0 ac 0.5m 180" savecurrent=false}
C {lab_pin.sym} -80 10 2 0 {name=p7 sig_type=std_logic lab=Vs}
C {vsource.sym} -180 340 0 0 {name=Vcm value=0.4 savecurrent=false}
C {gnd.sym} -180 370 0 0 {name=l5 lab=0}
C {lab_pin.sym} -10 310 2 0 {name=p8 sig_type=std_logic lab=Vcm}
C {code.sym} 110 40 0 0 {spice_ignore="true" name="icmr_checks" only_toplevel=false value=".include mirror_diffpair_activeload.save
.options savecurrents

.control
	save all
	dc Vcm 0 1.8 0.05
	let Vsd2 = v(Vdd)-v(Vs)
	let Vsd3 = v(Vs)-v(Vd1)
	let Vsd4 = v(Vs)-v(Vd2)
	let Vds5 = v(Vd1)
	let Vds6 = v(Vd2)
	let pmos_mirror_accuracy = abs(@m.xm2.msky130_fd_pr__pfet_01v8[id]/@m.xm1.msky130_fd_pr__pfet_01v8[id])
	let nmos_mirror_accuracy = abs(@m.xm6.msky130_fd_pr__nfet_01v8[id]/@m.xm5.msky130_fd_pr__nfet_01v8[id])
	let im1 = @m.xm1.msky130_fd_pr__pfet_01v8[id]
	let im2 = @m.xm2.msky130_fd_pr__pfet_01v8[id]
	let im3 = @m.xm3.msky130_fd_pr__pfet_01v8[id]
	let im4 = @m.xm4.msky130_fd_pr__pfet_01v8[id]
	let im5 = @m.xm5.msky130_fd_pr__nfet_01v8[id]
	let im6 = @m.xm6.msky130_fd_pr__nfet_01v8[id]
	plot im1 im2 im3 im4 im5 im6
	plot Vsd2 Vsd3 Vds5
	plot Vsd4 Vds6
	plot pmos_mirror_accuracy nmos_mirror_accuracy

.endc"}
