---
layout: default
permalink: /things-i-learned/
title: Things I Learned
---

<style>
  #learned-log { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif; }
  .learning-post h2 { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif; font-weight: 700; }
  .tag-pill { background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono', monospace; color: #444; }
</style>

<div id="learned-log">
  <h1 style="font-weight: 800; font-size: 2.5rem; margin-bottom: 0.5rem; color: var(--navy);">Things I Learned.</h1>
  <p style="color: var(--muted); margin-bottom: 2rem;">A running log of things I've picked up — tools, commands, concepts, and small discoveries worth remembering.</p>

  <hr style="border: 0; border-top: 1px solid rgba(27,42,74,0.12); margin-bottom: 2rem;">

  {% if site.data.learned %}
    {% assign entries = site.data.learned | sort: "date" | reverse %}
    {% for entry in entries %}
      <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
        <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">{{ entry.title }}</h2>
        <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">{{ entry.date }}</div>
        <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">{{ entry.note }}</p>
        {% if entry.tags %}
          <div class="tags">
            {% for tag in entry.tags %}
              <span class="tag-pill">{{ tag }}</span>
            {% endfor %}
          </div>
        {% endif %}
      </div>
    {% endfor %}
  {% endif %}

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">YAML's sensitivity to whitespace</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-15</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">One misplaced space in a configuration file can cause entire deployment pipelines to fail silently or throw cryptic errors.</p>
    <div class="tags">
      <span class="tag-pill">yaml</span>
      <span class="tag-pill">devops</span>
    </div>
  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">The + sign in Email Aliases</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-15</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Using the "+" character in an email address (e.g., name+test@gmail.com) allows for infinite unique aliases that all route to the same primary inbox.</p>
    <div class="tags">
      <span class="tag-pill">testing</span>
      <span class="tag-pill">qa</span>
    </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Git pull can overwrite local changes</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-18</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Running git pull without committing or stashing local work first can cause merge conflicts or lost progress.</p>
    <div class="tags">
      <span class="tag-pill">git</span>
      <span class="tag-pill">version-control</span>
    </div>
  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Relative paths break easily in nested folders</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-18</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Moving files deeper into directory structures often breaks CSS, JS, and image links that rely on relative paths.</p>
    <div class="tags">
      <span class="tag-pill">web-dev</span>
      <span class="tag-pill">paths</span>
    </div>
  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Browsers aggressively cache CSS files</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-18</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">When style changes don't appear, clearing cache or using versioned filenames often resolves the issue.</p>
    <div class="tags">
      <span class="tag-pill">web-dev</span>
      <span class="tag-pill">caching</span>
    </div>
  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Console logs are underrated debugging tools</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-18</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Adding simple logging statements often reveals unexpected values or logic flow issues faster than stepping through a debugger.</p>
    <div class="tags">
      <span class="tag-pill">debugging</span>
      <span class="tag-pill">javascript</span>
    </div>
  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Trailing slashes matter in URLs</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-18</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Some static site generators treat /page and /page/ differently, which can lead to broken navigation links.</p>
    <div class="tags">
      <span class="tag-pill">jekyll</span>
      <span class="tag-pill">urls</span>
    </div>
  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Environment variables prevent hardcoding secrets</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-18</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Storing API keys and credentials in environment variables improves security and portability across systems.</p>
    <div class="tags">
      <span class="tag-pill">security</span>
      <span class="tag-pill">devops</span>
    </div>
  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Markdown renders differently across platforms</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-18</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Features like tables or embedded HTML may work locally but fail on certain hosted environments.</p>
    <div class="tags">
      <span class="tag-pill">markdown</span>
      <span class="tag-pill">documentation</span>
    </div>
  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">File permissions can block deployments</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-18</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Incorrect file permissions can silently prevent scripts from executing or files from being served.</p>
    <div class="tags">
      <span class="tag-pill">linux</span>
      <span class="tag-pill">permissions</span>
    </div>
  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Small commits make debugging easier</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-18</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Frequent, focused commits make it easier to identify exactly where bugs were introduced.</p>
    <div class="tags">
      <span class="tag-pill">git</span>
      <span class="tag-pill">workflow</span>
    </div>
  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
    <h2 style="font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Search logs before guessing causes</h2>
    <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-18</div>
    <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">System and application logs often contain direct evidence of failure, reducing guesswork during troubleshooting.</p>
    <div class="tags">
      <span class="tag-pill">troubleshooting</span>
      <span class="tag-pill">logging</span>
    </div>
  </div>


  </div>

  <div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">