# Download onnxruntime
wget https://github.com/microsoft/onnxruntime/releases/download/v1.19.0/onnxruntime-linux-x64-1.19.0.tgz
tar -xvf onnxruntime-linux-x64-1.19.0.tgz
mv onnxruntime-linux-x64-1.19.0 onnxruntime
rm onnxruntime-linux-x64-1.19.0.tgz

# fix onnxruntime
cd onnxruntime
mv lib lib64
cd lib64/cmake/onnxruntime
sed -i "r/include\/onnxruntime/include" onnxruntimeTargets.cmake
cd ../../..
