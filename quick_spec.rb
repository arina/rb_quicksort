def quick(a)
  return a if a.min == a.max
  m = a[rand(a.size)]
  quick( a.select { |i| i <= m } ) + quick( a.select { |i| i > m } )
end
 
describe "Quicksort" do
  it "should sort an empty array" do
    quick([]).should == []
  end
 
  it "should sort an array with size 1" do
    quick([1]).should == [1]
  end
  
  it "should sort already sorted array" do
    quick([1, 2, 3]).should == [1, 2, 3]
  end
  
  it "should sort unsorted array" do
    quick([3, 2, 1]).should == [1, 2, 3]
  end
 
  it "should sort an array with same numbers" do
    quick([1, 3, 2, 1]).should == [1, 1, 2, 3]
  end
end
