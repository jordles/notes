# AI

Computer programs that can complete cognitive tasks typically associated with human intelligence. 

AI has existed for awhile now. Some examples of early implementations include recommendation systems, chatbots, and image recognition systems.

AI is also a broad field that includes machine learning, deep learning, natural language processing, computer vision, robotics, and more.

AI is powered by __machine learning__ algorithms, which allow it to learn from data and improve its performance over time. These algorithms can be trained on large datasets to recognize patterns, make predictions, and perform tasks that would be difficult or impossible for humans to do manually.

Machine learning is a subset of AI that focuses on the development of algorithms that can learn from and make predictions based on data. It involves training models on large datasets to recognize patterns and make decisions without being explicitly programmed. Its often used by AI to make sense of large amounts of data and to automate tasks that would be difficult or impossible for humans to do manually.

Machine Learning is built using __Training Sets__, which are datasets that are used to train the model / AI. The model is then tested on a separate dataset called the Test Set, which is used to evaluate the performance of the model. The model is then fine-tuned based on the results of the test set.

__Training sets__ provide ML programs with examples of what to expect and how to respond. 

# AI development techniques

__Artificial intelligence__ refers to computer programs that can complete cognitive tasks typically associated with human intelligence. There are two main techniques used to design AI programs:

- __Rule-based techniques__ involve creating AI programs that strictly follow predefined rules to make decisions. For example, a spam filter using rule-based techniques might block emails that contain specific keywords using its predefined logic.

- __Machine learning techniques__ involve creating AI programs that can analyze and learn from patterns in data to make independent decisions. For example, a spam filter using these techniques might flag potential spam for the recipient to review, preventing automatic blocking. If the recipient marks emails from trusted sources as safe, the spam filter learns and adapts its logic to include similar emails from that sender in the future.

In general, __rule-based techniques__ are commonly used for tasks that require rigidity, such as blocking messages from untrusted senders that are obviously spam, like requests for bank transfers or private information. 

Conversely, __ML techniques__ are better suited for tasks demanding flexibility and adaptability, like learning to recognize that messages from trusted senders containing typos are not spam.

# Approaches to training ML programs

__Supervised learning__

Using  this approach, AI designers provide the ML program with a labeled training set of data, and the program learns from that data. A labeled training set includes data that is labeled or tagged, which provides context and meaning to the data. For instance, an email spam filter that's trained with supervised learning would use a training set of emails that are labeled as “spam” or “not spam.” ==Supervised learning is often used when there's a specific output in mind.==

__Unsupervised learning__

In this approach, AI designers provide the ML program with an unlabeled training set of data, and the program learns from that data. An unlabeled training set includes data that does not have labels or tags. For instance, ML might be used to analyze a dataset of unsorted  email messages and find patterns in topics, keywords, or contacts. In other words, ==unsupervised learning is used to identify patterns in data without a specific output in mind.==

__Reinforcement learning__

In this approach, AI designers provide the ML program with data that allow it to learn by  trial-and-error. The program learns to do this by getting rewarded for making good choices that lead to the desired results. ==Reinforcement learning is commonly used by conversational AI tools. As these tools receive feedback from users and AI designers, they learn to generate effective responses.==

Each ML technique has its own strengths and weaknesses. Depending on the type of data that's available and what's needed to solve the particular problem, AI designers may use one, two, or all three of these techniques to produce an AI-powered solution.

# Generative AI

__Generative AI__ is a type of AI that can create new content, such as text, images, or music, based on the patterns it has learned from the training data. It uses techniques like deep learning and neural networks to generate new content that is similar to the training data.

Generative AI is able to understand natural language. Heres the process: 
  1. Provide input
  2. Data is processed
  3. Output is generated 

__Natural Language__ refers to the way humans communicate with each other using spoken or written language. It includes the use of words, phrases, and sentences to convey meaning and express ideas. Natural language processing (NLP) is a subfield of AI that focuses on enabling machines to understand and interpret human language.

> Advancements in supervised, unsupervised, and reinforcement learning have helped pave the way for __generative AI__ —AI that can generate new content, like text, images, or other media. When users provide input in the form of a __prompt__ —text input that provides instructions to the AI model on how to generate output—the AI tool processes this input to generate new content.

> For instance, all three approaches play distinct roles in conversational AI tools. Supervised learning equips conversational AI tools with foundational dialogue data, enabling them to respond to common conversational cues appropriately. Unsupervised learning enables them to interpret nuances in language, like colloquialisms, that occur naturally in conversation. Reinforcement learning further strengthens these tools by allowing them to improve their responses in real-time based on user feedback. This enables them to adapt to the conversational context and engage in natural conversations.

Benefits of generative AI include:
- **Efficiency**: It can automate content creation, saving time and resources.
- **Personalization**: It can generate tailored content based on user preferences and behavior.
- **Better decision-making**: It can analyze large datasets and generate insights that help businesses make informed decisions.

Capabilities of AI include:
- Generate content: It can create text, images, music, and other media based on the patterns it has learned from the training data.
- Analyze information quickly: It can process large amounts of data and generate insights that help businesses make informed decisions.
- Answer questions: It can understand natural language and provide answers to questions based on the information it has been trained on.
- Simplify day-to-day tasks: It can automate repetitive tasks, such as data entry or customer service responses, freeing up time for more complex tasks.

Limitations of AI include:
- Can't learn independently: Generative AI relies on the data it has been trained on, and it cannot learn or adapt to new information without additional training.
- Bias in training data: If the training data contains biases, the AI model may generate biased content.
- Can contain errors: Generative AI can produce content that is factually incorrect or nonsensical, especially if the training data is flawed or incomplete. These are known as __hallucinations__ - Ai outputs that are not based on factual information or reality, but rather generated based on patterns learned from the training data.

Types of generative AI tools include:
  - Text 
  - Image
  - Audio
  - Video
  - Code

__Text Generators__ are AI tools that can create text based on input prompts. They use generative AI techniques to analyze the patterns in the training data and generate new text that matches the input prompt. Some popular text generators include OpenAI's GPT-3, Google's BERT, and Facebook's RoBERTa.

<details>
<summary>Conversational AI tools</summary>

## Conversational AI tools  

Conversational AI tools can process text requests and generate text responses. Their ability to simulate human-like conversations enables them to provide detailed and nuanced answers to questions on a wide variety of subjects.

You might use conversational AI tools for tasks such as researching online information, translating between languages, analyzing long documents, brainstorming ideas, planning schedules, proofreading text, and much more. 

Example tools include:

__Anthropic Claude__

  - Description: Anthropic Claude can complete problem-solving tasks, like finding mathematical solutions, translating between languages, and summarizing long documents. 
  - Stand-alone or integrated: Stand-alone

__Gemini__

  - Description: Supercharge your creativity and productivity with Gemini. Chat to start writing, planning, learning and more with Google AI. 
  - Stand-alone or integrated: Both

__Microsoft Copilot__

  - Description: Integrated with Microsoft Edge, Microsoft Copilot can help with online searches to find information, compare products, and summarize web page content.
  - Stand-alone or integrated: Both

__ChatGPT__

  - Description: ChatGPT can generate ideas, plan schedules, debug code, and proofread text.
  - Stand-alone or integrated: Stand-alone

</details>

<details>
<summary>Productivity and writing assistants</summary>

## Productivity and writing assistants

AI productivity and writing assistants can help with workplace tasks. They might provide grammar or spelling suggestions, generate a summary of a long document, or solve problems. Here are some examples: 

__Clockwise__

  - Description: Clockwise is a calendar tool that learns users’ work habits to automatically schedule and manage calendar events.
  - Example industries: Consulting, technology, sales
  - Stand-alone or integrated: Stand-alone

__Grammarly__

  - Description: Grammarly is a writing assistant that can help users edit and write clear, concise text.
  - Example industries: Creative writing, education, marketing
  - Stand-alone or integrated: Stand-alone

__Jasper__

  - Description: Jasper is a writing assistant intended for marketing tasks, like drafting social media posts, emails, and landing page content.
  - Example industries: Copywriting, marketing, sales
  - Stand-alone or integrated: Stand-alone

__NotebookLM__

  - Description: NotebookLM integrates into document apps, like Google Docs, and helps summarize or ask specific questions about text, notes, and sources.
  - Example industries: Content writing, finance, sales
  - Stand-alone or integrated: Both

__Notion AI__

  - Description: Notion AI is a writing assistant built into Notion, a productivity and note-taking software tool.
  - Example industries: Development, marketing, product management, sales
  - Stand-alone or integrated: Integrated

__AI by Zapier__

  - Description: AI by Zapier is a built-in productivity tool that allows AI automation to be integrated with the apps and workflows already connected through Zapier.
  - Example industries: Engineering, marketing, project management, technology
  - Stand-alone or integrated: Integrated

</details>  

<br>

__Image Generators__ are AI tools that can create images based on text prompts. They use generative AI techniques to analyze the patterns in the training data and generate new images that match the input prompt. Some popular image generators include DALL-E, Midjourney, and Stable Diffusion.

<details>
<summary>Image-generative AI tools</summary>

## Image-generative AI tools

Image-generative AI tools use generative AI techniques to analyze the patterns in the training data and generate new images that match the input prompt. Some popular image-generative AI tools include:

__Adobe Firefly__

  - Description: Built into the Adobe suite, Firefly can generate and edit images.
  - Example industries: Design, education, marketing
  - Stand-alone or integrated: Integrated

__Canva Magic Design™__

  - Description: Canva Magic Design is a tool that generates text and image content in Canva, an online graphic design tool.
  - Example industries: Design, education, marketing
  - Stand-alone or integrated: Integrated

__DALL-E__

  - Description: Integrated with ChatGPT, DALL-E generates images from text prompts.
  - Example industries: Design, education, marketing
  - Stand-alone or integrated: Integrated

__ElevenLabs__

  - Description: ElevenLabs is a speech AI tool that can generate spoken voice-over audio from text in different languages.
  - Example industries: Content creation, education, marketing, production
  - Stand-alone or integrated: Stand-alone

__Google Ads__

  - Description: Google Ads helps businesses create and manage digital advertising campaigns. It features AI integration to help generate ad content and boost performance. Learn more about how to make AI work for your business with [Google Ads AI Essentials](https://www.google.com/ads/ai-essentials) and the [AI Explored video series](https://www.youtube.com/playlist?list=PL0u4h5QI6h7ZqZ3jO_4J8wQsZqT8n8n4r3).
  - Example industries: Marketing, Advertising
  - Stand-alone or integrated: Integrated

__Midjourney__

  - Description: Integrated into Discord, Midjourney can generate images from text prompts.
  - Example industries: Design, education, marketing
  - Stand-alone or integrated: Integrated

__Runway__

  - Description: Runway can generate a new video from a text prompt or edit an existing video's style or focus area, and remove people or other elements.
  - Example industries: Content creation, design, marketing, production
  - Stand-alone or integrated: Stand-alone

</details>

__Code Generators__ are AI tools that can create code based on input prompts. They use generative AI techniques to analyze the patterns in the training data and generate new code that matches the input prompt. Some popular code generators include OpenAI's Codex, GitHub Copilot, and Tabnine.

<details>
<summary>Code Generative AI tools</summary>

## Code-generative AI tools

These tools help with software development tasks across various programming languages. They function as an AI pair programmer—offering suggestions, debugging errors, finding solutions to coding challenges, and much more:

__Gemini Code Assist__

  - Description: A plugin for popular integrated development environments (IDEs), Gemini Code Assist allows users to prompt Gemini within their IDEs to generate code, troubleshoot bugs, and answer questions about software development.
  - Example industries: Software development, information technology, web development, systems administration
  - Stand-alone or integrated: Integrated

__GitHub Copilot__

  - Description: A plugin for popular IDEs and built into GitHub, Copilot can write and suggest code, suggest descriptions for pull requests, translate multiple languages into code, and index repositories.
  - Example industries: Data science, software development, web development
  - Stand-alone or integrated: Integrated

__Tabnine__

  - Description: Tabnine can be a plugin to many popular code editors to help speed up delivery and keep code safe.
  - Example industries: Data science, software development, web development
  - Stand-alone or integrated: Integrated

__Jupyter AI__

  - Description: Jupyter is an open-source platform for coding, and this built-in tool includes a chat interface, which can be used to generate code, fix coding errors, and ask questions about files.
  - Example industries: Data science, software development, web development
  - Stand-alone or integrated: Integrated

</details>

<br>

__Multimodal models__ are AI models that can process and generate multiple types of data, such as text, images, and audio. They can be used to create more complex and sophisticated AI tools that can perform a wider range of tasks. Some examples of multimodal models include OpenAI's GPT-4, Google's Gemini, and Meta's LLaMA.

**Generative AI tools** include:
- __Standalone tools__: These are AI tools that can be used independently, such as text generators, image generators, and code generators. They can be used to create content, automate tasks, and assist with various tasks.
- __Integrated tools__: These are AI tools that are integrated into existing software applications, such as chatbots, virtual assistants, and recommendation systems. They can be used to enhance the functionality of existing software applications and provide users with a more personalized experience.
- __Custom Solutions__: These are AI tools that are built specifically for a particular use case or industry. They can be used to solve specific problems and provide users with a tailored solution.

To use a <ins>Generative AI tool</ins>, we require a __prompt__ - a text input that provides instructions to the AI model on how to generate output. The prompt can be as simple or as complex as needed, depending on the desired output.


[PAIR Explorables](https://pair.withgoogle.com/explorables/)
 is an optional resource for anyone who wants to learn more about AI. It is a collection of interactive articles that are designed to make key AI concepts more accessible and understandable. PAIR Explorables covers a wide range of topics, including:

  - Machine learning basics
  - Fairness and bias in AI programs
  - Data and privacy considerations in AI
  - Potential risks and benefits of AI



# AI Tools and Models

__AI tools__ and __AI models__ are two key components of AI technology.

__AI tools__ - AI-powered software that can automate or assist users with a variety of tasks. They are powered by __AI models__. 

__AI models__ - The underlying algorithms and data that power AI tools. They are trained on large datasets to recognize patterns, make predictions, and perform tasks that would be difficult or impossible for humans to do manually.

![alt text](media/ai-tools-models.png)

Some AI tools ==leverage multiple AI models==, working together as a "family," to achieve more flexibility and perform a wider range of tasks. Each model within the family might be specialized for a specific subtask, ultimately contributing to the overall functionality of the AI tool. You'll explore these types of multimodal tools later in this course.

## Process of Training AI models: 

AI designers and engineers develop AI models through a process called __training__. Training involves providing the AI model with a large dataset of examples, which it uses to learn patterns and relationships within the data. The model is then tested on a separate dataset to evaluate its performance and make adjustments as needed.

Here’s an example of the typical steps a designer might take in this process, in this case for building a model that predicts rainfall:

1. __Define the problem to be solved.__   
AI designers and engineers want to predict rain to help people stay dry when commuting to and from work. They start by considering AI’s capabilities and limitations before identifying an AI solution.

  1. __Collect relevant data to train the model.__   
  AI designers and engineers gather historical data of days when it rained and days when it didn't rain over the past 50 years.

  1. __Prepare the data for training.__   
  AI designers and engineers prepare the data by labeling important features, such as outdoor temperature, humidity, and air pressure, and then noting whether it rained. It's also common to separate the data into two distinct sets: a training set and a validation set to test with later.

  1. __Train the model.__   
  AI designers and engineers apply machine learning (ML) programs to the prepared training data. As the ML programs analyze the data, they begin learning how to recognize patterns that indicate the likelihood of rainfall, such as the combination of high temperatures, low air pressure, and high humidity.

  1. __Evaluate the model.__   
  AI designers and engineers use the validation set they prepared earlier to assess their model's ability to predict rainfall accurately and reliably. Analyzing a model's performance can uncover potential issues impacting the model, such as insufficient or biased training data. If any issues exist, the AI designers and engineers may revisit an earlier step in this process to try a different approach. Once the model performs well with its validation set, the process continues to the next step.

  1. __Deploy the model.__   
  When the AI designers and engineers are satisfied with their model's performance, they deploy it in an AI tool—helping people in their city stay dry on their way to work!

Model training is an <ins>iterative process</ins>. AI designers and engineers can repeat each step as many times as necessary and make adjustments until they create the best model possible. 

__AI Augmentation__ - The process of using AI to improve a work product, whether by making it easier to do or higher in quality. 

__AI automation__ - The process of using AI to automate a task or process, such as automating data entry or automating customer service responses, without any human intervention.

# Human in the Loop Approach

__Human in the Loop (HITL)__ is an approach to AI development that involves human input and oversight at various stages of the AI lifecycle. This approach ensures that AI systems are designed, trained, and deployed with human judgment and expertise, leading to more accurate and reliable AI models. This approach is important for developing __responsible AI__. 

__Responsible AI__ refers to the practice of developing and deploying AI systems in a way that is ethical, transparent, and accountable. It involves considering the potential impact of AI on society and ensuring that AI systems are designed to be fair, unbiased, and respectful of user privacy.

Aspects of responsible AI include:
  - Managing the limitations of AI models such as __knowledge cutoffs__, biases, and hallucinations.

  - __Knowledge cutoffs__ refer to the point in time when an AI model was last trained on new data. This means that the model may not have access to the most up-to-date information, which can lead to inaccuracies in its responses. Knowledge cutoffs can be managed by periodically retraining the model on new data, otherwise it might lead to __hallucinations__ (an AI output that is not based on factual information or reality) if the AI tries to generate information that is not based on factual information or reality.

Assess whether to apply generative AI to a task: 
  - Is the task generative in nature?
  - Can the task be iterated on to achieve a better result?
  - Are there resources to provide human oversight and feedback? (is there a human in the loop?)


# LLMs 

__Prompt engineering__ is the process of designing and optimizing prompts to achieve desired outcomes from AI models. It involves crafting clear, concise, and specific prompts that guide the AI model to generate relevant and accurate responses.

Important aspects of prompt engineering include:
  - specifying the desired output format.
  - iterating on prompts to refine the model's responses.
  - __few-shot prompting__, which involves providing examples in the prompt to guide the model's responses.

__Large Language Models (LLMs)__ are a type of AI model that is trained on vast amounts of text data to understand and generate human-like language (words, concepts, and phrases) in response to prompts. They are capable of performing a wide range of natural language processing tasks, such as text generation, translation, summarization, and question answering.

When being trained on the text data, LLMs learn to recognize patterns in language and generate responses that are coherent and contextually relevant. They can also be fine-tuned for specific tasks or domains to improve their performance.

LLMs use statistics to analyze the relationships between words and phrases in the training data. They learn to predict the next word in a sentence based on the context of the previous words, which allows them to generate coherent and contextually relevant responses. 

Factors that contribute to hallucinations in LLMs include:
  - Lack of context: LLMs may generate responses that are not relevant to the prompt if they do not have enough context to understand the user's intent.
  - Bias in training data: If the training data contains biases, the LLM may generate biased responses.
  - Limitations of the model: LLMs are not perfect and may generate responses that are factually incorrect or nonsensical.
  - Quality of the training data: If the training data is of low quality or contains errors, the LLM may generate responses that are inaccurate or nonsensical.
  - Phrasing of the prompt: The way the prompt is phrased can also affect the quality of the response. If the prompt is ambiguous or unclear, the LLM may generate a response that does not meet the user's expectations.
  - Method an LLM uses to generate responses: LLMs use different methods to generate responses, such as sampling or beam search. These methods can affect the quality of the response and may lead to hallucinations if not used correctly.
  
Effective Prompting: 

Specify the task
Specifying your task is the foundation of every prompt. Describe in detail what you want the AI tool to do, be clear and avoid ambiguity. If you write a task with vague instructions, it can result in an output that’s irrelevant or incorrect.  Your task may include a persona and a format preference so that the task is specific: 

Task: What action do you want the tool to help you with? For example, you might ask the tool to write an email or create an image. 

Persona: What expertise do you want the AI tool to draw from, and who is the audience? For example, you might ask the tool to complete the task with the expertise of an IT professional, or ask it to create an output geared towards a specific audience like your manager or team. 

Format: How do you want the output to be formatted? For example, you might ask the AI tool to create a bulleted list or a comparison table.

Here's an example of a prompt that includes a specific task, a persona and a format:

You're a concert promoter specializing in raising ticket sales in the alternative rock music industry. Create a social media post about an upcoming music festival that speaks to the local music community while attracting out-of-state festival-goers. Limit the post to 125-characters. Include 5 relevant hashtags.

Provide necessary context
Including detailed context in your prompts can narrow an AI tool's focus, enabling it to produce more tailored and effective output. Contextual information in your prompts might include:

Reasons and objectives for performing the task

Rules or guidelines that the output must follow

Relevant background information the tool should consider

These details can help an AI tool better understand your needs. Here's an example of a prompt that provides necessary context:

You're a concert promoter specializing in raising ticket sales in the alternative rock music industry. Create a social media post about an upcoming music festival that speaks to the local music community while attracting out-of-state festival-goers. Limit the post to 125-characters. Include 5 relevant hashtags. The local audience is primarily college students and young professionals (age 21-35) who follow indie rock. The festival features 12 bands over 2 days, with camping options and local food vendors.

This prompt will likely generate a more engaging and effective output that's tailored to a specific audience—without requiring additional time spent iterating on the initial prompt.

Include references as examples
References provide examples or resources that illustrate what you want an AI tool to produce. They specify details about your desired output, such as the style, tone, and format. Depending on the AI tool, you can include text, images, audio, or even video as references.

When including references in your prompts, consider these suggestions:

Briefly explain how the references relate to the task.

Use 2-5 high-quality examples that closely align with your needs.

Include your own work or open-source examples if relevant.

Here's an example of a prompt that includes references:

You're a concert promoter specializing in raising ticket sales in the alternative rock music industry. Create a social media post about an upcoming music festival that speaks to the local music community while attracting out-of-state festival-goers. Limit the post to 125-characters. Include 5 relevant hashtags. The local audience is primarily college students and young professionals (age 21-35) who follow indie rock. The festival features 12 bands over 2 days, with camping options and local food vendors. Here are examples of successful posts from similar events:

- Example 1: Where mountains meet music: Indie Rocks Festival returns! Your favorite local bands + national acts. Good eats & Sleep under the stars! #Indie Rocks #SupportLocalMusic

- Example 2: Join Indie Fest under the desert skies! 2 nights of raw sound 2 move you + camping vibes #RoadTrip #CampLife #RockOn

Note: Later in the course, you'll learn more about prompting techniques which leverage references. 

Evaluate your output
AI tools vary in their training and capabilities. Each tool has unique strengths and limitations, which can influence the quality of their output. After receiving a response from an AI tool, it's essential to carefully evaluate the quality and effectiveness of the AI-generated content before using it or sharing the output with others.

When evaluating an output, focus on factors such as:

Accuracy

Bias

Relevancy

Consistency

AI-generated content should serve as a starting point, not a final product. Sometimes while assessing and validating an AI output, you might determine that it's unacceptable or not useful. When that's the case, you should continue on to the next step of the prompting framework.

Iterate for better results
Even well-crafted prompts may not produce ideal results on the first try. This is where iteration comes in—the process of refining your prompt based on the AI's output. Think of iteration like having a back-and-forth conversation with an AI tool. The exchange typically flows like this:

You provide an initial prompt.

The AI tool responds with an output.

You evaluate the effectiveness of the AI-generated response.

You refine your request based on what worked and what didn't.

The cycle repeats until you produce the desired results.

Effective prompting is not about getting a perfect result on the first try, but about being willing to refine and improve your approach. It's important to be patient, provide clear feedback, and keep prompting until you reach the desired outcome.

Examples of LLMs usage at work:

  - Content Creation: LLMs can generate high-quality content for blogs, articles, and social media posts, saving time and effort for content creators.
  - Summarization: LLMs can summarize long documents, reports, or articles, making it easier for users to digest large amounts of information quickly.
  - Classification: LLMs can classify text into categories, such as spam detection in emails or sentiment analysis in customer reviews.
  - Extraction: LLMs can extract relevant information from unstructured text, such as extracting key entities or relationships from documents, to structure data thats easily consumed.
  - Translation: LLMs can translate text from one language to another, enabling cross-lingual communication and understanding.
  - Editing: LLMs can assist with editing and proofreading text, providing suggestions for grammar, style, and clarity improvements.
  - Problem Solving: LLMs can help solve complex problems by analyzing large datasets, identifying patterns, and generating insights that inform decision-making.

  ![alt text](media/LLM-use-cases.png)

  Iterative Process is using LLMs to generate content, evaluate the output, and refine the prompt based on the results. This iterative process allows users to improve the quality of the generated content over time.

  There are cases where LLMs are not producing useful output even with clear, specific prompts. Differences in LLMs capabilities and limitations produces different results. In these cases, users can try different LLMs or adjust their prompts to see if they can achieve better results.

__Few-shot prompting__ is a technique that involves providing the LLM with a few examples of the desired output in the prompt. This helps the LLM understand the context and generate more relevant responses. Few-shot prompting can be particularly useful when working with LLMs that have limited training data or when the task requires specific knowledge or expertise. __"shot"__ refers to the number of examples provided in the prompt, which can range from one to a few examples. Variations include: zero-shot prompting (no examples), one-shot prompting (one example), and few-shot prompting (multiple examples).

__Chain-of-thought prompting__ is a technique that involves breaking down complex tasks into smaller, manageable steps. This helps the LLM understand the problem better and generate more accurate responses. Chain-of-thought prompting can be particularly useful when working with LLMs that have limited training data or when the task requires specific knowledge or expertise.

__React prompting__ is a technique that asks the models to react to its own output. This technique can be used to improve the quality of the generated content by allowing the LLM to evaluate its own responses and make adjustments as needed. React prompting can be particularly useful when working with LLMs that have limited training data or when the task requires specific knowledge or expertise.

__Chain-of-thought prompting__ is a prompting technique that involves requesting a large language model to explain its reasoning processes. It asks an AI tool to trace a path through the reasoning it applied to generate its output—step by step, from input to output. This technique makes the LLM's reasoning process more accurate.

To use chain-of-thought prompting, simply include key phrases in your prompt, such as:

Explain your reasoning

Go step by step

These additions to your prompts encourage the AI to trace its thought process, making its output more informative. Chain-of-thought prompting can also help you validate the accuracy and reliability of an AI tool's output.

![alt text](media/AI-chain-of-thought-prompt.png)

For example, consider an HR manager who's developing onboarding materials for one of their organization's departments. Here's a brief example of how chain-of-thought prompting can be used to identify actionable steps to handle the task:

Create a bulleted list outlining the major duties and responsibilities of a new entry-level design hire at an ad agency. Explain your reasoning step by step.

By breaking down the onboarding process into stages and outlining specific activities, the AI can provide a more structured and comprehensive plan. This can help the HR manager identify potential gaps in their current onboarding process and make informed decisions about how to improve it.

Prompt chaining
Prompt chaining is a technique that links connected prompts together, like connecting links in a chain. It's another useful technique for solving complex tasks. Rather than using a single prompt, prompt chaining works by building upon the concept of iteration, taking AI interactions to a new level.

Using this technique involves three steps:

Task analysis. Start by breaking down your complex task into logical steps.

Initial prompting. Craft a prompt that effectively addresses the first step.

Input/output flow. Use the output from one prompt as input for the next, iterating along the way, until you complete the task.

Combining prompt chaining with chain-of-thought
While prompt chaining provides a structured approach to complex tasks, combining it with chain-of-thought prompting can significantly enhance the problem-solving process.

Consider the example of an HR manager who's developing onboarding materials for a new entry-level design hire at an ad agency.

Here’s an example of the potential output from their initial prompt:

Onboarding Course Outline for Entry-Level Hires at an Advertising Agency

Introduce agency culture and values

Summarize duties and responsibilities

Explain advertising industry fundamentals

Break down agency tools and technology

Detail client relationships and communication practices

And here's how they might apply prompt chaining to that output:

Based on your initial breakdown, let's focus on understanding the role of an entry-level designer at an ad agency. What are the key responsibilities and skills required for this position? Please provide a detailed list.

This iterative process of using the output from one prompt as input for the next would continue until all aspects of the project are addressed. By breaking down the complex task with prompt chaining and incorporating chain-of-thought, you can tackle more difficult problems while ensuring more accurate results.

Pro tip: When using prompt chaining, keep track of outputs that might be relevant in later steps. This helps maintain consistency throughout the chain as you progress through the task. Additionally, don't hesitate to use chain-of-thought at any step along the way to validate the accuracy and relevancy of the AI tool's output.

# Data Bias and AI Ethics

Responsible AI is the principle of developing and using AI ethically, with the intent of benefiting people and society while avoiding harm. It involves considering the potential impact of AI on society and ensuring that AI systems are designed to be fair, unbiased, and respectful of user privacy.

__AI user__ is someone who leverages AI to complete a personal or professional task. 

__AI system__ is an AI model that is used to complete a task.

For example, flying the plane is a task that requires an AI system to be trained on data about flying, such as flight patterns, weather conditions, and air traffic control procedures. The AI user is the pilot who uses the AI system to fly the plane.

__AI bias__ includes:

__Systemic bias:__ Bias that is built into the AI system itself, such as biased training data or algorithms that favor certain groups over others. A tendency upheld by institutions that favors or disadvantages certain outcomes or groups. 
- Example: An AI system that is trained on biased data may produce biased results, such as favoring white people over black people.

__Data bias:__ Bias that is introduced into the AI system through the data used to train it, such as biased data sources or data that is not representative of the population. A circumstance in which systemic errors or prejudices lead to unfair or inaccurate information, resulting in biased outputs. 

AI harms include:

__Allocative harm:__ Harm that occurs when an AI system allocates resources or opportunities in a way that is unfair or discriminatory to a persons' well-being, such as denying access to healthcare or education based on biased data or algorithms. A situation in which an AI system unfairly allocates resources or opportunities, such as jobs, loans, or housing, to certain groups over others.

__Quality-of-service harm:__ Harm that occurs when an AI system provides a lower quality of service to certain groups and identities, such as providing less accurate or reliable information to marginalized communities. A situation in which an AI system provides a lower quality of service to certain groups, such as people with disabilities or non-native speakers, resulting in unequal access to services. Another example is speech recognition systems that perform poorly for certain accents or dialects, leading to misunderstandings and miscommunications.

__Representational harm:__ Harm that occurs when an AI system misrepresents or stereotypes certain groups, such as perpetuating harmful stereotypes or biases in media or advertising. A situation in which an AI system misrepresents or stereotypes certain groups, such as people of color or women, leading to bias and discrimination in society.

__Social System harm:__ Harm that occurs when an AI system reinforces or perpetuates existing social inequalities (macro level), such as discrimination or bias in hiring or lending practices. A situation in which an AI system reinforces or perpetuates existing social inequalities, such as discrimination against marginalized groups, leading to systemic bias and discrimination.

__Interpersonal harm:__ Harm that occurs when an AI system causes harm to individuals or groups, such as harassment or discrimination in online platforms or social media. The use of technology to create a disadvantage to certain people that negatively affects their relationships with others or causes a loss of one's sense of self and agency. 

__Deepfakes:__ Harm that occurs when an AI system creates realistic but fake images, videos, or audio recordings that can be used to deceive or manipulate people, such as creating fake news or propaganda. A situation in which an AI system creates realistic but fake images, videos, or audio recordings that can be used to deceive or manipulate people, leading to misinformation and distrust in media, causing social system harm for example.

__Privacy__ is the right for a user to have control over how their personal information and data are collected, stored, and used by AI systems. It involves ensuring that users' personal information is protected and that they have the ability to access, correct, or delete their data as needed.

__Security__ is the act of safeguarding personal information and private data from unauthorized access, use, or disclosure. It involves implementing measures to protect AI systems and user data from cyber threats, such as hacking or data breaches.

Measures to take to protect privacy and security include:
  - Be aware of an AI tool's terms of use or service, privacy policy, and any associated risks. 
  - Dont input personal or sensitive information into AI tools, such as passwords, financial information, or personal identification numbers.


# 5 Step Framework for Prompting: 

1. __Task__: Define the task you want the AI tool to perform. Be clear and specific about what you want the AI to do. Tasks include a __persona__ and a __format preference__ so that the task is specific. The persona is the expertise you want the AI tool to draw from, and the audience for the output (for example: an IT professional, or a specific audience like your manager or team). The format is how you want the output to be formatted, such as a bulleted list or a comparison table.
2. __Context__: Provide any necessary context or background information that the AI tool needs to understand the task. This can include relevant details, examples, or guidelines that will help the AI generate a more accurate and relevant response.
3. __References__: Include any references or examples that can help the AI tool understand the desired output. This can include links to relevant resources, documents, or examples of similar tasks.
4. __Evaluate__: After receiving the AI-generated output, evaluate its quality and relevance. Check for accuracy, completeness, and alignment with your expectations.
5. __Iterate__: If the output is not satisfactory, refine your prompt and repeat the process.