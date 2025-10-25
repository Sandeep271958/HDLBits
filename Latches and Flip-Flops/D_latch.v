module top_module (
    input d,
    input ena,
    output reg q
);

    always @(*) begin
        if (ena)
            q = d;  // latch is transparent when ena=1
        // else retain previous value (implicit)
    end

endmodule

