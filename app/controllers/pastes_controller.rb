class PastesController < ApplicationController
  before_action :set_paste, only: [:show, :edit, :update, :destroy]

  # GET /pastes
  # GET /pastes.json
  def index
    @paste = Paste.new
    render :new
  end

  # GET /pastes/1
  # GET /pastes/1.json
  def show
  end

  # GET /pastes/new
  def new
    @paste = Paste.new
  end

  # GET /pastes/1/edit
  def edit
  end

  # POST /pastes
  # POST /pastes.json
  def create
    @paste = Paste.new(paste_params)

    respond_to do |format|
      if @paste.save
        format.html { redirect_to paste_path(id: @paste.slug), notice: 'Paste was successfully created.' }
        format.json { render :show, status: :created, location: @paste }
      else
        format.html { render :new }
        format.json { render json: @paste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pastes/1
  # PATCH/PUT /pastes/1.json
  def update
    respond_to do |format|
      if @paste.update(paste_params)
        format.html { redirect_to paste_path(id: @paste.slug), notice: 'Paste was successfully updated.' }
        format.json { render :show, status: :ok, location: @paste }
      else
        format.html { render :edit }
        format.json { render json: @paste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pastes/1
  # DELETE /pastes/1.json
  def destroy
    @paste.destroy
    respond_to do |format|
      format.html { redirect_to pastes_url, notice: 'Paste was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paste
      @paste = Paste.find_by(slug: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paste_params
      params.require(:paste).permit(:title, :code, :slug)
    end
end
