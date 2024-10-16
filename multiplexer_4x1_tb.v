`timescale 1ns/1ps
module multiplexer_4x1_tb();

reg [3:0] I; // 4 data inputs for the multiplexer
reg [1:0] S; // 2 select lines
wire Y;      // Output of the multiplexer

// Instantiate the multiplexer (replace 'multiplexer_4x1' with your module name)
multiplexer_4x1 uut (
    .I(I),
    .S(S),
    .Y(Y)
);

initial begin
    // Test case 1
    I = 4'b0001; // Input data
    S = 2'b00;   // Select line
    #10; // Wait for 10ns
    $display("I=%b, S=%b => Y=%b", I, S, Y);

    // Test case 2
    I = 4'b0010; 
    S = 2'b01; 
    #10; 
    $display("I=%b, S=%b => Y=%b", I, S, Y);

    // Test case 3
    I = 4'b0100; 
    S = 2'b10; 
    #10; 
    $display("I=%b, S=%b => Y=%b", I, S, Y);

    // Test case 4
    I = 4'b1000; 
    S = 2'b11; 
    #10; 
    $display("I=%b, S=%b => Y=%b", I, S, Y);

    // End simulation
    $finish;
end
endmodule
