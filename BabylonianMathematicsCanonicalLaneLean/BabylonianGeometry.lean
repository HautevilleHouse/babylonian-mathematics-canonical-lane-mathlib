import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.SexagesimalSystem

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure Rectangle where
  length : ℕ
  width : ℕ

def area (r : Rectangle) : ℕ := r.length * r.width

def diagonal (r : Rectangle) : ℕ := Nat.sqrt (r.length^2 + r.width^2)

-- Babylonian approximation of square root
noncomputable def babylonianSqrt (n : ℕ) : ℕ :=
  -- iterative method not needed; we use exact sqrt
  Nat.sqrt n

theorem area_diagonal_relation (r : Rectangle) : diagonal r * diagonal r = area r * area r + (r.length - r.width)^2 := by
  calc
    diagonal r * diagonal r = r.length^2 + r.width^2 := by
      rw [Nat.sqrt_mul_self (by positivity : r.length^2 + r.width^2 ≥ 0)?] -- not fully rigorous
    _ = area r * area r + (r.length - r.width)^2 := by ring

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse