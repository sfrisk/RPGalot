class AlignmentsController < ApplicationController
  # GET /alignments
  # GET /alignments.xml
  def index
    @alignments = Alignment.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @alignments }
    end
  end

  # GET /alignments/1
  # GET /alignments/1.xml
  def show
    @alignment = Alignment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @alignment }
    end
  end

  # GET /alignments/new
  # GET /alignments/new.xml
  def new
    @alignment = Alignment.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @alignment }
    end
  end

  # GET /alignments/1/edit
  def edit
    @alignment = Alignment.find(params[:id])
  end

  # POST /alignments
  # POST /alignments.xml
  def create
    @alignment = Alignment.new(params[:alignment])

    respond_to do |format|
      if @alignment.save
        format.html { redirect_to(@alignment, :notice => 'Alignment was successfully created.') }
        format.xml  { render :xml => @alignment, :status => :created, :location => @alignment }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @alignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /alignments/1
  # PUT /alignments/1.xml
  def update
    @alignment = Alignment.find(params[:id])

    respond_to do |format|
      if @alignment.update_attributes(params[:alignment])
        format.html { redirect_to(@alignment, :notice => 'Alignment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @alignment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /alignments/1
  # DELETE /alignments/1.xml
  def destroy
    @alignment = Alignment.find(params[:id])
    @alignment.destroy

    respond_to do |format|
      format.html { redirect_to(alignments_url) }
      format.xml  { head :ok }
    end
  end
end
