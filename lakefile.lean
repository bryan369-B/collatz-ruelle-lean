import Lake
open Lake DSL

package collatz_ruelle where
  name := "collatz_ruelle"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "master"

@[default_target]
lean_lib CollatzRuelle where
  roots := #[`CollatzRuelle]