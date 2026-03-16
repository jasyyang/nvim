# Zoxide configuration
# https://github.com/ajeetdsouza/zoxide

# Initialize zoxide for zsh
eval "$(zoxide init zsh)"

# Seed common paths into zoxide database based on CONFIG_PROFILE
# These run silently - paths that don't exist are ignored
_seed_zoxide_paths() {
    local paths=()

    if [[ "$CONFIG_PROFILE" == "kensho" ]]; then
        paths=(
            "$HOME/code/zentreefish/projects/text2sql"
            "$HOME/code/zentreefish/klib/pkgs/kensho_code_eval"
        )
    else
        paths=(
            "/home/jason/code"
        )
    fi

    for p in "${paths[@]}"; do
        [[ -d "$p" ]] && zoxide add "$p" 2>/dev/null
    done
}
_seed_zoxide_paths
unset -f _seed_zoxide_paths
