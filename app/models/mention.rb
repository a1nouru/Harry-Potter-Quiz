require 'json'

class Mention

  def initialize(params)
    @sort_order = params["sort-order"]
    @number = params["Number of Records"]
    @book = params["Book"]
    @quote = params["Concordance"]
    @position = params["Position"]
    @name = params["Spell"]
  end

  attr_reader :sort_order, :number, :book, :quote, :position, :name

  def self.data
    path = Rails.root.join('data', 'mentions.json')
    file = File.read(path)
    JSON.parse(file)
  end

  def self.random
    new(data.sample)
  end

end
