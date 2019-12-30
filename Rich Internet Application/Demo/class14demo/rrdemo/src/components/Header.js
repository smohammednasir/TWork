import React from 'react';
import { NavLink, Link } from 'react-router-dom';

class Header extends React.Component {
    render(){
        return (
            <React.Fragment>
            <h1>ITMD 4/565 Class 15 React Router Demo</h1>
            <ul className="navbar">
                <li><NavLink exact to="/" activeClassName='active-link'>Home</NavLink></li>
                <li><NavLink to="/html" activeClassName='active-link'>html</NavLink></li>
                <li><NavLink to="/css" activeClassName='active-link'>CSS</NavLink></li>
                <li><NavLink to="/javascript" activeClassName='active-link'>JavaScript</NavLink></li>
            </ul>
            </React.Fragment>
        );
    }
}

export default Header;