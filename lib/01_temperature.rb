def ftoc(temperature_in_f)
  (temperature_in_f - 32) * (5.00 / 9.00)
end

def ctof(temperature_in_c)
  (temperature_in_c * (9.00 / 5.00)) + 32
end
