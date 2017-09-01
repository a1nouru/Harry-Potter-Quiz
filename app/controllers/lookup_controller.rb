class LookupController < ApplicationController

  # GET /lookup
  def show
    @mention = Mention.random
    @options = QuizBuilder.lookup_options(@mention)
  end

  # POST /lookup/validate
  def validate
    if QuizBuilder.lookup_success?(params[:spell_name], params[:answer])
      render 'shared/success'
    else
      render 'shared/fail'
    end
  end

end
