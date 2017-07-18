Given a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus sum of all keys greater than the original key in BST.

Example:

Input: The root of a Binary Search Tree like this:
              5
            /   \
           2     13

Output: The root of a Greater Tree like this:
             18
            /   \
          20     13



var convertBST = function(root) {
    if (root == null){
        return root;
    }
    
    var stack = [];
    var node = root;
    var sum = 0;
    
    while (node != null || stack.length != 0){
        if(node != null){
            stack.push(node);
            node = node.right;
        }
        else{
            node = stack.pop();
            node.val += sum;
            sum = node.val;
            node = node.left;
        }
    }
    
    return root;
};
