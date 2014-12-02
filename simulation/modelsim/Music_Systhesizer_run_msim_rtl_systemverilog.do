transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+J:/ECE385/Music_Synthesizer {J:/ECE385/Music_Synthesizer/sine.v}
vlog -vlog01compat -work work +incdir+J:/ECE385/Music_Synthesizer {J:/ECE385/Music_Synthesizer/soundGen.v}
vlib usb_system
vmap usb_system usb_system
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/usb_system.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_reset_controller.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_reset_synchronizer.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_1.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_avalon_sc_fifo.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_avalon_mm_clock_crossing_bridge.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_avalon_dc_fifo.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_dcfifo_synchronizer_bundle.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/CY7C67200_IF.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_keycode.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_clocks.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_cpu.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_cpu_jtag_debug_module_sysclk.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_cpu_jtag_debug_module_tck.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_cpu_jtag_debug_module_wrapper.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_cpu_oci_test_bench.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_cpu_test_bench.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_jtag_uart.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_sdram.v}
vlog -sv -work work +incdir+J:/ECE385/Music_Synthesizer/lab7_usb {J:/ECE385/Music_Synthesizer/lab7_usb/lab7_usb.sv}
vlog -sv -work work +incdir+J:/ECE385/Music_Synthesizer/lab7_usb {J:/ECE385/Music_Synthesizer/lab7_usb/keybuffer.sv}
vlog -sv -work work +incdir+J:/ECE385/Music_Synthesizer {J:/ECE385/Music_Synthesizer/HexDriver.sv}
vlog -sv -work work +incdir+J:/ECE385/Music_Synthesizer {J:/ECE385/Music_Synthesizer/freq_choose.sv}
vlog -sv -work work +incdir+J:/ECE385/Music_Synthesizer {J:/ECE385/Music_Synthesizer/keyToFreq.sv}
vlog -sv -work work +incdir+J:/ECE385/Music_Synthesizer {J:/ECE385/Music_Synthesizer/NoteStreamGen.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_irq_clock_crosser.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_irq_mapper.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_merlin_slave_translator.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_merlin_master_translator.sv}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_avalon_st_handshake_clock_crosser.v}
vlog -vlog01compat -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_avalon_st_clock_crosser.v}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_merlin_arbitrator.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_rsp_mux_001.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_rsp_mux.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_rsp_demux_003.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_rsp_demux.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_cmd_mux_003.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_cmd_mux.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_cmd_demux_001.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_cmd_demux.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_router_005.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_router_002.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_router_001.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/usb_system_mm_interconnect_0_router.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_merlin_slave_agent.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_merlin_burst_uncompressor.sv}
vlog -sv -work usb_system +incdir+J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules {J:/ECE385/Music_Synthesizer/lab7_usb/usb_system/synthesis/submodules/altera_merlin_master_agent.sv}
vcom -93 -work work {J:/ECE385/Music_Synthesizer/audio_interface.vhd}

vlog -sv -work work +incdir+J:/ECE385/Music_Synthesizer {J:/ECE385/Music_Synthesizer/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -L usb_system -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
