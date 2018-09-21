FROM wiiulegacy/core:0.1

COPY --from=wiiulegacy/libiosuhax:0.3 /artifacts $DEVKITPRO/portlibs

RUN git clone https://github.com/Maschell/libntfs-wiiu  && cd libntfs-wiiu && git checkout v2013.1.13
WORKDIR libntfs-wiiu

RUN make wiiu-release && \
	find $DEVKITPRO/portlibs -maxdepth 3 -type f -delete && \
	make -C source wiiu-install PLATFORM=wiiu && \
	cp -r ${DEVKITPRO}/portlibs /artifacts

WORKDIR /artifacts
RUN find .
