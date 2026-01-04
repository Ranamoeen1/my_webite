#!/bin/bash

# Install ffmpeg for video/audio merging
# This is required for downloading YouTube videos

echo "================================================"
echo "  Installing ffmpeg"
echo "================================================"
echo ""

# Check if ffmpeg is already installed
if command -v ffmpeg &> /dev/null; then
    echo "✅ ffmpeg is already installed"
    ffmpeg -version | head -n 1
    exit 0
fi

echo "📦 Installing ffmpeg..."
echo ""
echo "This requires sudo privileges."
echo "Please enter your password when prompted."
echo ""

sudo apt-get update
sudo apt-get install -y ffmpeg

if command -v ffmpeg &> /dev/null; then
    echo ""
    echo "✅ ffmpeg installed successfully!"
    ffmpeg -version | head -n 1
else
    echo ""
    echo "❌ Failed to install ffmpeg"
    echo ""
    echo "Please install manually:"
    echo "  sudo apt-get install ffmpeg"
    exit 1
fi
