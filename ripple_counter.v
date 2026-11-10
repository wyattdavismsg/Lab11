module ripple_counter(
    input clk,
    input reset,
    output [2:0] Q
);

    t_flipflop rc1 (
        .T(1'b1),
        .clk(clk),
        .reset(reset),
        .Q(Q[0]),
        .notQ()
    );

    t_flipflop rc2 (
        .T(Q[0]),
        .clk(clk),
        .reset(reset),
        .Q(Q[1]),
        .notQ()
    );

    t_flipflop rc3 (
        .T(Q[0] & Q[1]),
        .clk(clk),
        .reset(reset),
        .Q(Q[2]),
        .notQ()
    );

endmodule