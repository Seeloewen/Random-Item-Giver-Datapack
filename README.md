# Random Item Giver Datapack

![GitHub all releases](https://img.shields.io/github/downloads/Seeloewen/Random-Item-Giver-Datapack/total?style=for-the-badge)

Ever wanted to get an item every 10 seconds? Or maybe a whole stack of items at random intervals?
With the Random Item Giver, you can get a random item at a time interval of your choosing.\
You can access all the ingame dialogs and settings for the datapack using **/trigger RandomItemGiver**. This menu can also be accessed when doing **/reload**.

If you have any questions, check the FAQ or open a new issue. It usally doesn't take long for me to answer.
For faster support, better information about the updates and much more, I suggest you join my Discord Server!\
https://discord.gg/pUGzCU2mk3

The datapack can also be found on Planetminecraft!\
https://www.planetminecraft.com/data-pack/random-item-giver-datapack-1-0-0-minecraft-1-16-2

## Customization
There are a bunch of customization options to personalize your experience! A few examples would be...
* A bossbar that displays the timer
* A scoreboard that shows how many items everyone received
* A message and sound when receiving items
* Toggles for several item groups that may show up too often
* And much more!
<img width="1648" height="1080" alt="image" src="https://github.com/user-attachments/assets/a3a7bc6c-6c5d-4611-913d-9eff443889c3" />

## Adding items
Since the datapack pulls its items from loot tables, you are free to add your own custom items to the datapack. This can be both items with specific nbt data or even modded items!
Simply add an entry to the loot table that your item corresponds, with the correct id and prefix. To assist with adding items to the Random Item Giver, I have provided several tools.
* The Seeloewen ItemDumper can extract a list of all registered item ids from the game: https://www.curseforge.com/minecraft/mc-mods/seeloewen-itemdumper
* The Random Item Giver Legacy can be used to configure and add items to the datapack without needing to edit the loot table directly: https://github.com/Seeloewen/Random-Item-Giver-Updater-Legacy/releases

This could be an example of a modded item:\
<img width="399" height="403" alt="image" src="https://github.com/user-attachments/assets/1bf6d5d5-c959-4908-9306-ad87d821904c" />

## FAQ
**Q**: I want to use another version of the Datapack. Where can I find it?\
**A**: You can find other versions, like older versions or modified versions in the Builds folder in this GitHub repository.

**Q**: Can I upload a video in which I use this datapack?\
**A**: Yes, you can. You can also put a link to the datapack in the video description, that would be a great way to support me!

**Q**: How can I use this datapack on a server?\
**A**: Installing the datapack on a server is actually quite simple. Open up the server directory > 'world' > 'datapacks' and paste the datapack zip file in there.

**Q**: Which items are you able to get?\
**A**: Every single one in the game as of 1.21.11.

**Q**: How can I change the item timer?\
**A**: You can change the rate at which items are given to you in the settings menu of the datapack.

**Q**: What versions of Minecraft is the datapack available for?\
**A**: A list of all supported versions can be found in the Security.md file in this repository.

**Q**: I see menus and messages of the datapack appearing but don’t get any items!\
**A**: If some components of the datapack are working but you don’t get any items, then it’s most likely a version issue. Make sure the version of your game matches the version the datapack was made for.

**Please note that I most likely won't backport the datapack to older versions as it utilises a lot of 1.16+ features and porting them into an older version is really time consuming and would need a lot of modifications.**

## Downloads
If you want to download the latest versions of the datapack, I recommend going to 'Releases' and getting the newest download available for your desired version.\
In case you need an older download, you might have better luck finding it in the 'Builds' folder. Besides containing all of the latest downloads, there is also a folder for versions prior to 2022.

## Credits
This datapack is a rework of Phoenix SC's original version which was only available for 1.14.4. Special thanks to Phoenix SC for allowing me to continue working on this project and sharing it. Without him, this datapack wouldn't have been possible. (**https://www.youtube.com/c/PhnixhamstaSC**)

Older versions of this datapack also use the Random Number Generator by CloudWolf. (**https://www.youtube.com/channel/UCZnBqVITQ0dloqUU0fGxY3g**)

You can find a list of all the amazing people who helped me by contributing to the pack in the CREDITS.txt in the root folder of the datapacks for the different versions (not the root of the repository!) and in older versions through the ingame menu.

**Important Note: I am not responsible for anything that breaks when using this pack. If something goes wrong, you can open an issue and I'll try to help. If you use this pack in your one of your maps or projects, then please credit me.**
