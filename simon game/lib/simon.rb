class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until game_over
      self.take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    if !game_over
      self.show_sequence
      self.require_sequence #what did this even accomplish
      @sequence_length+=1
      round_success_message
    end
    
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    # ???
  end

  def add_random_color
    random = %w(red blue yellow green).sample
    @seq << random
  end

  def round_success_message
    puts "way to go!"
  end

  def game_over_message
    puts "game over!"
  end

  def reset_game
    @game_over = false
    @seq = []
    # @seq.add_random_color
    @sequence_length = 1
  end
end
