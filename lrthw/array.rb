# Ruby knows what you mean,
# even if you want to do math
# on entire Array
cities = %w[ London
            Oslo
            Paris
            Amsterdam
            Berlin ]
visited = %w[Berlin Oslo]

puts "I still need " +
     "to visit the " +
     "following cities:",
     cities - visited
