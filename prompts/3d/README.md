# 🧊 3D & Spatial UI Prompts (`prompts/3d/`)

A curated collection of modular, production-ready prompts for implementing modern **3D & Spatial User Interfaces** across the web.

Whether you need a micro **5kB interactive globe**, a zero-canvas **60fps 3D parallax card**, an interactive **Spline 3D product hero**, or a full in-canvas **WebGL spatial HUD**, each prompt contains complete stack choices, component code patterns, accessibility controls, and performance budgets.

---

## 📑 Directory Index

| File Name | 3D Technology | Purpose & Target |
| :--- | :--- | :--- |
| [**`28-10-2026-cobe-5kb-interactive-globe.txt`**](file:///d:/learning-hub/prompts/3d/28-10-2026-cobe-5kb-interactive-globe.txt) | `cobe` (5kB WebGL) | Ultra-lightweight interactive dot-matrix Earth hero (Linear / Stripe / Supabase style). |
| [**`28-10-2026-spline-interactive-product-hero.txt`**](file:///d:/learning-hub/prompts/3d/28-10-2026-spline-interactive-product-hero.txt) | Spline + `@splinetool/react-spline` | Interactive 3D product model with mouse-follow, lighting, and glassmorphism UI overlay. |
| [**`28-10-2026-r3f-scroll-rig-3d-cards.txt`**](file:///d:/learning-hub/prompts/3d/28-10-2026-r3f-scroll-rig-3d-cards.txt) | R3F + `14islands/r3f-scroll-rig` | Awwwards-style 3D meshes synchronized seamlessly with native HTML page scrolling. |
| [**`28-10-2026-3d-parallax-tilt-glassmorphism.txt`**](file:///d:/learning-hub/prompts/3d/28-10-2026-3d-parallax-tilt-glassmorphism.txt) | `vanilla-tilt` / CSS 3D Transforms | Zero-canvas 60fps 3D mouse parallax cards with dynamic glare and tactile depth for Bento grids. |
| [**`28-10-2026-pmndrs-uikit-spatial-dashboard.txt`**](file:///d:/learning-hub/prompts/3d/28-10-2026-pmndrs-uikit-spatial-dashboard.txt) | `@react-three/uikit` + Drei | Native in-canvas WebGL 3D UI layout with Flexbox, 3D buttons, dialogs, and SDF typography. |

---

## ⚡ 3D Architecture Decision Matrix

```
Is it just a tilted card or bento item?
├── YES ──► Use 3D Parallax Tilt (vanilla-tilt / Framer Motion CSS 3D) -> 0kB canvas overhead
└── NO
    └── Is it an interactive globe / Earth for a SaaS hero?
        ├── YES ──► Use COBE (5kB WebGL) -> Fast, beautiful dot-matrix, zero Three.js weight
        └── NO
            └── Do you have a designer exporting 3D scenes?
                ├── YES ──► Use Spline (@splinetool/react-spline)
                └── NO  ──► Use React Three Fiber (R3F) + Drei + @react-three/uikit
```

---

## 🛡️ Performance Rules for Web 3D
1. **Mobile Battery Defense**: Disable continuous canvas rendering or cap `devicePixelRatio` to `Math.min(window.devicePixelRatio, 1.5)`.
2. **`prefers-reduced-motion`**: Always provide a static fallback image for users with vestibular motion sensitivity.
3. **Draco Geometry Compression**: Always compress 3D meshes with `gltf-pipeline` or `gltfjsx --transform`.
