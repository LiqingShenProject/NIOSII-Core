module registerCell(
      input registerEnable,
      input clk,
	   input rst_n,
		input [31:0] D,
		output reg [31:0] Q
);
		
always @ (negedge clk, negedge rst_n) begin
     if (!rst_n) begin
         Q <= 32'd0;
	  end else if (registerEnable) begin
	      Q <= D;
	  end	else begin
	      Q <= Q;
	end 
end
endmodule