class HomeController < ApplicationController
  def index
  end

  def private
  end

  def update
    @le_livre = Etudiant.find(current_etudiant.id)
    if current_etudiant.update maitre_id: params[:maitre_id] 
      current_etudiant.maitre_id= params[:maitre_id] 
    @le_livre.save
    redirect_to "/home/index"
  else  
    render 'show'
  end
    
    
  end

  def accepter
    Requete.find(params[:id]).update status: "accepté"
    redirect_to "/"
  end

  def refuser
    Requete.find(params[:id]).update status: "refusé"
    redirect_to "/"
  end

  def createreq
    @request = Requete.create etudiant_id: params[:etudiant_id], maitre_id: params[:maitre_id], status: "en attente"
    redirect_to "/"
  end


end
