class VentureCapitalist

  @@all = []

  def initialize(name, net_worth)
    @name = name
    @net_worth = net_worth
    @@all << self
  end

end
