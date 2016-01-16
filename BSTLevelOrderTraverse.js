/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @return {number[][]}
 */
var levelOrder = function(root) {
	if(root === null){
		return [];
	}

	return traverse([], 0, root);
};

function traverse(result, level, node){
	if(node === null){
	    return;
	}
	
	if(result[level] === undefined){
		result[level] = [];
	}

	result[level].push(node.val);

	traverse(result, level + 1, node.left);
	traverse(result, level + 1, node.right);

	return result;
}