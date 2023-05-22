class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @student_ask = params[:ask]
    if @student_ask.capitalize == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @student_ask.chars.last == '?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = 'Get dressed and go to work!'
    end
  end
end
