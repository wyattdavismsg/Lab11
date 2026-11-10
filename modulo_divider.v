module modulo_divider(
    input clk,
    input reset,
    output reg [2:0] state,
    output reg out
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            state <= 3'b000;
            out   <= 1'b0;
        end else if (state == 3'b101) begin
            state <= 3'b000;
            out   <= ~out;   // toggles every 6 clocks = divide by 12
        end else begin
            state <= state + 1'b1;
        end
    end

endmodule