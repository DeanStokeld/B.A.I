// Imports classes from the java.io and java.util packages for data manipulation, data storage, to read data from files and exceptions.
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

// This defines a public class for preference data on a set of students and projects.
// This class is used by the Runner class to manage student preferences and projects.
public class PreferenceData {

    // Declare instance variables to store lists of students and projects and a 2D matrix array for the preferences.
    // The 'final' keyword ensures that these variables cannot be altered after its initialisation, making Project objects immutable after creation.
    // The 'private' keyword ensures that only the Student class has access to these variables.
    private final List<Student> students;
    private final List<Project> projects;
    private int[][] preferences;

    // This defines an enumeration for the different modes when reading data from an input file.
    // This enumeration helps the program when parsing by indicating the current data type being read.
    private static enum ReadState {
        STUDENT_MODE, PROJECT_MODE, PREFERENCE_MODE, UNKNOWN;
    };

    // This defines a public constructor that initialises empty ArrayLists for students and projects.
    public PreferenceData() {
        super(); // Calls the constructor of the parent class, which is the Object class. This line is not necessary because the PreferenceData class doesn't 
                    // have a declared parent class. By default, the parent class is the Object class, which makes this line redundant. However, it is common practice to include this line. As the Object class constructor has no arguments by default, in case
                    // this class were changed later to take arguments, the super() method would be necessary to make sure the parent constructor is called correctly.
        this.students = new ArrayList<Student>(); // creates an empty ArrayList for students.
        this.projects = new ArrayList<Project>(); // creates an empty ArrayList for projects.
    }

    // This method adds a student object to the students list.
    // The 'void' keyword indicates that this method does not return anything.
    public void addStudent(Student s) {
        this.students.add(s);
    }

    // Add a student by creating a new Student instance from a string when reading data from a file.
    public void addStudent(String s) {
        this.addStudent(Student.createStudent(s)); // Creates a new student object and adds it to the list.
    }

    // Much like the the first 'addStudent' method, this method adds a project object to the projects list.
    // The 'void' keyword indicates that this method does not return anything.
    public void addProject(Project p) {
        this.projects.add(p);
    }

    // Add a student by creating a new Student instance from a string when reading data from a file.
     // The 'void' keyword indicates that this method does not return anything.
    public void addProject(String p) {
        this.addProject(Project.createProject(p)); // Creates a new project object and adds it to the list.
    }

    // This method creates a preference matrix with the size (this.students.size & this.project.size) based on the number of students and projects.
     // The 'void' keyword indicates that this method does not return anything.
    public void createPreferenceMatrix() {
        this.preferences = new int[this.students.size()][this.projects.size()];
    }

    // This method sets the preference integer for a student and project then assigns the preferenve integer to the current preference matrix entry via the use of indices.
     // The 'void' keyword indicates that this method does not return anything.
    public void setPreference(Student s, Project p, int preference) {
        this.preferences[this.students.indexOf(s)][this.projects.indexOf(p)] = preference;
    }

    // This method directly sets the preference integer for a row and column in the preference matrix using matrix indices.
     // The 'void' keyword indicates that this method does not return anything.
    public void setPreference(int row, int column, int preference) {
        this.preferences[row][column] = preference;
    }

    // This method sets the preference values for a specific row in the preference matrix using an array of preference values.
    public void setPreferenceRow(int row, String[] prefValues) {
        for (int j = 0; j < prefValues.length; j++) { // A for loop that iterates through the preference values array.
            // The loop then assigns each preference value to the current entry in the preference matrix.
            this.preferences[row][j] = Integer.parseInt(prefValues[j]);
        }
    }

    // Getter methods for the PreferenceData variables. As these variables are private, other classes that may want access to 
    // these variables in the PreferenceData object so this method enables that access while preventing any modifications to the object itself.
    public List<Student> getStudents() {
        return students;
    }

    // ***See previous comment***
    public List<Project> getProjects() {
        return projects;
    }

    // ***See previous comment***
    public int[][] getPreferences() {
        return preferences;
    }

    // This overrides the toString method from the Object class (the toString() method is a default method from the Object class) to provide a custom representation of the Student object.
    // The original toString method returns the objects address in the memory which contains the object's name then a '@' sign followed by the object's hashcode. 
    // The toString() method is overrided to generate a string representation of the PreferenceData object, which includes the students, projects and preferences then returns it.
    // Note that the '@Override' line isn't necessary, but it's common practice to do this and improves readability of the code because you are stating that you are overriding a method that already exists to the reader.
    @Override
    public String toString() {
        return "PreferenceData [students=" + students + ", projects=" + projects + ", preferences="
                + Arrays.toString(preferences) + "]";
    }
    
    // Reads preference data from a file then returns a new PreferenceData object.
    static PreferenceData readData(String inputFile) {

        // Creates an empty PreferenceData object.
        PreferenceData prefs = new PreferenceData();

        // Initialises a BufferedReader to read the file.
        try (BufferedReader reader = new BufferedReader(new FileReader(inputFile))) {

            // Initialise the reading state as 'UNKNOWN' and the row index.
            ReadState state = ReadState.UNKNOWN;
            int row = 0;

            // Using a while loop, this loops through the lines in the file while the reader is ready and will continue to loop until it's closed.
            while (reader.ready()) {
                String line = reader.readLine(); // Read the current line from the file.
                switch (line.trim()) { // Trim whitespace and initiates a switch on the line content to determine which ReadState it should be.
                case "Students:":
                    // Switch to the student reading mode.
                    state = ReadState.STUDENT_MODE;
                    break;
                case "Projects:":
                    // Switch to the project reading mode.
                    state = ReadState.PROJECT_MODE;
                    break;
                case "Preferences:":
                    // Create the preference matrix and switch to the preference reading mode.
                    prefs.createPreferenceMatrix();
                    state = ReadState.PREFERENCE_MODE;
                    break;
                default:
                    // After the reading mode is determined, it then adds an student, project or preference instance to the class object.
                    switch (state) {
                    case STUDENT_MODE:
                        // Add a student to the PreferenceData object.
                        prefs.addStudent(line);
                        break;
                    case PROJECT_MODE:
                        // Add a project to the PreferenceData object.
                        prefs.addProject(line);
                        break;
                    case PREFERENCE_MODE:
                        // Add preference values for the current row in the PreferenceData object.
                        prefs.setPreferenceRow(row, line.split(","));
                        row++; // Increment the row index for the next line of preference values.
                        break;
                    default:
                        // If the reading mode cannot be determined and remains unknown, the switch then throws a PreferenceFormatException.
                        throw new PreferenceFormatException(line);
                    }
                }
            }

            // Closes the BufferedReader to release resources.
            reader.close();

            // These catch methods allows for a specific message to be printed based on the type of error the program runs into.
        } catch (FileNotFoundException e) {
            // If the input file is not found, print an error message and stack trace.
            System.err.println("Error opening preferences file. File does not exist as specified.");
            e.printStackTrace();
        } catch (IOException e) {
            // If an I/O error occurs while reading from the file, this prints the error message: "Error reading from file." and stack trace.
            System.err.println("Error reading from file.");
            e.printStackTrace();
        } catch (PreferenceFormatException e) {
            // If the preference file format is incorrect, this prints the error message: "Preference file in incorrect format. I can't tell which section I'm in." then "Line being read: " followed by getCurrentLine method located in the PreferenceFormatException class and then prints a stack trace.
            System.err.println("Preference file in incorrect format. I can't tell which section I'm in.");
            System.err.println("Line being read: " + e.getCurrentLine());
            e.printStackTrace();
        }

        // Returns the PreferenceData object.
        return prefs;
    }

    // This getter method returns the preference value for a specific student (by index i) and project (by index j) in the 2D matrix array.
    public int getPreference(int i, int j) {
        return this.preferences[i][j];
    }

    // This is a method to return the size of the students list in the PreferenceData object.
    public int numStudents() {
        return this.students.size();
    }

    // This is a method to return the size of the projects list in the PreferenceData object.
    public int numProjects() {
        return this.projects.size();
    }
} // End of the PreferenceData class.
