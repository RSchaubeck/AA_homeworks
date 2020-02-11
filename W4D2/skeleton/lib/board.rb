require_relative 'player'

class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @name1 = name1
    @name2 = name2
    @cups = Array.new(14) { Array.new(4) }
    place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    @cups.each_with_index do |cup, i|
      if i != 6 && i != 13
        cup.fill(:stone)
      end
    end
    @cups[6] = []
    @cups[13] = []
  end

  def valid_move?(start_pos)
    if start_pos >= @cups.length
      raise "Invalid starting cup"
    elsif cups[start_pos].empty?
      raise "Starting cup is empty"
    end
  end

  def make_move(start_pos, current_player_name)
    num_stones = @cups[start_pos].length
    @cups[start_pos] = []
    i = start_pos + 1
    while num_stones >= 0
      i = 0 if i > 13
      if current_player_name == @name1 
        @cups[i] << :stone unless i == 13
        i += 1
        num_stones -= 1
      elsif current_player_name == @name2 
        @cups[i] << :stone unless i == 6
        i += 1
        num_stones -= 1
      else
        i += 1
        num_stones -= 1
      end      
    end
    next_turn(i)
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    
    @cups[ending_cup_idx].empty? ? :switch : ending_cup_idx
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    side1_empty = @cups[0..5].all? { |cup| cup.empty? }
    side2_empty = @cups[7..12].all? { |cup| cup.empty? }
    return true if side1_empty || side2_empty
    false
  end

  def winner
    return :draw if @cups[6].length == @cups[13].length
    @cups[6].length > @cups[13].length ? @name1 : @name2
  end
end


b = Board.new("tony", "Al")
p b.cups