class Node:
    def __init__(self):
        self.lt = None
        self.right = None
        self.value = None
        self.parent = None

class BinarySearchTree:
    def __init__(self):
        self.root = Node()

    def add(self,value):
        if self.root.value is None:
            self.root.value = value
            return
        self.add_data(self.root,value)

    def add_data(self,cn,value):
        if cn.value > value:
            if cn.lt is None:
                cn.lt = Node()
                cn.lt.value = value
                cn.lt.parent = cn
            else:
                self.add_data(cn.lt, value)
        else:
            if cn.right is None:
                cn.right = Node()
                cn.right.value = value
                cn.right.parent = cn
            else:
                self.add_data(cn.right, value)

    def find(self,value):
        if self.root.value is None:
            return False
        if self.root.value == value:
            return True

        node = self.find_node(self.root,value)
        if node is None:
            return False
        return True

    def find_node(self,cn,value):
        if cn is None:
            return None
        if cn.value == value:
            return cn
        if cn.value > value:
            res = self.find_node(cn.lt, value)
            return res
        else:
            res = self.find_node(cn.right, value)
            return res

    def find_min(self):
        node = self.find_min_node(self.root)
        return node.value


    def find_min_node(self,cn):
        if cn.lt is None:
            return cn
        node = self.find_min_node(cn.lt)
        return node

    def find_max(self):
        node = self.find_max_node(self.root)
        return node.value


    def find_max_node(self,cn):
        if cn.right is None:
            return cn
        node = self.find_max_node(cn.right)
        return node

    def delete(self,value):
        if (self.root.lt is None and 
                self.root.right is None and 
                self.root.value == value):
            self.root.value = None
            return

        if (self.root.lt is not None and 
                self.root.right is None and 
                self.root.value == value):
            self.root = self.root.lt
            self.root.parent = None
            return

        if (self.root.lt is  None and 
                self.root.right is not None and 
                self.root.value == value):
            self.root = self.root.right
            self.root.parent = None
            return

        node = self.find_node(self.root, value)
        if node is None:
            raise Exception("Не могу найти узел для удаления")
        self.delete_data(node)

    def delete_data(self,node):
        # esli net dochernih uzlov
        if (node.lt is None and node.right is None):
            if node.parent.lt == node:
                node.parent.lt = None
            else:
                node.parent.right = None
            return
        # Esli est dochernie uzli = 1
        if (node.lt is not None and node.right is None):
            if node.parent.lt == node:
                node.parent.lt = node.lt
            else:
                node.parent.right = node.lt
            return
        if (node.lt is  None and node.right is not None):
            if node.parent.lt == node:
                node.parent.lt = node.right
            else:
                node.parent.right = node.right
            return
        # Esli est 2 dochernih uzla
        if (node.lt is not None and node.right is not None):
            min_node_of_right = self.find_min_node(node.right)
            min_node_of_right.lt = node.lt
            if node.parent.lt == node:
                node.parent.lt = min_node_of_right
            else:
                node.parent.right = min_node_of_right
            return
        raise Exception("Что-то пошло не такю Не могу удалить узел")



bst = BinarySearchTree()
print(bst.find(10),bst.find(8),bst.find(20))
bst.add(10)
print(bst.find(10),bst.find(8),bst.find(20))
bst.add(8)
print(bst.find(10),bst.find(8),bst.find(20))
bst.add(9)
print(bst.find(10),bst.find(8),bst.find(20))
bst.add(7)
print(bst.find(10),bst.find(8),bst.find(20))
bst.add(20)
print(bst.find(10),bst.find(8),bst.find(20))

print(bst.find_min(),bst.find_max())
bst.delete(8)
bst.delete(0)
a = 10




        
            