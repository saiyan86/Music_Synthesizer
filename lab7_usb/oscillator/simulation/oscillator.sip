set_global_assignment -entity "oscillator" -library "lib_oscillator" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "oscillator" -library "lib_oscillator" -name IP_TOOL_VERSION "14.0"
set_global_assignment -entity "oscillator" -library "lib_oscillator" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_oscillator" -name SPD_FILE [file join $::quartus(sip_path) "../oscillator.spd"]
set_global_assignment -library "lib_oscillator" -name MISC_FILE [file join $::quartus(sip_path) "../../oscillator.qsys"]

set_global_assignment -library "lib_oscillator" -name MISC_FILE [file join $::quartus(sip_path) "oscillator.v"]
set_global_assignment -library "lib_oscillator" -name MISC_FILE [file join $::quartus(sip_path) "submodules/oscillator_int_osc_0.v"]
