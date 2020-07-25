require 'pry'
def nyc_pigeon_organizer(data)
final_results = data.each_with_object({}) do | (k, v), fa |
  v.each do |k2, names|
    names.each do |name|
      if !fa[name]
        fa[name] = {}
      end
      if !fa[name][k]
        !fa[name][k] = []
      end
      fa[name][k].push(k2.to_s)
    end
  end
  end
end
