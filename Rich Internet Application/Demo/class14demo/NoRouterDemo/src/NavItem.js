import React from 'react';

function NavItem(props) {
    return (
        <a href="#" onClick={() => props.onPageChange(props.page)}>{props.text}</a>
    );
}

export default NavItem;