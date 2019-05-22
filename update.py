import subprocess
import sys

def main():
    print(sys.argv)
    if "emacs" in sys.argv:
        subprocess.run(["mv", "~/.emacs.d/init.el", "emacs/"])
        subprocess.run(["mv", "-r", "~/.emacs.d/init_files/", "emacs/"])
    if "zsh" in sys.argv:
        subprocess.run(["mv", "~/.zshrc", "zsh/"])
    if "i3" in sys.argv:
        subprocess.run(["mv", "-r", "~/.config/i3", "i3/"])
    if "i3-blocks" in sys.argv:
        subprocess.run(["mv", "-r", "~/.config/i3blocks", "i3blocks/"])

    
if __name__ == "__main__":
    main()
