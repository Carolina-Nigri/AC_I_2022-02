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

module left_shift_b ( output a, b, c, d, e, f,
                      input clk, ld, clr );
   
    wire out_not, or_a, or_b, or_c, or_d, or_e, or_f;

    or OR1 ( or_a, b, ld );
    or OR2 ( or_b, c, ld );
    or OR3 ( or_c, d, ld );
    or OR4 ( or_d, e, ld );
    or OR5 ( or_e, f, ld );
    or OR6 ( or_f, 0, ld );

    dff D1 ( a, out_not, or_a, clk, clr );
    dff D2 ( b, out_not, or_b, clk, clr );
    dff D3 ( c, out_not, or_c, clk, clr );
    dff D4 ( d, out_not, or_d, clk, clr );
    dff D5 ( e, out_not, or_e, clk, clr );
    dff D6 ( f, out_not, or_f, clk, clr );
endmodule // left_shift_b

module test;
    reg clk, clr, ld;
    wire a, b, c, d, e, f;

    left_shift_b ls2 (a, b, c, d, e, f, clk, ld, clr);

    initial
    begin
        $display("Teste Guia_1402\n");

        clk = 1;
        ld = 0;
        clr = 1;

        #4 clr = 0; ld = 1; clk = 1; 
        #4 ld = 0;

        #20 $finish;
    end

    always
    #2 clk = ~clk;

    always @ (negedge clk)
    begin
        $display(" %b %b %b %b %b %b", a, b, c, d, e, f);
    end
endmodule // test