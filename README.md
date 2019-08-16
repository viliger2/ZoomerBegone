# ZoomerBegone
![alt text](https://raw.githubusercontent.com/viliger2/ZoomerBegone/master/images/options.png)

ZoomerBegone is an addon to filter Twitch chat emotes off the World of Warcraft chat. Main features:

- 3 modes to filter the mesasges, including integration with [Global Ignore List and Spam Filter](https://www.wowinterface.com/downloads/info23413-GlobalIgnoreListandSpamFilter.html) addon.
- Ability to select which chat channels are filtered.
- Filtering for all general Twitch chat emotes and top ones from BTTV.

Type /zb or /zoomerbegone for additional information in-game.

FEATURES:

- There are 3 modes to filter messages:
  - "Remove emote" - removes emotes from the message without removing the message itself. It also hides the message if there is nothing but emotes in the message (as in the message becomes empty after the removal).
  - "Remove message" - filters the message and hides it completely from the chat.
  - "Ignore player" - adds the sender to the ignore list. If GlobalIgnoreList is installed it adds additional info of why the person was ignored.
- Filtering for each channel can be individually turned on and off. All Classic channels are included, except Battle.Net messages. After all, if you want to filter Twitch chat, why do you have Twitch chat spewing friends?

It was written and tested on retail version of WoW, however I am going to use it for Classic (and the addon features 1.13 version in the .toc file), but chat API is unchanged between Classic and Retail so it should work in both versions, just tick "Load out of date addons" on the character login screen and all should work nicely.

There is one limitation - it doesn't filter speech bubbles. But as far as I am aware there is no way to edit them, you either seem them or don't.

Feel free to ask me to add additional emotes (however, I think those are way to specific to be worth the CPU load they would cause) and features.

A big thanks to Frankfurter1988 for beta testing the addon before Classic release.
