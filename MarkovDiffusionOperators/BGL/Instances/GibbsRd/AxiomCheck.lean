import MarkovDiffusionOperators.BGL.Instances.GibbsRd.Main
import MarkovDiffusionOperators.BGL.Instances.GibbsRd.Compat1D
import MarkovDiffusionOperators.BGL.Instances.GibbsRd.Probes

/-! Axiom audit of `BGL/Instances/GibbsRd` (the build log must show only `propext`, `Classical.choice`,
`Quot.sound`). -/

-- calculus
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.pderiv_comp
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.pderiv_symm
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.integral_pderiv_eq_zero
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.comp_mem_A₀
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.sum_sq_pderiv_cut_le
-- generic weighted elliptic operator (Part A)
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.ibp_master
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.ibp_sm
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.L_mul
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.Γ_comp
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.L_comp
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.diff
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.ΓA_eq
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.diff_isComplete
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.preFull
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.diff_esaProp
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.diff_ergodic
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.integral_Γ₂
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.integrated_CD
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.ell_poincare
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.ell_spectralGap
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.ell_expDecay
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.standard
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.full
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.full_CD
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.full_poincare
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.full_logSobolev
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.EllData.full_gradient_bound
-- Gibbs on ℝ^d (Part B)
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.toEll
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.toEll_Γ
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.toEll_L
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRdDiff
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRdDiff_isComplete
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRd_Γ₂_eq
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRd_curv
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRd_integral_Γ₂
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRd_integrated_CD
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRd_poincare
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRd_spectralGap
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRd_expDecay
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRdFull
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRdFull_CD
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRdFull_poincare
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRdFull_logSobolev
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.gibbsRdFull_gradient_bound
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.quad_lower_rd
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.integrable_of_convex_rd
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.GibbsRdData.ofConvex
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.hessGe_gauss
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.gaussData
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.gaussData_curv
-- consistency with the 1-D Gibbs development
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.Gr_restr1
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.Lr_restr1
-- self-audit probes
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.gauss_not_curv_two
#print axioms MarkovDiffusionOperators.BGL.Instances.GibbsRd.hess_gauss
