# Yosemite Dotfiles (`.dotfiles`)

A modular configuration matrix built specifically for **OS X Yosemite (10.10)** environments. It optimizes legacy Bash 3.2 shell architectures, speeds up UI canvas scaling, and protects execution paths from modern package manager incompatibilities.

---

## 🛠️ Yosemite Specific Parameters

* **Bash 3.2 Compatibility:** Avoids complex `zsh` configurations that crash Yosemite terminal pipelines.
* **TLS Interface Shunt:** Directs standard `curl` pipelines to use native system secure transports rather than broken legacy certificates.
* **Core UI Debloating:** Contains optimization switches to strip slow 2014-era blur effects from memory-constrained configurations.

---

## 📥 Deployment Blueprints

Clone this branch securely straight into your home base path framework directory:

```bash
# 1. Step into the home directory layer
cd ~

# 2. Clone the dotfiles tree structure
git clone https://github.com/EiJackGH/dotfiles.git

# 3. Synchronize assets into production workspace paths
cp .dotfiles_temp/.bash_profile ~
cp .dotfiles_temp/yosemite_defaults.sh ~

# 4. Clean up installation residue nodes
rm -rf .dotfiles_temp

# 5. Execute OS X UI optimization scripts
chmod +x ~/yosemite_defaults.sh
./yosemite_defaults.sh

# 6. Source the newly mapped execution environment
source ~/.bash_profile

# Synchronize full configuration collection
cp .dotfiles_temp/.bash_profile ~
cp .dotfiles_temp/.bashrc ~
cp .dotfiles_temp/.vimrc ~
cp .dotfiles_temp/.tmux.conf ~
cp .dotfiles_temp/Brewfile ~
cp .dotfiles_temp/yosemite_defaults.sh ~
