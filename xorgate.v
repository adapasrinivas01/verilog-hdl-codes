//Design code for EX-OR gate using verilog
module exor_gate(a,b,c);
  input a,b;
  output c;
  
  //assign c=a^b;
  xor g2(c,b,a);
  
endmodule


//Test bench for the EX-OR gate using verilog
module tb;
  reg a,b;
  wire c;
  exor_gate DUT(.a(a),.b(b),.c(c));
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
