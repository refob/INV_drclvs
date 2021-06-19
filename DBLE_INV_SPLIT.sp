
* cell DBLE_INV_SPLIT
* pin A
* pin ZB
* pin ZA
* pin vdd
* pin gnd
.SUBCKT DBLE_INV_SPLIT 1 2 3 4 5
* net 1 A
* net 2 ZB
* net 3 ZA
* net 4 vdd
* net 5 gnd
* cell instance $1 r0 *1 0,0
X$1 1 2 4 5 INV
* cell instance $2 m90 *1 0,0
X$2 1 3 4 5 INV
.ENDS DBLE_INV_SPLIT

* cell INV
* pin A
* pin Z
* pin vdd
* pin gnd
.SUBCKT INV 1 2 3 4
* net 1 A
* net 2 Z
* net 3 vdd
* net 4 gnd
* device instance $1 r0 *1 0.195,0.835 PMOS_VTG
M$1 3 1 2 3 PMOS_VTG L=0.05U W=0.27U AS=0.03105P AD=0.03105P PS=0.77U PD=0.77U
* device instance $2 r0 *1 0.195,0.2175 NMOS_VTG
M$2 4 1 2 4 NMOS_VTG L=0.05U W=0.095U AS=0.010925P AD=0.010925P PS=0.42U
+ PD=0.42U
.ENDS INV
