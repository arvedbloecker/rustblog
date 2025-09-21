+++
title = "Creating a system is fun, maintaining it sucks"  
date = 2025-09-21  
template = "post.html"  
[extra]  
synopsis = "When maintaining a system I always get confused about what I did in the past. This leads to me being more fearful than I want to be when the system is relevant."  
+++

Setting up a home server is great. I decided to dive into the world of self-hosting some time ago, and it is really awesome. The philosophy of owning your own data is something I can get behind, but what speaks for it even more in my opinion is how great the open-source software is. I never look back at OneDrive thanks to Nextcloud. However, this is not the point I’m trying to make. **The biggest advantage of self-hosting is that you learn a lot—then some time goes by and you realize that you also have to maintain it.**

## Setting up a system is fun

When you’re confronted with the idea of a home server, it’s really scary. You have to pay a lot of money for hardware and invest a lot of time just to get it running. I ran the numbers and realized I will never recoup my costs by using it only as storage, but whatever, I wanted to expand my skills. So I bought the hardware and I asked my colleagues what software to use and how to expose it to the internet. I wanted to create my server from the ground up, properly.

I don’t regret it the setup i created, I think I did a lot of things right from the start thanks to the software recommendations I received. But now, half a year later, I look back in fear. Building new features on top of it seems straightforward, but changing something that already works is terrifying. I don’t want to lose access to my Nextcloud by misconfiguring one or two settings. I read the documentation half a year ago, but now I’ve forgotten what variables I set and where i set them. There is a long chain of software connected to it, and although I have a solid understanding of my setup, I’m not sure I could reproduce every step from memory.

## Maintaining it sucks

It’s easy to shut it down and recreate it from scratch. My ability to learn hasn’t diminished, I could just destroy the server, rebuild it, and thus know exactly what I did. The system would be offline for a while, but since I’m the only one storing my data there, this shouldn’t be a problem. But then, 1 year later, I would face the same issue again. I wouldn’t mind building new stuff on top, but I would be terrified to remove anything. My system would slowly become bloated, and more importantly, I’d be afraid to experiment. Trying out new things and gaining a better understanding of its complexity was my main goal in the first place.

This is where I recommend specific software. I’ve been using NixOS as a [daily driver](https://codeberg.org/arvedbloecker/nixos-config) for a while now and created my own desktop environment around it. For those unfamiliar with NixOS, the idea behind the distribution is that you define your system in a configuration file, and then simply run: `sudo nixos-rebuild switch --flake .#config-name`. It builds your system exactly as specified in the configuration-file. It’s a tedious job to configure everything in the file this way, but once set, you know exactly what system you get. Nix differs a lot from other distributions where you grow them organically. It introduces a layer of abstraction that can make the system harder to understand, so I wouldn’t recommend it to those who want to learn the inner workings of Linux. But for creating a robust system where I can retrace every step, it’s perfect.

First of all, defining your system in one or more files means you’ve documented every configuration. I admit that the configuration language can be hard to read, so adding comments goes a long way. But if I ever break my system, I can simply reload the old configuration file and be confident it will work again. I can finally be more experimental with my setup, knowing I can’t permanently break anything. I can experiment a lot without risking to loose my current setup.

### The world of NixOS

NixOS differs in many ways from traditional distributions. It’s praised by some, even “No Boilerplate” talks about it in a way that almost sounds spiritual. There are many advantages and disadvantages, all stemming from the philosophy of the reproducible environment. I like NixOS so i can create precise programming environments, but i love NixOS for being able to use it like this. I want to remove what I don’t need without fearing that I won’t be able to recreate it in fast and timely manner. In my case, NixOS is an ideal solution. Of course, there are many other approaches, documenting every step manually works just as well. It might be worth a try, when you are trying to create a robust system.

I can finally be reckless aigan.


