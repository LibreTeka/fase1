class LibrRelAmigosController < ApplicationController
	  before_action :set_libr_rel_amigos, only: [:new, :create, :update, :destroy]

  def new
   @libr_rel_amigo = LibrRelAmigo.new

  end

  def create
    @libr_rel_amigo = LibrRelAmigo.new(libr_rel_amigo_params)
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
      params.require(:libr_rel_amigo).permit(:amigos_string, :amigos_integer)
    end

    




end
