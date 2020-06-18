# for github repos branch rename:

0. [Create a Github Personal Access Token](https://github.com/settings/tokens/new)
1. prepare repos.txt (executing getallReposOfOrg.sh may help)
2. execute:
```bash
export GH_USERNAME=your-username
export GH_TOKEN=the-token-above
./rename.sh
```

# for local repos branch rename:

1. prepare localRepos.txt
2. execute:
```bash
./renameLocal.sh
```


---


# rename-branch
A little script to help you rename your repos' branch name from `master` to `main` and set it as the default branch in github.

But why 😩? Check [this Twitter thread](https://twitter.com/mislav/status/1270388510684598272)

Inspired by [this post](https://www.hanselman.com/blog/EasilyRenameYourGitDefaultBranchFromMasterToMain.aspx)

## Dependencies
- curl
- jq

## Usage

[Create a Github Personal Access Token](https://github.com/settings/tokens/new)

Then execute the following in your terminal
```bash
export GH_USERNAME=your-username
export GH_TOKEN=the-token-above
export GH_ORG=the-org
./rename.sh
```

## Pagination
If you have more than 30 repos you will need to adjust the pagination accordingly.
