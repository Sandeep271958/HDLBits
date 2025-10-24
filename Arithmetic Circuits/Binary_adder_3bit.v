module top_module( 
    input [2:0] a, b,
    input cin,
    output [2:0] cout,
    output [2:0] sum
);

    /*
    addr a1 (.x(a[0]), .y(b[0]), .w(cin),      .z(sum[0]), .t(cout[0]));
    addr a2 (.x(a[1]), .y(b[1]), .w(cout[0]), .z(sum[1]), .t(cout[1]));
    addr a3 (.x(a[2]), .y(b[2]), .w(cout[1]), .z(sum[2]), .t(cout[2]));
*/
    wire [3:0] c;
    assign c[0] = cin;
     
    genvar i;
    generate
        for ( i = 0 ; i < 3 ; i = i + 1)
            begin : heheheh
                addr ainst (.x(a[i]), .y(b[i]), .w(c[i]), .z(sum[i]), .t(c[i+1]));
                assign cout[i] = c[i+1];
            end
    endgenerate
                       
                       
    
endmodule

module addr(
    input x, y, w,
    output z, t
);

    assign {t, z} = x + y + w;

endmodule
