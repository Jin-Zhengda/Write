import queue

def bellman_ford(w_matrix, source, target, k, V):
    q = queue.Queue()
    d = []
    for i in range(V + 1):
        d.append(float("inf"))
    d[source] = 0
    q.put(source)
    for i in range(k):
            if q.empty():
                break
            u = q.get()
            for v in range(1, V + 1):
                if u == v and w_matrix[u][v] < 0:
                    
                if w_matrix[u][v] != float("inf"):
                    q.put(v)
                    if d[v] > d[u] + w_matrix[u][v]:
                        d[v] = d[u] + w_matrix[u][v]
            
    if d[target] == float("inf"):
        return "impossible"
    return d[target]

n, m, k = [int(x) for x in input().split(" ")]
w_matrix = [[float("inf") for i in range(n + 1)] for j in range(n + 1)]
for i in range(m):
    u, v, w = [int(x) for x in input().split(" ")]
    w_matrix[u][v] = w
result = bellman_ford(w_matrix, 1, n, k, n)
print(result)
