# Windows-10-21H1

[![made-with-powershell](https://img.shields.io/badge/PowerShell-1f425f?logo=Powershell)](https://microsoft.com/PowerShell)
![Static Badge](https://img.shields.io/badge/Windows%2010-blue)
![Static Badge2](https://img.shields.io/badge/Gaming-red.svg?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEiIHdpZHRoPSI2MDAiIGhlaWdodD0iNjAwIj48cGF0aCBkPSJNMTI5IDExMWMtNTUgNC05MyA2Ni05MyA3OEwwIDM5OGMtMiA3MCAzNiA5MiA2OSA5MWgxYzc5IDAgODctNTcgMTMwLTEyOGgyMDFjNDMgNzEgNTAgMTI4IDEyOSAxMjhoMWMzMyAxIDcxLTIxIDY5LTkxbC0zNi0yMDljMC0xMi00MC03OC05OC03OGgtMTBjLTYzIDAtOTIgMzUtOTIgNDJIMjM2YzAtNy0yOS00Mi05Mi00MmgtMTV6IiBmaWxsPSIjZmZmIi8+PC9zdmc+)
![Config](https://img.shields.io/badge/Configuration%20Files-8A2BE2)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
![GitHub last commit (branch)](https://img.shields.io/github/last-commit/gzachariadis/Windows-10-21H1/main)

![GitHub Release Date - Published_At](https://img.shields.io/github/release-date/gzachariadis/Windows-10-21H1)

![GitHub repo size](https://img.shields.io/github/repo-size/gzachariadis/Windows-10-21H1)

<br>

<h1 align="center">
 <img src="https://github.com/gzachariadis/Windows-10-21H1/blob/main/Windows.gif?raw=true">
  <br />
  Windows 10 Pro N 
</h1>

<p align="center">
  <i align="center"> A Comprehensive Configuration Guide for a Bloat-free and Responsive Gaming Windows Installation 🚀</i>
</p>
<br>


# Components

# Windows Features

# Language Packs

# Drivers

# Registry Tweaks

I have tried to do Extensive Research on each Registry Tweak and introduce comments on what exactly each tweak does. 

**Before!** you use any tweak(s) ensure you read the comment(s) inside the .reg (labeled with semicolon) to see what it really changes. 

#### **Please backup your registry before any changes or use a Virtual-Machine or a spare computer. I am not liable for any problems that arise from executing these.**

The tweaks contain **Sources** that have useful information around each individual tweak. Please do open those and do your own research before applying changes to your system.

On that note, feel free to open issues about inaccurate information you may find, or to add more registry tweaks, as I am always on the look-out for new ones.

The [Sources](#Bibliography) where I gathered registry tweaks that can be found under this repository, are at the bottom of this file.

## Categories (A-Z)

### Appearance & Personalization

* [Set Default Display Scaling](Pre-Install/NtLite/Registry/Appearance%20&%20Personalization/Set%20Default%20Display%20Scaling%20Windows%2010.reg) 

* [Enable Automatically Hide Scroll Bars in Windows 10 Apps](Pre-Install/NtLite/Registry/Appearance%20&%20Personalization/Enable%20Automatically%20Hide%20Scroll%20Bars%20in%20Windows%2010%20Apps.reg) 

* [Disable Screen Savers](Pre-Install/NtLite/Registry/Appearance%20&%20Personalization/Disable%20Screen%20Savers.reg) 

* [Disable Visual Feedback](Pre-Install/NtLite/Registry/Appearance%20&%20Personalization/Disable%20Visual%20Feedback.reg) 


### Cache

### Context Menu

### Control Panel

### File Explorer

* [Remove Useless icons from This PC View](Pre-Install/NtLite/Registry/File%20Explorer/Remove%20Useless%20icons%20from%20This%20PC%20View.reg) 

### Gaming Optimization

* [Disable Xbox Game Bar](Pre-Install/NtLite/Registry/Gaming%20Optimization/Disable%20Xbox%20Game%20Bar.reg) 

### Hardware

#### Physical Devices

##### Keyboard

* [Speed-up Keyboard Layout Switch](Pre-Install/NtLite/Registry/Hardware/Physical%20Devices/Keyboard/Speed-up%20Keyboard%20Layout%20Switch.reg) 

* [Highlight Misspelled Words OFF](Pre-Install/NtLite/Registry/Hardware/Physical%20Devices/Keyboard/Highlight%20Misspelled%20Words%20OFF.reg) - Disable the Windows 10 option to Highlight Misspelled Words.

* [Autocorrect Misspelled Words OFF](Pre-Install/NtLite/Registry/Hardware/Physical%20Devices/Keyboard/Autocorrect%20Misspelled%20Words%20OFF.reg) - Disable the Windows 10 option to Autocorrect Misspelled Words.

##### Removable Drives

* [Disable System Volume Information Folder for Removable Drives](Pre-Install/NtLite/Registry/Hardware/Physical%20Devices/Removable%20Devices/Disable%20System%20Volume%20Information%20Folder%20for%20Removable%20Drives.reg) 

### Networking

* [Disable Administrative Shares](Pre-Install/NtLite/Registry/Networking/Disable%20Administrative%20Shares.reg) - Administrative Shares are used in Windows to remotely access and manage a computer. They carry security risks if mismanaged and unnecessary for Gaming. 

### Power

### Programs

#### One Drive 

* [Disable OneDrive Move](Pre-Install/NtLite/Registry/Programs/One%20Drive/Disable%20OneDrive%20Move.reg) 

* [Remove Pinned Microsoft OneDrive icon from Windows Explorer](Pre-Install/NtLite/Registry/Programs/One%20Drive/Remove%20Pinned%20Microsoft%20OneDrive%20icon%20from%20Windows%20Explorer.reg)

##### PowerToys

* [Disable PowerToys SCOOBE Dialog](Pre-Install/NtLite/Registry/Programs/PowerToys/Disable%20PowerToys%20SCOOBE%20Dialog.reg)

##### Visual Code Studio

* [Disable Visual Code Telemetry](Pre-Install/NtLite/Registry/Programs/Visual%20Code%20Studio/Disable%20Visual%20Code%20Telemetry.reg)

##### Edge

* [Remove Bing Discover Button from Edge](Pre-Install/NtLite/Registry/Programs/Edge%20Browser/Remove%20Bing%20Discover%20Button%20from%20Edge.reg)


### Security

### Storage & Memory

### Tracking & Telemetry

* [Disable Automatic Installation of PC Health Application](Pre-Install/NtLite/Registry/Tracking%20&%20Telemetry/Disable%20Automatic%20Installation%20of%20the%20PC%20Health%20Check%20Application.reg) 

* [Block Windows 11 - 22H2](Pre-Install/NtLite/Registry/Windows%20Updates/Block%20Windows%2011%20-%2022H2.reg) - Block Windows 11 from Installing by pinning Windows 10 to specified branch and disable upgrading to the Windows 11;

### Windows Features

* [Disable Advanced Indexing](Pre-Install/NtLite/Registry/Windows%20Features/Disable%20Advanced%20Indexing.reg) - Prevent Windows from creating and manage a Search Index to show search results quickly, by scanning your Files.

* [Disable App Launch Tracking](Pre-Install/NtLite/Registry/Windows%20Features/Disable%20App%20Launch%20Tracking.reg) - App Launch Tracking is a Windows 10 feature that can show you a list of most used apps in the Start Menu.

* [Are You Sure You Want to Run This File](Pre-Install/NtLite/Registry/Windows%20Features/Are%20You%20Sure%20You%20Want%20to%20Run%20This%20File.reg) - Disables the prompt saying "The publisher could not be verified. Are you sure you want to run this software?" for most file types.

* [Turn AutoPlay OFF](Pre-Install/NtLite/Registry/Windows%20Features/Turn%20AutoPlay%20Off.reg) - Disables the AutoPlay Windows Feature which determines what to do with a new device automatically.

### Windows Settings

* [Disable Changing Date and Time Formats](Pre-Install/NtLite/Registry/Windows%20Settings/Disable%20Changing%20Date%20and%20Time%20Formats.reg) - Disable the Option of Changing System Time and Date Formats.

* [Enable Changing Desktop Icons](Pre-Install/NtLite/Registry/Windows%20Settings/Enable%20Changing%20Desktop%20Icons.reg) - Enable the Option of Deciding which icons to the displayed in Desktop.

* [Disable Other Device Usage](Pre-Install/NtLite/Registry/Windows%20Settings/Device%20Usage/Disable%20Other%20Device%20Usage.reg) - Disables Every Device Usage Scenario except Gaming. Doesn't enable Gaming either though.

* [Enable Gaming Device Usage](Pre-Install/NtLite/Registry/Windows%20Settings/Device%20Usage/Enable%20Gaming%20Device%20Usage.reg) 

* [Disable File History](Pre-Install/NtLite/Registry/Windows%20Settings/Disable%20File%20History.reg) - File History is a backup option in Windows 8, 10, and 11 to replace lost, damaged, or deleted files. 

* [Disable Block Downloaded Files](Pre-Install/NtLite/Registry/Windows%20Settings/Disable%20Block%20Downloaded%20Files.reg) - Windows 10 Automatically Blocks Files from Unknown Resources

#### Start Menu & Taskbar

* [Disable Suggestions](Pre-Install/NtLite/Registry/Windows%20Settings/Start%20Menu%20&%20Taskbar/Disable%20Suggestions%20in%20Start%20menu.reg) 
  
* [Disable Suggested Applications](Pre-Install/NtLite/Registry/Windows%20Settings/Start%20Menu%20&%20Taskbar/Disable%20Suggested%20Applications%20in%20Start%20menu.reg) 

### Windows Updates

* [Turn Off Auto-Adjust Active Hours](Pre-Install/NtLite/Registry/Windows%20Updates/Turn%20Off%20Auto-Adjust%20Active%20Hours.reg) 


# Services

# Post-Setup Scripts

# Unattended Setup

# Applications

# Maintenance

### Scripts

* [clean_updates.cmd](Scripts/Before%20Windows%20Updates/clean_updates.cmd) - Remove all installed outdated and no longer needed Microsoft Windows updates from **WinSxS** directory;
  
* [clean_wrea.cmd](/Scripts/Before%20Windows%20Updates/clean_wrea.cmd) - remove all files and directories from $WinREAgent directory;

<br>

# Bibliography

- [Wincfgs](https://github.com/xvitaly/wincfgs/tree/master)




