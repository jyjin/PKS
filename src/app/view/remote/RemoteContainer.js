/**
 * In this file, we create a React component
 * which incorporates components provided by Material-UI.
 */
import React, { Component } from 'react';
import RaisedButton from 'material-ui/RaisedButton';
import Dialog from 'material-ui/Dialog';
import Paper from 'material-ui/Paper';
import FlatButton from 'material-ui/FlatButton';


export default class RemoteContainer extends Component {
  constructor(props, context) {
    super(props, context);

    this.state = {
      open: false,
    };
  }

  render() {
    let _height = `calc( 100vh - 56px )`
    return (<Paper style={{ height: _height }}>
      <div style={{height:'30%'}}></div>
      <RaisedButton label={'进车'} primary={true} onTouchTap={() => { alert('欢迎使用一路停') }} />
      <div style={{height:'30%'}}></div>
      <RaisedButton label={'出车'} primary={true} onTouchTap={() => { alert('感谢下次光临') }} />
    </Paper>
    )
  }
}
