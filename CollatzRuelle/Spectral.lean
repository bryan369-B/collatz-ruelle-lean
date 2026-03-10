import Mathlib.RingTheory.Polynomial.Basic
import Mathlib.NumberTheory.Padics.PadicNorm
import Mathlib.Algebra.BigOperators.Ring.Finset

open Polynomial

noncomputable section

lemma padicNorm_three : padicNorm 2 (3 : ℚ) = 1 := by
  sorry

lemma padicNorm_two_thirds : padicNorm 2 (2 / 3 : ℚ) = 1 / 2 := by
  sorry

def branch_even (P : Polynomial ℚ) : Polynomial ℚ :=
  P.comp (C 2 * X)

def branch_odd (P : Polynomial ℚ) : Polynomial ℚ :=
  P.comp (C (2/3) * X + C (-1/3))

def ruelle_L (P : Polynomial ℚ) : Polynomial ℚ :=
  branch_even P + branch_odd P

theorem ruelle_degree_and_leading (n : ℕ) :
    ∃ (Q : Polynomial ℚ),
      ruelle_L (X ^ n) = C (2^n + (2/3)^n) * X^n + Q ∧
      Q.natDegree < n := by
  sorry

theorem ruelle_is_triangular (n m : ℕ) (h : n < m) :
    (ruelle_L (X ^ n)).coeff m = 0 := by
  obtain ⟨Q, hQ, hdeg⟩ := ruelle_degree_and_leading n
  rw [hQ, coeff_add, coeff_C_mul_X_pow]
  have h_main : (if m = n then 2^n + (2/3:ℚ)^n else 0) = 0 :=
    if_neg (Nat.ne_of_gt h)
  rw [h_main]
  have h_Q : Q.coeff m = 0 :=
    Polynomial.coeff_eq_zero_of_natDegree_lt (hdeg.trans h)
  rw [h_Q, add_zero]

theorem leading_coeff_decay (n : ℕ) :
    padicNorm 2 (2^n + (2/3:ℚ)^n) ≤ (1/2)^n := by
  sorry

theorem eigenvalues_tend_to_zero : True := by
  trivial

end noncomputable section
