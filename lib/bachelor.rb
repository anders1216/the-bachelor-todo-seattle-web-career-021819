require 'pry'
def get_first_name_of_season_winner(data, season)
  first_name = ""
  data[season].each do |lady, nada|
    if lady["status"] == "Winner"
      first_name = lady["name"].split(" ")[0]
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, lady|
    lady.each do |info, nada|
      if info["occupation"] == occupation
      name = info["name"]
    end
  end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, lady|
    lady.each do |info, nada|
      if info["hometown"] == hometown
      counter += 1
    end
  end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, lady|
    lady.each do |info, nada|
      if info["hometown"] == hometown
      return info["occupation"]
    end
  end
  end
end

def get_average_age_for_season(data, season)
  age_arr = []
  data.each do |season_, lady|
    if season_ == season
    lady.each do |info|
      age_arr.push info["age"].to_i
    end
  end
  end
  (age_arr.inject{ |sum, x| sum + x}.to_f / age_arr.length).round
end
