module tb_dff;
reg clk;
reg rstn;
reg d;
reg [2:0]delay;

d_ff dff1 (.clk(clk),.rstn(rstn),.d(d),.q(q));

//generate clock
always #10 clk=~clk;

//testcase
/*initial begin
clk <= 0;
d <= 0;
rstn <= 0;

#15 d <= 1;
#10 rstn <= 1;

//for (int i = 0; i<5; i=i+) begin
for (i = 0; i < 5; i=i+1) begin
delay $random;
#delay d<=i;
end
end
endmodule*/

initial
begin // reset and clock initiallization

 clk=0; rstn = 1;
 
 end
 initial 
 begin  // out of reset
    #6 rstn=0;
	d=0;
	end
	initial #50 rstn=1;
	
initial 
begin 
#25 d=1;
#10 d=0;
#15 d=1;
end
initial #500 $finish;

endmodule
