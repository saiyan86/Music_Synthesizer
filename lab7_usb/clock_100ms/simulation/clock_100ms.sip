set_global_assignment -entity "clock_100ms" -library "lib_clock_100ms" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "clock_100ms" -library "lib_clock_100ms" -name IP_TOOL_VERSION "14.0"
set_global_assignment -entity "clock_100ms" -library "lib_clock_100ms" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_clock_100ms" -name SPD_FILE [file join $::quartus(sip_path) "../clock_100ms.spd"]
set_global_assignment -library "lib_clock_100ms" -name MISC_FILE [file join $::quartus(sip_path) "../../clock_100ms.qsys"]

set_global_assignment -library "lib_clock_100ms" -name MISC_FILE [file join $::quartus(sip_path) "clock_100ms.v"]
set_global_assignment -library "lib_clock_100ms" -name MISC_FILE [file join $::quartus(sip_path) "submodules/clock_100ms_altclkctrl_0.v"]
