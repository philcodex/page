---
layout: default
permalink: /things-i-learned/
title: Things I Learned
---

# Things I Learned.

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
## Progress Update Sat 28 Mar 2026 14:46:08 GMT


<div class="section-label">things i learned</div>
  
  <div style="background: rgba(27,42,74,0.03); padding: 1.5rem; border: 1px solid rgba(27,42,74,0.08); font-size: 0.72rem; border-radius: 2px;">
    <ul style="list-style: none; color: var(--navy); line-height: 1.8; font-weight: 300;">
      
      <li style="margin-bottom: 0.8rem;">
        <span style="color: var(--gold); font-weight: 700;">// whitespace sensitivity</span><br>
        <span style="color: var(--muted);">YAML:</span> One misplaced space in a config file can break a deployment pipeline. Linters are non-negotiable.
      </li>

      <li style="margin-bottom: 0.8rem;">
        <span style="color: var(--gold); font-weight: 700;">// testing efficiency</span><br>
        <span style="color: var(--muted);">Email Aliases:</span> The <code>+</code> sign allows for infinite unique test accounts (e.g., user+test1@) routing to a single inbox.
      </li>

      <li style="margin-bottom: 0.8rem;">
        <span style="color: var(--gold); font-weight: 700;">// legacy compatibility</span><br>
        <span style="color: var(--muted);">SNI:</span> Old clients lacking Server Name Indication support cannot "see" specific SSL certs when multiple are hosted on a single IP.
      </li>

      <li style="margin-bottom: 0.8rem;">
        <span style="color: var(--gold); font-weight: 700;">// security hygiene</span><br>
        <span style="color: var(--muted);">Subdomain Takeovers:</span> Danging CNAMEs pointing to deleted SaaS instances (Zendesk/Heroku) create high-risk entry points for attackers.
      </li>

      <li style="margin-bottom: 0.8rem;">
        <span style="color: var(--gold); font-weight: 700;">// infrastructure safety</span><br>
        <span style="color: var(--muted);">Webhook Retries:</span> Aggressive 5xx retry logic can inadvertently DDoS a struggling customer endpoint, compounding the original failure.
      </li>

    </ul>
  </div>