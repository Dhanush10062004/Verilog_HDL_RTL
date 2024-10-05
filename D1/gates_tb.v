module gates_tb;

 reg a, b;
 wire y1, y2, y3, y4, y5, y6; 
 integer i;

  gates dut(.a(a), .b(b), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5), .y6(y6));

   initial begin
   for (i= 0;i< 128;i =i+ 1) 
	begin
	{a, b} = i; 
	#128;
    end
    end

  initial begin
   $monitor("Time: %0t | a: %b, b: %b | y1: %b, y2: %b, y3: %b, y4: %b, y5: %b, y6: %b", $time, a, b, y1, y2, y3, y4, y5, y6);
   end

endmodule
