class LibrUsuariosController < ApplicationController
  before_action :set_libr_usuario, only: [:show, :edit, :update, :destroy]

  # GET /libr_usuarios
  # GET /libr_usuarios.json
  def index
    @libr_usuarios = LibrUsuario.all
  end

  # GET /libr_usuarios/1
  # GET /libr_usuarios/1.json
  def show
  end

  # GET /libr_usuarios/new
  def new
    @libr_usuario = LibrUsuario.new
  end

  # GET /libr_usuarios/1/edit
  def edit
  end

  # POST /libr_usuarios
  # POST /libr_usuarios.json
  def create
    @libr_usuario = LibrUsuario.new(libr_usuario_params)

    #respond_to do |format|
      if @libr_usuario.save
        redirect_to cuentacreada_path, :notice => "Dentro!!!"
        #format.html { redirect_to @libr_usuario, notice: 'Libr usuario was successfully created.' }
        #format.json { render :show, status: :created, location: @libr_usuario }
      else
        render "new"
        #format.html { render :new }
        #format.json { render json: @libr_usuario.errors, status: :unprocessable_entity }
      end
    #end
  end

  # PATCH/PUT /libr_usuarios/1
  # PATCH/PUT /libr_usuarios/1.json
  def update
    respond_to do |format|
      if @libr_usuario.update(libr_usuario_params)
        format.html { redirect_to @libr_usuario, notice: 'Libr usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @libr_usuario }
      else
        format.html { render :edit }
        format.json { render json: @libr_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libr_usuarios/1
  # DELETE /libr_usuarios/1.json
  def destroy
    @libr_usuario.destroy
    respond_to do |format|
      format.html { redirect_to libr_usuarios_url, notice: 'Libr usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libr_usuario
      @libr_usuario = LibrUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libr_usuario_params
      params.require(:libr_usuario).permit(:Nombre, :Apellido1, :Apellido2, :poblacion, :email, :password, :password_confirmation)
    end

    
end
