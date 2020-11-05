	component platform is
		port (
			button_export             : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- export
			clk_clk                   : in    std_logic                     := 'X';             -- clk
			external_flash_data_cf    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- data_cf
			external_flash_we_n       : out   std_logic;                                        -- we_n
			external_flash_rfu        : out   std_logic;                                        -- rfu
			external_flash_reset_n_cf : out   std_logic;                                        -- reset_n_cf
			external_flash_power      : out   std_logic;                                        -- power
			external_flash_iowr_n     : out   std_logic;                                        -- iowr_n
			external_flash_iord_n     : out   std_logic;                                        -- iord_n
			external_flash_cs_n       : out   std_logic_vector(1 downto 0);                     -- cs_n
			external_flash_addr       : out   std_logic_vector(10 downto 0);                    -- addr
			external_flash_iordy      : in    std_logic                     := 'X';             -- iordy
			external_flash_intrq      : in    std_logic                     := 'X';             -- intrq
			external_flash_detect_n   : in    std_logic                     := 'X';             -- detect_n
			external_flash_atasel_n   : out   std_logic;                                        -- atasel_n
			flash_as_dclk             : out   std_logic;                                        -- dclk
			flash_as_sce              : out   std_logic;                                        -- sce
			flash_as_sdo              : out   std_logic;                                        -- sdo
			flash_as_data0            : in    std_logic                     := 'X';             -- data0
			led_export                : out   std_logic_vector(7 downto 0);                     -- export
			registerdata_readdata     : out   std_logic_vector(31 downto 0);                    -- readdata
			reset_reset_n             : in    std_logic                     := 'X'              -- reset_n
		);
	end component platform;

	u0 : component platform
		port map (
			button_export             => CONNECTED_TO_button_export,             --         button.export
			clk_clk                   => CONNECTED_TO_clk_clk,                   --            clk.clk
			external_flash_data_cf    => CONNECTED_TO_external_flash_data_cf,    -- external_flash.data_cf
			external_flash_we_n       => CONNECTED_TO_external_flash_we_n,       --               .we_n
			external_flash_rfu        => CONNECTED_TO_external_flash_rfu,        --               .rfu
			external_flash_reset_n_cf => CONNECTED_TO_external_flash_reset_n_cf, --               .reset_n_cf
			external_flash_power      => CONNECTED_TO_external_flash_power,      --               .power
			external_flash_iowr_n     => CONNECTED_TO_external_flash_iowr_n,     --               .iowr_n
			external_flash_iord_n     => CONNECTED_TO_external_flash_iord_n,     --               .iord_n
			external_flash_cs_n       => CONNECTED_TO_external_flash_cs_n,       --               .cs_n
			external_flash_addr       => CONNECTED_TO_external_flash_addr,       --               .addr
			external_flash_iordy      => CONNECTED_TO_external_flash_iordy,      --               .iordy
			external_flash_intrq      => CONNECTED_TO_external_flash_intrq,      --               .intrq
			external_flash_detect_n   => CONNECTED_TO_external_flash_detect_n,   --               .detect_n
			external_flash_atasel_n   => CONNECTED_TO_external_flash_atasel_n,   --               .atasel_n
			flash_as_dclk             => CONNECTED_TO_flash_as_dclk,             --       flash_as.dclk
			flash_as_sce              => CONNECTED_TO_flash_as_sce,              --               .sce
			flash_as_sdo              => CONNECTED_TO_flash_as_sdo,              --               .sdo
			flash_as_data0            => CONNECTED_TO_flash_as_data0,            --               .data0
			led_export                => CONNECTED_TO_led_export,                --            led.export
			registerdata_readdata     => CONNECTED_TO_registerdata_readdata,     --   registerdata.readdata
			reset_reset_n             => CONNECTED_TO_reset_reset_n              --          reset.reset_n
		);

