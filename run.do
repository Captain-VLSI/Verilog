vlib work
vlog dff.v dfftb.v +acc
vsim work.tb_dff -l 
add wave -r *
run -all
