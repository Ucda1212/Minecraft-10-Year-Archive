# Code Server
Welcome to the Realms 10th Anniversary code server. Here you can directly edit files from the map hosted on [realms.verart.org](). 

## How to contribute

You can edit here the files of the datapack, but you can also add Resource Packs elements. 



## Guidelines 

### Datapack

To start a new pack, duplicate the ``./template`` folder and rename it into the namespace you want to use.
Then, modify the ``/info.md`` file at the root of your datapack. Finally, go to [Namespaces.md](./Namespaces.md) and add your datapack.

It is highly recommended to split your different mechanics in different packs. Example: a minigame A will be in the ``minigame_a`` pack and if you want to create a new minigame, create a new datapack ``minigame_b``.

1. **Namespace everything.** Choose a name for your datapack folder and a prefix for everything else (tags, scoreboards, teams, etc). **Do not use other namespaces than your own!** _(Exception: The shared namespaces/datapacks, see [Namespaces.md](./Namespaces.md). Also of course the minecraft namespace for tick and load functions.)_
2. **Only run as much as is needed.** Ensure your code only runs when it's needed (e.g. minigame code only needs to run while someone is playing the minigame). Also in this category: if something can get away with being run slower than 20 times a second, run it slower (there are utilities available for this). 
3. **Only affect your own entities.** Meaning you should always tag your entities and always limit your commands to your own entities. Players that are in your area count as your entities.
4. **Don't /clear without any arguments.** Similarly, don't try to control players inventories. If they need to have an empty inventory for your game, let them manually empty their inventory into a chest or something and prevent them from entering until they've done so.
5. **Keep it multiplayer friendly.** Don't assume your code is the only code running at any time. Ensure players can play a minigame without affecting anyone else.
6. **Setup all relevant objectives inside your namespaces `load` function** and add it to the minecraft:load.json file.
7. **Keep things readable and reviewable.** Don't actively try to obscure your code. Mabye add a few comments so it's easier for reviewers (and yourself) to follow along.
8. **Do not use global single-use things like gamerules or the worldborder**. To avoid any conflicts with these things, do not change gamerules, the time, the worldborder or anything else that is global only and cannot be prefixed. If in doubt, better to make an issue and ask whether you can do something.
9. **Optimize reasonably.** Take some precautions on making optimized code to prevent lag from your mechanics. We don't expect perfect performance, but simple rules such as keeping your NBT checks to a minimum or using @s wherever possible are a good start. Resources: [MinecraftCommands Guide](https://www.reddit.com/r/MinecraftCommands/wiki/optimising/), [Neylz Guide](https://github.com/neylz/opti-mcfunction). Avoid at maximum the usage of ``@e`` or ``@a``. Always prefer wrapping and usage of ``@s`` when possible.
10. Always use the ``utils`` library when possible.


### Resourcepack

If you want to add a resource pack, please check [Plagiatus Repository](https://github.com/Plagiatus/10YearsRealmsAnniversary).

1. **Don't modify anything vanilla: blocks, items, entities, particles, GUIs or anything else.**
2. **Only modify items through custom model data.** To avoid custom model data overlaps, please follow the numbering convention of https://mcdatapack.vercel.app to avoid conflicts.
3. You **may use custom fonts**. Do not modify the default files.
4. You **may use custom translations.** Your translation keys need to start with your chosen namespace.
5. When adding new textures and models, use your namespace as the root folder, don't change anything inside the minecraft folder except for model files to include your custom model data. Include your files in a way that doesn't require an atlas, e.g. `namespace:item/example/my_item` instead of `namespace:example/my_item`.
6. For the sake of keeping the RP lean: **No custom music**. Short soundsnippets are okay, but make sure to compress them to reasonable sizes. Preferably use built-in sounds.
7. Keep your texture sizes to powers of 2 as to not mess up the mipmap level. Also keep them to a reasonable size.
8. No custom made shaders. General shader libraries are open for discussion. 

These are general guidelines. Exceptions may be made on a case by case basis.

## Namespaces

### See: [namespaces file](./Namespaces.md)

This file contains all informations about all the used namespaces and loaded datapacks.

## Utilities

Here is a list of things you can use to improve the performances of the server

### Utils datapack

This datapack has two roles:
1. Provide more function tags
2. Fetch some common data (like player position)

More info on [HERE](./utils/info.md)

