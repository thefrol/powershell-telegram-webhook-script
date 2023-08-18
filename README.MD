# Enable/disable Telegram webhook for Telegram bot developers

Disable and activate webhook for your bot in one command

    script/activate-webhook.ps1

When developing a Telegram bot it is useful sometimes to run your bot locally for debugging. But to do that a developer should disable the webhook, he must recall its `token`, and api command to do this. This is annoying and stops developer from kindly working. So my project releases this pain. 

Just configure your token one time and disable/enable webhook in a second

Also! Supports various environments, such as `dev` or `prod`

# Install

Download `activate-webhook.ps1`
    git clone git@github.com/thefrol/powershell-telegram-webhook-script scripts

Initialize it
    ./scripts/activate-webhook -Init

Edit `.webhook` file with config

# Usage

To activate Webhook use:
    ./scripts/activate-webhook

To deactivate Webhook use:
    ./scripts/activate-webhook -Delete
