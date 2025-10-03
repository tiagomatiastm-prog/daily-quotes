let quotes = [];

// Charger les citations
fetch('quotes.json')
    .then(response => response.json())
    .then(data => {
        quotes = data;
        displayRandomQuote();
    })
    .catch(error => console.error('Erreur de chargement:', error));

// Afficher une citation aléatoire
function displayRandomQuote() {
    if (quotes.length === 0) return;
    
    const randomIndex = Math.floor(Math.random() * quotes.length);
    const quote = quotes[randomIndex];
    
    document.getElementById('quote').textContent = quote.quote;
    document.getElementById('author').textContent = quote.author;
}

// Bouton pour nouvelle citation
document.getElementById('newQuote').addEventListener('click', displayRandomQuote);
