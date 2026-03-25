---
layout: default
permalink: /things-i-learned/
title: Things I Learned
---

# Things I Learned

A running log of things I've picked up — tools, commands, concepts, and small discoveries worth remembering.

---

{% if site.data.learned %}
  {% assign entries = site.data.learned | sort: "date" | reverse %}

  {% for entry in entries %}
### {{ entry.title }}
<span class="post-date">{{ entry.date }}</span>

{{ entry.note }}

    {% if entry.tags %}
<small>{% for tag in entry.tags %}`{{ tag }}`{% unless forloop.last %} {% endunless %}{% endfor %}</small>
    {% endif %}

---
  {% endfor %}
{% else %}
No entries yet.
{% endif %}