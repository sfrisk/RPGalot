class DeitiesController < ApplicationController
  # GET /deities
  # GET /deities.xml
  def index
    @deities = Deity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @deities }
    end
  end

  # GET /deities/1
  # GET /deities/1.xml
  def show
    @deity = Deity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @deity }
    end
  end

  # GET /deities/new
  # GET /deities/new.xml
  def new
    @deity = Deity.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @deity }
    end
  end

  # GET /deities/1/edit
  def edit
    @deity = Deity.find(params[:id])
  end

  # POST /deities
  # POST /deities.xml
  def create
    @deity = Deity.new(params[:deity])

    respond_to do |format|
      if @deity.save
        format.html { redirect_to(@deity, :notice => 'Deity was successfully created.') }
        format.xml  { render :xml => @deity, :status => :created, :location => @deity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @deity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /deities/1
  # PUT /deities/1.xml
  def update
    @deity = Deity.find(params[:id])

    respond_to do |format|
      if @deity.update_attributes(params[:deity])
        format.html { redirect_to(@deity, :notice => 'Deity was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @deity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /deities/1
  # DELETE /deities/1.xml
  def destroy
    @deity = Deity.find(params[:id])
    @deity.destroy

    respond_to do |format|
      format.html { redirect_to(deities_url) }
      format.xml  { head :ok }
    end
  end
end
