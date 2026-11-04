# Branches and releasing

## Branches

| Branch | Purpose |
|---|---|
| `staging` | Integration branch. New work goes here and is tested before it reaches `main`. |
| `main` | Release branch. Always matches the latest release, or a state that's ready to release. |

- **New work → `staging`.** `main` is the repository's default branch, so PRs
  from contributors and bots (such as Renovate) target `main` by default.
  Change their base to `staging`.
- **`staging` → `main`:** open a PR and merge it with
  **"Create a merge commit"**. Never squash or rebase this PR: that rewrites
  `staging`'s commits into new ones on `main`, and the branches drift apart.
- **Urgent fixes:** fix on `staging` and release as usual, so the fix gets
  the same testing as everything else. Only if `staging` has work that can't
  be released yet: branch from `main`, open a PR into `main` (merge commit),
  release, then merge `main` into `staging` so `staging` has the fix too.
- `staging` doesn't need syncing after a normal release. Its commits are
  already part of `main`, so the next `staging` → `main` PR merges cleanly.

## Releasing a new version

1. On `staging` (directly or through a feature PR), bump `spec.version` in
   `sketchup-api-stubs.gemspec` and commit it as `Bump version to X.Y.Z`.
2. Open a PR from `staging` into `main`. Wait for CI to pass
   (`bundle exec rake`, which runs YARD with `--fail-on-warning`), then merge
   with "Create a merge commit".
3. Check out `main`, pull, and make sure the working tree is clean. Then run:

   ```
   bundle exec rake release
   ```

   This builds `pkg/sketchup-api-stubs-X.Y.Z.gem`, creates and pushes the
   `vX.Y.Z` tag, and pushes the gem to RubyGems. It asks for your MFA code if
   your account has one.

## RubyGems access

To publish, your RubyGems account must be an owner of the gem. To see the
current owners, run `gem owner sketchup-api-stubs`.

If `rake release` or `gem push` fails with an authorization error, the API key
has probably been revoked or has expired. Sign in again:

```
gem signout
gem signin
```

The default key scopes (`index_rubygems`, `push_rubygem`) are enough.
