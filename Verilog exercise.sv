#DESIGN
module mux8_to_2 (m1, m2, r, k0, k1, k2, k3, k4, active, alarm);
  output active, alarm;
  input  k0, k1, k2, k3, k4;
  input m1, m2, r;
  reg active, alarm;
  always @(k0 or k1 or k2 or k3 or k4 or m1 or m2 or r)
  begin
    case ({k0, k1, k2, k3, k4})
      5'b00001: 
        begin
          active = 1; 
          if((m1 == 1) | (m2 == 1) | (r ==1))
            alarm = 1;
          else
            alarm = 0;
        end
      5'b00100: 
        begin
          active = 0; alarm = 0;
        end
      default: 
        $display("keyboard signal other than 4 or 32!!!");
    endcase
  end
endmodule

#TESTBENCH
module top();
  reg m1, m2, r, k0, k1, k2, k3, k4;
  wire active, alarm;
  mux8_to_2 my_mux(m1, m2, r, k0, k1, k2, k3, k4, active, alarm);
  initial
  begin
//     $dumpfile("Mux.vcd");
//     $dumpvars(0);
    $display("\t\ttime\tm1\tm2\tr\tk0\tk1\tk2\tk3\tk4   active   alarm");
    $monitor($time ,"\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b\t%b",m1,m2,r,k0,k1,k2, k3,k4,active,alarm);
//     Arm is 10000, disarm is 00100
    {m1,m2,r}=3'b001;
    {k4,k3,k2,k1,k0}=5'b10000;
    #10
    {m1,m2,r}=3'b000;
    {k4,k3,k2,k1,k0}=5'b00100;
    #10
    {m1,m2,r}=3'b101;
    #10
    {m1,m2,r}=3'b000;
    #10
    {k4,k3,k2,k1,k0}=5'b10000;
    #10
    {m1,m2,r}=3'b011;
    #10 $finish;
  end
endmodule