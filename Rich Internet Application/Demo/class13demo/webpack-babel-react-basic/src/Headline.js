import React from 'react';

class Headline extends React.Component {
    render(){
        return <h1>Hello {this.props.name}!</h1>;
    }
}

export default Headline;