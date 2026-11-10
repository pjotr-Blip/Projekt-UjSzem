document.addEventListener("DOMContentLoaded", async () => {
  const track = document.getElementById("slidy-kartya"); // must be the .slider-track element
  const SPEED = 1; // px per frame

  // 1. load and render the cards (your original code)
  const adatok = await fetch("/api/cikkek");
  const cikkek = await adatok.json();

  track.innerHTML = cikkek.map(cikk => `
    <div class="card">
      <h2 class="slider-container">${cikk.cim}</h2>
      <p class="slider-container">${cikk.Leiras}</p>
    </div>
  `).join("");

  if (cikkek.length === 0) return;

  // 2. wait for fonts so the card heights are measured correctly
  await document.fonts.ready;

  // 3. infinite loop setup
  const originals = [...track.children];

  // clone one set to measure the exact height of a set
  originals.forEach(c => track.appendChild(c.cloneNode(true)));
  const setHeight = track.children[originals.length].offsetTop - track.children[0].offsetTop;

  // add enough extra sets so there is always content below the view
  const extra = Math.ceil(track.clientHeight / setHeight);
  for (let i = 0; i < extra; i++) {
    originals.forEach(c => track.appendChild(c.cloneNode(true)));
  }

  let pos = track.scrollTop = setHeight; // start in the 2nd set
  let hovering = false;

  track.addEventListener("mouseenter", () => hovering = true);
  track.addEventListener("mouseleave", () => hovering = false);

  function wrap() {
    if (track.scrollTop >= setHeight * 2) track.scrollTop -= setHeight;
    else if (track.scrollTop < setHeight) track.scrollTop += setHeight;
    pos = track.scrollTop;
  }

  // manual scrolling: keep position in sync and loop
  track.addEventListener("scroll", wrap);

  // auto scrolling
  function tick() {
    if (!hovering) {
      pos += SPEED;
      track.scrollTop = pos;
      wrap();
    }
    requestAnimationFrame(tick);
  }
  requestAnimationFrame(tick);
});