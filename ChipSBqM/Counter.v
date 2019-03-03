module counter(CO2,CO1,CO,UP,DOWN,CLK,MR);
input UP,DOWN,CLK,MR ;
output reg  CO2,CO1,CO ; 
parameter A=3'b000,B=3'b001,C=3'b010,D=3'b011,E=3'b100,F=3'b101,G=3'b110,H=3'b111 ;
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
else if(DOWN)begin NS <= H ; end


 
endcase 

end



always@(posedge CLK)
begin
if (MR==0)begin CS <= NS ;  end
else begin  CS <=H ; end


case(CS)
A:begin
 CO2=1 ; CO1=1 ;CO= 1; end// 7 

B:begin
 CO2= 1;CO1= 1;CO= 0;end //6

C: begin
CO2= 1; CO1= 0;CO= 1; end //5

D: begin 
CO2= 1; CO1=0 ;CO= 0;end //4

E:begin
 CO2=0 ; CO1=1 ;CO= 1;end//3

F:begin
 CO2=0 ;CO1= 1;CO= 0; end//2
G:begin
 CO2=0 ;CO1= 0;CO=1 ; end//1
H: begin
CO2=0 ; CO1=0 ;CO= 0; end
 
endcase 

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