pragma solidity ^0.4.17;

contract Todo {
    
    struct TodoList {
        string content;
        bool completed;
    }
    
    TodoList[] public todoList;
    
    function Todo() public {
    }
    
    function addTodo(string content) public {
        TodoList memory newTodo = TodoList ({
            content: content,
            completed: false
        });

        todoList.push(newTodo);
    }
    
    function complete(uint index) public {
        TodoList storage todo = todoList[index];

        todo.completed = true;
    }
    function listLength() public returns(uint) {
        return todoList.length;
    }
}
