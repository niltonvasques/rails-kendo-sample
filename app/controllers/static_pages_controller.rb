class StaticPagesController < ApplicationController
  class Product
    def initialize(name)
      @name = name
    end
    def name
      @name
    end
    def name=(name)
      @name = name
    end
  end
  def home
  end

  def products
   prods = []
   10.times do |x|
     prods << Product.new("Product #{x}")
   end 
   render json: prods 
  end
end
