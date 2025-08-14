//Design code for 2to1 MUX using verilog
module mux(a,b,sel,c);
  input a,b,sel;
  output reg c;
  
  always @(*)
    begin
      if(sel==1'b0)
        c=a;
      else
        c=b;
    end
  
endmodule
     


//Test bench for the 2to1 MUX using verilog
module tb;
  reg a,b,sel;
  wire c;
  mux DUT(.a(a),.b(b),.sel(sel),.c(c));
  initial
    begin
      
      $monitor("time=%0t | inputs a=%b,b=%b,sel=%b | outputs c=%b",$time,a,b,sel,c);
      
      a=0;b=1;sel=0;#10; //c = a = 0
      a=1;b=1;sel=1;#10; //c = b = 1
      a=0;b=0;sel=1;#10; //c = b = 0
      a=1;b=0;sel=1;#10; //c = b = 0
      a=0;b=1;sel=1;#10; //c = b = 1
      a=1;b=0;sel=0;#10; //c = a = 1
      a=1;b=1;sel=0;#10; //c = a = 1
      
      $finish;
    end
endmodule
      
