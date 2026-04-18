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
   </div> 
   
<div>
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