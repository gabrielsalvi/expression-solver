`include "./components/mux.v"

module testbenchMux;

    reg [1:0] M = 2'b00;
    reg [15:0] in1 = 16'b1111111111111111;
    reg [15:0] in2 = 16'b1101111111111111;
    reg [15:0] in3 = 16'b1011111111111111;
    reg [15:0] in4 = 16'b1000111111111111;
    wire [15:0] MX; 

    mux mux0(in1, in2, in3, in4, M, MX);
    
    initial 
    begin
        $dumpvars;

        #1
        M <= 11;

        #1
        M <= 10;

        #1
        M <= 01;

        #2
        M <= 01;

        $finish;  
    end

endmodule