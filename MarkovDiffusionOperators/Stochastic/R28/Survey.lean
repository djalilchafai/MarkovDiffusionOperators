import Mathlib
import MarkovDiffusionOperators.Stochastic.R28.GoBridge
import MarkovDiffusionOperators.Stochastic.R28.OUB
import MarkovDiffusionOperators.Stochastic.R24.OU
import MarkovDiffusionOperators.Stochastic.R25.Kernel
import MarkovDiffusionOperators.Stochastic.FellerProcessBridge
import MarkovDiffusionOperators.BGL.Instances.Circle.Triple
import MarkovDiffusionOperators.BGL.Instances.Sphere.Compact
import MarkovDiffusionOperators.BGL.Instances.OU.Full

/-!
# Round 28 (M), part 8: one named `MarkovProcessBridge` per library triple that has one

The existing constructions (`ouMarkovProcessBridge`, `circleMarkovProcessBridge`, `sphereMarkovProcessBridge`, `brownianBridgeRd`) are stated for
the underlying `DiffusionTriple` (`ouDiff`, `cT`, `sT`, ...); here they are restated against the `StandardTriple` / `FullTriple` / `CompactTriple`
instances (the `toDiffusionTriple` projections are definitionally those triples).  See `GAPS.md` ("Round 28 (M): bridge survey") for the full table,
including the instances WITHOUT a bridge and why.
-/

namespace MarkovDiffusionOperators.Stochastic.R28

open MarkovDiffusionOperators.BGL MarkovDiffusionOperators.BGL.Instances.OU MarkovDiffusionOperators.BGL.Instances.OUCompact MarkovDiffusionOperators.BGL.Instances.Sphere
  MarkovDiffusionOperators.BGL.Circle MarkovDiffusionOperators.BGL.Instances.GegenbauerOpen MarkovDiffusionOperators.Stochastic

noncomputable def ouStandard_bridge : MarkovProcessBridge ouStandard.toDiffusionTriple := ouMarkovProcessBridge
noncomputable def ouFull_bridge : MarkovProcessBridge ouFull.toDiffusionTriple := ouMarkovProcessBridge
noncomputable def ouBStandard_bridge : MarkovProcessBridge ouBStandard.toDiffusionTriple := ouBMarkovProcessBridge
noncomputable def ouBFull_bridge : MarkovProcessBridge ouBFull.toDiffusionTriple := ouBMarkovProcessBridge
noncomputable def ouBCompact_bridge : MarkovProcessBridge ouBCompact.toDiffusionTriple := ouBMarkovProcessBridge

noncomputable def circleStandard_bridge : MarkovProcessBridge circleStandard.toDiffusionTriple := circleMarkovProcessBridge
noncomputable def circleFull_bridge : MarkovProcessBridge circleFull.toDiffusionTriple := circleMarkovProcessBridge
noncomputable def circleCompact_bridge : MarkovProcessBridge circleCompact.toDiffusionTriple := circleMarkovProcessBridge

noncomputable def sStandard_bridge : MarkovProcessBridge sStandard.toDiffusionTriple := Sphere.sphereMarkovProcessBridge
noncomputable def sFull_bridge : MarkovProcessBridge sFull.toDiffusionTriple := Sphere.sphereMarkovProcessBridge
noncomputable def sCompact_bridge : MarkovProcessBridge sCompact.toDiffusionTriple := Sphere.sphereMarkovProcessBridge

noncomputable def lebesgueRdFull_bridge (d : ℕ) (hd : 1 ≤ d) :
    MarkovProcessBridge (MarkovDiffusionOperators.BGL.LebesgueRd.lebesgueRdFull d hd).toDiffusionTriple :=
  R25.brownianBridgeRd hd

noncomputable def goFull_bridge : MarkovProcessBridge goFullTriple.toDiffusionTriple := goMarkovProcessBridge

end MarkovDiffusionOperators.Stochastic.R28
