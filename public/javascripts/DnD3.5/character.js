//;(function($){

function Character(){
	character = this;
	
	//Names of stuffs
	this.ability_names = new Array('STR', 'DEX', 'CON', 'INT', 'WIS', 'CHA');
	this.race_names = new Array('Human','Dwarf','Elf','Gnome','Half-Elf','Half-Orc','Halfling');
	this.klass_names = new Array('Barbarian', 'Bard', 'Cleric', 'Druid', 'Fighter', 'Monk', 'Paladin', 'Ranger', 'Rogue', 'Sorcerer', 'Wizard');
	this.alignments = new Array('Lawful Good', 'Neutral Good', 'Chaotic Good', 'Lawful Neutral', 'Neutral', 'Chaotic Neutral', 'Lawful Evil', 'Neutral Evil', 'Chaotic Evil');

	
	//Basic Stats DOM info
	this.$name = $('#character_name');
	this.$klass = $('#character_klass');
	this.$level = $('#character_level');
	this.$race = $('#character_race');
	this.$alignment = $('#character_alignment');
	this.$deity = $('#character_deity');
	
	//stuff that will need to be added for doms/database
	//this.$hitPoints = $('#character_HP');
	//something involving skills

	//current stats
	this.cur_race = "";
	this.cur_klass = this.$klass.val();	
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
		character.abilities.push(new Ability($('#character_'+val), $('#MISC_'+val), $('#TOTAL_'+val), $('#MOD_'+val), $('#ERROR_'+val)));
	})
	

	//Classes
	this.klasses = [
	
		//Barbarian
		new klass(
			12, //Hit Die
			['Climb','Craft','Handle Animal','Intimidate','Jump','Listen','Ride','Survival','Swim'],
			['Lawful Good','Lawful Neutral','Lawful Evil'],
			[4,4],
			[2,0,0]),
		
		//Bard
		new klass(
			6,
			['Appraise','Balance','Bluff','Climb','Concentration','Craft','Decipher Script',
			'Diplomacy','Disguise','Escape Artist','Gather Information','Hide','Jump','Knowledge(all)',
			'Listen','Move Silently','Perform','Profession','Sense Motive','Sleight of Hand','Speak Languages',
			'Spellcraft','Swim','Tumble','Use Magic Device'],
			['Lawful Good','Lawful Neutral','Lawful Evil'],
			[6,6],
			[0,2,2]),
		
		//Cleric
		new klass(
			8,
			['Concentration','Craft','Diplomacy','Heal','Knowledge (arcana)','Knowledge (history)',
			'Knowledge (religion)', 'Knowledge (the planes)', 'Profession', 'Spellcraft'],
			[],//will need to adjust this based on diety
			[2,2],
			[2,0,2]),
		
		//Druid
		new klass(
			8,
			['Concentration','Craft','Diplomacy','Handle Animal','Heal','Knowledge (nature)',
			'Listen', 'Profession', 'Ride', 'Spellcraft', 'Spot', 'Survival', 'Swim'],
			['Lawful Good', 'Chaotic Good', 'Lawful Evil', 'Chaotic Evil'],
			[4,4],
			[2,0,2]),
			
		//Fighter
		new klass(
			10,
			['Climb','Craft','Handle Animal','Intimidate','Jump','Ride','Swim'],
			[],
			[2,2],
			[2,0,0]),
			
		//Monk
		new klass(
			8,
			['Balance','Climb','Concentration','Craft','Diplomacy','Escape Artist','Hide',
			'Jump','Knowledge (arcana)','Knowledge (religion)', 'Listen', 'Move Silently', 'Perform',
			'Profession', 'Sense Motive', 'Spot', 'Swim', 'Tumble'],
			['Neutral Good', 'Chaotic Good', 'Neutral', 'Chaotic Neutral', 'Neutral Evil', 'Chaotic Evil'],
			[4,4],
			[2,2,2]),
		
		//Paladin
		new klass(
			10,
			['Concentration', 'Craft', 'Diplomacy', 'Handle Animal', 'Heal', 'Knowledge (nobility and royalty)',
			'Knowledge (religion)', 'Profession', 'Ride', 'Sense Motive'],
			['Neutral Good', 'Chaotic Good', 'Lawful Neutral', 'Neutral', 'Chaotic Neutral', 'Lawful Evil',
			'Neutral Evil', 'Chaotic Evil'],
			[2,2],
			[2,0,0]),
			
		//Ranger	
		new klass(
			8,
			['Climb','Concentration','Craft','Handle Animal', 'Heal', 'Hide', 'Jump', 'Knowledge (dungeoneering)',
			'Knowledge (geography)', 'Knowledge (nature)', 'Listen', 'Move Silently', 'Profession', 'Ride',
			'Search', 'Spot', 'Survival', 'Swim', 'Use Rope'],
			[],
			[6,6],
			[2,2,0]),
		
		//Rogue
		new klass(
			6,
			['Appraise','Balance', 'Bluff', 'Climb', 'Craft', 'Decipher Script', 'Diplomacy',
			'Disable Device', 'Disguise', 'Escape Artist', 'Forgery', 'Gather Information',
			'Hide', 'Intimidate', 'Jump', 'Knowledge (local)', 'Listen', 'Move Silently', 
			'Open Lock', 'Perform', 'Profession', 'Search', 'Sense Motive', 'Sleight of Hand',
			'Spot', 'Swim', 'Tumble', 'Use Magic Device', 'Use Rope'],
			[],
			[8,8],
			[0,2,0]),
			
		//Sorcerer
		new klass(
			4,
			['Bluff', 'Concentration', 'Craft', 'Knowledge (arcana)', 'Profession', 'Spellcraft'],
			[],
			[2,2],
			[0,0,2]),
			
		//Wizard
		new klass(
			4,
			['Concentration', 'Craft', 'Decipher Script', 'Knowledge (all)', 'Profession',
			'Spellcraft'],
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
	$.each(character.klass_names, function(i,val){
		if(character.$klass.val() == val){
			character.setAvailableAlignments(character.klasses[i].getFalseAlignments());
			character.setSkillPoints(character.klasses[i].getSkillz(),character.abilities[3].getMod());
			character.setBaseSaves(character.klasses[i].getBaseSaves());
		}
	})
}

Character.prototype.setAvailableAlignments = function (align){
	character = this;
	
	$.each(character.alignments, function(i, val){
		$('#character_alignment option[value='+val+']').attr('disabled','');
	})
	
	$.each(align, function(j,falseAlign){
			$('#character_alignment option[value='+falseAlign+']').attr('disabled','disabled');
			$('#character_alignment option[value='+falseAlign+']').attr('selected','');
	})
}

Character.prototype.setBaseSaves = function(BaseSaves)
{
		character = this;
	$.each(character.saves, function(i,val){
		val.setBaseSave(BaseSaves[i]);
	})
}

Character.prototype.setSkillPoints = function(skillz,intelligence)
{
	return this.$skillz.val((skillz[0] + parseInt(intelligence, 10)) * 4);
}


Character.prototype.setRaceModifiers = function (){
	character = this;
	$.each(character.race_names, function(i,val){
		if (character.$race.val() == val)			{
			character.raceAdjustMisc(i, 1);
		}
		if (character.cur_race == val)			{
			character.raceAdjustMisc(i, -1);
		}			
	})
	character.cur_race = character.$race.val();
}


Character.prototype.raceAdjustMisc = function(loc, sign )
{
	character = this;
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