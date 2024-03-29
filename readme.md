# Ascent Hide n' Seek - Base

## Offical Server

Coming soon?

## Description

A Hide and Seek gamemode for [GTA](https://www.rockstargames.com/V/) [FiveM](https://fivem.net/) built using the [EssentialMode](https://github.com/kanersps/essentialmode).

One player is randomly choosen to act as the **Seeker**. They will have a police car and must look throughout a designated area for players on the **Hidden** team.

Once found, a player will join the Seeking team and assist the starting Seeker.

Player's earn more points the longer they remain hidden; or if they are seeking, the quicker they find other players.

## Installation

Below are installation instructions for this resource. I recommend using [Git](https://git-scm.com/).

### Git

1. Enter your server's resource directory:

```bash
cd resources/
```

2. Clone the repository:

```bash
git clone https://github.com/Ascent-Roleplay/hns-base.git hns-base
```

3. Add the resource to your `server.cfg`.

```cfg
start hns-base
```

### Manually

Follow the above steps, substitute this for step 2:

2. Download the repository.
    
    2.1. Copy it to your `/resources/` directory.

    2.2. Rename it to `hns-base`. 

## Dependencies

Make sure the following resources are installed and refrenced **before** `hns-base`.

This resource uses existing open-source resources; modified specificly for Ascent Gaming. I advise you use the links below unless you're willing to fix-around errors and issues.

* [**EssentialMode**](https://github.com/kanersps/essentialmode) - Kane
* [**BaseEvents**](https://github.com/citizenfx/cfx-server-data/tree/master/resources/%5Bsystem%5D/baseevents) - CitizenFX Team
* [**Chat**](https://github.com/Ascent-Gaming/citizenfx-chat) - Ascent & CitizenFX Teams