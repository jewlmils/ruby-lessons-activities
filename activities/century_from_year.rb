#TODO : Given a year, return the century it is in.

def century_from_year(year)
    century = (year - 1) / 100 + 1
end

puts century_from_year(2024)