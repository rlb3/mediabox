require 'spec_helper'

describe Movie do
  let(:movie) { Movie.new url: 'http://asdf.com/asdf.mov' }

  it 'has a title' do
    expect(movie).to respond_to(:title)
  end
  it 'has a description' do
    expect(movie).to respond_to(:description)
  end
  it 'has a url' do
    expect(movie).to respond_to(:url)
  end

  it 'can get the url from movie' do
    expect(movie.url).to eq('http://asdf.com/asdf.mov')
  end

  context 'with uploaded file' do
    let(:file_upload) { double  }
    let(:movie) { Movie.new url: 'http://asdf.com/asdf.mov' }

    it 'has a uploaded_file' do
      expect(movie).to respond_to(:uploaded_file)
    end

    it 'should use uploaded_file.url when accessing #url' do
      file_upload.stub(url: 'https://huge_server.com/movie.mp4')
      movie.uploaded_file = file_upload
      expect(movie.url).to eq('https://huge_server.com/movie.mp4')
    end
  end
end
