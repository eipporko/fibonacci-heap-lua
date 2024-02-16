-- test_fibonacci_heap.lua
local fibonacciHeap = require("fibonacci_heap")

-- Crear una nueva instancia del montículo de Fibonacci
local heap = fibonacciHeap.new()

-- Insertar elementos en diferentes órdenes con objetos asociados
local valuesToInsert = {0, 5, 9, 3, 4, 2, 8, 6, 7, 1}
for i, value in ipairs(valuesToInsert) do
    local object = {data = "Data for " .. value, id = i}
    heap:insert(value, object)
end

heap:print()

-- Probar decreaseKey en varios nodos con nuevos objetos
local nodesToDecrease = {
    heap:insert(25, {data = "Extra 25", id = 11}),
    heap:insert(15, {data = "Extra 15", id = 12}),
    heap:insert(20, {data = "Extra 20", id = 13})
}

local min = heap:getMinimum()
print("About to remove: ", min.value, " with object ID: ", min.object.id)
heap:pop()
heap:print()

for i, node in ipairs(nodesToDecrease) do
    heap:decreaseKey(node, i) -- Esto asignará nuevos valores menores a los nodos
    heap:print()
end

-- Remover elementos uno por uno y verificar la estructura y objetos asociados cada vez
while not heap:isEmpty() do
    local min = heap:getMinimum()
    print("About to remove: ", min.value, " with object ID: ", min.object.id)
    heap:pop()
    heap:print()
end

-- Verificar si el montículo está vacío al final
local isEmpty = heap:isEmpty()
print("Is the heap empty at the end? (expected true):", isEmpty)


