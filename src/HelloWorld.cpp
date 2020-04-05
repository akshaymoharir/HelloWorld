

#include <iostream>

int main(int argc, char** argv)
{
    // Print Hello World
    std::cout << "Hello World.." << std::endl;
    
    // Organize and print input arguments
    std::cout << "This program has " << argc << " arguments." << std::endl;
    std::cout << "Arguments are: " << std::endl;
    for(int i=0; i<argc; i++)
    {
        std::cout << (i+1) << ". " << "\"" << argv[i] << "\"" << std::endl;
    }
    
    std::cout << "Exiting hello world app..\n" << std::endl;
    return 0;
}

