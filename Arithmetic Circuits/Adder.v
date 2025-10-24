module top_module (
    input [3:0] x,
    input [3:0] y, 
    output [4:0] sum);

    wire [4:0] c;
    
    assign c[0] = 0;
    assign sum[4] = c[4];
    genvar i;
    
    generate
        for (i = 0 ; i < 4 ; i ++ )
            begin : hwierh
                fa fa_i( .a(x[i]) , .b(y[i]) , .cin(c[i]) , .c(c[i+1]) , .s(sum[i]));
            end
    endgenerate
endmodule

module fa(
    input a, b, cin,
    output c, s);
    assign {c,s} = a + b + cin;
endmodule
