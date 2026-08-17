v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -40 50 -40 {lab=0}
N 50 -40 50 -0 {lab=0}
N 40 -10 40 0 {lab=0}
N 40 0 50 0 {lab=0}
C {sky130_fd_pr/nfet_01v8.sym} 20 -40 0 0 {name=M1
W=1.5
L=1.5
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
C {gnd.sym} 50 0 0 0 {name=l1 lab=0}
C {vsource.sym} 165 -37.5 0 0 {name=Vds value=1.8 savecurrent=false}
C {gnd.sym} 165 -7.5 0 0 {name=l2 lab=0}
C {lab_pin.sym} 165 -67.5 0 1 {name=p1 lab=p}
C {lab_pin.sym} 40 -70 3 1 {name=p2 lab=p}
C {vsource.sym} -30 -40 1 0 {name=Vgs value=1.8 savecurrent=false}
C {gnd.sym} -60 -40 0 0 {name=l3 lab=0}
C {code.sym} -212.5 -120 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {code_shown.sym} -80 -470 0 0 {name=s2 only_toplevel=false value=".options savecurrents
.control
  save all
  dc Vgs 0 1.8 0.01
  
  * 1. Extract drain current
  let id = -i(Vds)
  
  * 2. Calculate transconductance (derivative of current)
  let gm = deriv(id)
  
  * 3. Calculate efficiency (Y-axis)
  let gm_id = gm / id
  
  * 4. Calculate current density (X-axis) using W = 1um
  let id_w = id / 1.5e-6
  
  * 5. Plot the lookup table with a logarithmic X-axis
  plot gm_id vs id_w xlog
.endc"}
C {code_shown.sym} 250 -80 0 0 {name=s1 only_toplevel=false value="
.control
  dc Vgs 0 1.8 0.01
  plot -i(Vds)
.endc"}
