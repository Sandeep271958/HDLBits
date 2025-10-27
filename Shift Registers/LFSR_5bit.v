module top_module(
    input clk,
    input reset,    // Active-high synchronous reset to 5'h1
    output reg [4:0] q
); 

    wire t34, t05;
    xor xore (t05, q[0], 1'b0);
    xor xorf (t34, q[0], q[3]);
    always@(posedge clk)
        begin
            if (reset) q<=5'h1;
            else
                begin
                    q[3] <= q[4];
                    q[2] <= t34;
                    q[1] <= q[2];
                    q[0] <= q[1];
                    q[4] <= t05;

                end
            
        end
        
endmodule
