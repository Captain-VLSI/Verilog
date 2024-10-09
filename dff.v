module d_ff(input d,
            input rstn,
            input clk,
            output reg q);

//always @(d or rstn or clk);
always @(posedge clk or negedge rstn)
if(!rstn)
    q<=0;
    else
        q<=d;
endmodule        
