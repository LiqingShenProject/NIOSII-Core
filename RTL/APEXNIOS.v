module APEXNIOS (
       input clock,
		 input button,
		 output [7:0]led
//		 output flash_as_dclk,
//		 output flash_as_sce,
//		 output flash_as_sdo,
//	    input flash_as_data0
		 
);
wire button_d;
wire [31:0] registerdata;

inputDelay button_debounce (
      .clk(clock),
		.rst_n(1'b1),
		.delaytime (20'd1000),
		.signal_in (button),
		.signal_out (button_d)
);

platform NIOS(
	.clk_clk(clock),
	.reset_reset_n(1'b1),
	.led_export(led),
	.flash_as_dclk(flash_as_dclk),
	.flash_as_sce(flash_as_sce),
	.flash_as_sdo(flash_as_sdo),
	.flash_as_data0(flash_as_data0),
	.button_export(button_d),
	.external_flash_data_cf(),
	.external_flash_we_n(),
	.external_flash_rfu(),
	.external_flash_reset_n_cf(),
	.external_flash_power(),
	.external_flash_iowr_n(),
	.external_flash_iord_n(),
	.external_flash_cs_n(),
	.external_flash_addr(),
	.external_flash_iordy(),
	.external_flash_intrq(),
	.external_flash_detect_n(),
	.external_flash_atasel_n(),	
	.registerdata_readdata (registerdata)
);



endmodule