import React from 'react'
import { Link } from 'react-router-dom'

const Nav = () => {
  return (
    <div id={"nav-section"}>
      <nav>
        <ul>
            <li ><Link to="">Aboutme</Link></li>
            <li ><Link to="./ttaal">TTAAL</Link></li>
            <li ><Link to="Home" >bottom</Link></li>
        </ul>
      </nav>

        

    </div>
  )
}

export default Nav