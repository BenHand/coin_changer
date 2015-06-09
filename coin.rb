class CoinChanger

    Q = 25
    D = 10
    N = 5
    P = 1

  def initialize
    @coins = []
    puts "What amount would you like converted to coins?"
    which_coins?(gets.to_i)
  end

  def which_coins?(amt)
     remainder = amt % Q if remainder != 0
        (amt / Q).times do
          @coins << Q
        end
        (remainder / D).times do
          @coins << D
        end
     remainder = remainder % D if remainder != 0
        (remainder / N).times do
          @coins << N
        end
     remainder = remainder % N if remainder != 0
        (remainder / P).times do
          @coins << P
        end
     remainder = remainder % P if remainder != 0
     print @coins
  end

end

CoinChanger.new
