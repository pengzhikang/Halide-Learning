if [ ! -d "./build" ]; then
	mkdir build
else
	rm -rf build/*
fi
cd build
echo "<----------------------------------Begin    CMake------------------------------------->"
cmake -DCMAKE_BUILD_TYPE=Release ..
echo "<----------------------------------End      CMake------------------------------------->"
echo "<----------------------------------Begin 	   Make------------------------------------->"
make
echo "<----------------------------------End       Make------------------------------------->"
cd release
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:`pwd`/../../3rdparty/aclm/lib:`pwd`/../../3rdparty/tengine/lib
echo "<----------------------------------Begin Run Test------------------------------------->"
# 错误和信息都输入到目标文件中
# ./test
./test > ../../result/code_run_res.txt 2>&1
# ./test
echo "<----------------------------------End       Test------------------------------------->"