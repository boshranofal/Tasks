class Node<T> {
  Node({required this.value, this.next});
  T value;
  Node<T>? next;
  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  void add(E value) {
    if (isEmpty) {
      push(value);
      return;
    }
    tail!.next = Node(value: value);
    tail = tail!.next;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }
}
Node<E>? midd<E>(Node<E>? head) {
  if (head == null) {
    return null;
  }

  int count = 0;
  Node<E>? current = head;
  while (current != null) {
    count++;
    current = current.next;
  }

  int middleIndex = count ~/ 2; // Get the integer middle index

  current = head;
  for (int i = 0; i < middleIndex; i++) {
    current = current!.next;
  }

  return current;
}
void main(List<String> args) {
  LinkedList<dynamic> list = new LinkedList();
  list.add(5);
  list.add(6);
  list.add(2);
  list.add(1);
  list.add(9);
  print(list);
 print(midd(list.head)?.value ?? 'No middle node');

}
