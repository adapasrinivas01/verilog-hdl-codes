//Design code for NOT gate using verilog
module not_gate(a,c);
  input a;
  output c;
  
  assign c=~a;
  //not g1(c,a);
  
endmodule


//Test bench for the NOT gate using verilog
module tb;
  reg a;
  wire c;
  not_gate DUT(.a(a),.c(c));
  initial
    begin
      
      $monitor("$time=%0t | input a=%b and output c=%b",$time,a,c);
      
      a=1;#10;
      a=0;#10;
      
      $finish;
    end
endmodule
