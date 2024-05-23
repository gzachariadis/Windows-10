# Windows 10 Bloat Remover and Tweaker

This configurable tool provides an interactive command-line interface to aggressively debloat and tweak your Windows 10 installation in an easy way.

![Program screenshot](https://github.com/Fs00/Win10BloatRemover/raw/master/screenshot.png)

Here's what it can do for you:

* **Remove pre-installed UWP apps:** uninstalls the apps specified by the user either for the current Windows user or for all users (see *Configuration* section below, options `UWPAppsToRemove` and `UWPAppsRemovalMode`). When apps are uninstalled for all users, their corresponding provisioned packages are deleted too (if present), so that they won't get reinstalled for new users or after feature updates. 
* **Remove Microsoft Edge:** uninstalls the newer Chromium-based Edge and the legacy UWP version of the browser, which are both pre-installed in recent versions of the OS.
* **Disable OS telemetry:** disables several Windows components that collect diagnostic and usage information such as Compatibility Telemetry, Inventory, Device Census, Customer Experience Improvement Program and others. It also deletes the services which are responsible for data reporting to Microsoft.
* **Remove system services:** deletes - not just disables - the services specified by the user (see *Configuration* section below, option `ServicesToRemove`) after backing up their Registry keys, so that you can restore them if anything breaks.
* **Tweak Windows settings for enhanced privacy:** makes Windows more privacy-respectful by turning off certain system features that put your personal data at risk, such as inking/typing personalization, app launch tracking, clipboard/text messages synchronization, voice activation and some more. Take note that the goal here is to provide a mindful balance that leans towards privacy, without sacrificing too much in terms of user experience.
* **Disable Windows Defender:** disables the antivirus (*not* the firewall) that comes pre-installed on the OS and removes its background services. It also disables SmartScreen protection, as [it sends sensitive data to Microsoft](https://www.bleepingcomputer.com/news/microsoft/windows-10-smartscreen-sends-urls-and-app-names-to-microsoft/). *Only for tech-savvy users!*
* **Remove OneDrive** using the uninstaller provided by Microsoft, its folder in Explorer sidebar will also be hidden. Furthermore, its automatic setup will be disabled to prevent the app from being installed for new users.
* **Remove Windows features:** uninstalls the [Feature-On-Demand (FOD) capabilities](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/features-on-demand-v2--capabilities?view=windows-10) specified by the user (see *Configuration* section below, option `WindowsFeaturesToRemove`).
* **Disable automatic updates:** prevents automatic download and installation of Windows and Store apps updates. Take note that **automatic Windows Updates cannot be disabled on Windows 10 Home.**
* **Disable Windows Error Reporting (WER)**: thanks to this, Windows will no longer "check for a solution to the problem" when a program crashes.
* **Disable consumer features**: turns off several superfluous and distracting features such as Spotlight, News and Interests, Search highlights, Meet Now, automatic installation of suggested apps and some more.
* **Disable suggestions and feedback requests** by changing relevant Group Policies and system settings
* **Disable scheduled tasks** specified by the user (see *Configuration* section below, option `ScheduledTasksToDisable`)

Be aware that while most of these operations can be reverted with a system restore point, **some of them cannot** (uninstalling FODs/provisioned app packages), and carry over after major Windows updates and full system restores.

Unless otherwise specified, operations are applied to all users in the system. However, some of them (*Remove OneDrive*, *Disable suggestions and feedback requests*, *Disable consumer features*, *Disable Windows Defender antivirus* and *Tweak settings for privacy*) can not be fully applied to other users that have been created *before* those operations have been run.  
Therefore, in order to have the maximum effect, it is recommended to **run this tool before creating any other user in the system.**

It is also highly recommended to **re-run the operations every time a Windows feature update is installed** (especially if Windows Upgrade Assistant is used), since all system services and some default settings get restored by the upgrade process.

👉 **Head to [Releases](https://github.com/Fs00/Win10BloatRemover/releases) to download the latest version.**

⚠️ In some rare cases, **Windows Defender might identify the tool as a malware** and quarantine it.  
This is obviously a false positive and is likely due to the fact that the techniques used to disable Defender may resemble some malware-like behavior to the antivirus.  
Release artifacts are built by GitHub Actions from the source code stored in this repository and are provided as-is, with no modifications.

## Configuration
Program settings are stored in [JSON format](https://en.wikipedia.org/wiki/JSON) in a file called *config.json*, located in the same folder as the program's executable. If said file is not found (e.g. when launching the tool for the first time), it is created containing the default settings.

If the program isn't able to load the configuration from the file for some reason, the error will be displayed when the application starts up and options will be populated with their default values.

Inside the settings file, you will find the following options:

### `UWPAppsToRemove`
Configures which pre-installed UWP apps should be uninstalled. Take note that you can't choose to remove single UWP packages but only groups of them, to make configuration less tricky and also because some apps are made of multiple packages (e.g. Xbox) which depend on common services or components that get removed by the program.

**Allowed values:** an array which can contain the following values (each one represents a group of apps - a group can consist in a single app):
* `"AlarmsAndClock"`
* `"Bing"` (Weather, News, Finance and Sports)
* `"Calculator"`
* `"Camera"`
* `"CommunicationsApps"` (Mail, Calendar and People)
* `"Cortana"`
* `"HelpAndFeedback"` (Feedback Hub, Get Help and Microsoft Tips)
* `"Maps"`
* `"Messaging"`
* `"MixedReality"` (3D Viewer, Print 3D and Mixed Reality Portal)
* `"Mobile"` (Your Phone and Mobile plans)
* `"OfficeHub"` (My Office)
* `"OneNote"`
* `"Paint3D"`
* `"Photos"` (after removal, legacy Photo Viewer will be restored for your convenience)
* `"Skype"`
* `"SnipAndSketch"`
* `"SolitaireCollection"`
* `"SoundRecorder"`
* `"StickyNotes"`
* `"Store"`
* `"Xbox"` (Xbox app, Game Overlay and related services)
* `"Zune"` (Groove Music and Movies)

**Default value:** an array containing some of the app groups listed above

### `UWPAppsRemovalMode`
Configures whether to remove UWP apps for all present and future users (which is the default) or just for the current user.

**Allowed values:** `"AllUsers"` or `"CurrentUser"`  
**Default value:** `"AllUsers"`

### `ServicesToRemove`
Configures which system services should be removed by specifying their names.
Take note that for each name you specify, the program will remove the services *whose name starts with the specified name*. This is made in order to include those services whose name ends with a random code.

**Allowed values:** an array containing an arbitrary number of service names  
**Default value:** an array containing a set of services that are deemed superfluous or undesirable for expert users:
* `"dmwappushservice"`
* `"RetailDemo"`
* `"TroubleshootingSvc"` (runs automatic troubleshooters periodically)

### `ScheduledTasksToDisable`
Configures which scheduled tasks should be disabled by specifying their path. You can find the path of each scheduled task in the system with the following PowerShell command: `Get-ScheduledTask | foreach { $_.TaskPath + $_.TaskName }`.

**Allowed values:** an array containing an arbitrary number of scheduled tasks  
**Default value:** an array containing a set of scheduled tasks - mostly related to licensing and diagnostics - that are deemed superfluous or undesirable.

### `WindowsFeaturesToRemove`
Configures which Feature-On-Demand (FOD) capabilities should be removed by specifying their names. As with system services, the program will remove all feature capabilities whose name starts with the names you specify (particularly useful since FODs have their version hardcoded in the name).
You can find the names of all FOD capabilities available for your system (including non-installed ones) with the PowerShell command `Get-WindowsCapability -Online`.

**Allowed values:** an array containing an arbitrary number of FOD capability names  
**Default value:** an array containing a set of FOD capabilities that are deemed superfluous for most users:
  - `"App.StepsRecorder"` (Steps Recorder)
  - `"App.Support.QuickAssist"` (Quick Assist app)
  - `"App.WirelessDisplay.Connect"` (Connect app, pre-installed only on some devices)
  - `"Browser.InternetExplorer"` (Internet Explorer 11)
  - `"Hello.Face"` (Windows Hello face authentication)
  - `"MathRecognizer"` (Math Input Panel, Control and Recognizer)

## Credits
This tool was originally based on Federico Dossena's [Windows 10 de-botnet guide](https://github.com/adolfintel/Windows10-Privacy), which is now discontinued.  
Over time, the program evolved on its own, taking sometimes inspiration from the work made by other open source developers:
  - [**privacy.sexy** website](https://privacy.sexy) by [@undergroundwires](https://github.com/undergroundwires)
  - [**Debloat Windows 10** scripts](https://github.com/W4RH4WK/Debloat-Windows-10) by [@W4RH4WK](https://github.com/W4RH4WK)
  - [Edge Removal script](https://github.com/AveYo/fox) by [@AveYo](https://github.com/AveYo)
