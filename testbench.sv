module enum_datatype;

  //declaration
 // enum { red, green, blue, yellow, white, black } Colors;
  enum { red=0, green, blue=4, yellow, white=10, black } Colors;
  //display members of Colors
  initial begin
    Colors = Colors.first;
    for(int i=0;i<6;i++) begin
      $display("Colors :: Value of  %0s \t is = %0d",Colors.name,Colors);
      Colors = Colors.next;      
   end
end
  
endmodule
  
