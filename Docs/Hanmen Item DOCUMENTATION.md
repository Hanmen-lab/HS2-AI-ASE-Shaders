This shaders are ASE replicated vanilla AIT/Item. Can be used for making colorable studio objects or accessories.

**Hanmen/Item Cutoff** - An opaque standard shader with the dithering transparency, opacity can be controlled by each Color alpha
 value directly. It has Cutoff value for clipping function.
 
**Hanmen/Item Transparent** - A standard transparent version of the shader, opacity can be controlled by each Color alpha
 value directly.
 
**Iridescent/Item Cutoff** - An opaque specular shader that has iridescent specularity, with the dithering transparency. The specular color depends on screen position. opacity can be controlled by each Color alpha value directly. It has Cutoff value for clipping function.

**Iridescent/Item Transparent** - A transparent specular version of the shader that has iridescent specularity.

###### NEW Additional Features:

**Noise Texture:** The noise texture can be used to generate special dithering. Only in Cutoff versions.

[![N|](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/bayer.gif)]

[![N|](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/bluenoise.gif)]

###### SHADER KEYWORDS:

    #EmissionColor1 (Color1 is Emissive)
    #EmissionColor2 (Color2 is Emissive)
    #EmissionColor3 (Color3 is Emissive)

If checked overrides EmissionColor with Color, Color2, Color3. This making possible to control the emission color in char maker. However, you still should set the MetalliGlossMap G channel mask to enable emission.

###### Packing textures:

**MainTex:** Basically this is a diffuse map, colorable parts should be grayscale. Alpha channel is also supported for cutoff.

**ColorMask:** This is basically the same as vanilla. Color is black, Color2 is Red, Color3 is Green, Color4 is Blue.

**BumpMap:** Ordinary OpenGL normal map. The strength is controlled by BumpScale.

**DetailMask:** This texture used for adding DetailGlossMap masks. R - Detail Mask 1, G - Detail Mask 2. The black parts are not affected, leave empty if you don't need detail bumps.

**DetailGlossMap:** Grayscale height map (bump map). Same as vanilla. The shader automatically generates and blends normal from it. UV scaling controlled by DetailUV. Masked by DetailMask R channel. The strength is controlled by DetailNormalMapScale

**DetailGlossMap2:** Grayscale height map (bump map). Same as vanilla. The shader automatically generates and blends normal from it. UV scaling controlled by DetailUV2. Masked by DetailMask G channel. The strength is controlled by DetailNormalMapScale2

**MetallicGlossMap:** This is very important map, it's packed R channel for Glossiness, G for Emission Mask, B for Metallic.

**OcclusionMap:** This packed map, R - Occlusion map.

