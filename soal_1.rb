print "First name: "
  fname = gets.chomp
  fname.capitalize!

print "Middle name: "
  mname = gets.chomp

  if mname.nil?
    mname = " "
  else
    mname.capitalize!
    mname.split(" ")
    mname = mname[0]
  end

print "Last name: "
  lname = gets.chomp
  lname.capitalize!

def gabung(fname,mname,lname)
  if mname.nil?
    puts fname + " " + lname
  else
    puts fname + " " + mname + ". " + lname
  end
end

puts "Nama kamu adalah: "
gabung(fname,mname,lname)
