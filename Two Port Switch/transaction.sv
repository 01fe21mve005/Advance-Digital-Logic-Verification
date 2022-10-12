class transaction

rand bit [1:0] addr;
rand bit [1:0] data;
bit [1:0] addr a;
bit [1:0] addr b;
bit [1:0] data a;
bit [1:0] data b;

function Void display(string)

$display("stringname",name);
$display(" data=%0d ",data);
$display(" addr=%0d ",addr);
$display(" addra=%0d ",addr a);
$display(" addra=%0d ",addr b);
$display(" data a=%0d ",data a);
$display(" data b=%0d ",data b);
endfunction

end class
