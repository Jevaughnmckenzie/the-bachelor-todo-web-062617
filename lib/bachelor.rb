require "pry"


def get_first_name_of_season_winner(data, season)
  # code here
  winner = nil

  contestants_array = data[season]

  contestants_array.each do |contestant|
  # binding.pry
    if contestant["status"].downcase == "winner"
      winner = contestant["name"].split(" ").first

    end

  end
  winner
end

def get_contestant_name(data, occupation)
  # code here

  data.each do |season, contestants_array|

    contestants_array.each do |contestant_info|

      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end

    end

  end

end

def count_contestants_by_hometown(data, hometown)
  # code here
  relevant_names = []

  data.each do |season, contestants_array|

    contestants_array.each do |contestant_info|

      if contestant_info["hometown"] == hometown
        relevant_names << contestant_info["name"]
      end

    end

  end
  relevant_names.count
end

def get_occupation(data, hometown)
  # code here

  data.each do |season, contestants_array|

    contestants_array.each do |contestant_info|

      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end

    end

  end

end

def get_average_age_for_season(data, season)
  # code here

  sum_of_ages = 0

  contestants_array = data[season]

  contestants_array.each do |contestant|
    sum_of_ages += contestant["age"].to_f
  end

  (sum_of_ages / contestants_array.count).round(0)

end

# get_first_name_of_season_winner(data, "season 12")
