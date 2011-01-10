$(document).ready(function(){
	
	//PUT THIS SERVER SIDE
	var strength= "Strength measures your character’s muscle and physical power. This ability is especially important for fighters, barbarians, paladins, rangers, and monks because it helps them prevail in combat. Strength also limits the amount of equipment your character can carry.";
	var dexterity="Dexterity measures hand-eye coordination, agility, reflexes, and balance. This ability is the most important ability for rogues, but it’s also high on the list for characters who typically wear light or medium armor (rangers and barbarians) or no armor at all (monks, wizards, and sorcerers), and for anyone who wants to be a skilled archer.";
	var constitution="Constitution represents your character’s health and stamina. A Constitution bonus increases a character’s hit points, so the ability is important for all classes.";
	var intelligence="Intelligence determines how well your character learns and reasons. This ability is important for wizards because it affects how many spells they can cast, how hard their spells are to resist, and how powerful their spells can be. It’s also important for any character who wants to have a wide assortment of skills.";
	var wisdom="Wisdom describes a character’s willpower, common sense, per- ception, and intuition. While Intelligence represents one’s ability to analyze information, Wisdom represents being in tune with and aware of one’s surroundings. An “absentminded professor” has low Wisdom and high Intelligence. A simpleton (low Intelligence) might still have great insight (high Wisdom). Wisdom is the most important ability for clerics and druids, and it is also important for paladins and rangers. If you want your character to have acute senses, put a high score in Wisdom.";
	var charisma="Charisma measures a character’s force of personality, persuasiveness, personal magnetism, ability to lead, and physical attractiveness. This ability represents actual strength of personality, not merely how one is perceived by others in a social setting. Charisma is most important for paladins, sorcerers, and bards. It is also important for clerics, since it affects their ability to turn undead.";
	current = '#Race';
	$(current).toggleClass("hidden");
	
	$('#character_STR_input').hover(function()
	{
		$('#ability_description').html(strength);
	})
	$('#character_CON_input').hover(function()
	{
		$('#ability_description').html(constitution);
	})
	$('#character_DEX_input').hover(function()
	{
		$('#ability_description').html(dexterity);
	})
	$('#character_INT_input').hover(function()
	{
		$('#ability_description').html(intelligence);
	})
	$('#character_WIS_input').hover(function()
	{
		$('#ability_description').html(wisdom);
	})
	$('#character_CHA_input').hover(function()
	{
		$('#ability_description').html(charisma);
	})
	
	$('#ability_button').click(function(){
		console.log('ability');
		update_wizard('#Abilities');
	});
	$('#race_button').click(function(){
		console.log('race')
		update_wizard('#Race');
	});
	$('#class_button').click(function(){
		console.log('klass');
		update_wizard('#Klass');
	});
	$('#skills_button').click(function(){
		console.log('skills')
		update_wizard('#Skills');
	});
	$('#feats_button').click(function(){
		console.log('feats')
		update_wizard('#Feats');
	});
	$('#details_button').click(function(){
		console.log('details')
		update_wizard('#Details');
	});
	$('#roll_dice').click(function(){
		console.log('roll dice');
		roll_abilities();
	});
	
	function roll_abilities(){
		var i = 0;
		var j = 0;
		var rolls = [];
		for(i = 0; i < 6; i++)
		{
			var dice = new Array(Math.floor(Math.random()*6 + 1), Math.floor(Math.random()*6 + 1), Math.floor(Math.random()*6 + 1), Math.floor(Math.random()*6 + 1));

			var min = 0
			for (j = 0; j < dice.length; j++)
			{
				if (dice[min] > dice[j])
					min = j;
			}
			var total = 0;
			for (j = 0; j < dice.length; j++)
			{
				if (j != min)
					total = total + dice[j];
			}
			rolls.push(total);
		}
		rolls = rolls.join(",");
		$('#dice').html("You rolled: " +rolls);
		console.log(rolls);
	}
	
	function update_wizard(new_area){
		console.log('update');
		console.log('curent =' + current);
		console.log('new_area = ' + new_area);
		$(new_area).toggleClass("hidden");	
		$(current).toggleClass("hidden");

		current = new_area;
	}
});
