module top_module(
    input clk,
    input load,
    input [1:0] ena,
    input [99:0] data,
    output reg [99:0] q
);
    always @(posedge clk) begin
        if (load)
            q <= data;                               // Load new data
        else begin
            case (ena)
                2'b01: q <= {q[0], q[99:1]};         // Rotate RIGHT
                2'b10: q <= {q[98:0], q[99]};        // Rotate LEFT
                default: q <= q;                     // No change
            endcase
        end
    end
endmodule
