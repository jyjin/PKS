import React from 'react';
import { render } from 'react-dom';

//router
import { Router } from 'react-router'
import Routes from './routes'

//material UI
import injectTapEventPlugin from 'react-tap-event-plugin';
import getMuiTheme from 'material-ui/styles/getMuiTheme';
import MuiThemeProvider from 'material-ui/styles/MuiThemeProvider';
import { deepOrange500 } from 'material-ui/styles/colors';
const muiTheme = getMuiTheme({
    palette: {
        accent1Color: deepOrange500,
    },
});


// Needed for onTouchTap
// http://stackoverflow.com/a/34015469/988941
injectTapEventPlugin();

// Render the main app react component into the app div.
// For more details see: https://facebook.github.io/react/docs/top-level-api.html#react.render
render(
    <MuiThemeProvider muiTheme={muiTheme}>
        <Routes/>
    </MuiThemeProvider>,
    document.getElementById('app')
);

