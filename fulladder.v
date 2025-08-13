
//Design code for full adder using verilog
module full_adder(a,b,c,sum,carry);
  input a,b,c;
  output sum,carry;
  wire w1,w2,w3;
  
  assign w1=a^b;
  assign w2=w1&c;
  assign w3=a&b;
  
  assign sum=w1^c;
  assign carry=w2|w3;
  
endmodule


//Test bench code for the full adder using verilog 
module tb;
  reg a,b,c;
  wire sum,carry;
  full_adder DUT(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
  initial
    begin
      
      $monitor("$time=%0t |inputs a=%b,b=%b,c=%b and outputs sum=%b,carry=%b",$time,a,b,c,sum,carry);
      
      a=0;b=1;c=0;#10; // 2(decimal)
      a=0;b=0;c=1;#10; // 1
      a=1;b=0;c=1;#10; // 5
      a=0;b=0;c=0;#10; // 0
      a=1;b=0;c=0;#10; // 4
      a=0;b=1;c=1;#10; // 3
      a=1;b=1;c=1;#10; // 7
      a=1;b=1;c=0;#10; // 6
      
      $finish;
    end
endmodule
