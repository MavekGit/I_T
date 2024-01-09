 //quadra.vh

`ifndef QUADRA_VH
`define QUADRA_VH

typedef logic ck_t; // clock
typedef logic rs_t; // reset
typedef logic dv_t; // data valid

// --------------------------------------------------------------------------------
// I/O precision
// --------------------------------------------------------------------------------

// x in [0,2) -> u1.23
localparam int  X_I =  1;          //         =  1
localparam int  X_F = 23;          //         = 23
localparam int  X_W = X_I + X_F;   //  1 + 23 = 24 (u1.23)

typedef logic [X_W-1:0] x_t;

// y [-2,2) -> s2.23
localparam int  Y_I =  2;          //         =  2
localparam int  Y_F = 23;          //         = 23
localparam int  Y_W = X_I + X_F;   //  2 + 23 = 25 (s2.23)

typedef logic signed [Y_W-1:0] y_t;




// --------------------------------------------------------------------------------
// Internal precision:
// --------------------------------------------------------------------------------

// <challenge!>

typedef logic [7:0] x1_t;
typedef logic [7:0] a_t;
typedef logic [7:0] b_t;
typedef logic [7:0] c_t;
typedef logic [7:0] x2_t;
typedef logic [7:0] sq_t;


localparam int R_F = 4;

localparam int S_I = Y_I;
localparam int S_F = Y_F + R_F;  
localparam int S_W = S_I + S_F;

typedef logic signed [S_W-1:0] s_t;

`endif
