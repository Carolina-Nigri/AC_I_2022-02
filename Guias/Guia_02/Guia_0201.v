/*
Carolina Morais Nigri - 761400
*/

module Guia_0201;
    // define data
    real x = 0; // decimal
    real power2 = 1.0; // power of 2
    integer y = 7; // counter
    reg [7:0] b = 8'b0; // binary (only fraction part)
    
    // actions
    initial
    begin : main
        $display ("Guia_0201 - Tests");
        
        // item a
        $display ("\na)");
        b = 8'b01001000;
        $display ("b = 0.%b", b);
        while (y >= 0)
        begin
            power2 /= 2.0;
           
            if (b[y] == 1)
            begin
                x += power2;
            end
            
            y--;
        end // end while
        $display ("x = %f", x);

        // item b
        $display ("\nb)");
        y = 7;
        x = 0;
        power2 = 1.0;
        b = 8'b01011000;
        $display ("b = 0.%b", b);
        while (y >= 0)
        begin
            power2 /= 2.0;
           
            if (b[y] == 1)
            begin
                x += power2;
            end
            
            y--;
        end // end while
        $display ("x = %f", x);

        // item c
        $display ("\nc)");
        y = 7;
        x = 0;
        power2 = 1.0;
        b = 8'b11001000;
        $display ("b = 0.%b", b);
        while (y >= 0)
        begin
            power2 /= 2.0;
           
            if (b[y] == 1)
            begin
                x += power2;
            end
            
            y--;
        end // end while
        $display ("x = %f", x);

        // item d
        $display ("\nd)");
        y = 7;
        x = 0;
        power2 = 1.0;
        b = 8'b10011000;
        $display ("b = 0.%b", b);
        while (y >= 0)
        begin
            power2 /= 2.0;
           
            if (b[y] == 1)
            begin
                x += power2;
            end
            
            y--;
        end // end while
        x += 1'b1; // parte inteira
        $display ("x = %f", x);

        // item e
        $display ("\ne)");
        y = 7;
        x = 0;
        power2 = 1.0;
        b = 8'b10110000;
        $display ("b = 0.%b", b);
        while (y >= 0)
        begin
            power2 /= 2.0;
           
            if (b[y] == 1)
            begin
                x += power2;
            end
            
            y--;
        end // end while
        x += 2'b11; // parte inteira
        $display ("x = %f", x);
    end // main
endmodule // Guia_0201