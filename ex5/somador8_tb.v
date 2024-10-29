`timescale 1ns/1ns
`include "somador8.v"

module somador8_tb;

    reg [7:0] a,b;
    wire [8:0] s;
    wire [6:0] c;

    somador8 uut(a, b, s);

    initial begin
        $dumpfile("somador8_tb.vcd");
        $dumpvars(0, somador8_tb);
    
        a = 8'd125; b = 8'd24; #10;

        $display("Teste completo");
    end

endmodule