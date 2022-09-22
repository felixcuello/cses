#include<bits/stdc++.h>
#include <cmath>

#define ULL unsigned long long
#define LL long long

using namespace std;

int main() {
        int n;
        cin >> n;

        vector<vector<string> > sv(17);

        sv[1].push_back("0");
        sv[1].push_back("1");

        for(int i=2; i<=n; i++) {
                for(int j=0; j<pow(2,i-1); j++)
                        sv[i].push_back("0" + sv[i-1][j]);
                for(int j=pow(2,i-1)-1; j>=0; j--)
                        sv[i].push_back("1" + sv[i-1][j]);
        }

        for(int i=0; i<pow(2,n); i++)
                cout << sv[n][i] << endl;

        return 0;
}
