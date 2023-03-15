#include <iostream>
#include <vector>
#include <fstream>
using namespace std;

void printEnchatedArmor(){
    vector<string> armors;
    ifstream file("armorid.txt" );
    if (!file.is_open()){
        cout << "failed to open \n";
        return;
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
            for ( int e = 1; e <= 20; e ++){
                cout << "( " << i++ << ",\t\"" << armors[j] << "\", \t" << e << "),"<< endl;
            }
        }
        end = true;
    }
}

int main(){
    // printEnchatedArmor();
    
                // 
//       CREATE TABLE `WEAPON ENCHANTED`(
//     `ENCHANTED_WEAPON_ID` INT,
//     `WEAPON_ID` INT,
//     `ENCHANTMENT_ID` int
// );
    // ( int, int , int)

    int ewID = 1;
    for ( int weaponID = 1; weaponID <= 30; weaponID++ ){
        for ( int enchatID = 1; enchatID <= 30; enchatID ++){
            cout << "( " << ewID++ << ",\t\"" << weaponID << "\", \t" << enchatID << "),"<< endl;
        }
    }
    return 0;
}