<h1 align="center">
  <img src="/home/karanvora/Documents/New York University/Classes/Semester 2/Deep Learning/Project/PokGAN/3839-eeveelutionplushies.gif" alt="PokGAN GIF" style="vertical-align: middle; width: 50px; height: 50px;"> PokGAN <br>
  Generating New Pokemon Using Two-Stage Generative Adversarial Networks
</h1>
<h4 align="center"><a href="https://github.com/parisimaa">Parisima Abdali (pa2297)</a></h4>
<h4 align="center"><a href="https://github.com/karanvora2599">Karan Vora (kv2154)</a></h4>

## Introduction

Generative models via adversarial process (GANs) are a class of machine learning models that are widely used in the field of artificial intelligence and specifically in the domain of generative modeling. Our objective is to develop a GAN-based system capable of generating novel and visually compelling Pokémon spirits that align with the patterns and aesthetics found in the provided dataset. The GAN architecture consists of a generator and a discriminator to learn the patterns, characteristics, and visual qualities exhibited by Pokémon in the custom dataset with over 1000 images. we also trained an Autoencoding GAN on the same dataset and compared the two results.

---

### Training the GAN

```
#Copy all the training images in the input folder

#install the requirements
pip3 install torch torchvision

#Run the code
python3 pokegan.py
```

---

### Training the AEGAN

```
#Copy all the images to the data/sprites_rgb folder in AEGAN

#install the requirements of requirements.txt file

#Run the code
python3 main.py
```

---

### Output of GAN

![](https://github.com/parisimaa/PokGAN/blob/main/testanimation%20(1).gif "PokeGAN")

---

### Output of AEGAN

* **Generated**

  ![img](https://github.com/parisimaa/PokGAN/blob/main/AEGAN/results/AEGAN_Generator.gif)
* **Reconstructed**

  ---
