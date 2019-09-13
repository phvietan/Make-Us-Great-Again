/**
 * https://leetcode.com/problems/permutations/
 *
 * Difficulty   : dễ
 * Problem tags : optimize spacing
 */

#include <bits/stdc++.h>

using namespace std;

class Solution {
  public:
    vector<int> productExceptSelf(vector<int> &nums) {
        int n = nums.size();
        vector<int> res(n, 1);
        for (int i = 0; i < n - 1; i++)
            res[i + 1] = res[i] * nums[i];
        int tmp = 1;
        for (int i = n - 1; i > 0; i--) {
            tmp = tmp * nums[i];
            res[i - 1] *= tmp;
        }
        return res;
    }
};