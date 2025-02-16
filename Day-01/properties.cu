#include <stdio.h>
#include <cuda_runtime.h>

int main(void){
    cudaDeviceProp prop;
    cudaGetDeviceProperties(&prop, 0);

    printf( "   --- General Information ---\n");
    printf("Name: %d\n",prop.name);
    printf("Compute Capability: %d.%d\n",prop.major,prop.minor);
    printf("Clock Rate: %d\n",prop.clockRate);
    printf( "Device copy overlap:" );
    if (prop.deviceOverlap)
        printf( "Enabled\n" );
    else
        printf( "Disabled\n" );
    printf("Kernel execition timeout : " );
    if (prop.kernelExecTimeoutEnabled)
        printf( "Enabled\n" );
    else
        printf( "Disabled\n" );
    printf( "   --- Memory Information for device ---\n");
    printf( "Total global mem: %ld\n", prop.totalGlobalMem );
    printf( "Total constant Mem: %ld\n", prop.totalConstMem );
    printf( "Max mem pitch: %ld\n", prop.memPitch );
    printf( "Texture Alignment: %ld\n", prop.textureAlignment );
    printf( "   --- MP Information for device ---\n");
    printf( "Multiprocessor count: %d\n", prop.multiProcessorCount );
    printf( "Shared mem per mp: %ld\n", prop.sharedMemPerBlock );
    printf( "Registers per mp: %d\n", prop.regsPerBlock );
    printf( "Threads in warp: %d\n", prop.warpSize );
    printf( "Max threads per block: %d\n", prop.maxThreadsPerBlock );
    printf( "Max thread dimensions:(%d, %d, %d)\n", prop.maxThreadsDim[0], prop.maxThreadsDim[1], prop.maxThreadsDim[2] );
    printf( "Max grid dimensions: (%d, %d, %d)\n", prop.maxGridSize[0], prop.maxGridSize[1], prop.maxGridSize[2] );
    printf( "\n" );

    return 0;
}