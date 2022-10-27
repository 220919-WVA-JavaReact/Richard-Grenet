import React from 'react'
import './Home.css'

const Home = () => {
  return (
    <main id={"aboutme-section"}>
      <h2>Main page !!</h2>
      <h3>Some things I enjoy are...</h3>
            <ul id={"descrip-container"}>
                <li>
                    <h3>Reading</h3>
                    {/* <img src="./bookImage.jpg" alt="Image of stack of books"> */}
                    <p>I like reading anything from poems to novel series to textbooks. Most recently I read all 50+ of H.P. Lovecraft's short stories.</p>
                </li>
                <li>
                    <h3>Gaming</h3>
                    {/* <img src="./controllerImage.jpg" alt="Image of controller"> */}
                    <p>I enjoy playing video games for fun (looking at you league of legends players) and enjoy most genres out there. I tried out starcraft II for the first time 2 weeks ago... It has a steep learning curve.</p>
                </li> 
                <li>
                    <h3>Math</h3>
                    {/* <img src="./MathImage.jpg" alt="Image of math"> */}
                    <p>I infrequently go on math-binges so that the knowledge doesn't rust away up in the noggin. I've recently started reading a textbook dealing in real analysis - it has a lot of topics which have programmatical implementations.</p>
                </li>
            </ul>
    </main>
  )
}

export default Home