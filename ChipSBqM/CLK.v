
module CLOCK(CLK);
output reg CLK ;




initial begin  
CLK = 0 ;

end
always begin 
#1
CLK = ~CLK ;
end




endmodule 