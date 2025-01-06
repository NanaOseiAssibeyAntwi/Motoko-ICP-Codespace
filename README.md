# Motoko Utility Actor Project

This project demonstrates the use of Motoko's core modules (`Array`, `Buffer`, `Float`, and `Debug`) to perform various operations such as calculating averages, finding maximum values, manipulating arrays, and working with buffers.

## Features

### 1. **Grade Calculations**
- **`project(grades: [Float]): async Float`**  
  Calculates the average of a list of grades.  
  **Example**:  
  Input: `[85.5, 90.0, 78.0]`  
  Output: `84.5`

- **`maxGrade(grades: [Float]): async Float`**  
  Finds the maximum grade in a list.  
  **Example**:  
  Input: `[85.5, 90.0, 78.0]`  
  Output: `90.0`

---

### 2. **Array Operations**
- **`addArray(array3: [Nat], array4: [Nat]): async [Nat]`**  
  Concatenates two arrays.  
  **Example**:  
  Input: `[1, 2, 3]`, `[4, 5, 6]`  
  Output: `[1, 2, 3, 4, 5, 6]`

- **`addOne(): async [Nat]`**  
  Increments each element of a predefined array by 1.  
  **Example**:  
  Predefined Array: `[1, 2, 3, 4, 5, 6]`  
  Output: `[2, 3, 4, 5, 6, 7]`

---

### 3. **Buffer Operations**
- **`joinSchool(name: Text): async Text`**  
  Adds a student to the buffer and updates the first name.  
  **Example**:  
  Input: `"Osei Assibey"`  
  Output: `"Welcome to School Nana Antwi"`

- **`showAllBufferElements(): async [Text]`**  
  Returns all elements in the buffer.  

- **`removeElement(name: Text): async [Text]`**  
  Removes a specified element from the buffer.  
  **Example**:  
  Input: `"Nana Antwi"`  
  Output: List of remaining elements.

---

### 4. **Debugging**
- Demonstrates the use of `Debug.print` to display array and counter values in a loop.

---

## Prerequisites

- Install the Internet Computer SDK ([Dfinity's SDK](https://internetcomputer.org/)).
- Familiarity with the Motoko programming language.

---

## How to Run

1. Clone the repository to your local machine:
   ```bash
   git clone <repository-url>
   cd <repository-folder>

2. Deploy the actor to a local Internet Computer instance:
   
dfx start --background
dfx deploy

3. Interact with the actor using dfx or a frontend interface.


Example Usage

Using dfx Command
Run the following commands to interact with the actor:

  
- Calculate average of grades:
dfx canister call example project '(vec {85.5; 90.0; 78.0})'

- Find maximum grade:
- dfx canister call example maxGrade '(vec {85.5; 90.0; 78.0})'

Add two arrays: 
dfx canister call example addArray '(vec {1; 2; 3}, vec {4; 5; 6})'

Project Structure

project: Handles grade-related calculations.
addArray: Combines arrays.
Buffer: Manages dynamic student data storage.
Debugging: Prints values for error checking and development.
Contributing

Feel free to contribute by submitting issues or pull requests. Suggestions to enhance functionality are highly welcome!

## License

This project is not licensed.  
You are free to use, modify, and distribute this code without needing explicit permission from the author.  


Acknowledgments

Dfinity Foundation for the Internet Computer framework.
Motoko Base library for utilities used in this project.

