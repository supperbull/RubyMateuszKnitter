require 'simplecov'
SimpleCov.start

require "binarysearch"
RSpec.describe 'binarysearch.rb' do
it 'szukanie w pustej tablicy' do
    arr = []
    expect(p bsearch(arr,0)).to eq(-1)
 end
it 'szukanie ostatniego elementu' do
    arr = [10,20,30,40,50]
    expect(p bsearch(arr, 50)).to eq(4)
  end
it 'szukanie pierwszego elementu' do
    arr = [10,20,30,40,50]
    expect(p bsearch(arr, 10)).to eq(0)
  end
it 'szukanie srodkowego elementu w liczbach ujemnych' do
    arr = [-15,-14,-13,-12,-11,-10]
    expect(p bsearch(arr, -12)).to eq(3)
  end
it 'szukanie ostatniego elementu w liczbach ujemnych i dodatnich' do
    arr = [-15,14,-13,12,-11,10]
    expect(p bsearch(arr, 10)).to eq(5)
  end
end