module repeat_loop_break;
  int i;
     initial begin
   
repeat(5) begin
  $display("\tValue of i=%0d",i);
  if(i == 2) begin
    $display("\tCalling break,");
    break;
  end
      i++;
    end     
         
  end    
endmodule
