require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

su1 = Startup.new("Beryl", "Guy A", "beryl.com")
su2 = Startup.new("Uber", "Guy B", "uber.com")
su3 = Startup.new("Stuart", "Girl A", "stuart.fr")
su4 = Startup.new("Farfetch", "Guy A", "farfetch.pt")
su5 = Startup.new("OnePlus", "Girl B", "oneplus.co.uk")
su6 = Startup.new("Spotify", "Guy C", "spotify.sk")
su7 = Startup.new("TwoPlus", "Girl B", "twoplus.com")

v1 = VentureCapitalist.new("Bill Gates", 3000000000)
v2 = VentureCapitalist.new("Warren Buffet", 2500000000)
v3 = VentureCapitalist.new("Mark Zuckerberg", 10000000000)
v4 = VentureCapitalist.new("Jeff Bezos", 25000000000)
v5 = VentureCapitalist.new("sheryl Sandberg", 990000000)
v6 = VentureCapitalist.new("Oprah Winfrey", 750000000)

fr1 = FundingRound.new(su1, v1, "Angel", 200000)
fr2 = FundingRound.new(su2, v2, "Pre-Seed", 300000)
fr3 = FundingRound.new(su3, v3, "Seed", 500000)
fr4 = FundingRound.new(su4, v4, "Series A", 1000000)
fr5 = FundingRound.new(su5, v5, "Series A", 2000000)
fr6 = FundingRound.new(su6, v2, "Series C", 1500000)
fr7 = FundingRound.new(su1, v1, "Angel", 2500000)
fr8 = FundingRound.new(su3, v4, "Angel", 1200000)
fr9 = FundingRound.new(su3, v6, "Series A", 1300000)
fr10 = FundingRound.new(su6, v2, "Series C", 3200000)
fr11 = FundingRound.new(su4, v1, "Series B", 500000)
fr12 = FundingRound.new(su2, v2, "Angel", 800000)
fr13 = FundingRound.new(su2, v4, "Series A", 100000)
fr14 = FundingRound.new(su6, v1, "Seed", 1000000)
fr15 = FundingRound.new(su5, v4, "Seed", 5000000)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
