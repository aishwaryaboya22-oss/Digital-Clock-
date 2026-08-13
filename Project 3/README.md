# Digital Clock in Verilog

## Description

A simple 24-hour digital clock implemented in Verilog.

Features:
- 24-hour format (00–23)
- Minutes (00–59)
- Seconds (00–59)
- Asynchronous reset
- Compatible with Icarus Verilog and VS Code

## Files

- digital_clock.v
- digital_clock_tb.v

## Compile

```bash
iverilog -o digital_clock digital_clock.v digital_clock_tb.v
```

## Run

```bash
vvp digital_clock
```

