module top_module();
    
    reg a, b, c;
    
    andgate gate_instance( .in({a,b}), .out(c));
    
    initial 
        begin
            a = 1'b0; b = 1'b0;
            #10 a = 1'b0; b = 1'b1;
            #10 a = 1'b1; b = 1'b0;
            #10 a = 1'b1; b = 1'b1;
        end

endmodule
