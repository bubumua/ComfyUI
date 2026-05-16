<div align="center">

# ComfyUI
**The most powerful and modular visual AI engine and application.**


[![Website][website-shield]][website-url]
[![Dynamic JSON Badge][discord-shield]][discord-url]
[![Twitter][twitter-shield]][twitter-url]
[![Matrix][matrix-shield]][matrix-url]
<br>
[![][github-release-shield]][github-release-link]
[![][github-release-date-shield]][github-release-link]
[![][github-downloads-shield]][github-downloads-link]
[![][github-downloads-latest-shield]][github-downloads-link]

[matrix-shield]: https://img.shields.io/badge/Matrix-000000?style=flat&logo=matrix&logoColor=white
[matrix-url]: https://app.element.io/#/room/%23comfyui_space%3Amatrix.org
[website-shield]: https://img.shields.io/badge/ComfyOrg-4285F4?style=flat
[website-url]: https://www.comfy.org/
<!-- Workaround to display total user from https://github.com/badges/shields/issues/4500#issuecomment-2060079995 -->
[discord-shield]: https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fdiscord.com%2Fapi%2Finvites%2Fcomfyorg%3Fwith_counts%3Dtrue&query=%24.approximate_member_count&logo=discord&logoColor=white&label=Discord&color=green&suffix=%20total
[discord-url]: https://www.comfy.org/discord
[twitter-shield]: https://img.shields.io/twitter/follow/ComfyUI
[twitter-url]: https://x.com/ComfyUI

[github-release-shield]: https://img.shields.io/github/v/release/comfyanonymous/ComfyUI?style=flat&sort=semver
[github-release-link]: https://github.com/comfyanonymous/ComfyUI/releases
[github-release-date-shield]: https://img.shields.io/github/release-date/comfyanonymous/ComfyUI?style=flat
[github-downloads-shield]: https://img.shields.io/github/downloads/comfyanonymous/ComfyUI/total?style=flat
[github-downloads-latest-shield]: https://img.shields.io/github/downloads/comfyanonymous/ComfyUI/latest/total?style=flat&label=downloads%40latest
[github-downloads-link]: https://github.com/comfyanonymous/ComfyUI/releases

![ComfyUI Screenshot](https://github.com/user-attachments/assets/7ccaf2c1-9b72-41ae-9a89-5688c94b7abe)
</div>

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
5. **Run ComfyUI**:
   Start ComfyUI by running:
   ```bash
   python main.py
   ```


