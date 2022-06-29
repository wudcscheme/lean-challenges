import tactic
import data.real.sqrt
import analysis.specific_limits.basic
import analysis.specific_limits.normed

open filter real

open_locale topological_space
noncomputable theory


theorem rudin_3_1 (f : ℕ → ℝ) 
  (h : ∃ (a : ℝ), tendsto (λ (n : ℕ), f n) at_top (𝓝 a)) :
  ∃ (a : ℝ), tendsto (λ (n : ℕ), |f n|) at_top (𝓝 a) :=
begin
  cases h with a h,
  use |a|,
  apply filter.tendsto.abs h,
end

theorem rudin_3_2 : 
  tendsto (λ (n : ℝ), (sqrt (n^2 + n) - n)) at_top (𝓝 (1/2)) :=
begin
  sorry, 
end

theorem rudin_3_3 (f : ℕ → ℝ) (hf1 : f 0 = sqrt 2) 
  (hf2 : ∀ n : ℕ, f n.succ = sqrt(2 + sqrt (f n))) : 
  ∃ (x : ℝ), tendsto f at_top (𝓝 x) ∧ ∀ n, f n < 2 :=
begin
  sorry,
end

theorem rudin_3_22 (X : Type*) [metric_space X] [complete_space X] (G : ℕ → set X)
  (hG : ∀ n : ℕ, is_open (G n) ∧ dense (G n)) :
  ∃ x : X, ∀ n : ℕ, x ∈ G n
:=
begin 
  sorry, 
end 
