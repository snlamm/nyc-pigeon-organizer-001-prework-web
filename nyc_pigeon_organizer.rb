require 'pry'

def nyc_pigeon_organizer(data)
  all_names = []
  data.each do |attribute, info|
    info.each do |specific, names|
      names.each do |i|
        all_names << i
      end
    end
  end
  all_names.uniq!
  name_hash = {}
  all_names.each do |name|
    name_hash[name] = {}
  end
  all_attributes = data.keys
  name_hash.each do |name, description|
    all_attributes.each do |attribute|
      name_hash[name][attribute] = []
    end
  end
  name_hash.each do |name, description|
    description.each do |spec, detail|
      data.each do |attribute, info|
        if attribute == spec 
          info.each do |specific, names|
            names.each do |i|
              detail << specific.to_s if name == i
            end
          end
        end
      end
    end
  end
end