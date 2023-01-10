This shaders substitute standard AIT shaders. This documentation will be covering only toon specified features.

# Variants

**Hanmen/Toon Body/Toon Body** - shaders for body.

**Hanmen/Toon Head/Toon Head** - shaders for the head.

**Hanmen/Toon Hair** - shader for the hair.

**Hanmen/Toon** Clothing Cutoff - Cutoff/Opaque shader for the clothing.

**Hanmen/Toon** Clothing Alpha/Alpha Cutoff - Transparent shader for the clothing.

**Hanmen/Toon Item Cutoff** - Cutoff/Opaque shader for the accessory and studio items.

**Hanmen/Toon Item Alpha** - Transparent shader for the accessory and studio items.

**Hanmen/Toon Eye** - shader for eyes.

**Hanmen/Toon Tongue** - shader for tongue

**Hanmen/Toon Teeth** - shader for teeth.


# Shading:

Shading depends on several properties:

**1st_ShadeColor:** First shading color.

**2nd_ShadeColor:** Second shading color.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/tg01.jpg)

**Shade1_Step:** First shade step position. Default is 0.5 (center).

**Shade1_Feather:** First shade smoothness amount.  Can be used to make hard shading or smooth shading.

**Shade2_Step:** Second shade step position. Default is 0.5 (center).

**Shade2_Feather:** Second shade smoothness amount.  Can be used to make hard shading or smooth shading.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/tg02.gif)

# Rimlight:

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/tg03.jpg)

RimLight is a technique in which light is set to shine on the rims of the object.
In non-photorealistic styles that includes Toon Shader, highlights are also placed on the edges of objects to make it more visible, and it is also called RimLight.

**Rimlight** Toggles the rimlight strength. Linear from 0 to 1.

**RimlightColor** Color of the rimlight. However if the object's metallic value is 1, the rimlight color will be matched the albedo.

**Rimlight_NormalBlend** Set 1 when you want the normal map to influence the RimLight.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/tg04.gif)

**Rimlight_Power** Adjusts the RimLight’s power.

**RimLight_InsideMask** Adjusts the power of the inside masking of the RimLight.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/tg05.gif)

**RimLight_FeatherOff** Rimlight smoothing. Can be used to make smooth or hard rimlight.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/tg06.gif)

**Rimlight_LightDirection** when set 1 only shows RimLight in the light’s direction.

**Rimlight_LightDirection_MaskLevel** Adjusts the rim mask level in the light’s direction.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/tg07.gif)
