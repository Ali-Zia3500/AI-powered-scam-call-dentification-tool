# CallGuard Sentinel - AI-Powered Scam Call Identification Tool

[![Python](https://img.shields.io/badge/Python-3.9+-blue.svg)](https://www.python.org/)
[![Flask](https://img.shields.io/badge/Flask-2.0+-green.svg)](https://flask.palletsprojects.com/)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

An intelligent Flask-based web application that uses AI and machine learning to detect and identify scam calls in real-time. The system analyzes audio recordings using Whisper speech-to-text transcription and advanced keyword-based fraud detection algorithms.

## 🔥 Features

- **🎤 Real-time Audio Analysis** - Upload audio/video files for instant scam detection
- **🗣️ Speech-to-Text Transcription** - Powered by OpenAI's Whisper model (supports 97+ languages)
- **🤖 AI-Powered Fraud Detection** - Advanced keyword analysis and pattern recognition
- **📊 Dashboard & Statistics** - Visual analytics of call patterns and scam trends
- **📞 Call Management** - Track call history with risk assessments
- **👥 Contact Management** - Manage contacts with risk level indicators
- **🔒 User Authentication** - Secure user accounts and session management
- **📱 Responsive UI** - Modern, dark-themed interface built with Tailwind CSS

## 🛠️ Technology Stack

### Backend
- **Flask** - Python web framework
- **SQLite** - Database for storing users, contacts, and call history
- **PyTorch** - Deep learning framework
- **Transformers** - Hugging Face transformers library
- **Whisper** - OpenAI's speech-to-text model
- **NLTK** - Natural Language Toolkit for text processing
- **Librosa** - Audio processing library

### Frontend
- **HTML/CSS/JavaScript** - Frontend technologies
- **Tailwind CSS** - Utility-first CSS framework
- **Chart.js** - Data visualization
- **Jinja2** - Template engine

### Machine Learning Models
- **Whisper Model** - Speech-to-text transcription (multilingual)
- **DistilBERT-based Fraud Model** - Fraud detection (optional)
- **NLTK Sentiment Analysis** - Text sentiment analysis

## 📁 Project Structure

```
AI-powered-scam-call-dentification-tool/
├── flask_sentinel/              # Main Flask application
│   ├── app.py                   # Flask backend and routes
│   ├── services.py              # ML model integration and analysis
│   ├── init_db.py               # Database initialization
│   ├── templates/               # HTML templates
│   │   ├── auth.html            # Login/Register page
│   │   ├── dashboard.html       # Main dashboard
│   │   ├── dialer.html          # Phone dialer interface
│   │   ├── call.html            # Call screen
│   │   ├── contacts.html        # Contact management
│   │   ├── history.html         # Call history
│   │   ├── recorder.html        # Audio analyzer
│   │   ├── base.html            # Base template
│   │   └── includes/
│   │       └── nav.html         # Navigation component
│   ├── static/                  # Static files
│   │   ├── css/
│   │   │   └── main.css         # Custom styles
│   │   └── js/
│   │       └── utils.js         # JavaScript utilities
│   ├── uploads/                 # Audio file uploads directory
│   ├── nltk_data/               # NLTK data files
│   └── sentinel.db              # SQLite database (created on first run)
├── Models/                      # Machine Learning Models
│   ├── Whisper_model/           # Whisper speech-to-text model
│   ├── Fraud_model/             # Fraud detection model
│   └── Emotion_model/           # Emotion detection model
├── requirements.txt             # Python dependencies
├── .gitignore                   # Git ignore file
└── README.md                    # This file
```

## 🚀 Installation

### Prerequisites

- Python 3.9 or higher
- pip (Python package manager)
- Git (for cloning the repository)
- FFmpeg (optional, for audio format conversion)

### Step 1: Clone the Repository

```bash
git clone https://github.com/Ali-Zia3500/AI-powered-scam-call-dentification-tool.git
cd AI-powered-scam-call-dentification-tool
```

### Step 2: Create Virtual Environment

```bash
# Windows
python -m venv venv
venv\Scripts\activate

# Linux/Mac
python3 -m venv venv
source venv/bin/activate
```

### Step 3: Install Dependencies

```bash
pip install -r requirements.txt
```

### Step 4: Download NLTK Data

The application will automatically download NLTK data on first run, but you can also download it manually:

```python
import nltk
nltk.download('vader_lexicon')
nltk.download('punkt')
nltk.download('punkt_tab')
nltk.download('stopwords')
```

### Step 5: Set Up Models

Ensure that the `Models/` directory contains the required ML models:
- `Models/Whisper_model/` - Whisper speech-to-text model
- `Models/Fraud_model/` - Fraud detection model (optional)
- `Models/Emotion_model/` - Emotion detection model (optional)

**Note:** Model files are large and may need to be downloaded separately. The application uses local models for offline processing.

### Step 6: Initialize Database

```bash
cd flask_sentinel
python init_db.py
```

### Step 7: Run the Application

```bash
python app.py
```

The application will be available at `http://localhost:5000`

## 📖 Usage

### Default Login Credentials

- **Email:** `user@gmail.com`
- **Password:** `123456`

### Features Overview

1. **Dashboard** - View statistics, recent calls, and analytics
2. **Dialer** - Make calls with real-time scam detection
3. **Call Screen** - Live audio analysis during calls
4. **Audio Analyzer** - Upload audio/video files for analysis
5. **Contacts** - Manage contacts with risk level indicators
6. **Call History** - View past calls with detailed analysis

### Analyzing Audio Files

1. Navigate to the **Audio Analyzer** page
2. Upload an audio or video file (MP3, WAV, OGG, MP4, AVI, WebM)
3. Wait for transcription and analysis
4. View the scam detection results with risk level and reasons

### Supported Audio Formats

- Audio: MP3, WAV, OGG
- Video: MP4, AVI, WebM (audio will be extracted)

### Supported Languages

The Whisper model supports 97+ languages including:
- English
- Hindi
- Spanish
- French
- German
- And many more...

## 🔍 How It Works

### Scam Detection Algorithm

The system uses a multi-layered approach to detect scams:

1. **Audio Transcription** - Converts audio to text using Whisper model
2. **Keyword Analysis** - Scans for suspicious keywords in categories:
   - Authority claims (bank, government, police, etc.)
   - Urgency/pressure language (urgent, immediately, etc.)
   - Threats (arrest, warrant, jail, etc.)
   - Bait offers (prize, winner, free, etc.)
   - Sensitive information requests (SSN, credit card, password, etc.)
   - Suspicious patterns (verify account, unusual activity, etc.)
3. **Sentiment Analysis** - Analyzes text sentiment using NLTK
4. **Risk Scoring** - Calculates scam probability score
5. **Risk Level Classification** - Classifies as Safe, Warning, or Critical

### Risk Levels

- **Safe** - No suspicious indicators detected
- **Warning** - Some suspicious patterns detected
- **Critical** - High probability of scam with multiple indicators

## 🗄️ Database Schema

### Tables

- **users** - User accounts and authentication
- **contacts** - User contacts with risk levels
- **calls** - Call history with analysis results
- **scam_statistics** - User statistics and analytics
- **scam_reports** - Detailed scam reports

## 🔧 Configuration

### Environment Variables

Create a `.env` file (optional) for configuration:

```env
SECRET_KEY=your-secret-key-here
FLASK_ENV=development
DATABASE_URL=sqlite:///sentinel.db
```

### Model Paths

The application automatically detects the `Models/` directory relative to the project root. Ensure the models are placed in the correct directory structure.

## 🐛 Troubleshooting

### Common Issues

1. **Models not found**
   - Ensure `Models/` directory exists in the project root
   - Check that model files are present in the respective directories

2. **NLTK data missing**
   - Run the NLTK download commands manually
   - Check that `nltk_data/` directory exists in `flask_sentinel/`

3. **Audio transcription fails**
   - Ensure audio file is in a supported format
   - Check that FFmpeg is installed (for format conversion)
   - Verify audio file is not corrupted

4. **Port 5000 already in use**
   - Change the port in `app.py`: `app.run(host='0.0.0.0', port=5001)`

5. **Database errors**
   - Delete `sentinel.db` and run `init_db.py` again
   - Check file permissions

## 📝 API Endpoints

### Authentication
- `POST /api/auth/register` - Register new user
- `POST /api/auth/login` - Login user
- `POST /api/auth/logout` - Logout user

### Calls
- `GET /api/calls` - Get user calls
- `POST /api/calls` - Create new call record

### Contacts
- `GET /api/contacts` - Get user contacts

### Statistics
- `GET /api/statistics` - Get user statistics

### Analysis
- `POST /api/analyze-audio` - Analyze audio file
- `POST /api/analyze-text` - Analyze text for scams

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👤 Author

**Ali Zia**

- GitHub: [@Ali-Zia3500](https://github.com/Ali-Zia3500)
- Repository: [AI-powered-scam-call-dentification-tool](https://github.com/Ali-Zia3500/AI-powered-scam-call-dentification-tool)

## 🙏 Acknowledgments

- OpenAI for the Whisper model
- Hugging Face for the transformers library
- Flask community for the excellent framework
- NLTK for natural language processing tools

## ⚠️ Disclaimer

This tool is for educational and research purposes. While it can help identify potential scams, it should not be the sole method of verification. Always exercise caution when dealing with suspicious calls and verify information through official channels.

## 📞 Support

For issues, questions, or contributions, please open an issue on the GitHub repository.

---

**⭐ If you find this project useful, please consider giving it a star on GitHub!**

