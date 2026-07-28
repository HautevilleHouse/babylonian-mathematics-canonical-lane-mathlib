import HautevilleHouse.BabylonianMathematicsCanonicalLaneLean.SexagesimalSystem

namespace HautevilleHouse
namespace BabylonianMathematicsCanonicalLaneLean

structure ZigzagFunction where
  base : ℕ
  amplitude : ℕ
  period : ℕ

def zigzagValue (z : ZigzagFunction) (day : ℕ) : ℕ :=
  let cycle := day % (2 * z.period)
  if cycle < z.period then z.base + (z.amplitude * cycle) / z.period
  else z.base + z.amplitude - (z.amplitude * (cycle - z.period)) / z.period

-- Example: Jupiter's synodic arc (period = 12 months, amplitude = 30 degrees)
noncomputable def jupiterZigzag : ZigzagFunction := { base := 0, amplitude := 30, period := 12 }

theorem zigzag_periodic (z : ZigzagFunction) (day : ℕ) :
    zigzagValue z (day + 2 * z.period) = zigzagValue z day := by
  simp [zigzagValue, add_comm, add_left_comm, add_assoc]

end BabylonianMathematicsCanonicalLaneLean
end HautevilleHouse