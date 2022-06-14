echo "Configuring and building Thirdparty/DBoW2 ..."

cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
# make -j
make

cd ../../g2o

echo "Configuring and building Thirdparty/g2o ..."

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
# make -j
make

cd ../../../

echo "Configuring and building Semidense_SLAM ..."
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
# make -j
make
cd ..
#./Examples/Monocular/mono_tum Vocabulary/ORBvoc.bin ./Examples/Monocular/TUM2.yaml ~/fr2_desk

