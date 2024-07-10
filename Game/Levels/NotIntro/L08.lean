import Game.Metadata

open GameLogic

World "NotIntro"
Level 8
Title "Negated Conjunction"

OnlyTactic
  exact
  «have»

Introduction "
# Definitely Not
Your cake order definitely has sprinkles, which means it's **not** missing sprinkles and loaded with chocolate chips
# Proposition Key:
- `C` — The cake is loaded with chocolate chips
- `S` — The cake is topped with sprinkles
"

/-- Negation into conjunction. -/
Statement (C S : Prop) (s: S) : ¬(¬S ∧ C) := by
  exact λ(nsc : ¬S ∧ C) ↦ nsc.left s

Conclusion "
Might it possibly still be filled with chocolate chips? That sounds absolutely delightful!
"
