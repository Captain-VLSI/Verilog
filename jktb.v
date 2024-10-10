module tb_jk;
reg j;
reg k;
reg clk;

always #5 clk=~clk; //clock generation

jkff f1 (.j(j),.k(k),.clk(clk),.q(q));

initial begin

j<=0;
k<=0;

#5 j<=0;
   k<=1;

#10 j<=1;
    k<=0;

#15 j<=1;
    k<=1;

#20 $finish;
end

initial begin
       $monitor("j=%0d,k=%0d,q=%0d",j,k,q);
end
endmodule
