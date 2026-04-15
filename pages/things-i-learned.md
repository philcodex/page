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


<div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
  <h2 style="font-family: 'Playfair Display', serif; font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">YAML's sensitivity to whitespace</h2>
  <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-15</div>
  <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">One misplaced space in a configuration file can cause entire deployment pipelines to fail silently or throw cryptic errors.</p>
  <div class="tags">
    <span style="background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono';">yaml</span>
    <span style="background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono';">devops</span>
  </div>
</div>

<div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
  <h2 style="font-family: 'Playfair Display', serif; font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">The + sign in Email Aliases</h2>
  <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-15</div>
  <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Using the "+" character in an email address (e.g., name+test@gmail.com) allows for infinite unique aliases that all route to the same primary inbox.</p>
  <div class="tags">
    <span style="background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono';">testing</span>
    <span style="background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono';">qa</span>
  </div>
</div>

<div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
  <h2 style="font-family: 'Playfair Display', serif; font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">SNI (Server Name Indication) limitations</h2>
  <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-15</div>
  <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Ancient legacy clients don't support SNI, which means they can't "see" multiple SSL certificates hosted on a single IP address during the TLS handshake.</p>
  <div class="tags">
    <span style="background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono';">tls</span>
    <span style="background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono';">networking</span>
  </div>
</div>

<div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
  <h2 style="font-family: 'Playfair Display', serif; font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Subdomain Takeover Risk</h2>
  <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-15</div>
  <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Leaving a CNAME pointing to a deleted SaaS instance (like an old Zendesk or Heroku app) creates a security hole where an attacker can claim that subdomain.</p>
  <div class="tags">
    <span style="background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono';">security</span>
    <span style="background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono';">dns</span>
  </div>
</div>

<div class="learning-post" style="margin-bottom: 2rem; border-bottom: 1px solid rgba(27,42,74,0.12); padding-bottom: 1.5rem;">
  <h2 style="font-family: 'Playfair Display', serif; font-size: 1.5rem; color: var(--navy); margin-bottom: 0.5rem;">Webhook 5xx Retries</h2>
  <div style="color: var(--muted); font-size: 0.8rem; margin-bottom: 1rem;">2026-04-15</div>
  <p style="font-size: 0.9rem; line-height: 1.6; margin-bottom: 1rem;">Aggressive "Retry Logic" from a SaaS provider can inadvertently act as a DDoS attack if the customer endpoint is already struggling with a 5xx error.</p>
  <div class="tags">
    <span style="background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono';">saas</span>
    <span style="background: #eee; padding: 2px 8px; font-size: 0.7rem; border-radius: 3px; font-family: 'JetBrains Mono';">api</span>
  </div>
</div>git 