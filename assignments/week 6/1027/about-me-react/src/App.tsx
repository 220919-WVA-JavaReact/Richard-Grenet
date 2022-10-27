import React from 'react';
import logo from './logo.svg';
import './App.css';
import Header from './components/Header/Header';
import Nav from './components/Nav/Nav';
import Home from './components/Home/Home';
import Footer from './components/Footer/Footer';
import Ttaal from './components/Ttaal/Ttaal';
import { BrowserRouter, Routes, Route } from 'react-router-dom'

function App() {
  return (
    <main>
      <Header />

      <BrowserRouter>
            <Nav />
      <Routes>
        <Route path="/" element={<Home />} />

        
        <Route path="ttaal" element={<Ttaal/>}/>


      </Routes>

      </BrowserRouter>
      <Footer />
    </main>
  );
}

export default App;
