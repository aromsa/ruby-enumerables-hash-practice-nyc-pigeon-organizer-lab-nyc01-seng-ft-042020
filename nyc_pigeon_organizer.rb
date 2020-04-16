def nyc_pigeon_organizer(data)
  names_hash = {}
  data.each do |key, value|
    value.each do |k, v|
      v.each do |name|
        if !names_hash[name]
          names_hash[name] = {}
        end
        if !names_hash[name][key]
          names_hash[name][key] = []
        end
        names_hash[name][key] << "#{k}"
      end
    end
  end
  names_hash
end
