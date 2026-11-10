`timescale 1ns / 1ps

module d_flipflop(
    input clk, 
    input data,
    input reset,
    output reg Q, notQ
    );
    
    initial begin
        Q <= 0;
        notQ <= 1;
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 0;
            notQ <= 1;
        end
        else begin
            Q <= data;
            notQ <= ~data;
        end
    end
    
endmodule
