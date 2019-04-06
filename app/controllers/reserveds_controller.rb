class ReservedsController < ApplicationController
  before_action :set_reserved, only: [:show, :edit, :update, :destroy]

  # GET /reserveds
  # GET /reserveds.json
  def index
    @reserveds = Reserved.all
  end

  # GET /reserveds/1
  # GET /reserveds/1.json
  def show
  end

  # GET /reserveds/new
  def new
    @reserved = Reserved.new
  end

  # GET /reserveds/1/edit
  def edit
  end

  # POST /reserveds
  # POST /reserveds.json
  def create
    @reserved = Reserved.new(reserved_params)

    respond_to do |format|
      if @reserved.save
        format.html { redirect_to @reserved, notice: 'Reserved was successfully created.' }
        format.json { render :show, status: :created, location: @reserved }
      else
        format.html { render :new }
        format.json { render json: @reserved.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reserveds/1
  # PATCH/PUT /reserveds/1.json
  def update
    respond_to do |format|
      if @reserved.update(reserved_params)
        format.html { redirect_to @reserved, notice: 'Reserved was successfully updated.' }
        format.json { render :show, status: :ok, location: @reserved }
      else
        format.html { render :edit }
        format.json { render json: @reserved.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reserveds/1
  # DELETE /reserveds/1.json
  def destroy
    @reserved.destroy
    respond_to do |format|
      format.html { redirect_to reserveds_url, notice: 'Reserved was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reserved
      @reserved = Reserved.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reserved_params
      params.require(:reserved).permit(:name, :email, :pax, :address, :KTP, :title)
    end
end
