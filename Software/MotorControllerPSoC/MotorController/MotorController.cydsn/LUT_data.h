#include <project.h>
#define LUT_SIZE 75
#define LUT_LSB 4
#define LUT_SHIFT 2

static const uint8 RAMP_LUT[LUT_SIZE] = {
0, 6, 13, 19, 26, 33, 39, 46, 53, 59, 66, 73, 79, 86, 93, 99, 106, 113, 114, 116, 118, 120, 122, 124, 126, 128, 130, 132, 134, 136, 138, 140, 142, 144, 146, 148, 149, 151, 153, 155, 157, 159, 161, 163, 165, 167, 170, 172, 175, 177, 180, 182, 184, 187, 189, 192, 194, 197, 199, 202, 204, 206, 209, 211, 214, 216, 219, 221, 223, 226, 228, 231, 233, 236, 238
};

static const uint8 CONST_LUT[LUT_SIZE] = {
5, 25, 45, 51, 56, 62, 68, 73, 79, 84, 90, 96, 101, 107, 113, 119, 125, 131, 137, 143, 149, 155, 162, 168, 174, 180, 185, 191, 196, 202, 207, 213, 218, 224, 229, 235, 240, 244, 248, 252, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255, 255
};