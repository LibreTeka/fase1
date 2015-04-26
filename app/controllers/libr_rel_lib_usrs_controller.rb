class LibrRelLibUsrsController < ApplicationController
  before_action :set_libr_rel_lib_usr, only: [:show, :edit, :update, :destroy]

  # GET /libr_rel_lib_usrs
  # GET /libr_rel_lib_usrs.json
  def index
    @libr_rel_lib_usrs = LibrRelLibUsr.all
  end

  # GET /libr_rel_lib_usrs/1
  # GET /libr_rel_lib_usrs/1.json
  def show
  end

  # GET /libr_rel_lib_usrs/new
  def new
    @libr_rel_lib_usr = LibrRelLibUsr.new
  end

  # GET /libr_rel_lib_usrs/1/edit
  def edit
  end

  # POST /libr_rel_lib_usrs
  # POST /libr_rel_lib_usrs.json
  def create
    @libr_rel_lib_usr = LibrRelLibUsr.new(libr_rel_lib_usr_params)

    respond_to do |format|
      if @libr_rel_lib_usr.save
        format.html { redirect_to @libr_rel_lib_usr, notice: 'Libr rel lib usr was successfully created.' }
        format.json { render :show, status: :created, location: @libr_rel_lib_usr }
      else
        format.html { render :new }
        format.json { render json: @libr_rel_lib_usr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libr_rel_lib_usrs/1
  # PATCH/PUT /libr_rel_lib_usrs/1.json
  def update
    respond_to do |format|
      if @libr_rel_lib_usr.update(libr_rel_lib_usr_params)
        format.html { redirect_to @libr_rel_lib_usr, notice: 'Libr rel lib usr was successfully updated.' }
        format.json { render :show, status: :ok, location: @libr_rel_lib_usr }
      else
        format.html { render :edit }
        format.json { render json: @libr_rel_lib_usr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libr_rel_lib_usrs/1
  # DELETE /libr_rel_lib_usrs/1.json
  def destroy
    @libr_rel_lib_usr.destroy
    respond_to do |format|
      format.html { redirect_to libr_rel_lib_usrs_url, notice: 'Libr rel lib usr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libr_rel_lib_usr
      @libr_rel_lib_usr = LibrRelLibUsr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libr_rel_lib_usr_params
      params.require(:libr_rel_lib_usr).permit(:libr_libro_id, :libr_usuario_id, :ubicacion, :otro)
    end
end
