GetInput ← &rs 100000 &fo "inputs/day3.txt"
GetLines ← ≡⊔ ⊜□≠, @\n ⊐/⊂ ⊜□≠, @\r

Enumerate ← ⇡⊢△

IsNumber ← ×≥@0:≤@9.
IsSymbol ← ×¬IsNumber,≠@..

ShiftUp ← ⊂:=¯1⇡⊡1△.↘1
ShiftDown ← ⇌ ShiftUp ⇌
ShiftLeft ← ≡(⊂:0↘1)
ShiftRight ← ≡(⊂0⇌↘1⇌)
SpreadOnes ← (
  + ShiftUp ..
  + ShiftDown ,
  + ShiftLeft ,
  + ShiftRight ,
  + ShiftRight ShiftUp ,
  + ShiftRight ShiftDown ,
  + ShiftLeft ShiftUp ,
  + ShiftLeft ShiftDown :
  ≠ 0
)

GetInput
GetLines
≡(IsSymbol)
IsNumber , SpreadOnes
:×
/+ ≡(
  +IsNumber,:
  ⊜□ ≠,0
  ⊜□≠0IsNumber.:
  ∵(-1/↥⊔):
  ▽
  /+ ∵(parse ⊔)
)
