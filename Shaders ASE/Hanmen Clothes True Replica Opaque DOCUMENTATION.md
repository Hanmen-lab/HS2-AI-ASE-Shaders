## Hanmen/Clothes True Replica Opaque
This shader is ASE replicated vanilla AIT/Clothes True

Featured all main features of the original + additional features.




### NEW Additional Features:

- Roughness1
- Roughness2
- Roughness3

This properties is separated from Glossiness! It controls the level of glossiness map contribution, if you want your material to be solid glossy turn corresponding Roughness level to 0, however if your material has roughness in MetallicGlossMap R channel set it to 1.

- MetallicMask1
- MetallicMask2
- MetallicMask3

This properties is separated from Metallic! Controls the level of metallic map contribution, if you want your material to be full metallic turn corresponding Roughness level to 0, however if your material has metallic roughness in MetallicGlossMap B channel set it to 1.

###### SHADER KEYWORDS:

- #EmissionColor1 (Color1 is Emissive)
- #EmissionColor2 (Color2 is Emissive)
- #EmissionColor3 (Color3 is Emissive)
 
If checked overrides _EmissionColor with _Color, _Color2, _Color3. This making possible to control the emission color in char maker. However, you still SHOULD set the MetalliGlossMap G channel mask to enable emission. 
 
 
 
### Packing textures

**MainTex:** Basically diffuse map, if you want it to be colorable than make it grayscale.

**ColorMask:** This is basically the same as vanilla. Color is black, Color2 is Red, Color3 is Green. It has additional Blue option, that cannot be changed in char maker, actually I reccomend to reserve it as a color protector, for example you can mark some colored parts on the diffuse map to make it maintain original diffuse colors like seams, prints, etc

**BumpMap:** Ordinary OpenGL normal map.

**DetailGlossMap:** Grayscale height map (bump map). Same as vanilla. The shader automatically generates and blends normal from it.

**DetailGlossMap2:** Grayscale height map (bump map). Same as vanilla. The shader automatically generates and blends normal from it.

**MetallicGlossMap:** This is very important map, it's packed R channel for Glossiness, G for Emission Mask, B for Metallic.

**OcclusionMap:** This packed map, R - Occlusion map, B - Tearing mask for controlling the clothing break state in char maker. G is not used here.



### TODO (NOT WORKING FEATURES)

- Translucency
- Weathering Textures
- Dithering
