json.extract! requete, :id, :etudiant_id, :maitre_id, :status, :created_at, :updated_at
json.url requete_url(requete, format: :json)
