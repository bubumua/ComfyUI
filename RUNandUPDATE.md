<div align="center">
# ComfyUI

## Installation and Update Guide

### Prerequisites

- **conda**: Make sure you have conda installed. You can download it from the [official Anaconda website](https://www.anaconda.com/products/distribution) or use [Miniconda](https://docs.conda.io/en/latest/miniconda.html) for a lighter version.
- **Git**: Ensure Git is installed on your system. You can download it from the [official Git website](https://git-scm.com/downloads).

### Installation Steps
1. **Clone the Repository**:
   Open your terminal or command prompt and run the following command to clone the ComfyUI repository:
   ```bash
   git clone https://github.com/comfyanonymous/ComfyUI.git
   cd ComfyUI
   ```
2. **Create and Activate Conda Environment**:
   Create a new conda environment with Python 3.13 and activate it:
   ```bash
    conda create -n comfyui python=3.13 -y
    conda activate comfyui
   ```
   I recommend using Python 3.13 for the best compatibility with ComfyUI, according to the official documentation.
3. **Install Dependencies**:
   Install the required dependencies using pip:
   ```bash
    pip install -r requirements.txt
   ```
   note: youd better install torch and torchvision manually according to your system and cuda version from https://pytorch.org/get-started/locally/ before running the above command.
4. **Update ComfyUI**:
    To update ComfyUI to the latest version, run the following commands:
    ```bash
     git pull origin main
     git diff 'HEAD@{1}' HEAD -- requirements.txt
    ```
    If there are changes in `requirements.txt`, reinstall the dependencies:
   ```bash
   pip install -r requirements.txt
   ```
5. **Run ComfyUI**:
   Start ComfyUI by running:
   ```bash
   python main.py
   ```


