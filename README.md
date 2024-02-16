# Fibonacci Heap Implementation in Lua

This project provides an implementation of a Fibonacci Heap in Lua, enhanced to associate objects with each node. It is efficient for priority queue operations and graph algorithms, offering operations like insert, decrease key, and extract minimum with amortized good performance.

## Features

- Efficient insertion and priority update (decrease key) operations.
- Ability to associate and retrieve objects with each node.
- Extract minimum operation with logarithmic amortized time.
- Check for empty heap.

## Usage

Include the `fibonacci_heap.lua` in your project and use it as follows:

```lua
local FibonacciHeap = require("fibonacci_heap")
local heap = FibonacciHeap.new()

-- Inserting values with associated objects
heap:insert(1, {data = "Object associated with 1"})
heap:insert(2, {data = "Object associated with 2"})

-- Decrease the key of a node and access the associated object
local node = heap:insert(10, {data = "Object associated with 10"})
heap:decreaseKey(node, 0)

-- Extracting the minimum value and accessing the associated object
local min = heap:pop()
print("Minimum value:", min.value, "Associated object:", min.object.data)

-- Checking if the heap is empty
local isEmpty = heap:isEmpty()
print("Is the heap empty?", isEmpty)
```


## Testing

Run the `test_fibonacci_heap.lua` script to perform a series of tests that validate the correctness of the heap operations.

```bash
lua test_fibonacci_heap.lua
```

## Contributing

Contributions are welcome! If you have suggestions for improvements or bug fixes, please feel free to fork the repository and submit a pull request.

## References

- For a comprehensive overview of Fibonacci Heaps and their theoretical foundation, see the [Wikipedia entry on Fibonacci Heaps](https://en.wikipedia.org/wiki/Fibonacci_heap).
- The C++ implementation that inspired this Lua version can be found on GitHub: [robinmessage/fibonacci](https://github.com/robinmessage/fibonacci/tree/master).

## License

This project is licensed under the MIT License - see the LICENSE file for details.