## NVM

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)" 

  if [ -z "$nvmrc_path" ] && [ -f package.json ]; then
    local nvm_version_in_package_json="$(/opt/homebrew/bin/gcat package.json | /opt/homebrew/bin/jq '.engines.node' | sed 's/[\^\~\"]//gi')"

    if [ -n "$nvm_version_in_package_json" ]; then
      nvm install $nvm_version_in_package_json
      nvm use $nvm_version_in_package_json
    fi
  fi

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc
