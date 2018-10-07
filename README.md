# Mu2-deploy

Deployment files for Mu2.

## Index

* Prerequisites
* Install
* Configuration
* Running

## Prerequisites

Before installing make sure you have git, make, docker and docker-compose installed

## Install

Clone the git repository

```bash
git clone https://github.com/fvdveen/mu2-deploy
```

## Configuration

In the consul KV store in compose edit the bot/config key to have the following items: 
* your discord token
* your desired prefix
* your desired database and database settings
* your desired log settings

### An example config:

Key: bot/config

```json
{
  "log": {
  	"level": "info",
    "discord": {
      "level": "warn",
      "webhook": "MY_DISCORD_WEBHOOK"
    }
  },
  "database": {
  	"type": "postgres",
    "host": "postgres",
    "user": "mu2",
    "password": "mu2",
    "ssl": "disable"
  },
  "bot": {
  	"discord": {
      "token": "MY_DISCORD_TOKEN"
    },
    "prefix": "$"
  }
}
```

Key: search/config

```json
{
    "youtube": {
        "api-key": "MY_YOUTUBE_API_KEY"
    },
    "services": {
        "search": {
            "location": "mu2.service.search"
        }
    }
}
```

If you edit and save the config you should see the bot update itself within a couple of seconds.

## Running

Run docker-compose and you're good to go

```bash
make run
```