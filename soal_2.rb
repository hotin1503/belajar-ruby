print "Siapa nama kamu? "
nama = gets.chomp.split

nama[0].capitalize!
fname = nama[0]

if nama[1].nil?
  nama[1] = nama[1]
else
  if nama[2].nil?
    nama[1].capitalize!
  else
    nama[1].capitalize!.split(" ")
    nama[1] = nama[1][0]
  end
end
mname = nama[1]

if nama[2].nil?
  nama[2] = nama[2]
else
  nama[2].capitalize!
end
lname = nama[2]

def gabung(fname,mname,lname)
  if mname.nil? && lname.nil?
    puts fname
  elsif lname.nil?
    puts fname + " " + mname
  else
    puts fname + " " + mname + ". " + lname
  end
end

puts gabung(fname,mname,lname)
