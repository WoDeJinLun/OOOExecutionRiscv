module sim_top;

	// Inputs
	reg clk;
	reg rstn;

//	top uut (
//		.CLK_200M_P(clk),
//		.CLK_200M_N(~clk),
//		.SW(16'b0),
//		.RSTN(rstn),
//		.BTN_X(),
//		.BTN_Y(4'b0),
//		.SEGLED_CLK(),
//		.SEGLED_DO(),
//		.SEGLED_PEN(),
//		.LED_PEN(),
//		.LED_DO(),
//		.LED_CLK(),
//		.VGA_B(),
//		.VGA_G(),
//		.VGA_R(),
//		.HS(),
//		.VS()
//	);
    RV32core core(.debug_en(1'b0),.debug_step(1'b0),.debug_addr(7'b0),.debug_data(),.clk(clk),
    .rst(rstn),.interrupter(1'b0));
	initial begin
		// Initialize Inputs
		clk = 0;
		rstn = 1;

		// Wait 100 ns for global reset to finish
		#2 rstn = 0;
        
		// Add stimulus here
	end
	
	initial forever #1 clk = ~clk;
      
endmodule
