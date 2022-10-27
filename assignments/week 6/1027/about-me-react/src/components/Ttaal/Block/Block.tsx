import React, { Component } from 'react'
import "./Block.css";

interface IBlockProps{
    id:number,
    fact:string,
    truth:boolean
}

export default class Block extends Component<IBlockProps> {
  render() {
    return (
      <li className={this.props.truth ? "truth" : "lie"}>
        <p>Block Number {this.props.id}- {this.props.truth}</p>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Iure, quibusdam aspernatur. Sint vitae quo numquam. {`${this.props.fact}`}</p>
      </li>
    )
  }
}
