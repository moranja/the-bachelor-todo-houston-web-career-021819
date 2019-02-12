require 'pry'

def get_first_name_of_season_winner(data, season)
  name_string = ""
  data.each do |bach_season, contestants|
    if bach_season == season
      contestants.each do |keys, values|
        binding.pry
        name_string = contestants["name"]
        if contestants[:"status"] == "Winner"
          return name_string
        end
      end
    end
  end
    
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
