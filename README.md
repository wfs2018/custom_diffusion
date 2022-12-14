# Multi-Concept Customization of Text-to-Image Diffusion (not official)

This is an unofficial implementation of Multi-Concept Customization of Text-to-Image Diffusion.

Custom diffusion Optimizing just a few parameters in the text-to-image adjustment mechanism is sufficient to represent new concepts while achieving fast adjustments.

As described in the paper, ours optimizes only the specific token in the text encoder and the attention key and value in the unet.

The number of parameters that can be optimized is only 82 M. When the input batch is 8 and the global steps is 300, it takes 6 minutes on a100 and 17 minutes for the same parameters using the dreambooth.


