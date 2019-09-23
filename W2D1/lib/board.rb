require 'byebug'
class Board
  attr_accessor :cups

  def initialize(name1, name2)
    @cups = Array.new(14) {[]}
    @name1 = name1
    @name2 = name2
    place_stones
  end

  def place_stones
    (0..5).each do |cup_idx| 
      cups[cup_idx] += [:stone, :stone, :stone, :stone]
    end
    (7..12).each do |cup_idx| 
      cups[cup_idx] += [:stone, :stone, :stone, :stone]
    end
  end

  def valid_move?(start_pos)
    if start_pos > 12
      raise 'Invalid starting cup'
    end
    if cups[start_pos].empty?
      raise 'Starting cup is empty'
    end
  end

  def make_move(start_pos, current_player_name)
    stone_count = cups[start_pos].count
    # debugger

    cups[start_pos] = []
    
    cup_idx = (start_pos + 1) % 14
    
    while stone_count > 0
      unless (cup_idx == 13 && current_player_name == @name1) || (cup_idx == 6 && current_player_name == @name2)
        cups[cup_idx] << :stone
        stone_count -= 1
      end
      
      cup_idx = (cup_idx + 1) % 14
    end

    render
    next_turn(cup_idx - 1, current_player_name)
  end

  def next_turn(ending_cup_idx, current_player_name)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    if (ending_cup_idx == 6 && current_player_name == @name1) || (ending_cup_idx == 13 && current_player_name == @name2)
      return :prompt
    elsif cups[ending_cup_idx].count > 1
      return ending_cup_idx
    else
      return :switch
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end