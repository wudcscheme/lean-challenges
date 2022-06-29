import topology.basic
import topology.constructions
import topology.bases
import topology.metric_space.basic
import data.real.basic
import data.set.countable

open_locale classical
open set

theorem munkres_2_13_1 (X : Type*) [topological_space X] (A : set X)
  (h1 : ∀ x ∈ A, ∃ U : set X, x ∈ U ∧ is_open U ∧ U ⊆ A) :
  is_open A :=
begin
  have : A = ⋃ x, ⋃ h : x ∈ A, (classical.some (h1 x h)),
  { ext x, simp, split,
    { intro xA,
      use [x, xA],
      exact (classical.some_spec (h1 x xA)).1},
    { rintros ⟨y, yA, yspec⟩,
      have h := classical.some_spec (h1 y yA),
      exact h.2.2 yspec }, },
  rw this,
  apply is_open_Union,
  intro x,
  apply is_open_Union,
  intro xA,
  have h := classical.some_spec (h1 x xA),
  exact h.2.1
end

theorem munkres_2_13_8a :
  topological_space.is_topological_basis {S : set ℝ | ∃ a b : ℚ, a < b ∧ S = Ioo a b} :=
begin 
  sorry,
end

theorem munkres_2_17_4 (X : Type*) [topological_space X] (U A : set X) (hU : is_open U) 
  (hA : is_closed A) :
  is_open (U \ A) :=
begin 
  sorry, 
end

theorem munkres_2_21_4 (n : ℕ) (x : ℝ) (hx : 0 ≤ x ∧ x ≤ 1) :
  ∀ ε > 0, ∃ N : ℕ, ∀ m ≥ N, abs (x ^ m - x ^ n) ≥ ε
:= 
begin 
  sorry, 
end 

theorem munkres_2_22_1
  (X Y : Type*) [topological_space X] [topological_space Y]
  (p : X → Y)
  (f : Y → X)
  (hf : continuous f)
  (hpf : ∀ y : Y, p (f y) = y)
  : quotient_map p
:=
begin 
  sorry, 
end

theorem munkres_2_22_2a (X Y : Type*) [topological_space X] [topological_space Y] (p : X → Y)
  (f : Y → X) (hf : continuous f) (hpf : ∀ y : Y, p (f y) = y) :
  quotient_map p := 
begin 
  sorry, 
end 


