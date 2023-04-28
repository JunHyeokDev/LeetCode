/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 == nil {
            return nil
        }
        
        var l1 = l1
        var l2 = l2
        var dummy : ListNode = ListNode(0)
        var tail = dummy
        
        while l1 != nil && l2 != nil {
            if l1!.val < l2!.val {
                tail.next = l1
                l1 = l1?.next
            } else {
                tail.next = l2
                l2 = l2?.next
            }
            tail = tail.next!
        }
        
        if l1 != nil {
            tail.next = l1
        } else if l2 != nil {
            tail.next = l2
        }
        
        return dummy.next
    }
}
