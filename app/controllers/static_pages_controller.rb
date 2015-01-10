class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def easter_egg
    @stuff = 'You found it!'
    respond_to do |format|
      format.js
      format.text { render text: "You called me with this data: #{params.to_s}" }
    end
  end

  def click_me
    respond_to do |format|
      format.js
      format.text
    end
  end
end
