require 'spec_helper'

describe Movie do
  let(:movie) { Movie.new }

  it 'has a title' do
    expect(movie).to respond_to(:title)
  end
  it 'has a description' do
    expect(movie).to respond_to(:description)
  end
  it 'has a url' do
    expect(movie).to respond_to(:url)
  end
end
