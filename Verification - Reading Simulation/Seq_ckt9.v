module top_module (
    input clk,
    input a,
    output [3:0] q );
    
    reg [3:0] count;
    
    always@(posedge clk)
        begin
            if (a)
                count = 0;
            else if(count == 4'd6)
                count = 0;
            else
                count = count + 1;
            
        end
    
    always@(*)
        begin
            case(count)
                4'd0: q = 4'd4;
                4'd1: q = 4'd5;
                4'd2: q = 4'd6;
                4'd3: q = 4'd0;
                4'd4: q = 4'd1;
                4'd5: q = 4'd2;
                4'd6: q = 4'd3;
                default: q = 4'd4;
                
            endcase
        end

endmodule
