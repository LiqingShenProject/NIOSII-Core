	platform u0 (
		.button_export             (<connected-to-button_export>),             //         button.export
		.clk_clk                   (<connected-to-clk_clk>),                   //            clk.clk
		.external_flash_data_cf    (<connected-to-external_flash_data_cf>),    // external_flash.data_cf
		.external_flash_we_n       (<connected-to-external_flash_we_n>),       //               .we_n
		.external_flash_rfu        (<connected-to-external_flash_rfu>),        //               .rfu
		.external_flash_reset_n_cf (<connected-to-external_flash_reset_n_cf>), //               .reset_n_cf
		.external_flash_power      (<connected-to-external_flash_power>),      //               .power
		.external_flash_iowr_n     (<connected-to-external_flash_iowr_n>),     //               .iowr_n
		.external_flash_iord_n     (<connected-to-external_flash_iord_n>),     //               .iord_n
		.external_flash_cs_n       (<connected-to-external_flash_cs_n>),       //               .cs_n
		.external_flash_addr       (<connected-to-external_flash_addr>),       //               .addr
		.external_flash_iordy      (<connected-to-external_flash_iordy>),      //               .iordy
		.external_flash_intrq      (<connected-to-external_flash_intrq>),      //               .intrq
		.external_flash_detect_n   (<connected-to-external_flash_detect_n>),   //               .detect_n
		.external_flash_atasel_n   (<connected-to-external_flash_atasel_n>),   //               .atasel_n
		.flash_as_dclk             (<connected-to-flash_as_dclk>),             //       flash_as.dclk
		.flash_as_sce              (<connected-to-flash_as_sce>),              //               .sce
		.flash_as_sdo              (<connected-to-flash_as_sdo>),              //               .sdo
		.flash_as_data0            (<connected-to-flash_as_data0>),            //               .data0
		.led_export                (<connected-to-led_export>),                //            led.export
		.registerdata_readdata     (<connected-to-registerdata_readdata>),     //   registerdata.readdata
		.reset_reset_n             (<connected-to-reset_reset_n>)              //          reset.reset_n
	);

