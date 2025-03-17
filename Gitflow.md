# Gitflow Workflow Conventions


We will be using the gitflow workflow as described by [Atlassian](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow).

## Branch Types and Naming Conventions

### 1. Main Branch

- **Name**: `main`
- **Purpose**: Production ready code.

### 2. Develop Branch

- **Name**: `develop`
- **Purpose**: Before code is released to production, it arrives here. This is the branch that is constantly being updated and integrated with new features before finalized and pushed to production using main.

### 3. Feature Branches

- **Prefix**: `feature/`
- **Purpose**: These branches are where the new features will be created. These branches originate from `develop` and merge into it upon completion.
- **Naming Convention**: `feature/<feature_name>`
- **Git Commands**: `git checkout develop` `git checkout -b feature_branch`

### 4. Release Branches

- **Prefix**: `release/`
- **Purpose**: This is where features and the develop branch are tested before being pushed into main. These branches branch off from `develop` and merge into both `main` and `develop` after release.
- **Naming Convention**: `release/v<major>.<minor>`
- **Git Commands**: `git checkout develop` `git checkout -b release/1.0`

### 5. Hotfix Branches

- **Prefix**: `hotfix/`
- **Purpose**: Address critical issues found in the production code. These branches originate from `main` and merge back into both `main` and `develop`.
- **Naming Convention**: `hotfix/<description>`
- **Git Commands**: `$ git checkout main` `$ git checkout -b hotfix_branch`


## Additional Guidelines

- **Commit Messages**: Write meaningful commit messages that describe the change.
- **Pull Requests**: Ensure all PRs have at least one reviewer approval and pass all automated checks before merging. Leave a "LGTM" before merging.
- **Branch Deletion**: Delete feature and hotfix branches after merging to keep the repository clean.

