module flipflops_tb;
    reg a, b, clk;
    wire q_jk, q_sr, q_d, q_t;

    flipflops dut (.a(a), .b(b), .clk(clk), .q_jk(q_jk), .q_sr(q_sr), .q_d(q_d), .q_t(q_t));

    
    always #10 clk = ~clk;

    
    initial begin
        
        clk = 1'b0;  
        a = 1'b0; 
        b = 1'b0;
        #20 a = 1'b0; b = 1'b1; 
        #20 a = 1'b1; b = 1'b0;  
        #20 a = 1'b1; b = 1'b1;  

        #100;
        
    end
endmodule
