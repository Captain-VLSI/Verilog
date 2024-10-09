module tb_latch;
reg d;
reg en;
reg rstn;
reg [2:0]delay;
reg [1:0]delay2;
integer i;

d_latch dl ( .d (d), 
.en (en), 
.rstn (rstn), 
.q (q)); 
//d_latch d1 ( d.(d),.en (en),.rstn (rstn),.q (q));   //instantiation

initial begin
$monitor ("[%0t] en=%0d d=%0d q=%0d",$time,en,d,q);

d<=0;
en<=0;
rstn<=0;

#10 rstn<=0;

for (i=0; i<5; i=i+1)begin
delay = $random;
delay2 = $random;
#(delay2) en <= ~en;
#(delay) d <= i;
end
end
endmodule
    
