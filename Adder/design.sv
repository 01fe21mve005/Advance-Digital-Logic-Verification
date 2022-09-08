// Code your design here
module adder(clk,reset,a,b,valid,c);
  input [3:0] a,b;
  input clk,reset;
  input valid;
  output reg [6:0] c;
  
  always @(posedge clk)
    begin
      if(reset) begin
        c = 6'b0;
      end
      else begin
        c = a + b;
      end
    end
endmodule
 
