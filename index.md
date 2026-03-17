---
layout: default
title: Home
---

Technical support engineer, systems thinker, and writer.

![Digital header]({{ "/images/digital-header.webp" | relative_url }})

I write about support engineering, infrastructure, service management, and the practical side of building reliable systems. This site is also a home for notes, projects, and ideas I’m working on.

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