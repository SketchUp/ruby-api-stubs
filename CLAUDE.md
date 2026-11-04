# sketchup-api-stubs

YARD stubs for the SketchUp Ruby API, published to RubyGems as
[`sketchup-api-stubs`](https://rubygems.org/gems/sketchup-api-stubs).

Branching and release process: see [RELEASING.md](RELEASING.md).

- `staging` is the integration branch, and `main` is the release branch.
  Never squash or rebase a `staging` → `main` PR. If the branches diverge
  anyway, stop and ask before resetting or force-pushing either one.
  `main` is protected against force-pushes.
- The user runs `gem signin` themselves, since it asks for a password.
  Never print API key values.
