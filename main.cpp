#include <iostream>
#include <vector>
#include <fstream>
using namespace std;

int main(){
    vector<string> armors;
    ifstream file("armorid.txt" );
    if (!file.is_open()){
        cout << "failed to open \n";
        return -1;
    }
    string line;
    while ( getline( file, line ) ){
        armors.push_back(line);
        // cout << line << endl;
    }
    bool end = false;\
    int i = 1;
    while ( !end ){
        for ( int j = 0; j < armors.size(); j ++ ){
            for ( int e = 1; e <=30; e ++){
                cout << "( " << i++ << ",\t\"" << armors[j] << "\", \t" << e << "),"<< endl;
            }
            
        }
        end = true;
    }
    
    return 0;
}