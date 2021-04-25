module SequenceDetectorMealy(din,clk,reset,y);
input din,clk,reset;
output reg y;
parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;
reg [1:0]nextState;
always @(posedge clk)
begin
if(reset)
  begin
  y = 0;
  nextState = S0;
end
else
case(nextState)
S0:
  begin
  if (din==1)
  begin
  nextState=S1;
  y=0;
  end
  else
  begin
  nextState=S0;
  y=0;
  end
  end
S1:
  begin
  if (din==0)
  begin
  nextState=S2;
  y=0;
  end
  else
  begin
  nextState=S1;
  y=0;
  end
  end
  S2:
  begin
  if (din==0)
  begin
  nextState=S3;
  y=0;
  end
  else
  begin
  nextState=S1;
  y=0;
  end
  end
S3:
  begin
  if (din==1)
  begin
  nextState=S0;
  y=1;
  end
  else
  begin
  nextState=S0;
  y=0;
  end
  end

endcase
end
endmodule
