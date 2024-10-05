module gates(a, b, y1, y2, y3, y4, y5, y6);

    input a, b;
    output y1, y2, y3, y4, y5, y6;

    annd a1(a, b, y1);
    oor a2(a, b, y2);
    xoor a3(a, b, y3);
    naand a4(a, b, y4);
    noor a5(a, b, y5);
    xnoor a6(a, b, y6);

endmodule

//AND
module annd(a, b, y1);
    input a, b;
    output y1;
    assign y1 = a & b; 
endmodule 

//OR 
module oor(a, b, y2);
    input a, b;
    output y2;
    assign y2 = a | b; 
endmodule

//XOR
module xoor(a, b, y3);
    input a, b;
    output y3;
    assign y3 = a ^ b;
endmodule 

//NAND
module naand(a, b, y4);
    input a, b;
    output y4;
    assign y4 = ~(a & b);
endmodule 

//NOR
module noor(a, b, y5);
    input a, b;
    output y5;
    assign y5 = ~(a | b); 
endmodule 

//XNOR
module xnoor(a, b, y6);
    input a, b;
    output y6;
    assign y6 = ~(a ^ b); 
endmodule
