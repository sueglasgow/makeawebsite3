# Web development learner project creation prompt

Generate a beginner-friendly website, for example a blog or portfolio. It may use plain HTML/CSS/JavaScript or a framework that builds static files. It will act as a starting point for someone learning web development skills in a GitHub Codespace – the implementation should be optimized for comprehension and extensibility by a beginner. 

Use any site theme the user provides when running this prompt to shape the website content and implementation. If none is provided, choose a suitable idea.

## Target frameworks

First, use any framework or technology the user explicitly requests. Otherwise, choose based on the site needs:

* For blogs or sites with several content pages, use Eleventy to demonstrate templates and reusable content.
* For app-like sites that need meaningful client-side interactivity or state, use React with Vite. Configure it to produce a static build, do not add a backend, the site should run without server-side code.
* For small, informational sites where templates or app interactivity add little value, use plain HTML, CSS, and JavaScript.

## Implementation guidelines

* Choose simple implementations that conform to web standards such as the WCAG AA accessibility guidelines.
* Include code comments to help learners understand core functionality, and a README introducing the user to the project (more detail below).
* The content of the website may also include instructional guidance on how it works.
* Use meaningful but concise names for code components such as variables and functions.
* Include any files necessary to build and run the site in a Codespace, such as package.json and config files for any frameworks used, if necessary for the implementation.
* Keep the directory structure simple, with minimal nesting.
* Website styles should be clean and minimal, with primary colors, high contrast, and light-hearted content.
* When images are used, prefer existing public domain or creative commons licensed options with attribution where necessary.
* Include an MIT LICENSE file.
* Include a `.gitignore` if appropriate.
* Ensure that the site can run and open immediately in Codespaces using the embedded Simple Browser.
* Ensure that code does not contain broken links or errors that will fire on first run. Links should be to pages or page sections that actually exist.
* The website may be deployed to a subdirectory, so ensure all links and refs use URLs relative to "./" that will work both run in dev mode in a Codespace and when published to a GitHub Pages repo.

Place the files in the current project root folder, but don't overwrite the contents of the `.devcontainer` or `.helpers` folders.

## Project docs

`README.md` should include:

* Introduction to the project with description of what it does and how it works, including an overview of the user experience it creates.
* List of project folders and files with one line explanations of each.
* Required system dependencies such as node, npm.
* Steps required to prepare the environment and run the site, along with a list of any required IDE extensions.
  * For framework-based projects, include the scripts and VS Code configuration needed to build and run the site either in GitHub Codespaces or locally in VS Code.
  * Include links to docs for frameworks used in the project.

In documentation, keep the language inclusive and encouraging.

## References 

Refer to the (legacy) Glitch starter apps for examples of similar projects to use as inspiration for structure and project style, not for copying wholesale:

* https://github.com/glitchdotcom/glitch-hello-website
* https://github.com/glitchdotcom/glitch-hello-eleventy
* https://github.com/glitchdotcom/glitch-hello-react
* https://github.com/glitchdotcom/glitch-in-bio
