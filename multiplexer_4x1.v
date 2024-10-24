module multiplexer_4x1(
input [3:0] I,
input [1:0] S,
output reg Y
);
always @(I [3:0])
begin
case (S[1:0])
2'b00: Y = I[0];
2'b01: Y = I[1];
2'b10: Y = I[2];
2'b11: Y = I[3];
endcase
end
endmodule
