# # Simon Says
#
# ## Topics
#
# * functions
# * strings
# * default parameter values
#
# ## Hints
#
# When you make the second `repeat` test pass, you might break the **first**
#

require "simon_says"

describe "Simon says" do
  describe "echo" do
    it "should echo hello" do
      echo("hello").should == "hello"
    end

    it "should echo bye" do
      echo("bye").should == "bye"
    end
  end

  describe "shout" do
    it "should shout hello" do
      shout("hello").should == "HELLO"
    end

    it "should shout multiple words" do
      shout("hello world").should == "HELLO WORLD"
    end
  end

  describe "repeat" do
    

    # Wait a second! How can you make the "repeat" method
    # take one *or* two   arguments?
    #
    # Hint: *default values*
    it "should repeat a number of times" do
      repeat("hello", 3).should == "hello hello hello"
    end
  end

  describe "start_of_word" do
    it "returns the first letter" do
      start_of_word("hello", 1).should == "h"
    end

    it "returns the first two letters" do
      start_of_word("Bob", 2).should == "Bo"
    end

    
  end

  describe "first_word" do
    it "tells us the first word of 'Hello World' is 'Hello'" do
      first_word("Hello World").should == "Hello"
    end

    it "tells us the first word of 'oh dear' is 'oh'" do
      first_word("oh dear").should == "oh"
    end
  end

  describe "titleize" do
    

    it "capitalizes every word (aka title case)" do
      titleize("david copperfield").should == "David Copperfield"
    end

    it "doesn't capitalize 'little words' in a title" do
      titleize("war and peace").should == "War and Peace"
    end

    it "does capitalize 'little words' at the start of a title" do
      titleize("the bridge over the river kwai").should == "The Bridge over the River Kwai"
    end
  end

end
