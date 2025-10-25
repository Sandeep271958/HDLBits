module top_module (
    input clk,
    input d,
    output reg q
);

    reg q_rise, q_fall;

    // Rising-edge flip-flop
    always @(posedge clk) begin
        q_rise <= d;
    end

    // Falling-edge flip-flop
    always @(negedge clk) begin
        q_fall <= d;
    end

    // Multiplexer selects which flip-flop to use
    always @(*) begin
        if (clk)
            q = q_rise;  // during high phase, use rising-edge sampled value
        else
            q = q_fall;  // during low phase, use falling-edge sampled value
    end

endmodule
