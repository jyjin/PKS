/**
 * In this file, we create a React component
 * which incorporates components provided by Material-UI.
 */
import React, { Component } from 'react';
import { Router, Switch, Redirect } from 'react-router';
import { BrowserRouter, Route } from 'react-router-dom';
import createBrowserHistory from 'history/createBrowserHistory';
import HomeContainer from './view/home-page/HomeContainer';
import ParkingContainer from './view/parking/ParkingContainer';
import RemoteContainer from './view/remote/RemoteContainer';
import FeeContainer from './view/fee/FeeContainer';
import Main from './view/Main';
const history = createBrowserHistory()

export default class Routes extends Component {
  constructor(props, context) {
    super(props, context);
  }

  render() {

    return (
      <Router history={history}>
        <BrowserRouter >
          <div style={{ textAlign: 'center' }}>
            <Route path='/' component={Main} />
            <Redirect path='/' to='/home' />
            <Route path='/home' component={HomeContainer}/>
            <Route path='/remote' component={RemoteContainer}/>
            <Route path='/parking' component={ParkingContainer}/>
            <Route path='/fee' component={FeeContainer}/>
          </div>
        </BrowserRouter>
      </Router>
    );
  }
}
