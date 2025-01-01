{ config, pkgs, ... }:

{
  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
      add_newline = false;
      character = {
        success_symbol = "[󰊠](bold green)";
        error_symbol = "[󰊠](bold red)";
        vicmd_symbol = "[󰊠](bold yellow)";
        format = "$symbol [|](bold bright-black) ";
      };
      command_timeout = 1000;
      directory = {
        home_symbol = "󰊠 ";
        style = "cyan";
      };
      git_commit.tag_symbol = " tag ";
      git_branch = {
        style = "purple";
        symbol = " ";
      };
      git_metrics = {
        added_style = "[]bold green";
        deleted_style = "bold red";
        disabled = false;
      };
      hostname = {
        ssh_only = true;
        format = "[$hostname](bold blue) ";
        disabled = false;
      };
      line_break.disabled = true;
      scan_timeout = 1000;
      # format = "$directory$git_branch$git_metrics$git_commit$git_state$git_status$all";

      bun.symbol = "[](blue) ";
      c.symbol = "[](blue) ";
      conda.symbol = "[](blue) ";
      cmake.symbol = "[](blue) ";
      directory.read_only = " ro";
      docker_context.symbol = "[](blue) ";
      lua.symbol = "[󰢱](blue) ";
      memory_usage.symbol = "[󰍛](blue) ";
      nodejs.symbol = "[](blue) ";
      package.symbol = "[](blue) ";
      perl.symbol = "[](blue) ";
      python.symbol = "[](blue) ";
      rust.symbol = "[](blue) ";
      sudo.symbol = "[](red) ";
    };
  };
}
