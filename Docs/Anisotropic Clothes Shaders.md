This shaders are ASE replicated vanilla AIT/Clothes True. Can be used for only for the clothings. This shaders using Custom Lighting model.
https://docs.unity3d.com/Manual/SL-SurfaceShaderLighting.html

All shaders Forward Only. Based on this asset:
https://assetstore.unity.com/packages/vfx/shaders/sas-standard-anisotropic-shader-51663

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

**DetailGlossMap:** Grayscale detail map. Used as height map for normals (DetailNormalMapScale), also used in glossiness and metallic layers (DetailGlossScale, DetailMetallicScale).

**DetailGlossMap2:** Grayscale detail map. Used as height map for normals (DetailNormalMapScale), also used in glossiness and metallic layers (DetailGlossScale, DetailMetallicScale).

**MetallicGlossMap:** Packed Map. R - MetallicMap, G-Emission, B-Roughness. Can be leaved empty in most cases.

**OcclusionMap:** This packed map, R - Occlusion map. G- Not used yet B - Tearings Mask, Alpha - Alpha mask for opaque parts. Linear colorspace.

**WeatheringMap:** Contains weathering information. Reccommend to use original one from the game.

**WeatheringMask:** Contains body parts information. Red - Front-Top, Green - Front-Bottom, Blue - Back-Top, Yellow(R+G) - Back-Bottom, Magenta(R+B) - Arms, Cyan(G+B) - Face. Linear colorspace.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/weathering.jpg)

###### WeatheringMap scheme

<br>

**FuzzTex:** Grayscale map used for rendering fuzz lighting.

**WetnessMap:** R- Wetness Gloss, G - Wetness Bumps.
Example: [wetness_texture](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/rita_maincos2_Mat_1_BaseColor.png)

**TangentMap:** Anisotropic map used for specular direction. R - horizontal direction. G - vertical direction. Controlled by TangentUV + UVScalePattern. Since it only using the R and G channel it's possible to use ordinary normal maps as tangentmap.

![tangentmap](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/TangentMap.png)

###### TangentMap Example

<br>

>Only for Iridescent shader variants:

**ColorRamp:** Only for iridescent shaders. Color texture for the iridescent specularity. Reccommend to use my [raindbowColorRamp.png](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Shaders%20ASE/Iridescent/raindbowColorRamp.png)



# Colors:

**BaseColor:** Basically master color, leave 1,1,1,1 in most cases.

**Color:** Basically master color, leave 1,1,1,1 in most cases.

**EmissionColor:** Controls emission, Masked by MetallicGlossMap green channel.

**WeatheringAlbedo:** Controls weathering color. Leave default in most cases.

**FuzzColor:** Controls fuzz lighting color.

**WetColor:** Controls Wetness color when ExGloss is turned ON.



# Properties:

###### New properties:

**Anisotropy** Anisotropy reflection direction. Defines anisotropy reflection angle by UV.

![anisotropy](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/anisotropy.gif)

**AnisotropyContrast** TangentMap scale. Default value is 0.5

![anisocont](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/anisocont.gif)

**Reflection** Reflection part of specular highlights. Default is 1. You can turn it off in some cases.

**FuzzUV:** Controls FuzzTex UV. 

**FuzzWrap:** Controls Fuzz lighting parameters.

**FuzzRange:**

**FuzzBias:**

>Only for Alpha shader variants:

**AlphaMaster:** Controls the transparency level of the material independantly from game slider. Basically used for making transparent clothings that initially don't have the Alpha slider in the color picker.

**FresnelPower:** Alpha fresnel power.

**FresnelScale:** Alpha fresnel scale.

**FresnelBias:** Alpha fresnel bias.

>Only for Pantyhose shader variants:

**AlphaMin:** Used for masking alpha layer. Default is 0.75 The values higher than this will remain opaque, lower controls by AlphaMaster. Used for clothings that has static alpha channel.

<br>

###### Detail properties:

**UVScalePattern** Defines master value for DetailUV, DetailUV2, TangentUV. Used in some vanilla clothing.

**DetailUV** Controls detail1 texture UV scale. R - Scale X, G - Scale Y.

**DetailUV2** Controls detail2 texture UV scale. R - Scale X, G - Scale Y.

**DetailTangent1:** Used for masking tangent to DetailMask Red.

**DetailTangent2:** Used for masking tangent to DetailMask Green.

**DetailUVRotator** Controls detail1 texture UV rotation. -1 to 1. (-180 to 180 radians).

**DetailUVRotator2** Controls detail2 texture UV rotation. -1 to 1. (-180 to 180 radians).

**DetailNormalMapScale** Controls detail1 bump power.

**DetailNormalMapScale2** Controls detail2 bump power.

**DetailGlossScale** Controls the glossiness controbution from Detail1.

**DetailGlossScale2** Controls the glossiness controbution from Detail2.

**DetailMetallicScale** Controls the metallic controbution from Detail1.

**DetailMetallicScale2** Controls the metallic controbution from Detail2.

**DetailOcclusionScale** Controls the occlusion controbution from Detail1.

**DetailOcclusionScale2** Controls the occlusion controbution from Detail1.

>Only for Pantyhose shader variants:

**DetailAlpha1:** Allows to contribute the detail1 texture to the alpha channel.

**DetailAlpha2:** Allows to contribute the detail2 texture to the alpha channel.

<br>

**WeatheringUV:** Controls weathering texture UV coordinates. R - Scale X, G - Scale Y, B - Offset X, A - Offset Y.

**BumpScale** Controls normal map bump power.

**EmissionStrength** Controls emission power.

**AlphaEx:** Controls the cloth tearings effect according to OcclusionMap B channel.

**ExGloss:** Controls the wetness level. It can react to wetness slider in the studio.

**OcclusionStrength** Controls occlusion power. 

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

###### Wetness properties: Works only when ExGloss is > 0. Or the character wetness slider is used.

**WetAlpha:** Controls the transparency level of OcclusionMap alpha.

**WetAlbedoOffset:** Controls the albedo offset of wetness. Darkens the wet areas.

**WetSplatsAlbedoOffset:** Controls the splats albedo levels.

**WetGlossBase:** Controls the glossiness levels of wetness.

**WetGlossSplats:** Controls the Splats glossiness levels.

**WetOpacitySplats:** Controls the splats overall scale. Can be turned off by setting it 0.

**WetBumpOffset:** Adds additional bump strenght when wetness is used.


<br>

>Only for Iridescent shader variants:

**IriHue:** Controls color shift of the iridescent specularity.

**IriSaturation:** Controls saturation of the iridescent specularity.

**IriBrightness:** Controls brightness of the iridescent specularity.

**IriContrast:** Controls contrast of the iridescent specularity.

<br>

>Only for Cutoff shader variants:

**Cutoff** Controls opacity clipping threshold. 

<br>

# Keywords (Static Switches):


**EmissionColor1** (Color1 is Emissive) Overrides EmissionColor with Color1 for easy control from the game or studio.
 
**EmissionColor2** (Color2 is Emissive) Overrides EmissionColor with Color2 for easy control from the game or studio.
 
**EmissionColor3** (Color3 is Emissive) Overrides EmissionColor with Color3 for easy control from the game or studio.

However, you still should set the MetalliGlossMap G channel mask to enable emission.

