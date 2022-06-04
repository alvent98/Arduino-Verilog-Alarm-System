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