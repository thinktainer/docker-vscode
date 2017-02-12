from microsoft/dotnet:1.1.0-sdk-msbuild-rc4

copy code_1.9.1-1486597190_amd64.deb /root/code_1.9.1-1486597190_amd64.deb
run apt-get update \
	&& apt-get install -y apt-utils libnotify4 libnss3 libgtk2.0.0 libxss1 libgconf-2-4 \
	&& dpkg -i /root/code_1.9.1-1486597190_amd64.deb \
	&& rm -rf /var/lib/apt/lists/* \
	&& useradd -u 1000 -U -d /home/thinktainer \
	-m -s /bin/bash -p $1$WS1y84HI$gIFaEM4/DSWjaznso2f69/ thinktainer
user thinktainer
workdir /home/thinktainer
cmd ["/bin/bash"]
