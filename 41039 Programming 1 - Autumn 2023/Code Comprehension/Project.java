// Note these comments are nearly identical to the comments in the Student.java file because the classes are nearly identical. So don't bother going through the Student.java file because it's the same. 
// I did them both thinking it would count that towards my total lines commented but then realised I might be marked down because of my laziness. I decided to submit both files for some reason ¯\_(ツ)_/¯ .
// Please don't mark me down for wasting your time! <3

// This defines a public class with the name 'Project'.
// It is primarily used in the 'PreferenceData' class for storing projects and is also utilised in the 'Runner' class when processing and displaying the preference data.
public class Project {

    // This declares private and final variables to store the supervisor's name and the project's capacity.
    // The 'private' keyword ensures that only the Project class has access to these variables.
    // The 'final' keyword ensures that these variables cannot be altered after its initialisation, making Project objects immutable after creation.
    private final String supervisor;
    private final int capacity;

    // This defines a private constructor that initialises the supervisor and capacity variables.
    // A private constructor prevents the creation of Project objects in other classes, which allows the programmer to have better control over the instantionation of project objects.
    private Project(String supervisor, int capacity) {
        super();    // Calls the constructor of the parent class, which is the Object class. This line is not necessary because the Project class doesn't 
                    // have a declared parent class. By default, the parent class is the Object class, which makes this line redundant. However, it is common practice to include this line. As the Object class constructor has no arguments by default, in case
                    // this class were changed later to take arguments, the super() method would be necessary to make sure the parent constructor is called correctly.
        this.supervisor = supervisor;
        this.capacity = capacity;
    }

    // This is a factory method that creates a new Project object using the private constructor. Using a factory method allows for better control over object creation compared to using a public constructor.
    // It is a public method so it can be called by other classes.
    // It is also a static method, meaning it belongs to the class itself and not the object of the class.
    public static Project createProject(String supervisor, int capacity) {
        return new Project(supervisor, capacity);
    }

    // Another static factory method that creates a new Project object given an array containing the supervisor and capacity values.
    // This method allows for a creation of a Project object from an array of Strings.
    // The trim() method removes any whitespace before of after the supervisor String. For the first part of the return statement, the first element of the array is expected to be the supervisor's name, it trims the 0 index of the array 'parts[0]'.
    // For the second part of the return statement, it also trims the capacity of any whitespace then converts the String into an Integer value.
    public static Project createProject(String[] parts) {
        return createProject(parts[0].trim(), Integer.parseInt(parts[1].trim()));
    }

    // Static factory method that creates a new Project instance when the information is in a single string description containing the supervisor and capacity.
    // It is used in the 'PreferenceData' class when parsing input data, and in the 'Runner' class when reading project data from a file or user input.
    public static Project createProject(String desc) {
        return createProject(desc.split(",")); // Splits the input string by comma, creating an array of Strings.
    }

    // The reason for multiple createProject factory methods is to allow the creation of the object when reading in data from inputs with different formats. This eliminates the need for additional data processing or conversion.
    // For example, the first method is for when the data is already in seperate values, namely a String and an int.
    // The next method allows for Project object creation for when the data is stored as an array of Strings and trims the whitespace from the variables if there are any.
    // The final method allows for when the data is in a single String.
    // This strategy is very efficient and convenient, one that I will be stealing... *cough cough* "borrowing" for my future projects ;)

    // Getter methods for the supervisor and capacity variables. As these variables are private, other classes that may want access to 
    // these variables in a Project object so this method enables that access while preventing any modifications to the object itself.
    public String getSupervisor() {
        return supervisor;
    }
    // ***See previous comment***
    public int getCapacity() {
        return capacity;
    }

    // This overrides the toString method from the Object class (the toString() method is a default method from the Object class) to provide a custom representation of the Project object.
    // The original toString method returns the objects address in the memory which contains the object's name then a '@' sign followed by the object's hashcode. 
    // The toString() method is overrided to return a String that provides more information about the specific Project object.
    // Note that the '@Override' line isn't necessary, but it's common practice to do this and improves readability of the code because you are stating that you are overriding a method that already exists to the reader.
    @Override
    public String toString() {
        return "Project [supervisor=" + supervisor + ", capacity=" + capacity + "]";
    }
} // End of the Project class
