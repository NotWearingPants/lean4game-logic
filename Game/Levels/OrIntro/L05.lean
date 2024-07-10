import Game.Metadata

open GameLogic

World "OrIntro"
Level 5
Title "Carry On Effects"

NewTheorem GameLogic.or_comm
OnlyTactic
  exact
  «have»

Introduction "
# Carry On Effects
If the cake arrives, then everybody will rejoice. Either the cake arrives or you get a refund. Therefore, either everybody will rejoice or you get a refund! That's a win-win situation.
# Proposition Key:
- C — The cake arrives
- J — Everybody is joyful
- R — You get a refund
"

/-- Implication across ∨ -/
Statement (C J R : Prop)(h1 : C → J)(h2 : C ∨ R) : J ∨ R := by
  exact or_elim h2 (h1 ≫ or_inl) or_inr

example (C J R : Prop)(h1 : C → J)(h2 : C ∨ R) : J ∨ R := by
  have h3 : C → J ∨ R := imp_trans h1 or_inl
  exact or_elim h2 h3 or_inr

example (C J R : Prop)(h1 : C → J)(h2 : C ∨ R) : J ∨ R := by
  have h3 : C → J ∨ R := λc ↦ or_inl (h1 c)
  exact or_elim h2 h3 or_inr

Conclusion "
Well done, you're getting good at this!
"
