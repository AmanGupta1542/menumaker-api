from cryptography.hazmat.primitives.ciphers import Cipher, algorithms, modes
from cryptography.hazmat.primitives import padding
from cryptography.hazmat.backends import default_backend
import base64

# Define a secret key (use a secure and long random key in production)
# AES key must be either 16, 24, or 32 bytes long
secret_key = b'securekey1234567'  # 16 bytes key for AES-128

def encrypt_id(id):
    # Convert ID to string and encode it to bytes
    id_str = str(id).encode()
    
    # Pad the data to be a multiple of the block size
    padder = padding.PKCS7(algorithms.AES.block_size).padder()
    padded_data = padder.update(id_str) + padder.finalize()
    
    # Create an AES cipher object with the key and ECB mode
    cipher = Cipher(algorithms.AES(secret_key), modes.ECB(), backend=default_backend())
    encryptor = cipher.encryptor()
    
    # Encrypt the padded data
    encrypted_data = encryptor.update(padded_data) + encryptor.finalize()
    
    # Encode the encrypted data using Base64 to get a URL-safe string
    encrypted_id = base64.urlsafe_b64encode(encrypted_data).decode()
    
    return encrypted_id

def decrypt_id(encrypted_id):
    # Decode the Base64 encoded encrypted ID
    encrypted_data = base64.urlsafe_b64decode(encrypted_id.encode())
    
    # Create an AES cipher object with the key and ECB mode
    cipher = Cipher(algorithms.AES(secret_key), modes.ECB(), backend=default_backend())
    decryptor = cipher.decryptor()
    
    # Decrypt the data
    padded_data = decryptor.update(encrypted_data) + decryptor.finalize()
    
    # Unpad the decrypted data
    unpadder = padding.PKCS7(algorithms.AES.block_size).unpadder()
    id_str = unpadder.update(padded_data) + unpadder.finalize()
    
    return int(id_str.decode())