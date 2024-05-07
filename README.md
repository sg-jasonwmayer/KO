# Run NCUI- local
- Run `npm install`...
- Run `npm start` which will launch service on port 3000
  - FOS should already be running.
  - Proxy can be configured in `src/setupProxy.js`
# Deploy NCUI to Device

- Run `npm run maven` to create ncui.pkg
- SCP PKG to target `scp /target/ncui.pkg root@ip:/fos/content/release/`
- SSH N 2 server
  - Persist package with `touch /fos/pdata/system/properties/debug/persist`
  - Kill services with `killall java fos fsui fsos fos-panel`

  - Restart OS and UI with `fsos && fsui`
  - This step may take about 20 minutes
  building history
