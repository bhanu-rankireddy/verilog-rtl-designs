# Half Adder Design

This project implements the Half Adder in Verilog using two modeling styles:

- Behavioral modeling
- Structural modeling

## Truth Table

| a | b | sum | carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

## Files

### RTL
- `rtl/half_adder_behavioral.v`
- `rtl/half_adder_structural.v`

### Testbenches
- `tb/tb_half_adder_behavioral.v`
- `tb/tb_half_adder_structural.v`

## Simulation Waveform

<img src="Images/halfadder_waveform.png" width="700">
