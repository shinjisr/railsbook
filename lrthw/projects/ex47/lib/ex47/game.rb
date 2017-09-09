class Room

  def initialize(name, description)
    @name = name
    @description = description
    @paths = {}
  end

  # these make easy for you to access the variables
  attr_reader :name
  attr_reader :paths
  attr_reader :description

  def go(description)
    return @paths[description]
  end

  def add_paths(paths)
    @paths.update(paths)
  end

end