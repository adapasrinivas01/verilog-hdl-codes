//Design code for 2to1 MULTIPLEXER using verilog
module mux(a,b,sel,c);
  input wire a,b;
  input wire sel;
  output reg c;
  always @(*)
    begin
      if(sel==0)
        c=a;
      else
        c=b;
    end
endmodule
      


//Test bench for 2to1 MULTIPLXER USING verilog
module tb;
  reg a,b;
  reg sel;
  wire c;
  mux DUT(.a(a),.b(b),.sel(sel),.c(c));
  initial
    begin
      $monitor("Time=%0t | inputs a=%b,b=%b,sel=%b and outputs c=%b",$time,a,b,sel,c);
    a=0;b=1;sel=0;#10;
    a=1;b=1;sel=1;#10;
    a=1;b=0;sel=0;#10;
    a=0;b=0;sel=1;#10;
      $finish;
    end
endmodule
      
    
  
