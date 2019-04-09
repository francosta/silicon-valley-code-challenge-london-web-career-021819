class VentureCapitalist

  attr_reader :name, :net_worth

  @@all = []

  def initialize(name, net_worth)
    @name = name
    @net_worth = net_worth
    @@all << self
  end

  def self.all
    @@all
  end

  def total_worth
    @net_worth
  end

  def self.tres_commas_club
    @@all.select {|vc| vc.net_worth > 1000000000}
  end

  def offer_contract(startup, type, investment)
    FundingRound.new(startup, self, type, investment.to_f)
  end

  def funding_rounds
    FundingRound.all.select {|fr| fr.venture_capitalist == self}
  end

  def portfolio
    funding_rounds.map {|fr| fr.startup}.uniq
  end

  def biggest_investment
    funding_rounds.max_by {|fr| fr.investment}
  end

  def invested(domain)
    funding_rounds.map {|fr| if fr.startup.domain == domain then fr.investment end}.compact.sum
  end

end
