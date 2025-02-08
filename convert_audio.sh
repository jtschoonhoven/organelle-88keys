#!/bin/bash

# Exit on error, undefined variables, and pipe failures
set -euo pipefail

# Function to display error messages
error() {
    echo "ERROR: $1" >&2
    exit 1
}

# Create converted directory if it doesn't exist
mkdir -p converted || error "Failed to create 'converted' directory"

# Check if any wav files exist
if ! compgen -G "*.wav" > /dev/null; then
    error "No WAV files found in current directory"
fi

# Count total number of files for progress tracking
total_files=$(ls -1 *.wav 2>/dev/null | wc -l)
current_file=0

echo "Found $total_files WAV files to process"
echo "Converting to 44.1kHz, 16-bit..."
echo

# Process each WAV file
for input_file in *.wav; do
    ((current_file++))
    output_file="converted/${input_file%.*}_converted.wav"
    
    echo "[$current_file/$total_files] Converting: $input_file"
    
    if ffmpeg -i "$input_file" -acodec pcm_s16le -ar 44100 "$output_file" -y 2>/dev/null; then
        echo "✓ Converted: $output_file"
    else
        error "Failed to convert $input_file"
    fi
    echo
done

echo "All files processed successfully!"
echo "Converted files are in the 'converted' directory"

