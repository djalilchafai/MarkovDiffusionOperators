import Mathlib
import MarkovDiffusionOperators.BGL.Theory.Extension.GammaELin
import MarkovDiffusionOperators.BGL.Theory.Extension.Gamma2ELin
import MarkovDiffusionOperators.BGL.Theory.Extension.HessExtLin

/-! Axiom check for the round-15 gap closure (expected: propext, Classical.choice, Quot.sound only). -/

#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_lin_left
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_lin_mid
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_lin_right
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_bound
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_cls
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_cls_ae
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_tendsto_left
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_tendsto_mid
#print axioms MarkovDiffusionOperators.BGL.FullTriple.GG2_self
#print axioms MarkovDiffusionOperators.BGL.FullTriple.GG2_lin_left
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gamma2E_comm
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gamma2E_lin_left
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gamma2E_lin_right
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gamma2E_bound
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gamma2E_cls
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gamma2E_self_tendsto
#print axioms MarkovDiffusionOperators.BGL.FullTriple.Γ₂_ext_eq_gamma2E
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gammaE_lin_left
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gammaE_lin_right
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gammaE_bound
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gammaE_self_nonneg
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gammaE_cs
