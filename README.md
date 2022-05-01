**Git Tutorial Desktop Application**

This project is started with the intention to demonstrate my knowledge in Qt, QML, C++, code design and version control skills.
I have written articles about Git and have been incharge of version controls and releases previously. So, I have picked Git as the topic for this application.

The application starts with a title page (refer Page.qml):

<img src="https://user-images.githubusercontent.com/8523768/166157519-d70ff591-4775-4107-ad61-30cd304e6472.png" width="600"/>

Upon clicking "Start", the following pages are loaded according to the list model, 'Book' (refer book.h):

<img src="https://user-images.githubusercontent.com/8523768/166157691-461fc5f5-7aa5-498b-b310-0d542ed181d9.png" width="600"/>

There is also an index page available on each page by clicking the hamburger icon on the top left corner. The index page lists the contents of the turorial as per 'Book' model's display role:

<img src="https://user-images.githubusercontent.com/8523768/166157818-ab04d6b7-1b3b-465b-992c-c7a7c32a8254.png" width="600"/>

This is work in progress, here is the **DONE** pile:

1. Create front page.
2. Page Navigation:
  a) Add footer button - "Start" for first page, "Next" for following pages, "Finish" for last page. Reused code, no redundancy.
  b) Create QAbstractListModel to store **page names** (for showing on index page), and their **respective UI file path** (QML file) for the UI to display
  when the page is chosen.
  c) Navigate through pages according to the above model by clicking "Next" button.
3. Index Page:
  a) Add hamburger icon on top left and make it a toggle button, and if clicked anywhere outside of the index page, the index page should disappear.
  b) Populate the content headings on the index page using the model's display role.

**TO-DO** - With my experience in the field here are the set of features I am going to continue to work on to achieve a complete product:

4. Navigate to page upon clicking an entry in the index page.
5. Storing multiple pages' content - maybe sending updated dat file, maintaining cloud DB or showing webpage.
6. Keyboard navigation of buttons.
7. Detect OS and show tutorial content accordingly.
8. Have copy to clipboard options for the Git commands in tutorial.

**Bugs**:

Bug-1: Index page mouse area
- Expected: On index page, mouse click should induce page disappear only if an entry in the index page is chosen.
- Actual: Upon clicking anywhere on index page, the page disappears.
- Solution: Add a mouse area that overrides the mouse area of the page behind whick looks for mouse click event to close the index page.

Bug-2: Make pages scrollable
