require 'rspec'
require 'ruby_project_creator'

describe("#ruby_project_creator") do
  it("creates root directory") do
    expect().to(eq("/Users/Guest/Desktop/root"))
  end
end
