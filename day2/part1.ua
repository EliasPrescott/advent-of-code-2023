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

  # Boil each color group down to a 1 or 0 based on the existence of any invalid row 
  = 0 /+ ≡(> 14 parse ⊔ ⊢)
  × = 0 /+ ≡(> 13 parse ⊔ ⊢) :
  × = 0 /+ ≡(> 12 parse ⊔ ⊢) :

  # Get the game ID
  parse ↘ 5 ⊔ ⊢ :

  # Mult by the final game validity result to get the ID score
  ×
)
