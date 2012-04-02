Minecraft Server Launcher
=========================

This is very simple ruby script which launches a minecraft server.

You can execute server commands (e.g. save-all, op, stop, etc.) by simply
redirecting them:

    $ ./launch.rb &
    (server starts)
    $ echo save-all > cmd
    (force saving level)
    $ echo stop > cmd
    (stopping server)

