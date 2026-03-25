---
layout: default
title: Home
---

<button id="theme-toggle" onclick="(function(){var themes=['light','dark','system'];var cur=localStorage.getItem('theme')||'system';var next=themes[(themes.indexOf(cur)+1)%themes.length];document.dispatchEvent(new CustomEvent('theme-change',{detail:{theme:next}}));localStorage.setItem('theme',next);document.getElementById('theme-toggle').textContent=next==='dark'?'☀️ Light':next==='light'?'🌙 Dark':'💻 System';})()" style="position:fixed;top:1rem;right:1rem;background:none;border:1px solid var(--color-border);color:var(--color-text-faint);font-size:0.8rem;padding:0.3rem 0.65rem;border-radius:6px;cursor:pointer;font-family:inherit;transition:opacity 0.2s;">💻 System</button>

<script>
  (function() {
    var btn = document.getElementById('theme-toggle');
    if (btn) {
      var stored = localStorage.getItem('theme') || 'system';
      btn.textContent = stored === 'dark' ? '☀️ Light' : stored === 'light' ? '🙁 Dark' : '💻 System';
    }
  })();
</script>

Technical support engineer, systems thinker, and writer.

![Digital header]({{ "/images/digital-header.webp" | relative_url }})

I write about support engineering, infrastructure, service management, and the practical side of building reliable systems. This site is also a home for notes, projects, and ideas I'm working on.

## What you'll find here

- **Writing** — articles, notes, and essays
- **Projects** — technical work, experiments, and tools
- **Career** — support engineering, ITSM, and operations thinking
- **About** — background, experience, and contact details

## Recent posts

{% if site.posts.size > 0 %}
{% for post in site.posts limit:5 %}
- [{{ post.title }}]({{ post.url | relative_url }})  
  <small>{{ post.date | date: "%-d %B %Y" }}</small>
{% endfor %}
{% else %}
No posts yet — check back soon.
{% endif %}