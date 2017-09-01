class LetterController < ApplicationController

  # GET /letter
  def show
    @options = QuizBuilder.letter_options
  end

  # POST /letter/validate
  def validate
    if QuizBuilder.letter_success?(params[:answer])
      render 'shared/success'
    else
      render 'shared/fail'
    end
  end

end
