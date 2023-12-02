GetInput ← &rs 100000 &fo "inputs/day1.txt"
GetLines ← ⊜□≠, @\n ⊐/⊂ ⊜□≠, @\r

ForwardRegex ← regex "(one|two|three|four|five|six|seven|eight|nine|\\d)"
BackwardRegex ← ∵⇌ regex "(eno|owt|eerht|ruof|evif|xis|neves|thgie|enin|\\d)" ⇌
PrepareLine ← ⊔ ⊢ ⇌ : ⊔ ⊢ . ⊂ BackwardRegex ⊔ : ForwardRegex ⊔

WordToDigit ← +1 ⊗ □ : {"one" "two" "three" "four" "five" "six" "seven" "eight" "nine"}
ProcessCapture ← $"_" ⍢WordToDigit (> 1 ⧻)

GetInput
GetLines
/+ ∵(parse ⇌ ⊂ ProcessCapture : ProcessCapture PrepareLine .)
