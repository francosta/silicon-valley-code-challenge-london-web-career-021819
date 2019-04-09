class Startup

  attr_reader :founder, :domain, :name

  @@all =[]

  def initialize(name, founder, domain)
    @name = name
    @founder = founder
    @domain = domain
    @@all << self
  end

  def pivot(name, domain)
    @name = name
    @domain = domain
  end

  def self.all
    @@all
  end

  def self.find_by_founder(founder_name)
    @@all.detect {|startup| startup.founder == founder_name}
  end

  def self.domains
    @@all.map {|startup| startup.domain}
  end

  def sign_contract(venture_capitalist, investment_type, investment)
    FundingRound.new(self, venture_capitalist, investment_type, investment.to_f)
  end

  def funding_rounds_for_startup
    FundingRound.all.select {|fr| fr.startup == self}
  end

  def funding_rounds
    funding_rounds_for_startup.count
  end

  def total_funds
    funding_rounds_for_startup.map {|fr| fr.investment}.sum
  end

  def investors
    funding_rounds_for_startup.map {|fr| fr.venture_capitalist}.uniq
  end

  def big_investors
    investors.map do |inv|
      VentureCapitalist.tres_commas_club.select {|big_inv| big_inv == inv }
    end.flatten
  end

  end
