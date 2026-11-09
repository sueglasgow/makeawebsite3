# Cloud Club

Cloud Club is a friendly, one-page field guide for curious sky-watchers. Visitors can meet three common cloud types, read a few quick facts, and use the “Another little fact” button to cycle through more. The layout is responsive, and the illustrations are made with CSS and text characters, so no image files are needed.

The project uses plain HTML for its content, CSS for the layout and illustrations, and a small JavaScript file for the fact button. This makes it a simple place to practice editing a web page and seeing how its parts work together.

## Project files

| File | What it does |
| --- | --- |
| `index.html` | Page content, navigation, and the cloud guide sections |
| `styles.css` | Colors, responsive layout, and CSS illustrations |
| `script.js` | Cycles through the cloud facts when the button is selected |
| `README.md` | Project introduction and setup guide |
| `LICENSE` | MIT license for the project |
| `.gitignore` | Common local editor and operating system files to leave out of Git |

## Requirements

- A modern web browser
- Python 3 to run the optional local web server
- GitHub Codespaces or VS Code for editing

There are no JavaScript packages or build step to install.

## Run the site

1. Open this folder in GitHub Codespaces or VS Code.
2. In the integrated terminal, start a local server:

   ```sh
   python3 -m http.server 8000
   ```

3. In Codespaces, open the forwarded port 8000 in the Simple Browser. In VS Code, open `http://localhost:8000` in your browser.
4. Stop the server with `Ctrl+C` in the terminal when you are finished.

You can also open `index.html` directly in a browser to explore the page. A local server is recommended as you continue learning, since it behaves more like a published website.

## Helpful editor extensions

No extensions are required. If you want extra support while learning, try:

- [Live Preview](https://marketplace.visualstudio.com/items?itemName=ms-vscode.live-server) by Microsoft to preview the page in VS Code
- [HTML CSS Support](https://marketplace.visualstudio.com/items?itemName=ecmel.vscode-html-css) for CSS class name suggestions

## Ideas to explore

- Add another cloud card in `index.html`.
- Add a new fact to the `cloudFacts` list in `script.js`.
- Experiment with the color variables near the top of `styles.css`.
- Try changing the page layout at different screen widths.

## Learning resources

- [HTML basics](https://developer.mozilla.org/docs/Learn/HTML)
- [CSS basics](https://developer.mozilla.org/docs/Learn/CSS)
- [JavaScript guide](https://developer.mozilla.org/docs/Web/JavaScript/Guide)
