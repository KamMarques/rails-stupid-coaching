class QuestionsController < ApplicationController

  def ask
  end

  def answer
   @ask = params[:ask]
    if @ask.include?("?")
        @coach_ask = "Silly question, get dressed and go to work!"
      elsif @ask.include?("I am going to work")
        @coach_ask = "Great!"
      else
        @coach_ask = "I don't care, get dressed and go to work!"
    end
  end
end
