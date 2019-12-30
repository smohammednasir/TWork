import React from "react";
import Headline from "./Headline";

class App extends React.Component {
    constructor(props){
        super(props);
        this.state = {name: ''};
        this.handleChange = this.handleChange.bind(this);
    }

    handleChange(e) {
        let v = e.target.value;
        this.setState({
            name: v
        });
    }

    render(){
        return (<div>
                    <input value={this.state.name} type="text" onChange={this.handleChange} />
                    <Headline name={this.state.name} />
                </div>);
    }
}

export default App;