module full_adder 
(
    input signed [15:0] a,
    input signed [15:0] b,
    input carry_in,
    output reg carry_out,
    output reg signed [15:0] result
);

    always @(a or b or carry_in) 
    begin
        {carry_out, result} = a + b + carry_in;
    end
endmodule