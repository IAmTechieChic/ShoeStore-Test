#require './spec_helper'
require_relative '../lib/shoe'

describe Shoe do

	before :each do
		@shoe = Shoe.new "Jimmy Choo", "Pre-order this style today! Add to Shopping Bag to view approximate ship date. Diminutive crystals trace the elegant lines of a plush suede sandal topped with a lofty, ankle-wrap strap. Jimmy Choo","http://content.nordstrom.com/ImageGallery/store/product/Thumbnail/1/_7605141.jpg", 2200.00
	end


	describe "Monthly Display" do
		it 'display shoe description' do
			@shoe.description.should == "Pre-order this style today! Add to Shopping Bag to view approximate ship date. Diminutive crystals trace the elegant lines of a plush suede sandal topped with a lofty, ankle-wrap strap. Jimmy Choo"
		end

		it 'display shoe name' do
			@shoe.name == "Jimmy Choo"
		end

		it 'display shoe image' do
			@shoe.image_path.should == "http://content.nordstrom.com/ImageGallery/store/product/Thumbnail/1/_7605141.jpg"
		end

		it 'display shoe price' do
			@shoe.price.should be > 0.00
		end

	end

end