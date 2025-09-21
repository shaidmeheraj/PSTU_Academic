def dfs_limited(tree, start, limit, visited = []):
    if limit <= 0:
        return
    if start not in visited:
        print(start, end=" ")
        visited.append(start)
    for child in tree[start]:
        dfs_limited(tree, child, limit-1, visited)


if __name__ == "__main__":
    tree = {
        'A': ['B', 'C'],
        'B': ['D', 'E'],
        'C': ['F'],
        'D': [],
        'E': [],
        'F': []
    }


    print("DFS Limited Traversal starting from 'A'")
    dfs_limited(tree, 'A', 2)