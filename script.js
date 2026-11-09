// Keep the facts in one list so they're easy to edit or add to.
const cloudFacts = [
  "Clouds form when water vapor cools and gathers into tiny water droplets or ice crystals.",
  "The familiar names cumulus, stratus, and cirrus describe a cloud's shape or appearance.",
  "A cloud can look weightless, but a large cumulus cloud may contain hundreds of tons of water.",
  "Clouds help move water around Earth as part of the water cycle.",
  "Some high, thin cirrus clouds are made mostly of tiny ice crystals."
];

const factText = document.querySelector("#cloud-fact");
const factButton = document.querySelector("#fact-button");
let currentFact = 0;

factButton.addEventListener("click", () => {
  // Move forward through the list so the next fact is always different.
  currentFact = (currentFact + 1) % cloudFacts.length;
  factText.textContent = cloudFacts[currentFact];
});
