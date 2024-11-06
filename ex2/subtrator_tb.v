`timescale 1ns/1ns
`include "subtrator.v"

module subtrator_tb;

    reg a,b;
    wire c,s;

    subtrator uut(a, b, c, s);

    initial begin
        $dumpfile("subtrator_tb.vcd");
        $dumpvars(0, subtrator_tb);

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