# Collatz-Ruelle Lean 4 Formalization

Formal verification of spectral theorems for the 2-adic Ruelle transfer operator.

## Build
```bash
lake exe cache get
lake build
```

## Environment
- Lean v4.29.0-rc4
- Mathlib4 commit: 9f2706cbfe275b9c73e69e6520aac93a412f354e
- Build: completed successfully (1528 jobs)

## Theorems
- `ruelle_is_triangular`: verified without sorry
- `ruelle_degree_and_leading`: structural sorry
- `leading_coeff_decay`: structural sorry

## Paper
Bautista, B. (2026). Spectral Triviality of the 2-adic Ruelle Transfer Operator for the Collatz Map.
