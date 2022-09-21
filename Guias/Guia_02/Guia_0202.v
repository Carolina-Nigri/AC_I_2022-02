/*
Carolina Morais Nigri - 761400
*/

module Guia_0202;
    // define data
    real x = 0.0; // decimal
    integer y = 7 ; // counter
    reg [7:0] b = 0 ; // binary
   
    // actions
    initial
    begin : main
        $display ("Guia_0202 - Tests");

        // item a
        $display ("\na)");        
        x = 0.125;
        $display ("x = %f", x);
        while (x > 0 && y >= 0)
        begin
            if (x*2 >= 1)
            begin
                b[y] = 1;
                x = x*2.0 - 1.0;
            end
            else
            begin
                b[y] = 0;
                x = x*2.0;
            end // end if

            y--;
        end // end while
        $display ("b = 0.%8b", b);

        // item b
        $display ("\nb)");        
        x = 0.625;
        y = 7;
        b = 0;
        $display ("x = %f", x);
        while (x > 0 && y >= 0)
        begin
            if (x*2 >= 1)
            begin
                b[y] = 1;
                x = x*2.0 - 1.0;
            end
            else
            begin
                b[y] = 0;
                x = x*2.0;
            end // end if

            y--;
        end // end while
        $display ("b = 0.%8b", b);

        // item c
        $display ("\nc)");        
        x = 0.03125;
        y = 7;
        b = 0;
        $display ("x = %f", x);
        while (x > 0 && y >= 0)
        begin
            if (x*2 >= 1)
            begin
                b[y] = 1;
                x = x*2.0 - 1.0;
            end
            else
            begin
                b[y] = 0;
                x = x*2.0;
            end // end if

            y--;
        end // end while
        $display ("b = %b.%8b", 2.0, b);

        // item d
        $display ("\nd)");        
        x = 0.25;
        y = 7;
        b = 0;
        $display ("x = %f", x);
        while (x > 0 && y >= 0)
        begin
            if (x*2 >= 1)
            begin
                b[y] = 1;
                x = x*2.0 - 1.0;
            end
            else
            begin
                b[y] = 0;
                x = x*2.0;
            end // end if

            y--;
        end // end while
        $display ("b = %b.%8b", 3.0, b);

        // item e
        $display ("\ne)");        
        x = 0.875;
        y = 7;
        b = 0;
        $display ("x = %f", x);
        while (x > 0 && y >= 0)
        begin
            if (x*2 >= 1)
            begin
                b[y] = 1;
                x = x*2.0 - 1.0;
            end
            else
            begin
                b[y] = 0;
                x = x*2.0;
            end // end if

            y--;
        end // end while
        $display ("b = %b.%8b", 11.0, b);
    end // main
endmodule // Guia_0202