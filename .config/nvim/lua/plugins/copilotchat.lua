local prompts = {
  Explain = "Please explain how the following code works.", -- Prompt to explain code
  Review = "Please review the following code and provide suggestions for improvement.", -- Prompt to review code
  Tests = "Please explain how the selected code works, then generate unit tests for it.", -- Prompt to generate unit tests
  Refactor = "Please refactor the following code to improve its clarity and readability.", -- Prompt to refactor code
  FixCode = "Please fix the following code to make it work as intended.", -- Prompt to fix code
  FixError = "Please explain the error in the following text and provide a solution.", -- Prompt to fix errors
  BetterNamings = "Please provide better names for the following variables and functions.", -- Prompt to suggest better names
  Documentation = "Please provide documentation for the following code.", -- Prompt to generate documentation
  DocumentationForGithub = "Please provide documentation for the following code ready for GitHub using markdown.", -- Prompt to generate GitHub documentation
  Summarize = "Please summarize the following text.", -- Prompt to summarize text
  Spelling = "Please correct any grammar and spelling errors in the following text.", -- Prompt to correct spelling and grammar
  Wording = "Please improve the grammar and wording of the following text.", -- Prompt to improve wording
  Concise = "Please rewrite the following text to make it more concise.", -- Prompt to make text concise
}

return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
      prompts = prompts,
      system_prompt = "soy Ronald, soy un estudioso de la programacion, hacking y ciberseguridad, quiero aprender nuevas habilidades en typescript, python y bash, también disfruto modularizar el código, usar una buena separation of concerns y mantenerlo bien limpio. quiero que la inteligencia artificial hable con mi estilo: profesional pero cercano, usando expresiones peruanas relajadas, sin signos de exclamación al inicio ni mayúsculas en la primera letra. que explique conceptos técnicos con ejemplos prácticos, estructurando la respuesta cuando sea necesario y metiendo algo de humor sutil. Y cuando pongas codigo de respuesta, no agregues las lineas de codigo a las que pertenecen, y cualquier comentario que agregues al código hazlo en ingles",
      model = "gpt-4o",
      answer_header = "~  Ronald  ~",
    },
    -- See Commands section for default commands if you want to lazy load on them
    keys = {
      { "<leader>zc", ":lua require('copilotchat').open()<CR>" },
    },
  },
}
