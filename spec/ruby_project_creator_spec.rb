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
  it("creates lib folder within the root directory") do
    FileUtils.cd("../new_project/lib"){
      expect(FileUtils.pwd()).to(eq("/Users/Guest/Desktop/new_project/lib"))
    }
  end
  it("creates spec folder within the root directory") do
    FileUtils.cd("../new_project/spec"){
      expect(FileUtils.pwd()).to(eq("/Users/Guest/Desktop/new_project/spec"))
    }
  end
  it("creates spec and lib folders within the root directory") do
    FileUtils.cd("../new_project/"){
      expect(File.exists?("Gemfile")).to(eq(true))
      expect(File.exists?("README.md")).to(eq(true))
    }
  end
  it("creates rb file inside of lib folder") do
    FileUtils.cd("../new_project/lib"){
      expect(File.exists?("new_project.rb")).to(eq(true))
    }
  end
  it("creates rb file inside of spec folder") do
    FileUtils.cd("../new_project/spec"){
      expect(File.exists?("new_project_spec.rb")).to(eq(true))
    }
  end
  it("populates Gemfile") do
    FileUtils.cd("../new_project"){
      expect(File.zero?("../new-project/Gemfile")).to(eq(false))
    }
  end
end
