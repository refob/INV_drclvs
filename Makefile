GDS=INV.gds
TOP=DBLE_INV_SPLIT
CDL=INV.cdl

v:
	klayout -n FreePDK45 $(GDS)

all: clean lvs drc

drc:
	klayout -b -r scr/drc_freepdk45.lydrc \
		-rd input=$(GDS) \
		-rd topcell=$(TOP) \
		-rd output=drc_report.lyrdb \
		2>&1 | tee drc.log

lvs:
	klayout -b -r scr/lvs_freepdk45.lylvs \
		-rd input=$(GDS) \
		-rd topcell=$(TOP) \
		-rd schematic=$(CDL) \
		-rd target_netlist=$(TOP).sp \
		-rd report=lvs_report.lvsdb \
		2>&1 | tee lvs.log

clean:
	rm -f $(TOP).sp drc_report.lyrdb lvs_report.lvsdb drc.log lvs.log


