module break_in_loop;
 
  initial begin
  
 
    for(int i=0;i<8;i++) begin
      $display("\tValue of i=%0d",i);
      if(i == 4) begin
        $display("\tCalling break,");
        break;
      end
    end 

  end
 
endmodule