# Run Appium 1 and 2 Globally
When you install Appium with

`npm install -g appium`

you will get Appium 1. Installing Appium 2 can be done with 

`npm install -g appium@next`

> The `@next` is there to because it's still in beta. 

But when you install Appium 2 globally, with `-g`, it will overwrite the Appium 1 installation. 
So you can't run both at the same time. In some cases you want to run Appium 1 and Appium 2 next to each other 
as global commands and by following the steps below you can do that.

> **NOTE 1:**\
> This project assumes you have installed Appium 1 as a global with `npm install -g appium`

> **NOTE 2:**\
> This document only works for a Mac. If you are on Windows/Linux, you will need to modify the commands to work for your OS. A PR for the docs is always welcome :bowtie:

## Installation of this project
1. Clone this project with `git clone https://github.com/wswebcreation/appium-1-and-appium2-globally-installed.git`
2. Go to the project folder with `cd appium-1-and-appium2-globally-installed`
3. Install the project with `npm install`
4. Get the full path to the project folder with `pwd` and copy this path
5. Open your `.bash_profile` with `open ~/.bash_profile`, or if you are using zsh, open your `.zshrc` with `open ~/.zshrc`
6. Add the following lines to the end of your `.bash_profile` and replace the path with the path you copied in step 4
   ```logs
   export APPIUM2_PATH={path-from-step-4}
   alias appium2=$APPIUM2_PATH/appium2.sh
   ```
7. Save the file and close it
8. Run `source ~/.bash_profile` or `source ~/.zshrc` to reload the file
9. Run the command `appium2` to check if it works, you should see this in the logs:
   ```logs
   ######################################################################
   # You can run appium2 with for example these arguments:              #
   #                                                                    #
   #  appium2 server --log-timestamp --relaxed-security                 #
   #                                                                    #
   # This will:                                                         #
   # - start the server:                                                #
   # - add additional timestamps to the logs                            #
   # - run in 'relaxed security mode'                                   #
   #                                                                    #
   # Check the Appium docs at                                           #
   # https://github.com/appium/appium                                   #
   # for more information                                               #
   ######################################################################
   ```

## Installing Appium 2 drivers
Run the command `appium2 driver install {driver-name}` to install a driver, for the XCUITest driver it will be

```sh
appium2 driver install xcuitest
```

which will result in the following logs

```logs
######################################################################
# Appium2 will be started with the following command line arguments: #
# driver install xcuitest
######################################################################
npm WARN config init.license Use `--init-license` instead.

> appium-1-and-appium2-globally-installed@1.0.0 appium2
> node ./appium2.js "driver" "install" "xcuitest"

npm⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂) ⠦ : timing config:load:flatten Completed in 5ms
WARN config init.license Use `--init-license` instead.
- Installing 'xcuitest' using NPM install spec 'appium-xcuitest-driver'
✔ Installing 'xcuitest' using NPM install spec 'appium-xcuitest-driver'
ℹ Driver xcuitest@4.12.1 successfully installed
- automationName: XCUITest
- platformNames: ["iOS","tvOS"]
closing code: 0⠂⠂⠂⠂) ⠦ : timing config:load:flatten Completed in 5ms
```

## Running Appium 2
If everything went well you can run the server with `appium2 server` and you should see the following logs

```logs 
######################################################################
# Appium2 will be started with the following command line arguments: #
# server
######################################################################
npm WARN config init.license Use `--init-license` instead.

> appium-1-and-appium2-globally-installed@1.0.0 appium2
> node ./appium2.js "server"

npm⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂⠂) ⠦ : timing config:load:flatten Completed in 5ms
WARN config init.license Use `--init-license` instead.
[Appium] Welcome to Appium v2.0.0-beta.45 (REV HEAD)Completed in 5ms
[Appium] Attempting to load driver flutter...
[debug] [Appium] Requiring driver at /Users/wimselles/Git/appium2/node_modules/appium-flutter-driver
[Appium] Attempting to load driver uiautomator2...n Completed in 5ms
[debug] [Appium] Requiring driver at /Users/wimselles/Git/appium2/node_modules/appium-uiautomator2-driver
[Appium] Attempting to load driver xcuitest...atten Completed in 5ms
[debug] [Appium] Requiring driver at /Users/wimselles/Git/appium2/node_modules/appium-xcuitest-driver
[Appium] Appium REST http interface listener started on 0.0.0.0:4723
[Appium] Available drivers:
[Appium]   - flutter@1.7.2 (automationName 'Flutter')
[Appium]   - uiautomator2@2.8.0 (automationName 'UiAutomator2')
[Appium]   - xcuitest@4.12.1 (automationName 'XCUITest')
[Appium] No plugins have been installed. Use the "appium plugin" command to install the one(s) you want to use.
```

> **NOTE:**\
> Please check the Appium 2 docs at [https://github.com/appium/appium](https://github.com/appium/appium) for more information