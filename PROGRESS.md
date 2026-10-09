# WEIDE Warranty Card — Progress

Updated: 2026-10-10 (Asia/Kuala_Lumpur)

## Icon update
- User approved the premium 3D silver brake rotor, red WEIDE caliper and gold warranty card icon in the same visual family as Brake Fluid Reminder.
- Bottom WARRANTY CARD lettering removed for better recognition at phone launcher size; transparent background retained.
- Added 192px and 512px transparent app icons, a 180px Apple touch icon and a 32px favicon under server/public/icons/.
- Added a web app manifest with the name WEIDE Warranty Card, short name Warranty Card and standalone display.
- Added icon and manifest references to the deployed server/public/index.html. The root index.html is an independent local version and is unchanged.
- Backend, database schema and customer record operations unchanged.

## Deployment
- Target: Jaylene01/warranty-card-01, main; Railway warranty-card-01 production.
- GitHub push and production verification pending.
- Test URL: https://warranty-card-01-production.up.railway.app/

## Verification
- Physical Samsung/iPhone launcher icon appearance and standalone installation: pending device verification.
- No offline support was added.
