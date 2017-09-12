class CounterController < ApplicationController

  # GET /counter
  def show
    @spell = Spell.random
    @options = QuizBuilder.counter_options(@spell)
  end

  # POST /counter/validate
  def validate
    if QuizBuilder.counter_success?(params[:answer].to_i, params[:spell_mention_count].to_i)
      render 'shared/success'
    else
      render 'shared/fail'
    end
  end

end
