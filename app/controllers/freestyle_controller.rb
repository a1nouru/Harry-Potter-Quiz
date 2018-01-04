class FreestyleController < ApplicationController

# GET /MaxSpell/freestyle
def show
    if QuizBuilder.get_Visited
        @options = QuizBuilder.count_Max_options
    else
        #The freestyle question can only be answered once since there is only one most frequent spell, Other times its already an attempted
        render 'already_attempted'
    end
end

# POST /MaxSpell/validate
def validate
    if QuizBuilder.max_success?(params[:answer], Spell.count_Max_Spell)
        render 'shared/success'
        else
        render 'shared/fail'
    end
end

end

