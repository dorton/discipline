class InschoolsController < ApplicationController
  # GET /inschools
  # GET /inschools.json
  def index
    @inschools = Inschool.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inschools }
    end
  end

  # GET /inschools/1
  # GET /inschools/1.json
  def show
    @inschool = Inschool.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inschool }
    end
  end

  # GET /inschools/new
  # GET /inschools/new.json
  def new
    @inschool = Inschool.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inschool }
    end
  end

  # GET /inschools/1/edit
  def edit
    @inschool = Inschool.find(params[:id])
  end

  # POST /inschools
  # POST /inschools.json
  def create
    @inschool = Inschool.new(params[:inschool])

    respond_to do |format|
      if @inschool.save
        format.html { redirect_to @inschool, notice: 'Inschool was successfully created.' }
        format.json { render json: @inschool, status: :created, location: @inschool }
      else
        format.html { render action: "new" }
        format.json { render json: @inschool.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inschools/1
  # PUT /inschools/1.json
  def update
    @inschool = Inschool.find(params[:id])

    respond_to do |format|
      if @inschool.update_attributes(params[:inschool])
        format.html { redirect_to @inschool, notice: 'Inschool was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inschool.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inschools/1
  # DELETE /inschools/1.json
  def destroy
    @inschool = Inschool.find(params[:id])
    @inschool.destroy

    respond_to do |format|
      format.html { redirect_to inschools_url }
      format.json { head :no_content }
    end
  end
end
