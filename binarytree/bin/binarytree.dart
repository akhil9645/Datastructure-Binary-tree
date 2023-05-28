class Node {
  int? data;
  Node? left;
  Node? right;
  Node(this.data);
}

inorderTraversal(Node? root) {
  //Left Root Right//
  if (root == null) return;
  inorderTraversal(root.left);
  print(root.data);
  inorderTraversal(root.right);
}

preorderTraversal(Node? root) {
  //Root Left Right//
  if (root == null) return;
  print(root.data);
  inorderTraversal(root.left);
  inorderTraversal(root.right);
}

postTraversal(Node? root) {
  //Left Right Root//
  if (root == null) return;
  inorderTraversal(root.left);
  inorderTraversal(root.right);
  print(root.data);
}

void main(List<String> args) {
  Node root = Node(1);
  root.left = Node(2);
  root.right = Node(3);
  root.left!.left = Node(4);
  root.right!.right = Node(5);
  root.right!.left = Node(6);
  root.right!.right = Node(7);
  root.left!.right = Node(9);
  print("${root.data}");
  print("${root.left?.data},${root.right?.data}");
  print(
      '${root.left?.left?.data}    ${root.left?.right?.data}     ${root.right?.left?.data}    ${root.right?.right?.data}');
  print('Output of Inorder traversal is');
  inorderTraversal(root);
  print('Output of Preorder traversal is');
  preorderTraversal(root);
  print('Output of Postorder traversal is');
  postTraversal(root);
}
