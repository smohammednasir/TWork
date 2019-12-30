import React from 'react';
import Header from './Header.js';
import HomePage from './HomePage';
import HtmlPage from './HtmlPage';
import CssPage from './CssPage';
import JavaScriptPage from './JavaScriptPage';
import { HashRouter, BrowserRouter, Route, Link } from 'react-router-dom';

class App extends React.Component {
  render() {
    return (
      <HashRouter>
        <div>
          <Header></Header>
          <Route exact path="/" component={HomePage} />
          <Route path="/html" component={HtmlPage} />
          <Route path="/css" component={CssPage} />
          <Route path="/javascript" component={JavaScriptPage} />
        </div>
      </HashRouter>
    );
  }
}

export default App;