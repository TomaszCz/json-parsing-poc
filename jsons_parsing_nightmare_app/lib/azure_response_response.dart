// Consider below json response ( designed by microsoft rest azure AI api )
// find attached folders with parsing logic required to use it ( dart + typescript version )
// // {
//   "id": "18689e76-7f2a-47fd-b950-157867ef26c4",
//   "model": "gpt-4",
//   "created": 1709207969,
//   "object": "chat.completion",
//   "choices": [
//     {
//       "index": 0,
//       "messages": [
//         {
//           "index": 0,
//           "role": "tool",
//           "content": {
//             "citations": [],
//             "intent": "[]"
//           },
//           "end_turn": false
//         },
//         {
//           "index": 1,
//           "role": "assistant",
//           "content": "The requested information is not available in the retrieved data. Please try another query or topic.",
//           "end_turn": true
//         }
//       ]
//     }
//   ],
//   "usage": {
//     "prompt_tokens": 3215,
//     "completion_tokens": 19,
//     "total_tokens": 3234
//   }
// }