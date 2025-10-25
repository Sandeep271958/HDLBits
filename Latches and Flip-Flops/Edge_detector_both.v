module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    genvar i;
    generate
        for(i = 0; i <8 ; i ++)
            begin: dsgsgd
                ed ed_i (.clk(clk), .in(in[i]), .pedge(anyedge[i]));
            end
    endgenerate

endmodule



module ed(
    input clk,
    input in,
    output pedge);
    
    reg r;
    always@(posedge clk)
        begin
        	r<=in;
            pedge = r ^ in;
        end
    
    
        
    
endmodule
