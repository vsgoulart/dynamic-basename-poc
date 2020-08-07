Run `yarn` to install all packages and then `OPERATE_BASENAME=wanted/path yarn start-operate` to emulate the solution.

## What's happening behind the scenes?

- Inside the component `src/App.js` we have the frontend router grabbing the `basename` from the a global variable or falling back to a default value if the global variable is not present, like this: `<BrowserRouter basename={window.OPERATE_BASENAME || "/fallback"}>`
- The env var `PUBLIC_URL` used by `CRA` is set to `./` on build so the generated `index.html` file can access the static files relatively to its current path
- When calling `yarn start-operate` we're building building the project, running `create-basename.sh` and starting a simple http-server
- This bash script would probably be replaced on the real application for better script or even included on Operate's backend, but the important part is that everytime we start Operate we would have a file called `basename.js` that sets a global variable on `window` with the value coming from the env var `OPERATE_BASENAME`, this JS file needs to be on the same folder that the generated `index.html` file is
