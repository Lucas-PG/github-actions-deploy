# Github Actions Deploy

The first version of this repository (1.0.0) contains 2 github actions:

- `bump`: bumps the repo version only when the commits include the keywords:
  - _patch, fix, fixes_: patch
  - _feat or minor_: minor
  - _MAJOR or cut-major_: major
- `deploy`: creates a new release on the repository and uploads a lambda function to AWS.

The bump version runs when there is a commit on branch `develop`, while the deploy version runs when there is a commit on the branch `main`, but only if the version is changed.

Keep in mind that the actual upload to AWS will be commented out in this repository, since it is meant for testing the timing on the bumps and deploys.

In summary, the idea is:

- Users will open branches to solve issues
- When an issue is solved, the branch will be merged into develop, at which point:
  - The `bump` action will check the commit history of that branch
  - The necessary bumps will be done
- When a new version is ready to be put into production, the branch develop will be merged into branch main
- The `deploy` action will only do the upload to AWS if there is a new version

Commits without the keywords mentioned above **will not create a new bump**
