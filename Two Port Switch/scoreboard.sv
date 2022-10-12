class scoreboard;

  mailbox mon2scb; 
  int no_transactions;
  function new(mailbox mon2scb);  
  this.mon2scb = mon2scb;
  endfunction
  task main();
    transaction trans;
    forever begin