#!/bin/bash

# Create the HTML file
cat <<EOL > index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sticky Header</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <header id="stickyHeader">
        This is a sticky header!
    </header>
    <main>
        <!-- Your main content here -->
        <div style="height: 2000px;">
            Scroll down to see the sticky header in action.
        </div>
    </main>
    <script src="script.js"></script>
</body>
</html>
EOL

# Create the CSS file
cat <<EOL > styles.css
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
}

header {
    background-color: #333;
    color: white;
    text-align: center;
    padding: 10px;
    width: 100%;
    position: relative; /* Initially set to relative */
    z-index: 1000; /* Ensure the header stays on top of other content */
}

.sticky {
    position: fixed; /* This makes it stick to the top */
    top: 0;
    left: 0;
}
EOL

# Create the JavaScript file
cat <<EOL > script.js
window.addEventListener('scroll', function() {
    const header = document.getElementById('stickyHeader');
    const sticky = header.offsetTop;

    if (window.pageYOffset > sticky) {
        header.classList.add('sticky');
    } else {
        header.classList.remove('sticky');
    }
});
EOL

echo "Files created successfully!"

