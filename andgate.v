//Test bench for and_gate
module tb;
  reg a,b;
  wire c;
  and_gate dut(.a(a),.b(b),.c(c));
  initial
    begin
      a=0;b=1;
      #5;
      $display("AND gate inputs a=%0b,b=%0b output c=%0b",a,b,c);
    end
endmodule

//Design code for and_gate
module and_gate(a,b,c);
  input a;
  input b;
  output c;
  assign c=a&b;
endmodule
