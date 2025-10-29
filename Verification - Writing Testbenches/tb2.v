module top_module();
    
    reg in1, clk1;
    reg [2:0] s1;
    wire c1;
    
    q7 wtrt( .clk(clk1), .in(in1), .s(s1), .out(c1));
    
    
    
    initial
        begin
           clk1 = 1'b0;
            forever #5 clk1 = ~clk1;
        end
    
    initial
        begin
            in1 = 1'b0;
            #20 in1 = 1'b1;
            #10 in1 = 1'b0;
            #10 in1 = 1'b1;
            #30 in1 = 1'b0;
            
        end
    
    initial
        begin
            s1 = 3'd2;
            #10 s1 = 3'd6;
            #10 s1 = 3'd2;
            #10 s1 = 3'd7;
            #10 s1 = 3'd0;

        end

endmodule
