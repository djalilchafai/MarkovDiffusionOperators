import MarkovDiffusionOperators.BGL.Semigroup.Characterization
import MarkovDiffusionOperators.BGL.Semigroup.Conservative
import MarkovDiffusionOperators.BGL.Semigroup.ESA
import MarkovDiffusionOperators.BGL.Semigroup.Markov
import MarkovDiffusionOperators.BGL.Semigroup.Mass
import MarkovDiffusionOperators.BGL.Calculus.Density
import MarkovDiffusionOperators.BGL.Calculus.Identities
import MarkovDiffusionOperators.BGL.Calculus.LSIExtend
import MarkovDiffusionOperators.BGL.Instances.Circle.Triple
import MarkovDiffusionOperators.BGL.Instances.OU.Full
import MarkovDiffusionOperators.BGL.Theory.ALevel
import MarkovDiffusionOperators.BGL.Theory.Convergence
import MarkovDiffusionOperators.BGL.Theory.ESAOne
import MarkovDiffusionOperators.BGL.Theory.Gamma2Integral
import MarkovDiffusionOperators.BGL.Theory.GammaCalculus
import MarkovDiffusionOperators.BGL.Theory.GradientBound
import MarkovDiffusionOperators.BGL.Theory.LogSobolev
import MarkovDiffusionOperators.BGL.Theory.LogSobolevMain
import MarkovDiffusionOperators.BGL.Theory.Poincare
import MarkovDiffusionOperators.BGL.Theory.Tests

/-! Stage-3 axiom walk (NOT imported by root). Modules restricted to the audited set. -/
open Lean Elab Command

run_cmd do
  let env ← getEnv
  let ok : List Name := [``propext, ``Classical.choice, ``Quot.sound]
  let pre : List Name := [`MarkovDiffusionOperators.BGL.Semigroup, `MarkovDiffusionOperators.BGL.Calculus,
    `MarkovDiffusionOperators.BGL.Theory, `MarkovDiffusionOperators.BGL.Instances.Circle, `MarkovDiffusionOperators.BGL.Instances.OU,
    `MarkovDiffusionOperators.BGL.Audit, `MarkovDiffusionOperators.BGL.Frozen, `MarkovDiffusionOperators.BGL.Sanity]
  let skip : List Name := [`MarkovDiffusionOperators.BGL.Theory.Compact, `MarkovDiffusionOperators.BGL.Instances.OU.LSI]
  let mut n : Nat := 0
  let mut bad : Nat := 0
  let mut sorries : Nat := 0
  let mut kinds : Nat := 0
  for (nm, ci) in env.constants.map₁.toList do
    if nm.isInternal then continue
    match env.getModuleIdxFor? nm with
    | none => continue
    | some idx =>
      let mn := env.header.moduleNames[idx.toNat]!
      if pre.any (·.isPrefixOf mn) && !skip.any (·.isPrefixOf mn) then
        n := n + 1
        if ci.isUnsafe || ci.isPartial then
          kinds := kinds + 1
          logInfo m!"UNSAFE/PARTIAL {nm}"
        if let .axiomInfo _ := ci then
          logInfo m!"AXIOMDECL {nm}"
        let axs ← liftCoreM (Lean.collectAxioms nm)
        let extra := axs.toList.filter (fun a => !ok.contains a)
        if !extra.isEmpty then
          bad := bad + 1
          logInfo m!"AXIOM {nm}: {extra}"
        if ci.value?.any (fun e => Lean.Expr.hasSorry e) then
          sorries := sorries + 1
          logInfo m!"SORRY {nm}"
  logInfo m!"walked {n} constants, {bad} with extra axioms, {sorries} sorry, {kinds} unsafe/partial"
