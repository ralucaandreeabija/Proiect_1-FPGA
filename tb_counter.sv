`timescale 1ns/1ps

module tb_counter;

    logic clk;
    logic rst;
    logic BTN1;
    logic BTN2;
    logic BTN3;
    logic [15:0] LED;
   
    initial clk = 0;
    always #5 clk = ~clk;
    
    contor_binar dut(
    .clk(clk),
    .inc(BTN1),
    .dec(BTN2),
    .reset(rst || BTN3),
    .leds(LED)

);

    initial begin

        rst = 1;

        BTN1 = 0;
        BTN2 = 0;
        BTN3 = 0;

        #50;
        rst = 0;
    
        #50;
        BTN1 = 1;
        #100;
        BTN1 = 0;

        #200;
        BTN1 = 1;
        #100;
        BTN1 = 0;

        #200;
        BTN2 = 1;
        #100;
        BTN2 = 0;

        #200;
        BTN3 = 1;
        #100;
        BTN3 = 0;

        #1000;

        $finish;

    end

endmodule