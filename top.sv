module top(

    input  logic clk,
    input  logic rst,
    input  logic BTN1,
    input  logic BTN2,
    input  logic BTN3,
    output logic [15:0] LED

);

    logic inc_pulse;
    logic dec_pulse;
    logic reset_pulse;

    assign inc_pulse = BTN1;
    assign dec_pulse = BTN2;
    assign reset_pulse = BTN3;
    
    contor_binar cnt(
        .clk(clk),
        .inc(inc_pulse),
        .dec(dec_pulse),
        .reset(reset_pulse),
        .leds(LED)
    );

endmodule