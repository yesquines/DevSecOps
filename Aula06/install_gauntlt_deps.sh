#!/bin/bash
cd /opt/

# install sslyze
echo "** Installing SSLYZE"
pip -q install sslyze

# install Heartbleed
echo "** Installing Heartbleed"
export GOPATH=/root/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

cat << 'EOF' >> /root/.bashrc
# configure go pathways
export GOPATH=/root/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
EOF

go get github.com/FiloSottile/Heartbleed

# install dirb
echo "** Installing Dirb"
wget -q http://www6.atomicorp.com/channels/atomic/fedora/30/x86_64/RPMS/dirb-222-6934.fc30.art.x86_64.rpm
rpm --quiet -ivh dirb-222-6934.fc30.art.x86_64.rpm

if [ ! -d /opt/dirb ]; then
   git clone -q https://github.com/v0re/dirb.git
fi

# set the environmental variables
export DIRB_WORDLISTS=/opt/dirb/wordlists
export SSLYZE_PATH=`which sslyze`

# save environmental variables to .bashrc
cat << EOF >> /root/.bashrc
# configure environmental variables for Gauntlt
export DIRB_WORDLISTS=/opt/dirb/wordlists
export SSLYZE_PATH=`which sslyze`
EOF
echo "**Finished**"
