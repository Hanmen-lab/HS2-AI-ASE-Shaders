This shaders are ASE replicated vanilla AIT/Clothes True. Can be used for making colorable studio objects or accessories.

# Variants

**Hanmen/Clothes True Cutoff** - An opaque standard shader for clothing with the new Dithering transparency - IGN (Interleave Gradient Noise). It has Cutoff value for clipping function
 
**Hanmen/Clothes True Alpha** - A standard transparent version of the shader.
  
# Textures:

- **MainTex:** Basically this is a diffuse map, colorable parts should be grayscale. Alpha channel is also supported for cutoff. sRGB colorspace.

>MainTex should be set in the list. Can be leave empty in the Unity.

- **ColorMask:** This is basically the same as vanilla. Color is black, Color2 is Red, Color3 is Green, Color4 is Blue. Default is black (All Color1). Linear colorspace. 

>ColorMask should be set in the list. Can be leave empty in the Unity, unless you need Color4.

  
- **BumpMap:** Ordinary OpenGL normal map. The strength is controlled by BumpScale.  
   
- **DetailMask:** This texture used for adding DetailGlossMap masks. R - Detail Mask 1, G - Detail Mask 2. The black parts are not affected, leave empty if you don't need detail bumps. Linear colorspace.

- **DetailGlossMap:** Grayscale height map (bump map). Same as vanilla. The shader automatically generates and blends normal from it. UV scaling controlled by DetailUV. Masked by DetailMask R channel. The strength is controlled by DetailNormalMapScale

   **DetailGlossMap2:** Grayscale height map (bump map). Same as vanilla. The shader automatically generates and blends normal from it. UV scaling controlled by DetailUV2. Masked by DetailMask G channel. The strength is controlled by DetailNormalMapScale2

- **MetallicGlossMap:** This is very important map, it's packed R channel for MetallicMask, G for Emission Mask, B for Thickness. A for Roughness. Linear colorspace.

- **OcclusionMap:** This packed map, R - Carveture Map (wear effect), G- Occlusion Map, B - Tearings Mask, Alpha - Wetness opacity. Linear colorspace.
>Carvature Controlled by **CarvetureStrength.** 

- **WeatheringMap:** Contains weathering information. Reccommend to use original one from the game.

- **WeatheringMask:** Contains body parts information. Red - Front-Top, Green - Front-Bottom, Blue - Back-Top, Yellow(R+G) - Back-Bottom, Magenta(R+B) - Arms, Cyan(G+B) - Face. Linear colorspace.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/weathering.jpg)

- **WetnessMap:** R- Wetness Gloss, G - Wetness Bumps.
Example: [wetness_texture](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/rita_maincos2_Mat_1_BaseColor.png)

- **EffectMap** - Control Emissioneffect, like glowing pulsating, scrolling. 


# Colors:

- **BaseColor:** Basically master color, leave 1,1,1,1 in most cases.

- **Color:** Basically master color, leave 1,1,1,1 in most cases.

- **EmissionColor:** Controls emission, Masked by MetallicGlossMap green channel.

- **WeatheringAlbedo:** Controls weathering color. Leave default in most cases.


# Properties:

- **CullMode** Controls backface culling. 0 - No Culling. 1 - Cull front faces. 2 - Cull backfaces. Preferably use cull backfaces.

- **NormalBackDirInvert** - Inverts backface normals. Usefull. Set 1.

- **AlphaMaster** Controls overall opacity.

- **DetailUV** Controls detail1 texture UV scale. R - Scale X, G - Scale Y.

- **DetailUV2** Controls detail2 texture UV scale. R - Scale X, G - Scale Y.

- **DetailUVRotator** Controls detail1 texture UV rotation. -1 to 1. (-180 to 180 radians).

- **DetailUVRotator2** Controls detail2 texture UV rotation. -1 to 1. (-180 to 180 radians).

- **WeatheringUV:** Controls weathering texture UV coordinates. R - Scale X, G - Scale Y, B - Offset X, A - Offset Y.

- **Float0** Controls normal map bump power.

- **DetailNormalMapScale** Controls detail1 bump power. 

- **DetailNormalMapScale2** Controls detail2 bump power. 

- **EmissionStrength** Controls emission power.

- **AlphaEx:** Controls the cloth tearings effect according to OcclusionMap B channel.

- **ExGloss:** Controls the wetness level. It can react to wetness slider in the studio.

- **WetnessPower:** Controls the wetness gloss level. Better leave default 0.8.

- **WetnessPower2:** Controls the wetness metallic level. Better leave default 0.2

- **OcclusionStrength** Controls occlusion power. 

- **DetailOcclusionScale** Controls detail1 occlusion power. DetailOcclusion checkbox should be set ON.

- **DetailOcclusionScale2** Controls detail2 occlusion power. DetailOcclusion checkbox should be set ON.

- **DetailOcclusionContrast** Controls detail1 occlusion contrast. DetailOcclusion checkbox should be set ON.

- **DetailOcclusionContrast2** Controls detail1 occlusion contrast. DetailOcclusion checkbox should be set ON.

- **Roughness** Controls the glossiness level independantly on the by MetallicGlossMap. This basically used to make an object fully gloss in ME, even if you set the map.

- **MetallicMask:** Controls the metallic level independantly on the by MetallicGlossMap Blue channel. This basically used to make an object fully gloss in ME, even if you set the map.

- **Glossiness4:** Controls the glossiness level of Color4. Working only if the ColorMask texture has been set,  masked by Blue channel.

- **Metallic4:** Controls the metallic level of Color4. Working only if the ColorMask texture has been set,  masked by Blue channel.

- **Roughness4** Controls the glossiness level independantly on the by MetallicGlossMap Red channel. Masked by Color4 on the ColorMask.

- **MetallicMask4:** Controls the metallic level independantly on the by MetallicGlossMap Blue channel. Masked by Color4 on the ColorMask.

- **WeatheringAll:** Controls the weathering level for all body parts. 

- **WeatheringRange1:** Controls the weathering level for the front-top body part. Masked by Red channel on the WeatheringMask.

- **WeatheringRange2:** Controls the weathering level for the front-bottom body part. Masked by Green channel on the WeatheringMask.

- **WeatheringRange3:** Controls the weathering level for the back-top body part. Masked by Blue channel on the WeatheringMask.

- **WeatheringRange4:** Controls the weathering level for the back-bottom body part. Masked by Red+Green channel on the WeatheringMask.

- **WeatheringRange5:** Controls the weathering level for the arms. Masked by Red+Blue channel on the WeatheringMask.

- **Cutoff** Controls opacity clipping threshold. 


# Keywords (Static Switches):


### **IRIDISCENT_ON** 

This Keyword enables Iridiscent effect. Combine with **SPECULARSETUP_ON** for Iridiscent specularity/Iridiscent Metallic.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/iri.gif)

###### Iridiscent specularity

Use this properties to control iridiscent effect.

**IriHue:** Controls color shift of the iridescent specularity.

**IriSaturation:** Controls saturation of the iridescent specularity.

**IriBrightness:** Controls brightness of the iridescent specularity.

**IriContrast:** Controls contrast of the iridescent specularity.


### **SPECULARSETUP_ON** 
- This Keyword enables specular workflow, use _SpecColor value to control color. And 'Texture' (Metallic) for intensity.

### **SHADERTYPE_CLOTHING** 
- System key word, better not touch.

### **EMISSIONCOLORTEXBASE_ON** 
- Keyword controls emission colors. When OFF - Emission color defined in 'EmissionColor'. When ON - Emission color comes from MainTex colors. This helpful when you want to make multi colored emission. Color4 Can be used to make multicolor emission.
