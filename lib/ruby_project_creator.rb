require 'fileutils'

class Create
  attr_accessor(:name)
  def initialize(name)
    @name = name
    FileUtils.mkdir("../" + @name)
  end

end
