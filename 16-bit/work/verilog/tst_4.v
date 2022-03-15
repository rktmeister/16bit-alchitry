/*
   This file was generated automatically by Alchitry Labs version 1.2.7.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module tst_4 (
    input clk,
    input rst,
    input button,
    input error,
    output reg [15:0] seg,
    output reg [15:0] out,
    output reg [7:0] step,
    output reg v,
    output reg n,
    output reg z
  );
  
  
  
  wire [1-1:0] M_edge_out;
  reg [1-1:0] M_edge_in;
  edge_detector_11 L_edge (
    .clk(clk),
    .in(M_edge_in),
    .out(M_edge_out)
  );
  localparam BEGIN_state = 4'd0;
  localparam ADD_state = 4'd1;
  localparam SUB_state = 4'd2;
  localparam MUL_state = 4'd3;
  localparam AND_state = 4'd4;
  localparam OR_state = 4'd5;
  localparam XOR_state = 4'd6;
  localparam A_state = 4'd7;
  localparam SHL_state = 4'd8;
  localparam SHR_state = 4'd9;
  localparam SRA_state = 4'd10;
  localparam CMPEQ_state = 4'd11;
  localparam CMPLE_state = 4'd12;
  localparam CMPLT_state = 4'd13;
  localparam GOOD_state = 4'd14;
  localparam ERROR_state = 4'd15;
  
  reg [3:0] M_state_d, M_state_q = BEGIN_state;
  reg [26:0] M_timer_d, M_timer_q = 1'h0;
  reg [3:0] M_counter_d, M_counter_q = 1'h0;
  wire [16-1:0] M_addTest_out;
  wire [1-1:0] M_addTest_v;
  wire [1-1:0] M_addTest_n;
  wire [1-1:0] M_addTest_z;
  wire [1-1:0] M_addTest_true;
  wire [8-1:0] M_addTest_step;
  addTest_12 addTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .error(error),
    .out(M_addTest_out),
    .v(M_addTest_v),
    .n(M_addTest_n),
    .z(M_addTest_z),
    .true(M_addTest_true),
    .step(M_addTest_step)
  );
  wire [16-1:0] M_subTest_out;
  wire [1-1:0] M_subTest_v;
  wire [1-1:0] M_subTest_n;
  wire [1-1:0] M_subTest_z;
  wire [1-1:0] M_subTest_true;
  wire [8-1:0] M_subTest_step;
  subTest_13 subTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_subTest_out),
    .v(M_subTest_v),
    .n(M_subTest_n),
    .z(M_subTest_z),
    .true(M_subTest_true),
    .step(M_subTest_step)
  );
  wire [16-1:0] M_mulTest_out;
  wire [1-1:0] M_mulTest_true;
  wire [8-1:0] M_mulTest_step;
  mulTest_14 mulTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_mulTest_out),
    .true(M_mulTest_true),
    .step(M_mulTest_step)
  );
  wire [16-1:0] M_orTest_out;
  wire [1-1:0] M_orTest_true;
  wire [8-1:0] M_orTest_step;
  orTest_15 orTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_orTest_out),
    .true(M_orTest_true),
    .step(M_orTest_step)
  );
  wire [16-1:0] M_andTest_out;
  wire [1-1:0] M_andTest_true;
  wire [8-1:0] M_andTest_step;
  andTest_16 andTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_andTest_out),
    .true(M_andTest_true),
    .step(M_andTest_step)
  );
  wire [16-1:0] M_xorTest_out;
  wire [1-1:0] M_xorTest_true;
  wire [8-1:0] M_xorTest_step;
  xorTest_17 xorTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_xorTest_out),
    .true(M_xorTest_true),
    .step(M_xorTest_step)
  );
  wire [16-1:0] M_bolATest_out;
  wire [1-1:0] M_bolATest_true;
  wire [8-1:0] M_bolATest_step;
  bolATest_18 bolATest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_bolATest_out),
    .true(M_bolATest_true),
    .step(M_bolATest_step)
  );
  wire [16-1:0] M_shlTest_out;
  wire [1-1:0] M_shlTest_true;
  wire [8-1:0] M_shlTest_step;
  shlTest_19 shlTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_shlTest_out),
    .true(M_shlTest_true),
    .step(M_shlTest_step)
  );
  wire [16-1:0] M_shrTest_out;
  wire [1-1:0] M_shrTest_true;
  wire [8-1:0] M_shrTest_step;
  shrTest_20 shrTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_shrTest_out),
    .true(M_shrTest_true),
    .step(M_shrTest_step)
  );
  wire [16-1:0] M_sraTest_out;
  wire [1-1:0] M_sraTest_true;
  wire [8-1:0] M_sraTest_step;
  sraTest_21 sraTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_sraTest_out),
    .true(M_sraTest_true),
    .step(M_sraTest_step)
  );
  wire [16-1:0] M_cmpeqTest_out;
  wire [1-1:0] M_cmpeqTest_true;
  wire [8-1:0] M_cmpeqTest_step;
  cmpeqTest_22 cmpeqTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_cmpeqTest_out),
    .true(M_cmpeqTest_true),
    .step(M_cmpeqTest_step)
  );
  wire [16-1:0] M_cmpleTest_out;
  wire [1-1:0] M_cmpleTest_true;
  wire [8-1:0] M_cmpleTest_step;
  cmpleTest_23 cmpleTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_cmpleTest_out),
    .true(M_cmpleTest_true),
    .step(M_cmpleTest_step)
  );
  wire [16-1:0] M_cmpltTest_out;
  wire [1-1:0] M_cmpltTest_true;
  wire [8-1:0] M_cmpltTest_step;
  cmpltTest_24 cmpltTest (
    .clk(clk),
    .rst(rst),
    .button(button),
    .count(M_counter_q),
    .out(M_cmpltTest_out),
    .true(M_cmpltTest_true),
    .step(M_cmpltTest_step)
  );
  
  always @* begin
    M_state_d = M_state_q;
    M_timer_d = M_timer_q;
    M_counter_d = M_counter_q;
    
    seg = 1'h0;
    out = 1'h0;
    step = 1'h0;
    M_timer_d = M_timer_q + 1'h1;
    M_edge_in = button;
    v = 1'h0;
    n = 1'h0;
    z = 1'h0;
    
    case (M_state_q)
      BEGIN_state: begin
        seg = 16'hdefd;
        if (M_edge_out) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = ADD_state;
        end
      end
      ADD_state: begin
        out = M_addTest_out;
        step = M_addTest_step;
        seg = 13'h1bbb;
        v = M_addTest_v;
        n = M_addTest_n;
        z = M_addTest_z;
        if (M_addTest_true == 1'h1) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = SUB_state;
        end
      end
      SUB_state: begin
        out = M_subTest_out;
        step = M_subTest_step;
        seg = 14'h2bbb;
        v = M_addTest_v;
        n = M_addTest_n;
        z = M_addTest_z;
        if (M_subTest_true == 1'h1) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = MUL_state;
        end
      end
      MUL_state: begin
        out = M_mulTest_out;
        step = M_mulTest_step;
        seg = 14'h3bbb;
        if (M_mulTest_true == 1'h1) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = OR_state;
        end
      end
      OR_state: begin
        out = M_orTest_out;
        step = M_orTest_step;
        seg = 15'h4bbb;
        if (M_orTest_true == 1'h1) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = AND_state;
        end
      end
      AND_state: begin
        out = M_andTest_out;
        step = M_andTest_step;
        seg = 15'h5bbb;
        if (M_andTest_true) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = XOR_state;
        end
      end
      XOR_state: begin
        out = M_xorTest_out;
        step = M_xorTest_step;
        seg = 15'h6bbb;
        if (M_xorTest_true) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = A_state;
        end
      end
      A_state: begin
        out = M_bolATest_out;
        step = M_bolATest_step;
        seg = 15'h7bbb;
        if (M_bolATest_true) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = SHL_state;
        end
      end
      SHL_state: begin
        out = M_shlTest_out;
        step = M_shlTest_step;
        seg = 16'h8bbb;
        if (M_shlTest_true == 1'h1) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = SHR_state;
        end
      end
      SHR_state: begin
        out = M_shrTest_out;
        step = M_shrTest_step;
        seg = 16'h9bbb;
        if (M_shrTest_true == 1'h1) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = SRA_state;
        end
      end
      SRA_state: begin
        out = M_sraTest_out;
        step = M_sraTest_step;
        seg = 16'h10bb;
        if (M_sraTest_true) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = CMPEQ_state;
        end
      end
      CMPEQ_state: begin
        out = M_cmpeqTest_out;
        step = M_cmpeqTest_step;
        seg = 16'h11bb;
        if (M_cmpeqTest_true == 1'h1) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = CMPLE_state;
        end
      end
      CMPLE_state: begin
        out = M_cmpleTest_out;
        step = M_cmpleTest_step;
        seg = 16'h12bb;
        if (M_cmpleTest_true == 1'h1) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = CMPLT_state;
        end
      end
      CMPLT_state: begin
        out = M_cmpltTest_out;
        step = M_cmpltTest_step;
        seg = 16'h13bb;
        if (M_cmpltTest_true) begin
          M_counter_d = M_counter_q + 1'h1;
          M_state_d = GOOD_state;
        end
      end
      GOOD_state: begin
        seg = 16'habbc;
      end
      ERROR_state: begin
        seg = 16'hbbbb;
      end
    endcase
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_timer_q <= 1'h0;
      M_counter_q <= 1'h0;
      M_state_q <= 1'h0;
    end else begin
      M_timer_q <= M_timer_d;
      M_counter_q <= M_counter_d;
      M_state_q <= M_state_d;
    end
  end
  
endmodule
