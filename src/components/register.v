module register
(
    input clk,
    input rst,
    input l,
    input [15:0] in,
    output reg [15:0] out
);

    always @(posedge clk or posedge rst)
    begin
        if (l)
            out <= in;
        
        if (rst)
            out <= 16'b0000000000000000;
    end
endmodule