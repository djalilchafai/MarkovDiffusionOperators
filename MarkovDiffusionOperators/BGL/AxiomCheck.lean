import MarkovDiffusionOperators.BGL.Frozen.CompactTriple
import MarkovDiffusionOperators.BGL.Frozen.CD
import MarkovDiffusionOperators.BGL.Frozen.FormDomain
import MarkovDiffusionOperators.BGL.Frozen.Fisher
import MarkovDiffusionOperators.BGL.FullBasic
import MarkovDiffusionOperators.BGL.Consistency
import MarkovDiffusionOperators.BGL.Calculus.Identities
import MarkovDiffusionOperators.BGL.Semigroup.Markov
import MarkovDiffusionOperators.BGL.Semigroup.Conservative
import MarkovDiffusionOperators.BGL.Semigroup.Mass
import MarkovDiffusionOperators.BGL.Semigroup.Characterization
import MarkovDiffusionOperators.BGL.Calculus.Density
import MarkovDiffusionOperators.BGL.Calculus.LSIExtend
import MarkovDiffusionOperators.BGL.Semigroup.ESA
import MarkovDiffusionOperators.BGL.Sanity.Trivial
import MarkovDiffusionOperators.BGL.Sanity.Circle

/-! Axiom audit of the BGL layer (build log must show only `propext`, `Classical.choice`,
`Quot.sound`). -/

#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.semigroup
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.generator
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.exists_bound_D4
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.L_mul_ae
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.ΓA_ae_eq
#print axioms MarkovDiffusionOperators.BGL.FullTriple.integrable_F7
#print axioms MarkovDiffusionOperators.BGL.Sanity.trivialCompact
#print axioms MarkovDiffusionOperators.BGL.Sanity.trivialCompact_CD
#print axioms MarkovDiffusionOperators.BGL.Sanity.trivialCompact_PI
#print axioms MarkovDiffusionOperators.BGL.Sanity.trivialCompact_LS
#print axioms MarkovDiffusionOperators.BGL.Sanity.circleDiffusion

-- L1: fundamental identity, chain rule, positivity, sub-Markov
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.fundamental_identity
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.chain_rule_L
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.isMarkovianForm
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.semigroup_nonneg
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.isClipForm
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.semigroup_le_one
-- S11: independence of the exhaustion sequence, P_t 1 = 1, mass conservation
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.comparison
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.conservative_transfer
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.exists_nonneg_exhaustion
#print axioms MarkovDiffusionOperators.BGL.StandardTriple.conservative_all
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.conservative_iff_semigroup_one
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.integral_semigroup_of_one
#print axioms MarkovDiffusionOperators.BGL.StandardTriple.integral_semigroup
-- M1/S10: characterisation of the generator, second form of ergodicity
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.generator_iff_form
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.ergodic_iff_energy
#print axioms MarkovDiffusionOperators.BGL.StandardTriple.energy_zero_const
-- M2: density of A₀ in D(E), Poincaré extension, entropy integrability
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.formDomain_approx
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.PI.extend
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.integrable_sq_mul_log_sq
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.LS.extend
-- ESA automatic for compact triples
#print axioms MarkovDiffusionOperators.BGL.DiffusionTriple.core_of_invariant
#print axioms MarkovDiffusionOperators.BGL.CompactTriple.esa_auto
