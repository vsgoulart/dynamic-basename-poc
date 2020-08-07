import React from "react";
import { BrowserRouter, Switch, Route } from "react-router-dom";

function App() {
  return (
    <BrowserRouter basename={window.OPERATE_BASENAME || "/fallback"}>
      <Switch>
        <Route exact path="/" render={() => <h1>main page</h1>} />
        <Route exact path="/test" render={() => <h1>test page</h1>} />
        <Route render={() => <h1>not found</h1>} />
      </Switch>
    </BrowserRouter>
  );
}

export default App;
