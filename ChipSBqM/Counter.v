module counter(CO,EF,FF,UP,DOWN,CLK,MR);
input UP,DOWN,CLK,MR ;

parameter H=3'b000,G=3'b001,F=3'b010,E=3'b011,D=3'b100,C=3'b101,B=3'b110,A=3'b111 ;
reg[3:0] CS ;reg[3:0] NS ;
output reg[2:0] CO ;
output reg EF,FF ;

initial
begin 
CS <= H ;
CO = 0;
EF = 1 ;
FF = 0 ;
end




always@(UP,DOWN)
begin 



case(CS)
A:if(UP)begin NS <= A ;end
else if(DOWN)begin NS <= B ; end

B: if(UP)begin NS <= A ;end
else if(DOWN)begin NS <= C ; end

C: if(UP)begin NS <= B ;end
else if(DOWN)begin NS <= D ; end

D: if(UP)begin NS <= C ;end
else if(DOWN)begin NS <= E ; end

E: if(UP)begin NS <= D ;end
else if(DOWN)begin NS <= F ; end

F: if(UP)begin NS <= E ;end
else if(DOWN)begin NS <= G ; end

G: if(UP)begin NS <= F ;end
else if(DOWN)begin NS <= H ; end

H: if(UP)begin NS <= G ;end
else if(DOWN)begin NS <= H ; end


 
endcase 

end



always@(posedge CLK)
begin
if (MR==0)begin CS <= NS ; 

 end
else begin  CS <=H ;
EF = 1 ; FF = 0 ;

 end


case(CS)
A:begin
 CO <= 7 ;
  end// 7 

B:begin  CO <= 6 ;
 end//6

C: begin  CO <= 5 ;
 end //5

D: begin  CO <= 4 ;
end //4

E:begin  CO <= 3 ;
end//3

F:begin  CO <= 2 ;
  end//2
G:begin CO <= 1 ; end //1
H: begin  CO <= 0 ;
 end
 
endcase 

if(CO == 0)begin EF = 1 ; end
	else begin EF = 0 ; end
	if(CO == 7)begin FF = 1 ; end
	else begin FF = 0 ; end
end





endmodule 