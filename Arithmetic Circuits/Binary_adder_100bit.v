module top_module( 
    input [99:0] a, b,
    input cin,
    output cout,
    output [99:0] sum );
    
    /*
    wire [100:0] c;
    assign c[0] = cin;
    assign cout = c[100];
    
    genvar i;
    generate
        for(i = 0; i < 100 ; i++)
            begin: kuhugwrg
                fa fa_i ( .x(a[i]), .y(b[i]), .c(c[i]), .w(c[i+1]), .z(sum[i]));
            end
    endgenerate 
    */
    
    assign {cout, sum} = a + b + cin;

endmodule
/*
module fa(
    input x, y, c,
    output w,z);
    
    assign {w,z} = x+y+c;
endmodule
*/
