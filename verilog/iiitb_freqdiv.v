module iiitb_freqdiv(en,clkin,n,clkout);

input clkin;
input [3:0]n;
input en;
reg [3:0]pc;
reg [3:0]nc;
output clkout;

always@(posedge clkin)
begin
if(en==1)
begin
  if(pc<(n-1))
	pc<=pc+1;
  else
	pc<=0;
end
else
 pc<=0;
end

always@(negedge clkin)
begin
if(en==1)
begin
  if(nc<(n-1))
	nc<=nc+1;
  else
	nc<=0;
end
else
  nc<=0;
end

assign clkout=(n%2==0)?(pc<n/2):((pc<(n/2)+1)&&(nc<(n/2)+1));
endmodule
