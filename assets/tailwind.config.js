module.exports = {
  purge: {
    enabled: process.env.NODE_ENV === "production",
    content: ["../lib/**/*.eex", "../lib/**/*.leex", "../lib/**/*_view.ex"],
    options: {
      whitelist: [/phx/, /nprogress/],
    },
  },
  theme: {
    container: {
      center: true,
      padding: {
        DEFAULT: "1rem",
        sm: "2rem",
        lg: "4rem",
        xl: "5rem",
        "2xl": "6rem",
      },
    },
  },
};
