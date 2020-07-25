require 'pry'
def nyc_pigeon_organizer(data)
final_results = data.each_with_object({}) do |(key, value) fa |
  binding.pry

  value.each do |inner_keys, names|
    names.each do |name|
      if !fa[name]
        fa[name] = {}
      end
      if !fa[name][key]
        !fa[name][key] = []
      end
      fa[name][key].push(inner_keys.to_s)
    end
  end
  end
end
