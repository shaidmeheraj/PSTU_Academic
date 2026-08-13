## 1.4 SIMULATION OF A SINGLE-SERVER QUEUEING SYSTEM

Section 1.4 of the sources provides a detailed explanation of how to simulate a single-server queueing system. This system is similar to a one-operator barbershop, where customers arrive, wait in a queue if the server is busy, and then receive service. Although seemingly simple, simulating this system is representative of how more complex simulations operate.

Here's a breakdown of the key aspects covered in section 1.4:

*   **Problem Statement:** The system involves a single server and a queue where customers wait for service.
    *   Interarrival times between customers are independent and identically distributed (IID) random variables.
    *   Service times for each customer are also IID random variables, independent of the interarrival times.
    *   Customers are served in a first-in, first-out (FIFO) manner.
    *   The simulation starts with an empty and idle system.
    *   The simulation ends after a fixed number of customers have completed their delay in the queue.

*   **Intuitive Explanation:** The simulation is explained by showing a "snapshot" of the system after each event occurs. The system's state is tracked using variables like server status (idle or busy), number of customers in the queue, and arrival times of customers in the queue.
    *   The simulation uses a **next-event time-advance approach**, where the simulation clock advances to the time of the next event.
    *   Events in this system are the arrival of a customer and the departure of a customer after service completion.
    *   The simulation keeps track of statistical counters such as number of customers delayed, total delay, area under Q(t), and area under B(t).

*   **Program Organization and Logic:** This section sets up the foundation for the C program that simulates the queueing system.
    *   The simulation uses a general-purpose language (C) to enhance understanding of how simulations operate.
    *   The single-server queueing model is simulated until 1000 delays are completed to gather more data.
     *   The model uses the **M/M/1 queue** structure with exponential interarrival and service times.
    *   Random variates from an exponential distribution are generated using a random number generator.

*   **C Program:** The C code for the simulation is described.
    *   The code includes functions for the arrival and departure events.
    *   The main function manages the simulation loop, calling timing, update, and event functions.

*   **Simulation Output and Discussion:** The output of the simulation includes the average delay in queue, the average number of customers in the queue, and the server utilization.

*   **Alternative Stopping Rules:** The simulation can be stopped after a fixed amount of time, which is different than stopping after a fixed number of delays.
    *   A dummy "end-simulation" event is used to stop the simulation at the specified time.

*   **Determining the Events and Variables**:
    *   The events for the system are the arrival of a customer and the departure of a customer.
   *   The state variables needed to estimate the performance measures include the server's status, the number of customers in the queue, the arrival time of each customer in the queue and the time of the last event.

The source also provides flowcharts to show the logic of the arrival and departure events.
