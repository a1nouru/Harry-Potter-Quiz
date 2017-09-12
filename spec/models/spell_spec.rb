require "rails_helper"

describe Spell, type: :model do

let(:spell_data) {
    JSON.parse('[
      {
        "Classification": "Charm",
        "Effect": "Opens locked objects",
        "Spell(Lower)": "alohomora",
        "Spell": "Alohomora"
      },
      {
        "Classification": "Curse",
        "Effect": "Tortures opponentUnforgivable",
        "Spell(Lower)": "crucio",
        "Spell": "Crucio"
      },
      {
        "Classification": "Jinx",
        "Effect": "Knocks an object backwards",
        "Spell(Lower)": "flipendo",
        "Spell": "Flipendo"
      },
      {
        "Classification": "Curse",
        "Effect": "Murders opponentUnforgivable",
        "Spell(Lower)": "avadakedavra",
        "Spell": "Avada Kedavra"
      },
      {
        "Classification": "Charm",
        "Effect": "Turns small objects into birds",
        "Spell(Lower)": "avifors",
        "Spell": "Avifors"
    }
    ]')
  }

  let(:mention_data) {
    JSON.parse('[
      {
        "Book": "1: SS",
        "Concordance": ". they tugged and heaved at the door, but it wouldn’t budge, not even when hermione tried her alohomora charm, now what? said ron, these birds … they can’t be here just for decoration,",
        "Position": 82471,
        "Spell": "alohomora"
      },
      {
        "Book": "1: SS",
        "Concordance": "oh, move over, hermione snarled, she grabbed Harry’s wand, tapped the lock, and whispered, alohomora! the lock clicked and the door swung open — they piled through it, shut it quickly,",
        "Position": 47346,
        "Spell": "alohomora"
      },
      {
        "Book": "4: GoF",
        "Concordance": ", master, forgive me! forgive us all! voldemort began to laugh, he raised his wand, crucio! the death eater on the ground writhed and shrieked; Harry was sure the sound must carry to",
        "Position": 517967,
        "Spell": "crucio"
      },
      {
        "Book": "2: CoS",
        "Concordance": "think getting your head cut open makes you that special, myself, crabbe and goyle were sniggering stupidly, eatslugs, malfoy, said ron angrily, crabbe stopped laughing and started rubbing his knuckles in a menacing way",
        "Position": 120026,
        "Spell": "eatslugs"
      }
    ]')
  }

  before { allow(Mention).to receive(:data).and_return(mention_data) }
  before { allow(Spell).to receive(:data).and_return(spell_data) }

  let(:spell_alohomora) { Spell.new(Spell.data[0]) }
  let(:spell_crucio) { Spell.new(Spell.data[1]) }
  let(:spell_flipendo) { Spell.new(Spell.data[2]) }

  let(:mention_alohomora1) { Mention.new(Mention.data[0]) }
  let(:mention_alohomora2) { Mention.new(Mention.data[1]) }
  let(:mention_eatslugs) { Mention.new(Mention.data[3]) }

  describe "Spell 1: Reverse", :reverse do
    describe "Spell#reverse_name" do

      it "should return a string" do
        expect(spell_alohomora.reverse_name).to be_a(String)
      end

      it "should reverse the name" do
        expect(spell_alohomora.reverse_name).to eq('aromohola')
      end

    end
  end

  describe "Spell 2: Counter", :counter do
    describe  "Spell#mention_count" do

      it "should return an int" do
        expect(spell_alohomora.mention_count).to be_a(Integer)
      end

      context 'when spell is mentioned once' do
        it "should return 1" do
          expect(spell_crucio.mention_count).to eq(1)
        end
      end

      context 'when spell is mentioned more than once' do
        it "should return the number of mentions" do
          expect(spell_alohomora.mention_count).to eq(2)
        end
      end

      context 'when spell is not mentoined' do
        it "should return 0" do
          expect(spell_flipendo.mention_count).to eq(0)
        end
      end

    end
  end

  describe "Spell 3: Letter", :letter do
    describe "Spell#names_with_same_first_letter" do

      it "should return an array" do
        expect(spell_alohomora.names_with_same_first_letter).to be_a(Array)
      end

      context 'when there are other spell that starts with the same letter' do
        it "should return an array with the spell names" do
          expect(Set.new(spell_alohomora.names_with_same_first_letter)).to eq(Set.new(['avadakedavra', 'alohomora', 'avifors']))
        end
      end

      context 'when there is not another spell that starts with the same letter ' do
        it "should return an array with only the spells name " do
          expect(Set.new(spell_flipendo.names_with_same_first_letter)).to eq(Set.new(['flipendo']))
        end
      end

    end
  end

  describe "Spell 4: Lookup", :lookup do
    describe "Spell::find_by_mention(mention)" do

      let(:ivs) {[:classification, :effect, :name, :formatted_name]}

      context 'when there is a spell with same name as the mention\'s name' do
        it "should return a spell" do
          found_spell = Spell.find_by_mention(mention_alohomora1)
          expect(found_spell).to be_a(Spell)
        end
        it "should return the right spell" do
          found_spell = Spell.find_by_mention(mention_alohomora1)
          result = ivs.map{ |iv| found_spell.send(iv) }
          expected = ivs.map{ |iv| spell_alohomora.send(iv) }
          expect(result).to eq(expected)
        end
        it "should return the same spell for other mentions of the same spell" do
          first_found_spell = Spell.find_by_mention(mention_alohomora1)
          second_found_spell = Spell.find_by_mention(mention_alohomora2)
          result = ivs.map{ |iv| first_found_spell.send(iv) }
          expected = ivs.map{ |iv| second_found_spell.send(iv) }
          expect(result).to eq(expected)
        end
      end

      context 'when there is not a spell with same name as the mention\'s name' do
        it "should return nil" do
          found_spell = Spell.find_by_mention(mention_eatslugs)
          expect(found_spell).to be(nil)
        end
      end

    end
  end

end
