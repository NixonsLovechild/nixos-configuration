{ pkgs, ... }:

{
	programs.alacritty = {
		enable = true;

		settings = {

		draw_bold_text_with_bright_colors = true;
				window = {
								title = "Terminal";

								padding = { 
												y = 20;
												x = 20;
								};

								dynamic_padding = true;
								save_to_clipboard = true;
								dimensions = {
												lines = 75;
												columns = 100;
								};
				};	

			scrolling = {
								history = 10000;
								multiplier = 1;
		};
			font = {
								size = 12;
								normal = {
												family = "PragmataPro Mono Liga";
								};
				
								bold = {
												family = "PragmataPro Mono Liga";
												style = "Bold";
								};

								italic = {
												family = "PragmataPro Mono Liga";
												style = "Italic";
								};

								offset = {
												x = 0;
												y = 8;
								};

								glyph_offset = {
												x = 0;
												y = 4;
								};

								ligatures = true;
								glyphs = true;
		};

		colors = {
		## gruvbox https://github.com/alacritty/alacritty/wiki/Color-schemes

				primary = {
							background = "#32302f";
							foreground = "#ebdbb2"; 
							bright_foreground = "#fbf1c7";
							dim_foreground = "#a89984";
				};

				cursor = { 
								text = "CellBackground";
								cursor = "CellForeground";
				};

				vi_mode_cursor = {
								text = "CellBackground";
								cursor = "CellForeground";
				};

				normal = {
								black = "#fbf1c7";
								red = "#cc241d"; 
								green = "#98971a";
								yellow = "#d79921";
								blue = "#458588";
								magenta = "#b16286";
								cyan = "#689d6a";
								white = "#7c6f64";
				};

				bright = {
								black = "#928374";
								red = "#fb4934"; 
								green = "#b8bb26";
								yellow = "#fabd2f";
								blue = "#83a598";
								magenta = "#d3869b";
								cyan = "#8ec07c";
								white = "#ebdbb2";
				};
		};
};
};
}
