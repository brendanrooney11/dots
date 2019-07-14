import subprocess
import sys

def main():
    print(sys.argv)    
    if "emacs" in sys.argv:
        subprocess.run(["cp", '/home/bjr/.emacs.d/init.el', "emacs/"])
        subprocess.run(["cp", "-r", "/home/bjr/.emacs.d/init_files/", "emacs/"])
    if "zsh" in sys.argv:
        subprocess.run(["cp", "/home/bjr/.zshrc", "zsh/"])
    if "i3" in sys.argv:
        subprocess.run(["cp", "-r", "/home/bjr/.config/i3", "i3/"])
    if "i3-blocks" in sys.argv:
        subprocess.run(["cp", "-r", "/home/bjr/.config/i3blocks", "i3blocks/"])

    
if __name__ == "__main__":
    main()
