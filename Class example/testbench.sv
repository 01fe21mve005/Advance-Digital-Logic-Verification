class sv_class;
 //class properties
  int x;
  //method 1
  task set(int i);
    x=i;
  endtask
  
  //method 2
  function int get();
    return x;
  endfunction
endclass

module sv_class_ex;
  sv_class class_1=new();//handle
  sv_class class_2=new();
initial begin
  
 
//accesing 
  class_1.set(10);
  class_2.set(20);
  $display("\t class_1:: value of x = %0d",class_1.get());
  $display("\t class_2:: value of x = %0d",class_2.get());
end
endmodule