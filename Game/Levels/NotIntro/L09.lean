import Game.Metadata

open GameLogic

World "NotIntro"
Level 9
Title "Implies a Negation"

OnlyTactic
  exact
  «have»

Introduction "
# Allergy #1
Owing to his allergy, if Pippin is present, there must be no avocado at the party. Which means that we cannot have both Pippin and avocado at the party
# Proposition Key:
- `A` — There's avocado at the party
- `P` — Pippin is attending the party
"

/-- Show ¬(P ∧ A) -/
Statement (A P : Prop) (h : P → ¬A) : ¬(P ∧ A) := by
  exact λ(pa : P ∧ A) ↦ h pa.left pa.right

Conclusion "
That's settled
"
