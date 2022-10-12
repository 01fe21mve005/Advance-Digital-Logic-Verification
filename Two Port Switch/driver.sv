class driver


class driver 

int no_transaction;
int intf.vif;
mailbox gen2drive;

function(intf.vif,mailbox)
this.vif=vif;
this.gen2driver=gen2driver;

task reset()

$display(" reset is started");
@(posedge clk);
trans data<= 0;
trans addr<= 0;

@(posedge clk)
vif.addr a <= 0;
vif.addr b <= 0;
vif.data a <= 0;
vif.data b <= 0;
$ display (" reset is ended");

task main()
repeat(no_transaction)begin

@(posedge clk);
trans data<= vif.data;
trans addr<= vif.addr;

@(posedge clk)
vif.addr a <= addr a;
vif.addr b <= addr b;
vif.data a <= data a;
vif.data b <= data b;


if(!trans.randomize())
$display("driver trans randomization failed");
gen2driv.get(trans);
end

endclass

no_transaction++;

endclass
