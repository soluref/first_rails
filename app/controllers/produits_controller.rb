class ProduitsController < ApplicationController

	before_action :require_user, only: [:index, :show]
	before_action :require_admin, only: [:destroy]
	before_action :require_editor, only: [:new]

	def index
		@produits = Produit.all
	end

	def new
	end

	def create
		@produit = Produit.new(params.require(:produit).permit(:title, :prix, :quantite))		
		if @produit.save
			redirect_to @produit
		else
			render 'new'
		end
	end

	def edition
		@produit = Produit.find(params[:id])
		@produit.destroy

		redirect_to produits_path 
	end
	def show
		@produit = Produit.find(params[:id])
	end
	
	def destroy
		@produit = Produit.find(params[:id])
		@produit.destroy
		redirect_to produits_path 
	end

end
