<script lang="ts">
  import Logo from '$lib/Logo.svelte'

  const links = [
    { href: 'https://mail.love-foundation.org', label: 'Mail' },
    { href: 'https://drive.love-foundation.org', label: 'Drive' },
    {
      href: 'https://www.notion.so/lovefoundationglobal/Love-Family-Handbook-4d88dd51c36e4d56bcc126f06916ad12',
      label: 'Notion',
    },
  ]
</script>

<main>
  <div class="logo">
    <Logo />
  </div>
  <h1>❓ Where do I find...❓</h1>

  <p>
    Don't have an account? Need help?
    <br />
    Contact us in the
    <a href="https://lovefoundation.slack.com/archives/C0R5UL2D9">#it_support</a> channel 🥳
  </p>
  {#each links as { href, label }}
    <a {href}>
      <div class="link">
        <h2>{label}</h2>
      </div>
    </a>
  {/each}

  <br />
  <p>
    <code>made with ❤️</code>
  </p>
</main>

<style>
  main {
    max-width: 32rem;
    width: 100%;
    padding: 1rem;
    margin: 0 auto;
    text-align: center;
  }

  .logo {
    width: 100%;
    max-width: 8rem;
    margin: 0 auto;
  }

  h1 {
    font-size: min(9vw, 3rem);
    font-weight: normal;
  }

  p {
    text-align: center;
    margin-bottom: 2rem;
  }

  p a {
    font-style: italic;
    background-color: #f5f8ff;
    padding: 0.2rem;
  }

  .link {
    padding: 0.75rem;
    border: 0.2rem solid #3068ec;
    background-color: #f5f8ff;
    margin-bottom: 1rem;
  }

  .link:hover {
    box-shadow: 0 0.25rem 2rem #0002;
    transform: scale(1.025);
  }

  .link h2 {
    margin: 0;
  }
</style>
