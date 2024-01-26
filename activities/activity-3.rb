require 'rspec'

def find_smallest_int(arr)
  smallest = arr[0]
  arr.each do |num|
    smallest = num if num < smallest
  end
  smallest
end

describe 'find_smallest_int' do
  it 'returns the smallest integer given an array' do
    arr = [34, 15, 88, 2]
    expect(find_smallest_int(arr)).to eq(2)

    arr = [25, 8, -8, 1]
    expect(find_smallest_int(arr)).to eq(-8)
  end
end
