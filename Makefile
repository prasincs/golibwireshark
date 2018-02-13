WIRESHARK_VERSION=2.4.4

source:
	wget https://www.wireshark.org/download/src/all-versions/wireshark-${WIRESHARK_VERSION}.tar.xz
	tar xf wireshark-${WIRESHARK_VERSION}.tar.xz
	@rm wireshark-${WIRESHARK_VERSION}.tar.xz
	@cp lib.h wireshark-${WIRESHARK_VERSION}
	@cp wireshark-${WIRESHARK_VERSION}/frame_tvbuff.c .

.PHONY: clean

clean:
	@rm -rf myshark

