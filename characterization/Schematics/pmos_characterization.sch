v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -60 -240 -60 -190 {lab=Vdd}
N -140 -240 -60 -240 {lab=Vdd}
N -140 -240 -140 -220 {lab=Vdd}
N -140 -190 -60 -190 {lab=Vdd}
N -140 -160 -140 -120 {lab=#net1}
C {code.sym} -360 -130 0 0 {
name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
      }
C {sky130_fd_pr/pfet_01v8.sym} -160 -190 0 0 {name=M1
W=10
L=0.5
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
C {vsource.sym} -60 -90 0 0 {name=VDD value=1.8 savecurrent=true}
C {vsource.sym} -210 -90 0 0 {name=VG value=1.8 savecurrent=false}
C {gnd.sym} -210 -60 0 0 {name=l1 lab=0}
C {gnd.sym} -60 -60 0 0 {name=l2 lab=0}
C {lab_pin.sym} -60 -120 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -210 -120 2 0 {name=p2 sig_type=std_logic lab=Vg}
C {lab_pin.sym} -180 -190 0 0 {name=p3 sig_type=std_logic lab=Vg}
C {lab_pin.sym} -60 -240 2 0 {name=p4 sig_type=std_logic lab=Vdd}
C {code.sym} -360 -270 0 0 {name=reference_curves_generator only_toplevel=false value=".options savecurrents

.control
    save all

    * =====================================================
    * PMOS gm/Id characterization
    * VS = VB = 1.8 V
    * W = 10 um
    * L = 0.5 um
    * =====================================================

    * CASE 1: VSD = 1.8 V
    alter Vd 0
    dc Vg 1.8 0 -0.001

    let id = abs(Vd#branch)
    let gm = -deriv(id)
    let gm_id = gm / id
    let id_w = id / 10e-6


    * CASE 2: VSD = 0.9 V
    alter Vd 0.9
    dc Vg 1.8 0 -0.001

    let id = abs(Vd#branch)
    let gm = -deriv(id)
    let gm_id = gm / id
    let id_w = id / 10e-6


    * CASE 3: VSD = 0.6 V
    alter Vd 1.2
    dc Vg 1.8 0 -0.001

    let id = abs(Vd#branch)
    let gm = -deriv(id)
    let gm_id = gm / id
    let id_w = id / 10e-6


    * CASE 4: VSD = 0.3 V
    alter Vd 1.5
    dc Vg 1.8 0 -0.001

    let id = abs(Vd#branch)
    let gm = -deriv(id)
    let gm_id = gm / id
    let id_w = id / 10e-6


    * =====================================================
    * Copy results to const for friendly legend names
    * =====================================================

    setplot const

    let vsd_1v8 = dc1.gm_id
    let idw_1v8 = dc1.id_w

    let vsd_0v9 = dc2.gm_id
    let idw_0v9 = dc2.id_w

    let vsd_0v6 = dc3.gm_id
    let idw_0v6 = dc3.id_w

    let vsd_0v3 = dc4.gm_id
    let idw_0v3 = dc4.id_w


    * IMPORTANT: keep this plot command on ONE LINE
    plot vsd_1v8 vs idw_1v8 vsd_0v9 vs idw_0v9 vsd_0v6 vs idw_0v6 vsd_0v3 vs idw_0v3 xlog xlabel 'Id/W [uA/um]' ylabel 'gm/Id [1/V]' title 'PMOS gm/Id Characterization'

.endc"}
C {vsource.sym} -140 -90 0 0 {name=Vd value=0.9 savecurrent=false}
C {gnd.sym} -140 -60 0 0 {name=l3 lab=0}
