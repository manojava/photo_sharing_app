require 'test_helper'

class PictureTest < ActiveSupport::TestCase

   test "the truth" do
     assert true
   end

   test "should not save picture without name" do 
     picture= Picture.new 
     assert_not picture.save 
   end  

   test "should not save picture without description" do
     picture= Picture.new
     assert_not picture.save
   end

   test "should not save picture without place" do
     picture= Picture.new
     assert_not picture.save
   end

end
