import Mathlib
import MarkovDiffusionOperators.BGL.Theory.Extension.ConverseDirectInst

/-!
# Axiom check for Round 20 D3 (`mem_domain_of_Γ₂_direct`, no `Core2`)

## DIFFERENCE FROM BGL

The book's converse of Prop. 3.3.17 uses the `L²`-core step (`Core2`); the theorems checked here replace it by the cut-off
`Γ₂` identity (BGL Prop. 3.2.1 technique) and need completeness instead.  This file only prints axioms (expected:
`propext`, `Classical.choice`, `Quot.sound`).
-/

#print axioms MarkovDiffusionOperators.BGL.FullTriple.mem_domain_of_maximal
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessCS
#print axioms MarkovDiffusionOperators.BGL.FullTriple.cutoff_Γ₂_identity
#print axioms MarkovDiffusionOperators.BGL.FullTriple.cutoff_bound
#print axioms MarkovDiffusionOperators.BGL.FullTriple.memLp_L_of_Γ₂
#print axioms MarkovDiffusionOperators.BGL.FullTriple.mem_domain_of_Γ₂_direct
#print axioms MarkovDiffusionOperators.BGL.Instances.OU.ou_mem_domain_of_Γ₂_direct
#print axioms MarkovDiffusionOperators.BGL.Instances.OU.ou_id_mem_domain
#print axioms MarkovDiffusionOperators.BGL.Instances.circle_mem_domain_of_Γ₂_direct
#print axioms MarkovDiffusionOperators.BGL.Instances.lebesgue_mem_domain_of_Γ₂_direct
#print axioms MarkovDiffusionOperators.BGL.ConverseDirectInst.ell_mem_domain_of_Γ₂_direct
#print axioms MarkovDiffusionOperators.BGL.ConverseDirectInst.riem_mem_domain_of_Γ₂_direct
