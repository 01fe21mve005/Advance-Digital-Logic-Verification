module continue_in_loop;
 
  initial begin
    $display("-----------------------------------------------");
  
    for(int i=0;i<8;i++) begin    
 
      if((i > 2) && (i < 7))begin
        $display("\t\tCalling continue,");
        continue;
      end  
 
      $display("\t\tAfter Continue\t:: Value of i=%0d",i);
    end
 
    $display("---------------------------------------------");
 
  end
 
endmodule