This shaders are ASE replicated vanilla AIT/Item. Can be used for making colorable studio objects or accessories.

# Variants

**Hanmen/Item Cutoff** - An opaque standard shader with the dithering transparency, opacity can be controlled by each Color alpha
 value directly. It has Cutoff value for clipping function.
 
**Hanmen/Item Transparent** - A standard transparent version of the shader, opacity can be controlled by each Color alpha
 value directly.
 
**Iridescent/Item Cutoff** - An opaque specular shader that has iridescent specularity, with the dithering transparency. The specular color depends on screen position. opacity can be controlled by each Color alpha value directly. It has Cutoff value for clipping function.

**Iridescent/Item Transparent** - A transparent specular version of the shader that has iridescent specularity.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/iri.gif)

###### Iridescent specularity

# Textures:



**MainTex:** Basically this is a diffuse map, colorable parts should be grayscale. Alpha channel is also supported for cutoff. sRGB colorspace.

**ColorMask:** This is basically the same as vanilla. Color is black, Color2 is Red, Color3 is Green, Color4 is Blue. Default is black (All Color1). Linear colorspace.

**BumpMap:** Ordinary OpenGL normal map. The strength is controlled by BumpScale.

**DetailMask:** This texture used for adding DetailGlossMap masks. R - Detail Mask 1, G - Detail Mask 2. The black parts are not affected, leave empty if you don't need detail bumps. Linear colorspace.

**DetailGlossMap:** Grayscale height map (bump map). Same as vanilla. The shader automatically generates and blends normal from it. UV scaling controlled by DetailUV. Masked by DetailMask R channel. The strength is controlled by DetailNormalMapScale

**DetailGlossMap2:** Grayscale height map (bump map). Same as vanilla. The shader automatically generates and blends normal from it. UV scaling controlled by DetailUV2. Masked by DetailMask G channel. The strength is controlled by DetailNormalMapScale2

**MetallicGlossMap:** This is very important map, it's packed R channel for Glossiness, G for Emission Mask, B for Metallic. Linear colorspace.

**OcclusionMap:** This packed map, R - Occlusion map. Linear colorspace.


<br>
###### Only for Cutoff shader variants:

**Noise Texture:** The noise texture can be used to generate special dithering. Only in Cutoff versions. 

###### Only for Iridescent shader variants:

**ColorRamp:** Only for iridescent shaders. Color texture for the iridescent specularity. Reccommend to use my [raindbowColorRamp.png](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Shaders%20ASE/Iridescent/raindbowColorRamp.png)



# Colors:



**BaseColor:** Basically master color, leave 1,1,1,1 in most cases.

**Color:**  Color 1. Masked by black channel in the colormask texture. Alpha value controls transparency.

**Color2:** Color 2. Masked by red channel in the colormask texture. Alpha value controls transparency.

**Color3:** Color 3. Masked by green channel in the colormask texture. Alpha value controls transparency.

**Color4:** Color 4. Masked by blue channel in the colormask texture. Alpha value controls transparency.

**EmissionColor:** Controls emission, Masked by MetallicGlossMap green channel.


# Properties:

**Cutoff** Controls opacity clipping threshold. 

**DetailUV** Controls detail1 texture UV scale. 

**DetailUV2** Controls detail2 texture UV scale. 

**DetailUVRotator** Controls detail1 texture UV rotation. 

**DetailUVRotator2** Controls detail2 texture UV rotation. 

**BumpScale** Controls normal map bump power.

**DetailNormalMapScale** Controls detail1 bump power. 

**DetailNormalMapScale2** Controls detail2 bump power. 

**EmissionStrength** Controls emission power.

**OcclusionStrength** Controls occlusion power. 

**DetailOcclusionScale** Controls detail1 occlusion power. DetailOcclusion checkbox should be set ON.

**DetailOcclusionScale2** Controls detail2 occlusion power. DetailOcclusion checkbox should be set ON.

**DetailOcclusionContrast** Controls detail1 occlusion contrast. DetailOcclusion checkbox should be set ON.

**DetailOcclusionContrast2** Controls detail1 occlusion contrast. DetailOcclusion checkbox should be set ON.

**Glossiness** Controls the glossiness level, contributes by MetallicGlossMap Red channel. Masked by Color1 on the ColorMask.

**Glossiness2** Controls the glossiness level, contributes by MetallicGlossMap Red channel. Masked by Color2 on the ColorMask.

**Glossiness3** Controls the glossiness level, contributes by MetallicGlossMap Red channel. Masked by Color3 on the ColorMask.

**Glossiness4** Controls the glossiness level, contributes by MetallicGlossMap Red channel. Masked by Color4 on the ColorMask.

**Roughness** Controls the glossiness level independantly on the by MetallicGlossMap Red channel. Masked by Color1 on the ColorMask.

**Roughness2** Controls the glossiness level independantly on the by MetallicGlossMap Red channel. Masked by Color2 on the ColorMask.

**Roughness3** Controls the glossiness level independantly on the by MetallicGlossMap Red channel. Masked by Color3 on the ColorMask.

**Roughness4** Controls the glossiness level independantly on the by MetallicGlossMap Red channel. Masked by Color4 on the ColorMask.

**Metallic** Controls the metallic level, contributes by MetallicGlossMap Blue channel. Masked by Color1 on the ColorMask.

**Metallic2** Controls the metallic level, contributes by MetallicGlossMap Blue channel. Masked by Color2 on the ColorMask.

**Metallic3** Controls the metallic level, contributes by MetallicGlossMap Blue channel. Masked by Color3 on the ColorMask.

**Metallic4** Controls the metallic level, contributes by MetallicGlossMap Blue channel. Masked by Color4 on the ColorMask.

**MetallicMask** Controls the metallic level independantly on the by MetallicGlossMap Blue channel. Masked by Color1 on the ColorMask.

**MetallicMask2** Controls the metallic level independantly on the by MetallicGlossMap Blue channel. Masked by Color2 on the ColorMask.

**MetallicMask3** Controls the metallic level independantly on the by MetallicGlossMap Blue channel. Masked by Color3 on the ColorMask.

**MetallicMask4** Controls the metallic level independantly on the by MetallicGlossMap Blue channel. Masked by Color4 on the ColorMask.


# Keywords (Static Switches):


**BlueNoiseDither** By default the shaders using internal Unity algorithm bayer 8x8 fro the dithering transparency. If you want to use bluenoise dithering check the BlueNoiseDither checkbox at the bottom, then set the [bluenoise.dds](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Shaders%20ASE/bluenoise.dds)

###### Bayer 8x8 (Default)

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/bayer.gif)

###### Bluenoise

![2](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/bluenoise.gif)


**EmissionColor1** (Color1 is Emissive) Overrides EmissionColor with Color1 for easy control from the game or studio.
 
**EmissionColor2** (Color2 is Emissive) Overrides EmissionColor with Color2 for easy control from the game or studio.
 
**EmissionColor3** (Color3 is Emissive) Overrides EmissionColor with Color3 for easy control from the game or studio.

However, you still should set the MetalliGlossMap G channel mask to enable emission.

**DetailOcclusion:** Enables the contribution from detail texture to occlusion layer.


