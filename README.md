

# QuarkOS� Patchable Source
===========================

This README will guide you through the QuarkOS Patching and compiling.

## Base ROM
----------

You first need a Base ROM on top of which QuarkOS can be patched.

So, what base ROM you should take?

QuarkOS supports ROMs with Android 5.1.1 Lollipop and above:

 CyanogenMOD / Lineage OS
 AOSP
 MIUI
 ColorOS
 Or any other ROM.
-----------------------------------------------------------------

## How to do QuarkOS Patch?

Just go through the commits and make changes as directed. Simple, isn't it?

No it's not that simple. You'll know when you do it.


## How to decompile and recompile APKs and Jar for QuarkOS Patching?

Use latest Apktool.jar to do the job. [Download ApkTool: https://ibotpeaches.github.io/Apktool/]

Just use the following commands (without quotes):

### Decompiling

"apktool d -b filename.apk"
"apktool d -b filename.jar"

### Recompiling

"apktool b filename.apk"
"apktool b filename.jar"


## How to deal with public hex values/IDs in smali files? [Must read! IMPORTANT!!]

In some smali files (e.g. Settings.apk\smali\com\android\settings\AboutRom.smali) you may have noticed hex values like "0x7f06006e". Now notice the whole line in AboutRom.smali:

    const v0, 0x7f06006e      ## public xml rom_info
	
Here you can see the hex value and beside it a comment indicating it's property in Settings.apk/res/values/public.xml :

    <public type="xml" name="rom_info" id="0x7f06006e" />   <-- This line you'll find in respective public.xml
	

>> So how does it work?

Ans: Every file in an apk has a unique value which is stored in public.xml in the form of hexadecimal. And if a smali wants to call or use that file, it doesn't use its name, instead it uses this hex value given in public.xml.

So while modding an apk if we add new smali files that use any of these public values then we have to modify the smali files to match with the values given in public.xml of the apk which you are modding.

So this thing has to be done here many of the patches.


>> So how to do it?

First of all add all the files in res and smali which are required for modding the apk. Take for example for modding Setting.apk we decompile it using Apktool.jar and add the files 'rom_info.xml' and 'AboutRom.smali' in 'Settings/res/xml/' and 'Settings/smali/com/android/settings/' respectively.
Here, still the public value/id for 'rom_info.xml' is not yet generated. So how to generate it? This task can easily be done through Apktool. You just need is to recompile the apk and then decompile it again. After this a public id will be generated for rom-info.xml in public.xml which will look like this:

    <public type="xml" name="rom_info" id="0x7f******" />
	
Now you just have to add this public id to the respective smali which uses it, here we have AboutRom.smali. So we will change the line :

    const v0, 0x7f06006e      ## public xml rom_info
	
to

    const v0, 0x7f******      ## public xml rom_info

As you can see above in the line from AboutRom.smali that I have indicated the properties to the public id beside it through a comment (## public xml rom_info) for you perusal.

Writing scheme: '## public' = Editable public ID, 'xml' = file type, 'rom-info' = file name 

If the smali file is huge and you wanna search the editable public IDs just search for '## public', check out the file name and type and search for the same in public.xml. Then copy the required ID from public.xml and replace in the smali file.


You can also use this tool if you like : https://forum.xda-developers.com/android/software/tool-public-id-converter-t3064175


---------------------------


## Apps to be used in QuarkOS:

Calendar: Xperia [http://www.apkmirror.com/apk/sony-mobile-communications/xperia-calendar/] or Asus [http://www.apkmirror.com/apk/zenui-asus-computer-inc/asus-calendar/]

Clock: Xperia [http://www.apkmirror.com/apk/sony-mobile-communications/sony-clock/] or Asus [http://www.apkmirror.com/apk/zenui-asus-computer-inc/clock-zenui-asus-computer-inc-2/]

File Manager: MiXplorer [https://forum.xda-developers.com/showthread.php?t=1523691] 

Calculator: AOSP or Google [http://www.apkmirror.com/apk/google-inc/google-calculator/]

Weather: Xperia [http://www.apkmirror.com/apk/sony-mobile-communications/xperia-weather/]

Audio Recorder: Xperia [http://www.apkmirror.com/apk/sony-mobile-communications/audio-recorder/]

Boost+: HTC [https://www.apkmirror.com/apk/htc-corporation/boost/]

Launcher used in QuarkOS 3.0: [Evie : https://play.google.com/store/apps/details?id=is.shortcut ] (Optional)



## Here are some screenshots for different commits for your understanding:

Quark Fluid SystemUI [commit: https://github.com/nitesh-prasad/QuarkOS/commit/b9bed4132a69e403284012d4bdd5438e95fd8c1f]

Screenshot: http://imgur.com/a/lTDZW


Quark Dynamic Navbar [commit: https://github.com/nitesh-prasad/QuarkOS/commit/3b3fe9d2cfb8f8bafc0b0f0de60d1d2f6ba04f80]

Screenshot: http://imgur.com/a/Nolby


Statusbar header Task Manager [commit: https://github.com/nitesh-prasad/QuarkOS/commit/788e6ef7216c9bc8fbe013e68a6ff2b60d7c6349]

Screenshot: http://imgur.com/a/iKDWa


This README will be updated as per requirement.
