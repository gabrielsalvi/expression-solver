module mux 
(
    input [1:0] select,
    input signed [15:0] a,
    input signed [15:0] b,
    input signed [15:0] c,
    input signed [15:0] d,
    output signed [15:0] out
);

    assign out = select == 2'b00 ? a : select == 2'b01 ? b : select == 2'b10 ? c : d;

endmodule