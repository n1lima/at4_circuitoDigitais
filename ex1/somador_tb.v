`timescale 1ns/1ns
`include "somador.v"

module somador_tb;

    reg a,b;
    wire c,s;

    somador uut(a, b, c, s);

    initial begin
        $dumpfile("somador_tb.vcd");
        $dumpvars(0, somador_tb);

        a = 0;
        b = 0; #20;
        a = 0; 
        b = 1; #20;
        a = 1;
        b = 0; #20;
        a = 1;
        b = 1; #20;
 

        $display("Teste completo");
    end

endmodule