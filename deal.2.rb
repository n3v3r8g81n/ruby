# Define a Deck class
# In the Deck class, build an initializer
# In the initialize method, build up every single card in the deck of cards and store it in an instance (@) variable. This will be an array.
# Define a method in the class called shuffle, which will trigger the shuffle method in the instance (@) variable that keeps track of the cards in the deck.
# Define a method deal, which will take the top card and pull it off the deck.

# Specification of the Deck
# The specification of a deck of cards is as follows:

# When a new deck is initialized (Deck.new), it will automatically store each card in an array in the class.
# There will be a shuffle method that will randomly order the array of cards in the deck.
# There will be deal method, which will return the top card from the deck, and remove it from the array.

class Card

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{@rank} of #{@suit}"
  end

end

class Deck

  def initialize
    @deck = []
    rank = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, :Jack, :Queen, :King, :Ace]
    suit =[:Hearts, :Diamonds, :Clubs, :Spades]
    
    rank.each do |rank|
      suit.each do |suit|
        @deck << Card.new(rank, suit)
      end
    end  
  end

  def output_all_cards
    @deck.each do |card|
      card.output_card
    end
  end

  def shuffle
    @deck.shuffle!
  end

  def deal_one
    @deck.shift
  end

end    

new_deck = Deck.new
shuffled_deck = new_deck.shuffle
shuffled_deck.output_all_cards
# ok to here. cards are shuffled.
# @deal = new_deck.deal_one
puts # for spacing
print "The card dealt is the "
@deal.output_card
puts # for spacing

