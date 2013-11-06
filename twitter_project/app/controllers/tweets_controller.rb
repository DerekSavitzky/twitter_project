class TweetsController < ApplicationController
  def index
    @tweets = Tweet.order('id DESC')
  end
  
  def create
    @tweet = Post.new(param[:tweet])
    @tweet.save
  end
end
