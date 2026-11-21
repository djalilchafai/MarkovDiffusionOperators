import MarkovDiffusionOperators.Stochastic.R22.NonCompact
import MarkovDiffusionOperators.Stochastic.R22.Obstruction

/-! Axiom audit of Round 22, Stream E3 (see `STATEMENTS_R22_E3.md`). -/

#print axioms MarkovDiffusionOperators.Stochastic.R22.secondCountableOnePoint
#print axioms MarkovDiffusionOperators.Stochastic.R22.Uequiv
#print axioms MarkovDiffusionOperators.Stochastic.R22.exists_kernel_of_posContraction_noncompact
#print axioms MarkovDiffusionOperators.Stochastic.R22.ncKernelRep
#print axioms MarkovDiffusionOperators.Stochastic.R22.ncKernelRep_subInvariant
#print axioms MarkovDiffusionOperators.Stochastic.R22.ncKernelRep_C0
#print axioms MarkovDiffusionOperators.Stochastic.R22.nc_exists_exact_ck
#print axioms MarkovDiffusionOperators.Stochastic.R22.c0_dense
#print axioms MarkovDiffusionOperators.Stochastic.R22.exists_kernelRepresentation_not_exact_ck

-- non-vacuity: the non-compact construction applies to the OU triple on `ℝ` (probability `γ`)
open MarkovDiffusionOperators.BGL.Instances.OU in
noncomputable example : MarkovDiffusionOperators.Stochastic.KernelRepresentation ouDiff :=
  MarkovDiffusionOperators.Stochastic.R22.ncKernelRep ouDiff
