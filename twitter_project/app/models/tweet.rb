class Tweet < ActiveRecord::Base
  attr_accessible :content
  validates :content, :length => { :maximum => 140, :minimum => 1 }
end
