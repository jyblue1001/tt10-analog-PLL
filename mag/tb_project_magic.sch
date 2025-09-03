v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 400 -4440 1760 -3770 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.6325413e-06
x2=2.6340626e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0








linewidth_mult=1








color="6 7"
node="ua[1]
ua[0]"}
B 2 1890 -4440 3250 -3770 {flags=graph
y1=-0.0013
y2=1.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.6325413e-06
x2=2.6340626e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0








linewidth_mult=1






color=7
node=x1.v_cont.n0}
B 2 1890 -3640 3250 -2970 {flags=graph
y1=-0.0003
y2=1.9
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.6325413e-06
x2=2.6340626e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0








linewidth_mult=1










color=7
node=x1.ua[0].t0}
N 1120 -4670 1120 -4630 {
lab=ua[0]}
C {sky130_fd_pr/corner.sym} 1440 -4650 0 0 {name=CORNER only_toplevel=false corner=tt
value="

* .include /foss/designs/TTSKY25a-PLL/mag/project_magic.spice
.include /foss/designs/TTSKY25a-PLL/mag/project_3.spice

* .option method=gear
.option method=trap
.option wnflag=1
* .option savecurrents

.save
+v(ua[0])
+v(ua[1])
+v(x1.v_cont.n0)
+v(x1.v_cont.t0)
+@m.x1.x58.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x124.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x160.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x161.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x214.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x255.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x382.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x424.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x430.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x463.msky130_fd_pr__pfet_01v8[id]

* V_out initial voltage

.ic v(x1.v_cont.n0) = 0.0


.control
  * save v(v_osc)

  * timestep for exact simulation results
  tran 50ps 2us
  

  remzerovec
  * write tb_project_magic_2.raw
  * write tb_project_magic_3.raw
  * write tb_project_magic_4.raw
  * write tb_project_magic_5.raw
  * write tb_project_magic_6.raw
  write tb_project_magic_7.raw
  wrdata /foss/designs/TTSKY25a-PLL/mag/tb_project_magic_v_osc.txt v(ua[1])

  set appendwrite

.endc

"}
C {devices/code.sym} 1630 -4651.25 0 0 {name=Testbench only_toplevel=false value="

* .include /foss/designs/TTSKY25a-PLL/mag/project_magic.spice
.include /foss/designs/TTSKY25a-PLL/mag/project_3.spice

.option method=gear
* .option method=trap
.option wnflag=1
* .option savecurrents
* .options RSHUNT=1e15
* .options RSHUNT

.save
+v(ua[0])
+v(ua[1])
+v(x1.v_cont.n0)
+v(x1.v_cont.t0)
+v(x1.ua[0].n0)
+v(x1.ua[0].t0)
+v(x1.ua[1].n0)
+v(x1.ua[1].t0)
+@m.x1.x12.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x47.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x93.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x110.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x220.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x252.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x296.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x343.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x364.msky130_fd_pr__pfet_01v8[id]
+@m.x1.x428.msky130_fd_pr__pfet_01v8[id]

* V_out initial voltage

.ic v(x1.v_cont.n0) = 0.0


.control
  * save v(v_osc)

  * timestep for exact simulation results
  tran 5ps 5us
  

  remzerovec
  * write tb_project_magic_2.raw
  * write tb_project_magic_3.raw
  * write tb_project_magic_4.raw
  * write tb_project_magic_5.raw
  * write tb_project_magic_6.raw
  * write tb_project_magic_7.raw
  * write tb_project_magic_8.raw
  * write tb_project_magic_9.raw
  * write tb_project_magic_10.raw
  * write tb_project_magic_11.raw
  * write tb_project_magic_12.raw
  * write tb_project_magic_13.raw
  * write tb_project_magic_14.raw
  * write tb_project_magic_15.raw
  * write tb_project_magic_16.raw
  * write tb_project_magic_17.raw
  * write tb_project_magic_18.raw
  write tb_project_magic_19.raw
  wrdata /foss/designs/TTSKY25a-PLL/mag/tb_project_magic_v_osc.txt v(x1.ua[1].n0)

  set appendwrite

.endc

"
}
C {devices/vsource.sym} 960 -4600 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} 960 -4570 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} 960 -4630 0 1 {name=l3 lab=VDD}
C {devices/vsource.sym} 1120 -4600 0 0 {name=V2 value=pulse"(0 1.8 12ns 1ns 1ns 24ns 50ns)" savecurrent=false
* }
C {devices/gnd.sym} 1120 -4570 0 0 {name=l10 lab=GND}
C {devices/vdd.sym} 2050 -4660 0 1 {name=l32 lab=VDD
value="

.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.option method=gear
.option wnflag=1

* V_out initial voltage value for the F_VCO delay of 2ns  (leading)
* .ic v(vout) = 1.8

* V_out initial voltage value for the F_VCO delay of 12ns (lock condition)
.ic v(vout) = 0.83

* V_out initial voltage value for the F_VCO delay of 22ns (lagging)
* .ic v(vout) = 0

.control
  save v(f_ref) save v(f_vco) save v(i_in) save v(up_pfd) v(down_pfd) v(up_pfd_b) v(down_pfd_b) v(up) v(up_b) v(down) v(down_b) v(x) v(opamp_out) v(up_input) v(down_input) v(down_gate) v(vout)

  * timestep for exact simulation results
  * tran 5ps 0.5us

  * timestep for faster simulation results
  tran 50ps 0.5us

  remzerovec
  write pfd_charge_pump_10.raw
  set appendwrite

.endc

"


v(vout)="0.0

.control
  save all

  * timestep for exact simulation results
  tran 5ps 0.5us

  * timestep for faster simulation results
  * tran 50ps 0.5us

  remzerovec
  write pfd_charge_pump_10.raw
  set appendA}
C {devices/gnd.sym} 2050 -4560 0 0 {name=l33 lab=GND
value="

.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.option method=gear
.option wnflag=1

* V_out initial voltage value for the F_VCO delay of 2ns  (leading)
* .ic v(vout) = 1.8

* V_out initial voltage value for the F_VCO delay of 12ns (lock condition)
.ic v(vout) = 0.83

* V_out initial voltage value for the F_VCO delay of 22ns (lagging)
* .ic v(vout) = 0

.control
  save v(f_ref) save v(f_vco) save v(i_in) save v(up_pfd) v(down_pfd) v(up_pfd_b) v(down_pfd_b) v(up) v(up_b) v(down) v(down_b) v(x) v(opamp_out) v(up_input) v(down_input) v(down_gate) v(vout)

  * timestep for exact simulation results
  * tran 5ps 0.5us

  * timestep for faster simulation results
  tran 50ps 0.5us

  remzerovec
  write pfd_charge_pump_10.raw
  set appendwrite

.endc

"}
C {lab_pin.sym} 1970 -4610 0 0 {name=p5 lab=ua[0]}
C {lab_pin.sym} 2130 -4610 0 1 {name=p1 lab=ua[1]}
C {lab_pin.sym} 1120 -4670 2 0 {name=p2 lab=ua[0]}
C {project_3.sym} 2050 -4610 0 0 {name=x1}
