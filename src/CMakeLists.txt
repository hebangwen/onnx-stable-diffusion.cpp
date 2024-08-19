include_directories(sdcpp_inference_base PUBLIC ${CMAKE_SOURCE_DIR}/include)

add_library(sdcpp_inference_base STATIC inference_base.cpp)
target_link_libraries(sdcpp_inference_base onnxruntime::onnxruntime)
