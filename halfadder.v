//Design code for half adder using verilog
module half_adder(a,b,sum,carry);
  input a,b;
  output sum,carry;
  
  assign sum=a^b;
  assign carry=a&b;
  
endmodule


//Test bench code for the half adder using verilog 
module tb;
  reg a,b;
  wire sum,carry;
  half_adder DUT(.a(a),.b(b),.sum(sum),.carry(carry));
  initial
    begin
      
      $monitor("$time=%0t |inputs a=%b,b=%b and outputs sum=%b,carry=%b",$time,a,b,sum,carry);
      
      a=0;b=0;#10;
      a=0;b=1;#10;
      a=1;b=0;#10;
      a=1;b=1;#10;
      
      $finish;
    end
endmodule
