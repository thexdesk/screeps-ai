# Introduction

In the game of Screeps, there is a complicated relationship between managing your economy, warfare, and territory. In order to achieve these goals, the player must gather `energy`, the most basic resource of the game. However, there are other resources that will amplify the player's efforts:
- [Minerals](http://docs.screeps.com/minerals.html)
- [Credits](http://docs.screeps.com/market.html)
- [Power](http://docs.screeps.com/power.html)
- [Rooms](http://docs.screeps.com/introduction.html#Game-world)
- [Global Control Level](http://docs.screeps.com/control.html#Global-Control-Level)
- [CPU](http://docs.screeps.com/cpu-limit.html)

Whether the player conquers new territory, trades on the market or decides whether to defend a room, the goal is to continue to grow and expand your influence. However, the underlying asset that fuels the engine is `energy`. So we will assume that all these game objectives ultimately seeks to maximize `energy` gain. This is our fundamental metric to evaluate changes to the AI, and all design decisions strive to optimize this. Global changes to the account like GCL (Global Control Level) can change the strategy of the AI due to increased CPU limits and maximum number of rooms that the player can control, which is persistent even after world resets. However, the AI shouldn't specialize behaviour based on the GCL, but instead simply utilize the increased resources available to it at any given level.

We can now define our problem statement for this project:
> Implement a Screeps AI to maximize rate of `energy` gain, and minimize `CPU` usage.
