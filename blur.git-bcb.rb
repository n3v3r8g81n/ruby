class Image

  def initialize(array)
    @array = array
  end 

  def output_image
    @array.each do |row|
      row.each do |pixel|
        print pixel
      end 
      puts    
    end 
  end 

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.output_image
