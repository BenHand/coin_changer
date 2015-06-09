class CoinChanger

    Q = 25
    D = 10
    N = 5
    P = 1

  def initialize
    @change = []
    puts "What amount would you like converted to coins?"
    which_coins?(gets.to_i)
  end

  def which_coins?(amt)
    [Q, D, N, P].each do |coin|
      (amt / coin).times do
        @change << coin
      end
      amt = amt % coin if amt != 0
    end
    print @change
  end

end

CoinChanger.new
