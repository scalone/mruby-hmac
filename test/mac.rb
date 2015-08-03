assert('SHA1 MAC for "aaaaa" and key "123456"') do
  Digest::HMAC.digest("aaaaa", "123456", Digest::SHA1) == "\xA1$\xDAN\xBDQ\x03\x02Io\xB0P\xE6\x91c\xF2\xBD,\xDB6"
end

assert('Hex SHA1 MAC for "aaaaa" and key "123456"') do
  Digest::HMAC.hexdigest("aaaaa", "123456", Digest::SHA1) == "a124da4ebd510302496fb050e69163f2bd2cdb36"
end

