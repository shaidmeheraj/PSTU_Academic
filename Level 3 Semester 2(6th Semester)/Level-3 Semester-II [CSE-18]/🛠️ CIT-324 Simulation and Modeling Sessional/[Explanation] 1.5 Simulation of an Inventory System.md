## 1.5 SIMULATION OF AN INVENTORY SYSTEM

Section 1.5 of the sources details the simulation of an inventory system, focusing on how to compare different ordering policies. The simulation model is designed to help a company decide how many items to keep in inventory over a period of months.

Here's a breakdown of the key aspects of the inventory system simulation, according to the sources:

*   **Problem Statement:**
    *   A company wants to determine the optimal inventory levels for a single product over a fixed number of months (n).
    *   The times between customer demands are IID exponential random variables with a mean of 0.1 month.
    *   The sizes of customer demands are IID random variables, independent of when the demands occur.
    *   The simulation will compare nine different inventory policies, using the average total cost per month as the performance measure. These costs include ordering, holding, and shortage costs.
    *   The inventory policies are defined by two parameters: **s** (the reorder point) and **S** (the order-up-to level).
    *   The initial inventory level is set at 60, with no outstanding orders.
    *   The simulation runs for n=120 months.
*   **Program Organization and Logic:**
    *   The inventory model uses four types of events:
        1.  **Arrival of an order** from the supplier.
        2.  **Demand** for the product from a customer.
        3.  **End of the simulation** after *n* months.
        4.  **Inventory evaluation** (and possible ordering) at the beginning of each month.
    *   The end-of-simulation event is prioritized over the inventory-evaluation event when both are scheduled to occur at the same time. This ensures that no unnecessary inventory evaluation and ordering takes place at the end of the simulation.
    *   The simulation uses a next-event time-advance approach, similar to the single-server queueing system.
    *   An event graph shows the relationship between these events.
    *   The **demand event** generates the demand size, decrements the inventory level and schedules the next demand.
    *   The **order-arrival event** increments the inventory level by the amount previously ordered.
    *   The **inventory-evaluation event** checks if the inventory level is less than 's'. If it is, an order is placed for S-I(t) items and the arrival of the order is scheduled. The next evaluation event is also scheduled.
*  **State Variables** for the simulation model of the inventory system are the inventory level I(t), the amount of an outstanding order from the company to the supplier, and the time of the last event.
*   **Continuous-Time Statistical Accumulators:** A routine updates the area under the I+(t) and I-(t) curves which are used to calculate holding and shortage costs.
*   **C Program:**
    *   The C code includes functions for initializing the simulation, processing the order arrival, demand, and inventory evaluation events.
    *   The code also includes a function to update the continuous-time statistical accumulators.
    *   The timing and exponential-variate-generation subprograms are not shown, because they are the same as for the single-server queueing model in section 1.4.

The sources also note the similarities between the main programs of the queueing and inventory models. The inventory simulation demonstrates how simulation can be used to compare different ordering policies for an inventory system.
