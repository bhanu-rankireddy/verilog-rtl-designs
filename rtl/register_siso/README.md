# 4-Bit SISO Shift Register (Serial-In Serial-Out)

This project implements a **4-bit Serial-In Serial-Out (SISO) Shift Register** in Verilog using behavioral modeling with a synchronous active-high reset.

---

## Inputs
- `si` → serial input  
- `clk` → clock  
- `reset` → synchronous reset  

## Outputs
- `so` → serial output  

---

## Operation

- On every **posedge clk**:
  - if `reset = 1` → register = `0000`
  - else → shift left and insert new bit

```verilog
sio <= {sio[2:0], si};
assign so = sio[3];

Concept
Data enters one bit at a time
Data shifts left every clock
Output comes from MSB (after delay)

Example shifting:
0000 → 0001 → 0010 → 0101 → 1011
```
## Simulation Output
time=0,| si=0,clk=0,reset=1,|so=x
time=5000,| si=0,clk=1,reset=1,|so=0
time=10000,| si=0,clk=0,reset=0,|so=0
time=15000,| si=0,clk=1,reset=0,|so=0
time=20000,| si=1,clk=0,reset=0,|so=0
time=25000,| si=1,clk=1,reset=0,|so=0
time=30000,| si=0,clk=0,reset=0,|so=0
time=35000,| si=0,clk=1,reset=0,|so=0
time=40000,| si=1,clk=0,reset=0,|so=0
time=45000,| si=1,clk=1,reset=0,|so=0
time=50000,| si=1,clk=0,reset=0,|so=0
time=55000,| si=1,clk=1,reset=0,|so=1
time=60000,| si=1,clk=0,reset=0,|so=1
time=65000,| si=1,clk=1,reset=0,|so=0

## Simulation Waveform
<img src="images/register_sisi.png" width="700">
