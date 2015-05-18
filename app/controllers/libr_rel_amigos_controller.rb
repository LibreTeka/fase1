class LibrRelAmigosController < ApplicationController
	  before_action :set_libr_rel_amigos, only: [:new, :create, :update, :destroy]

  def new
  end

  def create
  end

  def destroy
  end

  def update
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_libr_rel_amigos
      @libr_rel_amigo = LibrRelAmigosController.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def libr_rel_amigo_params
      params.require(:libr_usuario_id).permit(:amigos_string)
    end

    




end
