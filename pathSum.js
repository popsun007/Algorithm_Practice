/**
 * Definition for a binary tree node.
 * function TreeNode(val) {
 *     this.val = val;
 *     this.left = this.right = null;
 * }
 */
/**
 * @param {TreeNode} root
 * @param {number} sum
 * @return {boolean}
 */
var hasPathSum = function(root, sum) {
	if(root === null || sum === null){
		return false;
	}

	var result = traverse(root, sum, 0);

	return result;
};

function traverse(root, sum, tempSum){
	if(root === null){
		return false;
	}

	tempSum += root.val;

	if(root.left === null && root.right === null && tempSum === sum){
		return true;
	}

	return traverse(root.left, sum, tempSum) || traverse(root.right, sum, tempSum);
}