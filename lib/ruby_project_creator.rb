require 'fileutils'

class Create
  def initialize(name)
    @name = name
    FileUtils.mkdir("../" + name)
    FileUtils.mkdir("../" + @name + "/lib")
    FileUtils.mkdir("../" + @name + "/spec")
    FileUtils.touch("../" + @name + "/README.md")
    FileUtils.touch("../" + @name + "/Gemfile")
    FileUtils.touch("../" + @name + "/lib/" + @name + ".rb")
    FileUtils.touch("../" + @name + "/spec/" + @name + "_spec.rb")
  end
end
