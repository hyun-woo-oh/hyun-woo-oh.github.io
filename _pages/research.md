---
layout: research
permalink: /research/
title: research
description: Research in efficient AI systems, accelerators for emerging ML workloads, and brain-inspired computing.
nav: true
nav_order: 1
---

<div class="research-page">
  <section class="research-hero" aria-labelledby="research-heading">
    <p class="research-eyebrow">ALGORITHM · ARCHITECTURE · SYSTEMS</p>
    <h1 id="research-heading">Efficient AI, from models to machines.</h1>
    <p class="research-lede">
      I design efficient systems for emerging AI through algorithm, software, and hardware
      co-design—from low-bit inference to accelerators for emerging ML workloads and brain-inspired computing.
    </p>
    <nav class="research-jump" aria-label="Research areas">
      <a href="#efficient-llm"><span>01</span> Efficient LLM inference <span aria-hidden="true">↓</span></a>
      <a href="#adaptive-accelerators"><span>02</span> Emerging ML accelerators <span aria-hidden="true">↓</span></a>
      <a href="#brain-inspired"><span>03</span> Brain-inspired computing <span aria-hidden="true">↓</span></a>
    </nav>
  </section>

  <section class="research-area research-area-blue" id="efficient-llm">
    <header class="research-area-header">
      <p class="research-index">01 / EFFICIENT LLM INFERENCE</p>
      <h2>Scalable low-bit ML on everyday processors</h2>
      <p class="research-summary">
        Large models quickly become memory- and compute-bound at the edge. I develop end-to-end
        quantization frameworks, CUDA/CPU kernels, and small architectural extensions that make
        fine-grained low-bit execution practical on general-purpose CPUs.
      </p>
    </header>
    <div class="research-figure-grid research-figure-grid-three">
      <figure class="research-paper-figure research-figure-featured">
        <img src="{{ '/assets/img/research/tsar-figure6.webp' | relative_url }}" alt="T-SAR ISA extension mapped onto x86 AVX2 SIMD with ternary LUT and GEMV instructions" loading="lazy" data-zoomable>
        <figcaption><span><strong>T-SAR</strong> · ISA and microarchitecture realization on x86 AVX2 SIMD</span><a href="https://arxiv.org/abs/2511.13676">Paper ↗</a></figcaption>
      </figure>
      <figure class="research-paper-figure">
        <img src="{{ '/assets/img/research/tsar-concept.webp' | relative_url }}" alt="T-SAR comparison of memory-based LUT execution and in-register LUT generation" loading="lazy" data-zoomable>
        <figcaption><span><strong>T-SAR</strong> · Memory LUTs versus on-the-fly generation in SIMD registers</span><a href="https://arxiv.org/abs/2511.13676">Paper ↗</a></figcaption>
      </figure>
      <figure class="research-paper-figure">
        <img src="{{ '/assets/img/research/polyq-motivation.webp' | relative_url }}" alt="PolyQ motivation comparing uniform and fine-grained channel-wise quantization" loading="lazy" data-zoomable>
        <figcaption><span><strong>PolyQ</strong> · Fine-grained precision fits fractional edge-memory budgets</span></figcaption>
      </figure>
    </div>
    <div class="research-meta">
      <div>
        <p class="research-meta-label">Methods &amp; keywords</p>
        <ul class="research-topics" aria-label="Efficient LLM inference topics"><li>Mixed-precision</li><li>Low-bit quantization</li><li>CPU SIMD</li><li>In-register computing</li><li>Compiler co-design</li><li>Edge LLMs</li></ul>
      </div>
    </div>
    {% include research_publications.html id="efficient-llm" papers="oh_polyq_2026,oh_exagemm_2026,oh_tsar_2026" %}
  </section>

  <section class="research-area research-area-purple" id="adaptive-accelerators">
    <header class="research-area-header">
      <p class="research-index">02 / EMERGING ML ACCELERATORS</p>
      <h2>Accelerators for emerging ML workloads</h2>
      <p class="research-summary">
        Emerging ML workloads expose bottlenecks that conventional hardware handles poorly. I turn
        their compute, memory, and dataflow characteristics into specialized accelerators, carrying
        each design from algorithm and architecture co-design through implementation and end-to-end
        evaluation across vision, language, graph, and multimodal AI.
      </p>
    </header>
    <div class="research-figure-grid research-figure-grid-three">
      <figure class="research-paper-figure research-figure-featured">
        <img src="{{ '/assets/img/research/trine-overview.webp' | relative_url }}" alt="TRINE accelerator architecture, reconfigurable processing unit, and mode-switchable engine" loading="lazy" data-zoomable>
        <figcaption><span><strong>TRINE</strong> · Runtime-adaptive multimodal FPGA accelerator</span><a href="https://arxiv.org/pdf/2603.22867">Paper ↗</a></figcaption>
      </figure>
      <figure class="research-paper-figure">
        <img src="{{ '/assets/img/research/quill-bottlenecks.webp' | relative_url }}" alt="QUILL analysis of cache-locality, arithmetic-intensity, and bank-conflict bottlenecks in deformable attention" loading="lazy" data-zoomable>
        <figcaption><span><strong>QUILL</strong> · The three bottlenecks: scattered access, low arithmetic intensity, and bank conflicts</span><a href="https://arxiv.org/pdf/2511.13679">Paper ↗</a></figcaption>
      </figure>
      <figure class="research-paper-figure">
        <img src="{{ '/assets/img/research/quill-overview.webp' | relative_url }}" alt="QUILL cache-local deformable attention accelerator overview" loading="lazy" data-zoomable>
        <figcaption><span><strong>QUILL</strong> · Mitigation through query reordering, caching, and fused execution</span><a href="https://arxiv.org/pdf/2511.13679">Paper ↗</a></figcaption>
      </figure>
    </div>
    <div class="research-meta">
      <div>
        <p class="research-meta-label">Methods &amp; keywords</p>
        <ul class="research-topics" aria-label="Emerging ML accelerator topics"><li>ML acceleration</li><li>Domain-specific architectures</li><li>Reconfigurable computing</li><li>Memory systems</li><li>Hardware–software co-design</li><li>Edge AI</li></ul>
      </div>
    </div>
    {% include research_publications.html id="adaptive-accelerators" papers="oh_trine_2026,oh_quill_2026,oh_rift_2026,oh_multimodal_2025" %}
  </section>

  <section class="research-area research-area-teal" id="brain-inspired">
    <header class="research-area-header">
      <p class="research-index">03 / BRAIN-INSPIRED COMPUTING</p>
      <h2>Brain-inspired learning and reasoning</h2>
      <p class="research-summary">
        Hyperdimensional computing represents information with distributed high-dimensional
        vectors, enabling noise-tolerant learning and reasoning. I codesign these representations
        with cache-oriented and memory-aware architectures for efficient perception and decisions.
      </p>
    </header>
    <div class="research-figure-grid research-figure-grid-balanced">
      <figure class="research-paper-figure">
        <img src="{{ '/assets/img/research/torr-overview-v2.webp' | relative_url }}" alt="TorR end-to-end brain-inspired object detection training and inference framework" loading="lazy" data-zoomable>
        <figcaption><span><strong>TorR</strong> · End-to-end training and inference framework</span><a href="https://arxiv.org/pdf/2603.22855">Paper ↗</a></figcaption>
      </figure>
      <figure class="research-paper-figure">
        <img src="{{ '/assets/img/research/torr-cache-reasoner.webp' | relative_url }}" alt="TorR cache-gated associative aligner and HDC graph reasoner" loading="lazy" data-zoomable>
        <figcaption><span><strong>TorR</strong> · Cache-gated HDC aligner and graph reasoner</span><a href="https://arxiv.org/pdf/2603.22855">Paper ↗</a></figcaption>
      </figure>
    </div>
    <div class="research-meta">
      <div>
        <p class="research-meta-label">Methods &amp; keywords</p>
        <ul class="research-topics" aria-label="Brain-inspired computing topics"><li>Hyperdimensional computing</li><li>Associative memory</li><li>Partial-similarity reuse</li><li>Robust learning</li><li>Reasoning</li></ul>
      </div>
    </div>
    {% include research_publications.html id="brain-inspired" papers="oh_torr_2026,bhattacharjya_hyperdoa_2026,yun_decohd_2026,yun_loghd_2026" %}
  </section>

  <section class="research-closing">
    <p class="research-eyebrow">ACROSS THE STACK</p>
    <h2>From model transformations to RTL and real systems.</h2>
    <p>My goal is to make ambitious AI workloads deployable under real constraints—not only faster in isolation, but efficient end to end.</p>
    <a href="{{ '/publications/' | relative_url }}">Browse all publications <span aria-hidden="true">→</span></a>
  </section>
</div>
