import secrets
import hashlib
import base64
import json
import time

def generate_reset_token(user_id):
    # Generate a random token
    random_bytes = secrets.token_bytes(32)
    token = base64.urlsafe_b64encode(random_bytes).rstrip(b'=')

    # Create a JSON object with user_id, timestamp, and token
    payload = {
        'user_id': user_id,
        'timestamp': time.time(),
        'token': token.decode('utf-8')
    }

    # Encode the JSON object as a JSON Web Token (JWT)
    encoded_payload = json.dumps(payload).encode('utf-8')
    signature = hashlib.sha256(encoded_payload).hexdigest()

    # Final token consists of base64-encoded payload and the signature
    reset_token = base64.urlsafe_b64encode(encoded_payload).decode('utf-8') + '.' + signature

    return reset_token

