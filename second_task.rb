# frozen_string_literal: true

print 'Iveskite pirmosiso krastines ilgi : '
a = Integer(gets)
print 'Iveskite antrosios krastines ilgi : '
b = Integer(gets)
print 'Iveskite treciosios krasintes ilgi : '
# Prasoma ivesti trikampio krastines
c = Integer(gets)
# (1) Tikrinama ar galima sudaryti trikampi
if a < b + c && b < a + c && c < a + b
  # Gaunamas trikampio pusperimetris
  p = (a + b + c) / 2
  # Gavus trikampio pusperimetri, apskaiciuojamas trikampio plotas
  pl = Math.sqrt(p * (p - a) * (p - b) * (p - c))
  # Isvedamas gautas trikampio plotas
  puts "Trikampoio plotas yra : #{pl} "
  # Tikrinama ar trikampis yra lygiasonis
  if a == b && a != c || a == c && a != b || b == c && b != a
    # Jei viskas atitinka virsuje mineta salyga, isvedama tokia zinute
    puts 'Trikampis yra lygiasonis.'
  # Tikrinama ar trikmapis yra lygiakrastis
  elsif a == b && a == c && b == c
    # Jei viskas atitinka virsuje mineta salyga, isvedama tokia zinute
    puts 'Trikampis yra lygiakrastis.'
  # Tikrinama ar trikampis yra ivairiakrastis
  elsif a != b && a != c && b != c
    # Jei viskas atitinka virsuje mineta salyga, isvedama tokia zinute
    puts 'Trikampis yra ivairiakrastis.'
  end
else
  # Jei atitinka mineta salyga (1), isvedama tokia zinute
  puts 'Trikampio sudaryti negalima.'
end
