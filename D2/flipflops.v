module flipflops(a,b,clk,q_jk,q_sr,q_d,q_t);
	input a,b,clk;
	output q_jk, q_sr, q_d, q_t;

	jk_ff a1(a,b,clk,q_jk);
	sr_ff a2(a,b,clk,q_sr);
	d_ff a3(a,clk,q_d);
	t_ff a4(a,clk,q_t);

endmodule


// JK FF

module jk_ff(j,k,clk,q);
input j,k,clk;
output reg q;

always@(posedge clk)
begin
case({j,k})
	2'b00:
		q=q;
	2'b01:
		q=0;
	2'b10:
		q=1;
	2'b11:
		q=~q;
endcase	
end
endmodule 


// SR FF
module sr_ff(s,r,clk,q);
	input s,r,clk;
	output reg q;

	always@(posedge clk)
	begin
	case({s,r})
		2'b00:
			q=q;
		2'b01:
			q=0;
		2'b10:
			q=1;
		2'b11:
			q= 1'bZ;
	endcase
	end
endmodule 


// D FF
module d_ff(d,clk,q);
	input d,clk;
	output reg q;

	always@(posedge clk)
	begin
	case(d)
		1'b0:
			q=0;
		1'b1:
			q=1;
	endcase
	end
endmodule


// T FF
module t_ff(t,clk,q);
	input t,clk;
	output reg q;

	always@(posedge clk)
	begin
	case(t)
		1'b0:
			q=0;
		1'b1:
			q=~q;
	endcase
	end
endmodule

