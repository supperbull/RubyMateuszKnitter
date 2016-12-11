require 'simplecov'
SimpleCov.start

require "quicksort"
RSpec.describe 'quicksort.rb' do
  it 'sortowanie pustej tablicy' do
    arr = []
    expect(quicksort(arr)).to eq([])
  end
  
  it 'sortowanie losowo dobranych cyfr' do
    arr = [2, 8, 2, 7, 1]
    expect(quicksort(arr)).to eq([1, 2, 2, 7, 8])
  end
  
  it 'sortowanie pozytywnych liczb w najgorszym ukladzie' do
    arr = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
    expect(quicksort(arr)).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
  end
  
  it 'sortowanie liczb juz posortowanych' do
    arr = [0,1,2,3,4,5,6,7,8,9]
    expect(quicksort(arr)).to eq([0,1,2,3,4,5,6,7,8,9])
  end
  
  it 'sortowanie liczb ujemnych' do
    arr = [-9,-10,-11,-12,-13,-14,-15,-16]
    expect(quicksort(arr)).to eq([-16,-15,-14,-13,-12,-11,-10,-9])
  end
  
  it 'sortowanie liczb ujemnych i dodatnich' do
    arr = [-1,1,-2,2,-3,3,-4,4]
    expect(quicksort(arr)).to eq([-4,-3,-2,-1,1,2,3,4])
  end
  
  it 'sortowanie liczb po przecinku' do
    arr = [9.76,8.23,7.65,6.45]
    expect(quicksort(arr)).to eq([6.45,7.65,8.23,9.76])
  end

it 'sortowanie liczb po przecinku UJEMNYCH' do
    arr = [-6.45,-7.65,-8.23,-9.76]
    expect(quicksort(arr)).to eq([-9.76,-8.23,-7.65,-6.45])
  end
it 'sortowanie liczb po przecinku UJEMNYCH i DODATNICH' do
    arr = [9.76,-8.23,7.65,-6.45]
    expect(quicksort(arr)).to eq([-8.23,-6.45,7.65,9.76])
  end
end