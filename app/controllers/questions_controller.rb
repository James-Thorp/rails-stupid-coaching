class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @questions = params[:question]
    if @questions.include?("I am going to work")
      @response = "Great!"
    elsif @questions.include?("?")
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
