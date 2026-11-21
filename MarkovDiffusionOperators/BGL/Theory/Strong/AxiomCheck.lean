import MarkovDiffusionOperators.BGL.Theory.Strong.Instances
import MarkovDiffusionOperators.BGL.Instances.OU.StrongFinal
import MarkovDiffusionOperators.BGL.Instances.Lebesgue.StrongBound
import MarkovDiffusionOperators.BGL.Instances.Lebesgue.GradBound
import MarkovDiffusionOperators.BGL.Theory.Complete.Instances
import MarkovDiffusionOperators.BGL.Theory.Extension.Main

/-! Axiom audit of the headline results of the strong-gradient / completeness / extension round. -/

#print axioms MarkovDiffusionOperators.BGL.FullTriple.Γ₂_mul_left
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessian_ineq
#print axioms MarkovDiffusionOperators.BGL.FullTriple.reinforced_cd
#print axioms MarkovDiffusionOperators.BGL.FullTriple.strong_integrated
#print axioms MarkovDiffusionOperators.BGL.FullTriple.strong_eps
#print axioms MarkovDiffusionOperators.BGL.FullTriple.strong_of_eps
#print axioms MarkovDiffusionOperators.BGL.FullTriple.strong_gradient_bound
#print axioms MarkovDiffusionOperators.BGL.CompactTriple.hasDerivAt_ucls
#print axioms MarkovDiffusionOperators.BGL.CompactTriple.strongInterpolation
#print axioms MarkovDiffusionOperators.BGL.compact_strong_gradient_bound
#print axioms MarkovDiffusionOperators.BGL.Instances.OU.ouFull_StrongInterpolation
#print axioms MarkovDiffusionOperators.BGL.Instances.OU.ouFull_strong_gradient_bound
#print axioms MarkovDiffusionOperators.BGL.Lebesgue.lebesgue_strong_gradient_bound
#print axioms MarkovDiffusionOperators.BGL.Lebesgue.lebesgue_hasGradientBound
#print axioms MarkovDiffusionOperators.BGL.lebesgue_conservative_of_complete
#print axioms MarkovDiffusionOperators.BGL.ouFull_conservative_of_complete
#print axioms MarkovDiffusionOperators.BGL.lebesgueDiffusion_isComplete
#print axioms MarkovDiffusionOperators.BGL.ouDiff_isComplete
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gamma_limits
