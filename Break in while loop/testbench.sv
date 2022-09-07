module break_in_while_loop;
  int i;
   
  initial begin
    $display("--------------------------------------------------------------");
    i = 8;
     
    while(i!=0) begin
      $display("\tValue of i=%0d",i);
      if(i == 4) begin
        $display("\tCalling break,");
        break;
      end 
      i--;
    end
     
    $display("--------------------------------------------------------------");
  end     
endmodule