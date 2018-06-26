require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
    holiday_supplies[:summer][:fourth_of_july][1]
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, items|
     items << supply
     puts items
   end
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, items|
      items << supply
      puts items
    end
end
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
 holiday_hash
end
  # code here
  # remember to return the updated hash



def all_winter_holiday_supplies(holiday_hash)
  array = holiday_hash[:winter].collect do |holiday, items|
    items
  end
  array.flatten
end
  # return an array of all of the supplies that are used in the winter season



def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
   puts season.to_s.capitalize! << ":"
   holiday.each do |holiday, supplies|
     supplies = supplies.join(", ")
     holiday = holiday.to_s.split("_").map {|w| w.capitalize}.join(" ")<< ":"
     puts "  " + holiday + " " + supplies
   end
 end
end
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.



def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holidays|
  holidays.map do |holiday, items|
    if items.include?("BBQ")
      holiday
     end
   end
 end.flatten.compact
end
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
