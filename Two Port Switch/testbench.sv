`include "interface.sv"
`include "test.sv"

module tbench_top;
  
  //clock and reset signal declaration
  bit clk;
  bit reset;
  
  //clock generation
  always #5 clk = ~clk;
  
  //rest generation
  initial begin
    reset = 1;
    #5 reset = 0;
  end
  port dut(
    
    
    
  );
  
  