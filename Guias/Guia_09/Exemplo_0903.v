// ---------------------------
// Exemplo_0903
// Nome: Carolina Morais Nigri
// Matricula: 761400
// ---------------------------
// ---------------------------
// -- test clock generator (3)
// ---------------------------
`include "clock.v"

module pulse1 (signal, clock);
    input clock;
    output signal;
    reg signal;

    always @ (posedge clock)
    begin
           signal = 1'b1;
        #4 signal = 1'b0;
        #4 signal = 1'b1;
        #4 signal = 1'b0;
        #4 signal = 1'b1;
        #4 signal = 1'b0;
    end
endmodule // pulse1
module pulse2 (signal, clock);
    input clock;
    output signal;
    reg signal;

    always @ (posedge clock)
    begin
           signal = 1'b1;
        #5 signal = 1'b0;
    end
endmodule // pulse2
module pulse3 (signal, clock);
    input clock;
    output signal;
    reg signal;

    always @ (negedge clock)
    begin
            signal = 1'b1;
        #15 signal = 1'b0;
        #15 signal = 1'b1;
    end
endmodule // pulse3
module pulse4 (signal, clock);
    input clock;
    output signal;
    reg signal;

    always @ (negedge clock)
    begin
            signal = 1'b1;
        #20 signal = 1'b0;
        #20 signal = 1'b1;
        #20 signal = 1'b0;
    end
endmodule // pulse4

module Exemplo_0903;
    wire clock, p1, p2, p3, p4;

    clock clk (clock);
    pulse1 pls1 (p1, clock);
    pulse2 pls2 (p2, clock);
    pulse3 pls3 (p3, clock);
    pulse4 pls4 (p4, clock);
    
    initial
    begin
        $dumpfile ("Exemplo0903.vcd");
        $dumpvars (1, clock, p1, p2, p3, p4);

        #480 $finish;
    end
endmodule // Exemplo_0903