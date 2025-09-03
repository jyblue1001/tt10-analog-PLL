crashbackups stop
drc off
load project_5.mag
select top cell
flatten project_5_flat
load project_5_flat
cellname delete project_5
cellname rename project_5_flat project_5
select top cell
extract path /foss/designs/TTSKY25a-PLL/mag
ext2spice lvs
extract do resistance
extract all
ext2sim labels on
ext2sim
extresist tolerance 10
extresist all
ext2spice extresist on
ext2spice cthresh 0.01
ext2spice -p /foss/designs/TTSKY25a-PLL/mag -o /foss/designs/TTSKY25a-PLL/mag/project_5.pex.spice.tmp
quit -noprompt
