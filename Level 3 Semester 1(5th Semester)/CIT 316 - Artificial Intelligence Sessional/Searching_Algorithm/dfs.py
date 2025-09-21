def dfs(tree, start, visited = []):
    if start not in visited:
        print(start, end=" ")
        visited.append(start)
    
    for child in tree[start]:
        dfs(tree, child, visited)


# Main program

if __name__ == "__main__":
    tree = {
        'A': ['B', 'C'],
        'B': ['D', 'E'],
        'C': ['F'],
        'D': [],
        'E': [],
        'F': []
    }


    print("BFS Traversal starting from 'A'")
    dfs(tree, 'A')