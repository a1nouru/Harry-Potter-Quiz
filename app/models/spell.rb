require 'json'

class Spell

  def initialize(params)
    @classification = params["Classification"]
    @effect = params["Effect"]
    @name = params["Spell(Lower)"]
    @formatted_name = params["Spell"]
  end

  attr_reader :classification, :effect, :name, :formatted_name

  def self.data
    path = 'data/spells.json'
    file = File.read(path)
    JSON.parse(file)
  end

  def self.random
    new(data.sample)
  end

  def self.effects
    data.map{|el| el["Effect"]}
  end

# Added method to generate 3 other sample spell names
  def self.names
    data.map{|el| el["Spell(Lower)"]}
  end

  # These two methods are used to validate answers
  def self.is_spell_name?(str)
    data.index { |el| el["Spell(Lower)"] == (str.downcase) }
  end

  def self.is_spell_name_for_effect?(name, effect)
    data.index { |el| el["Spell(Lower)"] == name && el["Effect"] == effect }
  end

  # To get access to the collaborative repository, complete the methods below.

# Spell 1: Reverse
# This instance method should return the reversed name of a spell
# Tests: `bundle exec rspec -t reverse .`
def reverse_name
    
    return name.reverse
end

# Spell 2: Counter
# This instance method should return the number
# (integer) of mentions of the spell.
# Tests: `bundle exec rspec -t counter .`
def mention_count
    countMentions = 0
    dataArr = Mention.data
    
    for data in dataArr
        if name == data["Spell"] #if occurrence
            countMentions += 1 #incrementing count
            
        end
    end
    
    return countMentions
end

# Spell 3: Letter
# This instance method should return an array of all spell names
# which start with the same first letter as the spell's name
# Tests: `bundle exec rspec -t letter .`
def names_with_same_first_letter
    arrSpell = []
    spellData = Spell.data
    
    for char in spellData
        if name[0] == char["Spell(Lower)"][0] #comparing character by character so if same put spell into arrSpell
            arrSpell.push(char["Spell(Lower)"]) #Inserting spells with similar first character to arrSpell
        end
    end
    
    return arrSpell
end

# most_frequent_spell in the book of harry potter method
def self.count_Max_Spell
  spellArray =  []
  dataUsing = Spell.data
 
  for i in dataUsing
      spellArray.push(i["Spell"])
  end
 
  most_frequent_spell = spellArray.uniq.max_by{ |i| spellArray.count( i ) }
 
return most_frequent_spell

end

# Spell 4: Lookup
# This class method takes a Mention object and
# returns a Spell object with the same name.
# If none are found it should return nil.
# Tests: `bundle exec rspec -t lookup .`
def self.find_by_mention(mention)
spellData = Spell.data

for i in spellData
    if mention.name == i["Spell(Lower)"]  #Looking up member "name" of object mention from Spell.data
        foundSpell = Spell.new({"Classification" => i["Classification"], "Effect" => i["Effect"], "Spell(Lower)" => i["Spell(Lower)"], "Spell" => i["Spell"]}) #New Spell object
        return foundSpell #Spell object with the same name
    end
end

return nil #If none are found

end

end
