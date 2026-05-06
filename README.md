# A Dracula theme for Rofi, along with a Bash script for a power menu.


## Screenshot
<img width="419" height="269" alt="изображение" src="https://github.com/user-attachments/assets/74772610-4e11-4016-8518-bac3dc8c742c" />

## What is Rofi?

[Rofi](https://github.com/davatorium/rofi) is A window switcher, Application launcher and dmenu replacement. Rofi started as a clone of simpleswitcher and It has been extended with extra features, like an application launcher and ssh-launcher, and can act as a drop-in dmenu replacement, making it a very versatile tool. Rofi, like dmenu, will provide the user with a textual list of options where one or more can be selected. This can either be running an application, selecting a window, or options provided by an external script.

## Installation

* First, Make sure you have the same (stable) version of rofi installed.
  - On MSP / MSPA-based : **`saturn -S rofi`**
  - On Arch / Arch-based : **`sudo pacman -S rofi`**
  - On Debian / Ubuntu : **`sudo apt-get install rofi`**
  - On Fedora : **`sudo dnf install rofi`**



- Then, Clone this repository -
```
git clone https://github.com/port22user/rofi-power-menu-dracula-style.git
```


- Change to cloned directory -
```
cd rofi-power-menu-dracula-style
```


- Make `powermenu.sh` executable -
```
chmod +x powermenu.sh
```


- Edit `powermenu.sh` -
```
nano powermenu.sh
```


- On line 27 in `powermenu.sh` specify logout command for your WM or DE:
```
    # Perform actions based on selection
    case $chosen in
        $shutdown)
            systemctl poweroff ;;
        $reboot)
            systemctl reboot ;;
        $lock)
            loginctl lock-session $XDG_SESSION_ID ;;
        $suspend)
            systemctl suspend ;;
        $logout)
            # i3-msg exit ;; # i3 
            # bspc quit ;; # bspwm
            # openbox --exit ;; # Openbox
            # qtile cmd-obj -o cmd -f shutdown ;; # Qtile
            # hyprctl dispatch exit ;; # Hyprland
            # gnome-session-quit --logout --no-prompt ;; # GNOME
            # xfce4-session-logout ;; # XFCE
            # plasma-quit ;; # KDE Plasma
    esac
```

- Run `powermenu.sh`
```
./powermenu.sh
```













## Thanks for viewing and reading.
### Special thanks to the Ampli Magnus neural network by the Ampersand Software team.
