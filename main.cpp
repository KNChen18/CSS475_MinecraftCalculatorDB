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
void printEnchatedWeapon(){
    int ewID = 1;
    for ( int weaponID = 1; weaponID <= 30; weaponID++ ){
        for ( int enchatID = 21; enchatID <= 64; enchatID ++){
            cout << "( " << ewID++ << ",\t\"" << weaponID << "\", \t" << enchatID << "),"<< endl;
        }
    }
}

void printStats(){
//     CREATE TABLE `STATS`(
//     `STAT_ID` int UNIQUE PRIMARY KEY,
//     `MOBID`   VARCHAR(41),
//     `ENCHANTED_WEAPON_ID` INT, -- 900
//     `POTION_ID` INT, 36
//     `ENCHANTED HEMLET ID` INT, 
//     `ENCHANTED CHESTPLATE ID` INT,
//     `ENCHANTED LEGGINGS ID` INT,
//     `ENCHANTED BOOTS ID` INT
// );
    int statID = 1;
    string MOBID = "player";
    int enchanted_weapon_id = 1; // to 900
    int potion_id = 1; // to 36
    int enchanted_helmlet_ID = 1; // to 140

}
int main(){
    // printEnchatedArmor();
    printEnchatedWeapon();
    return 0;
}