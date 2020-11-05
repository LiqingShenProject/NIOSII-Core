
module platform (
	button_export,
	clk_clk,
	external_flash_data_cf,
	external_flash_we_n,
	external_flash_rfu,
	external_flash_reset_n_cf,
	external_flash_power,
	external_flash_iowr_n,
	external_flash_iord_n,
	external_flash_cs_n,
	external_flash_addr,
	external_flash_iordy,
	external_flash_intrq,
	external_flash_detect_n,
	external_flash_atasel_n,
	flash_as_dclk,
	flash_as_sce,
	flash_as_sdo,
	flash_as_data0,
	led_export,
	registerdata_readdata,
	reset_reset_n);	

	input	[7:0]	button_export;
	input		clk_clk;
	inout	[15:0]	external_flash_data_cf;
	output		external_flash_we_n;
	output		external_flash_rfu;
	output		external_flash_reset_n_cf;
	output		external_flash_power;
	output		external_flash_iowr_n;
	output		external_flash_iord_n;
	output	[1:0]	external_flash_cs_n;
	output	[10:0]	external_flash_addr;
	input		external_flash_iordy;
	input		external_flash_intrq;
	input		external_flash_detect_n;
	output		external_flash_atasel_n;
	output		flash_as_dclk;
	output		flash_as_sce;
	output		flash_as_sdo;
	input		flash_as_data0;
	output	[7:0]	led_export;
	output	[31:0]	registerdata_readdata;
	input		reset_reset_n;
endmodule
