#include <iostream>
#include <cuda_runtime.h>

int main() {
    int count;
    cudaError_t err = cudaGetDeviceCount(&count);

    if (err != cudaSuccess) {
        std::cerr << "CUDA Error: " << cudaGetErrorString(err) << std::endl;
        return 1;
    }

    std::cout << "Number of CUDA devices: " << count << std::endl;
    return 0;
}
