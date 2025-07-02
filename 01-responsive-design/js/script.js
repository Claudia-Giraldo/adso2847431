const generationRanges = {
      1: [1, 151],
      2: [152, 251],
      3: [252, 386]
    };

    const grid = document.getElementById('pokemonGrid');
    const select = document.getElementById('generationSelect');
    const modal = document.getElementById('pokemonModal');
    const modalContent = document.getElementById('modalContent');

    async function fetchPokemon(id) {
      const res = await fetch(`https://pokeapi.co/api/v2/pokemon/${id}`);
      return res.json();
    }

    async function loadGeneration(gen) {
      grid.innerHTML = 'Cargando...';
      const [start, end] = generationRanges[gen];
      const promises = [];
      for (let i = start; i <= end; i++) {
        promises.push(fetchPokemon(i));
      }
      try {
        const pokemons = await Promise.all(promises);
        renderCards(pokemons);
      } catch (error) {
        grid.innerHTML = '<p>Error al cargar los datos.</p>';
      }
    }

function renderCards(pokemons) {
  grid.innerHTML = '';
  pokemons.forEach(pokemon => {
    const typesHTML = pokemon.types.map(t =>
      `<span class="type type-${t.type.name}">${t.type.name}</span>`
    ).join(' ');

    const card = document.createElement('div');
    card.className = 'pokemon-card';
    card.innerHTML = `
      <img src="${pokemon.sprites.other["official-artwork"].front_default}" alt="${pokemon.name}">
      <h2>#${String(pokemon.id).padStart(3, '0')} ${pokemon.name.charAt(0).toUpperCase() + pokemon.name.slice(1)}</h2>
      <div class="types">${typesHTML}</div>
    `;
    card.addEventListener('click', () => showDetails(pokemon));
    grid.appendChild(card);
  });
}

function showDetails(pokemon) {
  const typesHTML = pokemon.types.map(t =>
    `<span class="type type-${t.type.name}">${t.type.name}</span>`
  ).join(' ');

  const stats = pokemon.stats.map(stat =>
    `<div class="stat-row"><span class="stat-name">${stat.stat.name}</span><span class="stat-value">${stat.base_stat}</span></div>`
  ).join('');

  modalContent.innerHTML = `
    <button class="close-btn" onclick="closeModal()">&times;</button>
    <img src="${pokemon.sprites.other["official-artwork"].front_default}" width="100" alt=" ${pokemon.name}">
    <h2>${pokemon.name.charAt(0).toUpperCase() + pokemon.name.slice(1)} <span style="font-size:1rem; color:#888;">#${String(pokemon.id).padStart(3, '0')}</span></h2>
    <div class="types" style="margin-bottom:1rem;">${typesHTML}</div>
    <div class="stats">${stats}</div>
  `;
  modal.classList.add('active');
}

    function closeModal() {
      modal.classList.remove('active');
    }

    window.addEventListener('click', e => {
      if (e.target === modal) closeModal();
    });

    select.addEventListener('change', e => {
      loadGeneration(e.target.value);
    });

    loadGeneration(1);