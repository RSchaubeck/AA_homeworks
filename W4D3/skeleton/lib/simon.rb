class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    while @game_over == false
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    round_success_message if game_over == false
    @sequence_length += 1
  end

  def show_sequence
    add_random_color
    @seq
  end

  def require_sequence
    puts "Repeat back sequence one color at a time"
    @seq.each do |color|
      input = gets.chomp
      @game_over = true if input != color
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    puts "Round completed!"
  end

  def game_over_message
    puts "Aww you no good"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
