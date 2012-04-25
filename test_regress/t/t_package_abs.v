// DESCRIPTION: Verilator: Verilog Test module
//
// This file ONLY is placed into the Public Domain, for any use,
// without warranty, 2012 by Wilson Snyder.

// see bug491

package functions;
   function real abs (real num);
      abs = (num <0) ? -num : num;
   endfunction
endpackage

module t ();
   import functions::*;
   localparam P = 1;
   generate
      if (P == 1) begin
	 initial begin
	    if (abs(-2.1) != 2.1) $stop;
	    if (abs(2.2) != 2.2) $stop;
	    $write("*-* All Finished *-*\n");
	    $finish;
	 end
      end
   endgenerate
endmodule
