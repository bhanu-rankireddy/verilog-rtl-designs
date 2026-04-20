# Digital Design Verilog Projects

This repository contains a collection of RTL designs implemented in Verilog along with corresponding testbenches and simulation results. The goal is to build a strong foundation in digital design concepts and hardware modeling.

---

## Tools Used

* ModelSim – Simulation and waveform analysis
* Quartus Prime – Synthesis and FPGA design

---

## Project Structure

rtl/ → Verilog design modules
Each folder contains:

* RTL design (.v)
* Testbench (tb_*.v)
* README (description + results)
* Waveforms (images)

---

## Implemented Modules

### Combinational Logic

* Half Adder (Behavioral, Structural)
* Full Adder (Behavioral)
* Multiplexers (2x1, 4x1)
* Demultiplexers (1x2, 1x4)
* Decoders (2x4 active high/low, 3x8)
* ALU (4-bit)

### Sequential Logic

* D Flip-Flop (Synchronous & Asynchronous)
* Counters (4-bit synchronous, up/down)
* Registers (4-bit, SISO)

### Memory / Buffering

* FIFO (First-In-First-Out)

  * Parameterized design
  * Read/Write control logic
  * Full and Empty flag generation
  * Simulation waveform included

---

## Simulation

All modules are verified using ModelSim.
Waveforms are included in respective folders.

---

## Learning Outcomes

* RTL design using Verilog
* Understanding of combinational and sequential circuits
* FIFO design and data buffering concepts
* Writing and verifying testbenches
* Debugging using waveform analysis

---

## Future Work

* UART with FIFO integration
* SPI controller
* Advanced FIFO (pointer-based design)

---

## Author

Bhanu Rankireddy
GitHub: https://github.com/bhanu-rankireddy
