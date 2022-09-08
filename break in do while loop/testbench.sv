module break_in_do_while_loop;
  int i;
  
  initial begin
    $display("--------------------------------------------------");
    i = 8;
    
    do begin
      $display("\tValue of i=%0d",i);
      if(i == 4) begin
        $display("\tCalling break,");
        break;
      end  
      i--;
    end
    while(i != 0);  
    
    $display("----------------------------------------------------");
  end      
endmodule