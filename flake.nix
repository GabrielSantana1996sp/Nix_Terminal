{
  description = "Ambiente Dev + Segurança + DevOps universal";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in {
      devShells.${system}.default = pkgs.mkShell {
        buildInputs = [
          # Desenvolvimento
          pkgs.python3 pkgs.python3Packages.pip pkgs.python3Packages.virtualenv
          pkgs.jdk pkgs.jre pkgs.go pkgs.nodejs_20 pkgs.rustc pkgs.cargo
          pkgs.ruby pkgs.bundler pkgs.geany pkgs.vim pkgs.neovim pkgs.git
          pkgs.gnumake pkgs.cmake pkgs.autoconf pkgs.automake pkgs.gdb

          # Servidores e bancos
          pkgs.apacheHttpd pkgs.nginx pkgs.php pkgs.mariadb

          # DevOps
          pkgs.podman pkgs.ansible pkgs.docker pkgs.systemd

		  # Segurança
		  pkgs.nftables pkgs.fail2ban pkgs.clamav pkgs.gnupg
          pkgs.lynis pkgs.aide pkgs.logcheck

          # Documentação
          pkgs.doxygen pkgs.man pkgs.mkdocs pkgs.pandoc

          # Utilitários
		  pkgs.tmux pkgs.htop pkgs.ranger pkgs.keepassxc pkgs.curl pkgs.wget
	      pkgs.rsync pkgs.nettools pkgs.bind pkgs.traceroute pkgs.gparted
		  pkgs.cups pkgs.bluez pkgs.blueman pkgs.xdg-utils pkgs.gvfs pkgs.udisks
		  pkgs.flatpak pkgs.noto-fonts pkgs.noto-fonts-cjk-sans pkgs.polkit

          # Arsenal hacker extra
          pkgs.aircrack-ng pkgs.consul pkgs.ettercap pkgs.hydra pkgs.ionic-cli
          pkgs.john pkgs.libcap pkgs.metasploit pkgs.mysql-workbench pkgs.mysql84
          pkgs.nikto pkgs.nix pkgs.nmap pkgs.packer pkgs.sqlmap pkgs.terraform
          pkgs.vault pkgs.wireshark
        ];

        shellHook = ''
          export PS1="[NIX-DEV] \w$ "
          echo "Ambiente Nix universal carregado!"
          echo "Ferramentas disponíveis: Dev, Segurança, DevOps e utilitários."
        '';
      };
    };
}
