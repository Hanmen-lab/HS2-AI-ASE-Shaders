# HS2-AI-ASE-Shaders
[![N|Solid](http://amplify.pt/wp-content/uploads/2016/08/icon_precise_v1_90.png)](http://amplify.pt/unity/amplify-shader-editor/)

ASE-Ready shader for Unity, mainly for modding AI&Girl & HS2.


## Hanmen/Clothes True Replica Opaque
This shader is ASE replicated vanilla AIT/Clothes True

Featured all main features of the original + additional features.

(!) NOT WOKING YET:
-Translucency
-Weathering Textures

### Additional Features:

- Roughness1
- Roughness2
- Roughness3

This properties controls the level of glossiness map contribution, if you want your material to be solid glossy turn corresponding Roughness level to 0, however if your material has roughness in MetallicGlossMap R channel set it to 1.

- MetallicMask1
- MetallicMask2
- MetallicMask3

This properties controls the level of metallic map contribution, if you want your material to be full metallic turn corresponding Roughness level to 0, however if your material has metallic roughness in MetallicGlossMap B channel set it to 1.

###### SHADER KEYWORDS:
- #EmissionColor1 (Color1 is Emissive)
- #EmissionColor2 (Color2 is Emissive)
- #EmissionColor3 (Color3 is Emissive)
 
If checked overrides _EmissionColor with _Color, _Color2, _Color3. This making possible to control the emission color in char maker. However, you still SHOULD set the MetalliGlossMap G channel mask for emission.

### Packing textures

**MainTex:** Basically diffuse map, if you want it to be colorable than make it grayscale.

**ColorMask:** This is basically the same as vanilla. Color is black, Color2 is Red, Color3 is Green. It has additional Blue option, that cannot be changed in char maker, actually I reccomend to reserve it as a color protector, for example you can mark some colored parts on the diffuse map to make it maintain original diffuse colors like seams, prints, etc
