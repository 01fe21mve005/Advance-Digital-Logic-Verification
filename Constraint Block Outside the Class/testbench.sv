class packet;
 
  rand  bit [3:0] addr;
  //constraint block declaration
  constraint addr_range;
endclass
 
//constraint implementation outside class body
constraint packet::addr_range { addr > 5; }
 
module extern_constr;
  initial begin
    packet pkt;
    pkt = new();
 
    repeat(10) begin
      pkt.randomize();
      $display("\taddr = %0d",pkt.addr);
    end
  end
endmodule