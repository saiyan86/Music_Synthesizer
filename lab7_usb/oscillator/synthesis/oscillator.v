// oscillator.v

// Generated using ACDS version 14.0 200 at 2014.11.30.16:42:05

`timescale 1 ps / 1 ps
module oscillator (
		input  wire  oscena, // oscena.oscena
		output wire  clkout  // clkout.clkout
	);

	oscillator_int_osc_0 int_osc_0 (
		.oscena (oscena), // oscena.oscena
		.clkout (clkout)  // clkout.clkout
	);

endmodule
