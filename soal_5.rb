puts "Kalimat yang mau dihitung hurufnya:"
huruf = gets.chomp

if huruf.empty?
  puts "Anda belum menulis kalimatnya"
else
  huruf = huruf.delete "\s\n"
  
  hitung = huruf.split('')

  freq = Hash.new(0)

  hitung.each{|x| freq[x] += 1}

  freq = freq.sort_by{|a,b| b}

  freq.reverse!

  freq.each{|a,b| puts a +" muncul "+ b.to_s + " kali"}
end
