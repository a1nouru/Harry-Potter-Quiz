class SpellcheckerController < ApplicationController

  # GET /spellchecker
  def show
    @checks = SpellChecker.check
  end

end
