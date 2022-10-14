gh api \
    repos/{owner}/{repo}/collaborators \
    --jq 'map(.login) | .[]' | \
xargs -L1 -I {} \
    gh api users/{} \
    --jq '"Co-authored-by: " + .name + " <" + .email + ">"'
