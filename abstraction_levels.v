// Abstraction levels
// It is a ability to write a module in different levels.

//1.switch level
module cmos_inverter(a,y);
  supply1 vdd;
  supply0 gnd;
  pmos p1(y,vdd,a); //(drain,source,gate)
  nmos n1(y,gnd,a); //(rain,source,gate)
endmodule
//In switch level is mainly used for simulating transistor behaviour(nmos,cmos,pmos)


//2.gate level
module gates(a,b,c);
  input a,b;
  output c;
  and g1(c,a,b);
  or g2(c,a,b);
  not g3(c,a);
  nand g4(c,a,b);
  nor g5(c,a,b);
  xor g6(c,a,b);
  xnor g7(c,a,b);
endmodule
//In gate level implementation done with logic gates and it uses gate primitives(and,or,not,nand,nor,xor,xnor).


//3.data flow model
module adder(a,b,sum,carry);
  input a,b;
  output sum,carry;
  assign sum=a^b;
  assign carry=a&b;
endmodule
//In data flow model uses the 'assigm' keyword for continous assignment and it also called as Register Transfer Level(RTL) and it is best for combinational circuit.


//4.behaviourial model
module d_ff(clk,d,q);
  input clk,d;
  output reg q;
  always @(posedge clk)
    begin
      q<=d;
    end
endmodule
//In behaviourial model uses initial,always blocks and initial block only excutes starting of the simulation and always block excutes multiple times and it best for sequential circuit.

