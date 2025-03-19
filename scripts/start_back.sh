#!/bin/bash

#ensure that we are in src/backend
LOCAL_DIR="src"  # Change this to your desired local directory name

cd "$LOCAL_DIR" 
cd ./backend      # Go back to the parent directory to access the backend
bash dev.sh   # Start the back-end
