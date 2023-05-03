// THIS IS THE TEXT OF THE GAME
/// @param scene_id
function scr_game_text(_scene_id) {
	
	_scene_id = string_lower(_scene_id);
	
	switch (_scene_id) {
		#region // Opening
		case "opening":
			scr_text("An endless hall stretches out in front of you as you try and make sense of everything.", "narrator");
			scr_text("Just a few moments ago you were standing in the courtyard of the school, listening to President Haime give his opening regards to you and the rest of the new students of Video Game College.", "narrator");
			scr_text("But now, you stand in unknown territory, a new unexplored level exists in front of your eyes. The first part is always the hardest, finding the objective: class.", "narrator");
			scr_text("You frantically look around you, endless hallways, doors leading to places unknown and undiscovered, and the anxiety kicks in... You. Are. Lost.", "narrator");
			scr_text("Great, just great...", "mc");
			scr_text("You feel like Princess Radish from Epic Marco Bros, a damsel in distress waiting for her beloved locksmith to come and save her.", "narrator");
			scr_text("Only this time, you have no locksmith coming to save you, you are alone in Trouser's castle. ", "narrator");
			scr_text("\"Hey!\"", "???");
			scr_text("Someone shouts from behind you. You whip your head around to see who is yelling at you, maybe they can be your Marco, your Chain, your-", "narrator");
			scr_text("\"Yo! You! Yeah, I haven't got all day man. You're " + global.mc_name + " right?\"", "???");
			scr_text("It was at this point you were fully able to see who was standing in front of you, a man with messy red hair and yellow sleepless eyes.", "narrator");
			scr_text("And although one would think someone who is trying to greet someone would have a bright, welcoming expression on their face, his face says otherwise with his furrowed brows, and angry grin painted across his face.", "narrator");
			scr_text("\"Well? I haven't got all day.\"", "???");
			scr_text("\"I'm sorry, who are you?\"", "mc");
			scr_text("\"Who am I?\"", "devon");
			scr_text("\"I'm Devon. I uh- I go here and I was unfortunately assigned to show you around the school since you're new.\"", "devon");
			scr_text("Before you have a chance to introduce yourself or truly process what was going on, he cuts in again.", "narrator");
			scr_text("\"What's taking so long, I don't fucking have all day you know.\"", "devon");
			scr_text("He begins to walk down the hallway, implying that you should follow him.", "narrator");
			scr_text("In every other game you have ever played, the first character you meet is often the most important, but was he the one? ", "narrator");
			scr_text("Was he your Marco or Chain to lead you through the dystopian world of Video Game College, or would he just be a forgettable NPC?", "narrator");
			scr_text("\"What are you waiting for? Get your ass over here!\"", "devon");
				scr_option("Stand Behind Devon", "opening - cont");
		break;
			case "opening - cont":
				scr_text("You choose to run up behind Devon.", "narrator");
				scr_text("From behind you are able to get a good idea of his character.", "narrator");
				scr_text("His hair is messy, his clothes are wrinkled, and his back is hunched over.", "narrator");
				scr_text("All in all, he screams stereotypical guy FPS gamer.", "narrator");
				scr_text("As you keep walking while lost in your thoughts, you start to realize you have no clue where he is taking you.", "narrator");
				scr_text("By now you have probably passed by numerous amounts of classes and walked down lots of hallways but he has yet to say a word to you.", "narrator");
				scr_text("In fact, he’s not even looking where he is going, he is playing a game on his phone.", "narrator");
				scr_text("\"Hey… aren’t you supposed to show me around?\"", "mc");
				scr_text("\"I am.\"", "devon");
			break;
		#endregion 
			
	
	}
	
}