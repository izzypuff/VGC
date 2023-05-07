// THIS IS THE TEXT OF THE GAME
/// @param scene_id
function scr_game_text(_scene_id) {
	
	_scene_id = string_lower(_scene_id);
	
	switch (_scene_id) {
		#region // Opening
		case "opening":
			scr_set_sprite(noone);
			scr_set_bg(bg_hallway);
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
			scr_set_sprite(spr_portrait_devon);
			scr_text("It was at this point you were fully able to see who was standing in front of you, a man with messy red hair and yellow sleepless eyes.", "narrator");
			scr_text("And although one would think someone who is trying to greet someone would have a bright, welcoming expression on their face, his face says otherwise with his furrowed brows, and angry grin painted across his face.", "narrator");
			scr_text("\"Well? I haven't got all day.\"", "???");
			scr_text("\"I'm sorry, who are you?\"", "mc");
			scr_set_sprite(spr_devon_angry, false);
			scr_text("\"Who am I?\"", "devon");
			scr_set_sprite(spr_portrait_devon, false);
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
				scr_set_sprite(noone);
				scr_text("You choose to run up behind Devon.", "narrator");
				scr_text("From behind you are able to get a good idea of his character.", "narrator");
				scr_text("His hair is messy, his clothes are wrinkled, and his back is hunched over.", "narrator");
				scr_text("All in all, he screams stereotypical guy FPS gamer.", "narrator");
				scr_text("As you keep walking while lost in your thoughts, you start to realize you have no clue where he is taking you.", "narrator");
				scr_text("By now you have probably passed by numerous amounts of classes and walked down lots of hallways but he has yet to say a word to you.", "narrator");
				scr_set_sprite(spr_portrait_devon);
				scr_text("In fact, he's not even looking where he is going, he is playing a game on his phone.", "narrator");
				scr_text("\"Hey... aren't you supposed to show me around?\"", "mc");
				scr_text("\"I am.\"", "devon");
				scr_text("\"But we're just walking arou  nd, you haven't told me what anything is.\"", "mc");
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
				scr_set_sprite(spr_portrait_devon);
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
			scr_set_jump("team assignments");
		break;
		#endregion 
			
		#region // Team Assignments
		case "team assignments":
			scr_set_sprite(noone)
			scr_set_bg(bg_hallway);
			scr_text("You follow Devon to a classroom labeled \"Classroom 404\". For a college that is for gamers, this classroom is very generic, almost perfectly resembling a classroom from a typical high school anime.", "narrator");
			scr_text("You turn to Devon, expecting to say goodbye to him, but instead, he walks right past you into the classroom.", "narrator");
			scr_text("Oh, he must be escorting me in...?", "mc");
			scr_set_bg(bg_classroom);
			scr_text("You step inside only to find that Devon has taken a seat at one of the desks, no longer paying any attention to you. You go up to him confused.", "narrator");
			scr_text("\"Weren't you just here to show me around? Why are you now taking a seat in the class?\"", "mc");
			scr_text("He groans and turns to you. At this point, he had put his headphones on and was playing some game on his phone, so he moves his right headphone off of his ear and glances back up at you.", "narrator");
			scr_set_sprite(spr_portrait_devon);
			scr_text("\"I'm in this class, you idi  ot.\"", "devon");
			scr_text("What?...", "mc");
			scr_text("You stand there frozen for a second, not sure how to respond. This was Intro to Team Games, a freshman-level class in the FPS track. So why was he in it? Before you could ask him, however, the professor at the front of the room started to talk.", "narrator");
			scr_set_sprite(noone);
			scr_text("\"Hello I am Professor Ninez and welcome to Intro to Team Games. This class is about building synergy with your teammates while playing competitive team games.\"", "ninez");
			scr_text("\"Prior to the start of class you all submitted your preferred game you would like to focus on and your rank in that game in order for me to be able to pair you up with someone who matched that.\"", "ninez");
			scr_text("You remember that form. You filled out Valliant as your game of choice and your rank of diamond 1. ", "narrator");
			scr_text("You have played Valliant for a pretty long time and considered yourself good at the game for your standards. You always had good positioning, coms, map awareness, and lineups, the only thing lacking was your aim.", "narrator");
			scr_text("\"But before I announce who is with who, let's go over the structure of the class and a quick lesson.\"", "ninez");
			scr_text("He went on to explain that the class was that you were essentially going to get paired up with someone with the intention that both of you would play your preferred game together in order to get better at team synergy while also getting better at the game. ", "narrator");
			scr_text("The only issue is that you would be stuck with that person for the whole semester, as it was the only way to judge if you guys truly grew as teammates.", "narrator");
			scr_text("Professor Ninez then goes on to start his lecture about how team synergy can help teams win games, using examples from pro tournaments in which teams either succeeded or failed because of their synergy.", "narrator");
			scr_text("You pull out your laptop and begin to take notes about the lecture, but while doing so you look over to your right and see Devon completely not paying attention at all.", "narrator");
			scr_text("He has his headphones on, his body hunched over his desk, eyes glued to whatever game he is currently playing on his laptop. You peer over his shoulder to see he is playing Valliant!", "narrator");
			scr_text("Damn first day of classes and he's already not paying attention, but I guess if he is older than me, he would be re-taking this class?", "mc");
			scr_text("You turn to watch his gameplay since it's more interesting than whatever Professor Ninez is saying currently.", "narrator");
			scr_text("As you watch you can tell that his aim is really good, but he keeps dying due to his positioning and not playing with his team at all, but instead trying to farm for the most kills.", "narrator");
			scr_text("\"Alright class, now for those team assignments.\"", "ninez");
			scr_text("You turn your attention back to him, anxious to see who you will get.", "narrator");
			scr_text("\"Zoey and Ruari...\"", "ninez");
			scr_text("You see two people look at each other with smiles on their faces. One has shoulder-length black wavy hair, and the other has purple and brown wavy hair in a wolf cut.", "narrator");
			scr_text("\"...Isabel and Stacey...\"", "ninez");
			scr_text("Two girls turn to each other also smiling, one with mid-length straight black hair and bangs, the other with mid-length straight brown hair.", "narrator");
			// screen shake signal
			scr_text("\"..." + global.mc_name + " and Devon\"", "ninez");
			scr_text("Your heart stops.", "narrator");
			scr_text("Did he just call your name? And more importantly, did he just say Devon? As in the Devon right next to you? As in the Devon terribly playing Valliant? Oh no...", "mc");
			scr_set_sprite(spr_devon_angry);
			scr_text("You turn to look at him to see that his game finished just as the Professor announced you two as teammates. The red loss screen plastered on his screen, as he turns to look at you, rage in his eyes.", "narrator");
			scr_text("Oh fuck… this is going to be a challenge.", "mc");
			scr_set_sprite(noone);
			scr_text("\"Alright well that was everyone. Class is dismissed but make sure you exchange information with your partner and agree to times in which you can play together! There will be an assessment of your team synergy every week!\"", "ninez");
			scr_text("The class erupts with voices of people talking to each other, exchanging information, and making plans, the only two not participating in the discord are you and Devon.", "narrator");
			scr_text("You grab your stuff before turning around to walk to his desk, only to find he has already left the classroom.", "narrator");
			scr_set_bg(bg_hallway);
			scr_text("You race out of the room trying to find him through the hallway but luckily because of his height and red hair, you were able to spot him just down the hallway. You race after him.", "narrator");
			scr_text("\"Damn him and his long legs...\"", "mc");
			scr_text("You really have to pick up the pace to get to him.", "narrator");
			scr_text("\"Devon!\"", "mc");
			scr_text("You yell down the hallway, slightly out of breath. He does not turn around and instead starts to move faster.", "narrator");
			scr_text("\"Devon!!!\"", "mc");
			scr_text("You yell even louder before basically sprinting down the hallway.", "narrator");
			// screen shake signal
			scr_text("\"Devon!!!!!!\"", "mc");
			scr_text("You scream, extremely out of breath. At this point, many people have stopped to look at you both as you race down the hallways.", "narrator");
			scr_text("As you are nearing your limit of how much you can run, your breathing becomes heavy and your legs feel like they could give out at any second.", "narrator");
			scr_text("You close your eyes and speed up one last time, trying to reach him before it is too late. ", "narrator");
			scr_text("It all happened in a flash, suddenly Devon stopped in front of you, but you were going too fast to slow down that abruptly. His eyes widened as he realized what was about to happen.", "narrator");
			scr_text("You closed them knowing what was about to happen and then bam!", "narrator");
			// screen shake signal
			scr_text("You ran face-first into his chest and then with a thud fell back. Except something was missing, there was not a thud of you falling onto the cold hard ground, instead, you felt hands grasping you.", "narrator");
			scr_text("You open your eyes to see Devon holding you.", "narrator");
			scr_text("\"I uh-\"", "mc");
			scr_text("You are barely able to make out a word as you look up at him simultaneously starstruck but also embarrassed.", "narrator");
			scr_text("His face is a weird mix of surprised but also annoyed. His mouth is ajar as if surprised and slightly scared that you ran directly into him, but his eyes and brows say otherwise, turned inwards with a look of annoyance at you for causing all this trouble.", "narrator");
			scr_text("He lets go of you and you stumble back to catch yourself. ", "narrator");
			// screen shake signal
			scr_text("\"What the fuck was that?!\"", "devon");
			scr_text("\"Well, you decided to just run out of the class before we were able to talk about anything! We are partners, meaning we need to exchange information, talk about when we are-\"", "mc");
			scr_text("\"Just shut up. I don’t care about that class so you can go ahead and ask the professor for a new partner.\"", "devon");
			scr_text("\"But the class has an even amount of people, there is no one else I could be with.\"", "mc");
			scr_text("\"I do not give a shit. Figure it out bubble-brain.\"", "devon");
			scr_text("He turns around to start walking away again.", "narrator");
			scr_text("At this point, you were so done with him and his attitude that you did something you normally would not do, but you were just so angry.", "narrator");
			scr_text("\"Do you think you can pass this class on your own? What happened last year huh? I guess Mr. Platinum in Valliant who doesn't know how to play with his team in the game also doesn’t know how to be friends with people in real life. Fucking figures…\"", "mc");
			scr_text("You blurted it out before turning away yourself. You were so done with him. If he wanted to fail the class he could but you were not going to.", "narrator");
			scr_text("Before you could take another step, you felt a strong hand gripping your shoulder.", "narrator");
			scr_set_sprite(spr_devon_angry);
			scr_text("\"What the fuck did you just say to me bitch!?\"", "devon");
			scr_text("Up until this point you have not felt any harmful intent in anything he has said, most of it was just annoyance, but now it was different, he was angry.", "narrator");
			scr_text("You shakily turn around to face him, feeling like a deer in headlights. His eyes are full of pure rage like he could snap again at any moment.", "narrator");
			scr_text("\"I'm sorry I just-\"", "mc");
			scr_text("Before you can choke out the rest of the sentence, he pushes you backwards, making you almost fall down for real this time.", "narrator");
			scr_text("\"Fine, you want to play, let's play, but I’m just warning you if you EVER raise your voice at me again, or even think that you know more than me then prepare for hellfire because I won't stop until you. Are. Powerless.\"", "devon");
			scr_text("He stares you down, eyes filled with rage.", "narrator");
			scr_text("You’re not quite sure how to respond. Every bone in your body is telling you to be scared, to back away, but there’s something deep down that tells you otherwise, something telling you to reach out.", "narrator");
				scr_option("Back Away", "team assignments - back away");
				scr_option("Reach Out", "team assignments - reach out");
		break;
			case "team assignments - back away":
				scr_set_bg(bg_hallway);
				scr_set_sprite(spr_devon_angry);
				scr_text("You back away from Devon, slugging his hand off your shoulder before taking a clarifying breath to recollect yourself.", "narrator");
				scr_text("You were used to people yelling at you, guys telling you that you are shit or worthless, but something about this hurt more than that. You were not sure why, maybe because this was in real life, or maybe it was because of something else.", "narrator");
				scr_text("Ever since you chose to go to Video Game College, you hoped for a better and brighter future for playing FPS games.", "narrator");
				scr_text("Your hope here would be that you could leave the toxic world of FPS gamers behind, and transition into the pro play scene, one that would hopefully be less toxic towards you.", "narrator");
				scr_text("But, on your first day, at your first class, for your partner to be this mean to you hurts a lot.", "narrator");
				scr_text("You were trying. Trying your best but he was an unbreakable Salvia wall.", "narrator");
				scr_set_sprite(spr_portrait_devon, false);
				scr_text("Devon seems to have realized what he had just said to you as he takes a step back and looks down at his feet, running his hands through his hair.", "narrator");
				scr_text("He looks like he wants to apologize but is not sure how. Instead, he pulls out his phone before holding it out to you.", "narrator");
				scr_text("On the screen is a new contact page. You take the phone and enter your name and number before returning it to him.", "narrator");
				scr_text("\"Look, I-\"", "devon");
				scr_text("\"When do you want to meet?\"", "mc");
				scr_text("\"Does this Friday work for you? You can come to my place since I have a single and you are new.\"", "devon");
				scr_text("\"Sure, I have class till 12 so I'll come after that.\"", "mc");
				scr_text("\"Ok sounds good.\"", "devon");
				scr_text("He seems unsure how to proceed.", "narrator");
				scr_text("\"Alright well, I have another class so…. Uhh… bye.\"", "mc");
				scr_text("You turn around, still avoiding eye contact.", "narrator");
				scr_text("\"Do you want me to show you where it is?\"", "devon");
				scr_text("You heard him ask, but you were already down the hallways, speedwalking wherever your feet would take you.", "narrator");
				scr_text("You make numerous twists and turns down the seemingly endless hallways as your eyes fill with tears.", "narrator");
				scr_text("You had no intention of finding your next class, just letting your feet take you until you finally found somewhere you could sit and cry.", "narrator");
				scr_text("After a while, you end up finding yourself in a seemingly abandoned hallway. Most of the rooms said they were out of order and there was a nice nook you could place yourself in as you sat down with your head between your knees, sobbing to your shoes below you.", "narrator");
				scr_text("After a while, you get a notification on your phone from an unknown number. You open your phone to read the text.", "narrator");
				scr_text("\"Hey, it's Devon. Your next class is on the 5th floor of this building. If you go to the south side where you can see the gaming arena, you will find the elevators. It's classroom number 504.\"", "narrator");
				scr_set_jump("friday - back away");
			break;
				
			case "team assignments - reach out":
				scr_text("You are not sure why, but something deep down inside of you was telling you to reach out. You place your hand on Devon’s shoulder, matching his on your shoulder.", "narrator");
				scr_text("Something inside of you has flipped, no longer is your mind clouded by fear, but instead, you have a driving force to understand. Understand why he just lashed out.", "narrator");
				scr_text("Devon’s face changes when you place your hand on his shoulder. Your face was full of fear just a second ago but now it is painted with a look of determination.", "narrator");
				scr_set_sprite(spr_devon_angry);
				scr_text("\"What the fuck are you doing?\"", "devon");
				scr_text("\"Devon the point of this class is to build a relationship with someone, not only as a teammate but as a friend. You are going to be my duo whether you like it or not. I want to be someone you can trust.\"", "mc");
				scr_text("From this angle, you can clearly see his facial expressions change as he looks down at you.", "narrator");
				scr_set_sprite(spr_devon_blush, false);
				scr_text("As you say that, there is a slight moment in which his face turns from its usual sleep-deprived pale to a pinkish color, but just like that it is gone.", "narrator");
				scr_set_sprite(spr_devon_smirk, false);
				scr_text("He now smirks, looking down at you, his hand gripping your shoulder tighter.", "narrator");
				scr_text("\"Oh yeah? Prove it. Friday, my place. Bring ur set up. Oh and uh, and u better not int. We’ll see if u actually can be a teammate I can trust.\"", "devon");
				scr_text("He pushes you back with his hand, causing your hold on his shoulder to drop.", "narrator");
				scr_set_sprite(spr_portrait_devon, false);
				scr_text("You were intrigued, to say the least, and something more than that to say the most.", "narrator");
				scr_text("This is the first time he has shown you any positive sign of emotion and it can’t help but make you wonder why his voice sounded so damn familiar to you.", "narrator");
				scr_text("\"Alright sounds like a plan!\"", "mc");
				scr_text("Devon pulls out his phone quickly while you smirk back at him. He hands you his phone, on it is a new contact page. You enter in your name and number before returning the phone back to him.", "narrator");
				scr_text("\"See you on Friday then.\"", "mc");
				scr_set_sprite(spr_devon_smirk, false);
				scr_text("\"See you then.\"", "devon");
				scr_set_sprite(noone);
				scr_text("You turn around and start down the halls, hoping you eventually find your way to your next class somehow. However, all your mind could think about was Devon and how damn excited you were for Friday.", "narrator");
				scr_text("This is going to be good.", "narrator");
				scr_set_jump("friday - reach out");
			break;
		#endregion
		
		#region // Friday
		case "friday - back away":
			scr_set_bg(noone);
			scr_text("The dreaded day finally arrived: Friday. After a long week of moving in, classes, exploring the campus, and doing homework, you had hoped that Friday would never arrive.", "narrator");
			scr_text("After your and Devon’s whole argument, you had tried to convince yourself that Friday was going to be ok, but you were still nervous. You doubted he would apologize to you but at the same time, you did not even want one, you just wanted to get this over with.", "narrator");
			scr_text("Once you got to Irradiant Hall you begrudgingly took the elevator to the 6th floor before turning down the hall to find room 609.", "narrator");
			scr_text("You took a deep breath before raising your hand to knock on the door. This was it, the beginning of your most dreaded nightmare of the week, spending time with Devon.", "narrator");
			scr_text("You knock on the door and within seconds Devon opens the door.", "narrator");
			scr_set_sprite(spr_portrait_devon);
			scr_text("\"Hey.\"", "mc");
			scr_text("\"Hey.\"", "devon");
			scr_text("He moves out of the way so you can enter his room.", "narrator");
			// devon room bg
			scr_text("The room is pretty bland, basically the same as it is given to you when you first move in, except for his desk which harbors a massive PC and 3 monitors as well as the singular poster on his wall along with LED lights around the room.", "narrator");
			scr_text("You move towards his desk so you can pull out your laptop. Back at your dorm, you have an actual PC set up but you also have a gaming laptop for cases like these in school where you need to play games on the fly.", "narrator");
			scr_text("Your laptop kind of sucked since you got it secondhand and it is an older model, but it does what it needs to do, minus the fact that it gets extremely hot if you even attempt to open any game on it.", "narrator");
			scr_text("Devon closes the door behind you and pulls up an extra chair behind you so you can sit at the desk with him. As you take a seat he sits down next to you in his chair and turns on his PC.", "narrator");
			scr_text("As you open Valliant, you notice that Devon is acting kinda off. Something about him seems... wrong?", "narrator");
			scr_text("You look over to him to see him opening up Valliant but instead of an emotionless expression on his face, he looks angry.", "narrator");
			scr_text("Why is he angry? To be honest, you don't really want to ask.", "mc");
			scr_text("After a few rounds in the game, after he dies, Devon gets up to quickly use the bathroom. You had ended up dying with him to a Raise bomb and so you just sat flipping through the other 3 players left, watching the round play out.", "narrator");
			scr_text("After a few seconds you feel a buzz coming to your right. You look over to see Devon’s phone face up on the table. Without meaning to, you saw what the notification was.", "narrator");
			scr_text("It was from egirls.ff. You were not able to read the contents of the message since the phone had to be unlocked with face ID, but you could see that it was from egirls.ff.", "narrator");
			scr_text("He has egirls.ff??? Why would he have it though?", "mc");
			scr_text("You remember his visible anger earlier. Before the game started you had briefly seen his past match history and seen that he had lost his past 2 ranked games.", "narrator");
			scr_text("Could it be because of egirls.ff? Surely not right? But it would explain his anger towards you as well as the reason why he is angry right now.", "narrator");
			scr_text("That’s it. You were done with his bullshit.", "narrator");
			scr_text("I am going to prove to him that I’m better. That girls are good at games.", "mc");
			scr_set_jump("top frag");
		break;
		
		case "friday - reach out":
			scr_set_bg(noone);
			scr_text("After a long week of moving in, classes, exploring the campus, and doing homework, Friday finally arrives.", "narrator");
			scr_text("You weren’t sure if it was because you were excited to absolutely crush Devon in Valliant, or maybe it was just because you are getting to spend time with him and get to know him better, but you were so excited but also slightly nervous.", "narrator");
			scr_text("It’s just that, this whole thing with him had been such a rollercoaster but somehow it ended on a good note, a great one even! You were going to his place, to duo in Valliant, together...... alone......", "narrator");
			scr_text("Oh. My. God...?", "mc");
			scr_text("We're going to be alone...", "mc");
			scr_text("Your face turns a bright shade of red thinking about you two being alone together, in his room, playing games...", "narrator");
			scr_text("You could barely contain your excitement as you made your way to his room. Once you got to Irradiant Hall you took the elevator to the 6th floor before turning down the hall to find room 609.", "narrator");
			scr_text("You took a deep breath before raising your hand to knock on the door. This was it, this was the beginning of your mission to help him, to fix him.", "narrator");
			scr_set_sprite(spr_portrait_devon);
			scr_text("You knock on the door and within seconds Devon opens the door.", "narrator");
			scr_text("\"Hi\"", "mc");
			scr_text("You smile, looking up at him.", "narrator");
			scr_set_sprite(spr_devon_smirk, false);
			scr_text("\"Hey\"", "devon");
			// devon room bg
			scr_set_sprite(noone);
			scr_text("His room is pretty bland, basically the same as it is given to you when you first move in, except for his desk which harbors a massive PC and 3 monitors as well as the singular poster on his wall along with LED lights around the room.", "narrator");
			scr_text("You move towards his desk so you can pull out your laptop. Back at your dorm, you have an actual PC set up but you also have a gaming laptop for cases like these in school where you need to play games on the fly.", "narrator");
			scr_text("Your laptop kind of sucked since you got it secondhand and it is an older model, but it does what it needs to do, minus the fact that it gets extremely hot if you even attempt to open any game on it.", "narrator");
			scr_text("Devon closes the door behind you and pulls up an extra chair behind you so you can sit at the desk with him. As you take a seat he sits down next to you in his chair and turns on his PC.", "narrator");
			scr_set_sprite(spr_devon_smirk);
			scr_text("\"Let’s see what you got bubble brains.\"", "devon");
			scr_text("After a few rounds in the game, after he dies, Devon gets up to quickly use the bathroom. You had ended up dying with him to a Raise bomb and so you just sat flipping through the other 3 players left, watching the round play out.", "narrator");
			scr_text("After a few seconds you feel a buzz coming to your right. You look over to see Devon’s phone face up on the table. Without meaning to, you saw what the notification was.", "narrator");
			scr_text("It was from egirls.ff. You were not able to read the contents of the message since the phone had to be unlocked with face ID, but you could see that it was from egirls.ff.", "narrator");
			scr_text("He has egirls.ff?", "mc");
			scr_text("Oh my god, he might have seen my profile on it...!", "mc");
			scr_text("You sat there mortified for a few seconds before the sound of the bathroom door opening snapped you out of it. You quickly turned your attention back to the game on your screen, trying to hide your shaking hand.", "narrator");
			scr_text("You were scared, sure, but if he had seen your profile, he surely would have no way of knowing it was you... right?", "narrator");
			scr_text("You could not think about this right now.", "narrator");
			scr_text("I have to focus on the game.", "mc");
			scr_text("Let me show him what I am made of!", "mc");
			scr_set_jump("top frag");
		break;
		#endregion
		
		#region // Top Frag
		case "top frag":
			scr_text("It worked, you ended up top fragging at the end of the game, scoring 2 aces winning your team the last two rounds and ultimately the game.", "narrator");
			scr_text("You were so siked not only that you guys had won, but also that you had top fragged.", "narrator");
			scr_set_sprite(spr_devon_angry);
			scr_text("You turn to Devon with a big proud smile on your face, holding up your hand for a high five, but are met with an angry hand pulling your hand down. It didn’t make sense, Devon’s face was full of rage, but you guys had just won.", "narrator");
			scr_text("\"Don’t give me that shit you fucking bitch.\"", "devon");
			scr_text("\"What? We won Devon!\"", "mc");
			scr_text("You were starting to get angry.", "narrator");
			scr_text("\"It doesn't matter if we won, you won us that game, not me! You top fragged not me! What the fuck are you trying to do?!\"", "devon").
			scr_text("\"I am supposed to be better! You must have fucked with my settings while I was pissing. You fucking bitch. I knew I shouldn’t have trusted you...\"", "devon");
			scr_text("\"I-\"", "mc");
			scr_text("You were unable to speak. How in the world could someone be so messed up that they start blaming their teammate for winning?!?! It just did not make sense to you.", "narrator");
			scr_text("\"I don’t know what has gotten into your stupid head but someone clearly hurt you. And I don't know what's worse, yelling at the one person who is trying to help or turning to egirls.ff as a coping mechanism.\"", "mc");
			scr_text("You start to angrily pack up your stuff. You were so done with his shit and at this point could no longer take it.", "narrator");
			scr_text("There was no way in hell you were going to play another game with him today. You grab all of your stuff before angrily walking out the door, slamming it on your way out.", "narrator");
			scr_text("As you leave you realize that Devon did not say a word back to you as you were leaving. He didn’t even move. He just sat there in silence.", "narrator");
			scr_text("You did not care to look over at his face, but something was telling you that you fucked up big time. ", "narrator");
		break;
		#endregion
	}
	
}