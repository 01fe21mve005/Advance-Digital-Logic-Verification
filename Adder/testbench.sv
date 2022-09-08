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
  
  //creating instance of interface, inorder to connect DUT and testcase 
  intf i_intf(clk,reset);
  
  //testcase instance, interface handle iis passed to test as an argument
  test t1(i_intf);
  
  //DUT instance, interface signals are connected to the DUT ports
  adder DUT(
    .clk(i_intf.clk),
    .reset(i_intf.reset),
    .a(i_intf.a),
    .b(i_intf.b),
    .valid(i_intf.valid),
    .c(i_intf.c)
  );
  
  //enabling the wavedump
  //initial begin
    //$dumpfile("dump.vcd");$dumpvars;
 // end
endmodule
