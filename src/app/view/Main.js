/**
 * In this file, we create a React component
 * which incorporates components provided by Material-UI.
 */

import React, { Component } from 'react';
import FontIcon from 'material-ui/FontIcon';
import { BottomNavigation, BottomNavigationItem } from 'material-ui/BottomNavigation';
import Paper from 'material-ui/Paper';
import IconMenu from 'material-ui/IconMenu';
import IconButton from 'material-ui/IconButton';
import NavigationExpandMoreIcon from 'material-ui/svg-icons/navigation/expand-more';
import MenuItem from 'material-ui/MenuItem';
import DropDownMenu from 'material-ui/DropDownMenu';
import RaisedButton from 'material-ui/RaisedButton';
import { Toolbar, ToolbarGroup, ToolbarSeparator, ToolbarTitle } from 'material-ui/Toolbar';
import AppBar from 'material-ui/AppBar';
import * as Color from 'material-ui/styles/colors'

import NavigationMenu from 'material-ui/svg-icons/navigation/menu'
import ActionHome from 'material-ui/svg-icons/action/home'
import ActionSettingsRemote from 'material-ui/svg-icons/action/settings-remote'
import MapsLocalTaxi from 'material-ui/svg-icons/maps/local-taxi'
import EditorMonetizationOn from 'material-ui/svg-icons/editor/monetization-on'
import Redirect from 'react-router-dom/Redirect';
import createHistory from "history/createBrowserHistory"

const history = createHistory()
const location = history.location


export default class Main extends Component {
  constructor(props, context) {
    super(props, context);

    this.state = {
      selectedIndex: 0,
    };
  }

  select = (index) => {
    let path = '/';
    if (index == 0) {
      path = '/home'
    }
    if (index == 1) {
      path = '/remote'
    }
    if (index == 2) {
      path = '/parking'
    }
    if (index == 3) {
      path = '/fee'
    }
    this.setState({ selectedIndex: index }, () => {
      this.props.history.push(path, { fromDashboard: true })
    })
  };

  render() {

    return (
      <Paper style={{ padding: 0, margin: 0 }}>
        <AppBar
          style={{ height: '56px' }}
          titleStyle={{ height: '56px' }}
          title={'朝阳停车场'}
          iconElementLeft={<NavigationMenu style={{ color: Color.white }} />}
        />
        <BottomNavigation
          style={{ position: 'fixed', bottom: '0', width: '100%', zIndex: 1 }}
          selectedIndex={this.state.selectedIndex}>
          <BottomNavigationItem
            label={''}
            icon={<ActionHome />}
            onTouchTap={() => this.select(0)}
          />
          <BottomNavigationItem
            label={''}
            icon={<ActionSettingsRemote />}
            onTouchTap={() => this.select(1)}
          />
          <BottomNavigationItem
            label={''}
            icon={<MapsLocalTaxi />}
            onTouchTap={() => this.select(2)}
          />
          <BottomNavigationItem
            label={''}
            icon={<EditorMonetizationOn />}
            onTouchTap={() => this.select(3)}
          />
        </BottomNavigation>
      </Paper>
    );
  }
}
