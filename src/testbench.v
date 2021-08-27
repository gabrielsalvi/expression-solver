module testbench;

    `include "components/mux.v"

    reg M = 01`b0;
    reg in0 = 1111`b0;
    reg in1 = 1101`b0;
    reg in2 = 1001`b0;
    reg in3 = 1000`b0;
    wire MX;

    mux multiplexador(M, in0, in1, in2, in3, MX);

    initial 
    begin
        $dumpvars;

        $finish    
    end

endmodule