pico8 4 recalbox

thank you acris for help :)

install procedure :
- copy pico8 directory into /recalbox/share/emulateurs (you have to create this folder if it doesn't exist)
- download your legal zip pico8 file for Raspberry Pi and put its content into /recalbox/share/emulateurs/pico8
- into /recalbox/share/emulateurs give 777 to the following files : pico8, pico8.sh, pico8.dat, pico8_dyn, gamepad.map.
- ssh into recalbox and : mount -o remount,rw /
- integration with EmulationStation : modify the es_systems.cfg file in /recalbox/share_init/system/.emulationstation (needs to change partition / to read and write) and add the following system :
	```xml
   
	<system>
		<fullname>Pico 8</fullname>
		<name>pico8</name>
		<path>/recalbox/share/roms/pico8/</path>
		<extension>.p8 .png</extension>
		<command>/recalbox/share/emulateurs/pico8/pico8.sh %ROM%</command>
		<platform>pico8</platform>
		<theme>pico8</theme>
		<emulators>
		<emulator name="pico8"></emulator>
		</emulators>
	</system>
   ```
- create the roms folder /recalbox/share/roms/pico8/ and an empty file Splore.p8 inside it (to start directly in Splore mode)
- reboot, enjoy, quit games with ctrl+q on keyboard
