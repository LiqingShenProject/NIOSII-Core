module apexRegister_avalon_interface (
    // avalon interface
	 input clk,
	 input rst_n,
	 input read,
	 input write,
	 input chipSelect,
	 input [7:0] address,
	 input [31:0] writedata,
	 output [31:0] readdata,
	 // exported signals to PL
    output reg [31:0] Q
);

wire [31:1] register_1;
wire [31:1] register_2;
wire [31:1] register_3;

registerCell R1(
    .registerEnable (address == 8'd1),
    .clk(clk),
	 .rst_n(rst_n),
	 .D (writedata),
	 .Q (register_1)
);

registerCell R2(
    .registerEnable (address == 8'd2),
    .clk(clk),
	 .rst_n(rst_n),
	 .D (writedata),
	 .Q (register_2)
);

registerCell R3(
    .registerEnable (address == 8'd3),
    .clk(clk),
	 .rst_n(rst_n),
	 .D (writedata),
	 .Q (register_3)
);

always @(posedge clk) begin
    case (address) 
	 8'd1: Q <= register_1;
	 8'd2: Q <= register_2;
	 8'd3: Q <= register_3;
    default: Q <= Q;
	 endcase
end

assign readdata = Q;


endmodule