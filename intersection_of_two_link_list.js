// # Write a program to find the node at which the intersection of two singly linked lists begins.


// # For example, the following two linked lists:

// # A:          a1 → a2
// #                    ↘
// #                      c1 → c2 → c3
// #                    ↗            
// # B:     b1 → b2 → b3
// # begin to intersect at node c1.

// # Notes:

// # If the two linked lists have no intersection at all, return null.
// # The linked lists must retain their original structure after the function returns.
// # You may assume there are no cycles anywhere in the entire linked structure.
// # Your code should preferably run in O(n) time and use only O(1) memory.

var getIntersectionNode = function(headA, headB) {
    var point_a = headA;
    var point_b = headB;
    
    while (point_a != point_b){
        if (point_a === null){
            point_a = headB;
        }else{
            point_a = point_a.next;
        }
        
        if (point_b === null){
            point_b = headA;
        }else{
            point_b = point_b.next;
        }
    }
    
    return point_a;
    
};

