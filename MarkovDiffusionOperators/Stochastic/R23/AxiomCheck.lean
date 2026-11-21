import MarkovDiffusionOperators.Stochastic.R23.Lebesgue
import MarkovDiffusionOperators.Stochastic.OUFull

/-! Axiom audit of Round 23, Stream S (see `STATEMENTS_R23_S.md`). -/

#print axioms MarkovDiffusionOperators.Stochastic.R23.abs_le_norm_of_aeLinear
#print axioms MarkovDiffusionOperators.Stochastic.R23.exists_kernel_of_aeLinear
#print axioms MarkovDiffusionOperators.Stochastic.R23.tendsto_tr
#print axioms MarkovDiffusionOperators.Stochastic.R23.exists_kernel_of_posContraction_locFinite
#print axioms MarkovDiffusionOperators.Stochastic.R23.lintegral_P_le
#print axioms MarkovDiffusionOperators.Stochastic.R23.bind_le_of_rep
#print axioms MarkovDiffusionOperators.Stochastic.R23.exists_kernel_of_posContraction_locFinite_subInv
#print axioms MarkovDiffusionOperators.Stochastic.R23.cc_dense
#print axioms MarkovDiffusionOperators.Stochastic.R23.ncKernelRepInf
#print axioms MarkovDiffusionOperators.Stochastic.R23.ncKernelRepInf_subInvariant
#print axioms MarkovDiffusionOperators.Stochastic.R23.ncKernelRepInf_C0
#print axioms MarkovDiffusionOperators.Stochastic.R23.ncKernelRepInf_univ_ae
#print axioms MarkovDiffusionOperators.Stochastic.R23.exists_markovRep
#print axioms MarkovDiffusionOperators.Stochastic.R23.lebesgueKernelRep
#print axioms MarkovDiffusionOperators.Stochastic.R23.lebesgueKernelRep_subInvariant
#print axioms MarkovDiffusionOperators.Stochastic.R23.lebesgue_exists_markovRep

-- the infinite-`μ` construction also covers the finite OU triple (sanity check)
open MarkovDiffusionOperators.BGL.Instances.OU in
noncomputable example : MarkovDiffusionOperators.Stochastic.KernelRepresentation ouDiff :=
  MarkovDiffusionOperators.Stochastic.R23.ncKernelRepInf ouDiff
