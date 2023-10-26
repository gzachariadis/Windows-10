# Windows-10-21H1

My Configuration for Windows 10-21H1 for Backup Purposes.

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

### Security

### Storage & Memory

### Tracking & Telemetry

* [Disable Automatic Installation of PC Health Application](Pre-Install/NtLite/Registry/Tracking%20&%20Telemetry/Disable%20Automatic%20Installation%20of%20the%20PC%20Health%20Check%20Application.reg) 

* [Block Windows 11 - 22H2](Pre-Install/NtLite/Registry/Windows%20Updates/Block%20Windows%2011%20-%2022H2.reg) - Block Windows 11 from Installing by pinning Windows 10 to specified branch and disable upgrading to the Windows 11;

### Windows Features

### Windows Settings

#### Start Menu & Taskbar

* [Disable Suggestions](Pre-Install/NtLite/Registry/Windows%20Settings/Start%20Menu%20&%20Taskbar/Disable%20Suggestions%20in%20Start%20menu.reg) 
  
* [Disable Suggested Applications](Pre-Install/NtLite/Registry/Windows%20Settings/Start%20Menu%20&%20Taskbar/Disable%20Suggested%20Applications%20in%20Start%20menu.reg) 

### Windows Updates












# Services

# Post-Setup Scripts

# Unattended Setup

# Applications

<br>

# Bibliography

- [Wincfgs](https://github.com/xvitaly/wincfgs/tree/master)




