# t2-soup
A collection of packages & dotfiles for my GNU/Linux Setup running on a MacBook Pro with T2 Security Chip.
Mostly for keeping track of configuration changes.

### WIP - more ricing to come
This repo is work-in-progress, I haven't got to including any essential config file yet. I will add custom configurations & documentation over time as I prove what works in every-day use.

Do not blindly apply these files in your setup! (especially as there's nothing here yet :D)

# Tailored for T2 Custom Linux Kernel
Running GNU/Linux on a MacBook comes with it's own caveats, this repository is an attempt on sharing what works with my setup. 
S/O to t2linux.org - which is where I've got my custom ISO from to install EndeavorOS, an Arch based distro, on my MacBook Pro 15" 2018 (A1990). 

# Current Setup
```
$ slowfetch
                     ./o.                  hanspeterolli@arch1990 
                   ./sssso-                --------------- 
                 `:osssssss+-              OS: EndeavourOS Linux x86_64 
               `:+sssssssssso/.            Host: MacBookPro15,1 1.0 
             `-/ossssssssssssso/.          Kernel: 6.13.1-arch1-Watanare-T2-1-t2 
           `-/+sssssssssssssssso+:`        Packages: 1093 (pacman)
         `-:/+sssssssssssssssssso+/.       Shell: bash 5.2.37 
       `.://osssssssssssssssssssso++-      DE: GNOME 47.5 
      .://+ssssssssssssssssssssssso++:     WM: Mutter WM-Protocol: Wayland
    .:///ossssssssssssssssssssssssso++:    Icons: kora [GTK2/3] 
  `:////ssssssssssssssssssssssssssso+++.   Terminal: gjs 
 -////+ssssssssssssssssssssssssssso++++-   CPU: Intel i7-8750H (12) @ 4.100GHz 
  ..-+oosssssssssssssssssssssssso+++++/-   GPU: AMD ATI Radeon RX 460/560D / Pro 450/455/460/555/555X/560/560X 
   ./++++++++++++++++++++++++++++++/:.     GPU: Intel CoffeeLake-H GT2 [UHD Graphics 630] 
   :::::::::::::::::::::::::-------`       Memory: 3155MiB / 15885MiB
                                           Public IP: 198.49.23.144

```
                                           

# WIP Setup

Currently configuring hyprland as seperate WM for more customized experience, while keeping the GNOME environment functional for other, less tech-savvy users of my laptop. 
Again, WIP! Config files will be published soon.

```

                     ./o.
                   ./sssso-                 OS    ➜  EndeavourOS x86_64
                 `:osssssss+-                ├   ➜  Linux 6.13.1-arch1-Watanare-T2-1-t2
               `:+sssssssssso/.              └   ➜  bash 5.2.37
             `-/ossssssssssssso/.
           `-/+sssssssssssssssso+:`         WM    ➜  Hyprland (Wayland)
         `-:/+sssssssssssssssssso+/.         ├ 󰀻  ➜  Papirus [GTK2]
       `.://osssssssssssssssssssso++-        ├   ➜  Bibata-Modern-Ice (24px)
      .://+ssssssssssssssssssssssso++:       ├   ➜  alacritty 0.15.1
    .:///ossssssssssssssssssssssssso++:      └   ➜  FiraCode (12.0pt)
  `:////ssssssssssssssssssssssssssso+++.
`-////+ssssssssssssssssssssssssssso++++-    PC    ➜  Apple Inc. MacBook Pro Type MacBookPro15,1
 `..-+oosssssssssssssssssssssssso+++++/`     ├   ➜  Intel(R) Core(TM) i7-8750H (6) @ 4.10 GHz GHz
   ./++++++++++++++++++++++++++++++/:.       ├ 󰢮  ➜  AMD AMD Radeon Pro Series @  GHz
  `:::::::::::::::::::::::::------``         ├ 󰢮  ➜  Intel UHD Graphics 630 @ 1.10 GHz GHz
                                             ├   ➜  3.45 GiB / 15.51 GiB (22%)
                                             ├ 󰓡  ➜  Disabled
                                             ├ 󰋊  ➜  25.74 GiB / 124.43 GiB (21%) - ext4
                                             ├ 󰋊  ➜  515.35 GiB / 662.82 GiB (78%) - ext4
                                             └   ➜  2880x1800 px @ 60.001 Hz - 330x210 mm (15.40 inches, 220.54 ppi)

```

                                                                   
                                                                   
