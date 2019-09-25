## Some funny principles: SOLID
    
#### 1. Single Responsibility Principle: The class/module should has only one reason to change.
    -> For example: A module is used to print reports. It has to be changed by two reasons: the content of the report changes, and the format of the report changes.
        -> Those are two separate responsibilities, and should be in separate classes and modules.
    
The reason of this principle: One module that has responsibility over many single part of functionality is hard to be changed.

#### 2. Open/closed Principle: software entities (classes, modules, functions, etc.) should be open for extension, but closed for modification.
>Be open: to make entities more flexible. That results from INHERITANCE.

>Be closed: adding/modifying fields or functions to a library inevitably required changes to any programs depending on that library. We need to avoid this to happen.
        
We can use abstract base classes: The existing interface is closed to modifications and new implementations must, at a minimum, implement that interface.
    
#### 3. Liskov substitution principle (LSP):
        
Statement: if S is a subtype of T, the objects of type T may be replaced with objects of type S without altering any of the desirable properties of the program.
        
-> All properties of T must be true for objects of type S where S is a subtype of T.
    
#### 4. Interface Segregation Principle (ISP):
Statement: no client should be forced to depend on methods it does not use.
        
-> splits interfaces that are very large into smaller and more specific ones so that clients will only have to know about the methods that are of interest to them. Such shrunken interfaces are called role interfaces.
        
-> keep a system decoupled and thus easier to refactor, change, and redeploy.
    
#### 5. Dependency inversion:
Statement:
- High-level modules should not depend on low-level modules. Both should depend on abstractions.
- Abstractions should not depend on details. Details should depend on abstractions.


## CREATIONAL PATTERNS:
    
Those design patterns are all about class instantiation.

-> Can be further divided into CLASS-CREATIONAL patterns and OBJECT-CREATIONAL patterns.
            
> Class-creational patterns use INHERITANCE effectively in the instantiation process. Object-creation patterns use DELEGATION effectively to get the job done.
    
#### 1. Abstract Factory: Creates an instance of several families of classes
        
- Intent:
    - Provide an interface for creating families of related or dependent objects without specifying their concrete classes.
    - The "new" operator considered harmful.
- Problem:
    - If an application is to be portable, it needs to encapsulate platform dependencies.
    - The drawback of Factory Method is that we need to declare subclass -> changes can cascade.
    - Imagine we're developing an application -> it has scroll bars, windows, and buttons. -> should not hard-code its widgets which makes it hard to change later.
        - Also, we have to specify many "themes" for users -> how to switch these widgets between themes easily and consistently.
        - -> WidgetFactory's interface.
- Used when:
    1. a system should be independent of how its products are created, composed, and represented. (sounds like framework)
    2. a system should be configured with one of multiple families of products.
    3. a family of related product objects is designed to be used together, and you need to enforce this constraint.
    4. you want to provide a class library of products, and you want to reveal just their interfaces, not their implementations.
- Advantages:
    1. It isolates concrete classes.
    2. It makes exchanging product families easy
    3. It promotes consistency among products.
- Disadvantages:
    - Supporting new kinds of products is difficult
        - Extending abstract factories to produce new kinds of Products isn't easy <- the AbstractFactory interface fixes the set of products that can be created.
- Implementation:
    1. Factories as singletons: best practice
        An application typically needs only one instance of a ConcreteFactory per product family.
    2. Creating the products.
        Define a factory method for each product. A concrete factory will specify its products by overriding the factory method for each. -> requires a new concrete factory subclass for each product family.
    3. Defining extensible factories: more flexible but less safe design.
        - Problem: AbstractFactory usually defines a different operation for each kind of product it can produce. -> add new kind of product requires changing the AF interface and all classes depending on it. -> add parameter to operations that create objects. This parameter specifies the kind of object to be created.
   
#### 2. Builder: Separates object construction from its representation -> the same construction process can create different representations.

- Intent: 
    Separates object construction from its representation -> the same construction process can create different representations.
- Used when:
    - The algorithm for creating a complex object should be independent of the parts that make up the object and how they're assembled.
    - The construction process must allow different representations for the object that's constructed.
- Use:
    1. Director constructs an object using the Builder interface.
        - ConcreteBuilder constructs and assembles parts of the product by implementing the Builder interface; defines and keeps track of the representation it creates; provide an interface for retrieving the product.
        - Product represents the complex object under construction; includes classes that define the constituent parts, including interfaces for assembling the parts into the final result.
    2. Director notifies the builder whenever a part of the product should be built.
    3. Builder handles requests from the director and adds parts to the product.
    4. Client retrieves the product from the builder.
- Related Patterns:
    1. Abstract Factory is similar to Builder in that it too may construct complex objects.
        - The different is that the Builder pattern focuses on constructing a complex object step by step while Abstract Factory's emphasis is on families of product objects (either simple or complex); Builder returns the product as a final step while Abstract Factory return the product immediately.
    2. A Composite is what the Builder often builds.
#### 3. Factory Method: Creates an instance of several derived classes
- Intent:
    - Define an interface for creating an object, but let subclasses decide which class to instantiate.
    - Lets a class defer instantiation to subclasses.
- Problem:
    
    A framework needs to standardize the architectural model for a range of applications, but allow for individual applications to define their own domain objects and provide for their instantiation.
            
    -> Dilemma: The framework must instantiate classes, but it only knows about abstract classes, which it cannot instantiate.
- Solution:
    1. The Factory Method pattern encapsulates the knowledge of which subclass to create and moves this knowledge out of the framework.
    2. Application subclasses redefine an abstract CreateDocument operation on Application to return the appropriate Document subclass. Once an Application subclass is instantiated, it can instantiate application-specific Documents without knowing their class.
    
        -> We call CreateDocument a factory method because it's responsible for "manufacturing" an object.
- Used when:
    - a class can't anticipate the class of objects it must create. (In more precise words, this class is just abstract; there are distinct objects which have different methods that we cannot instantiate all of them. The obvious example is frameworks, or activities in Android).
    - a class wants its subclasses to specify the objects it creates. (The above statement means the class CANNOT do something, while this statement means the class DOES NOT WANT do that thing.)
    - classes delegate responsibility to one of several helper subclasses, and you want to localize the knowledge of which helper subclass is the delegate. (remember the concept of databaseHelper Prof. Triet. It's very similar with this).
- Practices:
    
    An increasingly popular definition of factory method is: a STATIC method of a class that returns an object of that class' type. But UNLIKE A CONSTRUCTOR, the actual object it returns might be an INSTANCE OF A SUBCLASS.
    
    >-> Example: Factory Method defines an interface for creating objects. Consider adding a polymorphic creation capability into an inheritance hierarchy (which exercises polymorphism) by defining a STATIC FACTORY METHOD in the base class -> can be combined with Singleton.
    
    Note that Factory Method is somehow different with Static Factory Method: Factory Method is to instantiate objects, while Static Factory Method is to do specify methods. (String.valueOf(//here can be float, integer,...))
- An Example:
    Assume we have to design architecture for Age of Empires: When player instantiate worker/archer/..., the function makeUnit("worker"/"archer"/...) is invoked.
- Advantages:
    1. Eliminate the need to bind application-specific classes into your code. The code only deals with the Product interface -> can work with any user-defined ConcreteProduct classes.
    2. Provides hooks for subclasses.
    3. Connects parallel class hierarchies
        - Parallel class hierarchies result when a class delegates some of it responsibilities to a separate class.
- Implementation:
    1. Two major varieties:
        - The case when the Creator class is an abstract class and does not provide an implementation for the factory method it declares.
            
            -> Requires subclasses to define an implementation. -> gets around the dilemma of having to instantiate unforeseeable classes.
        
        - The case when the Creator is a concrete class and provides a default implementation for the factory method.
            - The concrete Creator uses the factory method primarily for flexibility. -> "Create objects in a separate operation so that subclasses can override the way they're created" -> ensures that designers of subclasses can change the class of objects their parent class instantiates if necessary.
        > My opinion: the second case is more flexible, but the first case is more easy because there are less factory methods than the first.
    2. Parameterized factory methods: this is very understandable.
        - Another variation on the pattern lets the factory method create multiple kinds of products: the factory method takes a parameter that identifies the kind of object to create. All objects the factory method creates will share the Product interface. Example code: Gang of Four.
    3. Language-specific variants and issues. -> lazy initialization.
    4. Using templates to avoid subclassing: best practice for C++.
    5. Naming conventions

#### 4. Object pool (Resource pool): Avoid expensive acquisition and release of resources by recycling objects that are no longer in use. -> offer a significant performance boost
        Intent:
            offer a significant performance boost
            is most effective in situations where the cost of initializing a class instance is high, the rate of instantiation of a class is high, and the number of instantiations in use at any one time is low.
        Problem:
            Object pools are used to manage the object caching.
                A client with access to a Object pool can avoid creating a new Objects by asking the pool for one that has already been instantiated instead.
                The pool will be a growing pool, i.e. the pool itself will create new objects if the pool is empty, or we can have a pool, which restricts the number of objects created.
            It is desirable to keep all reusable objects that are not currently in use in the same object pool.
            -> The Reusable pool class is designed to be a Singleton class.
        Features desired:
            The Object Pool lets other "check out" objects from its pool.
            When objects are no longer needed -> they are returned to the pool.
            We don't want a process to have to wait for a particular object
                -> Object Pool also instantiates new objects
                -> It must also implement a facility to clean up unused objects periodically.
        Sample code:
            ReusablePool.getInstance(/*this returns the static ReusablePool object*/).acquireReusable(/*return the reusable object*/)
            ReusablePool.releaseObject(myObject)
        ->ReusablePool must keep track of all object it has created.
    2. Prototype: A fully initialized instance to be copied or cloned.
        Intent: 
            Specify the kinds of objects to create using a prototypical instance, and create new objects by coping this prototype.
        Problem:
            Example: GraphicTool presents a problem to the framework designer:
                The classes for notes and staves are specific to our application, but GraphicTool class belongs to the framework. It doesn't know how to create instances of our music classes.
                We could subclass GraphicTool for each kind of music object -> would produce lots of subclasses that differ only in the kind of music object
                -> object composition is a flexible alternative to subclassing. The question is, how can framework use it to parameterize instances of GraphicTool by the class of Graphic they're supposed to create?
            -> This pattern focus on kinds of object that there are very few differences between them, or they are defined in runtime...
        Used when:
            a system should be independent of how its products are created, composed, and represented
            the classes to instantiate are specified at run-time, for example, by dynamic loading
            instances of a class can have one of only a few different combinations of state.
                -> it may be more convenient to install a corresponding number of prototypes and clone them rather than instantiating the class manually, each time with the appropriate state.
        Advantages and Disadvantages:
            Has many of the same consequences that AbstractFactory and Builder have: 
                hides the concrete product classes from the client  -> reducing the number of names clients know about; letting a client work with application-specific classes without modification.
            Adding and removing products at run-time.
            Specifying new objects by varying values.
            Specifying new objects by varying structure.
            Reduced subclassing.
                Some languages like C++ that don't treat classes as first-class objects take advantage of this, while languages that do, like Objective C, derive less benefit.
                    First-class objects are the ones support all the operations generally available to other entities
                        they can be dynamically created, destroyed, passed to a function, returned as a value...
            Configuring an application with classes dynamically.
                Some run-time environments let you load classes into an application dynamically. All application that wants to create instances of a dynamically loaded class won't be able to reference its constructor statically.
        Implementation:
            Using a prototype manager
            Implementing the Clone operation: The hardest part of the Prototype pattern.
                is particularly tricky when object structures contain circular references.
                Problem: shallow copy versus deep copy.
                    Almost all languages provide shallow copy as default.
                If objects in the system provide Save and Load operations -> Cloning by saving the object and load in it back immediately.
                    Save operation saves the object into a memory buffer
                    Load creates a duplicate by reconstructing the object from the buffer.
            Initializing clones
    3. Singleton: A class of which only a single instance can exist.
        Intent:
            Ensure a class only has one instance, and provide a global point of access to it.
        Used when:
            there must be exactly one instance of a class, and it must be accessible to clients from a well-know access point.
            when the sole instance should be extensible by subclassing, and clients should be able to use an extended instance without modifying their code.
        Advantages:
            Controlled access to sole instance.
                The class encapsulates its sole instance -> can have strict control over how and when clients access it.
            Reduced name space
            Permits refinement of operations and representation.
            Permits a variable number of instances
        Implementation:
            Ensuring a unique instance
            Subclassing the Singleton class.
                The simplest technique: determine which singleton you want to use in the Singleton's Instance operation.
                Another way: take the implementation of Instance out of the parent class -> Factory.
                A more flexible approach: use a registry of singletons.
                    Instead of having Instance define the set of possible Singleton classes, the Singleton classes can register their singleton instance by name in a well-know registry.
                    This is the best practice in my opinion.
STRUCTURAL PATTERNS:
    Structural patterns are concerned with how classes and objects are composed to form larger structures.
        use inheritance to compose interfaces or implementations.
    1. Adapter (Wrapper): Match interfaces of different classes.
        Intent: 
            Convert the interface of a class into another interface clients expect.
            Adapter lets classes work together that couldn't otherwise because of incompatible interfaces (remind Adapter in Android Studio).
        Participants:
            Target:
                defines the domain-specific interface that Client uses.
            Client:
                collaborate with objects conforming to the Target interface.
            Adaptee:
                defines an existing interface that needs adapting
            Adapter:
                adapts the interface of Adaptee to the Target interface.
    2. Bridge (Handle/Body C++): Separates an object's interface from its implementation.
        Intent:
            Decouple an abstraction from its implementation so that the two can vary independently.
        Problem:
            An abstraction can have one of several possible implementation -> the usual way to accommodate them is to use inheritance.
            -> this approach isn't always flexible enough: Inheritance binds an implementation to the abstraction permanently -> it's difficult to modify, extend, and reuse abstractions and implementations independently.
                Drawbacks:
                    It's convenient to extend the abstraction to cover new platforms...
                        For example, abstract class Window has two subclasses XWindow and PMWindow -> to support IconWindow, we have to define XIconWindow and PMIconWindow...
                    It makes client code platform-dependent
                        Client should be able to create a window without committing to a concrete implementation.
                        Only the implementation should depend on the platform on which the application runs.
        Idea:
            The Bridge pattern addresses these problems by putting the abstraction and its implementation in separate CLASS HIERARCHIES.
                There is one class hierarchy for window interfaces (Window, IconWindow, TransientWindow) and a separate hierarchy for platform-specific window implementations, with WindowImp as its root.
        Used when:
            you want to avoid a permanent binding between an abstraction and its implementation
                when the implementation must be selected or switched at runtime.
            both the abstractions and their implementations should be extensible by subclassing.
            changes in the implementation of an abstraction should have no impact on clients; their code should not have to be recompiled.
            (C++) you want to hide the implementation of an abstraction completely from clients. in C++ the representation of a class is visible in the class interface.
            you want to share an implementation among multiple objects, and this fact should be hidden from the client.
        Participants:
            Abstraction:
                defines the abstraction's interface
                maintains a reference to an object of type Implementor.
            RefinedAbstraction:
                Extends the interface defined by Abstraction.
            Implementor:
                defines the interface for implementation classes.
                    This interface doesn't have o correspond exactly to Abstraction's interface; in fact the two interfaces can be quite different.
                    The Implementor interface provides only primitive operations, and Abstraction defines higher-level operations based on these primitive.
                is member of Abstraction.
            ConcreteImplementor:
                implements the Implementor interface and defines its concrete implementation.
        Workflow: 
            Abstraction forwards client requests to its Implementor object.
        Advantages:
            Decoupling interface and implementation
            Improved extensibility.
            Hiding implementation details from clients.
        Implementation:
            Only one Implementor.
                When there's only one implementation, creating an abstract Implementation class isn't necessary. -> degenerate case of the Bridge pattern.
                This separation is still useful when a change in the implementation of a class must not affect its existing clients-that is, they shouldn't have to be recompiled, just relinked.
            Creating the right Implementor object.
                If Abstraction knows about all ConcreteImplementor classes, then it can instantiate one of them in its constructor
                    <- it can decide between them based on parameters passed to its constructor.
                It's possible to delegate the decision of choosing right Implementor object to a factory object (Abstract Factory)
                    Abstraction simply asks the factory object for a Implementor.
                    -> Abstraction is not coupled directly to any the Implementor classes.
            Sharing implementors: Handle/Body.
                Body stores a reference count that the Handle class increments and decrements
            Using multiple inheritance: this approach relies on static inheritance, binds an implementation permanently to its interface -> you can't implement a true Bridge with multiple inheritance in C++.
        Related Patterns:
            Abstract Factory can create and configure a particular Bridge: Abstraction uses AbstractFactory to make right Implementor.
            Adapter is used to make unrelated classes work together -> applied to systems after they're designed. (variety makes us use this pattern)
                Bridge is used up-front in a design to let abstractions and implementations vary independently. (we want variety so we use this pattern)
    3. Composite: A tree structure of simple and composite objects.
        Intent:
            Compose objects into tree structures to represent part-whole hierarchies.
            Composite lets clients treat individual objects and compositions of objects uniformly.
        Problem:
            Folders and files: can we treat them in the same way?
                Folder can consist many other folders.
        Used when:
            you want to represent part-whole hierarchies of objects.
            you want clients to be able to ignore the difference between compositions of objects and individual objects.
        Participants:
            Component:
                declares the interface for objects in the composition.
                implements default behaviour for the interface common to all classes, as appropriate.
                declares an interface for accessing and managing its child components.
                (optional) defines an interface for accessing a component's parent in the recursive structure, and implements it if that's appropriate.
            Leaf (file): extends Component
                represents leaf objects in the composition.
                defines behaviour for primitive objects in the composition.
            Composite (folder): extends Component
                defines behaviour for components having children
                stores child components.
                implements child-related operations in the Component interface.
            Client: manipulates objects in the composition through the Component interface.
        Implementation:
            Explicit parent references
            Sharing components: difficult. -> Flyweight
            Maximizing the Component interface.
            Declaring the child management operations: which class declares them? -> trade-off between safety and transparency.
                Defining the child management interface at the root of the class hierarchy -> gain transparency (treat all components uniformly), lose safety (clients may try to do meaningless things like add and remove objects from leaves).
                Defining child management in the Composite class -> gain safety, lose transparency.
                ** transparency is more important than safety in this pattern: what if we forget which type this object is, Composite or Leaf?
                    -> declare an operation Composite* GetComposite() in the Component class
                        Component: returns a null pointer
                        Composite: overrides this operation to return itself
            Related Patterns:
                Chain of Responsibility
                Decorator: is often used with Composite.
                Flyweight: lets you share components, but they can no longer refer to their parents.
                Iterator: can be used to traverse composites
                Visitor: localizes operations and behaviour that would otherwise be distributed across Composite and Leaf classes.
    4. Decorator: Add responsibilities to objects dynamically.
        Intent:
            Attach additional responsibilities to an object dynamically
            Decorators provide a flexible alternative to subclassing for extending functionality.
        Problem:
            we want to add responsibilities to individual objects, not to an entire class.
                -> one way is to use inheritance. -> inflexible.
            -> A more flexible approach is to enclose the component in another object that adds the border
                -> the enclosing object is called a DECORATOR -> this pattern is sometimes called Wrapper.
                -> allow an unlimited number of added responsibilities.
        Used when:
            add responsibilities to individual objects dynamically and transparently, that is, without affecting other objects.
            for responsibilities that can be withdrawn
            when extension by subclassing is impractical <- a large number of independent extensions are possible and would produce an exposion subclasses to support every combination.
        Participants:
            Component (abstract):
                defines the interface for objects that can have responsibilities added to them dynamically.
            ConcreteComponent: extends Component
                defines an object to which additional responsibilities can be attached.
            Decorator (abstract): extends Component; contains Component object. (somehow like Composite)
                maintains a reference to a Component object
                defines an interface that conforms to Component's interface.
            ConcreteDecorator: extends Decorator
                adds responsibilities to the component.
        Workflow:
            Decorator forwards requests to its Component object.
            It may perform additional operations before and after forwarding the request.
        Advantages and Disadvantages:
            More flexibility than static inheritance.
            Avoids feature-laden classes high up in the hierarchy.
                an application needn't pay for features it doesn't use
            A decorator and its component aren't identical
                a decorated component is not identical to the component itself -> shouldn't rely on object identity.
            Lots of little objects.
                Decorator often results in systems composed of lot of little objects that all look like.
        Implementation:
            interface conformance.
                decorator object's interface must conform to the interface of the component it decorates
                -> ConcreteDecorator classes must inherit from a common class.
            Omitting the abstract Decorator class.
                when you only need to add one responsibility -> there is no need to define an abstract Decorator.
            Keeping Component classes lightweight.
            Changing the skin of an object versus changing its guts
                a decorator is a skin over an object that changes its behaviour.
                Strategy pattern is a good example of a pattern for changing the guts
        Related Patterns:
            Adapter:
                decorator is different from adapter in that a decorator only changes AN OBJECT'S RESPONSIBILITIES, not ITS INTERFACE; adapter gives object a COMPLETELY NEW INTERFACE.
            Composite: 
                decorator can be viewed as a degenerate composite with only one component
                however, decorator adds additional responsibilities
            Strategy:
                decorator lets you change the skin of object
                strategy lets you change the guts.
    5. Facade: A single class that represents an entire subsystem.
        Intent:
            Provide a unified interface to a set of interfaces in a subsystem. Facade defines a higher-level interface that makes the subsystem easier to use.
        Problem:
            Structuring a system into subsystems helps reduce complexity.
            -> common design goal is to minimize the communication and dependencies between subsystems.
                -> one way to achieve this goal is to introduce a facade object that provides a single, simplified interface to the more general facilities of a subsystem.
                -> Clients will communicate with that facade object.
        Used when:
            you want to provide a simple interface to a complex subsystem.
                Most pattern when applied result in more and smaller classes. That make subsystem more reusable and easier to customize.
                -> it's harder to use for clients that don't need to customize it.
            There are many dependencies between clients and the implementation classes of an abstraction.
                -> Introduce a facade to decouple the subsystem from clients
                    -> promote subsystem independence and portability.
            You want to layer your subsystems
                -> facade defines an entry point to each subsystem level.
        Example: Compiler.
        Participants:
            Facade:
                knows which subsystem classes are responsible for a request.
                delegates client requests to appropriate subsystem objects.
            subsystem classes:
                implement subsystem functionality
                handle work assigned by the Facade object.
                have no knowledge of the facade; that is, they keep no references to it.
        Advantages:
            It shields clients from subsystem components
                -> reduce the number of objects that clients deal with
                    -> make the subsystem easier to use.
            It promotes weak coupling between the subsystem and its clients
                Reducing compilation dependencies is vital in large software systems.
                    <- save time by minimizing recompilation when subsystem classes change.
            It doesn't prevent applications from using subsystem classes if they need to 
                you can choose between ease f use generality.
        Implementation:
            reducing client-subsystem coupling.
                make Facade an abstract class with concrete subclasses for different implementations of a subsystem
                    clients can communicate with the subsystem through the interface of the abstract Facade class.
                configure a Facade object with different subsystem objects.
            Public versus private subsystem classes.
        Related Patterns:
            Abstract Factory can be used with Facade to provide an interface for creating subsystem objects.
            Abstract Factory can be used as an alternative to Facade to hide platform-specific classes.
            Mediator is similar to Facade in that abstracts functionality of existing classes.
                Mediator's purpose is to abstract arbitrary communication between colleague objects.
                    colleagues communicate with the mediator instead of communicating with each other directly.
                Facade merely abstracts the interface to subsystem objects to make them easier to use.
                    subsystem's classes don't know about it.
            Facade objects are often Singleton as usually only one Facade object is required.
    6. Flyweight: a fine-grained instance used for efficient sharing
        Intent:
            Use sharing to support large numbers of fine-grained objects efficiently.
        Problem:
            Some applications could benefit from using objects throughout their design, but naive implementation would be expensive.
                Example: document editor implementations have text formatting and editing facilities (which are modularized to some extent)
                    -> use objects to represent embedded elements
                        -> can using character objects
                            -> its cost is very high: maybe there are thousands objects which will consume lots of memory.
                    ->Flyweight pattern describes how to share objects to allow their use at fine granularities without prohibitive cost.
        Idea:
            a Flyweight is a shared OBJECT that can be used in multiple contexts simultaneously.
                Flyweight acts as an independent object in each context 
                    it's indistinguishable from an instance of the object that's not shared.
                The key concept is the distinction between intrinsic and extrinsic state
                    intrinsic state is stored in the Flyweight; it consists of information that's independent of the Flyweight's context
                        -> make it sharable
                    extrinsic state depends on and varies with the Flyweight's context
                        -> can't be shared.
                Client objects are responsible for passing extrinsic state to the flyweight when it needs it.
            is this "context" keyword in Android?
        Used when:
            an application uses a large number of objects.
            storage costs are high because of the sheer quantity of objects.
            most object state can be made extrinsic
            many groups of objects may be replaced by relatively few shared objects once extrinsic state is removed.
            the application doesn't depend on object identity.
                since flyweight objects may be shard, identity tests will return true for conceptually distinct objects.
        Participants:
            Flyweight:
                declares an interface through which flyweights can receive and act on extrinsic state.
            ConcreteFlyweight: extends Flyweight
                Implements the Flyweight interface and adds storage for intrinsic state, if any.
                A ConcreteFlyweight object must be sharable
                    Any state it stores must be intrinsic
                        it must be independent of the ConcreteFlyweight object's context.
            UnsharedConcreteFlyweight: extends Flyweight / not necessary
                Flyweight interface ENABLES SHARING, NOT ENFORCE IT.
                It's common for UnsharedConcreteFlyweight objects to have ConcreteFlyweight objects as children at some level.
            FlyweightFactory:
                creates and manages flyweight objects
                ensures that flyweights are shared properly.
                    when a client requests a flyweight, the FlyweightFactory object supplies an existing instance or creates one, if none exists.
            Client:
                maintains a reference to flyweight(s)
                computers or stores the extrinsic state of flyweights.
        How it work:
            Intrinsic state is stored in the ConcreteFlyweight object.
            Extrinsic state is stored or computed by Client objects.
                Clients pass this state to the flyweight when they invoke its operations.
            Clients should not instantiate ConcreteFlyweights directly
                Clients must obtain ConcreteFlyweight objects exclusively from the FlyweightFactory object to ensure they are shared properly.
        Characteristics:
            Flyweights may introduce run-time costs associated with transferring, finding...
                However, such costs are offset by space savings, which increase as more flyweights are shared.
                    the reduction in the total number of instances that comes from sharing
                    the amount of intrinsic state per object.
                    whether extrinsic state is computed or stored.
        Implementation:
            Removing extrinsic state (from the shared flyweight)
            Managing shared objects:
                using Object Pool is a good way.
            Shareability also implies some form of reference counting or garbage collection to reclaim a flyweight's storage when it's no longer needed.
                However, this is not necessary if the number of flyweights is fixed and small.
        Sample Code: in the sample code, the authors use a variant of BTree.
        Related Patterns:
            Flyweight is often combined with Composite
                to REPRESENT A HIERARCHICAL STRUCTURE as a graph with shared leaf nodes.
                    directed acyclic graph.
                flyweight leaf nodes cannot store a pointer to their parent
                the parent pointer is passed to the flyweight as part of its extrinsic state
                    -> major impact on how the objects in the hierarchy communicate with each other.
        It's often best to implement State and Strategy objects as flyweights.
    7. Private Class Data: Restricts accessor/mutator access.
        Intent:
            Control write access to class attributes
            Separate data from methods that use it.
            Encapsulate class data initialization
            providing new type of final -  final after constructor.
        Problem: 
            A class may have one-time mutable attributes that cannot be declared final
                using this design pattern allows one-time setting of those class attributes.
            the design goal of protecting class state by minimizing the visibility of its attributes.
        Structure:
            instead of declaring all attributes in the Main Class
                we encapsulate those attributes in DataClass object.
                    all attributes of DataClass object is private, making MainClass unable to change these attributes' values.
    8. Proxy (surrogate): An object representing another object.
        Intent:
            Provide a surrogate or placeholder for another object to control access to it.
        Problem:
            Sometimes, creating objects can be expensive (for example, graphical objects like large raster images)
            -> should avoid creating all the expensive objects at once.
                not all of these objects will be visible in the document at the same time.
        Idea:
            These constraints would suggest creating each expensive object on demand, which in this case occurs when an image becomes visible.
                -> What do we put in the document in place of the image?
                -> How can we hide the face that the image is created on demand so that we DON'T COMPLICATE THE IMPLEMENTATION? This optimization SHOULDN'T IMPACT THE RENDERING AND FORMATTING CODE.
            => The solution is to use another object, an PROXY.
                The proxy acts just like the image and takes care of instantiating it when it's required.
                The proxy creates the real object only when the application asks it to display itself by invoking its operation.
                The proxy forwards subsequent requests directly to the object.
                    it must keep a reference to the object.
                The proxy can also stores object's extent (for example, object is image and extents are its width and height.)
                    the extent lets the proxy respond to requests for in some functionality without actually instantiating the object. (setting format...)
        Used when we need:
            a remote proxy which provides a local representative for an object in a different address space
                this kind of proxy is an "Ambassador"
            a virtual proxy which creates expensive objects on demand.
            a protection proxy which controls access to the original object.
                is useful when objects should have different access rights.
            a smart reference which is a replacement for a bare pointer that performs additional actions when an object is accessed
                some typical uses:
                    counting the number of references to the real object so that it can be freed automatically when there are no more references
                        this can be used with Object Pool.
                        also called "smart pointer"
                    loading a persistent object into memory when it's first referenced.
                    checking that the real object is locked before it's accessed to ensure that NO OTHER OBJECT CAN CHANGE IT.
        Participants:
            Subject:
                defines the common interface for RealSubject and Proxy so that a Proxy can be used any where a RealSubject is expected.
            Proxy: extends Subject
                maintains a reference that lets the proxy access the real subject.
                    may refer to a Subject if the RealSubject and Subject interfaces are the same.
                provides an interface IDENTICAL to Subject's so that a proxy can by substituted for the real subject.
                controls access to the real subject and may be responsible for creating and deleting it.
                other responsibilities depend on the kind of proxy:
                    remote proxies are responsible for encoding a request.
                    virtual proxies may cache additional information about real subject -> they can postpone accessing it.
                    protection proxies check that the caller has the access permissions required to perform a request.
            RealSubject:
                defines the real object that the proxy represents.
        Characteristics: Along with solving the problems, proxies have other advantages:
            Copy-on-write: related to creation on demand. Copying a large and complicated object can be an expensive operation
                If the copy is never modified -> there's no need to incur this cost.
                -> Using a proxy to postpone the copying process -> ensure that we pay the price of copying the object only if it's modified.
                    to make this approach work, the subject must be reference counted.
                        Copying the proxy increment this reference count.
                        Modifying the subject make the proxy actually copy it.
                        When the reference count goes to zero -> the subject gets deleted.
        Implementation:
            Overloading the member access operator in C++.
                C++ supports overloading operator ->, the member access operator.
                the proxy behaves just like a pointer.
                Sample code:
                    Image* ImagePtr::LoadImage(){if(_image == 0){_image = LoadImageFIle(_imageFile);}return _image;}
                    Image* ImagePtr::operator-> (){return LoadImage();}
                    Image& ImagePtr::operator* (){return *LoadImage();}
            Proxy doesn't always have to know the type of real subject.
                if Proxies can deal with its subject solely through an abstract interface
                    there's no need to make a Proxy class for each RealSubject class
                    the proxy can deal with all RealSubject classes uniformly.
                if Proxies are going to instantiate RealSubjects (such as in a virtual proxy)
                    they have to know the concrete class.
        Related Patterns:
            Adapter:
                adapter provides a different interface to the object it adapts.
                proxy provides the same interface as its subject.
                    proxy used for access protection might refuse to perform an operation that the subject will perform.
                        -> its interface may be a subset of the subject's.
            Decorator:
                decorators can have similar implementations as proxies but them have a different purpose.
                    decorator adds one or more responsibilities to an object
                    proxy controls access to an object.
BEHAVIORAL PATTERNS:
    Behavioral patterns are concerned with algorithms and the assignment of responsibilities between objects
        describe not just patterns of objects or classes but also the patterns of communication between them.
        shift your focus away from flow of control to let you concentrate just on the way objects are interconnected.
        Behavior class patterns use inheritance to distribute behavior between classes
            Template Method is an abstract definition of an algorithm.
                defines the algorithm step by step.
            Interpreter represents a grammar as a class hierarchy and implements an interpreter as an operation on instances of these classes.
        Behavior object patterns use object composition rather than inheritance.
            how a group of peer objects cooperate to perform a task.
            how peer objects know about each other.
            ...
    1. Chain of responsibility: a way of passing a request between a chain of objects
        Intent:
            avoid coupling the sender of a request to its receiver by giving more than one object a chance to handle the request.
            chain the receiving objects and pass the request along the chain until an object handles it.
        Problem:
            Consider a context-sensitive help facility for a graphical user interface.
                It's natural to organize help information according to its generality - from the most specific to the most general.
                -> it's clear that a help request is handled by one of several user interface objects.
        Idea:
            decouple senders and receivers by giving multiple objects a chance to handle a request.
                the request gets passed along a chain of objects until one of them handles it.
            the first object in the chain receives the request and either handles it or forwards it to the next candidate on the chain, which does likewise.
                the object that made the request has no explicit knowledge of who will handle it
                    we say the request has an implicit receiver.
                to forward the request along the chain, and to ensure receivers remain implicit, each object on the chain SHARES A COMMON INTERFACE FOR HANDLING REQUESTS and for ACCESSING ITS SUCCESSOR on the chain.
        Used when:
            more than one object may handle a request, and the handler isn't known a priori. The handler should be ascertained automatically.
            you want to issue a request to one of several objects without specifying the receiver explicitly
            the set of objects that can handle a request should be specified dynamically.
        Participants:
            Handler:
                defines an interface for handling requests
                (optional) implements the successor link.
            ConcreteHandler: extends Handler
                handles requests it is responsible for
                can access its successor
                if the ConcreteHandler can handle the request, it does so; otherwise it forwards the request to its successor.
            Client:
                initiates the request to a ConcreteHandler object on the chain.
        Workflow:
            When a client issues a request, the request propagates along the chain until a ConcreteHandler object takes responsibility for handling it.
        Characteristics:
            reduced coupling
            added flexibility in assigning responsibilities to objects.
            receipt isn't guaranteed.
        Implementation:
            implementing the successor chain: two ways:
                define new links.
                use existing links.
            connecting successors.
                if there are no preexisting references for defining a chain -> have to introduce them yourself.
            representing requests.
                in the simplest form, he request is a hard-coded operation invocation
                    -> this is convenient and safe
                    -> but you can forward only the fixed set of requests that the Handler class defines.
                An alternative is to use a single handler function that takes a request code as parameter.
                    -> this supports an open-ended set of requests.
                    -> the only requirement is that the sender and receiver agree on how the request should been coded.
                    -> not safe.
                -> to address the parameter-passing problem, we can use SEPARATE REQUEST OBJECTS that bundle request parameters.
                    -> the Request class can represent requests explicitly.
                    -> new kinds of request can be defined by subclassing.
        Related Patterns:
            Chain of Responsibility is often applied in conjunction with Composite
                -> a component's parent can act as its successor.
    2. Command (Action, Transaction): Encapsulate a command request as an object
        Intent:
            Encapsulate a request as an object, thereby letting you parameterize clients with different requests, queue or log requests, and support UNDOABLE operations.
        Problem:
            Sometimes it's necessary to issue requests to objects WITHOUT KNOWING ANYTHING about the operation being requested or the receiver of there quest. (REST: stateless???)
            Example:
                user interface tool kits include objects like buttons and menus that carry out a request in response to user input.
                toolkit can't implement the request explicitly in the button or menu because only applications that use the toolkit know what should be done on which object.
                -> toolkit designers have no way of knowing the receiver of the request or the operations that will carry it out.
        Idea:
            Command pattern lets toolkit objects make requests of unspecified application objects by turning the request itself into an object.
                this object can be stored and passed around like other objects.
                -> the key to this pattern is an abstract Command class, which declares an interface for executing operations.
                    Command includes an abstract Execute operation.
                    Concrete Command subclasses specify a receiver-cation pair by storing the receiver as an instance variable and by implementing Execute to invoke the request.
        Used when you want to:
            parameterize objects by an action to perform.
                Commands are an object-oriented replacement for callbacks.
            specify, queue, and execute requests at different times.
            support undo
                The Command's Execute operation can store state for reversing its effects in the command itself.
                The Command interface must have an added Unexecute operation that reverses the effects of a previous call to Execute.
                Executed commands are stored in a history list.
            support logging changes so that they can be reapplied in case of a system crash.
            structure a system around high-level operations built on primitives operations.
                such a structure is common in information systems that support TRANSACTIONS.
        Participants:
            Command: 
                declares an interface for executing an operation.
            ConcreteCommand: extends Command
                defines a binding between a Receiver object and an action.
                implements Execute by invoking the corresponding operation(s) on Receiver.
            Client:
                creates a ConcreteCommand object and sets its receiver.
            Invoker:
                asks the command to carry out the request
            Receiver:
                knows how to perform the operations associated with carrying out a request. Any class may server as a Receiver.
        Workflow:
            The client creates a ConcreteCommand object and specifies its receiver.
            An Invoker object stores the ConcreteCommand object.
            The invoker issues a request by calling Execute on the command. When commands are undoable, ConcreteCommand stores state for undoing the command prior to invoking Execute.
            The ConcreteCommand object invokes operations on its receiver to carry out the request.
        Characteristics:
            Command decouples the object that invokes the operation from the one that knows how to perform it.
            Commands are first-class objects. They can be manipulated and extended like any other object.
            You can assemble commands into a composite command
            It's easy to add new Commands, because you don't have to change existing classes.
        Implementation: 
            How intelligent should a command be?
            Supporting undo and redo 
            Avoiding error accumulation in the undo process.
            Using C++ templates.
        Related Patterns:
            Composite can be used to implement MacroCommands.
            Memento can keep state the command requires to undo its effect.
            A command that must be copied before placed on the history list acts as a Prototype.
    3. Interpreter: A way to include language elements in a program
        Intent:
            Given a language, define a representation for its grammar along with an interpreter that uses the representation to interpret sentences in the language.
        Problem:
            if a particular kind of problem occurs often enough
                -> it be worth to express instances of the problem as sentences in a simple language.
                -> you can build an interpreter that solves the problem by interpreting these sentences.
        Used when:
            the grammar is simple
            efficiency is not critical concern.
    4. Iterator (Cursor): Sequentially access the elements of a collection
        Intent:
            Provide a way to access the elements of an aggregate object sequentially without exposing its underlying representation
        Problem:
            You might need to have more than one traversal pending on the same list.
            Don't want to bloat the List interface with operations for different traversals.
        Idea:
            the key idea in this pattern is to take the responsibility for access and traversal out of the list object and put it into an ITERATOR object.
            The Iterator class defines an interface for accessing the list's elements.
                An iterator object is responsible for keeping track of the current element, that is, it knows which elements have been traversed already.
            It would be better if we could change the aggregate class without changing client code
            -> generalizing the iterator concept to support POLYMORPHIC ITERATOR.
        Used to:
            access an aggregate object's contents without exposing its internal representation
            support multiple traversals of aggregate objects
            provide a uniform interface for traversing different aggregate structure.
        Participants:
            Iterator:
                defines an interface for accessing and traversing elements
            ConcreteIterator: extends Iterator
                implements the Iterator interface
                keeps track of the current position in the traversal of the aggregate
            Aggregate:
                defines an interface for creating an Iterator object.
            ConcreteAggregate: extends Aggregate
                implements the Iterator creation interface to return an instance of the proper ConcreteIterator.
        Characteristics:
            It supports variations in the traversal of an aggregate
            Iterators simplify the Aggregate interface
            More than one traversal can be pending on an aggregate.
        Implementation:
            Who controls the iteration?
                when the client controls the iteration, the iterator is called an external iterator
                    clients that use external iterator must advance the traversal and request the next element explicitly from the iterator.
                when the iterator controls it, the iterator is an internal iterator
                    the client hands an internal iterator an operation to perform and the iterator applies that operation to every element in the aggregate.
                External iterators are more flexible than internal iterators
                    it's easy to compare two collections for equality with an external iterator.
                    internal iterators are especially weak in a language like C++ that does not provide ANONYMOUS FUNCTIONS, CLOSURES...
                Internal iterators are easier to use.
            Who defines the traversal algorithm?
            How robust is the iterator?
                It can be dangerous o modify an aggregate while you're traversing it.
                A ROBUST ITERATOR ensures that insertions and removals won't interfere with traversal, and it does it without copying the aggregate.
            Additional Iterator operations.
            Using polymorphic iterator in C++:
                polymorphic iterators have their cost:
                    they require the iterator object to be allocated dynamically by a factory method.
                        -> should be used only when there's a need for polymorphism.
                    the client is responsible for deleting them
                        it's easy to forget to free a heap-allocated iterator object when you're finished with it.
                        ->we can use a STACK-ALLOCATED PROXY AS A STAND-IN FOR THE REAL ITERATOR.
            Iterators may have privileged access.
            Iterator for composites.
            Null iterators
                NullIterator is a degenerate iterator that's helpful for handling boundary conditions.
                its IsDone operation always evaluates to true.
        Sample code: List in C++:
            List and Iterator interfaces
                The List class provides a reasonably efficient way to support iteration through its public interface: Count(), Get(long position)
                -> because there's no need to give iterators privileged access to the underlying data structure -> the iterator classes are not friends of List.
            Iterator subclass implementations
                ListIterator is a subclass of Iterator
                The implementation of ListIterator is straightforward. It stores the List along with an index (_current) into the list
                    IsDone checks whether the index refers to an element within the List:
                        return _current >= _list->Count();
                    CurrentItem returns the item at the current index: return _list->Get(_current);
            => Sample code: for(i.First(); !i.IsDone(); i.Next()){i.CurrentItem()->Print();}
        Related Patterns:
            Composite: Iterators are often applied to recursive structures such as composites.
            Factory method: Polymorphic iterators rely on factory methods to instantiate the appropriate Iterator subclass.
            Memento: is often used in conjunction with the Iterator pattern.
                An iterator can use a memento to capture the state of an iteration.
                The iterator stores the memento internally.
    5. Mediator: Defines simplified communication between classes
        Intent:
            Define an object that encapsulates how a set of objects interact.
            Mediator promotes loose coupling by keeping objects from referring to each other explicitly, and it lets you vary their interaction independently.
        Problem:
            Though partitioning a system into many objects generally enhances reusability, proliferating interconnections tend to reduce it again.
            -> the system acts as though it were monolithic.
            it can be difficult to change the system's behaviour in any significant way, since behaviour is distributed among many objects.
            -> have to define many subclasses to customize the system's behaviour.
        Used when:
            a set of objects communicate in well-defined but complex ways.
                There resulting interdependencies are unstructured and difficult to understand.
            reusing an object is difficult because it refers to and communicates with many other objects.
            a behavior that's distributed between several classes should be customizable without a lot of subclassing.
        Participants:
            Mediator:
                defines an interface for communicating with Colleague objects.
            ConcreteMediator: extends Mediator
                implements cooperative behavior by coordinating Colleague objects.
                knows and maintains its colleagues.
            Colleague classes:
                each Colleague class knows its Mediator object
                each colleague communicates with its mediator whenever it would have otherwise communicated with another colleague.
        Workflow:
            Colleagues send and receive requests from a Mediator object.
            The mediator implements the cooperative behavior by routing requests between the appropriate colleagues.
        Characteristics:
            It limits subclassing.
            It decouples colleagues.
            It simplifies object protocols
            It abstracts how object cooperate
            It centralizes control.
                The Mediator pattern trades complexity of interaction for complexity in the mediator.
                    a mediator encapsulates protocols -> it can become more complex than any individual colleague.
                    -> the mediator itself a monolith that's hard to maintain.
        Implementation:
            Omitting the abstract Mediator class.
                There's no need to define an abstract Mediator class when colleagues work with only one mediator.
                The abstract coupling that the Mediator class provides lets colleagues work with different Mediator subclasses, and vice versa.
            Colleague-Mediator communication
                Colleagues have to communicate with their mediator when an event of interest occurs.
                    -> one approach is to implement the Mediator as an Observer using the Observer pattern.
                    -> another approach defines a specialized notification interface in Mediator that lets colleagues be more direct in their communication
                        may use a form of delegation: when communicating with the mediator, a colleague passes itself as an argument -> allow the mediator to identify the sender.
        Related Patterns:
            Facade differs from Mediator.
    6. Memento (token): Capture and restore an object's internal state
        Intent:
            Without violating encapsulation, capture and externalize an object's internal state so that the object can be restored to this state later.
        Problem: undo mechanism
        Idea:
            A memento is an object that stores a snapshot of the internal state of another object - the memento's originator. Example:
                the editor requests a memento from the ConstraintSolver as aside-effect of the move operation.
                the ConstraintSolver creates and returns a memento, an instance of a class SolverState in this case.
                    A SolverState memento contains data structures that describe the current state of the ConstraintSolver's internal equations and variables.
                later when the user undoes the move operation, the editor gives the SolverState back to the ConstraintSolver.
                based on the information in the SolverState, the ConstraintSolver changes its internal structures to return its equations and variables to their exact previous state.
        Used when:
            a snapshot of (some portion of) an object's state must be saved so that it can be restored to that state later
            a direct interface to obtaining the state would expose implementation details and break the object's encapsulation.
        Participants:
            Memento:
                stores internal state of the Originator object.
                protects against access by objects other than the originator
                    Mementos have effectively two interfaces.
                        Caretaker sees a NARROW interface to the Memento - it can only pass the memento to other objects.
                        Originator sees a WIDE interface, that lets it access all the data necessary to restore itself to its previous state.
            Originator:
                creates a memento containing a snapshot of its current internal state.
                uses the memento to restore its internal state.
            Caretaker:
                is responsible for the memento's safekeeping
                never operates on or examines the contents of a memento
        Workflow:
            A caretaker requests a memento from an originator,
                holds it for a time, and passes it back to the originator
                sometimes won't pass the memento back to the originator because the originator might never need to revert to an earlier state.
            Mementos are passive.
                Only the originator that created a memento will assign or retrieve its state.
        Characteristics:
            Preserving encapsulation boundaries
            It simplifies Originator.
            Using mementos might be expensive.
            Defining narrow and wide interfaces
            Hidden costs in caring for mementos.
        Implementation:
            Language support
            Storing incremental changes
        Related Patterns:
            Command: Commands can use mementos to maintain state for undoable operations
            Iterator: Mementos can be used for iteration
    7. Null Object: Designed to act as a default value of an object
        Intent:
            to encapsulate the absence of an object by providing a substitutable alternative hat offers suitable default do nothing behavior
                -> nothing will come of nothing
        Problem:
            Given that an object reference may be optionally null, and that the result of a null check is to do nothing or use some default value
                -> how can the absence of an object - the presence of a null reference - be treated TRANSPARENTLY?
        Used when:
            an object requires a collaborator
                the Null Object pattern does not introduce this collaboration - it makes use of a collaboration that already exists
            some collaborator instances should do nothing
            you want to abstract the handling of null away from the client
        Participants:
            Client:
                requires a collaborator
            AbstractObject:
                declares the interface for Client's collaborator
                implements default behavior for the interface common to all classes, as appropriate
            RealObject: extends AbstractObject
                defines a concrete subclass of AbstractObject whose instances provide useful behavior that Client expects
            NullObject: extends AbstractObject
                provides an interface identical to AbstractObject's so that a null object can be substituted for a real object
                implements its interface to do nothing (depend on what sort of behavior Client is expecting)
                when there is more than one way to do nothing, more than one NullObject class may be required.
    8. Observer (Dependents, Publish-Subscribe): A way of notifying change to a number of classes
        Intent:
            Define a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.
        Idea:
            The Observer pattern describes how to establish these relationships. The key objects in this pattern are SUBJECT and OBSERVER.
                A subject may have any number of dependent observers
                All observers are notified whenever the subject undergoes a change in state.
                    -> each observer will query the subject to synchronize its state with the subject's state.
                The subject is the publisher of notifications
                    it sends out these notifications without having to know who its observers are.
        Used when:
            an abstraction has two aspects, one dependent on the other.
                Encapsulating these aspects in separate objects lets you vary and reuse them independently.
            a change to one object requires changing others, and you don't know how many objects need to be changed.
            an object should be able to notify other objects without making assumptions about who these objects are.
                you don't want these object tightly coupled.
        Participants:
            Subject:
                knows its observers
                    any number of Observer objects may observe a subject
                provides an interface for attaching and detaching Observer objects
            Observer:
                defines an updating interface for objects that should be notified of changes in a subject.
            ConcreteSubject:
                stores state of interest to ConcreteObserver objects
                sends a notification to its observers when its state changes.
            ConcreteObserver:
                maintains a reference to a ConcreteSubject object
                stores state that should stay consistent with the subject's
                implements the Observer updating interface to keep its state consistent with the subject's 
        Workflow:
            ConcreteSubject notifies its observers whenever a change occurs that could make its observers' state inconsistent with its own
            After being informed of a change in the concrete subject, a ConcreteObserver object may query the subject for information
                ConcreteObserver uses this information to reconcile its state with that of the subject
            -> Observer in Android Studio
        Characteristics:
            Abstract coupling between Subject and Observer
            Support for broadcast communication
            Unexpected updates
                because the observers have no knowledge of each other's presence
                    -> they can be blind to the ultimate cost of changing the subject.
        Implementation:
            mapping subjects to their observers:
                the simplest way is to store references to observers in subject.
                    -> may be too expensive (in space) when there are many subjects and few observers
                -> trade space for time by using an associative look-up (e.g., a hash table)
            Observing more than one subject
                -> it's necessary to extend the Update interface in such cases to let the observer know WHICH SUBJECT IS SENDING THE NOTIFICATION.
                the subject can simply pass itself as a parameter in the Update operation
            Who triggers the update?
                a. have state-setting operations on Subject call Notify after they change the subject's state
                    -> clients don't have to remember to call Notify on the subject
                    -> several consecutive operations will cause several consecutive updates
                        -> may be inefficient
                b. make clients responsible for calling Notify at the right time
                    -> client can wait to trigger the update until after a series of state changes has been made
                    -> clients have an added responsibility to trigger the update
                        -> makes errors more likely
            Dangling references to deleted subjects
                make the subject notify its observers as it is deleted so that they can reset their reference to it
            Making sure Subject state is self-consistent before notification
            Avoiding observer-specific update protocols: the push and pull models.
                push model: the subject sends observers detailed information about the change, whether they want it or not
                    assumes subject know something about their observers' needs.
                    make observers less reusable, since Subject classes make assumptions about Observer classes that might not always be true
                pull model: the subject sends nothing but the most minimal notification, and observers ask for details explicitly thereafter.
                    emphasizes the subject's ignorance of its observers
                    may be efficient that Observer classes must ascertain what changed without help from the Subject.
            Specifying modifications of interest explicitly
                can improve update efficiency by extending the subject's registration interface to allow registering observers only for specific events of interest
                    when such an event occurs, the subject informs only those observers that have registered interest in that event
                    -> use the notion of ASPECTS for Subject objects.
                        void Subject::Attach(Observer*, Aspect& interest);
                        void Observer::Update(Subject*, Aspect& interest);
            Encapsulating complex update semantics.
                an object that maintains relationships which are particularly complex might be required
                    -> ChangeManager
                    -> its purpose is to minimize the work required to make observers reflect a change in their subject.
                three ChangeManager's responsibilities:
                    maps a subject to its observers and provides an interface to maintain this mapping
                        this eliminates the need for subjects to maintain references to their observers and vice versa
                    defines a particular update strategy
                    updates all dependent observers at the request of a subject
                Subject will notify the ChangeManager object when changed.
                ChangeManager will notify Observer when being notified by Subject
                => ChangeManager is an instance of the Mediator pattern
                    -> Singleton pattern would be useful here.
            Combining the Subject and Observer classes.
        Known Uses:
            Model/View/Controller:
                Model class plays the role of Subject
                View is the base class for observers
        Related Patterns:
            Mediator: encapsulates complex update semantics
                ->Singleton make ChangeManager unique and globally accessible
    9. State: Alter an object's behavior when its state changes
        Intent:
            allow an object to alter its behavior when its internal state changes
                the object will appear to change its class.
        Used when:
            an object's behavior depends on its state, and it must change its behavior at run-time depending on that state
            operations have large, multi-part conditional statements that depend on the object's state.
                this state is usually represented by one or more enumerated constants.
                    often, several operations will contain this same conditional structure 
                State pattern puts each branch of the conditional in a separate class.
                -> lets you treat the object's state as an object in its own right that can vary independently from other objects.
        Participants:
            Context:
                defines the interface of interest to clients
                maintains an instance of a ConcreteState subclass that defines the current state
            State:
                defines an interface for encapsulating the behavior associated with a particular state of the Context
            ConcreteState subclasses: extends State
                each subclass implements a behavior associated with a state of the Context
        Workflow:
            Context delegates state-specific requests to the current ConcreteState object
                A context may pass itself as an argument to the State object handling the request.
                    this lets the State object access the context if necessary
                Context is the primary interface for clients
                    Clients can configure a context with State objects. Once a context is configured, its clients don't have to deal with the State objects directly
            Either Context or the ConcreteState subclasses can decide which state succeeds another and under what circumstances.
        Characteristics:
            it localizes state-specific behavior and partitions behavior for different states.
                new states and their behavior can be easily added by defining new subclasses
            it makes state transitions explicit
            State objects can be shared
        Implementation:
            Who defines the state transitions?
                they can be implemented entirely in the Context
                But it's generally more flexible and appropriate to let the State subclasses themselves specify their successor state and when to make the transition.
                    -> require adding an interface to the Context that lets State objects set the Context's current state explicitly
                    -> Decentralizing the transition logic in this way makes it easy to modify or extend the logic by defining new State subclasses
                        -> Disadvantage: one State subclass will have knowledge of at least one other, which introduces implementation dependencies between subclasses.
            A table-based alternative in C++ Programming Style [Car92]
                Cargill uses tables to map inputs to state transitions.
                    ->the main advantage is their regularity:
                        can change the transition criteria by modifying data instead of changing program code
                    ->the disadvantages:
                        a table look-up is often less efficient than a (virtual) function call
                        putting transition logic into a uniform, tabular format makes the transition criteria less explicit and therefore harder to understand
                        it's usually difficult to add actions to accompany the state transitions.
                            the table-driven approach captures the states and their transitions , but it must be augmented to perform arbitrary computation each transition
                -> difference between table-driven state machines and State pattern: the State pattern model state-specific behavior, whereas the table-driven approach focuses on defining state transitions.
            Creating and destroying State objects
                trade-off:
                    1. create State objects only when they are needed and destroy them thereafter
                        used when the states that will be entered AREN'T KNOWN AT RUN-TIME, and contexts CHANGE STATE INFREQUENTLY
                            is important when state objects store a lot of information
                    2. create them ahead of time and never destroy them
                        used when state changes occur rapidly
                        may be inconvenient, because the Context must keep references to all states that might be entered.
            Using dynamic inheritance
        Related Patterns:
            The Flyweight pattern explains when and how State objects can be shared 
            State objects are often Singletons
    10. Strategy (Policy): Encapsulates algorithms inside a class
        Intent:
            define a family of algorithms, encapsulate each one, and make them interchangeable
            Strategy lets the algorithm vary independently from clients that use it
        Used when:
            many related classes differ only in their behavior
                Strategies provide a way to configure a class with one of many behaviors
            you need different variants of an algorithm
            an algorithm uses data that clients shouldn't know about
                Strategy pattern to avoid exposing complex, algorithm-specific data structures
            a class defines many behaviors, and these appear as multiple conditional statements in its operations
                -> instead of many conditionals, move related conditional branches into their own Strategy class
        Participants:
            Strategy:
                declares an interface common to all supported algorithms.
                    Context uses this interface to call the algorithm defined by a ConcreteStrategy
            ConcreteStrategy: extends Strategy
                implements the algorithm using the Strategy interface
            Context:
                is configured with a ConcreteStrategy object
                maintains a reference to a Strategy object
                may define an interface that lets Strategy access its data
        Workflow:
            Strategy and Context interact to implement the chosen algorithm
                a context may pass all data required by the algorithm to the strategy when the algorithm is called
                or, the context can pass itself as an argument to Strategy operations
                    -> lets the strategy call back on the context as required
            A context forwards requests from its clients to its strategy
        Characteristics:
            Families of related algorithms
            An alternative to subclassing
            Strategies eliminate conditional statements
            A choice of implementations
            Clients must be aware of different Strategies
            Communication overhead between Strategy and Context
            Increased number of objects
        Implementation:
            defining the Strategy and Context interfaces
            Strategies as template parameters
                with templates, there's no need to define an abstract class that defines the interface to the Strategy
                lets you bind a Strategy to its Context statically, which can increase efficiency
            making Strategy objects optional
        Related Patterns:
            Flyweight:
                Strategy objects often make good flyweights
    11. Template method: Defer the exact steps of an algorithm to a subclass
        Intent:
            Define the skeleton of an algorithm in an operation, deferring some steps to subclasses
                lets subclasses redefine certain steps of an algorithm without changing the algorithm's structure.
        Problem:
            Consider an application FRAMEWORK that provides Application and Document classes
                Application class opens existing documents
                Document class represents the information in a document once it's read from the file
            Applications built with the framework can subclass Application and Document to suit specific needs.
            -> we want to abstract the algorithm
        Idea:
            A template method defines an algorithm in terms of abstract operations that subclasses override to provide concrete behavior
            By defining some of the steps of an algorithm using abstract operations, the template method fixes their ordering, but it lets Application and Document subclasses vary those steps to suit their needs
        Used to:
            implement the invariant parts of an algorithm once and leave it up to subclasses to implement the behavior that can vary.
            when common behavior among subclasses should be factored and localized in a common class to avoid code duplication
                -> this is a good example of "refactoring to generalize"
                    you first identify the differences in the existing code and then separate the differences into new operations.
                    finally you replace the differing code with a template method that calls one of these new operations.
            control subclasses extensions
                you can define a template method that calls "hook" operations at specific points, thereby permitting extensions only at those points.
        Participants:
            AbstractClass:
                defines abstract PRIMITIVE OPERATIONS that concrete subclasses define to implement steps of an algorithm
                implements a TEMPLATE METHOD calls primitive operations as well as operations defined in AbstractClass or those of other objects.
            ConcreteClass: extends AbstractClass
                implements the primitive operations to carry out subclass-specific steps of the algorithm.
        Characteristics: this is a fundamental technique for code reuse -> important in class libraries -> "Don't call is, we'll call you": refers to how a parent class calls the operations of a subclass and not the other way around
            Template methods call the following kinds of operations:
                concrete operations (on the ConcreteClass or client classes)
                concrete AbstractClass operations
                primitive operations
                factory methods
                hook operations, which provide default behavior that subclasses can extend if necessary
                    a hook operation often does nothing by default
        Implementation:
            Using C++ access control
                the primitive operations that a template method calls can be declared PROTECTED members
                    -> ensure that they are only called by the template method
                primitive operations that MUST be overridden are declared pure virtual
                template method can be a non virtual member function
            Minimizing primitive operations
                important goal in designing template methods: to minimize the number of primitive operations that a subclass must override to flesh out the algorithm
                the more operations that need overriding, the more tedious things get for clients
            Naming conventions:
                for example:
                    prefix template method names with "Do-"
        Related Patterns:
            Factory Methods are often called by template methods
            Strategy: 
                Strategies use delegation to vary ENTIRE algorithm
                Template methods use inheritance to vary PART of an algorithm
    12. Visitor: Defines a new operation to a class without change.
        Intent:
            represent an operation to be performed on the elements of an object structure
            lets you define a new operation without changing the classes of the elements on which it operates
        Problem:
            Consider a compiler that represents programs as abstract syntax trees.
                It will need to perform operations on abstract syntax trees for static semantic analyses
                it will need to generate code
            -> most of these operations will need to treat nodes that represent assignment statements differently from nodes that represent variable or arithmetic expressions
            -> there will be one class for assignment statements, another for variable accesses...
            -> the set of node classes depends on language being compiled, but it doesn't change much for a given language
            -> adding a new operation usually requires recompiling all of these classes
            -> it would be better if each new operation could be added separately, and the node classes were independent of the operations that apply to them
        Idea:
            we can package related operations from each class in a separate object, called a visitor, and pass it to elements of the abstract syntax tree
        Used when:
            an object structure contains many classes of objects with differing interfaces, and you want to perform operations on these objects that depend on their concrete classes
            many distinct and unrelated operations need to be performed on objects in an object structure, and you want to avoid polluting their classes with these operations
                Visitor lets you keep related operations together by defining in one class
            the classes defining the object structure rarely change, but you often want to define new operations over the structure
        Participants:
            Visitor:
                declares a Visit operation for each class of ConcreteElement in the object structure
                    the operation's name and signature identifies the class that sends the Visit request to the visitor
                    -> lets the visitor determine the concrete class of the element being visited
                    -> then the visitor can access the element directly through its particular interface
            ConcreteVisitor:
                implements each operation declared by Visitor:
                    each operation implements a fragment of the algorithm defined for the corresponding class of object in the structure
                    ConcreteVisitor provides the context for the algorithm and stores its local state
                        this state often accumulates results during the traversal of the structure
            Element:
                defines an Accept operation that takes a visitor as an argument
            ConcreteElement:
                implements an Accept operation that takes a visitor as an argument
            ObjectStructure:
                can enumerate its elements
                may provide a high-level interface to allow the visitor to visit its elements
                may either be a composite or a collection such as a list or a set
        Collaborations:
            A client that uses the Visitor pattern must create a ConcreteVisitor object and then traverse the object structure, visiting each element with the visitor
            when an element is visited, it calls the Visitor operation the corresponds to its class.
                the element supplies itself as an argument to this operation to let the visitor access its state, if necessary
        Characteristics:
            Visitor makes adding new operations easy
            A visitor gathers related operations and separates unrelated ones
            Adding new ConcreteElement classes is hard
            Visiting across class hierarchies
                An iterator can visit the objects in a structure as it traverses them by calling their operations.
                    but it can't work across object structures with different types of elements
            Accumulating state
            Breaking encapsulation
                Visitor's approach ASSUMES that the ConcreteElement inter face IS POWERFUL ENOUGH TO LET VISITORS DO THEIR job
                    -> the pattern often forces you to provide public operations that access an element's internal state
                    -> may compromise element's encapsulation
        Implementation:
            Double dispatch
                Visitor achieves the intent by using a technique called double-dispatch
                -> should learn more about this
            Who is responsible for traversing the object structure?
        Related Patterns:
            Composite: Visitors can be used to apply an operation over an object structure defined by the Composite pattern
            Interpreter: Visitor may be applied to do the interpretation
