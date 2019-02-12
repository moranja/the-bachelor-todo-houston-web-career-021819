require 'pry'

def get_first_name_of_season_winner(data, season)
  name_string = ""
  data.each do |bach_season, contestants|
    if bach_season == season
      contestants.each do |people|
        people.each do |key, value|
          if key == "name"
          name_string = value
          elsif key == "status"
            if value == "Winner"
              split_name = name_string.split
              first_name = "#{split_name[0]}"
              return first_name
              break
            end
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  name_string = ""
  data.each do |bach_season, contestants|
    contestants.each do |people|
      people.each do |key, value|
        if key == "name"
        name_string = value
        elsif key == "occupation"
          if value == occupation
            return name_string
            break
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |bach_season, contestants|
    contestants.each do |people|
      people.each do |key, value|
        if key == "hometown"
          if value == hometown
            counter += 1
          end
        end
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  occupation_string = ""
  check_val = 0
  data.each do |bach_season, contestants|
    contestants.each do |people|
      people.each do |key, value|
        if key == "hometown"
          if value == hometown
            check_val = 1
          end
        elsif key == "occupation"
          if check_val == 1
            return value
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data.each do |bach_season, contestants|
    if bach_season == season
      contestants.each do |people|
        people.each do |key, value|
          if key == "age"
          age_array << value
          end
        end
      end
    end
  end
  
  age_sum = 0
  age_array.each {|i| age_sum += i.to_i}
  average_age = age_sum.to_f / age_array.length.to_f
  return average_age.round
end
