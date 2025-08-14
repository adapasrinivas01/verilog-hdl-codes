

//Design code for FULL SUBTRACTOR using verilog
module full_sub(a,b,c,diff,borrow);
  input a,b,c;
  output diff,borrow;
  wire w1,w2,w3;
  
  assign w1=a^b;
  assign w2=(~w1&c);
  assign w3=(~a&b);
  
  assign diff=w1^c;
  assign borrow=w2|w3;
  
endmodule



//Test bench code for FULL SUBTRACTOR using verilog
module tb;
  reg a,b,c;
  wire diff,borrow;
  full_sub DUT(.a(a),.b(b),.c(c),.diff(diff),.borrow(borrow));
  initial
    begin
      
      $monitor("Time=%0t | inputs a=%b,b=%b,c=%b | outputs difference=%b,borrow=%b",$time,a,b,c,diff,borrow);
      
      a=1;b=1;c=0;#10; //d = 0 b = 0
      a=0;b=1;c=1;#10; //d = 0 b = 1
      a=0;b=0;c=0;#10; //d = 0 b = 0
      a=1;b=0;c=1;#10; //d = 0 b = 0
      a=0;b=0;c=1;#10; //d = 1 b = 1
      a=0;b=1;c=0;#10; //d = 1 b = 1
      a=1;b=0;c=0;#10; //d = 1 b = 0
      a=1;b=1;c=1;#10; //d = 1 b = 1
      
      $finish;
    end
endmodule
