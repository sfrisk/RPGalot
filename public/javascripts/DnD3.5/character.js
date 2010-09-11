//;(function($){

function Character(){
	character = this;
	
	//Names of stuffs
	this.ability_names = new Array('STR', 'DEX', 'CON', 'INT', 'WIS', 'CHA');
	this.race_names = new Array('Human','Dwarf','Elf','Gnome','Half-Elf','Half-Orc','Halfling');
	this.klass_names = new Array('Barbarian', 'Bard', 'Cleric', 'Druid', 'Fighter', 'Monk', 'Paladin', 'Ranger', 'Rogue', 'Sorcerer', 'Wizard');
	this.alignments = new Array('Lawful Good', 'Neutral Good', 'Chaotic Good', 'Lawful Neutral', 'Neutral', 'Chaotic Neutral', 'Lawful Evil', 'Neutral Evil', 'Chaotic Evil');
	this.skill_names = new Array(['appraise','INT'],['balance','DEX'],['bluff','CHA'],['climb','STR'],['concentration','CON'],['craft','INT'],
	['decipher_script','INT'],['diplomacy','CHA'],['disable_device','INT'],['disguise','CHA'],['escape_artist','DEX'],
	['forgery','INT'],['gather_information','CHA'],['handle_animal','CHA'],['heal','WIS'],['hide','DEX'],['intimidate','CHA'],['jump','STR'],
	['knowledge_arcana','INT'],['knowledge_architecture','INT'],['knowledge_dungeoneering','INT'],['knowledge_geography','INT'],
	['knowledge_history','INT'],['knowledge_local','INT'],['knowledge_nature','INT'],['knowledge_nobility','INT'],['knowledge_religion','INT'],
	['knowledge_planes','INT'],['listen','WIS'],['move_silently','DEX'],['open_lock','DEX'],['perform','CHA'],['profession','WIS'],['ride','DEX'],
	['search','INT'],['sense_motive','WIS'],['sleight_of_hand','DEX'],['spellcraft','INT'],['spot','WIS'],['survival','WIS'],
	['swim','STR'],['tumble','DEX'],['use_magic_device','CHA'],['use_rope','DEX']);

	
	//Basic Stats DOM info
	this.$name = $('#character_name');
	this.$klass = $('#character_klass_id');
	this.$level = $('#character_level');
	this.$race = $('#character_race_id');
	this.$alignment = $('#character_alignment_id');
	this.$deity = $('#character_deity_id');
	
	//stuff that will need to be added for doms/database
	//this.$hitPoints = $('#character_HP');
	//something involving skills

	//current stats
	this.cur_race = "";
	this.cur_klass = this.$klass.val();	
	console.log(this.cur_klass);
	this.$skillz = $('#skillz');
	
	
	//Overall Stats For Stuff
	
	//Races
	this.races = [
		new Race([],[],"Medium",30), //Human
		new Race(['CON','CHA'],[2,-2],"Medium",20), //Dwarf
		new Race(['DEX','CON'],[2,-2],"Medium",30), //Elf
		new Race(['CON','STR'],[2,-2],"Small",20), //Gnome
		new Race([],[],"Medium",30), //Half-Elf
		new Race(['STR','INT','CHA'], [2,-2,-2],"Medium",30), //Half-Orc
		new Race(['DEX','STR'],[2,-2],"Small",20) //Halfling
	];
	
	
	//Ability Stats
	this.abilities = [];
	$.each(this.ability_names, function(i, val){
		character.abilities.push(new Ability($('#character_'+val), $('#MISC_'+val), $('#TOTAL_'+val), $('#MOD_'+val), $('#ERROR_'+val), character.$skillz));
	})
	

	//Skill Stats
	this.skills = []
	$.each(this.skill_names, function(i, val){
		//rank, plus, minus, points 
		character.skills.push(new Skill($('#character_skill_'+val[0]),$('#add_'+val[0]),$('#minus_'+val[0]),$('#'+val[0]+'_total'),$('#'+val[0]+'_ability_mod'),$('#MOD_'+val[1]),$('#klass_skill_'+val[0])));
	})

	//console.log(this.skills);
	//Classes
	this.klasses = [
	
		//Barbarian
		new klass(
			12, //Hit Die
			['climb','craft','handle_animal','intimidate','jump','listen','ride','survival','swim'], //class skillz
			['Lawful Good','Lawful Neutral','Lawful Evil'], //alignments you can't be
			[4,4], //skill point calculation
			[2,0,0]), //save calculations
		
		//Bard
		new klass(
			6,
			['appraise','balance','bluff','climb','concentration','craft','decipher_script',
			'diplomacy','disguise','escape_artist','gather_information','hide','jump','knowledge_arcana',
			'knowledge_architecture','knowledge_dungeoneering','knowledge_geography','knowledge_history',
			'knowledge_local','knowledge_nature','knowledge_nobility','knowledge_religion','knowledge_planes',
			'listen','move_silently','perform','profession','sense_motive','sleight_of_hand','speak_languages',
			'spellcraft','swim','tumble','use_magic_device'],
			['Lawful Good','Lawful Neutral','Lawful Evil'],
			[6,6],
			[0,2,2]),
		
		//Cleric
		new klass(
			8,
			['concentration','craft','diplomacy','heal','knowledge_arcana','knowledge_history',
			'knowledge_religion', 'knowledge_planes', 'profession', 'spellcraft'],
			[],//will need to adjust this based on diety
			[2,2],
			[2,0,2]),
		
		//Druid
		new klass(
			8,
			['concentration','craft','diplomacy','handle_animal','heal','knowledge_nature',
			'listen', 'profession', 'ride', 'spellcraft', 'spot', 'survival', 'swim'],
			['Lawful Good', 'Chaotic Good', 'Lawful Evil', 'Chaotic Evil'],
			[4,4],
			[2,0,2]),
			
		//Fighter
		new klass(
			10,
			['climb','craft','handle_animal','intimidate','jump','ride','swim'],
			[],
			[2,2],
			[2,0,0]),
			
		//Monk
		new klass(
			8,
			['balance','climb','concentration','craft','diplomacy','escape_artist','hide',
			'jump','knowledge_arcana','knowledge_religion', 'listen', 'move_silently', 'perform',
			'profession', 'sense_motive', 'spot', 'swim', 'tumble'],
			['Neutral Good', 'Chaotic Good', 'Neutral', 'Chaotic Neutral', 'Neutral Evil', 'Chaotic Evil'],
			[4,4],
			[2,2,2]),
		
		//Paladin
		new klass(
			10,
			['concentration', 'craft', 'diplomacy', 'handle_animal', 'heal', 'knowledge_nobility',
			'knowledge_religion', 'profession', 'ride', 'sense_motive'],
			['Neutral Good', 'Chaotic Good', 'Lawful Neutral', 'Neutral', 'Chaotic Neutral', 'Lawful Evil',
			'Neutral Evil', 'Chaotic Evil'],
			[2,2],
			[2,0,0]),
			
		//Ranger	
		new klass(
			8,
			['climb','concentration','craft','handle_animal', 'heal', 'hide', 'jump', 'knowledge_dungeoneering',
			'knowledge_geography', 'knowledge_nature', 'listen', 'move_silently', 'profession', 'ride',
			'Search', 'Spot', 'Survival', 'Swim', 'Use Rope'],
			[],
			[6,6],
			[2,2,0]),
		
		//Rogue
		new klass(
			6,
			['appraise','balance', 'bluff', 'climb', 'craft', 'decipher_script', 'diplomacy',
			'disable_device', 'disguise', 'escape_artist', 'forgery', 'gather_information',
			'gide', 'intimidate', 'jump', 'knowledge_local', 'listen', 'move_silently', 
			'open_lock', 'perform', 'profession', 'search', 'sense_motive', 'sleight_of_hand',
			'spot', 'swim', 'tumble', 'use_magic_device', 'use_rope'],
			[],
			[8,8],
			[0,2,0]),
			
		//Sorcerer
		new klass(
			4,
			['bluff', 'concentration', 'craft', 'knowledge_arcana', 'profession', 'spellcraft'],
			[],
			[2,2],
			[0,0,2]),
			
		//Wizard
		new klass(
			4,
			['concentration', 'craft', 'decipher Script', 'knowledge_arcana',
			'knowledge_architecture','knowledge_dungeoneering','knowledge_geography','knowledge_history',
			'knowledge_local','knowledge_nature','knowledge_nobility','knowledge_religion','knowledge_planes', 'profession',
			'spellcraft'],
			[],
			[2,2],
			[0,0,2])
	];
	
	
	//Saves of saveyness
	this.saves = [
	//Fortitude (CON)
		new Saves($('#FORT_BASE'), $('#FORT_TOTAL'), $('#FORT_ABILITY'),  $('#FORT_MISC'), this.abilities[2].$mod),
	//Reflex (DEX)
		new Saves($('#REFLEX_BASE'), $('#REFLEX_TOTAL'), $('#REFLEX_ABILITY'),  $('#REFLEX_MISC'), this.abilities[1].$mod),
	//Will (WIS)
		new Saves($('#WILL_BASE'), $('#WILL_TOTAL'), $('#WILL_ABILITY'), $('#WILL_MISC'), this.abilities[4].$mod)	
	];

	
	
	//functions to preform prior to editing
	this.setRaceModifiers();
	this.doKlassyThings();
	this.linkage();
};

Character.prototype.linkage = function ()
{
	var character = this;
	$(character.$race).change(function(){
		character.setRaceModifiers();
	})
	
	$(character.$klass).change(function(){
		character.doKlassyThings();
	})
 	$.link({
		source: character.abilities[3].$mod,
		target: character.$skillz,
		convert: function(){ 
			character.doKlassyThings();}
	})
}


Character.prototype.doKlassyThings = function (){
	//figure out what class we're on
	character = this;
	i = parseInt(this.$klass.val(),0)-1
	console.log("i ="+i)

	character.setAvailableAlignments(character.klasses[i].getFalseAlignments());
	character.setClassSkills(character.klasses[i].getSkillz());
	character.setSkillPoints(character.klasses[i].getSkillPoints(),character.abilities[3].getMod());
	character.setBaseSaves(character.klasses[i].getBaseSaves())

}

Character.prototype.setAvailableAlignments = function (align){
	//FIX THIS
	character = this;
	
	$.each(character.alignments, function(i, val){
		$('#character_alignment option[value='+val+']').attr('disabled','');
	})
	
	$.each(align, function(j,falseAlign){
			$('#character_alignment option[value='+falseAlign+']').attr('disabled','disabled');
			$('#character_alignment option[value='+falseAlign+']').attr('selected','');
	})
}

Character.prototype.setClassSkills = function(classSkills)
{
	var i=0;
	var j=0;
	var character = this;
	for (i=0;i<this.skill_names.length;i++)
	{
		for (j = 0; j < classSkills.length; j++)
		{
			skill = this.skill_names[i];
			//console.log("skill = " + skill[0] + " classSkill = "+classSkills[j]);
			if(skill[0] == classSkills[j])
			{
				this.skills[i].setClassSkill(true);
				i++
			}
			else
			{
				this.skills[i].setClassSkill(false);
				
			}
			
		}
	}
}

Character.prototype.setBaseSaves = function(BaseSaves)
{
		character = this;
	$.each(character.saves, function(i,val){
		val.setBaseSave(BaseSaves[i]);
	})
}

Character.prototype.setSkillPoints = function(skillPoints,intelligence)
{	
	points =  (skillPoints[0] + parseInt(intelligence, 10)) * 4;
	used = this.checkUsedPoints();
	total = points - used;
	if(this.cur_race == 0)
	{
		this.$skillz.val(parseInt(this.$skillz.val,10) + 4)
	}
	return this.$skillz.val(total);
	
}

Character.prototype.checkUsedPoints = function()
{
	var points = 0;
	$.each(this.skills, function(i, skill){
		points = points + skill.getRank()
	})
	return points;		
}

Character.prototype.setRaceModifiers = function (){
	character = this;
	
	race = parseInt(character.$race.val(),10)-1;
	
	character.raceAdjustMisc(race, 1);
	if(character.cur_race != "")
		character.raceAdjustMisc(character.cur_race, -1);	
	if(character.cur_race ==  0) //if human
		this.$skillz.val(parseInt(this.$skillz.val(),10) - 4);
	if(race == 0)
		this.$skillz.val(parseInt(this.$skillz.val(),10) + 4)
	
	
	character.cur_race = character.$race.val() - 1;
}


Character.prototype.raceAdjustMisc = function(loc, sign )
{
	character = this;
	console.log("loc = "+loc);
	abilities = character.races[loc].getAbility();
	modify = character.races[loc].getAdjust();
	$.each(abilities, function(i, raceAbility){
		$.each(character.ability_names, function(j, ability)
		{
			if(raceAbility == ability)
				character.abilities[j].AdjustMisc(modify[i] * sign);
		})
	})
}

//})(jQuery);