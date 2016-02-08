class CoachingController < ApplicationController
  def ask
    get_search_term
  end

  def answer
    get_search_term
    if @search_term.downcase == "i am going to work right now!"
      @answer = 'Good stuff'
    elsif @search_term.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def get_search_term
    @search_term = params[:search_term]
  end
end
