GetInput ← &rs 100000 &fo "inputs/day4.txt"
GetLines ← ≡⊔ ⊜□≠, @\n ⊐/⊂ ⊜□≠, @\r

GetInput
GetLines
≡(⊜□ ≠,@|↘10)
≡(⊐/⊂)
≡(⊜parse ≠,@ )
/+ ≡(
  ⊃↙↘ 10
  /+/+⊞=
  ;⍢(-1:×2:)(>1):1.
  ×>0:
)
