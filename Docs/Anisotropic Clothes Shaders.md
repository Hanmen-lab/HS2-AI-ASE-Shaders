This shaders are ASE replicated vanilla AIT/Clothes True. Can be used for only for the clothings.

# Variants

**Hanmen/Anisotropic Clothes Cutoff** - An opaque version of the anisotropic shader with the dithering transparency.
 
**Hanmen/Anisotropic Clothes Alpha** - Transparent version of the anisotropic shader.
 
**Hanmen/Anisotropic Iridescent Clothes Cutoff** - An opaque version of the anisotropic shader that has iridescent specularity, with the dithering transparency.

**Hanmen/Anisotropic Iridescent Clothes Alpha** - Transparent version of the anisotropic shader that has iridescent specularity.

**Hanmen/Anisotropic Iridescent Pantyhose** - Special anisotropic transparent shader made for pantyhose and lace clothings. It has integrated DetailGlossMap texture and few new properties.


# Textures:

![scheme](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/shader-aniso-scheme.png)

**MainTex:** Basically this is a diffuse map, colorable parts should be grayscale. Alpha channel is also supported for cutoff. sRGB colorspace.

>MainTex should be set in the list. Can be leave empty in the Unity.

**ColorMask:** This is basically the same as vanilla. Color is black, Color2 is Red, Color3 is Green, Color4 is Blue. Default is black (All Color1). Linear colorspace. 

>ColorMask should be set in the list. Can be leave empty in the Unity, unless you need Color4.

**BumpMap:** Ordinary OpenGL normal map. The strength is controlled by BumpScale.

**DetailMask:** This texture used for adding DetailGlossMap masks. R - Detail Mask 1, G - Detail Mask 2. The black parts are not affected, leave empty if you don't need detail bumps. Linear colorspace.

**DetailGlossMap:** Grayscale height map (bump map). Same as vanilla. The shader automatically generates and blends normal from it. UV scaling controlled by DetailUV. Masked by DetailMask R channel. The strength is controlled by DetailNormalMapScale

**DetailGlossMap2:** Grayscale height map (bump map). Same as vanilla. The shader automatically generates and blends normal from it. UV scaling controlled by DetailUV2. Masked by DetailMask G channel. The strength is controlled by DetailNormalMapScale2

**MetallicGlossMap:** Packed Map. R - MetallicMap, G-Emission, B-Roughness. Can be leaved empty in most cases.

**OcclusionMap:** This packed map, R - Occlusion map. G- Not used yet B - Tearings Mask, Alpha - Alpha mask for opaque parts. Linear colorspace.

**WeatheringMap:** Contains weathering information. Reccommend to use original one from the game.

**WeatheringMask:** Contains body parts information. Red - Front-Top, Green - Front-Bottom, Blue - Back-Top, Yellow(R+G) - Back-Bottom, Magenta(R+B) - Arms, Cyan(G+B) - Face. Linear colorspace.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/weathering.jpg)

**WetnessMap:** R- Wetness Gloss, G - Wetness Bumps.
Example: [wetness_texture](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/rita_maincos2_Mat_1_BaseColor.png)

<br>

>Only for Cutoff shader variants:

**Noise Texture:** Optional feature. Only in Cutoff versions. The noise texture can be used to generate special dithering. I reccommend to use [bluenoise.dds](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Shaders%20ASE/bluenoise.dds)

Very important to not using any compression or filtering

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/bn.jpg)

Before using the noise texture check the **BlueNoiseDither** checkbox.

<br>

>Only for Iridescent shader variants:

**ColorRamp:** Only for iridescent shaders. Color texture for the iridescent specularity. Reccommend to use my [raindbowColorRamp.png](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Shaders%20ASE/Iridescent/raindbowColorRamp.png)



# Colors:

**BaseColor:** Basically master color, leave 1,1,1,1 in most cases.

**Color:** Basically master color, leave 1,1,1,1 in most cases.

**EmissionColor:** Controls emission, Masked by MetallicGlossMap green channel.

**WeatheringAlbedo:** Controls weathering color. Leave default in most cases.


# Properties:

**DetailUV** Controls detail1 texture UV scale. R - Scale X, G - Scale Y.

**DetailUV2** Controls detail2 texture UV scale. R - Scale X, G - Scale Y.

**DetailUVRotator** Controls detail1 texture UV rotation. -1 to 1. (-180 to 180 radians).

**DetailUVRotator2** Controls detail2 texture UV rotation. -1 to 1. (-180 to 180 radians).

**WeatheringUV:** Controls weathering texture UV coordinates. R - Scale X, G - Scale Y, B - Offset X, A - Offset Y.

**BumpScale** Controls normal map bump power.

**DetailNormalMapScale** Controls detail1 bump power. 

**DetailNormalMapScale2** Controls detail2 bump power. 

**EmissionStrength** Controls emission power.

**AlphaEx:** Controls the cloth tearings effect according to OcclusionMap B channel.

**ExGloss:** Controls the wetness level. It can react to wetness slider in the studio.

**WetnessPower:** Controls the wetness gloss level. Better leave default 0.8.

**WetnessPower2:** Controls the wetness metallic level. Better leave default 0.2

**OcclusionStrength** Controls occlusion power. 

**DetailOcclusionScale** Controls detail1 occlusion power. DetailOcclusion checkbox should be set ON.

**DetailOcclusionScale2** Controls detail2 occlusion power. DetailOcclusion checkbox should be set ON.

**DetailOcclusionContrast** Controls detail1 occlusion contrast. DetailOcclusion checkbox should be set ON.

**DetailOcclusionContrast2** Controls detail1 occlusion contrast. DetailOcclusion checkbox should be set ON.

**Roughness** Controls the glossiness level independantly on the by MetallicGlossMap. This basically used to make an object fully gloss in ME, even if you set the map.

**MetallicMask:** Controls the metallic level independantly on the by MetallicGlossMap Blue channel. This basically used to make an object fully gloss in ME, even if you set the map.

**Glossiness4:** Controls the glossiness level of Color4. Working only if the ColorMask texture has been set,  masked by Blue channel.

**Metallic4:** Controls the metallic level of Color4. Working only if the ColorMask texture has been set,  masked by Blue channel.

**Roughness4** Controls the glossiness level independantly on the by MetallicGlossMap Red channel. Masked by Color4 on the ColorMask.

**MetallicMask4:** Controls the metallic level independantly on the by MetallicGlossMap Blue channel. Masked by Color4 on the ColorMask.

**WeatheringAll:** Controls the weathering level for all body parts. 

**WeatheringRange1:** Controls the weathering level for the front-top body part. Masked by Red channel on the WeatheringMask.

**WeatheringRange2:** Controls the weathering level for the front-bottom body part. Masked by Green channel on the WeatheringMask.

**WeatheringRange3:** Controls the weathering level for the back-top body part. Masked by Blue channel on the WeatheringMask.

**WeatheringRange4:** Controls the weathering level for the back-bottom body part. Masked by Red+Green channel on the WeatheringMask.

**WeatheringRange5:** Controls the weathering level for the arms. Masked by Red+Blue channel on the WeatheringMask.

<br>

>Only for Iridescent shader variants:

**IriHue:** Controls color shift of the iridescent specularity.

**IriSaturation:** Controls saturation of the iridescent specularity.

**IriBrightness:** Controls brightness of the iridescent specularity.

**IriContrast:** Controls contrast of the iridescent specularity.

<br>

>Only for Cutoff shader variants:

**Cutoff** Controls opacity clipping threshold. 


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

**EnableAlphaMask:** Allows to use Occlusion Alpha channel mask to mask the fully opaque parts.

![2](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/opacitymask.gif)

<br>

>Only for Transparent shader variants:

**DetailAlpha:** Allows to contribute the detail textures to the alpha channel.

**AlphaFresnel:** Adds the fresnel effect to the transparency.
