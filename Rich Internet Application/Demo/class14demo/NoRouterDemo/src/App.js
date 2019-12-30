import React from 'react';
import Page1 from './Page1';
import Page2 from './Page2';
import Page3 from './Page3';
import NavItem from './NavItem';

class App extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            page: 'page1'
        };
        this.handlePageChange = this.handlePageChange.bind(this);
    }

    handlePageChange(newpage) {
        this.setState({
            page: newpage
        });
    }

    render(){
        let currentPage;

        switch(this.state.page) {
            case 'page1':
                currentPage = <Page1 />;
                break;
            case 'page2':
                currentPage = <Page2 />;
                break;
            case 'page3':
                currentPage = <Page3 />;
                break;
            default:
                currentPage = <Page1 />;
                break;
        }

        return (
            <React.Fragment>
                <nav>
                    <ul>
                        <li><NavItem page="page1" text="Page 1" onPageChange={this.handlePageChange}/></li>
                        <li><NavItem page="page2" text="Page 2" onPageChange={this.handlePageChange}/></li>
                        <li><NavItem page="page3" text="Page 3" onPageChange={this.handlePageChange}/></li>
                    </ul>
                </nav>
                <div>
                    {currentPage}
                </div>
            </React.Fragment>
        );
    }
}

export default App;