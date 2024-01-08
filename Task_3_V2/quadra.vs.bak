//
// Quadratic polynomial:  f(x) = a + b*x2 + c*(x2^2)
//

`include "quadra.vh"

module quadra
(
   // <challenge>
	 
	input  x_t  x,
	output y_t  y

	 
);


   // <challenge>    

	a_t   a;
	b_t   b;
	c_t   c;
	x2_t x2;
	sq_t sq;
	
	lut lut_instance (
			.x1(x),
			.a(a),
			.b(b),
			.c(c));

		  
	square square_instance (
			.x2(x2),
			.sq(sq));
	 
	 
	always_comb
		begin
	 
			y = a + b*x2 + c*sq;
       
		end
	 

	 
endmodule
