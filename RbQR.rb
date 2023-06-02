require 'rqrcode'

puts 'Enter the desired link for the QR Code:'
puts 'Example: https://www.example.com'
link = gets.chomp
puts 'Enter the name of the file:'
name = gets.chomp
name = name + '.png'

qrcode = RQRCode::QRCode.new(link)

png = qrcode.as_png(size: 300)

File.open(name, 'w') do |file|
  file.write(png.to_s)
end