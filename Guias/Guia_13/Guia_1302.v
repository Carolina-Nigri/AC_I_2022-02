// Carolina Morais Nigri - 761400

module jkff ( output q, output qnot,
              input j, input k,
              input clk, input preset, input clear );
    
    reg q, qnot;

    always @( posedge clk or preset or clear )
    begin
        if ( clear ) 
        begin 
            q <= 0; qnot <= 1; 
        end
        else
            if ( preset ) 
            begin 
                q <= 1; qnot <= 0; 
            end
        else
            if ( j & ~k ) 
            begin 
                q <= 1; qnot <= 0; 
            end
        else
            if ( ~j & k ) 
            begin 
                q <= 0; qnot <= 1; 
            end
        else
            if ( j & k )
            begin 
                q <= ~q; qnot <= ~qnot; 
            end
    end
endmodule // jkff

module as_up ( output[5:0] q, input x, 
               input clr, input clk, input pr );
    wire[5:0] qnot;

    jkff JK1 ( q[5], qnot[5], x, x, clk, pr, clr );
    jkff JK2 ( q[4], qnot[4], x, x, qnot[5], pr, clr );
    jkff JK3 ( q[3], qnot[3], x, x, qnot[4], pr, clr );
    jkff JK4 ( q[2], qnot[2], x, x, qnot[3], pr, clr );
    jkff JK5 ( q[1], qnot[1], x, x, qnot[2], pr, clr );
    jkff JK6 ( q[0], qnot[0], x, x, qnot[1], pr, clr );
endmodule // as_up