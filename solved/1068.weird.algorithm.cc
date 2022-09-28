#include<bits/stdc++.h>

#define ULL unsigned long long
#define LL long long

using namespace std;

int main() {
        cin.sync_with_stdio(false);
        ULL n; cin >> n;
        while(n != 1) {
                cout << n << " ";
                n = (n % 2 == 0) ? n/2 : (3*n+1);
        }
        cout << 1;
        return 0;
}

