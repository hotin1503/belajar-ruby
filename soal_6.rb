class Interface
  OPERATORS = {
    '+' => :tambah,
    '-' => :kurang,
    '*' => :kali,
    '/' => :bagi
  }

  PILIH_OPS = OPERATORS.keys

  def pilih_operator
    OPERATORS[ambil_operator]
  end

  private

  def ambil_operator
    puts "Pilih operasi:(#{OPERATORS.map { |pair| pair.join(': ') }.join(', ')})"
    validasi( gets.chomp ) || coba_lagi
  end

  def validasi( opr )
    PILIH_OPS.detect { |pilih_op| pilih_op == opr }
  end

  def coba_lagi
    puts "Maaf, saya tidak mengerti apa yang anda maksud."
    ambil_operator
  end
end

class InputAngka
  def a
    gets.chomp
  end

  def b
    gets.chomp
  end
end

class Hitung
  def initialize
    @angka = InputAngka.new
    @a = ''
    @b = ''
  end
  
  def a
    @a = @angka.a
  end

  def b
    @b = @angka.b
  end

  def tambah
    @a.to_i + @b.to_i
  end

  def kurang
    @a.to_i - @b.to_i
  end

  def kali
    @a.to_i * @b.to_i
  end

  def bagi
    if @b == "0"
      "tak terhingga"
    else
      @a.to_i / @b.to_f
    end
  end
end

class Controller
  def initialize( hitung )
    @hitung = hitung
  end

  def tambah
    @hitung.tambah
  end

  def kurang
    @hitung.kurang
  end

  def kali
    @hitung.kali
  end

  def bagi
    @hitung.bagi
  end
end

class Kalkulator
  def initialize
    @interface = Interface.new
    @hitung = Hitung.new
    @controller = Controller.new(@hitung)
    @operator = nil
  end

  def play
    pilih_operator
    pilih_angka
    hitung
  end

  private

  def pilih_operator
    @operator = @interface.pilih_operator
  end

  def pilih_angka
    puts "Angka yang mau dihitung:"
    @hitung.a && @hitung.b
  end

  def hitung
    puts "Hasilnya: #{@controller.send @operator}"
  end
end

Kalkulator.new.play
