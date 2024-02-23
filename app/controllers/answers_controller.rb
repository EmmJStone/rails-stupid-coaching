class AnswersController < ApplicationController
  def answer
    @question = params[:question]

    exit_phrase = "I am going to work"

    @response = ''

    responses = [
    "Great!",
    "Silly question, get dressed and go to work!",
    "I don't care, get dressed and go to work!"
    ]

    if @question.nil?
      @response = responses[2]
    elsif @question.end_with?("?")
      @response = responses[1]
    elsif @question == exit_phrase
      @response = responses[0]
    else
      @response = responses[2]
    end
    return @response
  end
end
