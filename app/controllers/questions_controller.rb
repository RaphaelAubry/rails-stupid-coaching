class QuestionsController < ApplicationController
  def ask
  end
  def answer
    question = params[:question]
    if question != nil
      if question.last == '?'
        @answer = "Silly question, get dressed and go to work!"
      elsif question == 'I am going to work'
        @answer = 'Great!'
      else
        @answer = 'I dont care, get dressed and go to work!'
      end
      return @answer
    end
  end
end
