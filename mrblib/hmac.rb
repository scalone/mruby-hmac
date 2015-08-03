module Digest
  class HMAC
    BLOCK_SIZE = 64
    OPAD       = "\x5c"
    IPAD       = "\x36"
    PADDING    = "\x00"

    def self.hexdigest(message, key, digester)
      self.digest(message, key, digester).unpack("H*").first
    end

    def self.digest(message, key, digester)
      if (key.length > BLOCK_SIZE)
        key = digester.digest(key)
      end
      if (key.length < BLOCK_SIZE)
        key = key + (PADDING * (BLOCK_SIZE - key.length))
      end
      o_key_pad = xor(OPAD * BLOCK_SIZE, key)
      i_key_pad = xor(IPAD * BLOCK_SIZE, key)

      digester.digest(o_key_pad + digester.digest(i_key_pad + message))
    end

    def self.xor(a, b)
      a.unpack('C*').zip(b.unpack('C*')).map{ |c,d| c ^ d }.pack('C*')
    end
  end
end

