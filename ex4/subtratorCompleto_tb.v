`timescale 1ns/1ns
`include "subtratorCompleto.v"

module subtratorCompleto_tb;

    reg a,b, c_in;
    wire c_out,s;

    subtratorCompleto uut(a, b, c_in, c_out, s);

    initial begin
        $dumpfile("subtratorCompleto_tb.vcd");
        $dumpvars(0, subtratorCompleto_tb);

        a = 0;
        b = 0; 
        c_in = 0; #20;
        a = 0; 
        b = 0; 
        c_in = 1; #20;
        a = 0;
        b = 1; 
        c_in = 0; #20;
        a = 0;
        b = 1; 
        c_in = 1; #20;
        a = 1;
        b = 0; 
        c_in = 0; #20;
        a = 1;
        b = 0; 
        c_in = 1; #20;
        a = 1;
        b = 1; 
        c_in = 0; #20;
        a = 1;
        b = 1; 
        c_in = 1; #20;
       
 
        $display("Teste completo");
    end

endmodule