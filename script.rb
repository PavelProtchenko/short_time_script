require 'date'

file = './last_time.txt'

unless File.file?(file)
  system 'touch last_time.txt'
end

current_date = DateTime.now.strftime('%Y.%m.%d %H.%M.%S')
previous_date = IO.readlines("./last_time.txt").last

file = File.new("./last_time.txt", "w:UTF-8")
file.print("#{current_date}")
file.close

if previous_date.nil?
  puts "#{current_date}"
else
  puts "#{previous_date} - #{current_date}"
end

