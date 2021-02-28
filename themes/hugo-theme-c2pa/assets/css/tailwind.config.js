module.exports = {
  theme: {
    extend: {
      colors: {
        base: "#231F20",
      },
    },
    fontFamily: {
      sans: ["halcom", "sans-serif"],
    },
    container: {
      center: true,
      padding: "1rem",
    },
  },
  variants: {},
  plugins: [require("@tailwindcss/typography")],
};
