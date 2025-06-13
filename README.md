# 🌫️ Haze & Fog Clearance using Neural Style Transfer (NST)

## 📌 Project Overview

This project implements a cutting-edge image and video enhancement system to improve visibility in hazy and foggy conditions using **Neural Style Transfer (NST)**. It processes images affected by atmospheric disturbances using deep learning to deliver clearer and more detailed visuals.

---

## 🚀 Key Features

- 🧠 **Advanced Deep Learning**: Uses TensorFlow and TensorFlow Hub for NST-based enhancement
- 🖼️ **Dual-Image Stylization**: Merges hazy content with reference style textures
- ⚙️ **Parameter Control**: Easily adjust:
  - Content image size (default: 384px)
  - Style image size (default: 256px)
  - Aspect ratio preservation
- 📦 **Pre-trained Models**: Uses Google's Arbitrary Image Stylization model (v2)
- 🔄 **Automated Workflow**:
  - Image loading, cropping, resizing
  - Aspect-ratio-preserving transformations
  - Batch processing support

---

## 🧰 Tech Stack

| Technology | Use |
|------------|-----|
| `TensorFlow 2.19.0` | Core deep learning engine |
| `TensorFlow Hub 0.16.1` | For accessing pre-trained NST models |
| `NumPy` | Efficient numerical operations |
| `Matplotlib` & `OpenCV` | Visualization and image manipulation |

---

## 🧬 Model Architecture

1. **Content & Style Separation**: Extract features from both input and reference images
2. **Style Synthesis**: Merge textures from the style image with the structure of the content image
3. **Output Rendering**: Generate a transformed image preserving visibility and details
<p>The input video (videoplayback_1) and the output video (clear_vid) are also included in this repo</p>

---

## 🖼️ Video Processing Pipeline

```mermaid
graph TD
  A[Load Content video] --> B[Load Style Image]
  B --> C[Preprocess: Crop, Resize, Normalize]
  C --> D[NST Transformation]
  D --> E[Enhanced Output video]
```
---

## Check this project out on Docker also
```bash
  https://hub.docker.com/r/warriormanx/haze_removal_nst
  ```
