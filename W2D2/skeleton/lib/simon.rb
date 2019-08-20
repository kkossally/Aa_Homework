class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless game_over
      system "clear"
      round_success_message
      sleep(1)
      self.sequence_length += 1
    end
  end

  def show_sequence
    system "clear"
    add_random_color
    seq.each do |color|
      puts color.upcase
      sleep(1)
      system "clear"
    end
  end

  def require_sequence
    user_seq = []
    puts "Repeat the sequence:"
    i = 0
    while i < seq.length && !game_over
      user_seq << gets.chomp.downcase
      system "clear"
      if user_seq != seq.take(user_seq.count)
        self.game_over = true
      end
      i += 1
    end
  end

  def add_random_color
    self.seq << COLORS.sample
  end

  def round_success_message
    print "Nice work!"
  end

  def game_over_message
    puts "Your longest run was #{sequence_length}. Better luck next time!"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end

simon = Simon.new
simon.play