class Battle < ApplicationRecord
	after_save :load_into_soulmate
	before_destroy :remove_from_soulmate

	def self.search(search)
		  where("name LIKE ? OR attacker_king LIKE ? OR defender_king LIKE ? OR battle_type LIKE ? OR location LIKE ?" , "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%") 
		  
	end

	

	private 



	def load_into_soulmate
		loader = Soulmate::Loader.new("battles")
		loader.add("term" => name, "id" => self.id, "data" => {
			"link" => Rails.application.routes.url_helpers.battle_path(self)
	   	})
	end

	def remove_from_soulmate
		loader = Soulmate::Loader.new("battles")
	    loader.remove("id" => self.id)
	end

end
