class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order('id DESC') # this instance variable will be available in the view
    @tweet = Tweet.new #this is for the form_for builder
  end
  
  def create
    @tweet = Tweet.new(params[:tweet])
    
    if @tweet.save #do we pass validation
      redirect_to :action => :index
    else
      @tweets = Tweet.order('id DESC')
      render :action => :index
    end
    
    
  end
end
