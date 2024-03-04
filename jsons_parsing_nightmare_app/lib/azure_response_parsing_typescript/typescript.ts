// can be generated with json to typescript

interface AzureResponse {
    id: string
    model: string
    created: number
    object: string
    choices: Choice[]
    usage: Usage
}

interface Choice {
    index: number
    messages: Message[]
}

interface Message {
    index: number
    role: string
    content: any
    end_turn: boolean
}

interface Usage {
    prompt_tokens: number
    completion_tokens: number
    total_tokens: number
}
// end of possibly generated code

const json = JSON.stringify({
    "id": "18689e76-7f2a-47fd-b950-157867ef26c4",
    "model": "gpt-4",
    "created": 1709207969,
    "object": "chat.completion",
    "choices": [
        {
            "index": 0,
            "messages": [
                {
                    "index": 0,
                    "role": "tool",
                    "content": {
                        "citations": [],
                        "intent": "[]"
                    },
                    "end_turn": false
                },
                {
                    "index": 1,
                    "role": "assistant",
                    "content": "The requested information is not available in the retrieved data. Please try another query or topic.",
                    "end_turn": true
                }
            ]
        }
    ],
    "usage": {
        "prompt_tokens": 3215,
        "completion_tokens": 19,
        "total_tokens": 3234
    }
});

const output: AzureResponse = JSON.parse(json); // voila - this is needed to map it to model

// all below just works
console.log(output?.choices[0]?.messages[0]?.content) // [LOG]: {    "citations": [],    "intent": "[]"  } 
console.log(output?.choices[0]?.messages[1]?.content) // [LOG]: "The requested information is not available in the retrieved data. Please try another query or topic." 