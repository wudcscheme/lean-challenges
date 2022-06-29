import tactic 
import data.rat.default 
import data.real.basic
import data.real.irrational
import analysis.inner_product_space.basic
import analysis.inner_product_space.pi_L2

open complex
open_locale big_operators
open_locale complex_conjugate

theorem rudin_1_1a (x : ℝ) (y : ℚ) :
  ( irrational x ) -> irrational ( x + y ) :=
begin
  apply irrational.add_rat,
end

theorem rudin_1_1b (x : ℝ) (y : ℚ) (h : y ≠ 0) :
  ( irrational x ) -> irrational ( x * y ) :=
begin
  intro g,
  apply irrational.mul_rat g h,
end


theorem rudin_1_2 : 
  ¬ ∃ (x : ℚ), ( x ^ 2 = 12 ) :=
begin
  sorry, 
end

theorem rudin_1_4 (α : Type*) [partial_order α] (s : set α) (x y : α) 
  (h₀ : set.nonempty s) (h₁ : x ∈ lower_bounds s) 
  (h₂ : y ∈ upper_bounds s) : 
  x ≤ y :=
begin
  have h : ∃ z, z ∈ s := h₀,
  cases h with z,
  have xlez : x ≤ z :=
  begin
    apply h₁,
    assumption,
  end,
  have zley : z ≤ y :=
  begin
    apply h₂,
    assumption,
  end,
  exact xlez.trans zley,
end

theorem rudin_1_11 (z : ℂ) :
  ∃ (r : ℝ) (w : ℂ), abs w = 1 ∧ z = r * w :=
begin
  by_cases h : z = 0,
  {
    use [0, 1],
    simp,
    assumption,
  },
  {
    use abs z,
    use z / ↑(abs z),
    split,
    {
      simp,
      field_simp [h],
    },
    {
      field_simp [h],
      apply mul_comm,
    },
  },
end


theorem rudin_1_12 (n : ℕ) (f : ℕ → ℂ):
  abs (∑ i in finset.range n, f i) ≤ ∑ i in finset.range n, 
  abs (f i) :=
begin
  induction n with n ih, simp,
  rw finset.range_succ,
  simp, transitivity,
  apply complex.abs_add,
  apply add_le_add_left,
  exact ih,
end

theorem rudin_1_13 (x y : ℂ) :
  |(abs x) - (abs y)| ≤ abs (x - y) :=
begin
  sorry,
end

theorem rudin_1_14 (z : ℂ) (h : abs z = 1) :
  (abs (1 + z)) ^ 2 + (abs (1 - z)) ^ 2 = 4 :=
begin
  sorry,
end

theorem rudina_1_16a (n : ℕ) (d r : ℝ) (x y z : euclidean_space ℝ (fin n))
  (h₁ : n ≥ 3) (h₂ : ∥x - y∥ = d) (h₃ : d > 0) (h₄ : r > 0) (h₅ : 2 * r > d) :
  set.infinite {z : euclidean_space ℝ (fin n) | ∥z - x∥ = r ∧ ∥z - y∥ = r} :=
begin
  sorry,
end

theorem rudin_1_17 (n : ℕ) (x y : euclidean_space ℝ (fin n)) : 
  ∥x + y∥^2 + ∥x - y∥^2 = 2*∥x∥^2 + 2*∥y∥^2 :=
begin
  sorry,
end

theorem rudin_1_18a (n : ℕ) (h : n > 1) (x : euclidean_space ℝ (fin n)) :
  ∃ (y : euclidean_space ℝ (fin n)), y ≠ 0 ∧ (inner x y) = (0 : ℝ) :=
begin
  sorry,
end

theorem rudin_1_18b :
  ¬ ∀ (x : ℝ), ∃ (y : ℝ), y ≠ 0 ∧ x * y = 0 :=
begin
  simp,
  use 1,
  intros x h₁ h₂,
  cases h₂,
  {norm_num at h₂},
  {exact absurd h₂ h₁},
end

theorem rudin_1_19 (n : ℕ) (a b c x : euclidean_space ℝ (fin n)) (r : ℝ)
  (h₁ : r > 0) (h₂ : 3 • c = 4 • b - a) (h₃ : 3 * r = 2 * ∥x - b∥) :
  ∥x - a∥ = 2 * ∥x - b∥ ↔ ∥x - c∥ = r :=
begin
  sorry,
end