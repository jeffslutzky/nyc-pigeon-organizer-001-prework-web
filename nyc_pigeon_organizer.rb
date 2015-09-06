require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |attribute, values|
    values.each do |actual_value, birds|
      birds.each do |name|
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end
        if !pigeon_list[name][attribute]
          pigeon_list[name][attribute] = []
        end
          pigeon_list[name][attribute] << actual_value.to_s
      end
    end
  end
  pigeon_list
end