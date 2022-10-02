// ---------------------------
// Exemplo_0905
// Nome: Carolina Morais Nigri
// Matricula: 761400
// ---------------------------
// ---------------------------
// -- test clock generator (5)
// ---------------------------
`include "clock.v"

module pulse (signal, clock);
    input clock;
    output signal;
    reg signal;

    always @ (clock)
    begin
           signal = 1'b1;
        #48 signal = 1'b0;
        #48 signal = 1'b1;
        #48 signal = 1'b0;
    end
endmodule // pulse

module Exemplo_0905;
    wire clock, p;

    clock clk (clock);
    pulse pulse1 (p, clock);

    initial 
    begin
        $dumpfile ("Exemplo0905.vcd");
        $dumpvars (1, clock, p);
        
        #480 $finish;
    end
endmodule // Exemplo_0905