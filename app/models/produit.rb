class Produit < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minimum: 5 }
  validates :prix, presence: true,
				   numericality: true
end
