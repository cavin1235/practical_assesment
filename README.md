
# Assesment

# Description

- Load ListWidget and run the app.
- Increment first list item by clicking it 3 times. Scroll to bottom and then scroll to top, the
  count will get reset

# Functional/Product Requirement

- There should be 100 list items, each should be set at 0 initially and user can increment its
  count.
- The count incremented by user should be persisted when he scrolls the list.

# Task:

- Solve the functional requirement.
- Review this file from Code Review perspective, list the issues and what changes should be made,
  perform the changes to the file.
- Think of it as a intern checked in this code and as a senior has to code review and fix the code
  from implementation perspective to make it correct and efficient.
- Send the fixed file back to the recruiter.


# Solution

This task has been implemented using a widget called **AutomaticKeepAliveClientMixin** which is used to persist the state of a widget. 

Along with this, I've implemented the following things:

- Implemented an architecture and proper folder strcuture where I can segregate files
- Added **utils** folder that contains App Colors and constants that contains the colors and the spacing values which can be used throughout the app.
- Added **widgets** folder that contains all the resusable widgets.
- Added some ammount of responsivenes to the design by using widgets such **Spacer** and by utilising **MediaQuery**
- Added documentation in files where needed
