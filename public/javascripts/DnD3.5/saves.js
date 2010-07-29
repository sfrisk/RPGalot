function Saves(base, total, abilityMod, misc, ability)
{
	this.$base = base;
	this.$total = total;
	this.$abilityMod = abilityMod;
	this.$abilityMod.val(ability.val());
	this.$misc = misc;
	
	this.AddingUpThePoints();
	this.linkage(ability);
}

Saves.prototype.linkage = function(ability)
{
	var saves = this;
	 	$.link({
			source: ability, //this is the modifier DOM element for ability
			target: saves.$abilityMod
		})
		$.link({
			source: saves.$base,
			target: saves.$total,
			convert: function(){ return saves.AddingUpThePoints().val();}
		})
		$.link({
			source: saves.$misc,
			target: saves.$total,
			convert: function(){ return saves.AddingUpThePoints().val();}
		})	
		$.link({
			source: saves.$abilityMod,
			target: saves.$total,
			convert: function(){ return saves.AddingUpThePoints().val();}
		})	
}

Saves.prototype.AddingUpThePoints = function ()
{
	total = parseInt(this.$base.val(),10) + parseInt(this.$misc.val(),10) + parseInt(this.$abilityMod.val(),10);
	return this.$total.val(total);
}

Saves.prototype.setBaseSave = function (base)
{
	this.$base.val(base);
}
