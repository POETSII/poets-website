% Applications

#### Applications

POETS - Partial Ordered Event Triggered Systems - technology is based on the idea of an extremely large number (millions) of small cores, embedded in a fast, bespoke, hardware, parallel communications infrastructure - the _core mesh_. Inter-core communication is asynchronous, and effected by small, fixed size, hardware data packets (a few bytes) - _messages_. For an important set of industrial problems, POETS architectures are capable of delivering _orders of magnitude speed increases_ at significantly lower power levels. These projects are about accelerating applications using POETS.

<hr/>

<center><img style="width:300pt" src="/static/img/misc/01.jpg" /></center>

##### Event-based Micromagnetic Simulation of Spintronic Devices

Moore's Law is the observation that, on a dense integrated circuit, the number of transistors doubles every two years. While this pace has slowed since the original observation in 1965, reducing the size of devices is still a strong design constraint, along with reducing the power required to operate them.

Regarding data storage in computers, hard drives magnetise regions of the space either "up" or "down" into magnetised domains. Spintronics research over the last decade has realised several alternative potential data carriers, such as _skyrmions_ and _magnons_, which are both considerably smaller in size, and require less energy to drive through a material. If these properties can be exploited, the size and power requirements of devices can be reduced considerably. The micromagnetic model (a mathematical model) can be used to simulate spintronic devices. However, present computing technology imposes a practical restriction on the size of these models, restricting the scope for designing these devices.

The objective of this project is to develop an application for POETS to perform micromagnetic simulations of these potential data carriers (skyrmions and magnons), which in turn will inform the design of spintronic devices.

* **PhD scholarships available.**  
    For further details on this project, please contact
    *Dr Mark Vousden* (<a href="&#109;&#97;&#105;&#108;&#116;&#111;&colon;&#109;&period;&#118;&#111;&#117;&#115;&#100;&#101;&#110;&commat;&#115;&#111;&#116;&#111;&#110;&period;&#97;&#99;&period;&#117;&#107;">m.vousden<!--><!-->@<!--><!-->soton.ac.uk</a>)  
    or *Prof Andrew Brown* (<a href="&#109;&#97;&#105;&#108;&#116;&#111;&colon;&#97;&#100;&#98;&commat;&#101;&#99;&#115;&period;&#115;&#111;&#116;&#111;&#110;&period;&#97;&#99;&period;&#117;&#107;">adb<!--><!-->@<!--><!-->ecs.soton.ac.uk</a>)  
    Department of Electronics and Computer Science  
    *University of Southampton*  
    Hampshire SO17 1BJ  
    +44 (0)2380 593374

<hr/>

##### Efficient Application Mapping for Massively Parallel Hardware

Modern processors are almost all multicore, supporting multiple simultaneous processes that can, in principle, deliver greatly improved performance with parallelisable applications. In additional to conventional mainstream CPUs, platforms such as GPUs and even FPGAs which can offer interesting mixes of greater parallelism and more application-specific processing capability are becoming very popular. On the other hand, determining how to program such systems remains nontrivial. In addition to extracting what parallelism exists in the application, there is also the often-daunting challenge of mapping parallel code to the available hardware to make best use of resources. 

One class of problems that is particularly suitable for parallel processing are simulations that can be cast into the form of a graph containing a large number of small processing elements performing some simple computation, that interact with each other using small messages containing only a minimum of data. Such applications, critically, require only local memory; no shared memory is necessary, relieving what has historically been one of the very most challenging aspects of parallel programming: maintaining memory coherence. 

Nonetheless, determining how to map such problems to available hardware is still a largely unexplored problem, in part because it is only recently that hardware has become available able to support the large-scale parallelism required. Good solutions to problems such as traffic congestion and local processing hotspots are still thin on the ground and often confined to very narrow application domains. There is a major research opportunity in the development of efficient, general-purpose mapping algorithms for parallel systems that can start from an abstract graph representation of the problem and produce a hardware graph representing the problem as mapped to the physical hardware.

Such tools are of immediate value in industrial applications ranging from computational chemistry to fluid dynamics. There is the potential to reduce the compute times in the large-scale simulations run in such industries from days to minutes, using much more economical hardware than the supercomputers in common use for such problems. Furthermore, by enabling such rapid, relatively lightweight simulation cycles, it becomes possible to run multiple parameter sweeps in high-dimensional spaces, in parallel simply by mapping different parameter subspaces to different processors. This capability is particularly attractive e.g. for automated drug discovery and economic modelling.
This research project will develop effective mapping (hardware place-and-route) algorithms for graph-based problems. The project will work with a generic, massively parallel hardware substrate being developed by the project partners. The goal will be not merely to discover effective point solutions, but to determine what general principles for hardware mapping can be derived, so that parallel programs can be designed using a structured approach rather than through a collection of heuristics and ad-hoc techniques.

* **PhD scholarships available.**  
    For further details on this project, please contact
    *Dr Mark Vousden* (<a href="&#109;&#97;&#105;&#108;&#116;&#111;&colon;&#109;&period;&#118;&#111;&#117;&#115;&#100;&#101;&#110;&commat;&#115;&#111;&#116;&#111;&#110;&period;&#97;&#99;&period;&#117;&#107;">m.vousden<!--><!-->@<!--><!-->soton.ac.uk</a>),  
    *Dr Graeme Bragg* (<a href="&#109;&#97;&#105;&#108;&#116;&#111;&colon;&#103;&#109;&#98;&commat;&#101;&#99;&#115;&period;&#115;&#111;&#116;&#111;&#110;&period;&#97;&#99;&period;&#117;&#107;">gmb<!--><!-->@<!--><!-->ecs.soton.ac.uk</a>),  
    or *Prof Andrew Brown* (<a href="&#109;&#97;&#105;&#108;&#116;&#111;&colon;&#97;&#100;&#98;&commat;&#101;&#99;&#115;&period;&#115;&#111;&#116;&#111;&#110;&period;&#97;&#99;&period;&#117;&#107;">adb<!--><!-->@<!--><!-->ecs.soton.ac.uk</a>)  
    Department of Electronics and Computer Science  
    *University of Southampton*  
    Hampshire SO17 1BJ  
    +44 (0)2380 593374

<hr/>
