def caesar_cipher (string, desplazamiento)
  if string.nil? || string.empty?
      return ""
  end
  for i in 0...string.length do
      p ("a".."z")===string[i]
      if ("a".."z")===string[i] || ("A".."Z")===string[i]

          string_code=string[i].ord
          string_code+=desplazamiento

          if string_code>122 && ("a".."z")===string[i]
              aux = string_code-122
              string_code = 96+aux
          end

          if string_code>90 && ("A".."Z")===string[i]
              aux = string_code-90
              string_code = 64+aux
          end
          string[i]=string_code.chr

      end
  end
return string
end

def caesar_cipher_decrypt (string, desplazamiento)
  if string.nil? || string.empty?
      return ""
  end
  for i in 0...string.length do
      if ("a".."z")===string[i] || ("A".."Z")===string[i]

          string_code=string[i].ord
          string_code-=desplazamiento

          if string_code<97 && ("a".."z")===string[i]
              aux = 122-string_code
              string_code = 90-aux
          end

          if string_code<65 && ("A".."Z")===string[i]
              aux = 90-string_code
              string_code = 26-aux
          end
          string[i]=string_code.chr

      end
  end
return string
end

p caesar_cipher("a", 1)
p caesar_cipher_decrypt("b", 1)
