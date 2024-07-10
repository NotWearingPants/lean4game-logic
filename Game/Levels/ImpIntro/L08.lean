import Game.Metadata

open GameLogic

World "ImpIntro"
Level 8
Title "Distribute"

OnlyTactic
  exact
  «have»

Introduction "
# Go buy chips and dip!
- If you go shopping, then you'll buy chips.
- If you go shopping, then you'll buy dip.
- ∴ If you go shopping, you'll buy chips and dip
# Proposition Key:
- `C` — You buy chips
- `D` — You buy dip
- `S` — You go shopping
"

/-- → distributes over ∧ -/
Statement (C D S : Prop) (h : (S → C) ∧ (S → D)) : S → C ∧ D := by
  exact λ(s : S) ↦ and_intro (h.left s) (h.right s)

-- Should this game try to teach destructuring?
example (C D S : Prop) (h : (S → C) ∧ (S → D)) : S → C ∧ D := by
  have ⟨l,r⟩ := h
  exact λs ↦ ⟨l s, r s⟩

Conclusion "
You definitely have a knack for providing conditional arguments!
"
