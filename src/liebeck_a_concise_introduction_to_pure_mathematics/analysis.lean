import tactic 
import data.real.sqrt
import analysis.specific_limits.basic
import analysis.specific_limits.normed
import data.complex.exponential
import data.real.irrational

open filter real
open_locale topological_space 
open_locale big_operators 

theorem liebeck_23_1_i :
  tendsto (λ n : ℕ, n / (n + 5) : ℕ → ℝ) at_top (𝓝 1) :=
begin 
  sorry 
end 

theorem liebeck_23_1_ii :
  tendsto (λ n : ℕ, 1 / sqrt (n + 5)) at_top (𝓝 0) :=
begin 
  sorry 
end 

theorem liebeck_23_1_iii :
  tendsto (λ n : ℕ, ↑n * sqrt n / (n + 5)) at_top at_top :=
begin 
  sorry
end 

theorem liebeck_23_1_iv :
  tendsto (λ n : ℕ, ((-1)^n * sin n) / sqrt n ) at_top (𝓝 0) :=
begin 
  sorry 
end 

theorem liebeck_23_1_v :
  tendsto (λ n : ℕ, (↑n^3 - 2*sqrt n + 7) / (2 - ↑n^2 - 5*↑n^3)) at_top (𝓝 (-1/5)) :=
begin 
  sorry 
end  

theorem liebeck_23_1_vi (n : ℕ) :
  ¬∃ l : ℝ, tendsto (λ n, (1 - (-1)^n * n) / n : ℕ → ℝ) at_top (𝓝 l) :=
begin 
  sorry 
end 

theorem liebeck_23_1_vii :
  tendsto (λ n : ℕ, sqrt (n + 1) - sqrt n) at_top (𝓝 0) :=
begin 
  sorry
end 

theorem leibeck_23_2 (X : Type*) [topological_space X] (a : ℕ → X) (l₁ l₂ : X)
  (h₁ : tendsto a at_top (𝓝 l₁)) (h₂ : tendsto a at_top (𝓝 l₂)) :
  l₁ = l₂ :=
begin 
  sorry 
end 

theorem leibeck_23_3 (S : set ℝ) (c : ℝ) (hc : is_lub S c) :
  ∃ (f : ℕ → ℝ), (∀ n, f n ∈ S) ∧ tendsto f at_top (𝓝 c) :=
begin 
  sorry 
end 

theorem leibeck_23_4_i_a :
  ∃ b : ℝ, ∀ n, abs (n^3 / (n^3 - 1) : ℝ) ≤ b :=
begin 
  sorry, 
end 

theorem leibeck_23_4_i_c (n : ℕ) :
  (n : ℝ)^3 / (n^3 - 1) ≥ (n + 1)^3 / ((n + 1)^3 - 1) :=
begin 
  sorry, 
end 

theorem leibeck_23_4_i_d (a : ℕ → ℝ) (h : ∀ n : ℕ, a n = n^3 / (n^3 - 1)) :
  ∃ l : ℝ, tendsto a at_top (𝓝 l) :=
begin 
  sorry 
end 

theorem leibeck_23_4_ii_a :
  ∃ M : ℝ, ∀ m : ℕ, abs (2 ^ (1 / m)) ≤ M :=
begin 
  sorry 
end 

theorem leibeck_23_4_ii_c (n : ℕ) : 
  2^(1/n) ≥ 2^(1/(n+1)) :=
begin 
  sorry 
end 

theorem leibeck_23_4_ii_d (a : ℕ → ℝ) (h : ∀ n : ℕ, a n = 2 ^ (1 / n)) :
  ∃ l : ℝ, tendsto a at_top (𝓝 l) :=
begin 
  sorry 
end 

theorem leibeck_23_4_iii_a :
  ∃ b : ℝ, ∀ n : ℕ, abs (1 - (-1)^n / ↑n) ≤ b :=
begin 
  sorry 
end 

theorem leibeck_23_4_iii_b (n : ℕ) :
  ¬ (∀ n : ℕ, (1 : ℝ) - (-1)^n / n ≤ 1 - (-1)^(n+1) / (n+1)) :=
begin 
  sorry 
end 

theorem leibeck_23_4_iii_c (n : ℕ) : 
  ¬ (∀ m : ℕ, (1 - (-1)^n / n.cast : ℝ) ≥ (1 - (-1)^(n+m) / (n+m).cast : ℝ)) :=
begin 
  sorry 
end 

theorem leibeck_23_4_iii_d (f : ℕ → ℝ) (hf : ∀ n : ℕ, f n = 1 - (-1)^n / n) :
  ∃ r : ℝ, tendsto f at_top (𝓝 r) :=
begin 
  sorry 
end 

theorem leibeck_23_4_iv_a :
  ∀ m : ℕ, ∃ N : ℕ, ∀ n ≥ N, abs (5*n - n^2 : ℝ) ≥ m :=
begin 
  sorry 
end 

theorem leibeck_23_4_iv_b :
  ¬ (∀ n : ℕ, abs (5*n - n^2 : ℝ) ≤ abs (5*(n+1) - (n+1)^2 : ℝ)) :=
begin 
  sorry 
end 

theorem leibeck_23_4_iv_c :
  ¬ (∀ n : ℕ, abs (5*n - n^2 : ℝ) ≥ abs (5*(n+1) - (n+1)^2 : ℝ)) :=
begin 
  sorry 
end 

theorem leibeck_23_4_iv_d :
  tendsto (λ n : ℕ, abs (5*n - n^2 : ℝ)) at_top at_top :=
begin 
  sorry 
end 

theorem leibeck_23_5 (a : ℝ) (f : ℕ → ℝ) :
  (∃ N, ∀ ε > 0, ∀ n ≥ N, abs (f n - a) < ε) ↔ (∃ N, ∀ n ≥ N, f n = a) :=
begin 
  sorry 
end 

theorem leibeck_23_6 (f : ℕ → ℝ) (hf : ∀ n, f (n + 1) ≤ f n)
  (hf_bdd : ∃ a, ∀ n, f n ≤ a) :
  ∃ a, tendsto f at_top (𝓝 a) :=
begin 
  sorry 
end 

theorem leibeck_23_7_i_a (a : ℕ → ℝ) (h1 : a 1 = 1)
  (h2 : ∀ n : ℕ, a (n + 1) = (a n ^ 2 + 2) / (2 * a n)) :
  ∃ M : ℝ, ∀ n : ℕ, abs (a n) ≤ M :=
begin 
  sorry 
end 

theorem liebeck_23_7_i_b (a : ℕ → ℝ) (h1 : a 1 = 1) (h2 : ∀ n, a (n+1) = (a n ^ 2 + 2) / (2 * a n)) :
  ∀ n, n ≥ 2 → a n ≥ a (n+1) :=
begin 
  sorry 
end 

theorem liebeck_23_7_ii (a : ℕ → ℝ) (h1 : a 1 = 1) (h2 : ∀ n, a (n+1) = (a n ^ 2 + 2) / (2 * a n)) :
  tendsto a at_top (𝓝 2) :=
begin 
  sorry 
end 

noncomputable def e : ℕ → ℝ := λ n, ∑ i in finset.range(n+1), 1 / (nat.factorial i)

theorem leibeck_23_8_a (n : ℕ) :
  ∃ p : ℕ, e n = p / (nat.factorial n) :=
begin   
  sorry 
end 

theorem leibeck_23_8_b (n : ℕ) : 
  0 < exp 1 - e n ∧ exp 1 - e n < 1 / (n * nat.factorial n) :=
begin 
  sorry 
end 

theorem leibeck_23_8_c : 
  ∃ p : ℕ → ℝ, ∀ n : ℕ, 0 < exp 1 * nat.factorial n - e n ∧ 
  exp 1 * nat.factorial n - e n < 1 / (n * nat.factorial n) :=
begin 
  sorry 
end 

-- Assume e is rational, then show n!e ∈ ℤ for some n.
theorem leibeck_23_8_d : 
  irrational (exp 1) := 
begin 
  sorry 
end 

variable a : ℕ → ℝ 

theorem leibeck_23_9_a : 
  ¬ (∀ l : ℝ, tendsto a at_top (𝓝 l)) ↔ tendsto a at_top at_top :=
begin 
  sorry 
end 

theorem leibeck_23_9_c : 
  (∀ R > 0, ∃ N : ℕ, ∀ n ≥ N, a n > R) ↔ (tendsto a at_top at_top) :=
begin 
  sorry 
end 

theorem leibeck_23_9_d : 
  ¬ (∀ L : ℝ, ∀ ε : ℝ, ∃ N : ℕ, ∀ n ≥ N, abs (a n - L) > ε) ↔ (tendsto a at_top at_top) :=
begin 
  sorry 
end 

theorem leibeck_23_9_e : 
  (∀ ε > 0, ∃ N : ℕ, ∀ n ≥ N, a n > 1 / ε) ↔ (tendsto a at_top at_top) :=
begin 
  sorry 
end 

theorem leibeck_23_9_f : 
  ¬ (∀ n : ℕ, a (n+1) > a n) ↔ (tendsto a at_top at_top) :=
begin 
  sorry 
end 

theorem leibeck_23_9_g : 
  ¬ (∃ N : ℕ, ∀ R > 0, ∀ n ≥ N, a n > R) ↔ (tendsto a at_top at_top) :=
begin 
  sorry 
end 

theorem leibeck_23_10_g : 
  ¬ (∀ R : ℝ, ∃ n : ℕ, a n > R) ↔ (tendsto a at_top at_top) :=
begin 
  sorry 
end 

