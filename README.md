# Quapitestkarateframework-main
 
Prerequisites

Ensure you have the following installed before setting up Karate:

1. Java Installation

Karate requires Java 8 or higher.

Install Java (Windows/Linux/Mac)

Windows: Download and install Java from Oracle JDK or use AdoptOpenJDK.

Linux/macOS: Install via terminal:
sudo apt update && sudo apt install openjdk-11-jdk  # Ubuntu/Debian
brew install openjdk@11  # macOS (using Homebrew)


Verify Java installation:
java -version

2. Maven Installation
Maven is required for managing Karate dependencies and running tests.

Install Maven (Windows/Linux/Mac)

Windows: Download and install Maven from Apache Maven and configure the PATH.

Linux/macOS: Install via terminal:
sudo apt install maven  # Ubuntu/Debian
brew install maven  # macOS

Verify Maven installation:
mvn -version

4. Project Setup

Create a new Maven project in your preferred IDE (IntelliJ, Eclipse, VS Code).

Add the karate-config.js file in src/test/java (for global configurations).

Create .feature files in src/test/java/com/api/automation/InventoryFlow folder.

Write Karate test scenarios in Gherkin syntax.

5. Running Tests

Run using TestRunner.java

7. Sample Karate Feature File