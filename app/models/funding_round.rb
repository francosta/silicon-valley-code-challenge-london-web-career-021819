class FundingRound

  attr_reader :startup, :venture_capitalist, :type, :investment

  @@all = []

  def initialize(startup, venture_capitalist, type, investment)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    @investment = investment
    @@all << self
  end

  def investment
    @investment.to_f if @investment.to_f > 0
  end

  def self.all
    @@all
  end

end
