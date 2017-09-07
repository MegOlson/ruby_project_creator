require 'rspec'
require 'ruby_project_creator'
require 'fileutils'

describe("Create#root_directory") do
  it("creates root directory with name input") do
    test = Create.new("new_project")
    FileUtils.cd("../new_project"){
      expect(FileUtils.pwd()).to(eq("/Users/Guest/Desktop/new_project"))
    }
  end
end
