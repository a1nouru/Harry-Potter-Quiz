class ReverseController < ApplicationController

  # GET /reverse
  def show
    @options = QuizBuilder.reverse_options
  end

  # POST /reverse/validate
  def validate
    if QuizBuilder.reverse_success?(params[:answer])
      render 'shared/success'
    else
      render 'shared/fail'
    end
  end

end
