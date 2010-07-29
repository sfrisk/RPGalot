function Race(abilities, adjustments,size,speed){
	this.abilities = abilities;
	this.adjust = adjustments;	
	this.size = size;
	this.speed = speed;
};

Race.prototype.getAbility = function (){
	return this.abilities;
};

Race.prototype.getAdjust = function (){
	return this.adjust;
}