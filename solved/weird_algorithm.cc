#include <iostream>
#include <vector>
#include <string>
#include <algorithm>
#include <map>
#include <set>
#include <cmath>
#include <queue>
#include <stack>
#include <iomanip>
#include <cstring>

#define PI 3.14159265358979323846
#define UL unsigned long
#define ULL unsigned long long
#define LL long long

using namespace std;

int main(int argc, char* argv[]) {
  cin.sync_with_stdio(false);

  unsigned long long n;
  cin >> n;

  while(n != 1) {
    cout << n;
    if(n % 2) {
      n = 3*n + 1;
    } else {
      n /= 2;
    }
    cout << " ";
  }
  cout << "1\n";

  return 0;
}

