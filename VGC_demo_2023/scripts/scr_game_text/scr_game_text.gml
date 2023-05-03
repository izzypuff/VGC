// THIS IS THE TEXT OF THE GAME
/// @param scene_id
function scr_game_text(_scene_id) {
	
	_scene_id = string_lower(_scene_id);
	
	switch (_scene_id) {
		#region // Opening
		case "opening":
			scr_text("He approaches you", "narrator");
			scr_text("Testing a really long dialogue that will hopefully fill the entire box so I can test the line wrapping yipee!!", "narrator");
			scr_text("I'm Devon", "devon");
			scr_text("Do you say hi?", "narrator");
				scr_option("Yes", "opening - a");
				scr_option("No", "opening - b");
		break;
			case "opening - a":
				scr_text("You said hello", "narrator");
			break;
			case "opening - b":
				scr_text("You didn't say hello", "narrator");
			break;
		#endregion 
			
	
	}
	
}