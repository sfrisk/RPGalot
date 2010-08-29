function Skill(rank, plus, minus,total,ability,mod,klassSkill){
	this.$rank = rank;
	this.$plus = plus;
	this.$minus = minus;	
	this.$total = total; //total of skillz
	this.$mod = mod;
	this.$klassSkill = klassSkill;
	this.classSkill = false;

	this.$ability = ability;
//	this.$points = points; //DOM element for available points

	this.$ability.val(mod.val());
	this.addingUpThePoints();
	this.linkage();
}

Skill.prototype.linkage = function()
{
	var skill = this;
	this.$plus.click(function(){
		skill.addPoint($('#'+this.id.replace(/add_/, 'character_skill_')));
	})

	this.$minus.click(function(){
		skill.subPoint($('#'+this.id.replace(/minus_/, 'character_skill_')));
	})
	
	$.link({
		source: skill.$rank,
		target: skill.$total,
		convert: function(){ return skill.addingUpThePoints().val();}
	})
	$.link({
		source: skill.$mod,
		target: skill.$ability
	})
	$.link({
		source: skill.$mod,
		target: skill.$total,
		onvert: function(){ return skill.addingUpThePoints().val();}
	})
	
}

Skill.prototype.addingUpThePoints = function()
{
	return this.$total.val(parseInt(this.$rank.val(),10) + parseInt(this.$ability.val(),10));
}

Skill.prototype.addPoint = function($rank)
{
	maxRanks = 2;
	if (this.classSkill == true)
		maxRanks = 4;
	
	if($('#skillz').val() > 0 && $rank.val() < maxRanks) // checks for available skill points and assumes class skill
	{
			$rank.val(parseInt($rank.val(),10) + 1);
			$('#skillz').val(parseInt($('#skillz').val(),10) - 1);
	}

}

Skill.prototype.subPoint = function($rank)
{
	if($rank.val() > 0)
	{
			$rank.val(parseInt($rank.val(),10) - 1);
			$('#skillz').val(parseInt($('#skillz').val(),10) + 1);
	}
}
Skill.prototype.getRank = function()
{
	return parseInt(this.$rank.val(),10);
}


Skill.prototype.setClassSkill = function(skill)
{
	this.classSkill = skill;
	maxRanks = 2;
	if (this.classSkill == false || parseInt(this.$rank.val(),10) > maxRanks)
	{
		this.$rank.val(maxRanks);
		this.$klassSkill.attr('checked',false);
	}
	if (this.classSkill == true)
	{
		this.$klassSkill.attr('checked',true);
		//console.log(this.$klassSkill);
	} 
}

