class PokemonsController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		puts pokemon.id 
		pokemon.trainer_id = current_trainer.id 
		pokemon.save
		redirect_to root_path
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		puts pokemon.id
		pokemon.health -= 10
		pokemon.save
		redirect_to trainer_path(current_trainer)
		if pokemon.health <= 0
			pokemon.destroy
		end
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		pokemon = Pokemon.new
		pokemon.name = params[:pokemon][:name]
		pokemon.trainer_id = current_trainer.id
		pokemon.health = 100
		pokemon.level = 1
		pokemon.save

		if pokemon.valid? 
			redirect_to trainer_path(current_trainer)
		else
			flash[:error] = pokemon.errors.full_messages.to_sentence
			redirect_to new_pokemon_path
		end

	end


end
