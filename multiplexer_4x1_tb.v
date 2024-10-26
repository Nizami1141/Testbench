`timescale 1ns/1ps
module multiplexer_4x1_tb();

reg [3:0] I;
reg [1:0] S;
wire Y;

multiplexer_4x1 uut (
    .I(I),
    .S(S),
    .Y(Y)
);

initial begin
    I = 4'b0001; S = 2'b00; #10;
    $display("I=%b, S=%b => Y=%b", I, S, Y);

    I = 4'b0010; S = 2'b01; #10;
    $display("I=%b, S=%b => Y=%b", I, S, Y);

    I = 4'b0100; S = 2'b10; #10;
    $display("I=%b, S=%b => Y=%b", I, S, Y);

    I = 4'b1000; S = 2'b11; #10;
    $display("I=%b, S=%b => Y=%b", I, S, Y);

    $finish;
end
endmodule
