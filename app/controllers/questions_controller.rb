class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @query = params[:search]
      if @query == 'I am going to work right now!'
        @answer = 'Great'
      elsif @query.include? "?"
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer =  'I don\'t care, get dressed and go to work!'
      end
  end
end
