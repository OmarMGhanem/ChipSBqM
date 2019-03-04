module omarg;
reg[2:0] x ;
reg[2:0] y ;
reg[5:0] z ;


initial begin
x = 011 ;
y = 110 ;
z[5:3] =x ;
z[2:0] = y ;
end



endmodule
