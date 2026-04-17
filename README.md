# Nix Universal Dev Environment

Um ambiente de desenvolvimento **universal**, completo e reprodutível usando **Nix Flakes**, focado em:

- **Desenvolvimento**
- **DevOps**
- **Segurança**

Ideal para desenvolvedores full-stack, pentesters, sysadmins e engenheiros DevOps que precisam de um ambiente rico com diversas linguagens, ferramentas de infraestrutura e um arsenal de segurança.

##  Principais Recursos

### Linguagens de Programação
- Python 3 (com pip e virtualenv)
- Java (JDK + JRE)
- Go
- Node.js 20
- Rust (rustc + cargo)
- Ruby + Bundler

### Desenvolvimento
- Editores: Neovim, Vim, Geany
- Git
- Ferramentas de build: Make, CMake, Autoconf, Automake, GDB

### Servidores e Bancos de Dados
- Apache HTTPD
- Nginx
- PHP
- MariaDB

### DevOps e Contêineres
- Docker
- Podman
- Ansible
- Terraform
- Packer
- Vault
- Consul
- Systemd

### Segurança e Pentest
- Nmap, Sqlmap, Nikto, Metasploit, Hydra, John the Ripper
- Aircrack-ng, Ettercap, Wireshark
- Lynis, AIDE, Fail2ban, ClamAV, GnuPG
- Nftables

### Utilitários e Produtividade
- Tmux, htop, ranger, KeePassXC
- Ferramentas de rede (curl, wget, rsync, nettools, traceroute, dig)
- GParted, Flatpak
- Documentação: Doxygen, Pandoc, MkDocs
- Suporte a fontes (Noto Fonts), Bluetooth, impressão e mais

##  Como Usar

### 1. Habilitar Flakes (uma única vez)

```bash
mkdir -p ~/.config/nix
echo 'experimental-features = nix-command flakes' >> ~/.config/nix/nix.conf
```

### 2. Entrar no ambiente

Dentro da pasta que contém o `flake.nix`, execute:

```bash
nix develop
```

### 3. Pronto!

Você verá a seguinte mensagem:

```
Ambiente Nix universal carregado!
Ferramentas disponíveis: Dev, Segurança, DevOps e utilitários.
[NIX-DEV] ~/seu-projeto$
```

##  Estrutura do Projeto

```bash
.
├── flake.nix          # Configuração do ambiente
├── flake.lock         # Arquivo de lock (gerado automaticamente)
└── README.md          # Este arquivo
```

##  Como Personalizar

Edite a lista `buildInputs` no arquivo `flake.nix` para adicionar ou remover pacotes.

Exemplo de pacotes úteis adicionais:

```nix
pkgs.python3Packages.poetry
pkgs.golangci-lint
pkgs.kubernetes-helm
pkgs.k9s
```

## Dicas Úteis

- **direnv + nix-direnv**: Carregue o ambiente automaticamente ao entrar na pasta
- Atualizar o flake: `nix flake update`
- Entrar com versão mais recente: `nix develop --refresh`

##  Aviso Importante

Este ambiente inclui ferramentas de teste de penetração (Metasploit, Hydra, Sqlmap, Aircrack-ng, etc.).  
**Use com responsabilidade e apenas em ambientes e sistemas que você tem permissão para testar.**

---

**Feito com  usando Nix Flakes**

Sugestões e contribuições são sempre bem-vindas!
```
