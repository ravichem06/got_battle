class BattlesController < ApplicationController
  before_action :set_battle, only: [:show, :edit, :update, :destroy]
  layout 'battles'
  # GET /battles
  # GET /battles.json
  def index
    @battles = Battle.all
  end

  # GET /battles/1
  # GET /battles/1.json
  def show
  end

  # GET /battles/new
  def new
    @battle = Battle.new
  end

  # GET /battles/1/edit
  def edit
  end

  # GET /list
  # GET /list.json
  def list
    @battles = Battle.all

    respond_to do |format|
      format.html
      format.json
    end
  end

  # GET /count
  # GET /count.json
  def count
    @battles_count = Battle.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  # POST /battles
  # POST /battles.json
  def create
    @battle = Battle.new(battle_params)

    respond_to do |format|
      if @battle.save
        format.html { redirect_to @battle, notice: 'Battle was successfully created.' }
        format.json { render :show, status: :created, location: @battle }
      else
        format.html { render :new }
        format.json { render json: @battle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /battles/1
  # PATCH/PUT /battles/1.json
  def update
    respond_to do |format|
      if @battle.update(battle_params)
        format.html { redirect_to @battle, notice: 'Battle was successfully updated.' }
        format.json { render :show, status: :ok, location: @battle }
      else
        format.html { render :edit }
        format.json { render json: @battle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /battles/1
  # DELETE /battles/1.json
  def destroy
    @battle.destroy
    respond_to do |format|
      format.html { redirect_to battles_url, notice: 'Battle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_battle
      @battle = Battle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def battle_params
      params.require(:battle).permit(:name, :year, :battle_number, :attacker_king, :defender_king, :attacker_1, :defender_1, :battle_outcome, :battle_type, :major_deaths, :major_capture, :attacker_size, :defender_size, :attacker_commander, :defender_commander, :summer, :location, :region, :note)
    end
end
