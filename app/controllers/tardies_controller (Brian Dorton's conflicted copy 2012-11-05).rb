class TardiesController < ApplicationController
  # GET /tardies
  # GET /tardies.json
  def index
    @tardies = Tardy.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tardies }
    end
  end

  # GET /tardies/1
  # GET /tardies/1.json
  def show
    @tardy = Tardy.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tardy }
    end
  end

  # GET /tardies/new
  # GET /tardies/new.json
  def new
    @tardy = Tardy.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tardy }
    end
  end

  # GET /tardies/1/edit
  def edit
    @tardy = Tardy.find(params[:id])
  end

  # POST /tardies
  # POST /tardies.json
  def create
    @tardy = Tardy.new(params[:tardy])

    respond_to do |format|
      if @tardy.save
        format.html { redirect_to @tardy, notice: 'Tardy was successfully created.' }
        format.json { render json: @tardy, status: :created, location: @tardy }
      else
        format.html { render action: "new" }
        format.json { render json: @tardy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tardies/1
  # PUT /tardies/1.json
  def update
    @tardy = Tardy.find(params[:id])

    respond_to do |format|
      if @tardy.update_attributes(params[:tardy])
        format.html { redirect_to @tardy, notice: 'Tardy was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tardy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tardies/1
  # DELETE /tardies/1.json
  def destroy
    @tardy = Tardy.find(params[:id])
    @tardy.destroy

    respond_to do |format|
      format.html { redirect_to tardies_url }
      format.json { head :no_content }
    end
  end
end
