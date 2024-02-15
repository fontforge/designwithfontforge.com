---
published: true
layout: homepage_fa-IR
weight: 0
title: طراحی با فونت‌فورج
---

<!--
<div style="background: white; width: 100%; text-align:center; padding:1em">
<img src="images/2013-02-18_love.png" width="400px" alt="Praise on Twitter">
</div>
-->

<ol class="rectangle-list">
  {% assign pageList = site.pages | sort: 'weight' %}
  {% for p in pageList %}
    {% if p.path contains 'fa-IR' and p.title != page.title %}
      <li>
        <a {% if p.url == page.url %}class="active"{% endif %} href="{{ p.url }}">
          {{ p.title }}
        </a>
      </li>
    {% endif %}
  {% endfor %}
</ol>
