# frozen_string_literal: true

# QuestionsController is in charge of the ask and answer pages
class QuestionsController < ApplicationController
  def ask
    @question = params[:question]
  end

  def answer
    @answer = if params[:question] == 'I am going to work'
                'Great!'
              elsif params[:question].include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
