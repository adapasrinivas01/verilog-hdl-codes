//Design code for HALF SUBTRACTOR using verilog
module half_sub(a,b,diff,borrow);
  input a,b;
  output diff,borrow;
  
  assign diff=a^b;
  assign borrow=(~a&b);
  
endmodule


//Test bench code for HALF SUBTRACTOR using verilog
module tb;
  reg a,b;
  wire diff,borrow;
  half_sub DUT(.a(a),.b(b),.diff(diff),.borrow(borrow));
  initial
    begin
      
      $monitor("Time=%0t | inputs a=%b,b=%b | outputs difference=%b,borrow=%b",$time,a,b,diff,borrow);
      
      a=1;b=1;#10; //d = 0 b = 0
      a=0;b=1;#10; //d = 1 b = 1
      a=0;b=0;#10; //d = 0 b = 0
      a=1;b=0;#10; //d = 1 b = 0
      $finish;
    end
endmodule
