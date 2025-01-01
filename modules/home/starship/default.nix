{ config, pkgs, lib, ... }:

{
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      scan_timeout = 10;
      add_newline = false;
      line_break.disabled = true;
      format = "$directory$git_branch$git_metrics$git_commit$git_state$git_status$all";
      character = {
        success_symbol = "[󰊠](bold green)";
        error_symbol = "[󰊠](bold red)";
        vicmd_symbol = "[󰊠](bold yellow)";
        format = "$symbol [|](bold bright-black) ";
      };
      # directory = {
      #   home_symbol = "home";
      #   style = "cyan";
      # };
      git_commit.tag_symbol = " tag ";
      git_branch = {
        style = "purple";
        symbol = " ";
      };
      git_metrics = {
        added_style = "bold yellow";
        deleted_style = "bold red";
        disabled = false;
      };
      aws.symbol = "aws ";
      bun.symbol = "bun ";
      c.symbol = "C ";
      conda.symbol = "conda ";
      cmake.symbol = "cmake ";
      directory.read_only = " ro";
      docker_context.symbol = "docker ";
      kotlin.symbol = "kt ";
      lua.symbol = "lua ";
      memory_usage.symbol = "memory ";
      nodejs.symbol = "nodejs ";
      package.symbol = "pkg ";
      perl.symbol = "pl ";
      python.symbol = "py ";
      rust.symbol = "rs ";
      sudo.symbol = "sudo ";
    };
  };
}




{config, ...}: {
  programs.starship = {
    enable = true;
    enableZshIntegration = config.programs.zsh.enable;
    settings = {
      add_newline = false;
      command_timeout = 1000;
      scan_timeout = 3;
      character = {
        error_symbol = "[󰊠](bold red)";
        success_symbol = "[󰊠](bold green)";
        vicmd_symbol = "[󰊠](bold yellow)";
        format = "$symbol [|](bold bright-black) ";
      };
      git_commit = {commit_hash_length = 7;};
      line_break.disabled = false;
      lua.symbol = "[](blue) ";
      python.symbol = "[](blue) ";
      hostname = {
        ssh_only = true;
        format = "[$hostname](bold blue) ";
        disabled = false;
      };
    };
  };
}
