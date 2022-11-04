// Carolina Morais Nigri - 761400

module dff ( output q, qnot,
             input d, clk, clr, prs );
  
    reg q, qnot;

    always @( posedge clk or clr or prs )
    begin
        if ( clr ) 
        begin 
            q <= 0; 
            qnot <= 1; 
        end
        else if( prs ) 
        begin 
            q <= 1; 
            qnot <= 0; 
        end
        else
        begin
            q <= d; 
            qnot <= ~d;
        end
    end
endmodule // dff

module paralell_serial ( output a, b, c, d, e, f,
                         input d5, d4, d3, d2, d1, d0,
                               ld, clk, clr );
   
    wire out_not, and_a, and_b, and_c, and_d, and_e, and_f;

    and AND1 ( and_a, ld, d5 );
    and AND2 ( and_b, ld, d4 );
    and AND3 ( and_c, ld, d3 );
    and AND4 ( and_d, ld, d2 );
    and AND5 ( and_e, ld, d1 );
    and AND6 ( and_f, ld, d0 );

    dff D1 ( a, out_not, 0, clk, clr, and_a );
    dff D2 ( b, out_not, a, clk, clr, and_b );
    dff D3 ( c, out_not, b, clk, clr, and_c );
    dff D4 ( d, out_not, c, clk, clr, and_d );
    dff D5 ( e, out_not, d, clk, clr, and_e );
    dff D6 ( f, out_not, e, clk, clr, and_f );
endmodule // paralell_serial

module test;
    reg clk, clr, ld, d5, d4, d3, d2, d1, d0;
    wire a, b, c, d, e, f;

    paralell_serial ps1 (a, b, c, d, e, f, d5, d4, d3, d2, d1, d0, ld, clk, clr);

    initial
    begin
        $display("Teste Guia_1405\n");

        clk = 1;
        ld = 0;
        clr = 1;
        d5 = d3 = d1 = 1'b0;
        d4 = d2 = d0 = 1'b1;

        #4 clr = 0; ld = 1; clk = 0;
        #2 clk = 1; 
        #4 ld = 0;

        #80 $finish;
    end

    always
    #2 clk = ~clk;

    always @ (negedge clk)
    begin
        $display(" %b %b %b %b %b %b", a, b, c, d, e, f);
    end
endmodule // test