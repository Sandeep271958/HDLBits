module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );
    
    wire [4:0]c;
    assign c[0] = cin;
    assign cout = c[4];
    genvar i;
    
    generate
        for( i =0; i < 4 ; i ++)
            begin: shsfdgds
                bcd_fadd fadd_i ( .a(a[i*4+: 4]), .b(b[i*4+: 4]), .cin(c[i]), .cout(c[i+1]), .sum(sum[i*4+: 4]));
            end
    endgenerate

endmodule
