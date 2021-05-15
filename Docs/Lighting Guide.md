Honey Select 2 StudioNeo Lighting Tutorial.

![lt](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_final.gif)

I decided to write this, since many people struggling with lighting in their scenes.
In fact StudioNeoV2 has Graphicss plugin which is very powerful tools to adjust the visuals.
Since any good raytracing options are not available right now, I'll be using only easily available Directional lights, Point lights and Spot Lights to imitate soft lighting.

Before we start, I wanted to admit some options:
1. Always use Deferred rendering. It supports multiple light sources, and potentially can provide more correct lighting.
2. Color grading. By default the main game and studio using LDR (Low Dynamic Range) colors. Which may looks cartoonish and saturated. 
I always reccomend to switch to HDR - Neutral color preset, and disable all the color corrections. 
With this you will get linear colors and overall cleaner look best for the fresh start the new scene.
3. Right now the Graphics plugin cannot save some light states into the scene, so if you close the Studio you'll need to adjust some lights and also it's layers again. This probably will be fixed in the future Graphics updates.

For this example I'll be using hooh's Rome Map with baked probs.

First off you need to understand that there is 2 types of lighting:
1. Realtime Lighting (Directional lights, Point lights and Spot Light)
2. Baked Reflection Probes. Which can be tricky to find.

This how the map looks without any Relatime lights, only with reflection probes. Since this map has baked probs, I will be switching the probes in the Graphics from Realtime to Baked.

![1](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_01.jpg)

Now it's using the baked probe, to enable it, you need to set Importance to 1000 and now you can control the Intensity. 
The one thing to admit, some of the Baked lights cannot be adjusted this way. And, when choosing the probe, I reccomend to choose the one that has less affect to character. 
Some maps may be using too bright reflections that may be hard to adjust the light.

![2](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_02.jpg)

Now lets add the Realtime lights to the scene. I reccomend to start with the sky light. In my scene the skylights comes from the top of the building, so I will be adding a spotlight.
Now the floor has a nice environment lighting. It cannot bounce to the walls, since there is no raytracing technology used, but don't worry, 
we will be simulating it with directional lights.

![3](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_03.jpg)


We also have Sky Dummy light, which is basically a directional light which represent the environment lighting bounced from the floor. The intensity is also pretty low here. 
And I also disabled the shadows from it. I have a bunch of candles on the floor that has point lights, so I will be enabling it. They don't have any special adjustements.

![4](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_04.jpg)

I also added the strong Point light near the front wall, it's not have an emitter and I put here just for artistic tase. I guess it adds a lot to the scene volume.

![5](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_05.jpg)

Now we have a basic map lighting done. Now we need to place a character.

![6](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_06.jpg)

The character lighting looks pretty dark with our setup, so we will be using a separate lighting that only affects the character. This can be set in the Graphics plugin - Setting - Advanced Settings checkbox. Now under the every light we have a layers it's affect. From now on we can add lights, then disable the Map layer.
First I'll add a rim lighting, I'll be using two directional light with different colors and strong intensity placed on the back with some side angles.

![7](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_07.jpg)

![8](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_08.jpg)

Now lets add a main light from the front-side. I reccomend to start with the soft white colors, mid intesity and some angle to have nicer shadows on the character.

![9](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_09.jpg)

And the final touch I'll add some environmental light from the front-side to smooth the overall look. You can adjust the tone and the intensity to settle it right.

![10](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_10.jpg)

For some extra steps I'll be using the Fog to imitate the volumetric lighting plus the particle FX - Sunlight on the top.

![11](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_11.jpg)
![12](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_12.jpg)

Now this pretty much it.

![13](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_13.jpg)
![14](https://github.com/Hanmen-lab/HS2-AI-ASE-Shaders/blob/master/Docs/lt_14.jpg)
