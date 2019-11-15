# Adder-subtractor

![adder-subtractor](https://user-images.githubusercontent.com/30231731/68924289-c9919580-07c3-11ea-8735-e688dfd3f349.png)

## Description

This is a 4-bit ripple-carry [adder-subtractor](https://en.wikipedia.org/wiki/Adder-subtractor) circuit by Verilog HDL.

- input: `A[3..0]`, `B[3..0]`
- input: `SUB`
	- 0: add; 1: subtract
- input: `U`
	- 0: signed; 1: unsigned
- output: `S[3..0]`
- output: `V`
	- 0: no overflow; 1: overflow

The development enviroment is Quartus II.

## License

[MIT License](LICENSE)
