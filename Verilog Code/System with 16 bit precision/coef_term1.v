////////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Institution   : Bandung Institute of Technology
// Engineer      : Jhonson Lee
//
// Create Date   : 11/14/2017 
// Design Name   : Lookup Table for First Term Coeficient in MacClaurin Series
// Module Name   : coef_term1
// Project Name  : LSI Design Contest in Okinawa 2018
// Target Devices: Sigmoid Function
// Tool versions : FPGA
//
// Description: 
// 		Providing value term 1 of MacClaurin Series with respect to input segmentation
// 
// Input:
//  	in : 3 bit unsigned : control signal
//
// Output:
//  	out : 16 bit signed : Term 1 Coeficient for MacClaurin Series 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Purely combinational derived using Karnaugh Map
//
///////////////////////////////////////////////////////////////////////////////////////////////////////

module coef_term1(in, out);

parameter t01 = 16'b0000_0010_0000_0000 ;
parameter t12 = 16'b0000_0011_0100_0101 ;
parameter t23 = 16'b0000_0011_1011_0010 ;
parameter t34 = 16'b0000_0011_1110_0001 ;
parameter t46 = 16'b0000_0011_1111_1001 ;
parameter t00 = 16'b0000_0100_0000_0000 ;


input [2:0] in;
output reg [15:0] out;

always@(in)
begin
  case (in)
    0 : out = t01;
	1 : out = t12;
	2 : out = t23;
	3 : out = t34;
	4 : out = t46;
	5 : out = t46;
	default : out = t00;
  endcase
end

endmodule
