module mux 
(
    input [15:0] input1,
    input [15:0] input2,
    input [15:0] input3,
    input [15:0] input4,
    input [1:0] M,
    output reg [15:0] MX
);

    always @(M or input1 or input2 or input3 or input4) 
    begin
        if (M == 2'b00)
            MX = input1;
        else if (M == 2'b01)
            MX = input2;
        else if (M == 2'b10)
            MX = input3;
        else if (M == 2'b11)
            MX = input4;
    end
endmodule