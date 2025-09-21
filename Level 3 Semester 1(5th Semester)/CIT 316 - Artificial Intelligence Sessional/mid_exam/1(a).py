from collections import deque
import heapq

def bfs(graph, start, goal):
    queue = deque([(start, [start])])
    visited = set()

    while queue:
        node, path = queue.popleft()
        if node in visited:
            continue
        visited.add(node)

        if node == goal:
            return path
        
        for neighbor,_ in graph[node]:
            if neighbor not in visited:
                queue.append((neighbor, path + [neighbor]))
    return None

def ucs(graph, start, goal):
    """Uniform Cost Search - finds minimum cost path"""
    heap = [(0, start, [start])]
    visited = set()

    while heap:
        cost, node, path = heapq.heappop(heap)
        if node in visited:
            continue
        visited.add(node)

        if node == goal:
            return path, cost
        
        for neighbor, weight in graph[node]:
            if neighbor not in visited:
                new_cost = cost + weight
                heapq.heappush(heap, (new_cost, neighbor, path + [neighbor]))
    return None, float('inf')

graph = {
    'A': [('B', 1), ('C', 4)],
    'B': [('A', 1), ('C', 2), ('D', 5)],
    'C': [('A', 4), ('B', 2), ('D', 1)],
    'D': [('B', 5), ('C', 1)]
}

start, goal = 'A', 'D'

bfs_path = bfs(graph, start, goal)
ucs_path, ucs_cost = ucs(graph, start, goal)

# Calculate BFS cost
bfs_cost = 0
if bfs_path:
    for i in range(len(bfs_path) - 1):
        current, next_node = bfs_path[i], bfs_path[i + 1]
        for neighbor, weight in graph[current]:
            if neighbor == next_node:
                bfs_cost += weight
                break

print(f"Start: {start}, Goal: {goal}")
print(f"BFS Path: {' -> '.join(bfs_path)} (Cost: {bfs_cost})")
print(f"UCS Path: {' -> '.join(ucs_path)} (Cost: {ucs_cost})")
print(f"\nDifference: UCS saves {bfs_cost - ucs_cost} cost units!")