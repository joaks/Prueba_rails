class PagesController < ApplicationController
  def batman
  end
  def superman
  end	
  def batman_vs_superman
  end	

  def save_voto
    if params[:heroe].present? && params[:email].present?
      Voto.create(
        heroe: params[:heroe],
        email: params[:email],
       
        )

      redirect_to pages_batman_vs_superman_path, notice: "voto"

    else
      flash[:alert] = "Complete todos los datos"
      render :batman_vs_superman
    end
  end


end
