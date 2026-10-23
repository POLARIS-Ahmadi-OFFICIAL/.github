# .github

Org-wide files for **POLARIS-Ahmadi-OFFICIAL**.

| File | Purpose |
|------|---------|
| `profile/README.md` | Shown on the organization's GitHub page |
| `ONBOARDING.md` | New-member guide (source of truth) |
| `ONBOARDING.pdf` | Printable copy, generated from the Markdown |
| `scripts/build-pdf.sh` | Regenerates the PDF |

## Updating the onboarding guide

Edit `ONBOARDING.md`, then rebuild the PDF and commit both:

```bash
./scripts/build-pdf.sh   # needs pandoc and Google Chrome
```
