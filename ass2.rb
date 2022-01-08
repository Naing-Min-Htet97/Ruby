require 'spreadsheet'

book = Spreadsheet::Workbook.new
sheet1 = book.create_worksheet
sheet1.row(0).concat %w{file_size,file_name,file_path}

path = Dir.pwd

file_arr = Dir.entries(".")
puts file_arr
file_array_size = file_arr.size
puts file_array_size

i=2
j=1
while i <= file_array_size do
    puts path
    name = File.basename(file_arr[i])
    puts name
    size = File.size(file_arr[i])
    puts size
        if j < file_array_size then
            sheet1.row(j).push size,name,path
            book.write 'file.xls'
            j += 1
        end
    i+=1
    break if i == file_array_size
end


