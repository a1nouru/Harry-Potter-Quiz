class QuizBuilder

  def self.reverse_options
    [
      Spell.random.reverse_name,
      Faker::Pokemon.name.downcase.reverse,
      Faker::Lorem.word.downcase.reverse,
      Faker::LordOfTheRings.character.downcase.reverse
    ].compact.shuffle
  end

  def self.reverse_success?(name)
    Spell.is_spell_name?(name.reverse)
  end

  def self.counter_options(spell)
    count = spell.mention_count
    arr = (1..20).to_a
    arr.delete(count)
    options = (arr.sample(3) << count).compact.shuffle
  end

  def self.counter_success?(count1, count2)
    count1 == count2
  end

  def self.letter_options
    spell = Spell.random
    letter = spell.name[0]
    fake = letter + Faker::Pokemon.name[1..-1]
    (spell.names_with_same_first_letter << fake).compact.shuffle
  end

  def self.letter_success?(name)
    !Spell.is_spell_name?(name)
  end

  def self.lookup_options(mention)
    (Spell.effects.sample(3) << Spell.find_by_mention(mention).try(:effect)).compact.shuffle
  end

  def self.lookup_success?(name, effect)
    Spell.is_spell_name_for_effect?(name, effect)
  end

end
