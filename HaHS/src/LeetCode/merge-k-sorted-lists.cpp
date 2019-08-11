/**
 * https://leetcode.com/problems/merge-k-sorted-lists/
 *
 * Difficulty   : dễ
 * Problem tags : implementation
 */

#include <bits/stdc++.h>

using namespace std;

struct ListNode {
    int val;
    ListNode *next;
    ListNode(int x) : val(x), next(NULL) {}
};

class Solution {
  public:
    ListNode *mergeKLists(vector<ListNode *> &lists) {
        int k = lists.size();
        ListNode *head = 0;
        ListNode *cur = 0;
        for (;;) {
            int idx = -1;
            for (int i = 0; i < k; i++) {
                ListNode *x = lists[i];
                if (!x)
                    continue;
                if (idx == -1)
                    idx = i;
                else if (lists[idx]->val > x->val)
                    idx = i;
            }
            if (idx == -1)
                break;
            ListNode *&t = lists[idx];
            if (!head) {
                head = new ListNode(t->val);
                cur = head;
            } else {
                cur->next = new ListNode(t->val);
                cur = cur->next;
            }
            t = t->next;
        }
        return head;
    }
};

int main() {
    Solution sol;

    return 0;
}