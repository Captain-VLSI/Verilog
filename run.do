vlib work
vlog dlatch.v dlatchtb.v +acc
vsim work.tb_latch -l 
add wave -r *
run -all
