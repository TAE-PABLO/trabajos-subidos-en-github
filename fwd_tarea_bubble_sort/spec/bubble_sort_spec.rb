require 'rspec'

# Assumes the bubble_sort method is in a file called bubble_sort.rb
require_relative './../bubble_sort.rb'

RSpec.describe '#bubble_sort' do
  # Sorting an empty array
  it 'sorts an empty array' do
    expect(bubble_sort([])).to eq([])
  end

  # Sorting an array with one element
  # remove the 'x' from the line below to unskip the test
  it 'sorts an array with one element' do
    expect(bubble_sort([42])).to eq([42])
  end

  # Sorting an array with sorted elements
  it 'sorts an array with sorted elements' do
    expect(bubble_sort([1, 2, 3, 4, 5])).to eq([1, 2, 3, 4, 5])
  end

  # Sorting an array with unsorted elements
  it 'sorts an array with unsorted elements' do
    expect(bubble_sort([3, 5, 2, 1, 4])).to eq([1, 2, 3, 4, 5])
  end

  # Sorting an array with unsorted elements (including negative values)
  it 'sorts an array with unsorted elements' do
    expect(bubble_sort([3, 5, -2, 1, -4])).to eq([-4, -2, 1, 3, 5])
  end
end
