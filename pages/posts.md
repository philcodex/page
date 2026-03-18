---
layout: default
title: Posts
permalink: /posts/
---

# Posts

<img src="/phil-space/images/posts.png" alt="Writing" style="width: 100%; height: auto;">
{% if site.posts.size > 0 %}
{% for post in site.posts %}

- [{{ post.title }}]({{ post.url | relative_url }}) — {{ post.date | date: "%-d %B %Y" }}
{% endfor %}
{% else %}
No posts yet.
{% endif %}
