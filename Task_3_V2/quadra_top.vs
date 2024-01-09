`include "quadra.vh"

module quadra_top
(
    input  ck_t clk,
    input  rs_t rst_b,
    input  x_t  x,
    input  dv_t x_dv,
    output y_t  y,
    output dv_t y_dv
);
    // Pipeline data valid (3 stages):
    dv_t dv_p0, dv_p1, dv_p2;

    always_ff @(posedge clk)
    if (!rst_b) begin
        dv_p0 <= '0;
        dv_p1 <= '0;
        dv_p2 <= '0;
    end
    else begin
        dv_p0 <= x_dv;
        dv_p1 <= dv_p0;
        dv_p2 <= dv_p1;
    end

    // <challenge!>

	 quadra quadra_instance (
			.x(x),
			.y(y));
	 
    // Outputs:
    always_comb y_dv = dv_p2;
    always_comb y    = y;
	
	 
	 
	// write quadra_top output to file dump.vcd
	initial begin
		
		$fopen("dump.vcd", "w");

        $fwrite(f, "#0\n");
        $fwrite(f, "$dumpvars(0, quadra_top)\n");
        $fwrite(f, "$end\n");

        $fwrite(f, "#1\n");
        $fwrite(f, "$dumpvars\n");
        $fwrite(f, "y = %b\n", y);
        $fwrite(f, "$end\n");
		
		end
	 

	 
endmodule
