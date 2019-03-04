module SENSORTESTBENCH;


reg CLK,IN,MR;
wire OUT ;
SENSOR S1(OUT,IN,CLK,MR);
initial begin 



$monitor("%d %d %d \n",MR,IN,OUT) ;
CLK = 0 ;
#100
MR = 0; 
IN = 0;
#100
IN = 1;
#100
IN = 0;
#100
IN = 1;#100
IN = 0;
#100
IN = 1;#100
IN = 0;
#100
IN = 1;
end

always
 begin
#1
CLK=~CLK ;

end



endmodule
