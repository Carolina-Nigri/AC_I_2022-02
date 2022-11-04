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

module left_shift_a ( output a, b, c, d, e, f,
                      input clk, ld, clr );
   
    wire out_not;

    dff D1 ( a, out_not, b,  clk, clr );
    dff D2 ( b, out_not, c,  clk, clr );
    dff D3 ( c, out_not, d,  clk, clr );
    dff D4 ( d, out_not, e,  clk, clr );
    dff D5 ( e, out_not, f,  clk, clr );
    dff D6 ( f, out_not, ld, clk, clr );
endmodule // left_shift_a

module test;
    reg clk, clr, ld;
    wire a, b, c, d, e, f;

    left_shift_a ls1 (a, b, c, d, e, f, clk, ld, clr);

    initial
    begin
        $display("Teste Guia_1401\n");

        clk = 1;
        ld = 0;
        clr = 1;

        #4 clr = 0; ld = 1;
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