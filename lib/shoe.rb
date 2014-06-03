class Shoe
	attr_accessor :name, :description, :image_path, :price

	def initialize(name, description, image_path, price)
		self.name = name
		self.description = description
		self.image_path = image_path
		self.price = price		
	end

	def valid_price?
		if price > 0.00
			return true
		else
			return false
		end
	end


end