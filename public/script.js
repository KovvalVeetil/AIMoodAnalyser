document.addEventListener('DOMContentLoaded', () => {
    const analyzeButton = document.getElementById('analyzeButton');
    const resultDiv = document.getElementById('result');
    const textInput = document.getElementById('textInput');

    analyzeButton.addEventListener('click', async () => {
        const text = textInput.value.trim();

        if (!text) {
            resultDiv.innerHTML = 'Please enter some text.';
            return;
        }

        try {
            const response = await fetch('/api/v1/moods/analyze', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({ text })
            });

            if (!response.ok) {
                throw new Error('Network response was not ok');
            }

            const result = await response.json();
            resultDiv.innerHTML = `Sentiment: ${result[0].label}, Score: ${result[0].score}`;
        } catch (error) {
            resultDiv.innerHTML = `Error: ${error.message}`;
        }
    });
});
