class WelcomeController < ApplicationController
    
    
    def index
        @disclaimers = Disclaimer.where(:page => 'Home')
    end
    
    def about
        @disclaimers = Disclaimer.where(:page => 'About')
    end
    
    def faq
        @disclaimers = Disclaimer.where(:page => 'FAQ')
    end
    
    def gallery
        @disclaimers = Disclaimer.where(:page => 'Gallery')
    end 
    
    def product
        @reviews = Review.all.order("created_at DESC").take(5)
        
        @disclaimers = Disclaimer.where(:page => 'Product')
    end 
end