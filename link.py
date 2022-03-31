#!/usr/bin/env python3

from os import listdir, system
from pathlib import Path


def main() -> None:
    BACKUP_PATH = "./backup/"
    # print("Remove Existing files...\n")
    system("mkdir temp")
    dotfiles = open("dotfiles.txt", "r")
    lines = dotfiles.readlines()
    # print("\nBacking up dotfiles...\n")
    for path in lines:
        if len(path.strip()) == 0 or path.find("#") != -1:
            continue
        source = path.strip().translate(" ")
        # target = BACKUP_PATH + source[2:]
        # print("{} ==> {}".format(source, target))
        system("cp -R {} ./temp/".format(source))
    system("code --list-extensions > ./temp/vscode_extensions.txt")
    print("Replacing old files... Enter YES to confirm")
    x = input()
    if x.strip().lower() != "yes":
        print("Aborted!")
        system("trash temp")
        return
    system("trash backup 2>/dev/null")
    system("mv temp backup")


if __name__ == "__main__":
    main()
