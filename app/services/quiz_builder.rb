class QuizBuilder
    $boo_val = true;
    $count = 0

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
#MAX_Display options
def self.count_Max_options
(Spell.names.sample(3) << Spell.count_Max_Spell).compact.shuffle
end
#MAX_Spell testcase
def self.max_success?(name1, name2)

name1==name2
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

# Frestyle question should only be answered once. To reset, reboot the server.
def self.set_Visited(bool)
  if $count>0
     $bool_val = bool
     $count = $count + 1
  else
     $bool_val = true
     $count = $count + 1
  end
return $bool_val
end

#getter
def self.get_Visited
  set_Visited(false)
end

end
