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

  int result = n*(n+1) / 2;
  while(--n) {
    int t; cin >> t;
    result -= t;
  }

  cout << result << '\n';

  return 0;
}

