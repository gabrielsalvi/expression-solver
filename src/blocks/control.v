module control (
    input clk,
    input rst,
    input start,
    output reg LX,
    output reg LS,
    output reg LH,
    output reg H,
    output reg [1:0] M0,
    output reg [1:0] M1,
    output reg [1:0] M2,
    output reg completed
);

    parameter A = 3'b000, B = 3'b001, C = 3'b010, D = 3'b011, E = 3'b100, F = 3'b101, G = 3'b110, HH = 3'b111;
    reg [2:0] state = A;
    
    always @(posedge clk or rst) 
    begin
        if (rst) state <= A;
        else begin
            case (state)
                A : begin
                    LX <= 1'b0;
                    M0 <= 2'b00;
                    M1 <= 2'b00;
                    M2 <= 2'b00;
                    H <= 1'b0;
                    LS <= 1'b0;
                    LH <= 1'b0;
                    completed <= 1'b0;

                    if (start == 1'b1) state <= B;
                end

                B : begin
                    LX <= 1'b1;
                    M1 <= 2'b01;
                    H <= 1'b1;

                    state <= C;
                end

                C : begin
                    LX <= 1'b0;
                    LS <= 1'b1;

                    state <= D;
                end

                D : begin
                    M0 <= 2'b01;
                    M1 <= 2'b00;
                    M2 <= 2'b10;
                    LS <= 1'b0;
                    LH <= 1'b1;

                    state <= E;
                end

                E : begin
                    M0 <= 2'b10;
                    M2 <= 2'b00;
                    LS <= 1'b1;
                    LH <= 1'b0;

                    state <= F;
                end
                
                F : begin
                    M1 <= 2'b11;
                    M2 <= 2'b10;
                    H <= 1'b0;
                    LS <= 1'b0;
                    LH <= 1'b1;

                    state <= G;
                end

                G : begin
                    M0 <= 2'b11;
                    M1 <= 2'b00;
                    LS <= 1'b1;
                    LH <= 1'b0;

                    state <= HH;
                end

                HH : begin
                    LS <= 1'b0;
                    completed <= 1'b1;
                end
            endcase
        end
    end
endmodule