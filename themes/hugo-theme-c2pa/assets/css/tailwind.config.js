module.exports = {
  theme: {
    extend: {
      colors: {
        base: "#231F20",
      },
      scale: {
        55: ".55",
        60: ".6",
        65: ".65",
        70: ".7",
        80: ".8",
        85: ".85",
        90: ".9",
        95: ".95",
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
