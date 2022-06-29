import algebra.group.basic
import group_theory.order_of_element
import data.fintype.basic
import deprecated.group 

noncomputable theory 

theorem df_1_1_16 (G : Type*) [group G] (x : G) :
  x ^ 2 = 1 ↔ order_of x = 1 ∨ order_of x = 2
:= 
begin
  sorry, 
end

theorem df_1_18
  (G : Type*) [group G]
  (x y : G)
  : x * y = y * x ↔ y⁻¹ * x * y = x
:= 
begin
  sorry, 
end

theorem df_1_1_20 (G: Type*) [group G] (x: G) : 
  order_of x = order_of x⁻¹ := 
begin 
  simp, 
end 

theorem df_1_1_22a (G: Type*) [group G] (x g: G) : 
order_of x = order_of (g⁻¹ * x⁻¹ *g) := 
begin 
  sorry, 
end 

theorem df_1_1_22b (G: Type*) [group G] (a b: G) : 
order_of (a*b) = order_of (b*a) :=
begin
  sorry, 
end


theorem df_1_1_25 (G: Type*) [group G]  (h : ∀ x:G, x * x = 1) : 
  ∀ a b : G, a*b = b*a := 
begin 
   intros a b, 
   have ha : _ := h a, 
   have hb : _ := h b, 
   have hab : _ := h (a*b), 
   rw mul_eq_one_iff_eq_inv at ha, 
   rw mul_eq_one_iff_eq_inv at hb, 
   rw mul_eq_one_iff_eq_inv at hab, 
   rw [hab, mul_inv_rev, ←ha, ←hb],  
end

def is_comm (G : Type*) [group G] : Prop := ∀ (a b : G), a * b = b * a

theorem df_1_1_29 (G H : Type*) [group G] [group H] : 
  (is_comm (G × H)) ↔ (is_comm G ∧ is_comm H) :=
begin 
  sorry, 
end 

theorem df_1_1_34 (G: Type*) [group G] (x : G) (h : order_of x = 0) : 
  ∀ n m : ℕ, n ≠ m → x ^ n ≠ x ^ m := 
begin
  sorry, 
end

theorem df_1_6_11 (A : Type*) [group A] (B : Type*) [group B] : 
  (A × B) ≃* (B × A) := 
begin 
  sorry
end

theorem df_1_6_1 (G : Type*) [group G] (f : G → G) (hf : f = λ x : G, x⁻¹) : 
  is_group_hom f ↔ is_comm G := 
begin 
  sorry, 
end

theorem df_1_6_18 (G : Type*) [group G] (f : G → G) (hf : f = λ x : G, x ^ 2) :
is_group_hom f ↔ is_comm G :=
begin 
  sorry, 
end







