# 2x4 Decoder (Active High)
This project implements a **2-to-4 Decoder** in Verilog using behavioral modeling and verifies it using ModelSim.

A decoder converts binary input signals into one of many output lines. Only one output is HIGH at a time based on the input combination when enable is active.

---

## Inputs
- `x1` → input (MSB)
- `x0` → input (LSB)
- `E`  → enable signal

## Outputs
- `y0`
- `y1`
- `y2`
- `y3`

---

## Truth Table

| E | x1 | x0 | y0 | y1 | y2 | y3 |
|---|----|----|----|----|----|----|
| 1 | 0  | 0  | 1  | 0  | 0  | 0  |
| 1 | 0  | 1  | 0  | 1  | 0  | 0  |
| 1 | 1  | 0  | 0  | 0  | 1  | 0  |
| 1 | 1  | 1  | 0  | 0  | 0  | 1  |
| 0 | X  | X  | 0  | 0  | 0  | 0  |

---

## Simulation Output

```text
time=0    | x0=x x1=x E=1 | y0=x y1=x y2=x y3=x
time=1000 | x0=0 x1=0 E=1 | y0=1 y1=0 y2=0 y3=0
time=2000 | x0=0 x1=1 E=1 | y0=0 y1=1 y2=0 y3=0
time=3000 | x0=1 x1=0 E=1 | y0=0 y1=0 y2=1 y3=0
time=4000 | x0=1 x1=1 E=1 | y0=0 y1=0 y2=0 y3=1
time=5000 | x0=1 x1=1 E=0 | y0=0 y1=0 y2=0 y3=0
time=6000 | x0=0 x1=0 E=0 | y0=0 y1=0 y2=0 y3=0
time=7000 | x0=0 x1=1 E=0 | y0=0 y1=0 y2=0 y3=0
time=8000 | x0=1 x1=0 E=0 | y0=0 y1=0 y2=0 y3=0
time=9000 | x0=1 x1=1 E=0 | y0=0 y1=0 y2=0 y3=0
```
## Simulation Waveform
<img src="Images/Decoder2x4_waveform.png" width="700">
