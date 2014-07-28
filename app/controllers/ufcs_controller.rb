class UfcsController < ApplicationController
  before_action :set_ufc, only: [:show, :edit, :update, :destroy, :predictions]

  # GET /ufcs
  # GET /ufcs.json
  def index
    @ufcs = Ufc.all
  end

  # GET /ufcs/1
  # GET /ufcs/1.json
  def show
  end

  # GET /ufcs/new
  def new
    @ufc = Ufc.new
  end

  # GET /ufcs/1/edit
  def edit
  end

  # POST /ufcs
  # POST /ufcs.json
  def create
    @ufc = Ufc.new(ufc_params)

    respond_to do |format|
      if @ufc.save
        format.html { redirect_to @ufc, notice: 'Ufc was successfully created.' }
        format.json { render :show, status: :created, location: @ufc }
      else
        format.html { render :new }
        format.json { render json: @ufc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ufcs/1
  # PATCH/PUT /ufcs/1.json
  def update
    respond_to do |format|
      if @ufc.update(ufc_params)
        format.html { redirect_to @ufc, notice: 'Ufc was successfully updated.' }
        format.json { render :show, status: :ok, location: @ufc }
      else
        format.html { render :edit }
        format.json { render json: @ufc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ufcs/1
  # DELETE /ufcs/1.json
  def destroy
    @ufc.destroy
    respond_to do |format|
      format.html { redirect_to ufcs_url, notice: 'Ufc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
def predictions
    @users = User.all
    @fights = @ufc.fights
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ufc
      @ufc = Ufc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ufc_params
      params.require(:ufc).permit(:id, :name, :date, :where,
	  :fights_attributes => [:id, :ufc_id, :ufc, :fighter_one_name, :fighter_one_image, :fighter_two_name, :fighter_two_image,
        :predictions_attributes => [:id, :fight, :user_id, :ufc, :fighter, :how, :when]
      ])
    end
end
