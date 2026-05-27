{
  plugins.llm = {
    enable = true;
    settings = {
      enable_suggestions_on_startup = false;
      backend = "ollama";
      # model = "qwen2.5-coder:1.5b";
      model = "glm-4.7-flash:q4_K_M";
      # GLM doesn't work.
      url = "http://localhost:11434";
      accept_keymap = "<C-l>";
      dismiss_keymap = "<C-e>";
      context_window = 8192;
    };
  };

  keymaps = [
    {
      key = "<C-g>";
      mode = "i";
      action = "<cmd>LLMSuggestion<CR>";
    }
  ];
}
