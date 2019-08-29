#install dev dools 6
sudo yum -y install centos-release-scl
sudo yum -y install devtoolset-6
scl enable devtoolset-6 bash

#install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user

#install conan toolchain
pip install --user conan==1.16
pip install --user cmake
pip install --user ninja
pip install --user p4python

#you may need to add some other devel packages depending on what you installed as you base centos config
sudo yum -y install mesa-libGL-devel
sudo yum -y install mesa-libGLU-devel
sudo yum -y install alsa-lib-devel
