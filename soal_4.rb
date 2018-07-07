print "Nilai-nilai yang ingin dihitung adalah? "
nilai = gets.chomp.split

if nilai.empty?
  puts "Anda belum mengetik angka"
else
  x = nilai.length
  rata = 0
  nilai.each do |n|
    rata = rata + n.to_f
  end
  hasil = rata/x
  puts"Nilai ratanya adalah: #{hasil}"
end

