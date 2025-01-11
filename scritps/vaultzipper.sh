#!bin/bash
VAULT_NAME='The Seed'; #change this in case of vault name change
VAULT_PATH="$HOME/obsidian/" #change if the obsidian valt is in other directory
OUTPUT_PREFIX='theseed' #prefix for zipped file names, change if judge necessary

echo 'vault name: '$VAULT_NAME;
echo 'vault path: '$VAULT_PATH;

DATE=$(date "+%Y-%m-%d-%H-%M-%S")
OUTPUT_FILE_NAME="$OUTPUT_PREFIX-"$DATE

if [[ $(test -d $VAULT_PATH"$VAULT_NAME"; echo $?) -gt 0 ]];
then
    echo "vault not found. see if path and vault name follows the default VAULT_NAME and VAULT_PATH in the script. aborted."
    exit 1
fi

#check if date is available
EXIT_STATUS=$(date --version > /dev/null; echo $?)
if [[ $EXIT_STATUS -gt 0 ]];
then
    echo "date command missing. aborted.";
    exit 1
fi

#check if zip is available
EXIT_STATUS=$(zip --version > /dev/null; echo $?)
if [[ $EXIT_STATUS -gt 0 ]];
then
    echo "zip missing. aborted.";
    exit 1
fi

#check if backup-zone exist
TEST_STATUS=$(test -d ~/backup-zone; echo $?)
OUTPUT_DIRECTORY=$HOME"/backup-zone/"

if [[ TEST_STATUS -gt 0 ]];
then
    echo -e "\033[33mwarning\033[0m: no backup-zone found. creating a new one at $(echo ~)";
    MKDIR_STATUS=$(mkdir ~/backup-zone/; echo $?);
    if [[ MKDIR_STATUS -gt 0 ]];
    then
        echo -e "\033[33mwarning\033[0m: failed to create a backup-zone, output directory is currently: $OUTPUT_DIRECTORY"
        OUTPUT_DIRECTORY=$(pwd)"/";
    fi
fi

OUTPUT_FILE_NAME=$OUTPUT_DIRECTORY"theseed-"$DATE

echo "zipping, can take a while..."
ZIP_STATUS=$(zip -r $OUTPUT_FILE_NAME $VAULT_PATH"$VAULT_NAME"; echo $?);
if [[ $ZIP_STATUS -gt 0 ]];
then
    echo "compression failed for unknown reason. aborted";
    exit 1
else
    echo "compressed file save at $OUTPUT_FILE_NAME";
fi
