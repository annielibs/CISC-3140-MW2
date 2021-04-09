//the counter will update as the user enters text 
        //so we grab a ref to the id of both the textarea and the count 
        var count = document.getElementById('count');
        var input = document.getElementById('input'); 

        //keyup is fired when user's hands have left a previously pressed key
        input.addEventListener('keyup', function(e){
            wordCounter(e.target.value);
        });

        //wordCounter function takes in one argument text 
        //text is the user's input 
        function wordCounter(text) {
            var text = input.value; 
            var wordCount = 0;    //start at 0 words before we type anything
            
            //increments wordcount every time new word is typed
            //new word is recognized by the space separating words
            for (var i = 0; i<= text.length; i++) {
                if (text.charAt(i) == ' '){
                wordCount++; 
                }
            }
            count.innerText = wordCount;
        }
