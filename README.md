# Windows-10-21H1

[![made-with-powershell](https://img.shields.io/badge/PowerShell-1f425f?logo=Powershell)](https://microsoft.com/PowerShell)
![CommandPrompt](https://img.shields.io/badge/Command%20Prompt-yellow.svg?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iNDgiIGhlaWdodD0iNDgiIHhtbDpzcGFjZT0icHJlc2VydmUiIHZlcnNpb249IjEuMSIgdmlld0JveD0iMCAwIDQ4IDQ4Ij4KICAgIDxpbWFnZSB3aWR0aD0iNDgiIGhlaWdodD0iNDgiIHhsaW5rOmhyZWY9ImRhdGE6aW1hZ2UvcG5nO2Jhc2U2NCxpVkJPUncwS0dnb0FBQUFOU1VoRVVnQUFBREFBQUFBd0NBWUFBQUJYQXZtSEFBQUFBWE5TUjBJQXJzNGM2UUFBQkRGSlJFRlVhRVB0bWN0TEpGY1V4ci95a1pINFNBOU91MURHVFpKRkZCb0VKMkJFU2JKb3RheEZuQW14QlZHemllQmZJTGh3NzhaZDBIYWptNUVoQ1ZtWmpPQTRJUGhvSHhzZDNJd2E4bGdrMFBSR0JVZnRPc01wNTliMG8rcGExZFd0RWFwQnVpbjYxdjErNS92T3ZiZGFCWGY4cGR4eC9mQUJidHRCM3dIZkFZOFY4Q1BFQlp5YW11b0hjQjlBcWFJb0h3QzRCK0JEQUpYdjNpc1VSU2toSWdKUURPQmpBQTA3T3p1dTZoOElCUDdwNysvL0lSUUsvUzRHWmptd3ZiMzlDa0NqbXp1N0ZTTHVuY3U0UUNEdzk4VEVSTDBNZ0t2azZwV0xFSjRnMTNIUmFOUXN2SlVEUG9CVCsvTHVnS1pwendGMFhQVWFrUG51OUpvWVY2anZyNjZ1V2tkSTA3U1hSUFJsNnNTRkV1RUZVZ2J3Z29pK3RoTHRaVUluVHJxNS85cmFtclVEM2QzZGxoSDZ2N2xnQzZCcDJzKzZyajhSVFpqdnl1VXJtaklIbmhIUmQxWVQ2YnFPeTh0TEZCY1hRMUhlcjc2M0FXa0xvS3JxTXdCcEFDeVF4ZGZXMW1Kd2NCRHo4L000UER3MFFHUzVkWk5wdDg2c3I2OWI5MEJYVjllOG9paVIxS3F5K0xxNk9nd1BENk9zckF3WEZ4ZUlScU00T2pwQ1VWRlJ3WlpiV1FGc0FWUlZmVXBFZmFrOXdMRVpIeDlIWlNXZnk2NWVEREU5UFowR2NaTXJsOVFCQUpGVU1RelEwTkJneElkamt3bVJHYWRDUmtmbzJ0allzSTNRVHdDK3pSU1JUQ2FsRUFjSEJ5YmNUVFMxTFlDcXFyOFEwV01yRWV4RVkyTmpsaE1NTnpzN2k3MjlQYk1uQ2gwbm1RTy9FdEUzZHZ1QWdCZ2FHa3FMRTBQTXpjMWhkM2ZYZ0hEaWdoZElHY0J2Uk5RbDIza1pvcTJ0RFQwOVBXbjd3ZW5wS1VaSFIxRlNVbUwyaVJPUVhKYmlXQ3htM1FPZG5aMnJBTDZ3dXlsWG12ZURwcVltVkZWVm9ibTUyWUJnS0hhQVl5UTJPU2ZpYzNWQkJ2QWF3Q2RXeDJrV1gxOWZqNWFXRnZEbnM3TXpZMmtOaFVLRytQMzkvU3p4aFRwRHlRRGVFQkUvbEtmdHNseGhGcy9SRVJYbmF4eWJsWlVWSEI4ZjMrVHhJaG1MeGN5Y3BqMVNkblIwbUkrVHdnVWh2cjI5M1JBcHJyTURTMHRMU0NRU2poczNYM3ZFNXVhbWRROElnTlNKR0tDdnJ5K3RPYy9QejdHNHVKZ2xQbk1ENUdPSVY5Rzhxb2tqaTdpL1l3Q2VuUE5lWFYyTmNEaHNRREFRaTQvSDQ3Wm5JUjdIeDQzSnlVbVVsNWVicTVMYkR5Y25KeGdaR1VGcGFXbmFtVXNLWUxWNk1FUXdHRFI2WUhsNTJheThyRW5Gb2MrdDZNenZEd3dNR0FDcFR0b0NoTVBockI0UUF4bUMvMUtmQjJUeDRKak56TXg0MVk5TUFKNXphMnZMdWdjRVFEN1djQWJnQ0ZWVVZPUU1JU0lrTmtlaFN3YndGeEU5dER0S3VObDQySzNVSnM2MUtMenlpVk93RTRBWUVYMmV1UTlZYld6NWdMUzd4M1VybDYwRHZiMjlNNGxFNG52K0JibVFvcThUS0p1N3BxYm1ZR0ZoNFZNQm4vWGJhQ1FTK1RFZWovT3Z2dytJNkRNQVZkZEU1ejhpK2hkQVF0ZjFwS0lvSHdGNFZJZ0NCSVBCUDhiR3hyNXFiVzM5MHhZZzU0NjdwWUgrZjJodXFmRG10TDREdmdNZUsrQkh5R01CUFE5L0N6bHkyM3gyZ1FjaEFBQUFBRWxGVGtTdVFtQ0MiLz4KICA8L3N2Zz4=)
![Windows 10 Badge](https://img.shields.io/badge/Windows%2010%20Pro%20N-blue.svg?logo=data:image/svg%2bxml;base64,PHN2ZyBlbmFibGUtYmFja2dyb3VuZD0ibmV3IDAgMCAyNDk5LjYgMjUwMCIgdmlld0JveD0iMCAwIDI0OTkuNiAyNTAwIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciPjxwYXRoIGQ9Im0xMTg3LjkgMTE4Ny45aC0xMTg3Ljl2LTExODcuOWgxMTg3Ljl6IiBmaWxsPSIjZjE1MTFiIi8+PHBhdGggZD0ibTI0OTkuNiAxMTg3LjloLTExODh2LTExODcuOWgxMTg3Ljl2MTE4Ny45eiIgZmlsbD0iIzgwY2MyOCIvPjxwYXRoIGQ9Im0xMTg3LjkgMjUwMGgtMTE4Ny45di0xMTg3LjloMTE4Ny45eiIgZmlsbD0iIzAwYWRlZiIvPjxwYXRoIGQ9Im0yNDk5LjYgMjUwMGgtMTE4OHYtMTE4Ny45aDExODcuOXYxMTg3Ljl6IiBmaWxsPSIjZmJiYzA5Ii8+PC9zdmc+)
![Gaming Badge](https://img.shields.io/badge/Gaming-red.svg?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEiIHdpZHRoPSI2MDAiIGhlaWdodD0iNjAwIj48cGF0aCBkPSJNMTI5IDExMWMtNTUgNC05MyA2Ni05MyA3OEwwIDM5OGMtMiA3MCAzNiA5MiA2OSA5MWgxYzc5IDAgODctNTcgMTMwLTEyOGgyMDFjNDMgNzEgNTAgMTI4IDEyOSAxMjhoMWMzMyAxIDcxLTIxIDY5LTkxbC0zNi0yMDljMC0xMi00MC03OC05OC03OGgtMTBjLTYzIDAtOTIgMzUtOTIgNDJIMjM2YzAtNy0yOS00Mi05Mi00MmgtMTV6IiBmaWxsPSIjZmZmIi8+PC9zdmc+)
![Greece](https://img.shields.io/badge/Greece-blue.svg?logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHNoYXBlLXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiB0ZXh0LXJlbmRlcmluZz0iZ2VvbWV0cmljUHJlY2lzaW9uIiBpbWFnZS1yZW5kZXJpbmc9Im9wdGltaXplUXVhbGl0eSIgZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIHZpZXdCb3g9IjAgMCA1OC40MSA0MC42MyI+PGcgZmlsbC1ydWxlPSJub256ZXJvIj48cGF0aCBmaWxsPSIjMEQ1RUFGIiBkPSJNMy4yMSAwSDU1LjJjMS43NyAwIDMuMjEgMS40NCAzLjIxIDMuMjF2MzQuMjFjMCAxLjc3LTEuNDQgMy4yMS0zLjIxIDMuMjFIMy4yMUMxLjQ0IDQwLjYzIDAgMzkuMTkgMCAzNy40MlYzLjIxQzAgMS40NCAxLjQ0IDAgMy4yMSAweiIvPjxwYXRoIGZpbGw9IiNmZmYiIGQ9Ik0xMS45OCAwdjguODRoOS4xOXYtNC42aDM3LjI0djQuNkgyMS4xN3Y0LjU5aC05LjE5djkuMThoNDYuNDN2NC42SDB2LTQuNmg3LjM5di05LjE4SDBWOC44NGg3LjM5VjBoNC41OXptNDYuNDMgMTMuNDN2NC41OUgyMS4xN3YtNC41OWgzNy4yNHptMCAxOC4zN3Y0LjU5SDBWMzEuOGg1OC40MXoiLz48L2c+PC9zdmc+)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)


![GitHub last commit (branch)](https://img.shields.io/github/last-commit/gzachariadis/Windows-10-21H1/main)
![GitHub (Pre-)Release Date](https://img.shields.io/github/release-date-pre/gzachariadis/Windows-10-21H1?logo=github&label=Latest%20Release)
![GitHub commits since latest release (by SemVer including pre-releases)](https://img.shields.io/github/commits-since/gzachariadis/Windows-10-21H1/Release?logo=github&label=Commits%20Since%20Latest%20Release)

![GitHub repo size](https://img.shields.io/github/repo-size/gzachariadis/Windows-10-21H1)

<br>

<h1 align="center">
 <img src="https://www.imghippo.com/images/1698483472.png?raw=true">
  <br />
  Windows 10 Pro N 
</h1>

<p align="center">
  <i align="center"> A Comprehensive Configuration Guide for a Bloat-free and Responsive Gaming Windows Installation 🚀</i>
  <br>
  <br>
  <i align="center"><b>Latest Verified Version</b></i>
  <br>
  <br>
  <i align="center">Windows 10 Pro N, version 22H2 [19045.3570] (Updated October 2023)</i>
</p>

<h1 align="center">Windows ISO Building and Tweaking (Pre-Install)</h1>

<div>This repository is used as a virtual storage space for everything I have managed to track down and use over the years, in my effort of creating, optimizing and maintaining my Gaming System. My main goal is to keep my System working as optimally as possible, and remove anything extra out of Windows 10. This is not meant to be a universal build you will copy verbatim and have it work for you. This is also not, a tweaked operating system you can use for anything else but <b>Gaming</b>.</div>
<br>
<div>This took me a while to compile, work on, and test, so feel free to leave a star if you felt it's useful or helped you in any way.</div>

## Components

## Windows Features

## Language Packs

## Drivers

## Registry Tweaks

I have tried to do Extensive Research on each Registry Tweak and introduce comments on what exactly each tweak does. 

**Before!** you use any tweak(s) ensure you read the comment(s) inside the .reg (labeled with semicolon) to see what it really changes. 

#### **Please backup your registry before any changes or use a Virtual-Machine or a spare computer. I am not liable for any problems that arise from executing these.**

The tweaks contain **Sources** that have useful information around each individual tweak. Please do open those and do your own research before applying changes to your system.

On that note, feel free to open issues about inaccurate information you may find, or to add more registry tweaks, as I am always on the look-out for new ones.

The [Sources](#Bibliography) where I gathered registry tweaks that can be found under this repository, are at the bottom of this file.

## Categories (A-Z)

### Appearance & Personalization

* [Set Default Display Scaling](Pre-Install/Registry-Files/Appearance%20&%20Personalization/Set%20Default%20Display%20Scaling%20Windows%2010.reg) 

* [Enable Automatically Hide Scroll Bars in Windows 10 Apps](Pre-Install/Registry-Files/Appearance%20&%20Personalization/Enable%20Automatically%20Hide%20Scroll%20Bars%20in%20Windows%2010%20Apps.reg) 

* [Disable Screen Savers](Pre-Install\Registry-Files\Appearance%20&%20Personalization\Disable%20Screen%20Savers.reg)
  
* [Disable Visual Feedback](Pre-Install/Registry-Files/Appearance%20&%20Personalization/Disable%20Visual%20Feedback.reg) 


### Cache

### Context Menu

### Control Panel

### File Explorer

* [Remove Useless icons from This PC View](Pre-Install/Registry-Files/File%20Explorer/Remove%20Useless%20icons%20from%20This%20PC%20View.reg) 

* [Disable Show Drive Letters First](Pre-Install/Registry-Files/File%20Explorer/Disable%20Show%20Drive%20Letters%20First.reg) - When you open This PC in File Explorer, you are shown a list of drives. By default, you will see a drive name followed by the drive letter. <sub><sup>**Default Behavior**</sup></sub> 

* [Remove Dropbox from Navigation Pane](Pre-Install/Registry-Files/File%20Explorer/Remove%20Dropbox%20from%20Navigation%20Pane.reg) - This stops Dropbox from Appearing in File Explorer.

### Gaming Optimization

* [Disable Xbox Game Bar](Pre-Install/Registry-Files/Gaming%20Optimization/Disable%20Xbox%20Game%20Bar.reg) 

### Hardware

#### Physical Devices

##### Keyboard

* [Speed-up Keyboard Layout Switch](Pre-Install/Registry-Files/Hardware/Physical%20Devices/Keyboard/Speed-up%20Keyboard%20Layout%20Switch.reg) 

* [Highlight Misspelled Words OFF](Pre-Install/Registry-Files/Hardware/Physical%20Devices/Keyboard/Highlight%20Misspelled%20Words%20OFF.reg) - Disable the Windows 10 option to Highlight Misspelled Words.

* [Autocorrect Misspelled Words OFF](Pre-Install/Registry-Files/Hardware/Physical%20Devices/Keyboard/Autocorrect%20Misspelled%20Words%20OFF.reg) - Disable the Windows 10 option to Autocorrect Misspelled Words.

##### Removable Drives

* [Disable System Volume Information Folder for Removable Drives](Pre-Install/Registry-Files/Hardware/Physical%20Devices/Removable%20Devices/Disable%20System%20Volume%20Information%20Folder%20for%20Removable%20Drives.reg) 

### Networking

* [Disable Administrative Shares](Pre-Install/Registry-Files/Networking/Disable%20Administrative%20Shares.reg) - Administrative Shares are used in Windows to remotely access and manage a computer. They carry security risks if mismanaged and unnecessary for Gaming. 

* [Disable Mapped Drives in Elevated PowerShell and Command Prompt](Pre-Install/Registry-Files/Networking/Disable%20Mapped%20Drives%20in%20Elevated%20PowerShell%20and%20Command%20Prompt.reg) - Disable Mapped Drives in Elevated PowerShell and Command Prompt

### Power

### Programs

#### One Drive 

* [Disable OneDrive Move](Pre-Install/Registry-Files/Programs/One%20Drive/Disable%20OneDrive%20Move.reg) 

* [Remove Pinned Microsoft OneDrive icon from Windows Explorer](Pre-Install/Registry-Files/Programs/One%20Drive/Remove%20Pinned%20Microsoft%20OneDrive%20icon%20from%20Windows%20Explorer.reg)

##### PowerToys

* [Disable PowerToys SCOOBE Dialog](Pre-Install/Registry-Files/Programs/PowerToys/Disable%20PowerToys%20SCOOBE%20Dialog.reg)

##### Visual Code Studio

* [Disable Visual Code Telemetry](Pre-Install/Registry-Files/Programs/Visual%20Code%20Studio/Disable%20Visual%20Code%20Telemetry.reg)

##### Edge

* [Remove Bing Discover Button from Edge](Pre-Install/Registry-Files/Programs/Edge%20Browser/Remove%20Bing%20Discover%20Button%20from%20Edge.reg)

### Security

### Storage & Memory

### Tracking & Telemetry

* [Disable Automatic Installation of PC Health Application](Pre-Install/Registry-Files/Tracking%20&%20Telemetry/Disable%20Automatic%20Installation%20of%20the%20PC%20Health%20Check%20Application.reg) 

* [Block Windows 11 - 22H2](Pre-Install/Registry-Files/Windows%20Updates/Block%20Windows%2011%20-%2022H2.reg) - Block Windows 11 from Installing by pinning Windows 10 to specified branch and disable upgrading to the Windows 11;

### Windows Features

* [Disable Advanced Indexing](Pre-Install/Registry-Files/Windows%20Features/Disable%20Advanced%20Indexing.reg) - Prevent Windows from creating and manage a Search Index to show search results quickly, by scanning your Files.

* [Disable App Launch Tracking](Pre-Install/Registry-Files/Windows%20Features/Disable%20App%20Launch%20Tracking.reg) - App Launch Tracking is a Windows 10 feature that can show you a list of most used apps in the Start Menu.

* [Are You Sure You Want to Run This File](Pre-Install/Registry-Files/Windows%20Features/Are%20You%20Sure%20You%20Want%20to%20Run%20This%20File.reg) - Disables the prompt saying "The publisher could not be verified. Are you sure you want to run this software?" for most file types.

* [Turn AutoPlay OFF](Pre-Install/Registry-Files/Windows%20Features/Turn%20AutoPlay%20Off.reg) - Disables the AutoPlay Windows Feature which determines what to do with a new device automatically.

* [Disable Find My Device](Pre-Install/Registry-Files/Windows%20Features/Disable%20Find%20My%20Device.reg) - When Find My Device is on, the device and its location are registered in the cloud so that the device can be located. 

* [Enable Run Dialog](Pre-Install/Registry-Files/Windows%20Features/Enable%20Run%20Dialog.reg) - Windows Key + R opens the Run Menu.

* [Disable Shared Experiences](Pre-Install/Registry-Files/Windows%20Features/Disable%20Shared%20Experiences.reg) - Shared Experience allows you to share experiences, send messages, weblinks, and even open apps across multiple devices.

* [Disable Steps Recorder](Pre-Install/Registry-Files/Windows%20Features/Disable%20Steps%20Recorder.reg) -
Steps Recorder (Problem Steps Recorder) assists in troubleshooting problems by capturing a screenshot for every mouse or keyboard click. 

* [Enable Task Manager](Pre-Install/Registry-Files/Windows%20Features/Enable%20Task%20Manager.reg) - The Windows Task Manager is a powerful tool packed with useful information, from your system's overall resource usage to detailed statistics about each process
  
* [Disable USB Write Protection](Pre-Install/Registry-Files/Windows%20Features/Disable%20USB%20Write%20Protection.reg) - Write Protection Mode is a hardware or software feature that prevents the files on a USB drive from being removed, copied or altered.

### Windows Settings

* [Disable Changing Date and Time Formats](Pre-Install/Registry-Files/Windows%20Settings/Disable%20Changing%20Date%20and%20Time%20Formats.reg) - Disable the Option of Changing System Time and Date Formats.

* [Enable Changing Desktop Icons](Pre-Install/Registry-Files/Windows%20Settings/Enable%20Changing%20Desktop%20Icons.reg) - Enable the Option of Deciding which icons to the displayed in Desktop.

* [Disable Other Device Usage](Pre-Install/Registry-Files/Windows%20Settings/Device%20Usage/Disable%20Other%20Device%20Usage.reg) - Disables Every Device Usage Scenario except Gaming. Doesn't enable Gaming either though.

* [Enable Gaming Device Usage](Pre-Install/Registry-Files/Windows%20Settings/Device%20Usage/Enable%20Gaming%20Device%20Usage.reg) 

* [Disable File History](Pre-Install/Registry-Files/Windows%20Settings/Disable%20File%20History.reg) - File History is a backup option in Windows 8, 10, and 11 to replace lost, damaged, or deleted files. 

* [Disable Block Downloaded Files](Pre-Install/Registry-Files/Windows%20Settings/Disable%20Block%20Downloaded%20Files.reg) - Windows 10 Automatically Blocks Files from Unknown Resources

* [Hide Full Details When Deleting a File](Pre-Install/Registry-Files/Windows%20Settings/Hide%20Full%20Details%20When%20Deleting%20a%20File.reg) - When you right-click on any file, you are prompted faced with a prompt this setting determines how much file info is shown under that prompt.

#### Start Menu & Taskbar

* [Disable Suggestions](Pre-Install/Registry-Files/Windows%20Settings/Start%20Menu%20&%20Taskbar/Disable%20Suggestions%20in%20Start%20menu.reg) 
  
* [Disable Suggested Applications](Pre-Install/Registry-Files/Windows%20Settings/Start%20Menu%20&%20Taskbar/Disable%20Suggested%20Applications%20in%20Start%20menu.reg) 

### Windows Updates

* [Turn Off Auto-Adjust Active Hours](Pre-Install/Registry-Files/Windows%20Updates/Turn%20Off%20Auto-Adjust%20Active%20Hours.reg) 

# Services

# Post-Setup Scripts

* [Remove Dropbox from Navigation Pane](Post-Install/Step%201/Scripts/Remove%20Dropbox%20From%20Navigation%20Pane.cmd) - 

# Unattended Setup

<h1 align="center">Windows Live Install (Post-Install)</h1>

<div>If you reached this far, you should have a Live System. From now on, this repository is geared towards keeping this live setup as bloat-free and as consistently performant as possible.</div>

## First Boot

## Applications

## Maintenance

### Scripts

* [clean_updates.cmd](Post-Install/Maintenance/Scripts/Before%20Windows%20Updates/clean_updates.cmd) - Remove all installed outdated and no longer needed Microsoft Windows updates from **WinSxS** directory;
  
* [clean_wrea.cmd](Post-Install/Maintenance/Scripts/Before%20Windows%20Updates/clean_wrea.cmd) - remove all files and directories from $WinREAgent directory;

<br>

## Tips

<div>Please </div>


# Bibliography

- [Wincfgs](https://github.com/xvitaly/wincfgs/tree/master)

- [MajorGeeks Windows Tweaks 2.96](https://www.majorgeeks.com/files/details/majorgeeks_registry_tweaks.html)

- [QuickBoost](https://github.com/SanGraphic/QuickBoost)
