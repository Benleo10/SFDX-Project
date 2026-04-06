# Salesforce DX Project: Next Steps

Salesforce Basic:

What is the Variable?

    A variable is a place where we store data or information.
    The value stored in a variable can change while the program is running, so it is called a variable.
    Variables can be classified into different types based on the type of data they store (called data types).
        Example:
        Think of a variable like a container.
        This container can store things like food, snacks, or water.
        Similarly, a variable stores data or information, and we can use it whenever we need it. 

Types of Variables:
    In Apex variables are divided in to 3 types.

    Local Variable:
        Declared inside a method or block
        Can be used only within that method
        Created when the method starts and destroyed when it ends

    Instance Variable (Non Static):
        Declared inside a class but outside methods
        Each object (record) has its own copy
        Used to store object-specific data

    Static Variable:
        Declared using the keyword static
        Shared among all objects of the class
        Only one copy exists

            Easy Real-Life Example
                Think of a classroom:
                🧍 Local Variable → A student’s temporary note (used only during class)
                👤 Instance Variable → Each student’s name (different for everyone)
                🏫 Static Variable → School name (same for all students)


## How Do You Plan to Deploy Your Changes?

Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

## Configure Your Salesforce DX Project

The `sfdx-project.json` file contains useful configuration information for your project. See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.

## Read All About It

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)
