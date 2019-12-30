import React from 'react';
import Es6Page from './Es6Page';
import ReactPage from './ReactPage';
import { Switch, Route, Link } from 'react-router-dom';

class JavaScriptPage extends React.Component {
    render(){
        //console.log(this.props.match);
        return(
            <React.Fragment>
            <h2>JavaScript</h2>
            <p>These are some JavaScript Topics</p>
            <ul>             
                <li><Link to={`${this.props.match.url}/es6`}>ES6</Link></li>
                <li><Link to={`${this.props.match.url}/react`}>React</Link></li>
            </ul>
            <Switch>
            <Route path={`${this.props.match.path}/es6`} component={Es6Page}></Route>
            <Route path={`${this.props.match.path}/react`} component={ReactPage}></Route>
            <Route path={`${this.props.match.path}/:topic`} render={ (props) => {
                //console.log(props.match.params.topic);
                return <h3>{props.match.params.topic}</h3>;
            } }></Route>
            <Route path={`${this.props.match.path}`} render={ (props) => {
                        return <h3>Please Choose from Above</h3>;
                    } } />
            </Switch>
            </React.Fragment>
        );
    }
}

export default JavaScriptPage;