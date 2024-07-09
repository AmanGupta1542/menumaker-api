import base64
import hashlib

# Define a secret key for XOR encryption
secret_key = 'securekey1234567'  # Use a secure and long random key in production

# Base62 characters
BASE62 = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz"

def base62_encode(num):
    if num == 0:
        return BASE62[0]
    encoded = []
    while num > 0:
        num, rem = divmod(num, 62)
        encoded.append(BASE62[rem])
    return ''.join(reversed(encoded))

def base62_decode(encoded):
    num = 0
    for char in encoded:
        num = num * 62 + BASE62.index(char)
    return num

def xor_encrypt_decrypt(data, key):
    key_hash = hashlib.sha256(key.encode()).digest()
    encrypted = bytes([b ^ key_hash[i % len(key_hash)] for i, b in enumerate(data)])
    return encrypted

def encrypt_id(id):
    # Convert ID to bytes
    id_bytes = str(id).encode()
    
    # Encrypt using XOR
    encrypted_bytes = xor_encrypt_decrypt(id_bytes, secret_key)
    
    # Convert encrypted bytes to integer
    encrypted_num = int.from_bytes(encrypted_bytes, 'big')
    
    # Encode the integer using Base62
    encrypted_id = base62_encode(encrypted_num)
    
    return encrypted_id

def decrypt_id(encrypted_id):
    # Decode the Base62 encoded ID to an integer
    encrypted_num = base62_decode(encrypted_id)
    
    # Convert the integer to bytes
    encrypted_bytes = encrypted_num.to_bytes((encrypted_num.bit_length() + 7) // 8, 'big')
    
    # Decrypt using XOR
    decrypted_bytes = xor_encrypt_decrypt(encrypted_bytes, secret_key)
    
    # Convert decrypted bytes to integer
    decrypted_id = int(decrypted_bytes.decode())
    
    return decrypted_id

