require 'pry'
class Deck
  attr_accessor :cards

  def initialize
  rank = [2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K", "A"]
  suit = ["Hearts", "Diamonds", "Spades", "Clubs"]
  @my_deck = []
  
    suit.each do |s|
      rank.each do |r|
        @my_deck << Card.new(r, s)
      end
    end

  end

  def cards
    @my_deck
  end

  def choose_card
    cards.pop
  end

end




class Card

  attr_accessor :suit, :rank
  attr_reader :deck
  @@all = []

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
    @@all << self
  end

  def self.all
    @@all
  end

end
