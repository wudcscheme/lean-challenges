import tactic
import data.real.sqrt
import analysis.specific_limits.basic
import analysis.specific_limits.normed

open filter real

open_locale topological_space

theorem rudin_4_1 : 
  ∃ (f : ℝ → ℝ), (∀ (x : ℝ), tendsto (λ y, f(x + y) - f(x - y)) 
  (𝓝 0) (𝓝 0)) ∧ ¬ continuous f :=
begin
  sorry, 
end

theorem rudin_4_2 {α β: Type*} [metric_space α] [metric_space β] (f : α → β)
  (h₁ : continuous f) :
  ∀ (x : set α), f '' (closure x) ⊆ closure (f '' x) :=
begin
  sorry, 
end

theorem rudin_4_3 {α : Type*} [metric_space α] (f : α → ℝ) (h : continuous f)
 (z : set α) (g : z = f⁻¹' {0}) : 
 is_closed z :=
begin
  rw g,
  apply is_closed.preimage h,
  exact is_closed_singleton,
end

theorem rudin_4_4a
  {α β: Type*} [metric_space α] [metric_space β] (f : α → β) 
  (h₁ : continuous f) (s : set α) (h₂ : dense s) :
  closure (f '' s) = set.range f :=
begin
  sorry,
end

theorem rudin_4_4b {α β: Type*} [metric_space α] [metric_space β] (f g: α → β)
  (h₁ : continuous f) (h₂ : continuous g) (s : set α) (h₃ : dense s)
  (h₄ : ∀ x ∈ s, f x = g x) : 
  f = g :=
begin
  sorry, 
end
