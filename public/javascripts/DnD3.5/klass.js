function klass(hitDie,classSkills,notAlignment,skillPoints,saves)
{
	this.hit = hitDie; //hit die (determines HP)
	this.skillz = classSkills; //class skillz
	this.alignment = notAlignment; //lists the alignments class CANNOT be
	this.skillPoints = skillPoints; //initial Skill points, array [x,y,z] => x * Int Modifier + y and z is addition points per level
	this.saves = saves;
}

klass.prototype.getFalseAlignments = function(){
	return this.alignment;
}

klass.prototype.getSkillz = function(){
	return this.skillPoints
}

klass.prototype.getBaseSaves = function(){
	return this.saves;
}