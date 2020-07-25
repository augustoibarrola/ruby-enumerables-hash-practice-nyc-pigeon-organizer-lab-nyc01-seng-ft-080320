require 'pry'
def nyc_pigeon_organizer(data)
final_results = data.each_with_object({}) do | (k, v), final_array |
  v.each do |k2, names|
    names.each do |name|
      if !final_array[name]
        final_array[name] = {}
      end
      if !final_array[name][k]
        !final_array[name][k] = []
      end
      final_array[name][k].push(k2.to_s)
    end
  end
  end
end
