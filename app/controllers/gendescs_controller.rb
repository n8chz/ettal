class GendescsController < ApplicationController
  before_action :set_gendesc, only: [:show, :edit, :update, :destroy]

  # GET /gendescs
  # GET /gendescs.json
  def index
    @gendescs = Gendesc.all
  end

  # GET /gendescs/1
  # GET /gendescs/1.json
  def show
  end

  # GET /gendescs/new
  def new
    @gendesc = Gendesc.new
  end

  # GET /gendescs/1/edit
  def edit
  end

  # POST /gendescs
  # POST /gendescs.json
  def create
    @gendesc = Gendesc.new(gendesc_params)

    respond_to do |format|
      if @gendesc.save
        format.html { redirect_to @gendesc, notice: 'Gendesc was successfully created.' }
        format.json { render :show, status: :created, location: @gendesc }
      else
        format.html { render :new }
        format.json { render json: @gendesc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gendescs/1
  # PATCH/PUT /gendescs/1.json
  def update
    respond_to do |format|
      if @gendesc.update(gendesc_params)
        format.html { redirect_to @gendesc, notice: 'Gendesc was successfully updated.' }
        format.json { render :show, status: :ok, location: @gendesc }
      else
        format.html { render :edit }
        format.json { render json: @gendesc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gendescs/1
  # DELETE /gendescs/1.json
  def destroy
    @gendesc.destroy
    respond_to do |format|
      format.html { redirect_to gendescs_url, notice: 'Gendesc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gendesc
      @gendesc = Gendesc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gendesc_params
      params.require(:gendesc).permit(:gendesc)
    end
end
