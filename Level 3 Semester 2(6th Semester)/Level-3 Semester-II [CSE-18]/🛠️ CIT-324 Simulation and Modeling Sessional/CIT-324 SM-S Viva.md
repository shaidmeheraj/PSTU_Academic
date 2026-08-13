## CIT-324 Simulation and Modeling Sessional

**Core Concepts & Definitions**

*   What is **Simulation**?
    *   It's the imitation of something real, like a scenario or process. In health, it's a technique to meet educational goals, aiming to improve safety, effectiveness, and efficiency of healthcare.
*   What is a **System Model**?
    *   It's a simplified way to represent a **system** to help understand it. It can predict behavior, help design, or troubleshoot the **system**.
*   How does **Modeling** work?
    *   It's the process of making a simplified representation of a real-world **system**. This helps understand, predict, or test the **system**.
*   Explain **Modeling** and **Simulation** in **Computer Science**.
    *   **Modeling** is creating a **model** (a system representation). **Simulation** uses this **model** to predict how the **system** will behave. This helps with understanding, testing, and making decisions about the **system**.
*   What is a **Simulationist**?
    *   An expert who uses **simulation** methods to achieve learning goals.
*   What is a **Simulation Centre**?
    *   A place (physical space) where **simulation** is used for training, especially in health professions. It can include technical skills training (manikins, trainers), role playing, and virtual/blended simulation.
*   Explain **Stock** and **Flow** in **Modeling**.
    *   These are key concepts. **Stocks** are accumulations over time. **Flows** are movements or changes over time. For example, in manufacturing, product stock accumulates, while raw material flow moves into the process.

**Need, Types, and Classification**

*   Why is there a **Need for Simulation**?
    *   Simulators mimic real-world behavior or phenomena using hardware and software. They can also analyze and check theoretical models that are hard to understand conceptually. Simulators are vital in both industry and academia. However, challenges include computational limits (improving with better hardware) and inherent complexity of the systems being simulated.
*   How are **Simulation Systems Classified**?
    *   They are often classified by the amount of randomness in the system's behavior.
    *   **Stochastic systems** rely heavily on random behavior, and results are usually analyzed statistically. An example is simulating customer transaction times in a bank, which involve probability distributions.
    *   **Deterministic systems** have no random behavior, so results are always the same for the same inputs. **Circuit simulation** is an example, where gate outputs are predictable for given inputs. Deterministic simulation is used to verify if a circuit design behaves as expected. Stochastic systems can also be simulated with adjustments.
*   What are **Simulation Models**?
    *   Techniques and strategies used to model a system's behavior when designing a simulator. The best technique depends on the system, desired accuracy, speed, and abstraction level. **Continuous** and **discrete-event** techniques are common.
*   Name some common **Types of Models** used with **Simulation Techniques**.
    *   Common types include **Systems models**, **Process models**, **Network models**, and **Discrete-event models**.
*   Describe **Basic Discrete Event Systems**.
    *   Systems where the state changes in separate steps because of events. Events can be external (like a button press) or internal (like a timer ending).
*   What is an **Agent Based Model (ABM)** and how can it be implemented?
    *   A type of simulation to study the behavior of **agents** (autonomous entities that interact with their environment). It's used in fields like economics, social science, and biology.
    *   Implementation methods include **rule-based** (agents follow defined rules), **behavioral** (define overall behavior and agents figure out details), or a **hybrid** approach (combining both).
*   Explain **Hybrid Models**.
    *   Models that combine two or more different types of models for a more accurate system representation. Example: a car model combining a physical car model and a mathematical engine model.
*   Describe the different **Abstraction Levels for Circuit Simulation**.
    *   Circuit simulation models a circuit's response to inputs, showing voltages or waveforms depending on the level. There are three main levels:
        *   **Circuit-level**: Lowest level, models transistors, wires, capacitors, resistors, with high detail (like wire resistance), using **continuous simulation**. Produces detailed analog waveforms. It's computationally intensive, slow, and best for critical small parts.
        *   **Logic-level**: Higher level, uses switches and logic components, processes logic values (0, 1, X), usually ignores wire resistance. Faster than circuit-level. Subdivided into switch-level (transistors as switches) and gate-level (uses logic gates like NAND, XOR, flip-flops, like data flow diagrams). Gate-level often uses **discrete-event simulation**. Can combine switch-level and gate-level for flexibility and speed.
        *   **Functional/Behavioural-level**: Highest levels, use abstract units that might not be physically buildable. Allows quick exploration without getting lost in low-level details. Functional is closer to hardware representation (uses arithmetic). Behavioural models abstract control that might not be physical, for a general overview and experimenting with high-level options. Usefulness debated but advances in silicon compilation help. Useful for **rapid prototyping**.
*   Explain **Continuous Simulation**.
    *   Characterized by using math formulas to describe how simulated parts respond to conditions. Example: modeling transistors/resistors/capacitors behavior. Produces continuous graphs showing state changes over time. It's computationally intensive and slow, best for a small number of low-level parts.
*   Explain **Discrete-Event Simulation**.
    *   Used for parts at a higher abstraction level than continuous simulation. An event is something that changes the system's state (like a component output). Events only happen at specific time units. It's generally more popular and faster than continuous, providing a reasonably accurate result.

**Benefits and Drawbacks**

*   What are the **Advantages** or **Benefits of using Modeling and Simulation**?
    *   Provides practical feedback when designing real systems, allowing designers to check correctness and efficiency before building.
    *   Allows exploring alternative designs without building physical systems, saving cost.
    *   Permits studying a problem at different **abstraction levels**, helping understand complex high-level interactions.
    *   Can be effective for teaching or demonstrating concepts, especially with graphics/animation.
    *   Used to analyze data by generating/testing hypotheses, predicting behavior, understanding impacts of changes, and optimizing design.
    *   In engineering, used to test designs and predict performance before building, saving time and money. Also used in **architecture**, **finance**, and **logistics**.
*   What are the **Benefits of using simulation software**?
    *   Can evaluate system performance before building, finding bottlenecks early when easier to fix.
    *   Tests how a system responds to different inputs/scenarios, useful for new designs or troubleshooting.
    *   Generates data for statistical analysis, helping with design decisions or predicting behavior.
*   What are the **Drawbacks of using simulation software**?
    *   Can produce inaccurate results due to incorrect assumptions, data errors, or insufficient software sophistication.
    *   Can be time-consuming and expensive to develop and maintain, requiring deep understanding of the software and the modeled system.
    *   Accuracy depends on the assumptions made about the system.
    *   Potential drawbacks include **limited scope** (modeling specific parts, potentially lacking understanding of the whole system), **inaccurate results** (models/assumptions are inaccurate), **time consuming** (especially for complex systems), and **requires expertise** (in software and system).
*   What are the **Benefits of using physical prototypes in simulations**?
    *   Provide a more realistic and accurate representation.
    *   Help identify potential problems before building.
    *   Can test and validate the simulation model.
    *   Can be used to generate data for simulations.
    *   Can be used to train operators.
*   What are the **Drawbacks of using physical prototypes in simulations**?
    *   Can be expensive to create and maintain.
    *   Can be difficult to update and change.
    *   Can take up a lot of space.
    *   Can be difficult to transport and set up.
    *   Can be susceptible to wear and tear.
*   What are the **Benefits of using computer-generated models in simulations**?
    *   Allow for much more accurate representation by including many variables.
    *   Can be run much faster than physical experiments, allowing more simulations and better understanding.
    *   Can study systems that are too dangerous or difficult to recreate physically.
*   What are the **Drawbacks of using computer-generated models in simulations**?
    *   Can be inaccurate because they are based on assumptions and simplifications.
    *   May produce results different from real life.
    *   Can be time-consuming and expensive to create.
    *   Require significant computing power.
*   What are the overall **Advantages and Disadvantages of Simulation**? (See Benefits/Drawbacks sections above). Main drawbacks relate to computational intensity/speed and the potential for inaccuracy from assumptions or high abstraction levels.

**Quality, Accuracy, and Evaluation**

*   What is the **most important aspect of creating good models**?
    *   **Accuracy**. The model must accurately represent the system being simulated, otherwise the simulation results won't be accurate.
*   What is the **most important thing simulation engineers can do to improve accuracy**?
    *   Ensure the data used is representative of the real world (from actual people/environments). Constantly test and refine models.
    *   Use high-quality, accurate, and representative data sources. Use validated models based on sound principles. Use appropriate methods (math techniques, algorithms, software tools). Perform sensitivity analyses.
*   How can **simulation engineers improve the quality of their work**?
    *   One important way is having a strong understanding of the physics involved in the systems being simulated to create accurate models. Also, understand numerical methods and how to apply them.
*   How can **simulation engineers improve the realism of their work**?
    *   Create models that accurately represent the system by using accurate data, realistic assumptions, and verifying results against real-world data.
*   What is the **difference between verification and validation**?
    *   **Verification** is checking that a model or simulation is accurate and correctly represents reality, often by comparing to experimental data.
    *   **Validation** is checking that the model or simulation is useful and relevant for its intended purpose, usually by comparing to real-world data.
*   What are the main methods used to **evaluate a model**?
    *   **Sensitivity analysis** and **calibration**. Sensitivity analysis checks how sensitive the model is to changes in inputs. Calibration adjusts the model so its output matches real-world data more closely.
*   How do you perform **sensitivity analysis on a model**?
    *   It's investigating how uncertainty in the model output changes as uncertainty in input parameters varies. The best way is often using a **Monte Carlo simulation**, which involves randomly changing inputs and observing output changes.
*   What **input data** is needed for **Monte Carlo simulations**?
    *   A large amount of input data covering many possible outcomes. This can come from historical records, experimental data, or random generation. More data leads to a more accurate simulation.

**The Simulation Engineer Role**

*   What inspired you to pursue a career in **simulation engineering**?
    *   Interviewers ask this to gauge motivation, interest, dedication, and what aspects of the field are most appealing. Sample answer mentions interest in engineering/computers, using computer models to design/test before building, saving time/money, and continuous learning.
*   What sets **simulation engineering apart from other engineering disciplines**?
    *   Relies heavily on **modeling** and **simulation** tools to design and test systems before building, making the process more efficient and reducing costs. Often involves working with **multidisciplinary teams** for a comprehensive design and better understanding of real-world behavior. Requires high technical expertise for operating/maintaining simulation tools. Combines aspects of mechanical, electrical, and computer science. Can use **high-performance computing** for more realistic/accurate results.
*   What are the **key skills necessary for success in simulation engineering**?
    *   Strong **analytical** and **mathematical skills** to create accurate models and simulations. Ability to effectively **communicate results** to others. Ability to **work well in teams** and handle multiple projects. Interviewers ask to see if candidates understand and possess these skills.
*   What are the **biggest challenges faced by simulation engineers**?
    *   Ensuring **accuracy** and **realism** due to system complexity (needs accurate models and reasonable assumptions). **Managing complexity** as simulations become detailed. Access to **computational resources**. **Validation** and **verification** (ensuring accuracy/reliability). Interviewers want to see understanding and ability to overcome challenges.
*   What is the most important thing that **simulation engineers can do to improve their skills**?
    *   Keep up with the latest **software** and **technology**. Attend training courses/workshops. Read industry publications. Network with other engineers. This shows critical thinking and contribution potential.
*   How can **simulation engineers improve the quality of their work**? (See above under Quality/Accuracy/Evaluation).
*   How can **simulation engineers improve the efficiency of their work**?
    *   Have a clear understanding of the problem being solved to create effective simulations. Strive to create models that are as simple and accurate as possible. Simulation engineers improve efficiency by creating accurate models/simulations to optimize processes, reduce waste, troubleshoot, and identify bottlenecks. Interviewers check awareness, willingness to improve, and specific ideas.

**Tools and Environment**

*   Describe the **Simulator User Interface**?
    *   Its intuitiveness and robustness affect productivity. Focuses on a graphical user interface (GUI) for a digital simulator engine.
*   What are the **windows in the simulator GUI**?
    *   The simulator GUI for digital circuits uses two windows: the **circuit editor window** (also called the main window) and the **signal display window**. These allow building and simulating digital circuits.
*   Can **simulator software** be used **online** with a **web browser**?
    *   No. Simulators are desktop programs that must be installed on a PC with connected controls for real-time performance needed for simulating things like heavy equipment.
*   Explain what **USB** means in this context.
    *   A communication protocol to connect devices to a computer. USB "game controller" joysticks work with plug-and-play on most Windows OS versions.
*   What are the differences between specific simulation tools like **CarSim, TruckSim, and BikeSim**?
    *   **CarSim** simulates passenger vehicles and light trucks (2 axles + 1 trailer). Does not support dual tires currently.
    *   **TruckSim** simulates a wider range from light to commercial trucks (up to 5 lead axles + 1-2 trailers up to 4 axles each). Supports dual tires, tandem/tridem load sharing, and dollies. Has a module for torsional frame flexibility/suspended cab mounts.
    *   **BikeSim** is specifically for simulating motorcycles and scooters.
*   Does the software support **64-bit Matlab/Simulink**?
    *   Yes, **CarSim**, **TruckSim**, and **BikeSim** math models can run with either 32-bit or 64-bit **Matlab/Simulink**. However, specific DS Simulink models using Logitech G25/G27 only support 32-bit **Matlab/Simulink** currently.
*   List examples of **Open Source Circuit Simulator Software**.
    *   Examples mentioned include **Micro-Cap 10** (demo), **PECS**, **Proteus** (basic version free), **QUCS**, **Solve Elec** (free), **XSpice**, **MultiSim** (student version), **TopSpice** (demo), **Circuit Simulator 1.5j** (freeware), **MacSpice** (free), **5Spice** (free analog), **NgSpice** (free, open source), **GnuCap** (open source), **CircuitLogix** (student version), and **LTspice** (free, but proprietary code).

Some sources also include general interview questions about work ethic, strengths, weaknesses, handling problems, achievements, career goals, and team work, sometimes related to the **Modeling Simulation** context. For instance, interviewers might ask about your strengths or weaknesses regarding **Modeling Simulation**. There are also brainteaser questions, noted as being less common now but still potentially used, with an example like "Why are manhole covers round?". Other questions cover handling workload, what a typical day looks like, and relevant work experience.