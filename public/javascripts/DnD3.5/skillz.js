function Skill(rank, plus, minus){
	this.$rank = rank;
	this.$plus = plus;
	this.$minus = minus;	
//	this.$points = points; //DOM element for available points
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
}

Skill.prototype.addPoint = function($rank)
{
	if($('#skillz').val() > 0 && $rank.val() < 4) // checks for available skill points and assumes class skill
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
