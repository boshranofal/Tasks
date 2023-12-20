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
Node<E>? Reverse<E>(Node<E>? head) {
  Node<E>? prev = null;
  Node<E>? current = head;
  Node<E>? nextNode;

  while (current != null) {
    nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev; // New head of the reversed list
}
void main(List<String> args) {
  LinkedList<dynamic> list = new LinkedList();
  list.add(1);
  list.add(2);
  list.add(3);
  list.add(4);
  print(list);
  
  list.head = Reverse(list.head);
  print(list);
}
