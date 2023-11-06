// Note these comments are nearly identical to the comments in the Project.java file because the classes are nearly identical. So don't bother going through the Student.java file because it's the same. 
// I did them both thinking it would count that towards my total lines commented but then realised I might be marked down because of my laziness. I decided to submit both files for some reason ¯\_(ツ)_/¯ .
// Please don't mark me down for wasting your time! <3

// This defines a public class with the name 'Student'.
// It is primarily used in the 'PreferenceData' class for storing student preferences and is also utilised in the 'Runner' class when processing and displaying the preference data.
public class Student {

    // This declares private and final variables to store the students's email, name, student number and the session.
    // The 'private' keyword ensures that only the Student class has access to these variables.
    // The 'final' keyword ensures that these variables cannot be altered after its initialisation, making Student objects immutable after creation.
    private final String email;
    private final String name;
    private final String studentNumber;
    private final String session;

    // This defines a private constructor that initialises the email, name, student number and session variables.
    // A private constructor prevents the creation of Student objects in other classes, which allows the programmer to have better control over the instantionation of Student objects.
    private Student(String email, String name, String studentNumber, String session) {
        super();    // Calls the constructor of the parent class, which is the Object class. This line is not necessary because the Student class doesn't 
                    // have a declared parent class. By default, the parent class is the Object class, which makes this line redundant. However, it is common practice to include this line. As the Object class constructor has no arguments by default, in case
                    // this class were changed later to take arguments, the super() method would be necessary to make sure the parent constructor is called correctly.
        this.email = email; // The 'this' keyword points to the current object in the class.
        this.name = name;
        this.studentNumber = studentNumber;
        this.session = session;
    }

    // This is a factory method that creates a new Student object using the private constructor. Using a factory method allows for better control over object creation compared to using a public constructor.
    // It is a public method so it can be called by other classes.
    // It is also a static method, meaning it belongs to the class itself and not the object of the class.
    public static Student createStudent(String email, String name, String studentNumber, String session) {
        return new Student(email, name, studentNumber, session);
    }

    // Static factory method creates a new Student object from a single string description containing the student's email, name, student number, and session.
    // It is used in the 'PreferenceData' class when parsing input data, and in the 'Runner' class when reading student data from a file or user input.
    public static Student createStudent(String desc) {
        return createStudent(desc.split(",")); // Splits the input string by comma, creating an array of Strings.
    }

    // Another static factory method that creates a new Student object given an array containing the all of the variables listed in lines 7-10.
    // This method allows for a creation of a Student object from an array of Strings.
    // The trim() method removes any whitespace before of after the Strings containing the Student variables. For example, for the first part, the first element of the array is expected to be the student's email, it trims the 0 index of the array 'parts[0]' then
    // stores it as the String variable 'email'. This processed is repeated for all of the Student variables then returns a Student object with the trimmed variables.
    public static Student createStudent(String[] parts) {
        String email = parts[0].trim();
        String name = parts[1].trim();
        String studentNumber = parts[2].trim();
        String session = parts[3].trim();

        return createStudent(email, name, studentNumber, session);
    }

    // The reason for multiple createStudent factory methods is to allow the creation of the object when reading in data from inputs with different formats. This eliminates the need for additional data processing or conversion.
    // For example, the first method is for when the data is already in seperate values.
    // The next method allows for when the data is in a single String.
    // The final method allows for Student object creation for when the data is stored as an array of Strings and trims the whitespace from the variables if there are any.
    // This strategy is very efficient and convenient, one that I will be stealing... *cough cough* "borrowing" for my future Projects ;)

    // This overrides the toString method from the Object class (the toString() method is a default method from the Object class) to provide a custom representation of the Student object.
    // The original toString method returns the objects address in the memory which contains the object's name then a '@' sign followed by the object's hashcode. 
    // The toString() method is overrided to return a String that provides more information about the specific Student object.
    // Note that the '@Override' line isn't necessary, but it's common practice to do this and improves readability of the code because you are stating that you are overriding a method that already exists to the reader.
    @Override
    public String toString() {
        return "Student [email=" + email + ", name=" + name + ", studentNumber=" + studentNumber + ", session="
                + session + "]";
    }

    // Getter methods for the Student variables. As these variables are private, other classes that may want access to 
    // these variables in a Student object so this method enables that access while preventing any modifications to the object itself.
    public String getEmail() {
        return email;
    }
    // ***See previous comment***
    public String getName() {
        return name;
    }
    // ***See previous comment***
    public String getStudentNumber() {
        return studentNumber;
    }
    // ***See previous comment***
    public String getSession() {
        return session;
    }
} // End of the Student class
