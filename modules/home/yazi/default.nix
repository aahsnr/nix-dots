{ pkgs, yazi, ... }:

{
  programs.yazi = {
    enable = true;
    settings = {
      manager = {
        ratio = [
          1
          2
          4
        ];
        sort_by = "natural";
        sort_sensitive = true;
        sort_reverse = false;
        sort_dir_first = true;
        linemode = "none";
        show_hidden = true;
        show_symlink = true;
      };

      preview = {
        image_filter = "lanczos3";
        image_quality = 90;
        tab_size = 1;
        max_width = 1400;
        max_height = 3000;
        cache_dir = "";
      };

      tasks = {
        micro_workers = 5;
        macro_workers = 10;
        bizarre_retry = 5;
      };
    };
  };
}
