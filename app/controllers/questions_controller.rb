class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    last_character = @question[-1, 1]
    if @question == "I am going to work"
      @answer = "great"
    elsif last_character == "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
