import tactic 
import data.real.sqrt
import analysis.specific_limits.basic
import analysis.specific_limits.normed
import data.complex.exponential

open filter real
open_locale topological_space 

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


