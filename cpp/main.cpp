#include <fstream>
#include <iostream>
#include <vector>
using namespace std;

void printEnchatedArmor() {
  vector<string> armors;
  ifstream file("armorid.txt");
  if (!file.is_open()) {
    cout << "failed to open \n";
    return;
  }
  string line;
  while (getline(file, line)) {
    armors.push_back(line);
    // cout << line << endl;
  }
  bool end = false;
  int i = 1;
  while (!end) {
    for (int j = 0; j < armors.size(); j++) {
      for (int e = 1; e <= 20; e++) {
        cout << "( " << i++ << ",\t\"" << armors[j] << "\", \t" << e << "),"
             << endl;
        if (e == 20) {
          cout << "( " << i++ << ",\t\"" << armors[j] << "\", \tNULL"
               << ")," << endl;
        }
      }
    }
    end = true;
  }
}
void printEnchatedWeapon() {
  int ewID = 1;
  for (int weaponID = 1; weaponID <= 30; weaponID++) {
    for (int enchatID = 21; enchatID <= 64; enchatID++) {
      cout << "( " << ewID++ << ",\t\"" << weaponID << "\", \t" << enchatID
           << ")," << endl;
      if (enchatID == 64) {
        cout << "( " << ewID++ << ",\t\"" << weaponID << "\", \tNULL"
             << ")," << endl;
      }
    }
  }
}

void printStats() {
  int statID = 1;
  string MOBID = "player";

  for ( int enchanted_weapon_id = 1; enchanted_weapon_id <= 900; enchanted_weapon_id++) {
    for ( int potion_id = 1; potion_id <= 36; potion_id++) {
      for ( int enchanted_helmlet_ID = 1; enchanted_helmlet_ID <= 140; enchanted_helmlet_ID++) {
        for (int enchanted_chestplate_ID = 141; enchanted_chestplate_ID <= 260; enchanted_chestplate_ID++) {
          for (int enchanted_Leggings_ID = 261; enchanted_Leggings_ID <= 380; enchanted_Leggings_ID++) {
            for (int enchanted_boots_ID = 381; enchanted_boots_ID <= 500; enchanted_boots_ID++) {
              cout << "( " << statID++ << ", \"" << MOBID << "\", "
                   << enchanted_weapon_id << ", " << potion_id << ", "
                   << enchanted_helmlet_ID << ", " << enchanted_chestplate_ID
                   << ", " << enchanted_Leggings_ID << ", "
                   << enchanted_boots_ID << " ),"<< endl;
            }
          }
        }
      }
    }
  }
}
int main() {
  // printEnchatedArmor();
  // printEnchatedWeapon();
  printStats();
  return 0;
}