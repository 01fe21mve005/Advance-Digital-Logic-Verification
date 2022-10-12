//environment

'include transaction.sv
'include driver.sv
'include generator.sv
'include monitor.sv
'include scorbored.sv

class enviroment

generator gen;
driver driver;
monitor mon;
scoreboard scb;

mailbox gen2driver;
mailbox mon2scb
  
  function();
    