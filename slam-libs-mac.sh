mkdir libs
cd libs

# brew install eigen
git clone https://github.com/lilinxi/eigen-git-mirror.git
cd eigen-git-mirror/
mkdir build
cd build
cmake ..
make
sudo make install
cd ..
cd ..

git clone https://github.com/lilinxi/Sophus.git
cd Sophus
mkdir build
cd build
cmake ..
make
sudo make install
cd ..
cd ..

# brew install opencv
git clone https://github.com/lilinxi/opencv.git
cd opencv/
mkdir build
cd build
cmake ..
make
sudo make install
cd ..
cd ..

# brew install glog
git clone https://github.com/lilinxi/glog.git
cd glog
mkdir build_self
cd build_self
cmake ..
make
sudo make install
cd ..
cd ..

brew install suite-sparse
git clone https://github.com/lilinxi/suitesparse.git
cd suitesparse
make
sudo make install
cd ..

# brew install ceres-solver
git clone https://github.com/lilinxi/ceres-solver.git
cd ceres-solver/
mkdir build_self
cd build_self
cmake ..
make
sudo make install
cd ..
cd ..

brew install qt5

git clone https://github.com/lilinxi/libQGLViewer.
cd libQGLViewer
cd QGLViewer && /usr/local/Cellar/qt/5.14.1/bin/qmake && make && sudo make install
sudo mv QGLViewer.framework /Library/Frameworks/QGLViewer.framework
cd ..
cd ..

# brew install brewsci/science/g2o
git clone https://github.com/lilinxi/g2o.git
cd g2o/
mkdir build
cd build
cmake .. -DCMAKE_PREFIX_PATH=$(brew --prefix qt5)
make
sudo make install
cd ..
cd ..

git clone https://github.com/lilinxi/Pangolin.git
cd Pangolin
mkdir build
cd build
cmake ..
make
sudo make install
cd ..
cd ..

# git clone https://github.com/lilinxi/pcl.git
# cd pcl
# mkdir build
# cd build
# cmake ..
# make
# sudo make install
# cd ..
# cd ..

brew install pcl
# cp /usr/local/Cellar/pcl/1.9.1_4/pcl_viewer.app/Contents/MacOS/pcl_viewer /usr/local/bin
# or
ln -s /usr/local/Cellar/pcl/1.9.1_4/pcl_viewer.app/Contents/MacOS/pcl_viewer /usr/local/bin/pcl_viewer







