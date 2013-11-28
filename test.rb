require 'minitest/autorun'
require 'fileutils'
require 'pathname'

describe "deleting recursively" do
  it "deletes shizzle" do
    FileUtils.mkdir_p("a/b/c")
    Pathname.new('a/b/c').ascend do |dir|
      FileUtils.rmdir dir unless dir == '.'
    end
    puts "*** RESULTS OF FIND: ***"
    puts `find .`
    puts "************"
  end
end
