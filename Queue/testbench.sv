module queues_array;
  //declaration
  bit    [31:0] queue_1[$];
  int    lvar; 
   
  initial begin
    //Queue Initialization:
    queue_1 = {0,1,2,3};
     
    //Size-Method
    $display("\tQueue_1 size is %0d",queue_1.size());  
     
    //Push_front Method
    queue_1.push_front(22);
    $display("\tQueue_1 size after push_front is %0d",queue_1.size());
     
    //Push_back  Method
    queue_1.push_back(44);
    $display("\tQueue_1 size after push_back is %0d",queue_1.size());
 
 //Pop_front Method
 lvar = queue_1.pop_front();
    $display("\tQueue_1 pop_front value is %0d",lvar);
 
 //Pop_back Method
 lvar = queue_1.pop_back();
    $display("\tQueue_1 pop_back value is %0d",lvar);
  end
endmodule