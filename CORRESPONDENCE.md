# Correspondence with Bakry–Gentil–Ledoux (paraphrased; labels are the book's §3.4 labels)

Status: **proved** = Lean theorem, no extra hypothesis beyond the stated ones; **cond.** = proved from a named regularity structure.
Net status as of round 32 (November 2026). Chronology, exact remaining gaps and differences from the book: `MarkovTriple/BGL/Theory/GAPS.md`
(read its "Net status" section first) and `ERRATA.md`.

| Book | Lean (namespace `MarkovTriple.BGL`) | Status |
|---|---|---|
| D1–D8, Def 3.1.1 | `DiffusionTriple` | structure (frozen, proposed) |
| D4, (3.1.1), (3.1.6), (3.1.8) | `exists_bound_D4`, `fundamental_identity`, `L_mul_ae`, `chain_rule_L` | proved |
| D7, D9 | `DiffusionTriple.semigroup/.generator`, `generator_iff_form` | defined / proved |
| positivity, sub-Markov (Prop 3.1.6-type facts) | `semigroup_nonneg`, `semigroup_le_one` | proved |
| S10 ergodic | `StandardTriple.ergodic`; `ergodic_iff_energy` | field / proved equivalence |
| S11 conservative; Def 3.1.12 | `StandardTriple.conservative`; `conservative_all`, `conservative_iff_semigroup_one` | field / proved transfer |
| mass conservation, finite μ | `Theory/ESAOne`: `conservative_of_esa` | proved (ESA alone) |
| Prop 3.2.1, 3.3.10, 3.3.11 (ESA and ergodicity from weak hypo-ellipticity) | `PreFull.gradient_eq_zero`, `DiffusionTriple.ergodic_of_weakHypo`, `DiffusionTriple.ESAProp_of_weakHypo` | proved (3.3.10 via the 3.2.1 cut-off, needs completeness; see GAPS) |
| F1–F10, Def 3.3.1, 3.3.25 | `FullTriple` | structure (frozen, proposed) |
| Def 3.3.26 compact; ESA automatic | `CompactTriple`, `esa_auto` | proved |
| Def 3.3.12, 3.3.14 | `Γ₂`, `FullTriple.CD` | defined |
| (3.3.8), integrated CD | `Theory/Gamma2Integral`: `integral_Γ₂`, `integral_CD`, `CD_integrated_domain`, `CD_form_domain` | proved |
| Props 3.3.5–3.3.6 (`Γ` on `𝒟(ℰ)`) | `gammaE` (`Theory/Extension/`) | proved |
| Prop 3.3.16 (i)–(viii), operator level | `FullTriple.gamma_limits` (i)–(iii); `hessE`, `hessE_mulE`, `hessE_ineq` (iv)–(vi), (viii); `gamma2E`, `gamma2E_mulE` (vii) | proved |
| Prop 3.3.17, direct half | `hessE_eq_Hess`, `Γ₂_ext_eq`, `integrable_Γ₂_of_domain`, `ibp_of_domain` | proved |
| Prop 3.3.17, converse | `mem_domain_of_Γ₂` (cond. on `Core2`); `mem_domain_of_Γ₂_direct` (complete triples, `CD(ρ,n)`); `mem_domain_of_Γ₂_finite` (`CD(ρ,n)`, `n < ∞`) | proved, by routes that differ from BGL; **open:** `n = ∞` without completeness |
| `Core2` (`𝒜₀` core for `L²`, implicit in BGL, ERRATA R15-1) | `core2_iff_orth`, `core2_of_dense`; instances (Gibbs on ℝ / ℝᵈ under Hessian growth bounds, `EllData`/`RiemData` with `CoreCut`, Lebesgue on ℝᵈ, zonal `S³`, round sphere); `goFullTriple_not_core2`, `not_core2L_five_halves` | proved where stated; **fails** for the non-complete `goFullTriple`; **open** for general smooth `V` and the hyperbolic plane |
| (3.3.4) Hessian product rule; (3.3.6) reinforced CD | `FullTriple.Γ₂_mul_left`, `FullTriple.reinforced_cd` (`Theory/Strong/`) | proved |
| Poincaré, Lichnerowicz (Prop 4.8.1, Thm 4.8.4) | `poincare_of_CD_infty`, `poincare_of_CD_dim`, `poincare_extend_domain` | proved |
| Cor 3.3.19 (weak gradient bound) | `FullTriple.gradient_bound_unconditional`, `hasGradientBound_unconditional` (`Theory/Interp/JensenGrad`) | proved for `ρ ≥ 0`; **open:** `ρ < 0` |
| **Thm 3.3.18 (strong gradient bound)** | `FullTriple.strongInterpolation`, `FullTriple.strong_gradient_bound_unconditional` (`Theory/Interp/`) | proved for `ρ ≥ 0`; **open:** `ρ < 0` |
| LSI from CD(ρ,n), ρ > 0 (Prop 5.7.1) | `FullTriple.entropyInterpolation`, `logSobolev_unconditional`, `logSobolev_domain_unconditional` | proved (probability measure) |
| Finite-dim LSI `(n−1)/(ρn)` (Thm 5.7.4) | `FullTriple.finiteDimExt`, `logSobolev_dim_unconditional`; `compact_logSobolev_dim` | proved (finite measure, `1 < n < ∞`); **open:** `n = 1`, optimality |
| Def 3.3.9 completeness | `DiffusionTriple.IsComplete`; `lebesgueDiffusion_isComplete`, `ouDiff_isComplete`, `gibbsDiff_isComplete` | proved |
| Thm 3.3.23 (mass conservation) | `ExtendedAlgebra.conservative_of_complete`, `isFiniteMeasure_of_complete`; `FullTriple.conservative_of_complete_unconditional` | proved for complete full triples with `CD(ρ,n)`, `ρ ≥ 0` |
| Instances (compact) | `Circle.circleCompact`, `Instances.OUCompact.ouBCompact`, `Instances.Sphere.sCompact` (zonal `S³`, `CD(2,3)`, `sphere_LS_dim`) | proved |
| Instance: round sphere `S^{n−1} ⊂ ℝⁿ`, `n ≥ 2` | `sphereFullU` (F8 = `sphereF8`), `sphereFullU_CD` (`CD(n−2, n−1)`), `sphereFullU_core2` | proved, unconditional |
| Instances (non-compact) | `Lebesgue.lebesgueFull`; `lebesgueRdFull` (`lebesgueRdFull_CD_iff : CD ρ n ↔ ρ ≤ 0 ∧ d ≤ n`); `gaussRdFull`; `OU.ouFull` (`ouFull_LS`, `ouFull_gradient_bound`) | proved |
| Gibbs `e^{−V}dx` on ℝ, any smooth `V` with `e^{−V}` integrable | `GibbsData.gibbsFull_unconditional` (`weakHypo`, `f8` proved), `gibbsFull_CD_unconditional` (`V'' ≥ ρ`), `gibbs_poincare_unconditional`, `gibbsFull_logSobolev_unconditional`, `gibbsFull_gradient_bound_unconditional`, `gibbsFull_strong_gradient_bound_unconditional` | proved |
| Gibbs on ℝᵈ; elliptic / Riemannian chart data | `GibbsRdData.gibbsRdFull_unconditional`, `gibbsRdFull_CD_unconditional` (`HessGe V ρ`), `gibbsRdFull_poincare_unconditional`, `gibbsRdFull_logSobolev_unconditional`, `gibbsRdFull_gradient_bound_noHyp`; `riemFull_unconditional` | proved (`HessGe`/`Curv ρ` are the only curvature hypotheses) |
| Non-complete triples | `ivDiff`, `iv_no_fullTriple` (interval: not a full triple); `goFullTriple` (Gegenbauer `λ = 3/2`, `goFullTriple_CD : CD 3 4`); `oFull` (open zonal `S³`) | proved |
| Finite-state obstruction | `Discrete.finite_Γ_ae_zero`, `finite_L_ae_zero`, `finite_standard_const` | proved (finite-state generators are not diffusions) |
| Friedrichs extension, resolvent, generator, CFC semigroup (D7/D9 machinery) | `MarkovTriple.Hilbert.FormData.*` in `BGL/Analysis/Hilbert/` (fenced by `check_frozen.py`) | proved |
| Hermite / Mehler analysis behind OU | `MarkovTriple.Sanity.OU.*` in `BGL/Analysis/OU/` (namespace kept from the removed legacy surface) | proved |
| Beyond BGL Ch. 3–5: Feller kernels, `MarkovProcessBridge` | `MarkovTriple/Stochastic/` (`IsFellerC0`, e.g. `gibbsRdFull_isFellerC0_of_linGrowth`) | see GAPS rounds 17–32 |

Note: the legacy first surface (`Frozen/`, `Sanity/`, `FunctionalInequalities/`) no longer exists; see DECISIONS 17. All BGL names above
live in `MarkovTriple/BGL/`.
