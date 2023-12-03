GetInput ← &rs 100000 &fo "inputs/day2.txt"
GetLines ← ⊜□≠, @\n ⊐/⊂ ⊜□≠, @\r

IsNotDelimiter ← ×≠@;:≠@,.

SplitOnSpace ← ⊜□≠, @ 

TrimWhitespace ← ▽\↥≠@ .

Blue ← □ "blue"
FindBlues ← ≡(=Blue⊡1)

Red ← □ "red"
FindReds ← ≡(=Red⊡1)

Green ← □ "green"
FindGreens ← ≡(=Green⊡1)

GetInput
GetLines
/+ ≡(
  # Split on : to separate Game section from color data
  ⊜□≠, @: ⊔
  # Unpack the split array onto the stack
  : ↙ 1 .
  ⊢ ↘ 1

  # Split the color string on delimiters
  ⊜□ IsNotDelimiter .⊔
  # Trim and split each color pair
  ∵(SplitOnSpace TrimWhitespace ⊔)

  # Filter out the main color array into sub-arrays
  : ▽ FindReds . .
  : ▽ FindGreens . .
  ▽ FindBlues .

  ⊢⊏⍖. ≡(parse ⊔ ⊢)
  × ⊢⊏⍖. ≡(parse ⊔ ⊢) :
  × ⊢⊏⍖. ≡(parse ⊔ ⊢) :
)
