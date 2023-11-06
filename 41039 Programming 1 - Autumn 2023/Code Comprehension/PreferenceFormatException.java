// This is an import statement to import the PrintStream class from the java.io package.
import java.io.PrintStream;

// This defines a public class named 'PreferenceFormatException' that inherits the variables and methods of the 'Exception' parent class via the 'extend' keyword.
// This custom exception class handles errors that occur when parsing student preference data in the 'PreferenceData' class.
// The 'Runner' class catches and handles this exception when reading data from a file or user input.
public class PreferenceFormatException extends Exception {

    // This declares a private variable to store the line of code that caused the exception as a String.
    // The 'final' keyword ensures that the variable is immutable after creation.
    private final String currentLine;

    // This defines a constructor that takes a single parameter (a String called 'line') which also initialises the currentLine variable.
    public PreferenceFormatException(String line) {
        this.currentLine = line;
    }

    // This declares a method to print the line of code that caused the exception. 
    // This method makes use of the PrintStream class, which is used to make sure the line of the code that caused an exception in either the 'PreferenceData' and 'Runner' classes can be formatted in a way that is appropriate for any desired output, such as a file or the console and even a GUI.
    public void printCurrentLine(PrintStream s) {
        s.print(currentLine);
    }

    // This also declares a printCurrentLine method, making this method an overloaded method. This method prints the line of code that caused the exception to the standard error stream (System.err) which is a predefined object in the PrintStream class. 
    // The only time this method is called is in the PreferenceData.java file on line 186.
    public void printCurrentLine() {
        this.printCurrentLine(System.err);
    }
    
    // It is important to note that method names can be re-used as long as the parameters of the method is different, in this case there are no parameters in this method as opposed to the printCurrentLine method above, making both methods overloaded methods.

    // Getter method for the currentLine variables. As this variable is private, other classes that may want access to 
    // this variables, so this method enables that access while preventing any modifications to the variable itself.
    public String getCurrentLine() {
        return currentLine;
    }
} // End of the PreferenceFormatException class.
