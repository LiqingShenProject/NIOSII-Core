
module inputDelay (
      input clk,
		input rst_n,
		input [19:0] delaytime,
		input signal_in,
		output reg signal_out

);

reg [19:0] setCounter;
reg [19:0] resetCounter;

// set delay
always @(posedge clk, negedge rst_n) begin
   if (!rst_n) begin
      setCounter <= 20'd0;
	end else if (signal_in & setCounter!=delaytime) begin
      setCounter <= setCounter + 1'b1;
   end else if (!signal_in) begin
      setCounter <= 20'd0;
   end else begin
      setCounter <= setCounter;
   end
end

// reset delay
always @(posedge clk, negedge rst_n) begin
   if (!rst_n) begin
      resetCounter <= 20'd0;
	end else if (!signal_in & resetCounter!=delaytime) begin
      resetCounter <= resetCounter + 1'b1;
   end else if (signal_in) begin
      resetCounter <= 20'd0;
   end else begin
      resetCounter <= resetCounter;
   end
end

// output FF
always @(posedge clk, negedge rst_n) begin
   if (!rst_n) begin
      signal_out <= 1'b0;
	end else if (!signal_in & resetCounter==delaytime) begin
      signal_out <= 1'b0;
	end else if (signal_in & setCounter==delaytime) begin
      signal_out <= 1'b1;
   end else begin
      signal_out <= signal_out;
   end
end


endmodule