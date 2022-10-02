// ---------------------------
// Exemplo_0904
// Nome: Carolina Morais Nigri
// Matricula: 761400
// ---------------------------
// ---------------------------
// -- test clock generator (4)
// ---------------------------
`include "clock.v"

module pulse (signal, clock);
    input clock;
    output signal;
    reg signal;

    always @ (clock)
    begin
           signal = 1'b1;
        #4 signal = 1'b0;
        #4 signal = 1'b1;
        #4 signal = 1'b0;
    end
endmodule // pulse

module Exemplo_0904;
    wire clock, p;

    clock clk (clock);
    pulse pulse1 (p, clock);

    initial 
    begin
        $dumpfile ("Exemplo0904.vcd");
        $dumpvars (1, clock, p);
        
        #240 $finish;
    end
endmodule // Exemplo_0904