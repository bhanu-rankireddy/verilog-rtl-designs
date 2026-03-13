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

---

# Full Adder Design

This project implements a **1-bit Full Adder in Verilog using behavioral modeling**.

A Full Adder adds three input bits:

- `a`
- `b`
- `carry_in (Cin)`

and produces two outputs:

- `sum`
- `carry_out (Cout)`

---

## Logic Equations

The Full Adder logic is defined as:
sum = a ^ b ^ carry_in
carry_out = (a & b) | ((a ^ b) & carry_in

---

## Truth Table

| a | b | carry_in | sum | carry_out |
|---|---|----------|-----|-----------|
| 0 | 0 |    0     |  0  |     0     |
| 0 | 0 |    1     |  1  |     0     |
| 0 | 1 |    0     |  1  |     0     |
| 0 | 1 |    1     |  0  |     1     |
| 1 | 0 |    0     |  1  |     0     |
| 1 | 0 |    1     |  0  |     1     |
| 1 | 1 |    0     |  0  |     1     |
| 1 | 1 |    1     |  1  |     1     |

---

## Simulation Output

time=1000 | a=0 b=0 carry_in=0 | sum=0 carry_out=0
time=2000 | a=0 b=0 carry_in=1 | sum=1 carry_out=0
time=3000 | a=0 b=1 carry_in=0 | sum=1 carry_out=0
time=4000 | a=0 b=1 carry_in=1 | sum=0 carry_out=1
time=5000 | a=1 b=0 carry_in=0 | sum=1 carry_out=0
time=6000 | a=1 b=0 carry_in=1 | sum=0 carry_out=1
time=7000 | a=1 b=1 carry_in=0 | sum=0 carry_out=1
time=8000 | a=1 b=1 carry_in=1 | sum=1 carry_out=1


## Simulation Waveform

![Full Adder Waveform](images/fulladder_waveform.png)
