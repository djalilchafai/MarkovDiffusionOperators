import MarkovDiffusionOperators.BGL.Theory.Extension.ClosedDetect
import MarkovDiffusionOperators.BGL.Theory.Extension.Hessian
import MarkovDiffusionOperators.BGL.Theory.Extension.HessExt2
import MarkovDiffusionOperators.BGL.Theory.Extension.Ident
import MarkovDiffusionOperators.BGL.Theory.Extension.Gamma2Ident
import MarkovDiffusionOperators.BGL.Theory.Extension.Gamma2Mul

/-! Axiom audit of the round-14 results (`Extension/STATEMENTS_R14.md`). -/

#print axioms MarkovDiffusionOperators.BGL.FullTriple.gammaE_exists
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gammaE_integral
#print axioms MarkovDiffusionOperators.BGL.FullTriple.mul_formDomain
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gammaE_mulE
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gammaE_eq_ΓA
#print axioms MarkovDiffusionOperators.BGL.FullTriple.mem_domain_of_adjoint
#print axioms MarkovDiffusionOperators.BGL.FullTriple.mem_domain_of_ESA
#print axioms MarkovDiffusionOperators.BGL.FullTriple.mem_domain_of_formDomain
#print axioms MarkovDiffusionOperators.BGL.FullTriple.mem_formDomain_of_ESA
#print axioms MarkovDiffusionOperators.BGL.FullTriple.ae_zero_of_forall_integral_A₀
#print axioms MarkovDiffusionOperators.BGL.FullTriple.adjoint_eq_L
#print axioms MarkovDiffusionOperators.BGL.FullTriple.Γ₂_mul_Hess
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessian_general_ineq
#print axioms MarkovDiffusionOperators.BGL.FullTriple.Hess_mul_mid
#print axioms MarkovDiffusionOperators.BGL.FullTriple.Hess_lin_left
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_exists
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_tendsto
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_mulE
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_ineq
#print axioms MarkovDiffusionOperators.BGL.FullTriple.int_mul_Hess
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_eq_Hess
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hessE_eq_Hess'
#print axioms MarkovDiffusionOperators.BGL.FullTriple.integrable_ΓA_of_domain
#print axioms MarkovDiffusionOperators.BGL.FullTriple.GraphConv.formConv
#print axioms MarkovDiffusionOperators.BGL.FullTriple.int_m_Γ₂
#print axioms MarkovDiffusionOperators.BGL.FullTriple.Γ₂_ext_eq
#print axioms MarkovDiffusionOperators.BGL.FullTriple.generator_ae_L
#print axioms MarkovDiffusionOperators.BGL.FullTriple.integrable_Γ₂_of_domain
#print axioms MarkovDiffusionOperators.BGL.FullTriple.ibp_of_domain
#print axioms MarkovDiffusionOperators.BGL.FullTriple.hess2_exists
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gamma2E_exists
#print axioms MarkovDiffusionOperators.BGL.FullTriple.mulE_mem_domain
#print axioms MarkovDiffusionOperators.BGL.FullTriple.gamma2E_mulE
