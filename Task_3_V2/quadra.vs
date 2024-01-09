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

	// parameters for quadratic polynomial
	a_t   a;
	b_t   b;
	c_t   c;
	x2_t x2;
	sq_t sq;
	
	
	// get variables for quadratic polynomial
	lut lut_instance (
			.x1(x),
			.a(a),
			.b(b),
			.c(c));

	// calculation of power of x2
	square square_instance (
			.x2(x2),
			.sq(sq));
	 
	 
	always_comb
		begin
	 
			// calculation of the quadratic polynomial
			y = a + b*x2 + c*sq;
       
		end
	 

	 
endmodule
