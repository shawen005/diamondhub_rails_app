class PagesController < ApplicationController
  def home
  	
  
  end

  def search
    @blog = Listing.includes(:searches).find(params[:id])
    @comment = searches.new
    

  end

  def about
    @skills = Skill.all
  end

  def contact
   
  end
  def tech_news
    @tweets = SocialTool.twitter_search
  end


end
