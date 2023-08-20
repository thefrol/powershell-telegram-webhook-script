# Enable/disable Telegram webhook for Telegram bot developers

Disable and activate webhook for your bot in one command

    script/activate-webhook.ps1

When developing a Telegram bot it is useful sometimes to run your bot locally for debugging. But to do that a developer should disable the webhook, he must recall its `token`, and api command to do this. This is annoying and stops developer from kindly working. So my project releases this pain. 

Just configure your token one time and disable/enable webhook in a second. He'll be there when you need it

Also! 

+ Supports various environments, such as `dev` or `prod`
+ And automaticly adds conf files to `.gitignore`
+ Used to update your webhooks if you make a new server

# Install

Install `Powershell-Yaml` module

    Install-Module Powershell-Yaml

Download `activate-webhook.ps1`

    git clone https://github.com/thefrol/powershell-telegram-webhook-script scripts

Initialize it

    ./scripts/activate-webhook -Init

Edit `.webhook` file with config

    default: dev
    profiles:
        dev:
            token: token_for_develop_bot
            url: https://your_webhook_url
        prod:
            token: token_for_prod_bot
            url: https://your_webhook_url

# Usage

To activate Webhook use:

    ./scripts/activate-webhook

To deactivate Webhook use:

    ./scripts/activate-webhook -Delete

# Environments

By default uses `dev` profile, but you can use any. This command will activate `prod` webhook

    ./scripts/activate-webhook prod
