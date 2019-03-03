module counter(CO2,CO1,CO0,UP,DOWN,CLK,MR);
input UP,DOWN,CLK,MR ;
output reg  CO2,CO1,CO0 ; 
parameter A=4'b0000,B=4'b0001,C=4'b0010,D=4'b0011,E=4'b0100,F=4'b0101,G=4'b0110,H=4'b0111,I=4'b1000 ;
reg[3:0] CS ;reg[3:0] NS ;


initial
begin 
CS <= A ;
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
else if(DOWN)begin NS <= I ; end

I: if(UP)begin NS <= H ;end
else if(DOWN)begin NS <= I ; end
 
endcase 

end



always@(posedge CLK)
begin
if (MR==0)begin CS <= NS ;  end
else begin  CS <=H ; end

end

/**always@(CS)
begin

case(CS)
A: C2=1;// C1=1;C0= 1;

B: C2 = 1; //C1 = 1;C0= 0;
C: C2 = 1;// C1 = 0;C0= 1;

D: C2 = 1; //C1 =0 ;C0= 0;

E: C2 =0 ; //C1 =1 ;C0= 1;

F: C2 =0 ; //C1 = 1;C0= 0;

G: C2 =0 ; C1 = 0;C0=1 ;

H: C2 =0 ; C1 =0 ;C0= 0;
 
endcase 


end**/



endmodule 