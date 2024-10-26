`timescale 1ns/1ps

module tb_decoder_2x4();

    reg [1:0] A;
    wire [3:0] D;

    decoder_2x4 dut (
        .A(A),
        .D(D)
    );

    initial begin
        A = 2'b00; #10;  
        A = 2'b01; #10; 
        A = 2'b10; #10;  
        A = 2'b11; #10;  
        A = 2'bxx; #10;
        $finish;
    end
endmodule
