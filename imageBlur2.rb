class Image

  def initialize(image_matrix)
    @image_matrix = image_matrix
  end 

  def output_image
    @image_matrix.each do |row|
      puts row.join
      # row.each do |pixel|
      #   print pixel
      # end 
      # puts    
    end 
  end 

  def width
    @image_matrix[0].length
  end

  def height
    @image_matrix.length
  end

  def find_ones
    ones = []

    @image_matrix.each_with_index do |row, row_index|
      row.each_with_index do |pixel, col_index|
        if pixel == 1
          puts "found #{row_index}, #{col_index}"
          ones.push [row_index, col_index]
        end
      end
    end
    puts "Return the array of locations of ones: #{ones}"
    return ones

  end


  def change_zeros
    ones = find_ones
    ones.each do |coord|
      row_index = coord[0]
      col_index = coord[1]
      # above
      @image_matrix[row_index -1][col_index] = 1 if row_index > 0
      # below
      @image_matrix[row_index +1][col_index] = 1 unless (row_index +1) >= height
      # left
      @image_matrix[row_index][col_index -1] = 1 if col_index > 0
      # right
      # change the right pixel unless it is at the edge
      # At the edge = col_index > image_width
      # puts col_index
      # puts width
      @image_matrix[row_index][col_index +1] = 1 unless (col_index + 1) >= width
    end
  end

end # Image

puts "Image to blur:"
image = Image.new([
  [1, 0, 0, 0,1],
  [0, 1, 0, 0,0],
  [0, 0, 0, 0,1],
  [0, 0, 0, 0,0],
  [1, 0, 1, 0, 1]
])

image.output_image

image.change_zeros

puts "New image:"

image.output_image

# 1. find lighted pixels, 1s. (loop through image_matrix/collection)
# 2. store locations of each one in a new collection.
# 3. change lighted pixel surrounding pixels to lighted ones




