/**
 * https://leetcode.com/problems/permutations/
 *
 * Difficulty   : dễ
 * Problem tags : backtracking
 */

#include <bits/stdc++.h>

using namespace std;

typedef vector<int> vi;
typedef unordered_map<int, bool> mmap;

class Solution {
  public:
    void dfs(vi &cur, vector<vi> &res, vi a, mmap &used) {
        if (cur.size() == a.size()) {
            res.push_back(cur);
            return;
        }
        for (int i = 0; i < a.size(); i++) {
            if (!used[a[i]]) {
                used[a[i]] = 1;
                cur.push_back(a[i]);
                dfs(cur, res, a, used);
                cur.pop_back();
                used[a[i]] = 0;
            }
        }
    }

    vector<vector<int>> permute(vector<int> &nums) {
        vector<vi> res;
        vi cur;
        mmap used;
        dfs(cur, res, nums, used);
        return res;
    }
};

int main() {
    Solution sol;
    vector<int> nums({1, 2, 3});

    vector<vector<int>> res = sol.permute(nums);
    for (auto a : res) {
        for (auto x : a)
            cout << x << " ";
        cout << endl;
    }

    return 0;
}