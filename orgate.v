//Design code for OR gate using verilog
module or_gate(a,b,c);
  input a,b;
  output c;
  
  //assign c=a|b;
  or g1(c,a,b);
  
endmodule


//Test bench for the OR gate using verilog
module tb;
  reg a,b;
  wire c;
  or_gate DUT(.a(a),.b(b),.c(c));
  initial
    begin
      
      $monitor("$time=%0t | inputs a=%b,b=%b and output c=%b",$time,a,b,c);
      
      a=0;b=0;#10; 
      a=1;b=0;#10;
      a=0;b=1;#10;
      a=1;b=1;#10;
      
      $finish;
    end
endmodule
