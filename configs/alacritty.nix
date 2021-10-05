{ pkgs, ... }:

{
	programs.alacritty = {
		enable = true;

		settings = {

		draw_bold_text_with_bright_colors = true;

				wirdow = {
								title = "Terminal";

								padding = { 
												y = 20;
												x = 20;
								};

								dynamic_padding = true;

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

		};

		colors = {
				primary = {
							background = "#2E3440";
							foreground = "#D8DEE9"; 
				};

				normal = {
								black = "#3B4252";
								red = "#BF616A"; 
								green = "#ABD56C";
								yellow = "#EBCB8B";
								blue = "#81A1C1";
								magenta = "#B48EAD";
								cyan = "#a1efe4";
								white = "#E5E9F0";
 
				};

				bright = {
								black = "#4C566A";
								red = "#BF616A"; 
								green = "#ABD56C";
								yellow = "#EBCB8B";
								blue = "#81A1C1";
								magenta = "#B48EAD";
								cyan = "#a1efe4";
								white = "#ECEFF4";
				};
		};

				};
};
}
