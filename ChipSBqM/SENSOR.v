
module SENSOR  (output reg  z, input x,input CLK,input MR );
reg currentstate ,nextstate ;
parameter a=1,b=0;



always  @(x,currentstate)

begin

z= currentstate | x ; 
case (currentstate)
 
a: if(x==0)begin nextstate =b  ; end
else begin nextstate =a ; end

b: if(x==0)begin nextstate =b  ; end
else begin nextstate = a ; end
endcase
end 

always @(posedge CLK )
begin
if (MR ==1)  //where reset is active low 
begin nextstate=a ;	end
else begin currentstate <= nextstate ;	end

end
endmodule