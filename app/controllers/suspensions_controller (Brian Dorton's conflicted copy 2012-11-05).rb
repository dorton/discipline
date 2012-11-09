class SuspensionsController < ApplicationController
  # GET /suspensions
  # GET /suspensions.json
  def index
    @suspensions = Suspension.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @suspensions }
    end
  end

  # GET /suspensions/1
  # GET /suspensions/1.json
  def show
    @suspension = Suspension.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @suspension }
    end
  end

  # GET /suspensions/new
  # GET /suspensions/new.json
  def new
    @suspension = Suspension.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @suspension }
    end
  end

  # GET /suspensions/1/edit
  def edit
    @suspension = Suspension.find(params[:id])
  end

  # POST /suspensions
  # POST /suspensions.json
  def create
    @suspension = Suspension.new(params[:suspension])

    respond_to do |format|
      if @suspension.save
        format.html { redirect_to @suspension, notice: 'Suspension was successfully created.' }
        format.json { render json: @suspension, status: :created, location: @suspension }
      else
        format.html { render action: "new" }
        format.json { render json: @suspension.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /suspensions/1
  # PUT /suspensions/1.json
  def update
    @suspension = Suspension.find(params[:id])

    respond_to do |format|
      if @suspension.update_attributes(params[:suspension])
        format.html { redirect_to @suspension, notice: 'Suspension was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @suspension.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suspensions/1
  # DELETE /suspensions/1.json
  def destroy
    @suspension = Suspension.find(params[:id])
    @suspension.destroy

    respond_to do |format|
      format.html { redirect_to suspensions_url }
      format.json { head :no_content }
    end
  end
end
