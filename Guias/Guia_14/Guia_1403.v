// Carolina Morais Nigri - 761400

module dff ( output q, qnot,
             input d, clk, clr );
  
    reg q, qnot;

    always @( posedge clk or clr )
    begin
        if ( clr ) 
        begin 
            q <= 0; 
            qnot <= 1; 
        end
        else
        begin
            q <= d; 
            qnot <= ~d;
        end
    end
endmodule // dff

module right_ring ( output a, b, c, d, e, f,
                    input clk, in, clr );
   
    wire out_not, or_1;

    or OR1 ( or_1, in, f );

    dff D1 ( a, out_not, or_1, clk, clr );
    dff D2 ( b, out_not,   a,  clk, clr );
    dff D3 ( c, out_not,   b,  clk, clr );
    dff D4 ( d, out_not,   c,  clk, clr );
    dff D5 ( e, out_not,   d,  clk, clr );
    dff D6 ( f, out_not,   e,  clk, clr );
endmodule // right_ring

module test;
    reg clk, clr, in;
    wire a, b, c, d, e, f;

    right_ring rg1 (a, b, c, d, e, f, clk, in, clr);

    initial
    begin
        $display("Teste Guia_1403\n");

        clk = 1;
        in = 0;
        clr = 1;

        #4 clr = 0; in = 1; clk = 1; 
        #4 in = 0;

        #50 $finish;
    end

    always
    #2 clk = ~clk;

    always @ (negedge clk)
    begin
        $display(" %b %b %b %b %b %b", a, b, c, d, e, f);
    end
endmodule // test