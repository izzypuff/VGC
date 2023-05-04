// THIS IS THE TEXT OF THE GAME
/// @param scene_id
function scr_game_text(_scene_id) {
	
	_scene_id = string_lower(_scene_id);
	
	switch (_scene_id) {
		#region // Opening
		case "opening":
			scr_set_sprite(noone);
			scr_text("An endless hall stretches out in front of you as you try and make sense of everything.", "narrator");
			scr_text("Just a few moments ago you were standing in the courtyard of the school, listening to President Haime give his opening regards to you and the rest of the new students of Video Game College.", "narrator");
			scr_text("But now, you stand in unknown territory, a new unexplored level exists in front of your eyes. The first part is always the hardest, finding the objective: class.", "narrator");
			scr_text("You frantically look around you, endless hallways, doors leading to places unknown and undiscovered, and the anxiety kicks in... You. Are. Lost.", "narrator");
			scr_text("Great, just great...", "mc");
			scr_text("You feel like Princess Radish from Epic Marco Bros, a damsel in distress waiting for her beloved locksmith to come and save her.", "narrator");
			scr_text("Only this time, you have no locksmith coming to save you, you are alone in Trouser's castle. ", "narrator");
			scr_text("\"Hey!\"", "???");
			scr_text("Someone shouts from behind you. You whip your head around to see who is yelling at you, maybe they can be your Marco, your Chain, your-", "narrator");
			scr_set_sprite(spr_portrait_devon);
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
				scr_option("Stand Behind Devon", "stand behind devon");
				scr_option("Stand Next to Devon", "stand next to devon");
		break;
			case "stand behind devon":
				scr_text("You choose to run up behind Devon.", "narrator");
				scr_text("From behind you are able to get a good idea of his character.", "narrator");
				scr_text("His hair is messy, his clothes are wrinkled, and his back is hunched over.", "narrator");
				scr_text("All in all, he screams stereotypical guy FPS gamer.", "narrator");
				scr_text("As you keep walking while lost in your thoughts, you start to realize you have no clue where he is taking you.", "narrator");
				scr_text("By now you have probably passed by numerous amounts of classes and walked down lots of hallways but he has yet to say a word to you.", "narrator");
				scr_text("In fact, he's not even looking where he is going, he is playing a game on his phone.", "narrator");
				scr_text("\"Hey... aren't you supposed to show me around?\"", "mc");
				scr_text("\"I am.\"", "devon");
				scr_text("\"But we're just walking around, you haven't told me what anything is.\"", "mc");
				scr_text("\"Whattt do you need to know everything?? Jesus you freshmen are so annoying.\"", "devon");
				scr_text("\"Fine. This is the...\"", "devon");
				scr_text("He starts to tell you about the different classrooms.", "narrator");
				scr_text("It is at this point you walk up beside him to see what he is pointing at.", "narrator");
				scr_text("Being next to him allows you to see him better.", "narrator");
				scr_text("His red hair is even messier from the front but, it's kind of cute in some way.", "narrator");
				scr_text("\"Hellooo????? Are you even listening???\"", "devon");
				scr_text("\"I'm sorry what?\"", "mc");
				scr_text("You did not realize it before but, he's a lot taller than you so he has to look down to talk to you.", "narrator");
				scr_text("If you were to walk right into him, your head would be around his chest, perfect for a...", "narrator");
				scr_set_jump("opening - cont");
			break;
			
			case "stand next to devon":
				scr_text("You choose to run up beside Devon, thinking that you might as well take the initiative to learn more about him and the school while you're at it.", "narrator");
				scr_text("From the side, you can tell he walks around pretty hunched over.", "narrator");
				scr_text("You judge him to be around 6 feet while hunched, meaning he could be around 6'3 when not, not that you care about height or anything...", "narrator");
				scr_text("It's just that, most of the other guys you have encountered that play video games were on egirls.ff, the gaming platform where people can hire others you to play games with them.", "narrator");
				scr_text("Although the site is riddled with misogynistic male gamers who really only use girl gamers as a way to make them feel better about themself that they are \"better\" than them, or just a way to be a simp, there was one experience you would never forget.", "narrator");
				scr_text("One person who hired you that made you continue to be on that horrid site in hopes that he would do it again...", "narrator");
				scr_text("As you keep walking while lost in your thoughts, you start to realize you have no clue where he is taking you.", "narrator");
				scr_text("By now you have probably passed by numerous amounts of classes and walked down lots of hallways but he has yet to say a word to you.", "narrator");
				scr_text("In fact, he's not even looking where he is going, he is playing a game on his phone.", "narrator");
				scr_text("\"Hey... aren't you supposed to show me around?\"", "mc");
				scr_text("\"I am.\"", "devon");
				scr_text("\"But we're just walking around, you haven't told me what anything is.\"", "mc");
				scr_text("\"Whattt do you need to know everything?? Jesus you freshmen are so annoying.\"", "devon");
				scr_text("\"Fine. This is the...\"", "devon");
				scr_text("He starts to tell you about the different classrooms.", "narrator");
				scr_text("As he does so, he runs his hands through his hair almost like a nervous habit, making you realize just how messy his red hair was, but it was cute in a way.", "narrator")
				scr_text("\"Hellooo????? Are you even listening???\"", "devon");
				scr_text("\"I'm sorry what?\"", "mc");
				scr_text("You did not realize it before, but his voice for some reason sounds really familiar...", "narrator");
				scr_set_jump("opening - cont");
			break;
		
		case "opening - cont":
			scr_set_sprite(spr_portrait_devon);
			scr_text("\"I asked where your class is! Jesus fucking Christ you are so lost in your own head you bubble-brain.\"", "devon");
			scr_text("At this point, he has stopped walking and turned to face you.", "narrator");
			scr_text("His eyes are filled with anger but for some reason, all you can focus on are them.", "narrator");
			scr_text("\"Well uhhh.. I'm uh... that's the issue. I'm not sure....\"", "mc");
			scr_text("\"Oh my fucking god\"", "devon");
			scr_text("\"You really are hopeless aren't you..\"", "devon");
			scr_text("\"I can't believe you are making me do all the damn work...\"", "devon");
			scr_text("While he is doing that, you try your best to remember where your class is, but everything in this school is so confusing, like what is the \"Quest Center\" and \"Cornami Hall\"?", "narrator");
			scr_text("\"Shit.\"", "devon");
			scr_text("\"What?\"", "mc");
			scr_text("You look at him to see his expression has changed from annoyance to something more akin to dread.", "narrator");
			scr_text("\"Just follow me...\"", "devon");
			scr_text("He sulks down the hallway towards your class, somehow hunching even more than before.", "narrator");
			scr_set_jump("");
		break;
		#endregion 
			
	
	}
	
}