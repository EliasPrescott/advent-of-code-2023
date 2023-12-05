GetInput ← &rs 100000 &fo "inputs/day3.txt"
GetLines ← ≡⊔ ⊜□≠, @\n ⊐/⊂ ⊜□≠, @\r

IsNumber ← ×≥@0:≤@9.
IsGear ← =@*

ShiftRight ← ≡(⊂ 1 ⇌ ↘ 1 ⇌)
ShiftLeft ← ≡(⊂:1↘1)
ShiftUp ← ⊂:=¯1⇡⊡1△.↘1
ShiftDown ← ⇌ ShiftUp ⇌

MaskBR ← [1_1_1_1_1_1_1
          1_1_1_1_1_1_1
          1_1_1_1_0_0_0]
MaskMR ← [1_1_1_1_1_1_1
          1_1_1_1_0_0_0
          1_1_1_1_1_1_1]
MaskTR ← [1_1_1_1_0_0_0
          1_1_1_1_1_1_1
          1_1_1_1_1_1_1]
MaskBL ← [1_1_1_1_1_1_1
          1_1_1_1_1_1_1
          0_0_0_1_1_1_1]
MaskML ← [1_1_1_1_1_1_1
          0_0_0_1_1_1_1
          1_1_1_1_1_1_1]
MaskTL ← [0_0_0_1_1_1_1
          1_1_1_1_1_1_1
          1_1_1_1_1_1_1]

GetInput
GetLines
≡(⊂:"!!!"⊂"!!!")
;:⊂⊙.⊂⊙.⊂⊙.⊂,⊂,⊂,:⊐/⊂∵("!";)⇡⊡1△.
◫ 7_7
≡(□⊜∘ ≡(IsGear ⊡3 ⊡3)).
∵□ ▽ ∵(≠0⧻⊔) .
/+ ≡(
  ⊔⊔
  /+ ≡(
    ⊢
    ↘2_0⇌↘2_0⇌
    ∵(IsNumber).
    ⍥(×MaskTR) =0⊡0_4.
    ⍥(× ShiftRight MaskTR) =0⊡0_5.
    ⍥(× ShiftRight ShiftRight MaskTR) =0⊡0_6.
    ⍥(×MaskMR) =0⊡1_4.
    ⍥(× ShiftRight MaskMR) =0⊡1_5.
    ⍥(× ShiftRight ShiftRight MaskMR) =0⊡1_6.
    ⍥(×MaskBR) =0⊡2_4.
    ⍥(× ShiftRight MaskBR) =0⊡2_5.
    ⍥(× ShiftRight ShiftRight MaskBR) =0⊡2_6.
    ⍥(×MaskTL) =0⊡0_2.
    ⍥(× ShiftLeft MaskTL) =0⊡0_1.
    ⍥(× ShiftLeft ShiftLeft MaskTL) =0⊡0_0.
    ⍥(×MaskML) =0⊡1_2.
    ⍥(× ShiftLeft MaskML) =0⊡1_1.
    ⍥(× ShiftLeft ShiftLeft MaskML) =0⊡1_0.
    ⍥(×MaskBL) =0⊡2_2.
    ⍥(× ShiftLeft MaskBL) =0⊡2_1.
    ⍥(× ShiftLeft ShiftLeft MaskBL) =0⊡2_0.
    ×≡(∵(⍣(-@\0) (0;;))):
    ≡(⊂:0 ⊂ 0)
    /⊂
    ⊕□⍜▽¯:\+.=, 0
    ▽∵(≠0⧻⊔).
    :⧻.
    /×∵(parse /⊂+@\0 ⊔)
    ×=2:
  )
)
