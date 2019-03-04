
module SENSOR  (output reg  Z, input X,input CLK,input MR );

parameter A=1'b0 , B=1'b1 ;
reg CS ,NS ; 

initial begin 

CS = A ;
Z = 0 ;
end 

always@(X,CS)begin
case(CS)
A:if(X==0)begin NS=B ;end
else begin NS=A ;end
B:if(X==0)begin NS=B ;end
else begin NS=A ;end
endcase
end

always@(posedge CLK)begin
if(MR)begin
CS=A; Z=1 ;end
else begin CS =NS ; end 

case(CS)
A: Z =0 ;
B: Z=1 ;



endcase
end
endmodule 