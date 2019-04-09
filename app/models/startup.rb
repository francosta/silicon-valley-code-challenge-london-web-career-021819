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

  end
