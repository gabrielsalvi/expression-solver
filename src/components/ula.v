module ula (result, h, input1, input2);

    input h;
    input [15:0] input1;
    input [15:0] input2;
    output [15:0] result;

    always @(h or input1 or input2) 
    begin
        if (h == 1'b0) 
            result <= input1 + input2;
        else
            result <= input1 * input2; 
    end
endmodule