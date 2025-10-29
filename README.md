# 🛡️ Antivirus Scanner Application

A modern, web-based antivirus scanner with an interactive frontend interface. Upload files to scan for malware using hash-based signature detection.

## ✨ Features

- **Modern Web Interface**: Beautiful, responsive design with drag-and-drop file upload
- **Real-time Scanning**: Fast file scanning using MD5 hash matching
- **Multiple File Support**: Scan multiple files simultaneously
- **Detailed Results**: View scan results with statistics and status indicators
- **Secure Processing**: Files are processed in memory and not stored permanently
- **Interactive UI**: Animated interface with real-time feedback

## 📋 Requirements

- Python 3.7 or higher
- Flask 3.0.0
- Modern web browser (Chrome, Firefox, Edge, Safari)

## 🚀 Installation

1. **Clone or download this repository**

2. **Navigate to the project directory**
   ```bash
   cd antivirus-app
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

## 🎯 Usage

1. **Start the Flask server**
   ```bash
   python app.py
   ```

2. **Open your web browser** and navigate to:
   ```
   http://localhost:5000
   ```

3. **Upload files** using either:
   - Drag and drop files into the upload area
   - Click the upload area to browse for files

4. **Click "Scan Files"** to analyze uploaded files

5. **View results** showing:
   - Files scanned
   - Clean files count
   - Threats detected
   - Detailed scan output

## 📁 Project Structure

```
antivirus-app/
├── app.py                      # Flask backend server
├── imp.py                      # Core scanning engine (original)
├── requirements.txt            # Python dependencies
├── templates/
│   └── scanner_frontend.html   # Frontend HTML with embedded CSS/JS
├── .gitignore                  # Git ignore rules
└── README.md                   # This file
```

## 🔧 How It Works

1. **File Upload**: Files are uploaded via the web interface to the Flask backend
2. **Hash Computation**: MD5 hash is computed for each uploaded file
3. **Signature Matching**: Hashes are compared against a database of known malware signatures
4. **Results Display**: Results are returned to the frontend and displayed with visual feedback

## 🔒 Security Features

- Files are processed in temporary directories
- Automatic cleanup after scanning
- Secure filename handling
- File size limits (100MB max per file)
- Allowed file type validation

## 🎨 Frontend Features

- Responsive design that works on desktop and mobile
- Animated drag-and-drop interface
- Real-time loading indicators
- Color-coded scan results (green = clean, red = threat)
- Statistics dashboard
- Modern gradient design

## 📝 Adding Malware Signatures

To add more malware signatures, edit the `MALWARE_SIGNATURES` dictionary in `app.py`:

```python
MALWARE_SIGNATURES = {
    "sample1": "hash_value_here",
    "sample2": "another_hash_here",
}
```

## 🐛 Troubleshooting

**Issue**: Port 5000 is already in use
- **Solution**: Change the port in `app.py` at the bottom: `app.run(debug=True, host='0.0.0.0', port=5001)`

**Issue**: Files not uploading
- **Solution**: Check file size limits and allowed file types

**Issue**: Import errors
- **Solution**: Run `pip install -r requirements.txt` to ensure all dependencies are installed

## 📊 Testing

To test the scanner, you can use the EICAR test file (a harmless test file used by antivirus software):
- The scanner includes the EICAR test file hash in its database
- Create a file with the EICAR string to test detection

## 🤝 Contributing

Feel free to fork this project and submit pull requests for improvements!

## 📄 License

This project is open source and available for educational purposes.

## 🎓 Credits

- Flask web framework
- Modern CSS animations
- MD5 hash computation for file analysis

---

**Made with ❤️ for cybersecurity education**

