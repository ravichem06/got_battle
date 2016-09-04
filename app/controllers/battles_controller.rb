class BattlesController < ApplicationController
  before_action :set_battle, only: [:show, :edit, :update, :destroy]
  layout 'battles'
  # GET /battles
  # GET /battles.json
  def index
    @battles = Battle.all
  end

  # GET /search
  def search
    @battles = Battle.search(params[:search])
    respond_to do |format|
      format.html
      format.json
    end
  end

  # GET /stats
  # GET /stats.json
  def stats

    @most_active_attk = Battle.group(:attacker_king).order('count_id DESC').count(:id).keys
    @most_active_defk = Battle.group(:defender_king).order('count_id DESC').count(:id).keys
    @most_active_region = Battle.group(:region).order('count_id DESC').count(:id).keys
    @most_active_name = Battle.group(:name).order('count_id DESC').count(:id).keys
    @battle_type = Battle.group(:battle_type).order('count_id DESC').count(:id)
    @max_def_size = Battle.group(:defender_size).order('defender_size DESC').count(:defender_size).keys
    @min_def_size = Battle.group(:defender_size).order('defender_size ASC').count(:defender_size).keys
    @battles = Battle.all
    @i = 0
    @sum = 0
    @min_def_size.each do |n|
      if n == nil
        @sum += 0
        @i += 0 
      else
        @sum += n 
        @i += 1
      end 

  end 

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
