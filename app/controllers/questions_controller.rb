class QuestionsController < ApplicationController
  def ask; end

# in the param see the keys that we need to set the instance variables
# and then, we need to define the missing instance variables
# use them in the view.
  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I do not care, get dressed and go to work!'
    end
  end
end
