class KlassSkillsController < ApplicationController
  # GET /klass_skills
  # GET /klass_skills.xml
  def index
    @klass_skills = KlassSkill.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @klass_skills }
    end
  end

  # GET /klass_skills/1
  # GET /klass_skills/1.xml
  def show
    @klass_skill = KlassSkill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @klass_skill }
    end
  end

  # GET /klass_skills/new
  # GET /klass_skills/new.xml
  def new
    @klass_skill = KlassSkill.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @klass_skill }
    end
  end

  # GET /klass_skills/1/edit
  def edit
    @klass_skill = KlassSkill.find(params[:id])
  end

  # POST /klass_skills
  # POST /klass_skills.xml
  def create
    @klass_skill = KlassSkill.new(params[:klass_skill])

    respond_to do |format|
      if @klass_skill.save
        format.html { redirect_to(@klass_skill, :notice => 'KlassSkill was successfully created.') }
        format.xml  { render :xml => @klass_skill, :status => :created, :location => @klass_skill }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @klass_skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /klass_skills/1
  # PUT /klass_skills/1.xml
  def update
    @klass_skill = KlassSkill.find(params[:id])

    respond_to do |format|
      if @klass_skill.update_attributes(params[:klass_skill])
        format.html { redirect_to(@klass_skill, :notice => 'KlassSkill was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @klass_skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /klass_skills/1
  # DELETE /klass_skills/1.xml
  def destroy
    @klass_skill = KlassSkill.find(params[:id])
    @klass_skill.destroy

    respond_to do |format|
      format.html { redirect_to(klass_skills_url) }
      format.xml  { head :ok }
    end
  end
end
