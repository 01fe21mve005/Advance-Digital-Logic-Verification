

module fixedsize_array;
  //declaration of array’s
  int array1[6];              
  int array2[5:0];             
  int array3[2:0][3:0];       
  int array4[4:0];
 
  initial begin
    //array initialization
    array1 = '{0,1,3,4,5,4};
    array2 = '{0,1,2,3,4,5};
    array3 = '{'{0,1,2,3},'{4,5,6,7},'{8,9,10,11}};
 
   
    $display("-------displaying array1-------");
    foreach(array1[i]) $display("\t array1[%0d] = %0d",i,array1[i]);
 
    $display("-------displaying array2-------");
    for(int i=0;i<6;i++) $display("\t array2[%0d] = %0d",i,array2[i]);
 
    $display("-------displaying array3-------");
    foreach(array3[i,j]) $display("\t array3[%0d][%0d] = %0d",i,j,array3[i][j]);
 
    $display("-------displaying array4-------");
    for(int i=0;i<5;i++) $display("\t array4[%0d] = %0d",i,array4[i]);
  end
endmodule