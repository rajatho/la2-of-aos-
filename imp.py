import os
import hashlib

# Example malware signatures (hashes of known malicious files)
MALWARE_SIGNATURES = {
    "eicar_test_file": "44d88612fea8a8f36de82e1278abb02f",  # EICAR test file MD5
    # Add more hashes here!
}

def compute_md5(file_path):
    hash_md5 = hashlib.md5()
    try:
        with open(file_path, "rb") as f:
            for chunk in iter(lambda: f.read(4096), b""):
                hash_md5.update(chunk)
        return hash_md5.hexdigest()
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return None

def scan_file(file_path):
    file_hash = compute_md5(file_path)
    if file_hash and file_hash in MALWARE_SIGNATURES.values():
        print(f"[INFECTED] {file_path} matches known malware signature.")
        return True
    else:
        print(f"[CLEAN] {file_path}")
        return False

def scan_directory(directory):
    for root, _, files in os.walk(directory):
        for name in files:
            scan_file(os.path.join(root, name))

if __name__ == "__main__":
    target = input("Enter file or directory to scan: ")
    if os.path.isfile(target):
        scan_file(target)
    elif os.path.isdir(target):
        scan_directory(target)
    else:
        print("Invalid path!")