import 'package:tree_sitter/tree_sitter.dart';

void main() {
  final parser =
      Parser(sharedLibrary: 'libdart.dylib', entryPoint: 'tree_sitter_dart');
  final program = "class A {}";
  final tree = parser.parse(program);
  print(tree.root.child(0).namedChild(0).string);
  print(parser.getText(tree.root.child(0).namedChild(0)));
}
