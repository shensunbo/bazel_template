#include <iostream>
#include <fstream>
#include <string>

int main() {
    std::cout << "Hello, Bazel C++ Template!" << std::endl;
    
    // Example of reading a resource file
    try {
        std::ifstream file("res/config.txt");
        if (file.is_open()) {
            std::string line;
            while (std::getline(file, line)) {
                std::cout << "Config: " << line << std::endl;
            }
            file.close();
        } else {
            std::cout << "Note: Could not open res/config.txt (this is expected in sandbox)" << std::endl;
        }
    } catch (const std::exception& e) {
        std::cout << "Error reading config file: " << e.what() << std::endl;
    }
    
    return 0;
}