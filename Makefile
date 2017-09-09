
default: cube-release wii-release wiiu-release

all: debug release

debug: cube-debug wii-debug wiiu-debug

release: cube-release wii-release wiiu-release

cube-debug:
	$(MAKE) -C source PLATFORM=cube BUILD=cube_debug

wii-debug:
	$(MAKE) -C source  PLATFORM=wii BUILD=wii_debug

wiiu-debug:
	$(MAKE) -C source  PLATFORM=wiiu BUILD=wiiu_debug

cube-release:
	$(MAKE) -C source  PLATFORM=cube BUILD=cube_release

wii-release:
	$(MAKE) -C source  PLATFORM=wii BUILD=wii_release

wiiu-release:
	$(MAKE) -C source  PLATFORM=wiiu BUILD=wiiu_release

clean: 
	$(MAKE) -C source clean

cube-install: cube-release
	$(MAKE) -C source cube-install PLATFORM=cube

wii-install: wii-release
	$(MAKE) -C source wii-install PLATFORM=wii

wiiu-install: wiiu-release
	$(MAKE) -C source wiiu-install PLATFORM=wiiu

install: wiiu-install

run: install
	$(MAKE) -C example
	$(MAKE) -C example run

