class Movie
  attr_accessor :title
  attr_accessor :description
  attr_accessor :url
  attr_accessor :uploaded_file

  def initialize(attributes = {})
    Hash(attributes).each do |name, value|
      send("#{name}=", value)
    end
  end

  def url
    if uploaded_file?
      uploaded_file.url
    else
      @url
    end
  end

  def uploaded_file?
    uploaded_file && uploaded_file.url
  end
end
