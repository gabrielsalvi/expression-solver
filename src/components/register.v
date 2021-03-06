module register
(
    input clk,
    input rst,
    input l,
    input [15:0] in,
    output reg [15:0] out
);

    always @(posedge clk)
    begin
        if (l) out <= in;
    end
endmodule