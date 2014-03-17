require "distant_points"
require "test/unit"
 
class TestDistantPoints < Test::Unit::TestCase
 
  def test0
      assert_equal [1,1], DistantPoints.getKth(4, 1)
    end
  
  def test1
    assert_equal [17,17], DistantPoints.getKth(4, 2)
  end
  
  def test2
    assert_equal [1, 17], DistantPoints.getKth(4, 3)
  end
  
  def test3
    assert_equal [9, 9], DistantPoints.getKth(4, 5)
  end
  
  def test4
    assert_equal [1, 3], DistantPoints.getKth(3, 14)
  end
  
  def test5
    assert_equal [33, 32], DistantPoints.getKth(5, 1089)
  end
   
end
