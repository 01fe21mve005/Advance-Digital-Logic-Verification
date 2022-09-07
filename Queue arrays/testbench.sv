
module queues_arrays;
  //declaration
  bit[31:0]queue_1[$];
  string queue_2[$];
  initial begin
    queue_1={1,2,3};
    queue_2={"Red","blue","Green"};
    //size method
    $display("queue_1 size is %0d--",queue_1.size());
    foreach(queue_1[i])$display("\t queue_1[%0d]=%0d",i,queue_1[i]);
                                $display(" queue_2 size is %0d--",queue_2.size()); 
                                foreach (queue_2[i])$display("\t queue_2[%0d]=%0d",i,queue_2[i]);   
 // insert method
 queue_2.insert(1,"orange");
    $display(" queue_2 size after inserting orange is %0d--",queue_2.size()); 
    foreach (queue_2[i])$display("\t queue_2[%0d]=%0s",i,queue_2[i]);   
   // deleting method
                                                                                                   queue_2.delete(3);
    $display("--- queue_2 size after deleting orange is %0d--",queue_2.size()); 
    foreach (queue_2[i])$display("\t queue_2[%0d]=%0d",i,queue_2[i]);  
 end
 endmodule