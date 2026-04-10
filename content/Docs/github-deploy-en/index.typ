#import "../index.typ": template, tufted
#show: template.with(
  title: "GitHub Deployment",
  description: "Documentation on deploying the site to GitHub Pages using GitHub Actions.",
  lang: "en",
)

= GitHub Deployment

You can already preview the site locally. Now it's time to publish it to the Internet so everyone can access it!

The template includes `.github/workflows/deploy.yml`. You can deploy your site to GitHub Pages easily with GitHub Actions. You only need to:

1. Go to your GitHub repository;
2. Navigate to _Settings_, then click _Pages_;
3. *Under _Build and deployment_, choose _GitHub Actions_ as the source.*

Now, every time you push to the `main` branch, your site will be built and deployed automatically.

Read #link("https://github.com/Yousa-Mirage/Tufted-Blog-Template/wiki/GitHub-Pages-%E9%83%A8%E7%BD%B2%E7%BD%91%E7%AB%99")[Wiki - Deploying to GitHub Pages] to learn more.
