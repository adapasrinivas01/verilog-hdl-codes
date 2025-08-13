//Design code for EX-NOR gate using verilog
module xnor_gate(a,b,c);
  input a,b;
  output c;
  
  assign c=~(a^b);
  //xnor g2(c,b,a);
  
endmodule


//Test bench for the EX-NOR gate using verilog
module tb;
  reg a,b;
  wire c;
  xnor_gate DUT(.a(a),.b(b),.c(c));
  initial
    begin
      
      $monitor("$time=%0t | input a=%b b=%b and output c=%b",$time,a,b,c);
      
      a=1;b=0;#10;
      a=0;b=1;#10;
      a=1;b=1;#10;
      a=0;b=0;#10;
      
      $finish;
    end
endmodule
