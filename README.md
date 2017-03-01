pico8 4 recalbox

thank you acris for help :)

install procedure :
- copy pico8 directory into /recalbox/share/emulateurs
- into /recalbox/share/emulateurs give 777 to the following files : pico8, pico8.sh, pico8.dat, pîco8_dyn, gamepad.map.
- ssh into recalbox and : mount -o remount,rw /
- integration with EmulationStation : modify the es_systems.cfg file in /recalbox/share_init/.emulationstation (needs to change partition / to read and write) and add the following system :
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
- reboot, enjoy, quit games with ctrl+q on keyboard