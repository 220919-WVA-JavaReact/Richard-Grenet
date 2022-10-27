import React from 'react'
import Block from './Block/Block'
import "./Ttaal.css";
const ttaal = () => {

    const facts = [
        {id:1,fact:'aaaaaaaaaaaaaaaaaa',truth:false},
        {id:2,fact:'bb',truth:true},
        {id:3,fact:'cccccccccccccccccccccccccc',truth:false}
    ]

  return (
        <ul id={"ttaal-container"}>
            {facts.map(x => <Block id={x.id} fact={x.fact} truth={x.truth} />)}

        </ul>
  )
}

export default ttaal