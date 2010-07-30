//;(function($){

function Ability(base,misc,total,mod,error){
	this.$base = base;
	this.$misc = misc;
	this.$total = total;
	this.$mod = mod;
	this.$error = error;
	
	this.addingUpThePoints();
	this.modPowerGo(); 
	this.linkage();
}

Ability.prototype.modPowerGo = function ()
{
	return this.$mod.val(Math.floor(this.$total.val() / 2) - 5);
}

Ability.prototype.getMod = function()
{
	return this.$mod.val();
}

//Currently only takes into account level 1
Ability.prototype.addingUpThePoints = function ()
{
	if(parseInt(this.$base.val(),10) > 18){
		alert('Base Too High');
	}
	else if(parseInt(this.$base.val(),10) < 3){
		alert('Base Too Low');
	}
		return this.$total.val(parseInt(this.$base.val(),10) + parseInt(this.$misc.val(),10));
}

Ability.prototype.AdjustMisc = function(value)
{
	this.$misc.val(parseInt(this.$misc.val(),10) + parseInt(value,10));
}

Ability.prototype.linkage = function ()
{
	var ability = this;
	 	$.link({
			source: ability.$base,
			target: ability.$total,
			convert: function(){ return ability.addingUpThePoints().val();}
		})
		$.link({
			source: ability.$misc,
			target: ability.$total,
			convert: function(){ return ability.addingUpThePoints().val();}
		})
		$.link({
			source: ability.$total,
			target: ability.$mod,
			convert: function(){ return ability.modPowerGo().val();}
		})
}



//})(jQuery);